--------------------------------------------------------------------------------
-- Name: Sample Vector Search
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
,p_default_application_id=>7890
,p_default_id_offset=>0
,p_default_owner=>'ORACLE'
);
end;
/

prompt APPLICATION 7890 - Sample Vector Search
--
-- Application Export:
--   Application:     7890
--   Name:            Sample Vector Search
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     27
--       Items:                   44
--       Computations:             2
--       Validations:             15
--       Processes:               27
--       Regions:                123
--       Buttons:                 19
--       Dynamic Actions:          8
--     Shared Components:
--       Logic:
--         Items:                  3
--         Computations:           3
--         App Settings:           3
--         Build Options:          1
--         Data Loads:             2
--         AI Configs:             2
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:             17
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--         Messages:               1
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          2
--       Validations:              2
--   Version:         24.2.0
--   Instance ID:     743344145736746
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Vector Search')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-VECTOR-SEARCH109')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5D05AD0CF4A918EFA266F2A1CC8AC701B172A1BDD047E3D375796E4EC053CEF9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(26568274666740914)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Sample Vector Search'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T:W'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Sample Vector Search'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>45
,p_version_scn=>127496919
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
 p_id=>wwv_flow_imp.id(15829759217663171)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(26569066502740918)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(26569902283740948)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/oci_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(14610758767804040)
,p_name=>'OCI Credentials'
,p_static_id=>'EBA_CREDENTIALS_OCI'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/credentials/openai_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(14611336591828962)
,p_name=>'OpenAI Credentials'
,p_static_id=>'EBA_CREDENTIALS_OPENAI'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.openai.com/v1',
''))
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/remote_servers/oci_genai_service
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(14610997010804045)
,p_name=>'OCI GenAI Service'
,p_static_id=>'EBA_GENAI_OCI'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('EBA_GENAI_OCI'),'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('EBA_GENAI_OCI'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('EBA_GENAI_OCI'),'')
,p_credential_id=>wwv_flow_imp.id(14610758767804040)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('EBA_GENAI_OCI'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('EBA_GENAI_OCI'),'')
,p_prompt_on_install=>false
,p_ai_provider_type=>'OCI_GENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('EBA_GENAI_OCI'),'cohere.command-r-16k')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('EBA_GENAI_OCI'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('EBA_GENAI_OCI'),'{"compartmentId":"ocid1.compartment.oc1","servingMode":{"modelId":"cohere.command-r-16k","servingType":"ON_DEMAND"}}')
);
end;
/
prompt --workspace/remote_servers/openai_genai_service
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(14611575625828962)
,p_name=>'OpenAI GenAI Service'
,p_static_id=>'EBA_GENAI_OPENAI'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('EBA_GENAI_OPENAI'),'https://api.openai.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('EBA_GENAI_OPENAI'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('EBA_GENAI_OPENAI'),'')
,p_credential_id=>wwv_flow_imp.id(14611336591828962)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('EBA_GENAI_OPENAI'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('EBA_GENAI_OPENAI'),'')
,p_prompt_on_install=>false
,p_ai_provider_type=>'OPENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('EBA_GENAI_OPENAI'),'gpt-4o')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('EBA_GENAI_OPENAI'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('EBA_GENAI_OPENAI'),'')
);
end;
/
prompt --workspace/remote_servers/openai_vector_service
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(15639632983805312)
,p_name=>'OpenAI Vector Service'
,p_static_id=>'EBA_VECTOR_OPENAI'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('EBA_VECTOR_OPENAI'),'https://api.openai.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('EBA_VECTOR_OPENAI'),'')
,p_server_type=>'VECTOR'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('EBA_VECTOR_OPENAI'),'')
,p_credential_id=>wwv_flow_imp.id(14611336591828962)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('EBA_VECTOR_OPENAI'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('EBA_VECTOR_OPENAI'),'')
,p_prompt_on_install=>false
,p_ai_provider_type=>'OPENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('EBA_VECTOR_OPENAI'),'text-embedding-3-small')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('EBA_VECTOR_OPENAI'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('EBA_VECTOR_OPENAI'),'')
,p_embedding_type=>'GENAI_PROVIDER'
);
end;
/
prompt --workspace/remote_servers/oci_vector_service
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(16013343297879238)
,p_name=>'OCI Vector Service'
,p_static_id=>'EBA_VECTOR_OCI'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('EBA_VECTOR_OCI'),'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('EBA_VECTOR_OCI'),'')
,p_server_type=>'VECTOR'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('EBA_VECTOR_OCI'),'')
,p_credential_id=>wwv_flow_imp.id(14610758767804040)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('EBA_VECTOR_OCI'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('EBA_VECTOR_OCI'),'')
,p_prompt_on_install=>false
,p_ai_provider_type=>'OCI_GENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('EBA_VECTOR_OCI'),'cohere.embed-english-v3.0')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('EBA_VECTOR_OCI'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('EBA_VECTOR_OCI'),'{"compartmentId":"ocid1.compartment.oc1","servingMode":{"modelId":"cohere.embed-english-v3.0","servingType":"ON_DEMAND"}}')
,p_embedding_type=>'GENAI_PROVIDER'
);
end;
/
prompt --application/shared_components/ai_config/oci
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(32287787472274682)
,p_name=>'OCI'
,p_static_id=>'oci'
,p_remote_server_id=>wwv_flow_imp.id(14610997010804045)
,p_version_scn=>71047988
);
end;
/
prompt --application/shared_components/ai_config/openai
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(32287534921273568)
,p_name=>'OPENAI'
,p_static_id=>'openai'
,p_remote_server_id=>wwv_flow_imp.id(14611575625828962)
,p_version_scn=>71050950
,p_config_comment=>'Not used in the application, but needed to connect the application to the AI Service.'
);
end;
/
prompt --application/shared_components/navigation/lists/ai_generated_data_progress
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14190948692845326)
,p_name=>'AI Generated Data Progress'
,p_list_status=>'PUBLIC'
,p_version_scn=>124383924
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14191102579845330)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Enter Prompt'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14191506670845331)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Preview and Upload Data'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14191928832845331)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Generate Vector Embeddings'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14850751217427267)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/upload_data_progress
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14193624344893271)
,p_name=>'Upload Data Progress'
,p_list_status=>'PUBLIC'
,p_version_scn=>124384366
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14193861620893271)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Select File'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14194223984893271)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Preview and Load Data'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14194621990893271)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Generate Vector Embeddings'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14851084142439035)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/movie_vector_search
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14563222337261426)
,p_name=>'Movie Vector Search'
,p_list_status=>'PUBLIC'
,p_version_scn=>124378845
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14563448485261426)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Prepare Data'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-code-o'
,p_list_text_01=>'Use AI to generate real movie data to perform vector search on.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14847825791354908)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Basic Vector Search'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_list_text_01=>'Search movie data using vector search based on the TITLE, MOVIEDESCRIPTION, and ACTORS fields.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14848156456360528)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Vector vs. Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_moviedata_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Compare</strong> vector based search with traditional Oracle Text search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14848401703364540)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Vector and Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_moviedata_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Combine</strong> vector and Oracle Text search for a more effective, and targeted search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14848748256378257)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Movie Recommendation'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-rocket'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_list_text_01=>'Use vector search to recommend movies <strong>based on </strong>their<strong> vector similarity</strong>.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14849091016382747)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Mixed Languages'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-rocket'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_list_text_01=>'Apply vector search to find relevant content across different languages, <strong>bridging language barriers</strong> in your data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/vector_search_custom_data
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14660657478603054)
,p_name=>'Vector Search (Custom Data)'
,p_list_status=>'PUBLIC'
,p_version_scn=>115120918
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14660848054603055)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Basic Vector Search'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_DATATABLE where embedding_vector is not null'
,p_list_text_01=>'Search data using vectors based on the first 10 columns of your uploaded data. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14661282956603056)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Vector vs. Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_datatable_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Compare</strong> vector based search with traditional Oracle Text search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14661644061603056)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Vector and Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_datatable_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Combine</strong> vector and Oracle Text search for a more effective, and targeted search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/custom_vector_search
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14666527271720723)
,p_name=>'Custom Vector Search'
,p_list_status=>'PUBLIC'
,p_version_scn=>124364933
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14666777652720725)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Prepare Data'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-csv-o'
,p_list_text_01=>'Upload your custom data to perform vector search on.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14667188762720725)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Basic Vector Search'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_DATATABLE where embedding_vector is not null'
,p_list_text_01=>'Search data using vectors based on the first 10 columns of your uploaded data. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14846751772323828)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Vector vs. Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_datatable_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Compare</strong> vector based search with traditional Oracle Text search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14847032842331648)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Vector and Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_datatable_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Combine</strong> vector and Oracle Text search for a more effective, and targeted search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26569066502740918)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>124400979
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26580521863740992)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Movie Data'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-film'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14630894988604380)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'Prepare Data'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_icon=>'fa-number-1-o'
,p_parent_list_item_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14634257306692820)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Basic Vector Search'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:::'
,p_list_item_icon=>'fa-number-2-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_parent_list_item_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14634501423697898)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Vector vs. Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:::'
,p_list_item_icon=>'fa-number-3-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_moviedata_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14634890062701571)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Vector and Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:::'
,p_list_item_icon=>'fa-number-4-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_moviedata_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14665240187692558)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Movie Recommendations'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:::'
,p_list_item_icon=>'fa-number-5-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_parent_list_item_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14665527565695432)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Mixed Languages'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42:::'
,p_list_item_icon=>'fa-number-6-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_parent_list_item_id=>wwv_flow_imp.id(14561158735185073)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14561678776197495)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>'Custom Data'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14655745548466893)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Prepare Data'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25,26,27:::'
,p_list_item_icon=>'fa-number-1-o'
,p_parent_list_item_id=>wwv_flow_imp.id(14561678776197495)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14656489169511162)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Basic Vector Search'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31:::'
,p_list_item_icon=>'fa-number-2-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_DATATABLE where embedding_vector is not null'
,p_parent_list_item_id=>wwv_flow_imp.id(14561678776197495)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14656758985517960)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Vector vs. Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:::'
,p_list_item_icon=>'fa-number-3-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_datatable_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(14561678776197495)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14657068075533127)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Vector and Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:::'
,p_list_item_icon=>'fa-number-4-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_datatable_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(14561678776197495)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26857251890048845)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31472283758841272)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Set AI Provider'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_parent_list_item_id=>wwv_flow_imp.id(26857251890048845)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27461772339385625)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Reset Sample Data Tables'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_parent_list_item_id=>wwv_flow_imp.id(26857251890048845)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27481647128509857)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Application Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-design'
,p_parent_list_item_id=>wwv_flow_imp.id(26857251890048845)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26569902283740948)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>50291004
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26582024950741011)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26582503144741012)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(26582024950741011)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26582979756741012)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(26582024950741011)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26885968671938778)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>124380376
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31661809251364060)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Set AI Provider'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26886189136938779)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reset Sample Data Tables'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26886568880938780)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Application Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-design'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/vector_search_movie_data
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26891210267974065)
,p_name=>'Vector Search (Movie Data)'
,p_list_status=>'PUBLIC'
,p_version_scn=>115119551
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26891422904974065)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Basic Vector Search'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_VECTOR_MOVIEDATA where embedding_vector is not null'
,p_list_text_01=>'Search movie data using vector search based on the TITLE, MOVIEDESCRIPTION, and ACTORS fields.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26891887571974066)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Vector vs. Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_moviedata_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Compare</strong> vector based search with traditional Oracle Text search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26892265090974066)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Vector and Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_sample_vector_search_pkg.has_moviedata_and_oracle_text'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'<strong>Combine</strong> vector and Oracle Text search for a more effective, and targeted search.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/home_page_list
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(32150271482617636)
,p_name=>'Home Page List'
,p_list_status=>'PUBLIC'
,p_version_scn=>126221802
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32150823249617638)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Movie Data'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-film'
,p_list_text_01=>'Explore vector search concepts with guided examples based on movies data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32151249311617638)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Custom Data'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-user'
,p_list_text_01=>'Experiment with vector search in APEX by uploading your own custom data.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32151603707617638)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Configure the AI provider, reset sample data, or change the application appearance.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/sample_csv
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '4964656E746966792073657276657220726571756972656D656E74732C41434D452057656220436F6E66696775726174696F6E2C312F31362F32352C312F31362F32352C436C6F7365642C4A6F686E20576174736F6E2C3130302C3230300A485220736F';
wwv_flow_imp.g_varchar2_table(2) := '6674776172652075706772616465732C4D61696E7461696E20537570706F72742053797374656D732C31322F33312F32342C312F32362F32352C4F6E2D486F6C642C50616D204B696E672C383030302C373030300A4170706C792042696C6C696E672053';
wwv_flow_imp.g_varchar2_table(3) := '797374656D20757064617465732C4D61696E7461696E20537570706F72742053797374656D732C31312F31362F32342C31312F32332F32342C4F6E2D486F6C642C527573732053616E646572732C393530302C373030300A44657465726D696E65205765';
wwv_flow_imp.g_varchar2_table(4) := '62206C697374656E657220636F6E66696775726174696F6E2873292C41434D452057656220436F6E66696775726174696F6E2C31322F33312F32342C312F31302F32352C436C6F7365642C4A616D657320436173736964792C3130302C3130300A537065';
wwv_flow_imp.g_varchar2_table(5) := '636966792073656375726974792061757468656E7469636174696F6E20736368656D652873292C41434D452057656220436F6E66696775726174696F6E2C312F372F32352C312F32362F32352C436C6F7365642C4A6F686E20576174736F6E2C3230302C';
wwv_flow_imp.g_varchar2_table(6) := '3330300A2253656C656374207365727665727320666F7220446576656C6F706D656E742C20546573742C2050726F64756374696F6E222C41434D452057656220436F6E66696775726174696F6E2C31312F31352F32342C31322F342F32342C436C6F7365';
wwv_flow_imp.g_varchar2_table(7) := '642C4A616D657320436173736964792C3230302C3630300A436F6D706C65746520706C616E2C456D61696C20496E746567726174696F6E2C31312F32322F32342C31322F31342F32342C436C6F7365642C4D61726B204E696C652C333030302C31353030';
wwv_flow_imp.g_varchar2_table(8) := '0A436F6E66696775726520576F726B73706163652070726F766973696F6E696E672C41434D452057656220436F6E66696775726174696F6E2C312F31362F32352C312F31392F32352C436C6F7365642C4A6F686E20576174736F6E2C3230302C3130300A';
wwv_flow_imp.g_varchar2_table(9) := '4372656174652070696C6F7420776F726B73706163652C41434D452057656220436F6E66696775726174696F6E2C322F372F32352C322F32332F32352C436C6F7365642C4A6F686E20576174736F6E2C3130302C3130300A52756E20696E7374616C6C61';
wwv_flow_imp.g_varchar2_table(10) := '74696F6E2C41434D452057656220436F6E66696775726174696F6E2C322F382F32352C322F382F32352C436C6F7365642C4A616D657320436173736964792C3130302C3130300A496D706C656D656E742062756720747261636B696E6720736F66747761';
wwv_flow_imp.g_varchar2_table(11) := '72652C42756720547261636B65722C31322F322F32342C31322F32332F32342C436C6F7365642C4D79726120537574636C6966662C3130302C3130300A526576696577206175746F6D617465642074657374696E6720746F6F6C732C4275672054726163';
wwv_flow_imp.g_varchar2_table(12) := '6B65722C31312F31332F32342C31322F372F32342C4F6E2D486F6C642C4D79726120537574636C6966662C323735302C313530300A5075626C69736820646576656C6F706D656E74207374616E64617264732C547261696E20446576656C6F706572732C';
wwv_flow_imp.g_varchar2_table(13) := '312F31332F32352C312F32322F32352C4F6E2D486F6C642C4A6F686E20576174736F6E2C313030302C323030300A5075626C697368206C696E6B7320746F2073656C662D737475647920636F75727365732C547261696E20446576656C6F706572732C31';
wwv_flow_imp.g_varchar2_table(14) := '322F31362F32342C312F332F32352C436C6F7365642C4A6F686E20576174736F6E2C3130302C3130300A43726561746520747261696E696E6720776F726B73706163652C547261696E20446576656C6F706572732C31312F31342F32342C31312F31342F';
wwv_flow_imp.g_varchar2_table(15) := '32342C436C6F7365642C4A616D657320436173736964792C3530302C3730300A4964656E7469667920706F696E7420736F6C7574696F6E732072657175697265642C4C6F6164205061636B61676564204170706C69636174696F6E732C31312F32342F32';
wwv_flow_imp.g_varchar2_table(16) := '342C31322F382F32342C436C6F7365642C4A6F686E20576174736F6E2C3230302C3330300A436F6E647563742070726F6A656374206B69636B6F6666206D656574696E672C536F6674776172652050726F6A6563747320547261636B696E672C31322F32';
wwv_flow_imp.g_varchar2_table(17) := '302F32342C31322F32382F32342C436C6F7365642C50616D204B696E672C3130302C3130300A4964656E746966792070696C6F7420636C69656E7420736572766572206170706C69636174696F6E732C436C69656E742053657276657220436F6E766572';
wwv_flow_imp.g_varchar2_table(18) := '73696F6E2C31312F32392F32342C31322F312F32342C436C6F7365642C53636F7474205370656E6365722C3230302C3230300A44657465726D696E6520686F7374207365727665722C5075626C696320576562736974652C31322F32342F32342C312F32';
wwv_flow_imp.g_varchar2_table(19) := '312F32352C436C6F7365642C54696765722053636F74742C3230302C3230300A496E7374616C6C20696E20646576656C6F706D656E742C4C6F6164205061636B61676564204170706C69636174696F6E732C31322F382F32342C31322F33312F32342C43';
wwv_flow_imp.g_varchar2_table(20) := '6C6F7365642C4A6F686E20576174736F6E2C3130302C3130300A436865636B20736F667477617265206C6963656E7365732C5075626C696320576562736974652C31322F31342F32342C312F332F32352C436C6F7365642C546F6D2053756573732C3130';
wwv_flow_imp.g_varchar2_table(21) := '302C3130300A4D6967726174652070696C6F7420636C69656E742073657276657220746F207765622C436C69656E742053657276657220436F6E76657273696F6E2C312F382F32352C322F342F32352C436C6F7365642C53636F7474205370656E636572';
wwv_flow_imp.g_varchar2_table(22) := '2C3430302C3530300A437573746F6D697A6520736F6C7574696F6E732C4C6F6164205061636B61676564204170706C69636174696F6E732C312F32312F32352C322F31362F32352C4F70656E2C4A6F686E20576174736F6E2C313530302C343030300A22';
wwv_flow_imp.g_varchar2_table(23) := '456E74657220626173652064617461202850726F6A656374732C204D696C6573746F6E65732C206574632E29222C536F6674776172652050726F6A6563747320547261636B696E672C312F31382F32352C322F382F32352C436C6F7365642C546F6D2053';
wwv_flow_imp.g_varchar2_table(24) := '756573732C3230302C3230300A4964656E746966792070696C6F74206170706C69636174696F6E732C4D696772617465204465736B746F70204170706C69636174696F6E2C31312F32302F32342C31322F382F32342C436C6F7365642C4D61726B204E69';
wwv_flow_imp.g_varchar2_table(25) := '6C652C3330302C3530300A225075726368617365206164646974696F6E616C20736F667477617265206C6963656E7365732C206966206E6565646564222C5075626C696320576562736974652C31312F32382F32342C31322F31322F32342C4F6E2D486F';
wwv_flow_imp.g_varchar2_table(26) := '6C642C416C2042696E65732C3330302C313030300A436865636B20736F667477617265206C6963656E7365732C456D61696C20496E746567726174696F6E2C312F382F32352C312F31302F32352C436C6F7365642C4D61726B204E696C652C3230302C32';
wwv_flow_imp.g_varchar2_table(27) := '30300A4C6F61642063757272656E74207461736B7320616E6420656E68616E63656D656E74732C536F6674776172652050726F6A6563747320547261636B696E672C312F33312F32352C322F31362F32352C436C6F7365642C546F6D2053756573732C34';
wwv_flow_imp.g_varchar2_table(28) := '30302C3530300A476574205246507320666F72206E6577207365727665722C456D61696C20496E746567726174696F6E2C312F392F32352C312F31302F32352C4F70656E2C4D61726B204E696C652C323030302C313030300A437573746F6D697A652053';
wwv_flow_imp.g_varchar2_table(29) := '6F6674776172652050726F6A6563747320736F6674776172652C536F6674776172652050726F6A6563747320547261636B696E672C31322F32362F32342C312F32322F32352C4F70656E2C546F6D2053756573732C3630302C313030300A436F6C6C6563';
wwv_flow_imp.g_varchar2_table(30) := '74206D697373696F6E2D637269746963616C207370726561647368656574732C436F6E766572742053707265616473686565742C312F31342F32352C312F32322F32352C4F70656E2C50616D204B696E672C323530302C343030300A4C6F636B20737072';
wwv_flow_imp.g_varchar2_table(31) := '6561647368656574732C436F6E766572742053707265616473686565742C31312F32332F32342C31322F32302F32342C4F70656E2C50616D204B696E672C313030302C3830300A43726561746520776562206170706C69636174696F6E732066726F6D20';
wwv_flow_imp.g_varchar2_table(32) := '7370726561647368656574732C436F6E766572742053707265616473686565742C31312F31352F32342C31322F372F32342C4F70656E2C50616D204B696E672C31303030302C363030300A446F63756D656E74207175616C697479206173737572616E63';
wwv_flow_imp.g_varchar2_table(33) := '652070726F636564757265732C42756720547261636B65722C31322F342F32342C31322F31352F32342C4F70656E2C4D79726120537574636C6966662C333530302C343030300A53656E64206C696E6B7320746F2070726576696F757320737072656164';
wwv_flow_imp.g_varchar2_table(34) := '7368656574206F776E6572732C436F6E766572742053707265616473686565742C31322F382F32342C312F352F32352C4F70656E2C50616D204B696E672C313030302C313530300A4D6967726174652070696C6F74206170706C69636174696F6E732074';
wwv_flow_imp.g_varchar2_table(35) := '6F207765622C4D696772617465204465736B746F70204170706C69636174696F6E2C31312F32302F32342C31322F392F32342C436C6F7365642C4D61726B204E696C652C3530302C3530300A436F6D706C657465207175657374696F6E6E616972652C45';
wwv_flow_imp.g_varchar2_table(36) := '6D706C6F79656520536174697366616374696F6E205375727665792C312F31382F32352C312F32382F32352C4F6E2D486F6C642C4972656E65204A6F6E65732C313230302C3830300A4964656E74696679206F776E6572732C44697363757373696F6E20';
wwv_flow_imp.g_varchar2_table(37) := '466F72756D2C31312F31352F32342C31322F31342F32342C436C6F7365642C48616E6B2044617669732C3235302C3330300A417272616E676520666F72207661636174696F6E20636F7665726167652C4D61696E7461696E20537570706F727420537973';
wwv_flow_imp.g_varchar2_table(38) := '74656D732C31322F31372F32342C31322F32332F32342C4F70656E2C416C2042696E65732C3330302C3530300A506F73742D6D6967726174696F6E207265766965772C436C69656E742053657276657220436F6E76657273696F6E2C31322F32302F3234';
wwv_flow_imp.g_varchar2_table(39) := '2C31322F32352F32342C436C6F7365642C50616D204B696E672C3130302C3130300A506C616E206D6967726174696F6E207363686564756C652C436C69656E742053657276657220436F6E76657273696F6E2C31312F31372F32342C31312F32392F3234';
wwv_flow_imp.g_varchar2_table(40) := '2C436C6F7365642C50616D204B696E672C3130302C3130300A506F73742D6D6967726174696F6E207265766965772C4D696772617465204465736B746F70204170706C69636174696F6E2C322F322F32352C322F31312F32352C436C6F7365642C4D6172';
wwv_flow_imp.g_varchar2_table(41) := '6B204E696C652C3130302C3130300A506C616E206D6967726174696F6E207363686564756C652C4D696772617465204465736B746F70204170706C69636174696F6E2C312F33302F32352C322F32372F32352C436C6F7365642C4D61726B204E696C652C';
wwv_flow_imp.g_varchar2_table(42) := '3630302C3230300A4D69677261746520636C69656E742073657276657220617070732C436C69656E742053657276657220436F6E76657273696F6E2C322F342F32352C332F322F32352C4F70656E2C50616D204B696E672C3330302C31323030300A496E';
wwv_flow_imp.g_varchar2_table(43) := '7374616C6C20776562206170706C69636174696F6E206F6E2070726F64756374696F6E207365727665722C44697363757373696F6E20466F72756D2C312F392F32352C312F31372F32352C436C6F7365642C48616E6B2044617669732C3130302C313030';
wwv_flow_imp.g_varchar2_table(44) := '0A496D706C656D656E7420696E2050726F64756374696F6E2C4C6F6164205061636B61676564204170706C69636174696F6E732C31312F31312F32342C31322F342F32342C4F70656E2C4A6F686E20576174736F6E2C3230302C313530300A4D6F6E6974';
wwv_flow_imp.g_varchar2_table(45) := '6F722070617274696369706174696F6E2C44697363757373696F6E20466F72756D2C312F31382F32352C322F332F32352C4F70656E2C48616E6B2044617669732C3435302C3530300A4D696772617465204465736B746F70204170706C69636174696F6E';
wwv_flow_imp.g_varchar2_table(46) := '732C4D696772617465204465736B746F70204170706C69636174696F6E2C31322F362F32342C31322F32332F32342C4F70656E2C4D61726B204E696C652C313030302C383030300A456E642D7573657220547261696E696E672C4D696772617465204465';
wwv_flow_imp.g_varchar2_table(47) := '736B746F70204170706C69636174696F6E2C31322F33312F32342C312F322F32352C4F70656E2C4A6F686E20576174736F6E2C302C323030300A496E766573746967617465206E65772056697275732050726F74656374696F6E20736F6674776172652C';
wwv_flow_imp.g_varchar2_table(48) := '4D61696E7461696E20537570706F72742053797374656D732C312F31312F32352C322F362F32352C4F70656E2C50616D204B696E672C313730302C313530300A5573657220616363657074616E63652074657374696E672C4D696772617465204465736B';
wwv_flow_imp.g_varchar2_table(49) := '746F70204170706C69636174696F6E2C31312F32352F32342C31312F32392F32342C4F70656E2C4D61726B204E696C652C313530302C363030300A4F627461696E2063726564656E7469616C732C4D6967726174652066726F6D204C6567616379205365';
wwv_flow_imp.g_varchar2_table(50) := '727665722C312F352F32352C312F392F32352C50656E64696E672C4A616D657320436173736964792C302C3530300A437265617465206E657720646174616261736520636F6E6E656374696F6E2C4D6967726174652066726F6D204C6567616379205365';
wwv_flow_imp.g_varchar2_table(51) := '727665722C31312F31332F32342C31322F352F32342C50656E64696E672C53636F7474205370656E6365722C302C3130300A4964656E7469667920696E746567726174696F6E20706F696E74732C4D6967726174652066726F6D204C6567616379205365';
wwv_flow_imp.g_varchar2_table(52) := '727665722C31322F33312F32342C312F32382F32352C50656E64696E672C4D61726B204E696C652C302C323030300A5265766965772077697468206C6567616C2C456D706C6F79656520536174697366616374696F6E205375727665792C312F31332F32';
wwv_flow_imp.g_varchar2_table(53) := '352C322F312F32352C4F6E2D486F6C642C4972656E65204A6F6E65732C3230302C3430300A446576656C6F70207765622070616765732C5075626C696320576562736974652C31322F342F32342C31322F31312F32342C4F6E2D486F6C642C5469676572';
wwv_flow_imp.g_varchar2_table(54) := '2053636F74742C3830302C323030300A547261696E20646576656C6F70657273202F2075736572732C4C6F6164205061636B61676564204170706C69636174696F6E732C31322F33302F32342C312F31352F32352C50656E64696E672C4A6F686E205761';
wwv_flow_imp.g_varchar2_table(55) := '74736F6E2C302C383030300A5075726368617365206261636B7570207365727665722C456D61696C20496E746567726174696F6E2C312F32302F32352C312F33312F32352C50656E64696E672C4D61726B204E696C652C302C333030300A506C616E2072';
wwv_flow_imp.g_varchar2_table(56) := '6F6C6C6F7574207363686564756C652C456D706C6F79656520536174697366616374696F6E205375727665792C312F31392F32352C322F31352F32352C4F6E2D486F6C642C4972656E65204A6F6E65732C302C3735300A4D617020646174612075736167';
wwv_flow_imp.g_varchar2_table(57) := '652C4D6967726174652066726F6D204C6567616379205365727665722C31312F32372F32342C31322F352F32342C50656E64696E672C4D61726B204E696C652C302C383030300A547261696E20646576656C6F70657273206F6E20747261636B696E6720';
wwv_flow_imp.g_varchar2_table(58) := '627567732C42756720547261636B65722C322F352F32352C322F32362F32352C4F6E2D486F6C642C4D79726120537574636C6966662C302C323030300A4D656173757265206566666563746976656E657373206F6620696D70726F7665642051412C4275';
wwv_flow_imp.g_varchar2_table(59) := '6720547261636B65722C312F32332F32352C322F32302F32352C50656E64696E672C4D79726120537574636C6966662C302C313530300A4465636F6D6D697373696F6E2053514C205365727665722C4D6967726174652066726F6D204C65676163792053';
wwv_flow_imp.g_varchar2_table(60) := '65727665722C31322F32342F32342C312F31312F32352C50656E64696E672C416C2042696E65732C302C3530300A54657374206D69677261746564206170706C69636174696F6E732C436C69656E742053657276657220436F6E76657273696F6E2C312F';
wwv_flow_imp.g_varchar2_table(61) := '31392F32352C322F382F32352C50656E64696E672C52757373205361756E646572732C302C363030300A436F6E766572742070726F6365737365732C4D6967726174652066726F6D204C6567616379205365727665722C31322F33312F32342C312F382F';
wwv_flow_imp.g_varchar2_table(62) := '32352C50656E64696E672C50616D204B696E672C302C333030300A496D706C656D656E7420696E746567726174696F6E207573696E67204F7261636C652C4D6967726174652066726F6D204C6567616379205365727665722C31312F32322F32342C3132';
wwv_flow_imp.g_varchar2_table(63) := '2F342F32342C50656E64696E672C4D61726B204E696C652C302C313530300A5573657220616363657074616E63652074657374696E672C436C69656E742053657276657220436F6E76657273696F6E2C312F372F32352C322F342F32352C50656E64696E';
wwv_flow_imp.g_varchar2_table(64) := '672C52757373205361756E646572732C302C323530300A506C616E20726F6C6C6F7574207363686564756C652C5075626C696320576562736974652C312F31302F32352C322F352F32352C4F6E2D486F6C642C546F6D2053756573732C302C3130300A4D';
wwv_flow_imp.g_varchar2_table(65) := '696772617465207461626C6520737472756374757265732C4D6967726174652066726F6D204C6567616379205365727665722C312F32352F32352C322F392F32352C50656E64696E672C4A6F686E20576174736F6E2C302C323530300A496D706F727420';
wwv_flow_imp.g_varchar2_table(66) := '646174612C4D6967726174652066726F6D204C6567616379205365727665722C312F31372F32352C312F32382F32352C50656E64696E672C4A6F686E20576174736F6E2C302C313030300A4E6F746966792075736572732C4D6967726174652066726F6D';
wwv_flow_imp.g_varchar2_table(67) := '204C6567616379205365727665722C31322F31362F32342C312F382F32352C50656E64696E672C4D61726B204E696C652C302C3230300A456E642D7573657220547261696E696E672C436C69656E742053657276657220436F6E76657273696F6E2C312F';
wwv_flow_imp.g_varchar2_table(68) := '32352F32352C322F31372F32352C50656E64696E672C4D79726120537574636C6966662C302C323530300A526F6C6C6F7574206D6967726174656420636C656E74207365727665722061707073206F6E207765622C436C69656E74205365727665722043';
wwv_flow_imp.g_varchar2_table(69) := '6F6E76657273696F6E2C31312F32342F32342C31312F33302F32342C50656E64696E672C50616D204B696E672C302C353030';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(21737291857746558)
,p_file_name=>'SAMPLE.csv'
,p_mime_type=>'text/csv'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000554494441545847ED976B6C935518C77FEFDB76EDEE5DD7B1AEDB70372E43C7861BB22917110283C4808860102F189068540C06';
wwv_flow_imp.g_varchar2_table(2) := 'FCA004A3D14434C12F46901831848018203A060282A08CEB189771C9B86C50D80663EBD66DDDD6767D5FF39E016EA3638364F10BE75B9BD3737ECFE5FCFF4FA5A89CE92AFFE3921E013CCA40EF1950916403E1F18330273D41A83511434804A0E26D6EC0';
wwv_flow_imp.g_varchar2_table(3) := '5D7395FA8AD334DFBC02AA1F901EA8A5EFDB84AAAA10664B262E7302E1F18351553F1E572DBE96262449C2101A8931221A555569A828E5C6E97DB4D65522C9729F217A04D02E8F4ACE247EE4148242CDD45D3C4EFD95527CEE06147FBB8853D21B308647';
wwv_flow_imp.g_varchar2_table(4) := '63497B92A8A40CDCB5D7A92ADE41E3F5322459D727881E0054426393481A3B1BD960A4BA6437CE8AD2DB91ABC85247842A5A7974188223881E9C436CC6385A9DD5380E6EA5CD598D26308AA2224920F79095800092AC2775E26B84DBD3B876F8776E951D';
wwv_flow_imp.g_varchar2_table(5) := '2337238DD481760E9D3CCF254715BA4E07AA8A82CE182C006C5913705E3C4EC5DF9BB059CD3C973B829BB5F5EC3D7C5280745F01012212D3499DF83A75178E5155B213B7CBC977CB17D1EAF1B06A4301572A6F760110D950144C913158D3F390757AAA4E';
wwv_flow_imp.g_varchar2_table(6) := 'ECC16C927863C624460C1BC49C0FBF440E40101060E09897B0A4667179F7CF34555EC0E3F551B0EA73FE3C54C2EA8D85F8FD7E915EED40AD191545119F753A3D7A5328923E085F4B2392D24EFED8917CFCF61C9E9EB50859BE37050101D25F582C2A5CF1';
wwv_flow_imp.g_varchar2_table(7) := 'D77A5AEB6FE0F5F9F9EDFBCFD8B2EB003F6DD94972BC0D6B5404D5B54E9C0D4DA426C661340671FEF255C2824D24D862686A69A5DC51CD989119AC58FA16A35FFEA0EF00C35FF99496DAEB380E6EC1DB5887C7D72E00B6EE2EE2875F0A593CEF45664E1E';
wwv_flow_imp.g_varchar2_table(8) := 'C3AA8DDB387ABA8C77E74EC31C11C6CAB59BB19A23F8E49DB914959C61D9B76B199F9BC5574B163C28C0725AEBAA70146DC6D30D60CDA64216CC9ACA94B14FB1BE600F27CE5DE2CD99F94486850A200DE0BD57A7537CE602DFFCF8EBC3010C9DB608596F';
wwv_flow_imp.g_varchar2_table(9) := 'A07CEF3AF1ACBA97203E365A5CE87435D1D8ECC63EC04A9041CFD5CA9B988C060658CCB4B479A9ACA9657476065F7FF4802548CC9B8E75E828CAF7ACC375ED3C1E8F8782D55FB0FFE829BEDF5080D7EB0BD8847A9D1E4398193928044F632DB2E2E5F9F1';
wwv_flow_imp.g_varchar2_table(10) := 'B92C993F9BBC59EFF7BD07C26C29A4E5CFC7E538C7F5C305B81B6EB162E94271C09A4DDBEFD1818E67E827D862C796391E4D45AF1D29C41A6660DE8CC92427C6B170D94AF162FAA403483249E3666349C9A4AA6417374A0FF078B28D81F6584ACB2A7054';
wwv_flow_imp.g_varchar2_table(11) := 'D7745136ED724348247123268ACCDD3A5BC4B523DB888E0A67D4F0A1DC72BA3876E642409BEA518AB5681E1B3D1363640C3567FFA1A6EC186DAE5A3411FE4F563529D663320F20263D8FD8E1CFE273BBA8D8B701D7D53320EBF0FB1511B94E17D8A07A36';
wwv_flow_imp.g_varchar2_table(12) := '234521226108F6EC4984581385C13438CE8A67E9F7B6A1E9AA2EC8242ED74C2BC49A80EA6F17DF6BFB34FFD09CB33767BCBF1D2B7E7170CCB067881C380C9DC1487B6B337E6FAB28A5CE148ADE14427B9B9BFACB2769AA2E272A35134B4A969811AA8AFF';
wwv_flow_imp.g_varchar2_table(13) := '10CFF87E10BD0FA5AA2AA20AB5251399308490E8780CC1E16206F0B5B88405BB1CE7C51CA065C0681E803D7B32512999D4979F12F6EC697222DD76D0BE356120275755D1DD68407796E8EA0E3FB863759A2969438A3D275F64C279F92495C53BF035D7DF';
wwv_flow_imp.g_varchar2_table(14) := 'DDD3F9F8DE33D0A7B1A2EBA60E080BF6EC2958D246E0BC7482CAE2EDF89A1BEE81E81700A10BAA42509885F89C6E106E5717DA7E03E8189954A18CF1395385BDDF28DD2F7AA27319FB17A01384F6923C0D3562B6D4ACFE6E1BF53E963F441304FA89D6A8';
wwv_flow_imp.g_varchar2_table(15) := 'E2DEAE7F45FB3F03BDF03F02F81794B56BBF28E4DC570000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26571067596740958)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE900001B7649444154785EED5D09745BD599FE9E244BB6E47DDF6367DF57278184AC2404028440580A0C2DD065DAA1ED949E9EB6437B0A';
wwv_flow_imp.g_varchar2_table(2) := '9C43A79DCE74CEF4CCE969613A1DA667DA043A04B316C284388B13923809599CDDF116EF8BBCC8AB2CBDE9FFCBB2B5D996A5F72CC5BEF79C9060EBDDF7DE7F3FFDF7FBD72B410C21812024200571ADB854480002400204414940002828F1898B05800406';
wwv_flow_imp.g_varchar2_table(3) := '829280005050E213170B00090C04250101A0A0C4272E16001218084A02024041894F5C2C002430109404048082129FB858004860202809080005253E7171D80128B960C71CD765B149D2ECA9BE4C5A59BEEA944173C9BB57C2491E2107507CC1CE8D1A60';
wwv_flow_imp.g_varchar2_table(4) := 'A30C6C00B0319C8413AECF22012FD3B3D981A2B692C2A2503E67480044A0918017056094597A27A05A4B0A5F526646FF6799500009E0F8BF30817E92C03491409A10002516EC7C4976681C31264802130524D50124C0334188F1719B8900916A0012DB55';
wwv_flow_imp.g_varchar2_table(5) := 'E880E371E7221978592DB2AD0A8006C173206C44281E0432B0490D10290E20019EF045AB1A20521C4009053B49F3087F4E78E2A8C85C52B849C94753144082302BB934EACCA534B1560C40023CEA2CB81AB32A0922C5009450B05356E365C59CEA48C05C';
wwv_flow_imp.g_varchar2_table(6) := '52A8C8DA2B3289D03EEA2CB29AB32A45A8150190D03E6A2EB56A732B42A8830690D03EAA2DB0EA132BA185A6108064C87EB034168814B458545F7C856E10B4160A5A5261BB7D39D14260902468B411D04618A0D1E921697590341AEE2C419892653B64DB';
wwv_flow_imp.g_varchar2_table(7) := '00EC0356D8AC7D9007FAF967FC4B07A2145AAFF09B2658321D9464C2D3EB2C41D26A192C3A8309FAD82444C625C310938808632C74062334FA4868B4BAA1D594ED36D8FA7B61EBEB81B5BB1D7D9636F4B537A3AFA319D6DE2ED8FB7B61B70F10D2C20F01';
wwv_flow_imp.g_varchar2_table(8) := '413E51B0DB5850000A27FE2369B40C0E5D540CA2D3F2109D9ECFA0D1D39FE804E80C5190240D6B2389B7A8E1579749D5C8B4C5D1DF76D8FAFBD0DFD586FECE16F45BDA6069AC84A5EE06FF6CA0B71B328169928C607D42B73880640685CE180B63622612';
wwv_flow_imp.g_varchar2_table(9) := 'F217C1943A0D86B814D636AC65082C81688EC1EB483B597B2CE86B6B427773355A6F9C454F6B2DFABB3A78DB9B04BB5B503C282800859AFF680D513026652379CE2A24E42D644D43DB972AABCA1ACA0E6B7707DAAB2EA1E5EA4974D6DDC0405FD72DAF8B';
wwv_flow_imp.g_varchar2_table(10) := '82E141010388AA276CD05C0E85F488104725A62361FA52A42EB803FAD84448FEA802DAA198197B43CCC1978970FBF746C48F9AAF9C44CBB512F498EB60B75A0729B97FD787D3A7B4B0CF0DB4DAC34F7179BF6E48002449D04545232E671E52E7AD414CD6';
wwv_flow_imp.g_varchar2_table(11) := '2C6875FA11CDEE61EB6A00766B1FACBD9DCC6906881893A5350824491B81884813224CB1D09BE2D952D3E8221CD61AF1269F43866C97D1517B0D2D578EC35C7E8EB5936CB7871336FC7A9629012022C9448A5316AE43D28CE5888C4B19DCAEBC65C4E678';
wwv_flow_imp.g_varchar2_table(12) := '7F0F5B519DF5E5E83537F0E2F29F9E4EFE9DDD66656AC4745AAB834E1FC5E024EEA437C5C110978A98F47CB6E0B406D3309FF2B81D81B4BFB3152D574BD074F9187A5AEB41BCE9561A210150C2CA07EE872CBD3B1182A2053626652263C53624E42D864E';
wwv_flow_imp.g_varchar2_table(13) := '1FE9AD759C1CC5D2CE5AA1ADAA1496FA0AB69C48DBC06E776C5FBC838D608E938546BFD66859034544C530298F9FB610B159B3A08F8E677F92B7A35166CBADADF202EA4EEF83A5B1CA41B06F9131A90144E03125E7206BD5765E485A58CF41DFF87E8B99';
wwv_flow_imp.g_varchar2_table(14) := '496DF3E5CFD05957C65A4691ED4492D8A7149D3E03C9B30B109B3D875D03AE7E24E7F3D0FD3A6E5E414DC947E8ACBDCA8EC95B6248F20EF3C977DE0BE45903E64013A1819CE0C92CB81B09F98BBDC0437E1B024AC7CDAB4C664903D8C84F435E64A587A4';
wwv_flow_imp.g_varchar2_table(15) := '616E44D65E1201296B36FB9C1C3EA5E1419A873460EDA97D68AFBE746B68A2C90820E23CC6E42C64AFBEDFA7E671700F339A2E1D45F3D593E86D6B9C90C5A2E7225E9438730552E6AF45647CAA178848F39026BA79E27DD68601F9A194FE028C36DFA403';
wwv_flow_imp.g_varchar2_table(16) := '902421323619D96B763261F6DCB6083CDDCD375173E243B4575DC4407FCF042F9204AD3E92B7B3EC55F7C1949A030296EBB0DB0660AE3887EAE2B7D1D35A37917018FFBD261B8074C618642CDB8AF4C59B3804E1B645D86DB0D497A3E6E487BC45849267';
wwv_flow_imp.g_varchar2_table(17) := '10684CA979C85DB3935D0AEEBC48826CB3A2FE5C113F2B5980613B261380C8CA4998B90C39AB77202A21CDCDE221CD4331A99B273E4047CD55F6ED847A104F8B499F8EAC95DB119B33C761A5B90C0ACE12801A4B8F325F0BCB319900644AC941EEDA5DEC';
wwv_flow_imp.g_varchar2_table(18) := '2C7484251CC3B96D551F2D44FBCD2B61011EE7B3D1161B93351BD92BEF454CD64C37E72383BEFE06AA8E16A2F3E65575087EB0A89C1C0092A1351891B1740BC8EA22D379183C323BEB2A0FFF19E6F2B321DDB6465A2BB6D0F21723E7B61D884ACA74FB98';
wwv_flow_imp.g_varchar2_table(19) := 'CDDA8BE68BC7507DEC1D587B2DC12EB7F2D74F060091391C9D3113B3EEFE0A7B9C5D9D75037DDDA8FF7C3FEA4E7F02FAB7AF919C1087B4E404687C6413F6F6F7A3BAAE09BD7DFDCA0BDF65464D8401E94B362173D9164498E25D7E23A3C7DC80EAE2BD68';
wwv_flow_imp.g_varchar2_table(20) := 'B97EDAEB19E8DDE3A24DC8484D84CE45EB3A3FD867B5A2B6B105962E95B6C0C900A008531C5B34694B36BA0546C949682E3F8FAAA37B1DD6CC08A919CFECDA866F3DF520F4BAE144315E0009B85651831FFCF37FE04A79B597C9AD28A264995349885493';
wwv_flow_imp.g_varchar2_table(21) := '99EF6A3D12D96FBD7E0A1587DE80B5BBD3EDB63A9D1677DFB1122F7CFD71C4469BDC1F49022A6AEAF1F357F7A0F874A9236749E971AB0388AC1972CCCDD8F2455E0097BD0B7D9D2DCC1FC8513852788044FAEDA776E21FFEF671441AF46EE2357758F097';
wwv_flow_imp.g_varchar2_table(22) := '8327F0F3D7F6E0667D93D2A2F7D6261A2DE2A72D40EEDA87604CCE76FB3DC5E6AA8AF7A2F9CA09B79F6BB51AAC5A3C173FFCEA6358B978AED73B5CAFACC10BBFFC3DF61F3FC3015CC5C7AD0E208A3965ADBC07E94B3673607388FBD86D68B9760AE5457F';
wwv_flow_imp.g_varchar2_table(23) := 'C240CFC8DCC11340F4FF5DDDBD38FEF925BCF3E9519C387B19E535F5B05A27263E4501D9CCE5DB90B9E22E48431A91CCFA0134941E46E5A137397DD639680B33461930273F07B72D9D8747EFD980B9D373A08F7058740240A37E652444256660FAE62711';
wwv_flow_imp.g_varchar2_table(24) := '9B4D0D59874303FD1DADB871E07FD056716154EBC51340ADED9DD8FDFEA7F8E3BBFB51565D87FE7EABBA5B97C7FB510A88213619A6B469830E4667E208190366581A2A611FF0ED82883218B0704E1EBEFBF4C3D8BA7639341A8D00D068F8218D933C7B15';
wwv_flow_imp.g_varchar2_table(25) := '72D6EC7490E7C1E1E00CA71DDAA777F4AC3F4F00D53634E367AFEEC69E0F8A600B597E8E044943E9B4DE6FEFE031236F45113A1D7EFAFC337866D7DDA0ED4D68A0911024CB9C839373FB4EA42E5CE7E6C925CF6DE591FFE5E8FA5851754F00D510807EBB';
wwv_flow_imp.g_varchar2_table(26) := '1B7B3E3C00BB1A9C417112E23E2191EA9F7EE7593CFBB000D0E8A2966544C6A7216FC3634898BEC4853BDBD1D55081EBFB5EE704F6B1C6640350844E8B579E7F16CF0A0D34D6D203B139F390B7FE51985273874C744A006BB870981D6FB611FC3EAE330B';
wwv_flow_imp.g_varchar2_table(27) := '008D2DE7D169E8AD9A0F24499C144FA18B88A8E8A177A4DAABEA638568B870C8AF140D01A0290920191A9D81CD770A44BAA64390A5420E3722D1FE2487050A2022B3764E7525C7B7048DA419B32CDE718DA30891AFD1380B15475EC4A1FB500EB666ECFB';
wwv_flow_imp.g_varchar2_table(28) := '882DCC8F2F0409556F8C65EB2B6DE1FAE1D0850C743557A1A2680F67F6F9938C152880624D462C9C9D87D818131A5BDA507AAD027DFDA3A7A1C6C74663FE8C5CBEA6A1D98C4B37AAD0D3DB376A59118559E6E4672336DA88FA6633AEDCA84677EFC89904';
wwv_flow_imp.g_varchar2_table(29) := '02407E028892C6A6AD7B1849B357BA1068196D15E739704A150EA399BB430E470F4FF45856182DD0F4DC4C3CBC6D1D76DCB906A94909B8515D8BB7F71DC1DE7DC5A86F6A81DD2364A0D568B060D6343CB8F50E6CDFB00A69498928ABAEC5DE7D87B1F793';
wwv_flow_imp.g_varchar2_table(30) := '623434B57A5D4361B985B3F2F1D8BD9BB06DED0AA424C57358E5AD7D47F0EEFEA3A86B6AF1199A1000F213405109E9C8DBF80524E62F1E1224692632DDAB8ADFE21A2E7FC6783410B929B33352F0DC130FE0891D9B116D7424ACD17DC901F9BB373FC46B';
wwv_flow_imp.g_varchar2_table(31) := '6F7C000A81B88ECCD424FCF06B5FC0CEAD6B6132460DB93B9B5ADBF0EB3FBE833F14FE1FDA5CAEA1F9723252F0BD2F3F8A5D77AD83C91839749F9BF5CDF8CD9FDEC5EB6FEFF319E01500F263D549C054AA93BFE909C4E72E18E63AB2CCE49982A7033DFE';
wwv_flow_imp.g_varchar2_table(32) := '950D8F0B409284CDB72DC5CBDFFE12E6CD98E6C679E899CE5E2EC3777FF65B9CBD7C6308D4C4751EDCBA163FF9E653C8CD48757B3BD254074F9CC5F77FF11ACAAA865357C98179DFC6D5F8D717BE81B4A404B76B06066C387AA6145F7EE1976869F3CE54';
wwv_flow_imp.g_varchar2_table(33) := '1400F21340A6A44CE46D7A12F1B9F3DD00544F002ADE0BDB181EE840B6300A0D9046F8F1DF3DC91AC27354D434E07BFFF42A0E7CF6F9108088283FFFA55DF8CED3BB863489EB752517AEE2EF5FF9352E95550DFD9800F4F443DBF06F2F7CC36718E54675';
wwv_flow_imp.g_varchar2_table(34) := '1DEEFBDA8F51DFDCEAF50C02407E0268440D747E5003A90020B2822875E2A56F7D11B3F2B2BC9EF46259256BA093E7AEB869A02777DC891F7DFD09CE3972F341C9328E9DB988E7FFF137B85659E306A087EEBA03BFFAD1734C9E5D0781EB4CE9753CF9BD';
wwv_flow_imp.g_varchar2_table(35) := '9F81B640CF2100E42780A84142FEC6C7119FB768D8DA9265345E3AC61CC8DAD5EEC74C0E9AED9ACE311A89260E4404FABBCF3E8C0736DF0E63D43037E9B47463CF8745F897FFFC339ACDC3F7A62D2C2F2B0D2F7EF3296C59BB0214F074747F91D1DED985';
wwv_flow_imp.g_varchar2_table(36) := 'FF7AEB63FC66F77B6ED7D0EF664ECBC48FBEF124EE5EB71206839E79136D794D2D6DF8FD5B1F3177EAEEF1B6C60480FC58761230D5574D5BF708926615B85B61E5E71C569899ACB0B1C7780044B3E9237458367F26BEFCC876142C9C0D833E021D962E14';
wwv_flow_imp.g_varchar2_table(37) := '9F2AC5AB6FBCCF5C86FC43AE83829ACBE7CFC4D71FDF812573A723CAA047574F2F3E293E8D3F147E82EB55B5B0D9DC6BE2B55A2DCFFF9547EEC18A05B360D0EBD16EE9C2BE2325F8EFB73FE144315F0962024063AF390B8E9A18E4AE7910290BEE18E609';
wwv_flow_imp.g_varchar2_table(38) := '3260692C47C5C137FC2ECA1B2F80E8F1689112E36291141F0B0A5E92FF87B40E595F9EE071BE0E99F2C98971488C8B0145CCE99AC616333A2CDD2346FD69EEE4F83824C4C72042AB05A5D736B5B6B3E61AE93E02407E00881C841A4324B2576E47E68ABB';
wwv_flow_imp.g_varchar2_table(39) := 'DD3DD11633CA8B76C35C76C6AF14CE4000E4CF2386EA3302407E4A9EB845EAA20DC85DF3107491C34473A0D7022ADF69B870C4AF7E8402407E0A7CA48FDDCA29ADD47163DAFA47B90EDE19B6A0683C5574DE3CFE9E5BEAE748EF2F0034550124CB9CCE9A';
wwv_flow_imp.g_varchar2_table(40) := 'B7E10B88CF5B384CA4ED76E63F65FB7E8FDEF6B113E10580A62A80401989B198B6F621A4CC5FE3C683AC5D6D282FDA8396EBA7C60CA80A004D59005133B008A42C58CB6D5CC82A730EDAC6A8FCA5E2E01E6E023EDAF005A09FBFBA1BBB3F281AD1D20952';
wwv_flow_imp.g_varchar2_table(41) := 'E47E5C3E4AC3CE316ABB22227478E53BCF888C443FA4CC691C540F9FBFF109C464CE18AECA9065F4B435A2FCC09FB80B073500F7970391894CBE99D7F67CC0A1825024D64726A42371FA126E4AE53AA844BBADB2945BEF790E322AC8EC9F999B8917BFF9';
wwv_flow_imp.g_varchar2_table(42) := '456C59B34C5465F80322AAA3CA597D3F5217AD77DBC6580B5D3E8EF2837B466DA6E0A981C8BF42F93D672E5DC77B9F7E864F8F9D611F8F678A863FCF16C86728BB327DE99DFCC7FD48053B9AAF9E40D591B7BC2A4DC8744F4B4EC4C3F7ACC7A6554BB064';
wwv_flow_imp.g_varchar2_table(43) := 'EE8CA11088A8CA186315A8B4272E672E666C799A1B590EB369993B8F5516BF05F38DB323763FF555994ABB0479865BDA3BB0EF70097EF1BB3741210EB507D5844567CD44DEBA47109D96EF763B0ACD541F7F0F8DE70FBAF9B7D8CBBD60367EF09547B16C';
wwv_flow_imp.g_varchar2_table(44) := 'C14C2E6F26A7A5730800F9B16A541346E53D44A65D07B5E335977D8EAAA36FA3B78D2C32EF7A2AFAC9734FDC8FEF7FF5B1A16A4EE71CD477B5B4AC02CFBDFCEFB85C46B5F17E3C4C101FA1A60AD9ABEF43CADCDBB88BD910A7B30D708164C5A13D7C908B';
wwv_flow_imp.g_varchar2_table(45) := 'EB20EDB37DE36AE63DE419F71C145AF9C9AF5E47D189B37E3956C7FDF8B7B21F6868A1353AC4E7CE43FEE6BF8121960A0C9D2B2DF3B914D43EB7E1DC4150AB145F83624D6B962FE0BC66B72181736E3E3A7402CD6675BB8411DFA12F40D68A6DEE35FE00';
wwv_flow_imp.g_varchar2_table(46) := 'FA3A5AB8CAA4F9CA31AFFA764A31999D97850D2B1723D230DCD6C6F91EE68E4E1C3A790E95B58D0240237E3B64401769E276BE19CBB77A3569A266E11587DEE49E88BE1A79535B97D1BACADB9CE77F8DFBEBE9E7059284F869F391BB66171B05AEAA8EAA';
wwv_flow_imp.g_varchar2_table(47) := '6CE96C0DCA71F2459EE90E8EA47EF753845CF672E66FAA74E6E09BDFAA653D3ED6263A350FD3363C8A984C1F9DBE1A2A38D9BEABB132BCBAC1536FA3F47CE4DCF680A3B39A0B7FA11DB7BBA586332CDBCACFFB5565E2276495FBD864029026428F94796B';
wwv_flow_imp.g_varchar2_table(48) := '9055B01D86584ADE7239D7CB6E6393BEE6F807B03494833AA1867C1078D2F2596B5287326D04F11E274F934071BDDA531FA3E1FC21FE77588EC90420020C596299CBB62275F1FAC10519163B6D070422EA56D659773DB4EDEE06350F7594A59E4074E09D';
wwv_flow_imp.g_varchar2_table(49) := 'EB9069EBBA7E0A374F7CC827FAF853A21412804D2E0051F19D06C6A42C64DFB60309F94BDCB704CAEA1BB0A2B3F63AEACF7ECA676238BAB5AA6C5E79AC2C79D063B2672373F95DBCDDBAF67474721A2A4B72F675548DBF2881B8C906205E008D16D1E9D3';
wwv_flow_imp.g_varchar2_table(50) := '1D3D9833667A9DCC431D3BA8F14263E911AE6025723A56170F25644DE4981C9FE4654E5BB801C61467937177F70291626A655777763F5B8F8EB67623B77451E4D9029D6432028864415EDCB8DC79CC874CE9795E3D98694B20E0906546713322D77448AE';
wwv_flow_imp.g_varchar2_table(51) := '5A5B055989943D40FD8CE2F3177137FDB11C4BD4A2AFFEEC01AE75630B2C1C31345901C420D2E91944194BEFE4A3053C8F14A0CFD8ADFD9C3F6DAE38CF6022CD64EDB638E26741780E1DF5EF0EF7426442061272E7232E7F119FCFEAEA24747EF19D07AF';
wwv_flow_imp.g_varchar2_table(52) := 'B86F57327ADB9BD178E1309A2E163B8A258378A64095CCA8D74D6600F176C6DDE0672073C536C4E72D70F451F411D1966D3626AB74A62975B2EF6EAEE1269D7C5E189F05E68C90FBE24B8EB3C49C678AF17961A6382E7EA406A071B9F3614CCC00B5F2F5';
wwv_flow_imp.g_varchar2_table(53) := '1E129F35DFD7D9CA60A3A659EE6C5AE6A3C41BCE17A1F15C11FA7B2C13DA726F4CD04D7600B100A811656226F7614E9CB99C17C9B7E3908B677831BB1AABD0D352CB7E989E36C7A98544C0A9D9A5832F397A1792E62050920B81CE9AA72316E85ED430DC';
wwv_flow_imp.g_varchar2_table(54) := '9496C7A7233247F7B5FDC8E08377A99E9F4E2D34A6E670CB1A47BB3E77A0522CACEEF3FD5C793B5AD3D031175CE90F4C09000D0A8D4C7CE22074665754529697F5E32E5B09A0C3E8BADB791BB1F674F076E700906DF0005E87079BF8166917D22086B864';
wwv_flow_imp.g_varchar2_table(55) := '184CF1831D6347428EC31AA4F85CF395CFD05AF6397ACD757C86188533D2166DF0C99128A4D170EE009A2E0D7222A5C110C87C530940F4A5D6E98D884ECBE3AE1EA39D20E8254B0A07D00F87FF33F491A183E3FCE02704C0FEEE0E74545FE6CEF3E452E0';
wwv_flow_imp.g_varchar2_table(56) := 'E3BF795B253F561C3B43D3166F8221C6BD92953E43FDA2A9035BD3C5231CE70BF99852001A94B62469595B501A086D69D119D339A3D117C9566A8168DB1BE8E984A5A102AD65A7D1567991AB67BD9A604980DE18C7F56E194B363397F2E44444A6A97080';
wwv_flow_imp.g_varchar2_table(57) := '523BAC43E053EA49C739CF540490AB88E8A86E22B9D4679A7C467C38AE8E8EECD60667F10C1EE4CB1AA7AB9D4FDD216D63A68CC2CE96D1FD4EB2CC6DFBA86C89B633CFF33FE8F9C937547BEA233E75D14A8DD4D538C6C01F2C4D7500396424716D197985';
wwv_flow_imp.g_varchar2_table(58) := '8D49D9A0BA7B8A8A93D38F09329D28A8D1B257DB17F9662D42EDEEEC36D8891FD96C9C35D8D554C567741011E7ADAAA7D3EFA83899F311C618A42DB8C301221F7EA33E8B19F567F6A3F9CAF1413F51081C450240EE5F3332C189CCD2B7DE109B04434C12';
wwv_flow_imp.g_varchar2_table(59) := '9FB44C9A8A16946256C3A9A612ECF601EE064B5A804E7FA61E8D64C5F57536A3AFA3D541BEE904E6003504DD9788359DC0A8F7C5893A5B38D84A5EF5909C6C280034B29E668DA371D740EC137221CBFC9D27ADE3C883E56A586EBE69776F96E0CF6E30D2';
wwv_flow_imp.g_varchar2_table(60) := '67F4A658A4CC5F870C3A0ACA18E3C589E864C3BA33FB517FBE08B63E4A9A9B404D240014CCD24EDCB51191D15CC294BE6C0BBB093CDAA37118A6E6C4FB1CF6503324E3F5C60240130782A0EE4481D8A868A4CC5B8BF4251B796B75051169402AA82467A3';
wwv_flow_imp.g_varchar2_table(61) := '2376D61EF0B639AEE714001A97B842FB6149622E9632EF76642CDD8C08639C1788A876ACE1FC4134951633FF523D15440028B49818F7DD5913C52075FE5A64ACD8C6FE2C574E46649DC874CDA98FD174A918D4B93F5002EFD7B30900F925A6B0FB90D610';
wwv_flow_imp.g_varchar2_table(62) := 'C520A220319503798288CE87AD3AF60E5AAF958CCB7D30EE1715001AB7C8C2E402D24426F6589389EFE56CA47CA7EE76F613350DE513A9609D090085091E02790CE6448ED819E53C91E3D3D33A239F14FB892E1C82B5C7FDC0DE406E29AC3045A4164693';
wwv_flow_imp.g_varchar2_table(63) := '1088A26291347735B257DDEB48CE770DEA72E6653B175736961EC680CB79AB8ABC4528345072C18E3936682E2BF2026212E63FDA482392661388B67330D6D3C4E712A1937F41E3E563CC8914F3350A004D1204BA5867698BC94F94E8ED27A228FEF9220E';
wwv_flow_imp.g_varchar2_table(64) := 'C0727A6C80E115578969619FDB5CF2EE9540A418702D8CD04081887BEC6B48139145469C88B22F2915C4D33AA3345DE2449C63ED6733F6D1EE2C0034F6BADC5A9F201051D863DEEDC85C790F749194BEEBF25D274E646943ED994FD0547A0464EE073342';
wwv_flow_imp.g_varchar2_table(65) := '02207AE084829D2AD894C18862725DAB233FD1020AC06E75F44D72CB969438FDA38E4074E918AC9CD918D872984B0A03DE8902BE70104007006C9C5CCB165E6FA3A37CA285EB91B6709D57EC8C00D5D34C8D1B0AD156712EA05E017FAD5379B9B5A4F0A5';
wwv_flow_imp.g_varchar2_table(66) := '40DF3A28002516EC7CE9AF95302F067A73719D1F12A0F4D8E804A4CCBD7D309F88AA3D1C9A869A6F514165DDA97D9CF4E6CFF9B29E770C2980E20B766E9400D24262A82901F213196391346735873D683BA35A372A2322B39E8A2A03010F3DB20C6C6A2B';
wwv_flow_imp.g_varchar2_table(67) := '292C0AF4F183D2408207052AF6C0AE23072335224D9DB7069D0DE5A82BF918DDADB5814D36785530FC87A6500240820705B584E3BB98CC7AAAD2ED6D6B0878DB72DE31D8ED4B1100896D6C7C0008FED312345A2D578404BA6D8515808435163C24423543';
wwv_flow_imp.g_varchar2_table(68) := 'B0DB97221A8826115A28541008FCBE4A6C5F8A014890E9C0173254572AA17D140590F009850A0AE3BFAF52DA475100D1640244E35FCC89BE4249F0280E2041A8271A0EE3BE5F91B9A470D3B8AF1AE582A0FD409E730B42ADE4F2283B57B05E675F4FA338';
wwv_flow_imp.g_varchar2_table(69) := '808455A6ECA22B359B1AE051650B73BEF0A026A240AB88D62B8582C0E6299281978389778D765B553490EB0D05B10E6CD595B84A69C23C615B98E78D04889480C3F8E69808F0A8BA85F97A5D01A4F18120804FABBA5D854C03F9D248F433918C1600447C';
wwv_flow_imp.g_varchar2_table(70) := '5F32E1C0713E86EA1C682C1111D9D60C126D01A8B1A435F4FB22093868078AD422C7FE3E49C801E4F9A0542EE4FC994D9266FBFB2293F5735A59BEEAFA6E81D66FA9259FB003905A2F2AE65547020240EAC875CACC2A003465965A9D1715005247AE5366';
wwv_flow_imp.g_varchar2_table(71) := '5601A029B3D4EABCA800903A729D32B30A004D99A556E7450580D491EB9499550068CA2CB53A2F2A00A48E5CA7CCAC02405366A9D57951012075E43A656615009A324BADCE8B0A00A923D72933EBFF033C0D6F72E6D068000000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26571377221740960)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000200049444154785EED7D07789CD599EEFB6B34A332EA5DB2BA251759EE7201DBD886D8060CC4F41236249424C0E6666F361B6EC8';
wwv_flow_imp.g_varchar2_table(2) := '26379BB297679310920DC993DD64432004480C981A6C03EE0DF78E2D5B92D57BEF53FEFB7CDF3F6304D6FC6566644F39E7C18F6C74FEF69DEF3DE7EB9F945CB14E86188202614A014900204C575E7C365340004030425853400020AC975F7CBC0080E081';
wwv_flow_imp.g_varchar2_table(3) := 'B0A6800040582FBFF8780100C103614D010180B05E7EF1F102008207C29A02020061BDFCE2E30500040F8435050400C27AF9C5C70B00081E086B0A080084F5F28B8F1700103C10D614100008EBE5171F2F00207820AC29200010D6CB2F3E5E0040F04058';
wwv_flow_imp.g_varchar2_table(4) := '53400020AC975F7CBC0080E081B0A6800040582FBFF8780100C103614D010180B05E7EF1F102008207C29A02020061BDFCE2E30500040F8435050400B4965F562A47CA705590E41F5AD52425E5AE12FDF7C9DFF97F88115014100018BB1CC4ECC4A35204';
wwv_flow_imp.g_varchar2_table(5) := '24F79F48334CE62844445A10116946842912528409922972DC85949D0ED01FA7C30ED96E83C33E0AA76D044EFB2864A713B2EC04E839EE6709505C5140080030234A0A739BA360B244C31C1387C8282B22A3ADB0C425233A291396F864586213608E4D80';
wwv_flow_imp.g_varchar2_table(6) := 'C9128BC8E818658BFFCC708C0EC3313204DB501F46077B30DAD789E19E36FE691BEA87636410B661FA3904870B18703AF91DC4B8FC14085300D00E0CDEC589C9CDD624C4A4642226391B314919884A4C63C6B758131161B218147FDC8BC8F28F4B1292E0';
wwv_flow_imp.g_varchar2_table(7) := '74DA611BEC83ADBF0B237D1D18EA6AC5505713863A9B31DADF05FB703F9CB651D705020C970B0A61070029220211915130C75811939283A4829948C89D024B5C124C660B2493F9B2D09EC4243A01EC837DE86BA94177F5310CB4D6F0C9E1181D61314A8C';
wwv_flow_imp.g_varchar2_table(8) := '89A740D80020C26486293A1651096988CF2A464AC95CFEA930BC96523BD10B2131C30F7536A2E3DC21F4D67F8C919E7616999C0E9BA22F88312114087100C89022225994B1661420317F3A12264D61999E64FE401C048491BE4EF4359E434FED29F43757';
wwv_flow_imp.g_varchar2_table(9) := 'F1BF4989165624FFAF58C802C02DEAC46517217DFAD548CC9D06734C3C2493C9FF549C803B92C5C83E328881960B683BB50BDDB527410AB6108DFC4BEC90038044161D73346252B298F1534AE6C3624DF02FD52EEBDD64D84786F9346839B605036DF570';
wwv_flow_imp.g_varchar2_table(10) := '8C0EB249550CDF2910520020FB7C7452069227CF416A49056253730256D431BA74B2C38EE1DE76749E3F82CECA03186C6F50F403317CA240880040B1E3938C9F396B3912B24B60B2C4F86E5B975DFE5FFAC90E2C7264B99C581715D3B10A2A993E953F74';
wwv_flow_imp.g_varchar2_table(11) := '12293F23949FEC16F6D1BC29CBAC0B0CB437A0E5D856749E3F0C876D5828C93E4020E80140B27E644C1CD2A72D4666F9724427A5B327D7BB418C2EB378418CE6181D82636418B6A15E0C773563B8A79D1552FAB77DA81FB42B7F6A48F42E569863121015';
wwv_flow_imp.g_varchar2_table(12) := '97C416A7E8E42CF629445A6210618966AF327B925D00F1E63D098CE453683FBD1B2DC7B761A4BFFBD277F1E6C661784D50038018292EB31099B35620A9B09C3DB85E594A686725BBFCF00086BA9A59BC602755572B46FB3A98E19D0EC7981340096718CF';
wwv_flow_imp.g_varchar2_table(13) := '38C98C4DFBBD7BE7379960268F727C2AA213D3119392CDA219F9204837212B95772783CCFE82DE86B3683EFA21FFBCE8480B4346F6F6938317009284E4C27264CFBF1EF159851CAB6398F95D8C3FD2D3C6E2444FED69F6D2DA8707E1B493336A8CD8E32D';
wwv_flow_imp.g_varchar2_table(14) := '85E93A972844A02051CD141583A8B864C4E79422A5641E62D372D92BAD80C7D8203D8040DB7870233A2B0FC269177A81110A0625002866276DCA02E4CC5FC3367D12838C0C626C8AC91968AF43C7D903E8BE7002F6A101562A2F06AB19B9A1D1B96E4098';
wwv_flow_imp.g_varchar2_table(15) := '4C88B4C4222EA704E95317222EAB984F314F81769E1E43EF4C1EE586831BD17E7A0FC71A09E799BE45093A00D0EE9931632932675EA330BF21795FC6E8400F7A1B2A39F4A0AFE91C46FB7B5C4E267D049B8859C4F0E4A320675D52D14C24E54D43746286';
wwv_flow_imp.g_varchar2_table(16) := '41D148C6687F375A4FED46CBD12D1C882740A0BD5A4105006294DC8537B1C26B894F31B4F35378724FDD69B49DD881FED60B1C73C3E24200851950584664742CAC69B9489DBA1869A5F3384255F790658C0EF5A1F3CC7ED4ED7D831D6962A85320680040';
wwv_flow_imp.g_varchar2_table(17) := '3B7FCEBC35BCFB5368835EC591C41D9291DB4EEF4647E501D868C70F70FB399F08D1716CD6CD9A7D2DACE97906C422729C0DA1EDD46ED60B4607BA030AE48106C8A00000ED8224F264CFBE0E5109A93A995F827DA88FE5FBF68FF7A1AFB90AF6E18140A3';
wwv_flow_imp.g_varchar2_table(18) := 'BFEAFB90C9D49A9E8F942915482D99C7A79EDE138B4EB8D6E3DBD17CE443451C12635C0A043E00240919654B9053B106D1893A155E49E238FBD6533BD15979882D3B97D8EC838421C8D46BB6262229BF0C59B357B29EA06F283A41E3A1CD683DB19D1370';
wwv_flow_imp.g_varchar2_table(19) := 'F49E9AFAEE1F1AB3021A00B4F849056528587617A293752ABCB28CFED65A341FF9005DD5475DBB3E59EC8D9B1803698929538DCCA6B41124E494B2334D7BC8EC24ABDBB99E432828FF408C4F5320600140A6CDB8CC22E42DB9CDB5E05AA64E89AD391435';
wwv_flow_imp.g_varchar2_table(20) := 'D9726C9BE2181A1D0EA95D8F721AE804C89CB90C2993E7C21415ABCDCF928481961AD4ED79838D00C24F1014009060B6C6A360E99D48254B48A4B625846CE11D67F7A3F9E816F4B7D470427A281EF964F68D49CD619D28B37C99AE0C360AA1EEAA398EDA';
wwv_flow_imp.g_varchar2_table(21) := '5DAF61A8A329001280B4717BB96604E409405EDDACD92B905371838EF00609B2EC608756D3E1CD1868BDE08A990F6E91478D01080414F54A3A4146F935BA225E49FC21859868641BE809C9CDC11BD0041C0058EE2F2C4721CBFD199AB23B1DE99DE70FA1';
wwv_flow_imp.g_varchar2_table(22) := 'E9F0FB9C3CC209235E84147843BC2B7B8DC420C899B70AA9531722524B1C92248CF675A176CF063E29434D3CF4762D020A00140B43D19305D7DC89E48272EDA84E594667F551341E788F5307650A580B0BE6772DB7242136250739F3563308B4D23C89BE';
wwv_flow_imp.g_varchar2_table(23) := 'BD8D95A8DDF91A7BC145520D105000A018FECCD92B905B7183B6822749E86F26E56E032B77323BB74257ECF1B4C3913864CDC847FED23B90903B5533A08E3CE22D473F44D3A1CD1CDA1D561BC638440C180090D5872C1C452BEF475C46BEC6C248ECDD6D';
wwv_flow_imp.g_varchar2_table(24) := 'F8E81D749C3B18F6C7B9622E9E81BCABD6B1D75895A9C947D2D1840B3BD7B3933058FD23DE8A3C9FBD2E40002073B5B5FC25B771A883D6514EC9280D8736B2A793FEAE7717B33B1CB0D9ECBAE7474812A22C81593DE2B30B4926D2B4E98B91BBE8660EB5';
wwv_flow_imp.g_varchar2_table(25) := '56A589EC441BC50BEDD980E1AE16DD31550E8713A336FDD6353A8FA3A3284C3D704740008076B084BCA92859FDB066023BC9AD1D673F42DDDEB730DCDDA29BB276BB034B2BCAB176C522D8ECDA45A7485EEEE8EAC1B32FBEA9A44106C1A088D2490B6F42';
wwv_flow_imp.g_varchar2_table(26) := '46F952CE3CF3382489731E2E6C7F05ED67F62989341ABA136D1E73CB4A70D7F5CB61235D4B6310F3F70F0EE3572FBCAE6C3A013A02020051F129ECF0A2284FAD31D8D188DA1D7F43B741B97F786414DF7EE46EFCE0EB5FD47AC4C5DF37B4B463F62D5F85';
wwv_flow_imp.g_varchar2_table(27) := '33582A304812E2328A50B8E26E7622AAE549D0A6D359751475BB5F67D3B1D61819B5E1815B57E3373FF85F5A532FFEBE6F6010D36F78088343C3BAAFB9DC13AF3800E8E826B367D1CA2F707942B5410A1C1DDBAD2776180E6C23007CF3C13BF0E37FFAB2';
wwv_flow_imp.g_varchar2_table(28) := '6E1AD736B562DEBA478307000058149AB6909D88942BAD720C300DEBF66EE0C851AD582102C017D7ADC26FFFED1BBAE9D7D6D983B9EBBE8AC1A1C00DC1B8E200A040AFDC856B39A15DBD68958CAE9A13A8DEF222970D343A8C008064DD968E2E7CB0E730';
wwv_flow_imp.g_varchar2_table(29) := 'FEF74F7E03679088406E9A904F8036144AB7D4D2A7DACF7E84867D6F731EB49A184462E38A45B3790329C9CF8135365A73090400B4E444B2FC641661F275FFC079B16A83E2DA6BB6FC055DD5C7BD8AE7D703009255EB9ADB70A2B206BB0F9DC4FBBB0FA1';
wwv_flow_imp.g_varchar2_table(30) := 'AA8E4207826D4848CC9D8AC295F77112BEA75C63FAFF435D2DA8DDF52AE744ABF905480F8A8F8B4545F954ACBA7A1EE69597A2B460125212E33D12470040956F14CB0F597DC8FAA3B653B1E27BEE206A77AEC7486F8757DCA8060087C38186960EEC3972';
wwv_flow_imp.g_varchar2_table(31) := '8A19FFA3636770BEB6912D1E1106F38DBD7AB909B888CAB0905E45F455BCC4E3D6B0E01C684A9C2167E2487F97AA1FC16D0C484D4AC0AC69C5B86A4E1996CC9BC17F8F8BA57E099F1E02006A0B2BCB5CC367F2EA07B960ADDA205367CDF657149BBFBB86';
wwv_flow_imp.g_varchar2_table(32) := 'BE41A6510340757D137EF1DC6BD8BAEF089A5A3B316AB733E307B35B8D7677AE3A513A5F354C8214E5FE960B9C2D37D2DBAE2BC79A4442A24DBC35166525F9B867ED4A7CE9B63502004678D2EDBC997AD363EAE97EB28C9EFA8F51F5C1F35C984A6F46D4';
wwv_flow_imp.g_varchar2_table(33) := '67DF450D009B771DC4DAAF7C17B1D1D188880866B6FFF4572B2D99A89E91FACA105838BFC06018099D08A3363BE6CF28C5F6BFFC42004037006499B39C7217DE8CAC39D7AA86E792E5A766EB4B683BBDC7A7EA0D6A0020597FDD63DF87C51C1C4E2FDD74';
wwv_flow_imp.g_varchar2_table(34) := 'BE0C13C9605031730A3EF8D34F05008CD03B363D1FA56B1E426CDA24CF97C932873C9CDEF08CD7B2BFFBE60200465647FF5C0100FDB4BA3893145EAAE05CBCF27EEED1E569D0EEDF7468131A3E7A572902EBC31000F081782A970A0018A5AB2C2332369E';
wwv_flow_imp.g_varchar2_table(35) := 'CB7DE42EB84125A349866DA01795EFFD9ED31B7D6D0C21006074A1F4CD1700D047A731B3644425A623FFAA754853097D20F35C5F4325CEBFFF276E33EAADF22B4420C30B64E802010043E4520AC5C66516A070F93D88CF2E51157F28DAB36EEF9BDC42D4';
wwv_flow_imp.g_varchar2_table(36) := 'D7214E005F2938FEF5020006E94AE6B6C4BC6928FEDC1711159FEAF16A2AEB47815AAD2777FAA592810080C185D2395D004027A1DCD328588B5A9496AC7950A98D3FDE90A99E4D27CE6F7E9E5B86FA2AFFD32304000C2E94CEE902003A09C5D36419A668';
wwv_flow_imp.g_varchar2_table(37) := '2B97F328BCE66EA514F938831C2C431D8D38FBCE6F39E6DF1FF1F8020046164AFF5C0100FDB46200507D4BCA5AA25E5E9E145BF260F6369C610050E2863FC6E50080DBE1EA6F5FF244DCD75FF7140030C09DB4E3C72467A370C53D482E9AE5110064FF6F';
wwv_flow_imp.g_varchar2_table(38) := '3BB903353BD6C3E9A7727E1305000A9D88B258106D31233292CA154A9C3F40F1F3F44C0AB4339A4F460032459A389D30CA6CE6B8243A05292B8BEE393A6AF32A449B421E28C533DA62E177A57FD3BB52D0DFF0880D7687DDB0B14D00C02000A8DA71C9EA';
wwv_flow_imp.g_varchar2_table(39) := '2FC39A51E83104824A1C52293FEA7DE5AF527E1301008B39129332D370C3350B71F3B58B31B5280FF4FF9ADA3AF1C1DE23D8B079174E5656736AA05E318EF290E3AC31983575326E5DB5042B16CD42666A3203EAD4F90B78F3C3BDD8B4E3001A5B3B60B3';
wwv_flow_imp.g_varchar2_table(40) := 'EB4F35349B4CC84C4BC6E796CCC72DD75D8599538A101B1D85B6CE6E6C3F7082DFF5D0C94AF4F60F18029700801100389D88CF2EC6D49B1FE7CE899E0655313BBFF9392546FDB39D180D3C6FEC547F03C01C69C2E239D3F18FFFB00E8B6797C11A137531';
wwv_flow_imp.g_varchar2_table(41) := '749AA2259D0E27CED536E00FEBDFC31BEFEF427B67AF76D516596626BDEDFA65F8D2AD6B50949B051345A5BA82D468B7EE1F1CC2CE8327F0EB17DFC081636760776837CC2650CD9D5182C7EEBB052B16CD41625C2CA74BD24943C0743A6550F6DB8B6FBD';
wwv_flow_imp.g_varchar2_table(42) := '8F57DED98AFA668A0AD527C80900186048B2E650E8F3F45BBF0993C573D2B66374181FBFF59FEC08F357F1267F028098232F2B1DFFF1ED47B0B46226EFA4E30D02C2F9DA06FCE8D917B171C70116353C311631228952B43B7FE7ABF7A0705296C7B90383';
wwv_flow_imp.g_varchar2_table(43) := '43F870DF117CE7677F40535B87A6D8929E92841FFDD303B87ED94224C48D5F50979E5FDFDC86A7FFF82A5E7E672B86474674814000C0200012F3CB507ED713AA8C4DF9A927FEF6145B82F48A0E5AAFE14F00982323F1E01DD7E38947EE4652825ADEADF2';
wwv_flow_imp.g_varchar2_table(44) := '56AFBCBB153FFDFD5F5179A18177F4F10631525969019E78E41EACFBDCD55A9F83F6AE1EFCBFDFBD84E75FDF0C8746D2FEBD375D8B27BF762F8B6B5A63D3CE037CDF83272B1169D22EC12E00A045D131BFA7134001C0FF51B5ED13008EBFFC630C75B7FA';
wwv_flow_imp.g_varchar2_table(45) := '1C02E17EBC3F0110131D85579EF9571681F43009EDD2FFF8C35F83988BC033DEA0B8FADB562FC5CF9EF80A32523D8B87EE6B49FEDFB6FF18BEF0CD7FD72CF3F2DC53FF8235CB16E8AA71D4D1DD8BEFFFF24F78EEB58DBAE60B00180180EC4452413966DC';
wwv_flow_imp.g_varchar2_table(46) := 'F12F1A0018C4F1977F12B000B0C64463FFABCF222B3D45F7D73FF89D9FE1AF7FDFEA31E780C4A387EFBC11CF7CF731DDF7ACA96FC6E2BBBECE49299E0659A9B6BEF073944F29D27DDF1FFCE7F3F88FFF7E4557512B0100DD64A546EBFA4E000A8338FED2';
wwv_flow_imp.g_varchar2_table(47) := '8FFD12043711270001E0D086DF82646BBDE3E1EFFE1C2FBFB34515005FB97B2D9EFECEA37A6F89BAA6562CB8FD714D00ECF8CB2F307DB2DED64AC00F7FFD029EFAAF97050074AF84CE897A01404DAC8FBDFC130C07A808444AEFDBFFF563CC9C5AEC51A6';
wwv_flow_imp.g_varchar2_table(48) := '1F4B92EEBE7E7CEDFBBFC4DB5BF6B299747C11C8C6B9B54F3FF92812ACDA9D5FC82770E0F8197CFED1FFAB6A0E2563CE5F7FF93D2C5F30DBE5A7505FAC81A1617CEF993FE2772FBF2344209D7CAD7B9A7E000CE1F82BFFCED9609A260E9D4FF7A70E404C';
wwv_flow_imp.g_varchar2_table(49) := 'FCCF0FDE89C7BFF079C4C66877AF210BD00F9F7D0127CE56C3E441B12486AE289F82EF3D7E3F562E9AA3F955BDFD83F8D5F3AFE397CFBF061243D4C6A3F7DD826F7EF976503507AD419531C86AB5F3C0715D8011229016453FA3045309EFB2DBFE59B50C';
wwv_flow_imp.g_varchar2_table(50) := '0A99414FBFF10CFA9BAA02D20C4A72F5F4E2023CFDE45731777AA92AA35081AD9FFCE62F786DF34E90F952CD0C4A5516E814F8F62377212D39D123654901DE77F4637CEBA9DFB16549CB5256949B8DA7BEF510962F98058B4AB1DFAEDE3EFCEAF90DF8E3';
wwv_flow_imp.g_varchar2_table(51) := 'ABEFA1A76F4098410DF0B6AEA964D38FCF998C69377F1D66ABE7DD881C61E736FE015D5547FD12094A2FE7CF1380EE47E10437AE5CC8A7C0ECA9C5E3D60F22E6FFF31BEFE3850D9B51DBD4A68B46C5B95978E0F6D5B877EDB5E38280422B0E9EAAE4A2BD';
wwv_flow_imp.g_varchar2_table(52) := '1BB7EF5795FFDD0F244BD57557CFC5E35FB8058B664F1FD712D5D5D387F51BB7E37FD6BF8733D5F5BADE952689134037A9480976C29A5980D2350FBB2AC18D1F2543A1105404ABE5F80EAFAAC08DF74AFE0680BB2E0EE9016B572EC2AA25F330392F9B63';
wwv_flow_imp.g_varchar2_table(53) := '816827DD7DE814DEFC700F17DA6A6EEFD41453C6326B4E462A96CE2FC7CDD75EC5A6D6C4782BEFF2B4DB6FDA7910EF6EDDC7D5EBC82BAC7790E23E7D723E6E58BE106B9656606A711EEB2F54C076FFF13378EBC3BDD8BEFF183BC3F454CF763F570040EF';
wwv_flow_imp.g_varchar2_table(54) := '0AB0DBDDC92D7DA8641F3574F024DF3B1D36B41CDD82DADD1B7C2A8532F6D5FC0D00F7BD49A6CF4849649368BC35061152049F36AD9DDD686EEBC4E0B07785618961B3D353909692C8A70D39BB885929CEA8BDB3470194BE6805E555652A9C1BC17A4076';
wwv_flow_imp.g_varchar2_table(55) := '460A12E3AC0C80119B8D9D6A74DFFE01FD80120030C0F8EEA9B48B4527A4722793F4194B54C2A11DE8BE701295EFFDB752B5D80F63A20040AF46B1344E998A50292F4A7C294548A0181CBD31359FFD448ED19165C84EF962342959740860BE14EFF2F7BB';
wwv_flow_imp.g_varchar2_table(56) := '8A13C00873524588983864CD5AC9F5403D27C438B95AF1D9B79FC530D502F54375E6890480111284DA5C0100432B2A73D3EBD4D20A4C5EFD25CF75282925B2B703E736FD0FFA9ACEFB4511160030B450BA270B00E826954B3C7035742B5EF5002CB12AA6';
wwv_flow_imp.g_varchar2_table(57) := 'BEA17E5684DB3FDE0B4A90F1750800F84AC1F1AF1700304A57AA5A9C558CA215F7C29A494931E30F4A84693EF201EAF7BF0BF20CFB3A04007CA5A00080DF28189D9C898225B721A564BEC77B92C99414E1EA2D7F56FAD9FAA8070800F86DF93E75237102';
wwv_flow_imp.g_varchar2_table(58) := '18A5ABAB3274F6BC55DCE19CCB728F37480FE8EB40E5DF7F8FFE966A9FF5000100A30BA56FBE00803E3A8D992523C21C8DD429155C1A45E95EE2490C72E7066FF1D91F20006078A1745D2000A08B4C9F994489DF59C55C1E3D3A29C3F31D64197DCD5538';
wwv_flow_imp.g_varchar2_table(59) := 'FBF66F303AD0E3CD932E5E2300E013F93C5E2C00E00D5D5DF581F297DE81F4698B54EF4061115421BAABFA984F09F20200DE2C94F6350200DA341A7706F50848993C0F256B1E526DE84C1ED1CE738750B3ED658CF67779F934F560386A9174D357FE1531';
wwv_flow_imp.g_varchar2_table(60) := '54D941673504AF5FE4325E488E46A5A8804A652299EA1547286B60F0DB696D283275DE8C29D8FEE2D3977C996892A7B6D8B2CC2D3CA7AC7D54BD4B0C006A915AF5C10B6C15F2B64C8ADA0970EC4C159EF8E9EF71A6BA0E3DBD0370381D41DB1D722CC9A3';
wwv_flow_imp.g_varchar2_table(61) := '93B31097590893592567419230DAD789FEE66AD806A9748B768011313E19E5A870574E460AD6AE5C8C1F7DE34B0200863637575844F6DC5598448D323C598368FF72D8D1726A17EAF7BE099B97BA801A00281FF7D4B90B787BCB3E8E8C3C5B538FB68E6E';
wwv_flow_imp.g_varchar2_table(62) := 'AEB9E34BDC8D217AF879B2C96C41CE82B520FA9A553BC603ADA7767221B2A1CE26D52E91EEBC030AD4CBCFC9E4E25A2B16CEC2AAA5F3C70DDD162780C6A212D3274C2A45F1E71E407462BAEA6C2A925BF5C19FBDEE16A30600F7830787869526D9874F61';
wwv_flow_imp.g_varchar2_table(63) := 'D7C11338FA7115474A06E3A00A7C45D7DECF27008B37E30D49E25DBF76D76B8AC7DD3EEA0AE5BB74B2B2E39B41C9358B664FC3D28A722C289F8AFC1CCF460C01001D9C13C5D1A1B7226DEA420D5DC089B693BB50B767835716213D0070BF2E9521A446D9';
wwv_flow_imp.g_varchar2_table(64) := 'AF6EDA81679E7B4D33E34AC7675ED62911660BF2167D9E0B109B2CD19E9F2D49E8BE700275BBDF407F7395EA3B52CAE6DCB2127CEBC13B71D5DC32A426276A46630B00E858765AACB4D20A142CBB8B2345D506658A912E4025138D16CD350200F73BD436';
wwv_flow_imp.g_varchar2_table(65) := 'B662DEAD8F7201D96019EE062493577D199638F5AA15B4E3371C788F732FB4E47FDA14BEB86E157EFB6FDFD04D0A01003DA49224C42465A0700525C994793C82DDB7EA6B3C870B3BFEE6F20EEB674C02C0B71EBA133F1C4759F3F49A171A5B30FFD6C782';
wwv_flow_imp.g_varchar2_table(66) := '07009284E8A44C145E731792F2CB541B9093E5873CEC1776ACE746E45AA126DE00A0ABB71F336F7A188343DE2505E9611F5FE748C915EB8C56EFF6F599975CCF26D1927928BEF67E982C31AAF72785B8F9E816341EDA64C82C4AC5A3EEBA71391EBFEF16';
wwv_flow_imp.g_varchar2_table(67) := 'CE82D21A94C8D2D0DC8EAF7DFF1943D592B5EE3B91BF27DA51F7CD9CF9AB55DBCFD23B9079B46EEF1B6839B615F6A17E4DEB0F993B572D998F27BF761FD738D51E12BA7BFBF1F0933FC7F028E916813902020064A736C7C4A3F8BA07905C3C4BD5224464';
wwv_flow_imp.g_varchar2_table(68) := 'A4E0B8BADD1BD83FE0B051C698B6E98EAE235146A9A3A96F3E5904F5943E0C84A5A5765389F9D358948C49A1C2BA1E145FD7CBF63656A266CB4B7C0AA859E0C67E1B65A85152BE6EFA01BA4AAB5C49FA050800C0C735558EA653802D421AF6680A912010';
wwv_flow_imp.g_varchar2_table(69) := 'F4D6530F61DA91F431F59524F6443D9B983D362D17F9CBEE4062EE34556302D1C936D8C3969F8EB3FB412568B4683D51EF1D08F70D1800103148099EB4E04664CD5C8E0835E78D8B72E418A3C4F981D61A4D193610883D21EF405D5FE25351B0F476244F';
wwv_flow_imp.g_varchar2_table(70) := '9E8708AD8ACEB28CF6B31FA17EDFDB6CF70FF7115000207B3525C970B24C4681E6314EFA40EBA9DD683AB219439DFEAB2217344C2149B0589338C73A6BCEB5EA264FFE28899B0E52A65D57CD7155BB7FD0D0C0C7170D2800D0B744445A90366D11F2AFBE';
wwv_flow_imp.g_varchar2_table(71) := '0DE6D878CDCFA36CB1E6E3DBD1727C1B467ADAD5E35E34EF165C13883E193396B1E26BB1266A8A324EDB281AF6BFCBB4D2327B061725BC7FDB8003007D8A292A16798B6E4646F9321DBB1AE0B08DA2E5D816341FDB1A1E2090240E6F482F5B8249153720';
wwv_flow_imp.g_varchar2_table(72) := '329A722AD475200A8CEB3CBB1FB57BDE508A0E8BA19C89816006BD642DC89E9D9886A295F72321770AA8B9B6D6202719ED6C7C1274B7792CB9A2759F80FFBD4BEC499F7E1572E6AFD13477F2F7C84E0CB4D5A166DB2BE86B3AE7B77AAB014F2B1D2F1898';
wwv_flow_imp.g_varchar2_table(73) := '0020649A2291943F03F94B6FD765D6A36FB50F0FA0A3F2009A8F6EC56047032F7C280DB2F6509F653A1933CAAE76797AB5AD5F144D5BB7E74D7454EEF75BA1B150A16BC00280F5017314D2A62CE0225A8A3EA0BDD8E4DEEFA93F8BA6439B5C2652DF4BAA';
wwv_flow_imp.g_varchar2_table(74) := '04C26293AD3E263587459EE4A2993099A335657EF77BB3E3F0C07B4A7101C35D8B03E1EB27EE1D021A006EA5983C9B99B356C2129BA06BD1C9CBD9DF52C37D86BB6B8E833ACE68B9FA278EC4BEDE59028536C7E54CE6220209B9D310611ABFC986A72791';
wwv_flow_imp.g_varchar2_table(75) := 'B993C24728E4811461313EA140C003805ED51C9BC08B9F51B604913A2C436EB977B8A7039DE70EA2FDCC3E0C7634417606D76940BB3ED9F8294C247DFA624E20D2EBB51DCBE4BC21349F47FDBE77389C5C097B168328101400204F2535D6CE5FFC79A494';
wwv_flow_imp.g_varchar2_table(76) := 'CED76519524020B3A773A0AD16CDC7B7A1BBEA285B8C82410C20C53F2EBB18397357213EA704A6E8584DBF881A4B53779EC18E463E090804DE66D6851A6C8203000C5532FDC5B37F20A564AE2ED39F7BB168F14941EEAC3A8AB6133B98111CF691C0138B';
wwv_flow_imp.g_varchar2_table(77) := '2489C51B8AE84C9DB2900B06907D9F0C02FE18640AA5A2C39453D1537B5A9C044173028C59FDA8843464CD5E89B4E98B556B8B8EC73074F40F77B5A0BBEE34EB06A427F8ABFCBAAF0C4A0E405272930ACB919C3F03B1E9B99A91B1DE3C93C4212A38DCB8';
wwv_flow_imp.g_varchar2_table(78) := 'FF5D4527B0EB89ECF4E649C1714DF09C006E7A9238149B888CF2A5EC01359307D440D944DA059DA3239C684F89E06436EDA9A3DDF0CA3002C9F414FE4119710939A56CE68C8C8AF14AD6D7CB7224FED02958BBFB75F4D49EF2B9EA9EDEE706E2BCE00300';
wwv_flow_imp.g_varchar2_table(79) := '535182292A0669532A9035E73A4539D408FFBD84F8D480C261836DA81F431D8DDC8F8C224B4707BB596F20B1C9FF43862499D8BC4B665D2A129C5C3C1BD6CC22F6EC52769CF1EF706274B0179DE70E23316F1A8B4F1E7380C77C106D04E41C6BD8F736A7';
wwv_flow_imp.g_varchar2_table(80) := '455EA90DC0FF343676C7200580A2E052C844627E19B2662D477C4E29339091D3402195C4D6214A0A19E9EFE20849929387BB9B415624DB40176CC3FD80734CFB174D7F84FC899E2D81451952E2497CA3EC37127562532781F2A123A315C657CCF3C67293';
wwv_flow_imp.g_varchar2_table(81) := '58A66FAB43F3B16DE8B97092CBCB50850DAABAA7C75AA48843E7D07860239F044E87E7A478636C153CB38317002E1A13F3C42465725C0C05D19178E4A9F38CFAB248EC39A69DD0611B66DF01818294E7D1C11E8C74B772D30E2AD1681BEA837DB8FFD253';
wwv_flow_imp.g_varchar2_table(82) := '428AE05AA79131F1FC1E510929884A4A4794359943BD89D9296E879C58BCDB53291803E2DB27EF2F714E7457D56166FE81F63A3846861161362321670A7BCF090C7A4E13128706DAEB51BFEF2D74571F872CEB4F78091E36F7FCA6410F006513A7B0E044';
wwv_flow_imp.g_varchar2_table(83) := '244F9ECBBE026B7A1E2843CAE88EEA3E117883E7E24F4EDEF99D4E3B331C8183C426629A4F9A768CDDB525666AB262B342B1000008FA49444154E4901993523D49DC61C75544848B21DDDE6C63BBFDC52594650CF7B4A1EDF41EF66F8CF4B67F2AB68794';
wwv_flow_imp.g_varchar2_table(84) := '69329B162CBB934F19DDE250CB05F61653094AFAC67019A10100961E1491282EAB88CDA4C905331195984A01155E02612C0B481C85A1B0AE8B813D45658CE16B6E6FE78568E389F96C837DACB077561E406F43259F44E30D8EA32A98819CF9D7233EAB48';
wwv_flow_imp.g_varchar2_table(85) := '8719954E3F077A1BCFA1E9E026AEC0C7CE321D55E2821D28A10300170868F149DE2620A44D5DC4D51148619E18A576E2979FC4183A6DA86E4FEBA95DA0AA18B4EB7348830A83D24990983B157957DFCA26556D714882ECB0A1BFB5964F82CEAAC394441D';
wwv_flow_imp.g_varchar2_table(86) := 'F220082D00B8F951A61E04160E2348CC9FCEDEE3B88C42C5AEEE126F269E757D78828BB149EC1AEA6A41E7F943E83A7F94E3F8493F518E15EDC04012C1287628EFEA75B0A69158A89E28CF060199C226AA3998B0ABEA884B1CD27E960F5F7B452F0D4D00';
wwv_flow_imp.g_varchar2_table(87) := '3049A9C7AE93C5226BDA24B612919D9D522D2DF1C9BC237AA72C4FDC7A512916626DFB601F9B2869B7EF6BAC447F5B2DD744E55DDCA058423A4972D12C50471E32BB6A7A95E9FE4E27A86A44D3A1CDEC306413A9C1E74E1C95FC7BE71006808B50646591';
wwv_flow_imp.g_varchar2_table(88) := '24B6CEB019327512E2B38BD9664E7F67A62365D78FB2BAA125E266DA11ACC39095A9A7FE347A1BCEB16F82F277156B936FA2089D04897965C85D7C33AC19F9EC8B5037109038348AFE960B683ABC191D958794DC8A100441E803608C58C42A6CA499C3AA';
wwv_flow_imp.g_varchar2_table(89) := 'C979664D2F608B8935234FB1C79B222FDACF1505D64B4B8D270410B3BB4417F6483BECDC019312FA79A76FA9660F2DF541E05DD7055E4380F23099AC52890565C85D7813E2320B28E3481304C4F4547E864E82501587C207009FD8119562B76435B2C4B0';
wwv_flow_imp.g_varchar2_table(90) := 'E794C0109392C9F588486F20932AD9F22363AC8A399581A0587474018319DD6531A25D93C50A07EC23436CB9A18474AAC94F32FD10FDE96CC670579362D5E11381AEF6B7DCAD78A15326CF45D6DCEB5CE210A59AAA80DC250E91284695F842511C0A4300';
wwv_flow_imp.g_varchar2_table(91) := '8CD922D9D64F8C2131B313D353EE41545C12CCB189FC77FA4356258A448D8CB6B22845B67D93859A4E5CCAA4649DA14853DAD9C989464CCDCEB3816E90197374A097FF4ECE3592F5C9CB4C7E056FE47BE327838C08934531912EB8912D65AC18AB9E748A';
wwv_flow_imp.g_varchar2_table(92) := '38D4D75CC37D9B3BCE1D0C29EB507803602C0711185CBB21EDFA1111264826132BD1243211F39339954E0D32317AEABAC2CE32FB28C713B137D90502FA49664632C73AB9BCA0AC88435740AE267128A97026722A143F01388E4A4DDC53BCE4240E35929F';
wwv_flow_imp.g_varchar2_table(93) := 'A0FAE81847A0711806D21502001E57631C91C70D122DD5809D666398DB2DFBF381E16FD1C60B76A21D3F2202A925F3B9A096E22CB3688A439C59D64420F83BBA6B4E8644EC90008017FC13129790AF24D27512CC5F83F8ECC90C0A6D71C8C62781220E1D';
wwv_flow_imp.g_varchar2_table(94) := '0A7A7148002024B8D9DB8F209DC0CC21D9D9F356B362AC4F1C72A0AFA5068DFBE9243811D4B1430200DEF24EA85CC7A6D608A496CE47F69CEB109755A82D0EB93CC6032DD5A8FFE81D25945AA5BF5820934A00209057E772BDDB1871884E82849C1243E2';
wwv_flow_imp.g_varchar2_table(95) := '50D3E1F7D175FE485086520B005C2E260BF8E7B8C5A1391C36C149359AD621A5EC2205D0510BDB2B995AEA2D790500BCA55C285EE7B20EA54C9EC77598C8632C715D5675B317A75706290804004291917DF9A68BE250392BC62C0E69864D28CDCC396CE2';
wwv_flow_imp.g_varchar2_table(96) := 'E026EE3D102CE1E70200BE304B085FAB588766217BFE1AC46516E91287C84F30D85E8FDA5DAFBA2AD0057E669900400833B16F9FA65887528AE770A23D759ED70CA5E6C43C37085E476FFD99802FBE2500E01B9784F6D52C0E59388A947A1128E2905652';
wwv_flow_imp.g_varchar2_table(97) := '8D5B1CAA46E381BFA39BEA0E3902B726AB004068B3B05FBECEED31A606864A3E810E109038D4D1800BDBFFCA95E802B520AF00805F5824D46FA2845253D9C6DCC5B7C09A96AB5F1CA20A743BD6738619A57806DA100008B41509D8F771894379D39528D2';
wwv_flow_imp.g_varchar2_table(98) := 'EC121D39C6E4267070423F798C159D20B0146301808065B8C07C311687F267F049A0AFDA0481C089C1CE46D46C7D8913EE03491C1200084C3E0BE8B7A2447BCAA9E60A7429393AC5211943A413507F82C67301230E09000434AB05EECBB94BAE90624CA1';
wwv_flow_imp.g_varchar2_table(99) := 'D4DA2557C68843FBDEE6C25E8170120800042E8F05FC9BB189348FEA0EDDAABF16A9D3C10588AB591CAABAE23A810040C0B35960BF2039C7A8DE52C1F2BB11ABB38719E561B338B473BD72125C41EB90004060F35750BC1D9D040993A62077D15AC465E9';
wwv_flow_imp.g_varchar2_table(100) := '1587DC8DFBAEAC38240010142C16F82F499532122695227FE91D4A556A1DC9FEDCB88F5AB86E7B85FD0457C2632C0010F8BC15346F488A31E51114ADB857774BD78B8DFBA85D531DF52CBBBC2D5C05008286BD82E3451571A814B98B6E32D8A9E63C1AF6';
wwv_flow_imp.g_varchar2_table(101) := '5F7E6799004070F05550BD258B43AE261DEEFAAB5A1FC09D6A5A6B51F5E10B5C93548F5955EB9E7A7E2F00A0874A628E610AD0494095E71471284793A1A99058D391F7D17CE443AE847DB90A860900185E5A71815E0A28CEB2A9C85D48D621CF8DFB88F9';
wwv_flow_imp.g_varchar2_table(102) := '5B4FEE40F3B1AD18E96EBBAC65EB0500F4AEA698E71505DCE2503EF72CCBB924949A94E0C6831BD17A62C725FDCEBC7AA0C18B04000C124C4C374E016EDC973D1905D7DCF5A9C67DB4F3371FDB829663DB30D2D7E1FF72F43A5E5500400791C414DF29C0';
wwv_flow_imp.g_varchar2_table(103) := '8DFBF2CB90537103D722A5DE082CF61CDDC25D2FFDDE8B41E72B0B00E8249498E63B05D8449A3B05798B6E4177DD296EF53AD2D3F6A936AFBE3FC5D81D04008CD14BCCF69102A418C7246771CF046A447EA5FBB40900F8B8A0E272E314A004190E95D011';
wwv_flow_imp.g_varchar2_table(104) := '2E61FCEEC6AE100030462F313BC428200010620B2A3EC7180504008CD14BCC0E310A080084D8828ACF314601010063F412B3438C02020021B6A0E2738C514000C018BDC4EC10A3800040882DA8F81C6314100030462F313BC428200010620B2A3EC71805';
wwv_flow_imp.g_varchar2_table(105) := '04008CD14BCC0E310A080084D8828ACF314601010063F412B3438C02020021B6A0E2738C514000C018BDC4EC10A3800040882DA8F81C6314100030462F313BC428200010620B2A3EC7180504008CD14BCC0E310A080084D8828ACF314601010063F412B3';
wwv_flow_imp.g_varchar2_table(106) := '438C02020021B6A0E2738C514000C018BDC4EC10A3800040882DA8F81C6314100030462F313BC428200010620B2A3EC71805FE3F7D5B2FFCCD41DCAA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26571636158740960)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED7D07985CC595EE7FBBA7A727C79EAC49CA39E7384A084412081B16F01A636C83CDF3DAAC176CEFB3098B13';
wwv_flow_imp.g_varchar2_table(2) := 'D85E2F7E5EDB8F671B6CEC75002384BD2C280B0924144611C5D16872CE3974F7F3A9EE91C6C34CDF7B3BDCBE7DFBD4F7E9D34853B7C25F557F9D3AE7D429099C180146206C1190C2B6E7DC714680110013004F0246208C11600208E3C1E7AE33024C003C';
wwv_flow_imp.g_varchar2_table(3) := '07188130468009208C079FBBCE083001F01C6004C218012680301E7CEE3A23C004C07380110863049800C278F0B9EB8C001300CF0146208C11600208E3C1E7AE33024C003C07188130468009208C079FBBCE083001F01C6004C218012680301E7CEE3A23';
wwv_flow_imp.g_varchar2_table(4) := 'C004C07380110863049800C278F0B9EB8C001300CF0146208C11600208E3C1E7AE33024C003C07188130468009208C079FBBCE083001F01C6004C218012680301E7CEE3A23C004C07380110863049800C6187CDBBCDBB247FD55A4292B8CE78BFEBBDEEF';
wwv_flow_imp.g_varchar2_table(5) := 'A819AD918DC5DBABF5DF78ED5B18B60490B4704B11C16D028A9CC09A61D08BFFE7646804F652EF24601FFDED00F6B61EDD26FE2FDC52D810002D780978D23DC0BCC8C36DA62BEBEFDE2152683EBAED29659F84762EC312002DF861BB3B2FF8D09EA7C16A';
wwv_flow_imp.g_varchar2_table(6) := 'BD2004234B08862380613B3D2FFA602D1B83D62B014F1B4D32300401F0A237E88AD369B78808A8694620839026005EF83A5D2161D22C2310414812002FFC30596121D2CD503E1A841C01A42CDCF294F3BA363F44A60837331C10084522081902E05D3F1C';
wwv_flow_imp.g_varchar2_table(7) := '9650E8F731D4482024088077FDD05F18E1D683502102DD13002FFE705B3AC6E96F289080AE098017BF711643B8F644EF24A05B02E0C51FAE4BC678FDD63309E8920078F11B6F11847B8FF44A02BA23005EFCE1BE548CDB7F3D9280AE088017BF71273FF7';
wwv_flow_imp.g_varchar2_table(8) := 'CC8580DE4840570490BC708B93270A236074049CC05ABDC41FD00D01F0EE6FF469CFFD1B86C0DE96A3DBD6EA01115D10002F7E3D4C056E839608E8E528A00B0260D15FCBA9C775E905013D1C05824E00BCFBEB653A723B828040D08F024125005EFC4198';
wwv_flow_imp.g_varchar2_table(9) := '725CA5AE1008B614C004A0ABE9C08D094304822A05048D0078F70FC3A9CE5D1E1581604A014C003C291981E023103429206804C09AFFE0CF3A6E817E106839BA2D286B312895B2F8AF9F89C72DD10702C13A0604850078F7D7C7A4E356E80A81A01C0334';
wwv_flow_imp.g_varchar2_table(10) := '2700776CBF3DBA829E1BC308E800816048019A13008BFF0A679A2441926878FEE6344A3FD367E2DFE287310A71DFA5723A217E72FE2D7EB2F8D9F537277D23100CF760CD092079E116DAFDF9D9AE1173513299618A888429C20293C58AC8980444A764C1';
wwv_flow_imp.g_varchar2_table(11) := '9A6083352E1996D844F12722321AE6C8E85166B21383FD3DB0F7F7A0BFAB0D035D6DE86B6F425F5B037A5AEB30D0DD01C760BFFBCF009C0EBBBE574378B64EF36340300880B722F7E436D3428F4B46647C0AA212D310939A8DA8E44C4425A523222A1644';
wwv_flow_imp.g_varchar2_table(12) := '0A92647249029269144960C42AB9B6F33B5C3BBFF8E380D33E88819E4EF4B635A0B7A5063D4DD5E2E7BE8E66F477B60A52E0A40F04B4B606684A002CFED31A36212A3903719985884BCF47547216A292D260898987648A702D78935BF4F7EB9C74C2E9B8';
wwv_flow_imp.g_varchar2_table(13) := '4E082425F4B6D5A3A7B9165DF565E8AC2D15D2021106A7E021A0B51E800940A3B1A6DD3E61DC64A44C5C8018DB3858E35310618D01CC66F7895ED3A12005814B4F60B763A0B70BFD1D4DE8AC2B43D3C5A3E8ACBD02877D402364B89A1108687A0CD074D6';
wwv_flow_imp.g_varchar2_table(14) := '85DBF9DF648E80D91A8BA48299B04D5E8498B45C58A2E3C44E4F0B506FC9691F10470517117C80D6F273B0F777C369677D818663656802D0DFAC0FC0C892222F2A290389B953913A713EA252B210618D8564368784369E1484833D9DE86AAC444BC909B4';
wwv_flow_imp.g_varchar2_table(15) := '559E173A03D225700A3C025AEA01349300C2C2FEEF740ACD7DF2F8B9482E9C25447DD2D84B2653E0674D006A207DC0606FB7D011B45C398996D293E86D6B749B27035021172910D0520FA01901185D01480BDD36792152272F466C46BE6BE15FB3DB87F6';
wwv_flow_imp.g_varchar2_table(16) := 'CC266BC2606F97D00D349E7B1FCD574EB2E5208043CA04104070FD5DB4C9148198B471C8985D84E4C2D9888C4DD2C0F146C611C8DF9DA4F288CC9C405F47A33816D49DDE8F9EE61AB61A04006B2D1D823493008CA800241B7EF2F839489FBE1C31B65C98';
wwv_flow_imp.g_varchar2_table(17) := '2C91FE39E30BCF3F49D8F11DF67E3806FAE0181C109A793A873BED64AA1BA94E91844581148FE20F391559ACC2B168A82C7F291EED03BDE8AABD8AFAB307D05A7E56381971F22B029A29029900BC183772D021313F7DC60AA44C988F88A8389FC57DB2FF';
wwv_flow_imp.g_varchar2_table(18) := '0BAB5C7FCF35079DFEEE36F477B608AF3E52CA0DF6750B6F3F22042287E189BEA7051F618D16E6454B74BCF01C8C8C4B42644C92EBEFF864982D517E9150483F40ED6ABA78040D1FBE8FEEA6CA8FB4C90B68F9131702862480D0B700389D90222C42C197';
wwv_flow_imp.g_varchar2_table(19) := '356F23E2B3C6BB4D7ADECD5BB1E825499CAFBB9BAAD15D5F86EEE66AF4B6D60B651B2D30973DDEE5D52724F1216FBF51AA143BBD9BD287EE11900440924A54A20DD6A40CC4A6E620362D4F781D9A22A35C22BC0FF704483269AF388FEAE277D05E79C1ED';
wwv_flow_imp.g_varchar2_table(20) := '62ACD9BEE21DF0FAFF8A09407F63E414A6BCD4298B91356F03A293337D68A25388F4BDAD0D68AFBA88CE9A12D7C26FAEC3407FB79026C4F51F7F291187DC82E184252A4EB43DC69683F8AC0988CF990C6B422A489731E61D23999E924B51577D396A8EBD';
wwv_flow_imp.g_varchar2_table(21) := '2DAC05F6813E1FB0E14F0901AD4C819A517568C70090C40E9A3E6325D266AC103BAAEA5D53928443CD40773BBA1ACAD156FE213AC8FDB6B51E033D1D6227BE76FB2F906BC07D3B904C93969844442765202E6B0292F2A609B365847054F2CE5F817C056A';
wwv_flow_imp.g_varchar2_table(22) := '4FED45D3F9C3E24292BF740E818443AF651B8A006CF36ECBB69B4D557A055BAE5DD129D9C89ABB5698F86881A85BFCA4CC7388B33CF9DBB75C39818E9A2BE2DFB453BA3679CD78F8EFBBEA16FDCD9151E242527CF644A1D48CCB2844646CA21C2C1FFDBD';
wwv_flow_imp.g_varchar2_table(23) := '2489CB450D670FA2EECC7EF4B537AA2F83BF100898ED8E9CC6E2EDD5818643939917AA0440E7EE98944CE42CBA19A993E6C3648952351E74C627A55E6BC539E163DF56F621067A3B541288AA2A7DCA4C1208290E930A66C1367931E27326C21C61556DEA';
wwv_flow_imp.g_varchar2_table(24) := '1BECEB42C3D9F7507DEC7FD0D7D9EAB382D4A74E85E8C74C003A18B8E8E40CE42CB90DB6490B20992DAA445A72A7ED6EAC44E3C52368BA7004BDEDA1E54147EECB6993172175F242714579C84AA168582409F6BE6ED49DDA8F9AE277DCC701455F722637';
wwv_flow_imp.g_varchar2_table(25) := '024C00419D0A9270E9CD5978236C5316AB5BFC4EA710EF5B4A4FA3F1E207E8A8BE0CA7837CE83511B6FC879AD3297C091272A7C236750992F2A6C31293A0BC7C3709D49F39809A133B4570124ECA116002508E959F733A1195988EEC0537206DDA32982C';
wwv_flow_imp.g_varchar2_table(26) := '147D479905D3E970A0BBB102F567DE4573C9096328C2244958096C9316226DC64A71C949B18BB3DBC4597B6237EA4EED614940C54C6502500196DFB23A9D22124FF6824DC2B5977E569A843DBCEA222ADEDF86EE860A380C7673CE1C1189F89C4918B7F4';
wwv_flow_imp.g_varchar2_table(27) := '36C4A617C044371B1526520C561D7D0B0D67DE857D904C8421260D29ECA73FB3198B00966C5960B7E3A83F010A445992394298FAC62DB94595A98F1C799A2F17A3F2F076E1C567E4149D9A85DCA55B90943F7D8CD884A3F45E92D0D35C8DF283AF0B2B08';
wwv_flow_imp.g_varchar2_table(28) := '494A9C3C2360366361E3E16DC7028D9326546C0B010220DB77F2F8D9C85BB1559CFF959AFAFABB5A852B6CEDC9DDE2EC6FF82449884E4A47E6DC0D423FA2584A9224745697A0ECC0AB68AFBEA4185FC3E33946079900341EF9B8ACF1C85F79171272262B';
wwv_flow_imp.g_varchar2_table(29) := 'AE99167FCDF11D6838F7BE70F0099F24C11A9F2CDCA1D3A62F574E024E279A4A8A51F9DE36E1F9C8696C049800349C1DE4D9376EE92D489FBE42B16F3F2DFEAA236FA1FECC7EE1D61B8E892E1E65CEDB88AC79EB859BB49244581169D61C7F0703BD9D4A';
wwv_flow_imp.g_varchar2_table(30) := '3E09CB3C4C001A0D3BF9C0A7CD5C89DC65B78B1B744AD2D0CE4F627FB82EFE219C8804483198364DB924402EC3741468B95CACDAC948C9F818210F138046A318975180C2B5F72236A35091798B147E140CA3A678479889FD630F88353E15398B360B7F01';
wwv_flow_imp.g_varchar2_table(31) := '722B964BE41ADD5A761665FB7E8F9E965AB60A8C02181380DC2CF2C3EF296C57C19ABB619BB24404CE904BB4DB379E3F8C8A436F8487C24F0E906BBF97C40DC3BC955B915C30CB15FC5426918B74CD895DA83CF426BF52C40420375D02F07BA71319B356';
wwv_flow_imp.g_varchar2_table(32) := '2377F91DC2FF5D4EEB4FA6ABB68A73B8B2F365C39BFABC429BAC0329D99874E3A7457424396721BAEEDCDD5283B2FD7F40F39553B2F9BD6A53087FC4124080078F76ACC2B5F721297F86FC39D4E9145778AFEC7E45DCE8539BE416C368E58D8CF8A3B6CE';
wwv_flow_imp.g_varchar2_table(33) := 'E0E497445CC482A27BC453677289AE249309F5EAFE3F62A09BAE0F2B4FDE604AA5870AAE4C00CAE782EA9C24EE67CE598F9CC59B5D262C998838FD1DCDA83AF2DF22069E5A0FBFE8282B362C9F8F9828ABE27676F5F4E2FDE2B3686A0DBD587BF40252D6';
wwv_flow_imp.g_varchar2_table(34) := 'FC1B5C9681A8388F7DA6454CBE136507FE8CC60B87151F05E8BBB9D32660527E8E62C9819E5BBB5C568DC327CFC11C0261DA9900142F17F51929F04561D13F886838723B09DDEAA30B2D9587DF0469FFD5A64C5B0AFEFAE2B7909596A2F8D3B2AA3A7CFE';
wwv_flow_imp.g_varchar2_table(35) := 'A91770FCC34BB2ED535CA88619E9EDC3BC15772265C23CD95B84A410A428C365EFFE493C3EA224994C263CF9E827F0E0D61B61362B7B7381C6F9376FECC4179FFD09A222E5F53D4ADA11C83C4C0001429722E6929FFFB825B7CA3AB0D015D8CEBA5221A2';
wwv_flow_imp.g_varchar2_table(36) := 'B6575E547C296878D369E1EF78E93964A7A72AEED1958A1A7CF61BFF8E63672E862401106EC913E60AC72A22035909ABB31565075E431349010A1E27250278F64B0FE0A18F6F46840285E310F02FBFFE0E1E79EA052680613331EC5C81290CD6949B3F87';
wwv_flow_imp.g_varchar2_table(37) := 'B8AC89322FF648700CF4A2E2F09BC2718524016F925A02B03B1C3857528EFFF5CC8F71E25C49481200E14421D2C9AD3A635691ECC5210A754E1E825776FD1AF6BE1E59984D26095F7FF85E7CEE9E5B101B2D6F766402181BD2B02380B4E92B90BFEA2E59';
wwv_flow_imp.g_varchar2_table(38) := 'A71F5216D1535857F7FC97780CC3DB1B6C4A0980167E5D630B8E9FBD8437F71CC2DBEF1E417B67B7EC62D073063A6A4D58FF8F20376BB944E27FE9EEDFA2F5EA69D960A824CE4F2E1C87BB36AD42D19239985C908BB8D868D93B862C017C7414C28A0048';
wwv_flow_imp.g_varchar2_table(39) := '4135F9E647909837DDF3EE2F49228045F9C13F0B3F7F393D81A7C92D47004434F54DADD87FE41476BC771C874F9C435D530B0606ED21A3B1F6B4BF505C859C453721228ABC2CC78EAB40E1CFC9C7A264C7CB8A8E5A740C88B65A30A5304F90C0C6950B30';
wwv_flow_imp.g_varchar2_table(40) := '6FDA04445AC63EDF3301843901503CFFF11B1E108F64783A9792CDBFB9A458EC48033DBE5DF2F144009D3DBDD871E0185EDF7140ECFCB58D2D708838FD72FB65E8FC9EBC0427DEF81012C74D014C9EF61B09DD8D55B8FCD68B42EFA234243A05558DB25A';
wwv_flow_imp.g_varchar2_table(41) := '31212F0B6B16CDC13DB7ACC594C271A3EA069800C298004831357EC33F8A283F22ECB58744012CCA0FBE8686F387641558724BD11301FCFCF77FC10F7EF92A9A5BDB4147005F240DB97604EDF7E420949C090B995B65DE39700C0EA2B7AD5E3C94A23639';
wwv_flow_imp.g_varchar2_table(42) := '1C0EC4444561FAA43CFCF4E92F0913E1C8C40410C6044077FC276EFAB40879ED798BA5B3FF695CDDF707F4B6D6A99D871FC9EF89009E7CE1253CFF8B5743422BED0B102EE71B65628D2F0FA2503D09713178F367CF62F6D48FEA1D9800C29800E8DE3A99';
wwv_flow_imp.g_varchar2_table(43) := 'A5E4025B3A06FBC5D99F2EFCD0CFBE264F04F0D48F5FC6F77FF12A222D11BE56C3DFBB11488C8BC51B3F7B06B3A7300128991461A10424E51F39A664CC5A030AFB3556A263425743054A76FD5A44F3F58748CE04A0641AFA2F0F13803A2CC38200E80C5A';
wwv_flow_imp.g_varchar2_table(44) := '50742F12F3A7B9DEDC1B23916EA0A678272A0F6D772BFF7C87870940DD84F4353713803A047D9FE10AEA0B764C4032FB8D5FFF09F1BE9F277BBEBDBF17A5BB5F7129FFFC949800FC04A4C26298001402E5CE667802A05D9D22FDE6AFFE18CC1E9EF622F1';
wwv_flow_imp.g_varchar2_table(45) := 'BFBDFA324AF7BC82CEBAABB23EEC4A616602508A947FF23101A8C3D1F00440413FF2966F41FAAC35A07B009ECEFFB52776A1ECDD57611FECF5DAF36F64F94C00EA26A4AFB99900D42168780220AD3F99FF1273A779F4FE730CF4893875D5C53B6192F113';
wwv_flow_imp.g_varchar2_table(46) := '50033113801AB47CCFCB04A00E43C3138035310DD3EF7CCCF3F99F1EAE68AAC6D57DBF47CBD5D37E13FF69289800D44D485F733301A843D0D804204988CF1C8FA95BFE0911D6188FE23F05A9A4883FBD14A452C6634D0DC44C006AD0F23D2F13803A0C0D';
wwv_flow_imp.g_varchar2_table(47) := '4D0014728AC2551714FD03C81760EC24A1E1FCFB28DDF50AEC0374FEF75F6202F01F964A4A62025082D2F53C062700B308FC418F7D7A8AFA4B37D1C8FE5FF1DE36AFEFFD8F057BA009809C954C92E4765A72C20949DC22F4C7A5222AFBDA1F77071D4EA7';
wwv_flow_imp.g_varchar2_table(48) := '78DB4F9963AF07CAA5768BCB412ECF0CE12C4CEDF6F1DD40260026806B0890D7DF84759F10F1EA3D79000EF676A2F2F05FC4FB7EFE7EB8325004400B333E3606B3261762F69442A4A72681AEC8F6F5F5E36259258ACF5E46794DBDB856AC3651D9897131';
wwv_flow_imp.g_varchar2_table(49) := '983E311F73A64E40BA2D59904C5F7F3F2E97578BB2CBAAEBD13FE0C58B4812408B74DA843CCC9D3A0199692982647AFBFA505A518BE31F5EC6D5AA5AF40F0CAA6DB6C8CF04A00E36434B0064F69B72EBA3B2F7FF293065F981D7D070E1B0CFB7FF46C21F';
wwv_flow_imp.g_varchar2_table(50) := '0802A09D33372B0DF7DFB60137AE5A247E2632A08534386817D78A4F9E2FC14BAFBF8D03C7CE0A52509AA80C2AEFEECD45D8BC66090A72329010172BD4228376BB885D70EAC215FCE68D1DD873E8247A55944D3B7C76BA0DF7DC5C849B8B9660425E3612';
wwv_flow_imp.g_varchar2_table(51) := 'E35D4F8A0D0C0EA2B1B90D672F97E1B76FEEC2CEF78EA3AB5BFD718C0940E948BBF2199B00222C9879F7D74191693CF9F5D315D4AB7B5D1600B9F875EAE0F5BF15801662665A2A1E7FE8E3B86BD36AC4C68C1E12CB6E77A0A2B61E8F3FF77FB1EF83538A';
wwv_flow_imp.g_varchar2_table(52) := '24015AA0B694443CF6C056DC77DB7AC4D3C21FA5C354F6D5CA1A7CED87BFC0EE43271589ED547652422C1EFFCCDDB8EFD6F5D7086B64F1742D9A62227EF7E7FF85EDBB0FC16E5727C13001A89BA1862780B99FF8375813523D6AF6E9EDFA925DBF4167D5';
wwv_flow_imp.g_varchar2_table(53) := '259FCFB6819600A2AC16DC7FFB467CF5B3F7202551FE2DC323A72FE09F9EFD4F5C28AD908D30441176EFBD653DBEF9E8FD484D4AF03893481770FA42291E78E27B28AF69902D3BC26CC227EFDC847F7DF85E2425780E174E0443119129327249B9BA5784';
wwv_flow_imp.g_varchar2_table(54) := '99009800AE21608A88C4824F3F8F88684F2FD74AE86EA8C0E51DBF44577DB93AF414E4F6E7118076D1F1B95978FE89CF62DDD2790A6A07E88D816FFFF477A0BBF0DDBD7D637E43CAB789F939F8EE571E12EF1828497424F8B79FBC8217FFF057F4F68FAD';
wwv_flow_imp.g_varchar2_table(55) := '0F20B2985A988B6F3FF620D62D53D6EE8EAE1EFCE8A5D7F0A3975F53259431012819B9EB790C2E014462C143CFCB84FF260228C7A5777E2988C0DFC99F04400B69F9DCE9F8CDF35F456AB2E71D7AA81F24526FDFF51EFEE5B917D1D4DA3EE6998F44EDF5';
wwv_flow_imp.g_varchar2_table(56) := 'CBE6E357DFFD976BE772392CA83D078F9DC5FD5FF90E3ABAC60E604A6DD8BC66317EF4F5CF23C3962C57ACF83D4901F488C7AD0F7F4356BA185E2013802278AF6532340198AD3198FFA9EF1887001C0EAC5B3E1FAFBDF04D55B10AF61E3E89879FFC11EA';
wwv_flow_imp.g_varchar2_table(57) := '9A5AC72400DACDB76C5C895F7FEF71553388CEEB1B3EF92F68ED183B8C1711C03D37AFC50FBEFA39C4C5442B2EBFB4B2068BEEFC02886894262600A548B9F2199B002222315FC11180DEFDBBFCF62FD0DD58A90E3D05B9FD2A0110012C9B8F575FF8A6DB';
wwv_flow_imp.g_varchar2_table(58) := '86AEA00100F61C3A81479EFA0F7902D8B002BF7EEE096585BA73D1197DE3038F2B208022FCE0898745F86EA589C865F1562600A5787993CFD004A05C07103A47806573A7E1D7DF7B0269A9498AC69B44698A3AFCD5EFFF3F34B78DFDD6201D01D62E9D87';
wwv_flow_imp.g_varchar2_table(59) := '5F7DE72B4856A05CA4CA1D0E27F61F39894F3EF11CE8CC3E56220980CC953FFAFA23C852F84212B5878E17773CFA141F01148DB47799C280009E4344B427ADF39012F057E8AA2FF30E450F5FF95302202560C1B84C7CEF2B0F61E38A858AAE2C7476F7E0';
wwv_flow_imp.g_varchar2_table(60) := '99FFF31BFCF6CDDDE8F1A80474A2705C26BEFDCF0FE2A6D58B15E140CE3A4FBEF0325EFAF3DBE89351025294DE6F7DF953B861E5424565B77776E1F917FF88FFFCDD765596193E022882373C7400E4FE3BE713CF202AC1E6D10CD8DD5C832BD7CC80CACF';
wwv_flow_imp.g_varchar2_table(61) := '9B4AA0F62701507DF4F00539D2FCEB23F7212D2551B609B48B7EF93B3FC5E5B22AD9BCE42BF1F19BD6E0E92F7E5278167A4A6435387AE6121EFCDAF3A8696896DDA54D9209F7DDB60EDFF8C2FDB0257B6E37E9234801F885A77F8CF2EA7AD9760FCFC004';
wwv_flow_imp.g_varchar2_table(62) := 'A00A2E63EB00880066DEFD35C4D872651C811A5C57814B4FE9DE1188869716FE639FDA8A7B6E5E37A6C69E16D195F26AFCF3777F8E4327CE897707E412491824FE3F7AFFEDF8D49D9B84BD7E34072A722FBE74B5128F3FFFA2285B89FF3E954D0AC02F7F';
wwv_flow_imp.g_varchar2_table(63) := '6A2B1EB8731392C7289BDA7DB1B402DFFAE9EFF0CEC163C21AA0263101A841CBE04A4072059E7CEB1790249E021BFB3110E10A4CCF80F9E1219091F0FB5B02A0F2C92F3F232D19776F5E8B5B8A96886341527CACB80B40FEF9D5F5CD387AE6027EF5DADB';
wwv_flow_imp.g_varchar2_table(64) := '3876FA22FA0795FBD5D382CFB425E3CE1B56E2F6F5CB313E2F1B49F17142E948227F6D43138E9DBD249EDA7EBFF8438FA2FF6853D1969C80AD9B56E1B6F5CB31A5601C9212E3457FFAFB07C49368F420EA2B6FEEC2BB474EAB72331EAA8B098009E0FAF9';
wwv_flow_imp.g_varchar2_table(65) := 'C61C81F1EBEE47DAD4A5329781BA50F5C15F51736267485D068A89B2624A61AEB8B493969A880893193D7D7DC27BEEF4C5AB423457EB4A4BE01109D0ABBB746E9F3189CA4E82D964466F7F3F4A2B6A840760754393B877A03691D22936261A13F3B23163';
wwv_flow_imp.g_varchar2_table(66) := '5281F00B2072E9E9EB475955AD6877555DA35765535B9800D48D88A19580B4EBE72CB905390B6E94B90E3C088A07485280B7CF808F057B202480E175D1DD000A683A14C34468301C741DD8775DC6C8B2A968D7955D7F944D578D5D643394C45563D7BD60';
wwv_flow_imp.g_varchar2_table(67) := '75B378586E260075D0199C004CB04D598AC275F7790E082249683C7F4828022934B83F53A009C09F6D3542594C00EA46D1D004405B4C5C4601A6DDF165F9906015E7C49B00141B50917D4D21CE4C000A81F25336260075401A9B000058136D987EC76388';
wwv_flow_imp.g_varchar2_table(68) := '4A4AF3E0F828A1A7A51665FB7E8FE6D2931C1454DD1CD2556E260075C36178021061C16F78503628083D045A76E035541F7F87C382AB9B43BACACD04A06E380C4F00E6C828E42EBB1D19B3D7CA3F0C726A2FCADEFD23EC7D3D7E3B06F01140DD84F43537';
wwv_flow_imp.g_varchar2_table(69) := '13803A040D4F006409A0A7C10B56DF0D2283B11269A33B6A4B4564E08EBA2B7E3B063001A89B90BEE666025087A0E10980E0A057810AD7DF8FE8A4748F17201D03FD28DDF35BD47F78501D8A1E723301F80D4A450531012882E95AA6B02080A8A40CF136';
wwv_flow_imp.g_varchar2_table(70) := '4052C10CD9E7C16B4FEE41C5FBDB30D0D5E69763001380BA09E96B6E26007508860501D0B5E0BCE5772073CE5A8F1E81740CE86EAA41C9CE97D15175910940DD5CD2456E260075C31016044090D8A62E45FEAA8F2132D6F34D34C7E0809000EA4EED857D';
wwv_flow_imp.g_varchar2_table(71) := '60EC187A4A616609402952FEC9C704A00EC7B021003A064CBAF121C465167A46C809B4969F1161C2C937C0D7E48900BEF91F2FE1FBBFF813A2AC91BE56A3EBEF9D4EC730F7DEB1A69CDBFD57B8357B372DC94D99DE47F8CBCF9FC5ECA9E33F820905467D';
wwv_flow_imp.g_varchar2_table(72) := 'E4A917101569D1355ED438B3190B1B0F6F3B16E8867A87B4CA56D9966C5960B7E3A8CACFFC9A9DFCE50BD7DE8BF4192B3D1E03A8D2FEEE36F14C58C3D9831093D787E489005E7E7D077EF8AB3FA1AAB611837687AA305F3E3449DB4F2513E232F211199B';
wwv_flow_imp.g_varchar2_table(73) := '2473F75402495F1496ADBFB35955B43AA20EBA929C101B83053327E3875F7B58444F1E9998003E3AF4614300D475B2064CBCF1D3AEC9E821D1A2A7D800E41ADCDFD9EAD382F14400F4AACEFEA3A7B17DD7FB78EFF85954D434C0EE507FC3CEA70606F8E3';
wwv_flow_imp.g_varchar2_table(74) := 'A8A4744CDCF41012C64DF61C7C42E85FAA71F9AD17D15153A258FF32747371FAA47C6C58361F5B36AE10918DCC2613138082B10D2B022065E0E4CD9F4352C14C8FF101E82E407F478BD005D49F7D57D56E3412734F044079E9E25B735BBB08AC41CF611D';
wwv_flow_imp.g_varchar2_table(75) := '3C760695758DE29E3D89B4219D2409398B36237BFE267764E6B1FB430FB4365DF840286095BCCF488F9850809199930AB17ED93CAC5D3A575C5D8E308F1DF7812580309700A8FBB6294B50B0E66E908BB08C1880D6F2B328DDF33BF4B6D429DE91D412C0';
wwv_flow_imp.g_varchar2_table(76) := '507EBA0A4B6FE39DB9588A37F71CC21BBBDE436B7B6708AF7F27E232C68B780CB119F9B2FDE86B6F44E9EEDFBAA232C9E80068D7A747512934DAAA85B350989B058A8D20979800980060898EC7A49B3E8384DCA9B2DE7E743FA0EAC85BA83EFA161C76E5';
wwv_flow_imp.g_varchar2_table(77) := '517586C32C27018C1C12BA6B7FFE4A391E7DE6C728FEF0B2D70A31B9C510E8DF93D765DEAA8F2163C62A48A388E3C3EB7738EC682939812B3B5EC260FFD8D18587BEA10022DFF8FCFDF8ECDD37235AC1C21FFA8E0980090092D98C8C19AB316ED9EDB078';
wwv_flow_imp.g_varchar2_table(78) := '8C16EC0AB4D1D55881ABFBFF80B6F2735E05AA504B003444140FFFB3DFF8771C3B7331240980167CCAA405C85FB115D6C43459DC48CF5276E055710450A274A5D067CF7EE9017CE6E39B61F620F28F9CEE4C004C00028198946CE417DD2394827226273A';
wwv_flow_imp.g_varchar2_table(79) := '8F369C7F1F95EF6F475F4793EA8D93425EBDF1D36790694BA113BF82EF259457D7E18BCFFE24642500C2376FE55D482E9C252BCE0B856BC9497109ABB7AD41013E10D692FFFDF9FBF1C92D37C06C56A6C62232FFDD9BBBF0D8777E062B9B01AFE1AC0C3D';
wwv_flow_imp.g_varchar2_table(80) := '45C33276263D980187B78E828566CC2AC2B8A5B7BADE0C9051B6915B70D5B1B751776A8F3055A94964E35FB960A6CBD6AF6CFDA3BBA74FBC8E1B8A3A007364347216DE848C39451E83B0108644BE62F73FF81A1ACF1F561C8E8D5404D327E48B60A892C2';
wwv_flow_imp.g_varchar2_table(81) := 'C0D69249C2D5AA5A9C3C572282A7EA3DB11F408047282A310D856BEF4312ED520AB4EDDD4D554221D85E7921C02D0BDDE269410BD17FD5C7618D27894726B943B195EDFF13FABB7C33B7CA55156ABF670208F08891892D7DFA72E4ADD88AC838F967B628';
wwv_flow_imp.g_varchar2_table(82) := '7F47D52594EC7C09BDADEA1EAB087057F4513C45124ECBC7A44D0F223A254B56F4A79DBBBBA546E8575AAEF8370A933E00F1AD154C00BEE1A7E86B93C58A82551F43DAB465A09FE51259029A2F1D43C57BAFA3B7BD512E7BF8FC5E9210939A23EE5A2492';
wwv_flow_imp.g_varchar2_table(83) := '75C5C31B0C43A050D0959A93BB5079F82F707A69613132C04C001A8D6E8C6D1CC6AFBD0F71D91364CD82D4A4C1BE7873A35700001076494441546E347CF81EAA8FBD0D7A50849324E22D8E5B7C0B52272D84C9227FAF8142AFB75E3D2B76FFDE56BA6FA1';
wwv_flow_imp.g_varchar2_table(84) := '892A2AA4868A0940A3E1121183A62D45EEF23B645D84879A34D0D381DA13BB51737C07EC03FE0D23AE51B7FD560D9952093BDB94C52005A09244DA7E3AF7B75C39A1C8ECA7A44CA3E56102D070442D3189C859BC191933577B7C40647893067B3A5175FC';
wwv_flow_imp.g_varchar2_table(85) := '6DD49DD813A62420C1121D8BEC459B91316B35CC96B1C3AD0DC78D9CAB6A8EBF83EAE33B31D81BCA9E8E819DA04C0081C5F723A5C7A6E7237FE55624E44D536C5A2212A0736CFD9903E1751C90244425A4217BE126D8A62E51BCF84991DA5C522C74283D';
wwv_flow_imp.g_varchar2_table(86) := 'CD351A8F706855C704A0F17891A34862FE74E4AFBC0B3169B98A4C834227D0D381860B1FA0B678077ADBC24031E856F865CFDF889489F3158BFD74CEEFA8BE243CFE3A6B4A42FFA25380E727134080011EAD78D207D08E96BBF476F1A08812FF002A8734';
wwv_flow_imp.g_varchar2_table(87) := 'DAAD6567C4DB824ABDD982D03DDFAB14A6BE5CE4ADB81309D99314594E44A59284BED67A941F7C1D4D978EF0E25730124C000A40F27F16A7081D9E397723B2E6AD1717879426321176D5970912E8AC2D059D758D940897C4DCE9E28D85E8944C45A6BEE1';
wwv_flow_imp.g_varchar2_table(88) := 'FDA7F06AA438A58B556449E1E41901268020CE90C8F81464CDDB206EB299AD310A7DF8496070082721D209D04ED7D7D1AC588A0862773D564D47230AEA41D7A8E97D05C246EEFEC458050EF676A1EED43ED49EDA135E3A132F069709C00BD0FCF9495462';
wwv_flow_imp.g_varchar2_table(89) := '3AB217DC80B4E92B4081449439F2BB227CF4F774A0BDEC43345C3884B68AF3A1E9E8E274C2648912C153C84C9A9033D91DD4C33794077A3A517FE65DD49EDCCD24E0014A2600DFE6995FBEB626A48A883669D396AB2301E20107490375682E3921A20A85';
wwv_flow_imp.g_varchar2_table(90) := '9AFB704C5A1ED267AC404AE16C58136CB2AEBD6A00273F0A2281EAA3FF03920AE40280A829DB2879990074309264B68A4AB4217BC18D489BBA1466AB324797A1A693F84C67DF8EDA2B68BA7844F8BCD3CD422577DE83D17DBAC71F19972CB4FBB6C98B85';
wwv_flow_imp.g_varchar2_table(91) := '35C41C610988D28E7C006A4FED43CDB1B7592730CA6033010463058C5127DD1CCC985D2424014B6C8217E77A2706BA3BD0D55021ECE0640EEB6B6B829DA2DF082FD820B9C2BA6F41929E83FA98306E0A92C7CF41AC6D1C22A263D5B78BEEE92AB8593904';
wwv_flow_imp.g_varchar2_table(92) := '339140DDE9FDA0D798D8ADFAEF271F13808E08809A12199F0CDB9465C89CBD5A51949B8F345F92C47D771279BB1BABC4B5628A7EDBD3542DAEC2925420EEB67B19135F315C4EA7D8D1293292352E05D1B61CC4674D40E2B829E2161F9101492E8A751ED7';
wwv_flow_imp.g_varchar2_table(93) := '2A96D0D7568F88980498155CAC1AFA4C1C07CE1E1016022681EBA3C804A078466B9791DC5D9327CE45F6FC1B109B96E77DC54E8A633F28220C75D55E4567DD1574D5950B0961A0B75368D9C522F417198845EF109BB335360131B65CC465142036B30071';
wwv_flow_imp.g_varchar2_table(94) := '1985888C4B749BF5BC93448850C8B98716311D1BC83538228A2408658975021FC5890940D9DCD13697D8392D48C89D82EC791B4560518A2EE46D12E634D213F4F708256177730D7A9BAAC5DFF42A111184F027A04842B488E184E4A47F8E1E5A88240827';
wwv_flow_imp.g_varchar2_table(95) := '153924494812CC964858E36DC2761F9D928D98D42CB1D3472566C064719FEF5588ED23FB4AED6BB97A46F8F71309D08520D299A4CF5A2D1B73717859422770721F6A8EB34E80706102F0765569F01D29CBE8FEBB6DDA32D8262F822536C96BDBF8708521';
wwv_flow_imp.g_varchar2_table(96) := 'FD4CB70B07BADB85CE60A0A75DBC4F404704FA3739D0D8E90FBD593872D14A269823AD425169B1C60A27264B5C9250EA510874F1EFD8449823225D04E2C3A2A77692958308AAE9C261349C3F8CDE96DA6BCA42AA3373CE3AA4CF5CA9CA994AF8099CDEC7';
wwv_flow_imp.g_varchar2_table(97) := '3A0126000D56B11FAAA08595943F43F80AD09B83E42DE7EBC212CDA22300EDE6708A1884CEC101D0C3190EBB1D700CBA1FCE18290548AEF0DBE608984C6698CC1648964821A188B2C482571294D03330541611517BF52571766FAFBC38EAAD3E1709AC75';
wwv_flow_imp.g_varchar2_table(98) := '1F07E214A3CD7E022EA85802503C65829B91161D89D6F4E62099CFC86C28169B8F3BACDC321CFDF7BE2FF031EB75EB23E868D27CF1A8088A42F71E3C993423AC31C85AB00999B3D720224A25099CDE8F6A3A0E882BC3DEE926823B337CAB9D09C037FC34';
wwv_flow_imp.g_varchar2_table(99) := 'FE9ABCE6AC48299C83D4C98B919033C9A504F397124FE3DE8CAC8E16391D41C872D178FE105ACB3F84D34ED1916516A6D32970C85E7823D267AE52791CE846ED899DA839B10B83BD74772080E416647C47AB9E0940878322D72497E3509A709F257B7A5C';
wwv_flow_imp.g_varchar2_table(100) := '7ABE083BEE32AB855E22B32569E8E972137934B6959D455F67B3EAFE88E3C0DC75424A5273C18A8E1AE42350776AAF2B6A7040A52A7D8D0F1380BEC643556B247304C88D3821670A5226CE456CEA38A180A3F3B86B0EEB743713BA0752330C880547B71B';
wwv_flow_imp.g_varchar2_table(101) := '9BAF9C14D190E962131182B7C95B9D00055DA93B33E42C44A1C3758A9DB7C08CF11D13809F010D4671145FC0758D761A52272D406C7A01ACF1C990222CEE79AC97C92C6C87700CF489854E3B7ED3E563E8A8BC202C0E4A5EEB5582AFD009CCDF844C7A34';
wwv_flow_imp.g_varchar2_table(102) := '44859F0059074812A82DDE29FC24C2213101186994E9665D4424E2B2C6BB8F0679B026A60BF31C69EC83A62B703A8543D24057BBB8B83424EA773594C14916077FEB30FE4E27A0CE4FC0DEDF8BAAA36FA1FED45E0C84814E8009C04804E0EE8B70C1A578';
wwv_flow_imp.g_varchar2_table(103) := '7A8969A01884E43547EFE8452767B88E081116E191E7572FC0211CDDDE80644A74DAFBD1D7D1226CF7E474D4DD5081AEFA72D7DB877446F1F7C21F3196D7FD044831A8DC3A40245053BC43DC1F30BA4E8009C08004F0775D12F7EDADE27251646C92B872';
wwv_flow_imp.g_varchar2_table(104) := '1B934A649025E2EC93B28C74094384206CFC2693477270991F1DE467EC72FD75D8C51F3AD393169FCC76148CB3BBB91AFDED8DE25D3E723A12EF1D0678D18F1C4E4102B3D78A4B56115114744559228B0029055D41458CAB13600250361F0C938B767D5A';
wwv_flow_imp.g_varchar2_table(105) := 'F0C27127C2228E07D1C9992236A1353649781B5A62E285ABAD70381A25914B31C527A445DDDFD586FE8E66B1E8C9CD98CECE2E87A24161C27339060537911E206BEE7A64CEDB20FB90E8F0960A9D00BDCB204C84C6D409300104776EEAA876B7AD5DAD2F';
wwv_flow_imp.g_varchar2_table(106) := '8C9EAD0DD7D0253F813864CDBF0199B3D6B85E6A5698C865BAEA83FF16C7011154C460D6012600851381B3853A0292789CD5E5364C1E83CA6F111209D41CDB21CC8446D309300184FABCE6F62B474092841E84088082B18E75C419ADC0EB8146299E409B';
wwv_flow_imp.g_varchar2_table(107) := '6124012600E5D387731A02010996A858A4CF5E839C8537A92401F218DCE5F613A0E340E8272680D01F43EE811708100990523073CE7A55D681EB7E02FB3060009D0013801793873F3102026E9D803011AAD409083F819D22A640A8EB0498008C3097B90F';
wwv_flow_imp.g_varchar2_table(108) := 'DE2130A41398B91A590B362A7E7C942A334A50112600EFA60E7F651804246111A0F882F474BBD2E7C70509D005A2D3FBDCF1044827A0D6861A7C109900823F06DC021D2020FC04C85968EE3A5526427195B878289E40E8290699007430F9B8097A4060B8';
wwv_flow_imp.g_varchar2_table(109) := '4EC00BB7E1D37B507B726FC8851C6702D0C3DCE336E80301A1134874FB096C546722ECE940DD990321F7162113803EA61EB7423708909F400CD26717A9F61370051ADD1F526F111A8B00E6DD966D379BAA743397B821218B80252ACEED27B0569D4E4004';
wwv_flow_imp.g_varchar2_table(110) := '15D91B32EF0E98ED8E9CC6E2EDD5811E284DD4A3362680408F6318953FECEEC0CCD5AA2E1085D25B844C006134A5B9AB2A1170FB0964CE2E42C69CB5AAAE1287CA5B844C002AE704670F3F04289048D6DC0DC89CBB4195DB7028BC45C804107EF3997BAC';
wwv_flow_imp.g_varchar2_table(111) := '1A01573C81EC053720431C07E2159720DE223CB50F35C7F4F916211380E2A1E48CE18E80B731065D3A8177756922341401D0044D5EB825F831A8C27DA518B8FFD7DF1D50778148AF6F11B61CDDA689825E934A98000CBCF274D4B5EBEF0E78F916A1380E';
wwv_flow_imp.g_varchar2_table(112) := 'E8E32D422312C01E00453A9A2FDC14A321E0D35B84E427B05B841D77BD4518DCC404105CFCB9F61046C0EBB70845C8F13DAE90E35D6DC17C8B706FCBD16D6BB518022D8F002C016831A25C874020C4DF22341E01A42CDCF2D4DF9EAD7892E72723A01502';
wwv_flow_imp.g_varchar2_table(113) := '4227B0601332456421E521C75D2642721BA6E380F65789FFF652E3D3CD47B73DA5054E9A4900490BB714490049019C18016D10B8A613B809E933553E43D6D783EA636F8B23812BC6A0768909403BACB9A63040C06B3F81BE1E54BCF7BA882EE4CBD3E86A';
wwv_flow_imp.g_varchar2_table(114) := '2176026B5B8F6EDBABF63B6FF26B260150E3D817C09B21E26FFC81C0F5B70815FA09389DE86DAB47F9C1D7D15C72DC6F4FA42BE98B5616006A8BD604C08A40253380F3040481086B2CB2E62B08392E167F03CA0EBC8A96D25370DA0703D29E310AD54C01';
wwv_flow_imp.g_varchar2_table(115) := 'C804A0E5B0725D3A4080EE0EC4227BFE26D73364A3BD45488BBFB50E1587FF82A64B47B55EFCB4236BA600D49C005811A88335C04D70BF45B84E441CFE3BEB807BF1571D7D0B8D178FC231D0A7395A862600D603683E9FB8C2D110187A7760F61A64CD59';
wwv_flow_imp.g_varchar2_table(116) := '0FB3355A38FD90D85F71683B9A4B8A83B2F8A9A95A9EFF359700DC04C07A005E963A4080DE1D8841E6ECB5C25760B0A71D65075E0BC6997F38169A9EFF834200EC10A483B9CF4DB88600BD45983A650906BADBD17CE584E667FEE143A1B5F81F1402603D';
wwv_flow_imp.g_varchar2_table(117) := '00AF3EBD212099CCE25971A7C311D4A66969FF1FEAA8A666C0A14A93176EE1634050A71A57AE4704B43EFF074502A04A590AD0E3F4E3360513816088FF412300B6060473AA71DD7A442018BB7FB009808F017A9C89DC26CD1108D6EE1F5402E06380E6F3';
wwv_flow_imp.g_varchar2_table(118) := '8C2BD42902614900EE63004B013A9D94DC2C6D1008E6E20FAA04C0CA406D2618D7A26F04C29A00580AD0F7E4E4D6051681602FFEA04B002C0504768271E9FA4620589AFFE1A804C51168E4B0B07BB0BE272AB7CEFF08E861F7D7850430042D7B07FA7F92';
wwv_flow_imp.g_varchar2_table(119) := '7189FA44402F8B5F5704C066417D4E566E95FF11D083E83FD42B5D1C01861AC34701FF4F362E515F08E869F7D79504C024A0AF89CAADF13F027A5BFCBA24006A144B02FE9F7C5C627011D0E3E2D72D0130090477B272EDFE4540AF8B5FD704C024E0DF49';
wwv_flow_imp.g_varchar2_table(120) := 'C8A50507013D2F7EDD1300934070262DD7EA1F04F4BEF84382009804FC3319B9146D110885C51F3204C016026D272FD7E613027B9DC0D35ABDEDE7534BB57E1ACCD7C6B234E00F04B98C4021102ABBFEF0FEEBCA1148CDC0B0A9500D5A9C37C00884D4AE';
wwv_flow_imp.g_varchar2_table(121) := '6F0802189206E86F27F0648007988B67044643206417FE5067425602183E1A240D3011F00AD51081905FF88622809164C01281864B217CAA32CCA237CC11C0D3DCA3DB8526A0C809AC0150143EF3947BEA4704F64AC03E07B03754B4FA6AFB6E88238092';
wwv_flow_imp.g_varchar2_table(122) := '4E0F3B26302128012C3CF3EC751F2543C68CE7EB30850D018C046A4842700F3891022596147C9D51FAFF5E2C724A43BB3BFD6CD41D5E6E38C29600E480B1CDBB2D7BD43C91A62CB96FF9F74144A0DF51335AED8DC5DBAB83D82ADD56CD04A0DBA1E18631';
wwv_flow_imp.g_varchar2_table(123) := '028147800920F018730D8C806E116002D0EDD070C31881C023C00410788CB9064640B7083001E87668B8618C40E0116002083CC65C0323A05B049800743B34DC304620F0083001041E63AE8111D02D024C00BA1D1A6E18231078049800028F31D7C008E8';
wwv_flow_imp.g_varchar2_table(124) := '16012600DD0E0D378C11083C024C0081C7986B6004748B0013806E87861BC608041E012680C063CC353002BA45800940B743C30D6304028F001340E031E61A1801DD22C004A0DBA1E18631028147800920F018730D8C806E116002D0EDD070C31881C023';
wwv_flow_imp.g_varchar2_table(125) := 'C00410788CB9064640B7083001E87668B8618C40E0116002083CC65C0323A05B049800743B34DC304620F0083001041E63AE8111D02D024C00BA1D1A6E1823107804FE3F60812F5A7C7E130B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26571992403740961)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEC9D05BC1CC795F54F0F3D6666318305165A3233C932C40E1836E4D8818D439B4D36F06577936CB2BBA10D39';
wwv_flow_imp.g_varchar2_table(2) := '683BA6982DA3C8B2C5CC0C8F9919A7BFDFAD794F9614CB1AEA9E9E99D3BB2FD693BAABABFEB766EAD4AD5BB7B4B4B9CB74F0220112200112200112882A021A054054D99B8D2501122001122001458002801D8104488004488004A290000540141A9D4D26';
wwv_flow_imp.g_varchar2_table(3) := '011220011220010A00F6011220011220011288420214005168743699044880044880042800D80748800448800448200A09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004488004488002807D8004488004';
wwv_flow_imp.g_varchar2_table(4) := '488004A290000540141A9D4D26011220011220010A00F6011220011220011288420214005168743699044880044880042800D80748800448800448200A09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004';
wwv_flow_imp.g_varchar2_table(5) := '488004488002807D8004488004488004A290000540141A9D4D26011220011220010A00F6011220011220011288420214005168743699044880044880042800D80748800448800448200A09500044A1D1D96412200112200112A000601F20011220011220';
wwv_flow_imp.g_varchar2_table(6) := '81282440011085466793498004488004488002807D8004488004488004A290000540141A9D4D26011220011220010A00F6011220011220011288420214005168743699044880044880042800D80748800448800448200A09500044A1D1D9641220011220';
wwv_flow_imp.g_varchar2_table(7) := '0112A000601F2001122001122081282440011085466793498004488004488002807D8004488004488004A290000540141A9D4D26011220011220010A00F6011220011220011288420214005168743699044880044880042800D80748800448800448200A';
wwv_flow_imp.g_varchar2_table(8) := '09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004488004488002807D8004488004488004A290000540141A9D4D26011220011220010A00F601122001122001128842021400516874369904488004488004';
wwv_flow_imp.g_varchar2_table(9) := '2800D80748800448800448200A09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004488004488002807D8004488004488004A290000540141A9D4D26011220011220010A00F6011220011220011288420214';
wwv_flow_imp.g_varchar2_table(10) := '005168743699044880044880042800D80748800448800448200A09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004488004488002807D8004488004488004A290000540141A9D4D26011220011220010A00';
wwv_flow_imp.g_varchar2_table(11) := 'F6011220011220011288420214005168743699044880044880042800D80748800448800448200A09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004488004488002807D8004488004488004A29000054014';
wwv_flow_imp.g_varchar2_table(12) := '1A9D4D26011220011220010A00F6011220011220011288420214005168743699044880044880042800D80748800448800448200A09500044A1D1D96412200112200112A000601F2001122001122081282440011085466793498004488004488002807D80';
wwv_flow_imp.g_varchar2_table(13) := '04FC26A0FBFDE4FB0F6A412883459000099080EF0428007C67C627A2808066B3039A064DB341B3D9548B47FE4EFD59FE5EB301818CDF3AA0EB6EF5A32EF7F09FCFFC7BF977F7F0BF47017736910448C03C021400E6B1E69B2C46400DE0361B6C6AB09701';
wwv_flow_imp.g_varchar2_table(14) := '5DF30CF2361BE25273608F89872B31153189A9D0343B6252B3E1884D50F739E392E04A4A83667702F0C713A0411F1C405F4733067B3B950818E8E9447F5B03DC6E37FA3B5BD0DFD58AA1DE6EF4B4D67944C2B040D0751DBA7BE87DC16031AEAC0E099040';
wwv_flow_imp.g_varchar2_table(15) := '7810A000080F3BB196011190817D78C63EFC5F9BC30957621A629233909833CAF3E7A434C4A5E5C1EE8A55824066F79AFA9F9169BEFA0B8F37E0ACBF0FA07232988F0808A52386C5C4C8DF8B37C03DA4C4407F47337A5A6A9528E8AC2F55E2A1BFA305EE';
wwv_flow_imp.g_varchar2_table(16) := 'A1C1B3058288035E244002247001021400EC229147E00CD7BDCCF2EDAE38C467E423363D1FF1197988CF28407C66E1B08BDFE3E65783BC7A4E46F840FCFA06E11441A0ABB50125123C4B073ADCFDBD4A14743757A3A7A9063DCD35E86EAA827BA0CF738F';
wwv_flow_imp.g_varchar2_table(17) := '780DD412823F5E0A83DAC2624980042C418002C01266602502232033FCF70772677C0A92F2C622296F0C12B24B109B92059B2BE6FD75FB116F40602FB5C8D3B21CE01104181EF065F0EF6DAD47675D293A6A4FA2A3E604067B3A3C02422D237844042F12';
wwv_flow_imp.g_varchar2_table(18) := '2081E826400110DDF60FDFD60FCFF2A501CEF86435D827174E4452EE18B556EF09DEB30FFF7882F8A2E9F2CCFC873C3FBA1BBD2D7568AB388C8EAAA3E86A2857F10672798403C54034F50DB6950446085000B02F840F0119F4A141D6EFE3B38A915C301E';
wwv_flow_imp.g_varchar2_table(19) := '29851311975100BBD305CDEEF0FC884B9FD75904D472C0E020DCEE41B53CD0DD5089D6B20368AF3AA2BC05EEC1014F2C02C5007B0E09440D010A80A83175B836D413786777B8943B3FA5780A524BA62AB7BE0CF6220654E43E2F9F08E843836AD0174120';
wwv_flow_imp.g_varchar2_table(20) := '0240C4405BD901743554C03D3430BC4240CF804F507933098419010A8030335834555766F509396390523C590DFA3149E9B0395CB0C96C5F93419F0354C0FD41D3A00F0DC13DD8A704416F5BA3470C941F44577D19DC83FD01BF82059000095893000580';
wwv_flow_imp.g_varchar2_table(21) := '35ED12D5B54ACC19AD06FDF4B117C195940EBB33063667AC27210F5DD4C6F50D1103EE21B8FBFB30D8DF8DDEE63AB494EE533FBDCD35676C8734AE0A2C990448C03C021400E6B1E69B3E8480332E19A9A3A6226DCC4548C82A5209771C31F12A290F077D';
wwv_flow_imp.g_varchar2_table(22) := 'B3BB8E671BA4EE1EC4505F0F067A3AD0555F8EC6C35BD0567968D82B60C1AD926663E2FB4820CC09500084B901C3B6FA3293D780F8CC22A48D9A8EF471B355663D476C226C925D4FC617CEF6436F5EC98B20BB0707FB9510E8EF6842F3F1DDCA2BD0D354';
wwv_flow_imp.g_varchar2_table(23) := 'E5A9DFE94449A1AF2E6B400224E03D010A00EF59F1CE2010903DE8926C27B5641A3226CC5559F89C09292AB5AE1A4838E80781B241450CDB67A0BB43A52A6EAF3C8CE653FBD05E7E9042C020E42C96048C24400160245D96FD3E015D57B9F533C6CD46EA';
wwv_flow_imp.g_varchar2_table(24) := 'A86988CF2A424C62BA4AD0E3F13733A02F6CBACBB01090E5014951DC59578686431BD1517D5C6D31A447206C2CC98A4639010A8028EF00C636DF93BED6199BA85CFC19E3E7202E3D5F1DB0235BF83C41FC1CF88DB58181A50FBBFE65F7405F5B83DA4ED8';
wwv_flow_imp.g_varchar2_table(25) := '746C3B9A8FEF524184CCC760207B164D02412040011004882CE21C02C307D9885B3F7DEC2C35EB97643D72F00EDDFC91D95B64B0971D047DED8DE86EAC42D3F11D683EB11B837D5D1402916972B62A02085000448011ADD304CF8CDF15978CF471B35444';
wwv_flow_imp.g_varchar2_table(26) := '7F7CA60CFC996A10387DEEBD752ACC9A0499C08810E81521D05081C6235BD17C62970A2264C2A620C36671241020010A800001F2710F0199FDD99C31481B3D13D9931778D6F893B354C01F07FEE8EB252382AFA7B956C506884740920BC97281CAE7C08B';
wwv_flow_imp.g_varchar2_table(27) := '044820E4042800426E82F0AE801C3A63B33B9054300E599317A9C37864D62FFBF838F087B76D83517B1102EEA141755C71EBA97D683EBE43E5149014C48C11080661964102FE13A000F09F5D543F2983BB1CCC139F5988CCC90B9052340989D9A3A0D9ED';
wwv_flow_imp.g_varchar2_table(28) := 'C3E7CF47351E36FE1C0232EB1FECED425763255A4EEC46D3B11D2A70505DCC23C0FE4202212140011012ECE1FC52CF3A7F4C629A5AE397BDFC32EB972D7EB20CC08B04CE4B404E73B4D9D1DFD1AC96059A4FEEF6EC18E8E9F0EC0AE1450224602A010A00';
wwv_flow_imp.g_varchar2_table(29) := '537187F7CBD43ABFC385E4C289C89AE499F5C7A6E628772EF7F187B76DCDACBDC485C8D5D35A8F9693BBD178741BBAEACAD429845C1630D3127C57B413A00088F61EE04DFB655B9FEE467C4601D2C7CF45FA989948CC1DCDC87E6FD8F19EF33B046C360C';
wwv_flow_imp.g_varchar2_table(30) := '0DF4A3B3F6149A8E6E43F3899DE8EB685681A39E5CD0BC4880048C2440016024DD08285B66FDE2DE4F2D9A84AC298B91523C058EB844C879F2BC482070021A6C76BBE718E2D27D6838BCD9935190BB050247CB1248E002042800D8453E98809AF5EB2AA2';
wwv_flow_imp.g_varchar2_table(31) := '3F7DDC1C644EBC180959C59EC8FE684CDB3BECB696C047CFE47478861A4800DB698EBA4A88A88F64458C42BE23DB0665F01711D072720FFA3A9AE80DE0F7130918488002C040B8E15AB46CEDB33B63905C3411D95397A8DCFD72346FC407F94990DA9903';
wwv_flow_imp.g_varchar2_table(32) := 'FCC8EF80CA792FED1F1AE85347E44277AB3F0FF6F578B8F8E2B1968310ED76C5D4EE70A9238F1DAE78D89C2E150CE74A48795F102831708640887071205B4A7BDB9B546C40C3A14DE8AC3901B77B88B101E1FA65C27A5B9A000580A5CD637EE564CF765C';
wwv_flow_imp.g_varchar2_table(33) := '6AB68AF0CF99BE1409D9259139EB3F3DD8CB8CDE337A0FF674AAC15D8EBD1DECEDC4901C81DBD5A6B635F6B537401F1AC2605FB7BA4F3C2132F8CB7D9EE510EF1580CCF465A09354C97657AC8A8C976515872B0E9ADDA95226CBDF8910B0399CEA3EF977';
wwv_flow_imp.g_varchar2_table(34) := 'BB2B4EFD575D220486532E479A4766C41BD05E7514F5FBDF436BD97EF477B63293A0F95F077C638413A0008870037BDB3C71F7DB1C0E246416A9B5FECC89F3E08C4F8E9C59BF0CF823C165BA8E81DE4E3590CBDE7475CE7D672BFA3B9B31D0DDA9CEBC97';
wwv_flow_imp.g_varchar2_table(35) := '603499E1F7B6D60DCFF03DD9EB3CDEFF91C1DEB31C205E035F8E3492A795BBFFCCC390D4603E7C498E05BB03B129D94A20C424A5C39594AE8480FCD99998AA0E581231E04A4855F70CAB02B56C132982407903DA1AD1707083F2067437557B6C18C8B28B';
wwv_flow_imp.g_varchar2_table(36) := 'B71F08DE470251408002200A8C7CA126CA0CD7199F84D4E229C899793992F2C7C166B37B0693B0BD8607FCE154C432D8F777B561A0BB4D0DF672725D5F7BD3F04F037A5AEBD4F07E7A803FD3431022061EFEC303FAF06C5F6A189B96ABCE57884DCE405C';
wwv_flow_imp.g_varchar2_table(37) := '7A1E5C89697026A4288F81FCD7119BE071990FC77184F3898BD20E11622DA7F6A276CF1A74D69CC4D0601F970442D427F9DAC82240011059F6F4B935B27E2D8349E6A405C89D7E296253B3C33785EFE9593E30D4DFAB067A19F065A0EF69A945776335BA';
wwv_flow_imp.g_varchar2_table(38) := '9BAAD4AC5E963A463C026137AB3C63601791607738553E0609D894531765BBA61CB92CDE01F9B1399DC33A625850F8DC4B42FD802410B2A1B3AE1435BB56AADD025C1208B54DF8FE48204001100956F4AB0D1E17B4A4F2CD9971193227CD8753B6F7B9DD';
wwv_flow_imp.g_varchar2_table(39) := '7E9516B28786077DDDADABA36707BADA55C05E7763A51A3024EF7C4F53D5B01B5FBC02B68874217B5CFF9E1D1AB26D332E2D57E56A909D1BF26757529AF2144870A75CA7BD0B21339CEF2F5659043B5B50B76F1DEA0F6CF0A412E67280EF20F904090C13';
wwv_flow_imp.g_varchar2_table(40) := 'A00088C6AEA0EBD01C4E24E58E46E1825B915C38C1136015362EFF91F57C99E9F7785CFA6D0DE8AA2F5383BEFC888B5FDA1476B3FB20F5C7114120824E04802CEB24E78F435CA67807D2E08A4F198E1DF06CF70C974B04DC607F0F9A8FEF54DE80EEC62A';
wwv_flow_imp.g_varchar2_table(41) := '4F10268540B89890F5B410010A000B19C394AAE8BA5A239674BE2597DCAED690C36600189EED0FF5F77902F73A9AD50CBFADE220DA2B8FA2BFBB5DB98A3D5BF9BC8FCA37857B285F32BC64A0EB432AB030B960BCB2BF780754FC407C92DA6D1036018412';
wwv_flow_imp.g_varchar2_table(42) := 'D7313488F6AA63A8D9F116DA2A0FC33DD04F9B87B28FF1DD61498002202CCDE667A5755D0589654E5A88FC5957AAC8F2B0B8CED8A637D0DDAE66F86D1547D056BE5F4589AB415F5CFBBCBC20E099F10B2F891B482D998294A2C988CBC8F7EC288889F394';
wwv_flow_imp.g_varchar2_table(43) := '110E5E014D434F53352A36BF82D6D2FD18EAEBA608F0A207F0161218214001102D7D41D7D5809F77D195C89971A95A27B6FC97FCF04C6F4022F83B9AD15676004DC777AA403E1E1C138C8EAB43622764F62FF1029913E6A9A5028F57201118DE49108C37';
wwv_flow_imp.g_varchar2_table(44) := '1955860899BECE16546D7D0D8D47B6AA9305E9FD318A36CB8D340214009166D10F6A8FA6A9E43245F36F51C7F7DA1C120866E1755F4D53B9E007BBDBD5DEEF66393FFEF87695944766FBBE24DD8906F306A58D32E3D76CAA9FA48F9B8D8C717310939209';
wwv_flow_imp.g_varchar2_table(45) := 'A76C2974C82E026BF717D9E629DB046BF7AC55FD84222028BD82854438010A804837B066437C463E4A96DCA9D67D2D7DEEFAC8C0DFD389CEBA532AD2BBADE210DCFDBDFC4237B19F4A9643493A94367A0632C6CF4542CEA83010029A0A086D3CB205959B';
wwv_flow_imp.g_varchar2_table(46) := '5F51F12096162D26DA93AF2281F311A00088E0BE21EE5159DB1D73E527909833CAC2A95435E5D297AC7C9DB52755FA574F60571F67FB21ED9FBA4A3F2C2740664FBD44F52139BF40D2155BD58324C180CD2777A372F3ABE869ADA5080869FFE1CBAD4E80';
wwv_flow_imp.g_varchar2_table(47) := '02C0EA16F2B37E9246352E3D1FA3AFF83812734A2C3BF84B421E09DEEAA83981BA7DEFA2BDEA8827A29B97A50848BA610916CC9EB644C50B2821205B472D78A91D023527706AF5E39E54CE565EBEB0203F56297A08500044A0AD25A82BA570929AF94B40';
wwv_flow_imp.g_varchar2_table(48) := '9715D743657FBA0CFCEDD5C7546217D9C627EBFE569D59466037F1A3491AEC4E97F208E4CDBA1AF15985EA00234BF6AFA141252A4F2A11501FBED92DFDB0121F21016F095000784B2A4CEEF30CFE1331E6CAFB543A58CB7D39EBBACAEDDED35C83EA1D6F';
wwv_flow_imp.g_varchar2_table(49) := 'A9B4AE72EA1ED76BC3A4834935354D0DFC1913E7237FF6D56A6BE94886412BB5423C011D35277172D55F55A228896DE0450224F03E010A8008EA0DA707FFABEE537BBAAD36F8CB0C5F52B9361C588FDABDEFA87CFDFC520EDF0E284B00318969C89ABA58';
wwv_flow_imp.g_varchar2_table(50) := 'A593B6E2B2801201B5277172254540F8F634D6DC28021400469135B95C2B0FFE32C80FF5F5A0F9E41E35EBEF6BAD57417FBC228080A6C1136F92872295567AA2C71B60A14C8C140111D0CFD804430850001882D5DC42E50B5802B4C65C79AFE5DCFEEEC1';
wwv_flow_imp.g_varchar2_table(51) := '7E95AFBD6AFB1B682B3BA88E72A5BBDFDCFE61C6DB64C789040AA68F9F8B82B9D7232629CD525B4E2902CCE8057C47B811A00008378B9D535FF9E29513FD26DDF2796B05FCE9BACAD72F91FDF5FBDF55FBB2D5A12DBC229A80CDEE5422540E994A1F33D3';
wwv_flow_imp.g_varchar2_table(52) := '73E09045BC01140111DDF5D8383F085000F801CD2A8FBCBFCFFF5E75B29F55BE68C5BDDF5557A672B477D69C60909F553A8C59F5180E124C29998AE285CB109392359CC1D1AC0A9CFF3D670606F6B4D5D31B157A93B006212440011042F801BD5AD39090';
wwv_flow_imp.g_varchar2_table(53) := '5180D1164BF22329591B0E6E44CD9ED5EA985EDD3D145033F970F81250DE80A434142FBE1DA9A3A65966A780E49E683CB409E51B5E505E2A5E2410AD042800C2D1F2BA8E98D42C8CBDE213482E9A648D842CBAAEF2F6CB5A7FCBC93D2AC29F7BFAC3B173';
wwv_flow_imp.g_varchar2_table(54) := '05BBCE1A1C7109C89C381F0517DFE0D99D62817328642B6AE3E1CDA8D8F812067ADA997132D866677961418002202CCC744625874FF52B5E741B3227CEB340A0951CDCD38796D2FD2AFD6A6F6B2D24F08F07F6845BC732B2BE3AECCE5875A680F45BC924';
wwv_flow_imp.g_varchar2_table(55) := '68852C8222522BB7AC40DDFE759EA384A1190981659380E508500058CE241F52215D574957F2675F83DC8BAE80CDE10A6DED350D035DED2AC8AF66D72A0CF476724D35B416B1F4DB65D08F4DC944FE9CEBD4A9945638925A96ACCA37BDA4BC0172981045';
wwv_flow_imp.g_varchar2_table(56) := '80A5BB102B176402140041066A5871BA0E476C02B2A62E41D1829B6077C587D4952A5FE6DD8D95A8DCFA1A5A4FEDC5406F17348B447B1B6603161C140272D260F6D4C5C89D75156212D3439C0C4A435F5B034EAE791C6D158719B312140BB39070214001';
wwv_flow_imp.g_varchar2_table(57) := '101696D2D5096C69A3A663F465F7C0959C11D299B60CF46DE58751B1F92574D695794EEDE3E01F163DC91295D475D863E39156324DC505C4671585B85A3A7A9A6A70ECCD3FA0ABA13CC475E1EB49C03C021400E6B1F6FF4DBA8EE4C209187BD57D884DCB';
wwv_flow_imp.g_varchar2_table(58) := 'F5BF9C409FD43475525FD3B1EDA8DAF63A7A5BEA3C33260EFE81928DBEE7751D36A70B49B9635030EF2624174D84A6C9E9827AC858B4961D40D9BBCFA2BBA92A6475E08B49C04C02140066D2F6E35D32C026641563D465F720B57872C88E36959C03B265';
wwv_flow_imp.g_varchar2_table(59) := '4AB6F8D5EE59A34E58E3C0EF8741F9C8FB0474F16CD9119796A74440FAB8599094D6A1CA14299FB5FA031B50B9E555F4753441FA3C2F12886402140016B6AE1C991B939CA1DCA439332E0DD9179266B3A1BFA305B57BD7AACC7E035D6D1CFC2DDC6FC2AE';
wwv_flow_imp.g_varchar2_table(60) := '6ABAAECE12909800D9D9E28C4D0C515C8086A1FE6E946F7C49095DB53380DEADB0EB4EACB0F7042800BC6765EA9DBA44FCC725227BDA52145C7CBD0A000CC5CC4882FDE428D5DADDAB517F603D06BA3B2C93D5CD5483F065C61250DB5BD3903BE30A644F';
wwv_flow_imp.g_varchar2_table(61) := '5F0257420A44009B7DC9ACBFB7BD11A56B9F444BE93EE86E495FCDED8166DB81EF3387000580399C7D7E8BB84633C6CE5659D462D3B243F26528870CC979EA35BB57A9E43E1CFC7D36231FF08180B8E05D8969C89D7985F278854C04D8EC68AF3C82D275';
wwv_flow_imp.g_varchar2_table(62) := '4FA3B3F614BD003ED890B78617010A000BDA4B529526E78F43C9D2BB9052382924EED091C1DF93D96F3724731AD7442DD85922AC4A678A80DC1997A9BC17A14927ADA3E1E066546C7E19BDAD7596485C1461A666732C408002C0024638B30AE2F654C952';
wwv_flow_imp.g_varchar2_table(63) := 'E65E1FB275FFB307FF3D181AE8E5E06FB17E12C9D591013F26291D1913E72167FA6588CF2C30FF24494DC3505F8FDAED52B76F9D0A80A5008EE45E179D6DA300B092DD656B94C385EC694B50B4F056150320B100665E1CFCCDA4CD779D8F80880095F86A';
wwv_flow_imp.g_varchar2_table(64) := 'F222E4CFB906B1A939A67B0224F8B5A7B91665EB9F535EB050C424B0879080910428008CA4EB63D9F205933666064A2EB90309D925A67FE171F0F7D160BCDD5002F27910119C33E332E4CDBE3A24310192F44A8201CBDE7B0E5D75A516387BC350E42C3C';
wwv_flow_imp.g_varchar2_table(65) := 'CA08500058C4E032E389CF2C44D1C2656A2B94D9EB9E12ED2F014FA74FF3A3DBDF223D23BAAB31B21C2022407ECC0F0CD4D44E80EAED6FA266D74AF477B7732920BABB6444B59E02C00AE614D7BF2B1679B3AE565BFEECAE5853B7FC89ABB3B7AD11159B';
wwv_flow_imp.g_varchar2_table(66) := '5E42D3D16D0CF8B3429F601D4E13386B77C0F4E1DD01BA795B0465EDBFAFBD11E51B9E47E3916D2109CA65772001230850001841D5C732E50B2E63DC6C142D5EAEB2FE9939FB972FB7FECE1654EF7CDBB3CF9FC14E3E5A8FB79B41604404E4CFBE5A6D13';
wwv_flow_imp.g_varchar2_table(67) := '14C16C665E0C9BDD89E693BB51BEFE39E529D3EC0E339ACD779080A10428000CC57BE1C295EB3FA300C58B972363C2C5A60EFE92E54C8E4315D766ED9EB5DCE77F6173F18E101290CF8A040316CEBF09999316406256CCBCE4FDD53BDE523F033D9D3CFD';
wwv_flow_imp.g_varchar2_table(68) := 'D24CF87C97210428000CC1EA6DA13A349B436DF92B987B1DEC3171A6CE6ADC8303A8DBFB8E5AF7EFEF6C65863F6FCDC6FB424740D20667E4A368C12DC89C38DF5477BC5A2A6B6D40F98617D0787833130485AE17F0CD41224001102490FE14A3EB6EA496';
wwv_flow_imp.g_varchar2_table(69) := '4C43F1A2DB905430DED4BDCE12DD5C7F70232A37BFC2837DFC311E9F091901F9DC24E58CC6A84BEF4652C104534F1094C38A1A8F6C5522A0BBB192098242D60BF8E26010A0000806453FCA902FB198C43495EA376BCA223F4AF0FF1189F86F2B3B88936B';
wwv_flow_imp.g_varchar2_table(70) := '9F404F53356732FEA3E493212220B12B29459350B2F42348C82E326F8FBE1C89DDDF8BCAADAFA9B8197D70809F9F10F501BE36700214008133F4AF045D57DB9A0AE7DD8898E44CF35C999AA606FD93AB1F4347F509F3DEEB1F253E45021F4C40D7D56E99';
wwv_flow_imp.g_varchar2_table(71) := '8C89F351BC68994A196C5650A008E88EEAE3A8D8F8225ACAF6735B20FB68D812A0000881E924C149425611465D7637D246CD807B68C0A45A6818E86E47E9BBCFA0F9F84EB807FA387B31893C5F137C02E24573C62723EFA22B913FFB5AD89CAEE0BFE43C';
wwv_flow_imp.g_varchar2_table(72) := '258A0890F819D91AD82F2764F2D860D3D8F345C1234001103C965E9724EECBA2C5B721CFE4ED4CEEC17ED4EC5CA9A298077BBB38F87B6D31DE68550222A663923354F6CCCC49F34DABA67C867B5A6A51B9E555154B4301601A7ABE28880428008208D39B';
wwv_flow_imp.g_varchar2_table(73) := 'A2642B514AF164942CB9134979E3CCDBF6A7EB683AB10BA7563F3E9CCD8C679C7B632FDE130E0474C4671661FCB59F444276B169E767780202B7A174DD33E86DABE35240387415D6F12C021400A676081D9ADD8931577C1CD953169B3A03EF6EACC2B137';
wwv_flow_imp.g_varchar2_table(74) := 'FF80EEA64AD3D64A4D45CB9745350149CC233B6AC65E75AF5A1630E5923C1ADD1DA852B901DEE4E7CA14E87C49300950000493E605CA9235CB8CF117A378E1AD88CF2A342D725992FD9C5AF7349A8FEF80ECFDB7C235E47603E61E747876B335C06EB359';
wwv_flow_imp.g_varchar2_table(75) := '0105EB100C02BAAE4E0FCC9D79390AE6DF6C5A9220111EADA5FB51F6DEB3E8AC2D0D692E0DB7AE437787F24305D86C1A974382D19F4D2A8302C024D012A1EC8C4BC2D8ABEF43FAB8D9A6B92925C0B06EF75A546C791543FDDD0042EFFA978177F2B81238';
wwv_flow_imp.g_varchar2_table(76) := 'ECA11B807BFBFA71F8648559D6E77BCC20A0EB7025A561ECD50F20B5788A391E364DC3506F376A76AD42E596574CFB5C9F8B5306FFA2DC2C6467A486AC0E1A341C2BAF42476737458019FD3D08EFA0000802446F8A90D97FEEF44B5130EF46C4A6649BB3';
wwv_flow_imp.g_varchar2_table(77) := 'FD4ED7D1517302C7DE7C147DEDCDA6264CF930264909F1D8B7E2512427C67B83CE907B8E955661FE9D9F37A46C161A3A02129C2747694FB8E1B38849C934A5226A5B60D53194ADFF3BDA2A0E872439504F5F3F7EF9ED87F1A9BB6E30A5CDE77BC96D0F7D';
wwv_flow_imp.g_varchar2_table(78) := '17AB36ED82D3610F693DF872EF08500078C729C0BBC43D998871D7FC13D2C65C64DA402C5BFE64DDBFBDF28879C1865E901201B0E795DF213539D18BBB8DB9E5C8A90A2CBCEB8BC614CE52434A40F203644F5DA2326C9AB535507623D4ED5B8753EF3C19';
wwv_flow_imp.g_varchar2_table(79) := '92580011003FFFD643F8CC476E0C29FB650F7D17AB2900426A035F5E4E01E00B2D3FEF95D97FCEB4A5EA1013B366FFB2E5AF7AC7DBA8DEFE863ADED74A17058095AC118975D15520E0D82BEF43EAE819A6ACCBCB3901120350B6FE39151320BF9B795100';
wwv_flow_imp.g_varchar2_table(80) := '98493B72DE450160822D1D31F1187FDDA7D497911997088EAEBA321C7DED37E8EB6C09C98CE4C3DA490160462F88EE77C852407C563126DEF439C424A79B10FBA241770FA27EFF7B38B9E609D3E15300988E3C225E480160B419751DD9D396A070FECD88';
wwv_flow_imp.g_varchar2_table(81) := '4DC93265ED5F92FC9C58F557B49CDA6BEA0143DEA2A400F09614EF0B8480DD19839CE997A268D132D81CC667093CCB0B60728A600A80407A4AF43E4B0160B0EDEDAE384CB8E133481D35DDE037798A976D7E8D47B7A174ED93181AE835E59DBEBE8402C0';
wwv_flow_imp.g_varchar2_table(82) := '5762BCDF5F02B2F366C24D0F21297FAC09897A34E84303A83FB8410970F1429875510098453AB2DE430160A03D7539F067EA25285C708B27225937788FAEAEA3B7AD01875FFD3FF434571BFF3E3FD95100F8098E8FF94CC09320682AC65FFB29D863E27C';
wwv_flow_imp.g_varchar2_table(83) := '7EDED707C40BD05E791427573FAE8E0B864967045000F86A29DE2F0428000CEE07B21D49F6FDCB5621A3AFA1FE5EAD5F2AEF0000200049444154546F7B1DD53B579A78C090EFAD0AB5001061B6EFE8295CF6F1AFF85E793E11760464E01FB5E42E644D5E';
wwv_flow_imp.g_varchar2_table(84) := '081104865E921DB0A713757BD7A26CC30BA6790124AFC54FBEF1593CFCB15B547EAD5065FBE02E00437B57D00BA700083AD2E102755DB9FDE5C4BFB8F43CC367E3B20DA9ABBE0C875EFC5F0CF649C21FEB5EA112006EB71BDDBDFD3870AC14BF7B6A055E';
wwv_flow_imp.g_varchar2_table(85) := '5ABDC1BA9058B3E011D034C4A56463F2F2471093946EF8AC5C5CFF6D958771FCCD3FA2AFBDD1F0F709A8A1A121CC9B31199FBBE7665CBE6026921313600F41A22D0A80E0755B334AA200308CB2AE3292654E98079B33C6F0BDFF32EB90E86339E6577601';
wwv_flow_imp.g_varchar2_table(86) := '58F9325B004896B49EDE3EEC3D7C127F78F675ACD9BC1B3D7D7DE81F18B43226D62D88042408B070DE0DC89B7D8DE101817232605F478BDA825BBD6BA5695E0087DD0E97CB811913C7E081E5D7E2AAC5739092180F9B895B12290082D8694D288A02C020';
wwv_flow_imp.g_varchar2_table(87) := 'C8F199856AEB5F7C5691E1B37FF7D0205A4BF7E1F89B7FB0DC9EFF0FC26B96001057BFAC8DEE3A701C7FF8FBEB58B76DAF12027DFDD6380FC1A0AEC7623F8880A621363913136FFE3CE232F28C1F94350D6DE50771F4B5DF7A8EDE36E9923023C9C2171B';
wwv_flow_imp.g_varchar2_table(88) := 'E3C2B4F1A370EF6DD7E0BA2517232529DE94F4BC140026193A48AFA1000812C8738B29987B3DF2E65CE33999CCD0E03F0D03DD6D38FEF69FD05A76C0E0770507961902A0A7B71FDBF61DC19F9E7B03EB77EC47574F2F649D94E7B607C786E1588ACDEE40';
wwv_flow_imp.g_varchar2_table(89) := 'F6B4A5285EBC1C922DD0C84B96017A5AEB50BEE1797564B0D9FD4EC4AFD3E1407C5C0C268F2DC1276EBD0A375E361FC9490986C607500018D9AB825F360540F099C219978C49B77E0189B9A30D28FDEC224766FFC7DE781492FD2F1C2E2305800CF29B77';
wwv_flow_imp.g_varchar2_table(90) := '1FC29F5F780B9B761D4447573707FE70E81426D5D1119788A9CBBF8AB8CC7C83BD009AFA3C361DDD8A636FFED1F4CC80233847844062421C268E2EC4476FBA12B75CB9102949098610A7003004AB61855200188056A28D8B2FB91DAEC4346367E49A86FE';
wwv_flow_imp.g_varchar2_table(91) := 'CE569C58F917957E34B4E7EB7A0FD20801D0DB37808D3BF7E3AF2FBE8D2D7B0FA3ADA34BB9FF6D266DC3F2BEF5BC339404649B5ECE8CCB51BC6819244787A197A6A1ABBE1C27DEFE33BA1ACA42189B2F5F433A1C0E3B521213307E5421EEBEE1322CBB7A';
wwv_flow_imp.g_varchar2_table(92) := '71D085000580A13D2AE8855300041D2930E1C6CF216DCC4CC3CF243F3DFB7FF351B807C263F62FB8832900643DFFDD6D7BF1C4CBABB07DFF5134B77540DCFF722E392F12F820028EB8244C59FE08244EC750D7BC26CB73EDA8D9B90A955B5F35D8E3E09D';
wwv_flow_imp.g_varchar2_table(93) := 'AD9510B0DB9196928871C505B8F3FA4B71DB35972035481E010A00EFEC6095BB2800826C89C49CD1187FFDA7119B9A63EC8C5C66FF1D2D38B9FA3195F2379CAE60080071F5AFDBBA174FBEBA1A3B0F1E47634B9B0AF093191E87FE70EA0DE6D755D6E773';
wwv_flow_imp.g_varchar2_table(94) := '2FBA02450B97C1112BAE70031374E9407BD5511C7EE597A606035E88AAEC8C112190919A8C71C5F9587ECD25B8FDDA25019FD049017021F2D6FA770A8020DBA3E0E21B903FE75AC85AA391C17FE13AFB0F9607E0178FBF84DF3DF52A9A5A3BD4963ED9EA';
wwv_flow_imp.g_varchar2_table(95) := 'C4813FC89D39828B93815FCEE6F024E832500040533B737A9A6B2C7524F78869DD6E5DE50BC84A4BC1FC8B26E3AF3FFE7A4056A70008089FE90F53000411B9DDE9C294DBBF0AF102189A025466FFED4D38B9F649B49CDC15D2B5457FF005C303F0B5FFFA';
wwv_flow_imp.g_varchar2_table(96) := '3D7EF9D84B888B8BE1C0EF8F11A2FD195D57EBE2A65C9A7C1D98772E803F6D1A1C1AC2A431C5D8FADCAFFC79FCF433140001E133FD610A80A021D7905C3811E3AFFF94E1C17FBA7B086DE58770E4B5DFC03DD017B4169855503004C0377EF2287EF9F84B';
wwv_flow_imp.g_varchar2_table(97) := '6ABF332F122081C00848964CD92EB8E9D95F045410054040F84C7F98022058C8354DAD29E65D7485B1D1C5C391FF959B5F55F9C60DF534048BCD39E55000180496C592809F042800FC0417E68F510004C98072F6F8943BBE8684EC12C3238B3B6B4EE2D0';
wwv_flow_imp.g_varchar2_table(98) := 'CB3F57878E84E34501108E56639D2399000540245BF7FC6DA3000886DD350DC9F9E331E1C607E14C48312EF86FE4A4B13D72D2D8F3A69C30180C3CE7964101600455964902FE13A000F09F5D383F49011004EB49804FE1825B9037EB2A43538CCA16B7EE';
wwv_flow_imp.g_varchar2_table(99) := 'C62A48D6BF50271609041B054020F4F82C09049F000540F099864389140041B09272FFDFFE5524E488FBDFA868DFE1D4A2C7B6ABCC7F120818AE170540B85A8EF58E54021400916AD90F6F170540A076D73424E58DC3A49B1F866418336A4FB1088BDEF6';
wwv_flow_imp.g_varchar2_table(100) := '46546C7A05F507DE355068040AE4C2CF53005C9811EF2001330950009849DB3AEFA20008D01692484412FF480220234F1813012019C58EBEFE5B95FF3F9C2F0A8070B61EEB1E8904280022D1AA176E1305C085197DE81D220026DFFA4524174D322E284F';
wwv_flow_imp.g_varchar2_table(101) := 'D3E0EEEF45FD810D38B1FA31C3CF180810C9051FA700B82022DE4002A612A0003015B7655E460110902934B8125331FDEE6FA9FF1A7549F05F4F530DCAD6FF1D4DC77786B5FB5F18510018D553582E09F8478002C03F6EE1FE14054000169481397DEC2C';
wwv_flow_imp.g_varchar2_table(102) := '8CBDEA3ED863E20328E9428F6A682DDD87636FFC1E837DDD17BAD9F2FF4E01607913B1825146800220CA0C3EDC5C0A8000EC6EB33B50B2F42E644FBD04368741296965EF7F6F17EAF6AC45E97B7F0F7BF73F3D000174383E4A020611A0003008ACC58BA5';
wwv_flow_imp.g_varchar2_table(103) := '0008C040368713D3EEFC06E2B38B0D73CB7BF6FE57A37CC3F3683ABEC3B0F70480C1E747E901F019191F200143095000188AD7B2855300F86B1A4D434C5206667CEC3B7018E8FE1701D05A7610C7DFFA23FA3B9AC332F7FFB9882900FCED747C8E048C21';
wwv_flow_imp.g_varchar2_table(104) := '4001600C57AB974A01E0A78524FA3F63FC5C8CB9F213066EFF93E43F7DA8DBF72E4EAE7E1CE27188848B022012ACC8364412010A8048B2A6F76DA100F09ED55977CA605C72C91DC89EB6D4B08159F6FEF7B4D4A262F32B6838B811E20D88848B022012AC';
wwv_flow_imp.g_varchar2_table(105) := 'C8364412010A8048B2A6F76DA100F09ED559774AFADFC9B77D1989B9630C1B98C5CBD05E791827563D8E9EA6AA8870FF0B440A003F3B1D1F2301830850001804D6E2C55200F865200DAE8414CCF8E8BF794EFF33EAD234341EDAA40EFF81A619F516D3CB';
wwv_flow_imp.g_varchar2_table(106) := 'A500301D395F48021F4A8002203A3B0805801F769799794AE1444CB8F921D89DB17E94E0C523C347FFD6EC5A898A8D2F41B33BBC78283C6EA100080F3BB196D1438002207A6C7D664B2900FCB0BBCDEE44F6F44B5172C972C3F6FFCB7A7F5743A51AFC9B';
wwv_flow_imp.g_varchar2_table(107) := '8E6D332ECDB01FED0FF4110A804009F27912082E010A80E0F20C97D22800FCB094CD198351920068CA62C366E6E265682DDB8F93AB9F406F4B2D9700CEB1D3377EF2287EF9F84B888D312801931FFD828F9040B812A0000857CB05566F0A003FF8D95D71';
wwv_flow_imp.g_varchar2_table(108) := '98BCEC4B48CC1B6358621ED901507F7083DAFF1F69173D00916651B627DC09500084BB05FDAB3F05801FDC9CF1C99875FF7F1AB7FF7F38FD6FCDCE9528DFF86244A4FF3D133305801F9D8E8F9080810428000C846BE1A229007C348ECCCCE3B38A30F5CE';
wwv_flow_imp.g_varchar2_table(109) := 'AF43B6021A718DECFFAFDCB202F507DE8BA8F57FE145016044AF619924E03F010A00FFD985F39314003E5A4FA2F1D346CFC0F8EB3E656000A01D1DD5C751F6DE7368AB3864589E011F9B1EB4DB290082869205914050085000040563D8154201E0A3C964';
wwv_flow_imp.g_varchar2_table(110) := 'D65F30EF46E4CFBEC6B80040BB03CDC777E2D49A27D0D7DE14510180F400F8D8E1783B0998408002C004C8167C0505808F469100C0D1977F149913E719E69A172F43EDEE3538FEF61F215B0E23EDA20720D22CCAF6843B010A8070B7A07FF5A700F0919B';
wwv_flow_imp.g_varchar2_table(111) := '9CFC37F1E687905430C1981D009A86A1BE1E54EF7813E51B5F8AB800407A007CEC70BC9D044C2040016002640BBE8202C047A338E39230F3E3DF8333211940F0D3F34A00A0B8FD2BB7BE86DADDAB0C5B66F0B1D941BD9D1E80A0E26461241030010A8080';
wwv_flow_imp.g_varchar2_table(112) := '1186650114003E9A4D72FFCFBEFF3F21C9808CB8240360676D292A36BE88E693BB0D5B6630A2EEDE964901E02D29DE4702E610A0003087B3D5DE4201E08345243B5F52DE58750AA01C076CC4A5320096EE43E9BA67D0D55861CC32831115F7A1CC681300';
wwv_flow_imp.g_varchar2_table(113) := '9AA6C1263F761BEC9A0D9A4D0374FD7D62C3BFBADD3AE48B78C8ED867EE6BFFBC03694B78EB4D16693767E80774C033C6DD4551BA5ADE176295BDA34D86D36483BE5F70FB6A5B4CFD3CE70B0250540B8F5C4E0D49702C0078E129C975A320D136EFCAC61';
wwv_flow_imp.g_varchar2_table(114) := 'C179F28EA663DB51FACED3E86B6B88B81D00823B5A04800C0EF29399968C8BA74FC4E239D33077DA048C2AC85183C3C825634847570FB6EF3F8AAD7B0F63FDF6FD38555983A16141E043170DC9AD3210BA9C0E4C1A5D842517CFC0DCE913307BCA38381D';
wwv_flow_imp.g_varchar2_table(115) := '671F6025ED3C74A2023B0E1CC5BBDBF661CFA11368EFEA5603A4D507C911119793998679332661D1ECA9B878FA0414E4649E634B0D2DED9DD8BEFF08B6EC3E8C0D3BF7A3BCBA1E6EDD2308AC7A510058D532C6D68B02C007BE36870B59531661F4A5771B';
wwv_flow_imp.g_varchar2_table(116) := 'B6362F51FF35BB57E1C4CABF44A4FB3F5A04800C6853C78DC2DD375E862B17CD465E563A5C2E27629C4ED8EDB67FE875727FDFC020FAFB07D0DED9859D078FE399156BB172E34E0C0D0DC18A4387CCF1E3E36271F3150B71E7F54B31656C09E2E36210E3';
wwv_flow_imp.g_varchar2_table(117) := '72C2E5FC600FD9E0E010FA0606D0D73F80B2AA3AAC58BB197F7FF35D54D43458F6C46B71C688A0B9FBA6CB71E9BC99C8C948558247EC299E80732F65CBFE01F40F0CA0A5BD0BDBF61EC6D32BD6E29D6D7B2C2B0228007C180822E8560A001F8C6977C5A2';
wwv_flow_imp.g_varchar2_table(118) := '60EE75C89F7BBD6183B30880EA9D6FE3C4CA3F1B9668C887261B726B247B0064A04E8A8FC35D375C8AFB6FBB16638AF3D48145E21EF7E59201A4A9B51D2B37ECC07FFFE93954D5355A6A96ECB0DB31717421BEF6E98F60F1ACA9484E8AFF8719FF85DA2B';
wwv_flow_imp.g_varchar2_table(119) := 'EEF19E9E3EEC3F568A5F3DF132D66CDA859EFE7E03426B2F5493F3FF7B726202EEBBED6ADC73D31528C9CF56B6546E7F1F2EB1655D630B5E5FB7053FFFEB8BA86F6E396BD5C087A20CBB9502C030B4962E9802C007F3880028BCF846E4CDB9C618012067';
wwv_flow_imp.g_varchar2_table(120) := '00F474A26ADB6BA8DCFA7A446E018C640F807C898E2B29C0E73F7EAB9A15A72527A9F5E240AEAEEE5E1C385E8A1FFEEE29ACDFB11F4343A15D371781131F1B83EB975E8CAF7EF22E8C2ACC45AC2BB07898C1A1213434B5E12F2FBE85C75E5A899AFAE680';
wwv_flow_imp.g_varchar2_table(121) := 'B905C25C9E1577FD947125F8E7FB97E3EA4573909A9CE0F3C07F6E1D649967E7C163F8F1EF9FC6963D872D25E8280002ED31E1F93C05800F7673C42660CC95F7227DEC2C63D2F36A1A06BADA50B5F53554ED788B02E0436C63B5E38065363B7DC2687CED';
wwv_flow_imp.g_varchar2_table(122) := '9377E1DAA57311EB0ADE31C532E89FACA8C1FFFBBFC7F1D67BDB210366282E716D8BF7E68E6B97E0EB9FB95BB9C27D9D0D7F58BD3BBB7BF0C4CBABF0EB275F455975DD07BAD7CD68B70C8673A64EC0371FBC074B2F9E7EDEE50C7FEA22B63B74A21CFFEF';
wwv_flow_imp.g_varchar2_table(123) := '578F63CDE6DD9611011400FE5833FC9FA100F0C1868EB8444CB8E14124171A9304481D02D45A87CACDAFA07EFF7B86C519F8D064436E8DB425809199FFB71EFC286EBA7C019CCEB383DF82015106DF13E535F8C64F7E8FF7B6EF375D04C8FB13E26371F3';
wwv_flow_imp.g_varchar2_table(124) := 'E50BF1FD2FDE87EC8CD46034EB1FCAE8EEEDC31F9E7D1DBF79F255D43434A9487B332FB7AE63CAD862D5C6CB175C0459EA08F625EF3878AC145FFFC9A3D8BAE730E4F7505F1400A1B64068DE4F01E003771100136FFC1C920AC61BB23D2F1A720044DA12';
wwv_flow_imp.g_varchar2_table(125) := '807C778B4BFCDF1EFE383EB1EC2A24C4C5FAD0A37CBB5506E19D078EE1D3DFFE5F9457D7993A70C8403C6FFA44FCF23B5FC0D8E23CDF2AEEE3DDCD6D1DF8AF479FC19F9F7F13FD038341F5325CA82A89F171F8D1573F85E5D75CA2D6FB8DBAC4ABB371D7';
wwv_flow_imp.g_varchar2_table(126) := '013CF89D9FA1B6516202422B0228008CB2B4B5CBA500F0C13ECEF8644CBDFDAB884BCF33647B9EE400E8AC3981F28D2FA2E5D45E63E20C7C68AF51B74692074006A84FDF75031E79E00E14E5651985EC74B9F2BEA75F5B8B6FFDCF9FD0D5D36BF8FBE405';
wwv_flow_imp.g_varchar2_table(127) := 'B2BC31AA20173FFCCA2771C3A5F34C79E7BE23A7F0835F3FA102E7CEB7A320D81511F7FC97EE5BAE62387232D2825DFC3F7A3B7AFA54CCC3777EF117C8EE88505E1400A1A41FBA77530078CD5E872B210D17DDF703C88140465C2200DACA0FA26CFDF3EA';
wwv_flow_imp.g_varchar2_table(128) := '3860F10844E2152902405CB753C795E0875FF9945A2B36EB92DD015FFE8FDFE0ED0D3BD45633232F99994A24FC3D375E8EEF7DE9DEA0C6367C58BDE5BD4FBEBA063F7EF419E5ED307A2940DE376BF238FCF49B0FAA2D7F665CF2CE9A86667CE907FF8775';
wwv_flow_imp.g_varchar2_table(129) := 'DBF69ABEAC73661B2900CCB0B8F5DE4101E0B54D74B812D330EB811F19169CA792001DDD8EB2F79E454F4BAD21CB0C5E37D7C01B2345000C0C0CAA40B107EFB919E9294906123BBB6889507F7BC3763CF4DD5FA0A5BDC35017B9B8AA251AFE17FFF6B04A';
wwv_flow_imp.g_varchar2_table(130) := '6664E6555E538F7FFFF5DFF0B75756ABDC02465ED2CE7FFFF203B8EFB66B909C186FE4ABCE2A7B607050E54278F8FBBF446F5FBF69EF3DF745140021431FD2175300788D7F4400FCD0D02C808D87B7A0ECDD67D4814096CD8CE235B30FBE311204802CD9';
wwv_flow_imp.g_varchar2_table(131) := 'A6A524E2D17F7F04572E9C152011DF1F6F6DEFC4ED9FFF3EF61E39A95CF4465CB22AED74D871E3A5F3F1FB7F7F44FDD9ECEBB74FAFC00F7EF538243830983B0ECE6D47567A0AFEF6D37F55590CCDBCC40B203902963DF45D1C2FAF0A59A2200A0033AD6E';
wwv_flow_imp.g_varchar2_table(132) := '9D775100786D0B9304C0912D285BF72C7ADB1B0DFDC2F3BAD906DC18090240BE3025C3DF0F1FF924268C2E3480D2871729D901BFFBCBC7F1D717DE322C16403C0D79D9E9F8C22796E1A18FDE627A1BE585EF6CD983EFFFEA7115FCF8411914835129113A';
wwv_flow_imp.g_varchar2_table(133) := '22727EF4D54FA230D7F8388E73EBDCD3DB876FFDEF9FF1E48A352A1364282E0A8050500FFD3B2900BCB6010580D7A82E70632408000918FBFAA73F8207EFBE09996929C142E37539F285FDFABBDBF0E5FFF8351A5BDA0C118BE2169F3E71347EF28DCF62';
wwv_flow_imp.g_varchar2_table(134) := 'E14593BDAE5B306F3C55598B1FFDFE69B50C20E9778DB86416FEBD2FDE87FB6FBB0629490946BCE243CB94C0CE97576FC423FFF91BC3C4DC851A450170214291F9EF14005EDB9502C06B5451200064EDF66FFFFDAFB8E9B20521C95A274B10F54D2DB8F2';
wwv_flow_imp.g_varchar2_table(135) := 'BEAFA934C146B8C72532FDD27933F0F4CFBE6DE8F6C60FEB2EB2BCF1DF7FFA3BBEF78BC70CDB962702E0E5DFFC0097CC9916225BEA28ABAEC7E59FF80ADA3ABA82F531F3A91C0A009F7045CCCD14005E9B527601A462D63F4910A03101491204D8C82500';
wwv_flow_imp.g_varchar2_table(136) := 'AF2C12EA4C801200F8C61F7FA8068D505D32439F7DDB83EAB439230480889C6B2E998BE77FF9DD503551BDF7B74FBD8A2FFFF0B78833685FBE2C756C78FA67983A7E54C8DAD9D9DD8B99377F5A9D24188A8B022014D443FF4E0A002F6D2059FA12B28B30';
wwv_flow_imp.g_varchar2_table(137) := 'EDAE6F1A96A18F02C04B6300B0820078EDD1FF3475FBDFB97464809EBBFC21C304800C0A375C3A1F4FFECFBF7A6F1803EE94AC808FFCC83801204B0BAB1FFBA9DAD219AAABA3AB1B17DDF2590A805019204ADF4B01E0A5E16586159F598869777FCBD06D';
wwv_flow_imp.g_varchar2_table(138) := '808D8736A174DDD3E8EF6CE52E800FB10D050060B40010FC72A8D15F7FFC752F3F25C6DC66B400484C88C35B7FFC11268F2D36A6015E944A01E00524DE12740214005E233569098002C02B8B5000182F00C40370FDD27978EA7FBFE5954D8CBAC96801E0';
wwv_flow_imp.g_varchar2_table(139) := '7438B0463C00E3E901D8F4EC2F0232A36C675CBD695748B68C0654F1287D9802C06BC33308D06B5417B83112760130062058BDE1C2E5FCF6A915F8F20F7F636C0CC0333F0FE912801CFB3C83310017EE0CBC23A8042800BCC64901E035AA681000838378';
wwv_flow_imp.g_varchar2_table(140) := 'FC27FFA25CE4F610A46C1E49237BCD03DF307417C0D27933F0D4FFFCAB3A06381497EC44F8E99FFEAE8ECF35EA701E61F9C2FF7D5FC57384C2969252FA54450DAEBAFFEBDC05108A4E16C5EFA400F0DAF814005EA38A0201208978BEF2C9BBF0B97B6E86';
wwv_flow_imp.g_varchar2_table(141) := '649133FB92ED712BD66EC1577EF45B3419980760DA8451F8AFAF7F068B674F35BB89EA7D272B6AF0C3DF3D85A756AC35340FC0BF3DFC09FCD31DD721354479005E787B3DBEF6E3DF310F40487A59F4BE9402C06BDB5300788D2A0A04806C1DBB6CFE4C75';
wwv_flow_imp.g_varchar2_table(142) := '74ECA43145C142E37539B205F0DB3FFB331E7F7915BA0D3A1550DA989B9586873F76ABCA06188A6BCDE65DF8DE2F1FC79E43270CCB0428EDBAF692B94AE89871A2E3B91C2513E0377EFA073CFBFA3AC30F773A9F0DB90D3014BD3BF4EFA400F0DA062609';
wwv_flow_imp.g_varchar2_table(143) := '80C35B50FAEE33E8E759001F6A995007014AFAD894C4789523FF9AC573BCEE45C1B851DEDDD2D681E50F7F0FFB8F9542BEBC8DB8D45900763BAE5B7A31FEF01F5F316C06FE6175FFF5DF5E51C702CB413946E43A187977466A329EF8E937317FE6242350';
wwv_flow_imp.g_varchar2_table(144) := '9EB7CC91A59C659FFB8EF276C87240282E0A8050500FFD3B2900BCB68149A7011EDB8EB277791AE085CC126A0120F59340C0AF7EEA2E3CFCB15B4C4D072C33F3D7D66DC1177FF02BC8A140460E8CE2699834B6083FFBD787B070D6940B9925A8FF2E6980';
wwv_flow_imp.g_varchar2_table(145) := 'E534C0A75F5B6BCA6980DFFDC2BDF8E41DD7999A0E58B672BEB87203FEF9DF7F8DDE7E9E0618D40EC4C22E488002E08288466E906D8069B8E8DE1FC01E13E7F553BEDCA8D9EC68AB3884F2F5CFA3BDEA18B4100497F9525F7FEF8D845D00D27699AD4D1C';
wwv_flow_imp.g_varchar2_table(146) := '55A896016439C0C881F8FD5E083436B7A9C17FED96DD903CF2465E3243157BDD71DD52755C6E7C6C8C91AF3B5DB6889CC75E5A899FFCE11915E46833F8B320136F8977F89F6F3E88B9D32698634B5D576DFBFCF77F890DBB0E40C456A82E7A0042453EB4';
wwv_flow_imp.g_varchar2_table(147) := 'EFA500F081BF333E1953967F05F119F98624E91101D0597302E51B5F44CBA9BD90DF23F18A140120B6910158CE90FFDAA7EEC2A8821CC3CDD5D73F80BFBEB812DFFFD5639E23720D7F23D471C3C579D9F8C197EEC7B2AB179BF04660E781E3F8C1AF1FC7';
wwv_flow_imp.g_varchar2_table(148) := 'CA0D3BE0721A937AFBDC86C88E83CF7DF466FCF3FDB7232F2BDDF07676F5F4E20FCFBE8EFFF8CD9390C3A54279510084927EE8DE4D01E0037B475C2226DEF83924158C87A4060EF62533FECEBA52546C7C09CD277651007C08602B2C0148F564C536D6E5';
wwv_flow_imp.g_varchar2_table(149) := 'C4373F7B0F1EB8FD3A242518E31D52EFD2756CDA75109FFBDE2F5059DBA07E37EBB2691A664F1D8F9F7FFB61C333E6D537B5AA13001F7F79250607DDD0CC5039C320C5C3219E8EBB6EB8CC506F87EC2259BB658F9AFD37B4B4996ACB0FEA331400667D92';
wwv_flow_imp.g_varchar2_table(150) := 'ACF51E0A001FEC210260C20D9F4572E14463048066436F6B3D2AB6BC82FA7DEF1A76E6800F4D36E4D648F2000820F9F21C55988B7FF9F4DD5876CD62C4BA5C41E72643FDC1E365F8979FFE019B771F34DD5D2C624306470908FCFE17EF47616E66D0DB28';
wwv_flow_imp.g_varchar2_table(151) := '054A4ADCDF3DBD02BF7FE67575DAA1D1AEFF731B21CB3A134615E03B0F7F421D8464C411C4B2BCB1EBE031FCCB7FFF113B0F1C0BF9E03FD287278F2D0133011AD2AD2D5B2805800FA671C4C463F4959F40C6B839C6ACCF6B1A06BADA50B5F53554ED78CB';
wwv_flow_imp.g_varchar2_table(152) := 'B033077C68B221B7469A001048B27E2BB9E41F79E076DC78F982A01E9F2BEEE1C327CAF1835FFF0D6B36ED522EF9505C220212E26271EB558BF18D4F7F446D990B66DC830434FEE585B7F1E8B3AFA1B2B6D1D06D7F1FC64FF8CE9C38165FFFF45DB872D1';
wwv_flow_imp.g_varchar2_table(153) := 'ECA0662094A03FD9D228B67C6FFBBE5098F103DF490F80654C616A4528007CC06D77C5A2F0E21B9037E75A63DCF39A86C1DE2E546D7D1D955B57500084C112C0995594816374612E3E7BF74D5876D562E464A4063C836DEFECC6AE83C75530DCE6DD8742';
wwv_flow_imp.g_varchar2_table(154) := 'B64D6CA49D22022423DFD58BE7E09107EEC0C4D185880B303050D6DE2BEB1AF197E7DFC2932BD68464E67F6E57135B4ADB3EFFF165B86EC9C5C84C4F812C83047289C0D9B2E7307EFAC767B1E3C0B1408A0AFAB3140041471A16055200F86026BB3316F9';
wwv_flow_imp.g_varchar2_table(155) := '73AF43C1C5D71B230000D81C4E54EF781B2756FE193647F05DC93E34D7B05B23D10370E60029AEF2E5D72E51C181328824C4C7F93C78F4F4F5A3B6A1196FADDF8E5FFCF545D436361B660F7F0A16D7FCB8E27C3CF24F7760C99C69C8484BF639584FBC26';
wwv_flow_imp.g_varchar2_table(156) := 'ED9D5DD873F8247EFDE42B58B775AF4A84134CAF823F6D3BD39689F171F8D82D57E29E9B2EC7D8E27CE501F1B57E12AC29D1FE2BD66E86E435686A6D0FA45A863C4B01600856CB174A01E083896440CE9ABC10A32FBBC7B0F5799BDD899ADDAB7162D55F';
wwv_flow_imp.g_varchar2_table(157) := '0C8933F0A1B986DD1AC90260049ACC20278D2EC29DD75F8A2B16CE42414E865A4397D9B2C3FE8FBB3B249EAFA7AF0F92154E92FCEC38701CCFBDB10E6BB6ECB6C41AF1F93A438CCB891B2E9D8FDBAF5DA24ED313DB4A3BCF97B75F764D481B65503C5559';
wwv_flow_imp.g_varchar2_table(158) := '83D7DED98217DF5E8FEAFAA680BD25467558CF92C01865CB4BE7CD406E66BAB2A3B4D36EFFC76060F19248FBA49D32D86FDD7B047F7F7D1DDEDBB1CF67F160549BCE2D9702C02CD2D67A0F05800FF6D0EC0EA4964CC5841B1F840CD4465CF28EE6633B70';
wwv_flow_imp.g_varchar2_table(159) := 'EA9DA7D0DBD660D92F8C40DA1E0D02E04C3EE929499833750216CE9EA2F69817E7674302C1462EF12C7776F528B7F0B67D47B071E7019456D5597AE03FB37DE218B7DBED9830AA1097CC9D8639D32660D6E4B1906376CFDCA720ED3C72B252B573FD8E7D';
wwv_flow_imp.g_varchar2_table(160) := 'D87BE424E414BC70BAE4DC878BA74F544991C4A6F9391967D95296095ADA3BB1E3C05135F06FDA750015350D966F220580E54D64480529007CC02ADBF49272C762F2F24794ABDE884BF6FEB796EE43E9BBCFA2ABA13C22BD00D12600A49F88DBD8F30368';
wwv_flow_imp.g_varchar2_table(161) := 'D0CE1E18D576421D6A579F2EFF95DFC2EF52ED1B6EEB79F7EEA9B679DA6AE636C660D2F4D696CA8E266ED50CA48D140081D00BDF6729007CB49D24039AF5C00F61771A93114D4446575D994A0614A9B900A25100F8D8CD783B09984A8002C054DC967919';
wwv_flow_imp.g_varchar2_table(162) := '05808FA670C62561C6C7BE0B57A21C011B5854F007BD5A120CF57534A172EB6BA8DDB5CAB058031F9B1DD4DB2900828A93859140C004280002461896055000F86836C90530E1A6CF19960C485CA7437D3DA8DEF116CA37BE6058AC818FCD0EEAED140041';
wwv_flow_imp.g_varchar2_table(163) := 'C5C9C248206002140001230CCB0228007C349BDD15A77601644E9A6FD856400904ACDBB316C7DFFA233D00E7B18F555201FBD87D783B09589200058025CD6278A528007C442C6BFF9207207FCE75860DCE6A27C0895D38B5E66FE86B6B30E4E0211F9B1D';
wwv_flow_imp.g_varchar2_table(164) := 'D4DBE901082A4E1646020113A00008186158164001E0A3D964704E1B350DE3AFFF8C61897A64274047F57194AD7F1E6DE5078D493BEC63BB83793B05403069B22C12089C000540E00CC3B1040A001FAD26417AF15985987AE7378CDB09A0D9D0D35A87AA';
wwv_flow_imp.g_varchar2_table(165) := '2D2B50B7FF5DC3961A7C6C7AD06EA700081A4A1644024121400110148C61570805801F2673C62761D6FD3F849C0D60C8258197C078F1000020004944415480BDDDA8DEB512151B5E306CA9C190BA7B512805801790780B0998488002C044D8167A150580';
wwv_flow_imp.g_varchar2_table(166) := '1FC69040C049B77E014979E30C73CFCB3240C3C10D2A10305C9289788B9202C05B52BC8F04CC214001600E67ABBD8502C00F8BD89C3128B9E40E644F5B62D8897D2A2360D9019C5AF304BA9B6B222A253005801F9D8E8F9080810428000C846BE1A22900';
wwv_flow_imp.g_varchar2_table(167) := 'FC308E9C0320837FC9923B0C0C04B4A1BBB10A159B5E42E391AD1115074001E047A7E323246020010A0003E15AB8680A003F8C23B3F3E482099878F3C386C6010CF676A166D7AA888B03A000F0A3D3F11112309000058081702D5C3405809FC691330166';
wwv_flow_imp.g_varchar2_table(168) := '7EECBB7026484A60632ED971D07078338EBDF17B635E10A252290042049EAF2581F310A00088CEAE4101E0A7DD2521D0E465FF8CC4BCB1860602B6571EC149890368A88898844014007E763A3E46020611A0003008ACC58BA500F0D340721C70F1A2E5C8';
wwv_flow_imp.g_varchar2_table(169) := '9971997147030FE703A8DCFC2AEA0FBC1731710014007E763A3E46020611A0003008ACC58BA500F0D3401207903E6E36C65E759F717100D0E01EEA47FDBEF77062D55F0D131A7E22F0FB310A00BFD1F14112308400058021582D5F280580DF26D2E04A4A';
wwv_flow_imp.g_varchar2_table(170) := 'C3CC8F7F0F7242A0519766B3A1ADFC108EBFFD27F4B53546C43200058051BD85E592807F042800FCE316EE4F51000460415906987AC7D790903DCAB83800CD86EEE66A946F78014DC7B6430203C3FDA20008770BB2FE9146800220D22CEA5D7B2800BCE3';
wwv_flow_imp.g_varchar2_table(171) := 'F48177D9EC0E4F42A0E94B0DCB0780E1B4C0B5FBDE41E9BA670C4B3C1400069F1FA500F019191F200143095000188AD7B285530004601A71CFA78D9E89B1D73C60E832808880D6D2FD38F6E6A318ECE90CA0C6D6789402C01A76602D48608400054074F6';
wwv_flow_imp.g_varchar2_table(172) := '050A8080ECAEC195908CE9F77C1BAEC4B4804AFAB087C5EDDFD3528BF2F5CFA3F1D8B6B05F06A00030ACABB06012F08B0005805FD8C2FE210A80004D28BB0126DDFC79A4144F36F0D43E0DEE813E341CDA88E32BFF0C49451CCE170540385B8F758F4402';
wwv_flow_imp.g_varchar2_table(173) := '14009168D50BB78902E0C28C3EF40E110079B3AF46E1BC1B21A7041A758917A0BDFA98CA0AD8D7DE084033EA5586974B01603862BE80047C224001E013AE88B999022050536A1A12734663F2AD5F84233E09D0F5404BFCC0E7354D435F7B332AB6BC8ABA';
wwv_flow_imp.g_varchar2_table(174) := '7DEF84F532000580215D84859280DF042800FC4617D60F520004C17C2A2DF0F247941090C040A32EF7D0209A8FEFC4F1B7FE08DD3D64D46B0C2F9702C070C47C0109F8448002C0275C1173330540104C29EEF982F937217FF6D5C62E03D83C47048B00E8';
wwv_flow_imp.g_varchar2_table(175) := 'AC3B15B6CB00140041E8742C820482488002208830C3A8280A8060184BD390943B461D0FAC4E07346819C09313A00B75FBD6A1F4DD67C3F66C000A8060743A964102C1234001103C96E15412054090AC6573B830E5F6AF22317794B1EBF39A86AEDA521C';
wwv_flow_imp.g_varchar2_table(176) := '7AE51718E86A0B52EDCD2D8602C05CDE7C1B095C880005C0850845E6BF530004CBAE9A86C2F9B7206FD655C349818C0906142F800CFC955B5F43CDAE5590E0C070BB2800C2CD62AC6FA413A00088740B7F70FB28008266770D49F9E330E1C6CF7A920219';
wwv_flow_imp.g_varchar2_table(177) := 'B50C004077BBD15679184757FC1A43FDBD416B815905510098459AEF2101EF08500078C729D2EEA20008A245D532C0F22F23316FACE1CB00FD1D2D285DF7943A2028DC72020443007CEDC7BFC72F1E7F11F1B13161E9050962B76351FE10D075E8BADB9F';
wwv_flow_imp.g_varchar2_table(178) := '27FD7A46F28558F91A181CC2A43145D8FAFCFF05946164D943DFC5EA4DBBE07458BBBD56B6859975A3000832EDFC39D7A2E0E21BE0884B34D60B303488D6B203EA7C8070F302044300FCEEE915F8FD33AFA1BABE095D3DBDB0DB6C140241EECB915C9C33';
wwv_flow_imp.g_varchar2_table(179) := '3E1971E979A61CAE3534D087AE8672B807FA2D875466FE76BB1DF9D919583C671A7EFBFD2F0554470A8080F099FE300540909127641763FCF59F415C5A6E904B3EA7384D437F672B4EADFD9BCA0D104E57300440FFC02036ECD88F67DF58876DFB8E7884';
wwv_flow_imp.g_varchar2_table(180) := '40772F6C368D42209C3A4308EA2A71337973AE45D1825B54BC8E41D13AAA6512A1D3517302875FF9A5FABC5AE59281DFE170202F2B5DCDFC975DB518B75CB1104989F10155910220207CA63F4C01106CE4BA8EF1377C16E96367C1E6303667BF2E5E80F2';
wwv_flow_imp.g_varchar2_table(181) := '832A3D7038790182210046CC26AECB8D3B0FE0A9156BB075EF11D43536A3934220D8BD3AA2CA93ADBA536E7B04F119F990A05AC32ED9B6DBD783FA03EB716AED93862609F3B60D32F03B9D0E6467A461F298222CBF66891AF813138293C69C02C05B4B58';
wwv_flow_imp.g_varchar2_table(182) := 'E33E0A0003EC9039611E4A96DE055792B1C180233B024EAE7E1CCD27764B78A001AD097E91C11400670A812DBB0FE189575661F39E4368686E4367770F6C9A2C0D04BF0D2C313C0948A6CEBC5957A370FECDB0BB620D6D84781ABA9BAA71EA9DA7D05676';
wwv_flow_imp.g_varchar2_table(183) := 'C058B1718196B8DD3A5C4E0732D35230796C31EEBC7E296EBA7C2112E383CB8002C0D02E15F4C22900828E1470C42662D2AD5F4052DE18C303F44E7B015EFF3D8606C26347801102E07D2130886D7B8FE0B1975662E3AE03686AED504B039A2C0D18606B';
wwv_flow_imp.g_varchar2_table(184) := '16195E0464ED5FF275C4A7E7193E20CB6E9D9693BB71F4F5DF852C75B71AF85D0EA4A72461CAB812DC7DC3E5B8F1B2F94808F2C03FD20B2800C2EBF340016084BD741DF973AE43FEDCEBE04C48363418505619077ADA7162E55FD0726AAFC1EF0A0E2C23';
wwv_flow_imp.g_varchar2_table(185) := '05C069213030881D078EE1AF2FBC8DF776EC434B7BA70A16B4D11D101C23866129728C76CECCCB51B4F056C8F91D465EEAF0AE8E665449BE8E3D6B8CDD15F4010D71EB3A629C0EA4242562DAF851F8D8CD57E2BAA5171B36F0530018D99B8C2B9B02C020';
wwv_flow_imp.g_varchar2_table(186) := 'B671E9F9187FFDA721418146E60490EABF1F0B203B027A0C6A51F08A3543008CD4568205F71C3A813F3DFF26D66DDD83B68E6E74F7F632503078E60C8F92340D71A9392A5D776C5AAEF1F6D734B4571C56BB74CC0CFED37571F53B919410871913C7E013';
wwv_flow_imp.g_varchar2_table(187) := 'B75E85AB2F991B7457FFF98C4E0F40787C1C466A49016094BD741D63AEBA17999316C0EE94753663D7E7077BBBD45A63D391ADA6EE6FF6079F990260A47E7DFD03D87FB4147F7CEE0DACD9B40B1D5DDDE8E9B3DEB62C7F78F2990B13901C1D12F59F7BD1';
wwv_flow_imp.g_varchar2_table(188) := '958607E74AD0C9604F276AF7AC41F986174D0BFE93E0BE84D8585C34652CEEBFED1A5CB1701612E38313DC7761C29E3B2800BC25658DFB28008CB283AE23B9780AC65CFE51C449B4B181990195174077A3BBA102075FFC5FF5E563E52B1402C0C34847DF';
wwv_flow_imp.g_varchar2_table(189) := 'C0200E1D2F83E411902D84BC229F80B8E3E3D2F23079F997E14A48357CED5F4E0795AD7F27D73C8EAEBA32C3DF27161C1C1AC2E2D9D3F0F98FDD8AA5F366A8197F28D284530084D7E78902C0487BC996C0EB3F838CF173A0D91D46BE49952D09476A76BC';
wwv_flow_imp.g_varchar2_table(190) := '85AAED6FC03D3860F8FBFC7D41A804C099F53D70AC144B3EFA657F9BC0E7C28880233601A32EBD1B99132E36E173A8C13DD88F86831B7062D563A6CDFE7BFBFAF13FDF7C100FDE7373482D43011052FC3EBF9C02C06764DE3F2033CEECC90B51B4701962';
wwv_flow_imp.g_varchar2_table(191) := '52B30CF7028897A1AFBD094756FC1ADD8D95965D0AB082003872AA020BEFFAA2F7C6E49D6149408477DAE8991877ED03C34B71C6364366FF9D75A750BAEE19755E87FC6EC625CB593FFFD643F8CC476E34E375E77D07054048F1FBFC720A009F91F9F680';
wwv_flow_imp.g_varchar2_table(192) := '441B8B17206DF40C535C81EEA14195195072035835209002C0B73EC4BBFD2720497F26DEF4B0F1C774AB2A6A700F0DA0E1C07A9C58FD986983BFBC9902C0FF3E12CD4F5200186D7D5D47D694452A00293635C79459F9605F374EAD7E1C4D2776A91D0256';
wwv_flow_imp.g_varchar2_table(193) := 'BB2800AC6691C8AC8F24FAC99D79854AFA6374564E35FC6B36743755A162D34B683CB2CD34F73F054064F65F335A4501600265D90530FEBA4F216DCC4C53BC009E80C04A755C706F4793F14B0F3E32A400F011186FF7998064FC4BC81E8589377D0EAEC4';
wwv_flow_imp.g_varchar2_table(194) := '54C31372A90AEA40E391CD6AED5FE200CCBCE801309376E4BC8B02C0045BCA809C3D65310A17DCA2F6229B710CA90401D6EE5E8DCAAD2B2C774E000580099D2ECA5FE14A48C1D8AB1F404AC914535CF1EFCFFE5F46E391ADA6CEFEE90188F2CE1E40F329';
wwv_flow_imp.g_varchar2_table(195) := '000280E7CBA376571CC65DF34F481F37CB97C702BA5772031C7BF30F68AB3864A9A5000A8080CCCA872F40403E6BB9332E5382DB0CD7FF48751A0E6DC2A9354F0CA7E43637F1343D00FC58F8438002C01F6A7E3CE3F1025C82C205379BE605905D019DF5';
wwv_flow_imp.g_varchar2_table(196) := '6538F6FAEFD0DBDE6899A5001100BB5EFE2DD29213FD2019F823B23FFAF089722CBA3BB0B3CF03AF094B083601998927E68EC6841B1EF41CC665C2A5D9EC6ADF7FF98617D05AB6DF148FC3B9CD1201F0B36F3D84CF7EE44695EF2214977CAE963DF41DAC';
wwv_flow_imp.g_varchar2_table(197) := 'DEB41B4E873D1455E03B7D244001E02330FF6FD7E18849C0D8ABEE43FAF8B98667061CA9A70401361CD98AB2779F817804AC70D96C1A4615E4C26633678BD4B96D96B959DFC000CAABEBAD808375081601C97F9F9C8171D77E12C905134C89B791C87FDD';
wwv_flow_imp.g_varchar2_table(198) := '3D88DADD6B50FAEEB3A67DAECF45A6B61C67A4223539D1E89C63E7B5961CB35159DB88EE1EA6DA0E569736BA1C0A00A3099F51BE7801D2C7CC42F1E2DBD41901725A9819976C07947DC9B236697670D2F9DA27A79485F4D2C08381426A8020BF5CD7E188';
wwv_flow_imp.g_varchar2_table(199) := '4B44DEACAB5030F77A1312FE78EAAF66FFD5C7DF9FFDDB4237F3151110A2C9FF69638AB8E7153E0428004CB6957C618CBEFC63C89E7689A9AEC29E965A1C7BE351952ED88C204493B1F275514E40D6FA25D7C6982BEF8564FE33E5929CFFBD5DA8D9F936';
wwv_flow_imp.g_varchar2_table(200) := 'AAB6BD6E9AA037A56D7C495410A00030D9CCBA7B48B9274B96DEA5FE2BBF9B72E93A5A4AF7E3C4AABF60A0B3D524F7A8292DE34B480009D925187FDDA7119791675AAC8B64196C39B90765EFFD1D5DF5E5A647FED3EC241028010A804009FAF3BCA6A178';
wwv_flow_imp.g_varchar2_table(201) := 'E1327532993D26CEB42F2CC95256B7672D2AB7BE8EC19E0E8A007F6CC7672C4540BC59B1C9591875E947903E6EB669759360C3BE8E26546D7D1DB5FBDE31ED336C5A03F9A2A8204001100233CB97565C7A1E465F768F8A099081D9AC4B5C963263693CBA';
wwv_flow_imp.g_varchar2_table(202) := '0DEEFE5E8A00B3C0F33D4127209F2339DD2F7FF635E61CF37B460B24E2BDFEE04675DC6F5F47A3A9CB794107C902A396000540884C2F013B39D32E41E1BC9B119B9A6DDEBABCA6A1B7B5012757FD05ED5547B96E1922FBF3B50112D075D863E291A50EDB';
wwv_flow_imp.g_varchar2_table(203) := 'BA5505009A1501275906BB1B25E5EFCB683ABA8D223A4053F2F1D011A00008117B1100AEF864142F5E8EECA99798FA25225F601D55C77162D55FD5A98190FD3BBC48208C0848306D6AC914942CBD1BF1E979E6096839F067B01FD53BDF42F5F63731D4D7';
wwv_flow_imp.g_varchar2_table(204) := 'C3CF4F18F51B56F56C021400A1EC11BA1BC985939408482E9A646EB63E4D53B3978A8D2F427608C87E665E24100E04C4F59F9C370EA32FFF281272469BBAF7DE6677A2F9E41E946F780E9D35274DDB6E180E76611DC38F000540486DA6AB7DC479B3AF45';
wwv_flow_imp.g_varchar2_table(205) := 'C1C537C0111B6F9A1B539A2D4707D71F588FAA2D2B544093D4851709589A80AE233EAB08458B962163EC6C1367FE9ED3FE7ADB1B50B9F91548DA5FB3F27858DA1EAC5C5813A00008B1F9E44B242E2D07C58B6E43E6E485E66D0B94760FEF63AEDBF30E6A';
wwv_flow_imp.g_varchar2_table(206) := '76AF447F671BB73285B83FF0F5E72720592DE332F251B4E056644C986BBE60D575D4EC5EADF6FCF777B532F08F9D35EC09500058C084920B206DF44CB5142079CC4DCB0D307C86797F771B6A77AD46DDBE77D0DFDDCE2F360BF40956E16C02F2999034BF';
wwv_flow_imp.g_varchar2_table(207) := 'F973AE43CEF44B6173BA4CF596D964CF7FE97E95F1AFA3E6383F23ECA011418002C00A66D475F585967BD155289C77A3A9B9019423C0267B9A9B51B1E915341EDEAC4E331377272F12B00201CFE09FA9D2FC4AC0AC332EC974D7BF2C91C996BFC6235B54';
wwv_flow_imp.g_varchar2_table(208) := 'EE7FC6CC58A167B00E8112A000089460909E972FB9B8B43CB5B6295B9BCCF4027844801D5D0D15A8DEFE069A8EEF849C1F40111024E3B218BF097806FF2CE4CDBAD233F8C72799BFF62EAEFF5DAB50B5FD4DF477B5F073E1B735F9A0D508500058C82212';
wwv_flow_imp.g_varchar2_table(209) := '0F905A3215C597DC8EA4FC71E6EE0A10116077A894A6140116EA14515C1519FC5D0929C89D79854AF4138AC15F5CFFAD650750B6FE79BAFEA3B82F466AD32900AC64595D87E670227BCA22142DBC4D7DF9997D708F7CE175520458A95744655D4606FFEC';
wwv_flow_imp.g_varchar2_table(210) := 'A94B903BF372C4A46499EF1593A8FFB606946F781E4DC776D0F51F953D31B21B4D016031FB8A172026291DF973AE45EE455740B3394CDDE72C3828022CD629A2AC3A236E7FC994296EFF500CFE825CEA51B965056AF7ACC1404F075DFF51D60FA3A1B914';
wwv_flow_imp.g_varchar2_table(211) := '0016B4B26C774ACC1D8392257720B5649AE95E807F14013B30D4D7CB2D8216EC2B9156A57F08F88B4F367DE6AF6262341B9A8EEF40D9FAE7D0D3546DFE96C348332CDB634902140096348B27282F6D8C676B607C464148BE043D9E8032D4EE598BE6633B';
wwv_flow_imp.g_varchar2_table(212) := '3C7B9F992CC8A23D26FCABF58F837F0802FE8603623BEB4EA1F49D67D05E7524FCC1B20524701E02140016ED1A7256806406CC9E220706DD08477C92A9FB9E47B0C8802F5BA0245950DDFE77D1DFD9421160D13E13D6D5D275E5EACFBBE84A644D591492';
wwv_flow_imp.g_varchar2_table(213) := '803FC54FD3D0DFD1ACF6FBCBBABF7BA08FB9FEC3BA63B1F21F468002C0C2FDC3130F90A6929F4814B4ECD70FC525EFEDEF6A43FDBEF750BB77ADFA82E40142A1B04424BE538788DD84AC62E4CDBA1A19E3E7C011131F92652FD9DBEF1EEC43D5D6D750BB';
wwv_flow_imp.g_varchar2_table(214) := 'F71DAEFB476277639BCE22400160F10E216ED1F8CC428C5AFA11A48D9E11A22F46CF9AE8406F279A8E6C55E950BB9BAA181465F1BE63F9EAC9AE17BB03095945289877A3EADFF2BB59C7FA9ECB4776DC341DD9A6A2FE7BDB1A4326B82D6F375630620850';
wwv_flow_imp.g_varchar2_table(215) := '00848329751D49F96331E68A4FA8835042766932431A40CB895DA8DAF6863A4A58252CE271C2213349B8BE5866FD76570C520A2622FFE21B909C3F4E025F4CDFF1729A9FAEA3BDFA184EADF91BBA9B2A99E92F5C3B16EBED13010A009F7085EE66CFF9E7';
wwv_flow_imp.g_varchar2_table(216) := '5331EAB27B10979A13324F806799D486F6AAA3A8DCF22ADAAB8F336B60E8BA4558BE5966DACEB864A48F99A9B6BBC66516846CD63F0270A0AB0DC7DFFA23DA2A0F9B9F69302CADC84A4702010A8070B1A2CC9862E3913579118A16DC0C475C6882024770';
wwv_flow_imp.g_varchar2_table(217) := '8920E969AE51E951C52320070A317570B874A6D0D6D3959806D9E39F33E372B812532D31E04A1AECB2F7FE8EF6CA239E0C9CF46A85B693F0EDA610A000300573905EA2EB2A3A5A02022560CAEE8A0D52C1FE15A3E2027A3A507F60036A76AF523B04A0BB';
wwv_flow_imp.g_varchar2_table(218) := 'E93EF50F67643F35BCDE1F9F9E87BC39D7217DDC2C4FFFD5756BB45BD3D059735245FF8B778B22C01A66612D8C254001602CDFA0972E6BA73189A9285C708BDA2E65B33B83FE0E9F0A1C8E0B682B3FA8B2A64970A0BBBF9733289F2046F8CDCA7B9580A4';
wwv_flow_imp.g_varchar2_table(219) := 'BC31285A702B12724AACE92D3A5704F0D4BF08EF986C1E054038F6011101C919187DF9C7903A6A9A65F6E5F734D7A27AE7DB6839B91B03DDEDE14896750E3A010DAEC414644E5AA0D6FB9DF1C9D699F57F505B4744C0C6173CCB0112E40A2DE854582009';
wwv_flow_imp.g_varchar2_table(220) := '588100058015ACE0571D34C4A7E762D4E51F4372FE786876BB5FA504F7214D05044A0AD5EA6D6FA0B7BDD1F4130D83DB1E961608019BC385D8D46C142FBA0D29C553607384D85BE56D634E8B8017D1AE82022902BC45C7FBC28B00054078D9EBECDA6A1A';
wwv_flow_imp.g_varchar2_table(221) := 'E2D27231E68A8F23B9608265DCEEF285D9555F81CAADAFA2A3EA1806FB7BAC3DEB0BE73E60C5BA6B1A9C7149CA3B5534FF16E5AD0ABBA0BA334540C5E190EEBAB1A28959A7C820400110EE76D4C413908F89377F1EB1299996FAA21DECED42FD81F5A8DB';
wwv_flow_imp.g_varchar2_table(222) := 'B74E05084A0E015E914DC0E68C416C72060AE7DFA212FBD89CAEF06DF0B008A8D8F812DA2A0EAA8C85BC482092085000448035257B9A2C038CBDEA5EC4245B4B0448347577730DAAB7BF89D6B2FD18EAEBE16C2A02FADCB94D9074D18ED844648C9F8B82';
wwv_flow_imp.g_varchar2_table(223) := 'B9D7C199901A1999F44644C0A697D05A7E909EAC08ECBBD1DC240A8008B1BE9CDC97943F0E63AFBADF7A2E575DC7D0401F5A4EED43F58E37D1DB52AB7EE7150104340D76678C3AB1B268C12D482A183FBCD61F4981731A3A6B4FA262D3CB4AC4F2228148';
wwv_flow_imp.g_varchar2_table(224) := '2140011029960460691120495EDD4318E86C43FDC10DA8DDB306837DDD2139E638824C1ED2A648505F4C5206B2A72E46CEF4CB6073C558737B5F902875D69E42C5E697D15A4A111024A42C26C4042800426C8060BFDEEA224012BFB88706D0DB52AFBC01';
wwv_flow_imp.g_varchar2_table(225) := '2DA7F66268A0D712D9E0826D8B482D6FC4DD9F39713EF2675F03477C62E8F35198045B4440E5E657D052BA97DB034D62CED718478002C038B6212BF97D11701F5C4919965C8B957CF072D67A47F509D4EE7B47EDB976F7F7313E2064BDE6C22F96CC8F92';
wwv_flow_imp.g_varchar2_table(226) := 'BD2FA5642AF2665F83F88C7CD81D2E4B059E5EB81581DFA144C09657D172724FD4B53D707A2CC14A042800AC648D20D64572F5CB1E6C39415032B0A963562D78C9B280C403C81A6BDDDE7568AB38AC3C029649116B4166A65749D3E070C5A9813F67FA52';
wwv_flow_imp.g_varchar2_table(227) := '24668F8244FB8B27203A2F1D9DB5A54A04349FDC1DD1CB1ED169DFE86935054004DB5A666CB1A9591873E5BD48CA1B6B591120265042A0BF179D75A750B7EF3D486A61F91DE0D6ABD075510D8ED838A4964C43F6B42548C82E51017F222EA3FED27574D6';
wwv_flow_imp.g_varchar2_table(228) := '95A272EB0A341FDF15C56228EA7B425803A000086BF35DB8F29AA621363507254BEE0C8B6C6CB26D500981FA52D4EF5F8FD6F2036AEB202F730948CADEF431172163C2C548C82E56AE7F0EFCE7D8605804546D7D4D65BF241F73FB28DF1638010A80C019';
wwv_flow_imp.g_varchar2_table(229) := '5ABF044D832B3E451D209439715EC84F11BC30300DFAD080CA2028470ECB0CABF1E8560C74B672CDF5C2F0FCBE435CFA31C9596A2F7FC684B988494A83DD1507CD26CB47F4C47C20588A00BFFB1B1F0C3D010A80D0DBC0A41AC851C229C89D793972675E';
wwv_flow_imp.g_varchar2_table(230) := '01475CA2F5D7D9351102B234D08D81AE76B507BBF1E836743754C23DD84F31108C9EA3EB2A5B5F62EE58644D9A8FA4FCF1702624AB357FC81A3FB3DF5D90B26408ECAA2B45D5B6D7D1746C3B3D011724C61BAC428002C02A9630A31EBAAE06FE8C89F350';
wwv_flow_imp.g_varchar2_table(231) := '30FB5AC448EAE070B8344D4D404508487AE1CEFA72B4951F42EBA9BDE86DABF70461C93DBCBC23A0EB6A908A4DCB45DAA8692AB82F2E3D0FCED804D89CB19EC3EFC261E0D77575EA647F77BB5AA6085D9D35E8FA10BAEACA2802BCEB81BCCB220428002C';
wwv_flow_imp.g_varchar2_table(232) := '6208D3AA2167B3C7C421296F1C462DBD1371198561E4DED520310D4383FD18EAED427F771BBAEB2BD052B65FED1E18E86AA518F8603FB5676C740FA9413FA57022528A26233EABC833DB8F495049A4646B66785C9E01B7A3FA38AAB6AC508B1372E26062';
wwv_flow_imp.g_varchar2_table(233) := 'DE18EB8880A3DB2C1D741B1E76662D8D2640016034612B962F3340BB03099985285ABC1C2945933C5F56E130EB1BE1393CE3975C0203DD1DE8EB6846577D193A6A4EA82D853D2D752A325B93E96C347A07741DEAFFDC6E75585472E10424174C547BF7D5';
wwv_flow_imp.g_varchar2_table(234) := 'A01F9BF8FE413D616677B1B9C48588CBBDA7A54625E491D3308B172FB7900878034D47B7520458F1FB8F753A4D800220AA3B83AE7608481A5749E7EA8C4F0AC38C7C1EAF80CC5E65F7C0604F27067ADAD1DD588D8EDA136AAB96C40CE8EE412504225610';
wwv_flow_imp.g_varchar2_table(235) := '0C0FF822E21C31F188CBC8575E9EC49C12656357420A1CF1492A718F0AE70BA7417FF8332ACB167DED8DA8DBFB0E1A0E6D425F4793271BDFB0A0A50888EA2F3336DE0F0214007E408BA4476486E84A4C55DBBDF2665E81B8F4DCF03DF6746480075472A1';
wwv_flow_imp.g_varchar2_table(236) := '819E0E2508E428E2EEA66A743756283120B3467534B17806C251149C31D8CBE06773B810979187F8CC22246415A983799C09294AD039E39286D3F4EAE16B5719E6359BDA1A5AB373A54A1F2D5E9FB312118D8880C209285E444F40247D47B12DC611A000';
wwv_flow_imp.g_varchar2_table(237) := '308E6DD8942CB36759074E299C80DC8BAE4472E1C4E135E170DEFA259E0119396CCA3B30D8DB8DC11141D0DDA69608FADA1AD0DBD6A802097B9BC595AC461ACFAC52FD7F88970FCE1CE84766ED9AA602F66253B2119B92A566FA31C9E96AA077C4C9809F';
wwv_flow_imp.g_varchar2_table(238) := '087B4CFCB057440FCB99FE991F1C19F8E5EC0819F46B76AE5289A22453A40AFCFC87CB13DC985C3829F43101E295723330306CBE04A3B4A21400516AF87FFCEEF4C405C4A5E5226BCA22F5E34A488D9CD3FACE9CE9EBBA3A89507E864418F475A968F2DE';
wwv_flow_imp.g_varchar2_table(239) := 'F6264F54797BA3FAF390CA4350EB61A09E1F1108A70311DEFF7B1FFB91ACCF0FFBE2DF7F520DF81EF7BC04E549C09EC315AB766BC424674292F3C42467C019276BF8F1CAD5AFDCFA12B93FFC9CA7DC70166EEFE3100622D4EA0FAC5779207A5BEA3C6DFB';
wwv_flow_imp.g_varchar2_table(240) := 'D0980E0B89007077808F1F0BDE6E32010A0093815BFD7592894F06999492696A494022AB557478840C2AA7F99F16046A54577FAD04417F2F86FABA94C740669EE26A86EE466F6B3DDC4383C39E8476152B21F7CB3283FCBD2F9B10657896C14D0674D96F';
wwv_flow_imp.g_varchar2_table(241) := '2FB35671D7CBCC5D8ED895993DE4EF94FBDE01476C82FA91FCFB32E80F8FF64A40C81EF4484BD223B37B115DED554751B76F1D5ACB0E2861E67DA63D1D9A66573B1D8A162D4362EE981032A208B0FA775E34D78F02209AAD7F9EB6CB802FEBCA49B96390';
wwv_flow_imp.g_varchar2_table(242) := '3D6D29D2C75EA4062035138EE4EBAC59BE6748970043B94408C8D633F740BF1209EA34C3C101E5251031E0AB0290C14CD2EBCA802F6BD976671C6C4EF9B367E0F74CE84766F267ACDF479A103BA73F8917AAAFB54125D491A44FB2B34384D807BBFC3FBC';
wwv_flow_imp.g_varchar2_table(243) := '338AED528AA7A068A18880D121ECB914012184CF577F08010A00768F0F2620EE685D475C5A0ED2C65C84ACC90BD59768447A03BCE903C342C0131730F2C0F01F7C99FE8F3C7ADA4B3FFC07B52230F2E7C870E17B83F534C9E159BF6CE3AC3FB8411DB5DB';
wwv_flow_imp.g_varchar2_table(244) := 'AFF23A0CC764F852D899F76A1A528BA7A268E1ADD61101EAEC809D3C40C85F9BF2B9A011A000081ACAC82C4866FD920F3E297F1CB2262F42FA98996ADD59960A7891403008A8B5FED63AB5B7BFF9D80E15ED3FD4DF17D4013275D434142DB0820870ABB4';
wwv_flow_imp.g_varchar2_table(245) := 'C1EA14C113BBFCF26C048339CB2001E5E14C9BBB2CFAA61BB4BD6F04CEF206CC44FAB8D92AF1CAFF6FEFDEBBA338EE348EFF5A42808510BA38464433D24806D9C6068C6D49E0BC025FC04E5EDEBE81DDCD26989BE37F936C0C0262038B030683D00D5BD8';
wwv_flow_imp.g_varchar2_table(246) := 'A09B474802697A4F55CF882136686654DD55D5F39D7374729CF454577FAA9C7EA6BB2EEAD1B57EFCCD07811A0474FF595B93F9A99BF2E0C679991DBB16FDEA8F69F6457BEE80DE10ABA52BB73EEEA3866A6FFE2BA5AD842F9C9599D12BEBAF99365F3025';
wwv_flow_imp.g_varchar2_table(247) := '20509D0001A03AAFBA3E5A3D0D50EFAC77EE79553A0786F43AF26A1A9A1A0497BA418275DDD2315F7C71AC855A9B413DEA57EFFB177F521FC881000016D9494441549A880653FEEAF43E53F509A5BDEF9064868F49CBEE9CDD1522D743C0196D5097AB55';
wwv_flow_imp.g_varchar2_table(248) := '9A6A56CAA959800050335DBD7E311A1BA0B6176EEB7D532F20D49A7D4D2F2DCB6B817AED13155EB7BAF13734EA8599E6C7AFEB47E07363D7F4064F7A29EA243E6128EDFD8E858091D3FAE9071F0492162000242D9E92F3451BC704D2DCB147EF1FBFAB77';
wwv_flow_imp.g_varchar2_table(249) := 'BFB4FE769FFE3FF2D4CF1648491B267719EAC6DFA0674CA80D7C66EF5E93993B5FEB45987EB9B642FCB5527DB7E3D5C39219FAD8FE930011C94FDF95C991D33A0CF141204901024092DA293C971A03103436EA11D62F0F0CE9B1016AFD79150EFCD95D2E';
wwv_flow_imp.g_varchar2_table(250) := '850DE3C8259556F25BFC7142E626AEEB417E8B3F4DEA2995F13EEE7F3180EAB79D7BDF91EEA18F64C7EE5CB12EF68643E91070FE945EF3206DEB3A38D215A9C6AF081000E8164604A2F1015BF56B0115045420502BD99536EA3172120AF146402FE61316';
wwv_flow_imp.g_varchar2_table(251) := '6469E607991BBF2EB3A3576461EA6634A7BFA1D189EB507DB673EFBBC510D0AB170FB279F38D42C0491D941853E34417497D250800A96FE2242F301A1FD0B4BD45DAFB0E485BEEA07EC4BABD7DB7FE85C5138124DBC2CEB9A255FC0A7AC32535DD6DE6EE';
wwv_flow_imp.g_varchar2_table(252) := '553DBDAFB0FAD8991B7FB98C0E01FBDE93EEC10F65C76E7742C0FCC40DFD94A4BA15A6ECB43967F5578000E06FDBB95BF3E2B441B57A607BFF41E9E87B5B76BCD2531604D2B77CADBB8D9144CDD43BFE404FE95B9A9DD6ABF7CDDCB9120DF05B59323A9F';
wwv_flow_imp.g_varchar2_table(253) := '3F8EAB712B0404929F1E95C9739FC9FCE4B78480381A9C32D70508007486F804D68340B39E7EA5065EA9ED6AD55E03EA75419A36AE890FD1E1928BFB29A8AD97D5A37EF5A746F6AB9DFBD472C92A14F8F20BD6A910100492FF615426CE7D260B53DF1607';
wwv_flow_imp.g_varchar2_table(254) := 'D5D6B2DCA4C37D87AA3921400070A219D25E89E8D580DAF8460501B53EBB7ADCBABDED15FDDF1104FC6A7F3DAE4344D65696F42649EA17EB839B97F47FAEADAE581DDCB71949358D55AD6FD13DF841F43A408D55B0B5F7C23321E06634C5F685BB206EE6';
wwv_flow_imp.g_varchar2_table(255) := 'CAF96EBD0A1000EAB5E52D5DB79E351004D29A7D433AF61E969D5D7DB2756787DE7A381A27C0EB014B4DB3C16983F5019D8FF373B2F2F34351EBF6ABF7FB6A705FB4785F839B55AFA256BF0801360706AE878013B230758B1050453B726865020480CA9C';
wwv_flow_imp.g_varchar2_table(256) := '38CAB4807A3D20A1347776EB9903EAF580DEEBBE799734346D8DCE66EBD797E96BF5B9BCE2AFCEC2E315BD80CFF2FC4F327BF7AA1ED9BF34F37D74D34FD92F532743C09727F4F6C83C09F0F95F26F7EA4E0070AF4DEAAB46C520A0B6C055FBB7B7F71DD4';
wwv_flow_imp.g_varchar2_table(257) := '03069B9A5BF5B6B8EA312CAF0812EE12C51B7AB8BA2A4F96F3F264714EF2F7C7F592BDEB53F936BB4B5FC29754EDE9A21030E8C6EC80D293004240B5CDC8F11B3DD7633320FA883302C541836A21A1D6CC6B7A1B62F55460CBB66669DCD62C0D6AF3189E';
wwv_flow_imp.g_varchar2_table(258) := '0CC4D35CC5017D85C2AAAC2D3FD237FEE59969991DFF46E6C6BF91E5D91FA34D6B52F66BFF45984E0E0C2C858082DA8D938181F1FCCB503FA5F204A07EDADAAF2B0D43BDF1D08E5772D29A7D5DDA7AF6EB30D0B875BB346E7BA938404BA701BFAECBA9DA';
wwv_flow_imp.g_varchar2_table(259) := 'AA1BBAE8C7CA6AD4BEFA5B9EFF51D41CF4F9C91BA256EFABF747CE4E868073C531018400A7FE6DF2B13204001F5BAD0EEBACF68C6FFE4D8FECEA794387013583404D256C6CDA166D24A37E99326660E39EA19D0A52585D15357D4F2DD0B33C7B5FAF3EA7';
wwv_flow_imp.g_varchar2_table(260) := '6EFC8F1E4C4AC88DE519C76743805A36D8E22F6FA6086EDCC739A262010240C5541CE88A800E032F676567F73ED9D53DA0B724564F065420507F6A6F02C240596BA9697B6BABFA665F587D224F1E2DC8A307F7F4A032F5B732FF53B4A5339FE70A942F1B';
wwv_flow_imp.g_varchar2_table(261) := '6C7D2BE1F210C06241F4DA4D0810003681C7572D0B147F89A9A58777EEE9979DDD03B2B3AB5FB6A9A7030D8D126C691215165C597B3E492D754357377D7DE32FACEA5FF96A00DFC2BDEF64F1C1A4DE82577F786A5271B3A829AC6AEAAA13BB081643C0D3';
wwv_flow_imp.g_varchar2_table(262) := '1503D5EE9C7C10A84E8000509D1747BB2AA006B1E9C7DBA26710B4A840D0D51F2D38B4EB37FA09810A02E57FAE5E4A75F50AF5DAFBEA176AE96F6D6559DFE4D5AF7CB52CAF9AAFBFBA9CD736CCA8A84EF7DF8FD65B09F71F96CCB0035B099742001B086D';
wwv_flow_imp.g_varchar2_table(263) := 'AE51EBF8DB04803A6EFC345FFAFAFCF42090C6A6EDD2DCF95B79A9638FFE6B7EB95B9A5FCEE839ECFA4FADF8D6A00244F4CF2E8E74D71B29A9591205F59FEA865FD09B2BA9D5F8D4FAFB6A19DE477A39DEEF65E9E1F7FAFD7EE9173E9B3099EDE96AB1AA';
wwv_flow_imp.g_varchar2_table(264) := '8EFE4392193EA677BDB4FB29EE1DA042C0F87506C5DA6D0CEFCE4E00F0AEC9A8702D02A51B7B692A5BD0D824DB5ADAF5CC8296577AA3D5085BDAE5A58E2E69DCAA6619A855EDA2696FA515EE9E990657F6DFD7529FD2774A37F6A737EB682544BD226271';
wwv_flow_imp.g_varchar2_table(265) := '5544B5C98E5E7D2F3FA36FF66BCB8B92FF715C561666F4E23C6AD0DEFAF17A2A258F8337D326157D370CF59A159923C71D080122D156C2A7F4944D3E08542A4000A8548AE3D227507C6D108583E897BFBAC9AB7F565B18ABF5079A76B4CBB69DD132C56A';
wwv_flow_imp.g_varchar2_table(266) := '6C41D3F61DFA58B548D1D69DEDD2D0D854E3AFAE400FCA7BFCF3AC3C59FE59DFEC9F2CE5F5803CF5287F253FA76FEE6B2B8F6469EEBE48215A3951FDFAD74F02D45380F59090BEA6F1E58ADA720724EB52081839AD7761E48340250204804A9438A6EE04';
wwv_flow_imp.g_varchar2_table(267) := 'CA5F2194A67D3DF37AC0C81300F548BF6CEF83B25FEFFCA2F7A7CBB5F5BE25D9A39F38F324606AE48C5EAED9C55759FEB46A7DD49400501FEDCC552280406C0281B4F5EE97ECD14FA5A5ABBFC62742E62AA75E074C5D382333A357EDAE5960EE92282926';
wwv_flow_imp.g_varchar2_table(268) := '0102404CB0148B0002752410047A812A1D02F6F4DB9D5E198692BF3F265317CECACCE8E554ECD258473D29D14B250024CACDC9104020AD02EA15D1AEECEB927DFFF7EE84808B9FCBCCEDAF8B835AD32ACF75D52A4000A8558EEF21800002CF088412048D';
wwv_flow_imp.g_varchar2_table(269) := '7AEF8A1E8742C0BD8B9FCBC3DB5FD5E5825874D0170B1000E82108208080318150DF685B336E8400359874F1FE98DCBBF417BD9D733DAE8A69AC695358100120858DCA252180804D011502B6486B66407ADEFF83E5D7018184E19A2CDE1F2704D8EC128E';
wwv_flow_imp.g_varchar2_table(270) := '9E9B00E068C3502D0410F058200CF52E95ADDD03D2F33BC742C0AD4BD10E9A7CEA5E800050F75D000004108845C0D910F0853CBC759110104BA3FB552801C0AFF6A2B60820E0930021C0A7D6AABBBA1200EAAEC9B96004104854A014029C1B13C0938044';
wwv_flow_imp.g_varchar2_table(271) := 'FB818327230038D82854090104D226501A18F89AFD298241A0F79B8806061202D2D6D3AAB91E0240355A1C8B000208D42CE0D214416607D4DC8C29FA220120458DC9A5208080EB02D16241EB2B065ADD3B8010E07A6F89BB7E0480B885291F0104107846';
wwv_flow_imp.g_varchar2_table(272) := 'A018027ADE286E20D467D187106011DFFAA90900D69B800A2080405D0A946F20D4E54808D0CB06B37740BDF4470240BDB434D78900020E0AA8AD84DF94ECD14FA4C57A082844CB06AB1070E76B761174B0B798AE1201C0B428E521800002550AB4E50E48';
wwv_flow_imp.g_varchar2_table(273) := 'F6C871CB2140F436C67A2BE18B6765E60E5B0957D98CDE1D4E00F0AEC9A8300208A451A03D775032478E49CBEE9C4810D8BBC45208B870466647AFDAAD8B3D85BA383301A02E9A998B440001E705C250DAFB0F4966D8B11070F7AA88580C24CE379CBF15';
wwv_flow_imp.g_varchar2_table(274) := '2400F8DB76D41C01045226A0B6EFEDE87F5B32C31FDB7F1220A1E4A7C7646AE4B4CC8E5D4B993497A3040800F403041040C02181302C48C7ABEF4866E823D9B13B571C8C175AAB617EFAAE4C8E9C92B9B16FACD58113C723400088C79552114000819A05';
wwv_flow_imp.g_varchar2_table(275) := 'C242413AF7BE23DD3A04F4EAC583442C8780F3A7646EE25F7AA0209F74081000D2D18E5C050208A44C40ADD7DFB9EF3DE91EFCD0A1107052E627AE8B7A4AC1B800FF3B1C01C0FF36E40A104020A5026E858040F2D3A33279EEA4CC4FDE90305C230478DE';
wwv_flow_imp.g_varchar2_table(276) := 'EF08009E3720D5470081740B3815028240F23F8CCAC4B9CF6461EA5BBDAB204F02FCED7F04007FDB8E9A2380409D08846BABD2393024DD831F44AF031A1AEDBD8B2704A4A6D7110052D3945C080208A459E01721C0E6C0C0F510704216A66E89AA9BD5C5';
wwv_flow_imp.g_varchar2_table(277) := '8BD2DCF0315E1B0120465C8A460001044C0A381902BE3C210BF7080126DB39A9B208004949731E041040C0800021C0002245680102001D01010410F04C200A01836E4C112CBD0EE0498067BD8800E05D8351610410404009B8393BA03826A0B0CAEC000F';
wwv_flow_imp.g_varchar2_table(278) := 'BA294F003C6824AA88000208FC9AC0B321402D1B6C71D31E660778D7490900DE351915460001049E0AE810B0F75DBD6CB0F5AD84CB43C0E4B72C16E47847250038DE40540F010410D848A07CEF00F742805A36988F8B020400175B853A21800002550A44';
wwv_flow_imp.g_varchar2_table(279) := 'BB081E96CC90035B09179F04A86583E726AFDB5BB4A84AC37A3B9C00506F2DCEF52280406A057408E87F5B32C3C7A4A52B6777205E29049C3F2973138400173B1D01C0C556A14E08208040AD026128EDFD878A21A0AFD6528C7D2F3F7D5726D556C2E3DF';
wwv_flow_imp.g_varchar2_table(280) := '182B9382CC081000CC38520A020820E0904028EDB9839239725C5ABA1C090123A7656EEC9A4346548500401F40000104522AD0967B4BB2473E7126044C8D9C96D9BBFFC7BE018EF4370280230D4135104000813804DA7ADF92EC511502FAD5F241719CA2';
wwv_flow_imp.g_varchar2_table(281) := 'E232D5EB80A90B676476F42A21A062B5F80E2400C4674BC9082080807D812090B69EFD923DFAA9B4ECE9B73C223F94FCF4984C5D382B33A39725081AECFBD4710D080075DCF85C3A0208D487805A21705776BF64DF77200484A1E4EF8FC9D4C5B33273FB';
wwv_flow_imp.g_varchar2_table(282) := 'B2040D84005BBD9000604B9EF32280000289098412048DD29A7D5D7ADEFFBDFD2701C51070EFE2E7F2F0F6571234342626C1899E0A1000E80D082080405D0884FA46DB9A712C045CFA5C1E7E4708B0D105090036D439270208206045A014025E939EF7FF';
wwv_flow_imp.g_varchar2_table(283) := '60F94940A0F70A58BC3F2EF72EFD451E7EF74F9E0424DC2708000983733A041040C0AE800A015BA4B57B407A7E4708B0DB1676CF4E00B0EBCFD911400081E405C25082464743C0AD4BBA6E7CE2172000C46FCC1910400001F7049C0D015FC8C35B170901';
wwv_flow_imp.g_varchar2_table(284) := '09F418024002C89C020104107052A0140232038E8D09200424D15F08004928730E041040C05581F510A00606DA9E22583E3090101077972100C42D4CF908208080F3022E4D1164764052DD8500909434E7410001049C167069B1204240125D8500908432';
wwv_flow_imp.g_varchar2_table(285) := 'E740000104BC108842C0AEEC1BD1B2C156B7122604C4DD650800710B533E020820E09B40F90642CE8400560C34DD8D0800A645290F0104104883800E016F16B712EEB37845654F02F4DE015FB38190A1D620001882A418041040208D026DB903923D72DC';
wwv_flow_imp.g_varchar2_table(286) := 'FAEB00090B4F7711BCC356C226FA1A01C084226520800002291668CF1D908C0E01391109EC5D69692BE10B676576F48A4860B12EF6148C9D9900608C928210400081940A84A1B4F71F92CCF03169D99DB37BE35D0F01676476F4AADDBA78DEDC0400CF1B';
wwv_flow_imp.g_varchar2_table(287) := '90EA238000028908E810F0B664863FB61F022494FCF4984C8D9C96D9B16B895C7E1A4F42004863AB724D082080400C026158908E570F4B66A814021A44248CE14C9515999FBE2B9323A7658E105019D8BF1D4500A8898D2F21800002F52910160AD2B9F7';
wwv_flow_imp.g_varchar2_table(288) := '1DE91EFA4876ECEED5EB06580F01E74FC9DCC4BF44427B61C4C7DE4000F0B1D5A8330208206051202CAC49E7BE77A57BD0A5107052E626AE1302AAE81704802AB038140104104020128842C07BD23DF8A1434F024ECAFCD44D09D75669A60A0408001520';
wwv_flow_imp.g_varchar2_table(289) := '710802082080C02F059C0A0141200B1337E4D617FF214F1ECDDB9DAEE84967210078D25054130104107051C09510B0F678591E7EF74F19FFDFFF91D5E54517A99CAB1301C0B926A142082080805F02EA917BE7C090740F7E60E57580BEF9DFBA24135F9E';
wwv_flow_imp.g_varchar2_table(290) := '90274B3FFB8567B1B604008BF89C1A010410488B80AD1050FAE53FF18F3FC993A57C5A3813B90E024022CC9C0401041048BF40D22120BAF97F557CECCFCDBFDA1E4600A8568CE311400001049E2B108580C1D86707AC3D5ED23B038EFFFD8FBCF3AFB13F';
wwv_flow_imp.g_varchar2_table(291) := '12006A84E36B0820800002BF2E10F7C04075F39FB97D59C6FEF6DFB2BAC280BF5AFB2101A05639BE8700020820F0FC270131AD13A06FFE772ECBD85FFF4B56571ED1029B1020006C028FAF22800002083C5FA07CC54013BB084637FF2B32F6D7FFE4E66F';
wwv_flow_imp.g_varchar2_table(292) := 'A0E311000C20520402082080C00B5E07EC7D57EF1DB09910C0CDDF7C0F23009837A54404104000813201B58150C7DEF25D0483AA7CB8F957C555F1C104808AA9381001041040A05601BD9570FF61C90C7F2C2D5DB98A97EAE59D7FADE21B7F8F00B0B111';
wwv_flow_imp.g_varchar2_table(293) := '4720800002089810084369EF3F2499E163D2D2D5B761894F47FB33E06F43AC1A0E2000D480C65710400001046A145021A0EFA0648E1C7F6108D08BFCDCFE4AC6FFF647A6FAD548BDD1D708001B09F1BF2380000208181768CB1D90EC7342C0D315FE58E4';
wwv_flow_imp.g_varchar2_table(294) := 'C7387C598104803875291B01041040E0B9026DBD6F49F6E827CF3C0978BAABDF9F647599E57DE3EC3E04803875291B01041040E0F90241206D3DFB257BF45369D9D32F6B2B4BC55DFDFECCC63E09F41B024002C89C0201041040E03902C510D0FDDE07B2';
wwv_flow_imp.g_varchar2_table(295) := 'BCF04026FEA16EFE6CE99B447F210024A1CC3910400001049E2B10346E912DDB9A45AD1CB8BACCDAFE497515024052D29C0701041040E0050261C56B03C06846800060C69152104000010410F04A8000E055735159041040000104CC081000CC38520A02';
wwv_flow_imp.g_varchar2_table(296) := '08208000025E091000BC6A2E2A8B0002082080801901028019474A410001041040C02B01028057CD45651140000104103023400030E3482908208000020878254000F0AAB9A82C02082080000266040800661C2905010410400001AF0408005E35179545';
wwv_flow_imp.g_varchar2_table(297) := '0001041040C08C0001C08C23A5208000020820E0950001C0ABE6A2B2082080000208981120009871A414041040000104BC12200078D55C541601041040000133020400338E948200020820808057020400AF9A8BCA2280000208206046800060C6915210';
wwv_flow_imp.g_varchar2_table(298) := '4000010410F04A8000E055735159041040000104CC081000CC38520A0208208000025E091000BC6A2E2A8B0002082080801901028019474A410001041040C02B01028057CD45651140000104103023400030E3482908208000020878254000F0AAB9A82C';
wwv_flow_imp.g_varchar2_table(299) := '02082080000266040800661C2905010410400001AF0408005E351795450001041040C08C0001C08C23A5208000020820E0950001C0ABE6A2B2082080000208981120009871A414041040000104BC12200078D55C541601041040000133020400338E9482';
wwv_flow_imp.g_varchar2_table(300) := '00020820808057020400AF9A8BCA2280000208206046800060C69152104000010410F04A8000E055735159041040000104CC081000CC38520A0208208000025E091000BC6A2E2A8B0002082080801901028019474A410001041040C02B01028057CD4565';
wwv_flow_imp.g_varchar2_table(301) := '1140000104103023400030E3482908208000020878254000F0AAB9A82C02082080000266040800661C2905010410400001AF0408005E351795450001041040C08C0001C08C23A5208000020820E0950001C0ABE6A2B2082080000208981120009871A414';
wwv_flow_imp.g_varchar2_table(302) := '041040000104BC12200078D55C541601041040000133020400338E948200020820808057020400AF9A8BCA2280000208206046800060C69152104000010410F04A8000E055735159041040000104CC081000CC38520A0208208000025E091000BC6A2E2A';
wwv_flow_imp.g_varchar2_table(303) := '8B0002082080801901028019474A410001041040C02B01028057CD45651140000104103023400030E3482908208000020878254000F0AAB9A82C02082080000266040800661C2905010410400001AF0408005E351795450001041040C08C0001C08C23A5';
wwv_flow_imp.g_varchar2_table(304) := '208000020820E0950001C0ABE6A2B2082080000208981120009871A414041040000104BC12200078D55C541601041040000133020400338E948200020820808057020400AF9A8BCA2280000208206046800060C69152104000010410F04A8000E0557351';
wwv_flow_imp.g_varchar2_table(305) := '59041040000104CC081000CC38520A0208208000025E091000BC6A2E2A8B0002082080801901028019474A410001041040C02B01028057CD45651140000104103023400030E3482908208000020878254000F0AAB9A82C02082080000266040800661C29';
wwv_flow_imp.g_varchar2_table(306) := '05010410400001AF04FE1F8BF986EFDE86B8E60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26572257756740961)
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
 p_id=>wwv_flow_imp.id(26563785772740910)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26564053314740912)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26564322947740912)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26564669072740912)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26564935760740912)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26565289060740912)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26565546874740912)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26565878850740913)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26566114264740913)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26566452277740913)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26566764166740913)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26567070134740913)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26567358789740913)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>50290795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26567673283740913)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>50290795
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(26573588654740962)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>50290906
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/current_ai_provider
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(28047947230013078)
,p_name=>'CURRENT_AI_PROVIDER'
,p_protection_level=>'I'
,p_version_scn=>100668815
);
end;
/
prompt --application/shared_components/logic/application_items/initialized_ai_provider
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21962540412871495)
,p_name=>'INITIALIZED_AI_PROVIDER'
,p_protection_level=>'I'
,p_version_scn=>101770529
);
end;
/
prompt --application/shared_components/logic/application_items/web_credentials_entered
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(32161396166869209)
,p_name=>'WEB_CREDENTIALS_ENTERED'
,p_protection_level=>'I'
,p_version_scn=>69852646
);
end;
/
prompt --application/shared_components/logic/application_computations/initialized_ai_provider
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(21962864084887136)
,p_computation_sequence=>10
,p_computation_item=>'INITIALIZED_AI_PROVIDER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'apex_app_setting.get_value(''AI_PROVIDER_INITIALIZED'')'
,p_version_scn=>74749430
);
end;
/
prompt --application/shared_components/logic/application_computations/current_ai_provider
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(28048520263022833)
,p_computation_sequence=>10
,p_computation_item=>'CURRENT_AI_PROVIDER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'apex_app_setting.get_value(''AI_PROVIDER'')'
,p_version_scn=>54048505
);
end;
/
prompt --application/shared_components/logic/application_computations/web_credentials_entered
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(32162333758902248)
,p_computation_sequence=>10
,p_computation_item=>'WEB_CREDENTIALS_ENTERED'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'apex_app_setting.get_value(''WC_STATUS'')'
,p_version_scn=>119641972
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(21963218092899826)
,p_name=>'AI_PROVIDER_INITIALIZED'
,p_value=>'NO'
,p_is_required=>'N'
,p_valid_values=>'YES,NO'
,p_version_scn=>126100500
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(27640748174547600)
,p_name=>'AI_PROVIDER'
,p_value=>'NONE'
,p_is_required=>'N'
,p_valid_values=>'OPENAI,OCI,NONE'
,p_on_upgrade_keep_value=>true
,p_version_scn=>126100446
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(32161735794884984)
,p_name=>'WC_STATUS'
,p_value=>'VOID'
,p_is_required=>'N'
,p_valid_values=>'ENTERED,VOID'
,p_on_upgrade_keep_value=>true
,p_version_scn=>124430470
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
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(26573880665740964)
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
 p_id=>wwv_flow_imp.id(26568570669740916)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27093990055480825)
,p_parent_id=>wwv_flow_imp.id(26858156054048846)
,p_option_sequence=>5
,p_short_name=>'Reset Sample Data Tables'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14562568909227184)
,p_short_name=>'Movie Vector Search'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14670765155811488)
,p_parent_id=>wwv_flow_imp.id(14677304043005330)
,p_short_name=>'Basic Vector Search'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14672144464831674)
,p_parent_id=>wwv_flow_imp.id(14671899167827589)
,p_short_name=>'Vector Search'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14672396837835852)
,p_parent_id=>wwv_flow_imp.id(14672144464831674)
,p_short_name=>'Basic Vector Search'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14677304043005330)
,p_parent_id=>wwv_flow_imp.id(14562568909227184)
,p_short_name=>'Vector Search'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15189872847504092)
,p_parent_id=>wwv_flow_imp.id(26858156054048846)
,p_short_name=>'Set AI Provider'
,p_link=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26568793157740916)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26855551744038223)
,p_short_name=>'Movie Recommendation'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27474594849412536)
,p_parent_id=>wwv_flow_imp.id(26858156054048846)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14672594412845524)
,p_parent_id=>wwv_flow_imp.id(14672144464831674)
,p_option_sequence=>20
,p_short_name=>'Vector vs. Oracle Text Search'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14671899167827589)
,p_option_sequence=>25
,p_short_name=>'Custom Vector Search'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14671278596813646)
,p_parent_id=>wwv_flow_imp.id(14677304043005330)
,p_option_sequence=>30
,p_short_name=>'Vector vs. Oracle Text Search'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26856810898041914)
,p_option_sequence=>30
,p_short_name=>'Mixed Languages'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14672764902847722)
,p_parent_id=>wwv_flow_imp.id(14672144464831674)
,p_option_sequence=>40
,p_short_name=>'Vector and Oracle Text Search'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26858156054048846)
,p_option_sequence=>40
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14671422085815292)
,p_parent_id=>wwv_flow_imp.id(14677304043005330)
,p_option_sequence=>50
,p_short_name=>'Vector and Oracle Text Search'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
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
 p_id=>wwv_flow_imp.id(26569462704740920)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2597873239612181258
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
 p_id=>wwv_flow_imp.id(26567952363740914)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>50290795
);
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(25025794162201816)
,p_name=>'EBA_VECTOR.STATUS_UPDATE_AI_GENERATION'
,p_message_text=>'%0 out of %1 categories generated.'
,p_is_js_message=>true
,p_version_scn=>116272461
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(26568274666740914)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>50290795
);
end;
/
prompt --application/shared_components/data_loads/genai_csv_load
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'GenAI CSV Load'
,p_format=>'CSV'
,p_encoding=>'utf-8'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26863105410699182)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'TITLE'
,p_sequence=>2
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector_type=>'NAME'
,p_selector=>'TITLE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26863447474699183)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'MOVIEDESCRIPTION'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'CLOB'
,p_selector_type=>'NAME'
,p_selector=>'MOVIEDESCRIPTION'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26863759408699183)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'ACTORS'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'ACTORS'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26864075327699183)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'GENRE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'GENRE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26864397328699184)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'VOTES'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'VOTES'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26864686769699184)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'RELEASE_DATE'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD'
,p_has_time_zone=>false
,p_selector_type=>'NAME'
,p_selector=>'RELEASE_DATE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26864980639699184)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'RATING'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>true
,p_selector_type=>'NAME'
,p_selector=>'RATING'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26865293510699184)
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_name=>'EMBEDDING_VECTOR'
,p_sequence=>18
,p_column_type=>'SQL_EXPRESSION'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_transform_type=>'SQL_EXPRESSION'
,p_expression1=>'NULL'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(26865649864699185)
,p_name=>'GenAI CSV Load'
,p_static_id=>'genai_csv_load'
,p_target_type=>'TABLE'
,p_table_name=>'EBA_VECTOR_MOVIEDATA'
,p_data_profile_id=>wwv_flow_imp.id(26863078011699176)
,p_loading_method=>'MERGE'
,p_commit_interval=>200
,p_error_handling=>'IGNORE'
,p_skip_validation=>'N'
,p_version_scn=>80607727
);
end;
/
prompt --application/shared_components/data_loads/manual_csv_load
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'Manual CSV Load'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_separator=>','
,p_csv_enclosed=>'"'
,p_has_header_row=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26868892648699187)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL1'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_selector_type=>'SEQ'
,p_selector=>'1'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26869154510699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL2'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'2'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26869496603699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL3'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'3'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26869716512699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL4'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'4'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26870076946699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL5'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'5'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26870334241699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL6'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'6'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26870653003699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL7'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'7'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26870946671699188)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL8'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'8'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26871240635699189)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL9'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'9'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26871576633699189)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'COL10'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'SEQ'
,p_selector=>'10'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26871899115699189)
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_name=>'EMBEDDING_VECTOR'
,p_sequence=>21
,p_column_type=>'SQL_EXPRESSION'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>true
,p_transform_type=>'SQL_EXPRESSION'
,p_expression1=>'NULL'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(26872215558699189)
,p_name=>'Manual CSV Load'
,p_static_id=>'manual_csv_load'
,p_target_type=>'TABLE'
,p_table_name=>'EBA_VECTOR_DATATABLE'
,p_data_profile_id=>wwv_flow_imp.id(26868796610699187)
,p_loading_method=>'REPLACE'
,p_commit_interval=>200
,p_error_handling=>'IGNORE'
,p_skip_validation=>'N'
,p_version_scn=>101639109
);
end;
/
prompt --application/shared_components/navigation/search_config/oracle_text_search_and_vector_datatable
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(14705397227405739)
,p_label=>'ORACLE-TEXT-SEARCH-AND-VECTOR-DATATABLE'
,p_static_id=>'oracle_text_search_and_vector_datatable'
,p_search_type=>'TEXT_MANUAL'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_DATATABLE'
,p_oratext_index_column_name=>'COL1'
,p_return_max_results=>10
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VECTOR_DISTANCE(embedding_vector, ',
'    apex_ai.get_vector_embeddings(',
'        p_value =>             :P33_SEARCH, ',
'        p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end), DOT) ASC'))
,p_pk_column_name=>'ID'
,p_title_column_name=>'COL1'
,p_subtitle_column_name=>'COL2'
,p_description_column_name=>'COL3'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>106554704
);
end;
/
prompt --application/shared_components/navigation/search_config/oracle_text_search_moviedata
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(14707557746494741)
,p_label=>'ORACLE-TEXT-SEARCH-MOVIEDATA'
,p_static_id=>'oracle_text_search_moviedata'
,p_search_type=>'TEXT_MANUAL'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_MOVIEDATA'
,p_oratext_index_column_name=>'MOVIEDESCRIPTION'
,p_return_max_results=>10
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'ACTORS'
,p_description_column_name=>'MOVIEDESCRIPTION'
,p_badge_column_name=>'RATING'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>106509225
);
end;
/
prompt --application/shared_components/navigation/search_config/oci_movie_recommendation
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(26877849548749343)
,p_label=>'OCI-MOVIE-RECOMMENDATION'
,p_static_id=>'OCI_MOVIE_RECOMMENDATION'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_MOVIEDATA'
,p_query_where=>'SUBSTR(moviedescription, 1, 40) <> SUBSTR(:P41_SEARCH, 1, 40)'
,p_oratext_index_column_name=>'EMBEDDING_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(16013343297879238)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'DOT'
,p_return_max_results=>5
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'ACTORS'
,p_description_column_name=>'MOVIEDESCRIPTION'
,p_badge_column_name=>'RATING'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:49:P49_SEARCH_ID:&ID.'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>119703015
);
end;
/
prompt --application/shared_components/navigation/search_config/oracle_text_search_and_vector_moviedata
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(26878575693785892)
,p_label=>'ORACLE-TEXT-SEARCH-AND-VECTOR-MOVIEDATA'
,p_static_id=>'ORACLE_TEXT_SEARCH_AND_VECTOR'
,p_search_type=>'TEXT_MANUAL'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_MOVIEDATA'
,p_oratext_index_column_name=>'MOVIEDESCRIPTION'
,p_return_max_results=>10
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VECTOR_DISTANCE(embedding_vector, ',
'    apex_ai.get_vector_embeddings(',
'        p_value =>             :P17_SEARCH, ',
'        p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end), DOT) ASC'))
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'ACTORS'
,p_description_column_name=>'MOVIEDESCRIPTION'
,p_badge_column_name=>'RATING'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>106508917
);
end;
/
prompt --application/shared_components/navigation/search_config/oracle_text_search_datatable
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(26879025249810515)
,p_label=>'ORACLE-TEXT-SEARCH-DATATABLE'
,p_static_id=>'ORACLE_TEXT_SEARCH'
,p_search_type=>'TEXT_MANUAL'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_DATATABLE'
,p_oratext_index_column_name=>'COL1'
,p_return_max_results=>10
,p_pk_column_name=>'ID'
,p_title_column_name=>'COL1'
,p_subtitle_column_name=>'COL2'
,p_description_column_name=>'COL3'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-sitemap-vertical'
,p_version_scn=>106553931
);
end;
/
prompt --application/shared_components/navigation/search_config/oci_basic_vector_search_moviedata
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(26879557964827740)
,p_label=>'OCI-BASIC-VECTOR-SEARCH-MOVIEDATA'
,p_static_id=>'OCI_BASIC_VECTOR_SEARCH'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_MOVIEDATA'
,p_oratext_index_column_name=>'EMBEDDING_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(16013343297879238)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'DOT'
,p_return_max_results=>10
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'ACTORS'
,p_description_column_name=>'MOVIEDESCRIPTION'
,p_badge_column_name=>'RATING'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>106110171
);
end;
/
prompt --application/shared_components/navigation/search_config/oci_basic_vector_search_datatable
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(26881450222843584)
,p_label=>'OCI-BASIC-VECTOR-SEARCH-DATATABLE'
,p_static_id=>'OCI_ADVANCED_VECTOR_SEARCH'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_DATATABLE'
,p_oratext_index_column_name=>'EMBEDDING_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(16013343297879238)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'DOT'
,p_return_max_results=>10
,p_pk_column_name=>'ID'
,p_title_column_name=>'COL1'
,p_subtitle_column_name=>'COL2'
,p_description_column_name=>'COL3'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-sitemap-vertical'
,p_version_scn=>106554472
);
end;
/
prompt --application/shared_components/navigation/search_config/openai_movie_recommendation
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(32204106105713615)
,p_label=>'OPENAI-MOVIE-RECOMMENDATION'
,p_static_id=>'OPENAI_MOVIE_RECOMMENDATION'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_MOVIEDATA'
,p_query_where=>'SUBSTR(moviedescription, 1, 40) <> SUBSTR(:P41_SEARCH, 1, 40)'
,p_oratext_index_column_name=>'EMBEDDING_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(15639632983805312)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'DOT'
,p_return_max_results=>5
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'ACTORS'
,p_description_column_name=>'MOVIEDESCRIPTION'
,p_badge_column_name=>'RATING'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:49:P49_SEARCH_ID:&ID.'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>119702249
);
end;
/
prompt --application/shared_components/navigation/search_config/openai_basic_vector_search_datatable
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(32204777597721912)
,p_label=>'OPENAI-BASIC-VECTOR-SEARCH-DATATABLE'
,p_static_id=>'OPENAI_ADVANCED_VECTOR_SEARCH'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_DATATABLE'
,p_oratext_index_column_name=>'EMBEDDING_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(15639632983805312)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'DOT'
,p_return_max_results=>10
,p_pk_column_name=>'ID'
,p_title_column_name=>'COL1'
,p_subtitle_column_name=>'COL2'
,p_description_column_name=>'COL3'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-sitemap-vertical'
,p_version_scn=>106554312
);
end;
/
prompt --application/shared_components/navigation/search_config/openai_basic_vector_search_moviedata
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(32205139326725138)
,p_label=>'OPENAI-BASIC-VECTOR-SEARCH-MOVIEDATA'
,p_static_id=>'OPENAI_BASIC_VECTOR_SEARCH'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_VECTOR_MOVIEDATA'
,p_oratext_index_column_name=>'EMBEDDING_VECTOR'
,p_vector_provider_id =>wwv_flow_imp.id(15639632983805312)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'DOT'
,p_return_max_results=>10
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'ACTORS'
,p_description_column_name=>'MOVIEDESCRIPTION'
,p_badge_column_name=>'RATING'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-film'
,p_version_scn=>106109376
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
,p_step_title=>'Sample Vector Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26581476523740998)
,p_plug_name=>'&APP_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'<p>Demonstration of AI Vector Search in Oracle APEX</p>'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31840317192390084)
,p_plug_name=>'About this Application'
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>This application highlights the features and capabilities of AI Vector Search in Oracle APEX. Use this application to better understand the native and declarative functionality of Vector Search available in the Oracle Database 23ai.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31840915897390090)
,p_plug_name=>'App Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(32150271482617636)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_landmark_type=>'navigation'
,p_landmark_label=>'App'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(21771355516887458)
,p_branch_name=>'to Welcome Page'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'INITIALIZED_AI_PROVIDER'
,p_branch_condition_text=>'NO'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Movie Vector Search'
,p_alias=>'MOVIE-VECTOR-SEARCH'
,p_step_title=>'Movie Vector Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14562087865227180)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38095230707438679)
,p_plug_name=>'Movie Vector Search Navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14563222337261426)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_landmark_label=>'Movie'
,p_ai_enabled=>false
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Prepare Movie Data'
,p_alias=>'PREPARE-MOVIE-DATA-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Movie Data'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1024'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22282466764071002)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14190948692845326)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38097210988502918)
,p_plug_name=>'Data Generation'
,p_title=>'What kind of movie data should AI create for you?'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38097892114502925)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14568394528335985)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38097892114502925)
,p_button_name=>'GENERATE_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14570159192335999)
,p_branch_name=>'Go To Data Preview'
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14568394528335985)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34665337840655796)
,p_name=>'P11_EXE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38097210988502918)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38098379999502938)
,p_name=>'P11_PROMPT_INPUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38097210988502918)
,p_prompt=>'Prompt Input'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Hollywood Movies'
,p_quick_pick_value_01=>'Generate data on the most successful Hollywood movies.'
,p_quick_pick_label_02=>'European Movies'
,p_quick_pick_value_02=>'Generate data on the most famous European movies.'
,p_quick_pick_label_03=>'Anime and Manga'
,p_quick_pick_value_03=>'Generate data on popular Asian anime and manga.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14194594206496968)
,p_validation_name=>'P11_PROMPT_INPUT not null'
,p_validation_sequence=>10
,p_validation=>'P11_PROMPT_INPUT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(14568394528335985)
,p_associated_item=>wwv_flow_imp.id(38098379999502938)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14569310656335997)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Generate Sample Data'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'P11_EXE_ID'
,p_attribute_04=>'IGNORE'
,p_attribute_06=>'1'
,p_attribute_09=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14568394528335985)
,p_internal_uid=>11260412829604374
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14568974290335994)
,p_process_sequence=>20
,p_parent_process_id=>wwv_flow_imp.id(14569310656335997)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Ask AI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response          clob            := ''TITLE;MOVIEDESCRIPTION;ACTORS;GENRE;RELEASE_DATE;RATING'' || chr(10);',
'    l_genre_list        apex_t_varchar2 := apex_t_varchar2( ''Action'',''Comedy'',''Drama'',''Sci-Fi'',''Horror'',''Education'',''Western'', ''Crime'',''Mystery'',''Romance'' ); ',
'    l_prompt            varchar2( 32767 );',
'    l_exec              apex_background_process.t_execution;',
'    l_exec_id           number;',
'    l_current_ai_prov   varchar2( 20 )    := case when :CURRENT_AI_PROVIDER = ''OCI'' ',
'                                                 then ''EBA_GENAI_OCI''',
'                                                 else ''EBA_GENAI_OPENAI''',
'                                             end ;',
'',
'begin',
'    apex_background_process.set_progress( l_genre_list.count, 0);',
'',
'    for i in 1 .. l_genre_list.count loop',
'',
'        l_prompt := ''',
'        ### ROLE:',
'        You are a helpful assistant that provides concise and accurate responses in generating real Data on existing Movies in CSV Format. Exactly 5 lines in CSV format are needed. Return only the pure CSV content, and nothing else.',
'        The CSV content must adhere strictly to the following structure and format. You are a CSV generator that will always output the data in a schema, using the following columns:',
'        - Column 1: TITLE alphanumeric, up to 50 characters',
'        - Column 2: MOVIEDESCRIPTION alphanumeric, up to 2000 characters',
'        - Column 3: ACTORS Varchar2 space-separated list, up to 100 characters',
'        - Column 4: GENRE Varchar2 space-separated list, up to 25 characters - only generate Movies from the GENRE: '' || l_genre_list( i ) || ''!',
'        - Column 5: RELEASE_DATE Date, values between 1980-01-01 and 2024-12-31',
'        - Column 6: RATING Number(2,1), values between 1.0 and 5.0',
'',
'        ### EXAMPLE:',
'        "Movie-Title Placeholder";Description of the first Movie; Lisa Example, Robert Placeholder;'' || l_genre_list( i ) || '';1999-03-31;4.9',
'        "Movie-Title Placeholder";Description of the second Movie; Lisa Example, Robert Placeholder;'' || l_genre_list( i ) || '';1999-03-31;2.7',
'        ...',
'        "Movie-Title Placeholder";Description of the eight Movie; Lisa Example, Robert Placeholder;'' || l_genre_list( i ) || '';1999-03-31;3.0',
'        "Movie-Title Placeholder";Description of the ninth Movie; Lisa Example, Robert Placeholder;'' || l_genre_list( i ) || '';1999-03-31;3.9',
'',
'        ### GUARDRAILS:',
'        1.	Do not generate any information that deviates from the Rules provided.',
'        2.	If a user asks for additional or different information, always use the fixed format, never adding new columns or different data.',
'        3.	Avoid any assumptions about additional fields; limit the response strictly to the given format.',
'        4.  Ensure there are no extra line breaks between rows.',
'',
'',
'        ### RULES:',
'        1. Return data in "text" format.',
'        2. Each row must be separated by exactly one line break. No additional shifts, spaces, tabs, or other characters are allowed between rows.',
'        3. Complete Lines: Always write each line from start to finish, ensuring no incomplete or partial lines in the output.',
'        4. Data Format: Each subsequent line must follow the order of TITLE, DESCRIPTION, ACTORS, GENRE, RELEASE_DATE, and RATING.',
'        5. Consistency: Always use a semicolon (;) as the delimiter.',
'        '';',
'',
'        --',
'        -- GenAI Request',
'        --',
'        l_response :=   l_response',
'                      ',
'                     -- Replace multiple line breaks with a single line break after each AI response message',
'                     || rtrim(',
'',
'                            -- Replace multiple line breaks with a single line break within an AI response message',
'                            regexp_replace( ',
'                                ',
'                                apex_ai.generate(',
'                                    p_prompt            => :P11_PROMPT_INPUT,',
'                                    p_system_prompt     => l_prompt,',
'                                    p_service_static_id => l_current_ai_prov ),',
'',
'                                ''('' || chr(10) || ''){2,}'', chr(10) ),',
'',
'                            chr(10) )',
'                     || chr(10);',
'',
'        apex_background_process.set_progress( l_genre_list.count, i);                             ',
'',
'    end loop;',
'',
'    l_exec    := apex_background_process.get_current_execution;',
'    l_exec_id := l_exec.id;',
'    ',
'    insert into eba_vector_ai_helper (',
'        execution_id, ',
'        output',
'    ) values (',
'        l_exec_id, ',
'        l_response',
'    );',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11260076463604371
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Prepare Movie Data (Step 2: Preview)'
,p_alias=>'PREPARE-MOVIE-DATA-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Movie Data'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'gInterval = window.setInterval( function() {apex.event.trigger( document, "updateProgress" ); }, 3700 );'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.csv {',
'   white-space: pre-line;',
'   font-family: monospace;',
'   font-size: 8pt;',
'   overflow-x: scroll; }'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32639107158105792)
,p_plug_name=>'Data Generated Successfully'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--success'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>'<p>Your data has been successfully generated and is available to preview below. The next step is to upload this data into the datatable.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33173023509243007)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14190948692845326)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34668921069660517)
,p_plug_name=>'Generating Data...'
,p_region_name=>'progress'
,p_icon_css_classes=>'fa-refresh fa-anim-spin'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p role="alert" id="status" class="u-tC">Data generation initiated.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40814205352681026)
,p_plug_name=>'Generated CSV'
,p_title=>'Generated Data Preview'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40814269386681027)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14573911687340709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40814269386681027)
,p_button_name=>'UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14574367277340709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40814269386681027)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14584036743340720)
,p_branch_name=>'Go To Vector Generation'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:11,12::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14573911687340709)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34671259649660526)
,p_name=>'P12_SOFAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(40814205352681026)
,p_item_default=>'-1'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34671325090660527)
,p_name=>'P12_TOTALWORK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(40814205352681026)
,p_item_default=>'-2'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40818182020681039)
,p_name=>'P12_AI_OUTPUT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40814205352681026)
,p_prompt=>'AI Generated Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>12
,p_tag_css_classes=>'csv'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14576704386340712)
,p_name=>'Generation Running Update'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateProgress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14577226974340714)
,p_event_id=>wwv_flow_imp.id(14576704386340712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Get Execution Progress'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_SOFAR,P12_TOTALWORK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sofar, totalwork',
'  from apex_appl_page_bg_proc_status',
' where application_id = :APP_ID',
'   and execution_id = :P11_EXE_ID'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14577781429340715)
,p_event_id=>wwv_flow_imp.id(14576704386340712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Show Execution Progress'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#status").text( apex.lang.formatMessage( "EBA_VECTOR.STATUS_UPDATE_AI_GENERATION", $v("P12_SOFAR"), $v("P12_TOTALWORK") ) );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14578277480340716)
,p_event_id=>wwv_flow_imp.id(14576704386340712)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Trigger "Finished" When All Done'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger( document, "generationFinished" )'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v("P12_SOFAR") === $v("P12_TOTALWORK")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14578684029340716)
,p_name=>'Toggle Text Field Visibility on Page Load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14579116069340717)
,p_event_id=>wwv_flow_imp.id(14578684029340716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40814205352681026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14579679132340717)
,p_event_id=>wwv_flow_imp.id(14578684029340716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40814269386681027)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14580176143340718)
,p_event_id=>wwv_flow_imp.id(14578684029340716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32639107158105792)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14580564340340718)
,p_name=>'Toggle Generation Finished Indicator'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'generationFinished'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14581020687340718)
,p_event_id=>wwv_flow_imp.id(14580564340340718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Stop the Refresh Timer'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.clearInterval( gInterval );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14581583979340718)
,p_event_id=>wwv_flow_imp.id(14580564340340718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Get the Generated Content'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_AI_OUTPUT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select output ',
'  from eba_vector_ai_helper',
' where execution_id = :P11_EXE_ID'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14582057462340719)
,p_event_id=>wwv_flow_imp.id(14580564340340718)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Show the Text Area with CSV '
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40814205352681026)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14582551223340719)
,p_event_id=>wwv_flow_imp.id(14580564340340718)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Show the Button Bar with CSV '
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40814269386681027)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14583018624340719)
,p_event_id=>wwv_flow_imp.id(14580564340340718)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Show the Success Text Area'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32639107158105792)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14583545813340720)
,p_event_id=>wwv_flow_imp.id(14580564340340718)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Hide the Execution Progress Text Area'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34668921069660517)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14575331415340711)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Load Data'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14573911687340709)
,p_internal_uid=>11266433588609088
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14574983600340710)
,p_process_sequence=>60
,p_parent_process_id=>wwv_flow_imp.id(14575331415340711)
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Data Load'
,p_attribute_01=>wwv_flow_imp.id(26865649864699185)
,p_attribute_02=>'TEXT'
,p_attribute_04=>'P12_AI_OUTPUT'
,p_internal_uid=>11266085773609087
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14575701106340711)
,p_process_sequence=>80
,p_parent_process_id=>wwv_flow_imp.id(14575331415340711)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clean Data'
,p_process_sql_clob=>'eba_sample_vector_search_pkg.delete_invalid_movie_data'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11266803279609088
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14511031555375063)
,p_process_sequence=>90
,p_parent_process_id=>wwv_flow_imp.id(14575331415340711)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Success Message'
,p_process_sql_clob=>'apex_application.g_print_success_message := null;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11202133728643440
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Prepare Movie Data (Step 3: Preview)'
,p_alias=>'PREPARE-MOVIE-DATA-3'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Movie Data'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14511134743375064)
,p_plug_name=>'Data Uploaded Successfully'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Your data has been loaded successfully into the data table.</p>',
'<p>The next step to enable vector search is to generate <em>vector embeddings</em> that represent this data. These embeddings are then stored in the database and serve as the <strong>foundation for performing vector searches</strong>.</p>'))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_vector_moviedata',
' where embedding_vector is null;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33187127342253165)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14190948692845326)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40818614085620898)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(42650663739176658)
,p_name=>'Data Loading Summary'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--xlarge:t-BadgeList--circular:t-BadgeList--fixed:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count( id ) as Row_Count,',
'       sum( case when embedding_vector is not null',
'            then 1 ',
'            else 0 ',
'            end ) as Vector_Count',
'  from eba_vector_moviedata;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14586809370349804)
,p_query_column_id=>1
,p_column_alias=>'ROW_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Loaded Row Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14587210119349805)
,p_query_column_id=>2
,p_column_alias=>'VECTOR_COUNT'
,p_column_display_sequence=>20
,p_column_heading=>'Vector Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14585668255349801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40818614085620898)
,p_button_name=>'GENERATE_VECTOR_EMBEDDINGS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Vector Embeddings'
,p_button_position=>'NEXT'
,p_show_processing=>'Y'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from eba_vector_moviedata',
' where embedding_vector is null;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14586024034349801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40818614085620898)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14510442662375057)
,p_branch_name=>'to Movie Vector Search'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14588670622349806)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Vectors Embeddings'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_vector vector;',
'',
'begin',
'    for moviedata in ( select id, title, moviedescription, actors from eba_vector_moviedata where embedding_vector is null ) loop',
'',
'        l_vector := apex_ai.get_vector_embeddings(',
'            p_value             => ''Title: '' || moviedata.title || '', Description: '' || moviedata.moviedescription || '', Actors: '' || moviedata.actors,',
'            p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end',
'        );',
'',
'        ',
'        update eba_vector_moviedata',
'           set embedding_vector = l_vector',
'         where id = moviedata.id;',
'',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14585668255349801)
,p_internal_uid=>11279772795618183
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14588287179349805)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clean Helper Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    execute immediate ''truncate table eba_vector_ai_helper'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14585668255349801)
,p_internal_uid=>11279389352618182
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Prepare Movie Data (Step 4: Overview)'
,p_alias=>'PREPARE-MOVIE-DATA-4'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Movie Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38162359480793925)
,p_plug_name=>'Ready for Vector Search'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--success'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Vector embeddings for your data have been generated! You can now perform vector searches on your data.</p>',
'<p>Select a vector search example below to get started.</p>'))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from eba_vector_moviedata where embedding_vector is not null and rownum = 1'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38162426588792420)
,p_plug_name=>'Movie Vector Search Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(26891210267974065)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_label=>'Movie Vector Search'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48038482978707646)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14190948692845326)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Basic Vector Search'
,p_alias=>'BASIC-VECTOR-SEARCH1'
,p_step_title=>'Basic Vector Search'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33055233406586716)
,p_plug_name=>'About Basic Vector Search'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This example performs a vector search on the <em>TITLE</em>, <em>MOVIEDESCRIPTION</em>, and <em>ACTORS</em> columns and returns movies that are similar to your search terms.</p>',
'',
'<p>Vector search leverages <strong>context aware embeddings</strong> to identify similar results beyond simple keyword matching. This results in more accurate and meaningful results.</p>',
'',
'<p>Note that performing a vector search will always yield results, regardless of the quality of the match. The best matches will be displayed at the top of the resultset.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. Here are a few example search terms to get started:</p>',
'',
'<ul>',
'    <li>Subconscious Mind</li>',
'    <li>Darth Vader</li>',
'    <li>Superheroes</li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33055346574586717)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33055474593586718)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(33055346574586717)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Basic Vector'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38126732829597867)
,p_plug_name=>'Search Results OCI'
,p_parent_plug_id=>wwv_flow_imp.id(33055346574586717)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OCI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter a search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P15_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14594193404430880)
,p_region_id=>wwv_flow_imp.id(38126732829597867)
,p_search_config_id=>wwv_flow_imp.id(26879557964827740)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Basic Vector Search OCI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43125422376089354)
,p_plug_name=>'Search Results OPENAI'
,p_parent_plug_id=>wwv_flow_imp.id(33055346574586717)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OPENAI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter a search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P15_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14595052793430880)
,p_region_id=>wwv_flow_imp.id(43125422376089354)
,p_search_config_id=>wwv_flow_imp.id(32205139326725138)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Basic Vector Search OPENAI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60678821071162837)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38127809386597867)
,p_name=>'P15_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33055474593586718)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. Subconscious Mind or Darth Vader'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Vector vs. Oracle Text'
,p_alias=>'VECTOR-VS-ORACLE-TEXT1'
,p_step_title=>'Vector vs. Oracle Text'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33058808073590892)
,p_plug_name=>'Oracle Text not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>This feature cannot be used because Oracle Text is not available in this instance.</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from sys.all_objects',
' where owner       = ''CTXSYS'' ',
'   and object_name = ''CTX_DDL'' ',
'   and rownum      = 1;'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41910681816112885)
,p_plug_name=>'About Vector vs. Oracle Text Search'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Compare</strong> vector search (focused on meaning) with Oracle Text search (focused on keywords and phrases) <strong>to see their differences</strong>.</p>',
'',
'<p>Note that performing a vector search will always yield results, regardless of the quality of the match. The best matches will be displayed at the top of the resultset.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. Here are a few example search terms to get started:</p>',
'',
'<ul>',
'    <li>Subconscious Mind</li>',
'    <li>Darth Vader</li>',
'    <li>Superheroes</li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41916618139154961)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41922042921203341)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(41916618139154961)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Vector vs. Oracle Text'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45966730143938883)
,p_plug_name=>'Vector'
,p_parent_plug_id=>wwv_flow_imp.id(41916618139154961)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43130183229093542)
,p_plug_name=>'Search Results OPENAI'
,p_parent_plug_id=>wwv_flow_imp.id(45966730143938883)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P16_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OPENAI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter a search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P16_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14599589754435065)
,p_region_id=>wwv_flow_imp.id(43130183229093542)
,p_search_config_id=>wwv_flow_imp.id(32205139326725138)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Basic Vector Search OPENAI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45966362519938880)
,p_plug_name=>'Search Results OCI'
,p_parent_plug_id=>wwv_flow_imp.id(45966730143938883)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P16_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OCI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter a search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P16_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14600422902435066)
,p_region_id=>wwv_flow_imp.id(45966362519938880)
,p_search_config_id=>wwv_flow_imp.id(26879557964827740)
,p_use_as_initial_result=>false
,p_display_sequence=>20
,p_name=>'Basic Vector Search OCI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45966815347938884)
,p_plug_name=>'Oracle Text'
,p_parent_plug_id=>wwv_flow_imp.id(41916618139154961)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46364456749405531)
,p_plug_name=>'Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(45966815347938884)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P16_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P16_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14601718038435067)
,p_region_id=>wwv_flow_imp.id(46364456749405531)
,p_search_config_id=>wwv_flow_imp.id(14707557746494741)
,p_use_as_initial_result=>false
,p_display_sequence=>22
,p_name=>'Oracle Text Search'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60679105413164907)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46371505748405548)
,p_name=>'P16_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41922042921203341)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. Subconscious Mind or Darth Vader'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Vector and Oracle Text'
,p_alias=>'VECTOR-AND-ORACLE-TEXT1'
,p_step_title=>'Vector and Oracle Text'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40993315938925017)
,p_plug_name=>'Oracle Text not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>This feature cannot be used because Oracle Text is not available in this instance.</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from sys.all_objects',
' where owner       = ''CTXSYS'' ',
'   and object_name = ''CTX_DDL'' ',
'   and rownum      = 1;'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41917681654116790)
,p_plug_name=>'About Vector and Oracle Text Search'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Combine</strong> vector and Oracle Text search for better and more accurate results.</p>',
'',
'<p>A text search is performed using Oracle Text, and the results returned by this search are ordered by descending vector similarity.</p>',
'',
'This approach can <strong>save computing time</strong> with large datasets by using text search as a pre-filter and then ordering results based on vector similarity.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. Here are a few example search terms to get started:</p>',
'',
'<ul>',
'    <li>Luke Skywalker</li>',
'    <li>Superheroes</li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41923729117159369)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41930399711222258)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(41923729117159369)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Vector and Oracle Text'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43137198973096254)
,p_plug_name=>'Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(41923729117159369)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P17_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P17_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14605854863437773)
,p_region_id=>wwv_flow_imp.id(43137198973096254)
,p_search_config_id=>wwv_flow_imp.id(26878575693785892)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Oracle Text And Vector'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60679377751166264)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46582335494174520)
,p_name=>'P17_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41930399711222258)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. Luke Skywalker'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Custom Vector Search'
,p_alias=>'CUSTOM-VECTOR-SEARCH'
,p_step_title=>'Custom Vector Search'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49454839009462253)
,p_plug_name=>' Custom Vector Search Navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14666527271720723)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_landmark_label=>'Custom'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60680054117171285)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Prepare Custom Data'
,p_alias=>'PREPARE-CUSTOM-DATA-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Custom Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1024px'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21911693918640745)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14193624344893271)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35059987577744386)
,p_plug_name=>'About This Page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This wizard allows you to upload your own data so that you can try vector search.</p>',
'<p>Your uploaded file must meet the following requirements. Download the <a href="#APP_IMAGES#SAMPLE.csv"><strong>SAMPLE.csv</strong></a> file as an example.</p>',
'<ul>',
'    <li>No header row is required.</p>',
'    <li>The first three columns will serve as title, subtitle and description for displaying the search results.</li>',
'    <li>Only the first 10 columns will be used for data loading and generating vector embeddings. Each column allows strings up to 255 bytes.</li>',
'    <li>You may upload data in .csv, .xslx, or .txt format.</li>',
'</ul>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35060165345744387)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35060203968744388)
,p_plug_name=>'Upload File'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35060778946744393)
,p_plug_name=>'Upload a File'
,p_parent_plug_id=>wwv_flow_imp.id(35060203968744388)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40867806051044956)
,p_plug_name=>'Loaded File'
,p_parent_plug_id=>wwv_flow_imp.id(35060203968744388)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P25_FILE'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37069727600433647)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27066940000307272)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37069727600433647)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27863633864536620)
,p_branch_name=>'Go To Data Preview'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(27066940000307272)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35064661796744432)
,p_name=>'P25_FILE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35060778946744393)
,p_prompt=>'Upload a File'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-none'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', 'Supported formats CSV, TXT, XLSX',
  'file_types', '.csv,.txt,.xlsx',
  'max_file_size', '1000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35064722785744433)
,p_name=>'P25_FILE_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35060778946744393)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40877416013045008)
,p_name=>'P25_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40867806051044956)
,p_item_default=>'''EBA_VECTOR_DATATABLE'''
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(28076453231923568)
,p_computation_sequence=>5
,p_computation_item=>'P25_FILE_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P25_FILE;'))
,p_compute_when=>':P25_FILE is not null and :REQUEST = ''LOAD_FILE'''
,p_compute_when_text=>'PLSQL'
,p_compute_when_type=>'EXPRESSION'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Prepare Custom Data (Step 2: Upload Data)'
,p_alias=>'PREPARE-CUSTOM-DATA-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Custom Data'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.t-Report-colHead {white-space: nowrap }'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21911973181641905)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14193624344893271)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37797973635988355)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37798012258988356)
,p_plug_name=>'Upload File'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37798981850988365)
,p_plug_name=>'Loaded File'
,p_parent_plug_id=>wwv_flow_imp.id(37798012258988356)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P25_FILE'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38656586767560102)
,p_name=>'Preview'
,p_parent_plug_id=>wwv_flow_imp.id(37798012258988356)
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select col001 as TITLE,',
'       col002 as SUBTITLE,',
'       col003 as DESCRIPTION,',
'       col004 as COL4,',
'       col005 as COL5,',
'       col006 as COL6,',
'       col007 as COL7,',
'       col008 as COL8,',
'       col009 as COL9,',
'       col010 as COL10',
'  from apex_application_temp_files f, ',
'       TABLE( apex_data_parser.parse(',
'                  p_content          => f.blob_content,',
'                  p_file_name        => f.filename,',
'                  p_add_headers_row  => ''Y'',',
'                  p_csv_enclosed     => ''"'',',
'                  p_file_charset     => ''WE8ISO8859P1'',',
'                  p_max_rows         => 10 )',
'            ) p',
' where f.name = :P25_FILE',
'   and p.line_number > 1;'))
,p_display_when_condition=>'P25_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14510619842375059)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Title'
,p_use_as_row_header=>'Y'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14510908948375062)
,p_query_column_id=>2
,p_column_alias=>'SUBTITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Subtitle'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14510881185375061)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27750809117106043)
,p_query_column_id=>4
,p_column_alias=>'COL4'
,p_column_display_sequence=>40
,p_column_heading=>'Column 4'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27751238748106044)
,p_query_column_id=>5
,p_column_alias=>'COL5'
,p_column_display_sequence=>50
,p_column_heading=>'Column 5'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27751657632106044)
,p_query_column_id=>6
,p_column_alias=>'COL6'
,p_column_display_sequence=>60
,p_column_heading=>'Column 6'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27752024984106044)
,p_query_column_id=>7
,p_column_alias=>'COL7'
,p_column_display_sequence=>70
,p_column_heading=>'Column 7'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27752466792106044)
,p_query_column_id=>8
,p_column_alias=>'COL8'
,p_column_display_sequence=>80
,p_column_heading=>'Column 8'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27752856862106045)
,p_query_column_id=>9
,p_column_alias=>'COL9'
,p_column_display_sequence=>90
,p_column_heading=>'Column 9'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27753267838106045)
,p_query_column_id=>10
,p_column_alias=>'COL10'
,p_column_display_sequence=>100
,p_column_heading=>'Column 10'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39807535890677615)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27754092685106046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39807535890677615)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27688085497837174)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39807535890677615)
,p_button_name=>'PREV'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27768793086487794)
,p_branch_name=>'Go Back To File Upload'
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(27688085497837174)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(28662661892419690)
,p_branch_name=>'Go To File Vector Embeddings'
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(27754092685106046)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37808285505988413)
,p_name=>'P26_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37798981850988365)
,p_item_default=>'''EBA_VECTOR_DATATABLE'''
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(27754718490106046)
,p_computation_sequence=>10
,p_computation_item=>'P26_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P25_FILE;'))
,p_compute_when=>':P25_FILE is not null and :REQUEST = ''LOAD_FILE'''
,p_compute_when_text=>'PLSQL'
,p_compute_when_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28699339955689196)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Upload Sample Data'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27754092685106046)
,p_internal_uid=>3692637774827129
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28700621602696679)
,p_process_sequence=>80
,p_parent_process_id=>wwv_flow_imp.id(28699339955689196)
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load File Data'
,p_attribute_01=>wwv_flow_imp.id(26872215558699189)
,p_attribute_02=>'FILE'
,p_attribute_03=>'P25_FILE'
,p_internal_uid=>3693919421834612
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27755480462106047)
,p_process_sequence=>90
,p_parent_process_id=>wwv_flow_imp.id(28699339955689196)
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear File Cache'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'25,26'
,p_internal_uid=>2748778281243980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14511256575375065)
,p_process_sequence=>100
,p_parent_process_id=>wwv_flow_imp.id(28699339955689196)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Success Message'
,p_process_sql_clob=>'apex_application.g_print_success_message := null;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11202358748643442
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Prepare Custom Data (Step 3: Vector Embeddings)'
,p_alias=>'PREPARE-CUSTOM-DATA-3'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Custom Data'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21912229909643462)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14193624344893271)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25943800203932809)
,p_plug_name=>'Data Uploaded Successfully'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Your data has been loaded successfully into the data table.</p>',
'<p>The next step to enable vector search is to generate <em>vector embeddings</em> that represent this data. These embeddings are then stored in the database and serve as the <strong>foundation for performing vector searches</strong>.</p>'))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_vector_datatable',
' where embedding_vector is null;'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27691106698837205)
,p_name=>'Summary'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--xlarge:t-BadgeList--circular:t-BadgeList--fixed:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(id) as Row_Count,',
'       sum( case when embedding_vector is not null then 1 else 0 end ) as Vector_Count',
'  from eba_vector_datatable;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28662401160419687)
,p_query_column_id=>1
,p_column_alias=>'ROW_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Loaded Row Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28662471228419688)
,p_query_column_id=>2
,p_column_alias=>'VECTOR_COUNT'
,p_column_display_sequence=>20
,p_column_heading=>'Vector Embeddings Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39778368153547413)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27704349826958162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39778368153547413)
,p_button_name=>'GENERATE_VECTOR_EMBEDDINGS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Vector Embeddings'
,p_button_position=>'NEXT'
,p_show_processing=>'Y'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_vector_datatable',
' where embedding_vector is null;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28660703789419671)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39778368153547413)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14510553266375058)
,p_branch_name=>'to Custom Vector Search'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27704977601958168)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Vectors Embeddings'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update eba_vector_datatable',
'   set embedding_vector = apex_ai.get_vector_embeddings(',
'                              p_value             => col1 || col2 || col3 || col4 || col5 || col6 || col7 || col8 ||col9 || col10,',
'                              p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end );',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27704349826958162)
,p_internal_uid=>2698275421096101
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Prepare Custom Data (Step 4: Overview)'
,p_alias=>'PREPARE-CUSTOM-DATA-4'
,p_page_mode=>'MODAL'
,p_step_title=>'Prepare Custom Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36766158688118380)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14193624344893271)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49513023390648422)
,p_plug_name=>'Custom Vector Search Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(14660657478603054)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_label=>'Custom Vector Search'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49513750767652094)
,p_plug_name=>'Ready for Vector Search'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--success'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Vector embeddings for your data have been generated! You can now perform vector searches on your data.</p>',
'<p>Select a vector search example below to get started.</p>'))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from eba_vector_datatable where embedding_vector is not null and rownum = 1'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Basic Vector Search'
,p_alias=>'BASIC-VECTOR-SEARCH'
,p_step_title=>'Basic Vector Search'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21772034982887465)
,p_plug_name=>'About Basic Vector Search'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Search using vectors including all data fields of the uploaded data for deeper and broader results.</p>',
'',
'<p>All data fields are combined into a single vector, allowing the search to find <strong>matches across multiple columns</strong> at once.</p>',
'',
'<p>Note that performing a vector search will always yield results, regardless of the quality of the match. The best matches will be displayed at the top of the resultset.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. Here are a few example search terms to get started:</p>',
'',
'<ul>',
'    <li>Testing</li>',
'    <li>Results that include errors.</li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26834247520881123)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42013102707970474)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42018513354020607)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(42013102707970474)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Basic Vector'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43226419993906240)
,p_plug_name=>'Search Results OPENAI'
,p_parent_plug_id=>wwv_flow_imp.id(42013102707970474)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P31_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OPENAI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P31_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14693874869247774)
,p_region_id=>wwv_flow_imp.id(43226419993906240)
,p_search_config_id=>wwv_flow_imp.id(32204777597721912)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Basic Vector Search OPENAI Datatable'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48033216067062365)
,p_plug_name=>'Search Results OCI'
,p_parent_plug_id=>wwv_flow_imp.id(42013102707970474)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P31_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OCI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P31_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(14694730348247776)
,p_region_id=>wwv_flow_imp.id(48033216067062365)
,p_search_config_id=>wwv_flow_imp.id(26881450222843584)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Basic Vector Search OCI Datatable'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48035431534062388)
,p_name=>'P31_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42018513354020607)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. Testing'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Vector vs. Oracle Text'
,p_alias=>'VECTOR-VS-ORACLE-TEXT'
,p_step_title=>'Vector vs. Oracle Text'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21771055858887455)
,p_plug_name=>'Oracle Text not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>This feature cannot be used because Oracle Text is not available in this instance.</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from sys.all_objects',
' where owner       = ''CTXSYS'' ',
'   and object_name = ''CTX_DDL'' ',
'   and rownum      = 1;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30622929601409448)
,p_plug_name=>'About Vector vs. Oracle Text Search'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Compare</strong> vector search (focused on meaning) with Oracle Text search (focused on keywords and phrases) <strong>to see their differences</strong>.</p>',
'',
'<p>Note that performing a vector search will always yield results, regardless of the quality of the match. The best matches will be displayed at the top of the resultset.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. Here are a few example search terms to get started:</p>',
'',
'<ul>',
'    <li>Testing</li>',
'    <li>Results that include errors.</li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30628865924451524)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30634290706499904)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(30628865924451524)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Vector vs. Oracle Text'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34678977929235446)
,p_plug_name=>'Vector'
,p_parent_plug_id=>wwv_flow_imp.id(30628865924451524)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31842431014390105)
,p_plug_name=>'Search Results OPENAI'
,p_parent_plug_id=>wwv_flow_imp.id(34678977929235446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P32_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OPENAI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P32_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(31842586010390106)
,p_region_id=>wwv_flow_imp.id(31842431014390105)
,p_search_config_id=>wwv_flow_imp.id(32204777597721912)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Basic Vector Search OPENAI Datatable'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34678610305235443)
,p_plug_name=>'Search Results OCI'
,p_parent_plug_id=>wwv_flow_imp.id(34678977929235446)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P32_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OCI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P32_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(27102704063622404)
,p_region_id=>wwv_flow_imp.id(34678610305235443)
,p_search_config_id=>wwv_flow_imp.id(26881450222843584)
,p_use_as_initial_result=>false
,p_display_sequence=>20
,p_name=>'Basic Vector Search OCI Datatable'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34679063133235447)
,p_plug_name=>'Oracle Text'
,p_parent_plug_id=>wwv_flow_imp.id(30628865924451524)
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35076704534702094)
,p_plug_name=>'Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(34679063133235447)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P32_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P32_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(27104376263622409)
,p_region_id=>wwv_flow_imp.id(35076704534702094)
,p_search_config_id=>wwv_flow_imp.id(26879025249810515)
,p_use_as_initial_result=>false
,p_display_sequence=>22
,p_name=>'Oracle Text Search'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35076000228702089)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35082004942702108)
,p_name=>'P32_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30634290706499904)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. Testing'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Vector and Oracle Text'
,p_alias=>'VECTOR-AND-ORACLE-TEXT'
,p_step_title=>'Vector and Oracle Text'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29698817803218870)
,p_plug_name=>'Oracle Text not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p>This feature cannot be used because Oracle Text is not available in this instance.</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from sys.all_objects',
' where owner       = ''CTXSYS'' ',
'   and object_name = ''CTX_DDL'' ',
'   and rownum      = 1;'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30623183518410643)
,p_plug_name=>'About Vector and Oracle Text Search'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Combine</strong> vector and Oracle Text search for better and more accurate results.</p>',
'',
'<p>A text search is performed using Oracle Text, and the results returned by this search are ordered by descending vector similarity.</p>',
'',
'This approach can <strong>save computing time</strong> with large datasets by using text search as a pre-filter and then ordering results based on vector similarity.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. Here are a few example search terms to get started:</p>',
'',
'<ul>',
'    <li>Testing</li>',
'    <li>Spreadsheet</li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30629230981453222)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30635901575516111)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(30629230981453222)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Vector and Oracle Text'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31842700837390107)
,p_plug_name=>'Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(30629230981453222)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P33_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P33_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(31842719476390108)
,p_region_id=>wwv_flow_imp.id(31842700837390107)
,p_search_config_id=>wwv_flow_imp.id(14705397227405739)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Oracle Text And Vector Datatable'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35283760787468359)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35286118163468371)
,p_name=>'P33_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30635901575516111)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. Testing'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Movie Recommendation'
,p_alias=>'MOVIE-RECOMMENDATION'
,p_step_title=>'Movie Recommendation'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26855007513038223)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30643242139782658)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27121904358811370)
,p_plug_name=>'Search Results OCI'
,p_parent_plug_id=>wwv_flow_imp.id(30643242139782658)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P41_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OCI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Select a movie to find similar ones.',
  'no_results_found_message', 'No similar movies found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P41_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(27122065854811371)
,p_region_id=>wwv_flow_imp.id(27121904358811370)
,p_search_config_id=>wwv_flow_imp.id(26877849548749343)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Movie Recommendation'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30643603731784407)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(30643242139782658)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Select Movie Recommendation'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31843025437390111)
,p_plug_name=>'Search Results OPENAI'
,p_parent_plug_id=>wwv_flow_imp.id(30643242139782658)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P41_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OPENAI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Select a movie to find similar ones.',
  'no_results_found_message', 'No similar movies found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P41_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(31843187304390112)
,p_region_id=>wwv_flow_imp.id(31843025437390111)
,p_search_config_id=>wwv_flow_imp.id(32204106105713615)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Movie Recommendation'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30647019480815937)
,p_plug_name=>'About Movie Recommendation'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The dropdown menu allows selecting a movie to <strong>find similar movies</strong> based on its title, moviedescription, and actors in descending order. Click on the movies to view detailed information about them.</p>',
'',
'<p>Note that performing a vector search will always yield results, regardless of the quality of the match. The best matches will be displayed at the top of the resultset.</p>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27121732823811368)
,p_name=>'P41_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30643603731784407)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title, ',
'       moviedescription',
'  from eba_vector_moviedata;'))
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27122406472811375)
,p_name=>'Submit Page'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27122524860811376)
,p_event_id=>wwv_flow_imp.id(27122406472811375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Search Results OCI'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27121904358811370)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14196213290650180)
,p_event_id=>wwv_flow_imp.id(27122406472811375)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Search Results OpenAI'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31843025437390111)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'Mixed Languages'
,p_alias=>'MIXED-LANGUAGES'
,p_step_title=>'Mixed Languages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26856399650041913)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30645238262805830)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27122217795811373)
,p_plug_name=>'Search Results OCI'
,p_parent_plug_id=>wwv_flow_imp.id(30645238262805830)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P42_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OCI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter a search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P42_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(27122316953811374)
,p_region_id=>wwv_flow_imp.id(27122217795811373)
,p_search_config_id=>wwv_flow_imp.id(26879557964827740)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Vector Comparison'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30644571663795758)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(30645238262805830)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_landmark_type=>'search'
,p_landmark_label=>'Mixed Languages'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31843226561390113)
,p_plug_name=>'Search Results OPENAI'
,p_parent_plug_id=>wwv_flow_imp.id(30645238262805830)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P42_SEARCH'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'CURRENT_AI_PROVIDER'
,p_plug_display_when_cond2=>'OPENAI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter a search term.',
  'no_results_found_message', 'No results found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P42_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(31843383893390114)
,p_region_id=>wwv_flow_imp.id(31843226561390113)
,p_search_config_id=>wwv_flow_imp.id(32205139326725138)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Vector Comparison'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30647332777816884)
,p_plug_name=>'About Mixed Languages'
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Each language yields unique results, as it connects to different attributes or contexts, enhancing the diversity and relevance of search outcomes.</p>',
'',
unistr('<p>The system leverages vector embeddings to identify semantically similar results across multiple languages, even if the query combines different languages (e.g., <strong><span lang="zh-Hans">\592A\7A7A</span> and Star Wars</strong>).</p>'),
'',
'<p>Note that performing a vector search will always yield results, regardless of the quality of the match. The best matches will be displayed at the top of the resultset.</p>',
'',
'<p>To search, start typing your query, and the results will be displayed immediately. ',
'    Try out the Arabic, Mandarin, German, or French term for "Space":</p>',
'',
'<ul>',
unistr('    <li><span lang="ar">\0627\0644\0641\0636\0627\0621</span></li>'),
unistr('    <li><span lang="zh-Hans">\592A\7A7A</span></li>'),
'    <li><span lang="de">Weltraum</span></li>',
'    <li><span lang="fr">espace</span></li>',
'</ul>'))
,p_landmark_type=>'complementary'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27122188783811372)
,p_name=>'P42_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30644571663795758)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_imp_page.create_page(
 p_id=>49
,p_name=>'Movie Details'
,p_alias=>'MOVIE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Movie Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'600'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7381949152366)
,p_plug_name=>'Movie Details Report'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title, moviedescription, actors, genre, release_date, rating',
'  from eba_vector_moviedata',
' where id = :P49_SEARCH_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P49_SEARCH_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8110462152373)
,p_region_id=>wwv_flow_imp.id(7381949152366)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'GENRE'
,p_body_adv_formatting=>false
,p_body_column_name=>'MOVIEDESCRIPTION'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&ACTORS. <br /><br />',
'Release Date: &RELEASE_DATE.'))
,p_badge_column_name=>'RATING'
,p_badge_label=>'Rating'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1593375319890247667)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14822184384392706)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1593375319890247667)
,p_button_name=>'FIND_SIMILAR_MOVIES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find Similar Movies'
,p_button_position=>'NEXT'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14836000952424740)
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14834951742424729)
,p_name=>'P49_SEARCH_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7381949152366)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14835940410424739)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Find Similar Movies'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select moviedescription',
'      into :P41_SEARCH',
'      from eba_vector_moviedata',
'     where id = :P49_SEARCH_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14822184384392706)
,p_internal_uid=>11527042583693116
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26839539680898576)
,p_plug_name=>'Administration Navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(26885968671938778)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_landmark_type=>'navigation'
,p_landmark_label=>'Administration'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26857677793048846)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Reset Sample Data Tables'
,p_alias=>'RESET-SAMPLE-DATA-TABLES'
,p_step_title=>'Reset Sample Data Tables'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31021729976705593)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36597133015291862)
,p_plug_name=>'Reset Data'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Would you like to reset your data?</p>',
'<p>This action will restore the data tables to their initial state, clearing all current data.</p>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36597240019291863)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(36597133015291862)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27091051042480822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36597240019291863)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_confirm_message=>'Are you sure you want to clear data from all data tables?'
,p_confirm_style=>'danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27091478607480822)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36597240019291863)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27095104088480826)
,p_branch_name=>'to Home Page'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27094297193480825)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from eba_vector_moviedata;',
'    delete from eba_vector_datatable;',
'    delete from eba_vector_ai_helper;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error: Failed to reset data.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27091051042480822)
,p_process_success_message=>'Data has been successfully reset.'
,p_internal_uid=>2087595012618758
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_imp_page.create_page(
 p_id=>52
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
 p_id=>wwv_flow_imp.id(3906251192630571437)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5887136968267659907)
,p_plug_name=>'Set Theme Style'
,p_icon_css_classes=>'fa-design'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--info'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Select the look and feel of the application you would like to use for all users of this application.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27472244324412520)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5887136968267659907)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27475365488412542)
,p_branch_name=>'Go To Page settings'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(27472244324412520)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2484365492083131165)
,p_name=>'P52_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5887136968267659907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'  from apex_application_theme_styles s, apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number = t.theme_number',
'   and s.application_id = :app_id',
'   and t.ui_type_name   = ''DESKTOP''',
'   and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select s.name d,',
'         s.theme_style_id r',
'    from apex_application_theme_styles s, apex_application_themes t',
'   where s.application_id = t.application_id',
'     and s.theme_number = t.theme_number',
'     and s.application_id = :app_id',
'     and t.ui_type_name   = ''DESKTOP''',
'     and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_theme_styles s, apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number = t.theme_number',
'   and s.application_id = :app_id',
'   and t.ui_type_name   = ''DESKTOP''',
'   and t.is_current = ''Yes'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27474877279412540)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P52_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in ( select theme_number',
'                  from apex_application_themes',
'                 where application_id = :app_id',
'                   and ui_type_name   = ''DESKTOP''',
'                   and is_current     = ''Yes''',
'               )',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number => c1.theme_number,',
'            p_id           => :P52_DESKTOP_THEME_STYLE_ID',
'        );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27472244324412520)
,p_process_success_message=>'Theme Style Set for All Users.'
,p_internal_uid=>2468175098550473
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_imp_page.create_page(
 p_id=>54
,p_name=>'Set AI Provider'
,p_alias=>'SET-AI-PROVIDER'
,p_step_title=>'Set AI Provider'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.step-container { max-width: 1168px; margin: 1.6rem auto }',
'.step-container .t-HeroRegion:not(.t-HeroRegion--featured) .t-HeroRegion-wrap { padding: 0 }',
'.t-Alert--info .t-Alert-icon { vertical-align: top }',
'.t-Alert--horizontal .t-Alert-title { line-height: 2.8rem }',
'.content-well { background: rgba(0, 0, 0, .05); border-radius: 2px; padding: 1.6rem }',
'.users-table .t-Report-report thead { display: none }',
'.users-table .t-Report-cell { padding: 0.8rem 0; font-size: 1.4rem; line-height: 1.5 }',
'.cta-button {padding: 16px 32px; font-size: 16px;}',
'.t-Card-info {',
'  margin-top: 0;',
'}',
'',
'.t-Card-desc {',
'  display: none;',
'}',
'',
'.t-Card-title {',
'  font-weight: 400;',
'}',
'.apex-item-yes-no {white-space:pre;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Use this items on this page to configure the app.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15189452908504083)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26568570669740916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26705149377197141)
,p_plug_name=>'Button OPENAI'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33638874183659843)
,p_plug_name=>'Select Provider'
,p_title=>'Select AI Provider'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Select an AI provider you want to use for generating data and creating vector embeddings.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33638989925659844)
,p_plug_name=>'Enter OCI Web Credentials'
,p_title=>'Enter Web Credentials'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Enter the OCI credentials you would like to use for this application.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51475605601480595)
,p_plug_name=>'Web Credentials'
,p_parent_plug_id=>wwv_flow_imp.id(33638989925659844)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33639084835659845)
,p_plug_name=>'Enter OpenAI Web Credentials'
,p_title=>'Enter Web Credentials'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Enter the OpenAI API key you would like to use for this application.</p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33639146378659846)
,p_plug_name=>'Button OCI'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15177933232504052)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26705149377197141)
,p_button_name=>'COMPLETE_OPENAI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_css_classes=>'cta-button'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15188932049504081)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33639146378659846)
,p_button_name=>'COMPLETE_OCI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_css_classes=>'cta-button'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15201208139504111)
,p_branch_name=>'Go to Home Page'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'INITIALIZED_AI_PROVIDER'
,p_branch_condition_text=>'YES'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40546451904772571)
,p_name=>'P54_OPENAI_WEB_CRED_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33639084835659845)
,p_prompt=>'Web Credential'
,p_source=>'OpenAI Credentials'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Denotes the name of the Web Credential which is used for accessing the <strong>OpenAI Generative AI</strong>. Navigate to <strong>Workspace Utilities</strong>, <strong>Web Credential</strong> to review existing Web Credentials.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51478957933480648)
,p_name=>'P54_SHOW_WEB_CREDENTIALS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33638989925659844)
,p_prompt=>'Edit Web Credentials'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51483257333480655)
,p_name=>'P54_OCI_WEB_CREDENTIALS_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51475605601480595)
,p_prompt=>'Web Credential'
,p_source=>'OCI Credentials'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Denotes the name of the Web Credential which is used for accessing the <strong>OCI Generative AI</strong>. Navigate to <strong>Workspace Utilities</strong>, <strong>Web Credential</strong> to review existing Web Credentials.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58402811483303711)
,p_name=>'P54_AI_PROVIDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33638874183659843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'AI Provider'
,p_source=>'CURRENT_AI_PROVIDER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:OCI Generative AI;OCI,Open AI;OPENAI'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58439673509404649)
,p_name=>'P54_OCI_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51475605601480595)
,p_prompt=>'OCI User ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_help_text=>'<p>Enter the Oracle Cloud Infrastructure <em>User OCID</em>. &PRODUCT_NAME. does not store this information encrypted.</p> <p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm'
||'">Oracle Cloud Infrastructure Documentation</a></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58439749714404650)
,p_name=>'P54_OCI_PRIVATE_KEY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51475605601480595)
,p_prompt=>'OCI Private Key'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'<p>Enter the private key in PEM format for OCI authentication. &PRODUCT_NAME. stores this information encrypted and secure, so it cannot be retrieved back in clear text.</p><p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.orac'
||'le.com/iaas/Content/API/Concepts/apisigningkey.htm">Oracle Cloud Infrastructure Documentation</a></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58439852762404651)
,p_name=>'P54_OCI_TENANCY_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51475605601480595)
,p_prompt=>'OCI Tenancy ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the Oracle Cloud Infrastructure <em>Tenancy''s OCID</em>.</p>',
'<p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm">Oracle Cloud Infrastructure Documentation</a></p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58439977837404652)
,p_name=>'P54_OCI_FINGERPRINT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51475605601480595)
,p_prompt=>'OCI Public Key Fingerprint'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Enter the <em>public RSA key fingerprint</em> for OCI authentication. </p><p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm">Oracle Cloud Infrastructure Documentation</a'
||'></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58445549313406156)
,p_name=>'P54_OPENAI_API_KEY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33639084835659845)
,p_prompt=>'OpenAI API Key'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the <em>API Key</em> to authenticate against the AI Provider.</p>',
'<p>Example: "sk-pr..."</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59408168214987140)
,p_name=>'P54_OCI_REGION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33638989925659844)
,p_item_default=>'us-chicago-1'
,p_prompt=>'Region'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The Oracle Cloud Infrastructure Region. The default is us-chicago-1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'US Midwest (Chicago)'
,p_quick_pick_value_01=>'us-chicago-1'
,p_quick_pick_label_02=>'US East (Ashburn)'
,p_quick_pick_value_02=>'us-ashburn-1'
,p_quick_pick_label_03=>'US West (Phoenix)'
,p_quick_pick_value_03=>'us-phoenix-1'
,p_quick_pick_label_04=>'Germany Central (Frankfurt)'
,p_quick_pick_value_04=>'eu-frankfurt-1'
,p_quick_pick_label_05=>'UK South (London)'
,p_quick_pick_value_05=>'uk-london-1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59408243085987141)
,p_name=>'P54_OCI_COMPARTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33638989925659844)
,p_prompt=>'Compartment ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The Oracle Cloud Infrastructure Compartment ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15192962804504100)
,p_validation_name=>'P54_OCI_COMPARTMENT_ID not null'
,p_validation_sequence=>20
,p_validation=>'P54_OCI_COMPARTMENT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(15188932049504081)
,p_associated_item=>wwv_flow_imp.id(59408243085987141)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15191773681504100)
,p_validation_name=>'P54_OCI_REGION not null'
,p_validation_sequence=>30
,p_validation=>'P54_OCI_REGION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(15188932049504081)
,p_associated_item=>wwv_flow_imp.id(59408168214987140)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15190955860504099)
,p_validation_name=>'P54_OCI_USER_ID not null'
,p_validation_sequence=>40
,p_validation=>'P54_OCI_USER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P54_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(15188932049504081)
,p_associated_item=>wwv_flow_imp.id(58439673509404649)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15193332543504101)
,p_validation_name=>'P54_OPENAI_API_KEY not null'
,p_validation_sequence=>50
,p_validation=>'P54_OPENAI_API_KEY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(15177933232504052)
,p_associated_item=>wwv_flow_imp.id(58445549313406156)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15191353488504099)
,p_validation_name=>'P54_OCI_PRIVATE_KEY not null'
,p_validation_sequence=>60
,p_validation=>'P54_OCI_PRIVATE_KEY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P54_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(15188932049504081)
,p_associated_item=>wwv_flow_imp.id(58439749714404650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15192177011504100)
,p_validation_name=>'P54_OCI_TENANCY_ID not null'
,p_validation_sequence=>70
,p_validation=>'P54_OCI_TENANCY_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P54_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(15188932049504081)
,p_associated_item=>wwv_flow_imp.id(58439852762404651)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15192511410504100)
,p_validation_name=>'P54_OCI_FINGERPRINT not null'
,p_validation_sequence=>80
,p_validation=>'P54_OCI_FINGERPRINT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P54_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(15188932049504081)
,p_associated_item=>wwv_flow_imp.id(58439977837404652)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15194872093504104)
,p_name=>'Toggle Switch Visibility'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_SHOW_WEB_CREDENTIALS'
,p_condition_element=>'P54_SHOW_WEB_CREDENTIALS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15195391747504106)
,p_event_id=>wwv_flow_imp.id(15194872093504104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51475605601480595)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15195855846504106)
,p_event_id=>wwv_flow_imp.id(15194872093504104)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51475605601480595)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15196296129504107)
,p_name=>'Change AI Provider'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_AI_PROVIDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15198219005504108)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_app_setting.set_value(''AI_PROVIDER'', :P54_AI_PROVIDER);',
':CURRENT_AI_PROVIDER := :P54_AI_PROVIDER;'))
,p_attribute_02=>'P54_AI_PROVIDER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15199727448504109)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide OCI Web Credentials'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33638989925659844)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15199241408504109)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Hide OpenAI Web Credentials'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33639084835659845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15200216334504109)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Hide Complete Button OCI'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33639146378659846)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15196697895504107)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Hide Complete Button OPENAI'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26705149377197141)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15198744368504109)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Show OCI Web Credentials'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33638989925659844)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_AI_PROVIDER'
,p_client_condition_expression=>'OCI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15197778618504108)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Show OpenAI Web Credentials'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33639084835659845)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_AI_PROVIDER'
,p_client_condition_expression=>'OPENAI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15200750794504110)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Show Complete Button OCI'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33639146378659846)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_AI_PROVIDER'
,p_client_condition_expression=>'OCI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15197275277504107)
,p_event_id=>wwv_flow_imp.id(15196296129504107)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>'Show Complete Button OpenAI'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26705149377197141)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_AI_PROVIDER'
,p_client_condition_expression=>'OPENAI'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15194041126504102)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Complete OCI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_vector    vector;',
'    l_response  clob;',
'begin',
'     ',
'    apex_application_admin.set_remote_server(',
'        p_static_id              => ''EBA_GENAI_OCI'',',
'        p_base_url               => ''https://inference.generativeai.'' || :P54_OCI_REGION || ''.oci.oraclecloud.com'', ',
'        p_ai_model_name          => ''cohere.command-r-16k'',',
'        p_ai_attributes          => ''{"compartmentId":"'' || apex_escape.json(:P54_OCI_COMPARTMENT_ID) || ''","servingMode":{"modelId":"cohere.command-r-16k","servingType":"ON_DEMAND"}}'' ',
'    );',
'    apex_application_admin.set_remote_server(',
'        p_static_id              => ''EBA_VECTOR_OCI'',',
'        p_base_url               => ''https://inference.generativeai.'' || :P54_OCI_REGION || ''.oci.oraclecloud.com'', ',
'        p_ai_model_name          => ''cohere.embed-english-v3.0'',',
'        p_ai_attributes          => ''{"compartmentId":"'' || apex_escape.json(:P54_OCI_COMPARTMENT_ID) || ''","servingMode":{"modelId":"cohere.embed-english-v3.0","servingType":"ON_DEMAND"}}''',
'    );',
'    ',
'    if :P54_SHOW_WEB_CREDENTIALS = ''Y'' then',
'        apex_credential.set_persistent_credentials (',
'            p_credential_static_id  =>  ''EBA_CREDENTIALS_OCI'',',
'            p_client_id             =>  :P54_OCI_USER_ID,',
'            p_client_secret         =>  :P54_OCI_PRIVATE_KEY,',
'            p_namespace             =>  :P54_OCI_TENANCY_ID,',
'            p_fingerprint           =>  :P54_OCI_FINGERPRINT',
'        );',
'',
'        :P54_OCI_PRIVATE_KEY := '' '';',
'    end if;',
'    ',
'',
'    -- Test AI Provider',
'    l_vector := apex_ai.get_vector_embeddings(',
'        p_value             => ''apex'',',
'        p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end',
'    );',
'',
'    l_response := apex_ai.generate(',
'        p_prompt            =>  ''apex'',',
'        p_system_prompt     =>  ''test'',',
'        p_service_static_id =>  case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_GENAI_OCI'' else ''EBA_GENAI_OPENAI'' end',
'    );',
'    ',
'    -- To turn the switch off by default from now on, since the web credentials have been entered successfully.',
'    if :P100_SHOW_WEB_CREDENTIALS = ''Y'' then',
'        apex_app_setting.set_value(''WC_STATUS'', ''ENTERED'');',
'    end if;',
'',
'    -- To Complete Setup',
'    :INITIALIZED_AI_PROVIDER := ''YES'';',
'    apex_app_setting.set_value(''AI_PROVIDER_INITIALIZED'' ,''YES'');    ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Invalid web credentials: #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15188932049504081)
,p_process_success_message=>'Success: Web credentials verified successfully.'
,p_internal_uid=>11885143299772479
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14607965374680021)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Data OCI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_vector_moviedata;',
'delete from eba_vector_datatable;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15188932049504081)
,p_internal_uid=>11528594944693131
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15193695525504101)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Complete Open AI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_vector    vector;',
'    l_response  clob;',
'begin',
'     ',
'    apex_credential.set_persistent_credentials(',
'        p_credential_static_id   => ''EBA_CREDENTIALS_OPENAI'',',
'        p_key                    => ''Authorization'',',
'        p_value                  => ''Bearer '' || :P54_OPENAI_API_KEY );',
'    ',
'',
'',
'',
'    -- Test AI Provider',
'    l_vector := apex_ai.get_vector_embeddings(',
'        p_value             => ''apex'',',
'        p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end',
'    );',
'',
'    l_response := apex_ai.generate(',
'        p_prompt            =>  ''apex'',',
'        p_system_prompt     =>  ''test'',',
'        p_service_static_id =>  case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_GENAI_OCI'' else ''EBA_GENAI_OPENAI'' end',
'    );',
'',
'',
'    ',
'    -- To Complete Setup',
'    :INITIALIZED_AI_PROVIDER := ''YES'';',
'    apex_app_setting.set_value(''AI_PROVIDER_INITIALIZED'' ,''YES'');',
'    ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Invalid web credentials: #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15177933232504052)
,p_process_success_message=>'Success: Web credentials verified successfully.'
,p_internal_uid=>11884797698772478
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14608099313680022)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Data Open AI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_vector_moviedata;',
'delete from eba_vector_datatable;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15177933232504052)
,p_internal_uid=>11528461005693130
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14607868140680020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if apex_app_setting.get_value(''WC_STATUS'') = ''ENTERED'' then',
'        :P54_SHOW_WEB_CREDENTIALS := ''N'';',
'    else',
'        :P54_SHOW_WEB_CREDENTIALS := ''Y'';',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11528692178693132
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Getting Started'
,p_alias=>'GETTING-STARTED'
,p_step_title=>'Getting Started'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.step-container { max-width: 1168px; margin: 1.6rem auto }',
'.step-container .t-HeroRegion:not(.t-HeroRegion--featured) .t-HeroRegion-wrap { padding: 0 }',
'.t-Alert--info .t-Alert-icon { vertical-align: top }',
'.t-Alert--horizontal .t-Alert-title { line-height: 2.8rem }',
'.content-well { background: rgba(0, 0, 0, .05); border-radius: 2px; padding: 1.6rem }',
'.users-table .t-Report-report thead { display: none }',
'.users-table .t-Report-cell { padding: 0.8rem 0; font-size: 1.4rem; line-height: 1.5 }',
'.cta-button {padding: 16px 32px; font-size: 16px;}',
'.t-Card-info {',
'  margin-top: 0;',
'}',
'',
'.t-Card-desc {',
'  display: none;',
'}',
'',
'.t-Card-title {',
'  font-weight: 400;',
'}',
'.apex-item-yes-no {white-space:pre;}'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Use this items on this page to configure the app.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14836719044424747)
,p_plug_name=>'Button OPENAI'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21770302707887447)
,p_plug_name=>'Introduction Wizard'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21770314222887448)
,p_plug_name=>'Welcome to Sample Vector Search'
,p_parent_plug_id=>wwv_flow_imp.id(21770302707887447)
,p_region_template_options=>'t-HeroRegion--noPadding'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'Please take a moment to complete this first time setup.'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21770443850887449)
,p_plug_name=>'Select Provider'
,p_title=>'Select AI Provider'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Select an AI provider you want to use for generating data and creating vector embeddings.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21770559592887450)
,p_plug_name=>'Enter OCI Web Credentials'
,p_title=>'Enter Web Credentials'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Enter the OCI credentials you would like to use for this application.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39607175268708201)
,p_plug_name=>'Web Credentials'
,p_parent_plug_id=>wwv_flow_imp.id(21770559592887450)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21770654502887451)
,p_plug_name=>'Enter OpenAI Web Credentials'
,p_title=>'Enter Web Credentials'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<p>Enter the OpenAI API key you would like to use for this application.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21770716045887452)
,p_plug_name=>'Button OCI'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14836858994424748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14836719044424747)
,p_button_name=>'COMPLETE_OPENAI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete Setup'
,p_button_position=>'CHANGE'
,p_show_processing=>'Y'
,p_button_css_classes=>'cta-button'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21770872189887453)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21770716045887452)
,p_button_name=>'COMPLETE_OCI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete Setup'
,p_button_position=>'CHANGE'
,p_show_processing=>'Y'
,p_button_css_classes=>'cta-button'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(21771006914887454)
,p_branch_name=>'Go to Home Page'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'INITIALIZED_AI_PROVIDER'
,p_branch_condition_text=>'YES'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28668382788000117)
,p_name=>'P100_OPENAI_WEB_CRED_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21770654502887451)
,p_prompt=>'Web Credential'
,p_source=>'OpenAI Credentials'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Denotes the name of the Web Credential which is used for accessing the <strong>OpenAI Generative AI</strong>. Navigate to <strong>Workspace Utilities</strong>, <strong>Web Credential</strong> to review existing Web Credentials.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39607604709708204)
,p_name=>'P100_SHOW_WEB_CREDENTIALS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21770559592887450)
,p_item_default=>'Y'
,p_prompt=>'Edit Web Credentials'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the <em>Edit Web Credentials</em> switch to manage your OCI Web Credentials.</p>',
'<p>Disabling the switch allows you to only edit the <em>Compartment ID</em> after successfully entering the web credentials for the first time.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39609608909708206)
,p_name=>'P100_OCI_WEB_CRED_HEADER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39607175268708201)
,p_prompt=>'Web Credential'
,p_source=>'OCI Credentials'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Denotes the name of the Web Credential which is used for accessing the <strong>OCI Generative AI</strong>. Navigate to <strong>Workspace Utilities</strong>, <strong>Web Credential</strong> to review existing Web Credentials.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46532116191531270)
,p_name=>'P100_AI_PROVIDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21770443850887449)
,p_item_default=>'CURRENT_AI_PROVIDER'
,p_item_default_type=>'ITEM'
,p_prompt=>'AI Provider'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:OCI Generative AI;OCI,Open AI;OPENAI'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46566025085632200)
,p_name=>'P100_OCI_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39607175268708201)
,p_prompt=>'OCI User ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_help_text=>'<p>Enter the Oracle Cloud Infrastructure <em>User OCID</em>. &PRODUCT_NAME. does not store this information encrypted.</p> <p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm'
||'">Oracle Cloud Infrastructure Documentation</a></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46566101290632201)
,p_name=>'P100_OCI_PRIVATE_KEY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39607175268708201)
,p_prompt=>'OCI Private Key'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'<p>Enter the private key in PEM format for OCI authentication. &PRODUCT_NAME. stores this information encrypted and secure, so it cannot be retrieved back in clear text.</p><p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.orac'
||'le.com/iaas/Content/API/Concepts/apisigningkey.htm">Oracle Cloud Infrastructure Documentation</a></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46566204338632202)
,p_name=>'P100_OCI_TENANCY_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39607175268708201)
,p_prompt=>'OCI Tenancy ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the Oracle Cloud Infrastructure <em>Tenancy''s OCID</em>.</p>',
'<p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm">Oracle Cloud Infrastructure Documentation</a></p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46566329413632203)
,p_name=>'P100_OCI_FINGERPRINT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(39607175268708201)
,p_prompt=>'OCI Public Key Fingerprint'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Enter the <em>public RSA key fingerprint</em> for OCI authentication. </p><p><a rel="noopener noreferrer" target="_blank" href="https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm">Oracle Cloud Infrastructure Documentation</a'
||'></p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46567480196633702)
,p_name=>'P100_OPENAI_API_KEY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21770654502887451)
,p_prompt=>'OpenAI API Key'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the <em>API Key</em> to authenticate against the AI Provider.</p>',
'<p>Example: "sk-pr..."</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47536814991214696)
,p_name=>'P100_OCI_REGION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21770559592887450)
,p_item_default=>'us-chicago-1'
,p_prompt=>'Region'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The Oracle Cloud Infrastructure Region. The default is us-chicago-1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'US Midwest (Chicago)'
,p_quick_pick_value_01=>'us-chicago-1'
,p_quick_pick_label_02=>'US East (Ashburn)'
,p_quick_pick_value_02=>'us-ashburn-1'
,p_quick_pick_label_03=>'US West (Phoenix)'
,p_quick_pick_value_03=>'us-phoenix-1'
,p_quick_pick_label_04=>'Germany Central (Frankfurt)'
,p_quick_pick_value_04=>'eu-frankfurt-1'
,p_quick_pick_label_05=>'UK South (London)'
,p_quick_pick_value_05=>'uk-london-1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47536889862214697)
,p_name=>'P100_OCI_COMPARTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21770559592887450)
,p_prompt=>'Compartment ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The Oracle Cloud Infrastructure Compartment ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14507982378375032)
,p_validation_name=>'P100_OCI_USER_ID not null'
,p_validation_sequence=>10
,p_validation=>'P100_OCI_USER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P100_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(21770872189887453)
,p_associated_item=>wwv_flow_imp.id(46566025085632200)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14508621485375039)
,p_validation_name=>'P100_OCI_COMPARTMENT_ID not null'
,p_validation_sequence=>20
,p_validation=>'P100_OCI_COMPARTMENT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(21770872189887453)
,p_associated_item=>wwv_flow_imp.id(47536889862214697)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14508782550375040)
,p_validation_name=>'P100_OCI_REGION not null'
,p_validation_sequence=>30
,p_validation=>'P100_OCI_REGION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(21770872189887453)
,p_associated_item=>wwv_flow_imp.id(47536814991214696)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14508864895375041)
,p_validation_name=>'P100_OPENAI_API_KEY not null'
,p_validation_sequence=>40
,p_validation=>'P100_OPENAI_API_KEY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(14836858994424748)
,p_associated_item=>wwv_flow_imp.id(46567480196633702)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14508050783375033)
,p_validation_name=>'P100_OCI_PRIVATE_KEY not null'
,p_validation_sequence=>50
,p_validation=>'P100_OCI_PRIVATE_KEY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P100_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(21770872189887453)
,p_associated_item=>wwv_flow_imp.id(46566101290632201)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14508455160375037)
,p_validation_name=>'P100_OCI_TENANCY_ID not null'
,p_validation_sequence=>60
,p_validation=>'P100_OCI_TENANCY_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P100_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(21770872189887453)
,p_associated_item=>wwv_flow_imp.id(46566204338632202)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14508545572375038)
,p_validation_name=>'P100_OCI_FINGERPRINT not null'
,p_validation_sequence=>70
,p_validation=>'P100_OCI_FINGERPRINT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have a value.'
,p_validation_condition=>'P100_SHOW_WEB_CREDENTIALS'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(21770872189887453)
,p_associated_item=>wwv_flow_imp.id(46566329413632203)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21839852193558462)
,p_name=>'Toggle Switch Visibility'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SHOW_WEB_CREDENTIALS'
,p_condition_element=>'P100_SHOW_WEB_CREDENTIALS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21840290627558464)
,p_event_id=>wwv_flow_imp.id(21839852193558462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39607175268708201)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21840719608558465)
,p_event_id=>wwv_flow_imp.id(21839852193558462)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39607175268708201)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17089523668838218)
,p_name=>'Change AI Provider'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_AI_PROVIDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17089458085838217)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_app_setting.set_value(''AI_PROVIDER'', :P100_AI_PROVIDER);',
':CURRENT_AI_PROVIDER := :P100_AI_PROVIDER;'))
,p_attribute_02=>'P100_AI_PROVIDER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14509288267375045)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide OCI Web Credentials'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21770559592887450)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14509520900375048)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Hide OpenAI Web Credentials'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21770654502887451)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14509669091375049)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Hide Complete Button OCI'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21770716045887452)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14836941891424749)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'Hide Complete Button OPENAI'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14836719044424747)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14509470960375047)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Show OCI Web Credentials'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21770559592887450)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P100_AI_PROVIDER'
,p_client_condition_expression=>'OCI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14509360679375046)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'Show OpenAI Web Credentials'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21770654502887451)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P100_AI_PROVIDER'
,p_client_condition_expression=>'OPENAI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14509755533375050)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Show Complete Button OCI'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21770716045887452)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P100_AI_PROVIDER'
,p_client_condition_expression=>'OCI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14837039380424750)
,p_event_id=>wwv_flow_imp.id(17089523668838218)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>'Show Complete Button OpenAI'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14836719044424747)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P100_AI_PROVIDER'
,p_client_condition_expression=>'OPENAI'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21771143214887456)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Complete OCI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_vector    vector;',
'    l_response  clob;',
'begin',
'     ',
'    apex_application_admin.set_remote_server(',
'        p_static_id              => ''EBA_GENAI_OCI'',',
'        p_base_url               => ''https://inference.generativeai.'' || :P100_OCI_REGION || ''.oci.oraclecloud.com'', ',
'        p_ai_model_name          => ''cohere.command-r-16k'',',
'        p_ai_attributes          => ''{"compartmentId":"'' || apex_escape.json(:P100_OCI_COMPARTMENT_ID) || ''","servingMode":{"modelId":"cohere.command-r-16k","servingType":"ON_DEMAND"}}'' ',
'    );',
'    apex_application_admin.set_remote_server(',
'        p_static_id              => ''EBA_VECTOR_OCI'',',
'        p_base_url               => ''https://inference.generativeai.'' || :P100_OCI_REGION || ''.oci.oraclecloud.com'', ',
'        p_ai_model_name          => ''cohere.embed-english-v3.0'',',
'        p_ai_attributes          => ''{"compartmentId":"'' || apex_escape.json(:P100_OCI_COMPARTMENT_ID) || ''","servingMode":{"modelId":"cohere.embed-english-v3.0","servingType":"ON_DEMAND"}}''',
'    );',
'    ',
'    ',
'    if :P100_SHOW_WEB_CREDENTIALS = ''Y'' then',
'        apex_credential.set_persistent_credentials (',
'            p_credential_static_id  =>  ''EBA_CREDENTIALS_OCI'',',
'            p_client_id             =>  :P100_OCI_USER_ID,',
'            p_client_secret         =>  :P100_OCI_PRIVATE_KEY,',
'            p_namespace             =>  :P100_OCI_TENANCY_ID,',
'            p_fingerprint           =>  :P100_OCI_FINGERPRINT',
'        );',
'',
'        :P100_OCI_PRIVATE_KEY := '' '';',
'    end if;',
'    ',
'',
'    -- Test AI Provider',
'    l_vector := apex_ai.get_vector_embeddings(',
'        p_value             => ''apex'',',
'        p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end',
'    );',
'',
'    l_response := apex_ai.generate(',
'        p_prompt            =>  ''apex'',',
'        p_system_prompt     =>  ''test'',',
'        p_service_static_id =>  case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_GENAI_OCI'' else ''EBA_GENAI_OPENAI'' end',
'    );',
'',
'',
'    -- To turn the switch off by default from now on, since the web credentials have been entered successfully.',
'    if :P100_SHOW_WEB_CREDENTIALS = ''Y'' then',
'        apex_app_setting.set_value(''WC_STATUS'', ''ENTERED'');',
'    end if;',
'',
'    -- To Complete Setup',
'    :INITIALIZED_AI_PROVIDER := ''YES'';',
'    apex_app_setting.set_value(''AI_PROVIDER_INITIALIZED'' ,''YES'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Invalid web credentials: #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21770872189887453)
,p_process_success_message=>'Success: Web credentials verified successfully.'
,p_internal_uid=>7713632804735014
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14837132247424751)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Complete Open AI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_vector    vector;',
'    l_response  clob;',
'begin',
'     ',
'    apex_credential.set_persistent_credentials(',
'        p_credential_static_id   => ''EBA_CREDENTIALS_OPENAI'',',
'        p_key                    => ''Authorization'',',
'        p_value                  => ''Bearer '' || :P100_OPENAI_API_KEY );',
'    ',
'',
'',
'',
'    -- Test AI Provider',
'    l_vector := apex_ai.get_vector_embeddings(',
'        p_value             => ''apex'',',
'        p_service_static_id => case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_VECTOR_OCI'' else ''EBA_VECTOR_OPENAI'' end',
'    );',
'',
'    l_response := apex_ai.generate(',
'        p_prompt            =>  ''apex'',',
'        p_system_prompt     =>  ''test'',',
'        p_service_static_id =>  case when :CURRENT_AI_PROVIDER = ''OCI'' then ''EBA_GENAI_OCI'' else ''EBA_GENAI_OPENAI'' end',
'    );',
'',
'',
'',
'    ',
'    -- To Complete Setup',
'    :INITIALIZED_AI_PROVIDER := ''YES'';',
'    apex_app_setting.set_value(''AI_PROVIDER_INITIALIZED'' ,''YES'');',
'    ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Invalid web credentials: #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14836858994424748)
,p_process_success_message=>'Success: Web credentials verified successfully.'
,p_internal_uid=>11528234420693128
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Sample Vector Search - Log In'
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
 p_id=>wwv_flow_imp.id(26574451341740977)
,p_plug_name=>'Sample Vector Search'
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
 p_id=>wwv_flow_imp.id(26576121640740987)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26574451341740977)
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
 p_id=>wwv_flow_imp.id(26574981175740985)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26574451341740977)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26575349719740986)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26574451341740977)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26575747214740986)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26574451341740977)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26578349336740989)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1571647155878922
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26578884020740990)
,p_page_process_id=>wwv_flow_imp.id(26578349336740989)
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
 p_id=>wwv_flow_imp.id(26579397603740990)
,p_page_process_id=>wwv_flow_imp.id(26578349336740989)
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
 p_id=>wwv_flow_imp.id(26576480843740988)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1569778662878921
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26576904830740988)
,p_page_process_id=>wwv_flow_imp.id(26576480843740988)
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
 p_id=>wwv_flow_imp.id(26577461357740989)
,p_page_process_id=>wwv_flow_imp.id(26576480843740988)
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
 p_id=>wwv_flow_imp.id(26577920170740989)
,p_page_process_id=>wwv_flow_imp.id(26576480843740988)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26580240364740990)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1573538183878923
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26579824549740990)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>1573122368878923
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(32055906392990968)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'----------------------------------------------------------------',
'-- Remove Tables',
'---------------------------------------------------------------',
'drop table eba_vector_datatable purge;',
'drop table eba_vector_moviedata purge;',
'',
'drop table eba_vector_ai_helper purge;',
'',
'----------------------------------------------------------------',
'-- Remove Package',
'----------------------------------------------------------------',
'drop package eba_sample_vector_search_pkg;'))
);
end;
/
prompt --application/deployment/install/install_create_sample_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(32061015984982819)
,p_install_id=>wwv_flow_imp.id(32055906392990968)
,p_name=>'create sample data'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------------------------------------------------------------------------------------------',
'-- Create Sample Dataset',
'-------------------------------------------------------------------------------------------------------',
'',
'create table eba_vector_datatable (',
'    id               number generated by default as identity primary key,',
'    col1             varchar(255),',
'    col2             varchar(255),',
'    col3             varchar(255),',
'    col4             varchar(255),',
'    col5             varchar(255),',
'    col6             varchar(255),',
'    col7             varchar(255),',
'    col8             varchar(255),',
'    col9             varchar(255),',
'    col10            varchar(255),',
'    embedding_vector vector )',
'/',
'',
'create table eba_vector_moviedata (',
'    id               number generated by default as identity primary key,',
'    title            varchar2(255),',
'    moviedescription varchar2(4000),',
'    actors           varchar2(1000),',
'    genre            varchar2(255),',
'    release_date     date,',
'    rating           number,',
'    embedding_vector vector )',
'/',
'',
'create table eba_vector_ai_helper (',
'    execution_id     number primary key,',
'    output           clob )',
'/',
'',
'',
'-------------------------------------------------------------------------------------------------------',
'-- Create Oracle Text Index for the movie data (AI generated data) table.',
'-------------------------------------------------------------------------------------------------------',
'begin',
'    execute immediate ''drop index if exists eba_vector_moviedata_desc_ftx force'';',
'',
'    execute immediate ''begin ctxsys.ctx_ddl.drop_preference( ''''eba_vector_ds'''' ); exception when others then null; end;'';',
'',
'    execute immediate    ''begin ''',
'                      || ''ctxsys.ctx_ddl.create_preference( ''''eba_vector_ds'''', ''''MULTI_COLUMN_DATASTORE'''');''',
'                      || ''ctxsys.ctx_ddl.set_attribute( ''''eba_vector_ds'''', ''''COLUMNS'''', ''''TITLE,MOVIEDESCRIPTION,ACTORS'''' );''',
'                      || ''end;'';',
'',
'    execute immediate    ''create index eba_vector_moviedata_desc_ftx on eba_vector_moviedata (moviedescription)''',
'                      || ''indextype is ctxsys.context ''',
'                      || ''parameters (''''datastore eba_vector_ds sync (on commit) memory 500M'''')'';',
'exception',
'    when others then',
'        -- Oracle TEXT is not available. Ignore the error.',
'        null;',
'end;',
'/',
'',
'-------------------------------------------------------------------------------------------------------',
'-- Create Oracle Text Index for the "data" (manually uploaded data) table.',
'-------------------------------------------------------------------------------------------------------',
'begin',
'    execute immediate ''drop index if exists eba_vector_datatable_desc_ftx force'';',
'',
'    execute immediate ''begin ctx_ddl.drop_preference( ''''eba_vector_2_ds'''' ); exception when others then null; end;'';',
'',
'    execute immediate    ''begin ''',
'                      || ''ctxsys.ctx_ddl.create_preference( ''''eba_vector_2_ds'''', ''''MULTI_COLUMN_DATASTORE'''');''',
'                      || ''ctxsys.ctx_ddl.set_attribute( ''''eba_vector_2_ds'''', ''''COLUMNS'''', ''''col1,col2,col3,col4,col5,col6,col7,col8,col9,col10'''' );''',
'                      || ''end;'';',
'',
'    execute immediate    ''create index eba_vector_datatable_desc_ftx on eba_vector_datatable (col1)''',
'                      || ''indextype is ctxsys.context ''',
'                      || ''parameters (''''datastore eba_vector_2_ds sync (on commit) memory 500M'''')'';',
'',
'exception',
'    when others then',
'        -- Oracle TEXT is not available. Ignore the error.',
'        null;',
'end;',
'/',
'',
'-------------------------------------------------------------------------------------------------------',
'-- Add Sample Data',
'-------------------------------------------------------------------------------------------------------',
'begin',
'    -- Star Wars movie data',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Star Wars: A New Hope'',',
'        ''A farm boy joins a rebellion against a tyrannical empire and discovers the power of the Force'',',
'        ''Mark Hamill Carrie Fisher Harrison Ford'',',
'        ''Sci-Fi'',',
'        to_date(''1977-05-25'', ''YYYY-MM-DD''),',
'        4.7 );',
'',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Star Wars: The Empire Strikes Back'',',
'        ''The Rebel Alliance battles the Empire as Darth Vader pursues Luke Skywalker'',',
'        ''Mark Hamill Carrie Fisher Harrison Ford'',',
'        ''Sci-Fi'',',
'        to_date(''1980-05-21'', ''YYYY-MM-DD''),',
'        4.8 );',
'',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Star Wars: Return of the Jedi'',',
'        ''Luke Skywalker leads a mission to rescue Han Solo while preparing for a final confrontation with Darth Vader'',',
'        ''Mark Hamill Carrie Fisher Harrison Ford'',',
'        ''Sci-Fi'', ',
'        to_date(''1983-05-25'', ''YYYY-MM-DD''), ',
'        4.6 );',
'    ',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Star Wars: The Force Awakens'',',
'        ''A new threat emerges as a scavenger discovers her connection to the Force'',',
'        ''Daisy Ridley Adam Driver John Boyega'', ',
'        ''Sci-Fi'', ',
'        to_date(''2015-12-18'', ''YYYY-MM-DD''), ',
'        4.5 );',
'    ',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Star Wars: The Last Jedi'', ',
'        ''The Resistance struggles against the First Order while Rey seeks guidance from Luke Skywalker'', ',
'        ''Daisy Ridley Adam Driver Mark Hamill'', ',
'        ''Sci-Fi'', ',
'        to_date(''2017-12-15'', ''YYYY-MM-DD''), ',
'        4.3 );',
'',
'',
'',
'   -- Other movie data',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Interstellar'',',
'        ''A team of explorers travels through a wormhole in space to ensure humanity''''s survival'',',
'        ''Matthew McConaughey Anne Hathaway Jessica Chastain'', ',
'        ''Sci-Fi'', ',
'        to_date(''2014-11-07'', ''YYYY-MM-DD''), ',
'        4.8 );',
'',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''Inception'',',
'        ''A skilled thief who steals secrets through dream-sharing technology is given a chance to have his criminal history erased'',',
'        ''Leonardo DiCaprio Joseph Gordon-Levitt Ellen Page'',',
'        ''Sci-Fi'', ',
'        to_date(''2010-07-16'', ''YYYY-MM-DD''), ',
'        4.7 );',
'       ',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (''',
'        The Matrix'',',
'        ''A computer hacker discovers the true nature of his reality and his role in the war against its controllers'',',
'        ''Keanu Reeves Laurence Fishburne Carrie-Anne Moss'', ',
'        ''Sci-Fi'', ',
'        to_date(''1999-03-31'', ''YYYY-MM-DD''), ',
'        4.9 );',
'    ',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''2001: A Space Odyssey'', ',
'        ''A voyage to Jupiter with a sentient computer turns deadly after it begins to malfunction'', ',
'        ''Keir Dullea Gary Lockwood William Sylvester'', ',
'        ''Sci-Fi'', ',
'        to_date(''1968-04-03'', ''YYYY-MM-DD''), ',
'        4.6 );',
'           ',
'    insert into eba_vector_moviedata (',
'        title,',
'        moviedescription,',
'        actors,',
'        genre,',
'        release_date,',
'        rating )',
'    values (',
'        ''The Cave'',',
'        ''A team of divers becomes trapped in an underwater cave system with predatory creatures'', ',
'        ''Cole Hauser Morris Chestnut Eddie Cibrian'', ',
'        ''Horror'', ',
'        to_date(''2005-08-26'', ''YYYY-MM-DD''), ',
'        3.2 );',
'end;',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_helper_package
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(15355493030024754)
,p_install_id=>wwv_flow_imp.id(32055906392990968)
,p_name=>'helper package'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_sample_vector_search_pkg authid current_user',
'as',
'--',
'-- using the AUTHID CURRENT_USER clause, as the package code references',
'-- the CTX_DDL package, which is often only available through the CTXAPP *role*.',
'--',
'',
'--------------------------------------------------------------------------------',
'-- returns TRUE, if Oracle TEXT and the EBA_VECTOR_MOVIEDATA table is ',
'-- available, false otherwise.',
'--------------------------------------------------------------------------------',
'function has_moviedata_and_oracle_text return boolean;',
'',
'--------------------------------------------------------------------------------',
'-- returns TRUE, if Oracle TEXT and the EBA_VECTOR_DATATABLE table is ',
'-- available, false otherwise.',
'--------------------------------------------------------------------------------',
'function has_datatable_and_oracle_text return boolean;',
'',
'--------------------------------------------------------------------------------',
' -- deletes rows where mandatory fields are null ',
'--------------------------------------------------------------------------------',
'procedure delete_invalid_movie_data;',
'',
'end eba_sample_vector_search_pkg;',
'/',
'',
'create or replace package body eba_sample_vector_search_pkg ',
'as',
'',
'--------------------------------------------------------------------------------',
'function has_moviedata_and_oracle_text return boolean ',
'is',
'    l_count  number;',
'begin',
'    select count(*)',
'      into l_count',
'      from (',
'        select 1 ',
'          from eba_vector_moviedata',
'         where embedding_vector is not null',
'           and rownum            = 1',
'        union all',
'        select 1 ',
'          from sys.all_objects',
'         where owner       = ''CTXSYS'' ',
'           and object_name = ''CTX_DDL'' ',
'           and rownum      = 1 );',
'',
'    return l_count = 2;',
'',
'end has_moviedata_and_oracle_text;',
'',
'--------------------------------------------------------------------------------',
'function has_datatable_and_oracle_text return boolean ',
'is',
'    l_count  number;',
'begin',
'    select count(*)',
'      into l_count',
'      from (',
'        select 1 ',
'          from eba_vector_datatable',
'         where embedding_vector is not null',
'           and rownum            = 1',
'        union all',
'        select 1 ',
'          from sys.all_objects',
'         where owner       = ''CTXSYS'' ',
'           and object_name = ''CTX_DDL'' ',
'           and rownum      = 1 );',
'',
'    return l_count = 2;',
'',
'end has_datatable_and_oracle_text;',
'',
'--------------------------------------------------------------------------------',
'procedure delete_invalid_movie_data',
'is',
'begin',
'    delete from eba_vector_moviedata',
'     where (    title            is null',
'             or moviedescription is null',
'             or actors           is null',
'             or genre            is null',
'             or release_date     is null',
'             or rating           is null );',
'',
'end delete_invalid_movie_data;',
'',
'end eba_sample_vector_search_pkg;',
'',
'/'))
);
end;
/
prompt --application/deployment/checks
begin
wwv_flow_imp_shared.create_install_check(
 p_id=>wwv_flow_imp.id(32062519748238492)
,p_install_id=>wwv_flow_imp.id(32055906392990968)
,p_name=>'Database Version is 23ai or higher'
,p_sequence=>10
,p_check_type=>'EXPRESSION'
,p_check_condition=>'sys.dbms_db_version.version >= 23'
,p_check_condition2=>'PLSQL'
,p_failure_message=>'This sample application requires Oracle Database 23ai or later.'
);
wwv_flow_imp_shared.create_install_check(
 p_id=>wwv_flow_imp.id(21718182730517258)
,p_install_id=>wwv_flow_imp.id(32055906392990968)
,p_name=>'VECTOR data type available'
,p_sequence=>20
,p_check_type=>'FUNCTION_BODY'
,p_check_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    execute immediate ''declare l_vector vector; begin null; end;'';',
'    return true;',
'exception',
'    when others then',
'        return false;',
'end;'))
,p_check_condition2=>'PLSQL'
,p_failure_message=>'VECTOR data type is not available in this database.'
);
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
