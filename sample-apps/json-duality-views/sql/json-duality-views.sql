prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
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
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>20
,p_default_application_id=>9300
,p_default_id_offset=>0
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 9300 - Sample Duality Views
--
-- Application Export:
--   Application:     9300
--   Name:            Sample Duality Views
--   Date and Time:   17:20 Thursday June 11, 2026
--   Exported By:     ORACLE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     12
--       Items:                   51
--       Computations:             1
--       Processes:               21
--       Regions:                 39
--       Buttons:                 24
--       Dynamic Actions:         10
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              4
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   2
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          2
--   Version:         26.1.0
--   Instance ID:     746039064640963
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Duality Views')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'JSON-DUALITY-VIEWS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D34EECD14C472E5A1BB288515A37BD39E9E588F9C03EAF0DDC480C8571CB32E1'
,p_bookmark_checksum_function=>'SH512'
,p_max_session_length_sec=>28800
,p_max_session_idle_sec=>7200
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(5528715502646777181)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Sample Duality Views'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'26.1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'JSON Relational Duality Views'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461203171649
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.::&DEBUG.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(5528716360632777186)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(5528717148573777225)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528711458928777174)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528711691430777174)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528711967981777175)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528712266698777175)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528712560022777175)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528712927456777175)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528713183957777175)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528713469576777175)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528713810178777175)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528714042946777176)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528714414946777176)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528714658944777176)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5528715017676777176)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
);
end;
/
prompt --application/shared_components/duality_views/purchase_orders
begin
wwv_flow_imp_shared.create_document_source(
 p_id=>wwv_flow_imp.id(5528755791817793164)
,p_name=>'Purchase Orders'
,p_static_id=>'purchase-orders'
,p_document_source_type=>'DUALITY_VIEW'
,p_location=>'LOCAL'
,p_object_name=>'DV_PURCHASE_ORDER_DV'
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'Purchase Orders'
,p_format=>'JSON'
,p_row_selector=>'.'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5528752710548793164)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'DATE'
,p_static_id=>'DATE'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>false
,p_selector=>'date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5528753001405793164)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'QUANTITY'
,p_static_id=>'QUANTITY'
,p_sequence=>20
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_selector=>'quantity'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5528753277985793164)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'STATUS'
,p_static_id=>'STATUS'
,p_sequence=>54
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector=>'status'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5528753528855793164)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'amount'
,p_static_id=>'amount'
,p_sequence=>34
,p_column_type=>'SQL_EXPRESSION'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_expression1=>'quantity * unit_price'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073993661083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_ADDRESS'
,p_static_id=>'customer-address-profile-column'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>200
,p_selector=>'customer.address'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073474392083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_CITY'
,p_static_id=>'customer-city-profile-column'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector=>'customer.city'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074231892083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_COMPANY_NAME'
,p_static_id=>'customer-company-name-profile-column'
,p_sequence=>18
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector=>'customer.company_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073713141083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_EMAIL'
,p_static_id=>'customer-email-profile-column'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector=>'customer.email'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074173111083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_ID'
,p_static_id=>'customer-id-profile-column'
,p_sequence=>17
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'customer.customer_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073542553083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_NAME'
,p_static_id=>'customer-name-profile-column'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector=>'customer.name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073740796083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_PHONE'
,p_static_id=>'customer-phone-profile-column'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>20
,p_selector=>'customer.phone'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073828004083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_STATE'
,p_static_id=>'customer-state-profile-column'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2
,p_selector=>'customer.state'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074105983083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'CUSTOMER_ZIP_CODE'
,p_static_id=>'customer-zip-code-profile-column'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>10
,p_selector=>'customer.zip_code'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073369864083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'DELIVERY_INSTRUCTIONS'
,p_static_id=>'delivery-instructions-profile-column'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>500
,p_selector=>'delivery_instructions'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074820169083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'LAST_UPDATED'
,p_static_id=>'last-updated-profile-column'
,p_sequence=>64
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>false
,p_selector=>'last_updated'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526072667048083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'LINE_ID'
,p_static_id=>'line-id-profile-column'
,p_sequence=>2
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_selector=>'line_item_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074685645083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'LINE_ITEMS_POS'
,p_static_id=>'line-items-position-profile-column'
,p_sequence=>24
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_selector_type=>'LINE#'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'LINE_ITEMS'
,p_static_id=>'line-items-profile-column'
,p_sequence=>19
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_is_common=>false
,p_selector=>'line_items'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073060141083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'APEX_METADATA_ASOF'
,p_static_id=>'metadata-asof-profile-column'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_is_hidden=>true
,p_is_common=>false
,p_selector=>'_metadata.asof'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073016325083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'APEX_METADATA_ETAG'
,p_static_id=>'metadata-etag-profile-column'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_is_hidden=>true
,p_is_common=>false
,p_selector=>'_metadata.etag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526072572501083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'PO_ID'
,p_static_id=>'po-id-profile-column'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073169384083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'PO_NUMBER'
,p_static_id=>'po-number-profile-column'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>20
,p_selector=>'po_number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074586179083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'PRODUCT_PRODUCT_CODE'
,p_static_id=>'product-code-profile-column'
,p_sequence=>23
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'VARCHAR2'
,p_max_length=>20
,p_selector=>'product.product_code'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074473667083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'PRODUCT_DESC'
,p_static_id=>'product-desc-profile-column'
,p_sequence=>22
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'VARCHAR2'
,p_max_length=>200
,p_selector=>'product.desc'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526072835884083114)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'PRODUCT_ID'
,p_static_id=>'product-id-profile-column'
,p_sequence=>3
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_selector=>'product.product_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074388399083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'PRODUCT_UNIT_PRICE'
,p_static_id=>'product-unit-price-profile-column'
,p_sequence=>21
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_selector=>'product.unit_price'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526073270942083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'TOTAL_AMOUNT'
,p_static_id=>'total-amount-profile-column'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'total_amount'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(5526074805494083125)
,p_data_profile_id=>wwv_flow_imp.id(5528745426034793161)
,p_name=>'UNIT_PRICE'
,p_static_id=>'unit-price-profile-column'
,p_sequence=>44
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_data_type=>'NUMBER'
,p_selector=>'unit_price'
);
end;
/
prompt --application/shared_components/navigation/lists/home
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6861230487627790390)
,p_name=>'Home'
,p_static_id=>'home'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6861230544363790391)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About JSON Relational Duality Views'
,p_static_id=>'about-duality-view'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-info-circle'
,p_list_text_01=>'Review the JSON Relational Duality View DDL, generated JSON schema, and sample JSON document shape used by the app.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6861230651258790394)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Purchase Orders Inbox'
,p_static_id=>'purchase-orders-inbox'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-inbox'
,p_list_text_01=>'Explore the email-style parent and child pattern with purchase orders in the left sidebar and details on the right.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6861230746608790394)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Purchase Orders Report'
,p_static_id=>'purchase-orders-stacked'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Use the vertical parent and child pattern with the purchase order parent above nested line items.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5528717148573777225)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5525473001901041223)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'About'
,p_static_id=>'about-duality-view'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-info-circle-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5528730276131777305)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5528730885879777306)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5528730276131777305)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5528731370975777310)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5528730276131777305)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5528716360632777186)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5528727756670777273)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5524172151712860029)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Purchase Orders Inbox'
,p_static_id=>'purchase-orders-inbox'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-inbox'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6861230858131790396)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Purchase Orders Report'
,p_static_id=>'purchase-orders-stacked'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,6'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC9D07BC644595FFCFA9DBFD7A12714802929392516054C0411125AAB8BAABABE21A00C92B88EB1AC075FF2AAB28710405810DEA82A40194B0';
wwv_flow_imp.g_varchar2_table(2) := '0A12070926720E029224CD0C332FF5FFF73DDDB7DFED7EFD665EBFF7861986773F7D6ED5AD3A75AA6E9D5F9D3A55D5AF5FB2F16BBC0746D103E3001A45E78D17351B07D0380A46D503E3001A55F78D171E07D0380646D503E3001A55F78D171E07D03806';
wwv_flow_imp.g_varchar2_table(3) := '46D5032306D0A86A1D2FBCD4F4C03880961A552E9E171907D0E2E9F7A5A6D671002D35AA5C3C2F320EA0C5D3EF4B4DADE3005A6A54B9785E641C408BA7DF979A5A5F7D002DA4EBB6FBDC411B35E8A02F6C34EDC07FDE0BDA76FF03F7DAE6539F09224EDA';
wwv_flow_imp.g_varchar2_table(4) := 'D074C85ED3F63F64AFE05338ED403DD7E5D4CA28EF3307EEB5ED67F6172994ECC13CB57A6BFCCD71E446D94FED5F6B8FE4B42DAFBAB7CDEB11EFB4A8A759563BF9AD693BA81F725A48F7BDEAD98B1D40D30E3E7CFAB4030E3D66FBCF1D74D5B69F3BB05A';
wwv_flow_imp.g_varchar2_table(5) := 'ADF6DFD3D7DB734F6F4FF73DDEDB7D8F59FF4C28A5D2CCF284494199E2A40D4D69A6656966969523D49971C818E0575E576966D65511290C792AA3BAFAFB7A66F675CF0BEAEFED6E29576F8B67333D2BCD74C928754D98994A65F1D5CA0FD4215EDA209E';
wwv_flow_imp.g_varchar2_table(6) := 'A47AD2842EB5053EA5AB9E26BE853CF756FBEEC969DA818755A71D78F83141EABB571D312D152E16004D3BE0E0E9DB1F70C855A2AAF5F55F65C98FF672697A562E5BD6D565E50913AC6BE244F32C6B34D7DDCD530A32F7463A91FEBE3EEB993BD77AE7CD';
wwv_flow_imp.g_varchar2_table(7) := '33AB56490AAA2A5EEDEFB79C2231BF21A348F5747737EA49A59215EBAF674790E7C30335F1A94ECB096E973C486DE73127DA167C79424761F56833517FF5AA22A03A123146CC698CE40C4B4C589BCF1F76556F4FEF557D3D3DD3FBBABBAD5F0A1E54581D';
wwv_flow_imp.g_varchar2_table(8) := '5E04490E8008AB0300C9CB2529A724D065958A0D2A27FE28473D8ADB42AE1C1C84EE1EDC94EFEFED35C24828DC002F7990DEC91A34047F5ED45DB2A13C615461F56813A072308D4A5487855F150085B995E9358D18739B5EAA54AC244B53AA540C45A198';
wwv_flow_imp.g_varchar2_table(9) := '9C06B5BF5AB5508EC0D63B7F7EC407F1B81B729C0CF11BA478CA324B9948D6044B61EECAAAD64880A24EB10D7C540ECB90D34086622A4B79C59A3EEE6E51B7BB01E494D5EB53E8EE965F6D65E699631A568F7E358194C6B4ED6D844D3BF0D063ACDA7FB4';
wwv_flow_imp.g_varchar2_table(10) := '49390D325D74AE0870008C9E575EB11E4D4174B472073EE289A94D600B2B23300C640EC428C7E8471696ADAA696D20B71E531B98E67A5557F0F5F4D4336A016DE99933C7BA67CF6E9A0E0108E0808B7A0873222F08C0E4248B485A0EB8865CC96E2D9FCB';
wwv_flow_imp.g_varchar2_table(11) := '19FB10201D7ECCD8CB6D96B8C80034ED80C3A74F3BE8B0AB7AE6CD3FBA5BFE4900A4AEB868829409A03201A22C7FA76BF264EB9A34497D3E306A838F9B40E4EEB53C859433599008C917B9BBA5BA0F9564DD9AFC12AB5FE2A1AEB2EA212C552AF58C5A40';
wwv_flow_imp.g_varchar2_table(12) := 'F9AE2953ACB2CC3246BE2A8C0CC018EDAFBFC720CB155CF55BFDBDA26DC4958CF52BE7EFA7E757EF23104907D316A1B3BD4800F4D6CF1E3CBDAF77FE55D5FE6A4C5728AC241F050A3F451DDB271F018B41D83A2AAB02074A8B90B8F8CD6ADD0E2F231A22';
wwv_flow_imp.g_varchar2_table(13) := 'BF965ABBBB0B642949EF5E4BC8EF2A0F2F94271543D28364B5F0698817F3B126B49DF708E75E7534F291AD729481F0E99011A4B60790C4ECEE861C354E4FAFE2A76AD34DAEC3A20251B231BE6868A92BBB8AD594BB3A2D27753A1DE8EE46276279189929';
wwv_flow_imp.g_varchar2_table(14) := 'CBF4A8341BB84211520A00EBD734136091A2E07077C3520C656528C334D5277F09B059FD220ED51F1B018A66CACBA734EACE95DE60529DC5B637D21581BF2F6FAB0685BB5BBC972C6BCA32D3CBD912712D22108D3980D4F947B7761800C0AF982FDF0240';
wwv_flow_imp.g_varchar2_table(15) := '44BE3A5ABC8602C8273D57300AC0EF2931254152867B0BC80428C00251BE51564A0B70A99C7BBD8CC29465963229342A1FB8E1DB00F652458EBD887A63FA93FC01AE9618799092E1A59D2C0AA26C4A0628C39792CFD32DE21DC5BAF83FD5EA20DD8CB651';
wwv_flow_imp.g_varchar2_table(16) := '69B4028AE5B7DBEFE063FA7BFBA6F76B24D28979C7A52CB330FFF23D0047A38C3ADBDD3548DD4CF1463A11A5479AD2AB7A0E791AE94C6D5625C50CE5611924C0F28B674001E569AD2160A36DC8224E19289743FBB14858B2F07DE4BBC18B1CCAF5C8D907';
wwv_flow_imp.g_varchar2_table(17) := '18E49116E5BCB6C203D03C97F4AEF85110CFC1B7B86F9ACEA66913722C9B3166008AD596F62272E536425AABCE454150B133DDDD00014A44318004E5413C533448804181E447BAAB9C0890E4E4308A2FEAAD87C825B9959015D4AF4D4681B2351F90E3AB';
wwv_flow_imp.g_varchar2_table(18) := '41F83E10ED848F77E0B92C801092562477375782BB1BBC41EE4A59523E72ACC71044630620333F9A8E2F129D67F52B9459576C3D69205007BB7B747C2311DEFA037232ADAC20FC9F7AB20126ACC0209285C82D48D49B17A887D1C672D922D4F4584F6E0A';
wwv_flow_imp.g_varchar2_table(19) := 'DCD51E91A91D800D50036098DC959792B9BB919F13ED4426217C4B2E558F1EABB6A5B110342D477455530B84504248719C548E1A58CE4328373A5D797C5296191D5FA47CC4935F249408511E4561054A958A85B550D8FAEC2E251705E471B58D7600BE90';
wwv_flow_imp.g_varchar2_table(20) := '97A7B784E401A0061055AEC812D35CBEBC6F63CD8ABC4B529CC5CE58B4278D8510D3D4C5F215854000A6415A45E15CC63E4F7D2F044BA2E1DB54350AC2A20415955488C3C3EA2A48721100880821C1972008D8D4F3E279D04DC0027499B61786E453DDAC';
wwv_flow_imp.g_varchar2_table(21) := '16830F8B95C90957B9A22CCA97B48F057087027D917F89898F91433D6A00E5D6075F844E84004874BA2C02E069028B14E08E7A07BA12F0010A46330064BA885C29B05740C131053CEE6E65F91E1075040F37F16191A00020BE0DE939291F4B127215CF93';
wwv_flow_imp.g_varchar2_table(22) := 'DDDD92A8B9351617FCEC5111223312DBDCDCDD3CA5A036D94B6E120EF5186C30A625E10D73F0010C562D013A1AE66E29CB8C7CB7A12F971F539CFE88BB0F9408CB24E000C2A214C0CA1416944F43E2832765AA5772B12A0084B4760428F3F2C86BC7B3C4';
wwv_flow_imp.g_varchar2_table(23) := 'A68D81154AA37DB9BEDE9EA3C34268D4E7B278A633A1A2D2886365B03631C5615DB4E487BF5F615EBE18021E2148C6A56AED2C0156827A7279C5B279DCDD0D50053015B7FAC573C352622DE5A80FC0CE64383DC874D176EA0F8B84AF53071AE00A392A5B';
wwv_flow_imp.g_varchar2_table(24) := '74F05564C9FFC80A8DB691A302108E98BB3A39358B495966280CF29616D2C9580C3A3EB2EA8A90A6E44AC956E4CFCA4461010EED2A13F6EA445EC94D9F94D5EA6AB214C800D084E2460E1B9510400BB02A8F36A44CE5EB642A431DF0006A48C5E383234D';
wwv_flow_imp.g_varchar2_table(25) := '3A3202442A4F46C890A5E25D03EC24BE86081D8EA6B9693485ADDFA6A72CB394654647E6B288A7AC964E67A388E87C59193A3965CA53A7C7C82D978D9032B9F228832C77B7DC42942ADA29D628B796CBDDA3FE9449A6C874612DF0AB008E1E2DC0999299';
wwv_flow_imp.g_varchar2_table(26) := '887AE2D9065F001BDF0A900720EAF2E0E419FF0E8227E490F15A27E97034AFA05E1D4DF142594664910A59467AF1398F930EE9D9452913102181428F86A2DD95231E400520205BC885725138216072774B5956230137659921DBB8249B00727725D74909';
wwv_flow_imp.g_varchar2_table(27) := 'EEAEFB52FEF1EA3B47F38669348535E71C0D38985EC291D4967F84DAC88B69C2CC5024233648D6461A52B1AA616D3812E8D1F4043848871742F12ADAF8F0CC723A65991107145083A14D847CEA089F4B531FCF45369E998EB08CADA0248DF7A02C7CC572';
wwv_flow_imp.g_varchar2_table(28) := '4B5D7C947ED08801C45F094467BA5BA952B15841D597D8ACA40002E00A0554E5DB0473FD46194D47F0F1FDE79465F58CA1032400B8388362C55424011710535F2EC1DD6BEDD21E0DE075F73C2B427737A62AA6484069850B7EDE87FD1DF7E67205B6A526';
wwv_flow_imp.g_varchar2_table(29) := 'DAD0E508DE68C400EAEE9E2F7DA1D6A16BC50F6134130ECD258324E7158B8525027090843715418D808D2F9DE514001440482F552A8615B3A12E405CA4163EEAA6AD415A1DB65AA516F6F1C77A0F8C1840D65591BE506B0D00ED3A3E655958819465F5EA';
wwv_flow_imp.g_varchar2_table(30) := 'CC004AF06A5AC16AF00C60505883B44C269E178A15901C709CF1802C56A14E9465294F98F30F0A051C401C20911CE2ED789001B5827710EF7842A307460CA054AD6E9C4B717763CA4A59D600950D71C52A0C47B64E4C1F29CB8C6983D558CAB290C5B23C';
wwv_flow_imp.g_varchar2_table(31) := '17411CF9F841EE9E2747180A8FD8026E2A9332C915212365D92066E4972A95003C6DA15D8398C61306F5401A9432DC84BEC29FB94841743824042D504249C0597F8D35EC2D9B6C64DBBE69137BEB261BDB5B36DA70A1F4D68D375299C1BCC8D86ED3375B';
wwv_flow_imp.g_varchar2_table(32) := 'E42F4C0E32A085F12DA2FC2DD65BD7BACAE505F6CFE2C8EC2D18834EEB4F9D16C8F9FB7ABB633ACA9F8B21D30FD3453FD345713AD25432A15CB28FEFB2B31DBBDF67EC3FF67F7DD1373EF5095B560B8D625FBDD6E323065056996498FA9842048CA68EC0';
wwv_flow_imp.g_varchar2_table(33) := '22E5D494613250C92AE52E9BA4E962924EC2974A1AE2BD26E89D53725B9AAE110328EF04CEB5585EE3E8E669EE6E4C67F82E41A95E8D2B3DCB0422CF59AD47566AAEF68296569ACF8AAE758035DEFEB51FA96B76042F221F8869AA54A918CB6880D22A25';
wwv_flow_imp.g_varchar2_table(34) := 'A6320184D5139B7631A5E959C7A20DD61F5DF22BDBEBCB5F6F4B7B7CE9AB56A3AFD89E8AEFF92F5F6BCF77D457ECBD871D69BB1EF205DBFDC82F070FBC7B281DA2EC50752CEAF4434E9C612F69CFAAF1C24B5964C400EA9B5FF0816459E8170083258A50';
wwv_flow_imp.g_varchar2_table(35) := '7B3B323586254A596686157237D3C72C16E3C6D5DDDD6373D4C173B419D86485B49B4DFA5CE5CD9DFB8ACD9E33C7E62AAD89A76EB9E609943D92DF2B077DBE7CAEE0815732910B455A9DFFD58C8705EA1F785FDE7969A2110328933358AA54CC00850912';
wwv_flow_imp.g_varchar2_table(36) := '32D38007AB04E11BB9BB0120286599A54C9432734B965FD56ABF0EC1FB0DD0E5698455C94B5966EC16B3C42634AFFDE583290F1E08BE28AB347737784C97A7649489AD01014B49E39F45D003695432A5B4860225C8A52894160A4F35D1912FAB00A8A06A';
wwv_flow_imp.g_varchar2_table(37) := '7F9FECCFC08874016A909225D755A62C991305D22460702E157FD32EABC21997B284A3AA35D2645DA88BF4578BD8D39A58E98A0541B994BD5AD52E51F5D4B43CC22631F2F9B23C1467549A6688C741A4142A0D1BA0E9551C8A1D689C4AA6B77A9DC2463D';
wwv_flow_imp.g_varchar2_table(38) := '36104C9175DB6BA71DED07871F6CDFFBFCE76C872D370F3F8BA30BBE5B1D3E970AA240CEACF8BB73F278767719A1011A903A10731FC877F7818C7A8C1477979C7A422170275DA4B4D556585E5B119FB5E30EDCCF3E32FD9D3675B96595BAF00F03E20D2B';
wwv_flow_imp.g_varchar2_table(39) := 'AE681BAEB986ADBBDA6AB6AAE4B02A25DD5E63D7A80084E38C42BBA64C31C250A4948F324B95DAF4C6CE2F4AEECAD3274CB424ABD3B69FB03CCA78DB9B37B1033FB0976DAE8DB7893A749DC0E69B14B7B23A7A5B6D046EFFA68D0DDA6C9DB5CDC50F9097';
wwv_flow_imp.g_varchar2_table(40) := 'D1D2794BF14FDF6A0B7BF7365BD98E9B6F669B2ABF8BB2E2E1E3EEB6C6CA2BD9346D60BE6BEBAD6CE7ADB7B46D36DCC0565C7619734792194A5C7395958D7A36D486A7BB5334A8D2550E7E363E57509992A6D8293A8B5B6FF537D867F7789FEDF5F669C1';
wwv_flow_imp.g_varchar2_table(41) := 'B7B05B57A9649FD8F5DD76C2C19FB7EF1FB4BF7DF3D3FBDAA777DBD576DE7A4B5B7BD5552C4BA352CBC2AA1FD3FC3169290A648585C571F79A32140EA7A558A8B04C3A1BE34CCB3475ADB4CC32366942C56E7FF0613BFE1717D82DF7DE1732DFB4D61BED';
wwv_flow_imp.g_varchar2_table(42) := 'C8BFFF3B3BEAA31F09DAF77DEFB192EA5945CADCF7BDBBD8511F53FA3F7CD88E823EFA613B31DADD680000100049444154E2231FB235A64E8D66A0EC770958B5BC01BE2F7DEC2376E0FBF7B20D04027737F876DA62733B4AE58FFCFB0F1B96C2DD43C672';
wwv_flow_imp.g_varchar2_table(43) := '9326D921FBBCDF0EFFBB0FDA46B21E4FBFF0A27DFFDCF3EDB2DFDDA241916CABF5D70B0006F3026EEE6E150D8CE5A74CB6D5565C2106CAC77679977D51F5F16EFBECB4834D5D7659ABD5BA00414B40561A691BFAFAE61B80A1BC6BC4248D2A429E3B21CA';
wwv_flow_imp.g_varchar2_table(44) := '84DF244B91B2CCD89C2C294EE73DF1DC7376C7C38FD8DF5E7A595555EDB6FB1EB0332FBBC25E7879B6ADBCFCF2EAE4E5AC22A0BD63CB2D6D9F77EE68AB4F9D6A7FFDDBF376E7C38FDA332FBC64CB4E9E6C932756A2392877BF3D77B3B76CB8819EABF687';
wwv_flow_imp.g_varchar2_table(45) := 'FB1FB07BFFF2B84D1558777DEB36B6EFFB76B5A9CB2D6326E52E3369A214BBA26DBAEEDAF6E9DD77B5AE52C9B8B2946C95E59733A69C0902C03C81FE4EB5EF81C79FB05E01BF9C95549C96C33D34F5CBD2B2A29CA395627F7D3A77775B4E80DA7A83F56D';
wwv_flow_imp.g_varchar2_table(46) := 'BFBD76B72F6990ACBDDAAAC39237744D8B3E278DB48A2CAB98DECEF2CB7D70C76159F087C23FD2721C3F0867B8BFDA97179308AF9152F09FF811867EED31E93140535567B359C91F243E2F40FDF2DAEBED82DF5E633DF2A54C2BB88A27DB62FD756CA2A6';
wwv_flow_imp.g_varchar2_table(47) := 'CCEB6FBFC38E98F123FBF2E93FB1834F38D93EF31FDFB7071E7FD2A64C9C687BBC6D7B5B63A595ECD1679EB1AF9FF95F76F459FF655F3AED8C88B399F98ECDDE6C6F5EBB36255237C474B6A3ACD17B04B07238C96E6AAC152F960390560666CAB6615CDD';
wwv_flow_imp.g_varchar2_table(48) := 'DA763875E6A5F6D16F7EDB3EF59DE3ECAC5F5D61F73CF6179BAD0502C5A74C98606F577BBE7BC0676D534DC35845D297441A31804C16A85FA38EA98BA90770B061587C49AC52492335BE472C05F3CC8ACBA5F4225FC405407CA55535EAD6597D750338EC';
wwv_flow_imp.g_varchar2_table(49) := 'D79087550ABF4A40E00B6055CF946FE6EEE6A592CD9957FB6ED2C66BAE696FDBEC4DB6D62AAB5896526CE0BD222B315553DCAA2BAC6049FC57FFE14FA12CACC72B72EEEF78F8614D91F75B5972DEB4F65A9665035D82E5C3FF7ADF766FB575E4ECBABBB5';
wwv_flow_imp.g_varchar2_table(50) := 'BB00201668B94993E5C3AC6A4975B7E3CBD378B739B23ECFBEF8923DF0C41376E6E55708CCA7C77478CB3DF7C6FB2063F5A9538D29776B59CD2C0DB42B97B32484A368555653A05ECCDDA3D3DCEB1D2CAB412789C13CCB2C6503C4B39B5BBB2B13DFC7E4';
wwv_flow_imp.g_varchar2_table(51) := '0BECB0F9A6F6E7871EB6ABA56CCCBDB9EB53A32827CB43C8C89F3BEF15BB553ED2939ABA565D71453B749F0F187E044EF8361BAE6F38D19CB74D9E38C124C4EE7EE4B1383EB1FA35BFA7D79E78F6D9785A6BE595AD94B28833B5FCE9C187EC863BEEB24D';
wwv_flow_imp.g_varchar2_table(52) := 'E47BBD57209A2CCB1099851BEF79F7A38FD9CD77DF63AB4D5DC170A657D0545460596094F7EB561B9E7EFE05BBE2E65BEDB873CEB399D7DF602F69450B88D67DC36AF6F1F7BCCBD6AFFB680B14B61832D388EB543FBB4BA90250CA320B3F46A3980EE56C';
wwv_flow_imp.g_varchar2_table(53) := '8C698BE988E7E1D6E1EEC6CA8795D7834F3C698FFCF5AFB234C0A44582F8E48045220A9875E75D72B6CFB7079F7C32AC0C32F698B69D7DF513FF68EFD05480E549E651046B1105EB37DAD7D7D71F4F254D53EEE2D313B5BEAC29E56C5907A696DDB67DAB';
wwv_flow_imp.g_varchar2_table(54) := '6D2D40861CE5E71FCAA3FC07543725D79105E5D034CF1F6E487D7DF2871E7DEA693BFBF2FFB32B6FB9CDB0924C5F5BCA399FBED5963A842E0F57DCABC697465A13BFCAC514D65ADEDD8D7D1A96F52CEFDDE956716195D441DA76D6C3C047C9522CDD6706';
wwv_flow_imp.g_varchar2_table(55) := '184EBEE0227BEC99676349FC91E93BA1F601666292E749CD2654AE7B5247F7D8B57FBADD3EF7BDE3ED609D3D5DC40896CF85C3FB4F728E29F64A4FB782AAB18C6764EB213E65819F2539AD040828313274031C0F3EF994FDECD7578725FBF87BDE6D38CF';
wwv_flow_imp.g_varchar2_table(56) := 'CA6A7C00E7DB346D7EE49D3B19BECD8F75B6F794AC6183A1C3083DF1A2ACCF8F2EFEA5ACDF9D467BBAB4A8F8D04EEF90155A6D28698B2D5D9A1859DD993A9EE98825BCCC44B310945BA73C033F290E5463FAA19B6A3955ED4C479E1C4B14F6C0937F8DD1';
wwv_flow_imp.g_varchar2_table(57) := '97A56453975BCE529649696563C99BA564287CC565A65896920027CBA17A96D36A8BFC5EF964F7683A39534E29BE04F2E87C7CA9675E7841CDACC61ED11BE54CA37880B4C19A6B182B341475E7238F5AAFDA61850B99D7FCE9CF3145ADA8151B7B41856C';
wwv_flow_imp.g_varchar2_table(58) := '33D53FA9322100F690C0062F656C9417D68FF778ECE9670C704F96FFF7FE77BCDD68F388456BB4D227EA88118B682D386200F5CDEF33565938D1D1A856C92DCF38D0FCF45C4A59538EBB47A78455B1DA95C3AB1F70C9D15D4BBECD7E7BEE6E5FF8F03EC6';
wwv_flow_imp.g_varchar2_table(59) := '1ECC6EDB6D1B007AFCD9E78CCED8698BCDECA87FF8881DF1E10FD941DA80C4FFD97CDD756361F4B8AC19DB0158284636FECC61DAC7D96FAF3DECD00FBEDF0EFEE0DEF25D5634C0738796E48264AD11853B16E582EBAEB7A79E7FBE903A383A9C7E185C6A';
wwv_flow_imp.g_varchar2_table(60) := '708ABB9BBBDB431A4CBFBAE9E6F0D9B2948C15E12ADA4670F728E4EEC640B0615C550DAE4EF4350C91C13262006595CC3299D64C7E8FBB4B8F55034CACC420E2554D59742A168633AB58A66B6A294E7D1157E7B84842021011AA795DE52EEB92E3BAAC46';
wwv_flow_imp.g_varchar2_table(61) := '3E3BC3EFDFE1EDB6B7767BD7D44E3123F3E7BFB94A56A86AABAEB882EDA4E38EF7EFF876FB879DA71BABA695D5D17FFDDBDF6CC64517DB7C9DF8FF5656E4ECCBAE0C656CBBC946F6D1774FB70FBD7307DBF88D6B6AA9FF849DA5FDA52700A4EA6DFD30B5';
wwv_flow_imp.g_varchar2_table(62) := 'FEE981876CE60DB3629A2AE6A34AFC9494D40701D9626EE7717737364CF7D2B6C3E48913621A03C0485A56FB53DB6FB2B125F150273BEE1F9EBEA375954A642F903C25C34FCD64D1DDD55659237484AEFAB4A25E60E10564A605E42D24AB64344AE6C334';
wwv_flow_imp.g_varchar2_table(63) := '5C6A8A375D6A1800003890520C90F137562CD3E36772F512A44380D01D355800B05B8EEBCB2FBF6C4C03EC857CF5931FB3E5B50C67C7F77FAEFC8D5D78DD8D76CA0517DB57CF385BCBF1C7AD477B4697DC78937DE3ACFFB6FFBAFC4ABB58F173AFBEC6BE';
wwv_flow_imp.g_varchar2_table(64) := 'F53F3FB7838E3F254631F5BCA2A5FE05D7DFA8FDA153ECC4F32EB49992F38B6BAEB56FFDF7CFEC5F7EFC13BB59CB67EAC4B7631AFABE5643EC30E7EF305FFB4E17680FEA3F7E768E9DA0F2F73EF6B8BD61EA8A76F4BEFF681F7BF7CE61119FD5CE3460A3';
wwv_flow_imp.g_varchar2_table(65) := 'BE9190BBDB3AABAE2AABF87E3BEC431FD0EAEBDDD6AD15DAEDB28CD10EE5BF799D7562CF8BBD29ACE72776DDC53EA081D5EA9B0DAA5F6587D457EF20EE61278C1840A0B68160752E2FC834C59E4D50B96C29CB84AD1A38DCBD164FC9146BDB40CABBF68D';
wwv_flow_imp.g_varchar2_table(66) := 'EE7AFC71FBDDDDF786E5D8E48D6FB44A57D966DD75B79DFECBCBECC4F32FB473B591F890566828BCBFBF1ABBCFBFBEEDF7F613F93E279C7781FDF0A24BEC722D8999728A0AED563BD97D3E5F4038E9C299F6C30B2FB1CBC487E5E9ABAFC4F08558EA03CA';
wwv_flow_imp.g_varchar2_table(67) := '3F6AB79AF7CA1B8B5FC294F24B4D2B4FCABA55CA6563EF083FEBF6871EB19937CED2D8C927E0BCD4F0C32CA5B09E9BAEB3968E7226D887E598FFC3BBDE193269874BD45AABAE6C3BEBBCEF1372E8575E7E795B5ED699239A35569A1A7CBA89ABF0D18046';
wwv_flow_imp.g_varchar2_table(68) := '4FE17FCABF0B8BA37E401EFD1DBAD21E5DA14447D1D411778139B3CC0C50E8A5DDDDDC467A55F5CEF54E971CA4DCAFDDE353B41AC38A7CFFDCF3EC168189E99025F87CBD7CAFE6733A00DE9C004A9ECF6AA85FD3679ED71A521E300DC5872C8044582C4B';
wwv_flow_imp.g_varchar2_table(69) := '9DA4219B38ABB6EFFDEF79F61D59BBE3CEF985FDF9C1878BEC1DC7A913EBC7FE136D9CA081B3DBF6DB1A53AEBB9BBB6B25F606DBF7BDEF890D4B570D2FCD9E6357DFF6077B52CE3620A19F94DCFC51391536082BE4EEE63636571AB198AC141626659981';
wwv_flow_imp.g_varchar2_table(70) := '6457D89025D40B1516D4486C1FE9EBEE31F68C181939079DF790B6F6AFBBF536BB56FB218F2ACEDED270E4E5325E8D90D5DDEF6419D9877A40FB56007834F502CABBB412C46FBB5D1BA90095A96925AD46DD6B2A5F66D224632B824706D37F6ADABE48BE';
wwv_flow_imp.g_varchar2_table(71) := 'D95C0DAC7007723DE43A5083524A868E52265D41F299727D295B9F91CF6149A547F691EFD1AE20675D0022480E338AA763DAF192569E50B1493A79EE92192DA564104BF509EAA84932CF41CA9FA0A57A969255E928F51E7C4B02652985FF33545BB224C5';
wwv_flow_imp.g_varchar2_table(72) := 'EB63C3BCB0704CA180E83E1DD2F2DCAE28D3297B45E7FEF65AE3B8C6D4274162666142BF07C9A7E43CB24F473ACA1AF4097D494F833286999086C937982D1B9C440AE75E6C200649E96C2ABA0FDD832CB73F282710C2196C47E405EDF80EFBB01CD60F2A';
wwv_flow_imp.g_varchar2_table(73) := '6CC7B724A6EDBCD556D6552AD335C32626F4DBE5539DF08B0B342D3E149B89C5C2CFBCF8A276ABAFB48B6EB871501E7C29CB8CB3C3200D44425660E4B552E86BD2B2ADC9C37E1E318058AD2CC8B20CB705EFD4F29B7D99A5953EB6CBCE36515676B8FD91';
wwv_flow_imp.g_varchar2_table(74) := 'F3D1B77F7CE0419B71E1C5C6A628FE1179FC85C74FAFFCB5CDBCE63A63B58ADF134EB21CE4AA7C43785A0959F84684AD79A37D1E318032A1DCDDA3FED8E7D1861FDF55C65412F252F82C84A441ED5E20690A604F6369A52C25ABF55274554737A6AF3BB4';
wwv_flow_imp.g_varchar2_table(75) := '84E778E48FF73DA0239B6EFBC92F2FD76AEF267BF99579E69ECCEA3A305D582E05833E38CE29CBC45A6B49ABBEF8BACCA042C34C500B86C93988ADD448495966386959A9D408C349D3CBC54B29B4948CE663B99EF8DB7376DF5F9E30F652164E7F11DF63';
wwv_flow_imp.g_varchar2_table(76) := '22C2C715BE768903E29EDE81EF42353A7001112C0F8EF50F675E62C7FEFC1C3B4F9687AFA1D0BFF47913490F0B10D5C84A5966946BE84B9BC28DCC0E23A943FEB6EC0023AC8D4C686E2ADD23D56824AB0342531A2F7F86F6730E3969861D72E2290BA583';
wwv_flow_imp.g_varchar2_table(77) := '4F38C50EFAC1C976F0F1272F947738F21627CF51A79D6E1CA7B4EDC405246289D84CBCE2E6DB6283950516FD1D7DAD3EC7CA37597731B0AAC5416E675D4233E2C1D94606837A01D52F306B4C0094D7E01E4D134E6A619ECE0BF222102B833973E6DACBF2';
wwv_flow_imp.g_varchar2_table(78) := 'FC99CF9B48A7D04DCFE261B5315BD3E3CBF3E6C517C4F8221669AD7CC37966D93D4FAB3896BF8B83D89E6085592997AD52EE9CF2B25DA5921CF3AC4EC44B5A0916FA5C7A707763EA826C88CBDD2327B32CC28E6E75E6540F4717A82198C49C5A1B9DB2CC';
wwv_flow_imp.g_varchar2_table(79) := 'E22055BBCC11EAB9B5429C41460C04D01819AD3C7C6BF0433BED60C57D91569E053DEFA3D5DBE947FEB39DF9A5235ED374D6BF1C69677DF9283BFB5FBF64677FE54BF6932F7FD17679CB36F21252E3F5D105BBCC6D575F2DFAD234D128D76964A0C64E4B';
wwv_flow_imp.g_varchar2_table(80) := '720027338829C541E62BAD283F487B0F1C9E42B1325083DD3D2C93BB9B22C685D9C58C422E50715EC6B292172F8250258C9F4539749FF71B27ED7CCDF38D2BAF2431E4206978B4FC32536C9DD55631BEE5B7B4D194AE8AF577CF8F3FB464FA6AF4887484';
wwv_flow_imp.g_varchar2_table(81) := '6ED011BA82889316BA9265EF93A56FF07718193980B28A498341283CBEFBCC6620A413748000010C1BE2C2EAF032102B375E2E58019922582120B2CA0ACBDB67767FAFF12DC32E99FEEDDEB4B17D768FDD8CF31F7738C43CCC4FCE8D5FC151461C69685A';
wwv_flow_imp.g_varchar2_table(82) := '1B6EC83404F0F3EA7AB47C1E6ED91A5FAFF5C8912ECA40662D4FBBF2C36C4B8FEAE51DF2767896CC35B565EA7B7CCE3C1D1DA19B48A3AF44ADFACA267535D83B8DA44E0BE4FC4C334D4857065BEF5063E5A5C62AB9E94319D04F889501646C74B1E1C8CB';
wwv_flow_imp.g_varchar2_table(83) := '3631EB61059DC4F33D69CE84F8CB0B00D0552A195FDF3860EF3DE3449C34B10EFB83F2FEF2CC33F1D710FC7544348C99CB00001000494441542734539B773D725CA90C259E7EE965D649F953B59A62F7F8E9175E4084E18B71EA7FEACC4B1B72380C9E71';
wwv_flow_imp.g_varchar2_table(84) := 'C14C0B3AFF223B053AAF16CED019E1A992F1935F5D6ECFBDF852C8E0E6EE9AC23275E1406F3030A1F88735DA89A6CFAD70A12BA890D47174C400CA4A99A52C6B540868AA8C0A8D209C6694D4C82C44529619C0892499D70887B82DA39DEC4FEEBA4B581E';
wwv_flow_imp.g_varchar2_table(85) := 'CE808A6C9572D976DA62B3F8FBA9381B2A662E244E5B3908652717657642BFFDC39F63254415588E0BAEBBC13A290FEFFFDD7A9B3DFFD26C19DCAAAC51AFDD70FB9D4D327EA1A5FA79D75E6FE75D07DD607C7BE07CC509493FF7B7D7D945D7CFB21766CF';
wwv_flow_imp.g_varchar2_table(86) := 'A61941BC9304463CBFE107E584754A599667C53797727DF1E5C046468791D421FF007B561A008252DDDDF8931B2C0AE6D27D602458E1023CE4433878EE83F948595196E7B37BBCCF38C218EAAF21CAB2445B6FB841FC25C61B5759B969F415AA1C1C1570';
wwv_flow_imp.g_varchar2_table(87) := 'F5B1BEBEFE0043AF2CCA70897D995C51288D25F070CBE67C7DAAB71A2AD479B35A87CCDED636F4F7AB6D224235B637A7FEAAD2FBD4F6BEBC199260D6D7D32DEA89787EA3AFA194520C76E28D3CF57B435F723BF2F44EC39103A84D4DEDAC0E7E4C5FDD2A';
wwv_flow_imp.g_varchar2_table(88) := '619930A93935F54041DE4ACB2F175F59D8F36DDB1B3E0F66F6F9975F8E4E836DB69C74FE7A01BFA19C6536EDCD9BD8A7777F9FF167C2800F9EA581585CD067840B7B9F52B9CBF06DE853162E41025F3B9DE4B2169497F32C2CEC1C406D248633ACBD9A1C';
wwv_flow_imp.g_varchar2_table(89) := '18343E6773770BE4BB9B4C4433992E8D2C5E5AB1F8B8BB6DB0C6EAB6C3669BDA248D0CC0C34EEC059A2AE6CC9B1F3C73B472E09B87D7DD7E87F56B44628998CE365D676D63B405D3C26E6A4E4AAEFD93D41125B5CF4C85CD74F7A82F4B1DCA48B5F2A68B';
wwv_flow_imp.g_varchar2_table(90) := '58D2739686909165968912F5CA4AF16D84E85F81C3EB564C62E2832C40C1800D924B11BC913B706BD5571F2BEA81EC8E62A923EE2198639ED51E0F2320A625BD7083552F9EB2CC525623A6AE9C4C79BC287FB6CC48A30C1DC017B3AEB8E53663D38FEFD9';
wwv_flow_imp.g_varchar2_table(91) := 'FCE0BC0BE22F35E6C94CC3833FF48A96AC3374D078ED9FFF2C3FA2CF7EF3FB3FDA1FEE7FB0EDE934658A04C8F8E58FD3BFF8CFF6F3AFFF6B47F4B57DFFD1F88E0EF2267495ED6CEDC9742AE33BFB7DC6D6D72071F7F8E6E1917FFF776DDB70CE37BE6641';
wwv_flow_imp.g_varchar2_table(92) := 'C77CD5FEF7E8AFD8B9FFF6753BF7DF8F89F04CEDFDACBDDA6AD67A3158999AA092FCC49465AD2CD6AA2F003A8869980969987C0B665347B8BBF0E09AD4AB3117038C7E8D80A275692704D0754D9A142F95E7F39374FF79C5FFD9995A69FCFB7FFDD4EE7A';
wwv_flow_imp.g_varchar2_table(93) := 'E431E3AF2B9E7DE12589ABC62EEE866BAE612F68E79A6F2C9E7CC185C66AE8B9175FCC452C34E44F96579F3AD5D6D47E5227B4F272CB594A7A4FD5E0EEB6FA4A9DCB5855DB125DA592249825C998BAECB2C36BC72A2B1BBE1E44BD5DE59A0C2B5E58743D';
wwv_flow_imp.g_varchar2_table(94) := 'BB480AB1206BB954A7BB2BCB6BFA9ADFD9F95C51DA2800D41B954BA311E2EB84601A9652348E344E7E01529182AF785399E223CE297F95F9D35F5F6D58A07E99EB3ED16FFFF827EB5598A5645BAEB79EADB9D24A06A8CEBFF686F8931BCA15E52C288E4C';
wwv_flow_imp.g_varchar2_table(95) := '96D09D524FCB1E0E7E58A732D87F2AEEE1F468A0752283BEA15EDEA1F88EBC3FFE121B84844D7900AB40E826F2D5F7ACA8233E825B1A419928D237BFDB7AE5F7B00148C8BC0A98DCDD52960599144D1AD3521E46DC167EC1C70A07E0C0CD33009AAD5D53';
wwv_flow_imp.g_varchar2_table(96) := 'E22CDDF77EC7342B97B258959006DF70085EFEFA9543DD532E9C699DD085F2C58AFB40A75DF2CB8ECA53D73957FDD6D846A0AD00872FEA931EA4FD9F53726AD736E59D7CDE8576AAA6EF670B169777421ED3132BE1940D4C5D8005FF143DB5D39769454D';
wwv_flow_imp.g_varchar2_table(97) := 'D991501A4921CA64A59AD71FFE8CFC1FCEB86476C8AA9180C4093C53143CF84684508DA1B33BA38BBF05BBF0BA1B03305DA592EDB2CD36F6CEADB630BE4BD48934643DF3C20B76E98DBFB30B64BD3A217C2E96DCD44778B1F6633A290FEF6F6EFBA3BDF0';
wwv_flow_imp.g_varchar2_table(98) := 'F2C03ED08D77DEDD68C72F7E73B59D73E5AFED1702D9F9D75C5F4B27CC49FB4117DE30CB7E75F32D3AD99F4B336AA4FEAE454C6AD0D4D4F24CBFE7BA201CA42F1BD9356200815A97856950A1C1236BCAC24B61F6D9B57DFC99E762F5B5CCE44976C05E7B';
wwv_flow_imp.g_varchar2_table(99) := 'DA561BAC6F5DA536FEC0502265CAF5A939DC8AACBAC20AB6FEEAABC7EA8F15602BADB7FA1B6C59D58535ECD7AA0F6B6ABA0022698C7E0E78D75F800CF256597EF9007F94A9AFA04286565758DBE5A64CB68DB592DC44D3F3C66BAF15BFA1B88164AEB7EA';
wwv_flow_imp.g_varchar2_table(100) := '2AB6EE2AABD83AF281F8E91ACA149AA1969809324156B8B03C9049370D3DE53A535AB0EAFD231CE16DE4002A544807367C1C754621AB101D9BE8E3CF3E6B675E76B93D230B8244FE2AF5F0BFFB80EDF296AD8D0D4777BA929CE1115F37FDCC6EEFB5130F';
wwv_flow_imp.g_varchar2_table(101) := 'FDBC9D74E8816DE9F883F6B79DB7DAD2B2D4BEBB4A9A463FF6EEE90B9471C22107C4EF220E6A15689012B3946CCF69DBD949871D64271F7E5084D19EC30EB493BF70A89D72C4A136E388C3EC5F3FFE512B17A6A741F2EA0955E98169ABD517227BB0BE7A';
wwv_flow_imp.g_varchar2_table(102) := '491E11B5EF910E45A1B21CE12C913B2CDE113BA377964CFE45D7DF68FC4C1CAB98F5DEF0063B60EF3D8CDF2FDC62BD751BCBECE108764FC13F65C284F825337ECDAC9500665769680BE7E65A1976D9940943CB98326142D463AD979BD177963CAC686BDD';
wwv_flow_imp.g_varchar2_table(103) := '3CB36D91137B63D6E602146031CF7281AC54A958A6A57C9E9687AA32EA7481163EB3A1DF2D2F33549886CAE828DDDDA2316A90B977547424CC7CA18CF3A2B32EBBD25891B87BFC6622A7F5FFF64F9FB463F7FBB4EDFDF6B7C50F61323D55CAE521ABC1C4';
wwv_flow_imp.g_varchar2_table(104) := 'CF9EF78A3D3F7B8E68765B62BB605E77F331415120CA9B3B7F5EDBB2CFEBBCAA46738C0DD062B9A6B8B4FF8AEA785EBE11BF8CF6B7975EB241A43CBE38477D4D6579501F1034513D8DD9813FB38A3FEFD1C2879531EF8D1C421BE24FB49A640DF1303600';
wwv_flow_imp.g_varchar2_table(105) := '1A42F8A24AE6C539CE38E7EA6BEC6B679C6D1C6BB014C6995E457B2CFCEFB0233EB28F9DF2CF87D889877CDEB6D179D950B046A9276B65F3A9EF7CCF3EF9ADEFB6A54F1FFB7DBBFCE69BE533B5DF2F615576C62F2FB74F7DE7B8B6E591FB4FC71E67A75D';
wwv_flow_imp.g_varchar2_table(106) := 'FCCB21BB04CB7ADE35D7DA27BFFD5DDB5744997DD52628E2DFFE5EA47FF9C767861F158AAFFB5108E5FD20E2AD94643DCB932659A952311633CC12F421D35C2B6FA7CFAF4900F1927440B7CED86EBAFB1E3BE6ECFF368E3AD833E23BD71ACCD625AB3365';
wwv_flow_imp.g_varchar2_table(107) := 'C204E3175739EA18CA32F20FF0F8FBF61D37DF344EF7391269A51D94B7BAF69CDC9CAA0751D248E7677F172663E337AE31A82C09BC0B213BCB51F7969BC7EA72A72D36579B36AFC595B6D3169BD95B36DAC0DCDDC2B791EF44B9E190BB5B3E4B306D31B5';
wwv_flow_imp.g_varchar2_table(108) := '41EE3E9CE243F2BC660194BF1196E7EE471FB3332EBDCC8EFDD939DA93B9D8AED2B1C67D8F3F6EFCBCCB0B9A9AE0C9F95B4376A477DF7E3B3BE4431FB04387207E0583537F46AEB5B9B294ECDDDB6C6D87EC33B40CFCB35DB77DEBE0D2423B96C0B541FA';
wwv_flow_imp.g_varchar2_table(109) := '361D0A0FD5863C9D5F49CBE4DFA07C93FF5614D82F191D01CB6BE0E9B3F696B5287BA8F86B1E40BC182318DFE0F6871E369C6B7E82E5C8193FB6C34F3ECDBE72C699C60F76C203EF205227B2AAA9C8CC57CA6539C383A9AB5432FE747950D97A82BB1BD3';
wwv_flow_imp.g_varchar2_table(110) := '67A55C6A5BBE522E5B4532A8A75E6420900E532933A619EAA894C5BB00EA2A95CC87B03C80879557EBBBF29CD340C5B5185629E3DBA5B5C78EEFA9E312AF7E8161D74827B1B98793FDB496F98F3CF5943DF4E45386BF3494103AFD99175FB0479E7ADA1E';
wwv_flow_imp.g_varchar2_table(111) := 'FEEB536DE9D1A79FB117EB3BE0EDE4F457FBEDB9975F5AA08C479E7EDA1A3BC78300E0E1CDBC30676EDBFA8BED7AFC9967ADF567F8F2367178CAB73B01459E86AF84F3CC8F7B413CE77963112E55001A4987CCD1AAE427BFBA42D6EA543BECA41FB6A52F';
wwv_flow_imp.g_varchar2_table(112) := '9C729A5DAD699129A25D1D3D3A1FE387380F3F796819879F74AAFDE7E5FF67AC88FAB4EA01ECB9ACAA00C8D74E2FB9FE063BF8F893ECD09366D4DB31C30E3DF194A0F87BB6134EB66FFDCFCFAC4F00AC8A2C60974B691F02260EABE3474F274F369EDB73';
wwv_flow_imp.g_varchar2_table(113) := '8E2CF5750F207C20FED5C1FE7BED1E7B49EC27B5D2E7F6DCCDB6587FDD213BBF94259BBED5E6F12F0A5ACBE6CFFBEFBD87FCA4AD4C1EB03E9AB7AC7EC90762671B45F0337E9FDF7BCF463BF68F78EDF9F32A4FDEDFF3CBB5020F40AC4B880040212A1E86';
wwv_flow_imp.g_varchar2_table(114) := '79C31AE17FBDEE96F1C3EC9F61B195CBA5380AE187C4DFB7DD5BE317C25AC35DB77D8BADB3DAAAC66AAB9DD02C65B6D93AEBD87BC5D75A367F266F8BF5D7B3946522F9315E07910257799CE28DD65ACB767FDBF6C68F88526E37B5873F26D84D4E7E9076';
wwv_flow_imp.g_varchar2_table(115) := 'AA77DC720B2B7775193E93990A5BEDAACA1AE5000A3009648D50CE7580456980B556A27687E775EF44D7BA62E4F75ABF4A058AD0A1ED6861D2553458DA956DA405C710B73A161ABC12D836AEE2EE6EEEAED8C02779B2A447CA609DF876040E75FCF54C77';
wwv_flow_imp.g_varchar2_table(116) := 'B7F1DCAF1020892D3E9E54464EF9B8131DDD31B25B4F4FAFDD7ADF7D76E9ACDFD9253A9D6F477CDDE2C127FE6AFD526ABB5AD804E467E938DD6F57FE921B6F0AF97FB8FFFE76C523ADAAD3D17BFEF217B5E1A6166A6E175F69A13E8052F481B03E90BB5B';
wwv_flow_imp.g_varchar2_table(117) := '0628B492E3D43DBE99A80DC488CB72B92CA08DE10568C750DC6B4FD43C6D465E2A05F37FC97EF08BF3AD1DF1C39EB7DD77BF0DE544B3F2BBF2D6DBECF8F32E18287FEE79F60348328FFBDF73EDB89FFEAF5D7ADD8DE144B7EB255656D7DCFA7BFBEEFFFC';
wwv_flow_imp.g_varchar2_table(118) := 'DCBEFBDF3F0BFADECFCF19902739B40D471C00B5CAA8CA110740912E10C944E9E341BA59836C6CAFA51A404376953A384BC9266A4442258D4AFC9BA1295957A9641C6456E43361FA91EDE60D19E5BA0C570653054BE65E9DB125256459C958627755BA6C';
wwv_flow_imp.g_varchar2_table(119) := 'B28E142674958D29C7D40E655B45CF93264EB08993265A496D6A50093E17EF006529D5EAAC7459A63AAD7EB9A63064D51FDB0758D09C8A1C5A15161F3B89BF2E0194A4B82D3758CF7EFAF52FDBC5DFFEB78EE85B9FFBB4B172A39301C2B9DFF85A53F94B';
wwv_flow_imp.g_varchar2_table(120) := 'BEF34DFBD5F78FB52B4ED2F9D909C729EF9B46DAA5FFF1FFECD263FF5FC44FD0F9DC863AD640E193274EB4AF7EFCA376C9B7BF19F9971EFBEF16BCE2A7DC50EDFBF9D15FB175E5D8D30E0859844351558E345F75654F886F26F2DCE0CD4A8D68A791D725';
wwv_flow_imp.g_varchar2_table(121) := '80E8A42CD5463256A513AA94CBE65E5397BBDB4459824ECAC3CB5F750062DA81A42EC924BD139A284B95F40EC880FAF9B710BDBDF1070D3CB7928B971FAF8843559D11F23CC0D33B10ED30F6BA02101B7E73B512E17B44634D9CEA8FB5CC61CBD366287E';
wwv_flow_imp.g_varchar2_table(122) := '184B747720594341555627FFEB982A53572D794CEFAF2B005D7EF32DF6E51FFDC48E3AED8C31A52FFEF0C77684768C8FD04EF680ECD3EDA8530B749AE26DEB3DDD8E9C719A1D71F20F15FEC890F545CA0DC97F860DD4518BF34E37DE758FB1C2AAED0FD5';
wwv_flow_imp.g_varchar2_table(123) := '3052EDD321A98013E051584B6D775F0C5358C9FD9E764D5992D3F89706ACA6F80F876349B7DDFF80FDE1E147EDF70F3D6C21F79E7BED77B7DF6937FDE9CF364B44F8BB3BEEAAE5DD7B5F4B78BFDD76EFFD4ABBDF6EB9EB6EBBF9CEBB82F875FE5B07F1DE';
wwv_flow_imp.g_varchar2_table(124) := '177921EFF63BEC56D5030FEFF4D4B3CF598F2C117B40B90EF8EE4F2CDFB50008BB248B94E73587E35358737FBCDA4F1ADDEEDEF08DDFA3B1A300000A9F4944415414B1509C7C0DFEC4267EB3474A1CAA59580E76A2A38C7C1BE2CD3ECA4049D2B132848D';
wwv_flow_imp.g_varchar2_table(125) := '65BBB2539619E591A5C7A60F1688A53FC4B4966762A1628AEBE91FB13148B9B0F1B0D003434505943C0BA5B09A6155D3336F9EB1C2E1643FCF2774AF81CADD0D50A1ACE07FE5959AB38BBC9C6C7817C0014090BBE4168B491600A16DC564CAC4E6A2404C';
wwv_flow_imp.g_varchar2_table(126) := '3CCF230EE5CF2309C70134CC5E636A00281C0950C4DD63C4972A152B552AC68E6FCA325BD095B2CCE02B552A06000020BF0B00012C94BFA0F243E609387CCF398E2EB448A0AD4DBCCA4736000F3E6D9E026648BBA3D6D5556962EFE42175C25CE4BDEE94';
wwv_flow_imp.g_varchar2_table(127) := 'EFDF5B7C5E6AE2EA6C14817259D5E4EF85C2CBDAB3C1AFC8D3DCDD18C141EE79728458819C7239F0B1F4267477637ACBBF66816CD2298CB2516EB443D68D309741FE20922CA63DE4218778918776002A7E508A690BF94579A3D1E58801140D74BBDA96B6';
wwv_flow_imp.g_varchar2_table(128) := '0B65C80F2955342A151FF6EB0978B9525010BBD1281E62E40F5B8E18011220804A958AE1DB300562FD00366010DBA00FF5003CF820C00253C8D33BE5D6AF54A9C9446E2A777D039E91D2E80054F5DF8EB4E225AD1C4A0F02080B681CCA4349500E18D8F3';
wwv_flow_imp.g_varchar2_table(129) := '746484C2A4A452A536BD61BDE0E9985C560DCA0BA664C876577A9ED61A9257A4D6FCC23396C9ACBF90D27934755EA45022D9526181E84814CF082E82C2DA5C29CB2C6535C22AE42C800442C1795AA721EDA00D84EDCAA62CB34CBBD6ED565AF0A74CF9A5';
wwv_flow_imp.g_varchar2_table(130) := '92D10E88B600ECA235820FA20EAC59EFDCEE51E930216CA434EBE4E34755F948EB1DB372B2369CB0339EE970562A747A2E3F07154A6D107B291AE145BEE06F93C614120AAC6FE8055FFD866CF209EB49B1328BD59C8E24F2B4A857CF45BE3C6F6160279F';
wwv_flow_imp.g_varchar2_table(131) := '29945FE468B598EEF2C164216F39EBD451E97054008A17790DF9418CBA6873FD0678E20B575250280A45D7F308507EE46B830E4504294E3AF950C814106B617167469383C086DC008A78E00F523CF8E361E056929FD2A5D37AAC4CA48ACFDD6D10589509';
wwv_flow_imp.g_varchar2_table(132) := 'A05851D116E2455276EDE36E9C7DE1A8E360C39B5B23F8BD6AA3F27FA8640C00E4A36E040D59D444E701063A2EAF2B6599D1B1581F9494B22CCF8A901517079010BF63CD0A07CA158C2C14928384307F46007CA54ACD61453E6941EE310D321535A59B2E';
wwv_flow_imp.g_varchar2_table(133) := 'E5E95EFB281EF90252D425A0D732CC488F76D366772514C8DA5F8036068DE46091F80E527BCEE1A78E1A40318DBD06AC50CA32631542C717BBC7DDCDBD468A4416CACAC995E2AE3BA478CE13D194C227495916804899C2927C10A5930FA1B4902510E4CF';
wwv_flow_imp.g_varchar2_table(134) := '843991C71E50FCEDFADCB9461CB0E7F984281D3E64F19C93BBAB3983A9952FE767D58595CBE996D3671C93E78D344C232DD854CE7DC9B64275E5B97B53B3DB3D304D75CF9E6D105F0AC3AAB4E36BA421B31D89017F06398083703E72E7CC69FA562280C6';
wwv_flow_imp.g_varchar2_table(135) := 'AA31751162E9B02C2A6EF830808167948F458BF436371CE2A807F9DA281CC4421F408DB6A631D1D9980068D692EA4CABC318CD41F8377A2E762CCA218F304F4749F80CF80E28D4DDA5C766DF26E75D5888C58BFF1D3B658A453879B2211B400C2AAB7A64';
wwv_flow_imp.g_varchar2_table(136) := '4E2CC86A173E0ED32ED3226D0C2BA4F788B0E55D4A954ACDDFC187EAEAAA09A8DF298BACE2BBCE9A71FCA8AD0FE2C704400832F33141B48DE5E56E8CF0F03534BD149513D5480974AE10128F717337F84847514C1F6CF75BCB455E505D06FC2D2C12E335';
wwv_flow_imp.g_varchar2_table(137) := '524638D2F23DF2324A52B5D5B046281690040920E441000D10E28BF18C35843764C84127AD48EE6EAAD0F22BDAA4F6B97B4CB1F4832A3599B631D3D59801A886681FB386E92DC7E41300C22751478602A4204294401E1687B05819CF2CE9C983A2E38B0C';
wwv_flow_imp.g_varchar2_table(138) := '92C588668AEAD35103FFD60A4B51538ED4A3FCBC8E4631D2A4748094F349DD465DEE6E11AA9D845146FC11EAE690BB459B645D0056CA328B0BBE9C22A176E3FD681353322921577C3DF35EF9C6AC19271E43DA58D0980188C604889660871AE5054991B9';
wwv_flow_imp.g_varchar2_table(139) := '1269772BA17C56298084119F3FC7888659CAC411659A8B159AA60D5673F9E80FE5D58115F5881F2B52AA540C5F2694599743DCB3CC006990031733EAEC4506DB06B4B7CEDFA84360001CFC4934FB3C10F5C206B97BD4153FA669B5CB4BD9D5B79D75FA31';
wwv_flow_imp.g_varchar2_table(140) := 'B5A7B1B98F2980A2494B80434D47E68A274EBB5014CA0B2A97CD34DAC96B07287813ABA92C33E2EE6E29CB6CB857CA322BCBDF015C4C818081BA024C43091120E0A3DDB0503F3E5838D592475A91DCDD00656E95782FDA6AF9A57C9EDD3D4F31816FCC67';
wwv_flow_imp.g_varchar2_table(141) := '8831075038D4C977B6C579491928AC1D386816960445616508E1233D2777B7E8FC949A43F760811F7F85F2AC7E88B703475E0FF9580BDA14021674ABD7B120963CCFDD2DDAE90A45A437DAD6DD1D5B02DDF5AD81DEEEF93B876E601A434A6328AB212A1A';
wwv_flow_imp.g_varchar2_table(142) := '0A8816D374C654C0888418C91A798DB61171F7F02798865A79B0027DEA7C087059BB4BE591E9EE61995022CFD672A52CB3A8239FBAF4DCC232F0589795B2664B07E86853104EB806C740A1C131DA92B2CC786FEA2E572A57972B5D3BDF72FAE88E2C06D7';
wwv_flow_imp.g_varchar2_table(143) := '544B49B560ECEF8068D62927C812F9989BCDD6D6D2C9E12FC867285A022C007939359573B7507A1E5AED72770B25680A0388B5D4E67B9E8F92A0263E149C13C55CF2A0D4DCD5B48D36B3714808F185B51E590CE2B499E2840D22A10D918F250C3F887CD5';
wwv_flow_imp.g_varchar2_table(144) := '451B3D2B7DE3A6D34EDE79D6A9278FEABC0B914351F35B0DC5358AF459B1DFE08B144474169684256F80A2DE5E3A16454588238A62EB794305C80A50A004F760A37C3FA31F19913270CB2D03F94C690D1A823F2FE9EE166D2E978DFAA092E2BC03E9B4C3';
wwv_flow_imp.g_varchar2_table(145) := '7491CE4A300850AB9C929B3EF0E6F90303C8B5DA1A9BBD9EA6CA5A1E163980A80F10CD9A7182B4E18B0C4874A22AB0E8C03A505296C514831220C01580523EA080685F83482F50239D884B3A44BC40EE6E51B7BBF16DC394A94E293A6599AA73CBAFBCDE';
wwv_flow_imp.g_varchar2_table(146) := 'FC390F6943F82DDA5E404ECA542EA53CBB1616DA047F2DB1F94E59CFD2D55ECA76A6AF67C5C06DE659144F6951081D4A262F35AB01241F5330A120463FA61CFF05A50C6A8714C1F4C0BE4DF0B56CF963457A7414D0AD2307F8028C1282720087A24A6ADE';
wwv_flow_imp.g_varchar2_table(147) := '95262F08C5E7240090260451C41A72259B7646A26EF06039586A6375727E650D7C68B37C32DA14A4292E0711B2888BE56AEBF79D711966BDCAA702AF2A80F25E99A5D1512359259CEDD8C51E1DA0DCDD6259CB469BC8A54C6BBDC4134B63EDDB10962A95';
wwv_flow_imp.g_varchar2_table(148) := '260ECA73E450596619233F572860C457E991F208515A53C1E283B42994355B42592496F59C770DD8A47A21B5C9DD5595D7135A02E5E10CD32EA8A2ED0197A55105DFE8EBE9DEF9A6534FF29B7E7882FC9CE317999FD3D2A2A6C7C502A0620B1831B30A80';
wwv_flow_imp.g_varchar2_table(149) := '2A79B6714E6669EF4EC83DDBDB53696FC24ECA2D8CD733DFBB5C99B077D784897B774D9A1075B42FD3BF775F7FEFDE7DDD7552DCAC3FDE8136D136531B49EBEB533AB490778CBE48A58DCB759AF5C3133D2C8D76936F59442BABA27E16165FEC006A6D20';
wwv_flow_imp.g_varchar2_table(150) := '7F2190D3AC193FB878C9A0932E9E755A9D66281CB25D275D7CF369332EBEF98C3A293EAB2D3F7C9283CC2165D5DE3DEF8B3C6CEDAFC5FDBCC401687177C878FD9DF5C038803AEBAF71EE961E1807504B878C3F76D603E300EAACBF961EEE317A9371008D';
wwv_flow_imp.g_varchar2_table(151) := '5147BE5EC58C03E8F5AAF9317AEF71008D5147BE5EC58C03E8F5AAF9317AEF71008D5147BE5EC58C03E8F5AAF9317AEF71008D5147BE7EC434BFE938809AFB63FCA9C31E180750871D36CEDEDC03FF1F0000FFFFD7B5045900000006494441540300FEF1';
wwv_flow_imp.g_varchar2_table(152) := '745BD33727930000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5528718617384777237)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC9D079C2455B5F0CFADAA99EAD934BB242528A8A002224A5610044410C92002FA8C6454C0F49EE1BDF73D9F3E05258804411105244852444C';
wwv_flow_imp.g_varchar2_table(2) := '44134104918C24C9B0C0E6DD99D9DD99EFFC4FF7EDA9AEAEEA34DDB3B3BB5DBF397D6FDD706EA873CE3DE7DC5B35C1DB3EFCF11160D3433E3AB2E561478F6C73F4B1CDC1519F19D91A38F2D3235B2B6C75F8312340237828BFF5119F1AC905C547996D14';
wwv_flow_imp.g_varchar2_table(3) := '7F1A1F6DD2CE169F3C7264F38F1D36B2F9C70F6FADFF3A5EDA67EC5B1E7AD44819142F6DA4DB4DDED3F6DB75FE36FBE8A123D607EDC7169F38C27064F53959B799F8563A4749A05D602BED2F7DAF878B39A45FCC117DA5CF6FD3E70D30EE7AF557E4FCA0';
wwv_flow_imp.g_varchar2_table(4) := 'A750909EBE3E89A74C91208A24F31A199111607858463CE8BD95754E9C530802710AE0002CAFD68FD61F5EBC58960C0ECAE2810159BC6891C19086430B16C8E0FCF932386F9EC1D2254BAA308D2C5D2A4B878644140FED3AE72CCE7D55E13A092E0C25EC';
wwv_flow_imp.g_varchar2_table(5) := 'E991B0B77714E2D8C655AB6A14C7124F9B26BD93274BCFA4490691CE2778B4726555EDA72510027653FF87795FA2F3B344E765A9CE1530A2F3012CD5F91BD679A88785F9A15F3C67FA4A9F0BD3A70BC0B86525BE021E169300D13AA744949A0C267860CE';
wwv_flow_imp.g_varchar2_table(6) := '1C29C3DCB9469410A71160AA7CC3B7DA5618C74634463C1091020FA85799319E3AD598328F31E92FF578B01E184B15E135DCA1CE16B4F99B3D7B741E353EB47061DD469D73C660CC0B04CC987B749E3CD898EB62E916C89B81C0672C5169CA431A54021F';
wwv_flow_imp.g_varchar2_table(7) := '5040BA9067D283154227BDD0DF2F7D480E0D0B2AF91A9A7C9576483193CC1AB710C40970CE29DD26405712DA45321B687EA2784B51561B981618D2D5C58F2F8DACBCC225563A9F962EDBCC7D2F0C0DE8BCC5CC9FCE63AFAE1A0DE3600E80862B8CADE098';
wwv_flow_imp.g_varchar2_table(8) := '84DBD89A1ED7DA6506601540EA227D8DB87B7AAC23CE3989E25802BD87282DB1891F549AC52AE95071907800F12650B4A5A853F58E9502091A2943076158851742E7C103A86684300E71A0AA42130941188A31731018B3375135BBA817263EA494C61983';
wwv_flow_imp.g_varchar2_table(9) := '81AA46A889C4C96A1658619BADB33C960F7CA79D5309CCC351F069ED087B9479B0338CF80A052184D9DA81BB191CCE39D3F38330942054620C02495F3038FD8BE258ACCF1AC2F896A67D4F976FE73D7AFE80AA45AC5079AB13EDB19A62330D622701BA9A';
wwv_flow_imp.g_varchar2_table(10) := '0DA8ADC4EA0D501F40D0207C882FD672D4A37EA3C05C345A76792E574D056D1E8D49BD12C1110FC250C6225D20145498F2AAA204C03DB64ADBBAAECCA2625A00E7543094403A78A14EB2FAC2784118E6B6E49C33E6C4363250B58A15BBD0DF2F0555AB0A';
wwv_flow_imp.g_varchar2_table(11) := 'FD1A2AB09A935FE8EF17EC05E79C74AFEA1908AA938A29C3EA6980D85057085107904CA4372B4D8A182B7F2158036D07BC00B82B4B55DFC13C100BCCE49C336622CDB9F179C0A8141EACFFEA89616E48935A57493DA14E5659242EE360C5215E0B555BF2';
wwv_flow_imp.g_varchar2_table(12) := 'B43F668F11B605E1F28924970178081E9084238CAF6418DAC4713F06C0AD076311B2A41BA8AB2F8B3892CD4024304014C7A64E79F584BE26CBE5C5615E6B575D8B30B781DA28B817F3EAF874FA4679532FB40E7DC7368071C9F3E592218C6D8E053C69EA';
wwv_flow_imp.g_varchar2_table(13) := '5C208E5A022324CB8D679C31A02E79603EC6B3FD89D4564D0628131AC4868F5C43D292C4064141003C506F74410C3E9E3758967B5C7B78470A2CE30A2CDB49DC7975C792EE9C132F65833014CF50818E4FEA5CF48D3EA35A00360675D962588327AB3AF6';
wwv_flow_imp.g_varchar2_table(14) := '4ED9EFAE1EA0BE1933A4D0DF6F7648BABC9F37E6D2405747E6375D6EACF7511C4B4FA9DF081056D3B1E25C5EEB07CD74DC3F2023EED2D259F692A8F446B22401E9D80CFEB1948509691B6906B0A2D0CF2C9C41180A8C6CD0D3634CE05CE755281828AB3F';
wwv_flow_imp.g_varchar2_table(15) := '3ECDFA5D9A47E2A65AA937C7E73712DA332AADD415F1D2F302870B0209A3C8E600068049495F192160A2CDA0D425DD8759840B314160781650017C1988087F36869681FAB69188C4995C3FA9B6BBAB2A001E09F0D8C34D3C145FAED51029465F823034E9';
wwv_flow_imp.g_varchar2_table(16) := '1A6A28FAA05BC5B72CEAE19E65DE58656C4E752EF35696ACFEB15AB072A076A581E7975567654F0B904A4800231E950A1052D6A493CE8361E94755C15B519E3C959ECE393515AAC19789E25878C0A67E6859A4539E2D610F528D4B1E26C0C3A37C123C5E';
wwv_flow_imp.g_varchar2_table(17) := '1F3AE7240895F891E82570CEC9982F6552FA00D07E3D7CF49D7200750C180BA02A4DDE98C1EB9C2BCFA14648CA85247E3F3FE046B247B1CE750AB29E692EF29528C38E4240944C104C10C5BAE9A584D4EE3930FC4A98D646A1B81F00F365B6A34B38120C';
wwv_flow_imp.g_varchar2_table(18) := '2393D58255C7AF4E84AC5A99F59A4CB436D418A61D562400224AA281D058EDC843DD4BE6A5E3864F55185BED4AEE59563CABAF0CC06E3BF8D2F59ABE57A644C5632E005664E60980E19AC6B7125708DA3A767D30EDC0C76A831AC58A63A0AA00F71E92AA';
wwv_flow_imp.g_varchar2_table(19) := 'D558DA33CF964A5D515509C2818091E0499CF4C5D411DD3DE6EC52322F1D87C9E91B7DF62BA519CA938B87E5C003BE74BDA6EFB5CF9C0B32DC6ACCD21EF740108699E818179099B9122706483C26C643AB738164E30CD1A259B3C4407735314CD3F84843';
wwv_flow_imp.g_varchar2_table(20) := '9A02485488CE4B48FA52515E1FB473AA162881B25A24A1A25CC64D19EFE0A020796903224F168D74458AE2A2BA00F14048B4912CD34CDCB99CBE6ABAC733A24202B0B16ADCA7E7865A86B9A50E60F5B4B073DA9687C4FC78D509B50877EB227D0EB83B07';
wwv_flow_imp.g_varchar2_table(21) := 'D50D8B0B9679D7EA2BED5F7AE00184C2D2C9520AA48984C9B7494F3C0843A2F7966E3722100EB681B9FCD4CDC7EE241251529773A30FCEB2C043C487C4DB018ACF39271084FE0A978D85C8B202ED13EA9BCDB7AA5EA6C6A8CA64F71AA6891382877151A9';
wwv_flow_imp.g_varchar2_table(22) := 'D8ED06289B370ED2797E00AB1A0CCD73F0CF841523EB992CABE99808ED06E8FF18B44840205069E23B067330E94812CE9EA06BF230ECACFE8205923EA7EFB46E10864208783CC9101580363D984DA0529810624D96CD8BD32E528DB3331E906EC9F2E04B';
wwv_flow_imp.g_varchar2_table(23) := '4214C782B19F2CD36ADC13A611A77ACF9813E68990BC5CBCCE4914C77694218A638B47BAFF60FD8C2249CF99734EC833D54FED26CE553106E73C4BCBE8A5CC0503C120D81D3003F80C28AF1084A1703F5AA91B0B9C73C2A478481221938DF430505DD3F4';
wwv_flow_imp.g_varchar2_table(24) := 'DA4448FE58A690657A78684890583CB02C48AE32BE2D981466653307A946FF087DFE7884CEE9BC29E075611EA2B848D0CEB99ACDFB792E874A9441188A090465827465CA0561295F998572C967542EAFED627FD833D20DB7200CCB59DD48FE0C04F9599D';
wwv_flow_imp.g_varchar2_table(25) := 'CF41929B7EAEEA00D214E9858A60A02A012A02AB50BA2710059211E26349E71E4897E31E26F352398BC1CA692A4161446C14D2A89B07CE39B1F695207D0861D217E95ECBD50C049E389645AFA3381E7DDB89255EBD3DEC1578403543BAB6DA37881975AD';
wwv_flow_imp.g_varchar2_table(26) := 'AC2EA92168711FEAC61CAA132A1EEA0B3610AA0CCCD86A9BADD483F1505F100816EAAA588F095B69A75BA77A0682764D34921A094E88D4E5A17AA8C9642A4DAD5B1A3AE774752F4110884975E72CBBDE8FB5A1523C590E895CE8EFB7B7D8E269D3C40CC2';
wwv_flow_imp.g_varchar2_table(27) := 'A953A5D0AF693366587AA17484D85407F2F41EF54A9AB89843C66CA07B188D56A5CF30E4D0BC7902F32DD6BD03E610068479F3F050CFDA5ABA54CA619D76AD5C6A7EF2F0AF4CE94110E6EB8A1030048D54C2650970CF030248E71E3DDD392554051E1C69';
wwv_flow_imp.g_varchar2_table(28) := '96870B52D51BD23A36A9FA50519990DC487180BEA5DB8399CC00573D9B783A7F2CF78C9736215EE28DE272CE193316FAFB2B42BC69A85679782066D4C324A04AE695279DB13BA7CF889B2E94672028C732224C34440F01B33C23795444AB872D30A08A49';
wwv_flow_imp.g_varchar2_table(29) := '3F8D206D5159909E186384782FD8FC198B1AA3A86BFFE943A56DC01E322B87A6252BD16F089331C0D48C07209DFE93962CDF6C3C8A63B1F1EA86175E9D66EB33A76568A03263655E938087A881AADD22A919082082545AF9162904111BB0138AD1A712D4';
wwv_flow_imp.g_varchar2_table(30) := '0C3EDD44223F8AEB7C3E24458C65E444547AE35A450D5854DA401BD010D726529D2265D0B210AB81C6CBE91A81208C00B58F84F44B93CB7FD481E0F138D9CAA43A362112DB03CC5EAED04A44C7E99C4A58A04E7DFA93863A55AAB369270DD5A5BA297566';
wwv_flow_imp.g_varchar2_table(31) := 'C04E83A2C2D429D7996C7D8051AC86B01ABFB831D9B8E134240C972662A434EA0DBA32CC010135DAA9200C8B125ADB8141C00F980455A98DFECFEA91856F44990DE681618066DACDC2C75C27F1819355967632CB77133B3A034114C762CBAF2C9B2B0843';
wwv_flow_imp.g_varchar2_table(32) := '6145414D82E83DA4F5F4200CCD6304E146712CE97CE9D085EA648CA76E59883573A58049162FB60F7551060287610DD227409D13C6889A18C5B16D8671C6C83927CD5E306319B40FB9F5BB19B93360C7A17373275286120844EF61BCBA864E5FE82F1AA9';
wwv_flow_imp.g_varchar2_table(33) := 'AC52306BBA6D4EAB1A93E8AE302B9419E4EAD9C1BD8A1B16DB235DC7EE754CAD081F881EDCA88E06B873D5B56B3BC05D46B0A96DF427F00587D58D66924B25164B32D2CBE7F99074D40F3C1E16AA2E9DB774838B724844039590D4072FC0432444C252D6';
wwv_flow_imp.g_varchar2_table(34) := 'B7D1EE9036E8075E126BABD48FBC7EB7D23EAA54A1BFC8240575A31A70AF3BB285FEFED68E6040C84990D10B2180BA58E82FB5596A07F5D1B9E6579251CC2B5FACCC004C9B11A51288118A3202FA6AC594E8E432F9CE394167761599D937E004207E88D0';
wwv_flow_imp.g_varchar2_table(35) := '18475DA318BF18A0BC8C0E8354B5954287EA41792F6191AC00D2B6160339E754C8BA2236985C7DE74864F01513DBF4ABED6843A3C8F4DEE64A5318BF0675FF28C7C61C4E0093EC2AD52D5409CF33492230DC41203EAC683B59B01BAF390381CF65224D37';
wwv_flow_imp.g_varchar2_table(36) := 'C593A2C66214C7929E54BC2D94312879819C2B1197545E948D62D5717587177D17DD1DA9E501C31340AD202FDD562536B1F342A4D14F708778A3C250504948232F0BC8A3BFA832E8DAD6171D23387C7956030F6946344645B5511BC0986FC10281E98843';
wwv_flow_imp.g_varchar2_table(37) := 'B01E475E08D353DE1F47B6B86E78A132819B767D5DFACA47029813CE370105561495F4D848D2BDDA3E0341DB31B68250977A249CAD0E6C9E29A0BA245141C4787020600F76AF4C06E124CB361BB72F2D6B9BB44F3F92F5A33816DA86008D81B85780F1EA';
wwv_flow_imp.g_varchar2_table(38) := '312D78A238160899EF81121A714F9962067D14C78AA2528038E704E6644C8074AF31CD40BDCA636600D417A419EA882DDFBA6C13A2AE24A55BBD8EA092A0CAA02A19A8AA925707BC485F03659EBC728DA643709EB88DB0131583303482A44C1016E3C60C';
wwv_flow_imp.g_varchar2_table(39) := 'BA023A5749BC896A0D4583306CA85CB750E76620182B6A6C0108021583436CA83891AA50A439D720816839A43AD2D103F8F2FAC63BBC301930A4FA31CC975E31F2EA66A66BFBCE3941E23AE7328B741357CC19A862005400A43700A1990745D50324BD49';
wwv_flow_imp.g_varchar2_table(40) := '6895CC485E3F1D41188AA908EC12AB5444529A7EAE3ABA2F63A14A6A881448D6B7BC267FB0190AFDEA0151FDD8540B55298270ECD2947E316EF47B03D5FB998F7ADD636E509F982FC6975B5EE7C06C0C422D447B1A74FF96E10C04E9B693529097C67948';
wwv_flow_imp.g_varchar2_table(41) := 'A623AB77086658AA1E1C18215DAFDEBD19836A404258A632A9E4C60354AF5E6E7E86A4A6AFF48D30B75E8D0CE79C046128AC6AC6C830B4DE4B9DAB5C5699DEB9FC15843948FAEFCD08568152077D37BB833350C50041180AEA08066619264F36A30DF506';
wwv_flow_imp.g_varchar2_table(42) := '5F3312BFD93E45712CFE3832A71D3108D1BB9BC5932C8F2DC04BDF8B66155FC4C765883A44D0007526000010004944415448BA311A1E1740990F0F0C0C68523889C8C79578195B14170D5F081B81E0B3F342CA18D328C310CF2B17C54583B8A02B57A1BF';
wwv_flow_imp.g_varchar2_table(43) := '5FF082514FBAD7329B812A0668A627485B5BFA755518292DEBCDD41F6B59E79C3155A15FD5210F6C0A29C453A7961919DB04A62634A6D37A636DBB5B7FC59881006989DE9B2B156B8D5309290843531B6A15EB641E12B70A4A7D0AC262DF82B032EC647F';
wwv_flow_imp.g_varchar2_table(44) := '92B8110AA86306CB404024FBD28D67CF40803AC2397E75486797E0C10119B941A884A5CB3EAE43E75C7509EA25215502023135655EF18D28B331D4D6C0F02CBB45337464080A639332C4C19342DDD65B6B43779109ADDD52BC5623EC36FBCD2FBE9764BB';
wwv_flow_imp.g_varchar2_table(45) := 'BB7CA307DB875DF65A95BB79E33603C5C37029E2E52173B08A9561311E2025CAA67BA4848F77C4BFB584AA64F8D85555407D8265A2381618B0EC36D57AAC46E403105DBA6D18048F8BE153F58BFB74197F4F7DFA017381CFA7371AC25CD407C0C1383066';
wwv_flow_imp.g_varchar2_table(46) := '6993BC3C3C78C20A255D1FDBA7D0AF3A7F4935234FBAD784988120AB17A814214718D4B5893F1E6330AB5CCD34652A5686288ECB477EC115C5C57B33FE28134542390003B40C94D33EC018E976C083316ED0D7277CE12D5DC6DFC30030742BC40F0EE79C';
wwv_flow_imp.g_varchar2_table(47) := '98FDA07DC129C0C1B71EFAA6E01C2C4CA91AA06598CF32E87D8DD2DDAC719E816C06D0871484A140A4FEC1B5D22F5FB71C7A9C84AE01E2C96B54EB3AE7546B2B8246F24A0ACC6B84AB9E2CE2B9051BCDD0766BB5D7289A8E96EB226F78063219A0E1DA0D';
wwv_flow_imp.g_varchar2_table(48) := '149C5488658375D69E98B0D69AB2C1DA6B4DCCBE8DE39CF54F99DCC0935C318B041C276073A65515A1DEB4BC719D75E4A4A30E9F9870CC1172D2D10A13B57FE3D4AF6D37DEB8DE635C61F3033B7BD3A07A80F1C746133B986C28016C2E918671E86709E3';
wwv_flow_imp.g_varchar2_table(49) := '100315E6123552579FDE2F1313A64FD07E8DEF7C15E25EFFE856BAD0BC40E8E88D8C3C52A3D88C403508BDB16AFA3587DF34CFE370CE89A54F99A2E1249FDC0DBB3330E166A0C206C06362802B32A7AB300B804109D4329429E7C28A2672B07693BB33D0';
wwv_flow_imp.g_varchar2_table(50) := '9E1968164B0575A2CED8A6CD9C39F68583669135537E896E707561A98CF71C70C0B199E7B4A297AD60000EA815FAFB858D1B549CA6075F63E548E33AFDAAAB653CE1B4CBAF92EF5E7AB99C7AC96572EAC53F93532EBA544EBBECCA71EDC3788E37ABADF3';
wwv_flow_imp.g_varchar2_table(51) := '7F779DCC5BB030FD2856EAFB801D4EC07B819C53DF7A50C117B913C4CE280630E7896CAB5F570E5610BC4AA40349E33889E8D21B6F9646E1E2EB6E1083DF5F2F17FDF6F70617EBC3BC44D32FB9E1A6A6F05CA2382EB9FE46B1BA893E9076C1AF7E2D175C';
wwv_flow_imp.g_varchar2_table(52) := '73AD5CA821F0D35FFFD6DA6DB49F13BDDC35B7DC260BD429917C0E2B7B3CC05B03917A06686642A238168C62CE13B17A10728F01CCF106801DDE6670A6CB6293C0689E49B9E7A804676D48E73C50BA4ED67D10866A90F789ED1EABD18EF72B7924017B05';
wwv_flow_imp.g_varchar2_table(53) := '233F084321CE66176DB92C64DDB415660682427FF18C0ADBFD59A382C038F7E20146012042CA432C6550E2C130AE004DA35C1A3C3E081BF72AAED37419EEC1ED998A3E021C6936265342A62DCAB503C0057EC0E37739FD6F477B5D1CCB7E06F2751DD5E7';
wwv_flow_imp.g_varchar2_table(54) := '91B0AC0E10A9BDA8BE78B17D9E248F589B190E8C05136194B547CA36D37AB76C77068A3390CF00CED9213654067B134CA52DEFE246715CFCD299E61751B4F68B94C5D046ED2074AE9A0D38C4664C3838688CE75B820161200F94F30C4A9E2F670CA6DE26';
wwv_flow_imp.g_varchar2_table(55) := 'CB1B1A12561DF0A1DA94CB74232BF50C5432804A7D239AE161216C6866B48E11E09225826A64C4469CD50258BAA4213499851437C46A844E9F4A85B88790018E5BDB2AA56D41E0A52216C00CA419D027051B97E2B502DD9F957E068A0CA004C18B2903F3';
wwv_flow_imp.g_varchar2_table(56) := 'E6095E1C033C3AA5173838D2804727091026B3C7374521408C6903F532700F7102101FE55A815E5D6D76DC720BF9DA1187CAE9C77F464E3EFA08396C8FF709BA3AAB117A3AF60160F7BA4A3937BA92603FB0D2F83CCA73BF3CEBF5937417FE63BBBD574E';
wwv_flow_imp.g_varchar2_table(57) := 'D1B938F59823E53F3F72886CFFD64D5A99DE6E1D9D81220328D1A0E6E0FF2FF4F74BA1BF6818DB67FA386FAF93CEB97CD495288E058282B8B4BEBD0E495D3C401EF0B078E829F451AC690883C088FDC4230F95DDB7D94AB6DAF04DF28E8D37946D36DA70';
wwv_flow_imp.g_varchar2_table(58) := '1497F61B6F8DC168EA0A1D8BA348B67CD31B651B9D8BAD377AB3ECBEF55672C2119F942F1DF24129248EA3B43A09BD51241F78F7F6F2F54F7E4C8EFFC07E72C8CE3BCA36DACE6BD6585D569D36557AA3A855D413B25E9101525D73CE09041E84A1E0C644';
wwv_flow_imp.g_varchar2_table(59) := '478F62D5FD7582618420085235DA7FFB96D7AF271F7ACF4E4ADBAE26F248FBB8E6AAAB4816CC983A4502575DBF471FE2BAAF5AC3980AE9096CF6C6F5E5B56BAC213D8AAF66839A499BAF5FF3D5B2F5866F36E9FBAE4DDE226F7DC3EB64C694299A9BFFD7';
wwv_flow_imp.g_varchar2_table(60) := 'A773F8EA556694FB0A9EBCD2714F4FB9DCAB57594526AB10CA2B2B9AB1E3DB3755C6D8406363FBE3D9BEE935EBC8CE9BBD4D0E5446F8F47E7BCB29BAD2FCE88B9F956F1DF6493976FF7DE47D5B6D218CC3B9EAB91D5BEBE35FBB26257B3567BCBA850D81';
wwv_flow_imp.g_varchar2_table(61) := 'C709156A5B95F46130DABD3B1F7E44BEA5BBB73FBAF6B715DD81F0CF38F653920587EFB9BBF4C888A0DE01A8709BAEB7AE7CE7A8C3E4BB9F3E4ABEF6F18FC8575585009078A77DE62839FB73C7C97EEFDAB6A20D7F03C1EEB0E95BE57BC71E6344F13F1F';
wwv_flow_imp.g_varchar2_table(62) := 'FF37ABFF9F1FF9907CF3B04FC8399F3F4E3E77E0FEF2AA19337C958A10490A31F9BEEEBFFD7615F9C99B37BFF635E5319DA67D85C0C95FA00E810B7433EFEB175C247FFAC7BD24194CE9EB93F5D759DBE29DF8013F42693FEDF3170EFA80CEDFD17284CE';
wwv_flow_imp.g_varchar2_table(63) := 'EF94497D9D686EDC708E52986F52ED01DEB7E55C103BBA63D1E13DCAAC10DC665BCC9D2B169F3F5F207E98002377BAEAF3C97A275F7E85FCE2CFB7C89FEFBD2F992C51102AC14D1718210D33A64C9530EA5188A45088E563BBEF26677CEE58D9EACD6F12';
wwv_flow_imp.g_varchar2_table(64) := '88B47FF26499DAD7673043A537691BAEFB1A3960877749FA9AD25790CFA834FCC6A11F93B7BDE1F5B2C68CE952AEAF44B0CAD4A9B2CEEAAB59DD538F39423656464BE348AF0047EDBD87F0BE44BA1CF7714F8F24C7E357802135F66FBDFF01F9D5ADB7CB';
wwv_flow_imp.g_varchar2_table(65) := 'F7AEFA457967D73927FD93260B4C4AFD4E02E378ED1AABCB4777DD452EFDCF2FCB5EDB6E23FD9397CF53BF019B501593A513C9F773D0E10BFDFD12EA83A8C86FD38DD90BBC240E28F1F091286C0B0325CC20D5EEDCF9D967585E9E37577EF2DBDFCBED0F';
wwv_flow_imp.g_varchar2_table(66) := '3C24F3165697C160C6F0DD69AB2DE5937BED216110944730ACCCCED180058B06CA69591188EF53FBEE65BA71188CD65F343824CFBF324B5E51E701B87CDDF5543DFA1F5D1D36CA60025F8630EEE9513D7B5FD5ADA771DB342C5617EFDC657CB66715B50B';
wwv_flow_imp.g_varchar2_table(67) := '3E77E001F2D57F3B4436DB60FD4C95B3E9818D638520547D781CDBABD9146ECB9A053232218073552DFAAFF3CE97FF38E7473253BD57E9627D6ABB6CFB968D65B24A719F77E3DFEF96234F3E4D3E71C249F289134F9243BF7D8A7CFBD2CBE54FF7DC278B';
wwv_flow_imp.g_varchar2_table(68) := '7197FA821A6EB7C9C6B2CBE69B6B6CF40F097CD429A7C9D1A77E4F8E38E9BBF2F5F37F2A2F25DA5E7BB5D5E4585D315839466B55C75829DEB7F596158C595D6AFC52F0EA3DF4D4D3C22AF3E8B3CFCA80EE9FD46BBD378A643BB583FEFBA31F963DDEB1B5';
wwv_flow_imp.g_varchar2_table(69) := '8CC72A54AF4F8DE6DB0B318D164E968358CDEDA952177509D7292A0D71DE14438DE2D32A4B870693D572E3E8FD03EA765D346B96A94479F607DF29F56DA1D3030B558D7AF18517E4C9A79F96C5AA22F84646740F82BEF468C23AAA9E68607F4FBD38534E';
wwv_flow_imp.g_varchar2_table(70) := 'BBE2E772CF638FCB931A07EE7BE25F72E51FFE245FF8FE0FE4B0934EB572FCC034DB6FBA894C2AC4DC0A92FEF29BFF28E8E010CA732FBF224FCF7C497E7DFB1D72FC19679755120ABF7EAD3565F337BE516A5D18E4FB6DBFADBC4E578D5AE5C62B6F4899';
wwv_flow_imp.g_varchar2_table(71) := 'FFB29BFE6063F9F0374E945DBFF815130E3FFCD5AFE5817F3D29089C115D39B3FA835A78BC7A8EF67DD73BA55757B7AC32ED4E1B2BBEC0368632B040801E32B2CD3B837A61A083C5458ADAE2F0A2A81A65471C34EEDCA8CA9085C7A7A16AA17671A80EBF';
wwv_flow_imp.g_varchar2_table(72) := 'BE0BB23D0C4EA54D597D525509172CE501CE0839375A8FBEA0FE44716FC5D28C545E7FEDB57CD355E1D0E2D1CD3BF46AA4B42FF48C12FBC5D7DFE46F2BC2479E7956600E9F88EAB4D1BAAFAD2BDDD75C6515397AEF3DA54FFBE9EB4E94109B03E1C02AFB';
wwv_flow_imp.g_varchar2_table(73) := 'E9D3CE94FFFEF10572F91FFE2833555865F51157EC67F6DB473EB6EB7B8479CE2A3391D282413E1A9B023BDEAC529510A99EC7F110AD779142686C3425813498A2910143ACE00BC250367CDD7AF2B6F5DF905BCDB912916BE89C13A77A391084A1D6710A';
wwv_flow_imp.g_varchar2_table(74) := 'FECF59DEA012F44B73E6FA4499A136C7973F74B0FC977A6F3651776B18E433E90C75A5AE3E7D7AB92EC4304B0DF672422A72C39D77975528E79CACB3C6EA92F7CEED932FBC58AE8D4F1FB76F39A185C866EACAC5706EA16A4355B097508D4EBFF26AF9F7';
wwv_flow_imp.g_varchar2_table(75) := 'B3CF95DB1F7C28B31E2AD0C1BA7FB0D7B6EF98F0EA5080F16952B4244D21607F8F41CA6698732E73A09D487CCB7AEB0A06243A34F8E72D5C24E7AB91FBB23224F735816527A3C082458BEC610D25D423081BDDFB1C757BFEE44B5F9083777EB7ACF7EA57';
wwv_flow_imp.g_varchar2_table(76) := '496F145560A01F4162FC2FCC9A2D8335F4E2F98B16CACB73E79571E05DEA8D2A71FACC8BAEBF51EE7BFC09BBA58D7DD5FD0AE3373ADBB3E6CD97DFA8EA355FC707920DD40D7AC6678E914DD54BC57DA70035E981279F92E34FFFBE9C73CDAF552D5A50D5';
wwv_flow_imp.g_varchar2_table(77) := '142BC1C7D44BB4D9066FA8CA9B480955A2CF24A93E30A47114C7128448D554975507ACA51EA54A37757BB04A0E36A4A83473F61CF9F62597C90FD5C845F7262D0F3876814D925CADCC065082E4F38ED7DFF977731DF20A621AC71B5457FFB42EDBF8E871';
wwv_flow_imp.g_varchar2_table(78) := '4DAEA99B55BE4C4F54397E0CE45A7D59B27458160E0CF8EAA6D68441250E9F495F4E555BE405B57B4883590EDAE9DD327552632EC50165C41FAB7038F1E2CBE405F5468163F519D3D5B3B41FD18E03F370E1EFAE93532EBF4A5ECC508918C7E73FF801DD';
wwv_flow_imp.g_varchar2_table(79) := '605CBDE37D69B5812A06C843C48137BF9984116AEA11EE3F75C5E5D569259DE5D3D78B7B22DDC61AB1F76661389F9E151619B65712C25A9C125ED41B0B79B3556DE135C1FF77DE05F2D873CFA9E953B95C20755FAD847FE08E3B986AB49ABA80A585CB29';
wwv_flow_imp.g_varchar2_table(80) := '2276537DD5224356B6E5F3081F54497AEDAD7FB5313AE7E49D1B6F28BB6CB919590D01ABDAF0C8B0324D5FB97C6F94BDE2940BB431822BF6BABFDD25FFFB938B6430B1C2FA265EA32AE0B1FBEF2B13D528B60F63F19D1FDC5FBED359611086827A845E4F';
wwv_flow_imp.g_varchar2_table(81) := 'E8D5A420CC966E59381A49BBF8F7D7095E1A0867DAE4C9C21997BDB7DC5CAAFF334D25361704821D21E2A47C3927A49147DA42DD45BDFEAEBFCBC74F38598E3FF36CB95E1F1C7EFCE4834315D9586D909D367B9B38E7843AD4F53059BD416118F8DBAA10';
wwv_flow_imp.g_varchar2_table(82) := '069EDA374A8CE8CDAC0A55054B09AC0257FEF1CFF2D8B3CF590A5EA163F6DE4B386A6109357E7AA348FEEDBD3B0B3E780EC93167AC04A75F75758D5AEDCF620C773CFCB07CED273FADF082F996365DFFF5F26EF5A439E77CD28409033C2ABDFAC078F0F5';
wwv_flow_imp.g_varchar2_table(83) := '7A0521853AE918BE001EA07A759ACDFFC7134FCAFFFCE44279ECB9E7AD2A0FF68B6AACAEF1AA5749BBDA436ADE7B1183E8000010004944415476FF83C2DEC1A74F3B434EBDFC4AB95F5D7CD6A0FE40847C3231EEE9916766BE5C366A354BD652FF7E9FAE';
wwv_flow_imp.g_varchar2_table(84) := '2AC4B3002374BAEE2AFB3C8CEF2483F9F464C8FE01BBBA5E75C21BC489CF6499ACF82ABA89B8B71A9AE8DBE463A0FFC70F7E247FB9EF7E6EC71DD8A5BF4A9979F192A5156DE30DDB75CB2D2A56A98A02CBF0265031276590B15D1C9B40351A507D9090A3';
wwv_flow_imp.g_varchar2_table(85) := '0D7918C903D0DD01D549ACE8B0DA173CC887D5A76F09FAE39CABEB4A14BD9C380982401ABD680B1FFECFFF748B32C155154BF894497D82349FA31EB2675E7AB98C72D337BC4E56EBCFDFB9E574A65F215855FFA5FB13E8EA65043991BF3DFC889CF79BDF';
wwv_flow_imp.g_varchar2_table(86) := '9773FB1BF85EA74E8BE8464EB9CEFD2A3C1E55576C39619C2330FA65BA47F2ECCBA3F3E5BBB0F99B36B0EFB0FAFB891206101E4B273AB6811260AB9D0B75756045294C9F6E47AA592524E7E2CC0F0C038CA81D411F9245878773F466ED5F8FAA5D6BADB6';
wwv_flow_imp.g_varchar2_table(87) := 'AA20599C7356AD378A64E3D7BDB6823807170FE9C6D5B0310FE55FADFEF629BADA854125932041D75A6D15E98D4675E781C121593A3C2C30C03F1E7D4CA769C4DA41BA1FBBFF3EC21180E4AA098EF76CFE76C1B36405F567CE8285BAD9F644B9AE26E5FE';
wwv_flow_imp.g_varchar2_table(88) := '317EBEDAF057752D12CF2D5823837AC55ED628D4E1AC17D54BC68145844BB2A9B8A747F6DFFE5DC9A4CEC6954E1AA1673B0BC48E2D3BA6D80248E5967BA6C4E852C49587CB5CACAAE3E386255EAF1EAB04BBC5787A56513DFCC4C33FA9F6C18172E8EEBB';
wwv_flow_imp.g_varchar2_table(89) := 'D9B1698EED1EB7FF7E46ECB409F13EF9C24C191C5A2C3D4AD8B8E43801FAD57F3B58379DF6D03A3BCA07D5E0FDF02E3BCB670FDC4F3E7FE001E25C9199962A433EF1FC0B32A8461DD21B230F231ABCC0361B6D6847833FA29B3D6CFDEFBFFD7686037B85';
wwv_flow_imp.g_varchar2_table(90) := '7C0F10F3BD8F3FE16FEB8630DB2537DC2C737577BD6EE1095C806326F73E563DEE77BE6523E1C06127BB8E60353A514F1CE1F0D050CDE6023C2418B51021BBA9516F6FCD0AB999CA7148733E574227CA525DD3B3EA50362B3D2F2D508F107D8DE25878C9';
wwv_flow_imp.g_varchar2_table(91) := '668D193364E7CD37938FEFBEABE0BAE4042752D9D787606FB9FF0193E2A4A11A718271874DDF2A87BC6727ADB3A77C6ADFBDE4C8BDDE2F7BBE631BDDB51C355C71E9DDF4F7BB65585700EADEF5C8A372C1EFAE275A0636D00E7DFFFBECF8333B9F7B280E';
wwv_flow_imp.g_varchar2_table(92) := 'EC155FE051356A4FBDA252ADF2797921129CCDA55FDD727B5E9162FA04FC5D6BD555CBBD5ABC64895CA0CE0CC6534ED448DCD3233BBD7D538D55FFA1F2157A7BAA339A4C71AA1DA07944712C386C88D742A12A6420544202032A06AD3CCB07AE4F560493';
wwv_flow_imp.g_varchar2_table(93) := 'BEEA41F1714223702510CA5181C15A39E53CA4342ED321759312273F0D70A7EA0615C9E000481F5107683273B5E9FDC57EEA00479C93A1258B2D1B991D0681C5F961E9E574E6D9575F2BF73FF12F92144664502501AB82DED85F1804828E1F06A3757970';
wwv_flow_imp.g_varchar2_table(94) := '4FBEF8A26EF75F28FF4AECD2E2E5B8F8869BE4A44B2F177CF61E4F180482EAD3ABCC493F442FBC467FB9F77EF9FC59E7081B559AD4D41F6D9D7DCDAF0406AA5771923EE424D3A5E7AC5EFD76E4874120BB6DB5A59CF7EF9FB537F7586DC1FBCFA79FA998';
wwv_flow_imp.g_varchar2_table(95) := '43D2806D367AB392989F2D11D4C8F5D7594B7EF485CF0A02853151AE5570CE89D33E79D0C60C15749A45CFA34FDF8A8DFE5018494E08B113476AF3D23B21929E903C6AD120EA8CC1D4A9C2991E809585FC34602BF8CEF93C9802550CA699A5BAA44F273C';
wwv_flow_imp.g_varchar2_table(96) := '72AF3D6CB7F6BD5B6C26AFCC9B2BDFBFFA5772ED6D7F95BBFEF9883CFCD4D3F2B04E38D2F3D21B6E922FFFE03CF9E52DB752CD6068F112B9FA2FB7CA59BFB846AE2EBD53806A421DE06ED5F1AFFBDB9D72A6E6B3BBC92139AB98FAB9F24F7F91FF38E75C';
wwv_flow_imp.g_varchar2_table(97) := 'E160D80DEA4EBD47D51BEA73288EB6F1809C78F1CFE46BE7FFD48E49A7AAAB47E925DBB9E5242980019E2EC33DFD3DE1A24BE59A5B6EB3CDBB5FEB381F2F79C56038DED662C3EC93AAFEF973F8303EBBE69E39C1331EB0CB169BCB51BA8A4E9B3C598EDB';
wwv_flow_imp.g_varchar2_table(98) := '7F1F3B0D0A13A0C671782EDD87B5575F4D56993AC59221FEB76FB0BE7CFD131F55EFDAAA6A236C279FD015BD1D2B813590F8818EA16142689638F49BCB006575438D4688D8FCFE932689853AD828D6254621D0652DD1CE98A2511C0BEA1887DAFE7CDF03';
wwv_flow_imp.g_varchar2_table(99) := '15B8B651BDFB98BDF79403DEBDBD2C52031502FACEA597C957CEFDB14ADB1F289C636ECDB3943120E86465880322FDE97537C8C9975D69FE6A8E4E23A50118E69B17FD4C7E76E3CDF2ECCBAF24AB56C451891E7CF26939FFB7D7C9FF5D78897C499981FA';
wwv_flow_imp.g_varchar2_table(100) := '9F3FEB07D6362ACF6FFFFA37339C2B2A966E60BAEF5EF173F98EAE2400F7A5ACAAE05E5DBD4EFAD91556963EDFA98C4E211860EF6DDF29C7ECB3A7F8B7C448C7859AB5C1475EA700D5F1736A3FAD3163BA353155E90366D84585D480DA5E78C09833CB2C';
wwv_flow_imp.g_varchar2_table(101) := 'FDD0FF57A93382DBD7AFBDA67CE1A00374A7780D6E6D35C52E3BFE80FD34DE6369EDFAC9A3E7004E8023582208E1108038AA4845079C93B4D496365EAC2240108672B74A57A4F5C281C1720BA1A68741916751956004D40CDE0198397B8ECC99BFA0C267';
wwv_flow_imp.g_varchar2_table(102) := '5FAE98880CAA618B747A79EE5CA10EF08AAA6A0B55758351124573A3946383EBE5B9F30C077E7CDA1ED29526B79266209D075415F3C0BD2667FE313E5F8E10D58882FA04CCD0477DE31E601E6E5181F11705EEC703DEF49A75E4E3EF7B6F85ED44BB30C1';
wwv_flow_imp.g_varchar2_table(103) := '573E7490E00D630F64401981740FBD518FACAE6E64D49E938F3C5CD6D5FD1DE71855B104E37AAF6E7CEEA6FB06CE8DA61773B37FA15D6816EDA4597A0EA8C45250067D40E8F8DC8338BBC9F149E59CCC09175F2A97A85A83C4FFA5AA31ECDE8E4FEB13B3';
wwv_flow_imp.g_varchar2_table(104) := '950165E01BD54037F5485524E686D5E45BAA7AB1C1375EBD66B5F9C96F7F9FFD169E0A29D4A1776EBC915A7223155DEA8942E1E519D41ECE2D5564966EAEBBFD0EF9C39D7709DF7C820E012F8C4B452A02881E6F8F6702CA97A10E3D07BCFE88B51CC5B1';
wwv_flow_imp.g_varchar2_table(105) := '10A28200C4318E2B5A1AE79B456A78FFEE8E3BE58C9FFFB2A40A5C213FBBE90FE3DC8B89D51C7372D59FFE2CA61EA98AC4DC5C7BDBEDC20A369E3D5DACBBBD30E137D5569997E1B66525D87ED34D246DD4C63D3DB2AB4A787FE031DD6756FD9354B57D51';
wwv_flow_imp.g_varchar2_table(106) := '5774881E4D04415CC94695B5F0F494E958557668378A1BA3E7A23E51896F5CEE5865F01AE12D8273B31A65E070F2804EF03C5559E6CF9B2F03BA338B914C5DF2B3EAADE8694B970EDBAB8A032ADD96E89EC5B21A2F2ADC1FEEBEC704146F8AA5FB813AE3';
wwv_flow_imp.g_varchar2_table(107) := '5CA51AE39CB37D19E72AD3C185B1FFBDABAE9601DD048DE222017B6276AEB27CBAAD56EFCD0668A4329C68EA924E3A440901730FA0AF36822359C68857DDA8A439973D38F0B2BC115A092D4F9C3AF4C770E80DFDA19C46BB7FE33C03102E2BD099BFF865';
wwv_flow_imp.g_varchar2_table(108) := 'A63AD468777EA7CE033C7BFEDD86BC7AD09DA9464A87084200EF2140BC513A807EA0DDA011A316093DA85218696D6E4A8DD3090355533C21E6753A2BDD385B97AB5EF51C60F8669509C25050C77A0A0553CF58E6EC5EEBE1992A1F8E63B32D8789B2F076';
wwv_flow_imp.g_varchar2_table(109) := 'D3DA3B03F5D4A17AADE1A2C6D3F5E2ECD9B58BEA73365AF321A5899780DB66E93908C2D0EAD5FA09C2500AEADB2F4C9F2E06FDFD5298364DF0E5E3F70FC2FA382475E10E33D0A5CE42DD816E359C3C658A4C52A668B5FECA522FEEE951FA70A927D19E5B';
wwv_flow_imp.g_varchar2_table(110) := '56825AEA50562BD431B5E7CA5F483DC96FF555C8213811823E441072EF2108EBD362108ED273608897C1CFE73F78803407DDF2639DAFC3F7D85DA675F00356107433EA50A36A4F27C933E0AB6C18949D6C240BF7FBB7D94ABA30BE73C0C659DA2B93F56C';
wwv_flow_imp.g_varchar2_table(111) := 'C692D6A83AD4B0DAD34067B00BD1FFF9244FB3F41CA083B34BD6403BDD22DD196868065809F2D421F2BCDA336BD62CFB1C7FD2B6C4982D831ABA38384CEFAFD1B273AE682B4E9E2CCDD27380AF3F6984C24D58DAAC0A00F1249096B4B4E91C463216B507';
wwv_flow_imp.g_varchar2_table(112) := 'D26AF4B79BB512CC00848E3A74C6CFAFAEF86A4452ED89E258385A833E8F10063C3D3AE7C4314F6AE0B21F40B41E38E7C4D7F765EBD173B60DE09C8882734E0305351A601220D05D3E4D142E90C31078869694B895B0CB00CC4E1750877EAE1B975F3FEF';
wwv_flow_imp.g_varchar2_table(113) := '027391A6D51EE79C0461580435D039570613B0B1C579300BD5390251CB582E6D079A754E6919D036A1652048E375CE099D88B4613A40A78230145C8E067454EF452FE78A4B0FDE2038198B9C90729A6D7F9C53E124633B8017C70D9E79562C7CEE796907';
wwv_flow_imp.g_varchar2_table(114) := 'DE098FA3C3E39CB760A13DAB4EFC044A477F79E861F9D469670A07011BF2F6B4B123CEB9DAF42C1DBEEE79FC7139E4EBDF6A0FFCEF37E5E0AFFD9F1CFC3FDF30F850BBF0AEE4787EFFB73B3B4A05A8431C596FD7710DAF72631FA09E8F45E308F2468E55';
wwv_flow_imp.g_varchar2_table(115) := 'CD8BED58D5182900AACE581ACB6BABD1745BB274F5B155298A1AADD62D37916740757C6C4A08191B92CD55688D7856B751BBCDDB337FBEF0C295955D32FA2DD7AC3AA4E5D1732E03B0B150E8EFB7CD2ED41A0015072204611A600CB697CBE1D2A562F1C4';
wwv_flow_imp.g_varchar2_table(116) := 'F185749DEEFDCA3903D005848E7045A842ECA421D99D4E092A749EDE4F3E2A77DF8C19D2B7CA2A4288AAAED56AFEE5D1732E03D4C49691695CBC78B130185B9A34EE431823A34A65924A02012A531BBAEB894259B57F5A4365C75268BB4D36B617E97969';
wwv_flow_imp.g_varchar2_table(117) := 'A30B3BB43C1707EDBCA37CF87DBBCA47F6DA433EAC9B731FDA7D37F990DE9761B7F7CAD61B6D68AFAC4AFA724E5CD036B295B661820BCD9DA5AE2D4203E20A70747A1CC97B980669C0BF6925E48BD400CB62B25C563C0C02E15B3C271F7DB8F071DBAC32';
wwv_flow_imp.g_varchar2_table(118) := 'ED4AA31D5EA4EFC25EF641814ECE039F98E13469BB9E5D1E9E8025A89CA91218A98DBE649B118383E243D2280BA0771102942FD76F31824ECFFBC3057FBE4843FE5700E9B5508641209C393F669F3DED7F6D9D78E4A1F2A6D7ACA31E2F57AB5ACB796110';
wwv_flow_imp.g_varchar2_table(119) := '9854E2C17421ECE85CF0BEF0C8B0AAD1AA4AA35D4087790211D5098189CD0A4D8ABF1AA0E700BDDE9757CAB1E5258CA2A26F561F38BA9873AE78AFE9E62255A94E08813AE7A4E14B3B64FB069CE94FC2A245C22092781C6DD7C0DDA36A0FDFE4E15B3CBC';
wwv_flow_imp.g_varchar2_table(120) := '7C41DD75565B4DBE70D00794193AF7DF1269A70B9D9F01E861C9C060F1AD30DD63C246C000CE52938330345B1501DA2C3D57A94041180A84ED014247BDF160E9913288EE0790574FBD91E4A5044D797011F2DF5E0CB44D1B5CB26C225E1E7C292D0C8A6A';
wwv_flow_imp.g_varchar2_table(121) := 'CFD17BEF299EF8C972CE09FF91E57F3FF9D18EAB43B4D785CECD00F481E1CAD106881A88E25810D29275E9B3CFCA0BC23AF49C85ABAD692AF593F882B0D82176FAA238962856D0CD12569D64B9725CEB2797B53018557BA6659C6C74CEC96B565F5D3AAD';
wwv_flow_imp.g_varchar2_table(122) := '0EF9FE0DAAB13F73F61C7B39BEDD212FFC0FAB17CDB7E5433693DADD96C7C7D7E97C3BC9D0E76786B366CB8BAFCCAA86598934E22598397B76C57CE5BED5A6CF328BA87DBF109A69F0798D866603F00FED90B2E94A2047FFC248259FFBAC25285DCFDF63';
wwv_flow_imp.g_varchar2_table(123) := '3798BDA02A0EAA0F3A1C3603B87C99BAA14E02F68073BAEB9CA1F6E4D51F2F75884F9B7CEEAC73A41370D2655708DF174D8E91CF36F2FF923BD11E38CFBEFADA6473E538797970FCE967C9F1A79DA170BA02E11972DC774F97E34E05BEA7A1C22925D0B4';
wwv_flow_imp.g_varchar2_table(124) := 'E3755738898B8F8D951B6A30020D2118A131E8D7E2BCA8A5C03DF96954D06F9A9E83288E0569EC5CB52E0FC1E29581882DD4CD07CECBEA2F810000100049444154FAA411E7DD2755245CA18067A6BC3AA3E995B130C8567B2A4B8DDE39373EEAD0824503';
wwv_flow_imp.g_varchar2_table(125) := 'C257D03A014FBEF0A2FDE38CD15189F072F84C5D713AD11E389F79E9A56473E5387979F0E8F32FC863335F52785981F02579DCEE5F92C75ED2B424683AE593B886EA7C4EA6DC8944041B913705013C8EA84B166F929E474F832AC124F05B348A63DB6828';
wwv_flow_imp.g_varchar2_table(126) := 'F0265869532C8A550F93C62EF4B872E7264D127BA55143D21BC3502C1506B5D59E62A9EA5FE7C6571DAAEEC14A9CA273EF9C530DA61A34B1FEC4A8EA8BC0CC92E4BEB23968943660068330149F96D54614C755F41C78641335EC6942EDC91BC378A94379';
wwv_flow_imp.g_varchar2_table(127) := 'ED77D39B9F81E1A54BCC0384EADC8CDADD6C4B636700E554F4AA5A9CDA6CA77CF930684EEDF1F5D2A173E3A30EA5DBEDDEB73E0341D423E6012A14244B9A4B9BAE3133005E0A6C043621D88C30A3646040304AF87F03E47958A2E98DF63B0C6AAB3D7C8C';
wwv_flow_imp.g_varchar2_table(128) := '894F1CA6F1FDFD9147E5AF0F3D54FE2CBACF77AEAB0EF9B9E8548891C9F3E7797B9B11FA68B93D7D6649E2073F82D640052FF7635D1DAA1800E418BF10AB11311B566A59131FD65DB9F4608230B44D0876727B264F16EFE3B7FD82302C6EA095C2E460A4';
wwv_flow_imp.g_varchar2_table(129) := 'CEC55783939B5CC9E2103F1FC1FDDBC3FF4C2697E3DFB9F40AB9E6965B33BF138A3AC43FD398DEC0BF202A231CEFC872DA9ED37EE3F8F0765F14C7FAC849D58C31FEE13DE4F4278C057022149AE4505D165DFAE6EAD173E00B5AA85C55566794FB822832';
wwv_flow_imp.g_varchar2_table(130) := '3F7DA821711D8D154BFF60800461384AEC5ADE26422780C92883DEFBBA740CF0F7E9F0D1679F95C7D5BB904E47A2F0CDD06B6EB94D9E78AEF88FF49265F80F248B972C91337F7E8DF04A1E67D193F9DCF3D9EE85BACB984CEFC6DB3003259A0942A505A5';
wwv_flow_imp.g_varchar2_table(131) := '0184A0734506C07B8886609A827A1359250004AD49F23ACD437F787A38958C5B9C8D31EEA358994CB585CCEA0DD0735051513B8B04378255C4C46998B77A2C9ED7500592FA370C7860EE5C61320674538415275D8B4DA0AFFEF0C7F6FD7FBEC64C3E92FF';
wwv_flow_imp.g_varchar2_table(132) := '1B3FBD44AEBDF57693EE7C9B9FF424F0A9EE55A74DB37F3374C6CF7F2937DFFD8FB23AC4860B75CFBDF63732A81B58C97AADC6398B74CB19A74A27E0FC2F7D41569FDE5FD135CE201D77C0BE1D698F31F06FA42A1A2CDD903716F8EB0FCE943B2FF891DC';
wwv_flow_imp.g_varchar2_table(133) := '75E17972E74F7E287FFBF10F0CFE7AEEF7E5F56BAD596A253F70CE090C65F408832920780D344FB22E4D876E6BD17325036421F169CA4D15FA16F73EAFC9D0392785FE7E416DEA9D3A55E864160A3E7BCE4760EF56BD1EE247EDF9FD1DA36F2FDDFBF8BF';
wwv_flow_imp.g_varchar2_table(134) := 'CAC4EDEB8741207C9598FB790B17C9B72EBAD4D421E297DE78B39C72F9953290FA643765BBB092CD00F4ABD0180368418C1BA436FAD7C09C3926BD59C22A98A2893974CE955526A9713DFAEC73F2DFE75D20FF7BC1454AC8B799E4F7C55FD655E4515595';
wwv_flow_imp.g_varchar2_table(135) := 'FCBD0F77DF664BE13421F710FE99AA0EF19F5DF8EF855DE26756567248D073630CA0C41AAA3B0AFD0BBDCB423578595A6C2A15A1851DFA6125F8E33FEEAD207E9A4295CAFA7F01D8019C27A70C80B7E8CE7F3E220B0707B9EDC2049E81BCAE99E0557599';
wwv_flow_imp.g_varchar2_table(136) := '103B35AF5C43E9097A0E20A2AA4A4AD058D6492395CFA198FE8571138622C3C3B254098A5500C022C7A001582DB85FAC1EA4248EAA76DA90C07F4599AD46551AD507DEBDBD4C9F32259DDCBD5F4E6700618BE11BC5F9462FB40C540DB1163D9B3AA39C85';
wwv_flow_imp.g_varchar2_table(137) := '7A538EAB8A83C50E31572123413908838433441C6F0088E3F931E074A7769455C3B9A217806A9D80E75F9925E9FF09463BEBAFBD96ECB0E926EAB8EA6CFBFF78EC7139F67B6775044EBCF832499FCEC48B75E51FFEDC91F618C799EA3860FED2405EBBE0';
wwv_flow_imp.g_varchar2_table(138) := 'D3A79E2E477DEB3B72D437BF6DF05CC6F923A43CE0FB51A62BA52DA7769E4FF721029BD5A14CC3AA1E97E335E839E0EBCEF8EF3948847A431CC3B4D0DF2FDCFB06D2219D08C2B0ACC7076128760E43C3201C4D570A4C576DEB3D47836FFAFB3F84FF9C92';
wwv_flow_imp.g_varchar2_table(139) := '44CC179FF77BD7B6B2F66AAB2693DB1E9F3D6FBEF01F223B01F73EF1840CA50E8A21E19E7CF1C58EB5C93F13CC9AA4ACF1DDF6C08372DBFD0F9421AB4C56DA1DAA8EDEF5E45372E713FF325894E19408C2220D65F5252BCD39673BC7CDD273805A93E42E';
wwv_flow_imp.g_varchar2_table(140) := 'E241A8C40C9729D2ACC6265ADAADFA10B25CA21BACB3B6F045E4E4FFD29D687D5F5EFB032372EC7848D54F83458BA41975D73927D01EE05CC62A4D1A208D5D2E08045C00348C67D1A0A7C78434F959C238680CFDC42E357BFE0239FB97D7AA59325CD151';
wwv_flow_imp.g_varchar2_table(141) := 'E79CECB4D9DBECFFD776E27FCF5634B692DD38E704BD1C8788415F9F1891F97950BD9BFD1DD4684280836D308E2F3211C27C06D0014809ACD3C43BDAE3B121BF4B97D58B6FB829735FE07D5B6F2987BEFF7D32A5AF30B6461AA8BDC1DA6BCB09877FB225';
wwv_flow_imp.g_varchar2_table(142) := 'F8F2870F9635575DA581562A8B7CF603FBB5D41EFDFCC87BDF53892CE76E40ED449C1DD0C28CA953E4DF0F39504E3CF23039F1A8C38BA071F079F8D6113A07471E2A271C759810074ED0FB6F1EFA71D96E938D735A693CD98E4A2F5D2AAC3AF4A96E4DE8';
wwv_flow_imp.g_varchar2_table(143) := 'B704569EB856CA64000C0ACE58006C61638C700441CB4FE8BF8BAEBF51EE78E861B101267ACAEEE9FEDB6F279FDE771F596BD5551339ED8F421CEC0EB702DB6CF86665D2BEA63BB5C59BDE685FC768A5CD8DD75BB7A1F60AFDFD82A477CE09F6D5D66F7E';
wwv_flow_imp.g_varchar2_table(144) := '73CD3677D8F4ADB2E3E69BC94E5B6C5E01EF52C7C4DAABADD6509BB50AB19A2C562F24214C50AB6C929EA169BC974B4B2701321900976714C7C57340AA43D95920B50B6A353211F2383E812A94F5BFA678687BBC736B3951A5D03B36DA50FC46D944E8F7';
wwv_flow_imp.g_varchar2_table(145) := '72D10725FC89D44F5CA2BD7D7DE6A809C2B066D792F41CC5B1601BE0C5A4522603602CB820100FDC5378A203929F836EDFB8F012C12E48F717A27FC35A6BCA370FFF847D3E850F69F5E984A4CB75EF97FD0C6033A0E6D4EC89CB309EB32A68394FCBE550';
wwv_flow_imp.g_varchar2_table(146) := 'D3281AF0B3A2C15F1F7C48BE7EC145F6E9F4ACB1C53D3DB2CF76EF94338FFFB47CE18307C85EDB6E23EC1BB04A6495EFA68DFF0CE0C9C1ADDE68CB083F0C6E5422D41BD476538D4ABA7E1E9E15920118EC2DF7DF2FDFB8F06279E2F9E7B9CD8419BA538C';
wwv_flow_imp.g_varchar2_table(147) := '817CFC01FBC9C9471F213FF8FC71F28D433F2647EEF97E3968C7770B274B332BD648440DE3DF03350577DF2394BF55FDEAEC6BD4409F9985DD43FD56E03EF5C56722AD9138303424B73DF8A0F6F91F72D39D77C90D77FCAD0C37DE71A7DC98B8BFA114A7';
wwv_flow_imp.g_varchar2_table(148) := 'DCCD3A4E8EB4E4BD785FD164494257A4D5B981F0ED04C2C28582C15EB13156DA0C238D4D5E0375E1AEB00C303C3C223CDCA34F395D98F45AE78090FCAB4FEFB75560A7B7BF4D3EBADB2E72EC01FBC87AAF7A559D29AFCEFEE733CFC8BF9F736E4BF07F17';
wwv_flow_imp.g_varchar2_table(149) := '5E2CCFBDFC4A35D23A29275F76654BEDD1CFF37F775D1DECD5D930F90917FD4CDBFC917CE9DC9FC8979370DEF9F2E5F32E90AF287CF9873F16831F9D6FE53890F8E51F9E277FBAE7BE3252A4F4887DEBA29CD452C439672F66F5CD982185FEFE0AB053C7';
wwv_flow_imp.g_varchar2_table(150) := '9326092716A23836BB81770A78E53268A9B5E5A8D22CE5F2FFD68772EAE55709F6C172D4F5E5A6AB65BD5AEDC664A751610C5CB6AE8E7706490D1324EBB535AE6DD33F8C5ED42A6F009306ACF00CC0642ED225FB57B7DE2E5F3CFB8772EA1557C90BAFCC';
wwv_flow_imp.g_varchar2_table(151) := '22B923B0C9EB5E27177DF53F5A82D38F3D46D67DD51A4DF7EBC4230E6DA93DFAC91E42B30DB25AF2E20CF59B055EF2D96DAB2DAC49BC334861E7C69F0C613A60FC5BB6A18FFFCFF0F0B0BC3467AE5C7AC3CDF2916F7E5B78D1061589B4C18CB328ADF6B0';
wwv_flow_imp.g_varchar2_table(152) := '2FEE95D7ADF9EA96E0B56BAC21BD6AA037DBF63AABAFD6527BF493A3E38DB467BAF5A245829ECDBE0A9F9FA47E2BD03F7972B149A473188A73D92B44B150FB7F3198190F4738561A06484E23EF075C7EF31FE5E853BE275FFCFE0FE5E4CBAE908BAEBB51';
wwv_flow_imp.g_varchar2_table(153) := 'AE57838E1DE5479E795630D4064B9B25C9BA2B6B1CF5817336CEB59758EBCD27DE1CBC3B1CB14765AA57BE917CE79C6003601B048D545851CB0C2D59220F3CF9A45CFD975BE5CC5FFC52BEF9D34BE52BE7FE583E7BE6D9F2A9EF9E290F3EF9D48A3AF4A6';
wwv_flow_imp.g_varchar2_table(154) := 'C7E5756898A0E9CA63A8809A021300BAC53F064CD955576A06484E09E7EC170C0C081E0EBEBDF9FC2BAFB4EDC5F9643B2B7D5CFDF2487408BB91B9C06835693D75AAE4311F9B6618D3002B05F897AA706B047F97011A99A526CABCA4FE660CEE5600150C';
wwv_flow_imp.g_varchar2_table(155) := 'F5AC89E6AC28FEFF56DAA3CE1D39DF5632C4393FBC7B71E35D770BF59B855FDF7E873CF9F2CB6DD7FB618E201CB527469401D0F57386504EEE3240792ADA1379E28517E53B975EDE129CFDCB5FC9CC59B39BEEC879BFF95D4BEDD1CF5FFCE92F8234C649';
wwv_flow_imp.g_varchar2_table(156) := '809A3132325CB77D3ED97ECE35D7B6D4267B16773DFAB8280748BB2E5689288E85E3D94970AEBEBDD26580763D85E5140F84CF272C797FDB407751B3860293182C5D2A30CAD2C54382EA415A56795155270994CB042DC727DF33718C43E23264807118DD';
wwv_flow_imp.g_varchar2_table(157) := '3268623DF5E37FFE8307482B70C49EEF97D5674C6FBAD71FDFEDBD2DB5471FF7DD7E3BE135C25875EC58775039F29CD501889D63C49CB5991C4572D8EEBBC9E70EDC5F3E0FA4C7AB699F3D605F618FC180F8FEFBC867158EDB6F6FD974BD75053CA6AB0F';
wwv_flow_imp.g_varchar2_table(158) := '0E8A314A56A3E390D66580364FF26A4A44EFDF662B690576DEECED324DB7EC9BEDD2F69B6ED2527BF4718B376E906A2E5B6D88E2A28AC131E4FE193364976DB696BD777897ECB1ED3BAADB7EC7D6B2E776EF943D35CF40E37B29A3017B687C83755F2B5E';
wwv_flow_imp.g_varchar2_table(159) := '55E1630A59EA10FF48050649756ECCB7E0F4E7817869BECB00639ED2950401FA34C070B379849CC640F138E784A308CE6998512B884231E6F079A84A806E68965529EE81649A8F6BBAAF9A0CC1C9EE338CCC6A172433BBF1EE0C4C981970812E0CAEDC1D';
wwv_flow_imp.g_varchar2_table(160) := '6C15AF8679550C69CE8BF9E6FAD45D6ABB5757B60FB336CE9C73C2F924F31A459104E516BA91EE0C4CE01908C250F0F684858200511C4B142BE83D9FEFB1939E7D7D520E358FB346F58614D42BD0CD6F6E06160D0ED98B388F3FF77C7E9893C7F77E865A';
wwv_flow_imp.g_varchar2_table(161) := '387EF1F4CC979A6ECBF7EF8559B39A1BA096E62BDB4FCD9CD9729BE98F7D29CA86FE9C53E9ED2108C4A5C155E6EB1252176F50B744B740533370CFE38FCB215FFF564BF0A9EF9E21FFD27D84A61AD4C29C726DB54DFCF28AA2A93F76CAF94A5C2B6D7210';
wwv_flow_imp.g_varchar2_table(162) := 'F137BA19E61BC4A59AB5F7403A9E225FAE536197013A35B31315AF1A87F8FDEDD880FAFCD19F8967E9CB5943A09C7F9B8A7A9CA81C9C3F5F0CE6CD13F035E3D6441FCF92D44877F4F4AC3EB433ADCB00ED9CCD09846BA9AA5246A04A94102912D5BAA76A';
wwv_flow_imp.g_varchar2_table(163) := '829DEC0C4381F820B2A8B7572038CBAFF3E39C135C983DAA6347712CE8E5D437507D3C8A63C92268C9B99C53B5455C552EFD09C2B02ABD9D09232A0CBA0C30C6195D7BF5D5E4833BEED011D875CBCD85F70B925DE4CB166F5FFF0D35DB3BF0DDDBCB81EA';
wwv_flow_imp.g_varchar2_table(164) := 'A33F78979DE5A0F7BE470E7ACF4E15E50FD1B40FBD6F57F9906EA0113F58EF0FDAE9DD5666874DDF9A6CAE1CF7633C68E71DE5905D7711EA809F7819C0A3F9BE6CA3E1B4C993CAED8C39A2440DB3B38F002008F01E65E1C59DDA6580AC996922EDF56BBE';
wwv_flow_imp.g_varchar2_table(165) := '5A3EB5EF5E1D818394B1A6A86723D91D3C1BEF7AEB5B6AB6C73F013CEEA00F0870FCC107CAF1877C503EF381FD6AD6F163D87BBB77249B2BC77DFE58C369A1222C0000100049444154ACFAABE82E74B9A1314690EAD80E1E207E1882F434EA200C254827';
wwv_flow_imp.g_varchar2_table(166) := '76EF9B9B01E79CF086542720D40794D51B98A013ED81330CB24982BC4E8173D52A50C5B855AA376A5738ED3F1B5C1CA136983C59D8F4722EBB8DECD156B4DEBDE9CEC0F8CF00529BD71631AA31DAD9DC6A772F30E8BB0CD0EE59EDE26BCB0C046158DCE8';
wwv_flow_imp.g_varchar2_table(167) := '52039DFF5DC11186B6204E2071CE499701A4F16B8EBA0DF1814F3C982D33670373345C3160DEA245E2C240212C82AA36154F4AD5223EDC8CA78B958215027DBFA24C9D1BA738833A65BAD9891938EFD7BF95CF9D75CE8482E3BF77A67CE6E4D3E433277D';
wwv_flow_imp.g_varchar2_table(168) := '578877AA7FC79F7E961C77DA19D6C667CFF8BE7CEECCB3A5536D81F7921B6FAEFAEF38894721BC43C05B5FE29C40C8E4E1D569D456A03C308E0C4073CB37F0D5B67F3EFD8C4C2478846315335F92C75E9C298F3CFB5C45DF1E7EEA6979E0D1C7E481471E';
wwv_flow_imp.g_varchar2_table(169) := '95FBFFF98801710F0F3FF95445F95AE37AF0B1C7E5C1C79F301CF7DEFF80DCF3C08372AFC27D0F3D2CF73DF890E5D5AADF6C1EDF6E5ABA74A9E411B5734E3803C4C94EF6253CC010CD505997019A99AD0958D6B9A2046443CB4B42DF4DFCE07C611963CF';
wwv_flow_imp.g_varchar2_table(170) := '032F8B039CAE34E2F285EB849ED87871A6307DBA14A64D13E2DEE3C2E69A347061DC2E9A354B00CEE3F3165A563FE83BEA0D9B78830B1608DFF5AF42AF632FA7A94A349282725E8D4897016A4CCEF29EC52E2D2E4088D4DEFA9A32457C88E48469C67B8C';
wwv_flow_imp.g_varchar2_table(171) := 'B4C9F77800FA451FB3A4369F6181C128479F31846BF515C6E298B4076C02983E5D073B813CF609D824EB32407A86BAF71D9F81200C250815A2482074E7DC98DB84B160260F511C4B7A45A411A7EDC270D80F3041406217968F1940A2A132E01B07BC8A80';
wwv_flow_imp.g_varchar2_table(172) := '9A808A90A54AD41B19754C2A0E0EDA7BBAE04532D6AB376EF909B546349EDBAE7302C157807355C5833034F72AFF0E9895A5CB005553D48184265042E42CD11022CB7ABAAA53A9E99CB3E4200C05C987140DC250055B31DD321BFCC11E80E09188D80B56';
wwv_flow_imp.g_varchar2_table(173) := '0D4253309DDABF62A806297D03601A2BD7C11F981266AF6072758DD2A776361BB4135917D7D86780070C28350BD22C8931084389E258F0786094121A689A19A1CE258B3714E71427F60012117B01BCA811B43F38678E60A8021C778618790511266808F9';
wwv_flow_imp.g_varchar2_table(174) := '180AC1D821A74B157A747C0063742E7F8C088C24C04408130FEC173006132E8B175BEFBA0C60D3303E3F485A1E0A1E8E3C291A4691B9F730FAD20CD0B15EE6105541BD3D7D33660850E8EF173C3F9CAF81102571C1108C8D3111677CC343434268CC9C28';
wwv_flow_imp.g_varchar2_table(175) := 'DB6894B10761585CE1743738007A7A72ABD3361B63A8821EB86785A34FE453D93965205DDD8803013F5D18871960D2157810C907D2A99669C74B3E0B4B3A3E0C585675DADC384C00D1333E7CF8DCD38F363793890E86612543AF4F03DE265BDD264D121F';
wwv_flow_imp.g_varchar2_table(176) := 'A23682A8CB00CCC278804A1E540B535974596789EF74B3411816BD2D844120810284827AD3CEB68330145685288EC58F0F550A620BC2D09A8229503D50A550A96044CBA8F30303E1AD8189A903531147BAD7348AEBE0F5D9818F74C3893703A80F49C87B';
wwv_flow_imp.g_varchar2_table(177) := 'E0100952DD4057194602A123E5AA208A843CCA8C0754B4A17D73CE19B3A0AB3336A973A1C240F48C913AAC3016571D9ECDBC3AD5EB667719A0EE14B556808754067DF0CD628138929B3A483D74DB2C3C66DC2D5C68EFE34224596596755A1086A67E24D5';
wwv_flow_imp.g_varchar2_table(178) := '11E75CDD6E61A4A3D2B09A24013C41585C5DEA22A951A0CB003526A7D52C967B08168F090021378BCB39271C0106A258558B1248C60561401078725045328A74937406102ABC5BE05FEA471DEB32804E4CBBFF82303469074102E8C5ADB4E19C53755DA1';
wwv_flow_imp.g_varchar2_table(179) := 'A4BBE7A92EA41B68F956DA69BA8EAE68A825E8E68479AA59D3785BA88070C1B509206C6C05D4FE65A2D274E79C608B2128585DBA0C2013F8D207D60EE2421543773658B2C43E6FCE2A953572A424446465D1B315D27DA00C06A995517CDC277191077300';
wwv_flow_imp.g_varchar2_table(180) := 'C401FA902CD3AEF8B0CE915364CE393B224DDFD3FDD16CFB4348609C2390A2383646E832804DCDD87E987024D0C0DCB9453D1CA251943C0C88244D409A251020756C39D60D2742EAE321B10DA8D9B38B9B50F3E6517C4C403F20466C0880380673265225';
wwv_flow_imp.g_varchar2_table(181) := '28C603E8F2230652794148B81C4DEDEAEB13EE93259C735ACD15BD4EC47505D304A9BAB42D56101804604E9A6514F64B586551033D71A7FB53D56E22A1830C9068654589EA03CB1A8AD344DC9A6C6241EC3C5496631E2A7123262D53F157C2C5E12CF3D4';
wwv_flow_imp.g_varchar2_table(182) := 'A8778625D91E222F724F99227CE7D2705654D41BEA021AA53D03E239C092CF06969DAE54BC102E6959C5211ED403F219139049BC4AD899E98A94F158FD9E1E210E0EE79825CD4CFCD94B2DC3C3028302A833D84E66D42F5850FCD8D6FCF982A0603E33E7';
wwv_flow_imp.g_varchar2_table(183) := '3181CF47612263A6A5C5F709B8A76E19B44D4BD3B0CB007ED6F242253424A69D4B514F0B045D55541F6E14C76252A8B4D902F1FA7B882A5D07A28010015F8EA519C281E881282EE24CD6E5C1E14F4792433030193E71082709D64FED7BB2EE448B3BE7EC';
wwv_flow_imp.g_varchar2_table(184) := '68871F7F32645EF0FE00C4994FE7AA99286B4C8CDD331146AF018C0478C6D29515C6EA3240D60CA6D2D840422A42B4CE35F6105228DA760B3345716C8463D2B5A7C7FCEAC638BDBD160FC2D0D48F3C09DDB6CED442A4CC67843830209E1861DC5A55DA95';
wwv_flow_imp.g_varchar2_table(185) := 'C74ACA8A67A0020975ADCC5CAAB2C15096A72B6DD0AE4657583C4AF046684A5C511C0B4CD0F25895284C5DD1D02FC7ADE0426D82113201E257A6A04C266E6DDBFA9099999D883A81B4E4D8B5FD7715959EB81089235D5995AA6AEABC918E6A435F983704';
wwv_flow_imp.g_varchar2_table(186) := '4955B94E2468DBCE3949CE4F1086128495407ED089F6BB38AB670035CA884897600B958886149092D5A5DB9B82C18B14F66A9CB55FEA87A52F5A64521A42CF6C5999260843411044B1AE3E858298F1A9D2348A63C95B69A23816549828D63A0AEC694883';
wwv_flow_imp.g_varchar2_table(187) := '178C83DECFAA61A0EA2773D860F5868B050D97EC166C7C06B24A2A1195A5BE73464CA82DE3211531368D488340907A269121E82812E2A459BEF651322EA437F64914C7429FBD3A487A10865AD565D41A5B92F549FB8B2D646DD2B6AE6C63C35A5D3BA84E';
wwv_flow_imp.g_varchar2_table(188) := 'EAA6D8D2ADAE4C7FA41743B3AEA456E281C0F3660F02322FCCD4A9820E6ADE1E95A410605E9D76A5076128B49704FA13C545C91CC5B1E543D0636A53E70029EDD523C2BAF396D3200C10C5B1B0EA046168EA0B6939C52D196700AB05CF8B15A4D6F3B00A';
wwv_flow_imp.g_varchar2_table(189) := 'FA132874FF5233C0E4D9212C75A3A116C01035F5667DF08B0707051583C94FA11BBDD572E443248449B036464B2EB73188348A95A194B951933C53313E988131B337C21C9306B46BB07C399BE7C433A3AD467077192063F65972BDB43449A90F93B48CA2';
wwv_flow_imp.g_varchar2_table(190) := 'C524E704CF0375FC032F66A47EB59CEA0BFA8C4684876344A04C46BC116995C2B6CC6EE9ABF559FDE8159DD0F1A11E0126B951B1348D32D82110250C500E7517993910150C94192BD0A6797BD436B167A12B473D9C5D06A837430DE623F95067086B5581';
wwv_flow_imp.g_varchar2_table(191) := '38908C30160F0BFF36F1200C6B551388063F3F04848483A000E240CDCAA94CEAB1E3BC88DD6605EFCD0177B228F7787E00CA0C685976AB31DE49A33FC9F2B5E21027EE48DC8F8C1B40689860293149ADFAE9BC5C262C15648CCC0BA1312B4CE6A15486A0';
wwv_flow_imp.g_varchar2_table(192) := 'CB00CC421D6002515BB28009AE53BD2DD94EB1F0D079A810A631C4D090784F495A8AD267AF6A50877B45617F30AAD923A55D61A46514C742BA1528FD409C102C40F9C2F4D207B1F8289602442CA96BBC6ED1F5F166E1C5AA6A5309DD5452F51C916F9B86';
wwv_flow_imp.g_varchar2_table(193) := 'BA1F6136828696A679CC4B9701AA662F23C139D55C9CD2D84819AC94A69B87C56EEAFFF002074B3EC46B44AC2A008459065587C887D0D3D890A010AA07560DE218D48076B0A20A38210288244B5AB352A1AE81D7425D8182B0F62A54D140C60D44C94A81';
wwv_flow_imp.g_varchar2_table(194) := 'F14BBB306046B1CA242556040BBBDA84AC2A49601C95158A77ACA2AC28994CA8CFA557D52018D7CE09A1C22A83B3FA46712C511C0B2E599B8322BAEE6FAD1970CE09D29049F710C53A91BA3916848D130DAB45C54356FF3B1B4949403AC11CD2E8A57D73';
wwv_flow_imp.g_varchar2_table(195) := 'CE559586A8F1C117FAFBA5D0DF2F998452556B6C0930256D02B40773D5C5A87DC7D5690CACCC005102DC3BA7E30232905086158B30235B7C7DF2AB409F5910865AC449770590F1BB9040486BD409FBE49FBA4421963270AFAA4514C7E3D7A9265B627562';
wwv_flow_imp.g_varchar2_table(196) := '95824981A484766E94609DD37883B82164040C0C44084471494A3781A7C1E62A8AADF40CC00344EA72049923C92CDD2CE53CE48A99CAB8A1AE97E8E899E03150C90EA16454592649E8BAA69ACC9D6B272C6D8CAA0B43C0AAD335D72795D28C1B9CAC68CD';
wwv_flow_imp.g_varchar2_table(197) := '559E78A5577A067041603A613469929804EAE9B14D171E6E3D22365D5EFDFF1083945C82E00B425D5EA57D17F893604C47BB6A04D3CF7A2D39E78A87E4746CCEA92DA3B6C65265009895FD0E69E2627C4868EC0F3C58DC3751BDA5A23C0704929F038C59';
wwv_flow_imp.g_varchar2_table(198) := 'EC1A3C5278B30C94B9EDBE14E2E1E2F9D46BB08D0C50AFA9899B6F4BB012070FB60CBA043B577B198FE2585065506BD079016322B50D54C1AC1CB04A4E4B2004ECA6FE0F0FDF8C425D55301401FB8CA11AD03C6088A21E1688947E41B4F4953E17F0E828';
wwv_flow_imp.g_varchar2_table(199) := 'A096C97270314E562C0061838DE3DDA83C33E2511C8BD9686A00A356522673683AFFCC2B2B5997013267A8FD8926A5F0A3CF297D6E50E318BFF55A72CED9D10908170286C9CCB33179B210F2F0EBE118EF7C08CB7B82586588FBF123C99BED8F73CE5669';
wwv_flow_imp.g_varchar2_table(200) := '1BBF1237CCECA1224D1980F980A9217EE7AA05188C647D293D87A0D9CE2CCFE5D1EDD185593E919E5963E1E15500D242D51BD2B2CA379AD68B810BA8911BAB57A6A0D217379E347AF1308146CB8FB11C6A16F384BD60A1FACD993F089A231FA4319700E9';
wwv_flow_imp.g_varchar2_table(201) := '48D47293DA4F24B227C41E254C1818B724AB6DB95C4E045CE0B4B674E58368738AE626A32641E8D875A846FE79DB6AA84C14AB0029F4F7CB4AC500B8E590A0E8AE4118564D1E44CE120B400084F8B2890355159A4808C25078F84E6D0EE7AA255313A88A';
wwv_flow_imp.g_varchar2_table(202) := '459531CD80F521A91A670C06AAE7631F1027AB59408226A529A756ADEF8C238A847C0F969E68C039275657554142E6BD5C56F3A4CEC5EC78E609C2506C1C3AB63AD52AB2A98FB70DA6E39BA6DC53C03967AB097DA2DF2B1503E06F0EC2D08C5C06CF8424';
wwv_flow_imp.g_varchar2_table(203) := '81345B5A5562A14B46712C4C94A5E9664AB26CBBE3E8F903AA162151BDB4CA6AC3A4A31AB0FCDB2083F9F36560DEBCE20BF4BAAC531F40BD1A52E9491C894DBD2C7C796941180AC40BF8F147716CC413C51AEA7C94D50FBDAFB279F2103792AE440AC3D0';
wwv_flow_imp.g_varchar2_table(204) := 'B607E7608B462A17CB38E784E7091453B27F83ECE4953CD539B107AAA1734EA34590BCAB0DE93C68A4158C1784612E46E79C197A187906AA5621E10AFDBAE1A56A55A15F4305A41FF9857EDD04D3E5DE39978B332F037D1D3584D50F063550EF53B3CC94';
wwv_flow_imp.g_varchar2_table(205) := '877F22A47719A0C9A7804AE101DD1415095589B49AA87409A70C7508D3659154483D561CE2E9FCB6DF6B7FCA2A540E72FA419F9C73425C2581589D9CF23593B53DC6CDF85BC651B381DA9930330C8C6D41C83363A55DE91800E9C504004C86811A78B817';
wwv_flow_imp.g_varchar2_table(206) := '6B4FA13E7B3586296FEA85D6E1201AD291C9E5E166D56792CD1053F504638C386A89114256857148630C18881E988BAC66217A56260F515C547D9C7359C5ABD2C08B5A67C0A2594CED0000016349444154F815183FAA59CB4CA08CC4BCB332798098EBE1';
wwv_flow_imp.g_varchar2_table(207) := '632C1E60643BC3A5CF73A56300E79CE9F54C4610868284E301F30F18A4CE451DBC19A816002A0B80610D9EACEA185F65BFBB7A80FA66CCB0B33941185615878930F8600E03F5F5C3B05505C79810C5B1F44C9922F41BFD1EE37C8C2833AB33AF8CDDDA52';
wwv_flow_imp.g_varchar2_table(208) := '358C78A1BF5F38A80611FA4A8C1B6F13B60ACC0941B3B292EECB9443E7845592F9A6DF3C13D1CB085AC3BC3FCAD19F288E8B760C06BAC683BC0A2B727A1086C26418F4F4884DA64E6CA7C7CC43A8D506121302008843083044AD3AE93C8826135472FAB2';
wwv_flow_imp.g_varchar2_table(209) := 'F4038700E3870160529FD7CE9076006B8B790E43E13E49FCB40793FB74FACEB8FDCA4A7E1A785ED6772560EBBF12B3738DAD4A495CB4152413BAF1653B03B867D9DC6295618F0009CDC36EB45710122B076A571A1A65A472FD068F5934DAB75AE5823014';
wwv_flow_imp.g_varchar2_table(210) := 'F3284D9A248CDBC6AF2B06445EAB5E561E82C3AB463E8499D265990F04CDFF070000FFFF1AE774AA00000006494441540300A577F08A84B8770F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5528718852785777237)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D079C2445F5F85F75CF6EEF5EDA3B92241141090292E144903B82FE8DFC48120C2020F24304F487622499311245250A0202820441E20912';
wwv_flow_imp.g_varchar2_table(2) := '8E9C7306C9E9B8B4E976E7FFBE35D3B33D3D3D79A66776A7FBB36F2B74D5ABAAD7F55EBDF7AABAC791E44A289050A063299008808E7DF4C9C0130A88240220990509053A98028900E8E0879F0CBDB329C0E813010015124828D0A114480440873EF864D8';
wwv_flow_imp.g_varchar2_table(3) := '0905A0402200A0420209053A94028900E8D0079F0CBBB329E08F3E11003E259230A14007522011001DF8D093212714F0299008009F12499850A003299008800E7CE8C9903B9B02C1D1270220488D249E50A0C3289008800E7BE0C970130A042990088020';
wwv_flow_imp.g_varchar2_table(4) := '35927842810EA34022003AEC8127C3ED6C0A84479F08803045927442810EA24022003AE86127434D2810A6402200C21449D209053A88028900E8A0879D0CB5B3291035FA4400445125C94B28D02114480440873CE864980905A22890088028AA24790905';
wwv_flow_imp.g_varchar2_table(5) := '3A84028900E890079D0CB3B329506CF48900284699243FA14007502011001DF090932126142846818E15009BECBDDF2C60A3BDF73B6AE3BDF69B63E12B5F9BB3F157F64F6FFAD503D3330F3CA40036D9E76BE90DBFB44F06BEF895F4865FDE374DF9CDFF';
wwv_flow_imp.g_varchar2_table(6) := 'F7E082B251F5C379D4DBFC806FA437FFDA41F9A079E1B2E1F466FB7F3DBDE97EFF9BA6AFC47300AE1AFB136EC34FD3CE463A560B7BED9726DC90F1034A0F6830B3823619AFDF4FFA0DDE4DF63D200D6CA6FDF6DB6B7AF8F543E6CC040E3CF4A899C04187';
wwv_flow_imp.g_varchar2_table(7) := 'CE920EBD3A4600CC3CE0D0599B7FEDEB7336FFEAD7E730E1D28E3B0730C639322D326B747474D6C8D0E0AC25030332323828E9D1D18229E174774BD7A449D23D79B2744F9922DD1A4F799E18630ACA5692618C11E338625C371F34AF5C7D279512B7BB5B';
wwv_flow_imp.g_varchar2_table(8) := 'DCAE2E219E03577119935F3D9D96B40F23231235B6FC0AF92970D396A36DA5B4CD94E749576F6F067A7A843C25427EA588943126D757FA0DCE94E749CAF3C4715D89ED4ACB2C01247DA400A3E93956E80484824CA0ABD4509C5237C7F3BD992AD56722DD';
wwv_flow_imp.g_varchar2_table(9) := 'ED433D242D4E7A8E7153B34C576A56CAF3A44B27AE059DC830B43775AAF4F4F549EF8C19D2ADCC0D6386C7EF388E9DA8DC0B42B85C306D194F85094C473C782FAEF8C8F0B00CCC9B9781F9F365E0DD77A5FF9D776468F1E28ABAC0587D66450884010156';
wwv_flow_imp.g_varchar2_table(10) := '11A25A0BA55544D75AB79A7A01A1902710742E5583663C959D700260E60107CDDAFC806FCC492F1999931E1D39323D9A6EA97A874601A30DF7F7CB1285515D810B26884EF0D1254B044605469561D35A8EB2E4A7558014D4A92283D5B6A7AFCF0AB89EBE';
wwv_flow_imp.g_varchar2_table(11) := '3EE99D3E5DACA0530DA60A34AD290A6D94162D69DC1708BE86A00B4A4BFAD1C44627840098A9121A9B6EA3BDBF9A1E5CB4788E32DBAC615DDD60BCA1850B6589AAF4D2A22BE5A9B6A15A46976A1C29CF1356D37057D29A91D6892ECAE830BB657C9DF430';
wwv_flow_imp.g_varchar2_table(12) := 'BF15081AD722B5FF1923B4EB4325EA7A258DD1D71CD07FADC438C80B8E8138797ABBFA3FA37D77DDEAEB35A546FA48AB19A82040BB6C4A1331231DD702C0677C51092D2AAD6132D4796B9FEAEA868D4E9A153066BAE69A83E91CD715D4640BC6E4EEF911';
wwv_flow_imp.g_varchar2_table(13) := '638CB5E55D151029CFB336317DC6B6664CAEDAFBD2E46B646848AC99A0E6810AD0927E0298993256C02E5A24430A836A5AF407CC0C042F42D896E3FE8205823654CB308C29A4592D781A57277DA4A8EF002100340E6FE33195C3382E054098F1FD41C26C';
wwv_flow_imp.g_varchar2_table(14) := 'C5C02F536DC88AC644B6135A55783BA155AB60D28FEA8A5D2DBE8ACA33E1C35051C5DA0BE1E8EB56DF47973A38113EC614673A688C90F5B43CBE13A0A76FCCB4E85513A3A7AF4FC8077AA64DB3E6474AB5A0DA7BD88E35C704413BF6AE923E8D3B016025';
wwv_flow_imp.g_varchar2_table(15) := '6E76C5AF6480948189B1A901D451546B0B15A8D6461138AE2B308846332BA332074CC03DF26281745A1887FED33F8DABF0B16350DF012B72D93E64EB53D6E20955603C8C116D83B0516642A899C2A4F64B07A40B2A8650E1EDF19133661A8C8FFE8EF5D2';
wwv_flow_imp.g_varchar2_table(16) := '198BB6776C66D6CED7997264B53D85F1F10358C8AEE2ACE4C3BAE5074394C4A7CC6E55735DBD58F5302900E2304DC9BA819B081EDA47D5CE0BD5E1172856343AA28C6EFBECF75FFBEEE301775445181DB51BED6510AD4581103C65C71D85B0C179F49FFE';
wwv_flow_imp.g_varchar2_table(17) := '58503381BE36B88998D121080E3D2AE646EB6A6E5C0880E0AACFA4AE76C48EEB4A4A1D714017BE01557361E26ECDAB8689AB6D3758DE1823B4E5F79FD018236C2D4A05172B33FE00D468420B3A16C6C4BD2814C61861FB8E315BD0F1A2B65397BE48998B';
wwv_flow_imp.g_varchar2_table(18) := '3E02658AD57CDB715DA17F681C95D2A1E6C662AB881038243D531D85B13559A4A14AB29D4A0AB5B2CCCC030F56899A3E32ADAA228EA6017534F5EB1E367BD903EA58B2A08EAB418DA7B54C645F95118C5106041C4798FC3E4496AF3093F65849F3A0481F';
wwv_flow_imp.g_varchar2_table(19) := '680FDB3AE5659C7C29CFB3931FC76045CD19ED7FA8EFC6689E4229759D7601C7750546230E44B589AFC3D2D7A7B186D0B5988611852397071DC290BB9989D09F94E709DA5417C24CB5ACCC9D89F01F41D0FEDA80D3CEA4DE649FFD8F1A1E183C12679B31';
wwv_flow_imp.g_varchar2_table(20) := '467050F5F4659C4BFE0ACE2A4E9C49648CB1C3812151B5ED169AAACED8CAE4D99B0DFC075E980695DA826E3DD266039B881515AB71378E3D00C71DCE3C0D1DD7ADAA1F080CE81005CD780E55752ED6C2ED2F04DA56006CB6FF8147193775A4E3BA92616B';
wwv_flow_imp.g_varchar2_table(21) := '11C7D5B8E3082B4714F8CF9649067372A0C60A02DDE222EDDF8F0A59CDA3F24BE5B1A2C33076BB51573004115B77A5EAB4E21E6303CAB59D4753689D15A8E5EA85EF1B6332CF487138AE6B9F9BE36AE838227A4F3AEA6A6F21A04FA4FD9EC64CB59F9C54';
wwv_flow_imp.g_varchar2_table(22) := 'D7913018504C652DD6732795CAA8956AF3A219583BB9ABAB58714138605EF4AB6961F7B2D5A4609BCFAEEEBAAA1352A6280226B50F450B557723ADEA33664EBFF6C5AAE1AAC994C280D043D8D1D721358706B2FBF2FD3A26D47A80785AF196C253E93DF0';
wwv_flow_imp.g_varchar2_table(23) := 'D02FF0D24FE837AC8E3CDA8756C618C1BC2900632A6D6202958B5F08544ABCB6130030BF48FAC84A0750B41C132D0BC6E8A4038A144660B05F0DD8555C6D5163B44E91F2F564C33808179806E6C1038E971EA609E235C6D87D74F6D0D1301CD70DDE2E88';
wwv_flow_imp.g_varchar2_table(24) := 'A37683037329AD75119A6823D405478FAAF39E9A4FC6346E5CD621A99A4FCAF384F703ECEAAEF81146E379534F9A72B5A710709A32D61A9156CAFC4C30B69082000314349B4E0B6573104C6B3C581E864110A071A43C4FBA746207817BC1F25171989B2D';
wwv_flow_imp.g_varchar2_table(25) := 'C75C7BBA574F3C58D61823308E351DA64EB5A7FE72CC132CA871FA648C115651CB5C9A57EC8F7ED35FBCFC3E90660B93FAC61869A4A7DD189339BDD8DD6DC783A6457B848CCF18235CD083B72B2DA829C6561FCF2D4C17CA4E7C683F21D05602402A5CF9';
wwv_flow_imp.g_varchar2_table(26) := '7D46B32BDEC88865F2A8C94339EB88D289877A0C30F970D83121252404A2705493E7E3F72739E1B0EED7D3CF201EC775C5713300E3A63C5D41351D2CD38C38F4A02F000CE843B9B6280F1D0901EA95ABE3DFB76DAA20B49A8986D01CA1500D0E1FD7C408';
wwv_flow_imp.g_varchar2_table(27) := '55081C74684B5F500BD2D109265A199F79C0C147D98901432BB0A23379E8939D2C0166755CD7DAF8A8B7EC02B0EA38AE4BD13C6005450D6615B41058AD48975B55F3905590C08B8EBFC1829A11AC84ECB93B6E61DF2A40D7F8224A43841F80190260820C';
wwv_flow_imp.g_varchar2_table(28) := 'E8761F260936BD4F73BF71849A3DF3CF2122F52D50867A3C2BBF4C30E459212CA8C733447382063C23E8016D88931FACD751F174FAC8668EB71ADC6D210036DBFFA0A306172D3C72509D4843FDFD02F8939409CA2A1A9E9896795133815223D6FBC6182D';
wwv_flow_imp.g_varchar2_table(29) := '1E00C7B1E952D582F7689B49DFAF0EB5200CAA832E58CE98401BC46947411B0B16AB2B0E83410F00DF01F481290156D952C81188F8398290F30FA839824035C6E4A1705568FA657AFAFA84387E12CC8ABC82D9041A02CC4FFF88DBEC10CE46D2C3E21F6F';
wwv_flow_imp.g_varchar2_table(30) := 'FFD2326BA63ABADBA1DB4E5B7422E51EC9A46472F9F66B30B4131346AAA3B3E974DABE8DC63BF9980176951A1EB63B004CD41CA8F6116EC61863ED5CFAE8E9BE38FDECE9EB936E659A70D938D29CFC035851EDEA9AF557D463E3231C8A31356332C6885F';
wwv_flow_imp.g_varchar2_table(31) := '8690BC2840602020A051CAF3A28A24799602ED610AB45C00C426095500E0991E25545B141536774E400501ABD612F5158C2A202CEC330AFC735C57505B1DD71518052600024572515669F093012E54E128B0E5B43FDC43201152A714D0A6ED472A95E90F';
wwv_flow_imp.g_varchar2_table(32) := 'A1F6C971DD52D5927BED48813630059C56D225C3FCE958EC211887D5D2F719D8D5B3B757AC4D8ABDAE716C5357E3C6989AC902C3B3176EF7E1D564C0BE668FBC0002F634E5D943473BA9B9E13A2A22AC1040165400220CD188EA409954AD840298020D76';
wwv_flow_imp.g_varchar2_table(33) := '0856D26CB04C4B0540B023D5C499A0300B93D4AEA2ACE80128892BC8DC1A3746995DC118A3A669064AD60FDE4CAB4E0104F28C31C2165FEF8C19D2337DBAA00A633A109226DF02F7D48CB0A68E9A12DCA39E547985C75F4D758415020A61853FC102079F';
wwv_flow_imp.g_varchar2_table(34) := 'D40F8336C4FD62F8B8176E9B74B1F27E3E5A0E75FD74C7872DD6029C563D80E0EACFC48199C360572455CF51D52D609F2BC329DB090E2F6C79BBD5A613965594094C5EB32718F869C77AC7B30C8350628B2B484F6354A0A86A8ECA6ECD064D07EF37224E';
wwv_flow_imp.g_varchar2_table(35) := 'BBBEC314C75B35388D311921A582A8A7AFCFC67BB382C9FA5DF47E317C3C0F7FFCC110DA14AB43BEE3BA56D0124F4029D0622DA0650240879EFB63556022B3374F680581AEE8CAE58270002803E8EC11B6F67034015DEA002364F50450F38D3139DC4D8B';
wwv_flow_imp.g_varchar2_table(36) := 'A820F271FBFDF3D37E487FED585470F965C8834948037ED95A436BCA6469C0D86BC1837964A10ABA717E012111066362A07D2D836CE73A2DD4025A2800D239DBDF7AB4D5064FE944C6264F799E6572F6EA539E277E98EAEA2AF91899C408886285603CB6';
wwv_flow_imp.g_varchar2_table(37) := 'F35079517DEDB9FFEC1E38ABA8A4D12D8AD51ECB37C6088C179CFC96F934DF2F0573E3504453F0B51442C06A2BAA39D017EC6FBF4EADA13146183B502B8EAAEB99B13669D787AAF1241544540B6804196AC1D112013033BC07CA640A402413EBFDC8FC2A';
wwv_flow_imp.g_varchar2_table(38) := '47CDB15B0489152ADDDDC2B615AB196A7A103FC202C71CC20246C51C2968CAEF931F060AC0100833AB9DF81F200984BEED8F6910A89617A50F41C8BB59630281C3B8383FC0B80004129A4A8D28936A0DA0C0CC1639035B220054E41DD9009A558DC2185D';
wwv_flow_imp.g_varchar2_table(39) := 'B995E9614C3CFE5DAA71F880100822349A30A9943DEF6E8583A6E3FC4383402B8159AD6F43FD1C0883A83E5016C6B6A0A6934DAB36E387C13A081CBEAB8060820E683280E3BAC16295C7B51DAB39F961E5359392410AB4C80C885D00B44AD205695D511C';
wwv_flow_imp.g_varchar2_table(40) := '61A1E6078222E5A91952C6FCA808673585B47D84121A4ACAD3F65570198358CA4782498180E01425403C08081004417E2D5165C70807871CD715B415CD906A2E70A239A04904813CFC1CD5E04ACA2A05D40C68056FC42E006454DAE6450869E3CB1863B5';
wwv_flow_imp.g_varchar2_table(41) := '0F0400504C0BC194B12BBA6A33ACEADD53A6086956751F2C834B832FED1F7DA26F165448E107A13F089606B7D619E8EAE08D5A0914BB00583234B8358E31ABDEAA232C6ABF197B94B3ED16162E14EC70563AAB6A468C147C94B52B1FEF1328B012715680';
wwv_flow_imp.g_varchar2_table(42) := '9D05EED30E38B0794917C315448FCA6DC157AB0361B05C38CEEAC8D698ED53B62FF4873183588262EC00001000494441542F5CBE9EB431461CD7CD9C0AD41066775C37273C6052A9E2A2EF00AB385B7D39D09D8C201A638CC0F829CF9394A7A01A0AFE15';
wwv_flow_imp.g_varchar2_table(43) := 'C775A55A6D42922B430193DE3A1389EFBF135F53999654AD9DE5B86E6ED21A63C4646EE5FE3BAE2BAC66D8E778DA719831D944CB4AC4A53885B276C5D3C94859C7D589E838EA60D50AE9B4601F6B4C600898A4182ECA00300102C432AE0A2A18DA020CAD';
wwv_flow_imp.g_varchar2_table(44) := 'F6380C42B928003FABA1DF27FA431F1D57FBA47D89AA13CEA37D046124C08C15E041D820EC8091EC093F9C998065EC88AF0CF942D28E7B6040385BE0D7075FB89F49BA81145033A081D82A42E55454AA418566AAF7DF186399D03285AE1A304601336A19';
wwv_flow_imp.g_varchar2_table(45) := '98C8715D21F4418A5CDC775CD7E285C1C1892A9AF27465027A7AECEBC33901D1D555045320DB18A18F29CF13EA59860EE029A7E6E6FAE466FBA56D828F7CC95E30B7654C0E3B859811011364547E1780B2D532A33146C96BB22D8E053033ED8FE564625D';
wwv_flow_imp.g_varchar2_table(46) := '98126A46604A207801E2F8428C29C493A995FC6F140566C6BC1BE034AAE3E3090FDA00AB39A6056A3A4E2C182B68161863720205A19207CAD4CA55D288CB6744183ED83E420CC16341855097025E7B1894BCA02029D60F638C2074F2004104A8F04D799E';
wwv_flow_imp.g_varchar2_table(47) := '445DC6181D9E11FD970149AED82850C36E403D7D8B5700D461E3C028D8EF302C8CCB072CEC419E77DF15F251992B2684E358138403488EEB4AB9D59CB6592DADDACC6AAD2A7855ED15E9184225E57919ED4443CB7081B2C6049850E3C6182D928140B1DA';
wwv_flow_imp.g_varchar2_table(48) := 'A38AAFF6CA49CD89400127D641D461E3186332AA786FAFE017C047C04B36DDAAAEDA1551EF573A16631497321CABA90F294F5743CD8FC4A1F636EA77CE1E56DB188DA11142A0A03D6DAB202FC9E81C0AD4C123B510293601303364DBC040795E7B75ACE1';
wwv_flow_imp.g_varchar2_table(49) := '2587C96036BBE2AA5DCCEAEB0FCC715D61D5CC01E92CE8D2E817B321CC6971B05AD7C954A8DB088A9C3D3C79B25DB5C9B78DD5F98FBE32764C1100BA900E8E3DAA09EEE3B4C361871604DDA2CAF979B4035853436982D9010EFF7E12B60705C2BCD2CC5E';
wwv_flow_imp.g_varchar2_table(50) := '39CD449E873BB4C76999586D514EA65960F5D54929CAB04C6404049087A3C204131B1BDF7E5A0C0F7EF6DD7B6CFF0A514417A38FA13B30140EBA7A702348B0F98194E7594D27E5792AD34CA8B5FCA43146B0EFD180529E6785A314B9E827420513CA379D';
wwv_flow_imp.g_varchar2_table(51) := '48935FA44A923D0E28506F17E31300A19E3AAE6BF78F7DEF3A93985596432CDDAAD6A3E203C69850CDF249C77585D5BA67EA54C14CF0A64DB3218246EABC102EFDEFBC233EE08BC8FD1087E6C360ACC67625D72D435673008F7EA9A6118829CF13189A38';
wwv_flow_imp.g_varchar2_table(52) := '42A15479FF1EE580727528033D7BFAFAA437FBAD0268E4B8AE8F2A09DB8502A1C5B299DD8A4F00D4E9008481D00C08AD0ADB4CAA94C0EDB8AEF4F4F589152A0816859EBE6C5A050EDB6529CF13045BCAF332ABB96E1F3A6EC26825C89ADC0A52A00E5E09';
wwv_flow_imp.g_varchar2_table(53) := 'A2A9241E9B00185EB8C87E80B3924E459651F30075D5426481F832594D1DD715C7CD402E9D4A59359CD5380C9489AF8799962CADB2A7173339C9FF8402F91470F293CD4BA96A3BAB5615DC18235A5F3013529E57D6369622575A8508EA39E03B1B47D4E7';
wwv_flow_imp.g_varchar2_table(54) := '805A8F56C17DCB345AAE088A7191CD183041304F7CE857F38438268A1DEFB81849D2C9521468C4BDD80400E7C48DC9B7E7D3CA68766F5D9910D51EA875504C6A6B220C0D89C5A93B0836D47DFB9C834EDB63CFDF715D311AB7BB048383C2FB0208059883';
wwv_flow_imp.g_varchar2_table(55) := '106110EC07B8EDD983ECC74328C7BB05C132E1386383118130BE70D962699C74B49563666D1F7F02F9E02F560F6D03FBBEA7AF4FF816217E103E61EEFB571CD72D5635C96F070AC4B815189B0088A22B8C89A71F06240EB3949AD851386C9E32B35F1F66';
wwv_flow_imp.g_varchar2_table(56) := '85B111264B94F961540403B8610C4ED3594DA2B757ACD371D2241BE278F4998572166FF61F4203071A6508B1F31DB73813D11663B23B11BA0BC1F70BB3A8AA0AE827ED71EE21C7C4DA5FF28DC917A6518819075A17E608879E0063CAD78BC295E44D4C0A';
wwv_flow_imp.g_varchar2_table(57) := 'B454003031612A1891499DF26A54EF7552FB2602CC099313C23830106998A1E647A8F81DD7CDB7EF355D0C9F3146D078E803CE40C72D2E2CA4C4658C11FAED83E3BA99B431256A25B7120A544E01A7F2A249C98A29A00CEAB86EC649984A555C2D299850';
wwv_flow_imp.g_varchar2_table(58) := 'A0520A34AA9CD32844E5F0A01603E5CAD5737F926A107B6E375BDA19F6D87696EC317B6BD9639B59B2E7B6B3DBBAAF71D371A3353E58CFE34FEAD64081D804008E2BDEAFAF4408E007C08607B0E77D200D60EF07C7CA7DECFC5ED7916FECB8435BC3C13B';
wwv_flow_imp.g_varchar2_table(59) := 'FD8F1CBCCB8E72F0CEFF23DFD8A9BDFB1A372DB75A6FDDE0634DE23150203601803D8EAD8F3D5BD1B870ECE91E36CC6DBDF978F575B700271F02228C03C132BA64249C9DA4130A2414284181D804806EDE8B05297F1963C43AF554A54F799EF80EC22E8D';
wwv_flow_imp.g_varchar2_table(60) := '5BA75A2ADFAEC69948199C6E925C09052638051A39BCF80440A0D7A3ACE6BA45C76A5E768F5C8581151C7E18C05310A54C416692915020A140310AC42E0050DFD9FBE7241EAFB1220C8A75AE51F94BD474E81F1C9404DA8306832AFC99078D7ABE099EDA';
wwv_flow_imp.g_varchar2_table(61) := '2910BB0030C6087BF3ECFF03EC9757DD7DFC030A95D67BE0E967E5C7679FDB1238F2D433E5C83F9D2E47FCE93439E29453E5883F9E2A479F71764BFAD22A1A84DB3DEFFA39B27060A0D2C797946B22059C26E2CE438D971EF03DF8C618D5EC4D5E996209';
wwv_flow_imp.g_varchar2_table(62) := 'EA70AA8E63B1BCCB0E0CCC9B279C6DE7882E476581A1C58B2251BCF2F6DB32E7DEFB2B861BEEB94FAEBBEB1EB9EECEBBE5BA3BEE92EB6EBF33039ABEE1EE7B85FB95E3BB4FCBDF2B7314E79CFB1FD0F87D32E7BEFBC5AF0FAEAB6FBE55AEFECF2D728D86';
wwv_flow_imp.g_varchar2_table(63) := 'D7DC729B5C73EB5CDB9EAD5345BF7D9CED1EDEFFF43332A45A40E4C34A324B52A0D137631300C38B170BAABFB5FBAB1C05C75971F0A139F08E3F477601D2EC2CE00004DC6EAF4ACCD1C5115423BA42A57592A6D55FC10E03C06E045FE0211E5DB33037E5';
wwv_flow_imp.g_varchar2_table(64) := '79F6A831FDF4C7E0B86EAEA031C67E170147263B24C6A850F4B51BE2B9924924A140E329109B00E8993E5D38CFEE76774BD40553211CF0095850BB9D34F99437C6886510651E040200D370BE3D08942D0065288B5399997304C44B391F539E67CD148E10';
wwv_flow_imp.g_varchar2_table(65) := '5BE8E911040C0C0C233BAE5BD0443D198C03FCB6ADEC3B0AC5E8544F3B49DD8402610AC42600C20D07D33025DA01ABAE5D7DFD37FA5881474783456B8A2344607A048A05C599AE09535229A1C0C4A2405B08005670BB02F2A69BAE80AC84FE0F7BB03AD6';
wwv_flow_imp.g_varchar2_table(66) := '4B72B48594E7494AB58FAE6C688C29408B679AEFFB01F81D0A0A8432288F70210CDD5205232DF61E9A8C6A1E95E00BE348D2090582146846BC2D04807A03F5CF148066148E59D5795180E98060DCA60B6B647260781F323905FFB1F787F98EDF820582D3';
wwv_flow_imp.g_varchar2_table(67) := 'D1C70723F39D009C8E83F3E75BE7633F4E48051C93DCCF21D3BEE1EF18D07B941F0097E2E428B48F2F5736892414683105E21500CA1CA8F8A8FB38D3600A42D2BC3FCF3D0BAAFA6316104775F76944DC9E1FE013E2EA5484D148F38EC1124D2F19E8F78B';
wwv_flow_imp.g_varchar2_table(68) := 'D614B225F99E9556948F6CBA896CFFD12D649B8D36902DD75B47565A7659EBC8C387E17F540327644FD6AFE1B8019F800A19FC04BDD90F6FF66A999EBE3E61CBD3182313E19AA43E91F53FB09ACCDE607D0B5BACF32179FF0ACB8BEB381361781D358696';
wwv_flow_imp.g_varchar2_table(69) := '3C31639411148CD15085022B28B6B9657A98DFF701A8FA1C5C3571026212C0A838C900D284980C6E57775D0FEF03CAFC3FF8C2EEF2A32FED293FFAF2176CF8DD3D77972DD6FD902A23466CFBCAEC8EEBDAB83199BC628D1A638ADD1AD7F9CBCF982E5FFD';
wwv_flow_imp.g_varchar2_table(70) := 'F427E5874AA71F7E794F1B42B3DD666F2D4E03C73C63EA14F9EC163365FB4D3692CDD65E4B3EB8F28A32A5B7675CD3AEDD3A1FAF00D0C96199B5BB5B529EDAE4BA9260EF5BEFBADAFEBC3004B082DA3CBDCFB7F27DA2195D6148870121E0835FB6DA7052';
wwv_flow_imp.g_varchar2_table(71) := '8F27DFDD7337D9EAC3EBC98ACB2C6D275AAFF6716A6F8FF47AF509966AFBD2EEE55D158053274D92494A335EC19EA18CBAF6FB5691AF7EE653B2F5FAEB35ACFB2B2CB5947C73971DE5F03D3E2F3FDEE7CBF2FB83FE57CEFEFE77E4380DBFB0ED6C5979D9';
wwv_flow_imp.g_varchar2_table(72) := '651AD656BB236A56FFE21500A546A1C2419759018CD195D30769E2A5DA87EF43D874CD35E47DEF592ED7181F0B9DB770A1BCAD367CFFE0502E9FC88A4B2F2DDB6FBC61246CBDFE87A56FCA6441ABF14147235327F5CA5AABBC57BEB0DD6CF9C117F7909F';
wwv_flow_imp.g_varchar2_table(73) := 'EEF7150BDFFAFCCEB2D3561F9535DFBBB24C9F3205F491E0A8F09B367992ACB1F24AF63B02ACBEE0F8C9BE7B09AF15CFD276DFA3664777572AB23E99EBADB66A5E9F979A3A95EC48E84AA584D773FD71C2D85E77972D0B6DDE5DB848DE527FC8E2C1419B';
wwv_flow_imp.g_varchar2_table(74) := 'C7BF1EBDFFB98F7E846843006DA25785F0645D08A6A9C0A1BFCBAB50D86CED35E5A09D76900B8FFAA1FCF9B043E5539B6F2ACBA9A99552C1D490863B0889D3B2B12AF38DAA771C3B1F3F002640B3FA0223D24E18F85EE0F0C080E03F584E99A12B3081EE';
wwv_flow_imp.g_varchar2_table(75) := '79F229F9EE9F4E93434E3845AEB9EB9EBCAE6DF8C1D5E5987DF68A04B488F7AA06817F031FC5A832C8A6ABBD5F8E549382C97AD08E3BC8673EB2B96CB3E1FA1676DD7A2BF9F6EEBBDA897CECD7F6CD6BC74FC000B337F8B01CF395BDE4B4EF7CCB32FCA7';
wwv_flow_imp.g_varchar2_table(76) := '676E66EB6FBBD1865620FC7CFF7DE4946F7D43F6FEC4F6F25EF559F87583E1AEB33E96D7E7FFDB6D67E9516D2C58C68F4F56C63B6CF75D72E53185FA264DB6B7FFFBC69BF2F373CF97AFFFFE4439E5D27F0AEF5AD81BFAEFFDCB2F2F5E57465068B2E97F';
wwv_flow_imp.g_varchar2_table(77) := 'EBBE7F552B507F73E0FE8209B2DA8A2B88E320729BDEF48468A07502C0275F1C2BBDDF5630D4765955AD39A14CE0E98437666CE2DCFDC453F2F0732FC80BAFBF2EF3D58B1FACCACB2C40302F18771C57786D99ADCDADD57EFD8EDACA5BACB7AE945AA158';
wwv_flow_imp.g_varchar2_table(78) := '71D7534111C443DCEBEA921DB6FC887C73D79D64735DF94AE16075FCD2C7B75301F1398111A95F0AD056D03E4A9589BA37A482FB95B7DE96E75F7BDD1E6B4613F0CB1965BE5EA5A79F8E23741C47F0DF1CB8C367041FCECE5B6D29680C71B43DDEDB884D';
wwv_flow_imp.g_varchar2_table(79) := '00E0E0CB2396321B763B0C98F23C715C37EF762313D677A093D2F73FD85019CB0154D525346E3E29867592071D90C1FEDCFCE0C372D07127C939D7DE20AFBEFD76F05626AE63333A9EDEDE5E396CF7CFCB4ACB2D2B2673C7FEE71CFC9BEFCE17C06694F8';
wwv_flow_imp.g_varchar2_table(80) := 'B7E10756977D3EF909597ADAB4BC5230DD23CFBF20CFBDFA6ADE0A8C80D862DD75E44B1FDF56D01CF22A8512AEE3D85513FB3D74ABE224341A50A76DC5159A58D0D1F17C68D5F7C981FFF359EB37584A7D134D6C2E36D4CD6C287FD637B12518BD1EF44C';
wwv_flow_imp.g_varchar2_table(81) := 'B41C70920F5033823CC986365E612394C504C13C00A4C4D140CA52C6877E351B1E7CFA1939F1E27FC8BEC7FE5657C2D7F25BCDF6E723EBAC2DEF596A46EE1E8CFFABBF5D249FFCEE0FE5B3DF3FC2C236DFFC8E1CF0DBE3E5F42BAF96A75E7A39579648B7';
wwv_flow_imp.g_varchar2_table(82) := 'DAF3DF52353DC8C8088D9F9E739EEC7CC48F6DDB7BFEF817F2E59F1D2B373FF8908C284DA8E73A8E7C62D38D65830FAC46B2242C3BBDCF9A1038F54A166CC1CD37D5C770EEF573E48ADB6E97BB9F7852D03ADE59B05010383C93625DC2AC610BF794FF3B';
wwv_flow_imp.g_varchar2_table(83) := 'C4FA565C27B6695EAC4B6D9B3F2E2803A3E227C0A6E68731387C0310B70777162F16C225559C03001F877B788B807CDA9C000010004944415410BCA3A3C53F27C64B40D6A6EFEF17EA01C32A04C8239ECE325EE629A765646850614856577B349397F9FF';
wwv_flow_imp.g_varchar2_table(84) := 'C033CFCAC537DD2C8B07C61C67FDBA7AF276DC9FFF7995EC73EC6F3205B3FFB7D970833C7B1E01F2FB0B2FB60CE19B20C8AD675F7D4D7E79DE85F2C873CF676B8AB01AEEA19EF25C4691883146B7D8D694D9EA93407B2852AC25D9AFBEFD8E9C70F1A582';
wwv_flow_imp.g_varchar2_table(85) := 'C043E3DAF327BF90FF3BF98F72E22597AA5FE66E15BCAF4BA9DF5CC017F24BF5AB6CADFE13AFABAB256368F746E31300BA2A46118323B23800F39928BFA455E1F501A2BA6357B34548481AB0A6042A7EAAF2879CD2F21CCEF1264F16B61D1DB5DBF35B1D';
wwv_flow_imp.g_varchar2_table(86) := '4BD1066F1E02B46D413DD3849C3F101324A311CA0330A7042E26242A6A202B2F3A1CFAA6E176BAD3102C70E7634F589B3B98E7C7DF7CF75D397FCE8D7ED2861F569FC2327D7D365EEA1FF6F26EEA205C71E9A54A156BF93D56FE475F7851FE7ED32D72EC';
wwv_flow_imp.g_varchar2_table(87) := 'F917CA4FCE3E574EBEEC0A79EE955755090C533BD35D7646BEAE26C1C7747BB7DD045CA687ADFD1F9CB94DEDC9A03AD258717D60E5B5C76955CDB3C76B354410447502016099BCAB4B302560AE94E7D9B3047E9C105B3EAA7E541E36BAE3BA42F87E5DA9';
wwv_flow_imp.g_varchar2_table(88) := '3FBADE3A82232EAA6C5E9E31220AF40940706852F22E1508C61879E6E557F2B231077EA9DEFAEFECF179614BD029A19AA2C6AEB6C20A79F5AFBDE71E192D224829F89F071ECAD32E18CFDABAF5C8BD2878E695B1FE7192EF0075A24595AB260F53E2E36A';
wwv_flow_imp.g_varchar2_table(89) := '7E349BD9D0A21E7AF639F9DB0D37CAE1BA5B73F9AD736558FD36517D5D71E9A5E5EB3B7ED66EA146DD6FE7BC66F72D3601C06FD5B182E660D224B179BAF7CD4A4ABEE3BACD1E6F01FED556585E8EDAEB4BB2FEEAAB295F1BEB50630BF0CEC79FC8D9D405';
wwv_flow_imp.g_varchar2_table(90) := '95F232A2569E4CDE2DEA2C7CF1F537F24AB322EFB8E51672C6E1FF2767E896DEAEBAF2AEACDB765E57575E399C7EDDA9545EDE932FE6FB08F26E6A020660D742A3B9BF954A1C96C189F9A83A12296C8C91D91BAC6F4FDE391A27AF1258D0BF584D923B64';
wwv_flow_imp.g_varchar2_table(91) := 'DEC245BA0A8BB003F0B5CF7E4ABEB8DD36D21D1A5325F8AA2DC316E40B4AE35F9E7781D50ADED68524CA3F8026F0D3FDF69665D5E7516D1B13B97C6C02204C44BB7AEA046745B7EA7C91C9C2C3B4E64189952F8CBB9AF49775DF7CCD5556B655984C97DE';
wwv_flow_imp.g_varchar2_table(92) := '7C9BFCF82FE7CA93FF7DC9E695FAC7CE86F501E4F54D7D008343D6570043FEFA828BE479B5D1194718D71AEF5DD96EEF9D78C88182A77F95E596CD1549B9FA6854D9C86568A45F7D0B1A94FC7B6BFE82BCFBD3A764F6EEF332B38925BA62FE567D0AAFBF';
wwv_flow_imp.g_varchar2_table(93) := '332F9B23B61F6B96D01A7205B391A1E12572819A1EBFD171BEA05BA664F3AEC03E9FFA84C4E9854733C259F8FD53CF1476477C8728FDF1816DD2C3755766862E3A7E5EA7873ACBDA8C04CA4C1CD8C1C1C61B7938FA005E18B24B4C83BB8B9A1C44F9D29B';
wwv_flow_imp.g_varchar2_table(94) := '6F8ABF8A44316DB0AC8DABBA5FB083A02B28028EFB78AF7F79FE0572F59D774BF0D41CF700789CD5E90BDB6F23DFDB733759699965C88E0D9E78F1BF72D9ADB7097BFB34CA0AC9819A19538B9F12A45C10A80BF30F0D0FE5B2A1AB318C2E97154BE4C167';
wwv_flow_imp.g_varchar2_table(95) := '9F95DF5F7489150251CF6F93B5D6B007B1522DD036A50DAFD804005E7B983AEAA1E4D145270D763936BFA3363276BDB5EF555B501D3DAF682312FF52DB71C1E2CC5B844C0A56AEFD75DFDDD35D0156F7526D58ED457D11C6094E7423F417A0BF2323A372';
wwv_flow_imp.g_varchar2_table(96) := 'DF53CFC8AF75FBEFABBFFEBD9CA6DB7D2FBDF1A6842FD77164830F7E40F6FFEC27EDAD255A2F2C5826ABE3D1DE2CF16FE969F98C8B6A5EA2B865FC2B6FBF531E7AE6395BCC751C7B04F8A3EB7E485C537E7A186364B3B5D6941F7DE90BBAEBB1A2C5C133';
wwv_flow_imp.g_varchar2_table(97) := 'FEF7BDF78B4F579B19D3BFD1D1B43CA2BB21EC1E708C3BDCACD7D565B748393814BED76EE938FA53FE0937A817BCE483E7BD12748EEB5A671FA6817FA20E815049DD6ACBDCF2D86372F459E708C75BB1DCA7F4F6CA9E9FD84E76D8761B6187A05A7C51E5';
wwv_flow_imp.g_varchar2_table(98) := '618845BA6D8853F054DDEEFBC24F7F29DF3CE914B9F5E18785FC609D0D55082C377DBA3D67CFCA1ABCB7FA4A2B0493057156DD55965B2E2F3F4AD8E415D004FBEB17DE7893BCAB8E5A4DDA977C76DB666BFB4E03E952803ACDBB083014027BC9C8886A14';
wwv_flow_imp.g_varchar2_table(99) := '73E55815780B75DBB454DD66DDC31C7850B75C7FA7E6CDD0F07041331C17E6DD86EE54AAE05EA76538710DD828535BD015A3116DB2638059E00367058AE255B382ED46807A847E59568C5B1F7E4455F4BB049B987C638CF05E40705D27BF18185369C90C';
wwv_flow_imp.g_varchar2_table(100) := '86419D94731F794CBEFD8753E578DDE786693277C41E175EA66F9A3DEC12F4D2737FFB8D3612A7445B5B7D785DCBBC9405F041B06D46BC1C7090E85F77DC952BB68C6E1FA211E5328A448C515AA5DCDCDD77162EB4879ADE5990EF8BC815883172FD3DF7';
wwv_flow_imp.g_varchar2_table(101) := 'C9C5FFB9A560E7C418A35AC0267987B462EC565B35E5B4556FAAE98C3275A53E01981E41E11FDEC1C7C0AAEC37471CA624F4F3C221AB5B149BF74D9E2433A604D56E7502EA2A48FD2E650CD7718846022BD5C3CF3DA7C340F7282CC227C383B99BAAFD3A';
wwv_flow_imp.g_varchar2_table(102) := '5B3DF5C13C3F8ED6B0FBECADFDA40D1FD46D32CE07D844997F981C67FEEB5AE1B05299A2256F43C3A855B764A526DEBC60CE4DF2B8FA39C24D2CBFD40C99B5C187C3D91D972E3E3B1B4C0ADF63CE893DCE00C090F5348149808990F23C7B1E8074317C8E';
wwv_flow_imp.g_varchar2_table(103) := '32A2FFDD014C11576D6963A2D8B910033B106817BB6DBD95F0CBBE6BEB8E81BF32BEEF3DCBC9A1BBEC285326F5E62AB29ABF31EF5D9B5E4DF7F14FD3ADBE7D3EF97159EFFDAB4A776A4CE564255F67D5F7C90FBEB047DEF983254B46E4B5B7DFB1F5AFD3';
wwv_flow_imp.g_varchar2_table(104) := '15ECC537C6B611D9563B74D79DAC13CBEBEAB2658C31824A7BF81E9F97E021A3D1D15139F7BA1B6C994AFFCDD3D5FB3875A0CD5FBCB8D22A6D5FEEF579F3E4AAB9770ACF25D859638CECF2B1AD04C11ECC6F669CB9C4E2832F8CB0545B71DD8B4D00C0F0';
wwv_flow_imp.g_varchar2_table(105) := '0801D63AC775C571C7D4C69A06EB6B0084651118F5C729E86A6C007DF8E5AAE000C47109707869BA32F9AEB3B692D30F3F4CAEFFCD2FE49A5FFD4CCEFBD1F7645375809900B2879F7D5E98746475E918D7D4AD3E3E94F1A7C30E951B8FFBB55CFEB363E4';
wwv_flow_imp.g_varchar2_table(106) := 'D29F1C25576B7D5E0F0EBF8873D7E34FC85B59F59995F4F8BF5F2A8BD57F003E6019350FF89EC0DF8FF9917D35F8DC1F1E2E677DF730FBD522D771282230FF9CFBEE97FB9F7ED6A6ABF9F7E44B2FCBF937DC58C030D5E0687559842B403FD80EBCFBC927';
wwv_flow_imp.g_varchar2_table(107) := '755BB7F00CC57233A6CB26EA73A15C188C31D228E100E373DC9C79040F885ECC430D5AFE979931317483433F7C538F033F1CFC09AFD8A88E10CA8232B50D751553FDB8A077ACC848D1E1C14141AD875911304B86C6B6A1829528EF133E985F2A8EA6D033';
wwv_flow_imp.g_varchar2_table(108) := '6D9AF4F4F55948757BA25244B85889A74E9AA4C920EB8B70E8E7B4ABAEA6485180819978381B8D19AB8F39F0C0D3CFC89FAEB832AFEE9D8F3D2E67FCEB1A793BB4BFCF41A10FBD6F155975F9E5ADDFC0AF34A2BB071C193EEBEAEBA416271C7E836BEFBA';
wwv_flow_imp.g_varchar2_table(109) := 'DBEE5CF04C7CBC45431D82EBD429CC8B22AFFE068ED02DD517B2D11A1FC87DA3F085D75E9787D5D442188431F2D25038CF751CE145AAFFB7D9C6D2DD35A6B585CB559A86D9396E5ECDFCAF1477BDE5621300C53A8A2A0413B3D79F07EA91B6690D617018';
wwv_flow_imp.g_varchar2_table(110) := '1E5B1E3C1094ED41C775C5715D216D8C11C3CD08308E11CA846F211478D127236CD279BB6EEF5FFE3D790F9FF301FCB868180769980646E57C7AF000D13CEDFBD32FBF527635C5FB7EE9CDB7CA2FCEBB407801069C3EE09BB8E43FB70A07763853B024EB';
wwv_flow_imp.g_varchar2_table(111) := '5FF0EF07430EF49C7DEDF5F2BB8B2E2E78B33058AE5CFCA537DF924BFE7373C10E4554BD95975946106AFE3D95DD325CA28F7EB966857C6CE5B0CFEF22DFDA7567D9788D0FDA66A0D9BD4F3E2551CF8F6F3074A7C698DC18231F5EFDFDD6DCFBE62E3BC9';
wwv_flow_imp.g_varchar2_table(112) := '97B6DF56FC2F2159640DFE576CFE37B899A2E89CA27762BA0123A7783187977200DD86C3B6E7251B426C77F6D4539E27BE4A0633BB6A035BD0BADCF721AADB465728C7750B6EF9C447CD7FEDB5D764243071B7DD7843F9D3B70E91130FFEBA7C72F34D84';
wwv_flow_imp.g_varchar2_table(113) := 'BDF27D8FFDADDDCFBF5899030FF30DBAD77D8E32DCE17F3C558E38E36CFBCA6AB09197DF7A5B0E3EE164A11E3F9079F635D7C95577DC29D4032EBEE96639F6FC0BECEBC0275C72997DA92558DF8FB355884AFF8353CF14CE12B0C7FDCFB977583CD7DD7D';
wwv_flow_imp.g_varchar2_table(114) := 'AFFC556DFDEF9F7A86ECFFDBE3ACB6C0873AA256EF0BFF7D931C71FA593978E099E7FC26F242EAF25EC18F4E1B2BFB8B73CF9777B3BFBD88EFE308BE70F47F87CACFBFBA4FDE5785E62D5C2051079EF21A685262D7591F938376FC9C3DEEFB7E8E78EFFD';
wwv_flow_imp.g_varchar2_table(115) := '45D928ABE2E3DCEC1F1C2A6899CFB0058F4BBF6FF9E5E4DBBBED6A5F23464BDB73BB6DB2C79AC7844401923A32A2E63FF3BE0E9455556DB9003026B33A1B55BB1CD7150802632314606AC775857B801853D5E0CA15C61C412DEBE9EB9387D4F6E55D73BF';
wwv_flow_imp.g_varchar2_table(116) := '8ED7D525ABAFB4A2ACB7DAAABAC2F5D96DB9175E7F43FEAE4CFBABF32F921F9E76A6FC4099EEA47F5C2EB7E9961E0E3418C7AF4F882D8EEAFEC47F5F922B95614FBEF40A39E6ACBFDA7AD4E5DB0097E8EAFEDCABAFD9D509FF08F5A2005C680A8FBDF0A2';
wwv_flow_imp.g_varchar2_table(117) := '9C7BFD1CFB261C387EA40C7DA20A8F392A8C701EE23788AA4FDE83CAF0D7DE7DAFF8F0DA3B196723F7C2C02A3EF7D1C772656FBCFF41191CCAECA9776769B3AED26646E0A31BF4118114A6431877A3D33865FF67CB8FCA019FFBB44CD285C2C73F63EA54';
wwv_flow_imp.g_varchar2_table(118) := 'F9C9BE7BD9834A3CDBD7E7158EB72BE5CA0A4B2DA553CBC8AA2BBC477E77E0D704E1614C66AE816FCF6D67CB8E8ABF2BD57821608C11E636E0B863F3DF1F43B343A7D90DF8F8B1D1597151BB094903C483FBF27EF9B8C357D4F37EEA95FF924A54F6B8FB';
wwv_flow_imp.g_varchar2_table(119) := '361EDA4338C1FC17DD7873ECDDC504D96ABD75EC8B48E1C6110287EA4ECDE66BAF15E90844782CAF5B82D8FC3FDBF72BC2FB02611CBCDBC08747A7AB861ABE572C8D59C9DC668E63C212926EB7F91F9B0030C528D546F99CD7E71DF35F9D7FA19CAECE3C';
wwv_flow_imp.g_varchar2_table(120) := '54761C70D8DE6DD4CD9677E50DDDE6BC60CE8D72D6D5D7CA5FD4D978D23F2E939F9D739EF553F0CE7EDC1DA43FE75C77BDA04945B5CD8A8E69B0DCF4E905B711005BACF3216BF3AFAA7E9F82029AF15FD5FCCE50E7ECEBAFBF6E5FF2C2D90C334739A8B5';
wwv_flow_imp.g_varchar2_table(121) := '78DE9F314658DD4D5E6EFB24621300D8F4A8F4A8F78429CF9394E709714E08B60349505D51B12FBFED76E150CCA9575E6DEDEB479F7FB11DBAD7367DC0DCE1D4209F313BEDAA7FD96DC39B1E7828779438EE8EE2DDE77D8BEF9F76863A5123BED1A81D42';
wwv_flow_imp.g_varchar2_table(122) := '086CBAD61A1ACBFF4BA95ABFF987D6B236BF31856CCA4ECAC92AE0FE7DDF0332E2DF574F6729738D16607AE6760EB273BDDCFCA76E9C109B00887350E1B6AC3A363C2CEC24B01F4B3A5C863402802D43D4B5FE850B65B142FFA2C5B61E6A1CEA5B25521F';
wwv_flow_imp.g_varchar2_table(123) := '5C131D603ADE55181A5E527697230E5AF0EC9E7BE535F9E6C97F94678B7C2128CA8687E5D1028C2196DF5398FF17E7FE4DE6A8FF435450E097C24197F274F152E7B33A0EF22B8CC3546C02800754097D604EB6FB60C428A80447B88CC5A902801008DFCF';
wwv_flow_imp.g_varchar2_table(124) := 'A555B2C3FC303A0EAD70FBDC231F21409976F05DE4FA9E442C059E7FF575F9D5DF2EB4C77F2B9D73B662E8DFCBBA15FA8B732F1076336A23D400001000494441547B42B70A92CC134C023F649EE4FDD6E5D0904E99723A43062DF393F99F4935FF7F6C02';
wwv_flow_imp.g_varchar2_table(125) := '40295076343C307F95E6D414C08A6DF3060604C252A62CA250010E1D711003AF3F3FEE897A162A6293E453C6C2A449624375FCF0ED4080B7031DD7B5657948B5F4C5564EFE358D023C93079E7E568EBFF81F457D02E51A87F94FB9EC9F72E3FD0F942B6A';
wwv_flow_imp.g_varchar2_table(126) := 'EF331710002C0A234B9608674B086D5A171EEE573BFF2DE218FEC5260060AE72E331C608A704613CB6E700188F74B732244C6C4CA1AA560E6FF0BE3175D4F7EB6AD8A56A208225883B89B70705304FCAF9048AF514B59FED5ACE5D7080A858B9603EA601';
wwv_flow_imp.g_varchar2_table(127) := '0B0BAFAE77F7F666160E9DAFCC5980FC4AE6BF3163F33F88BF99F1D80440A583805045410954299E60B915975E3AEF37F1FCDFBBAB2BDC64A3C6E3DC38FAF706EBEA671BE2E49B075E5757F011353C8E2650CE27106E14E6C7E6BFFE9E7BABF36BE8BC34';
wwv_flow_imp.g_varchar2_table(128) := '46179652106EAC48DA9FFB456E373C3B3601808AC44369F8082A40B8E1078BFF96DF31457EE32FC9DF2BF7BB808DA6C5973FBE9D70CAAE82475777914A7D02A8FD95DAFC95760AD5DF37035A39FF4BF53736018073A35447927B09059A4101169D723E01';
wwv_flow_imp.g_varchar2_table(129) := '981F9BFF86BBEF11BE4369777CD47107D3C2C038F772303222D5CE65CA03CD185FBD386313006C9F18A36A52BD3D4EEA2714A89202A57C02A8FDBECDCF1B99A8E0A067B7C732BD3AF1703E231496F4F70B214E69EE51AE1438AE2BECFBA73C4FCACDFF52';
wwv_flow_imp.g_varchar2_table(130) := '789A79CF6926F252B8518FF0F2F3220E1F08216E3DFE8B16D99FF9E24D40EEF120C083044522F3E6A02DB758F7E71590D0DC4F20A140290AA009E01338F48493E599975E16981DE60FDAFC303F0E3B989510A733609DD053A648F7D4A919079FEE0CD5EB';
wwv_flow_imp.g_varchar2_table(131) := '002E37FF4B8DA591F75A26001CD7B51E7F088CE71FE0CDBF947A4F09C987F0C6183B5E1EA01506BA57CFC9411E0021600B24FF120A54408167FFFBB21C7BEEDFEC8FA96698FFBE0A6A35BE88E3BA25E77FE35B8CC6D83201407790B88EEB8AE3BA42DC18';
wwv_flow_imp.g_varchar2_table(132) := '23C628388ED834A13114B565AC54D66D96949739429CF23CF15F11A6109FB2E22C7FA3E0C7679D23C79C79B61C7DFA5972F46967CA3167FCC5BE85D728FC099E73F3E8C98748788ECD04A7BB5B1E7AE145E18DCE1B39E1D7CCC6CAE0668E3BAE2B8E5B38';
wwv_flow_imp.g_varchar2_table(133) := 'FFCB546DD86DA76198EA40C4EA5E47F55C555E44E13DF946C19577DC25570177DD2357DD7DAF5C75E7DDD228DC099E3B0A68C92FFAE41E661323F804F8586AA5FBFC9574059F00FE01FC0498A8F80D44B5D54AEA366AFE57D256B84CCB05C0903A5606E7';
wwv_flow_imp.g_varchar2_table(134) := 'CF970105EC7E7C0184D8FBE1CEB624AD1A8831C66A26FAAF255D481A6D3E056042FC4C8065E6C141E1382F8CCC7C042813D513F2617E9C83F8A8785BB0D263E2C5E67F543BCDC86BB900E0E4544F5F9FF0FDBDDCA93F75B8F01655B101F380101038006D';
wwv_flow_imp.g_varchar2_table(135) := 'C8968D7A6B89730CB358BD243FA14014056060E6144C0CD3C3BCC61841E01B6384B98863D018CD93C2CB18239C04EC9D31432C4C9F2EF8B0A85F583A3FA7D8FCCF2FD5BC54CB0540D54353B58A075675BD5005247D3D78BCEE2E5961E9A542589B93A49D';
wwv_flow_imp.g_varchar2_table(136) := '2F7D7C5BF9C68E3B24D0041AF0B9F743F98EE017F6906FEEB9BB1CBAFBE7E5D0DD76CD834376DD593EB8F24A451FB031D1C2A1688536B931FE0480129ABD55A4722E54C78E1FE79362E5688B5AC71623A607E1C0BBEF0AC00A50AE2EF7BBBB52F63B71BF';
wwv_flow_imp.g_varchar2_table(137) := 'FBFA01B2FA8AA57FAE8BF2F5C2B2AA217D7AE6E6C2CF7525B075CBE8F0BED0CFAED5FB5CA9DF6A884D00045573565FD4776C26980E86CCC1C080E04401AC3F807301BADF4F39EA35826029CF939E3E353B1478E1A8A7AF4F08112AE5F07B5D5DF6FB707C';
wwv_flow_imp.g_varchar2_table(138) := '278E8F63FEEA7FBF2A7C9E3BB81B510E47B5F78D31F613D7AEE324610B69209216E620C03E3E7316B353222EB44BFC062C2C83BAC0543BFF235036252B360190B732EB8436C6E46F7F885EAADEEB7F616FDF715D7B8A0AA6B47BFEC60844E57EA5E03F24';
wwv_flow_imp.g_varchar2_table(139) := '3CB379A00E1E1E62100F5B3240302F1C67E5FF9F2DB790FD3EFDFF84EFC4717F79B5FB0EDB6D17F9F06AEF97660A01DA4AA0B51480D9392ACCE2C47C82A9996351F3D21823F805BC69D304A876FEC7355227AE8682ED186304A686B973E0658E4BE26C49';
wwv_flow_imp.g_varchar2_table(140) := '799E843F2146DA715DA9FA52A1C2A71878489CFE02607EA0282EEA2804EF63F3F38DF8FD3FF3C9BC17598C31B2D62AEF958377DA41D67AEFCAC12A497C825180B96A5FEF9D344938A486D39A036CC644DBFFC618F5031AD17F12BC8C3165E7BFC474B544';
wwv_flow_imp.g_varchar2_table(141) := '00C43436715CD79EC1E62101785C010E1421808AF5836D1C4C14FF3E2BFF17B7DB46F846FCA49E1E3F3B171A9311023FD96FEF587C02B9869348AC1430C6085A221066EA5A3AD20E75621300565D5AB2A4F89875C56595563DBF7899127750C57CC66575';
wwv_flow_imp.g_varchar2_table(142) := 'B7E0E3A49E31621F9A1F4AF12BE5A936A28E454A785D63363FDF88272F0A8C31B2C2524B491C3E01BFFD879E7D4EF8419066C255B7DFE137970BF9ED017E9BA099EDFEE4ECF3223F32CAF7FD4BB5FBBD3F9F2EDF3EFE2439ECB813F380BC6F1F7F7236EF';
wwv_flow_imp.g_varchar2_table(143) := '24F9F6715938E16439FCE43FC9F7B59E8FB79E4F9BE3ABF2011F1780AFA0D9F33FF770AA8CC426005851D96BB54C1EEA24CC6B6DAB850BC52718F65635C200DC233810FBFB05E72178001E46549BA12E442659F9C3367F64C140669C3E81D7E7BD2BFC20';
wwv_flow_imp.g_varchar2_table(144) := '4833E1A9975F098C2E13E5241DC2A799EDDEF2E04332389CF921924CAB99FF9CF62CD7EE7F1E7D5C6E7EEC890C3CFEA40D6F7AE431B9E9E147E43F1AFEE79147E5261F1E7A44FEFDC08332E7BE0772B47CEC8517328DD5F0DF5F78A86A35058D30BFAB9D';
wwv_flow_imp.g_varchar2_table(145) := 'FF5A2D96BFD804000723B0EF8DD195383434634CC626D29517D5DC18239678C648A557CAF3049B8CEFF6F96DA53CF52574774BE558C65AF3749F3FCAE61F2B111D3326630E243E8168FA343BD71823CC9D1C984CDA715D3BC7985F05A0F71AD52FE61EE6';
wwv_flow_imp.g_varchar2_table(146) := '26733DE57942DCF71B90678C2968CA1863FB66FD5CA994185358469A74394DC25B155A1E56CAF304278B0F3CA4AA906861F0F83B088EEB5A1F80E3AAE3B04A827667F7F98BD9FCDA54C93F63324220F1099424D3B8BB39B468B10CCC9B67B5D46AB4D3A8';
wwv_flow_imp.g_varchar2_table(147) := '8106F398B7292F7FFE07EF3733EE3413795370AB5DDF14BC59A45E5765367FB678D1C098F87D02453B93DC68080552BDBAA2FBC7D4F5F93604698B918C2B01809DCFCB13D8F5399B6A6444B0B1B86781B43A1BC9AB96B6ACFCA56C7E7C09F69B0421C40B';
wwv_flow_imp.g_varchar2_table(148) := '162F96B7172CD045810DC7FC9B71FA04F25B4E52D8E3764EA82FC19F2FF550C5715C715545775CD52AEB41D446759D76E90B0F0B06B3FD29B2CA1B63C4680198DBF7AADAEFAF0F0E5AB58C031AC3D99383C4C1A9C52BFA2B67F3D3B72B6FBF53DE9ABFA0';
wwv_flow_imp.g_varchar2_table(149) := '00DFCB6FBD2D7FBDF60689FAB55D6332E640E21328205BD33398233893ED1C41080C0D450AE95A3BC2FC42B0E0E50788D326F393F9520D5E70E5EA1499FFD5E0ABB46C6B04800E1042E1ADE73C7EFF3BEF084726B1AF88939FD632E14160DFE79C2ABDBD';
wwv_flow_imp.g_varchar2_table(150) := 'F6B705F9263B5F10F20F66E008B43079B2605B8571144B6FB6E69AB2CBD65BE54EF805CBD11798FFA47F5CAE4C5EF8DB735E57973CF8EC73C24F75F32BB9C1BAC48DC908816FECB403C90462A200FE24E606E73E9837C48D6109694C0760F821D5FCECA2';
wwv_flow_imp.g_varchar2_table(151) := 'A30B0F477FED6E966A8468A92A6D221B22BFDCFC8FAED8F8DC960800180AE0051E1E0CAF02F74C9F9E399F3F6D9AE04935A6C883223F04C61881D9C320D90BE90AC1510789F300B2B772C12D0F3D2C97DC7C6BC1D6135B5EFFBEEF7EF9E3E5FF9477F461';
wwv_flow_imp.g_varchar2_table(152) := '3FFFDA1BB93A7E64C6D429D2A702E7A1679F97C3FEF02779F5EDB7B589317380B13EF7EA6BF2CBF32FF0AB3424ECD51D0EDE146C264C9D34A9A0AFC61899A1B67033DB7DCF8C19F6BD8770E3AEEB48C5ED2EB3B4ACA8B082022160EB2EB5942C337992CC';
wwv_flow_imp.g_varchar2_table(153) := '48B9325DD5F9A574C76729AF5B80A57B3C991671D84B22AE94E749CF749DB7DAD7DE2CF4F4F5D9F74A98D7628C445DCC07A0D4FC8FAAD78C3CA71948CBE1845191CE0067A459D98D3142BE8D3B8DED162A191F6AF0A573941DCF11E153AFB84ACEF8D735';
wwv_flow_imp.g_varchar2_table(154) := 'F2EEC24576083CA49BEE7F404EB8E4327943F7DCC97CFCC51709F2002659592799EB38F2C8F32FCAAFFF76913CF7DA6B560880E3F117FF2BFC5EDDF3AFBE9E57AFDEC447D6595B2E3EE688A6C2DE9FD8BEA09B3D2A78BEBDFBAE4D6DF7CCEF1D264BEB62';
wwv_flow_imp.g_varchar2_table(155) := '106E7C3965B8BAC7FCE323E4F2637F26571EF71BB9EAF8DFC83F7FF72BF9E76F8FB570C56F7E2907EFBA53B8D9A2693B678D9162CC2E11177598FB401CF33FA20BB92C27176BA3084CE3772718F7F3AA0D91B498059EAE5A68178EEB46A240089C7FC3BF';
wwv_flow_imp.g_varchar2_table(156) := 'E5ECEBAED7D57EA1A0F6FFEEA24BE415B5F1FD0A0FEB2A3F323AEA276DE8E80458E7FDAB0A8C8170B9FDD1C7E524151AF8049ED3959FDFA9E3DBF48D188B6D30F937A12910E73C693B0180D3065F80F509CC9F2F36AE7BAFE4D7F3D48D3182E4054AE119';
wwv_flow_imp.g_varchar2_table(157) := '1C1A968B6EFC8F7CFFD4D375E5BF34B7F2FB755ED7BEBCF4E69B7E32176EB2E60765EAA45E9BE65B73B73DF298F5097CFFB43384DFA90B0B0D5B30F9D77114283760E63973BE5CB946DD6F3B01804AC4F7D7799592D59A38AB37F9AA53376ADC25F12004';
wwv_flow_imp.g_varchar2_table(158) := '605ADF1408165E3C3028F73FF54C30CBC6A7AB76F1894D37B671FEA109E013E05BF4714A74DA4EA0F914E099E2C08659F9A80C8CDB885699E7CCF946E0AA04477C0220C2AB0F43E39403FCCE1A6384BD561F1CB5ABD3BAAF8F57953300FEF97E08EE03F7';
wwv_flow_imp.g_varchar2_table(159) := '783F3B88479A74F5EB56D23D4F3E25FDBAF5186E6267DD4558767A5F383B494F400A186384A3BBEC2C60CB97D22C1116CC75095FCA13CC59C0BF658CB1F35F62BA621300F6D77F162EB4BFBDC6361F5B267E1E0C1C49209F082A0420B0E3BA4258E07031';
wwv_flow_imp.g_varchar2_table(160) := '4644CBF8C59B19F23071EA61DB87DBE1D35D5FFEF876DA9578C8FAD44B2FCB09175FDA54B8F9C187C3C3946115C857DD7E6753DBFDB33A64F9E59E70E3FCF643A3C77CBCFA797E77DE05F2DBBF9E6FE1EADB6E0F376BD36CFB059935E57999AD680D8B1D';
wwv_flow_imp.g_varchar2_table(161) := '5DE70DD5E05CC7115DF5FCB7AD37E75F3C3355FB6EA5642A2530309E7E08C6CB116C97A43C4F0A985A3217E5A99BF2C6889DF2F2CF4DA7BCCC3DCA666A35F7FF0BAFBD2E773DF164E44F486FB7F186B2857AE79BDB830CF617DF7843FE36E7C6A6C27D4F';
wwv_flow_imp.g_varchar2_table(162) := '3F9D692CF01F1FC72D0F3DD2D476FFA15BB2515AD6A2818186B77B81FA7C2ED2F62EBCE96601EE78FC89C068C7A2C671A5D83C952297314698BF80A961FE4B93AFD80440CAF3C41EC8E8E9B121CC8F771E9B0781D0E47136143D0EBD7FDD7E97BCA54ECA';
wwv_flow_imp.g_varchar2_table(163) := '30627C01BB6F334B565A7699F0AD86A7558314FAD24C40E389EAF8687AB4A96DE343193B4911E88166168C7764448654300C2C5820FDEFBE2BFDFA5C86D4442B28A7BB37C5F24669421954148ACD47C77594FF0D252B06E678CAF324E57976DEFB3CD02E';
wwv_flow_imp.g_varchar2_table(164) := 'F3DFA9782449C13C0A3CF3CA2B72D92D73D572D11999774764FDD557B35F0D9E3E6572E84E926C1605780A695D6DD5FE1218D8987C464590711E04E0BBFF00F166F567BCE04D04401D4FEA42551D71088651A45C573EB9D9A6F2BF9FFB8C4CEA51F3265C';
wwv_flow_imp.g_varchar2_table(165) := 'A04969CE217C768B99520F7052AE96EE6DF081D5EB6AF7A3EBAE23DD5DA9B24DA755F3C0A6E6EC3D85798763F6461BC88EB33E263B6FB78DECBCFDB6B29BC677F40000100049444154D3B6B365878F6D99DF9F999BC9A737DDC4C2A736DB4400D29FD1FC';
wwv_flow_imp.g_varchar2_table(166) := '0FADBA0AA83A125A2A0070A8E058B12F6BA863C986EA654FA3DB8E83C7C15B80C75DF40F7943D5CE707799989FD6C9F5C32FEE211C150EDF6F467A6A6FAF7C73971DEB82523F7E51AACF1FD72DD07ADAFEFCEC8F496F777961698CB1EA34AA35FD99ECF5';
wwv_flow_imp.g_varchar2_table(167) := 'C85E9FD8BEFC9877DB450EFBC26E19D8534340D38728BD3EB6DE7AA0AA1BD80EB4E757D414E1E4A9AA87399C51917698FFAD1700CAF07CCA8BB3FAA2361ACE41634C14BDDA320F53E0F42BAF16CE07843BE8AA26306B83F5E598AFEC256BBEF7BD9167DB';
wwv_flow_imp.g_varchar2_table(168) := 'C375EA491B63A4576DCD7AC0756A9B12DDA9545D6D7B5D5D6A5F4B059711EB377232FD34C6484F7757D9B627295DF8A06B18A05597F65D1A70715E8597D2BC4993AC902A37202B0074FEB30B667F926C78D8BEDA5E4E7034A0AB3914192AE692F1466076';
wwv_flow_imp.g_varchar2_table(169) := '0806E1D80DB09ED2EC838DB727B5B78653E9FA7BEE958BFF738B0C0D177EF4D418239C12FCF13E5F969D552D7DEF72CBEABC30B53798D46C19054678BE25B453638C30A7A37C1012715196F9CF117542CE14C007C6898F2DE36B29820013256BC1E27E39';
wwv_flow_imp.g_varchar2_table(170) := 'EF863972F96D738B0E09C63F68C7CFC90FD424F8E2F6DBC8CABA4B604C22088A12AC2D6FE06A6CCB8ED5DCA94400D44CBAFC8A6FCF5F2027FFE37239FDCA7FA925633795F20B680A55931D82FD3EF5FFE4E4430F929FECBB97CC5613212E1F817621F9AB';
wwv_flow_imp.g_varchar2_table(171) := '8302D6EF50A5D0E6B4EA00DB928B168955F555E5B7AFA597D024EAE862D55513015035C98A5758AC7BCF675E7D9DF0FA30DFAF2FE6CCEC567B77D9E9D3659B0D37909F7DF52B72D94F8F960B8FFAA1FCEA80AFCAF7F6DC5D701E222C8AB7147D67B1EE85';
wwv_flow_imp.g_varchar2_table(172) := 'FFF5BA39520FBCF07A6DAF2CCF7DE4D1BADABDF6AE7B6460A8F033E0D1231DCBED1F1A942B6EBB5DDBBE41CE51DAFF45057010CEBEEA6A0182797F519FCD39575F6BEB9C77FD1C89DAC9196BA1BE98C9FA17D87264E782A3EC9C041C98374FFADF79C782';
wwv_flow_imp.g_varchar2_table(173) := '751CAA233917AAC0A8AFD5CA6B2702A0725A55549263B217DF74B3FCE6828BE4FEA79F29AA0D0491B16D8849B0E57AEBC8E73E3A53D812232F58A692F8421500275E72A9D4034FBF54F83B0095B47DDDDDF7D6D5EEDF956603BA3A56D256B0CCE2814139';
wwv_flow_imp.g_varchar2_table(174) := 'E7DA1BB4EDCBE4A4CBAE9093AFB82A03975F9909B3E93F1092A7F0872BAED4B2FFCCD451AD8D8FC1F8386154C04FD71B3A6ACFDB0FDE4C9B263D7D7D39E8D505A0A7AF4FF8515AEC7F1F48E313A8B7DD4AEB2702A0524A55516E48B7346FB8F77EF9F95F';
wwv_flow_imp.g_varchar2_table(175) := 'CF97D374057AE5EDB7ABA89D14AD8702C618EB64C591668C1943A5719BA70CA905C6F203B1B4AAE57C4B12B53D90DD9C68B63F38028390EB63735A2DC09A08800292342683C9F4C2EB6FC8D9D75C2FDF39E554E16C3B3FA9D518ECD158F8824EBD5FCBF9';
wwv_flow_imp.g_varchar2_table(176) := '488DEF317C63C71DA49EB67FBADFDE324DB7CFA247563C97A3D7271C7C60CD6D637A718E80168C31C24ACC315DD28D806A71B035C829C56AEBD55ADEA9B56252AF320A6012F0D6DE2FCFBB40F6F8F1CFADDDF9FC6BAF096FB571AF322C9595729D2ABE97';
wwv_flow_imp.g_varchar2_table(177) := 'B7F452C2A9BF30709AB0B2D6F24BF54D991C892F8CBF581AE1E53881153B1F7D2E85606595E6F5EF51D5B45CC7115EC12E86B792FCA0E0B12BB00A825C8331477014F2966C5CCD2602202E4A6B3B2FBFF5B6B53BF7FFF57172E41967CB99EA88C276BEEB';
wwv_flow_imp.g_varchar2_table(178) := 'F127E5F117FF2B2FAAC6F0BA3A8716F4F70B135DAB247F210AC09BA8CC306AAB6884E0C14CC0A9C78A1DEA625D493E82D3D317DF3725120150D7E3AAAD32AB3F5EF3D3D51BFDE3B3CF959F84804F92355A3BA8ADA7ED58CB0807C6F81887DD9693982FF5';
wwv_flow_imp.g_varchar2_table(179) := '13200058A9EDE9BDD1E82DDF987B5573738900A899748DA9885F808F8762263CF0CCB372E7634FC893FF7DC9BE6ADB9816122C2529A00C3D323C28A3C3C3258BE56EAA0A92F23CE1B35D00DA48EE5E208266809060DB8F108D81F75E5AA5B504BA96174D';
wwv_flow_imp.g_varchar2_table(180) := '04401E39C6778277E8F946413D10759CB912AA2CEA1FB0DF47A8B5EDF98B16CBA83263256D05CB8CA64765DEC245B5B7BD60812CE6FC81FA1282784BC6550818637433C1142D8696C0CB6D6C29F255200401BE0BDE64443814AD18F38D4400C44CF06636';
wwv_flow_imp.g_varchar2_table(181) := 'F7CEC285F2F5DF9F5817DCFBD4533575F1EC6BAEABABDDDF5EF87759B8B8DFB60D8354BA5222388EF9CB5F6B6EFBE0E34F964B6FBB5D1CD7B56D37EA1F660AFBF9803D07A0767D4F5F66DF1FFF45A3DAA9174F2200EAA5601BD5E7C5A4E75F7B5DEA010E';
wwv_flow_imp.g_varchar2_table(182) := 'D6D432A437E7CFAFAB5D7E7B6170F1E2CC37236DB848D2A3E9B25DE1F3642FA9F3F4D9975F11BED358CBD839B559B6A1095A20110013E8C176E92AB6EEAAEF937A60DAE449355164A56596A9ABDDD55658417A264D123E99D54DD8DB1BA962A755E5478D';
wwv_flow_imp.g_varchar2_table(183) := 'E637F9383ABB44B59E55A6F7C91AEF594ED65E69C5C83EACBDF2CAB2D68A2BC85A7ADF862B2C2F6B6AF935975B56D6586E3959BAB7C7FEB82C5B8BA8E9A8ED3511215069BC449DF1D2D1A49FE5293063EA54F9F3B7BF59176CBCC607CB371451E22B9FFC';
wwv_flow_imp.g_varchar2_table(184) := '785DED1EBEE7E765AA0A1FD463C07154258F30B18D71845766D92E43BD7E8F32F3AF0E3948CE3EFA4772C60F0E8FECC3E9DF3BCCDE3BE3FBDFC9843FFCAE9C79C4F7E5CC237F20A76B7CF7EDB713C7A53D23E81CC644342C2269F551001A6DFC1FB87547';
wwv_flow_imp.g_varchar2_table(185) := '219D85C637108D311100D1744972DB9802F67D7B65581B16111415775F79DD715DC166E70420DA070228AA3EFBFE38F7A2EED59B87C330E7285CB4A85E7415D7772A2E99144C28D0E11448799E04CF1E602AB0B567B7F88686C486BA9DE8E721302C0C0C';
wwv_flow_imp.g_varchar2_table(186) := 'D85781895B01A2AB7D9894E045F8A0D9701C397CBF59E94400348BB209DE09470163545D088F4A99D957DB11089C27B0824005427A644400BF0A718403DBB57E5E5EA8F8D13E80BCFC26261201D044E226A82736051CD715DF74C07CF07D13ACE0F63377';
wwv_flow_imp.g_varchar2_table(187) := '383315B807B0BA53C671D5DFD026A471DAA41F49371A4001DEA7FFE7DC3BA41E78F5ED776AEAC9034F3F5357BBB73DFC68E43715CB75667078486EBCFFC19ADBBEF2F63BE5D1175EC86B4617F5BCF4444E240260023D5DDE3108BF57506DFAD1E7F399A1';
wwv_flow_imp.g_varchar2_table(188) := '52F25C76EBDC82771AAA69FBACABAF15BEA854697B7EB985FD03F2874BAFA8B9ED9F9D739EF042968F0F2FFF880A153F1D0C870706AD2D1FCC1BEFF144008CF727384EFB0FA3F1692C5E7D65EF1D208EFD5CE99070A87116809F04B36703162E147EB21B';
wwv_flow_imp.g_varchar2_table(189) := '3CFE37FA2953293ECA1963F21C7D12B8DCAE9438DDDD819CC2E878CB4904C0787B62E3A8BF30F9B07AC02D732E5820303C0E3386608C11EC67D77505A7172FD5A43C4F08A5C28B7AD8D41C1E727B7A047CD8DA2965D294E749D7E4C955E1F39B3526C2D9';
wwv_flow_imp.g_varchar2_table(190) := 'A7371DD715C771343671FE26D66826CE73A96824CB4DEF93D91BAEDF54587DC5150BFAE23A8EACBBEAAAA5DBDD607DD97ADD0FC9ECF5D7936D36D948B6D95861C30D64F6061F16BFCFDB6DB6896CBFC54CD9FE239BCB769B6F2AA4B7D978437B7FCBF5D6';
wwv_flow_imp.g_varchar2_table(191) := '15AFAB4BC2578F32B75F9FB27EBDED36DD586C1C3C3E689E5FB69A70AD555609375B771AC18736128411DD328C424CD9A8FC66E42502A019548D09E7DAEF5B457EF4A53D9B0ADB2B438687D3AD8CB9CBD65B966EF7CB7BCA51FBEE2DC77C6D3F3966FF7D';
wwv_flow_imp.g_varchar2_table(192) := 'E5980334543862EF2F95AE971DCFB73EBF73E427C2F8C1D5668F990FB386C75C6F9AED41CE01040173072D298C1BCD269CD7ACB4D32CC409DEE653C0759CB23F89C54F5FD503C53E4F8E10A8076FF9BADD624CA12A6E8C69FA98BB53A99A1E5EA94A9827';
wwv_flow_imp.g_varchar2_table(193) := '761B50B70583A13185632C85A7D1F71201D0688A26F8262C05464747EC874338F0C34A5E4C858F248032BA31C60A3563C6C2C8B231662602204662274D8D6F0A8C0C2D11189F2FFC60CB73B2AF19234A8FC6F799B1440034E3092638272405BA7A3CE184';
wwv_flow_imp.g_varchar2_table(194) := '9F3DE9A73B0CEC3884070AF3A21960DFA3295841512543273E8030553B3CFDF25B6FC95FAEB94E4EB8E4D2B684E32FFE871C77E1C572FC4517B765FF1A45B7C7FFFB52D199E8DF60AB936F15E4C2850B058D41DAF47861A201F84FAE8DC337E6BD2B97DF';
wwv_flow_imp.g_varchar2_table(195) := '3A57CEBD6E4E5BC25FFF75AD9C75C59572FA3F2E97332FBD22B28F7FBDF6062906558D4BF1FCE58AABE4ACCBFE29675D7EA59C7DD535F63701FF7ACDF592032D5315CE0AE9FAC26BE57F3711075FCFF4E9D23B63861002E4A9F12FED782502A01D9FCA38';
wwv_flow_imp.g_varchar2_table(196) := 'EB93A3DB827C9C836FDFD9C91EEA3FEA70F05DF7E1458B84937FC092C58B05353954A5641215996F0150884F73B3C202B4439A306A7B8DF2614065B776FDE0A07D9D97ED3AF2C2E548D34FDA01688334F94170DCCCC1A6605E3BC71301D0CE4F679CF5CD';
wwv_flow_imp.g_varchar2_table(197) := '988C773BDC6D1836A54282ADB094E789FDA67F77B79006B81FAE5334AD6D5027E579C22940DF2647F06093A77A7B25E579BAE09AA228C237606400DB9D2FF8120F97F1D3F415D006FCACA22142085C79303252B47C2B6E2402A01554EFB03639DE8B96E0';
wwv_flow_imp.g_varchar2_table(198) := '22044240BE65A816D184B6F910870F0812FA19D51DC681F0B1A0E3204DB9A2A0763F42056DC107B4070442B80EF9FE7B0C43AA1585EF372B1D9F0030F26F49AE094101563600C71661101A3240651C705B6808C2324854ABB02BBA86C6A8E60094A952C9';
wwv_flow_imp.g_varchar2_table(199) := '6D840B5A0A42C5077610A204075A1165ACF061FC9534D08032F1098006743641D17A0AB0A261BB03D6D3AD5E6E5EF619D690AFEAB2F5554B2FA9C72A68F1F6F7DBCF83E33720BF167C4DA903632AE023C881A61BD1963146100C298FADC6C9B12D968900';
wwv_flow_imp.g_varchar2_table(200) := '90E40A5280890DE3C1DC3063F01E7156B59C0AAC6A70CAF3ACCD6DDFC6D334F72957352823A1491863EC1B773003608CAEC82242BF10063958B2C43A0FC9D7DB4DFFA31DE8C2ABC6083C3FC4A1C9BDA677A0490DC42700D2E6C6268D2141DB600A186304';
wwv_flow_imp.g_varchar2_table(201) := '2F3BF67918B5E3BA829A8A104879EAD0F39D79CAFC9437C684AB549486D95197AD13AFA727235414370205FB99F7FEAD8D3C7FBEF8FBEC680C51F674450D5659887EE0644485E735E36E7536D25FF2B8570C1D428D2FFEE6607858ECAE836A39684C0036';
wwv_flow_imp.g_varchar2_table(202) := '3F420581CB98249D8E8D579C621D6F78BE23B1A935925C05146095829150E1611A26664121CD603233A9ED3BF6CAD49AD5F23F844DAFEEABFBD0A3FBEC3D7D7DC20E00F72470314EBB95A7DE761B475350A6230FED2150B4EA28B4011CD715849D85322F';
wwv_flow_imp.g_varchar2_table(203) := '0ED12E4C9D03B61BB53F23DA3F3E0ECA73406482B7EA0E35A082D3001C098A714001261A8C6F8540F68BB571743BD8A6DF764E08557944B6D2FE3256DAB02BAD8E7589321C7156588442A5781A510E01C5198928B0DA44E8ED4084AFDA40B12D96B10980';
wwv_flow_imp.g_varchar2_table(204) := 'B927FE3EB64135E2C14D341C8EEB0A5E667FD2A172C731469811A6CB81DAFAA28C6FD3C41BDC095652980E464245F7B7F7D0166042EED324DA80150AAA8AE3EF4038915F09B072531E60850F0A39C65B098E5265E2E495D804801D70B21568C9D049FFF0';
wwv_flow_imp.g_varchar2_table(205) := '17C08C39C06F0074778BE3BAF192C298B1F654F8C0BC680A08231BAA5A3E56A0484CEB71DA10951E01C0C12104898D0F0CD8D7858BD4AC2C3B661E895700544682A4542328A013559D49EA3EE7D7EE6A43C844C7F3CD64B7A0EA34AB5D1436D46B1C7500';
wwv_flow_imp.g_varchar2_table(206) := '2B2A4C1555AE5DF2D080D00A38BEEC4D9D2A6846383ECBF64F85089A85376D9A509F7A16A64C11F2D03ECAE2285520666779BC02C098A34B8D3DB9D7180AB09AB12A59806971E5140A000010004944415455E5AE05330C81A30BB5D9185D3D154F310140';
wwv_flow_imp.g_varchar2_table(207) := '3956799823E579429D5ADAECD43AD0152D62549F579C34885500C469DBC449C4766B0BE66385B3A06AB6B26E4D5DA4BEAB5E6E56354EAAC1E0401432ABEA2BE353967A51659A9587B6814D4FD8AC36AAC18B1F00210C431396FB7048AEBCEE10DC71EAC9';
wwv_flow_imp.g_varchar2_table(208) := '4755D356BD65631500B6B331DB38B6CD0EFBE7B8AEC0843E2010262A09607A7E03803302981F305C1C632DD5068C3FB470A15858B04006E6CFB76F3F5A932CA2A2314610AC5D53A6C6EE287722FAD3DCAC986D9CE60EA63DB0B382C00836C4F6F7BB451C';
wwv_flow_imp.g_varchar2_table(209) := 'F0D3C150F36D1D55EB4B8538CAB81FAC5A6B1C93045F01804F01FF02CC12858FB170CF2FC78119205C16E1862D8E1DDFD3D7670F2905CBD0772B2094110939B947BBE407CBE5E24A17CBA87E98BB517924E579D2D3D7273DD3A74BEF524BD96F03B00363';
wwv_flow_imp.g_varchar2_table(210) := 'DF3790E8CB18A3B74D6C0780FC5EC42F009203413EED1B13EA448531FCC94D1CA6B5CCA32A255EEAA886389936B86891502F07BA6A11B72B17F734CD293518370A47B579462B1847A79C31826B9238A0D9057FB62C9A4C5797F0431F9820404141CD705C';
wwv_flow_imp.g_varchar2_table(211) := '57D076A27091679D7493275B479F7FD2907CAD5AF08706C178F9411342E8489EB5D1878785B80FE41520C866801FC8262B0B5AC01B4E653D6B5CA9B99C0748CC808A09CA4AC86A0544565266823198E4A89138E3742911261F4CE1B86E6435C77585D37E';
wwv_flow_imp.g_varchar2_table(212) := 'AC4CD4B5306992B057CE8A4ADAC6957160C03C242A74ACCDADDB66F40B606F9C10B02B685E854C827ED2471C85B49DF23CCBB899BBA1FFC6D86D42C775056724E301A4868B7A79604C512CB405DDF06910DA7A25CA174514BAC173647704400341B02060';
wwv_flow_imp.g_varchar2_table(213) := '10223E58DE08D56B76327601600794EC06583294FBC74A835D6B41ED48CB5C11951CD7B58CC484F5272E711F22AA08139BB2805F8E1006E09E0F7E5E1007DAC390AF1DF4F7DBB3ED6C19A27D30C1D122E833216308D66DF7B8E38ED192B107015A013E70';
wwv_flow_imp.g_varchar2_table(214) := 'AF9AF138AE0A336304E1E96B18BCD7009D86162E6AC90E9953CD001A55762E5A40A3904D603C8EEB4A8FEE51B357CDAA6C4CF1952B4E32C0003D7D7D82DDCD8B317645EFED15E2E4B11F0EA04550B6D17D6335B510F65FA86652AC2D980E7F02020A80E9';
wwv_flow_imp.g_varchar2_table(215) := 'F045142BDFE87C634CC6D197D5B278A616B2EF38DC77EE99B17AFFFDF1B54400D8C61333C092A1D43FBB0AAB106055663B0ED5BE54F952F7720CA34C8226014300A5EAD473CF1823F4BF0087B68F89E0F7C78FE7CA713F97288CE0D3B08E3C3410F553E0';
wwv_flow_imp.g_varchar2_table(216) := 'A3185EBC5850AB01D4E9C25A92EB0B7D62AB1253C49A4B52C755A6AF9563362D59FDE95F0B0540EB06CDC03B096074986608A609010C15172D3013788F1EF0FB128CDB9559991AF518C110D52F7E9D1706767B7A323E0C0D7DC75E97FA1460F0A87AC664';
wwv_flow_imp.g_varchar2_table(217) := '5760D554D04A7C882A5B2C2FA74164698813D5F6B558857190DF320130173320D102629922C66456636334D4164D2A253051CAF3C4755DCD89E9CF7184553707DDDD423F805C9EF60D26669720AA57D8DD9487816D1D2DEFB8AE7518A2295137AA5E23F2';
wwv_flow_imp.g_varchar2_table(218) := '680F407BB0CE5355E70B1CA45537648E9E7BF2EF5BA2FED355877F2D83C41998477AD462B6F07CC08186B798153CAF6038812A0A84F3B36998C24E58F52774033A71B1DB99C8304DB658D3039816EF7F10529E27292F0B2A10B807531963EAEE0FE6C0B0';
wwv_flow_imp.g_varchar2_table(219) := '9A07D8FB039C03D095BB2C2D4BB4EAB8AED037841034F5A14415FB2E069A83F5F8EB36A26DBFC4B32A89AB09375B2A00122D20FF89326151C9992C8496F9D5D1554C1DB6B575325116FB1715DBE615F98780B142452722A115347C304301BF40916AE336';
wwv_flow_imp.g_varchar2_table(220) := '9BF1C2A429CF13CC03840B6906C478A1770E025B9AD4A34CA3007CD0DA3E57DE18E4995AE4AD5DFDE9424B05001D50C756CB1C20B6FD36FAC70A89E71C8FBF0D750F9E49CB8A53B49BBA523AAE2BB68CE3142DE6DFE05CBA9DF40881A1A1DCC116BB32F9';
wwv_flow_imp.g_varchar2_table(221) := '85C6510873C1CC84E16E434FB41C6B32A876018D8C31765586063E43226801F2D8E2045F1857CD696D0F6DCB3ED32953EC6124C7752DBAB92D54FD6D07F45FF919A3859AF967B500318910A883C84C6C3BC9BBBA4A6231C648CAF332CE337586A53005D4';
wwv_flow_imp.g_varchar2_table(222) := '89869081594A5586C17CADA1510C8230E2BCC0C0BC794288AA8E26036306DB203EACAAFC90AAF00067EBFBDF79275367FE7C7B9A1127675AB5A15263C8DD533A305ECC22B62E7D272279FC8089E3BAB9A2C14863E3A62DE67CCB0500449D8B244C1C8290';
wwv_flow_imp.g_varchar2_table(223) := 'A20098D430401494340D0A3065338CAE805930662C9EBD5B3C50E6C2C4C0F30DB306A15F991160052D40A0F5D20AB6AF848102F81FD07458A5B1AD6140C7755529D47E05CBA96603B3FAAB28FBE7BDBA7FDED3D7273D7D19E09E31F9F502280AA35AD618';
wwv_flow_imp.g_varchar2_table(224) := '63DB3226136A422C486D17828B9D0C8454142D7886FD4AAB8179EFB4D4F1171C5D5B0800DBA1C42168C910FE876ACAAA1805D5AAED4CC01C646DDE1C63C29C0AF6BE86E17E603BC364BDBCE012603E0EFC5850E7229A48B81E4C31CCEA0DF4F75B932358';
wwv_flow_imp.g_varchar2_table(225) := '863A5600A091A83662351955D7692F58AEDA38E3807616D4DCC106B763AD001175A12D1A0A8C4CDC82FA4A084BE241984408319A654CD0EABE73FF7214E97680B6110073D9164C4C818239C1CA880D899A9E036516F21CD72D285F2C23AD4C0D332048EC';
wwv_flow_imp.g_varchar2_table(226) := '2A05432A90CE81A6871438D20B1314C315CC37C6D82D381859222EB6CD58D92DE8961D4C1051ACE1598C37388662DB8A510D5317C6C7B90ACD101E801F2F862BE579C237087936683751B81D37D516AABFDFB7B6110074682EA640220420C5182883C134';
wwv_flow_imp.g_varchar2_table(227) := '46993D07AA1293578DBA6A8C115EC66172A2765B501F805D7D75E5B5A10A162630718B5FEABF1CD7157F552774DCCA85563DAD3BAE2B8C8336ADF0C13FA234A804A7E36A5DD542A86FFD039E2729CF133F6E8CA9044D4499D67BFDC39D72C219AD4E7792';
wwv_flow_imp.g_varchar2_table(228) := '106085CA035DA5597D2A7D06948D82622AAA314660EC4AA0D23E54558EF1E9165878CCC5FA5B0E376F20B2C76E351A7510E2A42C57A7E2FB466995052B6883F18A91040BB61FF3D3BBB6130074AA1384004C807D6C272FC75FB3AA376A26B6277428054C';
wwv_flow_imp.g_varchar2_table(229) := '763CDFC35A2F08A8EF6C6595AA5BF7BD002357C3BCF40B4FBF0565D8DC31601D3FE3A9B65FC618B12686AED668378E1B8F7621FEA574188BA6ED5B7E8C230CA34B86DBC6E9E7F7D70FDB5200D0B9B913DC1C601546C5F4557154F394E749A52FFD1863C4';
wwv_flow_imp.g_varchar2_table(230) := 'AAB73AF9539EAAA759B08C904A49232F84D29032AC0565562BB4B26998181F422582003F811D2FE71BD4DCC0A7C1186062E8516D9F8D31D6FFE0ABF8B5E0901A2F0438E3B634515A5861ACB421CCD18774FFE2A3EFF853BCDFF9AB66486D2B0018C48417';
wwv_flow_imp.g_varchar2_table(231) := '023A8199B439DBDE75C5C69DF28F0566827998FCC473000E6320DF18E84A9533157CEFFFD8DDB23170D3168C8A5332E57982C0B280FF4085905593CB6032C608B800FA0DCE94E7D9B3098EEB4ABB5E51FDE2B921C0D99EF4815D12BCFC6C53F6F4F549EF';
wwv_flow_imp.g_varchar2_table(232) := 'B4BEA3EF3BA735AFF946F5392AAFFC4C8BAA1563DE44100296F9B07D951163245DAE2954D2010EDB00F3E7DB0334FDBA1F8DC73F57A84484C9EE332B42200C08AD12D5EBBE9556BA85018D239CE7A7C30D626A61760CE94A0DD883444A8B7EA501DEFD70';
wwv_flow_imp.g_varchar2_table(233) := 'F9C874A00FB44D19E8521CDCA3E79E72FC51946B67687B0100F11002734F3E4E9735D3565B28F4AD1C5855113B5DF7C0B1CFED3E72B8924E2EB69D60548049891F80B2E483235CA59A34AB6D4F5F5FEED04C6F762F1F8F7F35785A5136ADB4C1D1876A0D';
wwv_flow_imp.g_varchar2_table(234) := 'C0C0C34ACF21A527A10555B5F9B2CE900AB76165726816EC2BE3475B61C5063043FC0F97980ACD259E05CF6F89B6CD2BC03C27FA166CC7C639D0E698D973AD096B73DAFADFB810003E0533441D6742C01861D261EFA63C4F5831FCF1F821FBCA7632A125';
wwv_flow_imp.g_varchar2_table(235) := '2830D92C2C59620FCE10F7CBD6141A23B4EB4325EA7A25ED209872A08C4A1DC6411E7DB6A06320248FFBD5823146606068887F23E5A99F44B7F4C8432BC901F96A8E90669C12B8486376E440CD0DC775ADFFC0181328593C0A0E70D307DA8EAE658E9E7B';
wwv_flow_imp.g_varchar2_table(236) := 'D271B3E7DA332DC571B5D31DA79D3A53495F100273C79136608CC94C349D70A8CAC6144E1D638C9DE44CAE9497B1899964D8DB080EEB1894E65E38FA06542DE6882FCEAD520CCB3DCA60420CB1FA2AF05DFE7EEA03BA120FE94A3CCC6AA92B356550C159';
wwv_flow_imp.g_varchar2_table(237) := 'C96B1985CFB8D0C432A1FA1C6C3C2008525E966E1AC2ACB5B41355C7CF03A7DF0F1B6ADBC6649FE5385BF5FD31118E3B0140A781B956C5326A1200E44C20303AB1C2D0E4E131A97162F1720CCC658CF6A1489B30032A355F0DB6AAF4D4A9D6BCE8CD9A16';
wwv_flow_imp.g_varchar2_table(238) := '843D7D996F0672DF778AB18A174159321BAD023B1EA1C3FB080812D200F74A566EE64D9FF1C7D9AA1F24C9B815000C022100883D3D685418C8C4BD54C5B6933D1BB20A63EB02C4CB0E3C50CFE2095580A91102681B848D321342CD1426B55FD6A9465878';
wwv_flow_imp.g_varchar2_table(239) := 'D7E6186384FE01984B6432664C0B5B978C6A41DB030750358E09C0F83EB9C6B500F0078110C840FB3A0A99ACAC58A8DA79E1F0B03F8C92E188DAD2AC80391818C87C8E7B68C81E4089AA0CA3B35AA28EB35FEF87E0B0133FAA528C79D0817E59503382BE';
wwv_flow_imp.g_varchar2_table(240) := '166B1EAD24E565D47C340934109C9808856275F2F295E119376DF974F0439C7AD02AAF7C38E133BD9A9F73C7F18A1F1ED6841000C141E504817A6205CD800727ADBF8CC9AC62FE442334C6081FB9940A2E5666FC0176F2ABB38B38FBCF9C4FE75E140A63';
wwv_flow_imp.g_varchar2_table(241) := '8C603353CE426FAFA0B653B712C6A18F8034E9725C57E81F1A47A574A8B52B680E08912E15226C63128776DD4A137C2DC69831D42A2C10D44BFA07FE3D3A3478F492A191D91389E9C7062AE2041313293E573DB1561820AD556A0BC200689140308E631D';
wwv_flow_imp.g_varchar2_table(242) := '7D292FBB8A69C8E4C73128955C3A41C19107E4299452D7FDF28EEB0A8CE6A7A39A1C56A71D8E409C79FDBA474E1CE71DDA4B54F99279CA4456B50E86A10AF427E579994345D9179342451A9634C6D8F1C3FC29CFB33B330801D2B967C0DC00D2A3B3EF3C';
wwv_flow_imp.g_varchar2_table(243) := 'F50FE6AE33FE38FB8E534F39EAAE534F8CFD473B25A6CB89A99D963733579D86167C81E06B08BE50E0C1B7BC97ADED00020947205A823DD1A64E3D1C788EEB56D5310406FBE45150B1E9A18283B29C8720B4C2A4AA5E1429CC73F68167CF3C5098AB8B84';
wwv_flow_imp.g_varchar2_table(244) := '5DE5991FA74C5C860F53A563044078E0390D01C1C0430798041D0C77FCE92493833F9E686EFFC3F1C632469534B943EBB28216C09F4F36B79F72426538B56DCADEAEB808E76ABA96BE14D4E139FBC0B347535408CF8F4E4977AC00E894079C8CB3360A74';
wwv_flow_imp.g_varchar2_table(245) := '4AAD440074CA934EC69950208202890088204A929550A053289008804E79D2C938130A4450201100114449B23A9B029D34FA440074D2D34EC69A50204481440084089224130A7412051201D0494F3B196B42811005120110224892EC6C0A74DAE81301D0';
wwv_flow_imp.g_varchar2_table(246) := '694F3C196F428100051201102046124D28D06914480440A73DF164BC09050214480440801849B4B329D089A34F0440273EF564CC0905B2144804409610499050A013299008804E7CEAC998130A64299008802C2192A0B329D0A9A34F0440A73EF964DC09';
wwv_flow_imp.g_varchar2_table(247) := '05940289005022247F09053A95028900E8D4279F8C3BA180522011004A84E4AFB329D0C9A34F0440273FFD64EC1D4F81440074FC144808D0C914480440273FFD64EC1D4F81440074FC14E86C02ACCA47330000000A4944415474FAE8FF3F000000FFFF55';
wwv_flow_imp.g_varchar2_table(248) := 'B260F7000000064944415403006985A1B285C155840000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5528719144302777237)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000007344944415478019C576770555510FEF6DE978280A2A0A3A1881A46430996210654141D1B1A751C1546FD811A08C5066201646C88283A0C8C15F24CAC8860C182';
wwv_flow_imp.g_varchar2_table(2) := '8805C12E9611458A2210083221A1C3D092E7F7EDE53D034379F1CEDB7BB6EF9E3D7BF62641977E83120525B7260AFADF963873C0ED114E5AFC24ADF54CCAA5A7D541BAB4759CB22E7D0746B6C45D9FF2C28177240E05011FF89348205157073303880761';
wwv_flow_imp.g_varchar2_table(3) := '08D12EE32B41B0200015201C7AA89BA0AED030230392D3DAEDCC8449727008DC0195CD2203774E3C19DCCC2287F2C360AE4FBCAEB6966F301FCAC9172D1BC9833044BA4FA0ACA52C43AD6651228E73C7722ABC8ED5D16A463903066108D94AAED565D44F';
wwv_flow_imp.g_varchar2_table(4) := 'E2A2D301AF8099F94E642C8702338376650C244766062A45D5209E50059848D2067A445326345D08CC0C72A6D22703EF15944E8330DAAD129263E94AC769DA2B89208C74246F0804600039E0FEA0D58F823C05D18E55FADA5DBBDC67188BF96AC6A4A9A3';
wwv_flow_imp.g_varchar2_table(5) := '24CC8C6AE6FCFFF3625BD38C4E3C30D1FB6EE88DC74A6EC163FD6E7618D3BF186306F4C5E8E29BF068711F4836BAEF4D48CAC5DB177A1616D0537A3FEF01959EDBF0A338AB637BBCF1E96C4CF97C4E6A75FCB3D998BC872FFA40B0B4F21FB46BD932BDE8';
wwv_flow_imp.g_varchar2_table(6) := 'D4F20A2477EF4990397FD97264F35E873CD7B51B3660F18A0A6CD8BA0D953535585851816D3B7660C1F215A8ACAEC1FCBF97F99A777C1BAC5A5B8D8AAA2A7A00CE3FAD33F24F3CC1F183BD3C013383512B99889AB2071DC8F9A5055DD0B7A8276EE97931';
wwv_flow_imp.g_varchar2_table(7) := '72737230ECFADEE8D8F6780CB9F66A8CB8B13754B101575C869A4D9B90DB2A875EA25F765616FAD16EDCA0121C969D1531F7F3F65B6066ECC50434158DA9A8B99A3569823A36DA0AEE68F1CA5558BF650BBA76C843662C8677BFFE1647346E8C759BB7A0';
wwv_flow_imp.g_varchar2_table(8) := '1B8F2C3B3313AB598D535AB74E8598F1DD0FB875FC3398BF7419EEE97D5D8ABF2F12F50003491055201AC9D51B37A2C7A9F938A753476CD9BE1DCC940137E3E73FFFC2D05ED760EEFCDFBCE42FCE98852A1ED3E9ED72F13B8F4E7E926066F8B3B2121DDA';
wwv_flow_imp.g_varchar2_table(9) := 'B6C14939C7A13D8F2929D3EDD2354E1D81044118723180866533676121CFF981F257F0ED82851837ED1DBCFAC9E778FBCBAFF1E4946998F5E3CF28A78E4A3FE1EDE99ED8AF4BFF46FD273316C3F517F4C0914D9BE2993B06A1F531474381FD5A73D366A6';
wwv_flow_imp.g_varchar2_table(10) := '8D45E537E3BA67DCC6EF1982C74B8AF108AF5EE9DD833169E89D8784C1EC89E787DC8E7E97F744F2D9B16B17EE7A762216B189C7BFF52E3EE2B19819022666C6784C22FA1690D0AE357C8AC78EC3C8F84BB83F5EEEEBA8572763E48B2FA740BB9D36E74B';
wwv_flow_imp.g_varchar2_table(11) := '1C08E23366E2A7C54BFC06E816B46BD512933E9CE9C7954B1C7C74ED2D60F119375049D4F5CE24630DAFDAEAEA6AAC59B71E27B7698509B70D40A3AC4CD2EB1C3A9DD016375E7801BA77EE9482815716A1A85B618ABEB4B00BC6D3AED7F9E7E2BAF3BAE3';
wwv_flow_imp.g_varchar2_table(12) := 'DAEE67A3CF2517F206F582E2A8D79271D95B06652390D02CA20BDBE761F03557232B230363390D8F6B7E14738F7E1F7D3F0F234ACB53F0FBF2E598F8FE8C142DD926CE0DAD23E2E5181E2FC7136F4C8D8CF9562CB3284EA0A0E4A16EF76E2D9050192EAA';
wwv_flow_imp.g_varchar2_table(13) := '5889FEE32660FBCE9D18F5F2EBA85ABFC1E57AF5B9E4224C1FF5600ABA75688F311CDDF579CD8F38DCE5EF3DFA10DE1FFD304A870EA6A941476DC6F3DFD36F5E0131F5174D108644CDE7C1C6AD5B59F2F57ED62A6518F0CC103DEAFEB2991F63CAEC3918';
wwv_flow_imp.g_varchar2_table(14) := '3B652ABE59F0071E6192A205F74E8CA366E326CE81A73159239C30BCB40C607CCD1A6DD08C04006F423189EFF7F71AAF5E45D55ABC3EF23E0CBAAA28A57374B3663896C7A281256618064E8BD7383B5B2C4EC06CE4504790C1CE4FFE2D67B6A702BA05AE';
wwv_flow_imp.g_varchar2_table(15) := '7990976EC673D33F40C95313306FD19294663B7E70F2DAB446AB162D9C9711C6205AD0FCF0A6CE6BDAA811F238B60587691C1B7C0E8081596668E2FE57573739F04B03E787458B0FAC504FA212739E328ED287AF893AE20CCC1C9CF6957D907602F5FC43';
wwv_flow_imp.g_varchar2_table(16) := '3762D6BC9FBC3F1672C8E8BBD0824D37F58BB978937DB19937203316E3260D6FF2B3FED6DCAFD0A4918E8561CD1084619404FBAAC10954F0E374144BDCE3F4CE7EEF2F2A38036AD853734F229D8F733BE7A3E8ACAEF8E5AFA5B8B25B579C775A3EF99C19';
wwv_flow_imp.g_varchar2_table(17) := 'FCAEFCB88447C82AE81B600C0E3E0D4EE0ABDF16EC75DF874F2A8360D80BA5E497390C9B18C7B017E2D00C18C1A9AA7920FA79F69206908227587E41831360D2FE93B1C02CEA683514EBCA1F3FEB2C7110F24A73970AA81DCB4881CD780CAC821957321B';
wwv_flow_imp.g_varchar2_table(18) := '9C801C2AB01A0D7452AB01C65534DB8C2E934D5707E9456100055722664C98094826685002327087742287B59C920177591FC047DF1625A76449C29363C96523DA57DAF9F013231D9013E969974A44B83EABE20BB43BAD8C26D15E1084D171B81D93771D';
wwv_flow_imp.g_varchar2_table(19) := '564136695520E958AB2A60A63763D0891971AE722E0077A67E48EA7AC2FA2F8AEADAB9745419C9C9425A0998F1DCA86D74AED2CA294938CEE0E0A3724ACE74A0206441B48E477AA09E8E463C81F301FC0B0000FFFFF05ADD980000000649444154030065';
wwv_flow_imp.g_varchar2_table(20) := 'DCE1FCCD67DC910000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5528718308476777236)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECFD7FB064DB75DF87EDDDB7EF9CEEFBDE4CBF7B27A9320BACB8CA06109115902288F0C71F012D258A60C09603865552688116091024012A7E';
wwv_flow_imp.g_varchar2_table(2) := '4A242B5448D80224223029F15902489B22920A55562C952C2A490161857168307F908425D020658B05201529060AB25DEFCE9B99F7A6E7E76DEFCFBE77F5EC3EF774F739DDE7749F73FA7B6BD6EC73F6CFB5BF7B9FBDD65EFB470FBEFD073F38CBD3B7BD';
wwv_flow_imp.g_varchar2_table(3) := 'EF8766DFFABFFA8148EF78FF8FCEBEEB43FF666BE83B7FEC7F3DFB8E1FFED0EC3B3EF8E1C8537CE63D47F93A59FC36D545BC6CD6AFAC0FBCE3877E24F6DD6FFB933F382B43DF1AFAF4B7FCF13F397BFB0FBC3FF69DBAF1E75B21FF4DC9EAF03FFEC08F35';
wwv_flow_imp.g_varchar2_table(4) := 'C25FDDF5ED6B7E7FF05FFF53B34DDBD0D2D117FA8A8FEAB5D9B8D546DC064F1E3C70797AF6F8B19B5D5C447AFCFAEBAE4D7FDE7B37383E7683E1D0F1179F79CFD1F178EC52B2F8A4115D2270F1E4897BFAF0A1A38D1FDDBBE7A6E7E7EEC1ABAF46E21D22';
wwv_flow_imp.g_varchar2_table(5) := 'ECE9A34797095AF2BFF7DED1EEC3D128B67176EB962B43E3D3537772FBB6BBF1E28BAE89BFA31B37DC28F032CC327714FA23EFC727278EF2F0CF93F1034F90D581744DF0D7E63CAD2F3E994E9D117D137FA35DF13F9A4C623F194D26B13D691BDA8AF6A3';
wwv_flow_imp.g_varchar2_table(6) := '2D6953DA68D998E2BD7783C1C0E94F08B41B01E70A7B691CBC18C002D1D9DB5E89B6F0C78085D0AC936C30349732664139DBB4CEE46342FE6110FA8FDF78C321E09F056560369BCDB3E51D22AC8D4AC09CD1163D78EF1D8A0942220AF39B37A38232CCB2';
wwv_flow_imp.g_varchar2_table(7) := 'E84F584A7E50F8F9B9BEFC319198DEB913154AEB73B8F8D93742FFE3DDFA623A19210C7F23D2D21F77850F029EF6A23CDA8AE76196C536CD42DB8E26978A020A424AE3B333475CD28984409B11183058A1D942D689E3E0156632B8CCA2DB5C8136F1C680';
wwv_flow_imp.g_varchar2_table(8) := '87D0AC93D2019167064506CCBA064206B954E19B3FDFB8E150FE8CF06F13D6E2A52308244AA5718C026BDF486585B6203FCB57AE101002E51120E660983D9F9DE021DA1C81549942A182F0438862AE46882EA3AAA53EDBD02C8F42370EA6F0D1E472F632';
wwv_flow_imp.g_varchar2_table(9) := '9A4C1C8ADE350A331CE21AF941BF67AB55F157FCF50860261F87D930B365BE01A31B2FBC104DEB7C1F9528F455BEA3F5252B861010026510687C549F058DDDD6F0CC65F68A29BA8808B378CC14CA54A22D717C109298FE521A6697264306BD6B42F6CACA';
wwv_flow_imp.g_varchar2_table(10) := '82BF595FA2700EFE0C8C367032E82D280E57B3F34DEB1DF9BCDA43B1691E4AD71E04E2F7F2F4E99CA18BF01CFDC2B28EB9FBFC9650044C91C4A53FA7DF48E967F5D9791BEB41086C87C065EA46150084F9F4FCDCD91A9EB9AC2963CE2E22C22CDE34AC1F';
wwv_flow_imp.g_varchar2_table(11) := '420C6297ECF6FFFF289C8F8F1D83A20D9CD79487303BC774DF7F3454C37508CCBFAFBB77E76BED0FC3B37D43E6F21DB1866E441C148575F92B5C080881FE22D0A80230ABB0590D81B630CB0D42909902D45FF8553321B02502DE6F94C1ECD9B378CA67A3';
wwv_flow_imp.g_varchar2_table(12) := 'C44A24048440A71130E6572A0098E86DB72ECFD0A3FBF79DF9E13263B7CCF22EC29B592CFEDE7BC73BEB8098B631718FC35AB499BE4793EB6BD1CC7C3119321B260F51F711985D2D09B1F98BFE94A743B2F6D4D19AA3975E72F13B393971F65DF16DA594';
wwv_flow_imp.g_varchar2_table(13) := '7E67F6BD8DC3DABC7D9B4E7F4240081C24024B1500CC8398E86DB72ECF50BAD39D38CCF219D48BD0F3DEC74189418701270E54E3B163E041A8FBC1A02899FC7A8CC09337DE884B429C66A03FE50993F5342C1BA1582EEB573D86A772D5BCBF52AC93EF8A';
wwv_flow_imp.g_varchar2_table(14) := '6F2B257D679561DD7B02265AD3B004BA7746C4400F11785EA5A512D81F1D3966EB7962573BB38B93DBB7DD38CC22D8C0E6BD7F9EA39E84C00A04B002F92BC50F37BFECC33BCB41B3B07CE4FD66FD8AB46659601F0A560508E5157F5CE2E4D99C5D592788';
wwv_flow_imp.g_varchar2_table(15) := '5B149E8FAF7721D02402583F9BCC5F790B81E50A40187CE980791A6697C706FB021D833EB34D9633209E2104C5328A0224088BBE60B0CB7A20DCC761E9673499385C14C865B4295FD3307332CB026D8955016256853F2E71A657968618E7EEDD781322F1';
wwv_flow_imp.g_varchar2_table(16) := '200BDF9407A51302DB20C0720ECAF2367928AD10284220F55BAA00A491FAFCFCF0B5D7E637E1B1DCC18C1142502CA32840101EC19CDD676C9AAC1B8A4053F98F26936BE7CC1950F3D6ACE178ECB07445F2FEF2FADEE3E3B98B19DDE94F08080121D05304';
wwv_flow_imp.g_varchar2_table(17) := '0E5E01181C1DCD077CF626A44282774CD229A5FD60D3CB78D23CF45C3F02281708EF9468CBBC352B7D2FB442DCBC593F73CAB114022CC3ACA35958264A334BE32FB3DE61ED89FB4FD2DF1C78F4C89136CD4BCF42A09F082CD66AB0F87A786F0B037F18F0';
wwv_flow_imp.g_varchar2_table(18) := '178442785F08BF752BFE48C809FB1F3063BFF4D2E101A61A1F0402B3B0C485B09C86E594F4EE00042B2738F2C2775B50C8CFCAC16519661DA5BCE5D32CB3DE61DD83FF349C7A521679B00CB86D5D945E08740581835700366D2836B0419BA6573A21D066';
wwv_flow_imp.g_varchar2_table(19) := '0438AD81B044301B9F9CFA417032836619CCFCEB70F9964693495CBA61A3716A894B9F59174F2D723CE7CB272FFCE7747573669A8F3D63199AC70BCB3FE495D699779110E80B02F97A4801C823D2A37706324C9B46B330AB2BAA1E03FBBA3845E9E4D75F';
wwv_flow_imp.g_varchar2_table(20) := '044C4016B9C3ECF27AEBBA6B6F4B37C3EC32FFD41A67CF1C255E6695C332078D83756E214EB0E459FABCCBDE9085B8C1CA87025177DD949F106823025200DAD82A35F08459731ACCB798368DA6E7E78E2B60317342BC63F6C42F8D833F4A410D6C288B8E';
wwv_flow_imp.g_varchar2_table(21) := '228010CC0B4B7B6786CECCB9A35513DB42E04011B85E6D2900D731E9850F271A8A2A8260270C9A2DB1082CF32FCA4F7E424008080121D04D04A40074B3DDD6728D19747C7616D754B9B80953676ACE650697AE7DCE9FC37A29F131C7AE2D441184801010';
wwv_flow_imp.g_varchar2_table(22) := '0242A013081431598B02C0AC929DB56C0CC27C8C5919173333643B87E33AF3D3A7457CF4D68FD9F4BEEAEDBD7776140E816F265C5C1482FCDA677C0FEBA5A471FADB1A8179DB3F79E278DE3A43652004848010A811815A1400843C3B83D31BF218F03033';
wwv_flow_imp.g_varchar2_table(23) := '43B67338AE33DFBD3BFFD9521405681AD6AA511E109435D66D2759B1D64EFD8B28D68D75F77BF7E2DA3BEF46C407B3D91233FC4E985721A511985D5CB80545360875FA2BC46E79C220DA159A863E3DB5B60FEDCF33ED5DBAC0921167A1FFC0434A918FAB';
wwv_flow_imp.g_varchar2_table(24) := '1FEDA27FC21FF14A66A968151048715F783EB0894E05C814752F0814175A8B02104DCD574778301FB353373537E7DF2D8C59E930CBE2AF0486295231872DF745E941C929A255AC131FAB09B42ADEA185CD82A085D27A636162704D8518EF10F8A5FE69BA';
wwv_flow_imp.g_varchar2_table(25) := '3A9F11A40B8A6C10EA51A10DAE85114EBB42F93A78EFDDE0E8C86DF3473DA9EF342816A648F26C7C981BF978FCD8C107C21FFEA06DCA56DA4504E89345D85B1BB0B1967070A7DD1653EB4D08B403815A1400AAC29A31A66388B3BA98998DF2EFE68F199A';
wwv_flow_imp.g_varchar2_table(26) := '1DC5BC637E262D797589E01B05673499B8A808DDBA15D7DDA99B293AAB5CB0E9527D9BE2150B1003E6949973201370B80CA60CAC84F30EF10E31AB462836C597E54B3F8556B565EC0757ED8F223C3E3D7D7E71D4D9D9A5A26B196EE286D9FE2CD051509A';
wwv_flow_imp.g_varchar2_table(27) := 'D9B3E107E53FDF2A713761EDD0D2A05CD116ABEA4D380AD82EFAE72A3E1426049621507E045996C381FBA3F820C471BDF70E2506C2BA8162B38EBCDFEC17EF5CCFFE8E472377FCC20BCE04EC30CB9E5FD17CFCFC7E7E049FC5C18D42793C6E1C0D04E830';
wwv_flow_imp.g_varchar2_table(28) := 'CBDCAAF68CFD20F04AFB43A4A99331F2A37C140D14CF71AA608467940E681C948D93DBB7E7CA07CFA4A9939743CF8BB60653FA20CFF44B233F581C568F86C343874BF56F29028B3DB5A54C16B185765DE42FBF6E2280C01C66CF052C821D2157440841A3';
wwv_flow_imp.g_varchar2_table(29) := '619675B3C235738DD00143C8FBDD2B95B3B074C392CCA17C97DE7B87E0A71FA208A4FD741C9431942E8867DAA4E6E6567642A00202CBA3764E016083D334AC814298828DD87865C4BA1BF120D6E831135B18AE85B38EB71C1A85080121300B821D1336DF';
wwv_flow_imp.g_varchar2_table(30) := '4D9EECDBC39D86651B9664A6E1DB241EDF9DD0730EC5CCE94F08B414814E2900086C3638CDC23A681E4FD6E48C5877231EC4DA32039885E15A386BCBF97CF42E0484C07304F84650A0F96EF2F43CD6E213F1F8C6167DF5260484C03E10585566A714007F';
wwv_flow_imp.g_varchar2_table(31) := '7414CD6E98DC58EB4C37DAD9FA5B15973C568173C8612859584AA6616667B33A667691EEDF8F47E2788EE1210E8A160ADA2163D6C7BAAFFA9E3081DBB7C8B77492EC3BE0DBEC231EAA9310E813027B510066C1AC88793E4F0814661BF8170913EFBD63C0';
wwv_flow_imp.g_varchar2_table(32) := '61E0615D2DDD6897AEC1957D268F3E35669D75C184CB2C8EB69A058B0BB3BA393D7EECB0AEF01EC3437B12FFE2D9B33A59505E2D4060D55E8CF45B6CD3B7445F640CD994487F48FB195AD0CDC4426308ACCE784030C2960E5F85100AA4DD841EBEF65A14';
wwv_flow_imp.g_varchar2_table(33) := '20089194102898EBF1C3F4085F9BE45F471A060F1412231493057C7A7ED1C730CB16769133BB6396B794261337CCB421AF8EBEA73C36478071C91451C68F856F36B9BC69953F63D0B3F07DCFA4D06EDE104AD90904060836842D1B78AAD0F4FCDC917693';
wwv_flow_imp.g_varchar2_table(34) := '5A621EE4F8CC3AE268DD26F9D79106250485C4884161019FAB1B0DC10E2561532CEAE075577930CB5B4A431D75DA553BA89CE50878EFE747351967CA5A03F3F1D8DDBFCFF167790D152204CA23B02EE66016CCB7DEFB387B2B12C898D959074C33C22FC6';
wwv_flow_imp.g_varchar2_table(35) := 'DDF0FC3542840F6C1DA565EEFA799865734CA87F4AE9CE5E66192809E0B86B1E559E10100242400808814D1118A0258FCFCE1C6B7D45029970B4634CC046F811D7E72EBCD8948936A6030F887A52FF94C6C939DFD164E2780793BAEA8152114D94C10C59';
wwv_flow_imp.g_varchar2_table(36) := '579ECAA75F08A070C63E7265D6C6F4DDAF1AAA364240086C87C0FAD483F551146315029809EB548418D4595688CB0D57CB0C0F5E7D75E107940867C9817D0A280BF0971708E46324E10042CB09ECA677EECC31664907CA63BC3C877A42682F36A0D1AE10';
wwv_flow_imp.g_varchar2_table(37) := '272BE003CAF701F88D7DE4DE3D873B0D4B721687E759B0ECD5C3D57E7201FB69A813F5A4FEF479EA87CB3B2754C008CC529ACD66FB6158A50A810E222005A06D8DE6FD5A8E10FAEC49609F02032203E3340830044111319092666DC6071A6116842564D5';
wwv_flow_imp.g_varchar2_table(38) := '674907328C11381656973B0B828AFCC97B1A041D6D48DB21F469570865003EA02AE592779737B0810B14EB11DA86FA5BFFC5E59D132A600466298125DF044A4115CC145708F40D8132F591025006A51DC6C1A2C052CB6832893F2AC451ABB8DFE2E4C4E1';
wwv_flow_imp.g_varchar2_table(39) := 'B2FF82FD083B6469AF45210418CC99ED312B3481390D0A4F1496D3A9233CA55910AE55980673967B4693493CF9300E4B3CE96907967FAAE457262E028EFA20CCAAF08BB5893E405F301EE92FF08C8B1FCB51ECB329C3471BE3D01EF4F13CE15F865F9404';
wwv_flow_imp.g_varchar2_table(40) := 'FA4B99B88A23040E190129002D6D7D063B0671EE3C601F8211833B0289C11E62C05F4B41B0915F4BABBA922D043E333C667B084D139833668657F71110BE40AFBDB632CFA2C0619639C308210BF6736AE08403ED99B65B5ED143C01BE59513FA00E98D3F';
wwv_flow_imp.g_varchar2_table(41) := 'EA03CFB8F8A120F0DC55A21DE8E3791A4D2E1534FA3D64F8F10C8DCFCEA2D28C3F9875B5FEE25B086C8F40B91CA40094C3A9B5B118F0D75203026C57804405E8CAFA6102D15CC29825223016F8A968015848BBC397B4DDA80B42BD8886D973E56487ECB5';
wwv_flow_imp.g_varchar2_table(42) := 'BE28C3CF18F5DE3BF3F3030D6D4E7F42600D02BDFB4A30FF5531A9AEC147C17B46609865F3F901910C000010004944415473DD79E1C8AC9959E2687239331C07D33DCA81667F7B6EB49E14CF38C2D2524FAAA36A1C100265ABDA1B05800D53D3F373C706';
wwv_flow_imp.g_varchar2_table(43) := '205C3655AD221485B220295E371060D68792D075137837D0EE2E978C152C2D413656F09CD2F4CE1D47585C5ABA7BD7B1E970D611CB52775B469CEF1A81DE28006C082BFB812220F861A1AA603370B0B9A888589F66B600315840169F234B10E9F0AB5A6E';
wwv_flow_imp.g_varchar2_table(44) := 'DBE353AF3878263F12447BE09F127E6C7C039B5958C36F7BBDC45F3F11E05B642F09646306CF29A5FD93C902691E06A5A09F88A856FD42A07C6D7AA300600EC6FC6B849087ECDD5C365041DEAF3F6E978711E11D05FC747AEDB70C106C71B670EF9E63B0';
wwv_flow_imp.g_varchar2_table(45) := '80107871F3DAA3477106C1337E0C28F9BCBBFA4E7DA8571C3CAF36E5A5CF8419811F8A12D84CC360DA271CBADA7E87C8F7E8A5972E2F3E4BF6963026B079304FF80FB3CC615D72FA13023D43202A00E92C0D41C66C0E53BA99D019ACF16F73DDF39BA8F8';
wwv_flow_imp.g_varchar2_table(46) := '70214CC229A1146C5A0FD69659731E9F9DC5E362EC3C5E46E940423A1410CA86CF6B9BD63665A805E9C036ADEBAA67304869132B4C0BAADC7A1650ACF8868DF87651BC505E51C2EC7BE7193F6856B3799B1934E532864CC3D29CF192BA2882F002BFBB04';
wwv_flow_imp.g_varchar2_table(47) := 'D50F0697D77C8FC7F3FD257C9BB6813075F1E7FB1D9F9EBA71F8EE9DFE8440CB11A8C2DE808FCF6668B80C14CCE0F0B78C66C15C8B7FDD8384E5DF47371D4486D9E5463614122C157DAA2FCA4C5AD755CF280B29795FDD0AD327EC9AAA0BDF2EDFB011DF';
wwv_flow_imp.g_varchar2_table(48) := '2EC2180B95596CF8D679C60F9A06218DB03632418D9066C9A60AAFE4350D161ECA25DD2C2817C64BEA922F7C30D9A03CE28A848010D81D020306F0D164122F99496767E93371386EE57DB9019B01888F1F6276514468FE108300E10C1269B56741E9C09F';
wwv_flow_imp.g_varchar2_table(49) := '594AEAAF672120045623809589596BFA0D2F7B1E6699E3DB36F2FEF21B3741CDF78912C0F7B8BAD4E7A169D9F042DEDE5FE6FB3CD6E253FEFB5F0C2DF7C678C19802A1DCA05418E1572E17C512025D46A01AEF710900019FCECCF2CFA3C9C461FA2E9335';
wwv_flow_imp.g_varchar2_table(50) := '021B8D9E1907C4ECA288D0FC210617C2A7B919C834CC20F0E7439E0565A04CD98A538CC02CCCC0C09176B119DE3A97B82870C539CA771D020823842718F20CF18C40421841F8ADCB67D3F061766975CA7FCBF9778435DFB6D13898B959D61A4D26F34B75';
wwv_flow_imp.g_varchar2_table(51) := '469389F3C16C5E9617CCE6560E162FF21E877C479324CF5BB716F21F4D2665B35F1A8FF1823105621C32250617BFA5091520040E1481A800D459771F060A34FE948659188C920D37CB662345FEA3C9A4D2E053675DFA921782870111CB4CD93A111705AE';
wwv_flow_imp.g_varchar2_table(52) := '6CFC438C87628AA28432350D0A2BC2DDDE114628B760C833C4B3092304127EB3A09CB5113B2605F3E59C9A2E925AC8F3F8D8D59DFF38ACD3DB1E14141BC6935866E09FF736E22C9E84409D0854CDAB7605800F0E8D3F253E3E9B115475C9AF6AA5147F11';
wwv_flow_imp.g_varchar2_table(53) := '81A33000AE53C86CE05C7083F2B59893DE52045092BCF7D1843E383A72FC79EFE37B8AB73D2390526276ECFD6AD3B8D35F6904987C985231CCC2A4633C76A349B03A041A6659E97C1451081C0A02B52B008702DCB27A32A3C3B41BE9E9D365D176EACFA0';
wwv_flow_imp.g_varchar2_table(54) := 'B84E2123CE350A8AC34E19ED586198BA535CD73DE7955FD6C73B5665B12B0484406B11A8CE981480EA982D4D81997D7A7EEE30ED46BA7BD7A5E6614CC0715DF8D123C71A30CF515178F2E4DA2FDACDFD5BA2442CADB402848010100242A093084801A8B1';
wwv_flow_imp.g_varchar2_table(55) := 'D9586B2FCA6E7671E158FB253CAE0BBFFEBA630D98E7A828DCBBF75C69C83F5F29112812104A465119F213024240080881C34560939A4B01D804B52569D8EBC01A3AE7FD6DADD7FCF08758F7C5F4CBBAB0F797EBBFEC73E0DD88F7A222BCBF8C5F14263F';
wwv_flow_imp.g_varchar2_table(56) := '2120048480101002551090025005AD35716D13126BC3B6DE3BCCB2E7BB9D8F8F1DC21F2580F5E2F1D9E58D82A3C9E5314BFCA0D164B270D3A0C5C325EF356CEC3D182B054B1C583858E6C002624CF16CE1C45945584C485F14873C5826215F36E3593C8E';
wwv_flow_imp.g_varchar2_table(57) := '3BA6BBF179262EF14442400808817E22B059ADA4006C86DB4E5379DF9D993FC21821CC1207421925607AE74EDC0BC11206CF164E9C55C49E09D217C5210F964FC893A377160F61CF720B7CD0483CCF5A7AD40EFE4442400808817D2110AF02DE57E12AB7';
wwv_flow_imp.g_varchar2_table(58) := '7F0870BF7F53560A3F182C1EB1BB71C3D9524BEA6265613985F8DE7BD7143FAE477F585320AC2E585C50B0B09EA084C5F77BF71CEF46285DC421BE14AC1E750455A593086CCAF4800F7AD3C44A2704F20878EF1D7B204E6EDFBEB68CC11E88944C68B324';
wwv_flow_imp.g_varchar2_table(59) := '62FEE3AB65917C7ADEC7A7A78E259239DDBC39FF31175B72C1253FE2109FFCBCEF8E05258F6793EF2CC720C4A3152508782C2A51E03F78E0CC928280C702832525252C2CC4213E719AE4735F79A3F850C77D95AF728540D3080C18209B2EA4E9FC198418';
wwv_flow_imp.g_varchar2_table(60) := 'C42066260C480C6E4D97ABFCCB23E0BD77F97B0610D61033760BF35EC2DAEDF08F597FD9E2D89C8A65C5887663932B6ED93CBA142FD6335899BAC4B3783D440436AFF360F3A4ED4889A047E01B37CC4C5008A661DD39AE0B4FA70E97771484658425847C';
wwv_flow_imp.g_varchar2_table(61) := '665A2F3628E5D68000FD935924B349FA21FD0C9A9E9F47933A7D757671514349D5B3F083811B5F595CCC0253E4CEE34C1637AB6269196699F3BE3EA50DAC529CC06A1D8161F5DAAF4F81C2B33E96620881EE22D07905C087418C410B7332CF4634099BD0';
wwv_flow_imp.g_varchar2_table(62) := '305FE2E28FDF32C2BCC9408212B02CCE21F8238CC00B2CE2C07BFFBE4378410CCE841F020E75D5F1E16BAF39CCECD60FE967108A262EFD6D1A94D5BACADB341FB3C014B9DED727E0D7F187F0A7FF814D5902C32A968C753C285C087409816D786D540140';
wwv_flow_imp.g_varchar2_table(63) := '58F06142AB98B4787CC8081A086143BA94181878CFE7C5A08529791CD6888D58334E6934B97EB4CE140766323C43E493CFFF10DE67C1F281C09F06611407E1870F5D1C801F3F76082F08414638445CAC2D8780CD36751C8719F6683271F42D089339CAEA';
wwv_flow_imp.g_varchar2_table(64) := '30CBE286469EF1DBA68C3EA51DBDF492E37B0497B2047E8C014E7F4240085442A0560500C18D6030333B82828D4590F915B9168F5927820642D8902E250413EF280A956A5910D97BEF183410F8AC61F20CB943FD0B0AC0C5B367A56A8FC2867250473B94';
wwv_flow_imp.g_varchar2_table(65) := '2AB0E3913025D3B7A06176F92335082D362AC6FE17FC3A5EC5DAD8F78341BC2B035CCAD230CB9CFE84C06122B05DAD6B5500BCF76E1604C93296BCF771D6C3E61A842E1A3E032133A365C48E72E29126D28D1B8E01D5E9AF56041878C7C182427BD03611';
wwv_flow_imp.g_varchar2_table(66) := 'EBE3E3797BE5DF87591607EA5A995066424008080121B033046A5500101CA3C9A2A93D35C38F833994590F14CD7CE3B11B66996366B48C38C3CD4C8034916EDE7452009AEB1FC32C8B26D888F5AD5B6E998BA250B61D582AC03A04612182A2B5673A75F8';
wwv_flow_imp.g_varchar2_table(67) := 'D9D20ECF296161C0DA60B545B96409087FE2B14C64617285801010028786C0B6F5AD5501D896993EA5477021A81074083CA36958637FF0EAABF166BCB9DFF9B9C3DFDE7111707DC183E5029675209E21B0E11DB2A51D9E5302BB88CBFDFB8EE39DD38013';
wwv_flow_imp.g_varchar2_table(68) := '4B40F8138F65229EFB8293EA2104848010D8250252001A401BE186E04238F18CC0339A2547BEE67E61D9047F7BC745C035C0DA5EB2C482935A824693C97C53DC6832712C3D2C5B02324B43B4049D9C389683521A66D95EEAA4428580101002FB4560FBD2';
wwv_flow_imp.g_varchar2_table(69) := 'A5006C8FE1B51C1056918E8F373E23CD72CAB58C5778A040A4E6719E31BDAF48B2B720960EE64B3EC3A1F383819BBF07CCD2E7619615DEF687520191D7DE2AD2F2826741B18CFDE0C91387228A5509E2D9FC53973ED4F22A893D2120046A44205E05CC4C';
wwv_flow_imp.g_varchar2_table(70) := '95C1A2C67C0F3A2B041A9B17593F1F9F5DFEE25F3A03C66FD98C177FC2D92351164406F469585A48CDE33C633667B98130D6D9CBE6A778FD4060F6EC59DC63F1E8F5D71DDF38562588E7D83FAEAEFFB567FA89F5172903FDE803AA457F11A8A36603CCCD';
wwv_flow_imp.g_varchar2_table(71) := '0890678F1ED5919FF2288180F77EE98C97D9AFF7D52E5EF183C14A4B03833903BFD35F6904C06C3E3B7EFAB474BA3645C43A1295D0D3D3F8BB0CE3A08CA260422CADA44B29F819652FBEE87CE8536DAA8B78110242A07E0406CC34F9F0AB9A9CEB674539';
wwv_flow_imp.g_varchar2_table(72) := '6E8A00CB0DA3975E72CB0674DA9770A7BF4204582A614321B35F2366C33633364B0A9B150B33E888A7F7DEA16042C36C716905BF949CFE848010683102F5B03640F0F3E1D7939D72D91702CCD8581337A24D53F2BE9A55615FF5D847B95847CA1C29BC08';
wwv_flow_imp.g_varchar2_table(73) := '26F57DF0A73285801010024D2030682253E52904BA840096936196C54B8F86D9A5CBC547F8632A8F1694C9C48D26938DABC572021BF038E2798DEE3FFFBD05E2402CCB9186BD1BBCA784FFC68C742CE1C252CC93278EBAE789381DAB96D815025B215057';
wwv_flow_imp.g_varchar2_table(74) := '6229007521A97C3A8B006BE5087AD6CBCDE5196BCA30CB2ECDE6C3E146F5C3B230BDBABF205A1A821063DFCD0225BFB7401CC836EAB1ECC07B4A2C4DA0206CC4500712CD66B3B869717AE74EBC1F83FAAEA2182F608C6205D67DC6A603CD27163B848014';
wwv_flow_imp.g_varchar2_table(75) := '800E359658ED260228187573CE924FDD79B6253F941E84F82CB933631D6FB3A03440286E2C6BAE8BAF7021D05D04EAE35C0A407D582A2721700D0136682294EC18E8681296126EDD72E3B3E7C743D3678B373E3D752C3D6091884B112FBC10DFF1233EF9';
wwv_flow_imp.g_varchar2_table(76) := '5E2BAC271ED48D3AAF23B0010F283E076C9B50B67A02ABAA2104AE212005E01A24F21002CD2180806273A6F7CF37657AFFFCD94AF683CBCB9186D9E56E7D66B5A483BCBF1EDFD2F5C11D669775660966150DB3ABE599E3E3F89B227DA8BBEA2004D62150';
wwv_flow_imp.g_varchar2_table(77) := '67F8DE1400CC7598F958B78330FBB15ECA061F363EF18EBF6D7EE2A8D6B615B7322D4F2B8F32F354C5FCB88CAF3A785E967717FCA9BF616D2E6D5B07B65DA8BF781402424008B41981A50A000336E79F11C246D33B77E28FD83CB8FA319BE9D5C61BCE50';
wwv_flow_imp.g_varchar2_table(78) := '33D857A9E8E3FBF7E3461FDB0C8560201F36FB20FC7927CC363FC14B95FC8BE2A270B0B9CAF2B4F228334FCBEA0A6F60834B7A9E8DC81BACC0058CE0199777148C229EFAEA477DA9BF616D2EB8E5B105A394C0705661FDB7AF1876A55EB4F53A9A8535FA';
wwv_flow_imp.g_varchar2_table(79) := 'AED4477C0A81F622502F674B15004C8E374E4E1C264788620747470B37CEF15123A4A3F0AFF881933F6B7CACDF415C48C47B5CCB0B6BA4D1EFC5171D7E10EFF0B00DD9D12EF283586BC4AF88BC5F34B35A5D514C1066B85810783642C1000FE2A67CF27E';
wwv_flow_imp.g_varchar2_table(80) := 'B18333E4B19C278B47A5E013BE4C49495D5358F0230EE953BEB779A6CF8C2693B86E0DD64594C71DF3386582217CF32C6A0702D39CF2FFE06A12809B579E8BDEA761B2C0F7D28EDA880B2120044060A902E0BD8FC2DFD6E0D8C8048D93CD4B27B76F5F5E';
wwv_flow_imp.g_varchar2_table(81) := '317A7A1AE3BA0A7F085FF24650405121188FE35A1EEFD0307BBE16C87B85EC0BA3226028D3C8EEEBA75E794AEB399A4CA2204309C9130A4B2ADCC8331F8777EA57C8540D9E084B066806D9FCE0CB8C1B416F4A4AEA22F411B6F81187F71AD8996701DEB4';
wwv_flow_imp.g_varchar2_table(82) := '9BE19D77F3988F2693D89FE857C49D67A4873902E94C7B5651E99E67B2C1030ABA1F2C1D2ED6E6E8FDA242BD368122080121700D81BA3D36FFA2EBE6A4C5F999204398E569983D5752105A2836F938BC3755BD59309523E471372D83811DBE99916F9A47';
wwv_flow_imp.g_varchar2_table(83) := '97D3811D82759D40254E11AD4B571736586A52056F1A66D5104B267942A183F0A77F90164571CE7FC5DF37A07F24F451AC00001000494441548C83A23F9A4C1C4AAE29BD3CA3E02E5088831297D2384C1CC8A32E2C948F101002DB232005607B0CF79A83';
wwv_flow_imp.g_varchar2_table(84) := '0FB3B271185CE3005C30F0A68370FACC600EE187CB408EA2B3D7CAECA1704CD8D360DE46B0224C795F46C42922D221689B661F2B123371143588F69A052B00569C6BF4F8B1E3D700E189B068E579FD7537E7FFEE5D07DFA4274E59A24C0439CA2EC4330A';
wwv_flow_imp.g_varchar2_table(85) := 'EE026D786952591E144F081C2602F5D75A0A40FD98EE3C47EFBD8B03708581D70F060E7207FE1705EA8D1B732CBCF7F14A60046C11795F6CCA8EFB605CB37FDE7B8712604B27A3C9F3251314B994C661B66EF1784EC350F68659E6E833DE17D7A7D99A28';
wwv_flow_imp.g_varchar2_table(86) := '77212004DA80C0A00D4C880721501501CCDB365367F60D71EA60EE77FFBE2B33BB8D02F5E64D370E021321390ED614139C452EE1C483A2D5E56AC32AFE55EBB0AFF8CCDAD9BB8222B02F1E54AE101002D5106822B6148026505D92276BB0ACC542083084';
wwv_flow_imp.g_varchar2_table(87) := '96ADCFE207B1539A75DA2559C8FB0A816196C50DA3CCD2F142D8A7B370700C1A00418D113368A3C60A51C6424008088186109002D010B0F96C114E51D83F78E0588F65C73D6BB35129B8F2C39FBB0558A78DEBB31717F96CF47E85006BD171161B66E0CC';
wwv_flow_imp.g_varchar2_table(88) := 'D44793EBE6703F50F7BE824B8E1010029D46A019E63B3742323B66A69C27842B336A233307DBBBC58F33C366B05C992B020BD3EBCA4869A0D7DA6C0A879E858010100242A05E043AA50020FC991D3353CE13336966D446CCB881CADE2D3E336CFCF741AC';
wwv_flow_imp.g_varchar2_table(89) := 'B98EC31A73BA765CF81C66B3E3B026ED6B9AC1CE822501EC96D13EB05099424008080121500E81A662754A01F0C361BC19709865CB776ADFB811E3D839657387D9651A367D350566997CBDF7CED68D97BAA19EAEA63F14A1E9D5313794A72262E31C1613';
wwv_flow_imp.g_varchar2_table(90) := 'F62598A504A5A12616948D101002424008B410816E2900417872F6385DFB65FD77816EDE74C4C993A5E1D8570BDBA13196FCD1915BB5F4E0BD8FCA94F7DEB13C6296121407A73F212004848010D83302CD153F682E6BE5DC0604BCF7F1E6B6715852982F';
wwv_flow_imp.g_varchar2_table(91) := '3784258613BBC6392C499802451CF35FA534B4A15EE241080801212004B64360B05D72A5EE0A02EC27982F39D4B8C4D085FACF663367FB1FBAC0AF78140242400818024DBA951400065236D1B1660C4DCFCF1DBBEC593F4EDF6D1D39EFB2518F81987C9A';
wwv_flow_imp.g_varchar2_table(92) := 'AC94F23E6C04A677EE38FAA311FDD4F63E981F2EF1383DC2D2471388CD82E2419F676F05DF499EE08BB026CA569E424008088175085453009E3D8BEBC49629031CBBEC6DBDD8DE6D1D39EF32D8321033F041281328090C820C8EB8E461F9EFDB4530C01F';
wwv_flow_imp.g_varchar2_table(93) := '04AFC623EF0CEC5199B9D059FD7DB7D3A6E5CF42DBD17F69CB46FA5D50009E3D7AB470273FE5195126F7416CCA7F3E1DF9D127F3443D2D2ECF69BFE6DDC2E40A0121D036049AE5A79202C059F6D164E2D848C7EE7A6E615B45DE2F3FCBCE601507A2070F';
wwv_flow_imp.g_varchar2_table(94) := '1C83208322AEFD8049B3D55E9F3B4A0D42DF941878351EF19B2B3361B639BDB284B44D81595FCB7EC618B3DF21F453FA684AF33D10B76E39DBEB405C8E677ABFBCAF6E8A12CB2EB6BF02D7CAC41D4D262EF213DC4DF3CFA7E3FB41C1CED334F4512C1E10';
wwv_flow_imp.g_varchar2_table(95) := 'CF69BFA62FE7F3D1BB101002878140250500485002384AC72E7B06B555343E3B9B0FB40C7A501CF4C2005CE886C190FC2967DF1477CF1F1FC71DF2B1BE27272E15263CE38F02643CA3BCCC2AFECCEABEEBB9AEFC59982533A3C4EA6184A0C16F1666B8EB';
wwv_flow_imp.g_varchar2_table(96) := 'D2EF2B9C36A18FA634DF03717CBC2FB6E6E5C25FE4A7C6FD18D4156586BEC9264EFAA61F2C7EE2BCD36F3915C33778FCC20B739EF420048440BB10689A9BC5D1A1E9D242FE71D00B0370A15BE360188ADAEA9FF7DE9972132D1EE3F1B5E385F85B1C73A9';
wwv_flow_imp.g_varchar2_table(97) := 'D75605EF3031029CD92033C365340DB3476694CC148DB074E0370D960FD2D9D2085612D89F05A501B33A0A037E280B79C29F709489598B1509EAD32542F09B22409F1C076B088AB711EFF4DB619639FAAAF7F55B3EBA8497781502878CC0E0902B7FF075';
wwv_flow_imp.g_varchar2_table(98) := '0F821741BC2D0EB63462CAC434280D2C91A030E087B29027FC098FCA44888F22B02D1F4A2F04848010E80F02CDD7440A40F318B7B604CCC1E33043C4645C8630199B8999F898985752722B2333D385B8210C53347E98C35B0B92181302424008F4140129';
wwv_flow_imp.g_varchar2_table(99) := '003D6DD8B2D54209C0645C86301923C82D2E26E69594DCCA88E2B0103784618A363F9481B23C2B9E10100242A0EF08ECA27E9D5000300FB3CE9C27CCCCB360C6DE05502A4308080121200484409F10E88402C06631D699F3C4463394833E3588EA220484';
wwv_flow_imp.g_varchar2_table(100) := '80101002878EC06EEA3FB05DDC71767DFFFEC2453FBB61617D29A3975EBA3C335D707C7098654E7F424008080121200484403504A205603EB37EFCD831ABAE9645F3B1BDF7F1C8126BD079620DDBE94F08F418012EA5CA1FA34CDFB50CD6E3C657D50E12';
wwv_flow_imp.g_varchar2_table(101) := '815D557AC0CEEE394D26F197E37655789FCB61D066E902629982F73ED75775AB1F018E4862A1E3B736F2C728D3F7E9D57D0CB8D19277EF5EFC8D0E9E63FF7BF4A87EE694A31010029D4760B030A36ED1453C5D4696D9198336E7DC210672DE19CCA1E99D';
wwv_flow_imp.g_varchar2_table(102) := '3B8E0D8C0CCE10561773490B59FD67B3E7BF6487FFEC42BF3D60D8F4DDA5ADFD201AE94A5595BE32B7E63D79E22E9E3D73A41F665A262B05A02209815620B03B26CA8F2EBBE3A9F3253D0D4B2956090660EF176F5B63608F42FFC103171584D75F9FBB36';
wwv_flow_imp.g_varchar2_table(103) := 'B37BF0EAABF117EDA66176677EB8281396771917A1C0A53B961F8A08334388BC503CA043B75260A14931E18224142E5C94B56950DAC010FC78C79F70B083660D28661C9D1C9F9EC6EBB44793C9C23E18C2B88BA188385E89558FB4C34CC2BFCC77A23842';
wwv_flow_imp.g_varchar2_table(104) := 'E01011D84A0198D9ECF4EAFE7B064106450647064523DEDB062E7C1A7F79177E095F4B57F5CED78D0138BD7A755CF09B080CCE0CD2CBC80678CEC7DB45393C73877BBEBC55EFD481FA581C049DCD1211FA282010CA40146E6FBC61510FCA355C0C139426';
wwv_flow_imp.g_varchar2_table(105) := '142E5C9435FA3680108F77FC09073B23C29B22FA406AAD4BEF63B07B19CCA59F10B7295E94AF101002CD21B0CB9CB752001E86591183208283D9D1F4EA9DC1D106455CDE1144BBACD8AAB298C1C137BC1511FC12BE96EEDE8DB37484C6AAF28AC27C30ED';
wwv_flow_imp.g_varchar2_table(106) := '32482F231BE051264693499C05F2ECFDA235A128EFD48FFC496733C56196C51F38E206BE224AD3D6F54CDB233453458BF7BAF2AF231F84E668B238CB2E52CE0C4B14B1345C3FAA53472B280F2120047689C0560AC0703C76DE5F0A24662851685DFD6A9E';
wwv_flow_imp.g_varchar2_table(107) := '0D8EE330FBE5D9B7687F411CEC93238536A89B9064F60DD93BF18B84A5851F05A1BACB46AB5296F7DEC1BFCD0E115C76FB5E910B1655F25F167716AC43285AD3AB250C9E1794AD165A1AE8C3284CABC8B01C66994BE3797FF91D2CC343FE4240080881F5';
wwv_flow_imp.g_varchar2_table(108) := '08EC36C6560A004205018FB97B34B93C41801F6483A3F73E0E94DEB76780CC0FF436A8C337842203F10C21148B84256190F7EDA99B6BC9DFECD933370BEBE2600D4BB8DE5FE2E4BD77E089BF48080801212004F683C0603FC5AAD4BE2380C047C843A620';
wwv_flow_imp.g_varchar2_table(109) := 'A22C8E4F4FDDE8A5971CE14E7F424008080121304760D70F5200768DF88197E70703071D380CAABE1010024260EF080CF6CE8118100242400808012170F008EC1E002900BBC75C250A01212004848010D83B025200F6DE0462400808012120040E1D817D';
wwv_flow_imp.g_varchar2_table(110) := 'D45F0AC03E5057994240080801212004F68C801480D0006FF9C637B94FBDFCE3A2B661F06F7ED8FDF50FFFC8027DF24F7F48EDD4B676123F2BFB641862F44F08AC41603FC1036EBDE30EF494B8D98E8B5CF6C3D2EE4BBD391EBBB7BFE5CDA2B661F0D6B7';
wwv_flow_imp.g_varchar2_table(111) := 'B8777CF3372DD0B7FF81B7AA9DDAD64EE267659FDCFD88A6128540390406DC136F77C39BCBBDF02801E5B2502C212004848010100242605304F6956EC035BDD0F8F4EA57C7B822773271DC70D724535818D2BBE179E6CE786E8F2B2A177FC2899727C28A';
wwv_flow_imp.g_varchar2_table(112) := 'D2A47E45E561F5E0370CB8F33F8DAB6721200484801010027D476030BFB27770B91D20BE0F878DD73B0AF3AB9FC3B53BE211C4D33B77E20FEC209853C29F708B9BBA582CD631CCD5B4583BD274583CD6A553B81010024240080881E610D85FCE97527F0F';
wwv_flow_imp.g_varchar2_table(113) := 'E573D73E5607AC0F46F31FD7393E8EBF58E7BD8F3F36147F88E7C60D67E1B8FCA80D6EA4D1686D0DB87A7634B9FC553DCAE3C77EF80D8098F7F1F1DAF48A2004848010100242A04F08EC4D0100441FAC0ED1E21004302ECB0E10F7C743E3B33307F18CC0';
wwv_flow_imp.g_varchar2_table(114) := '26CC68986571998277D2925F59223E0A88FDC80F79944DAB784240080801212004EA42609FF9EC5501D867C555B610100242400808814346400AC021B7BEEA2E0484801010027B4460BF454B01D82FFE2A5D08080121200484C05E1058AB0070C48E1DFB';
wwv_flow_imp.g_varchar2_table(115) := 'D7E8E9D3BD30AC428580101002424008F401817DD761AD0260C7EF3882B74077EF3AC23893BFEF4AA87C212004848010100242A01A026B15008ED97154AE285BAC039CABC72D0A979F1010024240080801215084C0FEFDD62B00E3B1E318DEC9EDDB8EF3';
wwv_flow_imp.g_varchar2_table(116) := 'F310C7E7500C781E4D26CE0FD666B3FF9A8A03212004848010100242608E4025C9CDF979880B74383BCF3317ECCC733BC0872F7CF92B4E240CD407FADD07BEFEEAF9018E6EAA729308B421EF4A0A401B186E1B0F1F7EE5934E541E830FFDDC5F773FF633';
wwv_flow_imp.g_varchar2_table(117) := '3F17E947FFDDBFEA3EF8F19F59A00F7CF4A75D4A3FFC973FE148238CCB632CACEAC7EAB3BFFDF9B60D3DE247086C8D406F14003BA5A0FD085BF7894633E007986C33293F45CD1E9294F87D8694F855CA994E9C34DA26CA5C0808815D23D08EF23AA100C4';
wwv_flow_imp.g_varchar2_table(118) := '1FF1994E1D270E2004C7C3BB77177E34C8840A2713F81121C21136103F1644BA2242C05C3CD391C65D75C76196C5DF7958B6B1D47B1FC3BDF78E3F9698586AE279155D0425216DDFD8AE4F9E38530C5377553E0A13024240081C0A020304A4118212E2FD';
wwv_flow_imp.g_varchar2_table(119) := 'F1EBAFBBD96CB6771C18B811F80BB3C4C78F1D03FE2AE608B79924C2204D9F3E53DFC76F3C5895552BC39E3E7A1415227353E1479D68C305BA7F3FC6B778E00AEDDA62C2FE113695426C2CCDD3F8ECCC11863B9A4CE2739906C8B73118985298771FBCFA';
wwv_flow_imp.g_varchar2_table(120) := '6A541E511289078665CA501C21200484401D08B4258F8109495C0651283E0701D306D32BB33F1312A3C9647E12219E40B875EBDA7BFCD1A09313C72985B234CCB2B6B447293E682314341419737936229C36BC78F62CE61795A1A0345938AE09C5E99D3B';
wwv_flow_imp.g_varchar2_table(121) := '314E1BFF63F6EFFDA525601D7FD6D6FCC8D332EB423E0F704101224D3E4CEF4240080881BE23306090A5927E3088A657064306537E6E17E14B585B085EE1691545FEC7E3F92F05725A611D0DB36E290083A323C74C9A3642113AB97DDB15D1F8F4D4D96C';
wwv_flow_imp.g_varchar2_table(122) := '3A0D27CD9C8252D596F6DD860FFA2FED8C02489DD3FAE69FE7750F0A24F1BDF7DB14ADB442400808810A08B427EA60349944E131BE12160C880CA4C3AC5B42B13D9036CF090A1077310CB3CCF15CB544D2CC6938AC9ABCF3F1E7753F3EEE7C5D54012120';
wwv_flow_imp.g_varchar2_table(123) := '0484C0A608746213E0A695533A21200484801010026D42A04DBCEC540160BD958D67ACBDB609846D79A15EB3AB0D93B17E57BBCF598B9F6FBA7BAA9306DBE2ACF4424008080121501F02B52B0008433BB6C7EE7D76A23FB8DA753DBD73C7C5CD67C9113E';
wwv_flow_imp.g_varchar2_table(124) := '76621387308B47FAFAAAD86C4ED3F3F3F8A348B8F01FEB77EF5EAC273BCCD97067D42C27CA5D080801212004DA8D40BBB8AB4D01989FCBF85300001000494441545D5C5C0AC220E411FC083D0439BBD15755D9FBCB0D5883A3A3B80991CD6DACD1AE4AD3';
wwv_flow_imp.g_varchar2_table(125) := 'AAB0C0FF30CB1C1B27D751ABF8163342400808012170D0080CEAAA3DBBB0C7A7A70E4A7759DBF3C9929DEAECD84E89CD6DDE5F2A0575F1D6643EE3506776E3B37172157182A1493E94B7101002424008B41B81B671579B026015431160069F270B972B04';
wwv_flow_imp.g_varchar2_table(126) := '8480101002424008EC1F81DA1580FD57A97F1CA49B096D53A1B96C3A9C5D6D40ACB3E6E449DE462CF16C923FE92C8FD4C59F1BF8E272D174EA582EDA247FA51102424008740381F6712905A07D6D728D23F6532C23361DA2205C4B9478205CB93190CD96';
wwv_flow_imp.g_varchar2_table(127) := '4671836210BC797F363242D3F3F3B89191FC21E22759AE7C44A8930734BD73B5F1F36A63247941F85336BC5137D2ACABC7CA421528048480101002951090025009AEFD44E672A66196399657F21C78EFDD30CBF2DE0BEFCCB42136641A216C11BC79FF85';
wwv_flow_imp.g_varchar2_table(128) := '84C9CB305B5D4612D5CD2E2ED2D76BCFDEFBB8E1932B7BE774E386D33E09A73F2120047A8A401BAB2505A08DAD92E389FD146C341C9F9EC65B1B6D4365DC60F9D24BAE483148B3206D8C7BEB56FCED04DE8B4E2CB0019378E3B3B358CE3894C7FB683271';
wwv_flow_imp.g_varchar2_table(129) := '5CB19CE6B9EA793499C4F427571B3F4793492C97FCF023FF74E3677CBE79530AC02A50152604848010A81981520AC02CAC31B37E8BCBEC8E67D6A07121FC6BE66B6576946DA6ECD4E54E01CCCE46BCA7E1E69F773149AF2CB0A58128067EB0BE09BDF78E';
wwv_flow_imp.g_varchar2_table(130) := 'B846C32C2BFCAD043B82E9FDE5290CF28E69B6BC2E98993DF9909FD39F10100242E0E0106867850BA507429D35D96958074658E2222471A7576BBA988FF183F0279E117152C16BCFAC2323BC8B88F560E21167D54D81F046D966CA4EDD7C3ADED3F07636';
wwv_flow_imp.g_varchar2_table(131) := '4175AEDEF9AD6F731F78CFBBDC273EF87EF7A9977FFC1AFDE4FBBE3F86BFFD2D6FAE9EB95208813D21409F86D6F5EBB77CE39BF6C4A18A1502FD42A05001A08ADE7BC7CC6DBE467B7C1CD76DF1736BFE66610D3815BCF66CEBCE08F03CD95A3471503E96';
wwv_flow_imp.g_varchar2_table(132) := '15C14C727C659A2E326317F94533F695F9BBE8F9C60B27CB8A6B8DFF8BE3B17BF9FBDEEB7EED673F1E05FFFBDFFD2E87228090CFD37BBEEB3B1CE16F7FAB1480D634A018598B007D165AD7AF7FF927FE9CFB7B1FFD88A39FAFCD541184400B10682B0B85';
wwv_flow_imp.g_varchar2_table(133) := '0A00429675E2B8361B0467EA8E2693B8BE6B423815A86C564B0530EBC6A902612660EF7D54262C0CD333E92833E617CA702BFEC8071E575DBC93861177251D0D5794B6FF20663CBFF2B18FB83FFE87BEC7A108EC9F23712004F68BC037DC3E7358BAB080';
wwv_flow_imp.g_varchar2_table(134) := 'F5E59BA04EA932CFFB7E5156E97D47A0500128536913C2A96045E0A782178520551EC661E65EB409ECC60B2FC435E96176F9F3B6E45D8687438883F0FFF960E6EFCB2077086DA63AEE0E0104665FBE0F2C1A28344658397EF353AF388867FC517A5826C1';
wwv_flow_imp.g_varchar2_table(135) := '4A22056177FD6CBB92DA9B7A6305A0BD55EA1767AC874AF8F7AB4D559B7A1140494628D69B6BBB7243D8A3ECA024B04CC2B88052C092208A01F527BC5D5C8B9BB6232005A0C52DC4C7CE87DF6216C59A106805022C8F1DE2B7C2E400C18F52802280B500';
wwv_flow_imp.g_varchar2_table(136) := 'E54063472BBA6564A2CDFF49016871EB30A8B598BD9DB1C6C0CE20574484ED8C91120515F1881FB3D412C915650B04DEF92D6FDB22757F92B23CC052011602364CA20CA028F4A786AA495D084801A80BC99AF341B0ED52686042AC83186CB68182818A3C';
wwv_flow_imp.g_varchar2_table(137) := '18C018BC98D1309031BB2922C2D238D48101907CB6E1A34C5ADA87F2E00B532C7CF05C44695D9A9CA1A16CC0D33A2A53BFB271E8ABEBCA239C762D9BE726F168F74DD2F5390D7D946F89FE894BFFE8737DDB57B776732405A0A5EDF30D67679538FB8D2F';
wwv_flow_imp.g_varchar2_table(138) := 'FE9EFBF4677F7581BEF0A5AF94CE0313621DF4EEEFFA8E58264741D3FB1E38E6C91D0EB8A93FBF0580FFB7BDF95F8CC71B6DA042583078C5CC4AFC87106270A30E0858F24110934F9DCA007921CC503C10EA9447B9F89760D3C127828AC1983C8CC73269';
wwv_flow_imp.g_varchar2_table(139) := 'CBC4E1E8273CAD23EA5026BF3271E8ABEBCA23DCFAC6B23CF3FD97F72F7FF56BCBA25FF3A71DAE79CA638E00DF02FD8D7ECBF33C400F078B406D0A0097EE3090E31E2C9A252B0E462604ED0224BB44C9DCB77D63B9CB4E5E9F4EDD0F7CFC67DC9FFFC54F';
wwv_flow_imp.g_varchar2_table(140) := 'BB5FFACCAF2ED017BE5C5E0128C97AE968D42BBDEB81772E8DC24DFD6F8FB27891D1CFFF993F1DEF35285D4089880804042D47284B445F1905018FD0242F8419827C65829281C623CA00CF25936D1D8D3A5451B0B62EB04406F9FECB3B7DFB95BFFB2B25';
wwv_flow_imp.g_varchar2_table(141) := '525F46A19D2E9FF4FF32046877BE0BFA9C14816528D5E3DFF65C36520010F4DCDA67343D3F775CBBCB008F8B3F42AEED95AF83BF28D08210A6CE91EEDF77DC66189FEFDD73DC8A6842DD5C303221C88C988B9236E5E57361E65F6596B4693955D3713CD4';
wwv_flow_imp.g_varchar2_table(142) := 'EE79F0FEF26AE17C1E7FEC7BFE27EEEF7CE22FBB777CF337E5836A7DDF56283060326B42686E9BD7B28AA150303BE3B2A7A6CAC897FD53EFFBFEBC572BDFFFF6AF7FCEA1E89661EEAD2515E73279F53D0E7DCE1401AC527DAFAFEA771D818D1400170674';
wwv_flow_imp.g_varchar2_table(143) := '06F89418EC2D7B04DAA1280008708439758EF4F8B1E336439EC160707434BFF488CB8E20EE3D88171EDDBA157F24277DE6EE04E20C8ECB5D4EF41BBFFB7B067BAB5CEE83B03B20C66139E3E4EA8781CCFDC1EFFB5EF7B11FFBA0BB7972D22ABEF3CC3043';
wwv_flow_imp.g_varchar2_table(144) := '42F83358E6C39A7867E3E7AECEB5A3D860D568A21E75E7F9A50A4B017597DDF7FCE8DB2C9BA180D227FA5EDFDDD5AFFD250D366191EB8019E08D105A0CF636B8E372BBDF2679772D0D755D46083E703132BCC066707CEC8AC82E534A15AA5598BCFE60BA';
wwv_flow_imp.g_varchar2_table(145) := '2AB89561085566BAAD642E610A3E9921255E3B796410DE9512805583F27652B12D0AF99D3D2E676DC176A792B20485B2CBB7B92B2B54A700EA21B30366A93DAC97AA541101CCAC5F7FF5BC62AAEAD11136FB10AA5539C524BA4F3EC169574A40579602AA';
wwv_flow_imp.g_varchar2_table(146) := 'B6A1E26F8600562814011482CD72502A10E8020D588F661DBB0BCC8AC7E61060A3D5F77EE4A371436193CA00B38BE66A514FCE9844DB2014510276C107E530E8D7839E72E903027C032C0974E17BED03DEFBAAC3209A9AC39AFEBE1850B9ED42800D8579';
wwv_flow_imp.g_varchar2_table(147) := '6500BF3AB844D06C3AABC03AC1A98694EAE22B5F3766FE9B9A40E10F058A236C461CD184FF7C3965DEB1444065E26E1387BD000CFADBE4A1B4FD4300C5106B80FA46D5B6ED46FC01EBD36C4AEB06BBE272970820605106388A8530DBB66CD6D4ABE48130';
wwv_flow_imp.g_varchar2_table(148) := 'E578E31FF9B33FE1B04E7CF8954FBA94E0EBBB3FFCF23C0C1E11B665778C17F1028F55951484FB5FFA9B7FCBC127FC811947D88CA803FC439FF9ADCF1715BBD20F2BC0A60AC9CA8C9340F247F149BCF42804220228EE2801BB50446381FA6F67086CB409';
wwv_flow_imp.g_varchar2_table(149) := '7067DCF5B820F65E403DAEE2B5AA5511AC0854846919818E00465940E0226C11C42807CCC409BBC6C80A0F36C5AD08BE168440A72CDC758A07BC502FE2F37C2DB3251E08E73FF187BF6749687DDEB40F33BEFA72544E5510A00FD1E78D5024516AE9C7F4';
wwv_flow_imp.g_varchar2_table(150) := 'EF2A7DA64AB965E2D207392980A5A84CFC438FD395FA774E0198CD668E7B088CB850876377BCE3F2CE735B1B803B02E6F726DCBDEBEC6E005CEE0E88FC3F7D5A0BFBE0409E45443929719C91F8862161E6877F696525D73EA4A5CDA8103309DC75C44008';
wwv_flow_imp.g_varchar2_table(151) := 'AD8BB72ADCAC17CCBA11B8ABE25A18B3FF2AA64E7844A0AF13FC96BFB9F0064FB8E6B7CEDD95606680AF82C13ABE155E1E01043C82DE08C18F528B228052405F46B9E519C5A08C725CBEF47231519065292A87551762B55A014070202C2184D8F4CE1DC7';
wwv_flow_imp.g_varchar2_table(152) := '73BC70E8DE3D87CB197C842ACFB8BCF38C4035221D1B1D116A8FEEDF8F795818EEE3076FECACAD10B0B320248B0AE4EE80270F1E38A828BCAA1F029C3C8B883252021F70330C09333FFC9F3D7E52AA781405E2A7F4ECD1235756F853C867373093936E19';
wwv_flow_imp.g_varchar2_table(153) := '9515B4EBAEAA4DF3679046F8A77E559E511A3E16960DCAA6610686825236FEA6F1284703FCA6E8359F8E7E43DF4331306B170A01CA020A44F31C38473F6483207D6517E575AF8CEE70DC6A05C060446022C4661717E655C9251DC210A1F6ECF163477E69';
wwv_flow_imp.g_varchar2_table(154) := '06174F9FA5AF8D3E7BFFFC563CEE536013664AC32C735C04540713DC3770E3C5171DF711E4EF2AC02FBD808867EE73A0EC94B89700FEFCA05C57F183A3C8BFE5419EF071733CAEA34A8DE5C1AC171378D902B611FE56068A0933397B5FE7EEEAD7EEC061';
wwv_flow_imp.g_varchar2_table(155) := '571687757556F87A045008B01260214019C032B53ED57631E823BB3AA6BA1DA74ABD0A8172A3FAAA1C1A0CF3DEBBF1D52D72B80829884D8B26604C4021A42084AAB1C43B94FA79EF1D7E0825F220AF1B2FECEE363A04227540208F2613C726CC9410D829';
wwv_flow_imp.g_varchar2_table(156) := 'BF6E8B3FF2196699F3DE5FCBC57BEFF2171181A55D56642EFCC2DF7094B9327FFE68E02C2D2E79BA8A7F55AC0515B35E1ABD8A706580AD6BB6F51FFDBFCB5F73BBCB4D585A0A58DA555A1D80328072CA5201CA655DFDB4A8D27CA75202AE23D3259F562B';
wwv_flow_imp.g_varchar2_table(157) := '002990DEFBB9C08AC27B3C8E82C60414420A1A4D260EE10AF10E8D26CFFD5024F0BBF1C20B313D790D8E866E577F267477555E5BCAF9FA79F94B86103E0C2EBBE49D194DD9F230B7968DBB2E1E265D7ECF615D3C0BAFC2A7A5D9C4C5BCABA5804D906B47';
wwv_flow_imp.g_varchar2_table(158) := '1AFA15CB04580550089A5204F84EA504B4A3CD37E162C026AD8B2D369D919E756DD6D78DF08BB445BE9B544669DA8B40950108E1C3A0B24B33343FA35B063DEA81E9BE4CDCB271AAFC9E43593ECB96BD2A1ECAC62EDB60152F0ADB1C012C562802580450';
wwv_flow_imp.g_varchar2_table(159) := '0C36CFA938A5948014976E3D0FE266AD82DDE871D35D98B54D03B1192C0AF4274F1C429EDB03D93C07913EDD38C63A3B7E9142BEDB2817DD82B23E6ED964C36EDBFA726C474E5504274A00B790FDBD8F7EC42184786FAA16E40D95C9BF8AB02E931F71D8';
wwv_flow_imp.g_varchar2_table(160) := 'CD8D5B86DEF2A6379589B6360E8ACCDA482102D618F64784C74EFCA3CF20903AC1EC8E99C422F0DE9FFAA84321A8BB683007FBBAF3557ECD2230601D3C4F66A61E06333B34BBB8B814FCF7EE39047C59A1CE1A34D46C15FA953B1F515F4DAFAC4F566D2D';
wwv_flow_imp.g_varchar2_table(161) := '840F98FCDACF7EDC710E19E5A8ACB02E5B56959F90ADA2C4942D9F7865B1010FE26F4B9FFDEDCFBB3265827597FA238208EB11D68B6D31EA637A2C002C09B059B0AC12581607BE4DBED5B2F1FB18AF6B751AB0516B1DB1660EB1AE3E9A4C167679A33CB0';
wwv_flow_imp.g_varchar2_table(162) := '8ECEC63A3FB8DC52E0BD77F891A66B80EC8B5F065A041CB3DDB23C3073FCD257BF5636FADEE36DBB76CE263884912903BCD751A92A42B5EE41D3F82F9B2F02CED26CEB22081008EBF2419856E997EBF2DB249C7D126531E25BE2981A026993B20E210DCA';
wwv_flow_imp.g_varchar2_table(163) := '1F7751D46D0DA09F08F7EEF4A04B895D815F66F47985810D7508FBF1E969DC80373E3B73F8797F7DF77985A20E262A0288594B1581C67A1EE780CB0CE06D019201BCAE0107AC50985006500A78DFB49EE05F362D0367D9B855E2FDB3B0D456257E1D7169';
wwv_flow_imp.g_varchar2_table(164) := '0FCCC265F2DAF752009617045615FCE9175099FA1D621CC60E944088E7BA3000F33A15D5BAF86A3E9FEE95505901E85E15DBCD31C2877BB6CB7E307CA898EFCA0EDC6DAB3D8A0B75A88B2F667BCC385006D82FC0735D79B7351FEA5C176F5865CA0855CA';
wwv_flow_imp.g_varchar2_table(165) := '6460AFABDC4DF2A1DFD0F7E94365D3D31FB006948D7F88F150CA3FF4CA271D0A615DF5E77BA4CFD4959FF26906012900CDE05A3AD76F08D692B21F0A0324A07BDD0000100049444154359B78704B17B045442E4C8A9B3FAB9CE6985D5DD51CD258FA9405';
wwv_flow_imp.g_varchar2_table(166) := '06993FFF1F7C3AF5AAED19650A21D54545E00B5FFA4A691CAAEC59289369D919601B9602A80FCA2F8A000A01EFEB08BED7C539F470B3B0E0D68105DF223F6255475E5DC9A38B7C4A01E848AB31EBA932E86D5B2D4E764C8359DA4E733C79302D95251B44';
wwv_flow_imp.g_varchar2_table(167) := '2D8DA59FDEB9B3901605A6C9E50B061F1401667E6595AB05060FEC05A50CA15AA6DAFB5E0A301EE943BB5486ADDC3EBB28545802EA52025896C302D367CCBA5EB7D629000810AEEBE5B821C47144EE19E83AD0DBF0CF60C78D71DBE45135ADBFDAD05935';
wwv_flow_imp.g_varchar2_table(168) := '5D517C3684E6FDD9C058E76093CF9F77667EBFF2B18F54FA1D02D21D22B1145066E047A142B96A0346082CAEC0C56D033F7DE0012CD96BC1B2401DF5E154000A791D79B53B8F6E72B7170500818E704F29CE38C34C913B06F8C19E27573F8AC36F0010C6';
wwv_flow_imp.g_varchar2_table(169) := '5D04DD84787BAE11646C12DCE587C4464F4E7D181509F1A29A7184D4D2984B5E457111380C36583718788AE26CEB87C002BBB27B2CB62DAFCBE9CBFE3811FD91DDDEFBAE2BB34BDA9636DE372F7D2B9F652194F46DEB45DBB44561DCB62E7D4CBF730560';
wwv_flow_imp.g_varchar2_table(170) := 'C69D0257C2DD843C2E4A0161CB405E15B62C4D9FFC11606C167CE7DBFE47F31F339AD97AFB93270ECB4993F5F583E64E74607EC69C8B228039BAEE7A3008B57D3DB2CA0D7F4D1DFD4421A30DCAE0BFEFA50066960816DAB60CBF8A531D011442FA44F594';
wwv_flow_imp.g_varchar2_table(171) := '8B295018590E58F4EDD75B576B33C0C40E31C3C6F4DE7445302D8F4E4F1D3F8803F1E337C32C8B3FD0C35D02D7E8C68D78EF00F19AE66D1FF97FE9BFFAAAFBF57FF00F4B15CD60F7891FFD80FBD3FFEABB1DB7304E6D8DFEDE3D87E5840D7BA5326A6124';
wwv_flow_imp.g_varchar2_table(172) := '2C0028025C59CAFE004C90F8D5C52A0A1433C66DF3A30DB6CD63DBF475E292E785362833E8830302389FBEE977AC6028C2552C102C1334CD571FF3A79FD5B54CF7F2FFF2BD8E3ED3479CBA5CA7012676889FCBC5F48E60819A9C517AEF1DA6626898650E';
wwv_flow_imp.g_varchar2_table(173) := 'E1CE3D028574F366FCD11E1407D7C3BFD7EEDE757FE6AFFC7BEEFFF26BFF49E9DAFDEBFFF21F759FFEC85F70935BB7DC30CBA282C4854C2EE05A3A931647C4F48809925F344319E0BD0E76975DAF5CC5EA50F70E7CABD73F7776668F7B7799F995618299';
wwv_flow_imp.g_varchar2_table(174) := '5D15415C26CF5571280FE18F32B72A9E8521C0D838CBFE06F3935B0D0130A43FE0564BB9181BC5ED4FFCE1EF59F4ECCD5B772B3260165E44FEE8A8BBB5EA10E7C32C73E330F8FFB5BFFF7F7708BDB21FDA3BBEF99BDC67FFBD9F75FFFC3FFF3F880A12EB';
wwv_flow_imp.g_varchar2_table(175) := 'EC5CD2D4A1AA976215E18F128032003EBC974A58108941A84878545100C8A320EBADBDCAE65B6676BE2D3394D1B6A5004CC8554E75500766AF6CA0DD168F434F0F96751CDD45599415A05DBD69C02CBC88BC6F6ECDB75D10B4871BCCDE0C5A6505121F13';
wwv_flow_imp.g_varchar2_table(176) := 'F708B4A706CD718262043E28032C1320A0F0AB5A22B3C87C9A2A6BEA450A443EBF4DDE8BF82ACAA76CDF284A5BC5AFCA5200EBF155F2DE246E15CB0B4A22DF11826B93B294E63A0228527C73D743CAFB305EEDA2AF94E7A89E985DCE65E79B00BB0CD62E';
wwv_flow_imp.g_varchar2_table(177) := '7867D062673CEE2ECAEB6219084104141B07AB9A776F9E8CAF55194502BA1650E0F1CE6F795B81EF765ECC6ECBE6F0E5AFEDEEB71F30FD96E18B81BD4CBC5DC4A13FA024966DCF5DF0D49732F8E6B61D97D88753D6DAD517DCDA5C0F29002D6C1D06AF26';
wwv_flow_imp.g_varchar2_table(178) := '7E76B68555DD8A25706283175436A36F7BCB9B0BA396BD898FC1AB6E2B4015A5A22C9F8595ACE8C960BFEDACAF62915B4767F6BF7526CA602902752857CBF6E22C2DB4D501DD66AE770AC0ECE222EE886723634AD33B772E77CE07977B0588D7EDA613F7';
wwv_flow_imp.g_varchar2_table(179) := '8600B33E94017BDFC4C5C459361D6B9965E3AE8BC7ECF97BBEB5BC55A10A9FEBCA2E135EC7ACAF4C398AD30D04B0BEF1BD6DC32DFD9D7EBF4D1E4A5B0F02BD5300B853A0E80483097C5CEE1CE0D85C1D1072841242A9C03532850325647A7EEE38655147';
wwv_flow_imp.g_varchar2_table(180) := '79FBCAA34DBBD48B30A8B28E5F94BE8AC5A54E33263BA3CB0E86FB9ADD965D0A28C2557EFD4300A5104560D39AD1DFE9F79BA66F53BAAEF3D23B0580E37076AAE1E4F66DB78CC6A7A7B5B41D472821940A5CA359B0445801B3D9CC3D7BF4C85E3BE996DD';
wwv_flow_imp.g_varchar2_table(181) := 'A4B6AFCA55D92456C423031A26EFA2B022BF3ACEC0B39450C51C5A454929E279533F70E9DA52C0A67555BA72087022A75CCCE258EFFECEEF280E90EF4E11E89D02E0070367A71A7681A4291BE6A280E429BB7933DE75B00B7E9695C1DAF5B2B075FE98BC';
wwv_flow_imp.g_varchar2_table(182) := 'CBA647582CCB0F8157369F657914F9C31FB38AA2B0BCDFEF7C79F9AFEE55316DA2106DA304C02F3F999AE76FD93B4B1C9FFBE2EF2D0B6EDC9F59DFAAB66D9C0115D02A04588A8236658A71A0CAE6D74DCB69365DF7735FAA003083E566B9F4BE7E66B9CC';
wwv_flow_imp.g_varchar2_table(183) := '66BB5FEDFA6A60CA86B99CC7CFD3D18D1B0EC5A4BE52ABE784B0E21215CCD72F6459E90C10DA5CFB5A360133E9657159FBFB7B1FFD88830F8436792F8B5BD69F7CAA1C2D5AC51FC70C5785E779024B704598E7C356BD536F7EA488417055BC340CE50425';
wwv_flow_imp.g_varchar2_table(184) := '20F5DBF5B39602768D78BBCBFBF4677E752B06DF232B4069FC4C1ED72D7F07AC9723E4E76BD761BD3AAE5BDFB9E3F85957D6D48D58E7E6CAE0D25C2BE2CE11B08E82F286C2469BD1B6B433820781F5FFFAAB9F703FFD83EF73EFFDCE77B87FE1BFFFDF2B';
wwv_flow_imp.g_varchar2_table(185) := 'E4D1E222ACAB08B832B302F2466893F7AFFDECC71D33610439B3EA32651107E1CBC530E4535881259EEBF8AB6AEA860FEA810B5F4B8A8DDED41BFC89BF2E6E4C70F51F827FD7BF067955F4828305A02A3E0B19E8A55708F02D419B560A0B4095EF60D372';
wwv_flow_imp.g_varchar2_table(186) := '9A4AD744BE8CD35CC91F65F2FDFB8EB13B95C775CBDF014202013F5FBB0EEBD5CB2AE6BD77CC669DFE5A83004ADA34286D7414DCE995E2863FC29FF6A56D5DAE5DFFD03BBEDDFD5B3FF027DD7FF8EFFCA4FBCD4FBDE29899235021DE115208B52A1565F6';
wwv_flow_imp.g_varchar2_table(187) := '8C90A89286018081E0E5EF7BAFA36C14022B9FF73CC1277110A4280C55CA8237785C95062B00F156C5C9873193871FF8825FEA82D5C4080507BE37C194B230BFA304F0BC6F8297AAF8EC9B6795DF1C02DB5A01B00A36C75DFB7366A2C615FC6C4A47D0E3';
wwv_flow_imp.g_varchar2_table(188) := 'F21E65F2E3C72E8EDD57D5F0DED72E7F07DCC33F9A4C1C3FF71A7F882798AB59C38EFEB76EB9F1E9E97C23DDF8EC2CDE3DEFF4D71A0406C323675700E3C6363C3EBEF6E34AEB7E27002186408536ADDC677FFBF39B26BD968ED932BCE4093EAF452EE981';
wwv_flow_imp.g_varchar2_table(189) := '19BD4C544CDD9B0A5CF8C59AC1E63E23149C4DF966865596EF3275AB230EF8D4918FF2E83E02F4CF6D14C22A7760B40BAD7AB861E99825E3F9D8BD63F93BA01A147EE385175CFC319E9B973FBE33CC3207737E10A3104DD442046E9C5CB55B50D662FB2D';
wwv_flow_imp.g_varchar2_table(190) := '7169E326D94760B6C14CBDAC8E0C54CCEE9785A7FE0C68552E174AD3D6F98CB5A28E3BD8EBE489BCC0474B01202102816D145494E317C7D76FE724DF4321C6E67DC9DFDE48F7B86672EF5E5C33C11CCE7B9E30B718CD92637A17CF9E6EDCD7280B53FBC6';
wwv_flow_imp.g_varchar2_table(191) := '19F42421021325A08DD581AFAAC7965016AAA6A9B3EEF05CC7AD6B75F294E6A5A580148DFE3DB38C8515AE4CCDF856E8AF65E216C579FB5B8B6FE72C8A5BE4C752255414D6945F5FF2ED8F02F0E0415C2F61CD04620D254FAC8B1BB156FEE0D557E3ED80';
wwv_flow_imp.g_varchar2_table(192) := '8FDF78B0717B5216EBEC28161B67D2F1840C00501BABC1C0C40FC3309BAECA1F75DA8712C00C1B9E71ABF2BCCBF8BB5C0A38F459E22EDB95FD2C2C63FDFCCB3FEECA2A019FDBE2882ACB669BD60FC10FBF10CF9BE673A8E91A51002E9E3E75B693313F0B';
wwv_flow_imp.g_varchar2_table(193) := 'E71D610915C5C16F96DBB056A6718659163748B07F21A56116FC736BE2C3ECBA5F993296C561DD9DE59265E14DFA97FD409BE2615F42B24C7D10FADB0A52EAF7E1573EE9C8AB4C99DBC6E1B6BF6D79DE9687B2E95150B631FF962D8778FBEEE7F0700894';
wwv_flow_imp.g_varchar2_table(194) := '0A5294AEB24AC03697546DAA0020F0E1D7DA8567FCECBD39B7DD395791BF5B2B0008720848B8EE76CA2EF4BB779DED64CCCFC279B75978511CFC1E863C30ADA32C18F1CE11082A47597962D32217EEB0A122A5E89F5B17CFFB113F9F5FD9F793DBB71D6B';
wwv_flow_imp.g_varchar2_table(195) := 'EF65E3D71D8F35B43279BEFE605A265AA53898FDABCC90EF37C0C3328611DC75FDAA22FB07C8ABC9756F140C4CFE10568B65F56A9B3F4B01F0DE245F08A24D8544937CF52DEF22010AF665940014D74DFB2DCA1DE554C113410FBFF934F81196F7EFEB3B';
wwv_flow_imp.g_varchar2_table(196) := 'B217A27E9BC8DFAD1580A78F1F3B84B409E8746D1DA6B6212A063D9D4EDD2C5805B00E50C96DF26C4B5A8E7BB00431BD5276506ED2A584B2C292811173DDBA7A61AE4558D73158FFDF3EF7FF717FECCFFFEF5DD5D91FF111A4B8CC1ED7F1BC493882FF7B';
wwv_flow_imp.g_varchar2_table(197) := '3FF251475D371D908ACA252F841D79A308D48123E58003BC922F83287E5D227081FFA67846307CE247DE5F3A7B94B5D29115718EC02AC1491B945102B6F9A5CA2A577923E0E177CE7CEE8130E2E4BC6B7B6D5346DBCADFAD1580F9EEC530CB66365C44E3';
wwv_flow_imp.g_varchar2_table(198) := 'B3336757E5E23203271DCF66AEB7F7D164E288CFACDA88F7D1E4D29F786D6A804D7931450937EE2378F4C8B19910EB088AC13FFAC7BF5F3A6B36ECD81974CEA11BA58A0103B509478430428CC112FF75051107E1C48CFFBD3FF917DDC7FFCE7FECFEDBD7';
wwv_flow_imp.g_varchar2_table(199) := 'DF5897AC301C81473EF0F047FEEC4F38CCEBF0026F65F94933263FD23273263F84515DC2392DC79EC9DB1401E3BD0ADFA4372C11FAE000FF96FFB62E833078AE23E26D5B96A5A7FEE0BEAECCCFFED6EA63A2DC95607D17977B13E8D728B956D62A977EBA';
wwv_flow_imp.g_varchar2_table(200) := '2A5C61C508941198659480AD96014A6E0444B0C36F714D9EFB1287B8CF7DFAF9843C343959247BF18BF233C867E42D94CADFAD158032B07AEF1D6BE446C32C8BF70EF08EF91DE21E02DE3912E10EE02F7BF14567CA8FB9EC25F083CB26F9FD7FF24F2AA1';
wwv_flow_imp.g_varchar2_table(201) := 'C007CA4099D2CD93E2E335084D8418020CA1F9DD1F7ED9218878CF13E110029699FB3F0B168B4A8CAD88CC808DF080170408655316FCE0F2BE8C08271E7C9316A14A7E2B8AAB3DC8788747E387E72242D8C32FAE618932503753C61398AE22E2D559364A';
wwv_flow_imp.g_varchar2_table(202) := 'CCAAF20823CEAA32B92B21EDBF988657C5CF87D5A9D4E4F3EEEB7B1541C918B3CA12B04D9F7ACB9BDEB41662043AFCAE8D781581B8A4B97AADC9E95E36DE7B1765EBF1717487D973F97B296D9CFE768D000D82E293129ADCF8F4345A409E1C0DDDE7FEF3';
wwv_flow_imp.g_varchar2_table(203) := 'DFDD195B28057CC079DAB550B50A536E9E97F49D708BDB2637E5317D6E42D8B7A9DE6DE0659B19681BF8DF350F9B08C8554A007D7CD3EF12E56F55FD11E4F0BB2A4E511869485B14263FE7A400B4B01778EFA3A6F677FED3DF70FA130242603D02089E6D';
wwv_flow_imp.g_varchar2_table(204) := '8EA2AD2FA15F31B6118CAB94802F7DF56B1B01B5CADA830087DF8D320E89484B1EE171EB7F7DCB400A408B5BD466902D6651AC09815620C0265794805630D37226EA1088CB9480DFF9F25736AE7D911500C10DBF1B677A95903CC8EBEA55CE1502F1D700';
wwv_flow_imp.g_varchar2_table(205) := 'AF9EE5B41001AE82C53CDF42D6C49210680502EC2D600F482B98693913CCB4EB1284454A00CB009B42F00D67670B49E113C1BDE0B9C50B79152919E5B3AC272647D939DD16E9E9E6B7D0D6C1CD207F1C8DE37C796257FA324AE3F6E5885E1DC0D69507B3';
wwv_flow_imp.g_varchar2_table(206) := '1A2E86D1005717A2CAA74F0870F2804DA07DAA539375613251275E7925602B05E0F67305A06EE10FA6D47B1BFEC8A32ACD66B378BA0B3939BD7327DE3C8BCCE5B457A4BB778271CA1A0000100049444154A31F61C429A265B217FF34FE26F277C0CE7376';
wwv_flow_imp.g_varchar2_table(207) := 'DEDB71348EA45D3C7BB6504FE218F9C1E2AA01F167A1923181B9F145FFD585004A003BC7D95D2E45A02E54954F5711E07B60D6CF890A4E1774B51EFBE21BEC108675959F2A019BEE0180179B9D3725FCA937E56C4A9BA48B77D73C7CE8A29CBCB8702647';
wwv_flow_imp.g_varchar2_table(208) := '53779FF277C0CEF3D164E2382F68343E3D75F817116116CFDCD16412E373946F139094A61C02EC094011E03819CA001F3133A03C1187F07D74F87235512C21701D018E74D26F57F56BE270E49238BB9ECD5DE7B8BB3E8C0D6058570D4C093021BE69BE4D';
wwv_flow_imp.g_varchar2_table(209) := '08FF7FFB6FFC1FDDDFFFF5CFC50BEBB8708D59B35DBA369FBC068631CD33110E8FB5FD1B66D9826C2D92A9A3C9FEE4EFA0B69A2AA39D228032C047CC0C284F580908D700B9D32651615B2280799A7EBBAA5F1367CB6294FC0A01706E4209B8CABEB2F3CE';
wwv_flow_imp.g_varchar2_table(210) := '6F799B639DBE72C215097EEA177ED1FDFDFFE4D71D57D04398C9998DDBA56BD3F3F368827FF0EAAB0ED3FC3498E909BB9E653F7DA400F4B35D552B21200484C05A049A5002D616BA24021B1497046DE4FDD1FFD32FBBCFFCE66F47B3FB30CB9C5DB8863B';
wwv_flow_imp.g_varchar2_table(211) := 'CCAEFF205C6A96DFA8C00E269202D0C14613CB4240080881BA10A85B09A88BAF6DF2C1B2F1FFF8075F70FC401C6677AEBF4D2F5DE31DFF223ABA71E35AD17DF59002D0D79655BD84801010022511E8931280F0A73E25AB7ED0D1A4006CD9FC714DE9F163';
wwv_flow_imp.g_varchar2_table(212) := 'C7994E9EF93963D6938CEA584F9ACD668EDDA4B8B38B0B4739F11718EFDF776C6861630BEF79C29F7023C2D9FC421E5B565BC9858010E81902084D846797AB05FFD4A3DE3AF4373729005BB66D14B2411073A6936704F5429641782FBC6FF0F2ECD12387';
wwv_flow_imp.g_varchar2_table(213) := '62F1F0B5D7DC944D2AAFBF1E37B550161B5AA242F0E041F463A38B11FE841BE18F4212F37863B35FF3DB807D25110242A02308203C11A21D6177814DF886FF054FBDAC44400AC04A78D607B2A124DD3CC2737A57421DEB4947571B56D2993B674763D961';
wwv_flow_imp.g_varchar2_table(214) := 'BD8A3253F2DEAF67BC06C5647D218A21048440D7104088224CBBC437FCC277133CF739CF0133CBD91E8501420DF33994F261FE6D079F8D25F98D24E3D35337BA75CBDD78E105578702E0BD77947172FBF6FC4CE9683271B1EC9B376318E146E3B3B379BC';
wwv_flow_imp.g_varchar2_table(215) := '340DCF8445DE5E7CF11AB49C83B5A330F48B6B11E4210484C04120803045A876A1B2F009BF4DF3CAF838BD3A36380D96589654F1A35C9EF1B3A55F5CE2DAF26BDE251C629C9DED51FE0E3023CF7237FF51A1BA09A0303F0304C05079681A80C47C0E15F9';
wwv_flow_imp.g_varchar2_table(216) := '13A788C8AF6E1EEBCC8F9FFB6DE3C548DE7B076FAEE08FA502709D5D5C382C0C0551E4250484C08120805045B8B6B9BAF0079FCDF1F83CE7B87FEA4A583346B2A4CA8409F9C4337ECF633B370B7119538BC8E2ED5BFE0E10524D0FF65412A000103000C6';
wwv_flow_imp.g_varchar2_table(217) := '0090DB1E045846F0DE47E13FCC32A73F2120040E1B01842B42B68D28C017FCED8CB730365296F73EDE2DC078B98A90ABABC209DBB7FC1D60A6760DFF31E364BD1A1A66D95AF08857449CDDC47C3D0E2676C06D98ED83CB1E4CE31241585EF083C1C1D55F';
wwv_flow_imp.g_varchar2_table(218) := '15160242E03A02085984EDF590FDF9C00F7C35CD419A3FB2723499B8715862B5E5D655EE683271ABC20923CFB48C269E57C9DF9D8CF2DEFBB85ECD9A35429C8AAF22E215D130CB1C95F1839DB0DD445B284F2120048440E71040D82274DBC0387CC0CF3E';
wwv_flow_imp.g_varchar2_table(219) := '786192B48F72B729D3FBE5F25792741B64955608080121702008207411BEFBAC2EE5C3C76E78E87F295200FADFC6AAA110100242A0160410BE08E15A32AB9809E5527EC5648ABE020129002BC02913F481F7BCCB898481FA40BFFBC0B7BDE5CD65868383';
wwv_flow_imp.g_varchar2_table(220) := '8883104618EFB2B29447B9BB2CF310CA9202B0652BBFFFDDEF722261A03ED0EF3EF07629000B2325C218A1BCE0D9D00BE5505E43D91F74B652000EBAF9557921200484C06608209411CE9BA52E978AFC29A75CEC3A631D465E03EEAFE7721E6E24E29CFE';
wwv_flow_imp.g_varchar2_table(221) := '61545BB5140242400808816D11403823A4B7CDA7283DF9927F5158D7FCB8608DDB02F3B46FF93B98FF60CCE3C78E9BFAF2B719750D68F12B048480101002BB4300218DB0AEB344F223DF3AF3AC92571371B9108F49F6D3E974FEC36DFB96BF032ED681B2';
wwv_flow_imp.g_varchar2_table(222) := '9B371D67F475C6BE89A6579E4240080881FE2280B04668D75143F2213FCB8B8969B452DFBB1727A9CCA2F9ED180BEF82CBFD01A3C9C48D4F4FE34542FC2ECB683289BF19B34FF93BE0621D881FAD1966BAFEB50B9D493C0A01212004DA8600421BE1BD0D';
wwv_flow_imp.g_varchar2_table(223) := '5FA4271FCB038B34B366AE908778E6DE7D7E3B863BF88B886BE74D61B8E6DEBFEF50208CC88F99F9A24261A537EBA214207BA17DC95F6D026CB68D95BB10100242E06010407823C437A930E9489FA6F58341B44C73673E77E717511A9F67D6DB51160A29';
wwv_flow_imp.g_varchar2_table(224) := '2C75A3401845EB42500A5028D80747FA4322290087D4DAAAAB10100242A0610410E208F32AC5109F7445698659167F5A7DD9F5F198D38B08D37A4AF6FB322C77A7FE2C7DC7B0D128167F48FF6DA4006096C164626694D46553036146C4E5D7FFEC3DEF2E';
wwv_flow_imp.g_varchar2_table(225) := 'A47DF830FE84E2213580EA2A04848010E81B020873847A997A118FF865E2568983693D25FB7D19CCEDA9FF30CBE26FD5E05725FF7DC545A6224753D969CF55E56F650580C2A777EE384C266646495D8E35106644DCE9F9798C6F7EA9BB90F68D371C6B32';
wwv_flow_imp.g_varchar2_table(226) := 'CB80B54AA7EB3AE45DB40E647E8463125A96A7FC858010100242A07E04FEAFFFE96FB88FFCFB7F6365C64D09FF9585AE0C6C77E0ECE2C2215391A1A9ECB4E7AAF2B7B202C09ACCF8EC2CEE5E8C6693931397BAFCBC616A5E194D260EF38CA55908BB752B';
wwv_flow_imp.g_varchar2_table(227) := 'E693FAB1D6B3AC09ACD2E9DACE6C365B163DFAFBA32307C517FD270484801010028D23C04C94F57594809FFA855F2C2C4FC2BF1096959E7E3088A7089099A9DCB5E7AAF2B7B2020077DE7B87B9C44C2AA98B00276C4EC3A1E3CF7B1FD3CCFD8F8F0BDFBD';
wwv_flow_imp.g_varchar2_table(228) := 'F76ED91F6B3756517301021A9F9E4645E3E4F6EDE8F28EFF683271DE2FCF735959F217024240080881CD1060A6CA18CD98FDFFFC9D2FBA8FFDF27FB890515B85FF02932D7DF1DE47D999CA5D7BAE2C7F5D87FE58BBB18A9A6B0A059A515A15DE094BFDF4';
wwv_flow_imp.g_varchar2_table(229) := '2C048480101002CD2360E3336336E3F0677FFB3F73087D4AC66D62CD9FBC45D510D8C80250AD08C516024240080881434700A1FFBD1FF9A8C36D271687C7951480D0E65FF8F257DC777FF8E54ED377FEC88FBBEFFCE087DD3B7EE847227DFBBFF101F7F6';
wwv_flow_imp.g_varchar2_table(230) := 'F7FD90FBD63FF1BE05FA83DFFF6F74BA9E5D6F27F1DFEDEF6C93F60B438CFE5D21F0F557CFAF9EE4B4010129006D68851A78B05BA5CCF4C6D956CECDDA9E08734793490DA5290B2120048440BF1038C4DA480138B056676FC4815559D51502424008EC04';
wwv_flow_imp.g_varchar2_table(231) := '018EAAA7B49342B728A43605805D9FD016BC28A910100242400808813D2050AD48EEAB99DEB9E3ECBE197339AA9E1271666B8EAA572BB93836B2172A0E5DEEBBB502C0794F2A3F0D6040F6CCBDCA763B916944FCE842DE6FB6037096575F214240080801';
wwv_flow_imp.g_varchar2_table(232) := '21D04704B8002E2F73EAA827328B3B0ECA08DC18A74119B7ADFCDD5A01E0C719387B880B79EF1D958EC03F78E0B8A1C834A2A814E4FC9E3D7A54479B280F212004848010E83902085F2694CCC0994CDAADB0DC80C73BC4F394DB67EFDE75A9CC41582E83';
wwv_flow_imp.g_varchar2_table(233) := 'A78A3F659789CFBE2CF66235B9EC8ACCDD46FE6EAD0050396E1F62C319343E3B8B17F1D8A6B3752ECC97015371848010100242A0DF08988067868D70C7A29C5214ECF7EE39C2995CDAADB00877DE219EC927450A41C9C544A9DFA6CF83A3A37883EDC9D5';
wwv_flow_imp.g_varchar2_table(234) := 'A573CBDCD164E28659B66931A5D2F9C160E18792C615E5EFD60A40292E1549080801212004844009049E3D7DEA7C106C5C20C445424C1211DEDC2A68B7BB2E13BACBFC999C926771F1D57CE109DEAAA56A67EC5E2800987CD0168BE8613003A51AA43DA7';
wwv_flow_imp.g_varchar2_table(235) := '71A336399DAEFC21A276369FB81202424008F40701EF7DFC653E3BCE8CD0C7C2CCBB095E4CEBFDA9F17E6BD2790520AE073D7AE4CC149487D37BEF30FF0CB3CCA145A24DF2EEAEFE3015B1A683E9089A5D5C5C85C811024240080881BE2370C8F5EBBC02';
wwv_flow_imp.g_varchar2_table(236) := 'E087C3B81E339A4CE2DE034C3D45C4660CB448B4C9347C34B94C87E9681CD64F7C303D39FD09812B04DEF28D6F729F7AF9C745C2407DA0077DE03DDFF51D575FB61C10E8BE021066F8ACC7B4DD2C8465016B454A581F6884B6111FC92FFFC49F732F8EC7';
wwv_flow_imp.g_varchar2_table(237) := '6D636DE7FCDC1C8FDDDBDFF2669130501FE8411FF886DB67B931E4B05F3BAF0074A1F9D86330BD73C7D9714873A7E7E72EDD8B70EDF9FE7DC771CA5DD611E1FF93EFFB7EC7CCF7E783C62F256097E8AB2C21200484C0EE109002B003AC597A48F71FB007';
wwv_flow_imp.g_varchar2_table(238) := 'C188E267B399B33D0C0BEEE3C78E73AC5C6841BCA6C984BF952325C090902B0484401F1138F43A0DD8158F90690310661E9FF56C231EFB0A5002F2FB0F6C2FC268F27C1F027B11A0D16472B9B7E1D62DB78BE58DBCF0B7FE2025C090902B04848010A88E';
wwv_flow_imp.g_varchar2_table(239) := '00F28C0B8AF216DE69B00AEF5BFE0E4C38ADAB16C2994A40280CD360BE8679DC7CC5D277CCDF50EA47BA229A9BC6AF8049E3909E7C663D530E96E18ED08F7B1B8E8F9745A9CD7F99F0B702A404181272858010E80F02D76B32C31A1B2CAF26E79075C8BE';
wwv_flow_imp.g_varchar2_table(240) := 'EB31CBFB60C1E5A4D98275F7C9937863EEBEE5EF607C7A5A7A86494522180124800202DC7CC5D2772A0EA57EA45B4651F00D87D782494F3E9CF9BF16288F8D115827FC2D63290186845C212004BA8A007284892413CA39DDBFEFA2C0BF77CF4DC3C416A1';
wwv_flow_imp.g_varchar2_table(241) := 'CF9170F65F414C4CB95D70D33A737F017216E222232CBC10CFF821F3CAE4DD84FC2DBD0780D928973298D99A0AACA2F1D9D9DC848DE91BA2C20B14CCDCF93C469360FA0E74CD3F98C249CB71BE3260351D074528A559B04CA4EFF68C7FD3BC6C9A7F59E1';
wwv_flow_imp.g_varchar2_table(242) := '6FF94B093024E40A0121D045042E9E3C8D17BE3D7BF2C4CD8919FF8307711F56BE4E08E7FCDD31F93865DFFD60E090A3163F7D36BF652E719B90BFA51580658C2DF3F7DEC7CAC23800423C2F50C14CDF2DF9B37480B8244AA3DE0872AC0FB62C815698D2';
wwv_flow_imp.g_varchar2_table(243) := '342C5BA4EFF68C3F69D036D1E01A65B242E65585BF652D25C090902B048440D710181C0F1D1BB2F36413D47198B8A693CFD16412EFDAF783C6446523107AEFDDE0F83812B217B2F7B91BE46FB76AE5F6F787B6B88D1988F42801FBABC1F3923715FE9683';
wwv_flow_imp.g_varchar2_table(244) := '94004342AE1010025D4280D3576CC83E1E8F17AE1C3601E9BDEF5275B6E6550A4049088759166F1A443B1C9F9ECE9737E2B2C40B2FB8BC4669EF31FCC5171DA624E7F7DFB9B615FE069794004342AE10100242A09B080CBAC9F67EB9C61C3437A31C1F3B';
wwv_flow_imp.g_varchar2_table(245) := 'B4C722AD123FE20DB3CC8D2613370E8A435D9CB39CC03E039626CAE65997F0B7F2A404181272858010E81202E2F512012900973874EA7F843FBF72C83E83B20A40DDC2DF0093126048C81502424008740B012900DD6AAFC82D1608EFBD6399212E2D44DF';
wwv_flow_imp.g_varchar2_table(246) := 'E5FF3525FCAD44290186845C212004DA8F80383404A40018121D725100466139812586756C372DFCAD7C290186C473F7CB5FFD9AFBC297BF7270F4FA74FA1C840A4FA43B44BCE82715605A885A375EFFF0F7BFE4FEC17FF98F17E91FFFBE2BF4BF8A4758';
wwv_flow_imp.g_varchar2_table(247) := '9E8F7C1EF3385FFAF23CEF2F84E77CBAB2EF0B20E865630406AC235FA3A74F37CEB02B09319D73F983113BFCF1EB0AFFDEAFDF50B82BE16F98490930242EDD57FEEEAFB80FBFF2C983A32F05C530EDCD060000100049444154E712816AFF93EE10F1A29F';
wwv_flow_imp.g_varchar2_table(248) := '5443EA79ECBAF17AFF47FFB27BFF477F7A91FEE25F763FF4EF7C6CD12F8943D80FFED45F7429E5F398C7F9C847E7F9FC6078B6343FF46F7FCC7DE0631F773FF6333F57EA7B798E40F5A7265270449C535E45941E05B7675C64CF35D9FBE4896389B7091E';
wwv_flow_imp.g_varchar2_table(249) := '8BF21CB08E7C8DEEDEDD2913458C35EDC71A3AB73D19D180344AF40F33181482B47166B359D32CD59AFFAE85BF312F25C090902B04BA8500635CF6E28B8E934BCB681C2C8F6918E7E7598A84D80CCD31BB48376EC425CAE89F652EFA1D1F2F75074747CE';
wwv_flow_imp.g_varchar2_table(250) := '756C8C4D5B971B0339EA5D4436B124CC9E71913DD764EFBD7B0E19B42B256090360C8D05D1C09E06496B58F2395ED7FBC61B0E4D687A7EEEB80407E2DD341EB2A2B3216489CF7B5B08E069181482B471D2BAF00CEF6DE139CFC7BE84BFF12125C090902B';
wwv_flow_imp.g_varchar2_table(251) := '04BA8380F7DE716A6915B1FC988623F4598A845006ECA6586EADC30FE2F6D6B9FFAD5B6ED53379BB46FF9AC91CB9E9BD77C32C733C43C8D13C810561E096CA5E9EF18748B32BF93B481B83C6826804EFD79B988BA0E49E65847AD476128D8E77042B4215';
wwv_flow_imp.g_varchar2_table(252) := '8500218A908DF11F3D2ACAAA51BFD14B2F454D17C0B9AB990630A293BBAB3F9ECDFFCA2B28AA338775C0DEDBE4EE5BF81B1652020C09B9424008F41D0104FAF8ECCC45013F1EC74B8690A3791A66414108E10BCAD2955284EC8548E3FD6EE46FED9B0001';
wwv_flow_imp.g_varchar2_table(253) := 'C00F2EB3F5DE2F35F90CB300C4C949D4960647476ED77FDE7B07D0008EB69A2A42E360E63AB97D3B5EFCC3B385991F2EF5742DFB6B8BF03758A4041812728580106803027DE701B95445FE5E4AEA1A51196659BCF00621390E1A9109CFBC0BA3085FA8CC';
wwv_flow_imp.g_varchar2_table(254) := '51B61A59EC65566D13FE06B294004342AE10100242A05904865935F95BBB02D06CF5947B11026D15FEC6AB94004342AE101002FB434025E71190029047A463EF6D17FE06A794004342AE101002FB42E0C983E97C63FAF4CE1DF7E8FE7DD7E60DDD4DE324';
wwv_flow_imp.g_varchar2_table(255) := '05A069841BCCBF2BC2DF2090126048C815024260D708E4CB9B5D5C388EEFB119BDAD9BBAF33CD7FD2E05A06E4477945FD784BFC12225C090902B0484C0AE11181C0FE3C6734E7F41ECC6C7F5C3E1AE5969457952005AD10CD598E8AAF0B75A4A093024E4';
wwv_flow_imp.g_varchar2_table(256) := '0A0121B01B042E4BE148371BCF8D38BEC7B3F79B1DBBBBCCB5BBFF4B01E858DB755DF81BDC52020C09B94240080881FD20D04905804D1BDC2A0871E9D02CB970683F30EEA6D4BE087F434B4A80212157080881261150DEC50874520160D3C693070F1CC4';
wwv_flow_imp.g_varchar2_table(257) := '4D82D3F3F3787F32D70D13B64A21206CDD868FD9C545BCEDAF18B2FDF8B645F8F36B5D9FF9ADCFD706829480DAA0544642A07104183B536202C6440C6262C655EA8D33A1026A43A0930A00EB367904E8785C374C279C5E290476E5308A01C48F2CC4B07B';
wwv_flow_imp.g_varchar2_table(258) := 'F7E251107B271E441CC2A777EE385CFC20948C7C79BB7CAF5BF8F3B3AB5F7FF57CE32AFCA5BFF9B79C94808DE1534221D039041857190BB9CA3D25C646266210932FC654C6D159ABACB29D837B670C77520160E7263F9830CCB2A5570D7BEF6398DD3278';
wwv_flow_imp.g_varchar2_table(259) := 'F1ECD9B55F384469483B2A0A44FAEEAEFED072AF1E77EE3421FC3FF4CA27DDD78392B449656E8EC7319994800883FE1302078940DC4C777212C7589EFDE0B92889E368186FFB060CF222B57EF0DEF53A3E6FB59A6A8200E56C251A2360F19E660D68B360';
wwv_flow_imp.g_varchar2_table(260) := '624FFD36791E1C1FC71F5EC85F31BCEC7D7C75BF3F8A43BC8698CE7BE3C6BC03D389E714FC391A32CCB2185E6471D884E7AA699A12FE5FFEEAD71C54951FE263B2C785A40480824808F41F816196B9D164127F1F856BDE1967D93D8F0BD9F84A186413AF';
wwv_flow_imp.g_varchar2_table(261) := '3620B3290F2C6B60CD98068BF083575F8DCBCCA9F5036B0761314E9850E1621161C2485AE4E06CC79610CAA3DCB2F277630500E14E25212A0E40D01420EEDF77D11C144CEDBCE36F64A0C1E0A60DB34D3A14876196C55F6BCAFF08101D39D2CD9B311C45';
wwv_flow_imp.g_varchar2_table(262) := '81772C0EDB94B949DA777EEBDBDC4FBEEFFB37495A9806B33F337F13FCBC17462CE1F90DB7CFE6B19A5202E605E8410808815620D007A15E05489635A23563C5847516C2629C20E87111FE2801A4E596C1874179A85266D9B875C9DF4A0A0095A352D350';
wwv_flow_imp.g_varchar2_table(263) := '2934212A0951F1B28C5B3C80B367B9D711F8C297BEB2F12C3D9F1BC23E15FE84DF7F30C5D988BEE1ECB9024006752B017FFBD73F47B62221200484C096086C9E1C8B7099D4C4838659985806CB32D663A3E1D59269997CD6C56942FE965600D038D06C5C';
wwv_flow_imp.g_varchar2_table(264) := 'D074064747D1349E569AD932E675A371101227B76F3B7B4F5DC01966D9BAFA1E747891D0DE049065F9982560933CDFFED6375F4B56971250573ED71894871010027B470039C22412AB31D6602CC3B8588CB12643083AE2F16C647EBBAC00D65F935BC833';
wwv_flow_imp.g_varchar2_table(265) := '88775C649B11F1206420CB2279AA8367F06842FE0ECA3287E99C0A53D194ACD2C32C73C431F2FEF266257B4F5D00F283D2459765712FF1664121A27152C2AF0E669609EFB279AF4ABFE92640CAFEE78272879BA76D85F7B6E9F3FCE85D080881F62080D5';
wwv_flow_imp.g_varchar2_table(266) := '17CB316BD4588DD90F0677B82C09634D861074C4E3D9C8FCA6C1FA4C7CD295A16DE398DCF2DE3BEFBDE3DD7BEF76FD47B94DC8DF7E48E15DB7C655797444D678E8AC294DCFCF1D84960BD1E1AF9254765609F15599AD4BC73140E2ACCA6359D8DBDF72DD';
wwv_flow_imp.g_varchar2_table(267) := '0260713715E29BA6B372DBE87EEAE51F77BFF9A9570E8E56F58F55ED44BA43C48B7EB20A9755615DC2EBB77EE1AFB92FFE477F732BFACFFFD6FFD9FDF67FF0C9559028AC020252002A80958FBACA8A310B9601B45C34B7A31B37F2492BBD23A8F36BF8AB';
wwv_flow_imp.g_varchar2_table(268) := '32281BFF4B5FFDDAAA6C9686B109105A16A1AA30AF1A7F59B9F217024240083C47404FEB109002B00EA115E12800E3600E675D282E859C3C3F17CBFE08FC59EE589145E9A0B242BD6C3C0ADE6A1FC00A2B00799715EA65E391A748080801212004EA4340';
wwv_flow_imp.g_varchar2_table(269) := '0A400D5832CB1F66593C3A98EE8FC0BF86ECE759AC13EEEBC2E7195D3D70ADEFD56365E79DDFF2B6B569D609F775E16B0B500421200484C01204E4BD1E012900EB316A558C65427E99FF2AE6B7B200149C04282A6B99905FE65F9487FC848010100242A0';
wwv_flow_imp.g_varchar2_table(270) := '7E0476AE00D86E79D6C8975527C679FA7459F0C1FBE7857DFEBD2C406C0484CAC64FE3BD381E3B2E2B4AFD963DE7857DFE7D593AF90B01212004364340A98A1088B2F5C91367F277A70AC0D3870F9DED9667973CE73FD925CF110F88E7782EF4DEBD78ED';
wwv_flow_imp.g_varchar2_table(271) := '22CFF87116D4182EAAD421FA99D0C78C5F6583601E2BD2E7FDCABEBFE73BBFA36C546742DFDCD2091551080801212004B646A048FEEE5401C80B718ED1B1531EC6209EF3B5C4EFC983076ED6C31F97C8D7B5EA3B4AC0875FF9E4563706FEC6EFFE5ED562';
wwv_flow_imp.g_varchar2_table(272) := 'E7F1B1006009987BAC7990F05F039082858010A8050165721D8122F9BB5305801FD5B1DDF2DC065886B8877F7C7AEA0EED1EEAEBCDD78CCF6F7C717305008EFEC41FFE1E1C9110100242A037086075C6FA6CC43B84097D7671D1C97A16C9DF9D2A00DE7B';
wwv_flow_imp.g_varchar2_table(273) := '37CC2E77CB733CAE0CC1B41FEC94CD4E36EE364C6FA304BCBBC232C0363C2AAD10100242A01C02DBC5C2328DD519EBB311EF104BD8D33B771C37176E57CAEE537B7F5DFE4AB2EEBE1D5A57E236CB005C08F49EEF2ABF17A0759517434240080881048132';
wwv_flow_imp.g_varchar2_table(274) := '134E94842449671F5BAB00606A4989EB7431C1A4841F71AAA04F7CA3AE9A72AAD4B74CDCCFFCD6E71DFB09CAC42D8AF3FE77BFABC85B7E42400808819D23B06D812800F112B79393C21FB3238CA5E96DCB6943FA562A0008794C2D29F10B52986052C28F';
wwv_flow_imp.g_varchar2_table(275) := '389C16284BC4378AA69C870FDBD00E7BE7E1735BEC05901560EFCD2706848010A811012E7163891AB7886A2C6AAF590D6C16CDACB8CA8C98F810C29A9F7264B30447F9EAA80DEBFED9CD9B8E4D825CA90BADCA178D8D38ABA8681321E95C58175995F7A1';
wwv_flow_imp.g_varchar2_table(276) := '84FDED5FFFDC5655C50A50E544C0568529B110100242A010816E78CE6633174FBE3D7EEC90A3D03EE4EFC066D1CC8AA777EE3866D2B8F8439CD5C72F4FC4879891B32182CD1254888A6CDB04DE7BC70FE8A081D9D5BA27B76FBB65343E3D75166F993B9A';
wwv_flow_imp.g_varchar2_table(277) := '4CAEA527DD30CB9CFE5C3C4AB8CDCD805801742260B127BDF2777FC5714CF3D068D37E44BA43C38AFAD24F167B4EF937D2F7897EECAFBCE23EF8F19F59493FFCD39F280F502E266BF7C8A85910C0B9A09DBE326966C21C652CF7DE049AEE41FE162E01A0';
wwv_flow_imp.g_varchar2_table(278) := '89601980006CA7C8A8B0BD21B0AD15E08FFFA1EF7128027BAB40CB0A46A071D1D2A1D1FDE974A39620DDA161457DE9271B01161291BE4FF40F7FFF4BEE1FFCE3DF77BFFDC5DF5D4A9FFFDD7F146A5EFC6F9DEFB3C74FE265748FEFDF5F17B59170043E93';
wwv_flow_imp.g_varchar2_table(279) := 'E96761E6BFAC805DCADF0166F69430BFAF32A513467C4CF46C86C813EB25CB2A26FF7623C066C04DAF06A6662C01FCE4FBBE9F479110100242A03202587E912D587B912DC89A22AA9CF15582A360F1255FEEA3B9F2DAA943FD8AEA637EBB96BF03CCEC29';
wwv_flow_imp.g_varchar2_table(280) := 'B1BB719919DDFC894F4510F679DA299A2AAC76043EFDD95FDD2ACFB7BFE5CD0E4BC0569928B1101002078F00B205595344C5E0ACF71D1C0D1CF9C6FD5FEBA3D71E6398ADBE0767D7F2B77009A0F65A2BC3CE20B0AD15808A7EE03DEF726FF9C637F12812';
wwv_flow_imp.g_varchar2_table(281) := '0242A00308B0D4CBDAB81166E80EB02D16B744400AC09600F631F9B6560096027E2A2C05E0F6111FD54908741901366B736ACB369DB126CD666F36751B59D8AAB5EAB661207EAA232005A03A66BD4F518715000BC0CBDFF7DEDE63A50A0A81AE21C0892D';
wwv_flow_imp.g_varchar2_table(282) := '48B3FCAEB55CFDFC4A01A81FD35EE4C82FF76D5B11AE08663960DB7C945E080881FA1060931D34CC32C7A6EE3C0DB3CCB1496E7C76E6D8EB555FC94DE6A4BC3741400AC026A81D401A8E166DF3234106111704A108D8BB5C212004F68F00821D216F1BBB';
wwv_flow_imp.g_varchar2_table(283) := '5317FF619639EFFDFE1915078D222005A05178BB9DF92BFFF1AF6CF51B01567B8E064A093034E40A81FE21C072C2F4FC3C5E24C79E02887D060B74FFBEE31CBCC5639FC1ACA69FD6ED1FA2BBA9911480DDE0DCC952B813E0973EB3DDB140ABB8940043E2';
wwv_flow_imp.g_varchar2_table(284) := 'BACB66498E4FB699D8D3719DF3FDF9B4192BE38D766D1A21046D4ADC2E5754261774195F8DB86F7D8BFBF66FFA03EE1DDFFC4D73FAB6B7BCD92DD09BFF45F76D812CDEB7FF81FF6178FF179CF1D3B63E568463DFFCA400F4AD456BAE0FB703B21C5047B6';
wwv_flow_imp.g_varchar2_table(285) := '52028A517CEB37BEC97DEAE51F6F35B56D4367DBF1823FDAB5B8C59BF35D36A3C602074F4DD1CFFF993FED3EFD91BF50997EE17FFBF2BCDF6FDEC79AC3B3EF394B01E87B0BD7503F3604BEBEE1F5AEF9E2A504E411D1BB10D81C016EB5331AF39B28376F';
wwv_flow_imp.g_varchar2_table(286) := '6E9E99525646803BFDA761E903B2E50EFCF8913C88DFC9A99CE90E136CA50050512A4D45D711A629E2EA5CE90E5BB7A6A2580AF8D8DFFC5B35E5E61C4A00545B86CA48081C2802DC6A67E4075B0DE79D45709F8C23CF66B39983385A0921F4F9913C0819';
wwv_flow_imp.g_varchar2_table(287) := 'D9147FE48D4C5D277B095F267FB7EA31549E0A53D1228AB74A3D7D1AEBCF5113EE3B66F769F4D07F9D428013012C07D4C5B4992477B14E5A17CFCA47080801219022307AE9258705862B7C916F1CAFE47D4E93896BEA6F9DFC4D6532973F21AB2F9E3D5B';
wwv_flow_imp.g_varchar2_table(288) := '60672B056094AB3C2050714C5127B76FBB78B42498A4B8CB19C13F180E9DFEBA8B003F5BBACD2F97E56BCEE69F5FF9D847E226A07C98DE8580101002EB11D86F0CAC2E5860F8119FB99C3B3E76F8456A50E68D5E5AE6AD8E540000100049444154543E50';
wwv_flow_imp.g_varchar2_table(289) := '402093C3C862E4B011EFF0E892BFAD14807CE501814AE39F94A1C71E21F0A1573EE95812A8AB4A5800D898C406209EEBCA57F90801212004FA8C007216798BDC45B01BF18E3F94D63FFF4ED8560A0019880E0B013603FEF95FFC742DF703A4C8F10B82BF';
wwv_flow_imp.g_varchar2_table(290) := 'FC137F4ED68014143D0B0121B01281AA8117CF2EAA26E9757C2900BD6EDE662AC732009680BA73E7AC32D6804F7CF0FD8EE7BAF3577E4240081C3602CF1E3D726C9E3B6C149ED75E0AC0732CF454010194008E075648523AEA3BBFF56DEEEF7DF423F1B4';
wwv_flow_imp.g_varchar2_table(291) := '801481D2B029A21038300436AB2EBBF4D914B759EA7EA59202D0AFF6DC696DF8D5C0A694002AC2490129022021120242A00E048EB22CEEDA679DBC8EFCBA9E871480AEB7E09EF96F5A09A07AA608B03C8075003F91101002878DC026B51F1C0DE20EFD4D';
wwv_flow_imp.g_varchar2_table(292) := 'D2F6318D14803EB6EA8EEB8412D0C4C6C07C353836C8FE805FFBD98FC7E50129037984F42E048440DB11E0FC3E3F8AC4253EB85CD413EFCC79F264E7AC4B01D839E4FD2C908B82D818C82981A66BC87141AC02A60CE0728A403F26D234F2CA5F08B40581';
wwv_flow_imp.g_varchar2_table(293) := 'EEF281C04709E0621E5C2EEC7978EF9E831EBCFAAA8B8A417837E580F8EC5B4049A8BBD65200EA46F480F36363E00F7CFC671CEEAE604019C012C03D021C23FCCD4FBD127F5C84AB863FF09E7739C2B01C40BBE249E508012120049621C0453DDEFB65C1';
wwv_flow_imp.g_varchar2_table(294) := '2E2A06C11A60CA010A0227174C414049C8D35C69088A030A03CA036952FFFC33F1A4002C6D06056C820097046109C022B049FA3AD220ECB110BCFFDDEF725807D83B00A11C1811A78EB2EAC8E34B5FFD9AFBF02B9F6C35710B641D75AD2B8FB6E3057FB4';
wwv_flow_imp.g_varchar2_table(295) := '6B5DF5DD361F96E9E029A50FFDDC5F773FFAEFFE55F7C1A0B4BFFFA33FEDCA12F17FF8A73F513A3EF9FEF05FFA3FC47228EF477FF6E70AFB7A953EB62D1EFB4CCF8DB8DC92CB453EF0C12DB9DCE00771657E11116F15CD9586A038A030A03C603548FDF3';
wwv_flow_imp.g_varchar2_table(296) := 'CF174F9F3A2900AB5055D84608B00CC09E804F7FF657374A7F6889C0EB0B5FFE8A6B33EDD2AA53A6FDDB8C95F146BB96A9CB2EE2A0981B5FE6FECE57FEBFEE8BFFF4FFEF7E2F28A0FFE57FFDDFB87F145CE8BFF8FA3F9B3FF30EFD17FFECBF76C48188FF';
wwv_flow_imp.g_varchar2_table(297) := '8FBEF6F5F93B7EC4817EEFBFFAAAFBE23FF9A70BE9637E214FD251DE17FF7FFFB4B0AFB7AD8F35D92E2801E3D35377C295F957D7E573931F8A4111110F1A4D26F11403D7FAF2BB035169B871C39912714D790861C4217E9E6EBCF8A21480261BF9D0F3FE';
wwv_flow_imp.g_varchar2_table(298) := 'A5CFFC6AD4F4197C0E1D0BD55F08B41D01AE8A85FCE072A73CCF46DE2F3759532F8B1705D178ECEC1D97FC88531F1D6E4E280E600A19D6280250A10271A55C103F4FDE7B270B80D35F930830DB605F409DBF24D824BFCA5B0808817622C04FEEB2110EB7';
wwv_flow_imp.g_varchar2_table(299) := '9D1C768F2B2900DD6BB3CE718C2994F53DD61F650DE85CF3896121B0570410F86C609B9E9FC79DF20FEFDCD92B3F7D2A5C0A409F5AB3E575316B80F606B4BCA1C49E10681102B367CFE2CE78630985C09EE56E87801480EDF053EA8A08600D606FC0F77E';
wwv_flow_imp.g_varchar2_table(300) := 'E4A38E9DC915932BBA101002078600EBDE6C581B66993B3A3E766C743B30081AABAE1480C6A055C6AB10602980DF11605900CBC0AAB87D0FE348A21D4F6CABCB31CA36B5435B714AF9A25DDB82197762A4BCB5F179551F1B66994309B01DF26DC1B5EB7C';
wwv_flow_imp.g_varchar2_table(301) := '4801E87A0B769C7F843F4A00248B40C71B53EC0B81861150F69B23C006CA3C4901D81C4FA5AC110114012C022C0D706280A5821AB357564240080881834500C1CF4D8279920270B05DA29D1567698013037FE4CFFE844321D8E78D82ED44485C0981E708';
wwv_flow_imp.g_varchar2_table(302) := 'E4AF8465A73C57C072CDEBECE2E279C45E3CA9129B22E087C3785910FB27FC60E0D8571169D30C954E08348D004B02DC282865A069A4957F5F1060873C57C0DA75B07DA997EAB11D02DE7BC76541ECA1189F9EBAD1641269B05DB64A2D049A4780E50053';
wwv_flow_imp.g_varchar2_table(303) := '06BEFBC32FC7DB05592660D9A0F9D2558210682F0227B76FC7EB645377340983FBAD5B6E381AB597F10D385392FA119002503FA6CAB1610410FC2C13B071D01402DE4D296019A1611694BD10682D02D1B47B7CDC5AFEDAC6183F8AC3AFE771D990D1F4FC';
wwv_flow_imp.g_varchar2_table(304) := 'DC4DEFDC714F1F3E6C1BBBB5F22305A0563895D93E10402140F8A304A014B09110C500977788A5042E2032FA7AF8C0F7C1ABCA1402426013049A49339BCD1CC29F5FCF4B7F2D0FFFD9C5857BFCC61BCD14DC925CA500B4A421C446FD086009403980D84C';
wwv_flow_imp.g_varchar2_table(305) := 'C805444684D55FA272140242A053080405607074B49465AC294B037B102005A0078DA82A0801212004FA8C40537563473C1BE34E6EDF8E9BE246B76EB939B19722505365B7215F29006D6805F120048480103870046C2D1E771F5030DB5FF8C9DCE1B076';
wwv_flow_imp.g_varchar2_table(306) := '36388FCFF242ED196F98A114800D815332212004848010A81181608E672D9E35F9C55CBBFB86B06763A1DDD7C0453CD3F373C73B2E6173BA7FDF717F03B42B25480A4077FB96381702424008F40E01CCF27DA9D49337DE58F825C3B45E2807E9C643941F';
wwv_flow_imp.g_varchar2_table(307) := 'EE6F801EDEBDEB5010F04BD3D4FD2C05A06E44959F101002424008544600137C5C7FCFADBB57CEA845098E4F4E5C110DB32CFEAA2137F32D239623BCF78DD6460A40A3F02A7321B01E018E24DAF1C4B6BA9FFDADCFAFAFC80E63B415A7942FDA758790AC';
wwv_flow_imp.g_varchar2_table(308) := '2CEA0B5FFA8A4B796BE3F3677FFB3F7308BD9515E95820D68CE3F1D8E529FD6543362116D2CD9B8DE32105A0631D4AECF60F018E24DAF1C4B6BADCC4D826E4DB8A53CA17EDDA16CC380A9BF2D6C6E7E23ED61604FBC98714807EB6AB6A25048480101002';
wwv_flow_imp.g_varchar2_table(309) := '42602502520056C2A34021200484C0E608B09B9BA35FE430BBB870F1877AA6D3F96E6F36795D3C7B4AB0A8000179358B80148066F155EE4240081C28020877767373F4EBC1ABAFBAE99D3BEEF1EBAF3B76791B71E4EDF11B0F0E1421557BDF084801D877';
wwv_flow_imp.g_varchar2_table(310) := '0BA87C2120047A8B40BA037C982DEEFC6683D82E2A8EE5012B04C419F394F0DB050F9B95A1544D232005A0698495BF1010020789C0D18D1B0BBBBFF33BBFC7A7A76E7C76E68E4FC61BE3C38FD5B0AC80208710EEF38B65EEDD73D3F37387E5012B046496';
wwv_flow_imp.g_varchar2_table(311) := '0773B1406C5AF82C2C6950664AB3D9CCA5EF3CF38B7A91AFFBF75DCA9B3D5307C2B198109F7CF33CE11FE9A9964BF2D86CF32E05601BF4945608D480C037DC3E731F78CFBB5A4DEFF9AEEFA8A1A6F565D176BCE08F765D5763EFBD3B1A6EFED3BD085796';
wwv_flow_imp.g_varchar2_table(312) := '1510EE10823DBD5C0681ECC2DF3BBEF99BDC8F7DDFF75EA73FFE7D1BF7BB3FF53FFD43EE07FFE7FFB305FA537FF85F5A7827FCFDFFF21F751F78F7BBDC07FFD8BFE23EF8AFFDABD7E887FF9577C7F03FFAF63FE8A8C3342C95B0649212FE91EEDE0DB5D1';
wwv_flow_imp.g_varchar2_table(313) := 'BFBA109002501792CA47086C88C0378459E0FBC300D9667A77CB1480366365BCD1AE1B7689D2C9E2C539B76E052BC2C9F31FB109EFE66FEE777DDB1F743FFA7DEFBD463FF2BFF863CEF8ADEA16E5B78DDFBFF62FBDD3E52FC5F18345114578697014712D';
wwv_flow_imp.g_varchar2_table(314) := '028BE8AE8DAE08424008080121D01604B83807E2A219DCA574D4FEA19E9B009F5F8873CBF13C0ECB24FC521FEE8D175E702CA3B405FB3EF0D1FE5ED107945507212004848010D818012C01C3D1C8E16E9C4948F8F4E1A3B80F817D07B3D92CF8F4F31F75';
wwv_flow_imp.g_varchar2_table(315) := '636F08CB43B6D72275A7E7E7F10789A400F4B3FD552B21200484406711688AF1D9C545FC719E678F1EB9D9B3674D15B3F77C1FBEF65A3C728A1290EE09B1671404989402000A22212004848010E83D0283E3A1632961F4D24B8E2507D7D3BF51A89FEDFF';
wwv_flow_imp.g_varchar2_table(316) := '30977AA7C752799602E0F427048480101002ED41A0394ED84458C75242731CD693B3F7DE0D8E8F17887AB357242529004E7F42400808012120049A4100737BBCC3E0C9936B7724D8DD076938F19BE1E47AAE5200AE63221F212004848010D813026D2816';
wwv_flow_imp.g_varchar2_table(317) := 'C19C6E9A4BEF2458F6CCB5CF4569A6E7E7F17E83788FC1BD7B0BCF5CC494F7273E445EF0D1241E52009A4457790B012120048440E71048CDE72E98D3593A80BCF70B7715A4A712F8E127DB6487EB96FC79EF17F2205F28DD938015803CD8C5EF1AFC9302';
wwv_flow_imp.g_varchar2_table(318) := 'D020B8CA5A080801212004AA20D08EB8DE7B676BE5D9CD9BF14E82782FC1D9D9FC39BE5FDD53C05D05D03884DBA63B73C70571489BA7D164E2C82325F26B121129004DA2ABBC858010100242E06010F0DE2F6CBCC392E007ED15B3EDE5CCE94F08080121';
wwv_flow_imp.g_varchar2_table(319) := '20040E0901D575B7084801D82DDE2A4D08080121200484402B109002D08A6610134240080881434740F5DF35025200768DB8CA13023904BEF0E5AFB8EFFEF0CBADA60FBFF2C91CD7FB7D6D3B5EF047BBEE17A5E7A5FFD2677EB5D5FD0BBCDAD6C79EA3D7';
wwv_flow_imp.g_varchar2_table(320) := 'DF272900FD6D5BD54C08080121D01904CA32DAF4D9F8B27CF4219E14803EB4A2EA2004848010380004F8711B2ECFD9B4AA4F1E4CDDF4CE1D471EDCBEB7693E7D492705A02F2DA97A08012120043A8B4039C6EB98FDCFF845C0C78FE38D7CB3D9AC5CC13D';
wwv_flow_imp.g_varchar2_table(321) := '8D2505A0A70DAB6A090121D01C024F1F3E744FA6D348CC4A994DA68490812C5E1D82AB6A6D289FEB648D1EBFF146E417BEE1077E7179270E6E11315B261C22BC2A1F75C6E7521E2ECAD934CFA32C735CD033BEBA9CC77BBF6956BD482705A017CDA84A08';
wwv_flow_imp.g_varchar2_table(322) := '0121B02B04109C51983E78E09E04E2BAD66BF7B90733F33490C54388926E573CCEC2CC16BEB84ED6282A23815F78861F78C6E59D38B845849240388452D1441D7695E7E068E0DA7E39CFAEB0A01C2900A020120242E0E010E0EE7684F2023D7DBA160704';
wwv_flow_imp.g_varchar2_table(323) := 'C8F1C989F37E71F6E8BD8F77BC0FB3CC11CEFDEE10CF901F0EDD2EFFE0F3E8C68D059EE023A56196C570F85C46C3ECB23E375E7CD1DD78E1855D564165358C801480860156F6424008B407014CD8F66B6EFC7A1BB3E005BA7BD761EA462958C535F7C48F';
wwv_flow_imp.g_varchar2_table(324) := 'CFCE16EE6EE79DFBDD119484F30CF10C79BFA830ACCA7FDB30EF7DBCCB1E93393C184FF09112FE84AF22E290669865DBB2B524BDBCF7858014807D21AF72858010D8190298AE11EC98B8D7158AA91B45615D3C850B812E23C0F28F14802EB7A078170242';
wwv_flow_imp.g_varchar2_table(325) := '602D0298FA598B272266EE617669D2C6143ECC0A4CE0C16C3E1C8D882EDA01022A623F08A0144B01D80FF62AF5001078F9FBDEEB3EF5F28F1F1CBDF51BDFB451EB92AE09BC7EE1CFBEEC7EE9A77EC2FDD247FE42A4BFF193FF3BF78B3FF1E722F16CFE73';
wwv_flow_imp.g_varchar2_table(326) := '37C4FDF7FFADFFCDCEDA8D7EB21160215113787521CF50F583FC8732CBF2141B3A71B701613499382900DB20A8B4426005026F0982F0ED6F79B33B347A713C5E81CAF220D21D1A56D4977EB21C95D521A4EF366DF67DAC46A57BA158A8A6E7E7CEF6A72C';
wwv_flow_imp.g_varchar2_table(327) := '736DDF0AF1D9BB8242B04D6DA5006C839ED20A01212004848010D8120166F41CDDAC92CD6038747EB09D08DF2E75156E1557080801212004844082801E2F11184D26F182222E295A4921DEC9EDDBF1F4C96832910270099FFE1702424008080121D04D04';
wwv_flow_imp.g_varchar2_table(328) := '98CD736FC35A0AB3FE3A6B280B409D682A2F212004848010288980A2ED1B012900FB6E01952F04848010100242600F084801D803E82A520808012170E808ECABFE1C9F339A5D5C4436D880C78F3A7139CE94DF7078FD75379BF5FF9702A500C4E6D77F42';
wwv_flow_imp.g_varchar2_table(329) := '4008080121D077049E3C98C69F01E6081D340DC29E2377D3F373177F3CE9F163370B4A01CA003BF3FB8C07F59502D0E71656DD8480101002AD44A01D4CB1F98EDB2197513BB86C860B141D2900CD60AB5C858010100242A065081C9F8C40DB02F2000010';
wwv_flow_imp.g_varchar2_table(330) := '0049444154E311BAF428DDB21F4242396819FBB5B273E3E64D2705A056489599101002424008AC4340E1FB47C07B2F05C0E94F08080121200484C00122200BC00136BAAA2C04848010D81F02FD2C998D839C22E0BE7E36161AF1FE643A75DCDFFFE8DE3D';
wwv_flow_imp.g_varchar2_table(331) := 'C7E63BDEB7BDC7BF0E14A500D481A2F2E82D02F7C387FB852F7FC5898481FA40F7FBC0D75F3D6F64AC42F823D89F3D7EECF2829DF7270F1E384E153C7BF2C41197771403C21A61A864A652004A02A5688789C097BFFA35F7E1573E296A09061FFAAB7FCD';
wwv_flow_imp.g_varchar2_table(332) := '7DF0E33F33A71FF9C45F713FF6333FA7F66949FB94F956F619E733BFF5F946063276D41765CC46C265270C8659E6FCD15151B29DF94901D819D42A480808816D1178F8DA6B8ED99311B32ECE73636EE579DBFCBB9A7EDF33C9AEE25617DFC3D1C8DD78E1';
wwv_flow_imp.g_varchar2_table(333) := '8548FC98CFF8F4349E36184D266ED929831B2FBEE8BCF775B1B0513E520036824D89848010D80702C727272E256658C6C7D18D1BF678302E827F7A7EEE3027A304A5C47A3466676EBD9B5D5CDD78175C7BDE0F48FD2CD57BEF5002207ED0C70FBA215ABB';
wwv_flow_imp.g_varchar2_table(334) := 'C1653FFB8C6A25048440450418608FC76367349A4CDC38CCB6469389AB5B014070421559DC697404FC6CC995B5AC47B3F10C0BC9D46EBC0B6EFACCA63436A4613DE1199A068502BF9D564485ED050129007B815D850A0121501702CCB6524B40D97C11EE';
wwv_flow_imp.g_varchar2_table(335) := 'CC92D35973FA8CE08452BFA26704268213815BB6ECBAE2610D8926E7B3B368723EB97D3BFEAE3CE6E85421029F742D1A456A707414D9008759B00CC497F01F71C1343CD6FEAF2D1952E73CCD9628526DE1B9093EA4003481AAF2140242A0D50820AC11EE';
wwv_flow_imp.g_varchar2_table(336) := 'B8DB328AE0607737B46D5E55D323A8A3C9D93F5F4BE61D019FDDBCF95C29081692742D1A05217DCF3F0FB3AC2A2B1BC747F99806AB435EB9C20FC50AC222415BCD12456593026DA984B6CFD334E18132B1AE6C524697D24801E8526B89572120046A4100';
wwv_flow_imp.g_varchar2_table(337) := '21C9CC392566D355898D5C960742B516E67A9B4971C566CF9E3994A87C287E2855109B3EB1D64CC31206CA403E6ED977DA0842414A2D223C0FB36CBEBF84FE3138BAB49094CDBB8BF1A40074B1D5C4B31010025B21E0BD7771903F3E9EBBB6AFA08A3BCC';
wwv_flow_imp.g_varchar2_table(338) := 'B2797AA7BF8D10A01D10CA08616898658EE50B9E21EF9F5B3728006560B6A12580E50D843FE5E5AD1E287369DBC317E5F599A400F4B975553721200484404B1058C50642D904328298E50B7B1F27FB1B4E6EDF8ECB1A7ED03DD1C5890DAC175832586258';
wwv_flow_imp.g_varchar2_table(339) := '45C48336557456619D86750FC5947B3D0B01212004848010E800021761A903EB057B1958D65845C48358F2986DB03991DB0651303805C2090F9409087F363F5A9E52003AD071C4A210100242A0DB0888FB619645EB85593156B9E3D353C77E14F69778BF';
wwv_flow_imp.g_varchar2_table(340) := 'B8045206495332D8C888D04799805006D8FC38BDDAF038289399E208012120048480101002BB4180250EF6236CBA0F812514940794089657E25E8A8265132900BB694F95220484801038580454F1DD2380F28012611B1EC7C1AA00A118402809520076DF';
wwv_flow_imp.g_varchar2_table(341) := '2E2A51080881048159C91DDDC463FDD288F7241B3D0A0121B006012C0B280610272DA400AC014CC1424008D48F009B90D894340D6B91D33B77DC83575F75B86C5C32B24B5B08830867FDD28877FC894F5EF573B97D8EECFC4661614D161EF3C49A2CBBC2';
wwv_flow_imp.g_varchar2_table(342) := 'CD9FF5DAED4B6D5B0EE2A7AD084801686BCB882F21D06304B8FC854D49B36487F32C5802D29DD108CF321090A66CDC32F9D51187BA4C8362831283C21285FC83070BBF6448FD11F85139B80A4321A8A37CE52104CA202005A00C4A8A23048440AD087021';
wwv_flow_imp.g_varchar2_table(343) := 'CB6832893F9FCA4625C8362B114661B86C5ECA137159D7641DD388B3E3A4690B21D85102CAF033AFE78D1B8E75D93269BA14A76DBC6291318ACAD774EAB0C0A0A4614D32C20F226EDBEA50173F5200EA4252F90881034000A1C6D962064966B798E0A169';
wwv_flow_imp.g_varchar2_table(344) := '30E523F4AA4080E043E8B3510942A873F9CB683289C7A5469389E33D4FC4251DEB9846DE573F2A5585D7AA71E10FA50465C5941473F3C7BF4693AB7ADEBCE95897AD5A96E2974380FE493FC5226384D0C71203A10C604D32C20F222EC7E9CA95D2AD5852';
wwv_flow_imp.g_varchar2_table(345) := '00BAD55EE25608EC0D815930D163D6663064904CCDEEB360CA7FF6E8D1DE786B5BC1DE7B37CCB2F8B3C5A6A4985B8557706506CA4C741DA194E509658D76AB5266BD71DB951B4A2754952BDAA16A9A2EC49702D08556128F42A00D0804A1C60C356F92C7';
wwv_flow_imp.g_varchar2_table(346) := '8F992E33DE36B0D9271E1EB28FE0DE3DC74C741DA194E5C994B53E61B2695D8659E6B0268D269716A693AB6B8571A37526F847F7D62D9777B13A6D5AEEAED2A1E861C54051C4DA610A3A0AE43205460AC0AE5A47E508818E23E0BD8F6BD40CA20B144CD7';
wwv_flow_imp.g_varchar2_table(347) := '0C901C31EA78155BC73E5683554CE595B1B8F4F0C20B7301363E3D8D968855793419D695BCC119CB40748F8F5DDEADB31E086A143304F53A6289225D6A63B96D194D83B2487C144536935A3A9630A661898E70530AAC3E037B902B048480101002ED4280';
wwv_flow_imp.g_varchar2_table(348) := '4D81CC5097D182221666AEECA34009300126A5AC5DED09370F5F7BCDB13483A05E47CCE8F3429B3C36A2B04CE7A024B11480040C3D0A812E2380A92F9D51F09E5297EB26DE9B47607671E1E82FF42166A83C17958AFF527AFA3449A2C7220450DA50D458';
wwv_flow_imp.g_varchar2_table(349) := '36DB86F2CB14ABDEB1048DCFCEA26523E5490A408A869E85408711C0D497CE28784F09136087AB27D61B4680BE437FC16586CA7391B919FFA574F76EBCD489996BC3EC76367B961AB0D2B06CB60D9995A78CEB07C5A2BED8B7B3D08A712170B808309BC8';
wwv_flow_imp.g_varchar2_table(350) := 'AF092FBCDFB871B8E0A8E66B116013A72D358CC36CD16694365B65B327FD6998650E01C633E4FDF52398DE7BB7B64045D83B025200F6DE04624008D48300B309CC8BCB8881BC9E92BA9D0B3BA4D92C953F3217DFEFDF7798C021E2B0998A6766B4D1EC7D';
wwv_flow_imp.g_varchar2_table(351) := '20266E04B8CD2C11F6B16FDDBCE9E85B280AF4259E2194051487D16412371FF24EDA6EF792C3E05E0AC061B4B36A290484404000618E5047A0E78FCCC5F7C78F1D26708838280B3CA30C44B3F795899B1DD6213BFD4B10C0B48DE04779702E0928F9C81E';
wwv_flow_imp.g_varchar2_table(352) := '84596E935AC9A48AB62102520036044EC9848010E81E02CC64CDB4BD8DCB0CB87BB56F0FC7087A142C143208856A7AE78E9B9E9F3B3620B687D37E732205A0DFEDABDA09012190438059EAD6341CE672D56B8AC0B267843B1B0B11F45855B0AE40E95137';
wwv_flow_imp.g_varchar2_table(353) := '3620B21C8382B02C9F3AFD291B5EE02B4F2825F08292826B04FF16173FEA55274FBBCA4B0AC0AE90563942400808810347C02FD98D9E8785E5188432FB2EF26175BFA3702C53366617170E5E5052708D66C952057EE4B10B5EEBAEBB1480BA11557E4240';
wwv_flow_imp.g_varchar2_table(354) := '08088183466079E5394910370C5E5D5AC4C915880B8F6C4986F0F1E969DC5088A566796EF584C0138AC930CB1CBC181F655CE2939E8D91BBE0B59E1A3FCF450AC0732CF4240484404710989B64D35DFBF7EE39CCB16CF2C3ACDB91AA1C249B084B3B5DC0';
wwv_flow_imp.g_varchar2_table(355) := 'BE0C84287E10802090ED99F72689F2513810E23C536E59223ECACB30CB9A64B1B1BCA5003406AD32160287830026505B13C5655317C2787AE78EB367DE8987F066CD74969851AB2085709F9B64D35DFB4F9E44736DDCB93F9D56C952716B444059750701';
wwv_flow_imp.g_varchar2_table(356) := '2900DD692B712A045A8BC0ECD933C7A5304630CADA286BA8086C9E21043FC21B45805FBA235E9DE4BD9FF3E1F4270484C04A04A400AC8447814260B708302B664312B3E465841045B0EE96B3D5A571214C4AA3C9C4B1966B344E6E9663DDD46875AEC5A1';
wwv_flow_imp.g_varchar2_table(357) := '9C371F4D2E2F9D619DD6CAC0A51CF8C0BC5C9C5ABECD22A0DCBB848014802EB59678ED3D02CF1E3D72EC7E6696BC8C983D4F83691D45A02B8078EF9DADABB26E0A6D23A451022C3FA73F2120041610B06530C692B8F4F6FAEB2E3FA160FC9002B0009B5E';
wwv_flow_imp.g_varchar2_table(358) := '84C07E114028328B6566BB8E8E3ABAF168BF08ABF4261150DEFB47804DB0101308AC8971E92D4C2C784F8989841480FDB7973810020B0878EFE7B3659BE516B9DE5FFF1116A73F2120040E1A818B67CF0AEBEFBD9FEF8FB1BD3A52009CFE8480101002FD';
wwv_flow_imp.g_varchar2_table(359) := '4780CD98987D535330EFB30D4F635C474C3E860026784EBF3C78F55597A76958BEC3344F3B3043AF7B3F0F7B60B01E8E4F4FAFEDC3212C252900D6627285801010023D4500732F0209376F06E63406C2A8A755DF79B550B430C1E316158EC047F0D30E28';
wwv_flow_imp.g_varchar2_table(360) := '022804B44D51DC4DFCBCF7D182E807EBC5FBFA184E7F424008080121D06504103ACBF89F050BC0D31AEE4D5896FFA1F9FBA323C726D52AF52E23ACABE45736EEA06C44C5130242400808816E22C02D77FC82A11DBFC4C54C0C9DDCBEEDC66767952A8689';
wwv_flow_imp.g_varchar2_table(361) := '9BDDE5580E8C98F562616059817BF1F354A9800E47F6DEBBD164E2C6C1040FBE46600CD645C46D82FBA8B214807DA0AE3285404F11980FFA4F9F76B28608B1FC9A2DEF9868117846D3B08E8BFF949FAF7DF468ABBA622A4670E6F326FF9428CBDEAB16E8';
wwv_flow_imp.g_varchar2_table(362) := 'BD779C30E1F8A5916D2CAD9A17F139AECAEE72CCD897F4C0A11420FCA9CBC37BF75C9EA827690F85FC60E00C635CEFDBB769570AC0A1F446D573EF083040224818C419EC1136FB181467987C83D08A03F5DDBBF3AB7AA741A8C157111106DF0821D62D89';
wwv_flow_imp.g_varchar2_table(363) := '637EF81BCD07FD902F33C3BD835E9101D6668B92D04E083CA3D9C5458C360B5812165F36FD2FE4910A8B28A84F4E1C33769B3DE2324BC41D4D269B96545B3A2C084691A75BB7DC2A771C66C355CDE2B531AB8C962220056029340A1002F521809048053E';
wwv_flow_imp.g_varchar2_table(364) := '8224550810A02807F8A5A532A346904251F0DEBFEF9609A934DDB267F267D317BC305B832F087E106AB84544187922F0289F38E6877F11917F917F9BFD462FBDB4207811BA26E8CC354167A65C04B5DBE28FD9A1CDCA53174580B06B341C6E515A3D4911';
wwv_flow_imp.g_varchar2_table(365) := 'E6C62BFCAD23149C6D4AA6DFCEBF81605D400135A22F1306D137F966A06DCA3B94B452000EA5A555CFBD22506663108298C16C1ACCCA0C6ED3302367466D26560637084560D3CA907E16669C55D37BEF9F9F21BE7123FE6CAA09445C8415678BBD7F6EE6';
wwv_flow_imp.g_varchar2_table(366) := 'DC76D0777BF88367EA62028D5FA9334167AE85ED81BD832D12818E4249FF45F94C292A070F1E38BE13BE0DBE1908A57A539A866F8F6F707665E9E92BF05200FADAB2AA57AB10F0DE3BCEDFDAECB1C865A316FE71D6391EBBECC5170BCDAAC4DBB472E44D';
wwv_flow_imp.g_varchar2_table(367) := '19086D88D92BEF0B144CCCF13DB836CB1D9F9D45FEA90379983034977C0823DE38987B798736E553E9BA8440F3BCD2E7E957D61F479349E1B711FBED8AE508FA24FD7E19114E1E7C7BF46D3F18345FB93D96D0EFDAED1158152D04F20878EF9DCD1E8BDC';
wwv_flow_imp.g_varchar2_table(368) := '6196AD0CB734C32C73DBFC910F831B94CE76F18F144CCCE66E520E8366CC37E4B3497AA51102EB10600922F6D1E3E352DF8CC5A55FD2EF9711E11617771D1F7586636DC0F260560B2C102C0B425839D2B2B088A4EF659E67C1F2473E5849202C8E5200CA';
wwv_flow_imp.g_varchar2_table(369) := '20A7380783001F091F97112647D61621C20E06881D5794C1088C8D30F75A1BE45DC288C760960FE39D8174C7EC1F7471AA7C3D08D09FD3BECB3207DF05644B83D3B03C8882604B1C28098574FFBEB34DBEC487484B3E8C6910DF9014807ADA4EB9F40001';
wwv_flow_imp.g_varchar2_table(370) := '3E343E263E2E233465D61621C27A50CD565681590E181BC5C1EBDEBD6B47C96817C288C760C67B9EA661FDD6063CDA0C62B083501E5A0980983A7804D8439392F7CFF7D300CE2CCCE0219E8D50120AE9F163475F674CB3B8791765590A401E15BD1F2402';
wwv_flow_imp.g_varchar2_table(371) := '7C8A72601600001000494441540C088A951F4C47CFB677A14159E3C5ACEBBD77C32C73ACD1DA7A2C6BB2E3B3B3857BCD590BC68F3088F4A48130E33290BA90970D8E280C46B39E6FECDA6D7BABB4BA10A0FFB38FC688FE4D3FCFF76FFAB8119B54BD5F54';
wwv_flow_imp.g_varchar2_table(372) := '14C887FE0FE5798B61376E38BE97D14B2F3929004E7F422020103E2236B7F1B1A58410B28F8DE71053FF1A406098656E3499B87110F40C4EACD122C8598785BC5F1CE460C17B3F5FFF1D6699230D443B31888E4F4F637E697B92BF1F68D8730DFFD94C15';
wwv_flow_imp.g_varchar2_table(373) := '650BE5DAC8AC30AB14ED8659EB5CF6F4FF61F6BC7FD3C78D18B3C6E19B4151301A4D268EFE0F999FB9A34908BB79332AD93E7C07FA123AD71DC4701308A019F3A1E50921641F1BCF4D94AD3C9B43C07BEFD23675FAAB1501CB0C413F0D4B2F2CE560499B';
wwv_flow_imp.g_varchar2_table(374) := '5EAD5547BF6429072B0C4B38C4832CBDDCFD202005603FB8AB5421200484406D08CCC2FAB0CDB2CD650D981937EFE9737C7FF4C81116379E85B4DB32C26C127334337B965DD2FC50AE314743C4B330FCED59EE7E109002B01FDC55AA10100242602B0498';
wwv_flow_imp.g_varchar2_table(375) := '49CF67DA61C69DDF0C4938336EFCD3E7F8FEFAEB8E30365292072E4A4435861663B3F4329A4C1C8A00C29EF771304F8F26C1EC7CEB56344B8FC3B2CCC9EDDB713F07E18B39E86DD7084801D835E22A4F08080121B02502CCE8A1B2429BD936429962BDF7';
wwv_flow_imp.g_varchar2_table(376) := 'CF6F753C3E8ECFCCDA67CF9EB96DFF28877569D69F5932F3FEFADE8D6DCB50FAFA109002501F96CA4908EC0581D9C5453CF2834937254CBD107EACCB42D33053E4881C14677D21ED5E986E79A1B3800BD8E5C9CE4F832902380DC79C0EE197AF1E821A7F';
wwv_flow_imp.g_varchar2_table(377) := 'DC7CD826EF085ADB9C6A336EDE9955A79B1E4793499C6D8F2697B37066DFCCCA11D0298DC3CC9C3CABF0D2E7B8B4539DEDD556ACA400B4B565C4971028810082EAE16BAFC54B3F30E9A684A917C28F191EC4C066D922AC484B1EE677E82E6BD851516243';
wwv_flow_imp.g_varchar2_table(378) := '5BB2790D1CA1F45E08CCEAF819A15041BCA3604D431EE405F1034CF84F8302461EB3A0606C8335C2DA36A7DA8C9B7766DDE9A647E26D534EDFD2A2B4D11E10ED13DB29B4091B1279369AE247FB873644D9EB1B0E561F290086845C21D0410410E2B32D36';
wwv_flow_imp.g_varchar2_table(379) := '7191B60ED36F07A12B641925092A0CACE8390B429EBC2070B6E4581168377BEFA6DB4DAE11E6B40744FB500BDA06C58FE73CAD0ACBC7EDE2BB14802EB69A7816025708B0AEEBFDFA7556EF7D5CEB25BE112663668FCC189DFE2202864D69F7C60D078EAB';
wwv_flow_imp.g_varchar2_table(380) := '885939F9E1427EA0613782BD87FFC661A9836512964DB86F222E9784E51196469611DFC81E58DD4991EA893B81598508816610C0C43B3EBBBC252F0E66B76EB9D465C06360234EBAE6CB33266306C26638EB66AEE00936A5E9E6CDF90544E05944081CF2';
wwv_flow_imp.g_varchar2_table(381) := 'C3856813E27513A14BAEBBFC3F4A18427D985DFDF8D601FF689514802EF764F12E04120498C9E7C96BB69920A4C7BA1060831CCB1898D4F344585DE5289F66119002D02CBECABD25083028ADA3FC8046FC96B02F3684C05E1160BD3C6E70BC7BD73D78F5';
wwv_flow_imp.g_varchar2_table(382) := 'D5F8234DBCB3C1344F6C7664A3E35E196E79E16C206523A29129518C39107B0F7651052900BB405965EC0D0106AEE99D3B71C062605A45D706B4870FF7C6B70A16026D42804D7328C8CB36CBC12BD626F63AC4FD10A3115EA225083C7BF4C881A9912951';
wwv_flow_imp.g_varchar2_table(383) := '363E4DCFCF1D271250109664518BB714805A6054266D45801DEE83A3A3B8018EF5DD3C9FF8316819C5C1EBE4246EEC62BD361F7F9B77B47C3EE848F7EF3BDED1F6B7C9536985C02E1018669963D31CDF077B4CC657FB4E4EAE6EF5C3656F037B1DD8DFC0';
wwv_flow_imp.g_varchar2_table(384) := '52D42EF8EA6A19A3975E728C2F3EB744E7FDE286DE7CB8ABF96F50737ECA4E08B40A0106220625683499C44B5118AC8C4693CB0B52088718BC8CEAFEF8D0F24DE3E72818EF68FC759B4B67B3D9B58B81503498C199D2C1FB2A6A55238A99562030CC2E7F';
wwv_flow_imp.g_varchar2_table(385) := '918E6FCAFB4541B509835813AC0F6E92BECB69185BD88C383EBDFCC54A1B8FC639C50AA5ABC97A4A0168125DE52D041204D8796C9686B97BE346FC69CE24DAD68F9817596344C13042D1B0250E9ED7118AC2D68C28831E22B07995507AB17E99799BCB77';
wwv_flow_imp.g_varchar2_table(386) := 'AC1F62EE369A86253BE2D15FB9B8072581FE688422BB3917ED4BE9FDF6CAD4A6B59202B029724A27042A22C0913BAC0C0B74F3A6C3BF62562BA333B340D9C05C4BDE7365E3F8F8DA52487E09C4E20E8E8E5696A14021D01402B3AB0B9410F4280D087E94';
wwv_flow_imp.g_varchar2_table(387) := '0023C29B2AFBD0F2950270682DAEFA1E0402087E9632500416140EEE0908CB1E27576BB7A3C9C4E5C37927FD41007500954C4DED26447137A9FA3669E853F42D33738F2693E777568467EB93A94BFC3CD1AFB7E143699F232005E039167A120242400894';
wwv_flow_imp.g_varchar2_table(388) := '4600C18AA9DA0813B699AFCD2F2EC54CA72E15B8B3D9AC741944C40C6EF915B9D36032A7EC65949ADACDE48E5BF7DE1378AD42589FD84F10E9802FE3A98259DD71A500D48DA8F2130242A010812830EFDF7751880517D32E847024AC30518B3DE71B3A9F';
wwv_flow_imp.g_varchar2_table(389) := '3C8947BA6015F374EA8FF0661F0602D704F4F4FCDC41B360EA26CD2A220E66F05571064747CEE77693DB524E91CBD2103BD0A155F95E0F934FDF109002D0B716557D84404B11401022CCA2807CFCD8F10E211C99A5222071A38270EFDEA5A290B8F9992E';
wwv_flow_imp.g_varchar2_table(390) := 'F1661567D3754283299A2371085404ADF7C59BB910CE84A7041F0877DC5544DABC09BCE87D7C7ABA70C2A5288EF9C137FB44C87B55D90ADB0C01945994DA32ED5B5402E9A639ABCE34288DF47753986735F57B2900452D203F2120046A4780234DCC3A59';
wwv_flow_imp.g_varchar2_table(391) := '0BC6FC5B540083675410AE66D5E9FB2C376326DEECE9D3A26C76E687F91A818A701DE78E709D5CEDB34038139E12719761B033E62B16A4E8D711C0C233CD096B9458945AFCAFA758EF83929CEFEBB320F0E9EFA6304F8342902ACC28066C9A44F1807887';
wwv_flow_imp.g_varchar2_table(392) := 'C88BF794520EA400A468E8F9E011980521C347CDC7B329F1D1F1C11E3C9839007C305333F36463E26872FD4E061398A93B0E421501CA4C1BE581D93682138ACFC7C7B952F42A04768700029931A3A844FA6891FF3A3FBE119465FAF730CBE2C99D65694C';
wwv_flow_imp.g_varchar2_table(393) := '41860F8E4DA27840BC43ECF3E03DA569501E18DBC8530A00288884C01502A665F3F16C4A7C748FC31AF7559672B644C007C58199360323B3EDD164E2469349FC15BEAA59334B620064F604F18C69758142DB3140CE82325835FFFEC657CD8A101885A597';
wwv_flow_imp.g_varchar2_table(394) := '61168434F7798C465158D34F51564793495192527EC32C8BFD1B4500CB51AA142F7B1E0765194519051BE5018297FCD293F3DEF9F04DC1881400501009812B048659E646E1A3E6034E3F9C65CFC32C7CA8575707F3C1191D05FFAB2CE5B40801847A6A9D';
wwv_flow_imp.g_varchar2_table(395) := 'E119A56F81AEF627A02CB488F5BDB0C20C1365C814246699BCE709AB19D8EE85C93D16EABD775148DFBC19AFF645583376207877CD96F7DEA128B3C486A20CC10B3C19A13C8CC3F836CC32C7DF80FF444240083C47C07BEFF880EDA359E5F2F1F3A1E569';
wwv_flow_imp.g_varchar2_table(396) := '985D7E60CF736DFE0961C6409C1F9C6DF036D70671045CBA36B8EA399F6F57077BDA691C06C0D86E41712B52EC687B064EDCE65BADDD254405E0C103670A127DA6C832C67147D6BE77511B96D8A6C18C9DB7E0981FFE10FC981FCFF8E5896F65173CB7B5';
wwv_flow_imp.g_varchar2_table(397) := '0C29006D6D19F125042A22C00F1F3110E707681BBCCDB5411C45205D1B5CF59CCFF7E16BAF55E4AE3DD1317F0EB360B9198F5D917267C2DF7BDF1EA6F7C4094AD0F8CAB48C799919649E46938923CE382856BB609359AE99B999EDA2F8D2B771AD7C143B';
wwv_flow_imp.g_varchar2_table(398) := 'EFBD631DDE9EFDE0B9B833FFC1D1913BE4BFE7881C320AAABB10E801020C6A27B76F3B066A8418CB11C32CAC4F1E5F5E01CC4098D2300B4230CC8289B78AD234F1F9C60D77FCC20B3D404C55288380F7DE21742157F047BFF37E77CA92F73EF28335074B';
wwv_flow_imp.g_varchar2_table(399) := 'CE6832593802C93750A4D88D83824218349A5CDE808902E10EF84F0AC00137BEAADE4F0418A899B9D900593418E2C7E0499C7544DC050AEB9DC36CF74B1CFD6C2DD54A08EC0F012900FBC35E250B012120045A8F8018EC2F025200FADBB6AA9910100242';
wwv_flow_imp.g_varchar2_table(400) := '2022C0FA78D126CF18A8FF0E1601290007DBF4AAB81010027D46804D9E9CFC60273C54B4C913FFD51828B4CF084801E873EBF6B86E1C4F62677A1CE0EEDC59BC37FEFE7DC7B1B538E3D9F355B1454DB06C3616F97DF2C4115E944E7EBB418063665CE644';
wwv_flow_imp.g_varchar2_table(401) := 'DF4A0981CAB13123DA6BD6E2CB82D80B020DC7E378AC950D9CDE5F6ED6F3DE3B36C0B1F9D3E9EF6011900270B04DDFDD8A73A61742C8C7E33F6110C69DD3E3C70EE520CE78EEDE7576F697419DC1BDC99A933F652338ACDCBC3B3D3F7791B77BF70A5DDD';
wwv_flow_imp.g_varchar2_table(402) := '22D8640BADCFDBFAC9BC3F05A58C673B3E69C72C69C369503EAD7D6957D2126F7D29CDC7186659BC4D8E4D9E9C0A6123E7F8EC2CEE98C7E5281D9B455771A2B07E232005A0DFEDDBCBDA3190A547DD98D99421AC060CD0CCE49A0086819FFC4D31A95A86';
wwv_flow_imp.g_varchar2_table(403) := 'D541837255E4EA8DCFB1B64D729CF1832D289FAFBFEEE80B9BE4A134DD438076C71A449B9B758871C09EABBAA49D06C51222CF26119102D024BACABB1104BCF7F11C308292D90D0A41191A5F9D03E6F89B6BE00F932A8AC930BB3A7BCF79F993134779F8';
wwv_flow_imp.g_varchar2_table(404) := 'E7C9F839B97D3BCECAAC0EE4D3007BADCE320EA00F1FBA74B04491C2DF685715184D2ECF958F269378A702ED435BD17EB4256673DA6899A2E0BD7783411F865677907FB3A0C8ADEA7384474B5F50F4A608EA2B8B1E130BB30E116ECF555DD2CE82551322';
wwv_flow_imp.g_varchar2_table(405) := 'CF261B41BDB4497495F74121E0BD77ACB92224A230BF79339A60875916FD094BC90FFAFDF9319031409A89DC5CFC582281582EE11D733ACFE960C93BFE46A46F7A46E4923F043CED85176DC5F330BB34AB633E1F4D2E1505148494C6C1CC4E5CD289BA87';
wwv_flow_imp.g_varchar2_table(406) := '00FD32ED73F43B681A04BDB9CCD2E98BB320A8EBAEA15902715136EBCE3FCDAFDF23505A533D0B0121B07B04C26C2A5F2883266BEA10B37CDEF37196BE17E4B734AE02B642E05013B35F02C18B95C7FBCB4D9360310B7DCF7B1F7FF18FB061965D3E1F1F';
wwv_flow_imp.g_varchar2_table(407) := '5F73BD7F9E0E4512616E34CC8212192C8394C16401CB12644A649C3CDCBAE570B170BA06FFA4003408AEB21602878C008324B36166CB0C76460CB00C789529CCB859F639644C55F7E61140602378E9B7F45F13CCB8BC2398094378C7E72B619D3E138FF8';
wwv_flow_imp.g_varchar2_table(408) := 'D0687279EDB085938EFCA1619639AC4550F335BB5E821480EB98C84708740A81B85E991C7764B363F47BF2C4995B69965D73ED510418EC8C10E20C78956938AC993365B71C0185F40101AC16360698CBD285EDB59102D08756561D0E16816958978CEB95';
wwv_flow_imp.g_varchar2_table(409) := 'C971478E4846BFE498E1F4CE9DF97148D6318983A270B0C0A9E25B23300B26711324B808161332E6E24718EBEAAC9B43F43F681AFAA4FAE0D6CDB03403B09F8F0FC958C0C642DB6B230560297C0A10021D4020596BACC22D3F1D3C6B600353151E14B7BD';
wwv_flow_imp.g_varchar2_table(410) := '0894E1ECD9A347CE04092E8225AF78E24718FB3DD8140A59DEF43F14037B975B2F02E0BB2E472900EB1052782308D0399919E48999432305F634D3D14B2F39D6D4595F675DB2685D7D7C75FC91F54823D62831CD3BFDB51A01BE13BE09A3945966CFB330';
wwv_flow_imp.g_varchar2_table(411) := '0B4FFDD63D93C6F29ABBC9F2D1BAF469F85158BF1E66D9B50D70B6D92DBA376E38FAE632623D3CCD53CFCF11606C4441827886B0A0F06E8482F53CC5E2134B6DF68D7BEF1DEFB4838D13E3302E480158C44C6F3B428059411131839806B3361DBBEAE0B6';
wwv_flow_imp.g_varchar2_table(412) := '23D65B558CF7571FF6D17F77150000086D4944415478ECF8D88BD6D5FD409F79AB1AAD04330CF46626E79B30C2CF88651CBE15DE4D20E09A1FFE79228DE5357793E523D25E3C79528243E7BCF70E016E9BDB0ADDABA3B0B6FF23EFD267DD0EFE38520A36';
wwv_flow_imp.g_varchar2_table(413) := '793C78C71F73390AD10E582955048A1AE363B49C3C7932B7B46041313FE2CC82156FD938E9BD7708FB93DBB7DDF8ECEC72A2307E3E4EF8302E0C4A71A34842A04604F8D0F8E0E8807196707CBC308B60172E1DDBFBE74769AA144F5AB4658872280FE2E3';
wwv_flow_imp.g_varchar2_table(414) := 'C10F9738F93CF99088071585E7E3EB5D08B40501130AB8F4E34DF922ED45102A9BA66F733AEA56C41F9831E14021422198DEB9E3F6FDFDFBA323C76C3D4F285C58F94EAE843A4A97F7BEA85AA5FCA40094824991EA448059EA683271E36082A2032FA34D';
wwv_flow_imp.g_varchar2_table(415) := 'CBE403467B86ECC3E6E36656851F2E71A65796861827CC8278271E64E19BF2A07442601B046CE6C6609F12FE080566CE28CF66D6E5DD9E093741415ADE8D4803A17CE7F9C38FE5A46196E5833AFF4EBD469330E6849930982C23E2811558ECB3D2DEFB78';
wwv_flow_imp.g_varchar2_table(416) := '8958DE6232CC32C7F859176F5200EA4252F9544280597EA50415228F269378856BFA91DBC0C9C76DC4AFA4A169470A1F1C03634A757E6815D85754213047803E9812821EA1407F46718E022B987579B767C287D9A5A0202DEF46A481C641F9661699127E';
wwv_flow_imp.g_varchar2_table(417) := '2811F3C27BF8E0BD8F02145C8A88FA0FB3FE29406EC99F148025C0C8BBBB08A05CE43F6E1B386D20CCBB0C8AD728AC5F7617856E73CE32CC3A9AE54CD5697C967A8A086B0FEBC169982D13751BB1BAB8573E8784801480436A6DD55508944460369B3984';
wwv_flow_imp.g_varchar2_table(418) := 'E534AC87B22E0AB1810CC159F9FADE126522CC29C38865987594F246BA343E4B3D4584B087FF348C7A92963CD81056825D451102BD40400A402F9A51951002F522F0E48D37E24FDA22982D67761D23389941B38FC2FCEB7059731D4D2E976E58BFB6659A';
wwv_flow_imp.g_varchar2_table(419) := 'BC8B89365DA6E1395F3E79E13FA71B370A3754913796A179BCE3E398555AE7E87140FFA9AA8785801480C36A6FD55608944200E1B88C865916372895CAA842245BBA196697F9E7976978679D3BBF5493AE63F33C0EEBDB0B71C2520E698B88B5F385B8B7';
wwv_flow_imp.g_varchar2_table(420) := '6E3914880A6C2BAA10E82C0252003ADB74625C0834870042B04860E2C70C9D997373A52BE71401965D589E306299023F962E785EA0FBF71D6146586DD2BC563F2BF4D010900270682DAEFA0A0121D0290450C6528639B7CE520CFB19785EA0C78F1D6146';
wwv_flow_imp.g_varchar2_table(421) := 'C449D3EA5908A408480148D1D0B310100242A065080CB3CC8D4B9E5F67D906EB4CDCD770B5F7A16C7514EFF010900270786DAE1AEF0881D96CE6EC681ACF3B2A56C5F41001EFFDDAF3EB2CCF40F37D0D376FC6EB7A9DFE7A8D00CB3C9C6C6163EEF4FC3C';
wwv_flow_imp.g_varchar2_table(422) := 'FEEA27AE2D0DB11C44781C8B72BFFB2005A0D75D4395AB0B81D9C5855BF8909E3C990B77CCAC8441F6D14DEFDC71D3F03172BC0CE299DDF375F163F9CC1225237EE081AFC847580B8617D689E18F7896466E7D0818E6D7DCDC405B5F894DE5546FBE45FD';
wwv_flow_imp.g_varchar2_table(423) := '2DC5883ECAF710FB28274E1E3E7408B27AB9388CDC0CC378C579180FA835F8DBD210CB4160CD38C4515EDB4B822B0500B444AD416016042D9432C4C0C0E041A7367FDE2134DBD4DFC2EB7611A40B1FD2BD7B2E7E50C1B530C2EDA3CBD7C17BEF0647476E';
wwv_flow_imp.g_varchar2_table(424) := '9B3FEA497DA741B1E0E38578363ECC8D7C84B5607841F8C31FB44DD94ABB88007DB2087B6B03065AC2C19D765B4CDDDF3704BBF54BDC94E6D8846F863E4A5F8E7D3408FF28A0EEDE75F875011DDA9FF16715CDC258B68BBAC4E5A1AB23B4DC7ECA491996';
wwv_flow_imp.g_varchar2_table(425) := '828CF2EFE6CF529114805DB490CA588B8099AFA6CC9C032D0C1C616060F09826828F778881631783063BDF21FB788A5C3E343E40A3F1E9A93BB97D3B121F2967D8D702B12A42D0EE6781F81956D678FDA0FCE75B25EE2A1614768900828BB6B87C2BFE9F';
wwv_flow_imp.g_varchar2_table(426) := '7014B05DF4CF620ECAFBD61113618860DF26AF8B67CFB649BE93B4D413058FF167154DC338C698C5D8C6ECBC49E6EC082D37A032CEB01464947F377F968ACA8F204D72AFBC0F1E81E3D1C81DBFF08233C13ACCB2855F0844E019591CDC2894C7E3C6F143';
wwv_flow_imp.g_varchar2_table(427) := '800EB3E5E7D3F9A8F8D0F8008D48532763E44739281A9C5D5F503082B231573CCECEA2D261CA072E69EAE4E5D0F3A2ADC1943EC8B3F54D5CDA29C5E768384C5F7BFBEC433DAD0F9A3BC7287C3B6033CCC2377472127FA6D6E2CCDD308B257EDB01A29EF0';
wwv_flow_imp.g_varchar2_table(428) := 'C90C9A3AA5E47DEE97F9780F4A7B5B151B29006DEF6D07C21F42739885C12108F328E45E7CD121E48A8870A36176383FDCB1AA2B2074C010F23E3708AD4A5853D82C983B9919CDC260575396ADCEC67BEF10FCF4438441DA4FC7411943E98278A64D5A5D';
wwv_flow_imp.g_varchar2_table(429) := '19570F77DE7B475D539A6374F53D9BC28EF04CE3C5E761354509EBCA34CCB21FBCFA6ADCF886CBCC9C3571C8AC83F4CB39D5B037C3FBCBB667069DB63BCFE39CF23D0E7D017FFA896BE19F148016368A5812026D4100C18E099B01354F0CB8460CC49843';
wwv_flow_imp.g_varchar2_table(430) := 'A7619986784D9B3CDB82CF3A3EFC4043EC3A8C360DE7BAEA59503CD3F4ACCDB33C03D16F5102E897730ACB89F455F5CF4BD4D43B2F71D0FF4240081420C08C8A419401354F05D1A317F1989DC517FDD77A04BACA20CB2F98DF59FFAE52079406D6E55116';
wwv_flow_imp.g_varchar2_table(431) := 'AAA4EB635C29007D6C55D54908D4840003EC32C2BC8BF9DBD67031791B611EAD89056523040A11A0FF615E1F4D260B7B5E4693CB1F95424158462C4554551C0A99E8B8A714808E37A0D817024D22C040C9205B44087F06E1B87E7B7CDC241B95F2C6BCCB';
wwv_flow_imp.g_varchar2_table(432) := '71B44D89F4AC19CF0E623F4325683B1119C14E9F64DD7D190DB3C3DD3B8405C4BE0D29009DE8D26252080881320820B42FAE8E9261E245905725D68E9F3D7DEA6657F99429577184C0A6086CD24FE9E79B96F7F0B5D71CC7352129009BA2A874424008B4';
wwv_flow_imp.g_varchar2_table(433) := '0E01EF7DFCA962667E2C4314592ECAF8919E9964D315643686C2C18C8C75693650A6C4FE0B0444537C28DFFD2240FBB2CF66BE49F1DEF30BC656F94DCFCF1D6937E19EEFC29646FE3B000000FFFFA5436A7C00000006494441540300FA428C4DB3FC2E69';
wwv_flow_imp.g_varchar2_table(434) := '0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5528719428139777237)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5528720812782777237)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
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
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5528729142679777285)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(5528729142679777285)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5528729917018777302)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5528729471781777298)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/customers
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5528768178593798951)
,p_lov_name=>'CUSTOMERS'
,p_static_id=>'customers'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    name,',
'    customer_id,',
'    company_name',
'from dv_customers',
';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(5528768608884798960)
,p_query_column_name=>'COMPANY_NAME'
,p_heading=>'Company Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(5528768979882798961)
,p_query_column_name=>'CUSTOMER_ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(5528769376174798961)
,p_query_column_name=>'NAME'
,p_heading=>'Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(5528721032457777241)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(5528715858987777183)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6865567727434347162)
,p_short_name=>'About JSON Relational Duality Views'
,p_static_id=>'about-duality-views'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5528901981995439294)
,p_short_name=>'Purchase Orders Report'
,p_static_id=>'my-purchase-orders'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5528851442207813059)
,p_parent_id=>wwv_flow_imp.id(5528901981995439294)
,p_short_name=>'Purchase Order #&P6_PO_NUMBER.'
,p_static_id=>'purchase-order-amp-p6-po-id-details'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6859843606401186107)
,p_short_name=>'Purchase Orders Inbox'
,p_static_id=>'purchase-orders-inbox'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_page_id=>20
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(5528716827452777191)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>2461203171649
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
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
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(5528715502646777181)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
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
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Sample Duality Views'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861231127729790404)
,p_plug_name=>'About This App'
,p_static_id=>'about'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    <strong>JSON Relational Duality Views</strong> expose relational data as JSON documents',
'    while preserving the tables, constraints, and transactional behavior of Oracle Database.',
'    This sample app uses purchase orders, customers, products, and line items to show how',
'    APEX can work directly with a JSON Relational Duality View source.',
'</p>',
'<p>',
'    The app demonstrates common parent-child page patterns backed by',
'    <code>DV_PURCHASE_ORDER_DV</code>. Purchase order details come from the root document,',
'    customer data is nested as an object, and line items are projected as a nested JSON array.',
'</p>',
'<p>',
'    The app also includes declarative create and edit flows, the current JSON Relational Duality View DDL,',
'    generated JSON schema,',
'    and sample JSON document payloads.',
'</p>',
'<p>',
'    Use the examples below to explore the page patterns and the underlying JSON Relational Duality View',
'    metadata used by this sample.',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861231248762790453)
,p_plug_name=>'App Navigation'
,p_static_id=>'app-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:t-MediaList--iconsRounded'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(6861230487627790390)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526077165125083149)
,p_plug_name=>'Sample Duality Views'
,p_static_id=>'duality-view-demo-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'Demonstration of JSON Relational Duality Views in APEX'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
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
,p_name=>'Create Purchase Order'
,p_alias=>'CREATE-PURCHASE-ORDER'
,p_page_mode=>'MODAL'
,p_step_title=>'Create Purchase Order'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526077527250083150)
,p_plug_name=>'Buttons'
,p_static_id=>'create-purchase-order-buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526077516238083150)
,p_plug_name=>'Purchase Order'
,p_static_id=>'create-purchase-order-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5545977191433110557)
,p_plug_name=>'Line Items Container'
,p_static_id=>'line-items-container'
,p_title=>'Line Items'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526077716814083150)
,p_plug_name=>'Line Items'
,p_static_id=>'line-items-grid'
,p_parent_plug_id=>wwv_flow_imp.id(5545977191433110557)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_array_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_query_where=>'PO_ID = :P2_PO_ID and line_id is not null'
,p_source_post_processing=>'WHERE_ORDER_BY_CLAUSE'
,p_plug_source_type=>'NATIVE_IG'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5526078241173083151)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5526078100352083151)
,p_name=>'PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5526078518042083151)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select description, product_id from dv_products'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5526078675934083151)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5526078875670083151)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(5526077778058083150)
,p_internal_uid=>35360578393689604
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU'
,p_add_button_label=>'Add Line Item'
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
 p_id=>wwv_flow_imp.id(5526077867044083151)
,p_interactive_grid_id=>wwv_flow_imp.id(5526077778058083150)
,p_static_id=>'116132'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6434210689602383)
,p_report_id=>wwv_flow_imp.id(5526077867044083151)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6434309331602383)
,p_view_id=>wwv_flow_imp.id(6434210689602383)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5526078100352083151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6434475734602383)
,p_view_id=>wwv_flow_imp.id(6434210689602383)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5526078241173083151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6434518483602383)
,p_view_id=>wwv_flow_imp.id(6434210689602383)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(5526078518042083151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6434647498602383)
,p_view_id=>wwv_flow_imp.id(6434210689602383)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(5526078675934083151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6434716431602383)
,p_view_id=>wwv_flow_imp.id(6434210689602383)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(5526078875670083151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526079374422083153)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5526077527250083150)
,p_button_name=>'CREATE'
,p_static_id=>'create-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6434844231602384)
,p_branch_name=>'Go to Page 6'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_PO_ID,P6_CUSTOMER_ID:&P2_PO_ID.,&P2_CUSTOMER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5559832400527119714)
,p_name=>'P2_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5526077516238083150)
,p_item_source_plug_id=>wwv_flow_imp.id(5526077516238083150)
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'CUSTOMERS'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'infinite_scroll', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'value_html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<b>&NAME!HTML.</b></br>',
    '<small>Company: &COMPANY_NAME!HTML.</small>',
    '')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5559831184226119702)
,p_name=>'P2_PO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5526077516238083150)
,p_item_source_plug_id=>wwv_flow_imp.id(5526077516238083150)
,p_source=>'PO_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5559831434220119704)
,p_name=>'P2_PO_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5526077516238083150)
,p_item_source_plug_id=>wwv_flow_imp.id(5526077516238083150)
,p_source=>'PO_NUMBER'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5526079451565083153)
,p_name=>'Set Unit Price'
,p_static_id=>'set-unit-price-da'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(5526077716814083150)
,p_triggering_element=>'PRODUCT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526079617676083153)
,p_event_id=>wwv_flow_imp.id(5526079451565083153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'UNIT_PRICE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'PRODUCT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select unit_price',
    'from dv_products',
    'where product_id = :PRODUCT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526080087197083154)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526077716814083150)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Assign ID'
,p_static_id=>'assign-po-id'
,p_process_sql_clob=>':PO_ID := :P2_PO_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3078365622037666
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526079801311083153)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5526077516238083150)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Purchase Order'
,p_static_id=>'initialize-create-purchase-order'
,p_internal_uid=>3071802710037656
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526079828437083154)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526077516238083150)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Purchase Order'
,p_static_id=>'process-purchase-order'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Purchase Order Created'
,p_internal_uid=>3072238960037656
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526079942870083154)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526077716814083150)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Line Items - Save Interactive Grid Data'
,p_static_id=>'save-line-items-grid'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Purchase Order Created'
,p_internal_uid=>3077918446037666
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Purchase Order &P6_PO_ID. Details'
,p_alias=>'PURCHASE-ORDER-P6-PO-ID-DETAILS'
,p_step_title=>'Purchase Order &P6_PO_ID. Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_read_only_when=>'P6_STATUS'
,p_read_only_when2=>'DRAFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5558550528103233113)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5528715858987777183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5526080324887083154)
,p_name=>'Line Items'
,p_static_id=>'line-items-report'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'DUALITY_VIEW'
,p_array_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_query_where=>'PO_ID = :P6_PO_ID and LINE_ID is not null'
,p_source_post_processing=>'WHERE_ORDER_BY_CLAUSE'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6_PO_ID,P6_STATUS'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
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
 p_id=>wwv_flow_imp.id(5526081544065083154)
,p_query_column_id=>2
,p_column_alias=>'LINE_ID'
,p_column_display_sequence=>150
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_PO_ID,P8_LINE_ID:#PO_ID#,#LINE_ID#'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P6_STATUS'
,p_display_when_condition2=>'DRAFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526081800058083155)
,p_query_column_id=>1
,p_column_alias=>'PO_ID'
,p_column_display_sequence=>240
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526081998973083155)
,p_query_column_id=>19
,p_column_alias=>'PRODUCT_DESC'
,p_column_display_sequence=>190
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526082139690083155)
,p_query_column_id=>20
,p_column_alias=>'PRODUCT_PRODUCT_CODE'
,p_column_display_sequence=>170
,p_column_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526082382992083155)
,p_query_column_id=>17
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>200
,p_column_heading=>'Quantity'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526082594587083155)
,p_query_column_id=>23
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>210
,p_column_heading=>'Purchase Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526082663737083155)
,p_query_column_id=>22
,p_column_alias=>'amount'
,p_column_display_sequence=>230
,p_column_heading=>'Amount'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5526082892763083155)
,p_name=>'Order Details'
,p_static_id=>'order-details-region'
,p_template=>4502917002193490937
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:margin-left-md'
,p_component_template_options=>'#DEFAULT#:t-ContextualInfo-label--stacked:t-ContextualInfo--hideNulls:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_01'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'DUALITY_VIEW'
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_query_where=>'PO_ID = :P6_PO_ID'
,p_source_post_processing=>'WHERE_ORDER_BY_CLAUSE'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6_PO_ID'
,p_lazy_loading=>false
,p_query_row_template=>2117249020861433971
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
 p_id=>wwv_flow_imp.id(5526082924802083155)
,p_query_column_id=>13
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526083093977083155)
,p_query_column_id=>2
,p_column_alias=>'DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526083197672083155)
,p_query_column_id=>1
,p_column_alias=>'PO_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526083223576083155)
,p_query_column_id=>3
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>20
,p_column_heading=>'P.O. Number'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526083350313083155)
,p_query_column_id=>16
,p_column_alias=>'STATUS'
,p_column_display_sequence=>180
,p_column_heading=>'Status'
,p_column_css_class=>'u-textInitCap'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5526083472218083155)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>60
,p_column_heading=>'Order Total'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526082761908083155)
,p_plug_name=>'Customer'
,p_static_id=>'purchase-order-details-form'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-Region--removeHeader js-removeLandmark:margin-bottom-md'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526083912204083174)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5526080324887083154)
,p_button_name=>'ADD_LINE_ITEM'
,p_static_id=>'add-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:P9_PO_ID:&P6_PO_ID.'
,p_button_condition=>'P6_STATUS'
,p_button_condition2=>'DRAFT'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526083980265083174)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(5558550528103233113)
,p_button_name=>'COMPLETE'
,p_static_id=>'complete-order-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Complete'
,p_button_position=>'DELETE'
,p_button_condition=>'P6_STATUS'
,p_button_condition2=>'DRAFT'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526083737057083174)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(5558550528103233113)
,p_button_name=>'CREATE'
,p_static_id=>'create-purchase-order-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>':P6_PO_ID is null or :P6_CUSTOMER_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526083524682083174)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5558550528103233113)
,p_button_name=>'DELETE'
,p_static_id=>'delete-purchase-order-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P6_PO_ID is not null and :P6_CUSTOMER_ID is not null and :P6_STATUS = ''DRAFT'''
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526084045019083174)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5558550528103233113)
,p_button_name=>'REJECT'
,p_static_id=>'reject-order-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Reject'
,p_button_position=>'DELETE'
,p_button_condition=>'P6_STATUS'
,p_button_condition2=>'DRAFT'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526083696619083174)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5558550528103233113)
,p_button_name=>'SAVE'
,p_static_id=>'save-purchase-order-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>':P6_PO_ID is not null and :P6_CUSTOMER_ID is not null and :P6_STATUS = ''DRAFT'''
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6435027756602386)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_branch_condition=>'RELOAD'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558539553482239212)
,p_name=>'P6_CUSTOMER_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_prompt=>'Customer Address'
,p_source=>'CUSTOMER_ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>3
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558540341010239210)
,p_name=>'P6_CUSTOMER_COMPANY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_prompt=>'Company Name'
,p_source=>'CUSTOMER_COMPANY_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558538346603239215)
,p_name=>'P6_CUSTOMER_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_prompt=>'Email'
,p_source=>'CUSTOMER_EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558535538166239223)
,p_name=>'P6_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_default=>'1003'
,p_source=>'CUSTOMER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558537921354239216)
,p_name=>'P6_CUSTOMER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_prompt=>'Name'
,p_source=>'CUSTOMER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558538697846239214)
,p_name=>'P6_CUSTOMER_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_prompt=>'Phone'
,p_source=>'CUSTOMER_PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558535858915239222)
,p_name=>'P6_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_source=>'DATE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'date in header'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558537129629239218)
,p_name=>'P6_DELIVERY_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_prompt=>'Delivery Instructions'
,p_source=>'DELIVERY_INSTRUCTIONS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558535126185239224)
,p_name=>'P6_PO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_source=>'PO_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558536348848239220)
,p_name=>'P6_PO_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_source=>'PO_NUMBER'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5563367390090658288)
,p_name=>'P6_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_source=>'STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558536750045239219)
,p_name=>'P6_TOTAL_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_item_source_plug_id=>wwv_flow_imp.id(5526082761908083155)
,p_source=>'TOTAL_AMOUNT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'nicer display (larger)'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5528400225004732302)
,p_name=>'Refresh Line Items/Total'
,p_static_id=>'refresh-line-items-total-da_1'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5528400541759732305)
,p_event_id=>wwv_flow_imp.id(5528400225004732302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-submit-page'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'request_button_name', 'RELOAD',
  'show_processing', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526084421555083174)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5526082761908083155)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Purchase Order'
,p_static_id=>'initialize-purchase-order'
,p_internal_uid=>3146672814051777
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526084553341083174)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526082761908083155)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Purchase Order'
,p_static_id=>'process-purchase-order-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RELOAD'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_internal_uid=>3147037639051777
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526084636392083174)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Status Completed'
,p_static_id=>'set-status-completed'
,p_process_sql_clob=>':P6_STATUS := ''COMPLETED'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5526083980265083174)
,p_process_success_message=>'Purchase Order set to Completed.'
,p_internal_uid=>3164293888051788
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526084743103083174)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Status Rejected'
,p_static_id=>'set-status-rejected'
,p_process_sql_clob=>':P6_STATUS := ''REJECTED'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5526084045019083174)
,p_process_success_message=>'Purchase Order set to Rejected.'
,p_internal_uid=>3164622121051788
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Line Item'
,p_alias=>'LINE-ITEM'
,p_page_mode=>'MODAL'
,p_step_title=>'Line Item'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526085173630083175)
,p_plug_name=>'Buttons'
,p_static_id=>'line-item-buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526085029791083175)
,p_plug_name=>'Line Items'
,p_static_id=>'line-item-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_array_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526085283538083175)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5526085173630083175)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526085576407083175)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5526085173630083175)
,p_button_name=>'CREATE'
,p_static_id=>'create-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>':P8_PO_ID is null or :P8_LINE_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526085361497083175)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5526085173630083175)
,p_button_name=>'DELETE'
,p_static_id=>'delete-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P8_PO_ID is not null and :P8_LINE_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526085448649083175)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5526085173630083175)
,p_button_name=>'SAVE'
,p_static_id=>'save-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply'
,p_button_position=>'NEXT'
,p_button_condition=>':P8_PO_ID is not null and :P8_LINE_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555669223722410047)
,p_name=>'P8_LINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_source=>'LINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555668794122410048)
,p_name=>'P8_PO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_source=>'PO_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555676296862410029)
,p_name=>'P8_PRODUCT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_prompt=>'Product Description'
,p_source=>'PRODUCT_DESC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555676672612410028)
,p_name=>'P8_PRODUCT_PRODUCT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_prompt=>'Product Code'
,p_source=>'PRODUCT_PRODUCT_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555675886822410030)
,p_name=>'P8_PRODUCT_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_source=>'PRODUCT_UNIT_PRICE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555675455947410031)
,p_name=>'P8_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555731567347217209)
,p_name=>'P8_TOTAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_default=>':P8_UNIT_PRICE * :P8_QUANTITY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Total Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5555646224778448634)
,p_name=>'P8_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526085029791083175)
,p_prompt=>'Unit Price'
,p_source=>'UNIT_PRICE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(5525927572468028574)
,p_computation_sequence=>10
,p_computation_item=>'P8_UNIT_PRICE'
,p_static_id=>'p8-unit-price'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P8_PRODUCT_UNIT_PRICE'
,p_compute_when=>'P8_UNIT_PRICE'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5526085658221083175)
,p_name=>'Cancel Dialog'
,p_static_id=>'cancel-line-item-dialog-da'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5526085283538083175)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526085745207083175)
,p_event_id=>wwv_flow_imp.id(5526085658221083175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5526085872052083175)
,p_name=>'Update Total'
,p_static_id=>'update-line-item-total-da'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_QUANTITY,P8_UNIT_PRICE'
,p_condition_element=>'P8_QUANTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526085965205083175)
,p_event_id=>wwv_flow_imp.id(5526085872052083175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Calculate Total'
,p_static_id=>'calculate-total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_TOTAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P8_QUANTITY,P8_UNIT_PRICE',
  'plsql_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    'to_char(:P8_QUANTITY * :P8_UNIT_PRICE,''999G999G999G999G990D00'')',
    '')),
  'suppress_change_event', 'N',
  'type', 'PLSQL_EXPRESSION')).to_clob
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526086218915083175)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-line-item-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3456916715966297
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526086024554083175)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5526085029791083175)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Line Items'
,p_static_id=>'initialize-line-item'
,p_internal_uid=>3453531359966286
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526086152923083175)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526085029791083175)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Line Items'
,p_static_id=>'process-line-item'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3453906926966286
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Add Line Item'
,p_alias=>'ADD-LINE-ITEM'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Line Item'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526086565563083176)
,p_plug_name=>'Buttons'
,p_static_id=>'add-line-item-buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526086450578083175)
,p_plug_name=>'Line Items'
,p_static_id=>'add-line-item-form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_array_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P9_PRODUCT_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526086934928083176)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5526086565563083176)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel-add-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526086904938083176)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5526086565563083176)
,p_button_name=>'CREATE'
,p_static_id=>'create-add-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>':P9_PO_ID is null or :P9_LINE_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526086700471083176)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5526086565563083176)
,p_button_name=>'DELETE'
,p_static_id=>'delete-add-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P9_PO_ID is not null and :P9_LINE_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5526086738785083176)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5526086565563083176)
,p_button_name=>'SAVE'
,p_static_id=>'save-add-line-item-button'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>':P9_PO_ID is not null and :P9_LINE_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5567619272065249772)
,p_name=>'P9_LINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_source=>'LINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5567618842465249773)
,p_name=>'P9_PO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_source=>'PO_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5558256131915216896)
,p_name=>'P9_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_prompt=>'Product'
,p_source=>'PRODUCT_ID'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.description, p.product_id',
'from dv_products p',
'where not exists (',
'    select 1',
'    from dv_po_line_items li',
'    where li.po_id = :P9_PO_ID',
'    and li.product_id = p.product_id',
'    and (:P9_LINE_ID is null or li.line_id <> :P9_LINE_ID)',
')',
'order by p.description'))
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'infinite_scroll', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5567625504290249756)
,p_name=>'P9_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5567681615690056934)
,p_name=>'P9_TOTAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_default=>':P9_UNIT_PRICE * :P9_QUANTITY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Total Amount'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5567596273121288359)
,p_name=>'P9_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_item_source_plug_id=>wwv_flow_imp.id(5526086450578083175)
,p_prompt=>'Unit Price'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'UNIT_PRICE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5526087258330083176)
,p_name=>'Cancel Dialog'
,p_static_id=>'cancel-add-line-item-dialog-da'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5526086934928083176)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526087386299083176)
,p_event_id=>wwv_flow_imp.id(5526087258330083176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5526087053612083176)
,p_name=>'Set Unit Price'
,p_static_id=>'set-add-line-item-unit-price-da'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_PRODUCT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526087131578083176)
,p_event_id=>wwv_flow_imp.id(5526087053612083176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_UNIT_PRICE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P9_PRODUCT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select unit_price',
    'from dv_products',
    'where product_id = :P9_PRODUCT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5526087506145083176)
,p_name=>'Update Total'
,p_static_id=>'update-add-line-item-total-da'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_QUANTITY,P9_UNIT_PRICE'
,p_condition_element=>'P9_QUANTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5526087615967083176)
,p_event_id=>wwv_flow_imp.id(5526087506145083176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Calculate Total'
,p_static_id=>'calculate-total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_TOTAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P9_QUANTITY,P9_UNIT_PRICE',
  'plsql_expression', 'to_char(:P9_QUANTITY * :P9_UNIT_PRICE,''999G999G999G999G990D00'')',
  'suppress_change_event', 'N',
  'type', 'PLSQL_EXPRESSION')).to_clob
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526087848948083176)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-add-line-item-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3409106504860887
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526087701591083176)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5526086450578083175)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Line Items'
,p_static_id=>'initialize-add-line-item'
,p_internal_uid=>3406135944860879
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5526087777014083176)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526086450578083175)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Line Items'
,p_static_id=>'process-add-line-item'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3406512811860880
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Purchase Orders - Stacked'
,p_alias=>'PURCHASE-ORDERS-STACKED'
,p_step_title=>'Purchase Orders - Stacked'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Colorful Badges */',
'.t-Badge--COMPLETED {',
'    --ut-badge-text-color: var(--ut-badge-subtle-success-text-color, var(--a-palette-success));',
'    --ut-badge-background-color: var(--ut-badge-subtle-success-background-color, var(--a-palette-success-shade));',
'}',
'.t-Badge--REJECTED {',
'    --ut-badge-text-color: var(--ut-badge-subtle-danger-text-color, var(--a-palette-danger));',
'    --ut-badge-background-color: var(--ut-badge-subtle-danger-background-color, var(--a-palette-danger-shade));',
'}',
'.t-Badge--DRAFT {',
'    --ut-badge-text-color: var(--ut-badge-subtle-info-text-color, var(--a-palette-info));',
'    --ut-badge-background-color: var(--ut-badge-subtle-info-background-color, var(--a-palette-info-shade));',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861233679954790536)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'duality-view-demo-region'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5528715858987777183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861233899368790537)
,p_plug_name=>'Purchase Orders'
,p_static_id=>'purchase-orders-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
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
 p_id=>wwv_flow_imp.id(6861233972826790537)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>35489932199300093
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234074757790539)
,p_db_column_name=>'CUSTOMER_ADDRESS'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Customer Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234156431790540)
,p_db_column_name=>'CUSTOMER_CITY'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Customer City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234225711790541)
,p_db_column_name=>'CUSTOMER_COMPANY_NAME'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234372134790541)
,p_db_column_name=>'CUSTOMER_EMAIL'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Customer Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234486887790541)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>150
,p_is_primary_key=>'Y'
,p_column_identifier=>'M'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234594542790541)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234608674790541)
,p_db_column_name=>'CUSTOMER_PHONE'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Customer Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234764411790541)
,p_db_column_name=>'CUSTOMER_STATE'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Customer State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234835040790541)
,p_db_column_name=>'CUSTOMER_ZIP_CODE'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Customer Zip Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861234916904790542)
,p_db_column_name=>'DATE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'PO Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861235053182790542)
,p_db_column_name=>'DELIVERY_INSTRUCTIONS'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Delivery Instructions'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861235135302790542)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861235204702790542)
,p_db_column_name=>'LINE_ITEMS'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Line Items'
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
 p_id=>wwv_flow_imp.id(6861235323952790542)
,p_db_column_name=>'PO_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Po Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861235424583790542)
,p_db_column_name=>'PO_NUMBER'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'PO Number'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_PO_ID,P6_CUSTOMER_ID:#PO_ID#,#CUSTOMER_ID#'
,p_column_linktext=>'#PO_NUMBER#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_css_classes=>'u-bold'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861235532112790543)
,p_db_column_name=>'STATUS'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'TMPL_THEME_42$BADGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'LABEL', 'Status',
  'LABEL_DISPLAY', 'N',
  'SIZE', 't-Badge--sm',
  'STATE', 'STATUS',
  'STYLE', 't-Badge--subtle',
  'VALUE', 'STATUS')).to_clob
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6861235660916790543)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6861235795250790543)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'115905'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PO_NUMBER:STATUS:DATE:LAST_UPDATED:CUSTOMER_NAME:CUSTOMER_COMPANY_NAME:CUSTOMER_CITY:CUSTOMER_ZIP_CODE:TOTAL_AMOUNT'
,p_sort_column_1=>'LAST_UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DATE'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6861235958674790585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6861233679954790536)
,p_button_name=>'CREATE'
,p_static_id=>'create-purchase-order-button'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Purchase Order'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6861236009668790585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6861233899368790537)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Purchase Orders - Inbox'
,p_alias=>'PURCHASE-ORDERS-INBOX'
,p_step_title=>'Purchase Orders - Inbox'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
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
'}',
'',
'/* Minor List UI Customizations */',
'.t-MediaList {',
'    --ut-medialist-icon-border-radius: .25rem;',
'}',
'.t-MediaList-desc {',
'    white-space: pre-line;',
'}',
''))
,p_step_template=>2528119710305719084
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(933721798038023514)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5528715858987777183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5525838099112638252)
,p_name=>'Line Items'
,p_static_id=>'dv-po-line-items'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'DUALITY_VIEW'
,p_array_column_id=>wwv_flow_imp.id(5526072798953083114)
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_query_where=>'PO_ID = :P20_PO_ID and LINE_ID is not null'
,p_source_post_processing=>'WHERE_ORDER_BY_CLAUSE'
,p_display_when_condition=>'P20_PO_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P20_PO_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>5000
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226809533895988)
,p_query_column_id=>13
,p_column_alias=>'CUSTOMER_ADDRESS'
,p_column_display_sequence=>102
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226249909895983)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_CITY'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227088998895991)
,p_query_column_id=>16
,p_column_alias=>'CUSTOMER_COMPANY_NAME'
,p_column_display_sequence=>132
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226437262895985)
,p_query_column_id=>10
,p_column_alias=>'CUSTOMER_EMAIL'
,p_column_display_sequence=>72
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226949518895990)
,p_query_column_id=>15
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>122
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226376754895984)
,p_query_column_id=>9
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>62
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226535364895986)
,p_query_column_id=>11
,p_column_alias=>'CUSTOMER_PHONE'
,p_column_display_sequence=>82
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226708807895987)
,p_query_column_id=>12
,p_column_alias=>'CUSTOMER_STATE'
,p_column_display_sequence=>92
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226887201895989)
,p_query_column_id=>14
,p_column_alias=>'CUSTOMER_ZIP_CODE'
,p_column_display_sequence=>112
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524225819167895979)
,p_query_column_id=>4
,p_column_alias=>'DATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226186216895982)
,p_query_column_id=>7
,p_column_alias=>'DELIVERY_INSTRUCTIONS'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227379543895994)
,p_query_column_id=>25
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>162
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227424990895995)
,p_query_column_id=>2
,p_column_alias=>'LINE_ID'
,p_column_display_sequence=>5
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_PO_ID,P8_LINE_ID:#PO_ID#,#LINE_ID#'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'exists (',
'    select 1',
'      from dv_purchase_order_dv d',
'     where json_value(d.data, ''$._id'' returning number) = :P20_PO_ID',
'       and json_value(d.data, ''$.status'') = ''DRAFT''',
')'))
,p_display_when_condition2=>'SQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524228111986896001)
,p_query_column_id=>21
,p_column_alias=>'LINE_ITEMS_POS'
,p_column_display_sequence=>232
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524174639268860034)
,p_query_column_id=>1
,p_column_alias=>'PO_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524225967305895980)
,p_query_column_id=>5
,p_column_alias=>'PO_NUMBER'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227836473895999)
,p_query_column_id=>19
,p_column_alias=>'PRODUCT_DESC'
,p_column_display_sequence=>10
,p_column_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227565410895996)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>182
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227939550896000)
,p_query_column_id=>20
,p_column_alias=>'PRODUCT_PRODUCT_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227777913895998)
,p_query_column_id=>18
,p_column_alias=>'PRODUCT_UNIT_PRICE'
,p_column_display_sequence=>202
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227693823895997)
,p_query_column_id=>17
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>30
,p_column_heading=>'Qty'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524227304315895993)
,p_query_column_id=>24
,p_column_alias=>'STATUS'
,p_column_display_sequence=>152
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524226056578895981)
,p_query_column_id=>6
,p_column_alias=>'TOTAL_AMOUNT'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524228293262896003)
,p_query_column_id=>23
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Unit Price'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5524228166529896002)
,p_query_column_id=>22
,p_column_alias=>'amount'
,p_column_display_sequence=>50
,p_column_heading=>'Line Total'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525832054983638231)
,p_plug_name=>'Purchase Order'
,p_static_id=>'dv-purchase-orders'
,p_region_css_classes=>'js-master-region po-document-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select po_id,',
'       po_number,',
'       status,',
'       status_state,',
'       order_date,',
'       total_amount,',
'       last_updated,',
'       customer_name,',
'       customer_email,',
'       customer_phone,',
'       customer_company_name,',
'       customer_address,',
'       delivery_instructions',
'  from (',
'    select json_value(data, ''$._id'' returning number) po_id,',
'           json_value(data, ''$.po_number'') po_number,',
'           json_value(data, ''$.status'') status,',
'           case json_value(data, ''$.status'')',
'             when ''COMPLETED'' then ''success''',
'             when ''REJECTED'' then ''danger''',
'             else ''info''',
'           end status_state,',
'           to_char(to_date(substr(json_value(data, ''$.date''), 1, 10), ''YYYY-MM-DD''), ''Mon DD, YYYY'') order_date,',
'           to_char(json_value(data, ''$.total_amount'' returning number), ''FML999G999G990D00'') total_amount,',
'           to_char(to_date(substr(json_value(data, ''$.last_updated''), 1, 10), ''YYYY-MM-DD''), ''Mon DD, YYYY'') last_updated,',
'           json_value(data, ''$.customer.name'') customer_name,',
'           json_value(data, ''$.customer.email'') customer_email,',
'           json_value(data, ''$.customer.phone'') customer_phone,',
'           json_value(data, ''$.customer.company_name'') customer_company_name,',
'           json_value(data, ''$.customer.address'') || '', '' ||',
'           json_value(data, ''$.customer.city'') || '', '' ||',
'           json_value(data, ''$.customer.state'') || '' '' ||',
'           json_value(data, ''$.customer.zip_code'') customer_address,',
'           json_value(data, ''$.delivery_instructions'') delivery_instructions',
'      from dv_purchase_order_dv',
'  )',
' where po_id = :P20_PO_ID'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P20_PO_ID'
,p_plug_query_num_rows=>1
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_PO_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SHAPE', 't-Badge--rounded',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'STATUS_STATE',
  'BADGE_STYLE', 't-Badge--subtle',
  'BADGE_VALUE', 'STATUS',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&CUSTOMER_COMPANY_NAME!HTML.</strong><br>',
    '&CUSTOMER_EMAIL!HTML. &middot; &CUSTOMER_PHONE!HTML.<br>',
    '&CUSTOMER_ADDRESS!HTML.',
    '{if DELIVERY_INSTRUCTIONS/}<br><br>',
    '<strong>Delivery Instructions</strong><br>',
    '&DELIVERY_INSTRUCTIONS!HTML.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="u-text-subtitle-6">&TOTAL_AMOUNT!HTML.</span><br>',
    'Order Date: <strong>&ORDER_DATE!HTML.</strong><br>',
    'Last Updated: <strong>&LAST_UPDATED!HTML.</strong>')),
  'OVERLINE', 'PO #&PO_NUMBER.',
  'REMOVE_PADDING', 'N',
  'STACK_MOBILE', 'N',
  'TITLE', '&CUSTOMER_NAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524902489459647201)
,p_name=>'CUSTOMER_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524902559487647202)
,p_name=>'CUSTOMER_COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524902697695647202)
,p_name=>'CUSTOMER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_EMAIL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524902729403647202)
,p_name=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_NAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524902876036647202)
,p_name=>'CUSTOMER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_PHONE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524902923029647202)
,p_name=>'DELIVERY_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERY_INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524903135582647202)
,p_name=>'LAST_UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524903267984647202)
,p_name=>'ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_DATE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524903354418647202)
,p_name=>'PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PO_ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524903444986647202)
,p_name=>'PO_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PO_NUMBER'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524903537417647202)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6861236298607790591)
,p_name=>'STATUS_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_STATE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>95
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5524903636099647202)
,p_name=>'TOTAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_AMOUNT'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>35
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(6864841577811520240)
,p_region_id=>wwv_flow_imp.id(5525832054983638231)
,p_position_id=>363792341120765662
,p_display_sequence=>10
,p_template_id=>363792942797796791
,p_label=>'Edit'
,p_static_id=>'edit'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21,RP:P21_PO_ID:&PO_ID.'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5525827489310638123)
,p_name=>'Purchase Orders'
,p_static_id=>'master-records'
,p_template=>3372714138756020509
,p_display_sequence=>40
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'DUALITY_VIEW'
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PO_ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P20_PO_ID'', p_values => "PO_ID") LINK,',
'    -- null ICON_CLASS,',
'   case STATUS',
'     when ''COMPLETED'' then ''fa fa-file-check''',
'     when ''REJECTED'' then ''fa fa-file-x''',
'     else ''fa fa-file-edit''',
'   end ICON_CLASS,',
'    null LINK_ATTR,',
'   case STATUS',
'     when ''COMPLETED'' then ''u-success''',
'     when ''REJECTED'' then ''u-danger''',
'     else ''u-info''',
'   end ICON_COLOR_CLASS,',
'    case when coalesce(:P20_PO_ID,''0'') = "PO_ID"',
'      then ''is-selected'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    ''PO #'' || "PO_NUMBER" LIST_TITLE,',
'    substr(',
'        coalesce("CUSTOMER_COMPANY_NAME", "CUSTOMER_NAME") ||',
'        chr(10) ||',
'        to_char("TOTAL_AMOUNT", ''FML999G999G990D00'') ||',
unistr('        '' \00B7 '' ||'),
'        to_char("DATE", ''Mon DD, YYYY''),',
'        1,',
'        200',
'    ) LIST_TEXT,',
'    "STATUS" LIST_BADGE',
'from #APEX$SOURCE_DATA#',
'where :P20_SEARCH is null',
'   or instr(',
'        upper(',
'            "PO_NUMBER" || '' '' ||',
'            "STATUS" || '' '' ||',
'            coalesce("CUSTOMER_COMPANY_NAME", "CUSTOMER_NAME") || '' '' ||',
'            "CUSTOMER_EMAIL"',
'        ),',
'        upper(:P20_SEARCH)',
'      ) > 0',
'order by "LAST_UPDATED" desc nulls last, "PO_NUMBER"'))
,p_source_post_processing=>'SQL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P20_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2095080600153409441
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601564114108001)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>210
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601790005108003)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>230
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601516141108000)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>200
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601671342108002)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>220
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601324987107999)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>190
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525602061167108006)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>260
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601879190108004)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>240
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525602002191108005)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>250
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525601252752107998)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>180
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5525599585116107981)
,p_query_column_id=>1
,p_column_alias=>'PO_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Po Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525854267664638268)
,p_plug_name=>'No Record Selected'
,p_static_id=>'no-record-selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P20_PO_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525837638637638251)
,p_plug_name=>'Region Display Selector'
,p_static_id=>'region-display-selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_PO_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525826661203638120)
,p_plug_name=>'Search'
,p_static_id=>'search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(933721902356023516)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(933721798038023514)
,p_button_name=>'ACTIONS'
,p_static_id=>'actions'
,p_show_as_disabled=>false
,p_button_type=>'MENU'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Actions'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ellipsis-v'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(933722003883023517)
,p_button_id=>wwv_flow_imp.id(933721902356023516)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Show Query'
,p_static_id=>'show-query'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5524177147714860034)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5525838099112638252)
,p_button_name=>'POP_DV_PO_LINE_ITEMS'
,p_static_id=>'pop-dv-po-line-items'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Add Line Item'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9,RP:P9_PO_ID:&P20_PO_ID.'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5525846302005638258)
,p_name=>'P20_PO_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5525832054983638231)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5525842389688638131)
,p_name=>'P20_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5525826661203638120)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'autocomplete="off"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5524188612682860037)
,p_name=>'Refresh Line Items and Purchase Order'
,p_static_id=>'dialog-closed'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524189015688860038)
,p_event_id=>wwv_flow_imp.id(5524188612682860037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5525838099112638252)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6861236321552790599)
,p_event_id=>wwv_flow_imp.id(5524188612682860037)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5525832054983638231)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6861236517615790600)
,p_event_id=>wwv_flow_imp.id(5524188612682860037)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5525827489310638123)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5524189454934860038)
,p_name=>'Dialog Closed'
,p_static_id=>'dialog-closed-2'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5525832054983638231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524189902315860039)
,p_event_id=>wwv_flow_imp.id(5524189454934860038)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5525832054983638231)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5524190404209860039)
,p_name=>'Perform Search'
,p_static_id=>'perform-search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_SEARCH'
,p_condition_element=>'JAVASCRIPT_EXPRESSION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524191237523860039)
,p_event_id=>wwv_flow_imp.id(5524190404209860039)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-cancel-event'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5524190801610860039)
,p_event_id=>wwv_flow_imp.id(5524190404209860039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5525827489310638123)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5524898841004597107)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Select First Purchase Order'
,p_static_id=>'select-first-purchase-order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select po_id',
'      into :P20_PO_ID',
'      from (',
'          select json_value(data, ''$._id'' returning number) po_id',
'            from dv_purchase_order_dv',
'           order by json_value(data, ''$.last_updated'') desc nulls last,',
'                    json_value(data, ''$.po_number'')',
'      )',
'     where rownum = 1;',
'exception',
'    when no_data_found then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P20_PO_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>2427822935534829
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Edit Purchase Order'
,p_alias=>'EDIT-PURCHASE-ORDER'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Purchase Order'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526332356662369164)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5526327800439369162)
,p_plug_name=>'Purchase Order'
,p_static_id=>'dv-purchase-orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>'DUALITY_VIEW'
,p_document_source_id=>wwv_flow_imp.id(5528755791817793164)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5524686006191591100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5526332356662369164)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5524686400145591101)
,p_button_id=>wwv_flow_imp.id(5524686006191591100)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5524686851272591102)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5526332356662369164)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_PO_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5524687277316591102)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5526332356662369164)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_PO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5524687648814591102)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5526332356662369164)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_PO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6435637902602407)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230280697896023)
,p_name=>'P21_CUSTOMER_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer Address'
,p_source=>'CUSTOMER_ADDRESS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524229749554896018)
,p_name=>'P21_CUSTOMER_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer City'
,p_source=>'CUSTOMER_CITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230515945896025)
,p_name=>'P21_CUSTOMER_COMPANY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Company'
,p_source=>'CUSTOMER_COMPANY_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230017849896020)
,p_name=>'P21_CUSTOMER_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer Email'
,p_source=>'CUSTOMER_EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5526332774142369188)
,p_name=>'P21_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_source=>'CUSTOMER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524229886198896019)
,p_name=>'P21_CUSTOMER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer Name'
,p_source=>'CUSTOMER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230057500896021)
,p_name=>'P21_CUSTOMER_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer Phone'
,p_source=>'CUSTOMER_PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230186393896022)
,p_name=>'P21_CUSTOMER_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer State'
,p_source=>'CUSTOMER_STATE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230371531896024)
,p_name=>'P21_CUSTOMER_ZIP_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Customer ZIP'
,p_source=>'CUSTOMER_ZIP_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524229524415896016)
,p_name=>'P21_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Order Date'
,p_source=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5526333238325369189)
,p_name=>'P21_DELIVERY_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Delivery Instructions'
,p_source=>'DELIVERY_INSTRUCTIONS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230646745896027)
,p_name=>'P21_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_source=>'LAST_UPDATED'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524230584236896026)
,p_name=>'P21_LINE_ITEMS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_is_query_only=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_source=>'LINE_ITEMS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5526331596159369188)
,p_name=>'P21_PO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_source=>'PO_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5526332001464369188)
,p_name=>'P21_PO_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'P.O. Number'
,p_source=>'PO_NUMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5526333597554369189)
,p_name=>'P21_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5524229668631896017)
,p_name=>'P21_TOTAL_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_item_source_plug_id=>wwv_flow_imp.id(5526327800439369162)
,p_source=>'TOTAL_AMOUNT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5524692249136591107)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5526327800439369162)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dv Purchase Orders'
,p_static_id=>'initialize-form-dv-purchase-orders'
,p_internal_uid=>2221231067528829
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5524692687607591107)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5526327800439369162)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dv Purchase Orders'
,p_static_id=>'process-form-dv-purchase-orders'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2221669538528829
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'About JSON Relational Duality View'
,p_alias=>'ABOUT-DUALITY-VIEW'
,p_step_title=>'About JSON Relational Duality View'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525475291695041298)
,p_plug_name=>'APEX Usage'
,p_static_id=>'apex-usage'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This sample app uses the JSON Relational Duality View <code>DV_PURCHASE_ORDER_DV</code>',
'    as the purchase order data source. The shared APEX JSON Relational Duality View source',
'    <code>purchase-orders</code> exposes the purchase order document, including the nested',
'    <code>line_items</code> array used by the child regions.',
'</p>',
'<p>',
'    The view is defined with GraphQL/simple syntax and uses the <code>@alias</code> directive',
'    so generated SQL fields can reference the root purchase order row with a documented alias',
'    instead of the previous hidden alias workaround.',
'</p>',
'<p>',
'    <strong>Purchase Orders Report</strong> shows the vertical parent and child pattern:',
'    purchase order details on top and line items underneath, backed declaratively by the',
'    JSON Relational Duality View source.',
'</p>',
'<p>',
'    <strong>Purchase Orders Inbox</strong> shows the email-style pattern: purchase orders',
'    in the left side column and the selected order details on the right. Its line-item',
'    detail region is also backed by the JSON Relational Duality View source.',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6864841462901520239)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5528715858987777183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525475403213041298)
,p_plug_name=>'JSON Relational Duality View DDL'
,p_static_id=>'duality-view-ddl'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                <p>',
'                    The supporting objects create the purchase order JSON Relational Duality View with GraphQL/simple syntax.',
'                    The root table uses <code>@alias(as: po)</code>, which lets generated fields',
'                    correlate back to the selected purchase order using <code>po.po_id</code>.',
'                </p>',
'                <pre><code>CREATE OR REPLACE FORCE EDITIONABLE JSON RELATIONAL DUALITY VIEW "DV_PURCHASE_ORDER_DV" AS',
'dv_purchase_orders @alias(as: po) @insert @update @delete',
'{',
'  _id: po_id',
'  po_number: po_number',
'  status: status',
'  date: po_date',
'  customer: dv_customers @insert @update @nodelete',
'  {',
'    customer_id: customer_id',
'    name: name',
'    company_name: company_name',
'    phone: phone',
'    email: email',
'    address: address',
'    city: city',
'    state: state',
'    zip_code: zip_code',
'  }',
'  delivery_instructions: delivery_instructions',
'  line_items: dv_po_line_items @insert @update @delete',
'  [{',
'    line_item_id: line_id',
'    product: dv_products @noinsert @noupdate @nodelete',
'    {',
'      product_id: product_id',
'      product_code: product_code',
'      desc: description',
'      unit_price: unit_price',
'    }',
'    quantity: quantity',
'    unit_price: unit_price',
'    updated_on: updated_on',
'  }]',
'  total_amount @generated(sql: "select nvl(sum(i.unit_price * i.quantity), 0) from dv_po_line_items i where i.po_id = po.po_id")',
'  last_updated @generated(sql: "select greatest(nvl(max(i.updated_on), po.po_date), po.po_date) from dv_po_line_items i where i.po_id = po.po_id")',
'};</code></pre>',
'                '))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861236943732790632)
,p_plug_name=>'JSON Schema'
,p_static_id=>'json-schema'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                <p>',
'                    Oracle Database can describe a JSON Relational Duality View as a JSON schema. This gives',
'                    the sample app a concrete way to show the document contract that comes from the underlying',
'                    tables, keys, update permissions, generated fields, and nested arrays.',
'                </p>',
'                <pre><code>select json_serialize(',
'         dbms_json_schema.describe(''DV_PURCHASE_ORDER_DV'')',
'         returning clob pretty',
'       ) schema_json',
'  from dual;</code></pre>',
'                <pre><code>{',
'  "title" : "DV_PURCHASE_ORDER_DV",',
'  "dbObject" : "ORACLE.DV_PURCHASE_ORDER_DV",',
'  "dbObjectType" : "dualityView",',
'  "dbObjectProperties" : [ "insert", "update", "delete", "check" ],',
'  "properties" : {',
'    "_id" : {',
'      "type" : "number",',
'      "dbAssigned" : true',
'    },',
'    "total_amount" : {',
'      "dbGenerated" : true',
'    },',
'    "last_updated" : {',
'      "dbGenerated" : true',
'    },',
'    "customer" : {',
'      "type" : "object",',
'      "dbPrimaryKey" : [ "customer_id" ]',
'    },',
'    "line_items" : {',
'      "type" : "array",',
'      "items" : {',
'        "type" : "object",',
'        "dbPrimaryKey" : [ "line_item_id" ],',
'        "properties" : {',
'          "updated_on" : {',
'            "type" : "string",',
'            "format" : "date-time"',
'          }',
'        }',
'      }',
'    }',
'  },',
'  "dbPrimaryKey" : [ "_id" ],',
'  "additionalProperties" : false',
'}</code></pre>',
'                '))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525475181686041298)
,p_plug_name=>'Region Display Selector'
,p_static_id=>'region-display-selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_landmark_type=>'navigation'
,p_landmark_label=>'JSON Relational Duality View Information'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861237048033790633)
,p_plug_name=>'Sample JSON Document'
,p_static_id=>'sample-json-document'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                <p>',
'                    This is the purchase order document shape used by the JSON Relational Duality View. The insert payload',
'                    omits database-generated fields such as <code>_id</code>, <code>_metadata</code>,',
'                    <code>total_amount</code>, <code>last_updated</code>, and line item identifiers.',
'                    Line item <code>updated_on</code> values can be supplied or defaulted by the table trigger.',
'                </p>',
'                <pre><code>{',
'  "po_number" : "93001001",',
'  "status" : "DRAFT",',
'  "date" : "2026-06-10T00:00:00",',
'  "customer" : {',
'    "customer_id" : 1005,',
'    "name" : "Sandra Lee",',
'    "company_name" : "Lee Engineering",',
'    "phone" : "517-367-7311",',
'    "email" : "sandra.lee@leeeng.com",',
'    "address" : "153 Maple Ave",',
'    "city" : "Ann Arbor",',
'    "state" : "MI",',
'    "zip_code" : "48103"',
'  },',
'  "delivery_instructions" : "Deliver after noon",',
'  "line_items" : [',
'    {',
'      "product" : {',
'        "product_id" : 3016,',
'        "product_code" : "198-56210",',
'        "desc" : "Air Filter",',
'        "unit_price" : 14.35',
'      },',
'      "quantity" : 2,',
'      "unit_price" : 14.35',
'    },',
'    {',
'      "product" : {',
'        "product_id" : 3015,',
'        "product_code" : "703-92034",',
'        "desc" : "Oil Filter",',
'        "unit_price" : 7.80',
'      },',
'      "quantity" : 1,',
'      "unit_price" : 7.80',
'    }',
'  ]',
'}</code></pre>',
'                <p>',
'                    After the document is stored, the view projects generated metadata and derived values',
'                    back into the JSON document.',
'                </p>',
'                <pre><code>{',
'  "_id" : 2004,',
'  "_metadata" : {',
'    "etag" : "D0767158D5838268137E0ECF3FC90291",',
'    "asof" : "000000000730D08E"',
'  },',
'  "po_number" : "50938",',
'  "status" : "REJECTED",',
'  "date" : "2022-07-03T00:00:00",',
'  "customer" : {',
'    "customer_id" : 1005,',
'    "name" : "Sandra Lee",',
'    "company_name" : "Lee Engineering",',
'    "phone" : "517-367-7311",',
'    "email" : "sandra.lee@leeeng.com",',
'    "address" : "153 Maple Ave",',
'    "city" : "Ann Arbor",',
'    "state" : "MI",',
'    "zip_code" : "48103"',
'  },',
'  "delivery_instructions" : null,',
'  "line_items" : [',
'    {',
'      "line_item_id" : 4010,',
'      "product" : {',
'        "product_id" : 3012,',
'        "product_code" : "872-33410",',
'        "desc" : "Fuel Injector",',
'        "unit_price" : 56.4',
'      },',
'      "quantity" : 3,',
'      "unit_price" : 56.4,',
'      "updated_on" : "2024-04-10T00:00:00"',
'    },',
'    {',
'      "line_item_id" : 4011,',
'      "product" : {',
'        "product_id" : 3015,',
'        "product_code" : "703-92034",',
'        "desc" : "Oil Filter",',
'        "unit_price" : 7.8',
'      },',
'      "quantity" : 1,',
'      "unit_price" : 7.8,',
'      "updated_on" : "2024-04-10T00:00:00"',
'    },',
'    {',
'      "line_item_id" : 4012,',
'      "product" : {',
'        "product_id" : 3016,',
'        "product_code" : "198-56210",',
'        "desc" : "Air Filter",',
'        "unit_price" : 14.35',
'      },',
'      "quantity" : 2,',
'      "unit_price" : 14.35,',
'      "updated_on" : "2024-04-10T00:00:00"',
'    }',
'  ],',
'  "total_amount" : 205.7,',
'  "last_updated" : "2024-04-10T00:00:00"',
'}</code></pre>',
'                '))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Purchase Order Query'
,p_alias=>'PURCHASE-ORDER-QUERY'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Order Query'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6864841311641520238)
,p_plug_name=>'About'
,p_static_id=>'about'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This query reads one purchase order document from <code>DV_PURCHASE_ORDER_DV</code> and formats the inbox/detail content.</p>',
'<p>Static view metadata, DDL, and generated JSON schema are shown here because they are the same for every selected purchase order.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525511469085599008)
,p_plug_name=>'Display Query'
,p_static_id=>'display-query'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="po-query-code"><code>select po_id,',
'      po_number,',
'      status,',
'      status_state,',
'      order_date,',
'      total_amount,',
'      last_updated,',
'      customer_name,',
'      customer_email,',
'      customer_phone,',
'      customer_company_name,',
'      customer_address,',
'      delivery_instructions',
' from (',
'   select json_value(data, ''$._id'' returning number) po_id,',
'          json_value(data, ''$.po_number'') po_number,',
'          json_value(data, ''$.status'') status,',
'          case json_value(data, ''$.status'')',
'            when ''COMPLETED'' then ''success''',
'            when ''REJECTED'' then ''danger''',
'            else ''info''',
'          end status_state,',
'          to_char(to_date(substr(json_value(data, ''$.date''), 1, 10), ''YYYY-MM-DD''), ''Mon DD, YYYY'') order_date,',
'          to_char(json_value(data, ''$.total_amount'' returning number), ''FML999G999G990D00'') total_amount,',
'          to_char(to_date(substr(json_value(data, ''$.last_updated''), 1, 10), ''YYYY-MM-DD''), ''Mon DD, YYYY'') last_updated,',
'          json_value(data, ''$.customer.name'') customer_name,',
'          json_value(data, ''$.customer.email'') customer_email,',
'          json_value(data, ''$.customer.phone'') customer_phone,',
'          json_value(data, ''$.customer.company_name'') customer_company_name,',
'          json_value(data, ''$.customer.address'') || '', '' ||',
'          json_value(data, ''$.customer.city'') || '', '' ||',
'          json_value(data, ''$.customer.state'') || '' '' ||',
'          json_value(data, ''$.customer.zip_code'') customer_address,',
'          json_value(data, ''$.delivery_instructions'') delivery_instructions',
'     from dv_purchase_order_dv',
' )',
'where po_id = :P20_PO_ID</code></pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525511589124599008)
,p_plug_name=>'JSON Relational Duality View DDL'
,p_static_id=>'duality-view-ddl'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="po-query-code"><code>CREATE OR REPLACE FORCE EDITIONABLE JSON RELATIONAL DUALITY VIEW "DV_PURCHASE_ORDER_DV" AS',
'dv_purchase_orders @alias(as: po) @insert @update @delete',
'{',
'  _id: po_id',
'  po_number: po_number',
'  status: status',
'  date: po_date',
'  customer: dv_customers @insert @update @nodelete',
'  {',
'    customer_id: customer_id',
'    name: name',
'    company_name: company_name',
'    phone: phone',
'    email: email',
'    address: address',
'    city: city',
'    state: state',
'    zip_code: zip_code',
'  }',
'  delivery_instructions: delivery_instructions',
'  line_items: dv_po_line_items @insert @update @delete',
'  [{',
'    line_item_id: line_id',
'    product: dv_products @noinsert @noupdate @nodelete',
'    {',
'      product_id: product_id',
'      product_code: product_code',
'      desc: description',
'      unit_price: unit_price',
'    }',
'    quantity: quantity',
'    unit_price: unit_price',
'    updated_on: updated_on',
'  }]',
'  total_amount @generated(sql: "select nvl(sum(i.unit_price * i.quantity), 0) from dv_po_line_items i where i.po_id = po.po_id")',
'  last_updated @generated(sql: "select greatest(nvl(max(i.updated_on), po.po_date), po.po_date) from dv_po_line_items i where i.po_id = po.po_id")',
'};</code></pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6861237241292790634)
,p_plug_name=>'JSON Schema'
,p_static_id=>'json-schema'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="po-query-code"><code>select json_serialize(',
'         dbms_json_schema.describe(''DV_PURCHASE_ORDER_DV'')',
'         returning clob pretty',
'       ) schema_json',
'  from dual;</code></pre>',
'',
'<br />',
'',
'<pre class="po-query-code"><code>{',
'  "title" : "DV_PURCHASE_ORDER_DV",',
'  "dbObject" : "ORACLE.DV_PURCHASE_ORDER_DV",',
'  "dbObjectType" : "dualityView",',
'  "dbObjectProperties" : [ "insert", "update", "delete", "check" ],',
'  "properties" : {',
'    "_id" : {',
'      "type" : "number",',
'      "dbAssigned" : true',
'    },',
'    "total_amount" : {',
'      "dbGenerated" : true',
'    },',
'    "last_updated" : {',
'      "dbGenerated" : true',
'    },',
'    "customer" : {',
'      "type" : "object",',
'      "dbPrimaryKey" : [ "customer_id" ]',
'    },',
'    "line_items" : {',
'      "type" : "array",',
'      "items" : {',
'        "type" : "object",',
'        "dbPrimaryKey" : [ "line_item_id" ],',
'        "properties" : {',
'          "updated_on" : {',
'            "type" : "string",',
'            "format" : "date-time"',
'          }',
'        }',
'      }',
'    }',
'  },',
'  "dbPrimaryKey" : [ "_id" ],',
'  "additionalProperties" : false',
'}</code></pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6864840332583520228)
,p_name=>'Query'
,p_static_id=>'query'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''DV_PURCHASE_ORDER_DV''      as "JSON Relational Duality View",',
'       ''JSON Relational Duality''   as "View Type",',
'       ''_id / po_id''               as "Root Key",',
'       ''line_items''                as "Child Array",',
'       ''Purchase Orders - Inbox''   as "Used By",',
'       ''read/write where allowed''  as "Update Mode"',
'  from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991776017792140
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6864840987988520234)
,p_query_column_id=>4
,p_column_alias=>'Child Array'
,p_column_display_sequence=>40
,p_column_heading=>'Child Array'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6435912926602414)
,p_query_column_id=>1
,p_column_alias=>'JSON Relational Duality View'
,p_column_display_sequence=>10
,p_column_heading=>'JSON Relational Duality View'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6864840806369520233)
,p_query_column_id=>3
,p_column_alias=>'Root Key'
,p_column_display_sequence=>30
,p_column_heading=>'Root Key'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6864841159157520236)
,p_query_column_id=>6
,p_column_alias=>'Update Mode'
,p_column_display_sequence=>60
,p_column_heading=>'Update Mode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6864841040682520235)
,p_query_column_id=>5
,p_column_alias=>'Used By'
,p_column_display_sequence=>50
,p_column_heading=>'Used By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6864840770728520232)
,p_query_column_id=>2
,p_column_alias=>'View Type'
,p_column_display_sequence=>20
,p_column_heading=>'View Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5525511381252599008)
,p_plug_name=>'Region Display Selector'
,p_static_id=>'region-display-selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_landmark_type=>'navigation'
,p_landmark_label=>'Purchase Order Source'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'JSON Relational Duality Views - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5528721630086777251)
,p_plug_name=>'JSON Relational Duality Views'
,p_static_id=>'json-duality-views'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5528723303217777265)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5528721630086777251)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5528722559949777259)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5528721630086777251)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5528723007841777262)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5528721630086777251)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5528722204582777258)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5528721630086777251)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5528727407209777272)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3039879289015998
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5528726928620777271)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3039400700015997
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5528723722517777266)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3036194597015992
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5528724675344777269)
,p_page_process_id=>wwv_flow_imp.id(5528723722517777266)
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
 p_id=>wwv_flow_imp.id(5528725152238777269)
,p_page_process_id=>wwv_flow_imp.id(5528723722517777266)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5528724132244777269)
,p_page_process_id=>wwv_flow_imp.id(5528723722517777266)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5528725566065777270)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3038038145015996
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5528726579378777270)
,p_page_process_id=>wwv_flow_imp.id(5528725566065777270)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5528726029889777270)
,p_page_process_id=>wwv_flow_imp.id(5528725566065777270)
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
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'drop table if exists dv_customers cascade constraints;'||wwv_flow.LF||
'drop table if exists dv_purchase_orders casca';
wwv_flow_imp.g_varchar2_table(2) := 'de constraints;'||wwv_flow.LF||
'drop table if exists dv_products cascade constraints;'||wwv_flow.LF||
'drop table if exists dv_po_lin';
wwv_flow_imp.g_varchar2_table(3) := 'e_items cascade constraints;'||wwv_flow.LF||
'drop trigger if exists trg_dv_po_number;'||wwv_flow.LF||
'drop trigger if exists trg_dv_';
wwv_flow_imp.g_varchar2_table(4) := 'po_line_items;'||wwv_flow.LF||
'drop sequence if exists dv_po_number_seq;'||wwv_flow.LF||
'drop view if exists dv_purchase_order_dv;';
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(5528902706493450773)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/deployment/install/install_create_objects
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'drop table if exists dv_customers cascade constraints;'||wwv_flow.LF||
'drop table if exists dv_purchase_orders casca';
wwv_flow_imp.g_varchar2_table(2) := 'de constraints;'||wwv_flow.LF||
'drop table if exists dv_products cascade constraints;'||wwv_flow.LF||
'drop table if exists dv_po_lin';
wwv_flow_imp.g_varchar2_table(3) := 'e_items cascade constraints;'||wwv_flow.LF||
'drop trigger if exists trg_dv_po_number;'||wwv_flow.LF||
'drop trigger if exists trg_dv_';
wwv_flow_imp.g_varchar2_table(4) := 'po_line_items;'||wwv_flow.LF||
'drop sequence if exists dv_po_number_seq;'||wwv_flow.LF||
'drop view if exists dv_purchase_order_dv;'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '  CREATE TABLE "DV_CUSTOMERS" '||wwv_flow.LF||
'   (	"CUSTOMER_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MI';
wwv_flow_imp.g_varchar2_table(6) := 'NVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE';
wwv_flow_imp.g_varchar2_table(7) := '  NOKEEP  NOSCALE  NOT NULL ENABLE, '||wwv_flow.LF||
'	"NAME" VARCHAR2(100) NOT NULL ENABLE, '||wwv_flow.LF||
'	"COMPANY_NAME" VARCHAR';
wwv_flow_imp.g_varchar2_table(8) := '2(100), '||wwv_flow.LF||
'	"PHONE" VARCHAR2(20), '||wwv_flow.LF||
'	"EMAIL" VARCHAR2(100), '||wwv_flow.LF||
'	"ADDRESS" VARCHAR2(200), '||wwv_flow.LF||
'	"CITY" VARCHAR';
wwv_flow_imp.g_varchar2_table(9) := '2(50), '||wwv_flow.LF||
'	"STATE" VARCHAR2(2), '||wwv_flow.LF||
'	"ZIP_CODE" VARCHAR2(10), '||wwv_flow.LF||
'	 PRIMARY KEY ("CUSTOMER_ID")'||wwv_flow.LF||
'  USING INDE';
wwv_flow_imp.g_varchar2_table(10) := 'X  ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  CREATE TABLE "DV_PURCHASE_ORDERS" '||wwv_flow.LF||
'   (	"PO_ID" NUMBER GENERATED BY DEFAULT ON';
wwv_flow_imp.g_varchar2_table(11) := ' NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE';
wwv_flow_imp.g_varchar2_table(12) := ' 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, '||wwv_flow.LF||
'	"PO_NUMBER" VARCHAR2(20) NOT NULL ENABLE, ';
wwv_flow_imp.g_varchar2_table(13) := ''||wwv_flow.LF||
'	"PO_DATE" DATE DEFAULT ON NULL sysdate NOT NULL ENABLE, '||wwv_flow.LF||
'	"CUSTOMER_ID" NUMBER NOT NULL ENABLE, '||wwv_flow.LF||
'	';
wwv_flow_imp.g_varchar2_table(14) := '"DELIVERY_INSTRUCTIONS" VARCHAR2(500), '||wwv_flow.LF||
'    "STATUS" VARCHAR2(20) DEFAULT ''DRAFT'' NOT NULL ENABLE,'||wwv_flow.LF||
'	';
wwv_flow_imp.g_varchar2_table(15) := ' PRIMARY KEY ("PO_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE, '||wwv_flow.LF||
'	 UNIQUE ("PO_NUMBER")'||wwv_flow.LF||
'  USING INDEX  ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(16) := '  ALTER TABLE "DV_PURCHASE_ORDERS" ADD CONSTRAINT "FK_PO_CUSTOMER" FOREIGN KEY ("CUSTOMER_ID")'||wwv_flow.LF||
'	  RE';
wwv_flow_imp.g_varchar2_table(17) := 'FERENCES "DV_CUSTOMERS" ("CUSTOMER_ID") ENABLE;'||wwv_flow.LF||
''||wwv_flow.LF||
' ALTER TABLE "DV_PURCHASE_ORDERS" ADD CONSTRAINT "D';
wwv_flow_imp.g_varchar2_table(18) := 'V_PURCHASE_ORDERS_STATUS_CHK" '||wwv_flow.LF||
'    CHECK ("STATUS" IN (''DRAFT'', ''COMPLETED'', ''REJECTED''));'||wwv_flow.LF||
''||wwv_flow.LF||
'  CREATE';
wwv_flow_imp.g_varchar2_table(19) := ' SEQUENCE DV_PO_NUMBER_SEQ START WITH 3000 INCREMENT BY 1 NOCACHE NOCYCLE;'||wwv_flow.LF||
''||wwv_flow.LF||
'  CREATE OR REPLACE TRIG';
wwv_flow_imp.g_varchar2_table(20) := 'GER trg_dv_po_number'||wwv_flow.LF||
'    BEFORE INSERT ON DV_PURCHASE_ORDERS'||wwv_flow.LF||
'    FOR EACH ROW'||wwv_flow.LF||
'    BEGIN'||wwv_flow.LF||
'      IF :NE';
wwv_flow_imp.g_varchar2_table(21) := 'W.PO_NUMBER IS NULL THEN'||wwv_flow.LF||
'        -- Use the PO_ID that is about to be inserted (from the same sequen';
wwv_flow_imp.g_varchar2_table(22) := 'ce)'||wwv_flow.LF||
'        -- IF :NEW.PO_NUMBER IS NULL THEN'||wwv_flow.LF||
'          SELECT DV_PO_NUMBER_SEQ.NEXTVAL INTO :NEW.PO';
wwv_flow_imp.g_varchar2_table(23) := '_NUMBER FROM DUAL;'||wwv_flow.LF||
'        -- END IF;'||wwv_flow.LF||
'      END IF;'||wwv_flow.LF||
'    END;'||wwv_flow.LF||
'    /'||wwv_flow.LF||
''||wwv_flow.LF||
'  CREATE TABLE "DV_PRODUCTS" '||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(24) := ' (	"PRODUCT_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999';
wwv_flow_imp.g_varchar2_table(25) := '999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE';
wwv_flow_imp.g_varchar2_table(26) := ', '||wwv_flow.LF||
'	"PRODUCT_CODE" VARCHAR2(20) NOT NULL ENABLE, '||wwv_flow.LF||
'	"DESCRIPTION" VARCHAR2(200) NOT NULL ENABLE, '||wwv_flow.LF||
'	"U';
wwv_flow_imp.g_varchar2_table(27) := 'NIT_PRICE" NUMBER(10,2) NOT NULL ENABLE, '||wwv_flow.LF||
'	 PRIMARY KEY ("PRODUCT_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE, '||wwv_flow.LF||
'	 UNI';
wwv_flow_imp.g_varchar2_table(28) := 'QUE ("PRODUCT_CODE")'||wwv_flow.LF||
'  USING INDEX  ENABLE'||wwv_flow.LF||
'   ) ;'||wwv_flow.LF||
''||wwv_flow.LF||
'  CREATE TABLE "DV_PO_LINE_ITEMS" '||wwv_flow.LF||
'   (	"LINE_ID"';
wwv_flow_imp.g_varchar2_table(29) := ' NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 IN';
wwv_flow_imp.g_varchar2_table(30) := 'CREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, '||wwv_flow.LF||
'	"PO_ID" NUM';
wwv_flow_imp.g_varchar2_table(31) := 'BER NOT NULL ENABLE, '||wwv_flow.LF||
'	"PRODUCT_ID" NUMBER NOT NULL ENABLE, '||wwv_flow.LF||
'	"QUANTITY" NUMBER NOT NULL ENABLE, '||wwv_flow.LF||
'	"';
wwv_flow_imp.g_varchar2_table(32) := 'UNIT_PRICE" NUMBER(10,2), '||wwv_flow.LF||
'	"CREATED_ON" DATE DEFAULT ON NULL sysdate NOT NULL ENABLE, '||wwv_flow.LF||
'	"UPDATED_ON';
wwv_flow_imp.g_varchar2_table(33) := '" DATE DEFAULT ON NULL sysdate NOT NULL ENABLE, '||wwv_flow.LF||
'	 PRIMARY KEY ("LINE_ID")'||wwv_flow.LF||
'  USING INDEX  ENABLE'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(34) := ') ;'||wwv_flow.LF||
''||wwv_flow.LF||
'  ALTER TABLE "DV_PO_LINE_ITEMS" ADD CONSTRAINT "FK_LINE_PO" FOREIGN KEY ("PO_ID")'||wwv_flow.LF||
'	  REFERENCE';
wwv_flow_imp.g_varchar2_table(35) := 'S "DV_PURCHASE_ORDERS" ("PO_ID") ENABLE;'||wwv_flow.LF||
'  ALTER TABLE "DV_PO_LINE_ITEMS" ADD CONSTRAINT "FK_LINE_PR';
wwv_flow_imp.g_varchar2_table(36) := 'ODUCT" FOREIGN KEY ("PRODUCT_ID")'||wwv_flow.LF||
'	  REFERENCES "DV_PRODUCTS" ("PRODUCT_ID") ENABLE;'||wwv_flow.LF||
''||wwv_flow.LF||
'  create or re';
wwv_flow_imp.g_varchar2_table(37) := 'place trigger TRG_DV_PO_LINE_ITEMS'||wwv_flow.LF||
'    before insert or update'||wwv_flow.LF||
'    on DV_PO_LINE_ITEMS'||wwv_flow.LF||
'    for each ';
wwv_flow_imp.g_varchar2_table(38) := 'row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    if inserting and :new.UPDATED_ON is null then'||wwv_flow.LF||
'        :new.UPDATED_ON := sysdate;'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(39) := 'elsif updating then'||wwv_flow.LF||
'        :new.UPDATED_ON := sysdate;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'end TRG_DV_PO_LINE_ITEMS;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'CRE';
wwv_flow_imp.g_varchar2_table(40) := 'ATE OR REPLACE FORCE EDITIONABLE JSON RELATIONAL DUALITY VIEW "DV_PURCHASE_ORDER_DV"  AS '||wwv_flow.LF||
'dv_purchas';
wwv_flow_imp.g_varchar2_table(41) := 'e_orders @alias(as: po) @insert @update @delete'||wwv_flow.LF||
'{'||wwv_flow.LF||
'  _id: po_id'||wwv_flow.LF||
'  po_number: po_number'||wwv_flow.LF||
'  status: stat';
wwv_flow_imp.g_varchar2_table(42) := 'us'||wwv_flow.LF||
'  date: po_date'||wwv_flow.LF||
'  customer: dv_customers @insert @update @nodelete'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    customer_id: customer_';
wwv_flow_imp.g_varchar2_table(43) := 'id'||wwv_flow.LF||
'    name: name'||wwv_flow.LF||
'    company_name: company_name'||wwv_flow.LF||
'    phone: phone'||wwv_flow.LF||
'    email: email'||wwv_flow.LF||
'    address: addr';
wwv_flow_imp.g_varchar2_table(44) := 'ess'||wwv_flow.LF||
'    city: city'||wwv_flow.LF||
'    state: state'||wwv_flow.LF||
'    zip_code: zip_code'||wwv_flow.LF||
'  }'||wwv_flow.LF||
'  delivery_instructions: delivery_ins';
wwv_flow_imp.g_varchar2_table(45) := 'tructions'||wwv_flow.LF||
'  line_items: dv_po_line_items @insert @update @delete'||wwv_flow.LF||
'  [{'||wwv_flow.LF||
'    line_item_id: line_id'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(46) := 'product: dv_products @noinsert @noupdate @nodelete'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      product_id: product_id'||wwv_flow.LF||
'      product_';
wwv_flow_imp.g_varchar2_table(47) := 'code: product_code'||wwv_flow.LF||
'      desc: description'||wwv_flow.LF||
'      unit_price: unit_price'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'    quantity: quantity';
wwv_flow_imp.g_varchar2_table(48) := ''||wwv_flow.LF||
'    unit_price: unit_price'||wwv_flow.LF||
'    updated_on: updated_on'||wwv_flow.LF||
'  }]'||wwv_flow.LF||
'  total_amount @generated(sql: "select n';
wwv_flow_imp.g_varchar2_table(49) := 'vl(sum(i.unit_price * i.quantity), 0) from dv_po_line_items i where i.po_id = po.po_id")'||wwv_flow.LF||
'  last_upda';
wwv_flow_imp.g_varchar2_table(50) := 'ted @generated(sql: "select greatest(nvl(max(i.updated_on), po.po_date), po.po_date) from dv_po_line';
wwv_flow_imp.g_varchar2_table(51) := '_items i where i.po_id = po.po_id")'||wwv_flow.LF||
'};'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Standard syntax below kept for comparison with the GraphQ';
wwv_flow_imp.g_varchar2_table(52) := 'L/simple syntax above.'||wwv_flow.LF||
''||wwv_flow.LF||
'--   CREATE OR REPLACE FORCE EDITIONABLE JSON RELATIONAL DUALITY VIEW "DV_PU';
wwv_flow_imp.g_varchar2_table(53) := 'RCHASE_ORDER_DV"  AS '||wwv_flow.LF||
'--   SELECT JSON {'||wwv_flow.LF||
'--     ''_id'' : po.po_id,'||wwv_flow.LF||
'--     ''po_number'' : po.po_number,';
wwv_flow_imp.g_varchar2_table(54) := ''||wwv_flow.LF||
'--     ''date'' : po.po_date,'||wwv_flow.LF||
'--     ''customer'' : ('||wwv_flow.LF||
'--         SELECT JSON {'||wwv_flow.LF||
'--             ''customer';
wwv_flow_imp.g_varchar2_table(55) := '_id'': c.customer_id,'||wwv_flow.LF||
'--             ''name'' : c.name,'||wwv_flow.LF||
'--             ''company_name'' : c.company_name,';
wwv_flow_imp.g_varchar2_table(56) := ''||wwv_flow.LF||
'--             ''phone'' : c.phone,'||wwv_flow.LF||
'--             ''email'' : c.email,'||wwv_flow.LF||
'--             ''address'' : c.ad';
wwv_flow_imp.g_varchar2_table(57) := 'dress,'||wwv_flow.LF||
'--             ''city'' : c.city,'||wwv_flow.LF||
'--             ''state'' : c.state,'||wwv_flow.LF||
'--             ''zip_code'' :';
wwv_flow_imp.g_varchar2_table(58) := ' c.zip_code'||wwv_flow.LF||
'--         }'||wwv_flow.LF||
'--         FROM dv_customers c WITH INSERT UPDATE NODELETE'||wwv_flow.LF||
'--         WHERE';
wwv_flow_imp.g_varchar2_table(59) := ' c.customer_id = po.customer_id'||wwv_flow.LF||
'--     ),'||wwv_flow.LF||
'--     ''delivery_instructions'' : po.delivery_instructions,';
wwv_flow_imp.g_varchar2_table(60) := ''||wwv_flow.LF||
'--     ''line_items'' : ['||wwv_flow.LF||
'--         SELECT JSON {'||wwv_flow.LF||
'--             ''line_item_id'' : li.line_id,'||wwv_flow.LF||
'--    ';
wwv_flow_imp.g_varchar2_table(61) := '         ''product'' : (SELECT JSON {'||wwv_flow.LF||
'--                           ''product_id'' : p.product_id,'||wwv_flow.LF||
'--    ';
wwv_flow_imp.g_varchar2_table(62) := '                       ''product_code'' : p.product_code,'||wwv_flow.LF||
'--                           ''desc'' : p.desc';
wwv_flow_imp.g_varchar2_table(63) := 'ription,'||wwv_flow.LF||
'--                           ''unit_price'' : p.unit_price'||wwv_flow.LF||
'--             }'||wwv_flow.LF||
'--             FR';
wwv_flow_imp.g_varchar2_table(64) := 'OM dv_products p WITH INSERT UPDATE NODELETE'||wwv_flow.LF||
'--             WHERE p.product_id = li.product_id),'||wwv_flow.LF||
'-- ';
wwv_flow_imp.g_varchar2_table(65) := '            ''quantity'' : li.quantity,'||wwv_flow.LF||
'--             ''unit_price'' : li.unit_price,'||wwv_flow.LF||
'--             ''u';
wwv_flow_imp.g_varchar2_table(66) := 'pdated_on'' : li.updated_on'||wwv_flow.LF||
'--         }'||wwv_flow.LF||
'--         FROM dv_po_line_items li WITH INSERT UPDATE DELET';
wwv_flow_imp.g_varchar2_table(67) := 'E'||wwv_flow.LF||
'--         WHERE li.po_id = po.po_id'||wwv_flow.LF||
'--     ],'||wwv_flow.LF||
'--     ''total_amount'' : generated using ( select nv';
wwv_flow_imp.g_varchar2_table(68) := 'l(sum(i.unit_price * i.quantity), 0) from dv_po_line_items i where i.po_id = po.po_id )'||wwv_flow.LF||
'--     ''last';
wwv_flow_imp.g_varchar2_table(69) := '_updated''  generated using ( select greatest(nvl(max(i.updated_on), po.po_date), po.po_date) from dv';
wwv_flow_imp.g_varchar2_table(70) := '_po_line_items i where i.po_id = po.po_id )'||wwv_flow.LF||
'-- }'||wwv_flow.LF||
'-- FROM dv_purchase_orders po'||wwv_flow.LF||
'-- WITH INSERT UPDATE';
wwv_flow_imp.g_varchar2_table(71) := ' DELETE;'||wwv_flow.LF||
'';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(5528903320496454072)
,p_install_id=>wwv_flow_imp.id(5528902706493450773)
,p_name=>'Create Objects'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/deployment/install/install_insert_data
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '-- CUSTOMER DATA'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, C';
wwv_flow_imp.g_varchar2_table(2) := 'ITY, STATE, ZIP_CODE) VALUES (1003, ''Linda Green'', ''Green Autos'', ''517-367-7021'', ''linda.green@green';
wwv_flow_imp.g_varchar2_table(3) := 'cars.com'', ''4782 West End Ave'', ''Lansing'', ''MI'', ''48906'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NA';
wwv_flow_imp.g_varchar2_table(4) := 'ME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1004, ''Henry Miller'', ''Mille';
wwv_flow_imp.g_varchar2_table(5) := 'r Motors'', ''517-367-7222'', ''h.miller@millermotors.com'', ''5201 Eastport Rd'', ''Grand Rapids'', ''MI'', ''4';
wwv_flow_imp.g_varchar2_table(6) := '9503'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STAT';
wwv_flow_imp.g_varchar2_table(7) := 'E, ZIP_CODE) VALUES (1005, ''Sandra Lee'', ''Lee Engineering'', ''517-367-7311'', ''sandra.lee@leeeng.com'',';
wwv_flow_imp.g_varchar2_table(8) := ' ''153 Maple Ave'', ''Ann Arbor'', ''MI'', ''48103'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_';
wwv_flow_imp.g_varchar2_table(9) := 'NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1006, ''James Wilson'', ''Wilco Parts'', ''51';
wwv_flow_imp.g_varchar2_table(10) := '7-379-1101'', ''jwilson@wilcoparts.com'', ''818 Oak St'', ''Jackson'', ''MI'', ''49201'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTO';
wwv_flow_imp.g_varchar2_table(11) := 'MERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1007, ''';
wwv_flow_imp.g_varchar2_table(12) := 'Jennifer Fox'', ''Fox Fasteners'', ''517-367-7333'', ''jfox@foxf.com'', ''234 Grand Ave'', ''Kalamazoo'', ''MI'',';
wwv_flow_imp.g_varchar2_table(13) := ' ''49001'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, S';
wwv_flow_imp.g_varchar2_table(14) := 'TATE, ZIP_CODE) VALUES (1008, ''Michael Kim'', ''Kim Car Care'', ''517-379-1155'', ''mkim@kimcare.com'', ''94';
wwv_flow_imp.g_varchar2_table(15) := '1 Central Pkwy'', ''Battle Creek'', ''MI'', ''49015'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPAN';
wwv_flow_imp.g_varchar2_table(16) := 'Y_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1009, ''Patricia Bennett'', ''Bennett Rep';
wwv_flow_imp.g_varchar2_table(17) := 'air'', ''517-367-7444'', ''pbennett@bennettrepair.com'', ''1120 N Main St'', ''Holland'', ''MI'', ''49423'');'||wwv_flow.LF||
'INS';
wwv_flow_imp.g_varchar2_table(18) := 'ERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE';
wwv_flow_imp.g_varchar2_table(19) := ') VALUES (1010, ''Steven Carter'', ''Carter Service'', ''517-367-7555'', ''scarter@cartersvc.com'', ''2999 In';
wwv_flow_imp.g_varchar2_table(20) := 'dustrial Dr'', ''Muskegon'', ''MI'', ''49442'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME,';
wwv_flow_imp.g_varchar2_table(21) := ' PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1011, ''Emily Davis'', ''Davis Automotive'', ''517';
wwv_flow_imp.g_varchar2_table(22) := '-367-7666'', ''emily@davisauth.com'', ''1021 S Wheeler Rd'', ''Saginaw'', ''MI'', ''48609'');'||wwv_flow.LF||
'INSERT INTO DV_CU';
wwv_flow_imp.g_varchar2_table(23) := 'STOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1012';
wwv_flow_imp.g_varchar2_table(24) := ', ''William Clark'', ''Clark Parts'', ''517-379-1212'', ''william@clarkparts.com'', ''1689 River Rd'', ''Bay Ci';
wwv_flow_imp.g_varchar2_table(25) := 'ty'', ''MI'', ''48706'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRES';
wwv_flow_imp.g_varchar2_table(26) := 'S, CITY, STATE, ZIP_CODE) VALUES (1013, ''Olivia Turner'', ''Turner Supplies'', ''517-367-7777'', ''oliviat';
wwv_flow_imp.g_varchar2_table(27) := '@turnersup.com'', ''9005 N Cedar St'', ''Flint'', ''MI'', ''48505'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, ';
wwv_flow_imp.g_varchar2_table(28) := 'NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1014, ''Matthew Evans'', ''Ev';
wwv_flow_imp.g_varchar2_table(29) := 'ans Group'', ''517-367-7888'', ''mevans@evansgroup.com'', ''4222 Westburton Ave'', ''Warren'', ''MI'', ''48091'')';
wwv_flow_imp.g_varchar2_table(30) := ';'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP';
wwv_flow_imp.g_varchar2_table(31) := '_CODE) VALUES (1015, ''Sophia Harris'', ''Harris Fleet'', ''517-367-7999'', ''sophia@harrisfleet.com'', ''303';
wwv_flow_imp.g_varchar2_table(32) := ' Congress St'', ''Sterling Heights'', ''MI'', ''48310'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMP';
wwv_flow_imp.g_varchar2_table(33) := 'ANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1016, ''Benjamin Scott'', ''Scott Heavy';
wwv_flow_imp.g_varchar2_table(34) := ' Duty'', ''517-367-8001'', ''ben.scott@shd.com'', ''8822 Remington Dr'', ''Livonia'', ''MI'', ''48150'');'||wwv_flow.LF||
'INSERT ';
wwv_flow_imp.g_varchar2_table(35) := 'INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VA';
wwv_flow_imp.g_varchar2_table(36) := 'LUES (1017, ''Ava Walker'', ''Walker Imports'', ''517-367-8111'', ''avawalker@walkerimports.com'', ''1130 S F';
wwv_flow_imp.g_varchar2_table(37) := 'ieldstone Ct'', ''Troy'', ''MI'', ''48083'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PH';
wwv_flow_imp.g_varchar2_table(38) := 'ONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1018, ''Logan Nelson'', ''Nelson Autoworks'', ''517-3';
wwv_flow_imp.g_varchar2_table(39) := '67-8222'', ''logan@nelsonautoworks.com'', ''2508 Sunset Blvd'', ''Rochester Hills'', ''MI'', ''48309'');'||wwv_flow.LF||
'INSERT';
wwv_flow_imp.g_varchar2_table(40) := ' INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) V';
wwv_flow_imp.g_varchar2_table(41) := 'ALUES (1019, ''Chloe Baker'', ''Baker Garage'', ''517-367-8333'', ''chloeb@bakergrg.com'', ''7413 Warner Rd'',';
wwv_flow_imp.g_varchar2_table(42) := ' ''Southfield'', ''MI'', ''48076'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMA';
wwv_flow_imp.g_varchar2_table(43) := 'IL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1020, ''David Hall'', ''Hall Mechanics'', ''517-367-8444'', ''d';
wwv_flow_imp.g_varchar2_table(44) := 'hall@hallmech.com'', ''1677 Bartlett St'', ''Farmington Hills'', ''MI'', ''48334'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS';
wwv_flow_imp.g_varchar2_table(45) := ' (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1021, ''Grac';
wwv_flow_imp.g_varchar2_table(46) := 'e Adams'', ''Adams Supplies'', ''517-367-8555'', ''grace@adamssup.com'', ''4115 Sherwood Ln'', ''Westland'', ''M';
wwv_flow_imp.g_varchar2_table(47) := 'I'', ''48185'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY';
wwv_flow_imp.g_varchar2_table(48) := ', STATE, ZIP_CODE) VALUES (1022, ''Jackson Perez'', ''Perez Automotive'', ''517-367-8666'', ''jperez@pereza';
wwv_flow_imp.g_varchar2_table(49) := 'uto.com'', ''8799 Candlewood Dr'', ''Novi'', ''MI'', ''48375'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME,';
wwv_flow_imp.g_varchar2_table(50) := ' COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1023, ''Ella Moore'', ''Moore Car ';
wwv_flow_imp.g_varchar2_table(51) := 'Parts'', ''517-367-8777'', ''emoore@moorecar.com'', ''2721 Glenwood Ave'', ''Dearborn'', ''MI'', ''48126'');'||wwv_flow.LF||
'INSE';
wwv_flow_imp.g_varchar2_table(52) := 'RT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE)';
wwv_flow_imp.g_varchar2_table(53) := ' VALUES (1024, ''Mason Martinez'', ''Martinez Autos'', ''517-367-8888'', ''mason@martinezauto.com'', ''1101 C';
wwv_flow_imp.g_varchar2_table(54) := 'restview Rd'', ''Wyoming'', ''MI'', ''49509'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, ';
wwv_flow_imp.g_varchar2_table(55) := 'PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1025, ''Lily Taylor'', ''Taylor Performance'', ''51';
wwv_flow_imp.g_varchar2_table(56) := '7-367-8999'', ''lilyt@tayperf.com'', ''661 College Park Dr'', ''Midland'', ''MI'', ''48640'');'||wwv_flow.LF||
'INSERT INTO DV_C';
wwv_flow_imp.g_varchar2_table(57) := 'USTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (102';
wwv_flow_imp.g_varchar2_table(58) := '6, ''Lucas Thomas'', ''Thomas Electronics'', ''517-367-9001'', ''lucast@tomelectro.com'', ''1584 Meadowbrook ';
wwv_flow_imp.g_varchar2_table(59) := 'Rd'', ''Ypsilanti'', ''MI'', ''48197'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, ';
wwv_flow_imp.g_varchar2_table(60) := 'EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1027, ''Zoe Anderson'', ''Anderson Motor Co.'', ''517-367-';
wwv_flow_imp.g_varchar2_table(61) := '9111'', ''zoea@andersonmotor.com'', ''4024 Apple Ridge Dr'', ''Sylvania'', ''OH'', ''43560'');'||wwv_flow.LF||
'INSERT INTO DV_C';
wwv_flow_imp.g_varchar2_table(62) := 'USTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (102';
wwv_flow_imp.g_varchar2_table(63) := '8, ''Daniel Lee'', ''Lee Speed Shop'', ''517-367-9222'', ''daniel@leespeed.com'', ''8201 W Morrow Rd'', ''Toled';
wwv_flow_imp.g_varchar2_table(64) := 'o'', ''OH'', ''43615'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS';
wwv_flow_imp.g_varchar2_table(65) := ', CITY, STATE, ZIP_CODE) VALUES (1029, ''Victoria White'', ''White Auto Mall'', ''517-367-9333'', ''victori';
wwv_flow_imp.g_varchar2_table(66) := 'a@whiteauto.com'', ''5532 Eastland Dr'', ''Sandusky'', ''OH'', ''44870'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER';
wwv_flow_imp.g_varchar2_table(67) := '_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CITY, STATE, ZIP_CODE) VALUES (1030, ''Carter Lewis'',';
wwv_flow_imp.g_varchar2_table(68) := ' ''Lewis Car Solutions'', ''517-367-9444'', ''clewis@lewiscar.com'', ''900 Landing Blvd'', ''Bowling Green'', ';
wwv_flow_imp.g_varchar2_table(69) := '''OH'', ''43402'');'||wwv_flow.LF||
'INSERT INTO DV_CUSTOMERS (CUSTOMER_ID, NAME, COMPANY_NAME, PHONE, EMAIL, ADDRESS, CI';
wwv_flow_imp.g_varchar2_table(70) := 'TY, STATE, ZIP_CODE) VALUES (1031, ''Scarlett Young'', ''Young Supplies'', ''517-367-9555'', ''scarlett@you';
wwv_flow_imp.g_varchar2_table(71) := 'ngsupplies.com'', ''1875 Greenleaf Ct'', ''Findlay'', ''OH'', ''45840'');'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PRODUCTS DATA'||wwv_flow.LF||
'INSERT INTO DV_PR';
wwv_flow_imp.g_varchar2_table(72) := 'ODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3011, ''154-32691'', ''Spark Plug'', ';
wwv_flow_imp.g_varchar2_table(73) := '4.95);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3012, ''87';
wwv_flow_imp.g_varchar2_table(74) := '2-33410'', ''Fuel Injector'', 56.40);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, U';
wwv_flow_imp.g_varchar2_table(75) := 'NIT_PRICE) VALUES (3013, ''561-49200'', ''Alternator'', 154.60);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PR';
wwv_flow_imp.g_varchar2_table(76) := 'ODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3014, ''305-34520'', ''Radiator'', 134.20);'||wwv_flow.LF||
'INSERT INTO DV_';
wwv_flow_imp.g_varchar2_table(77) := 'PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3015, ''703-92034'', ''Oil Filter''';
wwv_flow_imp.g_varchar2_table(78) := ', 7.80);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3016, ''';
wwv_flow_imp.g_varchar2_table(79) := '198-56210'', ''Air Filter'', 14.35);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UN';
wwv_flow_imp.g_varchar2_table(80) := 'IT_PRICE) VALUES (3017, ''543-12987'', ''Timing Belt'', 37.50);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRO';
wwv_flow_imp.g_varchar2_table(81) := 'DUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3018, ''238-90876'', ''Water Pump'', 84.99);'||wwv_flow.LF||
'INSERT INTO DV_';
wwv_flow_imp.g_varchar2_table(82) := 'PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3019, ''954-63811'', ''Clutch Kit''';
wwv_flow_imp.g_varchar2_table(83) := ', 132.75);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3020,';
wwv_flow_imp.g_varchar2_table(84) := ' ''687-70547'', ''Ignition Coil'', 44.80);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTIO';
wwv_flow_imp.g_varchar2_table(85) := 'N, UNIT_PRICE) VALUES (3021, ''206-98412'', ''Wheel Bearing'', 36.65);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_';
wwv_flow_imp.g_varchar2_table(86) := 'ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3022, ''410-58327'', ''Shock Absorber'', 55.40);'||wwv_flow.LF||
'INSE';
wwv_flow_imp.g_varchar2_table(87) := 'RT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3023, ''329-28465'', ''';
wwv_flow_imp.g_varchar2_table(88) := 'Brake Rotor'', 63.20);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VA';
wwv_flow_imp.g_varchar2_table(89) := 'LUES (3024, ''677-52891'', ''Muffler'', 109.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESC';
wwv_flow_imp.g_varchar2_table(90) := 'RIPTION, UNIT_PRICE) VALUES (3025, ''788-92105'', ''Catalytic Converter'', 199.87);'||wwv_flow.LF||
'INSERT INTO DV_PRODU';
wwv_flow_imp.g_varchar2_table(91) := 'CTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3026, ''380-45012'', ''Power Steering P';
wwv_flow_imp.g_varchar2_table(92) := 'ump'', 127.30);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3';
wwv_flow_imp.g_varchar2_table(93) := '027, ''567-48120'', ''Transmission Mount'', 38.90);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, D';
wwv_flow_imp.g_varchar2_table(94) := 'ESCRIPTION, UNIT_PRICE) VALUES (3028, ''228-67501'', ''Battery'', 89.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODU';
wwv_flow_imp.g_varchar2_table(95) := 'CT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3029, ''679-11922'', ''Radiator Cap'', 8.75);'||wwv_flow.LF||
'INSE';
wwv_flow_imp.g_varchar2_table(96) := 'RT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3030, ''110-27450'', ''';
wwv_flow_imp.g_varchar2_table(97) := 'Wiper Blade'', 13.30);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VA';
wwv_flow_imp.g_varchar2_table(98) := 'LUES (3031, ''285-19736'', ''CV Joint'', 53.60);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESC';
wwv_flow_imp.g_varchar2_table(99) := 'RIPTION, UNIT_PRICE) VALUES (3032, ''134-29417'', ''Tie Rod End'', 22.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PROD';
wwv_flow_imp.g_varchar2_table(100) := 'UCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3033, ''472-11503'', ''Ball Joint'', 29.75);'||wwv_flow.LF||
'INSE';
wwv_flow_imp.g_varchar2_table(101) := 'RT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3034, ''659-39041'', ''';
wwv_flow_imp.g_varchar2_table(102) := 'Thermostat'', 18.20);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VAL';
wwv_flow_imp.g_varchar2_table(103) := 'UES (3035, ''372-99083'', ''Headlight Bulb'', 9.45);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, ';
wwv_flow_imp.g_varchar2_table(104) := 'DESCRIPTION, UNIT_PRICE) VALUES (3036, ''457-51278'', ''Tail Light'', 36.10);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (P';
wwv_flow_imp.g_varchar2_table(105) := 'RODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3037, ''647-39918'', ''Fog Light'', 28.35);'||wwv_flow.LF||
'IN';
wwv_flow_imp.g_varchar2_table(106) := 'SERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3038, ''749-12804'',';
wwv_flow_imp.g_varchar2_table(107) := ' ''AC Compressor'', 178.90);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRIC';
wwv_flow_imp.g_varchar2_table(108) := 'E) VALUES (3039, ''200-98517'', ''Heater Core'', 79.40);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CO';
wwv_flow_imp.g_varchar2_table(109) := 'DE, DESCRIPTION, UNIT_PRICE) VALUES (3040, ''315-98264'', ''Blower Motor'', 49.25);'||wwv_flow.LF||
'INSERT INTO DV_PRODU';
wwv_flow_imp.g_varchar2_table(110) := 'CTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3041, ''917-63280'', ''Window Regulator';
wwv_flow_imp.g_varchar2_table(111) := ''', 59.10);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3042,';
wwv_flow_imp.g_varchar2_table(112) := ' ''851-97013'', ''Fuel Tank'', 178.75);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, ';
wwv_flow_imp.g_varchar2_table(113) := 'UNIT_PRICE) VALUES (3043, ''422-66105'', ''Oxygen Sensor'', 41.18);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID,';
wwv_flow_imp.g_varchar2_table(114) := ' PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3044, ''794-52278'', ''Throttle Body'', 154.60);'||wwv_flow.LF||
'INSERT ';
wwv_flow_imp.g_varchar2_table(115) := 'INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3045, ''326-74061'', ''Mas';
wwv_flow_imp.g_varchar2_table(116) := 's Air Flow Sensor'', 129.40);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PR';
wwv_flow_imp.g_varchar2_table(117) := 'ICE) VALUES (3046, ''530-90227'', ''Crankshaft Position Sensor'', 38.50);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODU';
wwv_flow_imp.g_varchar2_table(118) := 'CT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3047, ''673-81239'', ''Camshaft Position Sensor'',';
wwv_flow_imp.g_varchar2_table(119) := ' 33.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3048, ''';
wwv_flow_imp.g_varchar2_table(120) := '945-81040'', ''Engine Mount'', 47.65);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, ';
wwv_flow_imp.g_varchar2_table(121) := 'UNIT_PRICE) VALUES (3049, ''823-11504'', ''Door Handle'', 25.57);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, P';
wwv_flow_imp.g_varchar2_table(122) := 'RODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3050, ''347-33320'', ''Window Switch'', 39.90);'||wwv_flow.LF||
'INSERT INT';
wwv_flow_imp.g_varchar2_table(123) := 'O DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3051, ''422-37140'', ''Hood L';
wwv_flow_imp.g_varchar2_table(124) := 'atch'', 18.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3';
wwv_flow_imp.g_varchar2_table(125) := '052, ''423-64920'', ''Trunk Lock'', 22.20);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTI';
wwv_flow_imp.g_varchar2_table(126) := 'ON, UNIT_PRICE) VALUES (3053, ''610-23855'', ''Rear View Mirror'', 29.10);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PROD';
wwv_flow_imp.g_varchar2_table(127) := 'UCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3054, ''279-47855'', ''Side Mirror'', 54.66);'||wwv_flow.LF||
'INS';
wwv_flow_imp.g_varchar2_table(128) := 'ERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3055, ''287-91542'', ';
wwv_flow_imp.g_varchar2_table(129) := '''Sun Visor'', 16.78);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VAL';
wwv_flow_imp.g_varchar2_table(130) := 'UES (3056, ''504-15784'', ''Seat Belt'', 35.50);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESC';
wwv_flow_imp.g_varchar2_table(131) := 'RIPTION, UNIT_PRICE) VALUES (3057, ''212-47290'', ''Dashboard'', 219.22);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODU';
wwv_flow_imp.g_varchar2_table(132) := 'CT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3058, ''173-79425'', ''Glove Box'', 44.75);'||wwv_flow.LF||
'INSERT';
wwv_flow_imp.g_varchar2_table(133) := ' INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3059, ''188-48394'', ''Ge';
wwv_flow_imp.g_varchar2_table(134) := 'ar Shift Knob'', 17.69);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) ';
wwv_flow_imp.g_varchar2_table(135) := 'VALUES (3060, ''165-70543'', ''Steering Wheel'', 94.50);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CO';
wwv_flow_imp.g_varchar2_table(136) := 'DE, DESCRIPTION, UNIT_PRICE) VALUES (3061, ''584-42051'', ''Speaker'', 33.49);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (';
wwv_flow_imp.g_varchar2_table(137) := 'PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3062, ''485-18411'', ''Radio'', 74.60);'||wwv_flow.LF||
'INSER';
wwv_flow_imp.g_varchar2_table(138) := 'T INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3063, ''785-12721'', ''A';
wwv_flow_imp.g_varchar2_table(139) := 'ntenna'', 13.80);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES ';
wwv_flow_imp.g_varchar2_table(140) := '(3064, ''634-21157'', ''Grille'', 54.19);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION';
wwv_flow_imp.g_varchar2_table(141) := ', UNIT_PRICE) VALUES (3065, ''548-32019'', ''Bumper'', 159.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRO';
wwv_flow_imp.g_varchar2_table(142) := 'DUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3066, ''437-78461'', ''Fender'', 139.50);'||wwv_flow.LF||
'INSERT INTO DV_PRO';
wwv_flow_imp.g_varchar2_table(143) := 'DUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3067, ''816-29547'', ''Hood'', 174.95)';
wwv_flow_imp.g_varchar2_table(144) := ';'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3068, ''497-814';
wwv_flow_imp.g_varchar2_table(145) := '58'', ''Trunk Lid'', 167.75);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRIC';
wwv_flow_imp.g_varchar2_table(146) := 'E) VALUES (3069, ''721-36917'', ''Quarter Panel'', 188.60);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT';
wwv_flow_imp.g_varchar2_table(147) := '_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3070, ''325-19428'', ''Roof Panel'', 234.20);'||wwv_flow.LF||
'INSERT INTO DV_PRO';
wwv_flow_imp.g_varchar2_table(148) := 'DUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3071, ''625-79348'', ''Door Panel'', 1';
wwv_flow_imp.g_varchar2_table(149) := '13.35);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3072, ''2';
wwv_flow_imp.g_varchar2_table(150) := '03-79432'', ''Tailgate'', 149.80);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT';
wwv_flow_imp.g_varchar2_table(151) := '_PRICE) VALUES (3073, ''110-39475'', ''Floor Mat'', 24.40);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT';
wwv_flow_imp.g_varchar2_table(152) := '_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3074, ''645-59320'', ''Seat Cushion'', 64.75);'||wwv_flow.LF||
'INSERT INTO DV_PR';
wwv_flow_imp.g_varchar2_table(153) := 'ODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3075, ''774-22042'', ''Headrest'', 19';
wwv_flow_imp.g_varchar2_table(154) := '.45);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3076, ''308';
wwv_flow_imp.g_varchar2_table(155) := '-79913'', ''Carpet'', 87.85);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRIC';
wwv_flow_imp.g_varchar2_table(156) := 'E) VALUES (3077, ''250-59062'', ''Accelerator Pedal'', 26.34);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PROD';
wwv_flow_imp.g_varchar2_table(157) := 'UCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3078, ''482-96213'', ''Brake Pedal'', 27.83);'||wwv_flow.LF||
'INSERT INTO DV_';
wwv_flow_imp.g_varchar2_table(158) := 'PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3079, ''368-12354'', ''Clutch Peda';
wwv_flow_imp.g_varchar2_table(159) := 'l'', 29.18);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3080';
wwv_flow_imp.g_varchar2_table(160) := ', ''576-31462'', ''Gas Cap'', 8.22);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNI';
wwv_flow_imp.g_varchar2_table(161) := 'T_PRICE) VALUES (3081, ''149-33800'', ''License Plate Frame'', 6.99);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_I';
wwv_flow_imp.g_varchar2_table(162) := 'D, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3082, ''533-50231'', ''Alternator Belt'', 13.50);'||wwv_flow.LF||
'INSE';
wwv_flow_imp.g_varchar2_table(163) := 'RT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3083, ''411-81514'', ''';
wwv_flow_imp.g_varchar2_table(164) := 'Fan Clutch'', 41.10);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VAL';
wwv_flow_imp.g_varchar2_table(165) := 'UES (3084, ''277-48143'', ''Blower Motor Resistor'', 21.45);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUC';
wwv_flow_imp.g_varchar2_table(166) := 'T_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3085, ''214-32013'', ''EGR Valve'', 54.25);'||wwv_flow.LF||
'INSERT INTO DV_PROD';
wwv_flow_imp.g_varchar2_table(167) := 'UCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3086, ''458-41980'', ''Idle Air Contro';
wwv_flow_imp.g_varchar2_table(168) := 'l Valve'', 37.95);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES';
wwv_flow_imp.g_varchar2_table(169) := ' (3087, ''622-40952'', ''PCV Valve'', 9.98);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPT';
wwv_flow_imp.g_varchar2_table(170) := 'ION, UNIT_PRICE) VALUES (3088, ''353-52156'', ''Drive Shaft'', 104.90);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT';
wwv_flow_imp.g_varchar2_table(171) := '_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3089, ''174-28512'', ''Axle Shaft'', 98.45);'||wwv_flow.LF||
'INSERT ';
wwv_flow_imp.g_varchar2_table(172) := 'INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3090, ''938-40174'', ''Dif';
wwv_flow_imp.g_varchar2_table(173) := 'ferential'', 295.87);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VAL';
wwv_flow_imp.g_varchar2_table(174) := 'UES (3091, ''285-62409'', ''Transfer Case'', 385.60);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE,';
wwv_flow_imp.g_varchar2_table(175) := ' DESCRIPTION, UNIT_PRICE) VALUES (3092, ''525-18237'', ''Transmission Pan'', 43.28);'||wwv_flow.LF||
'INSERT INTO DV_PROD';
wwv_flow_imp.g_varchar2_table(176) := 'UCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3093, ''281-46935'', ''Valve Cover'', 6';
wwv_flow_imp.g_varchar2_table(177) := '6.17);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3094, ''34';
wwv_flow_imp.g_varchar2_table(178) := '0-29861'', ''Flywheel'', 179.90);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_';
wwv_flow_imp.g_varchar2_table(179) := 'PRICE) VALUES (3095, ''494-57311'', ''Starter Motor'', 87.90);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PROD';
wwv_flow_imp.g_varchar2_table(180) := 'UCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3096, ''204-49251'', ''Serpentine Belt'', 17.35);'||wwv_flow.LF||
'INSERT INTO';
wwv_flow_imp.g_varchar2_table(181) := ' DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3097, ''581-02249'', ''Timing ';
wwv_flow_imp.g_varchar2_table(182) := 'Chain'', 48.45);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (';
wwv_flow_imp.g_varchar2_table(183) := '3098, ''195-15832'', ''Piston'', 34.14);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION,';
wwv_flow_imp.g_varchar2_table(184) := ' UNIT_PRICE) VALUES (3099, ''310-83197'', ''Engine Oil Pan'', 89.48);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_I';
wwv_flow_imp.g_varchar2_table(185) := 'D, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3100, ''476-21938'', ''Fuel Rail'', 61.59);'||wwv_flow.LF||
'INSERT INT';
wwv_flow_imp.g_varchar2_table(186) := 'O DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3101, ''220-56937'', ''Intake';
wwv_flow_imp.g_varchar2_table(187) := ' Manifold'', 115.30);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VAL';
wwv_flow_imp.g_varchar2_table(188) := 'UES (3102, ''752-49016'', ''Exhaust Manifold'', 129.75);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CO';
wwv_flow_imp.g_varchar2_table(189) := 'DE, DESCRIPTION, UNIT_PRICE) VALUES (3103, ''364-87362'', ''Turbocharger'', 476.19);'||wwv_flow.LF||
'INSERT INTO DV_PROD';
wwv_flow_imp.g_varchar2_table(190) := 'UCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3104, ''857-32146'', ''Supercharger'', ';
wwv_flow_imp.g_varchar2_table(191) := '560.70);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3105, ''';
wwv_flow_imp.g_varchar2_table(192) := '352-41278'', ''Intercooler'', 132.12);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, ';
wwv_flow_imp.g_varchar2_table(193) := 'UNIT_PRICE) VALUES (3106, ''400-51432'', ''Radiator Fan'', 64.50);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, ';
wwv_flow_imp.g_varchar2_table(194) := 'PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3107, ''172-45819'', ''Coolant Reservoir'', 32.29);'||wwv_flow.LF||
'INSER';
wwv_flow_imp.g_varchar2_table(195) := 'T INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VALUES (3108, ''315-41590'', ''H';
wwv_flow_imp.g_varchar2_table(196) := 'eater Hose'', 11.63);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_CODE, DESCRIPTION, UNIT_PRICE) VAL';
wwv_flow_imp.g_varchar2_table(197) := 'UES (3109, ''241-16989'', ''Transmission Cooler'', 81.19);'||wwv_flow.LF||
'INSERT INTO DV_PRODUCTS (PRODUCT_ID, PRODUCT_';
wwv_flow_imp.g_varchar2_table(198) := 'CODE, DESCRIPTION, UNIT_PRICE) VALUES (3110, ''123-49851'', ''Front Axle'', 205.44);'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PURCHASE ORDER ';
wwv_flow_imp.g_varchar2_table(199) := 'DOCUMENT DATA'||wwv_flow.LF||
'-- Products and standalone customers are reference data above. Purchase orders and the';
wwv_flow_imp.g_varchar2_table(200) := 'ir nested line items are seeded through the JSON Relational Duality View API.'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2002'||wwv_flow.LF||
'INSERT ';
wwv_flow_imp.g_varchar2_table(201) := 'INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2002,'||wwv_flow.LF||
'  "po_number": "29374",'||wwv_flow.LF||
'  "status": ';
wwv_flow_imp.g_varchar2_table(202) := '"DRAFT",'||wwv_flow.LF||
'  "date": "2022-11-14T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1003,'||wwv_flow.LF||
'    "name": "Lind';
wwv_flow_imp.g_varchar2_table(203) := 'a Green",'||wwv_flow.LF||
'    "company_name": "Green Autos",'||wwv_flow.LF||
'    "phone": "517-367-7021",'||wwv_flow.LF||
'    "email": "linda.green@';
wwv_flow_imp.g_varchar2_table(204) := 'greencars.com",'||wwv_flow.LF||
'    "address": "4782 West End Ave",'||wwv_flow.LF||
'    "city": "Lansing",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "z';
wwv_flow_imp.g_varchar2_table(205) := 'ip_code": "48906"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": "Leave at front desk",'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(206) := '   "line_item_id": 4004,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "product_code": "154';
wwv_flow_imp.g_varchar2_table(207) := '-32691",'||wwv_flow.LF||
'        "desc": "Spark Plug",'||wwv_flow.LF||
'        "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(208) := '  "unit_price": 4.95,'||wwv_flow.LF||
'      "updated_on": "2022-11-14T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4';
wwv_flow_imp.g_varchar2_table(209) := '005,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3012,'||wwv_flow.LF||
'        "product_code": "872-33410",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(210) := 'sc": "Fuel Injector",'||wwv_flow.LF||
'        "unit_price": 56.4'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 5';
wwv_flow_imp.g_varchar2_table(211) := '6.4,'||wwv_flow.LF||
'      "updated_on": "2023-05-29T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4006,'||wwv_flow.LF||
'      "produ';
wwv_flow_imp.g_varchar2_table(212) := 'ct": {'||wwv_flow.LF||
'        "product_id": 3013,'||wwv_flow.LF||
'        "product_code": "561-49200",'||wwv_flow.LF||
'        "desc": "Alternator"';
wwv_flow_imp.g_varchar2_table(213) := ','||wwv_flow.LF||
'        "unit_price": 154.6'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 154.6,'||wwv_flow.LF||
'      "update';
wwv_flow_imp.g_varchar2_table(214) := 'd_on": "2023-08-18T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2003'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(215) := 'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2003,'||wwv_flow.LF||
'  "po_number": "48390",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-12-2';
wwv_flow_imp.g_varchar2_table(216) := '5T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1004,'||wwv_flow.LF||
'    "name": "Henry Miller",'||wwv_flow.LF||
'    "company_name"';
wwv_flow_imp.g_varchar2_table(217) := ': "Miller Motors",'||wwv_flow.LF||
'    "phone": "517-367-7222",'||wwv_flow.LF||
'    "email": "h.miller@millermotors.com",'||wwv_flow.LF||
'    "addre';
wwv_flow_imp.g_varchar2_table(218) := 'ss": "5201 Eastport Rd",'||wwv_flow.LF||
'    "city": "Grand Rapids",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "49503"'||wwv_flow.LF||
'  },';
wwv_flow_imp.g_varchar2_table(219) := ''||wwv_flow.LF||
'  "delivery_instructions": "Deliver after noon",'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4007';
wwv_flow_imp.g_varchar2_table(220) := ','||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "product_code": "154-32691",'||wwv_flow.LF||
'        "desc"';
wwv_flow_imp.g_varchar2_table(221) := ': "Spark Plug",'||wwv_flow.LF||
'        "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 5,'||wwv_flow.LF||
'      "unit_price": 4.95,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(222) := '     "updated_on": "2024-01-02T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4008,'||wwv_flow.LF||
'      "product": {';
wwv_flow_imp.g_varchar2_table(223) := ''||wwv_flow.LF||
'        "product_id": 3020,'||wwv_flow.LF||
'        "product_code": "687-70547",'||wwv_flow.LF||
'        "desc": "Ignition Coil",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(224) := '       "unit_price": 44.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 44.8,'||wwv_flow.LF||
'      "updated_on"';
wwv_flow_imp.g_varchar2_table(225) := ': "2022-12-25T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4009,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product';
wwv_flow_imp.g_varchar2_table(226) := '_id": 3014,'||wwv_flow.LF||
'        "product_code": "305-34520",'||wwv_flow.LF||
'        "desc": "Radiator",'||wwv_flow.LF||
'        "unit_price": 1';
wwv_flow_imp.g_varchar2_table(227) := '34.2'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 134.2,'||wwv_flow.LF||
'      "updated_on": "2023-06-17T00:00:';
wwv_flow_imp.g_varchar2_table(228) := '00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2004'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": ';
wwv_flow_imp.g_varchar2_table(229) := '2004,'||wwv_flow.LF||
'  "po_number": "50938",'||wwv_flow.LF||
'  "status": "REJECTED",'||wwv_flow.LF||
'  "date": "2022-07-03T00:00:00",'||wwv_flow.LF||
'  "customer":';
wwv_flow_imp.g_varchar2_table(230) := ' {'||wwv_flow.LF||
'    "customer_id": 1005,'||wwv_flow.LF||
'    "name": "Sandra Lee",'||wwv_flow.LF||
'    "company_name": "Lee Engineering",'||wwv_flow.LF||
'    "ph';
wwv_flow_imp.g_varchar2_table(231) := 'one": "517-367-7311",'||wwv_flow.LF||
'    "email": "sandra.lee@leeeng.com",'||wwv_flow.LF||
'    "address": "153 Maple Ave",'||wwv_flow.LF||
'    "cit';
wwv_flow_imp.g_varchar2_table(232) := 'y": "Ann Arbor",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48103"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(233) := '"line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4010,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3012,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(234) := '     "product_code": "872-33410",'||wwv_flow.LF||
'        "desc": "Fuel Injector",'||wwv_flow.LF||
'        "unit_price": 56.4'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(235) := '},'||wwv_flow.LF||
'      "quantity": 3,'||wwv_flow.LF||
'      "unit_price": 56.4,'||wwv_flow.LF||
'      "updated_on": "2022-07-03T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(236) := '   {'||wwv_flow.LF||
'      "line_item_id": 4011,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3015,'||wwv_flow.LF||
'        "product_cod';
wwv_flow_imp.g_varchar2_table(237) := 'e": "703-92034",'||wwv_flow.LF||
'        "desc": "Oil Filter",'||wwv_flow.LF||
'        "unit_price": 7.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": ';
wwv_flow_imp.g_varchar2_table(238) := '1,'||wwv_flow.LF||
'      "unit_price": 7.8,'||wwv_flow.LF||
'      "updated_on": "2023-03-28T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_';
wwv_flow_imp.g_varchar2_table(239) := 'id": 4012,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3016,'||wwv_flow.LF||
'        "product_code": "198-56210",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(240) := '   "desc": "Air Filter",'||wwv_flow.LF||
'        "unit_price": 14.35'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price';
wwv_flow_imp.g_varchar2_table(241) := '": 14.35,'||wwv_flow.LF||
'      "updated_on": "2024-04-10T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2005'||wwv_flow.LF||
'INSERT INTO DV_PU';
wwv_flow_imp.g_varchar2_table(242) := 'RCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2005,'||wwv_flow.LF||
'  "po_number": "11902",'||wwv_flow.LF||
'  "status": "DRAFT",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(243) := ' "date": "2023-09-04T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1006,'||wwv_flow.LF||
'    "name": "James Wilson",';
wwv_flow_imp.g_varchar2_table(244) := ''||wwv_flow.LF||
'    "company_name": "Wilco Parts",'||wwv_flow.LF||
'    "phone": "517-379-1101",'||wwv_flow.LF||
'    "email": "jwilson@wilcoparts.co';
wwv_flow_imp.g_varchar2_table(245) := 'm",'||wwv_flow.LF||
'    "address": "818 Oak St",'||wwv_flow.LF||
'    "city": "Jackson",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "49201"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(246) := ' },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4013,'||wwv_flow.LF||
'      "prod';
wwv_flow_imp.g_varchar2_table(247) := 'uct": {'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "product_code": "154-32691",'||wwv_flow.LF||
'        "desc": "Spark Plug';
wwv_flow_imp.g_varchar2_table(248) := '",'||wwv_flow.LF||
'        "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 4.95,'||wwv_flow.LF||
'      "updated';
wwv_flow_imp.g_varchar2_table(249) := '_on": "2024-02-11T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4014,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "pro';
wwv_flow_imp.g_varchar2_table(250) := 'duct_id": 3030,'||wwv_flow.LF||
'        "product_code": "110-27450",'||wwv_flow.LF||
'        "desc": "Wiper Blade",'||wwv_flow.LF||
'        "unit_pr';
wwv_flow_imp.g_varchar2_table(251) := 'ice": 13.3'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 4,'||wwv_flow.LF||
'      "unit_price": 13.3,'||wwv_flow.LF||
'      "updated_on": "2023-10-15T0';
wwv_flow_imp.g_varchar2_table(252) := '0:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4015,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3014,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(253) := '     "product_code": "305-34520",'||wwv_flow.LF||
'        "desc": "Radiator",'||wwv_flow.LF||
'        "unit_price": 134.2'||wwv_flow.LF||
'      },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(254) := '     "quantity": 5,'||wwv_flow.LF||
'      "unit_price": 134.2,'||wwv_flow.LF||
'      "updated_on": "2023-09-04T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
wwv_flow_imp.g_varchar2_table(255) := '''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2006'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2006,'||wwv_flow.LF||
'  "po_num';
wwv_flow_imp.g_varchar2_table(256) := 'ber": "20475",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-09-18T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "custom';
wwv_flow_imp.g_varchar2_table(257) := 'er_id": 1007,'||wwv_flow.LF||
'    "name": "Jennifer Fox",'||wwv_flow.LF||
'    "company_name": "Fox Fasteners",'||wwv_flow.LF||
'    "phone": "517-367';
wwv_flow_imp.g_varchar2_table(258) := '-7333",'||wwv_flow.LF||
'    "email": "jfox@foxf.com",'||wwv_flow.LF||
'    "address": "234 Grand Ave",'||wwv_flow.LF||
'    "city": "Kalamazoo",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(259) := 'state": "MI",'||wwv_flow.LF||
'    "zip_code": "49001"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": "Call before delivery",'||wwv_flow.LF||
'  "lin';
wwv_flow_imp.g_varchar2_table(260) := 'e_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4016,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3013,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(261) := ' "product_code": "561-49200",'||wwv_flow.LF||
'        "desc": "Alternator",'||wwv_flow.LF||
'        "unit_price": 154.6'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(262) := '   "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 154.6,'||wwv_flow.LF||
'      "updated_on": "2023-01-08T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(263) := '      "line_item_id": 4017,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3022,'||wwv_flow.LF||
'        "product_code": "';
wwv_flow_imp.g_varchar2_table(264) := '410-58327",'||wwv_flow.LF||
'        "desc": "Shock Absorber",'||wwv_flow.LF||
'        "unit_price": 55.4'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": ';
wwv_flow_imp.g_varchar2_table(265) := '2,'||wwv_flow.LF||
'      "unit_price": 55.4,'||wwv_flow.LF||
'      "updated_on": "2022-09-18T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item';
wwv_flow_imp.g_varchar2_table(266) := '_id": 4018,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3041,'||wwv_flow.LF||
'        "product_code": "917-63280",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(267) := '    "desc": "Window Regulator",'||wwv_flow.LF||
'        "unit_price": 59.1'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit';
wwv_flow_imp.g_varchar2_table(268) := '_price": 59.1,'||wwv_flow.LF||
'      "updated_on": "2023-03-16T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2007'||wwv_flow.LF||
'INSERT INTO ';
wwv_flow_imp.g_varchar2_table(269) := 'DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2007,'||wwv_flow.LF||
'  "po_number": "37492",'||wwv_flow.LF||
'  "status": "DRAF';
wwv_flow_imp.g_varchar2_table(270) := 'T",'||wwv_flow.LF||
'  "date": "2022-08-19T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1008,'||wwv_flow.LF||
'    "name": "Michael K';
wwv_flow_imp.g_varchar2_table(271) := 'im",'||wwv_flow.LF||
'    "company_name": "Kim Car Care",'||wwv_flow.LF||
'    "phone": "517-379-1155",'||wwv_flow.LF||
'    "email": "mkim@kimcare.com';
wwv_flow_imp.g_varchar2_table(272) := '",'||wwv_flow.LF||
'    "address": "941 Central Pkwy",'||wwv_flow.LF||
'    "city": "Battle Creek",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code":';
wwv_flow_imp.g_varchar2_table(273) := ' "49015"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4019,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(274) := '     "product": {'||wwv_flow.LF||
'        "product_id": 3041,'||wwv_flow.LF||
'        "product_code": "917-63280",'||wwv_flow.LF||
'        "desc": "';
wwv_flow_imp.g_varchar2_table(275) := 'Window Regulator",'||wwv_flow.LF||
'        "unit_price": 59.1'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 3,'||wwv_flow.LF||
'      "unit_price": 59.1';
wwv_flow_imp.g_varchar2_table(276) := ','||wwv_flow.LF||
'      "updated_on": "2022-08-19T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4020,'||wwv_flow.LF||
'      "product"';
wwv_flow_imp.g_varchar2_table(277) := ': {'||wwv_flow.LF||
'        "product_id": 3015,'||wwv_flow.LF||
'        "product_code": "703-92034",'||wwv_flow.LF||
'        "desc": "Oil Filter",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(278) := '       "unit_price": 7.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 7.8,'||wwv_flow.LF||
'      "updated_on": ';
wwv_flow_imp.g_varchar2_table(279) := '"2023-10-18T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4021,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_i';
wwv_flow_imp.g_varchar2_table(280) := 'd": 3065,'||wwv_flow.LF||
'        "product_code": "548-32019",'||wwv_flow.LF||
'        "desc": "Bumper",'||wwv_flow.LF||
'        "unit_price": 159.9';
wwv_flow_imp.g_varchar2_table(281) := '9'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 159.99,'||wwv_flow.LF||
'      "updated_on": "2023-05-01T00:00:00';
wwv_flow_imp.g_varchar2_table(282) := '"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2008'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 20';
wwv_flow_imp.g_varchar2_table(283) := '08,'||wwv_flow.LF||
'  "po_number": "91203",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-06-11T00:00:00",'||wwv_flow.LF||
'  "customer": ';
wwv_flow_imp.g_varchar2_table(284) := '{'||wwv_flow.LF||
'    "customer_id": 1009,'||wwv_flow.LF||
'    "name": "Patricia Bennett",'||wwv_flow.LF||
'    "company_name": "Bennett Repair",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(285) := ' "phone": "517-367-7444",'||wwv_flow.LF||
'    "email": "pbennett@bennettrepair.com",'||wwv_flow.LF||
'    "address": "1120 N Main St"';
wwv_flow_imp.g_varchar2_table(286) := ','||wwv_flow.LF||
'    "city": "Holland",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "49423"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": ';
wwv_flow_imp.g_varchar2_table(287) := 'null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4022,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3';
wwv_flow_imp.g_varchar2_table(288) := '065,'||wwv_flow.LF||
'        "product_code": "548-32019",'||wwv_flow.LF||
'        "desc": "Bumper",'||wwv_flow.LF||
'        "unit_price": 159.99'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(289) := '   },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 159.99,'||wwv_flow.LF||
'      "updated_on": "2024-02-13T00:00:00"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(290) := ' },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4023,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3077,'||wwv_flow.LF||
'        "produc';
wwv_flow_imp.g_varchar2_table(291) := 't_code": "250-59062",'||wwv_flow.LF||
'        "desc": "Accelerator Pedal",'||wwv_flow.LF||
'        "unit_price": 26.34'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(292) := '  "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 26.34,'||wwv_flow.LF||
'      "updated_on": "2022-06-11T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(293) := '     "line_item_id": 4024,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3080,'||wwv_flow.LF||
'        "product_code": "5';
wwv_flow_imp.g_varchar2_table(294) := '76-31462",'||wwv_flow.LF||
'        "desc": "Gas Cap",'||wwv_flow.LF||
'        "unit_price": 8.22'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 3,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(295) := ' "unit_price": 8.22,'||wwv_flow.LF||
'      "updated_on": "2023-02-09T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2009'||wwv_flow.LF||
'INSERT';
wwv_flow_imp.g_varchar2_table(296) := ' INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2009,'||wwv_flow.LF||
'  "po_number": "77322",'||wwv_flow.LF||
'  "status":';
wwv_flow_imp.g_varchar2_table(297) := ' "DRAFT",'||wwv_flow.LF||
'  "date": "2023-01-16T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1010,'||wwv_flow.LF||
'    "name": "Ste';
wwv_flow_imp.g_varchar2_table(298) := 'ven Carter",'||wwv_flow.LF||
'    "company_name": "Carter Service",'||wwv_flow.LF||
'    "phone": "517-367-7555",'||wwv_flow.LF||
'    "email": "scarte';
wwv_flow_imp.g_varchar2_table(299) := 'r@cartersvc.com",'||wwv_flow.LF||
'    "address": "2999 Industrial Dr",'||wwv_flow.LF||
'    "city": "Muskegon",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(300) := '  "zip_code": "49442"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item';
wwv_flow_imp.g_varchar2_table(301) := '_id": 4025,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3077,'||wwv_flow.LF||
'        "product_code": "250-59062",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(302) := '    "desc": "Accelerator Pedal",'||wwv_flow.LF||
'        "unit_price": 26.34'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "un';
wwv_flow_imp.g_varchar2_table(303) := 'it_price": 26.34,'||wwv_flow.LF||
'      "updated_on": "2024-01-07T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4026,';
wwv_flow_imp.g_varchar2_table(304) := ''||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3090,'||wwv_flow.LF||
'        "product_code": "938-40174",'||wwv_flow.LF||
'        "desc":';
wwv_flow_imp.g_varchar2_table(305) := ' "Differential",'||wwv_flow.LF||
'        "unit_price": 295.87'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 295.';
wwv_flow_imp.g_varchar2_table(306) := '87,'||wwv_flow.LF||
'      "updated_on": "2023-01-16T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4027,'||wwv_flow.LF||
'      "produc';
wwv_flow_imp.g_varchar2_table(307) := 't": {'||wwv_flow.LF||
'        "product_id": 3103,'||wwv_flow.LF||
'        "product_code": "364-87362",'||wwv_flow.LF||
'        "desc": "Turbocharger';
wwv_flow_imp.g_varchar2_table(308) := '",'||wwv_flow.LF||
'        "unit_price": 476.19'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 476.19,'||wwv_flow.LF||
'      "upd';
wwv_flow_imp.g_varchar2_table(309) := 'ated_on": "2022-12-21T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2010'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DAT';
wwv_flow_imp.g_varchar2_table(310) := 'A)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2010,'||wwv_flow.LF||
'  "po_number": "67281",'||wwv_flow.LF||
'  "status": "REJECTED",'||wwv_flow.LF||
'  "date": "2022-11';
wwv_flow_imp.g_varchar2_table(311) := '-29T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1011,'||wwv_flow.LF||
'    "name": "Emily Davis",'||wwv_flow.LF||
'    "company_name';
wwv_flow_imp.g_varchar2_table(312) := '": "Davis Automotive",'||wwv_flow.LF||
'    "phone": "517-367-7666",'||wwv_flow.LF||
'    "email": "emily@davisauth.com",'||wwv_flow.LF||
'    "address';
wwv_flow_imp.g_varchar2_table(313) := '": "1021 S Wheeler Rd",'||wwv_flow.LF||
'    "city": "Saginaw",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48609"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "de';
wwv_flow_imp.g_varchar2_table(314) := 'livery_instructions": "Contact upon arrival",'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4028,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(315) := '    "product": {'||wwv_flow.LF||
'        "product_id": 3013,'||wwv_flow.LF||
'        "product_code": "561-49200",'||wwv_flow.LF||
'        "desc": "A';
wwv_flow_imp.g_varchar2_table(316) := 'lternator",'||wwv_flow.LF||
'        "unit_price": 154.6'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 154.6,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(317) := '   "updated_on": "2022-11-29T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4029,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(318) := '       "product_id": 3016,'||wwv_flow.LF||
'        "product_code": "198-56210",'||wwv_flow.LF||
'        "desc": "Air Filter",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(319) := '  "unit_price": 14.35'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 14.35,'||wwv_flow.LF||
'      "updated_on": "';
wwv_flow_imp.g_varchar2_table(320) := '2023-12-15T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4030,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id';
wwv_flow_imp.g_varchar2_table(321) := '": 3090,'||wwv_flow.LF||
'        "product_code": "938-40174",'||wwv_flow.LF||
'        "desc": "Differential",'||wwv_flow.LF||
'        "unit_price": ';
wwv_flow_imp.g_varchar2_table(322) := '295.87'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 295.87,'||wwv_flow.LF||
'      "updated_on": "2022-12-04T00:';
wwv_flow_imp.g_varchar2_table(323) := '00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2011'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id';
wwv_flow_imp.g_varchar2_table(324) := '": 2011,'||wwv_flow.LF||
'  "po_number": "84012",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-08-27T00:00:00",'||wwv_flow.LF||
'  "custom';
wwv_flow_imp.g_varchar2_table(325) := 'er": {'||wwv_flow.LF||
'    "customer_id": 1012,'||wwv_flow.LF||
'    "name": "William Clark",'||wwv_flow.LF||
'    "company_name": "Clark Parts",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(326) := '"phone": "517-379-1212",'||wwv_flow.LF||
'    "email": "william@clarkparts.com",'||wwv_flow.LF||
'    "address": "1689 River Rd",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(327) := '"city": "Bay City",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48706"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,';
wwv_flow_imp.g_varchar2_table(328) := ''||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4031,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3110,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(329) := '        "product_code": "123-49851",'||wwv_flow.LF||
'        "desc": "Front Axle",'||wwv_flow.LF||
'        "unit_price": 205.44'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(330) := '  },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 205.44,'||wwv_flow.LF||
'      "updated_on": "2023-07-08T00:00:00"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(331) := '},'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4032,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3105,'||wwv_flow.LF||
'        "product';
wwv_flow_imp.g_varchar2_table(332) := '_code": "352-41278",'||wwv_flow.LF||
'        "desc": "Intercooler",'||wwv_flow.LF||
'        "unit_price": 132.12'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "qua';
wwv_flow_imp.g_varchar2_table(333) := 'ntity": 1,'||wwv_flow.LF||
'      "unit_price": 132.12,'||wwv_flow.LF||
'      "updated_on": "2022-08-27T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(334) := '"line_item_id": 4033,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3080,'||wwv_flow.LF||
'        "product_code": "576-31';
wwv_flow_imp.g_varchar2_table(335) := '462",'||wwv_flow.LF||
'        "desc": "Gas Cap",'||wwv_flow.LF||
'        "unit_price": 8.22'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "uni';
wwv_flow_imp.g_varchar2_table(336) := 't_price": 8.22,'||wwv_flow.LF||
'      "updated_on": "2023-09-28T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2012'||wwv_flow.LF||
'INSERT INTO';
wwv_flow_imp.g_varchar2_table(337) := ' DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2012,'||wwv_flow.LF||
'  "po_number": "54812",'||wwv_flow.LF||
'  "status": "DRA';
wwv_flow_imp.g_varchar2_table(338) := 'FT",'||wwv_flow.LF||
'  "date": "2022-12-19T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1013,'||wwv_flow.LF||
'    "name": "Olivia T';
wwv_flow_imp.g_varchar2_table(339) := 'urner",'||wwv_flow.LF||
'    "company_name": "Turner Supplies",'||wwv_flow.LF||
'    "phone": "517-367-7777",'||wwv_flow.LF||
'    "email": "oliviat@tu';
wwv_flow_imp.g_varchar2_table(340) := 'rnersup.com",'||wwv_flow.LF||
'    "address": "9005 N Cedar St",'||wwv_flow.LF||
'    "city": "Flint",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_cod';
wwv_flow_imp.g_varchar2_table(341) := 'e": "48505"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4034';
wwv_flow_imp.g_varchar2_table(342) := ','||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3012,'||wwv_flow.LF||
'        "product_code": "872-33410",'||wwv_flow.LF||
'        "desc"';
wwv_flow_imp.g_varchar2_table(343) := ': "Fuel Injector",'||wwv_flow.LF||
'        "unit_price": 56.4'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 3,'||wwv_flow.LF||
'      "unit_price": 56.4';
wwv_flow_imp.g_varchar2_table(344) := ','||wwv_flow.LF||
'      "updated_on": "2023-08-04T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4035,'||wwv_flow.LF||
'      "product"';
wwv_flow_imp.g_varchar2_table(345) := ': {'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "product_code": "154-32691",'||wwv_flow.LF||
'        "desc": "Spark Plug",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(346) := '       "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 4.95,'||wwv_flow.LF||
'      "updated_on"';
wwv_flow_imp.g_varchar2_table(347) := ': "2022-12-19T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4036,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product';
wwv_flow_imp.g_varchar2_table(348) := '_id": 3041,'||wwv_flow.LF||
'        "product_code": "917-63280",'||wwv_flow.LF||
'        "desc": "Window Regulator",'||wwv_flow.LF||
'        "unit_p';
wwv_flow_imp.g_varchar2_table(349) := 'rice": 59.1'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 59.1,'||wwv_flow.LF||
'      "updated_on": "2024-04-09T';
wwv_flow_imp.g_varchar2_table(350) := '00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2013'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "';
wwv_flow_imp.g_varchar2_table(351) := '_id": 2013,'||wwv_flow.LF||
'  "po_number": "31297",'||wwv_flow.LF||
'  "status": "REJECTED",'||wwv_flow.LF||
'  "date": "2023-05-22T00:00:00",'||wwv_flow.LF||
'  "cust';
wwv_flow_imp.g_varchar2_table(352) := 'omer": {'||wwv_flow.LF||
'    "customer_id": 1014,'||wwv_flow.LF||
'    "name": "Matthew Evans",'||wwv_flow.LF||
'    "company_name": "Evans Group",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(353) := '  "phone": "517-367-7888",'||wwv_flow.LF||
'    "email": "mevans@evansgroup.com",'||wwv_flow.LF||
'    "address": "4222 Westburton Ave';
wwv_flow_imp.g_varchar2_table(354) := '",'||wwv_flow.LF||
'    "city": "Warren",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48091"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": ';
wwv_flow_imp.g_varchar2_table(355) := 'null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4037,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3';
wwv_flow_imp.g_varchar2_table(356) := '077,'||wwv_flow.LF||
'        "product_code": "250-59062",'||wwv_flow.LF||
'        "desc": "Accelerator Pedal",'||wwv_flow.LF||
'        "unit_price":';
wwv_flow_imp.g_varchar2_table(357) := ' 26.34'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 26.34,'||wwv_flow.LF||
'      "updated_on": "2023-11-16T00:0';
wwv_flow_imp.g_varchar2_table(358) := '0:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4038,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3014,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(359) := '  "product_code": "305-34520",'||wwv_flow.LF||
'        "desc": "Radiator",'||wwv_flow.LF||
'        "unit_price": 134.2'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(360) := '  "quantity": 3,'||wwv_flow.LF||
'      "unit_price": 134.2,'||wwv_flow.LF||
'      "updated_on": "2023-07-18T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(361) := '     "line_item_id": 4039,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3065,'||wwv_flow.LF||
'        "product_code": "5';
wwv_flow_imp.g_varchar2_table(362) := '48-32019",'||wwv_flow.LF||
'        "desc": "Bumper",'||wwv_flow.LF||
'        "unit_price": 159.99'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(363) := '  "unit_price": 159.99,'||wwv_flow.LF||
'      "updated_on": "2023-05-22T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2014'||wwv_flow.LF||
'INS';
wwv_flow_imp.g_varchar2_table(364) := 'ERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2014,'||wwv_flow.LF||
'  "po_number": "70085",'||wwv_flow.LF||
'  "statu';
wwv_flow_imp.g_varchar2_table(365) := 's": "DRAFT",'||wwv_flow.LF||
'  "date": "2022-09-09T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1015,'||wwv_flow.LF||
'    "name": "';
wwv_flow_imp.g_varchar2_table(366) := 'Sophia Harris",'||wwv_flow.LF||
'    "company_name": "Harris Fleet",'||wwv_flow.LF||
'    "phone": "517-367-7999",'||wwv_flow.LF||
'    "email": "sophi';
wwv_flow_imp.g_varchar2_table(367) := 'a@harrisfleet.com",'||wwv_flow.LF||
'    "address": "303 Congress St",'||wwv_flow.LF||
'    "city": "Sterling Heights",'||wwv_flow.LF||
'    "state": "';
wwv_flow_imp.g_varchar2_table(368) := 'MI",'||wwv_flow.LF||
'    "zip_code": "48310"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": "Urgent",'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(369) := ' "line_item_id": 4040,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3013,'||wwv_flow.LF||
'        "product_code": "561-4';
wwv_flow_imp.g_varchar2_table(370) := '9200",'||wwv_flow.LF||
'        "desc": "Alternator",'||wwv_flow.LF||
'        "unit_price": 154.6'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(371) := ' "unit_price": 154.6,'||wwv_flow.LF||
'      "updated_on": "2023-01-22T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4';
wwv_flow_imp.g_varchar2_table(372) := '041,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3012,'||wwv_flow.LF||
'        "product_code": "872-33410",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(373) := 'sc": "Fuel Injector",'||wwv_flow.LF||
'        "unit_price": 56.4'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 5';
wwv_flow_imp.g_varchar2_table(374) := '6.4,'||wwv_flow.LF||
'      "updated_on": "2022-09-09T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4042,'||wwv_flow.LF||
'      "produ';
wwv_flow_imp.g_varchar2_table(375) := 'ct": {'||wwv_flow.LF||
'        "product_id": 3030,'||wwv_flow.LF||
'        "product_code": "110-27450",'||wwv_flow.LF||
'        "desc": "Wiper Blade';
wwv_flow_imp.g_varchar2_table(376) := '",'||wwv_flow.LF||
'        "unit_price": 13.3'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 13.3,'||wwv_flow.LF||
'      "updated';
wwv_flow_imp.g_varchar2_table(377) := '_on": "2024-03-12T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2015'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'V';
wwv_flow_imp.g_varchar2_table(378) := 'ALUES (json(''{'||wwv_flow.LF||
'  "_id": 2015,'||wwv_flow.LF||
'  "po_number": "44010",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-07-23';
wwv_flow_imp.g_varchar2_table(379) := 'T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1016,'||wwv_flow.LF||
'    "name": "Benjamin Scott",'||wwv_flow.LF||
'    "company_name';
wwv_flow_imp.g_varchar2_table(380) := '": "Scott Heavy Duty",'||wwv_flow.LF||
'    "phone": "517-367-8001",'||wwv_flow.LF||
'    "email": "ben.scott@shd.com",'||wwv_flow.LF||
'    "address":';
wwv_flow_imp.g_varchar2_table(381) := ' "8822 Remington Dr",'||wwv_flow.LF||
'    "city": "Livonia",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48150"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "deli';
wwv_flow_imp.g_varchar2_table(382) := 'very_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4043,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(383) := '     "product_id": 3015,'||wwv_flow.LF||
'        "product_code": "703-92034",'||wwv_flow.LF||
'        "desc": "Oil Filter",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(384) := '"unit_price": 7.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 7.8,'||wwv_flow.LF||
'      "updated_on": "2022-0';
wwv_flow_imp.g_varchar2_table(385) := '9-30T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4044,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 302';
wwv_flow_imp.g_varchar2_table(386) := '0,'||wwv_flow.LF||
'        "product_code": "687-70547",'||wwv_flow.LF||
'        "desc": "Ignition Coil",'||wwv_flow.LF||
'        "unit_price": 44.8'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(387) := '      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 44.8,'||wwv_flow.LF||
'      "updated_on": "2023-02-10T00:00:00"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(388) := '  },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4045,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "produ';
wwv_flow_imp.g_varchar2_table(389) := 'ct_code": "154-32691",'||wwv_flow.LF||
'        "desc": "Spark Plug",'||wwv_flow.LF||
'        "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quan';
wwv_flow_imp.g_varchar2_table(390) := 'tity": 6,'||wwv_flow.LF||
'      "unit_price": 4.95,'||wwv_flow.LF||
'      "updated_on": "2022-07-23T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO';
wwv_flow_imp.g_varchar2_table(391) := '_ID 2016'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2016,'||wwv_flow.LF||
'  "po_number": "9754';
wwv_flow_imp.g_varchar2_table(392) := '4",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-10-18T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 101';
wwv_flow_imp.g_varchar2_table(393) := '7,'||wwv_flow.LF||
'    "name": "Ava Walker",'||wwv_flow.LF||
'    "company_name": "Walker Imports",'||wwv_flow.LF||
'    "phone": "517-367-8111",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(394) := '"email": "avawalker@walkerimports.com",'||wwv_flow.LF||
'    "address": "1130 S Fieldstone Ct",'||wwv_flow.LF||
'    "city": "Troy",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(395) := '   "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48083"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(396) := '  {'||wwv_flow.LF||
'      "line_item_id": 4046,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3077,'||wwv_flow.LF||
'        "product_code';
wwv_flow_imp.g_varchar2_table(397) := '": "250-59062",'||wwv_flow.LF||
'        "desc": "Accelerator Pedal",'||wwv_flow.LF||
'        "unit_price": 26.34'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "qua';
wwv_flow_imp.g_varchar2_table(398) := 'ntity": 2,'||wwv_flow.LF||
'      "unit_price": 26.34,'||wwv_flow.LF||
'      "updated_on": "2024-01-22T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(399) := 'line_item_id": 4047,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3013,'||wwv_flow.LF||
'        "product_code": "561-492';
wwv_flow_imp.g_varchar2_table(400) := '00",'||wwv_flow.LF||
'        "desc": "Alternator",'||wwv_flow.LF||
'        "unit_price": 154.6'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 3,'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(401) := 'unit_price": 154.6,'||wwv_flow.LF||
'      "updated_on": "2022-10-18T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 404';
wwv_flow_imp.g_varchar2_table(402) := '8,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3090,'||wwv_flow.LF||
'        "product_code": "938-40174",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(403) := '": "Differential",'||wwv_flow.LF||
'        "unit_price": 295.87'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 29';
wwv_flow_imp.g_varchar2_table(404) := '5.87,'||wwv_flow.LF||
'      "updated_on": "2023-06-07T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2017'||wwv_flow.LF||
'INSERT INTO DV_PURCHA';
wwv_flow_imp.g_varchar2_table(405) := 'SE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2017,'||wwv_flow.LF||
'  "po_number": "40598",'||wwv_flow.LF||
'  "status": "REJECTED",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(406) := '"date": "2022-05-13T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1018,'||wwv_flow.LF||
'    "name": "Logan Nelson",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(407) := '    "company_name": "Nelson Autoworks",'||wwv_flow.LF||
'    "phone": "517-367-8222",'||wwv_flow.LF||
'    "email": "logan@nelsonautow';
wwv_flow_imp.g_varchar2_table(408) := 'orks.com",'||wwv_flow.LF||
'    "address": "2508 Sunset Blvd",'||wwv_flow.LF||
'    "city": "Rochester Hills",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(409) := '"zip_code": "48309"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": "Deliver side door",'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(410) := '   "line_item_id": 4049,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3014,'||wwv_flow.LF||
'        "product_code": "305';
wwv_flow_imp.g_varchar2_table(411) := '-34520",'||wwv_flow.LF||
'        "desc": "Radiator",'||wwv_flow.LF||
'        "unit_price": 134.2'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(412) := ' "unit_price": 134.2,'||wwv_flow.LF||
'      "updated_on": "2023-11-27T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4';
wwv_flow_imp.g_varchar2_table(413) := '050,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3015,'||wwv_flow.LF||
'        "product_code": "703-92034",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(414) := 'sc": "Oil Filter",'||wwv_flow.LF||
'        "unit_price": 7.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 7.8,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(415) := '      "updated_on": "2022-05-13T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4051,'||wwv_flow.LF||
'      "product": ';
wwv_flow_imp.g_varchar2_table(416) := '{'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "product_code": "154-32691",'||wwv_flow.LF||
'        "desc": "Spark Plug",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(417) := '     "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 1,'||wwv_flow.LF||
'      "unit_price": 4.95,'||wwv_flow.LF||
'      "updated_on": ';
wwv_flow_imp.g_varchar2_table(418) := '"2022-12-20T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2018'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES ';
wwv_flow_imp.g_varchar2_table(419) := '(json(''{'||wwv_flow.LF||
'  "_id": 2018,'||wwv_flow.LF||
'  "po_number": "61104",'||wwv_flow.LF||
'  "status": "DRAFT",'||wwv_flow.LF||
'  "date": "2022-11-16T00:00:00"';
wwv_flow_imp.g_varchar2_table(420) := ','||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1019,'||wwv_flow.LF||
'    "name": "Chloe Baker",'||wwv_flow.LF||
'    "company_name": "Baker Gar';
wwv_flow_imp.g_varchar2_table(421) := 'age",'||wwv_flow.LF||
'    "phone": "517-367-8333",'||wwv_flow.LF||
'    "email": "chloeb@bakergrg.com",'||wwv_flow.LF||
'    "address": "7413 Warner R';
wwv_flow_imp.g_varchar2_table(422) := 'd",'||wwv_flow.LF||
'    "city": "Southfield",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48076"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructio';
wwv_flow_imp.g_varchar2_table(423) := 'ns": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4052,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_i';
wwv_flow_imp.g_varchar2_table(424) := 'd": 3013,'||wwv_flow.LF||
'        "product_code": "561-49200",'||wwv_flow.LF||
'        "desc": "Alternator",'||wwv_flow.LF||
'        "unit_price": 1';
wwv_flow_imp.g_varchar2_table(425) := '54.6'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 3,'||wwv_flow.LF||
'      "unit_price": 154.6,'||wwv_flow.LF||
'      "updated_on": "2024-02-05T00:00:';
wwv_flow_imp.g_varchar2_table(426) := '00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4053,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3041,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(427) := '"product_code": "917-63280",'||wwv_flow.LF||
'        "desc": "Window Regulator",'||wwv_flow.LF||
'        "unit_price": 59.1'||wwv_flow.LF||
'      },';
wwv_flow_imp.g_varchar2_table(428) := ''||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 59.1,'||wwv_flow.LF||
'      "updated_on": "2023-08-23T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(429) := ' {'||wwv_flow.LF||
'      "line_item_id": 4054,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3077,'||wwv_flow.LF||
'        "product_code"';
wwv_flow_imp.g_varchar2_table(430) := ': "250-59062",'||wwv_flow.LF||
'        "desc": "Accelerator Pedal",'||wwv_flow.LF||
'        "unit_price": 26.34'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quan';
wwv_flow_imp.g_varchar2_table(431) := 'tity": 1,'||wwv_flow.LF||
'      "unit_price": 26.34,'||wwv_flow.LF||
'      "updated_on": "2022-11-16T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- P';
wwv_flow_imp.g_varchar2_table(432) := 'O_ID 2019'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2019,'||wwv_flow.LF||
'  "po_number": "802';
wwv_flow_imp.g_varchar2_table(433) := '14",'||wwv_flow.LF||
'  "status": "REJECTED",'||wwv_flow.LF||
'  "date": "2022-08-14T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 102';
wwv_flow_imp.g_varchar2_table(434) := '0,'||wwv_flow.LF||
'    "name": "David Hall",'||wwv_flow.LF||
'    "company_name": "Hall Mechanics",'||wwv_flow.LF||
'    "phone": "517-367-8444",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(435) := '"email": "dhall@hallmech.com",'||wwv_flow.LF||
'    "address": "1677 Bartlett St",'||wwv_flow.LF||
'    "city": "Farmington Hills",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(436) := '  "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48334"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(437) := ' {'||wwv_flow.LF||
'      "line_item_id": 4055,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3015,'||wwv_flow.LF||
'        "product_code"';
wwv_flow_imp.g_varchar2_table(438) := ': "703-92034",'||wwv_flow.LF||
'        "desc": "Oil Filter",'||wwv_flow.LF||
'        "unit_price": 7.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,';
wwv_flow_imp.g_varchar2_table(439) := ''||wwv_flow.LF||
'      "unit_price": 7.8,'||wwv_flow.LF||
'      "updated_on": "2022-10-07T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id';
wwv_flow_imp.g_varchar2_table(440) := '": 4056,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3012,'||wwv_flow.LF||
'        "product_code": "872-33410",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(441) := ' "desc": "Fuel Injector",'||wwv_flow.LF||
'        "unit_price": 56.4'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price';
wwv_flow_imp.g_varchar2_table(442) := '": 56.4,'||wwv_flow.LF||
'      "updated_on": "2023-05-25T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4057,'||wwv_flow.LF||
'      "p';
wwv_flow_imp.g_varchar2_table(443) := 'roduct": {'||wwv_flow.LF||
'        "product_id": 3011,'||wwv_flow.LF||
'        "product_code": "154-32691",'||wwv_flow.LF||
'        "desc": "Spark P';
wwv_flow_imp.g_varchar2_table(444) := 'lug",'||wwv_flow.LF||
'        "unit_price": 4.95'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 4,'||wwv_flow.LF||
'      "unit_price": 4.95,'||wwv_flow.LF||
'      "upda';
wwv_flow_imp.g_varchar2_table(445) := 'ted_on": "2022-08-14T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-- PO_ID 2020'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA';
wwv_flow_imp.g_varchar2_table(446) := ')'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2020,'||wwv_flow.LF||
'  "po_number": "10401",'||wwv_flow.LF||
'  "status": "COMPLETED",'||wwv_flow.LF||
'  "date": "2022-04';
wwv_flow_imp.g_varchar2_table(447) := '-23T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 1021,'||wwv_flow.LF||
'    "name": "Grace Adams",'||wwv_flow.LF||
'    "company_name';
wwv_flow_imp.g_varchar2_table(448) := '": "Adams Supplies",'||wwv_flow.LF||
'    "phone": "517-367-8555",'||wwv_flow.LF||
'    "email": "grace@adamssup.com",'||wwv_flow.LF||
'    "address": ';
wwv_flow_imp.g_varchar2_table(449) := '"4115 Sherwood Ln",'||wwv_flow.LF||
'    "city": "Westland",'||wwv_flow.LF||
'    "state": "MI",'||wwv_flow.LF||
'    "zip_code": "48185"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "deliv';
wwv_flow_imp.g_varchar2_table(450) := 'ery_instructions": null,'||wwv_flow.LF||
'  "line_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4058,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(451) := '    "product_id": 3014,'||wwv_flow.LF||
'        "product_code": "305-34520",'||wwv_flow.LF||
'        "desc": "Radiator",'||wwv_flow.LF||
'        "un';
wwv_flow_imp.g_varchar2_table(452) := 'it_price": 134.2'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 134.2,'||wwv_flow.LF||
'      "updated_on": "2022-';
wwv_flow_imp.g_varchar2_table(453) := '04-23T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4059,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 30';
wwv_flow_imp.g_varchar2_table(454) := '90,'||wwv_flow.LF||
'        "product_code": "938-40174",'||wwv_flow.LF||
'        "desc": "Differential",'||wwv_flow.LF||
'        "unit_price": 295.8';
wwv_flow_imp.g_varchar2_table(455) := '7'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 295.87,'||wwv_flow.LF||
'      "updated_on": "2024-03-04T00:00:00';
wwv_flow_imp.g_varchar2_table(456) := '"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4060,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3065,'||wwv_flow.LF||
'        "p';
wwv_flow_imp.g_varchar2_table(457) := 'roduct_code": "548-32019",'||wwv_flow.LF||
'        "desc": "Bumper",'||wwv_flow.LF||
'        "unit_price": 159.99'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "qu';
wwv_flow_imp.g_varchar2_table(458) := 'antity": 3,'||wwv_flow.LF||
'      "unit_price": 159.99,'||wwv_flow.LF||
'      "updated_on": "2023-07-30T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
''||wwv_flow.LF||
'-';
wwv_flow_imp.g_varchar2_table(459) := '- PO_ID 2021'||wwv_flow.LF||
'INSERT INTO DV_PURCHASE_ORDER_DV (DATA)'||wwv_flow.LF||
'VALUES (json(''{'||wwv_flow.LF||
'  "_id": 2021,'||wwv_flow.LF||
'  "po_number": "';
wwv_flow_imp.g_varchar2_table(460) := '90218",'||wwv_flow.LF||
'  "status": "DRAFT",'||wwv_flow.LF||
'  "date": "2022-06-06T00:00:00",'||wwv_flow.LF||
'  "customer": {'||wwv_flow.LF||
'    "customer_id": 102';
wwv_flow_imp.g_varchar2_table(461) := '2,'||wwv_flow.LF||
'    "name": "Jackson Perez",'||wwv_flow.LF||
'    "company_name": "Perez Automotive",'||wwv_flow.LF||
'    "phone": "517-367-8666",';
wwv_flow_imp.g_varchar2_table(462) := ''||wwv_flow.LF||
'    "email": "jperez@perezauto.com",'||wwv_flow.LF||
'    "address": "8799 Candlewood Dr",'||wwv_flow.LF||
'    "city": "Novi",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(463) := 'state": "MI",'||wwv_flow.LF||
'    "zip_code": "48375"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "delivery_instructions": "Deliver rear entrance",'||wwv_flow.LF||
'  "li';
wwv_flow_imp.g_varchar2_table(464) := 'ne_items": ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_id": 4061,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3041,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(465) := '  "product_code": "917-63280",'||wwv_flow.LF||
'        "desc": "Window Regulator",'||wwv_flow.LF||
'        "unit_price": 59.1'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(466) := '},'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "unit_price": 59.1,'||wwv_flow.LF||
'      "updated_on": "2023-04-13T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(467) := '   {'||wwv_flow.LF||
'      "line_item_id": 4062,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3015,'||wwv_flow.LF||
'        "product_cod';
wwv_flow_imp.g_varchar2_table(468) := 'e": "703-92034",'||wwv_flow.LF||
'        "desc": "Oil Filter",'||wwv_flow.LF||
'        "unit_price": 7.8'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": ';
wwv_flow_imp.g_varchar2_table(469) := '2,'||wwv_flow.LF||
'      "unit_price": 7.8,'||wwv_flow.LF||
'      "updated_on": "2022-06-06T00:00:00"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "line_item_';
wwv_flow_imp.g_varchar2_table(470) := 'id": 4063,'||wwv_flow.LF||
'      "product": {'||wwv_flow.LF||
'        "product_id": 3077,'||wwv_flow.LF||
'        "product_code": "250-59062",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(471) := '   "desc": "Accelerator Pedal",'||wwv_flow.LF||
'        "unit_price": 26.34'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      "quantity": 2,'||wwv_flow.LF||
'      "uni';
wwv_flow_imp.g_varchar2_table(472) := 't_price": 26.34,'||wwv_flow.LF||
'      "updated_on": "2023-03-08T00:00:00"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}''));'||wwv_flow.LF||
'';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(5528903490347455713)
,p_install_id=>wwv_flow_imp.id(5528902706493450773)
,p_name=>'Insert Data'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
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
