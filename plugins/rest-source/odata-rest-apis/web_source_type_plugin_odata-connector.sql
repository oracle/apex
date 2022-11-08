--------------------------------------------------------------------------------
-- Name: Sample ODATA-Connector
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>20
,p_default_application_id=>773
,p_default_id_offset=>1336332408777362883
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 773 - Sample ODATA-Connector
--
-- Application Export:
--   Application:     773
--   Name:            Sample ODATA-Connector
--   Date and Time:   09:17 Monday November 7, 2022
--   Exported By:     CARSTEN
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 1356835520525889540
--   Manifest End
--   Version:         22.1.0
--   Instance ID:     697845941895809
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/web_source_type/odata_connector
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1356835520525889540)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_name=>'ODATA-CONNECTOR'
,p_display_name=>'OData REST Service'
,p_supported_ui_types=>'DESKTOP'
,p_api_version=>2
,p_wsm_capabilities_function=>'plg_odata_connector.capabilities_web_source'
,p_wsm_fetch_function=>'plg_odata_connector.fetch_web_source'
,p_wsm_discover_function=>'plg_odata_connector.discover'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>false
,p_version_identifier=>'1.0.0'
,p_plugin_comment=>'This is only a part of the full plugin and is for testing the orderby functionality'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1356835734025889541)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Resource Path'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Resource Paths with Parameters',
'<ul>',
'  <li><code>Categories(:cat_id)/Products</code></li>',
'  <li><code>Categories(:cat_id)</code></li>',
'  <li><code>GetNearestAirport(lat=:lat,lon=:lon)</code></li>',
'</ul>',
'',
'<br>',
'',
'Resource Path without any Parameter</code>',
'<ul>',
'  <li><code>Categories</code></li>',
'</ul>',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This attribute provides the path to access the resource of the service. It will be appended to the ODATA service''s root URL provided as the value of the "URL Endpoint". The resource path can include parameters.',
'<br>',
'<br>',
'',
'Service Root URL (URL Endpoint)',
'<ul>',
'  <li><code>http://host:port/path/Service.svc</code></li>',
'</ul>',
'',
'<br>',
'Resource Path',
'<ul>',
'<li><code>Categories(1)/Products</code></li>',
'</ul>',
'',
'<br>',
'',
'Query Options',
'<ul>',
'  <li><code>?$top=2&$orderby=Name</code></li>',
'</ul>',
'',
'<br>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_URLComponents</em>',
'<br>',
'<br>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1356836119412889542)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Parameter Default Value'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<code>',
':lat{33}',
'<br>',
':lon{118}',
'</code>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This Attribute is used to pass the default values for parameters in the Resource Path.<p>',
'<p>This attribute is structured as follows:<br>                                                                       ',
'<code>:param_name_1{param_value_1}:param_name_2{param_value_2}</code></p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_AddressingEntities</em>',
'<br><br>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1363754491920246653)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Basic Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<code>http://host/service/Products?$orderby=ReleaseDate desc&$select=ID,Rating,ReleaseDate,ProductName,Color&$search=(red and hardware)</code>',
'',
'<br><br>',
'',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#_Toc31361041</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1363756694987249412)
,p_plugin_attribute_id=>wwv_flow_imp.id(1363754491920246653)
,p_display_sequence=>10
,p_display_value=>' Source supports ordering'
,p_return_value=>'option_orderby'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The $orderby system query option allows clients to request resources in a particular order.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#_Toc31361041</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1363757034982250684)
,p_plugin_attribute_id=>wwv_flow_imp.id(1363754491920246653)
,p_display_sequence=>20
,p_display_value=>' Source supports querying of specific columns'
,p_return_value=>'option_select'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The $select system query option allows clients to request a specific set of columns.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#_Toc31361040</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1363758373700251973)
,p_plugin_attribute_id=>wwv_flow_imp.id(1363754491920246653)
,p_display_sequence=>30
,p_display_value=>' Source supports row searching'
,p_return_value=>'option_search'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The $search system query option allows clients to request items within a collection matching a free-text search expression.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_SystemQueryOptionsearch</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1363760906448263251)
,p_plugin_attribute_id=>wwv_flow_imp.id(1363754491920246653)
,p_display_sequence=>40
,p_display_value=>' Source supports client-driven pagination'
,p_return_value=>'option_client_driven_paging'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The OData Client deals with client-driven paging using $skip and $top query options.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part1-protocol/odata-v4.0-errata03-os-part1-protocol-complete.html#_The_$skip_System</em>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1356838484308889543)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Source supports case insensitive filtering'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'none'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356839327712889543)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356838484308889543)
,p_display_sequence=>10
,p_display_value=>'None'
,p_return_value=>'none'
,p_help_text=>'<p>Neither lowercase nor uppercase are supported.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356839890160889543)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356838484308889543)
,p_display_sequence=>20
,p_display_value=>'Lowercase'
,p_return_value=>'filter_lower'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <code>tolower</code> function returns the input parameter string value with all uppercase characters converted to lowercase according to Unicode rules.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#_Toc31360993</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356838898471889543)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356838484308889543)
,p_display_sequence=>30
,p_display_value=>'Uppercase'
,p_return_value=>'filter_upper'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <code>toupper</code> function returns the input parameter string value with all lowercase characters converted to uppercase according to Unicode rules.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_toupper</em>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1356840387319889543)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Pass Query Options in the Request Body'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The query options part of an OData URL can be quite long, potentially exceeding the maximum length of URLs supported by components involved in transmitting or processing the request.</p>',
'<p>An alternative for GET requests is to append <code>/$query</code> to the resource path of the URL, use the POST instead of GET, and pass the query options part of the URL in the request body.</p>',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_PassingQueryOptionsintheRequestBody</em>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1356840792014889543)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Source supports Total Row Count method'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_show_in_wizard=>false
,p_default_value=>'count_none'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356842171837889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356840792014889543)
,p_display_sequence=>10
,p_display_value=>'None'
,p_return_value=>'count_none'
,p_help_text=>'<p>None of the methods is supported</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356842672864889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356840792014889543)
,p_display_sequence=>20
,p_display_value=>'Inline'
,p_return_value=>'count_true_inline'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <code>$count=true</code> query option specifies that the total count of items for the request should be returned along with the result.</p>',
'',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_SystemQueryOptioncount</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356841610013889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356840792014889543)
,p_display_sequence=>30
,p_display_value=>'Separate Request'
,p_return_value=>'count_not_inline'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This method issues a separate GET request with <code>/$count</code> appended to the resource path of URL to receive the total row count for the request.</p>',
'',
'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_AddressingtheCountofaCollection</em>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356841167678889543)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356840792014889543)
,p_display_sequence=>40
,p_display_value=>'Inline "allpages" (Legacy)'
,p_return_value=>'count_allpages_inline'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <code>$inlinecount=allpages</code> query option specifies that the total count of items for the request should be returned along with the result.</p>',
'<p>This is often used by older ODATA Sources.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1356843165090889544)
,p_plugin_id=>wwv_flow_imp.id(1356835520525889540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Supported Data Operators'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<em>http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#sec_StringandCollectionFunctions</em>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356843583146889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356843165090889544)
,p_display_sequence=>10
,p_display_value=>' contains'
,p_return_value=>'filter_contains'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <code>contains</code> function checks whether a text is a substring of another string.</p>',
'<p>The string comparison distinguishes between upper and lower case by default. If you also want to be case-insensitive, please select <code>Uppercase</code> or <code>Lowercase</code> as the case insensitive method.</p>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356844073560889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356843165090889544)
,p_display_sequence=>20
,p_display_value=>' in'
,p_return_value=>'filter_in'
,p_help_text=>'<p>The <code>in</code> Operator determines whether a value matches all values in a list.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356844534628889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356843165090889544)
,p_display_sequence=>30
,p_display_value=>' starts with'
,p_return_value=>'filter_startswith'
,p_help_text=>'<p>The <code>startswith</code> operator determines whether a string begins with the search term.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1356845088087889544)
,p_plugin_attribute_id=>wwv_flow_imp.id(1356843165090889544)
,p_display_sequence=>40
,p_display_value=>' ends with'
,p_return_value=>'filter_endswith'
,p_help_text=>'<p>The <code>endswith</code> operator determines whether a string ends with the search term.</p>'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
