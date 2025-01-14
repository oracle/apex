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
,p_default_id_offset=>12319406322640193
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
--     Pages:                     18
--       Items:                   29
--       Computations:             2
--       Validations:              1
--       Processes:               21
--       Regions:                 75
--       Buttons:                 19
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         Items:                  2
--         Processes:              3
--       Navigation:
--         Lists:                  5
--         Breadcrumbs:            1
--           Entries:             12
--         NavBar Entries:         3
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Region:               1
--         LOVs:                   1
--         Plug-ins:               2
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample REST Services')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-REST-SERVICES')
,p_application_group=>wwv_flow_imp.id(4851185638549144)
,p_application_group_name=>'Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'C35B4EE42138815C7FFEFB54127428012CBB4F1A313CDC60BBD36B2FDE2F8E20'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_date_format=>'YYYY/MM/DD'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.2 -> 1.0.3: Added "SQL Source" show/hide region to "Collection on EMP" page.',
'1.0.3 -> 1.0.4: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie'))
,p_authentication_id=>wwv_flow_imp.id(10546885732301092178)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'&APP_NAME.'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Sample REST Services'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>4
,p_version_scn=>187810253
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
 p_id=>wwv_flow_imp.id(7930)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_imp.id(3614859799328666022)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(3614899082377713190)
,p_nav_bar_list_template_id=>2847543055748234966
);
end;
/
prompt --workspace/remote_servers/sample_application_github_repositories
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(733666003810366051)
,p_name=>'Sample Application - Github Repositories'
,p_static_id=>'Sample_Application___Github_Repositories'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('Sample_Application___Github_Repositories'),'https://api.github.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('Sample_Application___Github_Repositories'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('Sample_Application___Github_Repositories'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('Sample_Application___Github_Repositories'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('Sample_Application___Github_Repositories'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('Sample_Application___Github_Repositories'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('Sample_Application___Github_Repositories'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('Sample_Application___Github_Repositories'),'')
);
end;
/
prompt --application/shared_components/data_profiles/sample_application_github_repository_commits
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'Sample Application - Github Repository Commits'
,p_format=>'JSON'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74799617698403136)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SHA'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'sha'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74800082810403136)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'NAME'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.author.name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74800413181403136)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'EMAIL'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.author.email'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74800843116403136)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'DATE_'
,p_sequence=>4
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'commit.author.date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74801256412403136)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'COMMITTER_NAME'
,p_sequence=>5
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.committer.name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74801613272403136)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'EMAIL_2'
,p_sequence=>6
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.committer.email'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74802082396403137)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'DATE_2'
,p_sequence=>7
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'commit.committer.date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74802425313403137)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'MESSAGE'
,p_sequence=>8
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.message'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74802883972403137)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SHA_2'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.tree.sha'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74803240065403137)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'URL'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.tree.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74803638583403137)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'URL_2'
,p_sequence=>11
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74804048757403137)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'COMMENT_COUNT'
,p_sequence=>12
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'commit.comment_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74804412514403138)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'VERIFIED'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.verified'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74804809286403138)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'REASON'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.reason'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74805243735403138)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SIGNATURE'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.signature'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74805629282403138)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'PAYLOAD'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.payload'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74806031361403138)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'URL_3'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74806483021403138)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'HTML_URL'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74806895257403139)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'COMMENTS_URL'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74807281767403139)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'LOGIN'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74807676656403139)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'ID'
,p_sequence=>21
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74808043693403139)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'AVATAR_URL'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74808503932403139)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'GRAVATAR_ID'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74808852558403139)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'URL_4'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74809233436403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'HTML_URL_2'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74809653226403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74810021327403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'FOLLOWING_URL'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74810478571403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'GISTS_URL'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74810865352403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'STARRED_URL'
,p_sequence=>29
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74811270711403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>30
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74811610147403140)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>31
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74812103627403141)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'REPOS_URL'
,p_sequence=>32
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74812495531403141)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'EVENTS_URL'
,p_sequence=>33
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74812819997403141)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74813256484403141)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'TYPE'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74813653077403141)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SITE_ADMIN'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74814082217403141)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'COMMITTER_LOGIN'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'committer.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74814462326403142)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'ID_2'
,p_sequence=>38
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74814854683403142)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'COMMITTER_IMAGE'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'committer.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74815274963403142)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'GRAVATAR_ID_2'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74815670360403142)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'URL_5'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74816069823403142)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'HTML_URL_3'
,p_sequence=>42
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74816414216403142)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'FOLLOWERS_URL_2'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74816862064403143)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'FOLLOWING_URL_2'
,p_sequence=>44
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74817218373403143)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'GISTS_URL_2'
,p_sequence=>45
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74817684666403143)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'STARRED_URL_2'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74818055450403143)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SUBSCRIPTIONS_URL_2'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74818475173403143)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'ORGANIZATIONS_URL_2'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74818889012403143)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'REPOS_URL_2'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74819286009403144)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'EVENTS_URL_2'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74819702770403144)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'RECEIVED_EVENTS_URL_2'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74820054006403144)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'TYPE_2'
,p_sequence=>52
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(74820427242403144)
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_name=>'SITE_ADMIN_2'
,p_sequence=>53
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.site_admin'
);
end;
/
prompt --application/shared_components/data_profiles/github_repositories
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'Github Repositories'
,p_format=>'JSON'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745985848179006251)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ID'
,p_sequence=>1
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745986243204006254)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'NAME'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745986640865006265)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FULL_NAME'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'full_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745987000389006298)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'LOGIN'
,p_sequence=>4
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745987312277006309)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ID_2'
,p_sequence=>5
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745987783495006310)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'AVATAR_URL'
,p_sequence=>6
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745988136806006310)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'GRAVATAR_ID'
,p_sequence=>7
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745988509907006311)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'URL'
,p_sequence=>8
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745988955597006311)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HTML_URL'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745989362932006311)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745989768047006311)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FOLLOWING_URL'
,p_sequence=>11
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745990117749006312)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'GISTS_URL'
,p_sequence=>12
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745990568899006312)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'STARRED_URL'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745990969471006312)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745991341031006312)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745991726106006313)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'REPOS_URL'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745992140385006313)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'EVENTS_URL'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745992553423006314)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745992992698006314)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'TYPE'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'owner.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745993373890006314)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SITE_ADMIN'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'owner.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745993753177006315)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'PRIVATE'
,p_sequence=>21
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'private'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745994145609006315)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HTML_URL_2'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745994566179006316)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'DESCRIPTION'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'description'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745994985236006316)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FORK'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'fork'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745995392353006316)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'URL_2'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745995727667006317)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FORKS_URL'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'forks_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745996178864006317)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'KEYS_URL'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'keys_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745996587403006318)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'COLLABORATORS_URL'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'collaborators_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745996927633006318)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'TEAMS_URL'
,p_sequence=>29
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'teams_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745997381699006318)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HOOKS_URL'
,p_sequence=>30
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'hooks_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745997724935006323)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ISSUE_EVENTS_URL'
,p_sequence=>31
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'issue_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745998174680006323)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'EVENTS_URL_2'
,p_sequence=>32
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745998543022006324)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ASSIGNEES_URL'
,p_sequence=>33
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignees_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745998932312006324)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'BRANCHES_URL'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'branches_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745999382401006325)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'TAGS_URL'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'tags_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(745999724485006325)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'BLOBS_URL'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'blobs_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746000172580006325)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'GIT_TAGS_URL'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'git_tags_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746000551483006326)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'GIT_REFS_URL'
,p_sequence=>38
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'git_refs_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746000981549006326)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'TREES_URL'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'trees_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746001374642006327)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'STATUSES_URL'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'statuses_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746001745304006327)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'LANGUAGES_URL'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'languages_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746002147542006327)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'STARGAZERS_URL'
,p_sequence=>42
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'stargazers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746002564383006327)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'CONTRIBUTORS_URL'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'contributors_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746002995216006328)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SUBSCRIBERS_URL'
,p_sequence=>44
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'subscribers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746003319615006328)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SUBSCRIPTION_URL'
,p_sequence=>45
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'subscription_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746003775161006328)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'COMMITS_URL'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746004111927006328)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'GIT_COMMITS_URL'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'git_commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746004547693006328)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'COMMENTS_URL'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746004963946006329)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ISSUE_COMMENT_URL'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'issue_comment_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746005350588006329)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'CONTENTS_URL'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'contents_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746005739566006330)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'COMPARE_URL'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'compare_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746006178056006330)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'MERGES_URL'
,p_sequence=>52
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'merges_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746006577794006330)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ARCHIVE_URL'
,p_sequence=>53
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'archive_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746006979487006331)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'DOWNLOADS_URL'
,p_sequence=>54
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'downloads_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746007364782006331)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ISSUES_URL'
,p_sequence=>55
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'issues_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746007730373006331)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'PULLS_URL'
,p_sequence=>56
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'pulls_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746008178808006331)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'MILESTONES_URL'
,p_sequence=>57
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'milestones_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746008552947006332)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'NOTIFICATIONS_URL'
,p_sequence=>58
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'notifications_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746008976664006332)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'LABELS_URL'
,p_sequence=>59
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'labels_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746009315040006332)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'RELEASES_URL'
,p_sequence=>60
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'releases_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746009714616006332)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'DEPLOYMENTS_URL'
,p_sequence=>61
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'deployments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746010169356006332)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'CREATED_AT'
,p_sequence=>62
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'created_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746010556950006335)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'UPDATED_AT'
,p_sequence=>63
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'updated_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746010916150006335)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'PUSHED_AT'
,p_sequence=>64
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'pushed_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746011326521006335)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'GIT_URL'
,p_sequence=>65
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'git_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746011767180006335)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SSH_URL'
,p_sequence=>66
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'ssh_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746012193130006336)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'CLONE_URL'
,p_sequence=>67
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'clone_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746012521022006336)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SVN_URL'
,p_sequence=>68
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'svn_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746012939314006336)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HOMEPAGE'
,p_sequence=>69
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'homepage'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746013380878006336)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SIZE_'
,p_sequence=>70
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'size'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746013754127006336)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'STARGAZERS_COUNT'
,p_sequence=>71
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'stargazers_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746014182880006337)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'WATCHERS_COUNT'
,p_sequence=>72
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'watchers_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746014591306006337)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'LANGUAGE'
,p_sequence=>73
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'language'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746014948806006337)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HAS_ISSUES'
,p_sequence=>74
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_issues'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746015352498006337)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HAS_PROJECTS'
,p_sequence=>75
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_projects'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746015771660006337)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HAS_DOWNLOADS'
,p_sequence=>76
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_downloads'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746016167639006338)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HAS_WIKI'
,p_sequence=>77
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_wiki'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746016598988006338)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'HAS_PAGES'
,p_sequence=>78
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'has_pages'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746016911776006338)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FORKS_COUNT'
,p_sequence=>79
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'forks_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746017348144006338)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'MIRROR_URL'
,p_sequence=>80
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'mirror_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746017745692006338)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'ARCHIVED'
,p_sequence=>81
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'archived'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746018183973006339)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'OPEN_ISSUES_COUNT'
,p_sequence=>82
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'open_issues_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746018588375006339)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'KEY'
,p_sequence=>83
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'license.key'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746018964334006339)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'NAME_2'
,p_sequence=>84
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'license.name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746019315945006339)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'SPDX_ID'
,p_sequence=>85
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'license.spdx_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746019756578006339)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'URL_3'
,p_sequence=>86
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'license.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746020126074006340)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'FORKS'
,p_sequence=>87
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'forks'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746020547311006340)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'OPEN_ISSUES'
,p_sequence=>88
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'open_issues'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746020942563006340)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'WATCHERS'
,p_sequence=>89
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'watchers'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746021340812006340)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'DEFAULT_BRANCH'
,p_sequence=>90
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'default_branch'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746021779730006340)
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_name=>'LICENSE'
,p_sequence=>91
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_selector=>'license'
);
end;
/
prompt --application/shared_components/data_profiles/github_repository_issues
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'Github Repository Issues'
,p_format=>'JSON'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746023203024036429)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'URL'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746023604330036432)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'REPOSITORY_URL'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'repository_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746023914376036438)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'LABELS_URL'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'labels_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746024365298036441)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'COMMENTS_URL'
,p_sequence=>4
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746024736760036446)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'EVENTS_URL'
,p_sequence=>5
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746025137240036446)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'HTML_URL'
,p_sequence=>6
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746025536578036446)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ID'
,p_sequence=>7
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746025964290036446)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'NUMBER_'
,p_sequence=>8
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746026333799036446)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'TITLE'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746026765668036447)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'USER_LOGIN'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'user.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746027155472036447)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'USER_ID'
,p_sequence=>11
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'user.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746027578609036447)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'USER_AVATAR_URL'
,p_sequence=>12
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'user.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746027978804036448)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'GRAVATAR_ID'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746028374665036448)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'URL_2'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746028792083036448)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'HTML_URL_2'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746029126665036449)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746029557296036449)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'FOLLOWING_URL'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746029988069036450)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'GISTS_URL'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746030376582036450)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'STARRED_URL'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746030715443036450)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746031134371036450)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>21
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746031567304036450)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'REPOS_URL'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746031983107036451)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'EVENTS_URL_2'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746032393322036451)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746032715342036451)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'USER_TYPE'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'user.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746033117092036451)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'SITE_ADMIN'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746033568659036451)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'STATE'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'state'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746034004434036452)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'LOCKED'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'locked'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746034379610036452)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ASSIGNEE'
,p_sequence=>29
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_selector=>'assignee'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746034771931036452)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'MILESTONE'
,p_sequence=>30
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_selector=>'milestone'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746035131764036452)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'COMMENTS'
,p_sequence=>31
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comments'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746035574258036453)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'CREATED_AT'
,p_sequence=>32
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'created_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746035930658036453)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'UPDATED_AT'
,p_sequence=>33
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'updated_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746036374809036453)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'CLOSED_AT'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_selector=>'closed_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746036775192036454)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'AUTHOR_ASSOCIATION'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'author_association'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746037159668036454)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'URL_3'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'pull_request.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746037558722036454)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'HTML_URL_3'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'pull_request.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746037936086036454)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'DIFF_URL'
,p_sequence=>38
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'pull_request.diff_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746038335905036454)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'PATCH_URL'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'pull_request.patch_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746038776682036455)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'BODY'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'body'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746039156982036455)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ASSIGNEE_LOGIN'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'assignee.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746039586994036455)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ASSIGNEE_ID'
,p_sequence=>42
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'assignee.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746039987405036455)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ASSIGNEE_AVATAR_URL'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'assignee.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746040325599036455)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'GRAVATAR_ID_2'
,p_sequence=>44
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746040725091036456)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'URL_4'
,p_sequence=>45
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746041168477036456)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'HTML_URL_4'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746041601766036456)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'FOLLOWERS_URL_2'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746041918760036456)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'FOLLOWING_URL_2'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746042393815036456)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'GISTS_URL_2'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746042800523036456)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'STARRED_URL_2'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746043185020036457)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'SUBSCRIPTIONS_URL_2'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746043589883036457)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'ORGANIZATIONS_URL_2'
,p_sequence=>52
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746043972323036457)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'REPOS_URL_2'
,p_sequence=>53
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746044370763036457)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'EVENTS_URL_3'
,p_sequence=>54
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746044719875036457)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'RECEIVED_EVENTS_URL_2'
,p_sequence=>55
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746045129056036458)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'TYPE_2'
,p_sequence=>56
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746045578826036458)
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_name=>'SITE_ADMIN_2'
,p_sequence=>57
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.site_admin'
);
end;
/
prompt --application/shared_components/data_profiles/github_repository_pulls
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'Github Repository Pulls'
,p_format=>'JSON'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746047323430042925)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746047749766042942)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID'
,p_sequence=>2
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746048159298042946)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746048529534042964)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DIFF_URL'
,p_sequence=>4
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'diff_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746048910339042964)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PATCH_URL'
,p_sequence=>5
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'patch_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746049254184042965)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUE_URL'
,p_sequence=>6
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'issue_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746049660705042965)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'NUMBER_'
,p_sequence=>7
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746050061415042965)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STATE'
,p_sequence=>8
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'state'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746050408850042966)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LOCKED'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'locked'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746050816546042966)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TITLE'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746051227962042967)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LOGIN'
,p_sequence=>11
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'user.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746051693530042967)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_2'
,p_sequence=>12
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'user.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746052083998042968)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AVATAR_URL'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'user.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746052424566042968)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GRAVATAR_ID'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_selector=>'user.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746052813060042968)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_2'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746053223014042969)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_2'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746053673054042969)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746054085248042969)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWING_URL'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746054413442042969)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GISTS_URL'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746054821549042969)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARRED_URL'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746055304739042970)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>21
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746055681124042970)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746056073865042970)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPOS_URL'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746056421463042970)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746056833665042970)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746057244099042971)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TYPE'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746057684509042971)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SITE_ADMIN'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'user.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746058035970042971)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'BODY'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'body'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746058415536042971)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CREATED_AT'
,p_sequence=>29
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'created_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746058865369042971)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'UPDATED_AT'
,p_sequence=>30
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'updated_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746059218798042972)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CLOSED_AT'
,p_sequence=>31
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'closed_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746059702744042972)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MERGED_AT'
,p_sequence=>32
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'merged_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746060061692042972)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MERGE_COMMIT_SHA'
,p_sequence=>33
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'merge_commit_sha'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746060443909042972)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ASSIGNEE'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746060850178042972)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MILESTONE'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'milestone'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746061221631042973)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMMITS_URL'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746061693787042973)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REVIEW_COMMENTS_URL'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'review_comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746062086666042973)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REVIEW_COMMENT_URL'
,p_sequence=>38
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'review_comment_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746062427209042973)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMMENTS_URL'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746062868529042973)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STATUSES_URL'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'statuses_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746063217051042974)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LABEL'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.label'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746063629072042974)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REF'
,p_sequence=>42
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.ref'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746064048776042974)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SHA'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.sha'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746064496781042974)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LOGIN_2'
,p_sequence=>44
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746064886068042975)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_3'
,p_sequence=>45
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746065297778042975)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AVATAR_URL_2'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746065653367042975)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GRAVATAR_ID_2'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746066066329042975)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_3'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746066454987042975)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_3'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746066867043042976)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWERS_URL_2'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746067215601042976)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWING_URL_2'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746067661642042976)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GISTS_URL_2'
,p_sequence=>52
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746068027322042976)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARRED_URL_2'
,p_sequence=>53
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746068490888042976)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTIONS_URL_2'
,p_sequence=>54
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746068903657042977)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ORGANIZATIONS_URL_2'
,p_sequence=>55
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746069243598042977)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPOS_URL_2'
,p_sequence=>56
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746069621519042977)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_2'
,p_sequence=>57
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746070094257042977)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RECEIVED_EVENTS_URL_2'
,p_sequence=>58
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746070442374042977)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TYPE_2'
,p_sequence=>59
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746070868347042978)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SITE_ADMIN_2'
,p_sequence=>60
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.user.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746071245405042978)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_4'
,p_sequence=>61
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746071653562042978)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'NAME'
,p_sequence=>62
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746072104580042978)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FULL_NAME'
,p_sequence=>63
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.full_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746072406854042978)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LOGIN_3'
,p_sequence=>64
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746072877767042979)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_5'
,p_sequence=>65
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746073262989042979)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AVATAR_URL_3'
,p_sequence=>66
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746073674370042979)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GRAVATAR_ID_3'
,p_sequence=>67
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746074056100042979)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_4'
,p_sequence=>68
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746074412443042979)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_4'
,p_sequence=>69
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746074900435042980)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWERS_URL_3'
,p_sequence=>70
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746075247643042980)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWING_URL_3'
,p_sequence=>71
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746075647077042981)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GISTS_URL_3'
,p_sequence=>72
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746076014904042981)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARRED_URL_3'
,p_sequence=>73
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746076484736042982)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTIONS_URL_3'
,p_sequence=>74
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746076831673042982)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ORGANIZATIONS_URL_3'
,p_sequence=>75
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746077259295042982)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPOS_URL_3'
,p_sequence=>76
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746077686165042982)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_3'
,p_sequence=>77
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746078101376042983)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RECEIVED_EVENTS_URL_3'
,p_sequence=>78
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746078464942042983)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TYPE_3'
,p_sequence=>79
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746078883336042983)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SITE_ADMIN_3'
,p_sequence=>80
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.owner.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746079292453042984)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PRIVATE'
,p_sequence=>81
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.private'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746079665890042984)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_5'
,p_sequence=>82
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746080027223042991)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DESCRIPTION'
,p_sequence=>83
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.description'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746080429185042992)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORK'
,p_sequence=>84
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.fork'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746080858246042992)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_5'
,p_sequence=>85
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746081241678042993)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORKS_URL'
,p_sequence=>86
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.forks_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746081668710042993)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'KEYS_URL'
,p_sequence=>87
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.keys_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746082005366042994)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COLLABORATORS_URL'
,p_sequence=>88
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.collaborators_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746082485662042994)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TEAMS_URL'
,p_sequence=>89
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.teams_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746082815325042995)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HOOKS_URL'
,p_sequence=>90
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.hooks_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746083249093042995)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUE_EVENTS_URL'
,p_sequence=>91
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.issue_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746083630685042995)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_4'
,p_sequence=>92
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746084068929042996)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ASSIGNEES_URL'
,p_sequence=>93
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.assignees_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746084453543042997)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'BRANCHES_URL'
,p_sequence=>94
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.branches_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746084884826042997)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TAGS_URL'
,p_sequence=>95
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.tags_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746085263011042997)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'BLOBS_URL'
,p_sequence=>96
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.blobs_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746085650255042998)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_TAGS_URL'
,p_sequence=>97
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.git_tags_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746086027270042998)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_REFS_URL'
,p_sequence=>98
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.git_refs_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746086498675042998)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TREES_URL'
,p_sequence=>99
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.trees_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746086825653042998)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STATUSES_URL_2'
,p_sequence=>100
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.statuses_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746087286915042998)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LANGUAGES_URL'
,p_sequence=>101
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.languages_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746087634423042999)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARGAZERS_URL'
,p_sequence=>102
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.stargazers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746088092811042999)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CONTRIBUTORS_URL'
,p_sequence=>103
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.contributors_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746088438664042999)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIBERS_URL'
,p_sequence=>104
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.subscribers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746088821497042999)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTION_URL'
,p_sequence=>105
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.subscription_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746089268755042999)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMMITS_URL_2'
,p_sequence=>106
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746089607964043000)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_COMMITS_URL'
,p_sequence=>107
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.git_commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746090100247043000)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMMENTS_URL_2'
,p_sequence=>108
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746090472050043000)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUE_COMMENT_URL'
,p_sequence=>109
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.issue_comment_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746090812017043000)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CONTENTS_URL'
,p_sequence=>110
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.contents_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746091228746043001)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMPARE_URL'
,p_sequence=>111
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.compare_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746091677142043001)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MERGES_URL'
,p_sequence=>112
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.merges_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746092081305043002)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ARCHIVE_URL'
,p_sequence=>113
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.archive_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746092472620043002)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DOWNLOADS_URL'
,p_sequence=>114
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.downloads_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746092879801043003)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUES_URL'
,p_sequence=>115
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.issues_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746093281691043003)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PULLS_URL'
,p_sequence=>116
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.pulls_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746093620691043003)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MILESTONES_URL'
,p_sequence=>117
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.milestones_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746094044284043003)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'NOTIFICATIONS_URL'
,p_sequence=>118
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.notifications_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746094495613043003)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LABELS_URL'
,p_sequence=>119
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.labels_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746094828877043004)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RELEASES_URL'
,p_sequence=>120
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.releases_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746095209935043005)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DEPLOYMENTS_URL'
,p_sequence=>121
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.deployments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746095640092043006)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CREATED_AT_2'
,p_sequence=>122
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'head.repo.created_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746096046273043006)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'UPDATED_AT_2'
,p_sequence=>123
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'head.repo.updated_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746096437409043006)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PUSHED_AT'
,p_sequence=>124
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'head.repo.pushed_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746096836188043007)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_URL'
,p_sequence=>125
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.git_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746097260729043008)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SSH_URL'
,p_sequence=>126
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.ssh_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746097659221043008)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CLONE_URL'
,p_sequence=>127
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.clone_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746098041487043009)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SVN_URL'
,p_sequence=>128
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.svn_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746098430288043009)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HOMEPAGE'
,p_sequence=>129
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.homepage'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746098855004043010)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SIZE_'
,p_sequence=>130
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.size'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746099214374043010)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARGAZERS_COUNT'
,p_sequence=>131
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.stargazers_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746099639473043010)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'WATCHERS_COUNT'
,p_sequence=>132
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.watchers_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746100042908043011)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LANGUAGE'
,p_sequence=>133
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.language'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746100422578043011)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_ISSUES'
,p_sequence=>134
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.has_issues'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746100895828043011)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_PROJECTS'
,p_sequence=>135
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.has_projects'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746101288274043011)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_DOWNLOADS'
,p_sequence=>136
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.has_downloads'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746101684918043011)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_WIKI'
,p_sequence=>137
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.has_wiki'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746102032150043012)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_PAGES'
,p_sequence=>138
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.has_pages'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746102407689043012)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORKS_COUNT'
,p_sequence=>139
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.forks_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746102812353043012)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MIRROR_URL'
,p_sequence=>140
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.mirror_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746103253336043012)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ARCHIVED'
,p_sequence=>141
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.archived'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746103621745043013)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'OPEN_ISSUES_COUNT'
,p_sequence=>142
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.open_issues_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746104005671043013)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LICENSE'
,p_sequence=>143
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.license'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746104487677043014)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORKS'
,p_sequence=>144
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.forks'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746104834404043014)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'OPEN_ISSUES'
,p_sequence=>145
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.open_issues'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746105261728043015)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'WATCHERS'
,p_sequence=>146
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.watchers'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746105646030043015)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DEFAULT_BRANCH'
,p_sequence=>147
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo.default_branch'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746106040504043015)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LABEL_2'
,p_sequence=>148
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.label'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746106495652043015)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REF_2'
,p_sequence=>149
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.ref'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746106827400043015)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SHA_2'
,p_sequence=>150
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.sha'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746107215351043016)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LOGIN_4'
,p_sequence=>151
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746107690665043016)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_6'
,p_sequence=>152
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746108062552043016)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AVATAR_URL_4'
,p_sequence=>153
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746108496968043016)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GRAVATAR_ID_4'
,p_sequence=>154
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746108868241043016)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_6'
,p_sequence=>155
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746109270581043017)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_6'
,p_sequence=>156
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746109684309043017)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWERS_URL_4'
,p_sequence=>157
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746110102796043018)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWING_URL_4'
,p_sequence=>158
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746110449666043018)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GISTS_URL_4'
,p_sequence=>159
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746110901024043018)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARRED_URL_4'
,p_sequence=>160
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746111214996043018)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTIONS_URL_4'
,p_sequence=>161
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746111670906043018)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ORGANIZATIONS_URL_4'
,p_sequence=>162
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746112038785043019)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPOS_URL_4'
,p_sequence=>163
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746112413812043019)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_5'
,p_sequence=>164
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746112824765043019)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RECEIVED_EVENTS_URL_4'
,p_sequence=>165
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746113260972043019)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TYPE_4'
,p_sequence=>166
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746113676300043019)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SITE_ADMIN_4'
,p_sequence=>167
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.user.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746114038682043019)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_7'
,p_sequence=>168
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746114425354043020)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'NAME_2'
,p_sequence=>169
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746114858706043020)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FULL_NAME_2'
,p_sequence=>170
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.full_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746115300890043020)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LOGIN_5'
,p_sequence=>171
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746115611970043021)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ID_8'
,p_sequence=>172
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746116054281043021)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AVATAR_URL_5'
,p_sequence=>173
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746116451204043023)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GRAVATAR_ID_5'
,p_sequence=>174
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746116867267043024)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_7'
,p_sequence=>175
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746117211145043024)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_7'
,p_sequence=>176
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746117702187043025)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWERS_URL_5'
,p_sequence=>177
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746118007698043025)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWING_URL_5'
,p_sequence=>178
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746118487549043026)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GISTS_URL_5'
,p_sequence=>179
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746118897704043026)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARRED_URL_5'
,p_sequence=>180
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746119251032043026)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTIONS_URL_5'
,p_sequence=>181
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746119689666043027)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ORGANIZATIONS_URL_5'
,p_sequence=>182
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746120067886043027)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPOS_URL_5'
,p_sequence=>183
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746120491416043027)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_6'
,p_sequence=>184
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746120826846043027)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RECEIVED_EVENTS_URL_5'
,p_sequence=>185
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746121278254043027)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TYPE_5'
,p_sequence=>186
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746121612991043028)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SITE_ADMIN_5'
,p_sequence=>187
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.owner.site_admin'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746122075787043028)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PRIVATE_2'
,p_sequence=>188
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.private'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746122421138043028)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_8'
,p_sequence=>189
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746122858444043029)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DESCRIPTION_2'
,p_sequence=>190
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.description'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746123233711043029)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORK_2'
,p_sequence=>191
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.fork'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746123627236043029)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_8'
,p_sequence=>192
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746124060792043030)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORKS_URL_2'
,p_sequence=>193
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.forks_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746124419788043030)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'KEYS_URL_2'
,p_sequence=>194
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.keys_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746124841436043030)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COLLABORATORS_URL_2'
,p_sequence=>195
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.collaborators_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746125302473043031)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TEAMS_URL_2'
,p_sequence=>196
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.teams_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746125643236043031)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HOOKS_URL_2'
,p_sequence=>197
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.hooks_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746126034171043035)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUE_EVENTS_URL_2'
,p_sequence=>198
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.issue_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746126457876043036)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_7'
,p_sequence=>199
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746126885816043036)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ASSIGNEES_URL_2'
,p_sequence=>200
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.assignees_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746127288433043036)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'BRANCHES_URL_2'
,p_sequence=>201
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.branches_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746127688724043037)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TAGS_URL_2'
,p_sequence=>202
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.tags_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746128051259043037)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'BLOBS_URL_2'
,p_sequence=>203
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.blobs_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746128416180043037)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_TAGS_URL_2'
,p_sequence=>204
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.git_tags_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746128807206043037)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_REFS_URL_2'
,p_sequence=>205
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.git_refs_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746129269066043037)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TREES_URL_2'
,p_sequence=>206
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.trees_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746129688123043038)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STATUSES_URL_3'
,p_sequence=>207
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.statuses_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746130023715043038)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LANGUAGES_URL_2'
,p_sequence=>208
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.languages_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746130476094043038)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARGAZERS_URL_2'
,p_sequence=>209
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.stargazers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746130887291043038)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CONTRIBUTORS_URL_2'
,p_sequence=>210
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.contributors_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746131296857043039)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIBERS_URL_2'
,p_sequence=>211
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.subscribers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746131695073043039)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTION_URL_2'
,p_sequence=>212
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.subscription_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746132071615043039)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMMITS_URL_3'
,p_sequence=>213
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746132450733043040)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_COMMITS_URL_2'
,p_sequence=>214
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.git_commits_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746132806773043040)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMMENTS_URL_3'
,p_sequence=>215
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.comments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746133227252043041)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUE_COMMENT_URL_2'
,p_sequence=>216
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.issue_comment_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746133679144043041)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CONTENTS_URL_2'
,p_sequence=>217
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.contents_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746134033923043041)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'COMPARE_URL_2'
,p_sequence=>218
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.compare_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746134406137043041)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MERGES_URL_2'
,p_sequence=>219
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.merges_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746134811494043041)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ARCHIVE_URL_2'
,p_sequence=>220
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.archive_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746135283172043042)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DOWNLOADS_URL_2'
,p_sequence=>221
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.downloads_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746135662946043042)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ISSUES_URL_2'
,p_sequence=>222
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.issues_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746136098330043042)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PULLS_URL_2'
,p_sequence=>223
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.pulls_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746136435901043042)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MILESTONES_URL_2'
,p_sequence=>224
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.milestones_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746136875076043043)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'NOTIFICATIONS_URL_2'
,p_sequence=>225
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.notifications_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746137227803043043)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LABELS_URL_2'
,p_sequence=>226
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.labels_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746137627149043043)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RELEASES_URL_2'
,p_sequence=>227
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.releases_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746138030520043043)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DEPLOYMENTS_URL_2'
,p_sequence=>228
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.deployments_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746138460805043044)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CREATED_AT_3'
,p_sequence=>229
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'base.repo.created_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746138859029043044)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'UPDATED_AT_3'
,p_sequence=>230
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'base.repo.updated_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746139237546043044)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'PUSHED_AT_2'
,p_sequence=>231
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'base.repo.pushed_at'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746139610542043044)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GIT_URL_2'
,p_sequence=>232
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.git_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746140067805043044)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SSH_URL_2'
,p_sequence=>233
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.ssh_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746140406508043044)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'CLONE_URL_2'
,p_sequence=>234
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.clone_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746140817326043045)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SVN_URL_2'
,p_sequence=>235
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.svn_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746141256651043045)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HOMEPAGE_2'
,p_sequence=>236
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.homepage'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746141658754043045)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SIZE_2'
,p_sequence=>237
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.size'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746142052530043045)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARGAZERS_COUNT_2'
,p_sequence=>238
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.stargazers_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746142423624043046)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'WATCHERS_COUNT_2'
,p_sequence=>239
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.watchers_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746142829009043047)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LANGUAGE_2'
,p_sequence=>240
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.language'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746143225186043047)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_ISSUES_2'
,p_sequence=>241
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.has_issues'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746143683992043047)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_PROJECTS_2'
,p_sequence=>242
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.has_projects'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746144060185043047)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_DOWNLOADS_2'
,p_sequence=>243
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.has_downloads'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746144450482043047)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_WIKI_2'
,p_sequence=>244
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.has_wiki'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746144903703043048)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HAS_PAGES_2'
,p_sequence=>245
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.has_pages'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746145283914043048)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORKS_COUNT_2'
,p_sequence=>246
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.forks_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746145652055043048)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'MIRROR_URL_2'
,p_sequence=>247
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.mirror_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746146011818043048)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ARCHIVED_2'
,p_sequence=>248
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.archived'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746146503535043049)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'OPEN_ISSUES_COUNT_2'
,p_sequence=>249
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.open_issues_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746146845911043049)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'LICENSE_2'
,p_sequence=>250
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.license'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746147224144043049)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FORKS_2'
,p_sequence=>251
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.forks'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746147704977043049)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'OPEN_ISSUES_2'
,p_sequence=>252
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.open_issues'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746148061866043049)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'WATCHERS_2'
,p_sequence=>253
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.watchers'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746148466093043049)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'DEFAULT_BRANCH_2'
,p_sequence=>254
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'base.repo.default_branch'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746148851693043050)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF'
,p_sequence=>255
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.self.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746149222626043050)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_2'
,p_sequence=>256
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.html.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746149616196043050)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_3'
,p_sequence=>257
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.issue.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746150068641043050)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_4'
,p_sequence=>258
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.comments.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746150482683043050)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_5'
,p_sequence=>259
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.review_comments.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746150829787043051)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_6'
,p_sequence=>260
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.review_comment.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746151257331043051)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_7'
,p_sequence=>261
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.commits.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746151659660043051)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HREF_8'
,p_sequence=>262
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'_links.statuses.href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746152089866043051)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AUTHOR_ASSOCIATION'
,p_sequence=>263
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author_association'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746152472723043051)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPO'
,p_sequence=>264
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'head.repo'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746152838978043052)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ASSIGNEE_LOGIN'
,p_sequence=>265
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'assignee.login'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746153276343043052)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ASSIGNEE_ID'
,p_sequence=>266
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'assignee.id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746153622322043052)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'AVATAR_URL_6'
,p_sequence=>267
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.avatar_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746154086453043052)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GRAVATAR_ID_6'
,p_sequence=>268
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.gravatar_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746154470243043053)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'URL_9'
,p_sequence=>269
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746154868854043053)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'HTML_URL_9'
,p_sequence=>270
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.html_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746155265010043053)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWERS_URL_6'
,p_sequence=>271
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.followers_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746155671295043053)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'FOLLOWING_URL_6'
,p_sequence=>272
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.following_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746156034250043054)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'GISTS_URL_6'
,p_sequence=>273
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.gists_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746156496414043054)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'STARRED_URL_6'
,p_sequence=>274
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.starred_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746156864556043054)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SUBSCRIPTIONS_URL_6'
,p_sequence=>275
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.subscriptions_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746157240625043054)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'ORGANIZATIONS_URL_6'
,p_sequence=>276
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.organizations_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746157673126043054)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'REPOS_URL_6'
,p_sequence=>277
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.repos_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746158071199043055)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'EVENTS_URL_8'
,p_sequence=>278
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746158501270043055)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'RECEIVED_EVENTS_URL_6'
,p_sequence=>279
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.received_events_url'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746158824563043055)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'TYPE_6'
,p_sequence=>280
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(746159235162043055)
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_name=>'SITE_ADMIN_6'
,p_sequence=>281
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'assignee.site_admin'
);
end;
/
prompt --application/shared_components/web_sources/sample_application_github_repository_commits
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(74820889094403144)
,p_name=>'Sample Application - Github Repository Commits'
,p_static_id=>'Sample_Application___Github_Repository_Commits'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(74799449853403135)
,p_remote_server_id=>wwv_flow_imp.id(733666003810366051)
,p_url_path_prefix=>'repos/oracle/:repo/commits'
,p_pass_ecid=>true
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(74821560689403146)
,p_web_src_module_id=>wwv_flow_imp.id(74820889094403144)
,p_name=>'repo'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'docker-images'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(74821156659403145)
,p_web_src_module_id=>wwv_flow_imp.id(74820889094403144)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'FREQ=DAILY;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
);
end;
/
prompt --application/shared_components/web_sources/sample_application_github_repositories
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(746022179193006341)
,p_name=>'Sample Application - Github Repositories'
,p_static_id=>'Sample_Application_Github_Repositories'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(745985645877006244)
,p_remote_server_id=>wwv_flow_imp.id(733666003810366051)
,p_url_path_prefix=>'users/oracle/repos'
,p_pass_ecid=>true
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(746022405588006341)
,p_web_src_module_id=>wwv_flow_imp.id(746022179193006341)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'FREQ=DAILY;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
);
end;
/
prompt --application/shared_components/web_sources/sample_application_github_repository_issues
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(746045977814036458)
,p_name=>'Sample Application - Github Repository Issues'
,p_static_id=>'Sample_Application_Github_Repository_Issues'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(746022915495036428)
,p_remote_server_id=>wwv_flow_imp.id(733666003810366051)
,p_url_path_prefix=>'repos/oracle/:repo/issues'
,p_pass_ecid=>true
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(746046698817036458)
,p_web_src_module_id=>wwv_flow_imp.id(746045977814036458)
,p_name=>'repo'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'docker-images'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(746046236285036458)
,p_web_src_module_id=>wwv_flow_imp.id(746045977814036458)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'FREQ=DAILY;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
);
end;
/
prompt --application/shared_components/web_sources/sample_application_github_repository_pulls
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(746159683097043055)
,p_name=>'Sample Application - Github Repository Pulls'
,p_static_id=>'Sample_Application_Github_Repository_Pulls'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(746047132489042924)
,p_remote_server_id=>wwv_flow_imp.id(733666003810366051)
,p_url_path_prefix=>'repos/oracle/:repo/pulls'
,p_pass_ecid=>true
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(746160404628043056)
,p_web_src_module_id=>wwv_flow_imp.id(746159683097043055)
,p_name=>'repo'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'docker-images'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(746159930334043056)
,p_web_src_module_id=>wwv_flow_imp.id(746159683097043055)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'FREQ=DAILY;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
);
end;
/
prompt --application/shared_components/navigation/lists/home_page
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(84557502023898366)
,p_name=>'Home Page'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84558064962898367)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Oracle on Github'
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-github'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name = ''Github API'' and last_status = ''OK'''
,p_list_text_01=>'Report on Oracle''s Github repositories, and their details like Issues, Commits or Pull Requests. See data visualized as Classic or Interactive Reports, in a Cards layout, as a Calendar or as a JET Chart.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84558499239898367)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Web Sources and PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name = ''Github API'' and last_status = ''OK'''
,p_list_text_01=>'See how a Web Source Module is being programmatically accessed with PL/SQL.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(98767062922497049)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Combine with local data'
,p_list_item_link_target=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-plus'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name = ''Github API'' and last_status = ''OK'''
,p_list_text_01=>'Use a <em>Post Processing SQL Query</em> in order to join local table data to the Web Source response.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84715194056426376)
,p_list_item_display_sequence=>37
,p_list_item_link_text=>'Test Service Endpoint'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-check'
,p_list_text_01=>'Test, whether Application Express can access the REST Service endpoints being used in this application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84684434748367471)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manual PL/SQL Coding'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-sql'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_list_text_01=>'Explore how to manually access a REST service manually with the APEX_WEB_SERVICE and SQL/JSON parsing functions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/admin_options
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3158596035235880822)
,p_name=>'admin options'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3158596231969880827)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reset Data'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_01=>'This application uses the sample EBA_RESTDEMO_SAMPLE_EMP to store local data, use this link to purge it.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3967094201826996888)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Change user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84677477379329451)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Test Service Endpoint'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-check'
,p_list_text_01=>'Test, whether Application Express can access the REST Service endpoints being used in this application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1851612061797833035)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Set REST Endpoint for the "Manual PL/SQL Example"'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-cursor'
,p_list_text_01=>'Manually set the URL of the Example REST Service endpoint. Use this when the example REST service runs in another workspace or another machine.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/rest_examples
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3158604431959993486)
,p_name=>'REST Examples'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1847402081636040420)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Simple Report'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Display data from external REST service as a tabular report.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1847402345984040420)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Report with Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_list_item_icon=>'fa-table-play'
,p_list_text_01=>'Browse through a report displaying larger REST service result sets using pagination.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1847403324713046125)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Report with Query'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:::'
,p_list_item_icon=>'fa-table-search'
,p_list_text_01=>'Display filtered data from external REST service by typing in a query.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1848983448667745207)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Local REST Data'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_01=>'Synchronize external REST data to a local table to perform reporting and anylysis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3614859799328666022)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1847396915181022089)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(746160968137052860)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Oracle on Github'
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-github'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name =''Github API'' and last_status = ''OK'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'221'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(98363939103769299)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>'Combine with local data'
,p_list_item_link_target=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-plus'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name =''Github API'' and last_status = ''OK'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'224'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75744490178900168)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Web Sources and PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name =''Github API'' and last_status = ''OK'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'223'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(746286234595453266)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Manual PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-sql'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3661382618514631430)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Simple Report'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_imp.id(746286234595453266)
,p_list_text_01=>'Display data from external REST service as a tabular report.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3661382882862631430)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Report with Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_imp.id(746286234595453266)
,p_list_text_01=>'Browse through a report displaying larger REST service result sets using pagination.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3661383861591637135)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Report with Query'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_imp.id(746286234595453266)
,p_list_text_01=>'Display filtered data from external REST service by typing in a query.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1848937961677508463)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Local REST Data'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_imp.id(746286234595453266)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3644097283807514084)
,p_list_item_display_sequence=>900
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,35,36,39'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar_top
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3614899082377713190)
,p_name=>'Navigation Bar (Top)'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3614899268871713197)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3614899720669713203)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3614900112693713204)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(3614899720669713203)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001EE494441545847637CFAFCE57F8601048CA30E180D81411B022CCCCC0C9C9C1C54C91FDFBFFF60F8F3F72F56B370E6025E1E6E';
wwv_flow_imp.g_varchar2_table(2) := '06107EF1EA0D980681CF5FBE32488889C0C5B8B938897220481F086303041D70E1EA7506095151B0DE17AF5F3318686B32C0C4408E210650E400622C20A4E6F3C74F0C9FBFFF202D049897CD6410DCBA8290D944C97FF08F65F8139634700E78EF1DC1F0';
wwv_flow_imp.g_varchar2_table(3) := '372A7D98388049DF9481A9AC958191978FE1B79F05D857AC9B4E30FCFFFC89E15F5735C3BF8BA7317C4AD5106059B69BE153553603E3BD9B0C9C4C8C60CBBEFDFDC7C0A0ACC1C0D73695E14F942B6D1DC0B6F72AC32F676DACF1894B8E3A21C0C3CBC014';
wwv_flow_imp.g_varchar2_table(4) := '97C5C068EDC2F0371AD3972017312FDDCDF0FFE81E867F8BA631307CF90C7724551CF0DF2D8081BDBC95E15B6D2E03CBB17D5843E08F95130357F364869F9DD50C8CBB3650D7017FFF3330FCD435611098B8106F147CC88F6760BF7C868119923CC0802A';
wwv_flow_imp.g_varchar2_table(5) := '2100336CE0D200D4052C9B4E30FC2D4A60F87FE7064A3430AA683030354EC69A3EA81A02DF754C1878ABDA1918797851CB812F9F19BEB45732705C3E43DB6C0832FDC7BFFF0CA0A6347239C0C4C8C8C0012D17D05D40D51020AAF6415334341DF0F3DE2D';
wwv_flow_imp.g_varchar2_table(6) := '06E6433BC9F130869EBF76EE0CEC4A6AA4D58654B1998181E1DFBF7F0C4C4C4C388D1BED198D86C0808700005D0064B0461E96350000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(555217267426302101)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000EF849444154785EED9D4D6C1DD515C7CFFBB271EC679C3831495C7581A81440A8B080A2D25605176837049A46950A0DA55D20C2';
wwv_flow_imp.g_varchar2_table(2) := 'C7A64D1327121548D849D36E0C04B1A828292C2A4871D894A026546DA96859940A512C11B1A8EA7C9838317E761CFBCD7BAF3A431E79B6E7F3D8F7CDB99EFF6C40F13D77CEF99FF39B7B67DEDC3B99D193A76B84030AA454810C004869E611B6AB000040';
wwv_flow_imp.g_varchar2_table(3) := '21A45A010090EAF4237800801A48B5020020D5E947F0000035906A050040AAD38FE001006A20D50A008054A71FC10300D440AA150000A94E3F820700A881542B0000529D7E040F005003A9560000A43AFD081E00A00652AD00004875FA113C00400DA45A';
wwv_flow_imp.g_varchar2_table(4) := '010090EAF4237800801A48B5020020D5E947F0000035906A050040AAD38FE001006A20D50A008054A71FC10300D440AA150000A94E3F820700A881542B0000529D7E040F005003A9560000A43AFD081E00A00652AD00004875FA113C00400DA45A010090';
wwv_flow_imp.g_varchar2_table(5) := 'EAF4237800801A48B5020020D5E947F0000035906A05AC01A0A3BD9DDADA5AA990CFA73A61DA832F3B0ECDCCCCD2D4F4B476575DFFD40390CFE568CDEA2ECAE77356080A273F53C0712A74F6DC0439958A6A49D403D0B3B61BC5AFBA84FC9D6308C6CE8C';
wwv_flow_imp.g_varchar2_table(6) := 'ABF65E35003CEDE92CB6AB1610CE052B30599A563D1D520DC0BAB56B30E7B79C30BE27F8E4CC59B551A80660E3FA1EB5C2C1B1E80A9C383516BD71935BAE1800FE77E2148D9F9BA0B972995A0A05EA5EDD455FD8B83E929C49D946726E05340200C22446';
wwv_flow_imp.g_varchar2_table(7) := '1D01468E7F4CA5A9C58FDD8A1DEDB4E9AA2B03CF9E94AD50122BCD0080306D5100E0ABF7C9B14F7CCFB0A1679DEF489094AD500E6BCD008030755100F8F70723EEB4C7EFE0E9D097AFDDE4F9E7A46C8572586B060084A98B02C0BBEFBD1FDAFB8DD75FE7';
wwv_flow_imp.g_varchar2_table(8) := 'D92629DB508757580300204C68140092BA8A2FE5BC4239AC350300C2D4450120A979FC52CE2B94C35A3300204C5D1400B8EBA49EE42CE5BC4249AC340300C2B4450580BB4FEA59FE52CE2B94C53A3300204C591C0084A780591314000042910180503865';
wwv_flow_imp.g_varchar2_table(9) := '66004098100020144E991900102604000885536606008409010042E194990100614200805038656600409890B5F7DE2AB484992605CEBCFC962677E6F9A27A3D0000505B37B11C0300B1E4BAD418000885536606008409010042E1949901006142008050';
wwv_flow_imp.g_varchar2_table(10) := '386566004098100020144E991900102604000885536606008409010042E1949901006142008050386566004098100020144E991900102604000885536606008409010042E1949901006142008050386566004098100020144E9919001026040008855366';
wwv_flow_imp.g_varchar2_table(11) := '06008409010042E1949901006142008050386566004098100020144E9919001026443B0099F5BD94FDEA6D94B9FE46CA5CD14B99AB16EF425D3D324CCE81BD4453A5782A741429BF7D17656FE923EA28CEB3AD1D1FA1DAE951AABDF72E55FF7E8C6AA746';
wwv_flow_imp.g_varchar2_table(12) := 'E3F5DDE4D6004028B85600B8F073DBB653F6CEBB2345567DF33039FB76476A5B6F947FF269CADE725B241B86AC72F0805A100040A4342E6EA41100BE22E77FFED4A2AB72608853259ADB7C732C155A8E7E10AB3D8F30CE2FF750F5EDA3F1EC9AD01A0008';
wwv_flow_imp.g_varchar2_table(13) := '45D606005FF1DDE28F7B4C9768EE2EC3005CF4C985E0C8705C0F8DB6070042793501E05EF99F1C124532FBC63065F6EF8967FBC410B57CAD2F9E4D1D82C71F5335120000511A89B400C073FEC2F387E24D7B2EC67CFE8D612A0D0DD0EAD9C51FF10B92E5';
wwv_flow_imp.g_varchar2_table(14) := '6C6B3B75ED1EA4961B6EA26CFBFC9BE0503979CA75EFEDF16FBC433B9635000032DDD40090DF3940D93B36FB46C1453EFDCA8B54FEE843CF361922EA2EE462A970A65CF16D5FF8D2D5D4BEF57E5AF56DFF9B70C98D772C076334060031C46A6CAA610470';
wwv_flow_imp.g_varchar2_table(15) := 'AFFE2FBFE9194175BA44E38F6DF32DFCBA516B3643C55C36960A934E95E66AB5401B06A17BE8A0EF0851BEF70E154F860040ACD45F6AAC0180DC966D94DBBED333824F7E724FA4E2EFC8658947813807977EC9A952B956A3200C188275BF79CDB3EBCA81';
wwv_flow_imp.g_varchar2_table(16) := '7D54397430CE698DB4050042593500E0F73C7EFAD583F4E9D0801B195FE1DBB219CA67E296B94C18A756A3996A8D66AB9FA1D1B57BAFE774A8FAF631721E7F54769265B4020042315500F0FC21CA7AFCC2CB577FE7A30FE9F27CB66985BF504606E153A7';
wwv_flow_imp.g_varchar2_table(17) := '4A799F51A07A7C849C07B708D55F3E330020D45203007E3F489DF8C626EA4AB0F8EB923204134E9536FE65C453E5B9BE6B85EA2F9F1900106AA9198073DFBC9ADA63DED80A6508352B55AAD4FD67EF27500020583EEC0E1D525E7E23C0F9DBAE496CEAE3';
wwv_flow_imp.g_varchar2_table(18) := '35155A75EC3F1801422F158B1B000021001AAEAC8DAEFB81AAC14F4C810464B289E6299086C20200C2C26A30C308801160E95514D2034600A1C41801A20B87295074AD1A5B620408D08D5778B92FC1791CB64C81CA0F6E215E4196E4811140A87E922300';
wwv_flow_imp.g_varchar2_table(19) := 'AFF8CADDFFB0AFE7B600C001545E7CD65D3196D4010084CA2701005FF5F33B9EF25CDFDB18863600F2AFBF13F8DA348F02CEFE3D898C0600C01200C2AEFAF530F8F5E77CDC052E420DA29A951FDA49EDDFDB16DA3C89D1000084A6C5BB41B34680A8577D';
wwv_flow_imp.g_varchar2_table(20) := 'F6F2C2DF8ED2C4403FAD89B9C045284164335E3FE0F752DCC24E9A3D1A0080C8699CDFB0190044BDEAF3BBFF5CF817FEFA27D7C9B53117B80825886C365EAEB8AF4D5FF6F56FB92BC9A2AC226BD668000022A7B1B900E41EDE45B9EFFE30D4BBFA55BF3A';
wwv_flow_imp.g_varchar2_table(21) := '35E9B6952C70093DC9121B4C57AAEE2BD27C643B3A5D082E8BB0A6986F8E190493070010AA6B7A04E0955EBCE2CBEF5878D5E7762D990C15F3F117B808258865C62FC5D5D708B06194D18037D5E29563260F002054D734002DAFBF4314B0E09CD7F84EEC';
wwv_flow_imp.g_varchar2_table(22) := 'DDEDAEFAE2A52EBCACB125DB9C452F42C968AE5A230681C7025E2DD6B56BC0FDAFDF513B7D82CA3FB85D7ABA48760020924C8B1B9906A0F6D04E6A8DF0E4E4FC0BCF50EEA5E7622F6B1486BD64332EFECA7D0FD1AA071E09ED6BF6D58394796E5F68BBA5';
wwv_flow_imp.g_varchar2_table(23) := '34000042F54C0370CEA950B1DF7B39E142979BFDE4442899FBFB4594DF31B87F77CB96C15DB43A1F6FC78AB8BE0180B88A5D6C6F1A00CD4F4E2492499E68F15E156B0C3FD10200926C36E17568CD4F4EE24AC6AF6D300061C7C2275ABC98DFF4CA360010';
wwv_flow_imp.g_varchar2_table(24) := '96159FBF9B1E01F8B45A9F9CC495ACE5F03B813BD7793DD16AD6E35C0010379B4D9A02D5DD6A7C72C2FF16E539BAB677818276935E78D56FF6132D00A01C0076AFBE1155E36E6CFC1C7DCD53CF787A6F0B0067F73CF2F9AFD71C4812BF6300000B00F01B';
wwv_flow_imp.g_varchar2_table(25) := '0D346F37D2286BD0F62DDCAED957FD46DF008045002C1C0D560200495CF50180B0E81BCD9A71131CE426DF1B74BCA577BB912823C0D4ADD724FEEB354600210C4903E0CE997D3E5564CB3D80063F010000102A10DD4C33A800207A1EE7B5C408105D3800';
wwv_flow_imp.g_varchar2_table(26) := '105DABC696D815224437CD8515E51E0053A0E00403000020BB74C6B0C2142886589A9E02E1265898B805660040A8A3867B80CCF387A8E0F1810C0D1B4ED565F5DBC0AB7C7C846AF8404660F5610A140267F58921CFB5B5953FFC8E2ACFEE15A2BDBC667E';
wwv_flow_imp.g_varchar2_table(27) := '5FB1E47780B2BF786C794F26E80D2380403436D13002CCDC7D1F5DFE68BF67041A4681A0ED1B3F7D7A90DA865F12AABF7C660040A8A506004A6BD753F7EF8F7A473055A2F24F7F94C86E6BEC905BFCBFFEADEF6BD0E3DFEFA3E2995342F597CF0C0008B5';
wwv_flow_imp.g_varchar2_table(28) := 'D400007FAF7755FF60F047A98F0C134F899AB5092D173E6FE792BDD3FF43D9BCDCF1FC603F75E6E37D9F5898AA4033002054550300BCD7CE85751B68DD0BC391369B5A186AF5C8303907F6124D95E2A9D051A4FCF65D94BDA52F70A18B57A7BCF8656C6B';
wwv_flow_imp.g_varchar2_table(29) := '1FB5CD4CB99F6F4DFA0000C20C6800A05223E2C5F3416B03C2C2ABBE79989C7DBBC39ACDFBBBDFF789A374525F03C08BDD73C9D73F01802859F368A3010076ABBE6C72D577EEA1AEFEC1F8D14C95686EF3CDB1EC82567805753431D84FE7FFF89AAADDEB';
wwv_flow_imp.g_varchar2_table(30) := '0040ACD45F6AAC05001E05269CF87B6F7E1EC97489E6EE320B40E39A5FBEE8F34E0F0A2EFEAE0400C07200D87D5E1B3059A9BA91E4D6F752F1C78F06DE1837863CFBC63065E26EA7FEC410B544D8DB93CFC337BC93430354DFBBB453D90E7600600500C0';
wwv_flow_imp.g_varchar2_table(31) := '215CA8D668EA22047510F8DEA0F5869B5C28BC7E3176379F1A1AA0D531B7533FDBDAEE6E70DB72C34D8B6EBEF917DECAA9519AFDD73FDDF5BEFCFFF5A32397A5CB14DCF836A61C00AC1000EA23417DEFCDA861F154A43BE6E653BCDF7F9C23C935BF617E';
wwv_flow_imp.g_varchar2_table(32) := '028030857CFEAEE51E60A17B7C4F70BE3A7F27E6A01025FBEFF0EF0F8D3B5484F5CF577E2D73FE85BE02801506403D1C06818BB45CAD11EFC7EC7CB63DFFBC838B5F529CF56D5ACAB59ABB654BE391CF1071B917B219779B130D8F3A83520C00562800C2';
wwv_flow_imp.g_varchar2_table(33) := 'B0526706008429D73A051286935A3300204C3D00100AA7CC0C000813020084C229330300C2840000A170CACC008030210040289C323300204C0800100AA7CC0C000813020084C229330300C2840000A170CACC008030210040289C323300204C0800100A';
wwv_flow_imp.g_varchar2_table(34) := 'A7CC0C000813020084C229330300C2840000A170CACC00803021ED3BEEA7B613FF155AC34C8302331BBF48D3FB5FD4E08AA70FAAB7462C1F3C401B8EBCA2563C3816AEC0C93BB75221C207BCC37B32D3423500A3A3A3B4E9573BA875ECA499E8D1AB5105';
wwv_flow_imp.g_varchar2_table(35) := '667B36D0C8CFF6536F6FAFD1F32CA573D5008C8D8D51E6D4285DF9C27E40B0942C2760CBC5FFF1033BA8B6BE977A7A7A12F020DA295503502A95687272D28DA4E7E861EA7AFF1FB8278896D7C45AF19C7FE2BAAFD058DF66D787CECE4E2A168B89F91376';
wwv_flow_imp.g_varchar2_table(36) := '62D500B0F363A74F53D971C2E2C0DF152A50C8E7A9E78A2B147A76C925F500388E4367C7C70181EA325AEC1C17FF9AEE6ECAE7F3AA3D570F405D3D9E0ECDCCCC50B95C562D68DA9D2B140AD4D6D6A67ADAD398236B00487B61217E330A000033BAA2574B';
wwv_flow_imp.g_varchar2_table(37) := '14000096240A6E9A51000098D115BD5AA20000B0245170D38C0200C08CAEE8D5120500802589829B66140000667445AF962800002C4914DC34A3000030A32B7AB54401006049A2E0A619050080195DD1AB250A00004B120537CD280000CCE88A5E2D5100';
wwv_flow_imp.g_varchar2_table(38) := '00589228B869460100604657F46A890200C09244C14D330A000033BAA2574B14000096240A6E9A51000098D115BD5AA20000B0245170D38C0200C08CAEE8D5120500802589829B66140000667445AF962800002C4914DC34A3000030A32B7AB544010060';
wwv_flow_imp.g_varchar2_table(39) := '49A2E0A619050080195DD1AB250A00004B120537CD280000CCE88A5E2D510000589228B869460100604657F46A890200C09244C14D330A000033BAA2574B14000096240A6E9A51000098D115BD5AA2C0FF01E1A94B39BC43D04D0000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(40) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(555217520315302117)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EED9D07B85D559DB77FFB945B736F7213928020A0224351C1828D51B10D62EF20821401E95544116CA08260A1';
wwv_flow_imp.g_varchar2_table(2) := '092A20E0300C60C182A3380A3A28F3212A882838B4402095E4A6DC7ACEDEFB7BD6098124DCB2FB5EFBECF73C8F4FD0ACF25FEF6FE179CFAECE638B96F8E2030108400002108040A908380840A9F266B110800004200081160104808D0001084000021028';
wwv_flow_imp.g_varchar2_table(3) := '210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E82C190210800004208000B0072000010840000225248000943074960C0108400002104000D80310800004';
wwv_flow_imp.g_varchar2_table(4) := '200081121240004A183A4B860004200001082000EC010840000210804009092000250C9D25430002108000041000F600042000010840A0840410801286CE922100010840000208007B000210800004205042020840094367C91080000420000104803D00';
wwv_flow_imp.g_varchar2_table(5) := '01084000021028210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E82C190210800004208000B0072000010840000225248000943074960C01084000021040';
wwv_flow_imp.g_varchar2_table(6) := '00D80310800004200081121240004A183A4B860004200001082000EC010840000210804009092000250C9D25430002108000041000F600042000010840A0840410801286CE922100010840000208007B000210800004205042020840094367C910800004';
wwv_flow_imp.g_varchar2_table(7) := '20000104803D0001084000021028210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E82C190210800004208000B0072000010840000225248000943074960C';
wwv_flow_imp.g_varchar2_table(8) := '0108400002104000D80310800004200081121240004A183A4B860004200001082000EC010840000210804009092000250C9D25430002108000041000F600042000010840A0840410801286CE922100010840000208007B00021080000420504202084009';
wwv_flow_imp.g_varchar2_table(9) := '4367C91080000420000104803D0001084000021028210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E82C190210800004208000B007200001084000022524';
wwv_flow_imp.g_varchar2_table(10) := '8000943074960C0108400002104000D80310800004200081121240004A183A4B860004200001082000EC010840000210804009092000250C9D25430002108000041000F600042000010840A0840410801286CE922100010840000208007B000210800004';
wwv_flow_imp.g_varchar2_table(11) := '205042020840094367C91080000420000104803D0001084000021028210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E82C190210800004208000B0072000';
wwv_flow_imp.g_varchar2_table(12) := '010840000225248000943074960C0108400002104000D80310800004200081121240004A183A4B860004200001082000EC010840000210804009092000250C9D25430002108000041000F600042000010840A0840410801286CE92210001084000020800';
wwv_flow_imp.g_varchar2_table(13) := '7B000210800004205042020840094367C91080000420000104803D0001084000021028210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E82C190210800004';
wwv_flow_imp.g_varchar2_table(14) := '208000B0072000010840000225248000943074960C0108400002104000D80310800004200081121240004A183A4B860004200001082000EC010840000210804009092000250C9D25430002108000041000F600042000010840A0840410801286CE922100';
wwv_flow_imp.g_varchar2_table(15) := '010840000208007B000210800004205042020840094367C91080000420000104803D0001084000021028210104A084A1B3640840000210800002C01E800004200001089490000250C2D059320420000108400001600F400002108000044A4800012861E8';
wwv_flow_imp.g_varchar2_table(16) := '2C190210800004208000B4C91EA8562AEAECEA5467BDAE5ABDA66AA5AA4AC56993D5B10C0840202F029EE7CBF55C351B4D8D351A1A1B1D93EB797995C3BC09124000128499C7501DF5BA7A7BBBD5DDD595C7F4CC0901089490C0C8E8A886864634DE6894';
wwv_flow_imp.g_varchar2_table(17) := '70F5EDB36404A0C059CEECEF536F4F77815740E910804091090C0D8F68D5EA35455E42A96B47000A187FBD56D3AC59FD327FF28100042090278146B3A9C1C1D5327FF229160104A05879A9A3A3AED903B3547138BF5FB0E82817026D4BC0F37DAD5839A8';
wwv_flow_imp.g_varchar2_table(18) := 'F1714E0914296404A04069995FFC73E60CF0E55FA0CC28150265216024E08927567224A040812300050A6BEE66B339EC5FA0BC2815026523604E032C5BBEA26CCB2EEC7A11808244C7057F05098A32215072025C18589C0D800014202B73ABDF6673060A';
wwv_flow_imp.g_varchar2_table(19) := '5029254200021090963FB1925B040BB011108002843430AB9FFBFC0B901325420002EB0898E704AC1C5C0D0ECB0920009607649EF0377FDE6696574979108000043626B064E9729E1868F9A640002C0FA8A7A75BB3FAFB2CAF92F2200001086C4C6070F5';
wwv_flow_imp.g_varchar2_table(20) := '1A0D0F8F80C562020880C5E198D20666F6ABBB9BC7FC5A1E13E54100029B10181919D5CA559C06B07963200036A723895BFF2C0F88F22000810909704BA0FD1B0301B03CA3CDE7CDE5AD7E966744791080C0330998B7082E5EBA0C34161340002C0EC794';
wwv_flow_imp.g_varchar2_table(21) := 'F6ACCDE7595E21E5410002109898C0E38B9782C662020880C5E1E42D00A363E35A39B84A6BD60E69787454CD275FF651ABD5D4D3D5A5BE19BD1A9835535D9D1DB950A4BE5CB03329040213400002A3CAA52102900BF6E093E6710460746C4C8F2D5EDA7A';
wwv_flow_imp.g_varchar2_table(22) := 'B947908F7939D1969BCF5357676790E6B1DB505F6C840C00814C08200099608E3C090210195D361DB31680654FACD082858FC9F7C3ADCFBC9C709BADB6D4DC39B3C3750CD99AFA4202A3390472248000E4083FC0D4084000487936C95200162D59AA858B';
wwv_flow_imp.g_varchar2_table(23) := '96C45AEE565BCCD716F3D3B96E81FA6245436708644E0001C81C79A809118050B8B26F9C9500985FD60F3FFA58220BDCF6D9C91F09A0BE44A2611008644A0001C81477E8C91080D0C8B2ED9085009873EA7FBBF79FA10FFB4F46C29C0E78C10EDB27764D';
wwv_flow_imp.g_varchar2_table(24) := '00F565BBE7980D0249114000922299CE3808403A5C131B350B017860C1A3812FF80BBA307361E0F3B67976D0E653B6A3BE443032080432278000648E3CD4840840285CD9374E5B00CCAD7477FFE3BE5416F6C21DFF25F62D82D497CF2D96A96C08062D1D';
wwv_flow_imp.g_varchar2_table(25) := '0104C0EEC81100BBF349FD41408B962CD3C2458B53A1B0D5169B6B8BF973638D4D7DF1F8C5824F6708C4248000C404987277042065C071874FFB08C03F1F7858ABD6AC895BE684FD67F6F569FBE76D1B6B6CEA8BC72F167C3A43202601042026C094BB23';
wwv_flow_imp.g_varchar2_table(26) := '0029038E3B7CDA0270E73DF7AAD168C42D73C2FEF57A5DBBEEBC43ACB1A92F1EBF58F0E90C8198041080980053EE8E00A40C38EEF0690BC01D77FD4D7ED8A7FE045C94E3387AD92E2F08D87AE266D4178F5F2CF87486404C0208404C802977470052061C';
wwv_flow_imp.g_varchar2_table(27) := '777804004189BB87E80F81BC08200079910F362F02108C536EADD216000EB1C73BC46E3BBFDC362E134340120260F7364000ECCE27F5BB00B8C82EDE4576B6F3B37C7B535E9B134000EC0E1801B03B9FD40580DBECE2DD66673B3FCBB737E5B5390104C0';
wwv_flow_imp.g_varchar2_table(28) := 'EE801100BBF3495D0078D04EBC07EDD8CECFF2ED4D796D4E0001B03B6004C0EE7C521700B37C1EB51B6F13D8CE2FDEEAE80D81E8041080E8ECB2E88900644139C61C695F04684AE3653B31022A00BF78ABA33704A2134000A2B3CBA227029005E5187364';
wwv_flow_imp.g_varchar2_table(29) := '2100A63C5EB71B23A402F08BB73A7A43201A0104201AB7AC7A210059918E384F560260CA5BB464A9162E5A12B1D275DDB6DA62BEB6983F2FD6189375A6BE54B032280452238000A48636918111804430A637489602B0FE48C082858F29ECC3011D47DA66';
wwv_flow_imp.g_varchar2_table(30) := 'AB2D3577CEECF4603CF94B9BFA5245CCE010488C00029018CA5406420052C19ADCA0590B80A9DC5C13F0D8E2A55AB17230D042660FCCD2969BCF53576767A0F6711B515F5C82F48740360410806C38479D0501884A2EA37E7908C0FAA5995BDC560EAED2';
wwv_flow_imp.g_varchar2_table(31) := '9AB5431A1E1D55B3D96CFD55AD56534F5797FA66F46A60D64C7575C6BB952E2A4AEA8B4A8E7E10C8860002900DE7A8B3200051C965D42F4F01C868894C030108B4290104C0EE601100BBF3C9E439009623A03C0840A0A0041000BB834300ECCE0701B03C';
wwv_flow_imp.g_varchar2_table(32) := '1FCA83000426278000D8BD3B1000BBF341002CCF87F220000104A0A87B0001B03C39AE01B03C20CA8300042625C01100BB37070260773E1C01B03C1FCA830004380250D43D8000589E1C47002C0F88F22000018E0014740F200096078700581E10E54100';
wwv_flow_imp.g_varchar2_table(33) := '02084041F700026079700880E501511E0420800014740F200096078700581E10E5410002084041F700026079700880E501511E0420800014740F200096078700581E10E5410002084041F700026079700880E501511E0420800014740F20009607870058';
wwv_flow_imp.g_varchar2_table(34) := '1E10E5410002084041F700026079700880E501511E0420800014740F200096078700581E10E5410002084041F700026079709B7DF8F596574879108000042626B0FCEA9B4163310104C0E2704C690880E501511E042030290104C0EECD8100D89D0F0260';
wwv_flow_imp.g_varchar2_table(35) := '793E940701084C4E0001B07B77200076E78300589E0FE5410002084051F700026079729C02B03C20CA830004380550D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005';
wwv_flow_imp.g_varchar2_table(36) := 'DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C026079409407';
wwv_flow_imp.g_varchar2_table(37) := '0108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C02';
wwv_flow_imp.g_varchar2_table(38) := '60794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D80';
wwv_flow_imp.g_varchar2_table(39) := '00581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C1210096074479108000';
wwv_flow_imp.g_varchar2_table(40) := '0250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C121009607';
wwv_flow_imp.g_varchar2_table(41) := '44791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5';
wwv_flow_imp.g_varchar2_table(42) := 'C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794094070108200005DD030880E5C12100960744791080000250D03D8000581E1C0260794061CBEBEB97D3DD';
wwv_flow_imp.g_varchar2_table(43) := '2B75754FDFD36D4AA323F24786A5E1A1E9DBDBD4A2AB5BCE8C7EA9A74792337D65E3E3F24786A4D58392EF4FDF9E168520B0FCEA9B0B5167598B44002C4F1E01B03CA0A9CAABD5A58E4E555EF452395B6D23CDDF52CEB3B795B3D5B67266CD0EB430FFF1';
wwv_flow_imp.g_varchar2_table(44) := '47D5FACFFDFF90F7BB9BE43FF260A07E793572E6CC55E5757BCA79E1CBD6AD75FE16925399B61C7FED1AF98F3F22FFA1FF93FFE07DD2D2C5F2EEBD5B32F2634408299896A18D0D10001B5379BA2604C0EE7C8400581ED0A6E5398E9CE73C5F9537BE5D95';
wwv_flow_imp.g_varchar2_table(45) := '57BCB6F5CF897D5C57EEE5E7C9FDFE9552B399D8B0890CE438AABE7B5F550F3E4EEAE94D6448B96E4B0ABCDB6E9177CB2F5A1264FE373EC5218000D89D150260773E0880E5F9AC2FCF99334F95B7BC4795777C50CE66F32527C061EF886B335F88CDD38E';
wwv_flow_imp.g_varchar2_table(46) := '8AD83B856E8EA3DA59DF56E5A5AF4A6FDDCD86FC471E92F7DB5FCAFDE9B5D2AA95292C842193268000244D34D9F110806479263E1A470012479AE880CE96DBA8F286B7AAFADEFDA4BE99E97D016E5275F3CB9F94F7DF3F4D742D51076BFDF23FFA53810E';
wwv_flow_imp.g_varchar2_table(47) := 'F5479DE3A97EE654C0C890DCEBAF94F78B1FC95FBA28F6900C901E0104203DB6498C8C00244131C531108014E1C619BAA7579537BF53D5FD0E97333027B32FFEA74A6E36D538F43DB95F13E03CEBD9AA5F72BDD4DB178766A4BEFEB225F26EB85AEEB5DF';
wwv_flow_imp.g_varchar2_table(48) := '957C2FD218744A970002902EDFB8A323007109A6DC1F0148197084E19D1D5FA4EADE1F55E5356F8AD03BB92EEEB7CE957BDD77931B30EC48E6BCFF0147ABBAFFE1617B26D7DEF7E4FDE116B9D75E26FF9E3B931B979112218000248231B5411080D4D026';
wwv_flow_imp.g_varchar2_table(49) := '333002900CC7A446A9ECF55E550F3C7ADD79FE9C3FE61078F3A2B3A4E1B5F954D2D9A5DAE7CF5365B77FCD67FE0D66F5172D947BD537E5FDEAA71C0DC83D8DA70B40002C0A6382521000BBF3E122408BF2A91E7662EB97BF2D1FEFCEDBE57EE5D3F2973C';
wwv_flow_imp.g_varchar2_table(50) := '9E4F49B366AB7EF17572E66D91CFFC9BCEDA6CCAFDD975722FFC321260472242002C096292321000BBF341002CC9A776DA39AABCFEAD9654B3AE0CFFEF77A96904E0D187F2A96BE6C03A0198FFAC7CE69F6456EF67D7A9F98D3390000B5241002C08618A';
wwv_flow_imp.g_varchar2_table(51) := '121000BBF34100F2CEC7A9A8F6893355F9B777E55DC933E6F77E7DA39AE79D210DADC9A7B6AE6ED53EF1C5D6837F6CFBB44E8F9C7B3A0F10CA39180420E700A6991E01B03B1F0420CF7C6A75D58E3B4D95B7BE3FCF2A269DDBBDE41CB9D75F915F6D4E45';
wwv_flow_imp.g_varchar2_table(52) := 'D5838F5175DFC3F2AB618A99BD9B7EDC3A42C25304F38B0701C88F7D909911802094726CC34580F9C1AF1E7282AA1F3A24BF02A698D9BC1FA079D03BE42F5B9C6F7D7D3355BFEAE772FA67E55BC7A4A703AE57F3EB9FB3B2B632148500D89D320260773E';
wwv_flow_imp.g_varchar2_table(53) := '1C01C8299FEA7BF757F5F093A56A35A70AA69E76F537CE50FD27FFA96A7A0F1C0CB46ECF971A7B1FACBE8F9D14A87DE68D5C57CDF3CF90F7B3EB339F9A09C54580966F0204C0F2803802907D40CEF63BAB7ED6B7A49903D94F3EDD8C9EABB1BFDCAE1527';
wwv_flow_imp.g_varchar2_table(54) := '1FAA6ECF554F75FA17ED4C37649CBF1F763D8D546BDAECA26B54DF7E27A9926F3D13ADC57F62999AC7ED2773AB209F6C097004205BDE61674300C212CBB83D029031F0EE1ED5CEBC48955D5F9EF1C4D34FE7AD1ED4DA6B2ED3D00FBE277F74549D154733';
wwv_flow_imp.g_varchar2_table(55) := 'AA95202FDB9D7EF0082DCC4B7BD7343D8DFBBE9C7A5D3DEFDA4733F63958555B6E0BDC604DFEDFFEACC671FB4758255DE2104000E2D04BBF2F02903EE358332000B1F085EE5C79DBFB553BE173E93FDAD7F3A6BF38CD71E4AE7C42CD87FE4FE377FE51C3';
wwv_flow_imp.g_varchar2_table(56) := 'BFB841EE06CFBEAF3BEB0420AFD300E6F0FF60D3D5860FE1ADF4F6A9F74307AB73D797ABB6F57354E99F29195398ECB3FEA549E6CF145FA064A66F7EF16479BFF979E83D4187E8041080E8ECB2E88900644139C61C08400C7861BBF6CD54C70FFE2795F3';
wwv_flow_imp.g_varchar2_table(57) := 'FE7EA3A1B1DB6FD5D8EDFFA3C6FDF7CA5DB4B0F52B7EAA8FEF365BAFFD6DFD698461938F1180BE6A45959CAE039848009E2AB1529163AE9FA8D5E554AA937EB9FB9EAB4A5FBFAA733757FDB9DBABF3557BA8F3E5FFDA3AA290F4C79C02681EFF11F9CB97';
wwv_flow_imp.g_varchar2_table(58) := '243D34E34D420001B07B6B200076E7C3458019E6533DF098C49F6BDF78F09F1AFEE9751AFDFDCDF29E5826BF319ED88ABA2A8E7A2D390590C8A21C478E1186197DEA79FBFBD5F3E677A8B6ED76890CBD7E90E6F967CAFBF135898EC96093134000ECDE1D';
wwv_flow_imp.g_varchar2_table(59) := '0880DDF9200019E5E3CC99ABFAD53749F58E446634E7EB877FF6FDD6397BF3CF69DC8BDE5371ACB80870D81C0A48E15399BD997ADFFE01F57EE023AA247441A6FFC07D6A1CBFBF343C9442C50CB9290104C0EE3D8100D89D0F0290453EE6AD76EF3F60DD';
wwv_flow_imp.g_varchar2_table(60) := '6D7F097C9A0FDFAF55179ED53AE49FD6C71CF59F55ABE676FE7FFDBACC77FFCAA63BE569FEB80CBA767FBDFA3F76526247039A679C24EF965FC42D8BFE010820000120E5D80401C8117E90A9B9062008A5986D7A7A55BFE03FE42470B8D95CB03778F669';
wwv_flow_imp.g_varchar2_table(61) := '1AFFFB5D318B9ABABB39F4DF9DD7C9FF4D4A33B702A6751460FD54F5E7EFA4FE234F56E74B5F159BAB7FD71FD5F8DCF1923932C32755020840AA78630F8E00C44698EE000840BA7CCDE8E68BBF7ED98F634FD45CB8402B3F77821AFFFC7BECB1A61A20EF';
wwv_flow_imp.g_varchar2_table(62) := 'DBFF36AD6DC3DB01D35C7875F32D35F73BDF8F7F3A607C4C8D530E93FFD73BD22C97B1C583806CDF040880E50921002907640EFFBF6F7F558F3825DE449EAB6587EFA3C6BD77C71B678ADEE6B0BFF9E56F2EFEB3ED632460C43C14C8F3533D1DD0B1E38B';
wwv_flow_imp.g_varchar2_table(63) := '34E7BC2BE57475C742E07EFF2AB9179F1D6B0C3A4F4F802300D333CAB305029027FD007323000120C569D23F4BB553BEA4CA2B5F176714ADB9F29B5A73F905A12FF69BEEB979E6D6F8AA1CD52B8E3A8CACD8F7DDBF1137734DC098EFABE9FB6A04B838F0';
wwv_flow_imp.g_varchar2_table(64) := '9937374E1F43FFA12768C6FE1F9BBEE1142DBCFFFDAD9A5F38511A9BFA56CC5893D09947015BBE071000CB034200D20DC879CEF6AA5F7C6DACABFFDD258BB474FFBDA6BCAFDF7CD1AFFF12AF6DF0C09B20DFE7AD67E4A48B21F1D1CD11013FE0CD01ADB6';
wwv_flow_imp.g_varchar2_table(65) := 'F2E5FA6A3D55D088C3546260EE0E9877F90D327F46FDF80B1F56F38C8FCBBFFF1F5187A05F00021C01080029C72608408EF0834C8D0004A114BD4DE5356F52ED73E7451F40D2EA0BCFD2DAEB267E2D6FCD913A2B95D6AF7773E4BE685FE4B1C044E86C64';
wwv_flow_imp.g_varchar2_table(66) := 'C01C38302230EA792D2998E8D377D0D1EA3BE0C858EF1EE06E80080185EC82008404967173042063E061A74300C2120BD7DEBCCBBEFAD1E3C275DAA0B53F3CA4C5EF7DADCC9F1B7ECC2F7E73AEBEAB92DF93FA222FCA928EE6CB7FC4F33436C175059581';
wwv_flow_imp.g_varchar2_table(67) := '399A77C54F64FE8CFA71AFFE96DCCBCF8FDA9D7E010820000120E5D80401C8117E90A911802094A2B7A91DFF1955DEB177E401C6FE749B9E38E1A08DFA9BF3F4E619FDE651BD7CE21318F77C0D4D703460CE37AE50E74B5E197902EF77BF52F3F3C747EE';
wwv_flow_imp.g_varchar2_table(68) := '4FC7E9092000D333CAB305029027FD007323000120C568523BFDABAAECF196C823ACB9F43CADB9EAE2A7FA9B43FEFDD56A6ECFE78FBC10CB3B9AA301AB5D77A353027D1F39427D87443F7AE3FDF936354F3EC4F29517BB3C04C0EEFC1000BBF3E1498029';
wwv_flow_imp.g_varchar2_table(69) := 'E6E36CB5AD6A279F29E7052F8E348B3F32ACC1AF7D5E23BF5CF70C01F3CBDF3C9D8FDFFD91704EDB695309E87EF33B3470FA39D3F69BAC81FFF7BBD438763FC98F722F42E4694BD51101B03B6E04C0EE7C108014F371FE6567D58E3D5DCE0E2F8C348BB7';
wwv_flow_imp.g_varchar2_table(70) := '62B99E38E5636ADC774FEB4BBFBFC661FF482043746AF8BE5635D77D619BB706CE39F7D210BD376EEADFFD27354E381001884C70FA8E08C0F48CF26C8100E4493FC0DC9C02080029621367A75D55FBD2C572FAFA238D609EFCB7FCF0BD5B2FFBB1E1C53C';
wwv_flow_imp.g_varchar2_table(71) := '911651C04EEB1F3DDC128073BE33E9AB86A75B9AF7D73BD43CF12004603A5031FE1E0188012F83AE08400690E34C8100C4A137755F67E75D553FE732A9B32BD224CD050F68D9611F903332AC813A87FE23418CD86945C355FD15AFD19CAF7C1B0188C830';
wwv_flow_imp.g_varchar2_table(72) := '8B6E08401694A3CF8100446797494F04203DCC490940CFF8A8352FE6498F965D239BA300EE6EFF1A4B00DCBFDE21972300A9068B00A48A37F6E008406C84E90E8000A4C7D70840ED9CCBE4C43802B0FCB00F68A039C6857FE9C534E1C8E66141232F7DB5';
wwv_flow_imp.g_varchar2_table(73) := '06621C0168DE7587BC93380590667408409A74E38F8D00C46798EA0808407A78931080C18F7D50FD0D9E279F5E4A938F3CF292DD35F32BDF8A7C0AA071D71DF2118054A3430052C51B7B70042036C274074000D2E39B84000C1DFE41758F2300E9A534F9';
wwv_flow_imp.g_varchar2_table(74) := 'C88D97EEAEDEB311803CD8079D1301084A2A9F7608403EDC03CF8A00044615BAA1B7D3AEEA3C37DE29809123F656E7D848E8B9E9109F80FBB2DDD57D561C01F8A3FC930EE62E80F8514C3A02029022DC04864600128098E61008407A74931080F123F756';
wwv_flow_imp.g_varchar2_table(75) := '6D1401482FA5C9478E2F009C02483B3704206DC2F1C64700E2F14BBD3702901EE22404A079E43EAA8C0EA75724234F4A0001B07F73200076678400D89D0F4F024C319F2404C03D6A9FD67300F8644F0001C89E79D8191180B0C4B26D8F0064CB3BF46C1C';
wwv_flow_imp.g_varchar2_table(76) := '01088D2C70070420302A2B1B220056C6B251510880DD19210076E7C3118014F3410052849BC1D008400690634E8100C404987277042065C07187E708405C8293F74700D2639BC5C808401694E3CD8100C4E397766F04206DC231C7470062029CA23B0290';
wwv_flow_imp.g_varchar2_table(77) := '1EDB2C464600B2A01C6F0E04201EBFB47B230069138E393E0210132002901EC09C474600720E20C0F4084000483936410072841F646A042008A5686D3802108D9B2DBD10005B9298BC0E04C0EE8C1000BBF3E122C014F371777C91BABEFADD582F03E236';
wwv_flow_imp.g_varchar2_table(78) := 'C014039A66E8D80270F79FE59F70004F024C3142042045B8090C8D00240031CD213802901E5D2300DDE7FFBB54A9469AA4B9E001210091D025D229AE00B80F3F20F7E87D249EE390481E130D8200A48636918111804430A637080290125BC791DEF52175';
wwv_flow_imp.g_varchar2_table(79) := '1CF3E9C813200091D125D231AE00F8E36372BF79B6BC9F5E9B483D0CF24C020880DDBB0201B03B1F4E01A4908FF3ECE7A87AF8C9AABCF275B146470062E18BDD39AE00AC2FC0BBE5176A9E7786B47A30764D0CB0310104C0EE1D8100D89D0F0290703ED5';
wwv_flow_imp.g_varchar2_table(80) := '77EFABEAD1A7467E87FC86E5200009871372B8A404A035EDEA4135CDD1805FFD246415349F8A000260F7FE4000ECCE070148281F67BB1D54FDF0E1AABCF6CD098D28210089A18C3490FB9257ABE3942FAABAD9BC48FD9FD1C9F7E5DDFA6BB9977E5DFEC2';
wwv_flow_imp.g_varchar2_table(81) := '879319B3E4A32000766F0004C0EE7C108004F2A9EE7F84AA1F3840EAED4B60B4A78770172E50F3F0F7F332A044A9061FACF9BC1D55FFC499AA6FB743F04E015A9A2F7FF7FA2BE5DD78BDE4FB017AD06432020880DD7B0301B03B1F0420463ECE96DBA8BA';
wwv_flow_imp.g_varchar2_table(82) := 'FFE1AABCE9ED92538931D2C45D9B0FFE53EEA1EF9193F8C80C1884C078BD531DE75CAA8E17BE2448F3706D1AE3F27EFF6BB9DFF9BAFCC58F85EB4BEBA7082000766F0604C0EE7C108028F954ABAA7EF02055DEB1B79CF9CF8A3242A03E63B7DD229D7614';
wwv_flow_imp.g_varchar2_table(83) := '02108856F28DC63D5FD5CF7C4DDDAF7F4BF2833F39A2FFE84372AFB850DE1F6E96C6C7529BA75D074600EC4E16015AEB44900000200049444154B03B1F04206C3E5DDDAA1D7DAA2A7BBD376CCF70ED5D576B2E39471D3FFC1E02108E5C62AD8D0078EFFB';
wwv_flow_imp.g_varchar2_table(84) := '88FA8FFE6462634E3890EFC9FBD54FE57EFBABF2573E91EE5C6D363A026077A00880DDF9200041F3712AAABCFAF5AA1EFD2939F3B608DA2B72BBE6230F6AE5B1FBAB7FCD2002109962BC8E460086E66EA1395FF9966ADB6E176FB020BD0757A879C117E5';
wwv_flow_imp.g_varchar2_table(85) := 'FDEE5792E706E951FA360880DD5B0001B03B1F0420483E33FA543BF293AABCF16D52AD1EA447AC36E601322B3E79849A7FFA8366D5AA08402C9AD13B1B0158ED7AEA7ACD9B3470FAB972BABAA20F16B4A7391A70EB6FE49E7F86FC15CB83F62A6D3B04C0';
wwv_flow_imp.g_varchar2_table(86) := 'EEE81100BBF34100A6CAC7FCEA7FC35EAA1E74AC9C2DB6CA24497F78484F7CFC108DFFED2FAA3A420032A13EF124EB05408EF3A4049C13F9BD0EA197618E065CFA7579BFFC314703A680870084DE599976400032C51D7E321E053C313367CBAD55DDF730';
wwv_flow_imp.g_varchar2_table(87) := '555EB7A7D4DD131E6C841E8DFBEFD5E0973E29F3A7F92000112026D8A5E1FB5ADDF4B4FE46BDDAD6CFD5AC53BFAC8E9D76497096298632770ADC764BEB22417FC103D9CC59B0591000BB034300ECCE8723009BE653ABABF2E257A87ADCE999FDEAF786D6';
wwv_flow_imp.g_varchar2_table(88) := '68E4A69F68ED3597C95DFCF853152100F9FECBD3F47DAD753D3537B855BF323047338FFEA43A5FBD872A093FF761B2D59ADB04DDCBCF97F7BB9BA4C678BE502C9B1D01B02C904DCA4100ECCE0701D8201F67F3AD54F9C001AABEFD8352AD964972CD87EE';
wwv_flow_imp.g_varchar2_table(89) := 'D7EA8BCFD1E8EDB73EE350AF1180815AB4370966527C9B4F62BEF7CD1100732460A38FE3A8F3A5AF52DF8147A9E3452FCD8C8277E3F7E5FEC7B7796EC006C41180CCB65FA489108048D8B2EBC4298075AC9D9D7655EDF8CFC879DEBF6402DF1F1DD1C87F';
wwv_flow_imp.g_varchar2_table(90) := 'FF4CAB2FFA8ACC1180893E75C7D1CC5AF20F18CA64816D32C91AD7D39837F1D3FA9CDE199A79DC69EAD9F35D89BCFB210832FF9187D43CE734F97FBF3348F3B66F8300D81D310260773E1C01305FFE3BBC50F5B3BE2DF5F5679256F3D187B5FA9B5FD1E8';
wwv_flow_imp.g_varchar2_table(91) := 'EF7F33E57CBDD58ABA2B3C07309350269964D45B771A60AA4FE7CB5EDD7A5640FDB9DB6753AAEBAA71E4DEF2EFFF4736F3593C0B02607138E6FF5B1F5BB484875D5B9C51E98F007476A97ED5CFE56C363FFD943C574337FCA7565F7496FC4663CAF9CCEF';
wwv_flow_imp.g_varchar2_table(92) := 'FE99B56AEB42403EF911707D69B5EBCAFC39DDA7FF632769C6870F9DAE59227FEFDFFD27354E3EA4F4D7042000896CA7D406410052439BCCC0651780CA5EEF53EDC4CF4A9574CFB537FEEFEF5A7DC95735F6A7DB246FEA5F9426D9FE6A451DFCFA4F6693';
wwv_flow_imp.g_varchar2_table(93) := 'C71CC55C03B0AA397D66669AAE57EDA119071C91FE9D029EABE62987C9FBF3FFC65C5DB1BB230076E78700D89D4FE94F01D4CEB9549597BC2AB594CC7DFD433FBD4E6BAEB848FED0DA69E7313FF8FBF8F29F9653D60DCCA98021F7E95B02A79ADFE9E955';
wwv_flow_imp.g_varchar2_table(94) := 'EFBB3F247344C03C4320AD8F77CB2FD43CF3E3A57EA3200290D6EE4A665C0420198EA98D52F62300F5AB6F92B3F996A9F01DFFC75FB5F6EAEF68D43CDA35C0C71CEE9F51ADC85CFCC7C73E0213DD163869954F3E3CA8FF90E3527B8CB0FFD802350E7B9F';
wwv_flow_imp.g_varchar2_table(95) := '343A621FAC8C2A420032021D711A042022B8ACBA955A001C47F56B6F9633676EF2B87D5F83E77C46C33FFFC1B487FCCDD77D57C55177A5228EFA271F4592239A4B01865D4FE6884080CB02D4FDC6B769D627CE9093C2C3A4FC658BD538E4DDD2DA89EF22';
wwv_flow_imp.g_varchar2_table(96) := '4972DDB68E8500D89ACCBABA1000BBF329FD2980FA7FFE46CEDC742E001CF9F58D5AF3DD0BD57CE4A1497781B9D8CFFCEAE77CBFE5FFA26C529EB92EC09C12D8F021419BAEA0BAD93CF51D7A827AF67A4F2A8BF31F7B448DC3DECB118054E83268120410';
wwv_flow_imp.g_varchar2_table(97) := '802428A63846A98F0048AA7FFB87A9DEFBEF8F0C6BE5174F79C66980F5BFFA7BAA155EF693E2FE4E7B682301239B3C27C0A9D5D4B5C79EAD670454660EA45682F7C7DFAB79EA11A57E5700470052DB5E890C8C00248231BD41CA2E00D5BD0F56F5B093D2';
wwv_flow_imp.g_varchar2_table(98) := '036C46F67D8DDEFA6BADBAF02CB98B16B66EEDE35C7FBAC8B31C7DC36B03AA73E7ABFFA853D4BDC79EA9DF59D23CFB547937FD38CBA55A371702605D241B158400D89D4FE94F0168EE7C55BE72996A5B3F27FDA43C57C3177C59D59F5CC3AFFEF469673B';
wwv_flow_imp.g_varchar2_table(99) := '43ADAEE66BFF4DDDC79F2E2783770434EFFB9BBC23F7CE768D16CE86005818CA0625210076E7537A01308F796DECFE460D9C764E36EF7BF75C79BFBC41EEF7AF92FFF0FD96EF0ECA0B42C0D9763B553FFC31555EFB66A9560FD225561B6FCD6AADFCC249';
wwv_flow_imp.g_varchar2_table(100) := 'EAFAD3EF4B7FC70802106B2BA5DE1901481D71BC09CA7E0AC03CE0C55CD0D5FB9E7DD577E8F1AACCC8E671C0FEB225F27EF4EF72AFBD3C5E80F4CE8F4067972A7BBC45D5038E9233FF5999D4E1AD58AED5979FAFE19F5CA7CE8AD37A6644993F0880DDE9';
wwv_flow_imp.g_varchar2_table(101) := '230076E753FA23002B1AAED63FE3AD73B7DDD57FE809AAEFF0826C52F33D793FFFA19A979F270DAEC8664E66498480B3CDF354FDC081AAECF5DE44C60B3248E3DEBF69CD951769F4F737B79AF3BA68090108B273F26B8300E4C73ED0CC653F02B0A10018';
wwv_flow_imp.g_varchar2_table(102) := '6095FE599AB1DF619AF1C10352BF886B7D40FEE28572AFFDAEBC1BAF975C37506E34CA8980E3A8F2C6B7ABBAFFE172B6DA369B223CAFF534C9B5575D2277D9E2A7E634BFFD07EAD5525F4F820064B305A3CE8200442597513F04E0E923001B2237EF791F';
wwv_flow_imp.g_varchar2_table(103) := '38F52C559FF5EC8C9290BC5BFF5BCD2F9D228D8D663627130527E0CC9ADDBA63A4B2E7BB83778AD9D2BC3972D579676AECF65B9F3152CD59F7C2A8323F37120188B9C152EE8E00A40C38EEF0651780C1A63BE9C35C9CAE2EF57DE448CDD8F710A992CDB9';
wwv_flow_imp.g_varchar2_table(104) := '56FFF147D53CEB93F2EFE17DEF71F77692FD9D9D7651EDE42FCAC9E26E91270B5F7BED77B5F6AA8B652EFA9BE8631E193DB396CDBE4C92659263210049D24C7E2C042079A6898E587601300F71310F7399EAD3B1F32EEA3FE6D4F4DFF0F66411FEF2256A';
wwv_flow_imp.g_varchar2_table(105) := '9E7E8CFC7FDE9368D60C168D80B3FDCEAA7DF6EBA9BD3362D3AA1AF7DEADD5979E37E1AFFE0DDB9A0B00CD858065FE200076A78F00D89D4FE92F02340F715B15E07DEF95D99BB5DEF036639F8F6672BBA0FFD73BD4F8CCB1D29A5596EFA0362FAF7F966A';
wwv_flow_imp.g_varchar2_table(106) := '9F3E479597BD3AFD857AAED65E7B85867E74B5DCC58F4F399F39FC3FAB96EE2BACD35F70FC191080F80CD31C010148936E026397FD088041689E05608E024CFBC6F74A451D2F7871EB11AFF5E7EF9800FDA987702FF8A2DC1BFE23F579986072029537BC';
wwv_flow_imp.g_varchar2_table(107) := 'B52500697F9A0FDFAFD5179FABB13FDE2ABFD99C723ADE1FF1341E0420ED9D196F7C04201EBFD47B2300EB1007960073A7C0ACD9EA3BF02875BFF91DAAF4A5F7DC00EFB65BD43CEDA8D4F700134C4EA076D2E75579EBFB5343E40F0F69F8973768EDD597';
wwv_flow_imp.g_varchar2_table(108) := 'CA5DBA68DA79CC977F2F87FE9FE284004CBB65726D8000E48A7FFAC91180A7199907020DBB7EEBC140413EE6B901338FFEA46ACF797E90E6A1DBF80B1E50E3E07786EE47878408388E6A5FFDAE2ABBEC96D0801B0F63BEF0577DF5F31AFD7FBF9BF695D1';
wwv_flow_imp.g_varchar2_table(109) := 'A6A739EC6FBEFCCDC57F7CD6114000ECDE090880DDF994FE1A8089E299E80D6F93C5E8D43BD47FC4C7D5F3AE0FC9A927FB18D8D6EB5E3FF63E6964D8F25DD49EE59987FDD43E75969CE7EF94E802FDF1310DFFECFB5AF39D6FC81B5A33EDD8EBDF1C69BE';
wwv_flow_imp.g_varchar2_table(110) := 'FCF96C4C0001B07B47200076E783004C92CF866F780B1261C78E2FD2CC53CE54FDB9DB07691EA88DFFC8836A9817BE2000817825DDA8F29257AA7ACC6989DEFAD75CB840ABBEFE058DFDE9B6C0BFFACD9B236BFCEA9F305E0420E95D9FEC780840B23C13';
wwv_flow_imp.g_varchar2_table(111) := '1F8D530053230D729BE0FA11CCD180191F39BCF5DC00F3CF713F08405C82F1FA5776FB57D5BEF84DA91AFF6A7B7F6C5443375CA3B5575E2C6FEDC4F7F56F58ADF9D5DF5D71D4C3AFFE29434400E2EDF1B47B230069138E393E02303DC050D706388E3A5F';
wwv_flow_imp.g_varchar2_table(112) := 'FC0AF51D7CB43A5EF4B2E9079FA20502100B5FECCE2D01F8F22552CC5FDFE37FBF4B6BAEB848E377FC61DA2BFC4DD1E61C7F4FD5E15C7F800411800090726C8200E4083FC8D40840104A92B92C70FD9D02412E1134EF14E83FEA14F5ECF59E60134CD0CA';
wwv_flow_imp.g_varchar2_table(113) := '5FF0A01A47710A2032C0981D931080D1DFDEA4C1733E236FF5E0B4D5ACFFD5DF5DAD94FAF1BED382DAA00102108656F66D1180EC99879A11010885AB7587C09A66806706985F72CFDF4973BF7D7DE443C8DE8207D54400C2059460EBB802E02E5AA86547';
wwv_flow_imp.g_varchar2_table(114) := 'EC23F30ADFE93EE60AFF1EF39C89923FD96F3A4E9BFE3D02109658B6ED11806C79879E0D01088DAC753460C4F564AE0F98EA6840C74EBB68CE7957CAE9EC0A3F892477C103728FDA878B0023D18BDF29AE008CDF73A7961FB5EF9417FBADFFD5DF55A988';
wwv_flow_imp.g_varchar2_table(115) := 'EFFEF0992100E19965D90301C8927684B9108008D09EEC62EE1458E37A7227B100F3D4C0395FFF6E6401682E78401E02103DA0983D630BC05D7FD4F2E30E985400B8AF3F66403C07203EC09447400052061C777804201EC1A98E06242100E60880C36D80';
wwv_flow_imp.g_varchar2_table(116) := 'F1428AD8DBDF6D77757EF95B912F021C9F4200D65FE1CF237D2286F364378E00C4E397766F04206DC231C7470062027CB2BB79A9D06A77E3570B2300C9B0CD6B146FB7DDD595B000982BFC7BAB0EF7F527142A029010C89486410052029BD4B008405224';
wwv_flow_imp.g_varchar2_table(117) := 'D7DD2930EC7AADBB05CC8B851080E4D8E63192FBB2DDD57D5632470038D79F4E8208403A5C931A1501488A644AE32000C98335D70498C7096BE75D635F03C02980E4F3093A62520250F33DF134BFA0D4C3B54300C2F1CABA35029035F190F32100218105';
wwv_flow_imp.g_varchar2_table(118) := '6C6E8E068CEEB08BFABF7679AC8B00118080C05368968400AC3DE140F53AE2BEFE14F23143220029814D685804202190690D8300A44556F277DA551DE75E8600A48738D591931000EFC48355699D10E293060104200DAAC98D890024C7329591108054B0';
wwv_flow_imp.g_varchar2_table(119) := 'B606F576DA559D08407A80531E39AE0034EEBA43FE4907493E0290565408405A64931917014886636AA32000A9A14500D2439BC9C808402698634D8200C4C2977A67042075C4F1264000E2F19BAA374700D2639BC5C808401694E3CD8100C4E397766F04';
wwv_flow_imp.g_varchar2_table(120) := '206DC231C7470062029CA23B02901EDB2C464600B2A01C6F0E04201EBFB47B230069138E393E0210132002901EC09C474600720E20C0F4084000483936410072841F646A042008A5686D3802108D9B2DBD10005B9298BC0E04C0EE8C1000BBF31102905E';
wwv_flow_imp.g_varchar2_table(121) := '4008407A6CB3181901C88272BC39108078FCD2EE8D00A44D38E6F808404C809C02480F60CE232300390710607A042000A41C9B200039C20F323502108452B4361C0188C6CD965E08802D49700AC0FE2426AE1001B03C390420BD801080F4D86631320290';
wwv_flow_imp.g_varchar2_table(122) := '05E578737004201EBFB47B230069138E393E02101320A700D20398F3C80840CE0104981E01080029C72608408EF0834C8D0004A114AD0D4700A271B3A51702604B129C02B03F094E011432230420BDD81080F4D8663132029005E578737004201EBFB47B';
wwv_flow_imp.g_varchar2_table(123) := '7304206DC231C7470062029CA2BBBBE32EEAFCF225AAF4F5479AC45DB840EE31FB4AAB0723F5A7533C02EE4B7757F7D9DF921C27D240BC0C2812B6509D108050B8326F8C00648E3CDC840840385E615ABBDBEFACDAB1A7A9BEE38BC2747BAAADB762B99A';
wwv_flow_imp.g_varchar2_table(124) := 'A71D29DD774FA4FE748A47A07504E0EC6F471EA4F1D73FC93FF140DE061899E0F41D1180E919E5D90201C8937E80B911800090223671B7DC46D593CF54C70B5F1269047F6458EEF967CABBE9C791FAD3291E01EF8D6F57D7A967471EA4F1F7BBE41FBB1F';
wwv_flow_imp.g_varchar2_table(125) := '021099E0F41D1180E919E5D90201C8937E80B911800090223669F8BE2AA79DABEE37BC35E20852F38A0BE47DEF92C8FDE91883C07E87ABE3A063220F30FEA7DBA44F1C12B93F1DA72780004CCF28CF1608409EF403CC8D00048014B1891100E7B8CFA8E7';
wwv_flow_imp.g_varchar2_table(126) := '5DFB441C41F2FEF2FFD4FCF8C191FBD3313A81EAB997ABFAE257441E60ECB737C9F9C20991FBD3717A0208C0F48CF26C8100E4493FC0DC08400048119B1801F03E74A8FA0E8DF125303CA4F1BDDF200DAF8D5805DDA2107006E6A8F69D1FC9FC19F5337C';
wwv_flow_imp.g_varchar2_table(127) := 'D5C5AA5D7961D4EEF40B400001080029C72608408EF0834C8D0004A114AD8D1180F157BF5103675E106D80277BB9979C23F7FA2B628D41E77004AA7B7F54D58F1E2755ABE13A6ED07AF5999F50D7CD3746EE4FC7E9092000D333CAB305029027FD007323';
wwv_flow_imp.g_varchar2_table(128) := '000120456C62046078EBEDB4D977BE2FA7DE117114C95FB6588D03DE268D8D461E838EC1093873E6AAF6F52BE56CB94DF04E9BB474172DD49A334E56CF7D7F8D3C061DA72780004CCF28CF1608409EF403CC8D00048014B1891180B53D7D9A79EAD9EA7A';
wwv_flow_imp.g_varchar2_table(129) := 'F51E114759D7CDFDD6B9EB8E02F87EAC71E83C3D81EAA127AABACF47A76F38458BD1DB6ED1DACF9EA07E773CD638749E9A000260F70E4100ECCE4708407A01358D0078BE3ADFF711CD3CE653F126F25C358EF9B0FC7BEF8E370EBDA724E0ECB48BEAE75E';
wwv_flow_imp.g_varchar2_table(130) := '2E7576C522B5F6BA2B3472D1D99A59ABC41A87CE084091F7000260797A08407A01B9BEB4D6F5E46FF33CCDBBEA67B127F21F7F54CD334E92FF4F1E0C141BE60403389B6FA5FA25D7497D33630DEF8F8DEA89930E9177F71D9A558B7E0D41AC224AD29923';
wwv_flow_imp.g_varchar2_table(131) := '0076078D00D89D0F470052CE6775D353A3BB47732FFE4FD59EF3FCD8B3F90B1E50F3DCCFC8FFFB9DB1C76280A70938DBEFACEAE127ABB2CB6EB1B18CFDE576AD3CFD18D5D6AC563F470062F39C6A00042055BCB107470062234C77008E00A4CB77C8F534';
wwv_flow_imp.g_varchar2_table(132) := 'E24B333E78A0FA8F3A2591C9FC471E927BF1D9F26EFF9F44C62BFB2095DDDFA0EA2127CAD9FA3989A058F9D9133472F37FA9B3E2A8AFCA298044A04E3208029026DDF8632300F119A63A0202902A5E8D78BE8C0454666FA6F9D7FD5A4E47673213AE592D';
wwv_flow_imp.g_varchar2_table(133) := 'F7973F927BCDA5D2AA955C1C1881AA336BB62AEFD85BD5F7EE27F5CF8A30C233BB341EFCA7961FB5AFFCA1B5EAAE38EA450012E13AD9200840AA78630F8E00C44698EE000840BA7CC73C5F6B5CAF3549DF4147B7FE93E4C77FF87E79BFBC41DEEF7E257F';
wwv_flow_imp.g_varchar2_table(134) := 'C532697C2CC9E1DB6FAC8E4E397DFDAAECB1972A6F7BBF9C6D9E97E81A577DEDF31ABAE19A7579572BADA3007CD2238000A4C736899111802428A638060290225C49E64E80C1E63A0130AF059EFFE33FC8A9D5929F746C54DEEDB7CABFEB76790FDC272D';
wwv_flow_imp.g_varchar2_table(135) := '7A54FEE834CF0DF03CA9312E359B92E7265F539A2356AA92E158AB4BAD5FD9937CD17A5EEB0B5F733797F3DCED5579E9AB54D9F5E5526F5FE2D5B94B1769F911FBC85DB64455679D00D422BE4A38F1E2DA744004C0EE601100BBF3E122C094F3F17CB58E';
wwv_flow_imp.g_varchar2_table(136) := '00986702984FCFDBDEAF599F3823F23BE603976BE6F3D789C7A41FA7227F7085CC5104FFAF77C8FBC58FE42F5D14788A5C1AF6F5ABFAC18355D97537395B6D2B992FF7A99E8DE03C790E3E832FE2959F3B5123BFF9790B4BDD715A1700F2FB3FDD5D8200';
wwv_flow_imp.g_varchar2_table(137) := 'A4CB37EEE808405C8229F7E70840CA80250DBB9E868D0998DFA95DDD9A7DD6C5EA7CC92BD39F38EC0C6BD7B41E36D47AE0906D4F1DAC77A8FAAE0FA9F2C103E5CC99177665A9B71FBFF38F5A7EECFE4FCDD355713483F3FFA973470052471C6B02042016';
wwv_flow_imp.g_varchar2_table(138) := 'BEF43B2300E933DEF03440EBD7E1F377D29CAF5DA6CACC81F4270F3B83E7CABBFBCF6A9AD7D89A5303367CEA1DAA5F70B59CED764CFFC84984F5BACB976AF9911F92BBF8B1A77A9B070099A3007CD2258000A4CB37EEE808405C8229F7470052062CC9FC';
wwv_flow_imp.g_varchar2_table(139) := 'F66F3D0F608343D5BDEFF9B0FA8FF9543AD70324B024F7A2B3E4FEF07B098C147F88EABE87AAFAD1E3E30F94C608AEABC1733FABE11BBFFFD4E81CFE4F03F4C4632200D9B18E32130210855A867D10806C606F7837C0FA19FB0E394E7D1F39229B02C2CE';
wwv_flow_imp.g_varchar2_table(140) := '3236AAC641EF90BFE4F1B03D936D3F73401D57DE18FBE97CC916F5F468433FFA0FADFAFA17361ADE1CFA37A700F8A44F0001489F719C19108038F432E88B006400F9C9A3002B1BAE36BC2CCFDC0DD07FFCE9EA7DE7DED914117296DC5F43EC54543DF858';
wwv_flow_imp.g_varchar2_table(141) := '992300367E867FFE430D9EFDE98D2E4234971C0ED4AB5CFC975160084046A0234E8300440497553704202BD27AEAA1401BCDE838ADBB02CCDD01B67DBCDFFC5CCD6F7C411A5A934F695DDDAA9DF225555EFB6FF9CC3FC5ACC33FBDAE75E87FD33B10CC83';
wwv_flow_imp.g_varchar2_table(142) := '7FCC0380F864430001C88673D4591080A8E432EA870064047A92A300EB671F38ED2BEAFEB77766574C8099FC7FFC55CDB34F95FFE843015AA7D064E680EA975C2F67DE16290C1E7DC8A11F5DAD55DF38F3195FFEE6D7FFEC3A2FFF894E367C4F04203CB3';
wwv_flow_imp.g_varchar2_table(143) := '2C7B200059D28E30170210015A8C2EA39EDF7A43E0449FFEC34ED48CFD0E8B317AB25DBD3B6F97FB954FE7771DC0ACD9AA5F7C9D3502E0371A1AFEF1355A75E159927988D2261F9EFC97ECFE0B321A021084527E6D1080FCD8079A1901088429D146E68E';
wwv_flow_imp.g_varchar2_table(144) := '80F1891E5EE338EAD9F35DEA3BEC445537CBFF5E77F360A0E6456749C36B135D7FE0C13ABB54FBDC375479F96B027749AB61F3B147B4E6B2F335F2EB1B277CF050C7930FFE496B7EC69D98000260F7CE4000ECCE872701E6908F792E80793AA0BBEED940';
wwv_flow_imp.g_varchar2_table(145) := 'CFF874ECB48B667CF85075BDE64D3954F7F494EE772F90FBEF97E45783E3A87AC051AAEE9FEF9D12A3BFFB95D65E73A9C6EFB96B4216E6B1BFFDD56AEBF1BF7CB225800064CB3BEC6C0840586219B7E70840C6C09F9CCE9C0A306F099CC401E4F4F4AA67';
wwv_flow_imp.g_varchar2_table(146) := 'CF776BC6FE1F5375F6665225E3D7CA361B6A1CB9B77CF35E811C3FCE165BA9F69D1FC9E9EEC9BC0A77C9220DFDE07B1AFEE9F5F226B910D27CE79BDBFE78E94FE6F1B4264400F2E11E7456042028A99CDA21003981975A02605E173CD5A7B6E5D6EA7AFD';
wwv_flow_imp.g_varchar2_table(147) := '5B34E30307A8326B76664FC21BFCFC49EAFAED2F94F705EDE6284973EF83D577E809D94890EFCB5BBB4643D75EAEE1FFBA41EEB2C553E6C32B7FF3FBF70701C8977D90D911802094726C8300E4085F6A5D10688E064CF7A9CE99ABEEB7BC47BDEFDA5B55';
wwv_flow_imp.g_varchar2_table(148) := '73557C5A47047C5FA3B7FE5A2B3E7D74EB5DF679DFD2D67A8F822FCD39FB5BEA7CC56B521320BF31AEE6C30F68E4E6FFD2F04FAE93B77A70BA48C479FF6911A5DE802300A9238E350102100B5FFA9D1180F4194F37C3AA4D1E133C657BC7516DDBE7A9E7';
wwv_flow_imp.g_varchar2_table(149) := 'ADEF53F76BDFACEA165B4D377CE0BFF79B4DADF9F6D7B4F6FA2B25D76D1DD63687B7F33AB56DB468CDFA0B261D47BDEFFE90FA0E3B4195845EE56BD6EB3EB640A3BFBFB9F516BFC6FDF7057E2DB2F9F2EFE36D7F81F7565A0D1180B4C826332E02900CC7';
wwv_flow_imp.g_varchar2_table(150) := 'D446410052431B6AE020A703361DD03C4950B5BA3A7679996A5B6DD392818E17BE44B5AD9F137CEEB131351EBE5F6377FC41A3BFBD49CD471F7EAAAF79A6BD1180BC2E6E330230D87437BA58B2323047DD7BECA9CEDD76577D8717CAE9EE0EB6D64643EE';
wwv_flow_imp.g_varchar2_table(151) := 'D2C51ABFE72F721F5FA8C603F7A9F18FBBE58F8DC88840984FDE6214A6D6766F8B00D89D300260773EDC0560513E4602CCE980E94F084C5CB4D3D129A7ABAB7501A1F9E7201F7F64A475819B3F3AF28C7BDBCDAF5C2300795D0760386CFAF8E4D69A1C47';
wwv_flow_imp.g_varchar2_table(152) := '4E6767EB488059ABF9EFD37DFCF131F9C343F2C7C6640EF74F741FFF746398BF37A745CC73FEA79F31C868B4894B0001884B30DDFE0840BA7C638FCE1180D808131DC008C08837F92D82894E36CD60E68BCE7CE1E5F565B7D129802C173EC15CE628484F';
wwv_flow_imp.g_varchar2_table(153) := '85ABFD738EE119D32300B625B2713D0880DDF97004C0C27CCC95EFC39E27F306C13C3F365C0468EE92304746F2FC98232186455EA742F25CBBED73230076278400D89D0F0260713E791E0D304F1D9859CBFFE136C6815636DDC8A745E2C46BBEF0BB2AF9';
wwv_flow_imp.g_varchar2_table(154) := 'DF0911670DEDDE1701B03B6104C0EE7C1000CBF3315F80A3DEBAE70564793CC0A677DAB76E05CCF06888919F6EF3701FC7C9EDFA07CBB7A535E52100D6443161210880DDF9200096E7B3BE3CF3E56F8E08181998EC11C2492DC55CE56E5E6C63D3C73C3A';
wwv_flow_imp.g_varchar2_table(155) := '39ED5322EB7FF173919F4DC94F5D0B026077560880DDF9200096E73351794600C63C4F0D5F6A4CF452A1886B325FF93D4F5EE51E718854BB1901300F4E4AF24848CD913A2B95D6437D38C79F6A7CA90C8E00A48235B1411180C450A633107701A4C3358B';
wwv_flow_imp.g_varchar2_table(156) := '51CD17A1F9FE3767C85B8FCCF5D79D263047CBCDD7A4F973BA2F4BF3A567EEF7AF3A8EEA8E540B704B5D166B9B6C0EB3C671CF97B92CD0AC793A0132773098DB18CDBD0CEBFE34FF7DDD5ACDCD7CE67FCBEB2E873C39B6CBDC0880DD49220076E7C31100';
wwv_flow_imp.g_varchar2_table(157) := 'CBF3095BDEA65FFAD3FD5E5EFFC558B42FC1F5F263D63795E46C7813E37A1908CB94F6F6124000ECCDC6548600D89D0F0260793E940701084C4E0001B07B77200076E78300589E0FE5410002084051F700026079725C03607940940701084C4A80230076';
wwv_flow_imp.g_varchar2_table(158) := '6F0E04C0EE7C380260793E940701087004A0A87B0001B03C398E00581E10E54100021C0128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03';
wwv_flow_imp.g_varchar2_table(159) := 'A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2';
wwv_flow_imp.g_varchar2_table(160) := 'E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082';
wwv_flow_imp.g_varchar2_table(161) := 'EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA83';
wwv_flow_imp.g_varchar2_table(162) := '0004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01B03C20CA830004108082EE0104C0F2E01000CB03A23C0840000128E81E40002C0F0E01';
wwv_flow_imp.g_varchar2_table(163) := 'B03C20CA830004108082EE0104C0F2E0060E799BAA23C396574979108000043626E076F768E5A53782C562020880C5E198D27A3FFE11752F7AD4F22A290F021080C0C60446B678B686CEBD0A2C161340002C0EC794563DF7340DFCE5F796574979108000';
wwv_flow_imp.g_varchar2_table(164) := '043626B0F2C5BBCBFDF89960B1980002607138A6B4D11FFEBBB6FAC16596574979108000043626B0F07D1F55D77BF7038BC50410008BC331A52DF9C7DFB4F399C7585E25E541000210D898C03DA75DA0F93BBE002C161340002C0EC794F6D8638F699BAB';
wwv_flow_imp.g_varchar2_table(165) := '2FD4ACBBFED7F24A290F021080C03A0283BBBC520B3E7CB4B6DC724B90584C0001B0389CF502D0FBC8FDDAEEC2CF595E29E54F5F07D20000089A49444154410002105847E0FEA33FA7A1ADB743002CDF100880E501992300E6B3D50D576ACE1F7E6579B5';
wwv_flow_imp.g_varchar2_table(166) := '94070108949DC013AF7EB316BEFB8016068E00D8BD1B1000BBF3D1A2458FCBF37C399EA7E79F7F9ABA1F7FC4F28A290F0210282B8191676DADFF3BF64CF9958A2A15475B6CF1ACB2A228C4BA1100CB635ABA64891ACD66AB4AF33C80ED2E3E4395511E0C';
wwv_flow_imp.g_varchar2_table(167) := '64796C940781D211F0BA7A74FF11A7CBDCFF6F3EF55A4DF3E6CF2F1D87222D1801B03CAD952B576A78F8E92FFCDE87FFA9E75E7E2E1260796E9407813211305FFE0F1EFC710D6DBBFD53CBEEE9E9D1C0C0409930146EAD0880E5910D0D0D69707070A32A';
wwv_flow_imp.g_varchar2_table(168) := 'CD9180675F7B31A7032CCF8EF220500602E6B0FFA37B1FF1D42FFFF56B9E356B967A7B7BCB80A0B06B44002C8FCE755D2D5EBCF819559A6B02B6FCC9F7B830D0F2FC280F02ED4CC05CF0F7D83BF76F9DF3DFF4B3F9E69BAB5AADB6F3F20BBF3604A00011';
wwv_flow_imp.g_varchar2_table(169) := 'AE58B14223232313566A6E11DCEC7F7EC173020A90232542A05D0898FBFC97BFE62DAD5BFD26FA7477776BF6ECD9EDB2DCB65D0702508068C7C7C7B56CD9B2292BADAD5EA999FFB853BD0FDEABAEC58FA863F009DE2258806C291102B613306FF51B9F35';
wwv_flow_imp.g_varchar2_table(170) := '47A39B6FADA1E7EEA0553BEEAA66FFD4E7F6E7CE9DAB8E8E0EDB9756FAFA1080826C8155AB06B576ED5041AAA54C0840A0AC0466CCE8D5CC99B3CABAFC42AD1B0128505C4B972E55A3D12850C5940A0108948940BD5ED7BC79F3CAB4E442AF150128507C';
wwv_flow_imp.g_varchar2_table(171) := 'CD4643CB962F6B3D18880F042000019B089807FFCCDD6CAE6AF5BA4D6551CB14041080826D0F733DC0134F2C47020A961BE542A09D09982FFF397336E3BC7FC14246000A169829D71C0958B17225A7030A981D2543A0DD0898C3FEB30706F8E55FC06011';
wwv_flow_imp.g_varchar2_table(172) := '800286B6BE642E0C2C7078940E813620C0057FC50E110128767E32A704D6AE5D3BE973020ABE3CCA8700042C2460EEF39F31630687FC2DCC264C490840185A16B7354F0C1C1D1D6D0941637C5CAEE7729D80C579511A048A42C09CDFAF56AAAA7774B4BE';
wwv_flow_imp.g_varchar2_table(173) := 'F0BBBABA78C25F51C29BA64E04A04D826419108000042000813004108030B4680B01084000021068130208409B04C93220000108400002610820006168D116021080000420D0260410803609926540000210800004C2104000C2D0A22D042000010840A0';
wwv_flow_imp.g_varchar2_table(174) := '4D0820006D1224CB800004200001088421800084A1455B084000021080409B104000DA244896010108400002100843000108438BB61080000420008136218000B449902C03021080000420108600021086166D210001084000026D420001689320590604';
wwv_flow_imp.g_varchar2_table(175) := '2000010840200C0104200C2DDA42000210800004DA840002D02641B20C0840000210804018020840185AB485000420000108B4090104A04D826419108000042000813004108030B4680B01084000021068130208409B04C9322000010840000261082000';
wwv_flow_imp.g_varchar2_table(176) := '6168D116021080000420D0260410803609926540000210800004C2104000C2D0A22D042000010840A04D0820006D1224CB800004200001088421800084A1455B084000021080409B104000DA244896010108400002100843000108438BB6108000042000';
wwv_flow_imp.g_varchar2_table(177) := '8136218000B449902C03021080000420108600021086166D210001084000026D4200016893205906042000010840200C0104200C2DDA42000210800004DA840002D02641B20C0840000210804018020840185AB485000420000108B4090104A04D826419';
wwv_flow_imp.g_varchar2_table(178) := '108000042000813004108030B4680B01084000021068130208409B04C93220000108400002610820006168D116021080000420D0260410803609926540000210800004C2104000C2D0A22D042000010840A04D0820006D1224CB80000420000108842180';
wwv_flow_imp.g_varchar2_table(179) := '0084A1455B084000021080409B104000DA244896010108400002100843000108438BB61080000420008136218000B449902C03021080000420108600021086166D210001084000026D4200016893205906042000010840200C0104200C2DDA4200021080';
wwv_flow_imp.g_varchar2_table(180) := '0004DA840002D02641B20C0840000210804018020840185AB485000420000108B4090104A04D826419108000042000813004108030B4680B01084000021068130208409B04C93220000108400002610820006168D116021080000420D026041080360992';
wwv_flow_imp.g_varchar2_table(181) := '6540000210800004C2104000C2D0A22D042000010840A04D0820006D1224CB800004200001088421800084A1455B084000021080409B104000DA244896010108400002100843000108438BB61080000420008136218000B449902C030210800004201086';
wwv_flow_imp.g_varchar2_table(182) := '00021086166D210001084000026D4200016893205906042000010840200C0104200C2DDA42000210800004DA840002D02641B20C0840000210804018020840185AB485000420000108B4090104A04D826419108000042000813004108030B4680B010840';
wwv_flow_imp.g_varchar2_table(183) := '00021068130208409B04C93220000108400002610820006168D116021080000420D0260410803609926540000210800004C2104000C2D0A22D042000010840A04D0820006D1224CB800004200001088421800084A1455B084000021080409B104000DA24';
wwv_flow_imp.g_varchar2_table(184) := '4896010108400002100843000108438BB61080000420008136218000B449902C03021080000420108600021086166D210001084000026D4200016893205906042000010840200C0104200C2DDA42000210800004DA840002D02641B20C08400002108040';
wwv_flow_imp.g_varchar2_table(185) := '18020840185AB485000420000108B4090104A04D826419108000042000813004108030B4680B01084000021068130208409B04C93220000108400002610820006168D116021080000420D0260410803609926540000210800004C2104000C2D0A22D0420';
wwv_flow_imp.g_varchar2_table(186) := '00010840A04D0820006D1224CB800004200001088421800084A1455B084000021080409B104000DA244896010108400002100843000108438BB61080000420008136218000B449902C03021080000420108600021086166D210001084000026D42000168';
wwv_flow_imp.g_varchar2_table(187) := '93205906042000010840200C0104200C2DDA42000210800004DA840002D02641B20C0840000210804018020840185AB485000420000108B40981FF0F5C3B71961B5963DF0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(555217762740302136)
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
 p_id=>wwv_flow_imp.id(24235374628260151)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>187800382
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(25802042883787200)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093930379
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(25831878859754742)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665079388
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(25832260366754743)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665079388
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(25852537677596381)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155472274
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(124081672592149048)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093930379
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(145680544627020824)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093930381
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(147451004291738611)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093930381
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(200366379543766964)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093930382
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(631064324257048910)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093929872
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1858529881047933658)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093930383
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1944385728082879407)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093930384
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2961324539981233352)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093930385
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3607529734442113396)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>37166093930385
);
end;
/
prompt --application/shared_components/security/authorizations/not_all_endpoints_successfully_tested
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(84715612397434023)
,p_name=>'Not all Endpoints Successfully tested'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'select 1 from eba_restdemo_sample_urls where last_status is null or last_status !=''OK'''
,p_error_message=>'Not all REST endpoints successfully tested.'
,p_version_scn=>1089080203
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3158595924816870695)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(10632624400357005525)
,p_icon_sequence=>20
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'101'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(10632625114902009639)
,p_icon_sequence=>30
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'101'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes/determine_endpoint_url
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(1842466455263458268)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Determine Endpoint URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_path_prefix apex_applications.workspace%type;',
'begin',
'    begin',
'        select url into :SAMPLE_ENDPOINT_URL',
'          from eba_restdemo_sample_urls',
'         where name = ''ORDS EMP'';',
'    exception ',
'        when NO_DATA_FOUND then',
'            if not apex_application_global.g_cloud then',
'                select rtrim( w.path_prefix, ''/'' ) || ''/''',
'                  into l_path_prefix',
'                  from apex_applications a, apex_workspaces w',
'                 where a.workspace_id = w.workspace_id',
'                   and a.application_id = v( ''APP_ID'' );',
'            end if;',
'',
'            :SAMPLE_ENDPOINT_URL := apex_util.host_url(''APEX_PATH'') ||',
'                lower( l_path_prefix ) ||',
'               ''hr/employees/'';',
'    end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>37166093930407
);
end;
/
prompt --application/shared_components/logic/application_processes/check_rest_service_availibility
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(1851599158809598346)
,p_process_sequence=>2
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check REST Service Availibility'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_response    clob;',
'  l_version_url varchar2(500);',
'',
'  l_parsed_json apex_json.t_values;',
'begin',
'  :SAMPLE_SERVICE_AVAILABLE := ''OK'';',
'  ',
'  l_version_url := replace( :SAMPLE_ENDPOINT_URL, ''/employees'', ''/version'' );',
'  l_response := apex_web_service.make_rest_request( l_version_url, ''GET'' );',
'  ',
'  if apex_web_service.g_status_code not between 200 and 299 then',
'    :SAMPLE_SERVICE_AVAILABLE := ''HTTP-''|| apex_web_service.g_status_code;',
'  else',
'    begin',
'      apex_json.parse(',
'        p_values => l_parsed_json,',
'        p_source => l_response',
'      );',
'      if apex_json.get_varchar2( p_values => l_parsed_json, p_path => ''version'' ) = ''21.2''',
'      then',
'        null;',
'      else ',
'        :SAMPLE_SERVICE_AVAILABLE := ''WRONG_SERVICE'';',
'      end if;   ',
'    exception when others then ',
'      :SAMPLE_SERVICE_AVAILABLE := ''WRONG_SERVICE'';',
'    end;',
'  end if;',
'  ',
'exception',
'  when others then',
'    if sqlcode = -29273 then',
'      if instr(sqlerrm, ''24247'') > 0 then ',
'        :SAMPLE_SERVICE_AVAILABLE := ''NO_ACL'';',
'      elsif instr(sqlerrm, ''29024'') > 0 then',
'        :SAMPLE_SERVICE_AVAILABLE := ''NO_WALLET'';',
'      else ',
'        :SAMPLE_SERVICE_AVAILABLE := ''NO_NETWORK'';',
'      end if;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>37166093930415
);
end;
/
prompt --application/shared_components/logic/application_processes/trim_all_page_items
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(3395413737642367318)
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
,p_version_scn=>37166093930419
);
end;
/
prompt --application/shared_components/logic/application_items/sample_endpoint_url
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1842466107169423561)
,p_name=>'SAMPLE_ENDPOINT_URL'
,p_protection_level=>'I'
,p_version_scn=>37166093930424
);
end;
/
prompt --application/shared_components/logic/application_items/sample_service_available
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1851598930981529266)
,p_name=>'SAMPLE_SERVICE_AVAILABLE'
,p_protection_level=>'I'
,p_version_scn=>37166093930427
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
prompt --application/shared_components/user_interface/lovs/status_lov
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3170654451774785164)
,p_lov_name=>'STATUS LOV'
,p_lov_query=>'.'||wwv_flow_imp.id(3170654451774785164)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089080203
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3170654726660785164)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Deleted'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3170655023386785167)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'New'
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3170655324826785167)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Original'
,p_lov_return_value=>'O'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3170655641301785167)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Updated'
,p_lov_return_value=>'U'
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
prompt --application/shared_components/navigation/breadcrumbs/breadcrumbs
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3158610448292102291)
,p_name=>'breadcrumbs'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75884261737039896)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Web Sources and PL/SQL'
,p_link=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::'
,p_page_id=>223
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(83799023925627142)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Github Repositories'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84629081884143868)
,p_parent_id=>wwv_flow_imp.id(3158616820171137069)
,p_short_name=>'REST Endpoints Status'
,p_link=>'f?p=&FLOW_ID.:301:&SESSION.'
,p_page_id=>301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(98364771069769305)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Join Local Data'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1848979277057700999)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Local REST Data'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Sample REST Services'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1848979729705705077)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Simple Report'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1848980265713706457)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Report with Pagination'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1848980732582710928)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Report with Query'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3158616125701133731)
,p_parent_id=>wwv_flow_imp.id(3158616820171137069)
,p_short_name=>'Reset Data'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3158616820171137069)
,p_parent_id=>wwv_flow_imp.id(1848979432484703038)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3967087870497982905)
,p_parent_id=>wwv_flow_imp.id(3158616820171137069)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
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
 p_id=>wwv_flow_imp.id(5154074124273672554)
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
 p_id=>wwv_flow_imp.id(166455007785602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455114592602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455175184602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455286478602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455379978602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455470806602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455581279602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455724530602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455745996602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455930449602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166455951726602343)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166456125409602342)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(166456211613602342)
,p_plug_template_id=>wwv_flow_imp.id(5154074124273672554)
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
 p_id=>wwv_flow_imp.id(3614818452902658572)
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
,p_default_header_template=>wwv_flow_imp.id(3614783783380658454)
,p_default_footer_template=>wwv_flow_imp.id(3614783783380658454)
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
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(98751123071455698)
,p_theme_id=>42
,p_name=>'Vita with larger Menu'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@Side-Exp":"240px","@Nav-Exp":"240px"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#72005517995516214.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A200D0A202A20566974612077697468206C6172676572204D656E750D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C65';
wwv_flow_imp.g_varchar2_table(2) := '207761732067656E657261746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A2E742D4156504C6973742D76616C7565';
wwv_flow_imp.g_varchar2_table(3) := '207B0D0A2020636F6C6F723A20233634363436343B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973';
wwv_flow_imp.g_varchar2_table(4) := '742D76616C7565207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233462346234623B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C';
wwv_flow_imp.g_varchar2_table(5) := '6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A0D0A2E742D416C6572742D2D77697A617264';
wwv_flow_imp.g_varchar2_table(6) := '2C0D0A2E742D416C6572742D2D686F72697A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D';
wwv_flow_imp.g_varchar2_table(7) := '636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663765303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D41';
wwv_flow_imp.g_varchar2_table(8) := '6C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20236565666466333B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E67';
wwv_flow_imp.g_varchar2_table(9) := '65722C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20236663656165613B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D';
wwv_flow_imp.g_varchar2_table(10) := '2D636F6C6F7242472E742D416C6572742D2D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236564663666663B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D69636F6E202E742D49636F6E20';
wwv_flow_imp.g_varchar2_table(11) := '7B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E202E742D';
wwv_flow_imp.g_varchar2_table(12) := '49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E742D416C6572742D2D7761726E696E672E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C';
wwv_flow_imp.g_varchar2_table(13) := '6572742D2D79656C6C6F772E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235312C203230362C2037342C20302E3135293B0D0A7D0D0A0D';
wwv_flow_imp.g_varchar2_table(14) := '0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A2E742D416C6572742D2D737563636573732E742D416C65';
wwv_flow_imp.g_varchar2_table(15) := '72742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C203136302C2034352C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572742D2D696E666F202E742D';
wwv_flow_imp.g_varchar2_table(16) := '416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D416C6572742D2D696E666F2E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69';
wwv_flow_imp.g_varchar2_table(17) := '636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128352C203131342C203230362C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E';
wwv_flow_imp.g_varchar2_table(18) := '742D416C6572742D2D726564202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A2E742D416C6572742D2D64616E6765722E742D416C6572742D2D686F72';
wwv_flow_imp.g_varchar2_table(19) := '697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D7265642E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128';
wwv_flow_imp.g_varchar2_table(20) := '3232392C2035372C2035332C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D686F72697A';
wwv_flow_imp.g_varchar2_table(21) := '6F6E74616C2C0D0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C65';
wwv_flow_imp.g_varchar2_table(22) := '72742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C203136302C2034352C20302E39293B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F';
wwv_flow_imp.g_varchar2_table(23) := '6E2C0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D70616765202E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(24) := '2D2D636C6F7365416C657274207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(25) := '626F782D736861646F773A2030202D38707820302030202365366536653620696E7365743B0D0A7D0D0A2E742D42616467654C6973742061207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D42616467654C6973742D2D63697263';
wwv_flow_imp.g_varchar2_table(26) := '756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42616467654C6973742D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D42616467654C6973742D2D6369';
wwv_flow_imp.g_varchar2_table(27) := '7263756C6172202E742D42616467654C6973742D76616C7565207B0D0A2020636F6C6F723A20233733373337333B0D0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B';
wwv_flow_imp.g_varchar2_table(28) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0D0A2020626F782D736861646F773A2030203020';
wwv_flow_imp.g_varchar2_table(29) := '3020317078202330353732636520696E7365743B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D0A202062';
wwv_flow_imp.g_varchar2_table(30) := '6F782D736861646F773A20302030203020347078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(31) := '742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A20302030203020327078207267626128352C203131342C203230362C20302E3235292C20302030203020317078';
wwv_flow_imp.g_varchar2_table(32) := '202330353732636520696E7365743B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(33) := '2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20207472616E736974696F6E3A20626F782D736861646F';
wwv_flow_imp.g_varchar2_table(34) := '7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D4261';
wwv_flow_imp.g_varchar2_table(35) := '6467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020347078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A2023464646';
wwv_flow_imp.g_varchar2_table(36) := '3B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A20';
wwv_flow_imp.g_varchar2_table(37) := '20626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D626F74746F6D426F72646572207B0D0A2020626F726465722D626F74746F6D';
wwv_flow_imp.g_varchar2_table(38) := '2D636F6C6F723A20236664666466643B0D0A7D0D0A0D0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D426F64';
wwv_flow_imp.g_varchar2_table(39) := '79202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D426F64792D7469746C65202E612D426172436861727420';
wwv_flow_imp.g_varchar2_table(40) := '2E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D42617243686172742D697465';
wwv_flow_imp.g_varchar2_table(41) := '6D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C75';
wwv_flow_imp.g_varchar2_table(42) := '652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E612D4261724368';
wwv_flow_imp.g_varchar2_table(43) := '617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(44) := '6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D636C6173736963202E612D426172436861';
wwv_flow_imp.g_varchar2_table(45) := '72742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B';
wwv_flow_imp.g_varchar2_table(46) := '0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D6D6F';
wwv_flow_imp.g_varchar2_table(47) := '6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42';
wwv_flow_imp.g_varchar2_table(48) := '617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(49) := '3A20233035373263653B0D0A7D0D0A0D0A626F6479207B0D0A20206261636B67726F756E643A20236664666466643B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A61207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(50) := '2D426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(51) := '2D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0D0A2020636F6C6F723A20233430343034303B0D0A20202D7765626B69742D6261636B64726F702D';
wwv_flow_imp.g_varchar2_table(52) := '66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A7D0D0A2E75692D7769646765742D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479';
wwv_flow_imp.g_varchar2_table(53) := '202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A';
wwv_flow_imp.g_varchar2_table(54) := '7D0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(55) := '526567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A202063';
wwv_flow_imp.g_varchar2_table(56) := '6F6C6F723A20233365336533653B0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264';
wwv_flow_imp.g_varchar2_table(57) := '732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E65722E69732D737475636B207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(58) := '726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20';
wwv_flow_imp.g_varchar2_table(59) := '206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C652E6A732D6869646542726561646372756D6273207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(60) := '2C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536';
wwv_flow_imp.g_varchar2_table(61) := '653665363B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C20302031707820327078207267626128302C20302C20302C20';
wwv_flow_imp.g_varchar2_table(62) := '302E3135293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D426F64792D746F70427574';
wwv_flow_imp.g_varchar2_table(63) := '746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206865696768743A20';
wwv_flow_imp.g_varchar2_table(64) := '343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6F7261636C65207B0D0A20206C696E652D6865696768743A20343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6F7261636C653A6265666F7265207B0D0A2020686569676874';
wwv_flow_imp.g_varchar2_table(65) := '3A20343870783B0D0A7D0D0A0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176202E742D426F64792D74';
wwv_flow_imp.g_varchar2_table(66) := '69746C65207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E617620';
wwv_flow_imp.g_varchar2_table(67) := '2E742D426F64792D7469746C65207B0D0A202020206C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032343070783B0D0A';
wwv_flow_imp.g_varchar2_table(68) := '20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D42';
wwv_flow_imp.g_varchar2_table(69) := '6F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E61706578';
wwv_flow_imp.g_varchar2_table(70) := '2D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B';
wwv_flow_imp.g_varchar2_table(71) := '0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D';
wwv_flow_imp.g_varchar2_table(72) := '0D0A2E752D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A0D0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0D0A2020';
wwv_flow_imp.g_varchar2_table(73) := '746F703A20383870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A203634';
wwv_flow_imp.g_varchar2_table(74) := '30707829207B0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C6170736564202E742D4865616465722D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D31303025';
wwv_flow_imp.g_varchar2_table(75) := '293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A202020207472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D6E617620';
wwv_flow_imp.g_varchar2_table(76) := '7B0D0A202077696474683A2032343070783B0D0A7D0D0A0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474683A2032303070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D426F64792D616374696F6E73202E742D42757474';
wwv_flow_imp.g_varchar2_table(77) := '6F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0D0A2020';
wwv_flow_imp.g_varchar2_table(78) := '7472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73';
wwv_flow_imp.g_varchar2_table(79) := '666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C6174652834307078293B0D0A20207472616E73666F726D3A207472616E736C617465336428343070782C20302C';
wwv_flow_imp.g_varchar2_table(80) := '2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A20207D0D0A7D0D';
wwv_flow_imp.g_varchar2_table(81) := '0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020206C656674';
wwv_flow_imp.g_varchar2_table(82) := '3A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A3A6E6F74282E752D52544C29202E61706578';
wwv_flow_imp.g_varchar2_table(83) := '2D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E64';
wwv_flow_imp.g_varchar2_table(84) := '6564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E';
wwv_flow_imp.g_varchar2_table(85) := '207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831393270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283139327078293B0D0A20207472616E73666F726D3A';
wwv_flow_imp.g_varchar2_table(86) := '207472616E736C61746533642831393270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E7366';
wwv_flow_imp.g_varchar2_table(87) := '6F726D3A207472616E736C6174653364282D31393270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3139327078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D31393270';
wwv_flow_imp.g_varchar2_table(88) := '782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E';
wwv_flow_imp.g_varchar2_table(89) := '646564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E61706578';
wwv_flow_imp.g_varchar2_table(90) := '2D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_imp.g_varchar2_table(91) := '457870616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E';
wwv_flow_imp.g_varchar2_table(92) := '61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_imp.g_varchar2_table(93) := '457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61';
wwv_flow_imp.g_varchar2_table(94) := '696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D77';
wwv_flow_imp.g_varchar2_table(95) := '65626B69742D7472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283234307078293B0D0A202020207472616E73666F726D3A20747261';
wwv_flow_imp.g_varchar2_table(96) := '6E736C61746533642832343070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B69742D7472616E';
wwv_flow_imp.g_varchar2_table(97) := '73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3234307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364';
wwv_flow_imp.g_varchar2_table(98) := '282D32343070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465';
wwv_flow_imp.g_varchar2_table(99) := '642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D';
wwv_flow_imp.g_varchar2_table(100) := '636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D';
wwv_flow_imp.g_varchar2_table(101) := '0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032';
wwv_flow_imp.g_varchar2_table(102) := '343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20';
wwv_flow_imp.g_varchar2_table(103) := '32343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A20202020';
wwv_flow_imp.g_varchar2_table(104) := '72696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566';
wwv_flow_imp.g_varchar2_table(105) := '743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020';
wwv_flow_imp.g_varchar2_table(106) := '206D617267696E2D6C6566743A2031393270783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E7465';
wwv_flow_imp.g_varchar2_table(107) := '6E74207B0D0A202020206D617267696E2D72696768743A2031393270783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C65';
wwv_flow_imp.g_varchar2_table(108) := '6674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D68';
wwv_flow_imp.g_varchar2_table(109) := '6964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20343870783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B';
wwv_flow_imp.g_varchar2_table(110) := '0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283234307078293B0D0A202020207472616E7366';
wwv_flow_imp.g_varchar2_table(111) := '6F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020202D776562';
wwv_flow_imp.g_varchar2_table(112) := '6B69742D7472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3234307078293B0D0A202020207472616E73666F726D3A20747261';
wwv_flow_imp.g_varchar2_table(113) := '6E736C6174653364282D32343070782C20302C2030293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A20';
wwv_flow_imp.g_varchar2_table(114) := '2020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_imp.g_varchar2_table(115) := '6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_imp.g_varchar2_table(116) := '792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C65';
wwv_flow_imp.g_varchar2_table(117) := '6674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_imp.g_varchar2_table(118) := '2D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C65667420';
wwv_flow_imp.g_varchar2_table(119) := '2E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D';
wwv_flow_imp.g_varchar2_table(120) := '73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E';
wwv_flow_imp.g_varchar2_table(121) := '6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831393270782C20302C2030293B0D0A202020202D6D';
wwv_flow_imp.g_varchar2_table(122) := '732D7472616E73666F726D3A207472616E736C617465283139327078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642831393270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E';
wwv_flow_imp.g_varchar2_table(123) := '61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D31393270782C';
wwv_flow_imp.g_varchar2_table(124) := '20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3139327078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D31393270782C20302C2030293B0D0A20207D0D0A20203A6E';
wwv_flow_imp.g_varchar2_table(125) := '6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A2020';
wwv_flow_imp.g_varchar2_table(126) := '2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F';
wwv_flow_imp.g_varchar2_table(127) := '74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A';
wwv_flow_imp.g_varchar2_table(128) := '207472616E736C61746533642832343070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283234307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832343070782C20';
wwv_flow_imp.g_varchar2_table(129) := '302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69';
wwv_flow_imp.g_varchar2_table(130) := '742D7472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3234307078293B0D0A202020207472616E73666F726D3A207472616E73';
wwv_flow_imp.g_varchar2_table(131) := '6C6174653364282D32343070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E617645';
wwv_flow_imp.g_varchar2_table(132) := '7870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61';
wwv_flow_imp.g_varchar2_table(133) := '762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D';
wwv_flow_imp.g_varchar2_table(134) := '6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E';
wwv_flow_imp.g_varchar2_table(135) := '6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E743B0D0A20207D0D0A20203A6E6F74282E75';
wwv_flow_imp.g_varchar2_table(136) := '2D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20';
wwv_flow_imp.g_varchar2_table(137) := '207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A2032';
wwv_flow_imp.g_varchar2_table(138) := '343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020';
wwv_flow_imp.g_varchar2_table(139) := '206D617267696E2D6C6566743A2034383070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E7465';
wwv_flow_imp.g_varchar2_table(140) := '6E74207B0D0A202020206D617267696E2D72696768743A2034383070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C65';
wwv_flow_imp.g_varchar2_table(141) := '6674202E742D426F64792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A';
wwv_flow_imp.g_varchar2_table(142) := '202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_imp.g_varchar2_table(143) := '6C6C6170736564202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D';
wwv_flow_imp.g_varchar2_table(144) := '426F64792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E';
wwv_flow_imp.g_varchar2_table(145) := '61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E74';
wwv_flow_imp.g_varchar2_table(146) := '2D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_imp.g_varchar2_table(147) := '6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E6170';
wwv_flow_imp.g_varchar2_table(148) := '65782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A202020202D6D732D7472616E7366';
wwv_flow_imp.g_varchar2_table(149) := '6F726D3A207472616E736C61746558282D34387078293B0D0A202020207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61';
wwv_flow_imp.g_varchar2_table(150) := '70736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A';
wwv_flow_imp.g_varchar2_table(151) := '202020207472616E73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D';
wwv_flow_imp.g_varchar2_table(152) := '0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_imp.g_varchar2_table(153) := '6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F6479';
wwv_flow_imp.g_varchar2_table(154) := '2D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170';
wwv_flow_imp.g_varchar2_table(155) := '736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A2020';
wwv_flow_imp.g_varchar2_table(156) := '3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C';
wwv_flow_imp.g_varchar2_table(157) := '6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A2020';
wwv_flow_imp.g_varchar2_table(158) := '20206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E';
wwv_flow_imp.g_varchar2_table(159) := '61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365';
wwv_flow_imp.g_varchar2_table(160) := '64202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D';
wwv_flow_imp.g_varchar2_table(161) := '7469746C65207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A2020202072696768743A2034';
wwv_flow_imp.g_varchar2_table(162) := '3870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D61';
wwv_flow_imp.g_varchar2_table(163) := '7267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020';
wwv_flow_imp.g_varchar2_table(164) := '206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D63';
wwv_flow_imp.g_varchar2_table(165) := '6F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674';
wwv_flow_imp.g_varchar2_table(166) := '202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20';
wwv_flow_imp.g_varchar2_table(167) := '203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D7369';
wwv_flow_imp.g_varchar2_table(168) := '64652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D42';
wwv_flow_imp.g_varchar2_table(169) := '6F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A3A6E6F74282E752D';
wwv_flow_imp.g_varchar2_table(170) := '52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A2020';
wwv_flow_imp.g_varchar2_table(171) := '2D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A73';
wwv_flow_imp.g_varchar2_table(172) := '2D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D';
wwv_flow_imp.g_varchar2_table(173) := '3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C20';
wwv_flow_imp.g_varchar2_table(174) := '30293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D68696465';
wwv_flow_imp.g_varchar2_table(175) := '4C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D';
wwv_flow_imp.g_varchar2_table(176) := '3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D';
wwv_flow_imp.g_varchar2_table(177) := '617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D';
wwv_flow_imp.g_varchar2_table(178) := '0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D42';
wwv_flow_imp.g_varchar2_table(179) := '6F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D42';
wwv_flow_imp.g_varchar2_table(180) := '6F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674';
wwv_flow_imp.g_varchar2_table(181) := '202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_imp.g_varchar2_table(182) := '426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D5061676542';
wwv_flow_imp.g_varchar2_table(183) := '6F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176';
wwv_flow_imp.g_varchar2_table(184) := '436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F6479';
wwv_flow_imp.g_varchar2_table(185) := '2E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E';
wwv_flow_imp.g_varchar2_table(186) := '742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D';
wwv_flow_imp.g_varchar2_table(187) := '0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D5061676542';
wwv_flow_imp.g_varchar2_table(188) := '6F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_imp.g_varchar2_table(189) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50';
wwv_flow_imp.g_varchar2_table(190) := '616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6E6176207B0D0A';
wwv_flow_imp.g_varchar2_table(191) := '202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_imp.g_varchar2_table(192) := '7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_imp.g_varchar2_table(193) := '7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F';
wwv_flow_imp.g_varchar2_table(194) := '64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61';
wwv_flow_imp.g_varchar2_table(195) := '707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474';
wwv_flow_imp.g_varchar2_table(196) := '683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E65';
wwv_flow_imp.g_varchar2_table(197) := '3B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52';
wwv_flow_imp.g_varchar2_table(198) := '544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D72';
wwv_flow_imp.g_varchar2_table(199) := '69676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030';
wwv_flow_imp.g_varchar2_table(200) := '293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C20';
wwv_flow_imp.g_varchar2_table(201) := '2E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E';
wwv_flow_imp.g_varchar2_table(202) := '6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_imp.g_varchar2_table(203) := '742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746528323030';
wwv_flow_imp.g_varchar2_table(204) := '7078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F77';
wwv_flow_imp.g_varchar2_table(205) := '4C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_imp.g_varchar2_table(206) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A203070782021696D706F7274616E743B0D0A2020202072696768743A20343870782021696D706F7274616E743B0D0A20';
wwv_flow_imp.g_varchar2_table(207) := '207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A203070783B0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874';
wwv_flow_imp.g_varchar2_table(208) := '436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D61637469';
wwv_flow_imp.g_varchar2_table(209) := '6F6E73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F';
wwv_flow_imp.g_varchar2_table(210) := '726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20202D7765626B69742D';
wwv_flow_imp.g_varchar2_table(211) := '7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364';
wwv_flow_imp.g_varchar2_table(212) := '282D32303070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792D2D73686F774C';
wwv_flow_imp.g_varchar2_table(213) := '656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E7420';
wwv_flow_imp.g_varchar2_table(214) := '7B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D636F6E74656E74496E6E6572207B0D0A20206D617267696E3A2030206175746F3B0D0A20206D61782D77696474683A20313030253B';
wwv_flow_imp.g_varchar2_table(215) := '0D0A7D0D0A0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612836322C2036322C2036322C20302E3735293B0D0A7D0D0A2E742D42726561646372756D622D6974656D2C0D0A2E742D42726561';
wwv_flow_imp.g_varchar2_table(216) := '646372756D622D6974656D2061207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D42726561646372756D622D6974656D20613A666F637573207B0D0A2020';
wwv_flow_imp.g_varchar2_table(217) := '636F6C6F723A20233035366162663B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64792D7469746C652D736872696E6B202E742D42726561646372';
wwv_flow_imp.g_varchar2_table(218) := '756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D736872696E6B202E742D42726561646372756D62526567696F';
wwv_flow_imp.g_varchar2_table(219) := '6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D6178';
wwv_flow_imp.g_varchar2_table(220) := '2D77696474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A20202020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(221) := '233365336533653B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D42726561646372756D62526567696F6E2D2D757365';
wwv_flow_imp.g_varchar2_table(222) := '42726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233430343034303B0D0A7D';
wwv_flow_imp.g_varchar2_table(223) := '0D0A0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E2C0D0A2E75692D627574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861646F773A206E6F6E653B0D0A2020626F726465722D7261646975733A203270';
wwv_flow_imp.g_varchar2_table(224) := '783B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E327320656173653B0D0A7D0D0A2E742D427574746F6E202E';
wwv_flow_imp.g_varchar2_table(225) := '742D49636F6E2C0D0A2E612D427574746F6E202E742D49636F6E2C0D0A2E75692D627574746F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E68657269743B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D42';
wwv_flow_imp.g_varchar2_table(226) := '7574746F6E3A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F6375732C0D0A2E75692D627574746F6E3A666F637573207B0D0A20207A2D696E6465783A20';
wwv_flow_imp.g_varchar2_table(227) := '3130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6265666F72652C0D0A2E75692D627574746F6E3A66';
wwv_flow_imp.g_varchar2_table(228) := '6F6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E75692D627574746F6E2E69732D6163';
wwv_flow_imp.g_varchar2_table(229) := '746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742021696D706F7274616E743B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D427574746F6E3A';
wwv_flow_imp.g_varchar2_table(230) := '666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E742D427574746F6E2E69732D';
wwv_flow_imp.g_varchar2_table(231) := '6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E2E69732D6163746976653A666F6375733A6163';
wwv_flow_imp.g_varchar2_table(232) := '746976653A6265666F7265207B0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572293A6163746976652C0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(233) := '7574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C';
wwv_flow_imp.g_varchar2_table(234) := '20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E312920696E7365742021696D706F7274616E743B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F42757474';
wwv_flow_imp.g_varchar2_table(235) := '6F6E47726F7570207461626C652E726164696F2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F757020696E7075743A636865636B6564';
wwv_flow_imp.g_varchar2_table(236) := '202B206C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E72616469';
wwv_flow_imp.g_varchar2_table(237) := '6F2D67726F7570206C6162656C2C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E3273206561';
wwv_flow_imp.g_varchar2_table(238) := '73652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E327320656173653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D';
wwv_flow_imp.g_varchar2_table(239) := '67726F7570206C6162656C3A66697273742D6F662D747970652C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C3A66697273742D6F662D74797065207B0D0A2020626F726465722D726164';
wwv_flow_imp.g_varchar2_table(240) := '6975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6C6173742D6F662D747970652C';
wwv_flow_imp.g_varchar2_table(241) := '0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6C6173742D6F662D74797065207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F';
wwv_flow_imp.g_varchar2_table(242) := '726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6F6E6C792D6F662D747970652C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E';
wwv_flow_imp.g_varchar2_table(243) := '726164696F2D67726F7570206C6162656C3A6F6E6C792D6F662D74797065207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A';
wwv_flow_imp.g_varchar2_table(244) := '2E75692D627574746F6E3A6265666F72652C0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166746572207B0D0A2020636F6E74656E743A2027273B0D0A2020706F73697469';
wwv_flow_imp.g_varchar2_table(245) := '6F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A2020626F726465722D7261646975733A20696E68657269743B0D0A2020';
wwv_flow_imp.g_varchar2_table(246) := '6F7061636974793A20303B0D0A20207472616E736974696F6E3A202E327320656173653B0D0A7D0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F7265207B0D0A';
wwv_flow_imp.g_varchar2_table(247) := '20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166746572207B0D0A20207A2D696E6465783A202D313B0D0A2020626F782D73686164';
wwv_flow_imp.g_varchar2_table(248) := '6F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(249) := '7574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E742D427574746F6E3A';
wwv_flow_imp.g_varchar2_table(250) := '6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E75692D627574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A6166746572207B0D0A20206F7061636974793A20313B0D0A202074';
wwv_flow_imp.g_varchar2_table(251) := '72616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E742D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E75692D627574746F';
wwv_flow_imp.g_varchar2_table(252) := '6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E74';
wwv_flow_imp.g_varchar2_table(253) := '2D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A2020626F782D736861646F773A20302030203170782031';
wwv_flow_imp.g_varchar2_table(254) := '7078207267626128352C203131342C203230362C20302E3235293B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B20';
wwv_flow_imp.g_varchar2_table(255) := '6C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A2E75692D627574746F6E2C0D0A2E612D427574746F6E';
wwv_flow_imp.g_varchar2_table(256) := '207B0D0A2020636F6C6F723A20233338333833383B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E';
wwv_flow_imp.g_varchar2_table(257) := '7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C3A686F7665722C0D0A2E617065782D627574746F';
wwv_flow_imp.g_varchar2_table(258) := '6E2D67726F757020696E707574202B206C6162656C3A686F7665722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E612D427574746F6E3A';
wwv_flow_imp.g_varchar2_table(259) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D466F72';
wwv_flow_imp.g_varchar2_table(260) := '6D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C3A666F6375732C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B';
wwv_flow_imp.g_varchar2_table(261) := '206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A666F6375732C0D0A2E75692D627574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F637573207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(262) := '67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C2E69';
wwv_flow_imp.g_varchar2_table(263) := '732D6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D';
wwv_flow_imp.g_varchar2_table(264) := '0A2E75692D627574746F6E2E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D7261';
wwv_flow_imp.g_varchar2_table(265) := '64696F20696E707574202B206C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65';
wwv_flow_imp.g_varchar2_table(266) := '293A6163746976652C0D0A2E75692D627574746F6E3A6163746976652C0D0A2E612D427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E';
wwv_flow_imp.g_varchar2_table(267) := '7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E7075743A616374697665202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E';
wwv_flow_imp.g_varchar2_table(268) := '47726F7570202E617065782D6974656D2D726164696F20696E7075743A666F637573202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C2C0D0A2E617065782D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(269) := '67726F757020696E7075743A666F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742021696D706F7274616E743B0D0A20206F75746C696E653A206E6F6E653B0D0A2020';
wwv_flow_imp.g_varchar2_table(270) := '626F726465722D636F6C6F723A20233035373263653B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236639663966392021696D706F7274616E743B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(271) := '2D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F75702069';
wwv_flow_imp.g_varchar2_table(272) := '6E7075743A636865636B6564202B206C6162656C207B0D0A2020626F726465722D636F6C6F723A20233663366336633B0D0A20206261636B67726F756E642D636F6C6F723A20233663366336633B0D0A2020636F6C6F723A20236639663966393B0D0A20';
wwv_flow_imp.g_varchar2_table(273) := '20626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_imp.g_varchar2_table(274) := '2D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(275) := '236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_imp.g_varchar2_table(276) := '2D627574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A616374697665293A';
wwv_flow_imp.g_varchar2_table(277) := '666F6375732C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6E6F';
wwv_flow_imp.g_varchar2_table(278) := '74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(279) := '6F723A20233036383065373B0D0A7D0D0A2E612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F6479202E75692D627574';
wwv_flow_imp.g_varchar2_table(280) := '746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E2D2D686F742E69732D6163';
wwv_flow_imp.g_varchar2_table(281) := '746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0D0A';
wwv_flow_imp.g_varchar2_table(282) := '626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233034363462353B0D0A7D0D0A626F6479202E75692D6275';
wwv_flow_imp.g_varchar2_table(283) := '74746F6E2E75692D627574746F6E2D2D686F74207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D42';
wwv_flow_imp.g_varchar2_table(284) := '7574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A68';
wwv_flow_imp.g_varchar2_table(285) := '6F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(286) := '756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D77';
wwv_flow_imp.g_varchar2_table(287) := '61726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C6529';
wwv_flow_imp.g_varchar2_table(288) := '3A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F';
wwv_flow_imp.g_varchar2_table(289) := '6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F';
wwv_flow_imp.g_varchar2_table(290) := '74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A61637469766529';
wwv_flow_imp.g_varchar2_table(291) := '3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030626133343B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(292) := '686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74';
wwv_flow_imp.g_varchar2_table(293) := '282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64';
wwv_flow_imp.g_varchar2_table(294) := '616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D42';
wwv_flow_imp.g_varchar2_table(295) := '7574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_imp.g_varchar2_table(296) := '6F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236538346634633B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_imp.g_varchar2_table(297) := '6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F';
wwv_flow_imp.g_varchar2_table(298) := '6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A0D';
wwv_flow_imp.g_varchar2_table(299) := '0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233031313232303B0D0A7D0D0A2E742D427574746F6E2D2D70';
wwv_flow_imp.g_varchar2_table(300) := '72696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_imp.g_varchar2_table(301) := '6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236262646666643B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E74';
wwv_flow_imp.g_varchar2_table(302) := '2D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429';
wwv_flow_imp.g_varchar2_table(303) := '3A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(304) := '6C6F723A20236132643366643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D';
wwv_flow_imp.g_varchar2_table(305) := '617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E6729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A202334303430';
wwv_flow_imp.g_varchar2_table(306) := '34303B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E';
wwv_flow_imp.g_varchar2_table(307) := '6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C';
wwv_flow_imp.g_varchar2_table(308) := '0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(309) := '2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E67';
wwv_flow_imp.g_varchar2_table(310) := '6572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(311) := '642D636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A20';
wwv_flow_imp.g_varchar2_table(312) := '206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E74';
wwv_flow_imp.g_varchar2_table(313) := '2D49636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D68';
wwv_flow_imp.g_varchar2_table(314) := '6F743A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(315) := '66663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F';
wwv_flow_imp.g_varchar2_table(316) := '6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E74';
wwv_flow_imp.g_varchar2_table(317) := '2D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202361326433666420696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(318) := '236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D70';
wwv_flow_imp.g_varchar2_table(319) := '72696D6172793A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233236393966613B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F7428';
wwv_flow_imp.g_varchar2_table(320) := '2E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73';
wwv_flow_imp.g_varchar2_table(321) := '696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236132643366643B0D0A2020636F6C6F723A2023303131';
wwv_flow_imp.g_varchar2_table(322) := '3232303B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E74';
wwv_flow_imp.g_varchar2_table(323) := '2D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D42757474';
wwv_flow_imp.g_varchar2_table(324) := '6F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233031313232303B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574';
wwv_flow_imp.g_varchar2_table(325) := '746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366626365346120696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D';
wwv_flow_imp.g_varchar2_table(326) := '706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F742920';
wwv_flow_imp.g_varchar2_table(327) := '2E742D49636F6E207B0D0A2020636F6C6F723A20236331393130343B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D';
wwv_flow_imp.g_varchar2_table(328) := '427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74';
wwv_flow_imp.g_varchar2_table(329) := '282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E';
wwv_flow_imp.g_varchar2_table(330) := '742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574';
wwv_flow_imp.g_varchar2_table(331) := '746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E20';
wwv_flow_imp.g_varchar2_table(332) := '7B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A2030';
wwv_flow_imp.g_varchar2_table(333) := '2030203020317078202365353339333520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D';
wwv_flow_imp.g_varchar2_table(334) := '427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236535333933353B0D0A';
wwv_flow_imp.g_varchar2_table(335) := '7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E676572';
wwv_flow_imp.g_varchar2_table(336) := '3A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A202062';
wwv_flow_imp.g_varchar2_table(337) := '61636B67726F756E642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_imp.g_varchar2_table(338) := '6F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(339) := '2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(340) := '2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202330306130326420696E7365743B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(341) := '6E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E74';
wwv_flow_imp.g_varchar2_table(342) := '2D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233030613032643B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7375';
wwv_flow_imp.g_varchar2_table(343) := '63636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E74';
wwv_flow_imp.g_varchar2_table(344) := '2D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A202063';
wwv_flow_imp.g_varchar2_table(345) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(346) := '2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E';
wwv_flow_imp.g_varchar2_table(347) := '6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(348) := '723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A6E6F74283A686F766572293A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A2020626F782D73686164';
wwv_flow_imp.g_varchar2_table(349) := '6F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A666F6375732C0D0A2E742D427574746F6E2D2D6E6F55492E69732D616374697665207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(350) := '756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A666F6375733A686F766572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920';
wwv_flow_imp.g_varchar2_table(351) := '696E7365743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D70';
wwv_flow_imp.g_varchar2_table(352) := '6F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E74';
wwv_flow_imp.g_varchar2_table(353) := '2D427574746F6E2D2D6C696E6B202E742D49636F6E207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D42';
wwv_flow_imp.g_varchar2_table(354) := '7574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D';
wwv_flow_imp.g_varchar2_table(355) := '427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D617279202E742D49';
wwv_flow_imp.g_varchar2_table(356) := '636F6E207B0D0A2020636F6C6F723A20233236393966612021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6C696E6B2E742D42757474';
wwv_flow_imp.g_varchar2_table(357) := '6F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E67202E742D49636F6E20';
wwv_flow_imp.g_varchar2_table(358) := '7B0D0A2020636F6C6F723A20236331393130342021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64';
wwv_flow_imp.g_varchar2_table(359) := '616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(360) := '6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D737563636573732C';
wwv_flow_imp.g_varchar2_table(361) := '0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(362) := '233030613032642021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67202E742D427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4275';
wwv_flow_imp.g_varchar2_table(363) := '74746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A66';
wwv_flow_imp.g_varchar2_table(364) := '6F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202332363939666120696E7365';
wwv_flow_imp.g_varchar2_table(365) := '742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D';
wwv_flow_imp.g_varchar2_table(366) := '427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(367) := '6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865';
wwv_flow_imp.g_varchar2_table(368) := '616465723A666F6375733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976';
wwv_flow_imp.g_varchar2_table(369) := '65207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572547265';
wwv_flow_imp.g_varchar2_table(370) := '65207B0D0A20206D696E2D77696474683A20333270783B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572547265653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332363939666120';
wwv_flow_imp.g_varchar2_table(371) := '696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B';
wwv_flow_imp.g_varchar2_table(372) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A20207D0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(373) := '6639663966393B0D0A2020626F726465723A2031707820736F6C696420236530653065303B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(374) := '723A20236530653065303B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B';
wwv_flow_imp.g_varchar2_table(375) := '0D0A2020636F6C6F723A20233361336133613B0D0A7D0D0A2E742D427574746F6E2D2D6E6176426172202E742D427574746F6E2D6261646765207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(376) := '6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D0A2E742D427574746F6E2D2D68656C70427574746F6E202E612D49636F6E207B0D0A20206F7061636974793A202E353B0D0A7D0D0A0D0A2E742D4865616465722D6E617642617220';
wwv_flow_imp.g_varchar2_table(377) := '2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A2020';
wwv_flow_imp.g_varchar2_table(378) := '6261636B67726F756E642D636F6C6F723A20233033343938333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E74';
wwv_flow_imp.g_varchar2_table(379) := '2D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A0D0A2E74';
wwv_flow_imp.g_varchar2_table(380) := '2D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(381) := '3A20236535333933353B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A616674657220';
wwv_flow_imp.g_varchar2_table(382) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D707269';
wwv_flow_imp.g_varchar2_table(383) := '6D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236132643366643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D';
wwv_flow_imp.g_varchar2_table(384) := '2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D686F74202E66613A61';
wwv_flow_imp.g_varchar2_table(385) := '667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E617065782D69';
wwv_flow_imp.g_varchar2_table(386) := '74656D2D67726964202E617065782D6974656D2D6F7074696F6E3A66697273742D6368696C64206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(387) := '67726964202E617065782D6974656D2D6F7074696F6E3A66697273742D6368696C64206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E617065782D6974656D2D67726964202E617065782D';
wwv_flow_imp.g_varchar2_table(388) := '6974656D2D6F7074696F6E3A6C6173742D6368696C64206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D67726964202E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(389) := '6F7074696F6E3A6C6173742D6368696C64206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A0D0A2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(390) := '3A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(391) := '3A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F726465722D7261646975733A203020302032';
wwv_flow_imp.g_varchar2_table(392) := '7078203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F6479202E742D427574746F6E52';
wwv_flow_imp.g_varchar2_table(393) := '6567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F7754';
wwv_flow_imp.g_varchar2_table(394) := '69746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F';
wwv_flow_imp.g_varchar2_table(395) := '6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0D0A';
wwv_flow_imp.g_varchar2_table(396) := '2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D6163';
wwv_flow_imp.g_varchar2_table(397) := '74696F6E73202E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A0D0A2E66632E75692D776964676574207B';
wwv_flow_imp.g_varchar2_table(398) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_imp.g_varchar2_table(399) := '6666663B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E';
wwv_flow_imp.g_varchar2_table(400) := '66632D6461792D6E756D626572207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D68656164657220';
wwv_flow_imp.g_varchar2_table(401) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A6469762E66632D6167656E64614C697374207B';
wwv_flow_imp.g_varchar2_table(402) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64';
wwv_flow_imp.g_varchar2_table(403) := '6179486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A2E6663202E66632D6167';
wwv_flow_imp.g_varchar2_table(404) := '656E64614C6973742D646179207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E6663202E66632D6167656E64';
wwv_flow_imp.g_varchar2_table(405) := '614C697374202E66632D6576656E742D73746172742D74696D652C0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A626F6479202E666320';
wwv_flow_imp.g_varchar2_table(406) := '74642E66632D746F6461792C0D0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75';
wwv_flow_imp.g_varchar2_table(407) := '692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D';
wwv_flow_imp.g_varchar2_table(408) := '6974656D207B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D436172642D777261703A666F63757320';
wwv_flow_imp.g_varchar2_table(409) := '7B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D436172642D69636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436172642D64657363207B0D0A2020636F6C6F723A202334303430';
wwv_flow_imp.g_varchar2_table(410) := '34303B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D43617264';
wwv_flow_imp.g_varchar2_table(411) := '2D64657363207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436172642D696E666F207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A2020636F6C6F723A202334303430';
wwv_flow_imp.g_varchar2_table(412) := '34303B0D0A7D0D0A2E742D436172642D636F6C6F7246696C6C2C0D0A2E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D43617264';
wwv_flow_imp.g_varchar2_table(413) := '202E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C6557726170207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(414) := '6B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D777261702C0D0A2E742D436172642D2D6665617475726564202E742D436172642D77726170';
wwv_flow_imp.g_varchar2_table(415) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0D0A2E742D436172642D2D6665617475726564202E742D';
wwv_flow_imp.g_varchar2_table(416) := '436172642D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A20233430343034';
wwv_flow_imp.g_varchar2_table(417) := '303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465';
wwv_flow_imp.g_varchar2_table(418) := '722D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D43';
wwv_flow_imp.g_varchar2_table(419) := '6C617373696343616C656E6461722D6461792E69732D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0D0A20206F7061636974793A202E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E';
wwv_flow_imp.g_varchar2_table(420) := '69732D7765656B656E642C0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0D0A7D0D0A2E742D436C617373696343616C656E64';
wwv_flow_imp.g_varchar2_table(421) := '61722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C';
wwv_flow_imp.g_varchar2_table(422) := '617373696343616C656E6461722D64617465207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B';
wwv_flow_imp.g_varchar2_table(423) := '0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(424) := '6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C6173';
wwv_flow_imp.g_varchar2_table(425) := '73696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E742D436C617373696343616C656E646172';
wwv_flow_imp.g_varchar2_table(426) := '2D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A2020';
wwv_flow_imp.g_varchar2_table(427) := '636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D';
wwv_flow_imp.g_varchar2_table(428) := '6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373';
wwv_flow_imp.g_varchar2_table(429) := '696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461';
wwv_flow_imp.g_varchar2_table(430) := '792E69732D746F646179207B0D0A20206261636B67726F756E642D636F6C6F723A20236434656266653B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A';
wwv_flow_imp.g_varchar2_table(431) := '7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C';
wwv_flow_imp.g_varchar2_table(432) := '617373696343616C656E6461722D6C6973745469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C69';
wwv_flow_imp.g_varchar2_table(433) := '73744576656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236565663466';
wwv_flow_imp.g_varchar2_table(434) := '393B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A202365656634';
wwv_flow_imp.g_varchar2_table(435) := '66393B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2023636364';
wwv_flow_imp.g_varchar2_table(436) := '6565643B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B';
wwv_flow_imp.g_varchar2_table(437) := '0D0A2020626F726465722D72696768742D636F6C6F723A20236363646565643B0D0A7D0D0A2E742D436F6D6D656E74732D2D6261736963202E742D436F6D6D656E74732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(438) := '6F6C6F723A20236662666266623B0D0A7D0D0A2E742D436F6D6D656E74732D6974656D2E69732D73797374656D4D657373616765207B0D0A20206261636B67726F756E642D636F6C6F723A20236462653766323B0D0A7D0D0A2E742D436F6D6D656E7473';
wwv_flow_imp.g_varchar2_table(439) := '2D696E666F207B0D0A2020636F6C6F723A20233561356135613B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A';
wwv_flow_imp.g_varchar2_table(440) := '20206261636B67726F756E642D636F6C6F723A20236666663765303B0D0A2020636F6C6F723A20233536353635363B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20';
wwv_flow_imp.g_varchar2_table(441) := '206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(442) := '3A20233030613032643B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A2E742D436F6E66696750616E656C2D7365';
wwv_flow_imp.g_varchar2_table(443) := '7474696E672C0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233430343034303B0D0A7D';
wwv_flow_imp.g_varchar2_table(444) := '0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(445) := '6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E742D4469616C6F67207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(446) := '6F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(447) := '742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236233623362333B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D7363726F';
wwv_flow_imp.g_varchar2_table(448) := '6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D466F6F7465722D746F70427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666666666';
wwv_flow_imp.g_varchar2_table(449) := '3B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(450) := '466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E617065782D6974656D2D74657874617265612C0D0A2E617065782D6974656D2D746578742C0D0A2E617065782D6974';
wwv_flow_imp.g_varchar2_table(451) := '656D2D73656C656374207B0D0A2020636F6C6F723A20233339333933393B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E617065782D697465';
wwv_flow_imp.g_varchar2_table(452) := '6D2D74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D746578742E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D73656C6563742E617065782D70616765';
wwv_flow_imp.g_varchar2_table(453) := '2D6974656D2D6572726F72207B0D0A2020626F726465722D636F6C6F723A20236562363536323B0D0A7D0D0A2E617065782D6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C';
wwv_flow_imp.g_varchar2_table(454) := '0D0A2E617065782D6974656D2D746578742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A7265717569';
wwv_flow_imp.g_varchar2_table(455) := '7265643A76616C6964207B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_imp.g_varchar2_table(456) := '66666666663B0D0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E37293B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D6472';
wwv_flow_imp.g_varchar2_table(457) := '6F707A6F6E652D6C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(458) := '723A20236639663966393B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(459) := '75733A2032707820302030203270783B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C';
wwv_flow_imp.g_varchar2_table(460) := '207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D';
wwv_flow_imp.g_varchar2_table(461) := '69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D';
wwv_flow_imp.g_varchar2_table(462) := '64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E617065782D697465';
wwv_flow_imp.g_varchar2_table(463) := '6D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20';
wwv_flow_imp.g_varchar2_table(464) := '206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A666F6375732C0D0A2E617065782D6974656D2D746578743A666F637573';
wwv_flow_imp.g_varchar2_table(465) := '2C0D0A2E617065782D6974656D2D73656C6563743A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20233035373263652021696D706F';
wwv_flow_imp.g_varchar2_table(466) := '7274616E743B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0D0A2E617065782D6974656D2D746578743A666F6375733A3A2D6D732D76616C75652C0D0A2E617065782D6974656D2D73656C65';
wwv_flow_imp.g_varchar2_table(467) := '63743A666F6375733A3A2D6D732D76616C7565207B0D0A2020636F6C6F723A20233339333933393B0D0A20200D0A7D0D0A2E617065782D6974656D2D74657874617265613A686F7665722C0D0A2E617065782D6974656D2D746578743A686F7665722C0D';
wwv_flow_imp.g_varchar2_table(468) := '0A2E617065782D6974656D2D73656C6563743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D69';
wwv_flow_imp.g_varchar2_table(469) := '6E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F';
wwv_flow_imp.g_varchar2_table(470) := '6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A';
wwv_flow_imp.g_varchar2_table(471) := '2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461';
wwv_flow_imp.g_varchar2_table(472) := '696E6572207370616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(473) := '2D73656C6563742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(474) := '3A20233339333933393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B';
wwv_flow_imp.g_varchar2_table(475) := '0D0A7D0D0A2E742D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162656C2C0D0A2E742D466F72';
wwv_flow_imp.g_varchar2_table(476) := '6D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D0A202063';
wwv_flow_imp.g_varchar2_table(477) := '6F6C6F723A20236535333933353B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20236363636363633B0D0A7D0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D7365617263684669656C';
wwv_flow_imp.g_varchar2_table(478) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D';
wwv_flow_imp.g_varchar2_table(479) := '427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E752D52544C202E';
wwv_flow_imp.g_varchar2_table(480) := '612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174';
wwv_flow_imp.g_varchar2_table(481) := '657069636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D';
wwv_flow_imp.g_varchar2_table(482) := '2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(483) := '75733A2030203270782032707820303B0D0A7D0D0A0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F757020696E707574207B0D0A20200D0A20200D0A7D0D0A2E636865636B626F785F67726F757020696E7075';
wwv_flow_imp.g_varchar2_table(484) := '74202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E636865636B626F785F67';
wwv_flow_imp.g_varchar2_table(485) := '726F757020696E7075743A666F637573202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023303537326365';
wwv_flow_imp.g_varchar2_table(486) := '3B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A';
wwv_flow_imp.g_varchar2_table(487) := '6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564202B';
wwv_flow_imp.g_varchar2_table(488) := '206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233663366336633B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(489) := '636F6C6F723A20233663366336633B0D0A7D0D0A0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(490) := '2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(491) := '6974656D546578742D2D706F7374207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F782D736861646F773A20302030203020302E3172656D202364666466646620696E7365743B0D0A2020626F726465722D';
wwv_flow_imp.g_varchar2_table(492) := '7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2032707820';
wwv_flow_imp.g_varchar2_table(493) := '302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2030';
wwv_flow_imp.g_varchar2_table(494) := '203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A20302032';
wwv_flow_imp.g_varchar2_table(495) := '70782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(496) := '3A2032707820302030203270783B0D0A7D0D0A0D0A2E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(497) := '6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233636363636363B0D0A2020626F782D736861646F773A202D302E3172656D2030203020236466646664';
wwv_flow_imp.g_varchar2_table(498) := '6620696E7365743B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(499) := '69636F6E207B0D0A2020626F782D736861646F773A20302E3172656D20302030202364666466646620696E7365743B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E74';
wwv_flow_imp.g_varchar2_table(500) := '61696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E742D466F72';
wwv_flow_imp.g_varchar2_table(501) := '6D2D68656C70427574746F6E3A666F637573202E612D49636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A2023303537';
wwv_flow_imp.g_varchar2_table(502) := '3263653B0D0A7D0D0A2E742D4865616465722D6C6F676F2C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2D2D686561646572207B0D0A202063';
wwv_flow_imp.g_varchar2_table(503) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465722D6C6F676F3A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D486561646572202E74';
wwv_flow_imp.g_varchar2_table(504) := '2D427574746F6E2D2D6865616465723A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(505) := '742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_imp.g_varchar2_table(506) := '20317078202332363939666120696E7365743B0D0A7D0D0A2E742D4865616465722D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233331333733633B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A';
wwv_flow_imp.g_varchar2_table(507) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E';
wwv_flow_imp.g_varchar2_table(508) := '207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D746F702D7769647468';
wwv_flow_imp.g_varchar2_table(509) := '3A20303B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D4865616465722D6E6176';
wwv_flow_imp.g_varchar2_table(510) := '2D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D7261646975733A203470783B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(511) := '756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D4865726F526567696F';
wwv_flow_imp.g_varchar2_table(512) := '6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A207267626128302C2030';
wwv_flow_imp.g_varchar2_table(513) := '2C20302C20302E31293B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(514) := '0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F726465722D746F702D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(515) := '20236635663566353B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(516) := '52522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D746F6F6C626172207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(517) := '756E643A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A202330353732';
wwv_flow_imp.g_varchar2_table(518) := '63653B0D0A7D0D0A2E612D5265706F72742D70657263656E744368617274207B0D0A20206261636B67726F756E642D636F6C6F723A20236434656266653B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A20202D7765';
wwv_flow_imp.g_varchar2_table(519) := '626B69742D626F726465722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(520) := '0D0A20202D6D6F7A2D626F726465722D7261646975732D746F7072696768743A20307078202021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(521) := '0D0A2020626F726465722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A7D0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(522) := '52522D69636F6E566965775461626C652C0D0A2E612D4952522D6368617274566965772C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64657461696C56696577207B0D0A20';
wwv_flow_imp.g_varchar2_table(523) := '20626F726465722D746F702D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(524) := '4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0D0A2020626F782D736861646F773A20696E736574203170';
wwv_flow_imp.g_varchar2_table(525) := '7820302030203020236536653665363B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665';
wwv_flow_imp.g_varchar2_table(526) := '2061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(527) := '522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(528) := '52522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(529) := '66663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D7461626C65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D4952522D7461626C652074723A686F766572207464';
wwv_flow_imp.g_varchar2_table(530) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(531) := '2D4952522D7461626C65207464207B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0D0A2020626F726465722D746F703A2031707820736F6C696420236632663266323B0D0A7D0D0A2E612D4952522D68656164';
wwv_flow_imp.g_varchar2_table(532) := '65724C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0D0A2020626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(533) := '6F723A20233035373263653B0D0A2020626F782D736861646F773A202D31707820302030202330353732636520696E7365742C2031707820302030202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65';
wwv_flow_imp.g_varchar2_table(534) := '2C0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D73696E676C65526F77';
wwv_flow_imp.g_varchar2_table(535) := '2D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(536) := '636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65';
wwv_flow_imp.g_varchar2_table(537) := '526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(538) := '706167696E6174696F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162';
wwv_flow_imp.g_varchar2_table(539) := '656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A65642E';
wwv_flow_imp.g_varchar2_table(540) := '742D4952522D726567696F6E202E742D6668742D7468656164202E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0D0A20207D0D0A7D0D0A2E75692D776964676574';
wwv_flow_imp.g_varchar2_table(541) := '2D636F6E74656E74202E612D4952522D69636F6E4C6973742D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D69636F6E4C697374';
wwv_flow_imp.g_varchar2_table(542) := '2D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20696E68657269743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(543) := '0D0A2E612D4952522D736F7274576964676574207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228';
wwv_flow_imp.g_varchar2_table(544) := '347078293B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D77696474683A20303B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E35292C203020387078203136';
wwv_flow_imp.g_varchar2_table(545) := '7078202D347078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C626172207B0D0A202077696474683A203870783B0D0A20206865696768743A2038';
wwv_flow_imp.g_varchar2_table(546) := '70783B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B';
wwv_flow_imp.g_varchar2_table(547) := '0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A';
wwv_flow_imp.g_varchar2_table(548) := '7D0D0A0D0A2E612D4952522D736F72745769646765742D68656C70207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A20';
wwv_flow_imp.g_varchar2_table(549) := '2070616464696E673A203870783B0D0A2020626F726465722D7261646975733A203270783B0D0A202077696474683A206175746F3B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E612D4952522D736F727457696467';
wwv_flow_imp.g_varchar2_table(550) := '65742D616374696F6E732D6974656D207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(551) := '642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D62757474';
wwv_flow_imp.g_varchar2_table(552) := '6F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A666F63757320';
wwv_flow_imp.g_varchar2_table(553) := '7B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2E69732D6163746976652C0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(554) := '52522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D495252';
wwv_flow_imp.g_varchar2_table(555) := '2D736F72745769646765742D7365617263684C6162656C207B0D0A20206865696768743A20343070783B0D0A202070616464696E673A2031327078203870783B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A62';
wwv_flow_imp.g_varchar2_table(556) := '65666F7265207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D';
wwv_flow_imp.g_varchar2_table(557) := '0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020617070656172616E63653A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3129';
wwv_flow_imp.g_varchar2_table(558) := '3B0D0A20206865696768743A20343070783B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B74797065';
wwv_flow_imp.g_varchar2_table(559) := '3D2274657874225D3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F7773207B0D0A2020626F726465722D746F702D';
wwv_flow_imp.g_varchar2_table(560) := '77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77207B0D0A2020636F6C6F723A20234646463B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77';
wwv_flow_imp.g_varchar2_table(561) := '3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A666F637573207B0D0A2020626F782D7368';
wwv_flow_imp.g_varchar2_table(562) := '61646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4947202E612D4952522D736F72745769646765743A6265666F7265207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E393529';
wwv_flow_imp.g_varchar2_table(563) := '3B0D0A7D0D0A2E6F6A2D6476742D63617465676F727931207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E6F6A2D6476742D';
wwv_flow_imp.g_varchar2_table(564) := '63617465676F727933207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E6F6A2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E6F6A2D6476742D63617465676F727935207B0D0A20';
wwv_flow_imp.g_varchar2_table(565) := '20636F6C6F723A20233835346539623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727936207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E6F6A2D6476742D63617465676F727937207B0D0A2020636F6C6F723A20236564383133';
wwv_flow_imp.g_varchar2_table(566) := '653B0D0A7D0D0A2E6F6A2D6476742D63617465676F727938207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E6F6A2D647674';
wwv_flow_imp.g_varchar2_table(567) := '2D63617465676F72793130207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E6F6A2D6476742D63617465676F7279313220';
wwv_flow_imp.g_varchar2_table(568) := '7B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(569) := '4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(570) := '2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C';
wwv_flow_imp.g_varchar2_table(571) := '696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(572) := '67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E';
wwv_flow_imp.g_varchar2_table(573) := '6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E64';
wwv_flow_imp.g_varchar2_table(574) := '6564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D627269676874';
wwv_flow_imp.g_varchar2_table(575) := '486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C2030';
wwv_flow_imp.g_varchar2_table(576) := '2E35293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(577) := '20236666666666663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20726762612832';
wwv_flow_imp.g_varchar2_table(578) := '35352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(579) := '3A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C';
wwv_flow_imp.g_varchar2_table(580) := '20302C20302C20302E30313529293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A2023303537326365';
wwv_flow_imp.g_varchar2_table(581) := '3B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(582) := '2D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B';
wwv_flow_imp.g_varchar2_table(583) := '734C6973742D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20233361336133';
wwv_flow_imp.g_varchar2_table(584) := '613B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20233361336133613B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E';
wwv_flow_imp.g_varchar2_table(585) := '6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162';
wwv_flow_imp.g_varchar2_table(586) := '656C2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F';
wwv_flow_imp.g_varchar2_table(587) := '64792D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236563656365633B0D0A7D0D0A0D0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0D0A';
wwv_flow_imp.g_varchar2_table(588) := '20206261636B67726F756E643A20233030613032643B0D0A2020636F6C6F723A2077686974653B0D0A7D0D0A626F6479202E742D4C6F67696E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4C6F67696E2D7265';
wwv_flow_imp.g_varchar2_table(589) := '67696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C6F67696E2D6C6F676F207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A406D65646961206F6E6C792073637265656E2061';
wwv_flow_imp.g_varchar2_table(590) := '6E6420286D61782D77696474683A20343830707829207B0D0A20202E742D50616765426F64792D2D6C6F67696E2C0D0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0D0A202020206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(591) := '3A20236666666666663B0D0A20207D0D0A7D0D0A0D0A2E742D4D656469614C697374207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(592) := '4D656469614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465';
wwv_flow_imp.g_varchar2_table(593) := '722D72696768743A2031707820736F6C696420236530653065303B0D0A7D0D0A0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A612E742D4D656469614C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(594) := '577261703A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020';
wwv_flow_imp.g_varchar2_table(595) := '626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4D656469614C697374';
wwv_flow_imp.g_varchar2_table(596) := '2D62616467652C0D0A2E742D4D656469614C6973742D64657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023626662666266';
wwv_flow_imp.g_varchar2_table(597) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202365306530653020696E7365743B0D0A7D0D0A2E742D4D6564';
wwv_flow_imp.g_varchar2_table(598) := '69614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(599) := '6F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E612D4D656E754261722D6974656D';
wwv_flow_imp.g_varchar2_table(600) := '203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267';
wwv_flow_imp.g_varchar2_table(601) := '696E2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20233035373263653B0D0A2020626F726465722D72696768743A20';
wwv_flow_imp.g_varchar2_table(602) := '31707820736F6C696420233064386466393B0D0A2020626F726465722D6C6566743A2031707820736F6C696420233064386466393B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273';
wwv_flow_imp.g_varchar2_table(603) := '742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722E752D52';
wwv_flow_imp.g_varchar2_table(604) := '544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464';
wwv_flow_imp.g_varchar2_table(605) := '696E673A203870782038707820387078203470783B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235';
wwv_flow_imp.g_varchar2_table(606) := '352C20302E35293B0D0A7D0D0A2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233064386466393B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B';
wwv_flow_imp.g_varchar2_table(607) := '0D0A20206261636B67726F756E642D636F6C6F723A20233064386466393B0D0A7D0D0A0D0A2E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A20327078';
wwv_flow_imp.g_varchar2_table(608) := '3B0D0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(609) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D';
wwv_flow_imp.g_varchar2_table(610) := '617267696E2D6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A7D0D0A0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4D656E75202E612D4D';
wwv_flow_imp.g_varchar2_table(611) := '656E752D6974656D207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(612) := '4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20233366613466613B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A202062';
wwv_flow_imp.g_varchar2_table(613) := '61636B67726F756E642D636F6C6F723A20236664666466643B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375';
wwv_flow_imp.g_varchar2_table(614) := '624D656E75436F6C207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E';
wwv_flow_imp.g_varchar2_table(615) := '752D616363656C207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E64656420';
wwv_flow_imp.g_varchar2_table(616) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E';
wwv_flow_imp.g_varchar2_table(617) := '6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E7520';
wwv_flow_imp.g_varchar2_table(618) := '2E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D';
wwv_flow_imp.g_varchar2_table(619) := '656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D65';
wwv_flow_imp.g_varchar2_table(620) := '6E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D61';
wwv_flow_imp.g_varchar2_table(621) := '6363656C207B0D0A2020636F6C6F723A20726762612836322C2036322C2036322C20302E3735293B0D0A7D0D0A2E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235332C203235332C2032';
wwv_flow_imp.g_varchar2_table(622) := '35332C20302E3935293B0D0A2020626F726465722D636F6C6F723A20236534653465343B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4D656E75426172207B0D';
wwv_flow_imp.g_varchar2_table(623) := '0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D5265';
wwv_flow_imp.g_varchar2_table(624) := '67696F6E207B0D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233333333333333B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E742D52656769';
wwv_flow_imp.g_varchar2_table(625) := '6F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D61';
wwv_flow_imp.g_varchar2_table(626) := '6C69676E3A20746F703B0D0A20206D617267696E2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(627) := '3A20236632663266323B0D0A2020626F726465722D72696768743A2031707820736F6C696420236439643964393B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0D0A20206D617267696E2D6C6566743A202D31';
wwv_flow_imp.g_varchar2_table(628) := '70783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_imp.g_varchar2_table(629) := '656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E75';
wwv_flow_imp.g_varchar2_table(630) := '2D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E';
wwv_flow_imp.g_varchar2_table(631) := '754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20726762612835312C2035312C2035312C20302E35293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_imp.g_varchar2_table(632) := '74656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(633) := '636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E202E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A20207061';
wwv_flow_imp.g_varchar2_table(634) := '6464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(635) := '723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D526567696F6E202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A';
wwv_flow_imp.g_varchar2_table(636) := '20206D617267696E2D6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(637) := '742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(638) := '723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_imp.g_varchar2_table(639) := '202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E';
wwv_flow_imp.g_varchar2_table(640) := '612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5265';
wwv_flow_imp.g_varchar2_table(641) := '67696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233830383038303B0D';
wwv_flow_imp.g_varchar2_table(642) := '0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(643) := '67726F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E';
wwv_flow_imp.g_varchar2_table(644) := '6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C';
wwv_flow_imp.g_varchar2_table(645) := '2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E7520';
wwv_flow_imp.g_varchar2_table(646) := '2E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375';
wwv_flow_imp.g_varchar2_table(647) := '736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D65';
wwv_flow_imp.g_varchar2_table(648) := '6E752D616363656C207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E373529';
wwv_flow_imp.g_varchar2_table(649) := '3B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(650) := '6536653665363B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E742D486561646572207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(651) := '2E742D486561646572202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236664666466643B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D697465';
wwv_flow_imp.g_varchar2_table(652) := '6D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F76';
wwv_flow_imp.g_varchar2_table(653) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233034363462352021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D486561';
wwv_flow_imp.g_varchar2_table(654) := '646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233034363462352021696D706F7274616E743B0D0A7D0D0A2E742D486561';
wwv_flow_imp.g_varchar2_table(655) := '646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D';
wwv_flow_imp.g_varchar2_table(656) := '666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236664666466642021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D486561646572202E612D4D656E75';
wwv_flow_imp.g_varchar2_table(657) := '4261722D6974656D2E69732D657870616E6465642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(658) := '233034363462352021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283235332C';
wwv_flow_imp.g_varchar2_table(659) := '203235332C203235332C20302E38293B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_imp.g_varchar2_table(660) := '656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F';
wwv_flow_imp.g_varchar2_table(661) := '6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233064386466393B0D0A2020626F726465722D636F6C6F723A20233064386466393B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(662) := '486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20233236393966613B0D0A2020626F726465722D63';
wwv_flow_imp.g_varchar2_table(663) := '6F6C6F723A20233236393966613B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F';
wwv_flow_imp.g_varchar2_table(664) := '6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236664666466643B0D0A2020626F726465722D636F6C6F723A20236664666466643B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D486561646572202E612D4D656E75';
wwv_flow_imp.g_varchar2_table(665) := '4261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233761633166633B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(666) := '3761633166633B0D0A2020636F6C6F723A20233032326435323B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(667) := '233034363462353B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20236664666466643B0D0A7D0D0A2E742D486561646572202E612D4D656E752D616363656C207B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(668) := '6C6F723A2072676261283235332C203235332C203235332C20302E3735293B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E75202E61';
wwv_flow_imp.g_varchar2_table(669) := '2D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233034353639632021696D706F7274616E743B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A20200D0A20200D';
wwv_flow_imp.g_varchar2_table(670) := '0A20200D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233365336533653B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E75426172';
wwv_flow_imp.g_varchar2_table(671) := '2D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F76';
wwv_flow_imp.g_varchar2_table(672) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653465342021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D426F647920';
wwv_flow_imp.g_varchar2_table(673) := '2E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653465342021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E61';
wwv_flow_imp.g_varchar2_table(674) := '2D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F637573656420';
wwv_flow_imp.g_varchar2_table(675) := '2E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233365336533652021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69';
wwv_flow_imp.g_varchar2_table(676) := '732D657870616E6465642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653465342021696D70';
wwv_flow_imp.g_varchar2_table(677) := '6F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612836322C2036322C2036322C20302E38293B0D';
wwv_flow_imp.g_varchar2_table(678) := '0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F63';
wwv_flow_imp.g_varchar2_table(679) := '75736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A2020';
wwv_flow_imp.g_varchar2_table(680) := '6261636B67726F756E642D636F6C6F723A20236264626462643B0D0A2020626F726465722D636F6C6F723A20236264626462643B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E';
wwv_flow_imp.g_varchar2_table(681) := '612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(682) := '6F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(683) := '233365336533653B0D0A2020626F726465722D636F6C6F723A20233365336533653B0D0A2020636F6C6F723A20236664666466643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D';
wwv_flow_imp.g_varchar2_table(684) := '656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236534653465343B0D';
wwv_flow_imp.g_varchar2_table(685) := '0A7D0D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236534653465343B0D0A7D0D0A2E742D426F6479202E612D4D656E7520';
wwv_flow_imp.g_varchar2_table(686) := '2E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F6479202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836322C2036322C2036322C20302E3735293B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(687) := '2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(688) := '6F6C6F723A20236630663066302021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D426F6479202E61';
wwv_flow_imp.g_varchar2_table(689) := '2D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236534653465343B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F';
wwv_flow_imp.g_varchar2_table(690) := '6E653B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A202076';
wwv_flow_imp.g_varchar2_table(691) := '6572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75426172';
wwv_flow_imp.g_varchar2_table(692) := '2D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(693) := '2D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A2020';
wwv_flow_imp.g_varchar2_table(694) := '6261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C';
wwv_flow_imp.g_varchar2_table(695) := '2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233430343034302021696D706F7274';
wwv_flow_imp.g_varchar2_table(696) := '616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_imp.g_varchar2_table(697) := '656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E20';
wwv_flow_imp.g_varchar2_table(698) := '2E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261';
wwv_flow_imp.g_varchar2_table(699) := '646975733A20313030253B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A';
wwv_flow_imp.g_varchar2_table(700) := '2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A2020626F7264';
wwv_flow_imp.g_varchar2_table(701) := '65722D636F6C6F723A20236266626662663B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E';
wwv_flow_imp.g_varchar2_table(702) := '75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375';
wwv_flow_imp.g_varchar2_table(703) := '7272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0D0A2020626F726465722D636F6C6F723A2023343034';
wwv_flow_imp.g_varchar2_table(704) := '3034303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020';
wwv_flow_imp.g_varchar2_table(705) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E';
wwv_flow_imp.g_varchar2_table(706) := '74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(707) := '20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D';
wwv_flow_imp.g_varchar2_table(708) := '656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D70';
wwv_flow_imp.g_varchar2_table(709) := '6F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D20';
wwv_flow_imp.g_varchar2_table(710) := '7B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D48';
wwv_flow_imp.g_varchar2_table(711) := '65616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233438353135383B0D0A7D0D0A2E742D4865616465722D757365';
wwv_flow_imp.g_varchar2_table(712) := '724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(713) := '3363343434612021696D706F7274616E743B0D0A7D0D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20236439646465303B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(714) := '0A0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A20206261636B67726F756E642D636F6C6F723A202330333439';
wwv_flow_imp.g_varchar2_table(715) := '38333B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E61';
wwv_flow_imp.g_varchar2_table(716) := '2D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233034363462352021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D';
wwv_flow_imp.g_varchar2_table(717) := '6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0D0A';
wwv_flow_imp.g_varchar2_table(718) := '2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E426172';
wwv_flow_imp.g_varchar2_table(719) := '2D6D656E752E612D4D656E75202E612D4D656E752D6974656D20612C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(720) := '3A20236666666666662021696D706F7274616E743B0D0A7D0D0A0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035366162663B0D0A2020636F6C6F723A2023666666';
wwv_flow_imp.g_varchar2_table(721) := '6666663B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F7075704C';
wwv_flow_imp.g_varchar2_table(722) := '4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0D0A';
wwv_flow_imp.g_varchar2_table(723) := '2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(724) := '67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236664666466643B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D';
wwv_flow_imp.g_varchar2_table(725) := '6C696E6B732061207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D';
wwv_flow_imp.g_varchar2_table(726) := '696E666F202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E202E74';
wwv_flow_imp.g_varchar2_table(727) := '2D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233036383566313B';
wwv_flow_imp.g_varchar2_table(728) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F70';
wwv_flow_imp.g_varchar2_table(729) := '75704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A';
wwv_flow_imp.g_varchar2_table(730) := '7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D';
wwv_flow_imp.g_varchar2_table(731) := '0D0A0D0A2E742D526567696F6E2C0D0A2E742D436F6E74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(732) := '2D426F6479202E6669656C64646174612062207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(733) := '6F64792D696E666F202E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062';
wwv_flow_imp.g_varchar2_table(734) := '207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(735) := '2D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D426F64792D61';
wwv_flow_imp.g_varchar2_table(736) := '6374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A2020636F6C6F723A20233361336133613B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564207B0D0A20';
wwv_flow_imp.g_varchar2_table(737) := '20626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_imp.g_varchar2_table(738) := '6666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6E6F426F';
wwv_flow_imp.g_varchar2_table(739) := '72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D526567696F6E2D';
wwv_flow_imp.g_varchar2_table(740) := '2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D61';
wwv_flow_imp.g_varchar2_table(741) := '6363656E74313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D5265';
wwv_flow_imp.g_varchar2_table(742) := '67696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74312E742D';
wwv_flow_imp.g_varchar2_table(743) := '526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7432';
wwv_flow_imp.g_varchar2_table(744) := '3A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A';
wwv_flow_imp.g_varchar2_table(745) := '7D0D0A2E742D526567696F6E2D2D616363656E74323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6163';
wwv_flow_imp.g_varchar2_table(746) := '63656E74323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567';
wwv_flow_imp.g_varchar2_table(747) := '696F6E2D2D616363656E74322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A0D0A2E742D';
wwv_flow_imp.g_varchar2_table(748) := '526567696F6E2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(749) := '6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C';
wwv_flow_imp.g_varchar2_table(750) := '0D0A2E742D526567696F6E2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A2023663066';
wwv_flow_imp.g_varchar2_table(751) := '6366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233265';
wwv_flow_imp.g_varchar2_table(752) := '626662633B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(753) := '20233363616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E';
wwv_flow_imp.g_varchar2_table(754) := '742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B';
wwv_flow_imp.g_varchar2_table(755) := '0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C6520';
wwv_flow_imp.g_varchar2_table(756) := '7B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(757) := '636B67726F756E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D';
wwv_flow_imp.g_varchar2_table(758) := '526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_imp.g_varchar2_table(759) := '2D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E';
wwv_flow_imp.g_varchar2_table(760) := '742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E';
wwv_flow_imp.g_varchar2_table(761) := '2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D746578';
wwv_flow_imp.g_varchar2_table(762) := '74436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D52';
wwv_flow_imp.g_varchar2_table(763) := '6567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74362E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D';
wwv_flow_imp.g_varchar2_table(764) := '526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874436F6E7465';
wwv_flow_imp.g_varchar2_table(765) := '6E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74';
wwv_flow_imp.g_varchar2_table(766) := '282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874';
wwv_flow_imp.g_varchar2_table(767) := '436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74372E742D526567696F6E2D2D7465';
wwv_flow_imp.g_varchar2_table(768) := '7874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74383A6E6F74282E742D5265';
wwv_flow_imp.g_varchar2_table(769) := '67696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D52656769';
wwv_flow_imp.g_varchar2_table(770) := '6F6E2D2D616363656E74383A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74383A6E6F7428';
wwv_flow_imp.g_varchar2_table(771) := '2E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E';
wwv_flow_imp.g_varchar2_table(772) := '74382E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A0D0A2E742D526567696F6E2D2D6163';
wwv_flow_imp.g_varchar2_table(773) := '63656E74393A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(774) := '66663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74393A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F';
wwv_flow_imp.g_varchar2_table(775) := '6E2D2D616363656E74393A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(776) := '742D526567696F6E2D2D616363656E74392E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(777) := '0D0A2E742D526567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B';
wwv_flow_imp.g_varchar2_table(778) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(779) := '2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(780) := '6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431302E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A202063';
wwv_flow_imp.g_varchar2_table(781) := '6F6C6F723A20236538356438383B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(782) := '756E642D636F6C6F723A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D52656769';
wwv_flow_imp.g_varchar2_table(783) := '6F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D4275';
wwv_flow_imp.g_varchar2_table(784) := '74746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D';
wwv_flow_imp.g_varchar2_table(785) := '526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D';
wwv_flow_imp.g_varchar2_table(786) := '686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D746578';
wwv_flow_imp.g_varchar2_table(787) := '74436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D';
wwv_flow_imp.g_varchar2_table(788) := '526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D526567696F6E2D2D74657874436F6E74656E74203E202E';
wwv_flow_imp.g_varchar2_table(789) := '742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D2D74657874436F';
wwv_flow_imp.g_varchar2_table(790) := '6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743133';
wwv_flow_imp.g_varchar2_table(791) := '3A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D';
wwv_flow_imp.g_varchar2_table(792) := '2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431332E742D52656769';
wwv_flow_imp.g_varchar2_table(793) := '6F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431343A6E6F';
wwv_flow_imp.g_varchar2_table(794) := '74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(795) := '2E742D526567696F6E2D2D616363656E7431343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D61636365';
wwv_flow_imp.g_varchar2_table(796) := '6E7431343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D52656769';
wwv_flow_imp.g_varchar2_table(797) := '6F6E2D2D616363656E7431342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A0D0A2E742D';
wwv_flow_imp.g_varchar2_table(798) := '526567696F6E2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A202063';
wwv_flow_imp.g_varchar2_table(799) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55';
wwv_flow_imp.g_varchar2_table(800) := '492C0D0A2E742D526567696F6E2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(801) := '6666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(802) := '20233665383539383B0D0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465722D62';
wwv_flow_imp.g_varchar2_table(803) := '6F74746F6D2D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(804) := '6F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(805) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D';
wwv_flow_imp.g_varchar2_table(806) := '2D6E6F4247207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_imp.g_varchar2_table(807) := '706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A';
wwv_flow_imp.g_varchar2_table(808) := '203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D62757474';
wwv_flow_imp.g_varchar2_table(809) := '6F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976652C0D0A';
wwv_flow_imp.g_varchar2_table(810) := '2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D52';
wwv_flow_imp.g_varchar2_table(811) := '6567696F6E2D2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D54616273';
wwv_flow_imp.g_varchar2_table(812) := '2D70726576696F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E';
wwv_flow_imp.g_varchar2_table(813) := '612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0D0A7D0D0A2E742D526567696F6E2D2D6361';
wwv_flow_imp.g_varchar2_table(814) := '726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(815) := '20233035373263653B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B';
wwv_flow_imp.g_varchar2_table(816) := '0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A7D';
wwv_flow_imp.g_varchar2_table(817) := '0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B';
wwv_flow_imp.g_varchar2_table(818) := '0D0A2020626F726465722D72696768743A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0D0A2020626F726465722D62';
wwv_flow_imp.g_varchar2_table(819) := '6F74746F6D3A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C';
wwv_flow_imp.g_varchar2_table(820) := '203235352C203235352C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72';
wwv_flow_imp.g_varchar2_table(821) := '742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F';
wwv_flow_imp.g_varchar2_table(822) := '72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074';
wwv_flow_imp.g_varchar2_table(823) := '723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D5265706F72742D2D616C74526F777344656661756C7420';
wwv_flow_imp.g_varchar2_table(824) := '2E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0D0A7D0D0A0D0A2E742D5265706F72742D7061';
wwv_flow_imp.g_varchar2_table(825) := '67696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_imp.g_varchar2_table(826) := '0D0A7D0D0A2E742D536F6369616C466F6F746572207B0D0A202070616464696E672D746F703A20343870783B0D0A202070616464696E672D626F74746F6D3A20323470783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E726F77207B0D0A2020';
wwv_flow_imp.g_varchar2_table(827) := '70616464696E672D746F703A203870783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C207B0D0A202070616464696E672D626F74746F6D3A203870783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20207472616E73';
wwv_flow_imp.g_varchar2_table(828) := '6974696F6E3A20616C6C202E32733B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D6F7A2D747261';
wwv_flow_imp.g_varchar2_table(829) := '6E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6F2D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A2020';
wwv_flow_imp.g_varchar2_table(830) := '7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D536F6369616C466F6F7465';
wwv_flow_imp.g_varchar2_table(831) := '722061207B0D0A20207472616E736974696F6E3A20616C6C202E32733B0D0A2020646973706C61793A20626C6F636B3B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20';
wwv_flow_imp.g_varchar2_table(832) := '20636F6C6F723A20726762612836322C2036322C2036322C20302E38293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0D0A2020646973706C61793A20626C6F636B3B0D0A20206D617267696E3A2030206175746F3B';
wwv_flow_imp.g_varchar2_table(833) := '0D0A2020636F6C6F723A20726762612836322C2036322C2036322C20302E34293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E6661207B0D0A2020666F6E742D73697A653A20323870783B0D0A202077696474683A20333270783B0D0A20';
wwv_flow_imp.g_varchar2_table(834) := '206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0D0A20207769647468';
wwv_flow_imp.g_varchar2_table(835) := '3A20333270783B0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0D0A2020666F6E742D73697A653A20';
wwv_flow_imp.g_varchar2_table(836) := '333270783B0D0A7D0D0A2E742D536F6369616C466F6F74657220613A686F7665722C0D0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E742D53656172';
wwv_flow_imp.g_varchar2_table(837) := '6368526573756C74732D64657363207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D53656172636852657375';
wwv_flow_imp.g_varchar2_table(838) := '6C74732D6D697363207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_imp.g_varchar2_table(839) := '202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233733373337333B';
wwv_flow_imp.g_varchar2_table(840) := '0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A20233430343034303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D5374617475734C6973742D';
wwv_flow_imp.g_varchar2_table(841) := '68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D5374617475734C6973742D69';
wwv_flow_imp.g_varchar2_table(842) := '74656D5469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20233730373037303B0D0A2020';
wwv_flow_imp.g_varchar2_table(843) := '626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B';
wwv_flow_imp.g_varchar2_table(844) := '0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C69';
wwv_flow_imp.g_varchar2_table(845) := '73742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5374617475734C6973742D';
wwv_flow_imp.g_varchar2_table(846) := '2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(847) := '5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374';
wwv_flow_imp.g_varchar2_table(848) := '617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C65';
wwv_flow_imp.g_varchar2_table(849) := '7473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D5374617475734C697374';
wwv_flow_imp.g_varchar2_table(850) := '2D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(851) := '5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0D';
wwv_flow_imp.g_varchar2_table(852) := '0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20234130413041303B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(853) := '0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D3270782030202330353732636520696E7365743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(854) := '742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C207B0D0A202062';
wwv_flow_imp.g_varchar2_table(855) := '61636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(856) := '2E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(857) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(858) := '2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A666972';
wwv_flow_imp.g_varchar2_table(859) := '73742D6368696C64202E742D546162732D6C696E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D54';
wwv_flow_imp.g_varchar2_table(860) := '6162732D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162';
wwv_flow_imp.g_varchar2_table(861) := '732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(862) := '6F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C2030';
wwv_flow_imp.g_varchar2_table(863) := '2C20302C20302E3135293B0D0A7D0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E742D546162732D';
wwv_flow_imp.g_varchar2_table(864) := '2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430';
wwv_flow_imp.g_varchar2_table(865) := '343034303B0D0A7D0D0A0D0A2E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030202330353732636520696E7365743B0D0A7D0D0A2E617065782D726473';
wwv_flow_imp.g_varchar2_table(866) := '20613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D';
wwv_flow_imp.g_varchar2_table(867) := '7469746C65202E617065782D7264732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E617065782D72647320';
wwv_flow_imp.g_varchar2_table(868) := '613A686F766572207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E617065782D7264732D68';
wwv_flow_imp.g_varchar2_table(869) := '6F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023666666666666203530252C2072676261283235352C203235352C203235352C203029203130302529';
wwv_flow_imp.g_varchar2_table(870) := '3B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023666666666666203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(871) := '7065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236666666666662030252C2072676261283235352C203235352C203235352C';
wwv_flow_imp.g_varchar2_table(872) := '2030292031252C202366666666666620353025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236666666666662030252C2072676261283235352C203235352C203235352C2030';
wwv_flow_imp.g_varchar2_table(873) := '292031252C202366666666666620353025293B0D0A20200D0A7D0D0A0D0A2E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E742D426F64792D73696465202E617065782D72';
wwv_flow_imp.g_varchar2_table(874) := '6473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2034707820302030202330353732636520696E7365743B0D0A7D0D0A2E752D52544C202E766572746963616C2D726473202E617065782D7264';
wwv_flow_imp.g_varchar2_table(875) := '73202E617065782D7264732D73656C6563746564207370616E2C0D0A2E752D52544C202E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A202D';
wwv_flow_imp.g_varchar2_table(876) := '34707820302030202330353732636520696E7365743B0D0A7D0D0A0D0A2E612D546167436C6F75642D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A2020626F726465722D7261646975733A203270783B0D0A2020';
wwv_flow_imp.g_varchar2_table(877) := '6261636B67726F756E643A20236661666166613B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F72';
wwv_flow_imp.g_varchar2_table(878) := '20302E32733B0D0A2020636F6C6F723A20233035363762613B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F72202E32733B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B';
wwv_flow_imp.g_varchar2_table(879) := '3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(880) := '20236666666666663B0D0A2020626F782D736861646F773A20302030203020327078202330353732636520696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020636F6C6F723A20236666666666';
wwv_flow_imp.g_varchar2_table(881) := '663B0D0A7D0D0A2E612D546167436C6F75642D636F756E74207B0D0A2020636F6C6F723A20233636363636363B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A2020636F6C6F723A202334303430';
wwv_flow_imp.g_varchar2_table(882) := '34303B0D0A7D0D0A2E742D54696D656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D646174652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D54696D656C';
wwv_flow_imp.g_varchar2_table(883) := '696E652D77726170207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D54696D656C696E652D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A2023323632363236';
wwv_flow_imp.g_varchar2_table(884) := '3B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69';
wwv_flow_imp.g_varchar2_table(885) := '732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(886) := '726F756E642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20';
wwv_flow_imp.g_varchar2_table(887) := '302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233331333733633B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(888) := '2D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20233231323532383B0D0A2020626F782D736861646F';
wwv_flow_imp.g_varchar2_table(889) := '773A20696E7365742031707820302030203020233331333733633B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20';
wwv_flow_imp.g_varchar2_table(890) := '206261636B67726F756E642D636F6C6F723A20233363343434613B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(891) := '726F756E643A20233331333733633B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(892) := '636F6C6F723A20233533356536363B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375';
wwv_flow_imp.g_varchar2_table(893) := '736564207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E202E612D547265';
wwv_flow_imp.g_varchar2_table(894) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D72';
wwv_flow_imp.g_varchar2_table(895) := '6F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D';
wwv_flow_imp.g_varchar2_table(896) := '0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D74';
wwv_flow_imp.g_varchar2_table(897) := '6F702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D526567696F6E202E612D54726565566965772D6E';
wwv_flow_imp.g_varchar2_table(898) := '6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(899) := '772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_imp.g_varchar2_table(900) := '612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E';
wwv_flow_imp.g_varchar2_table(901) := '612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_imp.g_varchar2_table(902) := '6565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65';
wwv_flow_imp.g_varchar2_table(903) := '202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_imp.g_varchar2_table(904) := '612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_imp.g_varchar2_table(905) := '202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E7465';
wwv_flow_imp.g_varchar2_table(906) := '6E74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036';
wwv_flow_imp.g_varchar2_table(907) := '342C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D526567696F6E202E612D547265';
wwv_flow_imp.g_varchar2_table(908) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D547265655669';
wwv_flow_imp.g_varchar2_table(909) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(910) := '772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E61';
wwv_flow_imp.g_varchar2_table(911) := '2D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(912) := '20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567';
wwv_flow_imp.g_varchar2_table(913) := '696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_imp.g_varchar2_table(914) := '202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D6375727265';
wwv_flow_imp.g_varchar2_table(915) := '6E742D2D746F70207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(916) := '20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F';
wwv_flow_imp.g_varchar2_table(917) := '723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A20207472616E736974696F6E3A20626163';
wwv_flow_imp.g_varchar2_table(918) := '6B67726F756E642D636F6C6F7220302E31733B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D73656C';
wwv_flow_imp.g_varchar2_table(919) := '65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(920) := '6F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D73';
wwv_flow_imp.g_varchar2_table(921) := '6861646F773A20302030203020317078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_imp.g_varchar2_table(922) := '6F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C656374';
wwv_flow_imp.g_varchar2_table(923) := '65642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(924) := '6E642D636F6C6F723A20233231323532383B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(925) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_imp.g_varchar2_table(926) := '4C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20233161316432303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69';
wwv_flow_imp.g_varchar2_table(927) := '732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233238326433312021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_imp.g_varchar2_table(928) := '566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D547265';
wwv_flow_imp.g_varchar2_table(929) := '65566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283231372C203232312C203232342C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_imp.g_varchar2_table(930) := '65566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65';
wwv_flow_imp.g_varchar2_table(931) := '202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236439646465302021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_imp.g_varchar2_table(932) := '2E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20236439646465302021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_imp.g_varchar2_table(933) := '656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F';
wwv_flow_imp.g_varchar2_table(934) := '6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_imp.g_varchar2_table(935) := '7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64';
wwv_flow_imp.g_varchar2_table(936) := '652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D';
wwv_flow_imp.g_varchar2_table(937) := '2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E7465';
wwv_flow_imp.g_varchar2_table(938) := '6E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C';
wwv_flow_imp.g_varchar2_table(939) := '0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A2023643964';
wwv_flow_imp.g_varchar2_table(940) := '6465303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176';
wwv_flow_imp.g_varchar2_table(941) := '202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_imp.g_varchar2_table(942) := '612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E';
wwv_flow_imp.g_varchar2_table(943) := '742D2D746F70207B0D0A2020636F6C6F723A20236439646465303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(944) := '2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(945) := '636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A20207472616E736974696F6E';
wwv_flow_imp.g_varchar2_table(946) := '3A206261636B67726F756E642D636F6C6F7220302E31733B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E';
wwv_flow_imp.g_varchar2_table(947) := '74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(948) := '20236439646465303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(949) := '6439646465303B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D5472656556696577';
wwv_flow_imp.g_varchar2_table(950) := '2D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E643A20233066313031323B0D0A2020636F6C6F723A20236439646465303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D626164';
wwv_flow_imp.g_varchar2_table(951) := '6765207B0D0A2020626F782D736861646F773A203020302030203170782072676261283231372C203232312C203232342C20302E31293B0D0A7D0D0A0D0A2E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A2023343034303430';
wwv_flow_imp.g_varchar2_table(952) := '3B0D0A7D0D0A2E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233539353935393B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20233361';
wwv_flow_imp.g_varchar2_table(953) := '336133613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A0D0A2E742D4469616C6F672D706167652D2D77697A617264207B0D0A2020';
wwv_flow_imp.g_varchar2_table(954) := '626F726465723A20236536653665363B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(955) := '723A20236536653665363B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0D0A202062';
wwv_flow_imp.g_varchar2_table(956) := '61636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020626F726465722D636F6C6F723A20236564656465643B0D0A7D0D0A2E742D57697A61726453746570732D777261703A6166746572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(957) := '6C6F723A20236536653665363B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236363636363633B0D0A7D0D0A2E742D57';
wwv_flow_imp.g_varchar2_table(958) := '697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20234646463B0D0A7D';
wwv_flow_imp.g_varchar2_table(959) := '0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D57697A61726453';
wwv_flow_imp.g_varchar2_table(960) := '746570732D6C6162656C207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(961) := '3430343034303B0D0A7D0D0A0D0A2E75692D776964676574207B0D0A2020666F6E742D66616D696C793A202748656C766574696361204E657565272C20275365676F65205549272C2048656C7665746963612C20417269616C2C2073616E732D73657269';
wwv_flow_imp.g_varchar2_table(962) := '663B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A2E75692D776964676574202E75692D776964676574207B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A0D0A626F6479202E75692D7769646765742D636F6E74656E74';
wwv_flow_imp.g_varchar2_table(963) := '207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D7769646765742D636F';
wwv_flow_imp.g_varchar2_table(964) := '6E74656E742061207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(965) := '6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A0D0A626F6479202E75692D7374';
wwv_flow_imp.g_varchar2_table(966) := '6174652D64656661756C742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B';
wwv_flow_imp.g_varchar2_table(967) := '0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D73746174652D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661';
wwv_flow_imp.g_varchar2_table(968) := '756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A626F6479202E75692D73746174652D61637469766520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C69';
wwv_flow_imp.g_varchar2_table(969) := '6E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A626F6479202E75692D73746174652D686F7665722C0D0A626F6479202E75692D776964676574';
wwv_flow_imp.g_varchar2_table(970) := '2D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20';
wwv_flow_imp.g_varchar2_table(971) := '20636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765';
wwv_flow_imp.g_varchar2_table(972) := '742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C203020302031707820327078207267626128352C203131342C203230362C20302E32';
wwv_flow_imp.g_varchar2_table(973) := '35292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B';
wwv_flow_imp.g_varchar2_table(974) := '65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C2030203020317078203270782072';
wwv_flow_imp.g_varchar2_table(975) := '67626128352C203131342C203230362C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D73746174652D686F76657220612C0D0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0D0A626F647920';
wwv_flow_imp.g_varchar2_table(976) := '2E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0D0A626F6479202E75692D73746174652D666F63757320612C0D0A626F6479202E75692D73746174652D666F';
wwv_flow_imp.g_varchar2_table(977) := '63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(978) := '626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D';
wwv_flow_imp.g_varchar2_table(979) := '616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A0D0A626F6479202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D';
wwv_flow_imp.g_varchar2_table(980) := '7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(981) := '723A20236434656266653B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6869';
wwv_flow_imp.g_varchar2_table(982) := '67686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D657272';
wwv_flow_imp.g_varchar2_table(983) := '6F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(984) := '642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D';
wwv_flow_imp.g_varchar2_table(985) := '6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722D746578';
wwv_flow_imp.g_varchar2_table(986) := '742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0D0A2020';
wwv_flow_imp.g_varchar2_table(987) := '636F6C6F723A20236535333933353B0D0A7D0D0A0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D737461';
wwv_flow_imp.g_varchar2_table(988) := '74652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E7569';
wwv_flow_imp.g_varchar2_table(989) := '2D73746174652D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(990) := '67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73';
wwv_flow_imp.g_varchar2_table(991) := '746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374';
wwv_flow_imp.g_varchar2_table(992) := '6976652E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D737461';
wwv_flow_imp.g_varchar2_table(993) := '74652D64656661756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(994) := '2D636F6C6F723A20236632663266322021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069';
wwv_flow_imp.g_varchar2_table(995) := '636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C2030203020317078';
wwv_flow_imp.g_varchar2_table(996) := '20327078207267626128352C203131342C203230362C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D68';
wwv_flow_imp.g_varchar2_table(997) := '6967686C696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A202365626562';
wwv_flow_imp.g_varchar2_table(998) := '65623B0D0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0D0A';
wwv_flow_imp.g_varchar2_table(999) := '626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0D0A626F64';
wwv_flow_imp.g_varchar2_table(1000) := '79202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65';
wwv_flow_imp.g_varchar2_table(1001) := '626172207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C20302C20302C20302E3035293B0D0A7D0D0A626F6479202E75692D6469';
wwv_flow_imp.g_varchar2_table(1002) := '616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B';
wwv_flow_imp.g_varchar2_table(1003) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A';
wwv_flow_imp.g_varchar2_table(1004) := '6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1005) := '6F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1006) := '20233430343034303B0D0A7D0D0A0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E';
wwv_flow_imp.g_varchar2_table(1007) := '65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F';
wwv_flow_imp.g_varchar2_table(1008) := '726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479';
wwv_flow_imp.g_varchar2_table(1009) := '202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F';
wwv_flow_imp.g_varchar2_table(1010) := '6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D';
wwv_flow_imp.g_varchar2_table(1011) := '627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_imp.g_varchar2_table(1012) := '2D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_imp.g_varchar2_table(1013) := '2D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D72';
wwv_flow_imp.g_varchar2_table(1014) := '61646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E';
wwv_flow_imp.g_varchar2_table(1015) := '75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D6275';
wwv_flow_imp.g_varchar2_table(1016) := '74746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A2E752D77';
wwv_flow_imp.g_varchar2_table(1017) := '61726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E672D74657874207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1018) := '20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D626F72';
wwv_flow_imp.g_varchar2_table(1019) := '646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A0D0A2E752D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032642021696D706F7274616E';
wwv_flow_imp.g_varchar2_table(1020) := '743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D737563636573732D74657874207B0D0A2020636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D6267207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(1021) := '6B67726F756E642D636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1022) := '0D0A2E752D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64616E6765722D74657874207B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(1023) := '6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D62';
wwv_flow_imp.g_varchar2_table(1024) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A0D0A2E752D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(1025) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D696E666F2D74657874207B0D0A2020636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(1026) := '2D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A0D0A2E752D686F74207B';
wwv_flow_imp.g_varchar2_table(1027) := '0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020636F6C6F723A20233035373263652021696D';
wwv_flow_imp.g_varchar2_table(1028) := '706F7274616E743B0D0A7D0D0A2E752D686F742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626F72646572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(1029) := '723A20233035373263652021696D706F7274616E743B0D0A7D0D0A0D0A2E752D6E6F726D616C207B0D0A20206261636B67726F756E642D636F6C6F723A20236664666466642021696D706F7274616E743B0D0A2020636F6C6F723A20233365336533653B';
wwv_flow_imp.g_varchar2_table(1030) := '0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020636F6C6F723A20233365336533652021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A202333653365336520';
wwv_flow_imp.g_varchar2_table(1031) := '21696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233365336533652021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C';
wwv_flow_imp.g_varchar2_table(1032) := '6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F';
wwv_flow_imp.g_varchar2_table(1033) := '702D636F6C6F723A20236562656265623B0D0A7D0D0A0D0A2E61635F726573756C7473207B0D0A2020626F726465723A2031707820736F6C696420236439643964393B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20';
wwv_flow_imp.g_varchar2_table(1034) := '20636F6C6F723A20233430343034303B0D0A7D0D0A2E61635F6F6464207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A626F6479202E61635F6F766572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1035) := '3A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0D0A626F6479202E612D44334261724368617274';
wwv_flow_imp.g_varchar2_table(1036) := '202E612D44334C696E6543686172742D617869732D7469746C65207B0D0A202066696C6C3A20233430343034303B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973202E7469636B20746578';
wwv_flow_imp.g_varchar2_table(1037) := '742C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233830383038303B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E61';
wwv_flow_imp.g_varchar2_table(1038) := '2D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E65';
wwv_flow_imp.g_varchar2_table(1039) := '43686172742D6178697320706174682C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0D0A20207374726F6B653A20236536653665363B0D0A7D0D0A626F6479202E612D44334261';
wwv_flow_imp.g_varchar2_table(1040) := '724368617274202E612D443342617243686172742D617869732D7469746C65207B0D0A202066696C6C3A20233430343034303B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0D';
wwv_flow_imp.g_varchar2_table(1041) := '0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0D0A20207374726F6B653A20236536653665363B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D6178';
wwv_flow_imp.g_varchar2_table(1042) := '6973206C696E652C0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0D0A20207374726F6B653A20236363636363633B0D0A7D0D0A626F6479202E612D44334261724368617274202E61';
wwv_flow_imp.g_varchar2_table(1043) := '2D443342617243686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233830383038303B0D0A7D0D0A626F6479202E612D4433546F6F6C746970207B0D0A20206261636B67726F756E642D636F6C6F723A2023383038303830';
wwv_flow_imp.g_varchar2_table(1044) := '3B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0D0A2020626F726465722D746F703A20233939393939393B0D0A7D0D0A626F6479202E612D';
wwv_flow_imp.g_varchar2_table(1045) := '443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642D6974656D';
wwv_flow_imp.g_varchar2_table(1046) := '2C0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1047) := '7472616E73706172656E743B0D0A2020626F726465722D77696474683A20302021696D706F7274616E743B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0D0A2020636F6C6F723A2023363636363636';
wwv_flow_imp.g_varchar2_table(1048) := '3B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0D0A2020626F726465722D7261';
wwv_flow_imp.g_varchar2_table(1049) := '646975733A20313030253B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D696E6943616C207B0D0A2020626F726465723A20';
wwv_flow_imp.g_varchar2_table(1050) := '31707820736F6C696420236534653465343B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236664666466643B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65';
wwv_flow_imp.g_varchar2_table(1051) := '207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D64';
wwv_flow_imp.g_varchar2_table(1052) := '6179207B0D0A2020626F726465722D636F6C6F723A20236637663766373B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D646174';
wwv_flow_imp.g_varchar2_table(1053) := '65207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C';
wwv_flow_imp.g_varchar2_table(1054) := '2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1055) := '6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236633663366333B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(1056) := '2D526567696F6E207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D7261646975733A20327078';
wwv_flow_imp.g_varchar2_table(1057) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E61';
wwv_flow_imp.g_varchar2_table(1058) := '2D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236639663966393B0D0A2020';
wwv_flow_imp.g_varchar2_table(1059) := '636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A2023303537326365';
wwv_flow_imp.g_varchar2_table(1060) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1061) := '6662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A';
wwv_flow_imp.g_varchar2_table(1062) := '7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20200D0A20200D0A20';
wwv_flow_imp.g_varchar2_table(1063) := '200D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236530653065303B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1064) := '642D636F6C6F723A20236639663966393B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233361336133613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D';
wwv_flow_imp.g_varchar2_table(1065) := '696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233761376137613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236633663366333B';
wwv_flow_imp.g_varchar2_table(1066) := '0D0A2020636F6C6F723A20233361336133613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(1067) := '723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(1068) := '6B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1069) := '6F756E642D636F6C6F723A20236634663466343B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236566656665663B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1070) := '2E742D426F64792D696E666F207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D726164';
wwv_flow_imp.g_varchar2_table(1071) := '6975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1072) := '742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F';
wwv_flow_imp.g_varchar2_table(1073) := '6C6F723A20236639663966393B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(1074) := '726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B';
wwv_flow_imp.g_varchar2_table(1075) := '0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(1076) := '636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1077) := '0A0D0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E74656E744C697374';
wwv_flow_imp.g_varchar2_table(1078) := '2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0D0A2E742D427574746F6E526567696F6E202E612D44657461696C6564';
wwv_flow_imp.g_varchar2_table(1079) := '436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C6564436F6E74656E74';
wwv_flow_imp.g_varchar2_table(1080) := '4C6973742D686561646572207B0D0A2020626F782D736861646F773A20302030203020317078202330343536396320696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E64';
wwv_flow_imp.g_varchar2_table(1081) := '6564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A2030203020302031707820233035373263652069';
wwv_flow_imp.g_varchar2_table(1082) := '6E7365743B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D747269';
wwv_flow_imp.g_varchar2_table(1083) := '676765723A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233034353639633B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078202330343536396320696E736574';
wwv_flow_imp.g_varchar2_table(1084) := '3B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A626F6479202E612D44657461696C656443';
wwv_flow_imp.g_varchar2_table(1085) := '6F6E74656E744C6973742D69636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1086) := '20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E643A20236666666666663B0D0A2020636F6C6F723A20726762612836342C2036342C2036';
wwv_flow_imp.g_varchar2_table(1087) := '342C20302E3735293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0D0A2020636F6C6F723A20233034353639633B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E';
wwv_flow_imp.g_varchar2_table(1088) := '74656E744C6973742D747269676765723A666F637573207B0D0A2020636F6C6F723A20233034353639633B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(1089) := '6F723A20236666666666663B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20233033336236613B0D0A';
wwv_flow_imp.g_varchar2_table(1090) := '7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E636F6E74656E';
wwv_flow_imp.g_varchar2_table(1091) := '742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20233366613466613B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C69';
wwv_flow_imp.g_varchar2_table(1092) := '73742D626F64792D686561646572207B0D0A20206261636B67726F756E643A20236666666666663B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1093) := '233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20233033336236613B0D0A7D0D0A626F6479202E612D44657461696C656443';
wwv_flow_imp.g_varchar2_table(1094) := '6F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0D0A2020626F726465722D636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(1095) := '6666207472616E73706172656E743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973';
wwv_flow_imp.g_varchar2_table(1096) := '742D626F64793A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0D0A20202D776562';
wwv_flow_imp.g_varchar2_table(1097) := '6B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74';
wwv_flow_imp.g_varchar2_table(1098) := '656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D626F726465722D7261646975733A203270783B';
wwv_flow_imp.g_varchar2_table(1099) := '0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1100) := '2023303333623661207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0D0A2020626F726465722D636F6C6F723A202330';
wwv_flow_imp.g_varchar2_table(1101) := '3333623661207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A6166746572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1102) := '2023656165616561207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023303333';
wwv_flow_imp.g_varchar2_table(1103) := '623661207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0D0A2020626F726465722D636F6C6F723A2023303333623661207472';
wwv_flow_imp.g_varchar2_table(1104) := '616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74202366';
wwv_flow_imp.g_varchar2_table(1105) := '6666666666207472616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0D0A2020626F726465722D636F';
wwv_flow_imp.g_varchar2_table(1106) := '6C6F723A207472616E73706172656E742023303333623661207472616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A';
wwv_flow_imp.g_varchar2_table(1107) := '6265666F7265207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C2036342C2036342C20302E35293B0D0A7D0D0A626F6479202E75692D746F';
wwv_flow_imp.g_varchar2_table(1108) := '6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E742023303333';
wwv_flow_imp.g_varchar2_table(1109) := '6236613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(1110) := '756E642D636F6C6F723A20233330396664623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_imp.g_varchar2_table(1111) := '31292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1112) := '68696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335626233653320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_imp.g_varchar2_table(1113) := '646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A626F6479';
wwv_flow_imp.g_varchar2_table(1114) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236534663966643B0D0A7D';
wwv_flow_imp.g_varchar2_table(1115) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A';
wwv_flow_imp.g_varchar2_table(1116) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332616432656220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_imp.g_varchar2_table(1117) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1118) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_imp.g_varchar2_table(1119) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_imp.g_varchar2_table(1120) := '7820302030202334636434643120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1121) := '203429207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1122) := '6974656D3A6E74682D6368696C64282034292061207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_imp.g_varchar2_table(1123) := '654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335386336396520696E7365743B0D0A7D0D0A626F64';
wwv_flow_imp.g_varchar2_table(1124) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1125) := '3831626235663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(1126) := '6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E74';
wwv_flow_imp.g_varchar2_table(1127) := '2D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646361383320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_imp.g_varchar2_table(1128) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1129) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A626F6479202E742D4261';
wwv_flow_imp.g_varchar2_table(1130) := '6467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A202062';
wwv_flow_imp.g_varchar2_table(1131) := '6F782D736861646F773A2030202D38707820302030202364346435323920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1132) := '2D6974656D3A6E74682D6368696C6428203729207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_imp.g_varchar2_table(1133) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D63';
wwv_flow_imp.g_varchar2_table(1134) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870782030203020236661633031';
wwv_flow_imp.g_varchar2_table(1135) := '3820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(1136) := '6B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1137) := '6C64282038292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_imp.g_varchar2_table(1138) := '74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366313966366420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1139) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1140) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_imp.g_varchar2_table(1141) := '3B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1142) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365663836383120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1143) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1144) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1145) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1146) := '3A2030202D38707820302030202365653861613920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1147) := '2D6368696C642820313129207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1148) := '6467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1149) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364363766623420696E7365';
wwv_flow_imp.g_varchar2_table(1150) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1151) := '6E642D636F6C6F723A20233835346539623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_imp.g_varchar2_table(1152) := '32292061207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1153) := '68696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339653639623320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1154) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1155) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_imp.g_varchar2_table(1156) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1157) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337633837626520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1158) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1159) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1160) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1161) := '3A2030202D38707820302030202339316131623020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1162) := '2D6368696C642820313529207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1163) := '6467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1164) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338633965616420696E7365';
wwv_flow_imp.g_varchar2_table(1165) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1166) := '6E642D636F6C6F723A20233539623265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_imp.g_varchar2_table(1167) := '36292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1168) := '68696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338356336656120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1169) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1170) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A20236561666166643B';
wwv_flow_imp.g_varchar2_table(1171) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1172) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332376163633120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1173) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1174) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1175) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1176) := '3A2030202D38707820302030202333386238623620696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1177) := '2D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1178) := '6467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1179) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338376365623420696E7365';
wwv_flow_imp.g_varchar2_table(1180) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1181) := '6E642D636F6C6F723A20233961633937663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_imp.g_varchar2_table(1182) := '30292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1183) := '68696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337656239356220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1184) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1185) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A20233534353533393B';
wwv_flow_imp.g_varchar2_table(1186) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1187) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364626463346220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1188) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1189) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1190) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1191) := '3A2030202D38707820302030202366626361336320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1192) := '2D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1193) := '6467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1194) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366356239393320696E7365';
wwv_flow_imp.g_varchar2_table(1195) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1196) := '6E642D636F6C6F723A20236564376337363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_imp.g_varchar2_table(1197) := '34292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1198) := '68696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336137613320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1199) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1200) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_imp.g_varchar2_table(1201) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1202) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336161633120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1203) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1204) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1205) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1206) := '3A2030202D38707820302030202365316130633720696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1207) := '2D6368696C642820323729207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1208) := '6467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1209) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362343932633120696E7365';
wwv_flow_imp.g_varchar2_table(1210) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1211) := '6E642D636F6C6F723A20233762383662643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_imp.g_varchar2_table(1212) := '38292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1213) := '68696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646135636520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1214) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1215) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D0A2020636F6C6F723A20233561363236393B';
wwv_flow_imp.g_varchar2_table(1216) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1217) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361316165626220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1218) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1219) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1220) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1221) := '3A2030202D38707820302030202361396236633220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1222) := '2D6368696C642820333129207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1223) := '6467654C6973742D6974656D3A6E74682D6368696C6428203331292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1224) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636137643820696E7365';
wwv_flow_imp.g_varchar2_table(1225) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1226) := '6E642D636F6C6F723A20233131613462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_imp.g_varchar2_table(1227) := '32292061207B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1228) := '68696C64282033322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202331356364653920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1229) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1230) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203333292061207B0D0A2020636F6C6F723A20236438653265323B';
wwv_flow_imp.g_varchar2_table(1231) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033332920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1232) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333396366636320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1233) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1234) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203334292061207B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1235) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1236) := '3A2030202D38707820302030202334376330393420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1237) := '2D6368696C642820333529207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1238) := '6467654C6973742D6974656D3A6E74682D6368696C6428203335292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1239) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339306261373720696E7365';
wwv_flow_imp.g_varchar2_table(1240) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1241) := '6E642D636F6C6F723A20236337633834623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_imp.g_varchar2_table(1242) := '36292061207B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1243) := '68696C64282033362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361616162333420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1244) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1245) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203337292061207B0D0A2020636F6C6F723A20233365326530313B';
wwv_flow_imp.g_varchar2_table(1246) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033372920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1247) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364316134323020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1248) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1249) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203338292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1250) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1251) := '3A2030202D38707820302030202364653932363220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1252) := '2D6368696C642820333929207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1253) := '6467654C6973742D6974656D3A6E74682D6368696C6428203339292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1254) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633739373420696E7365';
wwv_flow_imp.g_varchar2_table(1255) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1256) := '6E642D636F6C6F723A20236431353437613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034';
wwv_flow_imp.g_varchar2_table(1257) := '30292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1258) := '68696C64282034302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633763393920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1259) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1260) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431292061207B0D0A2020636F6C6F723A20236536653665363B';
wwv_flow_imp.g_varchar2_table(1261) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034312920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1262) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363353733613520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1263) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_imp.g_varchar2_table(1264) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203432292061207B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_imp.g_varchar2_table(1265) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_imp.g_varchar2_table(1266) := '3A2030202D38707820302030202339343539616320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1267) := '2D6368696C642820343329207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1268) := '6467654C6973742D6974656D3A6E74682D6368696C6428203433292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1269) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336643739623320696E7365';
wwv_flow_imp.g_varchar2_table(1270) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1271) := '6E642D636F6C6F723A20233965613762313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034';
wwv_flow_imp.g_varchar2_table(1272) := '34292061207B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1273) := '68696C64282034342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362616331633820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1274) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1275) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203435292061207B0D0A2020636F6C6F723A20236536653665363B';
wwv_flow_imp.g_varchar2_table(1276) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034352920612E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1277) := '7261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337653931613120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_imp.g_varchar2_table(1278) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233234393263653B0D0A2020636F6C6F723A20233234';
wwv_flow_imp.g_varchar2_table(1279) := '393263653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467';
wwv_flow_imp.g_varchar2_table(1280) := '654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(1281) := '3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A626F6479202E742D42';
wwv_flow_imp.g_varchar2_table(1282) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0D0A2020626F';
wwv_flow_imp.g_varchar2_table(1283) := '726465722D636F6C6F723A20233131613162383B0D0A2020636F6C6F723A20233131613162383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1284) := '6467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_imp.g_varchar2_table(1285) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236534663966643B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1286) := '6F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1287) := '696C6428203329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233239616161383B0D0A2020636F6C6F723A20233239616161383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_imp.g_varchar2_table(1288) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A';
wwv_flow_imp.g_varchar2_table(1289) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C75';
wwv_flow_imp.g_varchar2_table(1290) := '652061207B0D0A2020636F6C6F723A20236630666366623B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_imp.g_varchar2_table(1291) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233335396337373B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1292) := '3335396337373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D4261';
wwv_flow_imp.g_varchar2_table(1293) := '6467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_imp.g_varchar2_table(1294) := '656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236630666166363B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A626F6479202E74';
wwv_flow_imp.g_varchar2_table(1295) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1296) := '626F726465722D636F6C6F723A20233733623334643B0D0A2020636F6C6F723A20233733623334643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_imp.g_varchar2_table(1297) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_imp.g_varchar2_table(1298) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(1299) := '67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_imp.g_varchar2_table(1300) := '6368696C6428203629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236439646133653B0D0A2020636F6C6F723A20236439646133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_imp.g_varchar2_table(1301) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C';
wwv_flow_imp.g_varchar2_table(1302) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D7661';
wwv_flow_imp.g_varchar2_table(1303) := '6C75652061207B0D0A2020636F6C6F723A20233261326130383B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1304) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236661633733313B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1305) := '20236661633733313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D';
wwv_flow_imp.g_varchar2_table(1306) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1307) := '6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233434333330323B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A626F647920';
wwv_flow_imp.g_varchar2_table(1308) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0D0A';
wwv_flow_imp.g_varchar2_table(1309) := '2020626F726465722D636F6C6F723A20236562373232373B0D0A2020636F6C6F723A20236562373232373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_imp.g_varchar2_table(1310) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_imp.g_varchar2_table(1311) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261';
wwv_flow_imp.g_varchar2_table(1312) := '636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_imp.g_varchar2_table(1313) := '682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236536343533643B0D0A2020636F6C6F723A20236536343533643B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1314) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75';
wwv_flow_imp.g_varchar2_table(1315) := '652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1316) := '76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1317) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236535343737383B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(1318) := '6F723A20236535343737383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029';
wwv_flow_imp.g_varchar2_table(1319) := '202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1320) := '6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1321) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C';
wwv_flow_imp.g_varchar2_table(1322) := '7565207B0D0A2020626F726465722D636F6C6F723A20236334343539323B0D0A2020636F6C6F723A20236334343539323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1323) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_imp.g_varchar2_table(1324) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666';
wwv_flow_imp.g_varchar2_table(1325) := '663B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1326) := '2D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233736343538613B0D0A2020636F6C6F723A20233736343538613B0D0A7D0D0A626F6479202E742D42';
wwv_flow_imp.g_varchar2_table(1327) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E742D42616467';
wwv_flow_imp.g_varchar2_table(1328) := '654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E74';
wwv_flow_imp.g_varchar2_table(1329) := '2D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236636663066383B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_imp.g_varchar2_table(1330) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A2023346635';
wwv_flow_imp.g_varchar2_table(1331) := '6339663B0D0A2020636F6C6F723A20233466356339663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1332) := '2D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1333) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A202335';
wwv_flow_imp.g_varchar2_table(1334) := '61363861643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D4261';
wwv_flow_imp.g_varchar2_table(1335) := '6467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236130616462613B0D0A2020636F6C6F723A20236130616462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_imp.g_varchar2_table(1336) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467';
wwv_flow_imp.g_varchar2_table(1337) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(1338) := '6C6F723A20233331336134343B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_imp.g_varchar2_table(1339) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233632373838613B0D0A2020636F6C6F723A20233632373838613B0D0A7D';
wwv_flow_imp.g_varchar2_table(1340) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77';
wwv_flow_imp.g_varchar2_table(1341) := '726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1342) := '696C642820313529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A626F6479202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1343) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D';
wwv_flow_imp.g_varchar2_table(1344) := '636F6C6F723A20233434613864653B0D0A2020636F6C6F723A20233434613864653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1345) := '73742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1346) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1347) := '642D636F6C6F723A20233539623265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_imp.g_varchar2_table(1348) := '2820313729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233264626564343B0D0A2020636F6C6F723A20233264626564343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_imp.g_varchar2_table(1349) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A62';
wwv_flow_imp.g_varchar2_table(1350) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75';
wwv_flow_imp.g_varchar2_table(1351) := '652061207B0D0A2020636F6C6F723A20236561666166643B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_imp.g_varchar2_table(1352) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233434633663333B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1353) := '233434633663333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D';
wwv_flow_imp.g_varchar2_table(1354) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1355) := '6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236633666366633B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A626F6479';
wwv_flow_imp.g_varchar2_table(1356) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B';
wwv_flow_imp.g_varchar2_table(1357) := '0D0A2020626F726465722D636F6C6F723A20233531623839323B0D0A2020636F6C6F723A20233531623839323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_imp.g_varchar2_table(1358) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_imp.g_varchar2_table(1359) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236633666266383B0D0A';
wwv_flow_imp.g_varchar2_table(1360) := '20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_imp.g_varchar2_table(1361) := '6D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233863633136643B0D0A2020636F6C6F723A20233863633136643B0D0A7D0D0A626F6479202E742D4261646765';
wwv_flow_imp.g_varchar2_table(1362) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1363) := '742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D426164';
wwv_flow_imp.g_varchar2_table(1364) := '67654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_imp.g_varchar2_table(1365) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236530653036303B';
wwv_flow_imp.g_varchar2_table(1366) := '0D0A2020636F6C6F723A20236530653036303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1367) := '6C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_imp.g_varchar2_table(1368) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233534353533393B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537';
wwv_flow_imp.g_varchar2_table(1369) := '353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1370) := '6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236662643135353B0D0A2020636F6C6F723A20236662643135353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1371) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1372) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1373) := '20233661356333343B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_imp.g_varchar2_table(1374) := '6467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236565386234643B0D0A2020636F6C6F723A20236565386234643B0D0A7D0D0A626F';
wwv_flow_imp.g_varchar2_table(1375) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D7772617020';
wwv_flow_imp.g_varchar2_table(1376) := '2E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1377) := '20323329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_imp.g_varchar2_table(1378) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(1379) := '723A20236561363636303B0D0A2020636F6C6F723A20236561363636303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_imp.g_varchar2_table(1380) := '74656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_imp.g_varchar2_table(1381) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(1382) := '6C6F723A20236564376337363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235';
wwv_flow_imp.g_varchar2_table(1383) := '29202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236539363738663B0D0A2020636F6C6F723A20236539363738663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_imp.g_varchar2_table(1384) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F647920';
wwv_flow_imp.g_varchar2_table(1385) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565206120';
wwv_flow_imp.g_varchar2_table(1386) := '7B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(1387) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236365363661353B0D0A2020636F6C6F723A2023636536';
wwv_flow_imp.g_varchar2_table(1388) := '3661353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467';
wwv_flow_imp.g_varchar2_table(1389) := '654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(1390) := '3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A626F6479202E742D';
wwv_flow_imp.g_varchar2_table(1391) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1392) := '626F726465722D636F6C6F723A20233932363161363B0D0A2020636F6C6F723A20233932363161363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_imp.g_varchar2_table(1393) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_imp.g_varchar2_table(1394) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236637663366393B0D0A20206261';
wwv_flow_imp.g_varchar2_table(1395) := '636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_imp.g_varchar2_table(1396) := '682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233661373762353B0D0A2020636F6C6F723A20233661373762353B0D0A7D0D0A626F6479202E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1397) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_imp.g_varchar2_table(1398) := '6C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1399) := '73742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_imp.g_varchar2_table(1400) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236230626263363B0D0A2020';
wwv_flow_imp.g_varchar2_table(1401) := '636F6C6F723A20236230626263363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_imp.g_varchar2_table(1402) := '323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_imp.g_varchar2_table(1403) := '67654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233561363236393B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A';
wwv_flow_imp.g_varchar2_table(1404) := '7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1405) := '76616C7565207B0D0A2020626F726465722D636F6C6F723A20233763393161323B0D0A2020636F6C6F723A20233763393161323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_imp.g_varchar2_table(1406) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_imp.g_varchar2_table(1407) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666';
wwv_flow_imp.g_varchar2_table(1408) := '666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1409) := '6973742D6974656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233237383062303B0D0A2020636F6C6F723A20233237383062303B0D0A7D0D0A626F6479202E';
wwv_flow_imp.g_varchar2_table(1410) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D77726170202E742D42';
wwv_flow_imp.g_varchar2_table(1411) := '616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129';
wwv_flow_imp.g_varchar2_table(1412) := '202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_imp.g_varchar2_table(1413) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1414) := '3066386661333B0D0A2020636F6C6F723A20233066386661333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_imp.g_varchar2_table(1415) := '6E74682D6368696C642820333229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1416) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236365653065333B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1417) := '20233131613462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329202E74';
wwv_flow_imp.g_varchar2_table(1418) := '2D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233234393739353B0D0A2020636F6C6F723A20233234393739353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_imp.g_varchar2_table(1419) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42';
wwv_flow_imp.g_varchar2_table(1420) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329202E742D42616467654C6973742D76616C75652061207B0D0A20';
wwv_flow_imp.g_varchar2_table(1421) := '20636F6C6F723A20236438653265323B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_imp.g_varchar2_table(1422) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233266386236393B0D0A2020636F6C6F723A20233266386236393B';
wwv_flow_imp.g_varchar2_table(1423) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1424) := '742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1425) := '2D6368696C642820333429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236438653164653B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A626F6479202E742D42616467';
wwv_flow_imp.g_varchar2_table(1426) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D76616C7565207B0D0A2020626F7264';
wwv_flow_imp.g_varchar2_table(1427) := '65722D636F6C6F723A20233638393734643B0D0A2020636F6C6F723A20233638393734643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_imp.g_varchar2_table(1428) := '654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_imp.g_varchar2_table(1429) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1430) := '6F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1431) := '696C642820333629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236265626633613B0D0A2020636F6C6F723A20236265626633613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_imp.g_varchar2_table(1432) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C';
wwv_flow_imp.g_varchar2_table(1433) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629202E742D42616467654C6973742D76';
wwv_flow_imp.g_varchar2_table(1434) := '616C75652061207B0D0A2020636F6C6F723A20233236323630373B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1435) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236465623132643B0D0A2020636F6C6F';
wwv_flow_imp.g_varchar2_table(1436) := '723A20236465623132643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033372920';
wwv_flow_imp.g_varchar2_table(1437) := '2E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1438) := '73742D6974656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233365326530313B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A62';
wwv_flow_imp.g_varchar2_table(1439) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C6973742D76616C75';
wwv_flow_imp.g_varchar2_table(1440) := '65207B0D0A2020626F726465722D636F6C6F723A20236339363732613B0D0A2020636F6C6F723A20236339363732613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_imp.g_varchar2_table(1441) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_imp.g_varchar2_table(1442) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A2023653665366536';
wwv_flow_imp.g_varchar2_table(1443) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1444) := '6974656D3A6E74682D6368696C642820333929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236364336533373B0D0A2020636F6C6F723A20236364336533373B0D0A7D0D0A626F6479202E742D4261';
wwv_flow_imp.g_varchar2_table(1445) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D42616467654C6973742D77726170202E742D4261646765';
wwv_flow_imp.g_varchar2_table(1446) := '4C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D';
wwv_flow_imp.g_varchar2_table(1447) := '42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_imp.g_varchar2_table(1448) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A202363623430';
wwv_flow_imp.g_varchar2_table(1449) := '36623B0D0A2020636F6C6F723A20236362343036623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_imp.g_varchar2_table(1450) := '6368696C642820343029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_imp.g_varchar2_table(1451) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236431';
wwv_flow_imp.g_varchar2_table(1452) := '353437613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129202E742D426164';
wwv_flow_imp.g_varchar2_table(1453) := '67654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236136343538303B0D0A2020636F6C6F723A20236136343538303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1454) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D4261646765';
wwv_flow_imp.g_varchar2_table(1455) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C';
wwv_flow_imp.g_varchar2_table(1456) := '6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_imp.g_varchar2_table(1457) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233639336537623B0D0A2020636F6C6F723A20233639336537623B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1458) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D7772';
wwv_flow_imp.g_varchar2_table(1459) := '6170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1460) := '6C642820343229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236464643864663B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1461) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D63';
wwv_flow_imp.g_varchar2_table(1462) := '6F6C6F723A20233438353438623B0D0A2020636F6C6F723A20233438353438623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1463) := '742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1464) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(1465) := '2D636F6C6F723A20233531356539633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1466) := '20343429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233866396261363B0D0A2020636F6C6F723A20233866396261363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_imp.g_varchar2_table(1467) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F';
wwv_flow_imp.g_varchar2_table(1468) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429202E742D42616467654C6973742D76616C7565';
wwv_flow_imp.g_varchar2_table(1469) := '2061207B0D0A2020636F6C6F723A20233263333533643B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_imp.g_varchar2_table(1470) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233538366237613B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1471) := '3538366237613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42';
wwv_flow_imp.g_varchar2_table(1472) := '616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_imp.g_varchar2_table(1473) := '74656D3A6E74682D6368696C642820343529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(1474) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_imp.g_varchar2_table(1475) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1476) := '2D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335626233653320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_imp.g_varchar2_table(1477) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1478) := '742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061';
wwv_flow_imp.g_varchar2_table(1479) := '2E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332616432656220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1480) := '73742D6974656D3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1481) := '68696C64282033292061207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1482) := '2D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636434643120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_imp.g_varchar2_table(1483) := '6368696C6428203429207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B';
wwv_flow_imp.g_varchar2_table(1484) := '0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F76657220';
wwv_flow_imp.g_varchar2_table(1485) := '7B0D0A2020626F782D736861646F773A2030202D38707820302030202335386336396520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D';
wwv_flow_imp.g_varchar2_table(1486) := '0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1487) := '6666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861';
wwv_flow_imp.g_varchar2_table(1488) := '646F773A2030202D38707820302030202339646361383320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1489) := '642D636F6C6F723A20236464646535333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1490) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_imp.g_varchar2_table(1491) := '302030202364346435323920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A20206261636B67726F756E642D636F6C6F723A20236662';
wwv_flow_imp.g_varchar2_table(1492) := '636534613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_imp.g_varchar2_table(1493) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366616330313820';
wwv_flow_imp.g_varchar2_table(1494) := '696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(1495) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_imp.g_varchar2_table(1496) := '6467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366313966366420696E7365743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1497) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E742D43617264732D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(1498) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(1499) := '3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365663836383120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C';
wwv_flow_imp.g_varchar2_table(1500) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
null;
end;
/
begin
wwv_flow_imp.g_varchar2_table(1501) := '67654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_imp.g_varchar2_table(1502) := '282031302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365653861613920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_imp.g_varchar2_table(1503) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_imp.g_varchar2_table(1504) := '656D3A6E74682D6368696C6428203131292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E74';
wwv_flow_imp.g_varchar2_table(1505) := '2D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364363766623420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1506) := '2D6974656D3A6E74682D6368696C642820313229207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1507) := '696C6428203132292061207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1508) := '742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339653639623320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1509) := '2D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920';
wwv_flow_imp.g_varchar2_table(1510) := '61207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F';
wwv_flow_imp.g_varchar2_table(1511) := '766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337633837626520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_imp.g_varchar2_table(1512) := '3429207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(1513) := '6C6F723A20233331336134343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1514) := '626F782D736861646F773A2030202D38707820302030202339316131623020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0D0A202062';
wwv_flow_imp.g_varchar2_table(1515) := '61636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0D0A2020636F6C6F723A2023666666';
wwv_flow_imp.g_varchar2_table(1516) := '6666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F';
wwv_flow_imp.g_varchar2_table(1517) := '773A2030202D38707820302030202338633965616420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(1518) := '2D636F6C6F723A20233539623265323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1519) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078';
wwv_flow_imp.g_varchar2_table(1520) := '20302030202338356336656120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1521) := '3432633564393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A20236561666166643B0D0A7D0D0A2E742D43617264732D';
wwv_flow_imp.g_varchar2_table(1522) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078203020302023323761';
wwv_flow_imp.g_varchar2_table(1523) := '63633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A';
wwv_flow_imp.g_varchar2_table(1524) := '7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_imp.g_varchar2_table(1525) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333386238623620696E736574';
wwv_flow_imp.g_varchar2_table(1526) := '3B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E742D436172';
wwv_flow_imp.g_varchar2_table(1527) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_imp.g_varchar2_table(1528) := '4C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338376365623420696E7365743B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(1529) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1530) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(1531) := '3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337656239356220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_imp.g_varchar2_table(1532) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_imp.g_varchar2_table(1533) := '6467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_imp.g_varchar2_table(1534) := '64282032312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364626463346220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_imp.g_varchar2_table(1535) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_imp.g_varchar2_table(1536) := '74656D3A6E74682D6368696C6428203232292061207B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E';
wwv_flow_imp.g_varchar2_table(1537) := '742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366626361336320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_imp.g_varchar2_table(1538) := '742D6974656D3A6E74682D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_imp.g_varchar2_table(1539) := '68696C6428203233292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1540) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366356239393320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_imp.g_varchar2_table(1541) := '682D6368696C642820323429207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429';
wwv_flow_imp.g_varchar2_table(1542) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A68';
wwv_flow_imp.g_varchar2_table(1543) := '6F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336137613320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_imp.g_varchar2_table(1544) := '323529207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D0A202063';
wwv_flow_imp.g_varchar2_table(1545) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0D0A20';
wwv_flow_imp.g_varchar2_table(1546) := '20626F782D736861646F773A2030202D38707820302030202366336161633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1547) := '6261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0D0A2020636F6C6F723A20236666';
wwv_flow_imp.g_varchar2_table(1548) := '666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D73686164';
wwv_flow_imp.g_varchar2_table(1549) := '6F773A2030202D38707820302030202365316130633720696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1550) := '642D636F6C6F723A20233964373161663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1551) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_imp.g_varchar2_table(1552) := '7820302030202362343932633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1553) := '233762383662643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4361726473';
wwv_flow_imp.g_varchar2_table(1554) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870782030203020233964';
wwv_flow_imp.g_varchar2_table(1555) := '6135636520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D';
wwv_flow_imp.g_varchar2_table(1556) := '0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_imp.g_varchar2_table(1557) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361316165626220696E7365';
wwv_flow_imp.g_varchar2_table(1558) := '743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(1559) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_imp.g_varchar2_table(1560) := '654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361396236633220696E7365743B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(1561) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E742D43617264732D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(1562) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203331292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_imp.g_varchar2_table(1563) := '6D3A6E74682D6368696C64282033312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636137643820696E7365743B0D0A7D0D0A2E742D43617264732D2D63';
wwv_flow_imp.g_varchar2_table(1564) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_imp.g_varchar2_table(1565) := '616467654C6973742D6974656D3A6E74682D6368696C6428203332292061207B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1566) := '6C64282033322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202331356364653920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_imp.g_varchar2_table(1567) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_imp.g_varchar2_table(1568) := '6974656D3A6E74682D6368696C6428203333292061207B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203333292061';
wwv_flow_imp.g_varchar2_table(1569) := '2E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333396366636320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_imp.g_varchar2_table(1570) := '73742D6974656D3A6E74682D6368696C642820333429207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_imp.g_varchar2_table(1571) := '6368696C6428203334292061207B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033342920612E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1572) := '6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334376330393420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_imp.g_varchar2_table(1573) := '74682D6368696C642820333529207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203335';
wwv_flow_imp.g_varchar2_table(1574) := '292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033352920612E742D42616467654C6973742D777261703A';
wwv_flow_imp.g_varchar2_table(1575) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339306261373720696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1576) := '20333629207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203336292061207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1577) := '636F6C6F723A20233236323630373B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033362920612E742D42616467654C6973742D777261703A686F766572207B0D0A';
wwv_flow_imp.g_varchar2_table(1578) := '2020626F782D736861646F773A2030202D38707820302030202361616162333420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729207B0D0A20';
wwv_flow_imp.g_varchar2_table(1579) := '206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203337292061207B0D0A2020636F6C6F723A202333';
wwv_flow_imp.g_varchar2_table(1580) := '65326530313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861';
wwv_flow_imp.g_varchar2_table(1581) := '646F773A2030202D38707820302030202364316134323020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1582) := '6E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203338292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D';
wwv_flow_imp.g_varchar2_table(1583) := '0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38';
wwv_flow_imp.g_varchar2_table(1584) := '707820302030202364653932363220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1585) := '20236432353234633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203339292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264';
wwv_flow_imp.g_varchar2_table(1586) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364';
wwv_flow_imp.g_varchar2_table(1587) := '633739373420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B';
wwv_flow_imp.g_varchar2_table(1588) := '0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203430292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_imp.g_varchar2_table(1589) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633763393920696E73';
wwv_flow_imp.g_varchar2_table(1590) := '65743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A2E742D43';
wwv_flow_imp.g_varchar2_table(1591) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_imp.g_varchar2_table(1592) := '67654C6973742D6974656D3A6E74682D6368696C64282034312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363353733613520696E7365743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1593) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E742D43617264732D2D636F6C';
wwv_flow_imp.g_varchar2_table(1594) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203432292061207B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_imp.g_varchar2_table(1595) := '656D3A6E74682D6368696C64282034322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339343539616320696E7365743B0D0A7D0D0A2E742D43617264732D2D';
wwv_flow_imp.g_varchar2_table(1596) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_imp.g_varchar2_table(1597) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203433292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1598) := '696C64282034332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336643739623320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_imp.g_varchar2_table(1599) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_imp.g_varchar2_table(1600) := '2D6974656D3A6E74682D6368696C6428203434292061207B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034342920';
wwv_flow_imp.g_varchar2_table(1601) := '612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362616331633820696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_imp.g_varchar2_table(1602) := '6973742D6974656D3A6E74682D6368696C642820343529207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_imp.g_varchar2_table(1603) := '2D6368696C6428203435292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034352920612E742D4261646765';
wwv_flow_imp.g_varchar2_table(1604) := '4C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337653931613120696E7365743B0D0A7D0D0A0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D';
wwv_flow_imp.g_varchar2_table(1605) := '636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A202066696C6C3A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_imp.g_varchar2_table(1606) := '642834356E202B203129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1607) := '233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1608) := '2D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1609) := '34356E202B203129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330396664623B0D0A20207374726F6B653A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1610) := '34356E202B203229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A202066696C6C3A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1611) := '203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1612) := '6F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_imp.g_varchar2_table(1613) := '203229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E';
wwv_flow_imp.g_varchar2_table(1614) := '203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A20207374726F6B653A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_imp.g_varchar2_table(1615) := '203A6E74682D6368696C642834356E202B203329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A202066696C6C3A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A';
wwv_flow_imp.g_varchar2_table(1616) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(1617) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_imp.g_varchar2_table(1618) := '2D6368696C642834356E202B203329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62642C0D';
wwv_flow_imp.g_varchar2_table(1619) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A20207374726F6B653A20233265626662633B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1620) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A202066696C6C3A20233363616638353B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(1621) := '3A20236630666166363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(1622) := '722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D7478742C0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1623) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E';
wwv_flow_imp.g_varchar2_table(1624) := '752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A20207374726F6B653A20';
wwv_flow_imp.g_varchar2_table(1625) := '233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A202066696C6C3A202338316262';
wwv_flow_imp.g_varchar2_table(1626) := '35663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_imp.g_varchar2_table(1627) := '2B203529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(1628) := '722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_imp.g_varchar2_table(1629) := '642834356E202B203529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235663B';
wwv_flow_imp.g_varchar2_table(1630) := '0D0A20207374726F6B653A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A20';
wwv_flow_imp.g_varchar2_table(1631) := '2066696C6C3A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_imp.g_varchar2_table(1632) := '682D6368696C642834356E202B203629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_imp.g_varchar2_table(1633) := '2B203629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1634) := '203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(1635) := '6F723A20236464646535333B0D0A20207374726F6B653A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1636) := '20236662636534613B0D0A202066696C6C3A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62672C0D0A2E752D';
wwv_flow_imp.g_varchar2_table(1637) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_imp.g_varchar2_table(1638) := '682D6368696C642834356E202B203729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236662636534613B0D0A';
wwv_flow_imp.g_varchar2_table(1639) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D626F72646572207B0D0A';
wwv_flow_imp.g_varchar2_table(1640) := '2020626F726465722D636F6C6F723A20236662636534613B0D0A20207374726F6B653A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F72207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(1641) := '726F756E642D636F6C6F723A20236564383133653B0D0A202066696C6C3A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F';
wwv_flow_imp.g_varchar2_table(1642) := '6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D';
wwv_flow_imp.g_varchar2_table(1643) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(1644) := '3A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(1645) := '722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A20207374726F6B653A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(1646) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A202066696C6C3A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_imp.g_varchar2_table(1647) := '6E202B203929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023653935';
wwv_flow_imp.g_varchar2_table(1648) := '6235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D746578';
wwv_flow_imp.g_varchar2_table(1649) := '74207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_imp.g_varchar2_table(1650) := '2B203929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235343B0D0A20207374726F6B653A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_imp.g_varchar2_table(1651) := '2B20313029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A202066696C6C3A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E20';
wwv_flow_imp.g_varchar2_table(1652) := '3A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(1653) := '756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_imp.g_varchar2_table(1654) := '20313029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1655) := '203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A20207374726F6B653A20236538356438383B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1656) := '73203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A202066696C6C3A20236361353839643B0D0A2020636F6C6F723A20236666666666';
wwv_flow_imp.g_varchar2_table(1657) := '663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D6261636B';
wwv_flow_imp.g_varchar2_table(1658) := '67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1659) := '203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D63';
wwv_flow_imp.g_varchar2_table(1660) := '6F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839643B0D0A20207374726F6B653A202363';
wwv_flow_imp.g_varchar2_table(1661) := '61353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A202066696C6C3A20233835346539';
wwv_flow_imp.g_varchar2_table(1662) := '623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_imp.g_varchar2_table(1663) := '2B20313229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F';
wwv_flow_imp.g_varchar2_table(1664) := '6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_imp.g_varchar2_table(1665) := '68696C642834356E202B20313229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835';
wwv_flow_imp.g_varchar2_table(1666) := '346539623B0D0A20207374726F6B653A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202335613638';
wwv_flow_imp.g_varchar2_table(1667) := '61643B0D0A202066696C6C3A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1668) := '73203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1669) := '696C642834356E202B20313329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1670) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D626F72646572207B0D0A';
wwv_flow_imp.g_varchar2_table(1671) := '2020626F726465722D636F6C6F723A20233561363861643B0D0A20207374726F6B653A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F72207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(1672) := '67726F756E642D636F6C6F723A20236166626163353B0D0A202066696C6C3A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D';
wwv_flow_imp.g_varchar2_table(1673) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1674) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D74657874207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1675) := '636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031342920';
wwv_flow_imp.g_varchar2_table(1676) := '2E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163353B0D0A20207374726F6B653A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529';
wwv_flow_imp.g_varchar2_table(1677) := '202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A202066696C6C3A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_imp.g_varchar2_table(1678) := '6368696C642834356E202B20313529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(1679) := '6F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031352920';
wwv_flow_imp.g_varchar2_table(1680) := '2E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_imp.g_varchar2_table(1681) := '74682D6368696C642834356E202B20313529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539383B0D0A20207374726F6B653A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_imp.g_varchar2_table(1682) := '6E74682D6368696C642834356E202B20313629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A202066696C6C3A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_imp.g_varchar2_table(1683) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1684) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_imp.g_varchar2_table(1685) := '74682D6368696C642834356E202B20313629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1686) := '62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265323B0D0A20207374726F6B653A2023353962326532';
wwv_flow_imp.g_varchar2_table(1687) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A202066696C6C3A20233432633564393B0D0A20';
wwv_flow_imp.g_varchar2_table(1688) := '20636F6C6F723A20236561666166643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729';
wwv_flow_imp.g_varchar2_table(1689) := '202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D74';
wwv_flow_imp.g_varchar2_table(1690) := '78742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1691) := '34356E202B20313729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B';
wwv_flow_imp.g_varchar2_table(1692) := '0D0A20207374726F6B653A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A';
wwv_flow_imp.g_varchar2_table(1693) := '202066696C6C3A20233538636363393B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_imp.g_varchar2_table(1694) := '6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_imp.g_varchar2_table(1695) := '356E202B20313829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233538636363393B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1696) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D626F72646572207B0D0A2020626F72';
wwv_flow_imp.g_varchar2_table(1697) := '6465722D636F6C6F723A20233538636363393B0D0A20207374726F6B653A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F72207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1698) := '642D636F6C6F723A20233633626639643B0D0A202066696C6C3A20233633626639643B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1699) := '2D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F';
wwv_flow_imp.g_varchar2_table(1700) := '6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(1701) := '3A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F';
wwv_flow_imp.g_varchar2_table(1702) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639643B0D0A20207374726F6B653A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D63';
wwv_flow_imp.g_varchar2_table(1703) := '6F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A202066696C6C3A20233961633937663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_imp.g_varchar2_table(1704) := '2834356E202B20323029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1705) := '20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F';
wwv_flow_imp.g_varchar2_table(1706) := '6C6F722D74657874207B0D0A2020636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1707) := '696C642834356E202B20323029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937663B0D0A20207374726F6B653A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_imp.g_varchar2_table(1708) := '68696C642834356E202B20323129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A202066696C6C3A20236534653537353B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A2E752D';
wwv_flow_imp.g_varchar2_table(1709) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D6261636B67726F756E64207B0D0A';
wwv_flow_imp.g_varchar2_table(1710) := '20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1711) := '696C642834356E202B20323129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62642C0D0A';
wwv_flow_imp.g_varchar2_table(1712) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A20207374726F6B653A20236534653537353B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1713) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A202066696C6C3A20236663643836653B0D0A2020636F6C6F';
wwv_flow_imp.g_varchar2_table(1714) := '723A20233661356333343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D63';
wwv_flow_imp.g_varchar2_table(1715) := '6F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D7478742C0D0A';
wwv_flow_imp.g_varchar2_table(1716) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_imp.g_varchar2_table(1717) := '20323229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A202073';
wwv_flow_imp.g_varchar2_table(1718) := '74726F6B653A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A202066696C';
wwv_flow_imp.g_varchar2_table(1719) := '6C3A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_imp.g_varchar2_table(1720) := '68696C642834356E202B20323329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_imp.g_varchar2_table(1721) := '323329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1722) := '203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_imp.g_varchar2_table(1723) := '6F6C6F723A20236631396136353B0D0A20207374726F6B653A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(1724) := '6F723A20236564376337363B0D0A202066696C6C3A20236564376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62672C0D';
wwv_flow_imp.g_varchar2_table(1725) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_imp.g_varchar2_table(1726) := '3E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564';
wwv_flow_imp.g_varchar2_table(1727) := '376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62';
wwv_flow_imp.g_varchar2_table(1728) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337363B0D0A20207374726F6B653A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F7220';
wwv_flow_imp.g_varchar2_table(1729) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A202066696C6C3A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_imp.g_varchar2_table(1730) := '2B20323529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023656437';
wwv_flow_imp.g_varchar2_table(1731) := '6461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D74';
wwv_flow_imp.g_varchar2_table(1732) := '657874207B0D0A2020636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_imp.g_varchar2_table(1733) := '356E202B20323529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A20207374726F6B653A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1734) := '34356E202B20323629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A202066696C6C3A20236435373962313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1735) := '73203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(1736) := '6B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_imp.g_varchar2_table(1737) := '356E202B20323629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62642C0D0A2E752D636F';
wwv_flow_imp.g_varchar2_table(1738) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A20207374726F6B653A20236435373962313B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1739) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A202066696C6C3A20233964373161663B0D0A2020636F6C6F723A202366';
wwv_flow_imp.g_varchar2_table(1740) := '37663366393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1741) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D7478742C0D0A2E752D636F';
wwv_flow_imp.g_varchar2_table(1742) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032372920';
wwv_flow_imp.g_varchar2_table(1743) := '2E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161663B0D0A20207374726F6B65';
wwv_flow_imp.g_varchar2_table(1744) := '3A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A202066696C6C3A202337';
wwv_flow_imp.g_varchar2_table(1745) := '62383662643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1746) := '34356E202B20323829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E';
wwv_flow_imp.g_varchar2_table(1747) := '752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_imp.g_varchar2_table(1748) := '74682D6368696C642834356E202B20323829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1749) := '20233762383662643B0D0A20207374726F6B653A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1750) := '6266633864313B0D0A202066696C6C3A20236266633864313B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62672C0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1751) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_imp.g_varchar2_table(1752) := '682D6368696C642834356E202B20323929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236266633864313B';
wwv_flow_imp.g_varchar2_table(1753) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D626F72646572';
wwv_flow_imp.g_varchar2_table(1754) := '207B0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A20207374726F6B653A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F72207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1755) := '6261636B67726F756E642D636F6C6F723A20233862396461643B0D0A202066696C6C3A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029';
wwv_flow_imp.g_varchar2_table(1756) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D';
wwv_flow_imp.g_varchar2_table(1757) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D74657874207B';
wwv_flow_imp.g_varchar2_table(1758) := '0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_imp.g_varchar2_table(1759) := '333029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461643B0D0A20207374726F6B653A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_imp.g_varchar2_table(1760) := '20333129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A202066696C6C3A20233262386663353B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_imp.g_varchar2_table(1761) := '6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(1762) := '6E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_imp.g_varchar2_table(1763) := '333129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F727320';
wwv_flow_imp.g_varchar2_table(1764) := '3E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233262386663353B0D0A20207374726F6B653A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1765) := '203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A202066696C6C3A20233131613462613B0D0A2020636F6C6F723A2023636565306533';
wwv_flow_imp.g_varchar2_table(1766) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D6261636B67';
wwv_flow_imp.g_varchar2_table(1767) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_imp.g_varchar2_table(1768) := '3E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F';
wwv_flow_imp.g_varchar2_table(1769) := '6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233131613462613B0D0A20207374726F6B653A20233131';
wwv_flow_imp.g_varchar2_table(1770) := '613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A202066696C6C3A2023323961636139';
wwv_flow_imp.g_varchar2_table(1771) := '3B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_imp.g_varchar2_table(1772) := '20333329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C';
wwv_flow_imp.g_varchar2_table(1773) := '6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1774) := '696C642834356E202B20333329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023323961';
wwv_flow_imp.g_varchar2_table(1775) := '6361393B0D0A20207374726F6B653A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537';
wwv_flow_imp.g_varchar2_table(1776) := '383B0D0A202066696C6C3A20233336396537383B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_imp.g_varchar2_table(1777) := '203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1778) := '6C642834356E202B20333429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233336396537383B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1779) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D626F72646572207B0D0A20';
wwv_flow_imp.g_varchar2_table(1780) := '20626F726465722D636F6C6F723A20233336396537383B0D0A20207374726F6B653A20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F72207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(1781) := '726F756E642D636F6C6F723A20233734613835363B0D0A202066696C6C3A20233734613835363B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D63';
wwv_flow_imp.g_varchar2_table(1782) := '6F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1783) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_imp.g_varchar2_table(1784) := '6F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E';
wwv_flow_imp.g_varchar2_table(1785) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233734613835363B0D0A20207374726F6B653A20233734613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033362920';
wwv_flow_imp.g_varchar2_table(1786) := '2E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A202066696C6C3A20236337633834623B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_imp.g_varchar2_table(1787) := '68696C642834356E202B20333629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(1788) := '6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E';
wwv_flow_imp.g_varchar2_table(1789) := '752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_imp.g_varchar2_table(1790) := '682D6368696C642834356E202B20333629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236337633834623B0D0A20207374726F6B653A20236337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_imp.g_varchar2_table(1791) := '74682D6368696C642834356E202B20333729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A202066696C6C3A20236532623934333B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1792) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(1793) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_imp.g_varchar2_table(1794) := '682D6368696C642834356E202B20333729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62';
wwv_flow_imp.g_varchar2_table(1795) := '642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236532623934333B0D0A20207374726F6B653A20236532623934333B';
wwv_flow_imp.g_varchar2_table(1796) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A202066696C6C3A20236435373433383B0D0A2020';
wwv_flow_imp.g_varchar2_table(1797) := '636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033382920';
wwv_flow_imp.g_varchar2_table(1798) := '2E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D7478';
wwv_flow_imp.g_varchar2_table(1799) := '742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_imp.g_varchar2_table(1800) := '356E202B20333829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373433383B0D';
wwv_flow_imp.g_varchar2_table(1801) := '0A20207374726F6B653A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A20';
wwv_flow_imp.g_varchar2_table(1802) := '2066696C6C3A20236432353234633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_imp.g_varchar2_table(1803) := '74682D6368696C642834356E202B20333929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_imp.g_varchar2_table(1804) := '6E202B20333929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F';
wwv_flow_imp.g_varchar2_table(1805) := '6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_imp.g_varchar2_table(1806) := '65722D636F6C6F723A20236432353234633B0D0A20207374726F6B653A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F72207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(1807) := '2D636F6C6F723A20236431353437613B0D0A202066696C6C3A20236431353437613B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1808) := '62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C';
wwv_flow_imp.g_varchar2_table(1809) := '6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1810) := '20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C';
wwv_flow_imp.g_varchar2_table(1811) := '6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431353437613B0D0A20207374726F6B653A20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F';
wwv_flow_imp.g_varchar2_table(1812) := '6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A202066696C6C3A20236236346638643B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_imp.g_varchar2_table(1813) := '34356E202B20343129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1814) := '236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C';
wwv_flow_imp.g_varchar2_table(1815) := '6F722D74657874207B0D0A2020636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1816) := '6C642834356E202B20343129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236236346638643B0D0A20207374726F6B653A20236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1817) := '696C642834356E202B20343229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A202066696C6C3A20233738343638633B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1818) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20';
wwv_flow_imp.g_varchar2_table(1819) := '206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_imp.g_varchar2_table(1820) := '6C642834356E202B20343229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_imp.g_varchar2_table(1821) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233738343638633B0D0A20207374726F6B653A20233738343638633B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1822) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A202066696C6C3A20233531356539633B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(1823) := '3A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F';
wwv_flow_imp.g_varchar2_table(1824) := '6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D7478742C0D0A2E';
wwv_flow_imp.g_varchar2_table(1825) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_imp.g_varchar2_table(1826) := '343329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233531356539633B0D0A20207374';
wwv_flow_imp.g_varchar2_table(1827) := '726F6B653A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A202066696C6C';
wwv_flow_imp.g_varchar2_table(1828) := '3A20233965613762313B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_imp.g_varchar2_table(1829) := '696C642834356E202B20343429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034';
wwv_flow_imp.g_varchar2_table(1830) := '3429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_imp.g_varchar2_table(1831) := '3E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_imp.g_varchar2_table(1832) := '6C6F723A20233965613762313B0D0A20207374726F6B653A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(1833) := '723A20233633373838393B0D0A202066696C6C3A20233633373838393B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62672C0D0A';
wwv_flow_imp.g_varchar2_table(1834) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_imp.g_varchar2_table(1835) := '203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023363337';
wwv_flow_imp.g_varchar2_table(1836) := '3838393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D626F';
wwv_flow_imp.g_varchar2_table(1837) := '72646572207B0D0A2020626F726465722D636F6C6F723A20233633373838393B0D0A20207374726F6B653A20233633373838393B0D0A7D0D0A0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F756E642D636F6C6F723A2023333039666462';
wwv_flow_imp.g_varchar2_table(1838) := '2021696D706F7274616E743B0D0A202066696C6C3A20233330396664622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62672C0D0A2E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1839) := '2D312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A202066696C6C3A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31';
wwv_flow_imp.g_varchar2_table(1840) := '2D7478742C0D0A2E752D636F6C6F722D312D74657874207B0D0A2020636F6C6F723A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F722D312D626F72646572207B0D0A2020626F';
wwv_flow_imp.g_varchar2_table(1841) := '726465722D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A20207374726F6B653A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1842) := '20233133623663662021696D706F7274616E743B0D0A202066696C6C3A20233133623663662021696D706F7274616E743B0D0A2020636F6C6F723A20236534663966642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62672C0D0A';
wwv_flow_imp.g_varchar2_table(1843) := '2E752D636F6C6F722D322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663662021696D706F7274616E743B0D0A202066696C6C3A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_imp.g_varchar2_table(1844) := '2D636F6C6F722D322D7478742C0D0A2E752D636F6C6F722D322D74657874207B0D0A2020636F6C6F723A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62642C0D0A2E752D636F6C6F722D322D626F72646572';
wwv_flow_imp.g_varchar2_table(1845) := '207B0D0A2020626F726465722D636F6C6F723A20233133623663662021696D706F7274616E743B0D0A20207374726F6B653A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(1846) := '642D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A202066696C6C3A20233265626662632021696D706F7274616E743B0D0A2020636F6C6F723A20236630666366622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1847) := '2D332D62672C0D0A2E752D636F6C6F722D332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A202066696C6C3A20233265626662632021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(1848) := '3B0D0A7D0D0A2E752D636F6C6F722D332D7478742C0D0A2E752D636F6C6F722D332D74657874207B0D0A2020636F6C6F723A20233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62642C0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1849) := '332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A20207374726F6B653A20233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34207B0D0A202062';
wwv_flow_imp.g_varchar2_table(1850) := '61636B67726F756E642D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A202066696C6C3A20233363616638352021696D706F7274616E743B0D0A2020636F6C6F723A20236630666166362021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1851) := '2E752D636F6C6F722D342D62672C0D0A2E752D636F6C6F722D342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A202066696C6C3A2023336361663835202169';
wwv_flow_imp.g_varchar2_table(1852) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D7478742C0D0A2E752D636F6C6F722D342D74657874207B0D0A2020636F6C6F723A20233363616638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62642C0D0A2E';
wwv_flow_imp.g_varchar2_table(1853) := '752D636F6C6F722D342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A20207374726F6B653A20233363616638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1854) := '35207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235662021696D706F7274616E743B0D0A202066696C6C3A20233831626235662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F727461';
wwv_flow_imp.g_varchar2_table(1855) := '6E743B0D0A7D0D0A2E752D636F6C6F722D352D62672C0D0A2E752D636F6C6F722D352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235662021696D706F7274616E743B0D0A202066696C6C3A202338';
wwv_flow_imp.g_varchar2_table(1856) := '31626235662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D7478742C0D0A2E752D636F6C6F722D352D74657874207B0D0A2020636F6C6F723A20233831626235662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1857) := '352D62642C0D0A2E752D636F6C6F722D352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235662021696D706F7274616E743B0D0A20207374726F6B653A20233831626235662021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1858) := '752D636F6C6F722D36207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A202066696C6C3A20236464646535332021696D706F7274616E743B0D0A2020636F6C6F723A202332613261303820';
wwv_flow_imp.g_varchar2_table(1859) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62672C0D0A2E752D636F6C6F722D362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(1860) := '66696C6C3A20236464646535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A20236464646535332021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1861) := '752D636F6C6F722D362D62642C0D0A2E752D636F6C6F722D362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A20207374726F6B653A20236464646535332021696D706F7274616E';
wwv_flow_imp.g_varchar2_table(1862) := '743B0D0A7D0D0A2E752D636F6C6F722D37207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A202066696C6C3A20236662636534612021696D706F7274616E743B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1863) := '233434333330322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D62672C0D0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274';
wwv_flow_imp.g_varchar2_table(1864) := '616E743B0D0A202066696C6C3A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C6F723A20236662636534612021696D706F7274616E';
wwv_flow_imp.g_varchar2_table(1865) := '743B0D0A7D0D0A2E752D636F6C6F722D372D62642C0D0A2E752D636F6C6F722D372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A20207374726F6B653A20236662636534612021';
wwv_flow_imp.g_varchar2_table(1866) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D38207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A202066696C6C3A20236564383133652021696D706F7274616E743B0D0A20';
wwv_flow_imp.g_varchar2_table(1867) := '20636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D62672C0D0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023656438313365';
wwv_flow_imp.g_varchar2_table(1868) := '2021696D706F7274616E743B0D0A202066696C6C3A20236564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A2020636F6C6F723A20236564383133652021';
wwv_flow_imp.g_varchar2_table(1869) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D62642C0D0A2E752D636F6C6F722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A20207374726F6B653A2023';
wwv_flow_imp.g_varchar2_table(1870) := '6564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D39207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A202066696C6C3A20236539356235342021696D706F72';
wwv_flow_imp.g_varchar2_table(1871) := '74616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1872) := '20236539356235342021696D706F7274616E743B0D0A202066696C6C3A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D7478742C0D0A2E752D636F6C6F722D392D74657874207B0D0A2020636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(1873) := '6539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62642C0D0A2E752D636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A202073';
wwv_flow_imp.g_varchar2_table(1874) := '74726F6B653A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A202066696C6C3A202365383564';
wwv_flow_imp.g_varchar2_table(1875) := '38382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F6C6F722D31302D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1876) := '6F756E642D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A202066696C6C3A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D7478742C0D0A2E752D636F6C6F722D31302D7465787420';
wwv_flow_imp.g_varchar2_table(1877) := '7B0D0A2020636F6C6F723A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236538356438382021';
wwv_flow_imp.g_varchar2_table(1878) := '696D706F7274616E743B0D0A20207374726F6B653A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839642021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(1879) := '0D0A202066696C6C3A20236361353839642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62672C0D0A2E752D636F6C6F722D31312D6261636B67726F';
wwv_flow_imp.g_varchar2_table(1880) := '756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839642021696D706F7274616E743B0D0A202066696C6C3A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D7478742C0D0A2E75';
wwv_flow_imp.g_varchar2_table(1881) := '2D636F6C6F722D31312D74657874207B0D0A2020636F6C6F723A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62642C0D0A2E752D636F6C6F722D31312D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_imp.g_varchar2_table(1882) := '6F6C6F723A20236361353839642021696D706F7274616E743B0D0A20207374726F6B653A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3132207B0D0A20206261636B67726F756E642D636F6C6F723A2023383534';
wwv_flow_imp.g_varchar2_table(1883) := '6539622021696D706F7274616E743B0D0A202066696C6C3A20233835346539622021696D706F7274616E743B0D0A2020636F6C6F723A20236636663066382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62672C0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1884) := '6F6C6F722D31322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539622021696D706F7274616E743B0D0A202066696C6C3A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_imp.g_varchar2_table(1885) := '6C6F722D31322D7478742C0D0A2E752D636F6C6F722D31322D74657874207B0D0A2020636F6C6F723A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62642C0D0A2E752D636F6C6F722D31322D626F726465';
wwv_flow_imp.g_varchar2_table(1886) := '72207B0D0A2020626F726465722D636F6C6F723A20233835346539622021696D706F7274616E743B0D0A20207374726F6B653A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3133207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(1887) := '756E642D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A202066696C6C3A20233561363861642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_imp.g_varchar2_table(1888) := '6F722D31332D62672C0D0A2E752D636F6C6F722D31332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A202066696C6C3A20233561363861642021696D706F72';
wwv_flow_imp.g_varchar2_table(1889) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D31332D7478742C0D0A2E752D636F6C6F722D31332D74657874207B0D0A2020636F6C6F723A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62642C0D0A2E75';
wwv_flow_imp.g_varchar2_table(1890) := '2D636F6C6F722D31332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A20207374726F6B653A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1891) := '3134207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A202066696C6C3A20236166626163352021696D706F7274616E743B0D0A2020636F6C6F723A20233331336134342021696D706F7274';
wwv_flow_imp.g_varchar2_table(1892) := '616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62672C0D0A2E752D636F6C6F722D31342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A202066696C6C3A';
wwv_flow_imp.g_varchar2_table(1893) := '20236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D7478742C0D0A2E752D636F6C6F722D31342D74657874207B0D0A2020636F6C6F723A20236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1894) := '6F6C6F722D31342D62642C0D0A2E752D636F6C6F722D31342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A20207374726F6B653A20236166626163352021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(1895) := '3B0D0A7D0D0A2E752D636F6C6F722D3135207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539382021696D706F7274616E743B0D0A202066696C6C3A20233665383539382021696D706F7274616E743B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1896) := '236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D62672C0D0A2E752D636F6C6F722D31352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539382021696D706F';
wwv_flow_imp.g_varchar2_table(1897) := '7274616E743B0D0A202066696C6C3A20233665383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F6C6F723A20233665383539382021696D706F';
wwv_flow_imp.g_varchar2_table(1898) := '7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D62642C0D0A2E752D636F6C6F722D31352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539382021696D706F7274616E743B0D0A20207374726F6B653A20233665';
wwv_flow_imp.g_varchar2_table(1899) := '383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3136207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066696C6C3A20233539623265322021696D706F7274';
wwv_flow_imp.g_varchar2_table(1900) := '616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1901) := '3A20233539623265322021696D706F7274616E743B0D0A202066696C6C3A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E752D636F6C6F722D31362D74657874207B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(1902) := '3A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62642C0D0A2E752D636F6C6F722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265322021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(1903) := '0D0A20207374726F6B653A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_imp.g_varchar2_table(1904) := '233432633564392021696D706F7274616E743B0D0A2020636F6C6F723A20236561666166642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F722D31372D6261636B67726F756E64207B0D0A202062';
wwv_flow_imp.g_varchar2_table(1905) := '61636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D7478742C0D0A2E752D636F6C6F722D31372D';
wwv_flow_imp.g_varchar2_table(1906) := '74657874207B0D0A2020636F6C6F723A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023343263';
wwv_flow_imp.g_varchar2_table(1907) := '3564392021696D706F7274616E743B0D0A20207374726F6B653A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363392021696D706F72';
wwv_flow_imp.g_varchar2_table(1908) := '74616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A2020636F6C6F723A20236633666366632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62672C0D0A2E752D636F6C6F722D31382D6261';
wwv_flow_imp.g_varchar2_table(1909) := '636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D747874';
wwv_flow_imp.g_varchar2_table(1910) := '2C0D0A2E752D636F6C6F722D31382D74657874207B0D0A2020636F6C6F723A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E752D636F6C6F722D31382D626F72646572207B0D0A2020626F72';
wwv_flow_imp.g_varchar2_table(1911) := '6465722D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A20207374726F6B653A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3139207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1912) := '20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A2020636F6C6F723A20236633666266382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62672C0D';
wwv_flow_imp.g_varchar2_table(1913) := '0A2E752D636F6C6F722D31392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1914) := '2E752D636F6C6F722D31392D7478742C0D0A2E752D636F6C6F722D31392D74657874207B0D0A2020636F6C6F723A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62642C0D0A2E752D636F6C6F722D31392D';
wwv_flow_imp.g_varchar2_table(1915) := '626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A20207374726F6B653A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3230207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(1916) := '636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(1917) := '752D636F6C6F722D32302D62672C0D0A2E752D636F6C6F722D32302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021';
wwv_flow_imp.g_varchar2_table(1918) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D7478742C0D0A2E752D636F6C6F722D32302D74657874207B0D0A2020636F6C6F723A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D6264';
wwv_flow_imp.g_varchar2_table(1919) := '2C0D0A2E752D636F6C6F722D32302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A20207374726F6B653A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1920) := '6F6C6F722D3231207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A2020636F6C6F723A2023353435353339202169';
wwv_flow_imp.g_varchar2_table(1921) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62672C0D0A2E752D636F6C6F722D32312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(1922) := '66696C6C3A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D7478742C0D0A2E752D636F6C6F722D32312D74657874207B0D0A2020636F6C6F723A20236534653537352021696D706F7274616E743B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1923) := '0A2E752D636F6C6F722D32312D62642C0D0A2E752D636F6C6F722D32312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A20207374726F6B653A20236534653537352021696D706F';
wwv_flow_imp.g_varchar2_table(1924) := '7274616E743B0D0A7D0D0A2E752D636F6C6F722D3232207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E743B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(1925) := '6C6F723A20233661356333342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202366636438366520';
wwv_flow_imp.g_varchar2_table(1926) := '21696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D0A2020636F6C6F723A202366636438366520';
wwv_flow_imp.g_varchar2_table(1927) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D62642C0D0A2E752D636F6C6F722D32322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A20207374726F6B65';
wwv_flow_imp.g_varchar2_table(1928) := '3A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3233207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A2023663139613635202169';
wwv_flow_imp.g_varchar2_table(1929) := '6D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(1930) := '636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D636F6C6F722D32332D74657874207B0D0A2020';
wwv_flow_imp.g_varchar2_table(1931) := '636F6C6F723A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62642C0D0A2E752D636F6C6F722D32332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136352021696D706F72';
wwv_flow_imp.g_varchar2_table(1932) := '74616E743B0D0A20207374726F6B653A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066';
wwv_flow_imp.g_varchar2_table(1933) := '696C6C3A20236564376337362021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C6F722D32342D6261636B67726F756E64207B';
wwv_flow_imp.g_varchar2_table(1934) := '0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D7478742C0D0A2E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(1935) := '722D32342D74657874207B0D0A2020636F6C6F723A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1936) := '20236564376337362021696D706F7274616E743B0D0A20207374726F6B653A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461302021';
wwv_flow_imp.g_varchar2_table(1937) := '696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62672C0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1938) := '32352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32';
wwv_flow_imp.g_varchar2_table(1939) := '352D7478742C0D0A2E752D636F6C6F722D32352D74657874207B0D0A2020636F6C6F723A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D636F6C6F722D32352D626F72646572207B0D0A';
wwv_flow_imp.g_varchar2_table(1940) := '2020626F726465722D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A20207374726F6B653A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(1941) := '6F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236';
wwv_flow_imp.g_varchar2_table(1942) := '2D62672C0D0A2E752D636F6C6F722D32362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(1943) := '0D0A7D0D0A2E752D636F6C6F722D32362D7478742C0D0A2E752D636F6C6F722D32362D74657874207B0D0A2020636F6C6F723A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62642C0D0A2E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(1944) := '722D32362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A20207374726F6B653A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3237207B0D';
wwv_flow_imp.g_varchar2_table(1945) := '0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A2020636F6C6F723A20236637663366392021696D706F7274616E743B0D';
wwv_flow_imp.g_varchar2_table(1946) := '0A7D0D0A2E752D636F6C6F722D32372D62672C0D0A2E752D636F6C6F722D32372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A2023396437';
wwv_flow_imp.g_varchar2_table(1947) := '3161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D7478742C0D0A2E752D636F6C6F722D32372D74657874207B0D0A2020636F6C6F723A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1948) := '32372D62642C0D0A2E752D636F6C6F722D32372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A20207374726F6B653A20233964373161662021696D706F7274616E743B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(1949) := '0A2E752D636F6C6F722D3238207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A2020636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(1950) := '66662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D62672C0D0A2E752D636F6C6F722D32382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(1951) := '3B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D74657874207B0D0A2020636F6C6F723A20233762383662642021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(1952) := '3B0D0A7D0D0A2E752D636F6C6F722D32382D62642C0D0A2E752D636F6C6F722D32382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A20207374726F6B653A202337623836626420';
wwv_flow_imp.g_varchar2_table(1953) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3239207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D';
wwv_flow_imp.g_varchar2_table(1954) := '0A2020636F6C6F723A20233561363236392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266';
wwv_flow_imp.g_varchar2_table(1955) := '633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D74657874207B0D0A2020636F6C6F723A20236266';
wwv_flow_imp.g_varchar2_table(1956) := '633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D62642C0D0A2E752D636F6C6F722D32392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202073';
wwv_flow_imp.g_varchar2_table(1957) := '74726F6B653A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C6C3A202338623964';
wwv_flow_imp.g_varchar2_table(1958) := '61642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(1959) := '6F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D0A2E752D636F6C6F722D33302D7465787420';
wwv_flow_imp.g_varchar2_table(1960) := '7B0D0A2020636F6C6F723A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461642021';
wwv_flow_imp.g_varchar2_table(1961) := '696D706F7274616E743B0D0A20207374726F6B653A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663352021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(1962) := '0D0A202066696C6C3A20233262386663352021696D706F7274616E743B0D0A2020636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E752D636F6C6F722D33312D6261636B67726F';
wwv_flow_imp.g_varchar2_table(1963) := '756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663352021696D706F7274616E743B0D0A202066696C6C3A20233262386663352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D7478742C0D0A2E75';
wwv_flow_imp.g_varchar2_table(1964) := '2D636F6C6F722D33312D74657874207B0D0A2020636F6C6F723A20233262386663352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_imp.g_varchar2_table(1965) := '6F6C6F723A20233262386663352021696D706F7274616E743B0D0A20207374726F6B653A20233262386663352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B67726F756E642D636F6C6F723A2023313161';
wwv_flow_imp.g_varchar2_table(1966) := '3462612021696D706F7274616E743B0D0A202066696C6C3A20233131613462612021696D706F7274616E743B0D0A2020636F6C6F723A20236365653065332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62672C0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1967) := '6F6C6F722D33322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462612021696D706F7274616E743B0D0A202066696C6C3A20233131613462612021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_imp.g_varchar2_table(1968) := '6C6F722D33322D7478742C0D0A2E752D636F6C6F722D33322D74657874207B0D0A2020636F6C6F723A20233131613462612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D0A2E752D636F6C6F722D33322D626F726465';
wwv_flow_imp.g_varchar2_table(1969) := '72207B0D0A2020626F726465722D636F6C6F723A20233131613462612021696D706F7274616E743B0D0A20207374726F6B653A20233131613462612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3333207B0D0A20206261636B67726F';
wwv_flow_imp.g_varchar2_table(1970) := '756E642D636F6C6F723A20233239616361392021696D706F7274616E743B0D0A202066696C6C3A20233239616361392021696D706F7274616E743B0D0A2020636F6C6F723A20236438653265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_imp.g_varchar2_table(1971) := '6F722D33332D62672C0D0A2E752D636F6C6F722D33332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361392021696D706F7274616E743B0D0A202066696C6C3A20233239616361392021696D706F72';
wwv_flow_imp.g_varchar2_table(1972) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D33332D7478742C0D0A2E752D636F6C6F722D33332D74657874207B0D0A2020636F6C6F723A20233239616361392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62642C0D0A2E75';
wwv_flow_imp.g_varchar2_table(1973) := '2D636F6C6F722D33332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233239616361392021696D706F7274616E743B0D0A20207374726F6B653A20233239616361392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(1974) := '3334207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537382021696D706F7274616E743B0D0A202066696C6C3A20233336396537382021696D706F7274616E743B0D0A2020636F6C6F723A20236438653164652021696D706F7274';
wwv_flow_imp.g_varchar2_table(1975) := '616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62672C0D0A2E752D636F6C6F722D33342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537382021696D706F7274616E743B0D0A202066696C6C3A';
wwv_flow_imp.g_varchar2_table(1976) := '20233336396537382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D7478742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F6C6F723A20233336396537382021696D706F7274616E743B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(1977) := '6F6C6F722D33342D62642C0D0A2E752D636F6C6F722D33342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233336396537382021696D706F7274616E743B0D0A20207374726F6B653A20233336396537382021696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(1978) := '3B0D0A7D0D0A2E752D636F6C6F722D3335207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835362021696D706F7274616E743B0D0A202066696C6C3A20233734613835362021696D706F7274616E743B0D0A2020636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(1979) := '236536653665362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D62672C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835362021696D706F';
wwv_flow_imp.g_varchar2_table(1980) := '7274616E743B0D0A202066696C6C3A20233734613835362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D74657874207B0D0A2020636F6C6F723A20233734613835362021696D706F';
wwv_flow_imp.g_varchar2_table(1981) := '7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D62642C0D0A2E752D636F6C6F722D33352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233734613835362021696D706F7274616E743B0D0A20207374726F6B653A20233734';
wwv_flow_imp.g_varchar2_table(1982) := '613835362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3336207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834622021696D706F7274616E743B0D0A202066696C6C3A20236337633834622021696D706F7274';
wwv_flow_imp.g_varchar2_table(1983) := '616E743B0D0A2020636F6C6F723A20233236323630372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(1984) := '3A20236337633834622021696D706F7274616E743B0D0A202066696C6C3A20236337633834622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D33362D74657874207B0D0A2020636F6C6F72';
wwv_flow_imp.g_varchar2_table(1985) := '3A20236337633834622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236337633834622021696D706F7274616E743B';
wwv_flow_imp.g_varchar2_table(1986) := '0D0A20207374726F6B653A20236337633834622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934332021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_imp.g_varchar2_table(1987) := '236532623934332021696D706F7274616E743B0D0A2020636F6C6F723A20233365326530312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62672C0D0A2E752D636F6C6F722D33372D6261636B67726F756E64207B0D0A202062';
wwv_flow_imp.g_varchar2_table(1988) := '61636B67726F756E642D636F6C6F723A20236532623934332021696D706F7274616E743B0D0A202066696C6C3A20236532623934332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D7478742C0D0A2E752D636F6C6F722D33372D';
wwv_flow_imp.g_varchar2_table(1989) := '74657874207B0D0A2020636F6C6F723A20236532623934332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023653262';
wwv_flow_imp.g_varchar2_table(1990) := '3934332021696D706F7274616E743B0D0A20207374726F6B653A20236532623934332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433382021696D706F72';
wwv_flow_imp.g_varchar2_table(1991) := '74616E743B0D0A202066696C6C3A20236435373433382021696D706F7274616E743B0D0A2020636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62672C0D0A2E752D636F6C6F722D33382D6261';
wwv_flow_imp.g_varchar2_table(1992) := '636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433382021696D706F7274616E743B0D0A202066696C6C3A20236435373433382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D747874';
wwv_flow_imp.g_varchar2_table(1993) := '2C0D0A2E752D636F6C6F722D33382D74657874207B0D0A2020636F6C6F723A20236435373433382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D33382D626F72646572207B0D0A2020626F72';
wwv_flow_imp.g_varchar2_table(1994) := '6465722D636F6C6F723A20236435373433382021696D706F7274616E743B0D0A20207374726F6B653A20236435373433382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(1995) := '20236432353234632021696D706F7274616E743B0D0A202066696C6C3A20236432353234632021696D706F7274616E743B0D0A2020636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62672C0D';
wwv_flow_imp.g_varchar2_table(1996) := '0A2E752D636F6C6F722D33392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234632021696D706F7274616E743B0D0A202066696C6C3A20236432353234632021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(1997) := '2E752D636F6C6F722D33392D7478742C0D0A2E752D636F6C6F722D33392D74657874207B0D0A2020636F6C6F723A20236432353234632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62642C0D0A2E752D636F6C6F722D33392D';
wwv_flow_imp.g_varchar2_table(1998) := '626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432353234632021696D706F7274616E743B0D0A20207374726F6B653A20236432353234632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3430207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(1999) := '636B67726F756E642D636F6C6F723A20236431353437612021696D706F7274616E743B0D0A202066696C6C3A20236431353437612021696D706F7274616E743B0D0A2020636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(2000) := '752D636F6C6F722D34302D62672C0D0A2E752D636F6C6F722D34302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437612021696D706F7274616E743B0D0A202066696C6C3A20236431353437612021';
wwv_flow_imp.g_varchar2_table(2001) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D7478742C0D0A2E752D636F6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431353437612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D6264';
wwv_flow_imp.g_varchar2_table(2002) := '2C0D0A2E752D636F6C6F722D34302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431353437612021696D706F7274616E743B0D0A20207374726F6B653A20236431353437612021696D706F7274616E743B0D0A7D0D0A2E752D63';
wwv_flow_imp.g_varchar2_table(2003) := '6F6C6F722D3431207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638642021696D706F7274616E743B0D0A202066696C6C3A20236236346638642021696D706F7274616E743B0D0A2020636F6C6F723A2023653665366536202169';
wwv_flow_imp.g_varchar2_table(2004) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62672C0D0A2E752D636F6C6F722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638642021696D706F7274616E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(2005) := '66696C6C3A20236236346638642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F723A20236236346638642021696D706F7274616E743B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(2006) := '0A2E752D636F6C6F722D34312D62642C0D0A2E752D636F6C6F722D34312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236236346638642021696D706F7274616E743B0D0A20207374726F6B653A20236236346638642021696D706F';
wwv_flow_imp.g_varchar2_table(2007) := '7274616E743B0D0A7D0D0A2E752D636F6C6F722D3432207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638632021696D706F7274616E743B0D0A202066696C6C3A20233738343638632021696D706F7274616E743B0D0A2020636F';
wwv_flow_imp.g_varchar2_table(2008) := '6C6F723A20236464643864662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D62672C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202337383436386320';
wwv_flow_imp.g_varchar2_table(2009) := '21696D706F7274616E743B0D0A202066696C6C3A20233738343638632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D0A2020636F6C6F723A202337383436386320';
wwv_flow_imp.g_varchar2_table(2010) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D62642C0D0A2E752D636F6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233738343638632021696D706F7274616E743B0D0A20207374726F6B65';
wwv_flow_imp.g_varchar2_table(2011) := '3A20233738343638632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3433207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539632021696D706F7274616E743B0D0A202066696C6C3A2023353135653963202169';
wwv_flow_imp.g_varchar2_table(2012) := '6D706F7274616E743B0D0A2020636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(2013) := '636F6C6F723A20233531356539632021696D706F7274616E743B0D0A202066696C6C3A20233531356539632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D7478742C0D0A2E752D636F6C6F722D34332D74657874207B0D0A2020';
wwv_flow_imp.g_varchar2_table(2014) := '636F6C6F723A20233531356539632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233531356539632021696D706F72';
wwv_flow_imp.g_varchar2_table(2015) := '74616E743B0D0A20207374726F6B653A20233531356539632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762312021696D706F7274616E743B0D0A202066';
wwv_flow_imp.g_varchar2_table(2016) := '696C6C3A20233965613762312021696D706F7274616E743B0D0A2020636F6C6F723A20233263333533642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62672C0D0A2E752D636F6C6F722D34342D6261636B67726F756E64207B';
wwv_flow_imp.g_varchar2_table(2017) := '0D0A20206261636B67726F756E642D636F6C6F723A20233965613762312021696D706F7274616E743B0D0A202066696C6C3A20233965613762312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D7478742C0D0A2E752D636F6C6F';
wwv_flow_imp.g_varchar2_table(2018) := '722D34342D74657874207B0D0A2020636F6C6F723A20233965613762312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(2019) := '20233965613762312021696D706F7274616E743B0D0A20207374726F6B653A20233965613762312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3435207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838392021';
wwv_flow_imp.g_varchar2_table(2020) := '696D706F7274616E743B0D0A202066696C6C3A20233633373838392021696D706F7274616E743B0D0A2020636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62672C0D0A2E752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(2021) := '34352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838392021696D706F7274616E743B0D0A202066696C6C3A20233633373838392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34';
wwv_flow_imp.g_varchar2_table(2022) := '352D7478742C0D0A2E752D636F6C6F722D34352D74657874207B0D0A2020636F6C6F723A20233633373838392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62642C0D0A2E752D636F6C6F722D34352D626F72646572207B0D0A';
wwv_flow_imp.g_varchar2_table(2023) := '2020626F726465722D636F6C6F723A20233633373838392021696D706F7274616E743B0D0A20207374726F6B653A20233633373838392021696D706F7274616E743B0D0A7D0D0A0D0A2E752D636F6C6F722D7472616E73706172656E74207B0D0A202062';
wwv_flow_imp.g_varchar2_table(2024) := '61636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D';
wwv_flow_imp.g_varchar2_table(2025) := '6267207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D7478742C0D0A2E752D636F6C6F722D7472616E73706172656E';
wwv_flow_imp.g_varchar2_table(2026) := '742D74657874207B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D62642C0D0A2E752D636F6C6F722D7472616E73706172656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(2027) := '207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(98751533216455705)
,p_theme_id=>42
,p_file_name=>'72005517995516214.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(53301307485566014)
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
 p_id=>wwv_flow_imp.id(53305296621566017)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(53307281705566018)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(53310473185566020)
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
 p_id=>wwv_flow_imp.id(53318929729566025)
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
 p_id=>wwv_flow_imp.id(53328912387566032)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(53332935595566034)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811038066221458919)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811038382542458919)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811040282238458923)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811040711278458923)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811042433917458927)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811042890060458927)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811043227644458927)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811044245462458928)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811045302093458929)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811046016492458931)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811046315997458931)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811048343552458936)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811048756512458936)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811049107827458936)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811050512287458940)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811051426980458943)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811052909986458945)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811054030075458946)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811055850115458950)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811057043056458953)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811057743188458954)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811059039685458959)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811059343009458959)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811059650941458959)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811060040181458959)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811060386675458959)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811060907400458959)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811061683099458960)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811062192602458960)
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
 p_id=>wwv_flow_imp.id(2811062639486458960)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811063013293458960)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2811063274832458960)
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
 p_id=>wwv_flow_imp.id(2811063566737458960)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2872899342715758026)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2895569517688840500)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3054972075528413173)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3054978016606413183)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3094217728256725810)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3094220112624725812)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3094239215319725847)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3180318316437665608)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3183824912087022929)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(3360069511328112251)
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
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/apex_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10546885732301092178)
,p_name=>'APEX Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>187801247
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_display_source
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(3160195438925121739)
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
 p_id=>wwv_flow_imp.id(633109908551579370)
,p_plugin_id=>wwv_flow_imp.id(3160195438925121739)
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
 p_id=>wwv_flow_imp.id(633110264225579370)
,p_plugin_id=>wwv_flow_imp.id(3160195438925121739)
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
 p_id=>wwv_flow_imp.id(3501229197449968475)
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
,p_name=>'Example REST Application'
,p_alias=>'EXAMPLE-REST-APPLICATION'
,p_step_title=>'Example REST Application'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83863839696703927)
,p_plug_name=>'Home Page Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(84557502023898366)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1783463762102571483)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Access and use external REST services in your Applications.'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3656365667895842940)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This application showcases how to access external REST services from Oracle Application Express pages. Particular focus is on the new REST service capabilities in Application Express 18.1 and higher. The <strong>Oracle on Github</strong> page illustr'
||'ates how to declaratively create Application Express components like reports, charts or calendars based on REST services.</p>',
'<p>The <strong>Web Sources and PL/SQL</strong> page shows how declarative Web Sources can be used from within PL/SQL code. That provides great flexibility when working with the data, without having to care for the details of JSON response parsing - A'
||'pplication Express is still responsible for that.',
'</p>',
'<p>',
' It is recommended to first test the URL endpoint used by this application. Go to <strong>Administration</strong> &gt; <strong>Test Service Endpoint</strong> to do this. After a successful test, the REST service demonstration pages can be explored.</'
||'p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Simple Report'
,p_alias=>'SIMPLE-REPORT'
,p_step_title=>'Simple Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
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
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1783463816314571484)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5465440216977052167)
,p_plug_name=>'REST Service Endpoint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'REST Service Endpoint: <b>&SAMPLE_ENDPOINT_URL.</b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6687413501609143548)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to parse and display JSON data from a REST service in an Application Express interactive report.</p>',
'<p>First, a PL/SQL process firing on page load, fetches JSON data from the REST service with the <strong>APEX_WEB_SERVICE</strong> package and stores it as a CLOB into a collection. The interactive report then parses the CLOB using either SQL/JSON fu'
||'nctions (Oracle12c) or XML functions on Oracle11g.</p>'))
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
 p_id=>wwv_flow_imp.id(6876443627633965769)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(13893547470194475407)
,p_name=>'Data from RESTful Service'
,p_region_name=>'report'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    x.EMPNO, ',
'    x.ENAME, ',
'    x.JOB, ',
'    x.MGR, ',
'    to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'    x.SAL, ',
'    x.COMM,',
'    x.DEPTNO, ',
'    x.RN',
'from apex_collections c, xmltable(',
'    ''/json/items/row''',
'    passing apex_json.to_xmltype( c.clob001 )',
'    columns',
'        EMPNO      NUMBER          path ''empno'',',
'        ENAME      VARCHAR2(4000)  path ''ename'',',
'        JOB        VARCHAR2(4000)  path ''job'',',
'        MGR        NUMBER          path ''mgr'',',
'        HIREDATE   VARCHAR2(4000)   path ''hiredate'',',
'        SAL        NUMBER          path ''sal'', ',
'        COMM       NUMBER          path ''comm'',',
'        DEPTNO     NUMBER          path ''deptno'',',
'        RN         NUMBER          path ''rn''',
') x',
'where c.collection_name = ''REST_COLLECTION'''))
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
 p_id=>wwv_flow_imp.id(1848989353670775737)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>3
,p_column_heading=>'Empno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848989484375775738)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Ename'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848989545610775739)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>5
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848989684644775740)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>6
,p_column_heading=>'Mgr'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848989742828775741)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Hiredate'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848989866117775742)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>8
,p_column_heading=>'Sal'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848989894157775743)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>9
,p_column_heading=>'Comm'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848990072032775744)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>10
,p_column_heading=>'Deptno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848990182703775745)
,p_query_column_id=>9
,p_column_alias=>'RN'
,p_column_display_sequence=>2
,p_column_heading=>'Row #'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848992118413775765)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_BACK_TO_PAGE,P12_EMPNO:2,#EMPNO#'
,p_column_linktext=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_report_column_width=>75
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1847329390333854849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13893547470194475407)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1847331223077854852)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch data into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response clob;',
'begin',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request(',
'        p_url              => :SAMPLE_ENDPOINT_URL,',
'        p_http_method      => ''GET'');',
'',
'    apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''REST_COLLECTION'',',
'        p_clob001 =>         l_response );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1823096487377594709
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Report with Pagination'
,p_alias=>'REPORT-WITH-PAGINATION'
,p_step_title=>'Report with Pagination'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
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
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1783463948291571485)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7274536432038297426)
,p_plug_name=>'REST Service Endpoint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'REST Service Endpoint: <b>&P3_THIS_URL.</b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8496509716670388807)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to create a report to display a larger REST service response in an Application Express application. Note that it''s not feasible to download the full REST service response, since it''s simply too large. So, normal Application Exp'
||'ress report pagination cannot be used here since it requires all data to be present in the local database. </p>',
'<p>This example uses REST pagination support provided by Oracle REST Data Services (ORDS). Each service response contains a link to the next and previous pages. When the <strong>Next Page</strong> or <strong>Previous Page</strong> buttons are clicked'
||', the application page performs another REST request using the link to the next or previous result page, which have been extracted from the response.</p>'))
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
 p_id=>wwv_flow_imp.id(8685539842695211028)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15702643685255720666)
,p_name=>'Data from RESTful Service'
,p_region_name=>'report'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    x.EMPNO, ',
'    x.ENAME, ',
'    x.JOB, ',
'    x.MGR, ',
'    to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'    x.SAL, ',
'    x.COMM,',
'    x.DEPTNO, ',
'    x.RN',
'from apex_collections c, xmltable(',
'    ''/json/items/row''',
'    passing apex_json.to_xmltype( c.clob001 )',
'    columns',
'        EMPNO      NUMBER          path ''empno'',',
'        ENAME      VARCHAR2(4000)  path ''ename'',',
'        JOB        VARCHAR2(4000)  path ''job'',',
'        MGR        NUMBER          path ''mgr'',',
'        HIREDATE   VARCHAR2(4000)   path ''hiredate'',',
'        SAL        NUMBER          path ''sal'', ',
'        COMM       NUMBER          path ''comm'',',
'        DEPTNO     NUMBER          path ''deptno'',',
'        RN         NUMBER          path ''rn''',
') x',
'where c.collection_name = ''REST_COLLECTION'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data returned.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847335687753857595)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>3
,p_column_heading=>'Empno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847336186142857595)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Ename'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847336555443857596)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>5
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847336984978857596)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>6
,p_column_heading=>'Mgr'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847337369573857596)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Hiredate'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847337701864857597)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>8
,p_column_heading=>'Sal'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847338123595857597)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>9
,p_column_heading=>'Comm'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847338492978857597)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>10
,p_column_heading=>'Deptno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847338956846857598)
,p_query_column_id=>9
,p_column_alias=>'RN'
,p_column_display_sequence=>2
,p_column_heading=>'Row #'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848992226478775766)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_BACK_TO_PAGE,P12_EMPNO:3,#EMPNO#'
,p_column_linktext=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_report_column_width=>75
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1847339728255857599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15702643685255720666)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous Page'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_SHOW_PAGE:prev'
,p_button_condition=>'P3_URL_PREV_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1847339367736857598)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15702643685255720666)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next Page'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_SHOW_PAGE:next'
,p_button_condition=>'P3_URL_NEXT_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847340164144857599)
,p_name=>'P3_URL_PREV_PAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15702643685255720666)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847340496807857604)
,p_name=>'P3_URL_NEXT_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15702643685255720666)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847340896606857604)
,p_name=>'P3_SHOW_PAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15702643685255720666)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847341951507857605)
,p_name=>'P3_THIS_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7274536432038297426)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1847342290905857606)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch data into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- INSTRUCTIONS ',
'-- ',
'-- 1. create 3 items on your Application Express page: ',
'--    - {APEX_ITEM_URL_NEXT_PAGE}: holds the REST data URL for the next page',
'--    - {APEX_ITEM_URL_PREV_PAGE}: holds the REST data URL for the previous page',
'--    - {APEX_ITEM_SHOW_PAGE}:     determines whether to move forward or backwards ',
'-- ',
'-- 2. create two page buttons:',
'--    - "PREV": redirect to the same page and set :{APEX_ITEM_SHOW_PAGE} to "prev"',
'--    -         conditional; show only when {APEX_ITEM_URL_PREV_PAGE} is NOT NULL',
'--    - "NEXT": redirect to the same page and set :{APEX_ITEM_SHOW_PAGE} to "next"',
'--    -         conditional; show only when {APEX_ITEM_URL_NEXT_PAGE} is NOT NULL',
'--',
'-- 3. replace the on Page Load code with the following. Replace all occurrences of',
'--    :{APEX_ITEM_...} with your page item names.',
'--',
'',
'declare',
'    l_response clob;',
'begin',
'    :P3_THIS_URL := case ',
'                          -- TODO: replace with your page item names here',
'                          when :P3_SHOW_PAGE = ''next'' and :P3_URL_NEXT_PAGE is not null then :P3_URL_NEXT_PAGE',
'                          when :P3_SHOW_PAGE = ''prev'' and :P3_URL_PREV_PAGE is not null then :P3_URL_PREV_PAGE',
'                          else nvl( :P3_THIS_URL, :SAMPLE_ENDPOINT_URL )',
'                      end;',
'',
'    :P3_SHOW_PAGE := null;',
'',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request(',
'        p_url              => :P3_THIS_URL,',
'        p_http_method      => ''GET'');',
'',
'    apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''REST_COLLECTION'',',
'        p_clob001 =>         l_response );',
'',
'    select',
'        x.next_page, ',
'        coalesce( x.prev_page, x.previous_page ) ',
'      -- TODO: replace with your page item names here',
'      into :P3_URL_NEXT_PAGE, :P3_URL_PREV_PAGE',
'    from apex_collections c, xmltable( ',
'        ''/json''',
'        passing apex_json.to_xmltype( c.clob001 )',
'        columns',
'            next_page     varchar2(500) path ''next/_ref'',',
'            prev_page     varchar2(500) path ''prev/_ref'',',
'            previous_page varchar2(500) path ''previous/_ref''',
'    ) x',
'    where c.collection_name = ''REST_COLLECTION'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1823107555205597463
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Report with Query'
,p_alias=>'REPORT-WITH-QUERY'
,p_step_title=>'Report with Query'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
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
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1783463989608571486)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9088311624026755022)
,p_plug_name=>'REST Service Endpoint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'sys.htp.p(''REST Service Endpoint: <b>'' || apex_escape.html( :P4_THIS_URL ) || ''</b>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10310284908658846403)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to create a report to display larger REST service responses including query capability. Unline a report on a normal page, a new REST request must be executed when end users type in a query. Downloading all data to the database '
||'and doing local filtering is not feasible since the amount of data might be too large. </p>',
'<p>This example uses REST pagination support provided by Oracle REST Data Services (ORDS). ORDS allows to append a query parameter (<strong>q=</strong>) containing filters to the REST endpoint URL. On the REST server side that parameter is being eval'
||'uated leading ORDS returning only the requested row set.</p>'))
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
 p_id=>wwv_flow_imp.id(10499315034683668624)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17516418877244178262)
,p_name=>'Data from RESTful Service'
,p_region_name=>'report'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    x.EMPNO, ',
'    x.ENAME, ',
'    x.JOB, ',
'    x.MGR, ',
'    to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'    x.SAL, ',
'    x.COMM,',
'    x.DEPTNO, ',
'    x.RN',
'from apex_collections c, xmltable(',
'    ''/json/items/row''',
'    passing apex_json.to_xmltype( c.clob001 )',
'    columns',
'        EMPNO      NUMBER          path ''empno'',',
'        ENAME      VARCHAR2(4000)  path ''ename'',',
'        JOB        VARCHAR2(4000)  path ''job'',',
'        MGR        NUMBER          path ''mgr'',',
'        HIREDATE   VARCHAR2(4000)   path ''hiredate'',',
'        SAL        NUMBER          path ''sal'', ',
'        COMM       NUMBER          path ''comm'',',
'        DEPTNO     NUMBER          path ''deptno'',',
'        RN         NUMBER          path ''rn''',
') x',
'where c.collection_name = ''REST_COLLECTION'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data returned.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847346850927860735)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>3
,p_column_heading=>'Empno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847347207079860736)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Ename'
,p_column_hit_highlight=>'&P4_ENAME_CONTAINS.'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847347641347860736)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>5
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847347996683860736)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>6
,p_column_heading=>'Mgr'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847348438399860737)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Hiredate'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847348884691860737)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>8
,p_column_heading=>'Sal'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847349237750860738)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>9
,p_column_heading=>'Comm'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847349597543860738)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>10
,p_column_heading=>'Deptno'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1847350077382860739)
,p_query_column_id=>9
,p_column_alias=>'RN'
,p_column_display_sequence=>2
,p_column_heading=>'Row #'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1848991264408775756)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_EMPNO,P12_BACK_TO_PAGE:#EMPNO#,4'
,p_column_linktext=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_report_column_width=>75
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1847350848250860739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous Page'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_SHOW_PAGE:prev'
,p_button_condition=>'P4_URL_PREV_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1847350418668860739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next Page'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_SHOW_PAGE:next'
,p_button_condition=>'P4_URL_NEXT_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1847354652174860749)
,p_branch_name=>'Go To Page'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1835792057329932032)
,p_name=>'P4_CASE_SENSITIVE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_item_default=>'N'
,p_prompt=>'Case Sensitive'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847351265310860740)
,p_name=>'P4_ENAME_CONTAINS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_prompt=>'ENAME contains'
,p_placeholder=>'e.g. KING'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847351665395860740)
,p_name=>'P4_URL_PREV_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847351999470860740)
,p_name=>'P4_URL_NEXT_PAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847352450248860741)
,p_name=>'P4_SHOW_PAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17516418877244178262)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1847353460673860747)
,p_name=>'P4_THIS_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9088311624026755022)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1847354157979860748)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch data into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- INSTRUCTIONS ',
'-- ',
'-- 1. create 3 items on your Application Express page: ',
'--    - {APEX_ITEM_URL_NEXT_PAGE}: holds the REST data URL for the next page',
'--    - {APEX_ITEM_URL_PREV_PAGE}: holds the REST data URL for the previous page',
'--    - {APEX_ITEM_SHOW_PAGE}:     determines whether to move forward or backwards ',
'-- ',
'-- 2. create two page buttons:',
'--    - "PREV": redirect to the same page and set :{APEX_ITEM_SHOW_PAGE} to "prev"',
'--    -         conditional; show only when {APEX_ITEM_URL_PREV_PAGE} is NOT NULL',
'--    - "NEXT": redirect to the same page and set :{APEX_ITEM_SHOW_PAGE} to "next"',
'--    -         conditional; show only when {APEX_ITEM_URL_NEXT_PAGE} is NOT NULL',
'--',
'-- 3. replace the on Page Load code with the following. Replace all occurrences of',
'--    :{APEX_ITEM_...} with your page item names.',
'--',
'',
'declare',
'    l_response clob;',
'begin',
'    :P4_THIS_URL := case ',
'                           -- TODO: replace with your page item names here',
'                           when :P4_SHOW_PAGE = ''next'' and :P4_URL_NEXT_PAGE is not null then :P4_URL_NEXT_PAGE',
'                           when :P4_SHOW_PAGE = ''prev'' and :P4_URL_PREV_PAGE is not null then :P4_URL_PREV_PAGE',
'                           else ',
'                               case when :P4_ENAME_CONTAINS is not null then ',
'                                   case when :P4_CASE_SENSITIVE = ''Y'' then ',
'                                       :SAMPLE_ENDPOINT_URL || ''?q='' || sys.utl_url.escape(''{"ename":{"$like": "%'' || :P4_ENAME_CONTAINS || ''%"}}'')',
'                                   else ',
'                                       :SAMPLE_ENDPOINT_URL || ''?q='' || sys.utl_url.escape(''{"ename":{"$instr": "'' || :P4_ENAME_CONTAINS || ''"}}'')',
'                                   end',
'                               else',
'                                   nvl(  :P4_THIS_URL, :SAMPLE_ENDPOINT_URL )',
'                               end',
'                           end;',
'',
'    :P4_SHOW_PAGE := null;',
'',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request(',
'        p_url              => :P4_THIS_URL,',
'        p_http_method      => ''GET'');',
'',
'    apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''REST_COLLECTION'',',
'        p_clob001 =>         l_response );',
'',
'    select',
'        x.next_page, ',
'        coalesce( x.prev_page, x.previous_page ) ',
'      -- TODO: replace with your page item names here',
'      into :P4_URL_NEXT_PAGE, :P4_URL_PREV_PAGE',
'    from apex_collections c, xmltable( ',
'        ''/json''',
'        passing apex_json.to_xmltype( c.clob001 )',
'        columns',
'            next_page     varchar2(500) path ''next/_ref'',',
'            prev_page     varchar2(500) path ''prev/_ref'',',
'            previous_page varchar2(500) path ''previous/_ref''',
'    ) x',
'    where c.collection_name = ''REST_COLLECTION'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1823119422279600605
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
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
 p_id=>wwv_flow_imp.id(3967084669931982900)
,p_plug_name=>'Set User Interface Theme Style'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
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
 p_id=>wwv_flow_imp.id(3967085114934982902)
,p_plug_name=>'items'
,p_parent_plug_id=>wwv_flow_imp.id(3967084669931982900)
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
 p_id=>wwv_flow_imp.id(3967085902724982903)
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
 p_id=>wwv_flow_imp.id(3967086272366982904)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3967086731220982904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3967086272366982904)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3967087042978982904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3967086272366982904)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3967088591286982906)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3967087042978982904)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3967085494006982902)
,p_name=>'P5_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3967085114934982902)
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
'and t.ui_type_name   = ''DESKTOP'''))
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
 p_id=>wwv_flow_imp.id(3967088047138982906)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number   => c1.theme_number,',
'            p_id => :P5_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3967087042978982904)
,p_process_success_message=>'Theme Style Set for All Users.'
,p_internal_uid=>3942853311438722763
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Set REST Service Endpoint'
,p_alias=>'SET-REST-SERVICE-ENDPOINT'
,p_page_mode=>'MODAL'
,p_step_title=>'Set REST Service Endpoint'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835790999010932021)
,p_plug_name=>'Set REST Service endpoint URL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835791201134932023)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835791337213932025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1835791201134932023)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835791224478932024)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1835791201134932023)
,p_button_name=>'APPLY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1835792199607932033)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1835791025156932022)
,p_name=>'P6_ENDPOINT_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1835790999010932021)
,p_prompt=>'REST Service URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'URL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(489299888737892380)
,p_validation_name=>'Endpoint URL must start with http'
,p_validation_sequence=>10
,p_validation=>'substr(:P6_ENDPOINT_URL, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please provide a URL that begins with, "http".'
,p_validation_condition=>'P6_ENDPOINT_URL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(1835791025156932022)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1835791410291932026)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1835791337213932025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1835791549719932027)
,p_event_id=>wwv_flow_imp.id(1835791410291932026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1835791658334932028)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set URL Endpoint'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response       clob;',
'    l_workspace_name apex_applications.workspace%type;',
'begin',
'    delete from eba_restdemo_sample_urls where name = ''ORDS EMP'';',
'    if :P6_ENDPOINT_URL is not null then',
'        insert into eba_restdemo_sample_urls ( name, url ) values (''ORDS EMP'', :P6_ENDPOINT_URL);',
'        :SAMPLE_ENDPOINT_URL := :P6_ENDPOINT_URL;',
'    else',
'        select workspace into l_workspace_name',
'          from apex_applications',
'         where application_id = v( ''APP_ID'' );',
'',
'         :SAMPLE_ENDPOINT_URL := apex_util.host_url(''APEX_PATH'') ||',
'             lower( l_workspace_name ) || ''/'' ||',
'            ''hr/employees'';',
'    end if;',
'        ',
'    begin',
'        :SAMPLE_SERVICE_AVAILABLE := ''OK'';',
'',
'        l_response := apex_web_service.make_rest_request( :SAMPLE_ENDPOINT_URL, ''GET'' );',
'',
'        if apex_web_service.g_status_code not between 200 and 299 then',
'            :SAMPLE_SERVICE_AVAILABLE := ''HTTP-''|| apex_web_service.g_status_code;',
'        end if;',
'',
'    exception',
'        when others then',
'          if sqlcode = -29273 then',
'              if instr(sqlerrm, ''24247'') > 0 then ',
'                  :SAMPLE_SERVICE_AVAILABLE := ''NO_ACL'';',
'              elsif instr(sqlerrm, ''29024'') > 0 then',
'                  :SAMPLE_SERVICE_AVAILABLE := ''NO_WALLET'';',
'              else ',
'                  :SAMPLE_SERVICE_AVAILABLE := ''NO_NETWORK'';',
'             end if;',
'         end if;',
'    end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1835791224478932024)
,p_process_success_message=>'REST Service Endpoint set. '
,p_internal_uid=>1811556922634671885
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1835791817023932030)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Endpoint URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select url ',
'      into :P6_ENDPOINT_URL',
'      from eba_restdemo_sample_urls',
'     where name = ''ORDS EMP'';',
'exception',
'    when NO_DATA_FOUND then',
'        :P6_ENDPOINT_URL := :SAMPLE_ENDPOINT_URL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1811557081323671887
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
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
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3889173515376290235)
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
 p_id=>wwv_flow_imp.id(5154072350927534501)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_imp.id(3889173515376290235)
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Make sure to create the Sample RESTful Service: Navigate to SQL Workshop, RESTful Services and click the "Reset Sample Data" link on the right pane.</p>',
'<p>Make sure that the APEX engine user (APEX_050100) can connect to the APEX server via HTTP. A <i>Network ACL</i> is needed. Have a look into the Application Express Installation Guide - chapter "Enabling Network Services in Oracle Database 11g or L'
||'ater" for more information.</p>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Express Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5154072547795534502)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(3889173515376290235)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'    <ul>',
'        <li><b>Simple Report</b> displays REST response data as a tabular report</li>',
'        <li><b>Report with Pagination</b> allows to browse through a larger REST response</li>',
'        <li><b>Report with Query</b> allows to pass filters to the REST service to return only a subset of data</li>',
'        <li><b>Local REST Data</b> allows to download all data from a REST service to a local table, even when data is being returned pagewise.</li>',
'        <li><b>DML Form</b> shows how to execute a PUT request to a REST service from an Application Express form.</li>',
'  </ul>',
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
 p_id=>wwv_flow_imp.id(5154072750985534502)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(3889173515376290235)
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'',
'<p>This example application demonstrates how to access and use an external REST service with Application Express Components. Application Developers can review the components needed to display data from a REST service as a report, to use pagination or'
||' to pass filters to the REST service. An example how send data to a REST service is also contained.</p>',
'',
'<p>The first page, "Simple Report", fetches data from the REST service and displays it as a tabular report. That is a quick and easy way to display small amounts of data from a REST service within an Application Express page.</p>',
'',
'<p>The second page, "Report with Pagination", does also work with REST services returning large amounts of data. Typically, REST services only return their results page-wise. Each page contains the HTTP url to the next and to the previous page. The R'
||'eport with Pagination example extracts these URLs from the service response and shows how to add Application Express buttons to navigate between the pages. So it becomes possible to browse through a larger REST response while keeping scalability - ea'
||'ch request only contains a reasonable amount of data.</p>',
'',
'<p>The "Report with Query" page shows how to pass a query filter to the REST service. Again, when REST services return large amounts of data, it''s not feasible to fetch all that data to the APEX application and do filtering there. The query filter mu'
||'st be sent to the REST service in order to retrieve only the desired results.</p>',
'',
'<p>The "Local Rest Data" page shows how to download the complete REST service response to a local table - in order to do extensive reporting and analytics. When REST services return their results pagewise, we have to perform multiple requests in orde'
||'r to download all data into a local table. That page shows how such a process looks like. Clicking a button leads to all data being fetched into the table - the process fetches the next page as long as no further pages exist.</p>',
'',
'<p>The "DML Form" page shows how to manipulate data by sending a PUT request to the server. The page displays a typicall Application Express form. However, instead of the normal Automatic Fetch Row or Automatic Row Process processes, we  have PL/SQL '
||'code which fetches form data from the REST service and which uploads the updated information to the service.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3889173571494290236)
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
 p_id=>wwv_flow_imp.id(3889173679859290237)
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
 p_id=>wwv_flow_imp.id(3889173827554290238)
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
 p_id=>wwv_flow_imp.id(3889173927424290239)
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
 p_id=>wwv_flow_imp.id(5154071724638534494)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Manual REST Services'
,p_alias=>'MANUAL-REST-SERVICES'
,p_step_title=>'Manual REST Services'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113599468104535596)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>Starting with Application Express 18.1, components like reports, charts or calendards provide native support for Web Services. The APEX_EXEC package PL/SQL package allows to work with a REST service on a higher level, without having the need to fe'
||'tch and parse JSON data manually. So it''s recommended to use these features instead of manual low-level coding with APEX_WEB_SERVICE. Use manual coding only when the native functionality does not meet your requirements.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2503006337133098544)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Access and use external REST services in your Applications.'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2555333252510459079)
,p_plug_name=>'Network Privileges required'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle Application Express Engine cannot connect to REST services over HTTP, because there is no <em>Network ACL</em> configured for the Application Express engine. In order to make this application work, configure a Network ACL enabling the A'
||'pplication Express Engine user <strong>&P10_APEX_OWNER.</strong> to connect to <strong>&SAMPLE_ENDPOINT_URL.</strong>. See <strong>Enabling Network Services in Oracle Database 11g or Later</strong> within <strong>Oracle Application Express Installati'
||'on Guide</strong> for more information. Having done that, log out and back into this application.</p>',
''))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'NO_ACL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2555333377026459080)
,p_plug_name=>'SSL Certificate Error'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle Application Express Engine can connect to the REST service endpoint, but cannot validate the server''s SSL certificate. Make sure that a wallet is configured for the Application Express instance. See <strong>Configuring Instance Settings'
||'</strong> - <strong>Configuring Wallet Information</strong> in the <strong>Application Express Administration Guide</strong> for more information.</p>',
'<p>If the example REST service is accessible under another URL, navigate to the <strong>Administration</strong> page in this application, change the <strong>REST Service URL</strong> for this application to work with and log out and back into the app'
||'lication.</p>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'NO_WALLET'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2555333423139459081)
,p_plug_name=>'Example REST Service not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The example REST service this application is working on, <strong>oracle.example.hr</strong>, is not configured correctly, has been created with an older Application Express version or does not exist. Please navigate to <strong>SQL Workshop &gt; RE'
||'STful Services</strong>. Make sure to use <strong>ORDS Based REST Services</strong>. If your schema is not yet registered with ORDS, register it and ensure that the <strong>Install Sample Service</strong> switch is set to <strong>Yes</strong>.  If th'
||'e schema is already registered with ORDS, click the <strong>Reset Sample Service</strong> button to re-create the example REST service. Check the following URL in your browser, whether it returns JSON data <strong>{"version": "21.2"}</strong>. Then l'
||'og out and back into this application.</p>',
'<p><a href="&P10_REST_VERSION_URL." target="_blank">&P10_REST_VERSION_URL.</a> </p>',
'<p>If the example REST service is accessible under another URL, navigate to the <strong>Administration</strong> page and change the <strong>REST Service URL</strong> to point to your example REST service.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'instr(:SAMPLE_SERVICE_AVAILABLE, ''HTTP'') >0 or :SAMPLE_SERVICE_AVAILABLE = ''WRONG_SERVICE'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2555334508746459092)
,p_plug_name=>'REST service not reachable'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle Application Express Engine cannot connect to the REST service because the network connection to "<strong>&SAMPLE_ENDPOINT_URL.</strong>" fails. If your database is behind a firewall, make sure to set the proxy server correctly in <stron'
||'g>Shared Components &gt; Application Definition Attributes</strong>.</p>',
'<p>If the example REST service is accessible under another URL, navigate to the <strong>Administration</strong> page and change the <strong>REST Service URL</strong> to point to your example REST service.</p>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'NO_NETWORK'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2584489006931642882)
,p_plug_name=>'Enable Network ACL on Oracle12c'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To enable all network conections for the APEX Engine, execute the following while connected as a user with DBA privileges (SYS):</p>',
'<pre>',
'begin',
'    dbms_network_acl_admin.APPEND_HOST_ACE(',
'        host => ''*'',',
'        ace  => xs$ace_type(',
'                    privilege_list => xs$name_list(''connect''),',
'                        principal_name => ''&P10_APEX_OWNER.'',',
'                        principal_type => xs_acl.ptype_db',
'                )',
'    );',
'end;',
'</pre>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':SAMPLE_SERVICE_AVAILABLE = ''NO_ACL'' and sys.dbms_db_version.ver_le_11_2 = false'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2584489112854642883)
,p_plug_name=>'Enable Network ACL on Oracle11g'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To enable all network conections for the APEX Engine, execute the following while connected as a user with DBA privileges (SYS):</p>',
'<pre>',
'declare',
'    acl_path  varchar2(4000);',
'begin',
'    select acl ',
'      into acl_path ',
'      from dba_network_acls',
'     where host = ''*'' ',
'       and lower_port is null ',
'       and upper_port is null;',
'',
'    if dbms_network_acl_admin.check_privilege( acl_path, ''&P10_APEX_OWNER.'', ''connect'' ) is null then',
'        dbms_network_acl_admin.add_privilege( acl_path,  ''&P10_APEX_OWNER.'', true, ''connect'' );',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        dbms_network_acl_admin.create_acl(',
'            ''power_users.xml'',',
'            ''acl that lets power users to connect to everywhere'',',
'            ''&P10_APEX_OWNER.'',',
'            true, ',
'            ''connect'' );',
'        dbms_network_acl_admin.assign_acl( ''power_users.xml'', ''*'' );',
'end;',
'</pre>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':SAMPLE_SERVICE_AVAILABLE = ''NO_ACL'' and sys.dbms_db_version.ver_le_11_2 = true'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4375908125109370000)
,p_plug_name=>'REST Service - Examples'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(3158604431959993486)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'OK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4375908242926370001)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This application showcases how to access external REST services from Oracle Application Express pages using manual PL/SQL programming and the <strong>APEX_WEB_SERVICE</strong> package. The pages work on the sample RESTful Service, <strong>oracle.exam'
||'ple.hr</strong>, which can be created in <strong>SQL Workshop > RESTful Services > Reset Sample Service</strong>.',
'</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(746289963665466585)
,p_name=>'P10_APEX_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2555333252510459079)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(746290965688466592)
,p_name=>'P10_REST_VERSION_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2555333423139459081)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(746292065653466600)
,p_computation_sequence=>10
,p_computation_item=>'P10_APEX_OWNER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_owner varchar2(128);',
'begin',
'    begin',
'        select table_owner ',
'          into l_owner',
'          from all_synonyms',
'         where synonym_name = ''F'' ',
'           and owner        = ''PUBLIC''',
'           and rownum       = 1;',
'    exception ',
'        when others then ',
'            l_owner := ''{APEX Owner}'';',
'    end;',
'    return l_owner;',
'end;'))
,p_compute_when=>'SAMPLE_SERVICE_AVAILABLE'
,p_compute_when_text=>'NO_ACL'
,p_compute_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(746292405545466600)
,p_computation_sequence=>20
,p_computation_item=>'P10_REST_VERSION_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'replace( :SAMPLE_ENDPOINT_URL, ''/employees'', ''/version'' )'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Local REST Data'
,p_alias=>'LOCAL-REST-DATA'
,p_step_title=>'Local REST Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
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
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1783462686416571472)
,p_plug_name=>'Chart (Local Data)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select * from eba_restdemo_sample_emp'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1783462690021571473)
,p_region_id=>wwv_flow_imp.id(1783462686416571472)
,p_chart_type=>'combo'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
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
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1783462871389571474)
,p_chart_id=>wwv_flow_imp.id(1783462690021571473)
,p_seq=>10
,p_name=>'Salary By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(to_char(deptno), ''None'') as deptno, sum(sal) as sal from eba_restdemo_sample_emp',
'group by deptno'))
,p_series_type=>'bar'
,p_items_value_column_name=>'SAL'
,p_items_label_column_name=>'DEPTNO'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1783463103198571477)
,p_chart_id=>wwv_flow_imp.id(1783462690021571473)
,p_seq=>20
,p_name=>'Commission By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(to_char(deptno), ''None'') as deptno, sum(rn) as rn from eba_restdemo_sample_emp',
'group by deptno'))
,p_series_type=>'bar'
,p_items_value_column_name=>'RN'
,p_items_label_column_name=>'DEPTNO'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1783463231675571478)
,p_chart_id=>wwv_flow_imp.id(1783462690021571473)
,p_seq=>30
,p_name=>'Employee Count'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(to_char(deptno), ''None'') as deptno, count(empno) as emp_cnt from eba_restdemo_sample_emp',
'group by deptno'))
,p_series_type=>'bar'
,p_items_value_column_name=>'EMP_CNT'
,p_items_label_column_name=>'DEPTNO'
,p_line_style=>'solid'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1783463012370571476)
,p_chart_id=>wwv_flow_imp.id(1783462690021571473)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(1783463348864571479)
,p_chart_id=>wwv_flow_imp.id(1783462690021571473)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1783462919054571475)
,p_chart_id=>wwv_flow_imp.id(1783462690021571473)
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
 p_id=>wwv_flow_imp.id(1783463462627571480)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8502926245293180729)
,p_plug_name=>'About this page'
,p_region_template_options=>'margin-bottom-lg'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When doing extensive reporting and analysis on data from REST services, it often makes sense to download the data to a local table beforehand.</p>',
'<ul>',
'<li>The local application becomes independent from REST service availibility</li>',
'<li>Savings on network bandwidth or REST Call Rate consumption: A REST request is not being performed for each page visit any more</li>',
'<li>Some REST services even don''t allow to fetch all their data with one request - clients must fetch the data on a page by page basis.</li>',
'</ul>',
'<p>This page shows how to first download data from the REST service to a local table - the PL/SQL loading code detects when there is a "next" page and fetches all pages until the end of response has been reached. Then a tabular report and a JET chart'
||' visualize data from the local tables..</p>',
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
 p_id=>wwv_flow_imp.id(8691956371318002950)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15709060213878512588)
,p_plug_name=>'Data from RESTful Service'
,p_region_name=>'report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>'select * from eba_restdemo_sample_emp'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15709060298449512588)
,p_name=>'APEX Collections View'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No local data found. Click the <b>Load Data</b> button.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV'
,p_enable_mail_download=>'N'
,p_owner=>'JOEL'
,p_internal_uid=>15675635511276041352
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848941605086508511)
,p_db_column_name=>'RN'
,p_display_order=>10
,p_column_identifier=>'Z'
,p_column_label=>'Row Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848938986209508504)
,p_db_column_name=>'EMPNO'
,p_display_order=>20
,p_column_identifier=>'S'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848939287823508509)
,p_db_column_name=>'ENAME'
,p_display_order=>30
,p_column_identifier=>'T'
,p_column_label=>'Ename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848939664117508509)
,p_db_column_name=>'JOB'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848940025447508509)
,p_db_column_name=>'MGR'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Mgr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848940435076508510)
,p_db_column_name=>'HIREDATE'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848940836018508510)
,p_db_column_name=>'SAL'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'Sal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1848941269278508510)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'Y'
,p_column_label=>'Deptno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15709061814301513096)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'18155176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>':EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:DEPTNO:RN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1783463551636571481)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1783463462627571480)
,p_button_name=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Local Data'
,p_button_position=>'NEXT'
,p_button_condition=>'select * from eba_restdemo_sample_emp'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1783462269467571468)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1783463462627571480)
,p_button_name=>'DOWNLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
,p_button_condition=>'select * from eba_restdemo_sample_emp'
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-cloud-download'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1783462324953571469)
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1783462470184571470)
,p_name=>'P11_ROWS_LOADED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15709060213878512588)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1783462541050571471)
,p_name=>'P11_PAGES_FETCHED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15709060213878512588)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1783462172026571467)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load REST data into local table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    C_MAX_ROWS     number           := null;',
'',
'    l_response     clob;',
'    l_url          varchar2(32767);',
'    l_finish       boolean          := false;',
'    l_rows_loaded  number           := 0;',
'    l_pages_fetched number          := 0;',
'begin',
'    l_url := :SAMPLE_ENDPOINT_URL;',
'    ',
'    delete from "EBA_RESTDEMO_SAMPLE_EMP";',
'    ',
'    while not l_finish loop',
'        l_response := apex_web_service.make_rest_request(',
'            p_url              => l_url,',
'            p_http_method      => ''GET'');',
'',
'        insert into "EBA_RESTDEMO_SAMPLE_EMP" (',
'            select ',
'                x.EMPNO, ',
'                x.ENAME, ',
'                x.JOB, ',
'                x.MGR, ',
'                to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'                x.SAL, ',
'                x.DEPTNO, ',
'                x.RN',
'            from xmltable(',
'                ''/json/items/row''',
'                passing apex_json.to_xmltype( l_response )',
'                columns',
'                    EMPNO      NUMBER          path ''empno'',',
'                    ENAME      VARCHAR2(4000)  path ''ename'',',
'                    JOB        VARCHAR2(4000)  path ''job'',',
'                    MGR        NUMBER          path ''mgr'',',
'                    HIREDATE   VARCHAR2(4000)  path ''hiredate'',',
'                    SAL        NUMBER          path ''sal'',',
'                    DEPTNO     NUMBER          path ''deptno'',',
'                    RN         NUMBER          path ''rn''',
'            ) x',
'        );',
'',
'        l_rows_loaded := l_rows_loaded + nvl( sql%rowcount, 0 );',
'        l_pages_fetched := l_pages_fetched + 1;',
'        if l_rows_loaded >= C_MAX_ROWS then ',
'            l_finish := true;',
'        end if;',
'        ',
'        select',
'            x.next_page into l_url ',
'        from xmltable( ',
'            ''/json''',
'            passing apex_json.to_xmltype( l_response )',
'            columns',
'                next_page varchar2(500) path ''next/_ref''',
'        ) x;',
'        ',
'        if l_url is null then l_finish := true; end if;',
'    end loop;',
'    :P11_PAGES_FETCHED := l_pages_fetched;',
'    :P11_ROWS_LOADED := l_rows_loaded;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1783462269467571468)
,p_process_success_message=>'&P11_ROWS_LOADED. row(s) fetched in &P11_PAGES_FETCHED. page(s).'
,p_internal_uid=>1759227436326311324
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1783463619312571482)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purge Local Data'
,p_process_sql_clob=>'delete from eba_restdemo_sample_emp;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1783463551636571481)
,p_internal_uid=>1759228883612311339
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'DML Form'
,p_alias=>'DML-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'DML Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
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
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1848990208724775746)
,p_plug_name=>'EMP Form'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1848991302687775757)
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
 p_id=>wwv_flow_imp.id(10903922593015875787)
,p_plug_name=>'REST Service Endpoint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'sys.htp.p(''REST Service Endpoint: <b>'' || apex_escape.html(:SAMPLE_ENDPOINT_URL) || ''/'' || apex_escape.html(:P12_EMPNO) || ''</b>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12125895877647967168)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a data manipulation form for a REST service. On page load, the individual row is being fetched from the REST service. Using the form, the data might be changed and saved back to the REST service using a <b>PUT</b> request.</p>',
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
 p_id=>wwv_flow_imp.id(1848991424040775758)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1848991302687775757)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1848991644492775760)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1848991302687775757)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1848992048429775764)
,p_branch_action=>'f?p=&APP_ID.:&P12_BACK_TO_PAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1848990326195775747)
,p_name=>'P12_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Empno'
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
 p_id=>wwv_flow_imp.id(1848990436157775748)
,p_name=>'P12_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1848990488208775749)
,p_name=>'P12_JOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1848990590975775750)
,p_name=>'P12_COMM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Commission'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1848990699897775751)
,p_name=>'P12_ENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1848990793229775752)
,p_name=>'P12_HIREDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Hire Date'
,p_format_mask=>'YYYY/MM/DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(1848990981295775753)
,p_name=>'P12_SAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1848991008472775754)
,p_name=>'P12_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_prompt=>'Department #'
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
 p_id=>wwv_flow_imp.id(1848991968303775763)
,p_name=>'P12_BACK_TO_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1848990208724775746)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1848991748737775761)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1848991644492775760)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1848991807305775762)
,p_event_id=>wwv_flow_imp.id(1848991748737775761)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1849044261597592105)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch data into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response clob;',
'begin',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request(',
'        p_url              => :SAMPLE_ENDPOINT_URL || ''/'' || :P12_EMPNO,',
'        p_http_method      => ''GET'');',
'',
'    apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''REST_COLLECTION'',',
'        p_clob001 =>         l_response );       ',
'       ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1824809525897331962
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1848991157531775755)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Parse JSON data to items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'-- fetch data into items',
'    select ',
'        x.ENAME, ',
'        x.JOB, ',
'        x.MGR, ',
'        to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'        x.SAL, ',
'        x.comm,',
'        x.DEPTNO ',
'    into',
'        :P12_ENAME,',
'        :P12_JOB,',
'        :P12_MGR,',
'        :P12_HIREDATE,',
'        :P12_SAL,',
'        :P12_COMM,',
'        :P12_DEPTNO',
'    from apex_collections c, xmltable(',
'        ''/json''',
'        passing apex_json.to_xmltype( c.clob001 )',
'        columns',
'            ENAME      VARCHAR2(4000)  path ''ename'',',
'            JOB        VARCHAR2(4000)  path ''job'',',
'            MGR        NUMBER          path ''mgr'',',
'            HIREDATE   VARCHAR2(4000)   path ''hiredate'',',
'            SAL        NUMBER          path ''sal'',',
'            COMM       NUMBER          path ''comm'',',
'            DEPTNO     NUMBER          path ''deptno''',
'    ) x',
'    where c.collection_name = ''REST_COLLECTION'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1824756421831515612
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1848991533732775759)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- PL/SQL code to perform DML on REST service',
'declare',
'    l_request  clob;',
'    l_response clob;',
'begin',
'    -- Set HTTP Request Headers',
'    apex_web_service.g_request_headers.delete;',
'',
'    apex_web_service.g_request_headers(1).name  := q''#Content-Type#'';',
'    apex_web_service.g_request_headers(1).value := q''#application/json#'';',
'    ',
'    apex_json.initialize_clob_output(DBMS_LOB.CALL, true, 2);',
'    apex_json.open_object();',
'    apex_json.write(''ename'',    :P12_ENAME);',
'    apex_json.write(''job'',      :P12_JOB);',
'    apex_json.write(''hiredate'', to_date( :P12_HIREDATE, ''YYYY/MM/DD'' ));',
'    apex_json.write(''sal'',      to_number( :P12_SAL) );',
'    apex_json.write(''comm'',     to_number( :P12_COMM) );',
'    apex_json.write(''mgr'',      to_number( :P12_MGR) );',
'    apex_json.write(''deptno'',   to_number( :P12_DEPTNO) );',
'    apex_json.close_object; ',
'',
'    l_response := apex_web_service.make_rest_request(',
'        p_url         => :SAMPLE_ENDPOINT_URL || ''/'' || :P12_EMPNO,',
'        p_http_method => ''PUT'',',
'        p_body        => apex_json.get_clob_output );',
'        ',
'    -- test whether request was successful - HTTP Status code is 2xx, then',
'    if apex_web_service.g_status_code not between 200 and 299 then',
'        raise_application_error(-20000, ''HTTP-''|| apex_web_service.g_status_code);',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'REST PUT request failed with server response: #SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1848991424040775758)
,p_process_success_message=>'REST PUT request sent - changes applied.'
,p_internal_uid=>1824756798032515616
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3158596850131880828)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(3158596035235880822)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3158616537734137067)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_name=>'Reset Data'
,p_alias=>'RESET-DATA'
,p_step_title=>'Reset Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3158615240078133728)
,p_plug_name=>'Manage Sample Application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_source=>'<span class="infoTextRegion"><p>Click the reset data button to reset application state.</p></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3158615935353133731)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3158615436562133728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3158615935353133731)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3158615651179133729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3158615935353133731)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3158617227830142717)
,p_branch_name=>'go back to admin'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3158616231657133731)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    delete from eba_restdemo_sample_emp;',
'    delete from eba_restdemo_sample_urls;',
'    delete from eba_restdemo_sample_github;',
'    delete from eba_restdemo_sample_lang;',
'',
'    insert into eba_restdemo_sample_urls ( name, url ) values (''Github API'', ''https://api.github.com'');',
'    ',
'    insert into eba_restdemo_sample_lang values (''Java'', ''James Gosling'');',
'    insert into eba_restdemo_sample_lang values (''PLSQL'', ''Oracle Corporation'');',
'    insert into eba_restdemo_sample_lang values (''Ruby'', ''Yukihiro Matsumoto'' );',
'    insert into eba_restdemo_sample_lang values (''Python'', ''Guido van Rossum'');',
'    insert into eba_restdemo_sample_lang values (''CSS'', ''Hakon Wium Lie'');',
'    insert into eba_restdemo_sample_lang values (''C#'', ''Microsoft Corporation'' );',
'    insert into eba_restdemo_sample_lang values (''Go'', ''Google'');',
'    insert into eba_restdemo_sample_lang values (''Shell'', ''N/A'');',
'    insert into eba_restdemo_sample_lang values (''SQLPL'', ''N/A'');',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application has been reset.'
,p_internal_uid=>3134381495956873588
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Sign In | &APP_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.appIcon.sample_rest_services {',
'background-position:-192px -320px;',
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
,p_page_comment=>'This page was generated by the Login Page wizard'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10578013818860153294)
,p_plug_name=>'Sample REST Services'
,p_region_name=>'sample_rest_services'
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
 p_id=>wwv_flow_imp.id(7741690935982027400)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10578013818860153294)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10578013901941153302)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10578013818860153294)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10578014007905153304)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10578013818860153294)
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
 p_id=>wwv_flow_imp.id(3137252023710681986)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3137252321816681989)
,p_event_id=>wwv_flow_imp.id(3137252023710681986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3137252531127681992)
,p_event_id=>wwv_flow_imp.id(3137252023710681986)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10578014300596153314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10553779564895893171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10578014197432153306)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10553779461731893163
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10578014404438153314)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>10553779668737893171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10578014506250153314)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10553779770549893171
);
end;
/
prompt --application/pages/page_00221
begin
wwv_flow_imp_page.create_page(
 p_id=>221
,p_name=>'Github Repositories'
,p_alias=>'GITHUB-REPOSITORIES'
,p_step_title=>'Github Repositories'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showDetails( pRepository ) {',
'    $s("P221_REPO", pRepository);',
'    apex.event.trigger( document, "refresh_details");',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fa-issues-true:before{content:"\f145"}',
'.fa-downloads-true:before{content:"\f019"}',
'.fa-pages-true:before{content:"\f016"}',
'.fa-wiki-true:before{content:"\e964"}',
'.fa-projects-true:before{content:"\e958"}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83798616670627142)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(742637646955456027)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This example makes use of the <a href="https://api.github.com/" target="_blank">Github API</a>. In Shared Components, the Web Source <strong>Sample Application - Github Repositories</strong> references all repositories of <strong>oracle</strong> G'
||'ithub user. Further Web Source Modules are available for <em>Commits</em>, <em>Issues</em> and <em>Pull Requests</em>.</p>',
'<p>This page renders some important repository attributes as an Interactive Report. The report behaves like a report on a local table; all interactive report features like searching, sorting or computations are available. Clicking on the repository n'
||'ame opens a modal dialog showing repository details as Report, Calendar or Cards view.</p>',
'<p>To avoid too many HTTP requests, <em>Caching</em> is enabled for this Web Source Module (Shared Components &gt; Web Source Modules &gt; Github &gt; Operations &gt; Caching).</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(746172545677057597)
,p_plug_name=>'Repositories'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(746022179193006341)
,p_query_type=>'SQL'
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
 p_id=>wwv_flow_imp.id(746172700369057598)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CARSTEN'
,p_internal_uid=>719427095293118114
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746172711590057599)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746172903368057600)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:RP:P222_REPO:#NAME#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746172938095057601)
,p_db_column_name=>'AVATAR_URL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Logo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173223443057604)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174795589057619)
,p_db_column_name=>'WATCHERS'
,p_display_order=>50
,p_column_identifier=>'U'
,p_column_label=>'Watchers'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174573444057617)
,p_db_column_name=>'FORKS_COUNT'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Forks'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173443519057606)
,p_db_column_name=>'UPDATED_AT'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173649984057608)
,p_db_column_name=>'SIZE_'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Size '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FILESIZE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173752726057609)
,p_db_column_name=>'STARGAZERS_COUNT'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Stargazers'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173870412057610)
,p_db_column_name=>'WATCHERS_COUNT'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Watchers count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173911886057611)
,p_db_column_name=>'LANGUAGE'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Language'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174063311057612)
,p_db_column_name=>'HAS_ISSUES'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Issues'
,p_column_html_expression=>'<span class="fa fa-issues-#HAS_ISSUES#"></span>&nbsp;#OPEN_ISSUES_COUNT#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174184054057613)
,p_db_column_name=>'HAS_PROJECTS'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Projects'
,p_column_html_expression=>'<span class="fa fa-projects-#HAS_PROJECTS#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174242088057614)
,p_db_column_name=>'HAS_DOWNLOADS'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Downloads'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174351480057615)
,p_db_column_name=>'HAS_WIKI'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Wiki'
,p_column_html_expression=>'<span class="fa fa-wiki-#HAS_WIKI#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174446641057616)
,p_db_column_name=>'HAS_PAGES'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Pages'
,p_column_html_expression=>'<span class="fa fa-pages-#HAS_PAGES#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173394280057605)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>170
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'mm/dd/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174807394057620)
,p_db_column_name=>'LICENSE'
,p_display_order=>180
,p_column_identifier=>'V'
,p_column_label=>'License'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173056954057602)
,p_db_column_name=>'HTML_URL'
,p_display_order=>190
,p_column_identifier=>'D'
,p_column_label=>'Html url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173603530057607)
,p_db_column_name=>'HOMEPAGE'
,p_display_order=>200
,p_column_identifier=>'I'
,p_column_label=>'Homepage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746173123201057603)
,p_db_column_name=>'SITE_ADMIN'
,p_display_order=>210
,p_column_identifier=>'E'
,p_column_label=>'Site admin'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174654350057618)
,p_db_column_name=>'OPEN_ISSUES_COUNT'
,p_display_order=>220
,p_column_identifier=>'T'
,p_column_label=>'Open issues count'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(746174906291057621)
,p_db_column_name=>'DOWNLOADS_URL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Downloads url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(746216879008073244)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'7194713'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'AVATAR_URL:NAME:LANGUAGE:DESCRIPTION:UPDATED_AT:STARGAZERS_COUNT:HAS_ISSUES:HAS_DOWNLOADS:SIZE_:FORKS_COUNT:CREATED_AT::DOWNLOADS_URL'
,p_chart_type=>'pie'
,p_chart_label_column=>'LANGUAGE'
,p_chart_value_column=>'WATCHERS'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73418156304526206)
,p_name=>'Show Issues'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P221_DETAIL'
,p_condition_element=>'P221_DETAIL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ISSUES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73418480459526209)
,p_name=>'Show Pulls'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P221_DETAIL'
,p_condition_element=>'P221_DETAIL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PULLS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
end;
/
prompt --application/pages/page_00222
begin
wwv_flow_imp_page.create_page(
 p_id=>222
,p_name=>'Repository Details'
,p_alias=>'REPOSITORY-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Repository Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(73420227462526227)
,p_name=>'Commits (Report)'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(74820889094403144)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P222_REPO'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No commits found for this repository.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73420312204526228)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_column_link=>'#HTML_URL#'
,p_column_linktext=>'#NAME#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73420473547526229)
,p_query_column_id=>2
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73420597214526230)
,p_query_column_id=>3
,p_column_alias=>'DATE_'
,p_column_display_sequence=>1
,p_column_heading=>'Commit'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73420678684526231)
,p_query_column_id=>4
,p_column_alias=>'COMMITTER_NAME'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73420817900526233)
,p_query_column_id=>5
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>4
,p_column_heading=>'Message'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre style="width: 30%">',
'#MESSAGE#',
'</pre>'))
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73420953102526234)
,p_query_column_id=>6
,p_column_alias=>'COMMENT_COUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Comments'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74843481998431685)
,p_query_column_id=>7
,p_column_alias=>'HTML_URL'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74843580439431686)
,p_query_column_id=>8
,p_column_alias=>'COMMITTER_LOGIN'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74843674571431687)
,p_query_column_id=>9
,p_column_alias=>'COMMITTER_IMAGE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(74843802299431688)
,p_page_id=>222
,p_web_src_param_id=>wwv_flow_imp.id(74821560689403146)
,p_page_plug_id=>wwv_flow_imp.id(73420227462526227)
,p_value_type=>'ITEM'
,p_value=>'P222_REPO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74846162297431712)
,p_plug_name=>'Commits (Calendar)'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(74820889094403144)
,p_query_type=>'SQL'
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P222_REPO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'NAME',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'DATE_',
  'supplemental_information', '&MESSAGE.',
  'view_edit_link', '&HTML_URL.')).to_clob
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(74846222034431713)
,p_page_id=>222
,p_web_src_param_id=>wwv_flow_imp.id(74821560689403146)
,p_page_plug_id=>wwv_flow_imp.id(74846162297431712)
,p_value_type=>'ITEM'
,p_value=>'P222_REPO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83862141296703910)
,p_plug_name=>'Commits (Chart)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83862217517703911)
,p_region_id=>wwv_flow_imp.id(83862141296703910)
,p_chart_type=>'donut'
,p_height=>'500'
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
,p_value_format_scaling=>'auto'
,p_sorting=>'value-desc'
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
 p_id=>wwv_flow_imp.id(83862387972703912)
,p_chart_id=>wwv_flow_imp.id(83862217517703911)
,p_seq=>10
,p_name=>'Commits by Name'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(74820889094403144)
,p_items_label_column_name=>'NAME'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(83862614623703915)
,p_page_id=>222
,p_web_src_param_id=>wwv_flow_imp.id(74821560689403146)
,p_jet_chart_series_id=>wwv_flow_imp.id(83862387972703912)
,p_value_type=>'ITEM'
,p_value=>'P222_REPO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(120649301203693375)
,p_name=>'Pull Requests'
,p_template=>4072358936313175081
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--compact:t-Cards--displayInitials:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(746159683097043055)
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       HTML_URL as card_link, ',
'       NUMBER_,',
'       STATE as card_title,',
'       apex_string.get_initials(login) as card_initials ,',
'       LOGIN as card_text,',
'       title as card_subtext,',
'       ID_2,',
'       AVATAR_URL as card_image,',
'       GRAVATAR_ID,',
'       ASSIGNEE_LOGIN,',
'       ASSIGNEE_ID',
'  from #APEX$SOURCE_DATA#'))
,p_source_post_processing=>'SQL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P222_REPO'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Pull requests found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73978810192106674)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(742637794026456028)
,p_query_column_id=>2
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Card link'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73979299411106675)
,p_query_column_id=>3
,p_column_alias=>'NUMBER_'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(742638223024456033)
,p_query_column_id=>4
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>12
,p_column_heading=>'Card title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(742637811865456029)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>8
,p_column_heading=>'Card initials'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(742637919214456030)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Card text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(742638005854456031)
,p_query_column_id=>7
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Card subtext'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73980875775106676)
,p_query_column_id=>8
,p_column_alias=>'ID_2'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(742638138550456032)
,p_query_column_id=>9
,p_column_alias=>'CARD_IMAGE'
,p_column_display_sequence=>11
,p_column_heading=>'Card image'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73981648406106676)
,p_query_column_id=>10
,p_column_alias=>'GRAVATAR_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73982092281106677)
,p_query_column_id=>11
,p_column_alias=>'ASSIGNEE_LOGIN'
,p_column_display_sequence=>1
,p_column_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73982450775106677)
,p_query_column_id=>12
,p_column_alias=>'ASSIGNEE_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(73420109804526226)
,p_page_id=>222
,p_web_src_param_id=>wwv_flow_imp.id(746160404628043056)
,p_page_plug_id=>wwv_flow_imp.id(120649301203693375)
,p_value_type=>'ITEM'
,p_value=>'P222_REPO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(742638404834456034)
,p_name=>'Commits (Cards)'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(74820889094403144)
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as card_text,',
'       apex_string.get_initials(name) as card_initials,',
'       EMAIL,',
'       DATE_ as card_title,',
'       COMMITTER_NAME,',
'       MESSAGE as card_subtext,',
'       COMMENT_COUNT,',
'       ''#'' as card_link,',
'       COMMITTER_LOGIN,',
'       COMMITTER_IMAGE',
'  from #APEX$SOURCE_DATA#',
' order by date_ desc'))
,p_source_post_processing=>'SQL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P222_REPO'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No commits found for this repository.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860673604703895)
,p_query_column_id=>1
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card text'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860773531703896)
,p_query_column_id=>2
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>7
,p_column_heading=>'Card initials'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83859844208703887)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860848430703897)
,p_query_column_id=>4
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'Card title'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860047428703889)
,p_query_column_id=>5
,p_column_alias=>'COMMITTER_NAME'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860985257703898)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Card subtext'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860262699703891)
,p_query_column_id=>7
,p_column_alias=>'COMMENT_COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83861015636703899)
,p_query_column_id=>8
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Card link'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860446073703893)
,p_query_column_id=>9
,p_column_alias=>'COMMITTER_LOGIN'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83860548394703894)
,p_query_column_id=>10
,p_column_alias=>'COMMITTER_IMAGE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(83859632781703885)
,p_page_id=>222
,p_web_src_param_id=>wwv_flow_imp.id(74821560689403146)
,p_page_plug_id=>wwv_flow_imp.id(742638404834456034)
,p_value_type=>'ITEM'
,p_value=>'P222_REPO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(793412240537225727)
,p_name=>'Issues'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(746045977814036458)
,p_query_type=>'SQL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P222_REPO'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Issues found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73419844225526223)
,p_query_column_id=>1
,p_column_alias=>'HTML_URL'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73983657082107590)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73984020287107590)
,p_query_column_id=>3
,p_column_alias=>'NUMBER_'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73984498067107591)
,p_query_column_id=>4
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_column_link=>'#HTML_URL#'
,p_column_linktext=>'#TITLE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73984865793107591)
,p_query_column_id=>5
,p_column_alias=>'USER_LOGIN'
,p_column_display_sequence=>4
,p_column_heading=>'User'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73985268564107591)
,p_query_column_id=>6
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73985635168107591)
,p_query_column_id=>7
,p_column_alias=>'USER_AVATAR_URL'
,p_column_display_sequence=>5
,p_column_heading=>'User'
,p_column_html_expression=>'<img alt="User Avatar" src="#USER_AVATAR_URL#" width="120">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73986041380107592)
,p_query_column_id=>8
,p_column_alias=>'USER_TYPE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73986435565107592)
,p_query_column_id=>9
,p_column_alias=>'STATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73986832049107592)
,p_query_column_id=>10
,p_column_alias=>'LOCKED'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73987235980107593)
,p_query_column_id=>11
,p_column_alias=>'ASSIGNEE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73987703604107593)
,p_query_column_id=>12
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73988015532107593)
,p_query_column_id=>13
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>19
,p_column_heading=>'Comments Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73988425030107594)
,p_query_column_id=>14
,p_column_alias=>'CREATED_AT'
,p_column_display_sequence=>14
,p_column_heading=>'Created'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73988836512107594)
,p_query_column_id=>15
,p_column_alias=>'UPDATED_AT'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73989291622107594)
,p_query_column_id=>16
,p_column_alias=>'CLOSED_AT'
,p_column_display_sequence=>16
,p_column_heading=>'Closed'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73989678254107595)
,p_query_column_id=>17
,p_column_alias=>'AUTHOR_ASSOCIATION'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73990084616107595)
,p_query_column_id=>18
,p_column_alias=>'ASSIGNEE_LOGIN'
,p_column_display_sequence=>6
,p_column_heading=>'Assignee'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73990492481107596)
,p_query_column_id=>19
,p_column_alias=>'ASSIGNEE_ID'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73990871556107596)
,p_query_column_id=>20
,p_column_alias=>'ASSIGNEE_AVATAR_URL'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(73419934506526224)
,p_page_id=>222
,p_web_src_param_id=>wwv_flow_imp.id(746046698817036458)
,p_page_plug_id=>wwv_flow_imp.id(793412240537225727)
,p_value_type=>'ITEM'
,p_value=>'P222_REPO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793513758624427681)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73418843128526213)
,p_name=>'P222_REPO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(793513758624427681)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73419025352526215)
,p_name=>'Show Issues'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_DETAIL'
,p_condition_element=>'P222_DETAIL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ISSUES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73419124549526216)
,p_event_id=>wwv_flow_imp.id(73419025352526215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(793412240537225727)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73419242686526217)
,p_event_id=>wwv_flow_imp.id(73419025352526215)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(793412240537225727)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73419392501526218)
,p_name=>'Show Pulls'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_DETAIL'
,p_condition_element=>'P222_DETAIL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PULLS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73419470467526219)
,p_event_id=>wwv_flow_imp.id(73419392501526218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120649301203693375)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73419546731526220)
,p_event_id=>wwv_flow_imp.id(73419392501526218)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120649301203693375)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00223
begin
wwv_flow_imp_page.create_page(
 p_id=>223
,p_name=>'PL/SQL Access'
,p_alias=>'PL-SQL-ACCESS'
,p_step_title=>'PL/SQL Access'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74844158882431692)
,p_plug_name=>'EBA_RESTDEMO_SAMPLE_GITHUB table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>'select * from eba_restdemo_sample_github'
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83862817186703917)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(83862996251703918)
,p_name=>'LANGUAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LANGUAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Language'
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
 p_id=>wwv_flow_imp.id(83863081106703919)
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
 p_id=>wwv_flow_imp.id(83863195966703920)
,p_name=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated on'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'mm/dd/yyyy hh24:mi:ss'
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
 p_id=>wwv_flow_imp.id(83863264987703921)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created on'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'mm/dd/yyyy hh24:mi:ss'
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
 p_id=>wwv_flow_imp.id(83863340238703922)
,p_name=>'ISSUES_CNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUES_CNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issues cnt'
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
 p_id=>wwv_flow_imp.id(83863473488703923)
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
 p_id=>wwv_flow_imp.id(83863522463703924)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83863695778703925)
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
 p_id=>wwv_flow_imp.id(83862711565703916)
,p_internal_uid=>57117106489764432
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
 p_id=>wwv_flow_imp.id(84147770296871097)
,p_interactive_grid_id=>wwv_flow_imp.id(83862711565703916)
,p_static_id=>'14581'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(84147811847871097)
,p_report_id=>wwv_flow_imp.id(84147770296871097)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84148349573871102)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(83862817186703917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84148784833871107)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(83862996251703918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84149284777871109)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(83863081106703919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84149727863871110)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(83863195966703920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84150245137871111)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(83863264987703921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84150736175871113)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(83863340238703922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84151807540872803)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(83863473488703923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(84152372099872805)
,p_view_id=>wwv_flow_imp.id(84147811847871097)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(83863522463703924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74846334163431714)
,p_plug_name=>'PL/SQL Code'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<pre>',
'declare',
'    l_context     apex_exec.t_context;',
'    l_filters     apex_exec.t_filters;',
'    l_columns     apex_exec.t_columns;',
'     ',
'    l_name_idx    pls_integer;',
'    l_lang_idx    pls_integer;',
'    l_desc_idx    pls_integer;',
'    l_upd_idx     pls_integer;',
'    l_cr_idx      pls_integer;',
'    l_issues_idx  pls_integer;',
'begin',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''NAME'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''LANGUAGE'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''DESCRIPTION'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''UPDATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''CREATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''OPEN_ISSUES_COUNT'' );',
'',
'    l_context := apex_exec.open_web_source_query(',
'        p_module_static_id  => ''Sample_Application_Github_Repositories'',',
'        p_columns           => l_columns,',
'        p_max_rows          => 1000 );',
'',
'    l_name_idx   := apex_exec.get_column_position( l_context, ''NAME'' );',
'    l_lang_idx   := apex_exec.get_column_position( l_context, ''LANGUAGE'' );',
'    l_desc_idx   := apex_exec.get_column_position( l_context, ''DESCRIPTION'' );',
'    l_upd_idx    := apex_exec.get_column_position( l_context, ''UPDATED_AT'' );',
'    l_cr_idx     := apex_exec.get_column_position( l_context, ''CREATED_AT'' );',
'    l_issues_idx := apex_exec.get_column_position( l_context, ''OPEN_ISSUES_COUNT'' );',
'',
'    while apex_exec.next_row( l_context ) loop',
'',
'        insert into eba_restdemo_sample_github values (',
'            apex_exec.get_varchar2    ( l_context, l_name_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_lang_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_desc_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), ',
'            apex_exec.get_number      ( l_context, l_issues_idx ));',
'',
'    end loop;',
'    ',
'    apex_exec.close( l_context );',
'exception',
'    when others then',
'    apex_exec.close( l_context );',
'    raise;    ',
'end;',
'</pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74846425362431715)
,p_plug_name=>'PL/SQL and Web Source Modules'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Github repository count for <strong>Oracle</strong>: &P223_REPO_CNT.',
'</p></p>',
'This page illustrates how to use an existing Web Source Module with PL/SQL and the <strong>APEX_EXEC</strong> package. When the <strong>Download</strong> button is clicked, the <strong>EBA_RESTDEMO_SAMPLE_GITHUB</strong> table is being populated with'
||' data from the Web Source Module. The Interactive Grid below works on that local table, data can thus be edited.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75883904261039895)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74846664486431717)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75883904261039895)
,p_button_name=>'Clear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74845690648431707)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(75883904261039895)
,p_button_name=>'Download'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74843997060431690)
,p_name=>'P223_REPO_CNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74846334163431714)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74845745448431708)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download REST Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_context     apex_exec.t_context;',
'    l_filters     apex_exec.t_filters;',
'    l_columns     apex_exec.t_columns;',
'     ',
'    l_name_idx    pls_integer;',
'    l_lang_idx    pls_integer;',
'    l_desc_idx    pls_integer;',
'    l_upd_idx     pls_integer;',
'    l_cr_idx      pls_integer;',
'    l_issues_idx  pls_integer;',
'begin',
'    delete from eba_restdemo_sample_github;',
'',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''NAME'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''LANGUAGE'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''DESCRIPTION'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''UPDATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''CREATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''OPEN_ISSUES_COUNT'' );',
'',
'    l_context := apex_exec.open_web_source_query(',
'        p_module_static_id  => ''Sample_Application_Github_Repositories'',',
'        p_columns           => l_columns,',
'        p_max_rows          => 1000 );',
'',
'    l_name_idx   := apex_exec.get_column_position( l_context, ''NAME'' );',
'    l_lang_idx   := apex_exec.get_column_position( l_context, ''LANGUAGE'' );',
'    l_desc_idx   := apex_exec.get_column_position( l_context, ''DESCRIPTION'' );',
'    l_upd_idx    := apex_exec.get_column_position( l_context, ''UPDATED_AT'' );',
'    l_cr_idx     := apex_exec.get_column_position( l_context, ''CREATED_AT'' );',
'    l_issues_idx := apex_exec.get_column_position( l_context, ''OPEN_ISSUES_COUNT'' );',
'',
'    while apex_exec.next_row( l_context ) loop',
'',
'        insert into eba_restdemo_sample_github values (',
'            apex_exec.get_varchar2    ( l_context, l_name_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_lang_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_desc_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), ',
'            apex_exec.get_number      ( l_context, l_issues_idx ));',
'',
'    end loop;',
'    ',
'    apex_exec.close( l_context );',
'exception',
'    when others then',
'    apex_exec.close( l_context );',
'    raise;    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74845690648431707)
,p_process_success_message=>'Github Repository Information downloaded from REST Service.'
,p_internal_uid=>50611009748171565
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74846803343431718)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear local table'
,p_process_sql_clob=>'delete from eba_restdemo_sample_github;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74846664486431717)
,p_process_success_message=>'Local data deleted.'
,p_internal_uid=>50612067643171575
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83863723596703926)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(74844158882431692)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'EBA_RESTDEMO_SAMPLE_GITHUB table - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>59628987896443783
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74844017428431691)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Repo Count'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) into :P223_REPO_CNT',
'  from table( eba_restdemo_sample_pkg.get_github_repos );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50609281728171548
);
end;
/
prompt --application/pages/page_00224
begin
wwv_flow_imp_page.create_page(
 p_id=>224
,p_name=>'Combine with local data'
,p_alias=>'COMBINE-WITH-LOCAL-DATA'
,p_step_title=>'Combine with local data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98364454885769305)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98402034616837598)
,p_plug_name=>'Combine Web Sources and Local Datza'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(746022179193006341)
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       remote.NAME,',
'       HOMEPAGE,',
'       SIZE_,',
'       LANGUAGE,',
'       local.created_by',
'  from #APEX$SOURCE_DATA# remote, eba_restdemo_sample_lang local',
' where remote.language = local.name'))
,p_source_post_processing=>'SQL'
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
 p_id=>wwv_flow_imp.id(98402128470837599)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CARSTEN'
,p_internal_uid=>71656523394898115
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98402230740837600)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98402325575837601)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Repository'
,p_column_link=>'#HOMEPAGE#'
,p_column_linktext=>'#NAME#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98403190459837609)
,p_db_column_name=>'HOMEPAGE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Homepage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98403290342837610)
,p_db_column_name=>'SIZE_'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Size '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FILESIZE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98403538994837613)
,p_db_column_name=>'LANGUAGE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Language'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98404508329837623)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>150
,p_column_identifier=>'X'
,p_column_label=>'Language Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(98740446242068772)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'719949'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAME:HOMEPAGE:SIZE_:LANGUAGE:CREATED_BY'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(98743851520082952)
,p_report_id=>wwv_flow_imp.id(98740446242068772)
,p_name=>'Local Data'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CREATED_BY'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("CREATED_BY" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98404763610837625)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how data from a REST Service can be joined with local data. Each Github repository has a programming language attribute. The (local) table <strong>EBA_RESTDEMO_SAMPLE_LANG</strong> contains information about who created that progra'
||'mming language.</p>',
'<p>Using a <strong>Post Processing SQL query</strong>, the local table can be joined to the Web Source result data; the result is a combination of local and remote data.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98404857081837626)
,p_plug_name=>'Post Processing SQL Query'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In the <em>Post Processing SQL Query</em>, the Web Source response data is referenced with the <strong>#APEX$SOURCE_DATA#</strong> placeholder, and can be used like a table. The report on this page uses the following query.</p>',
'<pre>',
'select remote.ID,',
'       remote.NAME,',
'       remote.HOMEPAGE,',
'       remote.SIZE_,',
'       remote.LANGUAGE,',
'       local.CREATED_BY',
'  from <strong>#APEX$SOURCE_DATA#</strong>       remote, ',
'       EBA_RESTDEMO_SAMPLE_LANG local',
' where remote.LANGUAGE = local.NAME',
'</pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00301
begin
wwv_flow_imp_page.create_page(
 p_id=>301
,p_name=>'REST Endpoint Status'
,p_alias=>'REST-ENDPOINTS-STATUS'
,p_step_title=>'REST Endpoint Status'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(83863965928703928)
,p_name=>'REST Endpoint Test Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as card_title,',
'       URL,',
'       LAST_STATUS,',
'       case ',
'           when last_status is null then ''fa-question''',
'           when last_status = ''OK'' then ''fa-check''',
'           else ''fa-exception''',
'       end as card_icon,',
'       case  ',
'           when last_status is null then ''u-color-29''',
'           when last_status = ''OK'' then ''u-color-35''',
'           else ''u-color-39'' ',
'       end as card_color,',
'       case  ',
'           when last_status=''OK'' then ''OK''',
'           when last_status=''ERROR_ACL'' then ''Network Access Control List (ACL)''',
'           when last_status=''ERROR_CERT'' then ''SSL Certificate error (Wallet)''',
'           when last_status=''ERROR_NETWORK'' then ''Networking issue (e.g. Proxy Server)''',
'           when last_status like ''ERROR_HTTP%'' then ''HTTP Error '' || substr( last_status, 12 )',
'           when last_status like ''ERROR_OTHER%'' then ''Other Error: '' || substr( last_status, 13 )',
'           else ''Other Error''',
'       end as card_text,',
'       url as card_subtext',
'  from EBA_RESTDEMO_SAMPLE_URLS',
' where name != ''ORDS EMP'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84606652905098413)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84606104838098407)
,p_query_column_id=>2
,p_column_alias=>'URL'
,p_column_display_sequence=>1
,p_column_heading=>'Url'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84606108707098408)
,p_query_column_id=>3
,p_column_alias=>'LAST_STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Last status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84606774051098414)
,p_query_column_id=>4
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>4
,p_column_heading=>'Card icon'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84606903613098415)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card color'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84607111053098418)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Card text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(84607055949098417)
,p_query_column_id=>7
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card subtext'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84607237532098419)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains test results for the REST endpoint URLs used in this application. Test results are being stored in a local table. Click the <strong>Test Endpoints</strong> button to execute the test. Failure in accessing the endpoint URLs can h'
||'ave the following reasons.',
'</p>',
'<ul>',
'<li><strong>Missing Network Connectivity</strong><br>',
'    The database server has either no connection to the internet or is behind a firewall. Set a proxy server either at the',
'    application level (in Shared Components) or at the Application Express instance level.</li>',
'<li><strong>Certificate Validation Errors</strong></br>',
'    When the database cannot verify the server certificate of an HTTPS endpoint, the service cannot be accessed. In that case,',
'    the CA certificate must be added to the database wallet and the wallet must be configured in Application Express. See',
'    <a href="https://blogs.oracle.com/apex/apex-https-certificates-and-the-oracle-wallet" target="_blank">"APEX, HTTPS, certificates and the Oracle Wallet"</a> for more information.</li>',
'<li><strong>Network Access Control List</strong><br>',
'    The APEX Engine User (e.g. APEX_190100) is not allowed to perform outbound HTTP requests. A <em>PL/SQL Network ACL</em> must be',
'    configured in the database in order to allow requests the service endpoints.</li>',
'</ul>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84628702135143867)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3158610448292102291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84606294670098409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(84628702135143867)
,p_button_name=>'TEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Test Endpoints'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84606448060098411)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Test Endpoints'
,p_process_sql_clob=>'eba_restdemo_sample_pkg.test_all;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(84606294670098409)
,p_process_success_message=>'URL Endpoints tested. '
,p_internal_uid=>60371712359838268
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(184198375531348306)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table eba_restdemo_sample_emp',
'/',
'',
'drop package eba_restdemo_sample_pkg',
'/',
'',
'drop table eba_restdemo_sample_github',
'/',
'',
'drop type eba_restdemo_github_repo_ct',
'/',
'',
'drop type eba_restdemo_github_repo_t',
'/',
'',
'drop table eba_restdemo_sample_urls',
'/',
'',
'drop table eba_restdemo_sample_lang',
'/'))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
);
end;
/
prompt --application/deployment/install/install_create_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(186817648815370324)
,p_install_id=>wwv_flow_imp.id(184198375531348306)
,p_name=>'Create Tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table "EBA_RESTDEMO_SAMPLE_EMP" (',
'    EMPNO     NUMBER,',
'    ENAME     VARCHAR2(4000),',
'    JOB       VARCHAR2(4000),',
'    MGR       NUMBER,',
'    HIREDATE  DATE,',
'    SAL       NUMBER,',
'    DEPTNO    NUMBER,',
'    RN        NUMBER',
');',
'',
'create table eba_restdemo_sample_github(',
'    name          varchar2(255),',
'    language      varchar2(50),',
'    description   varchar2(4000),',
'    updated_on    timestamp,',
'    created_on    timestamp,',
'    issues_cnt    number ',
');',
'',
'create table eba_restdemo_sample_urls(',
'    name         varchar2(255) not null primary key,',
'    url          varchar2(500) not null,',
'    https_host   varchar2(500),',
'    last_status  varchar2(500));',
'    ',
'insert into eba_restdemo_sample_urls ( name, url ) values (''Github API'', ''https://api.github.com'');',
'',
'create table eba_restdemo_sample_lang (',
'    name  varchar2(50) not null primary key,',
'    created_by varchar2(50) not null );',
'    ',
'    ',
'insert into eba_restdemo_sample_lang values (''Java'', ''James Gosling'');',
'insert into eba_restdemo_sample_lang values (''PLSQL'', ''Oracle Corporation'');',
'insert into eba_restdemo_sample_lang values (''Ruby'', ''Yukihiro Matsumoto'' );',
'insert into eba_restdemo_sample_lang values (''Python'', ''Guido van Rossum'');',
'insert into eba_restdemo_sample_lang values (''CSS'', ''Hakon Wium Lie'');',
'insert into eba_restdemo_sample_lang values (''C#'', ''Microsoft Corporation'' );',
'insert into eba_restdemo_sample_lang values (''Go'', ''Google'');',
'insert into eba_restdemo_sample_lang values (''Shell'', ''N/A'');',
'insert into eba_restdemo_sample_lang values (''SQLPL'', ''N/A'');',
''))
);
end;
/
prompt --application/deployment/install/install_create_package
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(186817878844374278)
,p_install_id=>wwv_flow_imp.id(184198375531348306)
,p_name=>'Create Package'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace type eba_restdemo_github_repo_t as object(',
'    name          varchar2(255),',
'    language      varchar2(50),',
'    description   varchar2(4000),',
'    updated_on    timestamp with time zone,',
'    created_on    timestamp with time zone,',
'    issues_cnt    number )',
'/',
'    ',
'create or replace type eba_restdemo_github_repo_ct as table of eba_restdemo_github_repo_t',
'/',
'',
'create or replace package eba_restdemo_sample_pkg is',
'',
'function get_github_repos(',
'    p_max_rows in number default 10000 ) return eba_restdemo_github_repo_ct pipelined;',
'',
'function test_url( p_url in varchar2, p_https_host in varchar2 ) return varchar2;',
'',
'procedure test_all;',
'',
'end eba_restdemo_sample_pkg;',
'/',
'',
'create or replace package body eba_restdemo_sample_pkg is',
'',
'function get_github_repos(',
'    p_max_rows in number default 10000 ) return eba_restdemo_github_repo_ct pipelined',
'is',
'    l_context     apex_exec.t_context;',
'    l_filters     apex_exec.t_filters;',
'    l_columns     apex_exec.t_columns;',
'     ',
'    l_row         pls_integer := 1;',
'',
'    l_name_idx    pls_integer;',
'    l_lang_idx    pls_integer;',
'    l_desc_idx    pls_integer;',
'    l_upd_idx     pls_integer;',
'    l_cr_idx      pls_integer;',
'    l_issues_idx  pls_integer;',
'begin',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''NAME''        );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''LANGUAGE''    );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''DESCRIPTION'' );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''UPDATED_AT''  );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''CREATED_AT''  );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''OPEN_ISSUES_COUNT''  );',
'',
'    l_context := apex_exec.open_web_source_query(',
'        p_module_static_id  => ''Sample_Application_Github_Repositories'',',
'        p_columns           => l_columns,',
'        p_max_rows          => p_max_rows );',
'',
'    l_name_idx   := apex_exec.get_column_position( l_context, ''NAME''        );',
'    l_lang_idx   := apex_exec.get_column_position( l_context, ''LANGUAGE''    );',
'    l_desc_idx   := apex_exec.get_column_position( l_context, ''DESCRIPTION'' );',
'    l_upd_idx    := apex_exec.get_column_position( l_context, ''UPDATED_AT''  );',
'    l_cr_idx     := apex_exec.get_column_position( l_context, ''CREATED_AT''  );',
'    l_issues_idx := apex_exec.get_column_position( l_context, ''OPEN_ISSUES_COUNT''  );',
'',
'    while apex_exec.next_row( l_context ) loop',
'',
'        pipe row( eba_restdemo_github_repo_t( ',
'            apex_exec.get_varchar2    ( l_context, l_name_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_lang_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_desc_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), ',
'            apex_exec.get_number      ( l_context, l_issues_idx )));',
'',
'        l_row := l_row + 1;',
'',
'    end loop;',
'    ',
'    apex_exec.close( l_context );',
'    return;',
'exception',
'    when others then',
'    apex_exec.close( l_context );',
'    raise;    ',
'end get_github_repos;',
'',
'procedure test_all is',
'begin',
'   for i in (select name, url, https_host from eba_restdemo_sample_urls ) loop',
'       update eba_restdemo_sample_urls ',
'          set last_status = test_url( i.url, i.https_host )',
'        where name = i.name;',
'   end loop;',
'end test_all;',
'',
'function test_url( p_url in varchar2, p_https_host in varchar2 ) return varchar2 is',
'    l_clob clob;',
'    l_result varchar2(255);',
'begin',
'    begin',
'        sys.utl_http.set_detailed_excp_support(true);',
'        apex_web_service.g_request_headers.delete;',
'        apex_web_service.g_request_headers( 1 ).name  := ''User-Agent'';',
'        apex_web_service.g_request_headers( 1 ).value := ''Oracle Application Express'';',
'    ',
'        l_clob := apex_web_service.make_rest_request( p_url, ''GET'', p_https_host => p_https_host, p_transfer_timeout => 15 );',
'        if apex_web_service.g_status_code between 200 and 399 then',
'            l_result := ''OK'';',
'        else',
'            l_result := ''ERROR_HTTP-'' || apex_web_service.g_status_code;',
'        end if;',
'    exception',
'        when others then',
'            if sqlcode = -24247 then l_result := ''ERROR_ACL'';',
'            elsif sqlcode = -29024 then l_result := ''ERROR_CERT'';',
'            elsif sqlcode = -12535 then l_result := ''ERROR_NETWORK'';',
'            else l_result := ''ERROR_OTHER_'' || sqlerrm;',
'            end if;',
'    end;',
'    return l_result;',
'end test_url;',
'',
'end eba_restdemo_sample_pkg;',
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
