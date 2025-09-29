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
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_default_workspace_id=>12345678901234567890
);
end;
/
prompt --workspace/rest-source-catalogs/25C_grc
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>'grc (Release 25C)'
,p_internal_name=>'25C_GRC'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-manual-removal-details
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Manual Removal Details",'||wwv_flow.LF||
'    "server_prefix" ';
wwv_flow_imp.g_varchar2_table(2) := ': "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessManualRemovalDetails",'||wwv_flow.LF||
'    "des';
wwv_flow_imp.g_varchar2_table(3) := 'cription" : "The advanced access manual removals resource is used to get the history of all role ass';
wwv_flow_imp.g_varchar2_table(4) := 'ignments that were manually removed by authorized administrative users.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(5) := ' "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(6) := ' "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(7) := 'VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(8) := '      "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : ';
wwv_flow_imp.g_varchar2_table(9) := '"APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(10) := '    "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE"';
wwv_flow_imp.g_varchar2_table(11) := ','||wwv_flow.LF||
'        "description" : "The timestamp at which the manual access removal was recorded.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(12) := '"has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(13) := ': "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(14) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERGUID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(15) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of the user whose acces';
wwv_flow_imp.g_varchar2_table(16) := 's is being revoked.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(17) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(18) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MANUALREMOVALID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(19) := ': "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of the manual access removal ';
wwv_flow_imp.g_varchar2_table(20) := 'action.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(21) := '        "selector" : "ManualRemovalId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(22) := '"REMOVALCOMMENTS",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(23) := 'RCHAR2",'||wwv_flow.LF||
'        "description" : "The comments of the administrative user performing the removal act';
wwv_flow_imp.g_varchar2_table(24) := 'ion.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(25) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RemovalComments",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },';
wwv_flow_imp.g_varchar2_table(26) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(27) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name of the user whose acces';
wwv_flow_imp.g_varchar2_table(28) := 's is being revoked.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(29) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserDisplayName",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(30) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REMOVEDBYUSERGUID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(31) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of the administr';
wwv_flow_imp.g_varchar2_table(32) := 'ative user performing the removal action.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(33) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RemovedByUserGuid';
wwv_flow_imp.g_varchar2_table(34) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REMOVEDBYDISPLAYNAME",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(35) := 'ence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(36) := ' "The display name of the administrative user performing the removal action.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(37) := ': 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(38) := '    "selector" : "RemovedByDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attr';
wwv_flow_imp.g_varchar2_table(39) := 'ibutes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessManualRemovalDetails",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" ';
wwv_flow_imp.g_varchar2_table(40) := ': "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH';
wwv_flow_imp.g_varchar2_table(41) := '_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(42) := '    ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW';
wwv_flow_imp.g_varchar2_table(43) := '",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters';
wwv_flow_imp.g_varchar2_table(44) := '" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23275711719679193)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Manual Removal Details}'
,p_description=>'The advanced access manual removals resource is used to get the history of all role assignments that were manually removed by authorized administrative users.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessManualRemovalDetails'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-manual-removal-roles
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Manual Removal Roles",'||wwv_flow.LF||
'    "server_prefix" : ';
wwv_flow_imp.g_varchar2_table(2) := '"/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessManualRemovalRoles",'||wwv_flow.LF||
'    "descrip';
wwv_flow_imp.g_varchar2_table(3) := 'tion" : "The advanced access manual removal roles resource is used to search for user role assignmen';
wwv_flow_imp.g_varchar2_table(4) := 'ts that were manually removed by authorized administrative users.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_';
wwv_flow_imp.g_varchar2_table(5) := 'selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX';
wwv_flow_imp.g_varchar2_table(6) := '$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(7) := 'R2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(8) := '"is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$';
wwv_flow_imp.g_varchar2_table(9) := 'ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MANUALREMOVALID",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(10) := ' "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(11) := 'n" : "The ID of the manual access removal action.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(12) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ManualRemovalId",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(13) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLEDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(14) := 'mary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name of the ';
wwv_flow_imp.g_varchar2_table(15) := 'role being removed.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(16) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleDisplayName",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(17) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REMOVALDETAILID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(18) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of the manual access';
wwv_flow_imp.g_varchar2_table(19) := ' removal detail.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(20) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "RemovalDetailId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(21) := '"name" : "ROLECODE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(22) := 'VARCHAR2",'||wwv_flow.LF||
'        "description" : "The code of the role being removed.",'||wwv_flow.LF||
'        "max_length" : 400';
wwv_flow_imp.g_varchar2_table(23) := '0,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(24) := ' "selector" : "RoleCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(25) := '   "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessManualRemovalRoles",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "ope';
wwv_flow_imp.g_varchar2_table(26) := 'rations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(27) := '   "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(28) := ' },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pat';
wwv_flow_imp.g_varchar2_table(29) := 'tern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(30) := ' ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23275812058679194)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Manual Removal Roles}'
,p_description=>'The advanced access manual removal roles resource is used to search for user role assignments that were manually removed by authorized administrative users.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessManualRemovalRoles'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-manual-removal-requests
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Manual Removal Requests",'||wwv_flow.LF||
'    "server_prefix"';
wwv_flow_imp.g_varchar2_table(2) := ' : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessManualRemovals",'||wwv_flow.LF||
'    "descript';
wwv_flow_imp.g_varchar2_table(3) := 'ion" : "The advanced access manual removals resource is used to get a history view of all users whos';
wwv_flow_imp.g_varchar2_table(4) := 'e accesses (i.e., roles) were manually removed by authorized administrative users.",'||wwv_flow.LF||
'    "format" : ';
wwv_flow_imp.g_varchar2_table(5) := '"JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(6) := '   "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(7) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(8) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribu';
wwv_flow_imp.g_varchar2_table(9) := 'te_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATION';
wwv_flow_imp.g_varchar2_table(10) := 'DATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH';
wwv_flow_imp.g_varchar2_table(11) := ' TIME ZONE",'||wwv_flow.LF||
'        "description" : "The timestamp at which the manual access removal was recorded.';
wwv_flow_imp.g_varchar2_table(12) := '",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(13) := '"selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(15) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The person ID of the us';
wwv_flow_imp.g_varchar2_table(16) := 'er.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(17) := '    "selector" : "PersonId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERGUID",';
wwv_flow_imp.g_varchar2_table(18) := ''||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(19) := 'description" : "The GUID of the user whose access is being revoked.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(20) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(21) := 'ctor" : "UserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MANUALREMOVALID",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(22) := '       "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(23) := 'ription" : "The ID of the manual access removal action.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(24) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ManualRemovalId",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(25) := 'common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REMOVALCOMMENTS",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(26) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The comments of th';
wwv_flow_imp.g_varchar2_table(27) := 'e administrative user performing the removal action.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(28) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Remo';
wwv_flow_imp.g_varchar2_table(29) := 'valComments",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERDISPLAYNAME",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(30) := ' "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descript';
wwv_flow_imp.g_varchar2_table(31) := 'ion" : "The display name of the user whose access is being revoked.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(32) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(33) := 'ctor" : "UserDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REMOVEDBYUSE';
wwv_flow_imp.g_varchar2_table(34) := 'RGUID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(35) := '      "description" : "The GUID of the administrative user performing the removal action.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(36) := '"max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(37) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "RemovedByUserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(38) := '  "name" : "REMOVEDBYDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(39) := 'data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name of the administrative user perfor';
wwv_flow_imp.g_varchar2_table(40) := 'ming the removal action.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(41) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RemovedByDisplayName",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(42) := '_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAcce';
wwv_flow_imp.g_varchar2_table(43) := 'ssManualRemovals",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : ';
wwv_flow_imp.g_varchar2_table(44) := '"GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetc';
wwv_flow_imp.g_varchar2_table(45) := 'h_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(46) := '  "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allo';
wwv_flow_imp.g_varchar2_table(47) := 'w_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23275948566679194)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Manual Removal Requests}'
,p_description=>'The advanced access manual removals resource is used to get a history view of all users whose accesses (i.e., roles) were manually removed by authorized administrative users.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessManualRemovals'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/access-performance-configuration
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Access Performance Configuration",'||wwv_flow.LF||
'    "server_prefix" : "/fs';
wwv_flow_imp.g_varchar2_table(2) := 'cmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessPerformanceConfigurations",'||wwv_flow.LF||
'    "desc';
wwv_flow_imp.g_varchar2_table(3) := 'ription" : "The Access Performance Configuration resource sets limits on the number of result record';
wwv_flow_imp.g_varchar2_table(4) := 's that access models can return.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_sing';
wwv_flow_imp.g_varchar2_table(5) := 'le_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(6) := ' : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(8) := 'elector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(9) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "VALUE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(10) := ' "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The value of the result-record limi';
wwv_flow_imp.g_varchar2_table(11) := 't per model.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(12) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Value",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(13) := '     {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(14) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The key to get result-record limit per model.",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(15) := '   "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(16) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_att';
wwv_flow_imp.g_varchar2_table(17) := 'ributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessPerformanceConfigurations",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(18) := '  "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : ';
wwv_flow_imp.g_varchar2_table(19) := '"FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters';
wwv_flow_imp.g_varchar2_table(20) := '" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SING';
wwv_flow_imp.g_varchar2_table(21) := 'LE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "para';
wwv_flow_imp.g_varchar2_table(22) := 'meters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276016989679194)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Access Performance Configuration}'
,p_description=>'The Access Performance Configuration resource sets limits on the number of result records that access models can return.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessPerformanceConfigurations'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-approvals/access-request-procurement-agent-security-values
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Approvals/Access Request Procurement ';
wwv_flow_imp.g_varchar2_table(2) := 'Agent Security Values",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/a';
wwv_flow_imp.g_varchar2_table(3) := 'dvancedAccessRequestApprovals/{AccessRequestId}/child/securityValues",'||wwv_flow.LF||
'    "description" : "The secu';
wwv_flow_imp.g_varchar2_table(4) := 'rity values resource is used to view procurement business units associated to an access request.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(5) := '   "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    [';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y"';
wwv_flow_imp.g_varchar2_table(7) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(8) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(9) := 'remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(10) := 'e" : "SECURITYVALUEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(11) := ': "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ID of the business unit.",'||wwv_flow.LF||
'        "max_length" : 37,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(12) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(13) := 'ctor" : "SecurityValueId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUES';
wwv_flow_imp.g_varchar2_table(14) := 'TID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(15) := '  "description" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(16) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(17) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURITYVALUE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(18) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the bus';
wwv_flow_imp.g_varchar2_table(19) := 'iness unit.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(20) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurityValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(21) := '  }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestApprovals"';
wwv_flow_imp.g_varchar2_table(22) := ','||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "dat';
wwv_flow_imp.g_varchar2_table(23) := 'abase_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N"';
wwv_flow_imp.g_varchar2_table(24) := ','||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_opera';
wwv_flow_imp.g_varchar2_table(25) := 'tion" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows"';
wwv_flow_imp.g_varchar2_table(26) := ' : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "A';
wwv_flow_imp.g_varchar2_table(27) := 'ccessRequestId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_requi';
wwv_flow_imp.g_varchar2_table(28) := 'red" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_w';
wwv_flow_imp.g_varchar2_table(29) := 'hen_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276141274679194)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Approvals/Access Request Procurement Agent Security Values}'
,p_description=>'The security values resource is used to view procurement business units associated to an access request.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestApprovals/{AccessRequestId}/child/securityValues'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-approvals/access-request-procurement-agent-checks
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Approvals/Access Request Procurement ';
wwv_flow_imp.g_varchar2_table(2) := 'Agent Checks",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAc';
wwv_flow_imp.g_varchar2_table(3) := 'cessRequestApprovals/{AccessRequestId}/child/checkProcurement",'||wwv_flow.LF||
'    "description" : "The check perfo';
wwv_flow_imp.g_varchar2_table(4) := 'rmed on an access request for procurement.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(5) := '  "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(6) := '"sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(7) := 'h" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(8) := '        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(9) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HASPROCUREMENTACCESS",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(10) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean va';
wwv_flow_imp.g_varchar2_table(11) := 'lue that indicates if an access request has procurement records.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(12) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(13) := '" : "HasProcurementAccess",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUE';
wwv_flow_imp.g_varchar2_table(14) := 'STID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(15) := '   "description" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(16) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(17) := 's_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAcc';
wwv_flow_imp.g_varchar2_table(18) := 'essRequestApprovals",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation"';
wwv_flow_imp.g_varchar2_table(19) := ' : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_f';
wwv_flow_imp.g_varchar2_table(20) := 'etch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(21) := '     "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "a';
wwv_flow_imp.g_varchar2_table(22) := 'llow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(23) := ' {'||wwv_flow.LF||
'      "name" : "AccessRequestId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(24) := 'R2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" ';
wwv_flow_imp.g_varchar2_table(25) := ': "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276293405679194)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Approvals/Access Request Procurement Agent Checks}'
,p_description=>'The check performed on an access request for procurement.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestApprovals/{AccessRequestId}/child/checkProcurement'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-approvals
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Approvals",'||wwv_flow.LF||
'    "server_prefix" : "/f';
wwv_flow_imp.g_varchar2_table(2) := 'scmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessRequestApprovals",'||wwv_flow.LF||
'    "description"';
wwv_flow_imp.g_varchar2_table(3) := ' : "The advanced access request approval resource is used to administer and approve role access requ';
wwv_flow_imp.g_varchar2_table(4) := 'ests.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns';
wwv_flow_imp.g_varchar2_table(5) := '" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_k';
wwv_flow_imp.g_varchar2_table(6) := 'ey" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(7) := '"N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(8) := '        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(9) := '     "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(10) := 'type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The timestamp at which the access reque';
wwv_flow_imp.g_varchar2_table(11) := 'st was recorded.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(12) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftz';
wwv_flow_imp.g_varchar2_table(13) := 'h:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISTEMPORARYACCESS",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(14) := 'quence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(15) := ' : "Indicates if the request is time bound.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : nu';
wwv_flow_imp.g_varchar2_table(16) := 'll,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsTemporaryAcces';
wwv_flow_imp.g_varchar2_table(17) := 's",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'        "sequence';
wwv_flow_imp.g_varchar2_table(18) := '" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(19) := 'e ID of a submitted access request.",'||wwv_flow.LF||
'        "max_length" : 18,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(20) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(21) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISANALYZINGRISK",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(22) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean val';
wwv_flow_imp.g_varchar2_table(23) := 'ue that indicates if the risk analysis job is currently running.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(24) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(25) := '" : "IsAnalyzingRisk",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTEDBYUSE';
wwv_flow_imp.g_varchar2_table(26) := 'RVALID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(27) := '       "description" : "Boolean value that indicates if the person who submitted the access request ';
wwv_flow_imp.g_varchar2_table(28) := 'is still a valid user in the system.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(29) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsRequestedByUserValid"';
wwv_flow_imp.g_varchar2_table(30) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYUSERGUID",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(31) := 'ce" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(32) := 'The GUID of the person submitting the access request.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(33) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Reque';
wwv_flow_imp.g_varchar2_table(34) := 'stedByUserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLANALYSISCOMPLET';
wwv_flow_imp.g_varchar2_table(35) := 'EDON",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(36) := ' "description" : "The date of the last successful analysis job run against active access controls.",';
wwv_flow_imp.g_varchar2_table(37) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(38) := 'selector" : "ControlAnalysisCompletedOn",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(39) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(40) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name o';
wwv_flow_imp.g_varchar2_table(41) := 'f the person the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(42) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedForDis';
wwv_flow_imp.g_varchar2_table(43) := 'playName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYDISPLAYNAME",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(44) := '     "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(45) := 'cription" : "The display name of the person submitting the access request.",'||wwv_flow.LF||
'        "max_length" : ';
wwv_flow_imp.g_varchar2_table(46) := '255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(47) := '   "selector" : "RequestedByDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(48) := ': "PERSONID",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER';
wwv_flow_imp.g_varchar2_table(49) := '",'||wwv_flow.LF||
'        "description" : "The person ID of the user.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(50) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonId",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(51) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORUSERGUID",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(52) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of the pers';
wwv_flow_imp.g_varchar2_table(53) := 'on the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(54) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedForUserGuid",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(55) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JUSTIFICATION",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(56) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A brief ex';
wwv_flow_imp.g_varchar2_table(57) := 'planation for the access request.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(58) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Justification",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(59) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TOTALCONTROLSCOUNT",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(60) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The total n';
wwv_flow_imp.g_varchar2_table(61) := 'umber of active controls at the time the request was submitted.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(62) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TotalControlsCount",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(63) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTEDFORUSERVALID",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(64) := 'nce" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(65) := ' "Boolean value that indicates if the requested-for person is still a valid user in the system.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(66) := '      "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filte';
wwv_flow_imp.g_varchar2_table(67) := 'rable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsRequestedForUserValid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(68) := '   {'||wwv_flow.LF||
'        "name" : "CONTROLVIOLATIONCOUNT",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(69) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The number of active controls under v';
wwv_flow_imp.g_varchar2_table(70) := 'iolation.",'||wwv_flow.LF||
'        "max_length" : 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(71) := '      "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlViolationCount",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(72) := ''||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTSTATUS",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(73) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The current status of the access';
wwv_flow_imp.g_varchar2_table(74) := ' request.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(75) := '      "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestStatus",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(76) := ''||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestApprovals",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(77) := '   "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "databa';
wwv_flow_imp.g_varchar2_table(78) := 'se_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(79) := '     "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operatio';
wwv_flow_imp.g_varchar2_table(80) := 'n" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : ';
wwv_flow_imp.g_varchar2_table(81) := '"N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276333956679194)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Approvals}'
,p_description=>'The advanced access request approval resource is used to administer and approve role access requests.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestApprovals'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-approvals/access-request-procurement-agent-actions
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Approvals/Access Request Procurement ';
wwv_flow_imp.g_varchar2_table(2) := 'Agent Actions",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedA';
wwv_flow_imp.g_varchar2_table(3) := 'ccessRequestApprovals/{AccessRequestId}/child/procurement",'||wwv_flow.LF||
'    "description" : "The procurement res';
wwv_flow_imp.g_varchar2_table(4) := 'ource is used to view all the procurement agent actions associated to an access request.",'||wwv_flow.LF||
'    "form';
wwv_flow_imp.g_varchar2_table(5) := 'at" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(7) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(8) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_a';
wwv_flow_imp.g_varchar2_table(9) := 'ttribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SE';
wwv_flow_imp.g_varchar2_table(10) := 'CURITYVALUEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBE';
wwv_flow_imp.g_varchar2_table(11) := 'R",'||wwv_flow.LF||
'        "description" : "The ID of the business unit.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(12) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurityValueId",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(13) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACTION",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(14) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The action associated to ';
wwv_flow_imp.g_varchar2_table(15) := 'the business unit for which the procurement agent has the access.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(16) := '    "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(17) := 'tor" : "Action",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(18) := '    "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(19) := 'tion" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(20) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(21) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EDITABLE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(22) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean that indicates if the proc';
wwv_flow_imp.g_varchar2_table(23) := 'urement agent access record can be edited.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(24) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Editable",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(25) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "AARPAAREQUESTID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(26) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of the ';
wwv_flow_imp.g_varchar2_table(27) := 'procurement agent action.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_f';
wwv_flow_imp.g_varchar2_table(28) := 'ilterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AarPaaRequestId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'        "name" : "ACCESSOTHERSLEVELCODE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(30) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The access level to documents owned by oth';
wwv_flow_imp.g_varchar2_table(31) := 'er procurement agents for each procurement business unit.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(32) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "A';
wwv_flow_imp.g_varchar2_table(33) := 'ccessOthersLevelCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ALLOWED",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(34) := '  "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(35) := 'tion" : "Boolean that indicates if the procurement agent has the access to the action.",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(36) := 'x_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(37) := '"Y",'||wwv_flow.LF||
'        "selector" : "Allowed",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SE';
wwv_flow_imp.g_varchar2_table(38) := 'CURITYVALUE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(39) := '2",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(40) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurityValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(41) := '  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestApprovals",'||wwv_flow.LF||
'    "3" ';
wwv_flow_imp.g_varchar2_table(42) := ': "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_oper';
wwv_flow_imp.g_varchar2_table(43) := 'ation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "p';
wwv_flow_imp.g_varchar2_table(44) := 'arameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "F';
wwv_flow_imp.g_varchar2_table(45) := 'ETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(46) := '    "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "AccessReque';
wwv_flow_imp.g_varchar2_table(47) := 'stId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y"';
wwv_flow_imp.g_varchar2_table(48) := ','||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" ';
wwv_flow_imp.g_varchar2_table(49) := ': "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276405557679195)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Approvals/Access Request Procurement Agent Actions}'
,p_description=>'The procurement resource is used to view all the procurement agent actions associated to an access request.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestApprovals/{AccessRequestId}/child/procurement'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-audits/access-request-procurement-agent-checks
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Audits/Access Request Procurement Age';
wwv_flow_imp.g_varchar2_table(2) := 'nt Checks",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAcces';
wwv_flow_imp.g_varchar2_table(3) := 'sRequestAudits/{AccessRequestId}/child/checkProcurement",'||wwv_flow.LF||
'    "description" : "The check performed o';
wwv_flow_imp.g_varchar2_table(4) := 'n an access request for procurement.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_';
wwv_flow_imp.g_varchar2_table(5) := 'single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(6) := 'nce" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4';
wwv_flow_imp.g_varchar2_table(7) := '000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(8) := '  "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(9) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HASPROCUREMENTACCESS",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(10) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean value th';
wwv_flow_imp.g_varchar2_table(11) := 'at indicates if an access request has procurement records.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(12) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "H';
wwv_flow_imp.g_varchar2_table(13) := 'asProcurementAccess",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(15) := 'scription" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(16) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(17) := 'on" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessReq';
wwv_flow_imp.g_varchar2_table(18) := 'uestAudits",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",';
wwv_flow_imp.g_varchar2_table(19) := ''||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_';
wwv_flow_imp.g_varchar2_table(20) := 'rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "dat';
wwv_flow_imp.g_varchar2_table(21) := 'abase_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetc';
wwv_flow_imp.g_varchar2_table(22) := 'h_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(23) := '"name" : "AccessRequestId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(24) := '  "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(25) := '    "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276525413679195)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Audits/Access Request Procurement Agent Checks}'
,p_description=>'The check performed on an access request for procurement.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestAudits/{AccessRequestId}/child/checkProcurement'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-audits
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Audits",'||wwv_flow.LF||
'    "server_prefix" : "/fscm';
wwv_flow_imp.g_varchar2_table(2) := 'RestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessRequestAudits",'||wwv_flow.LF||
'    "description" : "Th';
wwv_flow_imp.g_varchar2_table(3) := 'e advanced access request audit resource is used to view and audit all role access approvals.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(4) := '"format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(5) := '    {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(6) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(7) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "rem';
wwv_flow_imp.g_varchar2_table(8) := 'ote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(9) := ': "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIM';
wwv_flow_imp.g_varchar2_table(10) := 'ESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The timestamp at which the access request was recor';
wwv_flow_imp.g_varchar2_table(11) := 'ded.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(12) := '    "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(13) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISTEMPORARYACCESS",'||wwv_flow.LF||
'        "sequence" : 3,';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicate';
wwv_flow_imp.g_varchar2_table(15) := 's if the request is time bound.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(16) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsTemporaryAccess",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(17) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(18) := '   "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ID of a su';
wwv_flow_imp.g_varchar2_table(19) := 'bmitted access request.",'||wwv_flow.LF||
'        "max_length" : 18,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(20) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(21) := 'n" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISANALYZINGRISK",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(22) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean value that indi';
wwv_flow_imp.g_varchar2_table(23) := 'cates if the risk analysis job is currently running.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(24) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsAnaly';
wwv_flow_imp.g_varchar2_table(25) := 'zingRisk",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTEDBYUSERVALID",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(26) := '     "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(27) := 'ription" : "Boolean value that indicates if the person who submitted the access request is still a v';
wwv_flow_imp.g_varchar2_table(28) := 'alid user in the system.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(29) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsRequestedByUserValid",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(30) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYUSERGUID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(31) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of ';
wwv_flow_imp.g_varchar2_table(32) := 'the person submitting the access request.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(33) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedByUserGu';
wwv_flow_imp.g_varchar2_table(34) := 'id",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLANALYSISCOMPLETEDON",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(35) := '   "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(36) := 'n" : "The date of the last successful analysis job run against active access controls.",'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(37) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(38) := '"ControlAnalysisCompletedOn",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(39) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_k';
wwv_flow_imp.g_varchar2_table(40) := 'ey" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name of the person';
wwv_flow_imp.g_varchar2_table(41) := ' the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(42) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedForDisplayName",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(43) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYDISPLAYNAME",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(44) := 'ce" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(45) := '"The display name of the person submitting the access request.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(46) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(47) := '" : "RequestedByDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID"';
wwv_flow_imp.g_varchar2_table(48) := ','||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(49) := 'description" : "The person ID of the user.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(50) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(51) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORUSERGUID",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(52) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of the person the reque';
wwv_flow_imp.g_varchar2_table(53) := 'st is submitted for.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(54) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedForUserGuid",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(55) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JUSTIFICATION",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(56) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A brief explanation fo';
wwv_flow_imp.g_varchar2_table(57) := 'r the access request.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(58) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Justification",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(59) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TOTALCONTROLSCOUNT",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(60) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The total number of act';
wwv_flow_imp.g_varchar2_table(61) := 'ive controls at the time the request was submitted.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(62) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TotalControlsCount",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(63) := 'ommon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTEDFORUSERVALID",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(64) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean va';
wwv_flow_imp.g_varchar2_table(65) := 'lue that indicates if the requested-for person is still a valid user in the system.",'||wwv_flow.LF||
'        "max_l';
wwv_flow_imp.g_varchar2_table(66) := 'ength" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(67) := ','||wwv_flow.LF||
'        "selector" : "IsRequestedForUserValid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(68) := ' "name" : "CONTROLVIOLATIONCOUNT",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(69) := '"data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The number of active controls under violation.",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(70) := '        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(71) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlViolationCount",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(72) := '    {'||wwv_flow.LF||
'        "name" : "REQUESTSTATUS",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(73) := '     "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The current status of the access request.",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(74) := '        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(75) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestStatus",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(76) := '  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestAudits",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(77) := '   "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" :';
wwv_flow_imp.g_varchar2_table(78) := ' "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameter';
wwv_flow_imp.g_varchar2_table(79) := 's" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SIN';
wwv_flow_imp.g_varchar2_table(80) := 'GLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "par';
wwv_flow_imp.g_varchar2_table(81) := 'ameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276646891679195)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Audits}'
,p_description=>'The advanced access request audit resource is used to view and audit all role access approvals.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestAudits'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-audits/access-request-procurement-agent-actions
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Audits/Access Request Procurement Age';
wwv_flow_imp.g_varchar2_table(2) := 'nt Actions",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAcce';
wwv_flow_imp.g_varchar2_table(3) := 'ssRequestAudits/{AccessRequestId}/child/procurement",'||wwv_flow.LF||
'    "description" : "The procurement resource ';
wwv_flow_imp.g_varchar2_table(4) := 'is used to view all the procurement agent actions associated to an access request.",'||wwv_flow.LF||
'    "format" : ';
wwv_flow_imp.g_varchar2_table(5) := '"JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(6) := '   "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(7) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(8) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribu';
wwv_flow_imp.g_varchar2_table(9) := 'te_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURITY';
wwv_flow_imp.g_varchar2_table(10) := 'VALUEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(11) := '      "description" : "The ID of the business unit.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(12) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurityValueId",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(13) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACTION",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(14) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The action associated to the bu';
wwv_flow_imp.g_varchar2_table(15) := 'siness unit for which the procurement agent has the access.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "h';
wwv_flow_imp.g_varchar2_table(16) := 'as_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" :';
wwv_flow_imp.g_varchar2_table(17) := ' "Action",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(18) := 'equence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(19) := ': "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(20) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(21) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EDITABLE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(22) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean that indicates if the procuremen';
wwv_flow_imp.g_varchar2_table(23) := 't agent access record can be edited.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(24) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Editable",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(25) := 'common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "AARPAAREQUESTID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(26) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of the procur';
wwv_flow_imp.g_varchar2_table(27) := 'ement agent action.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(28) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "AarPaaRequestId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(29) := '   "name" : "ACCESSOTHERSLEVELCODE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(30) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The access level to documents owned by other pro';
wwv_flow_imp.g_varchar2_table(31) := 'curement agents for each procurement business unit.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(32) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessO';
wwv_flow_imp.g_varchar2_table(33) := 'thersLevelCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ALLOWED",'||wwv_flow.LF||
'        "seq';
wwv_flow_imp.g_varchar2_table(34) := 'uence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(35) := ': "Boolean that indicates if the procurement agent has the access to the action.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(36) := 'th" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(37) := '       "selector" : "Allowed",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURITY';
wwv_flow_imp.g_varchar2_table(38) := 'VALUE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(39) := '      "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fil';
wwv_flow_imp.g_varchar2_table(40) := 'terable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurityValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(41) := ' "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestAudits",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(42) := '  "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : ';
wwv_flow_imp.g_varchar2_table(43) := '"FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters';
wwv_flow_imp.g_varchar2_table(44) := '" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SING';
wwv_flow_imp.g_varchar2_table(45) := 'LE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "para';
wwv_flow_imp.g_varchar2_table(46) := 'meters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "AccessRequestId",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(47) := '    "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(48) := 'direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(49) := '    "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276770178679195)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Audits/Access Request Procurement Agent Actions}'
,p_description=>'The procurement resource is used to view all the procurement agent actions associated to an access request.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestAudits/{AccessRequestId}/child/procurement'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-audits/access-request-procurement-agent-security-values
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Audits/Access Request Procurement Age';
wwv_flow_imp.g_varchar2_table(2) := 'nt Security Values",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/adva';
wwv_flow_imp.g_varchar2_table(3) := 'ncedAccessRequestAudits/{AccessRequestId}/child/securityValues",'||wwv_flow.LF||
'    "description" : "The security v';
wwv_flow_imp.g_varchar2_table(4) := 'alues resource is used to view procurement business units associated to an access request.",'||wwv_flow.LF||
'    "fo';
wwv_flow_imp.g_varchar2_table(5) := 'rmat" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(6) := ' {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(7) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(8) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote';
wwv_flow_imp.g_varchar2_table(9) := '_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(10) := 'SECURITYVALUEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(11) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The ID of the business unit.",'||wwv_flow.LF||
'        "max_length" : 37,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(12) := 'has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(13) := ': "SecurityValueId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(15) := 'cription" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(16) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(17) := 'n" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURITYVALUE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(18) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the business ';
wwv_flow_imp.g_varchar2_table(19) := 'unit.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(20) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurityValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(21) := '  ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestAudits",'||wwv_flow.LF||
'    "3"';
wwv_flow_imp.g_varchar2_table(22) := ' : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_ope';
wwv_flow_imp.g_varchar2_table(23) := 'ration" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(24) := 'parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "';
wwv_flow_imp.g_varchar2_table(25) := 'FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(26) := '     "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "AccessRequ';
wwv_flow_imp.g_varchar2_table(27) := 'estId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y';
wwv_flow_imp.g_varchar2_table(28) := '",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null"';
wwv_flow_imp.g_varchar2_table(29) := ' : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276812746679195)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Audits/Access Request Procurement Agent Security Values}'
,p_description=>'The security values resource is used to view procurement business units associated to an access request.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestAudits/{AccessRequestId}/child/securityValues'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-reviews/access-request-procurement-agent-security-values
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Reviews/Access Request Procurement Ag';
wwv_flow_imp.g_varchar2_table(2) := 'ent Security Values",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/adv';
wwv_flow_imp.g_varchar2_table(3) := 'ancedAccessRequestReviews/{AccessRequestId}/child/securityValues",'||wwv_flow.LF||
'    "description" : "The security';
wwv_flow_imp.g_varchar2_table(4) := ' values resource is used to view procurement agent business units assigned to an access request.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(5) := '   "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    [';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y"';
wwv_flow_imp.g_varchar2_table(7) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(8) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(9) := 'remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(10) := 'e" : "SECURITYVALUEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(11) := ': "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ID of the procurement agent business unit.",'||wwv_flow.LF||
'        "max';
wwv_flow_imp.g_varchar2_table(12) := '_length" : 37,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(13) := '"Y",'||wwv_flow.LF||
'        "selector" : "SecurityValueId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(14) := 'e" : "ACCESSREQUESTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(15) := ': "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(16) := ': 18,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(17) := '    "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SEC';
wwv_flow_imp.g_varchar2_table(18) := 'URITYVALUE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(19) := '",'||wwv_flow.LF||
'        "description" : "The name of the procurement agent business unit.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(20) := ': 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(21) := '     "selector" : "SecurityValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes';
wwv_flow_imp.g_varchar2_table(22) := '" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestReviews",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(23) := ' "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION"';
wwv_flow_imp.g_varchar2_table(24) := ','||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(25) := ']'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "ur';
wwv_flow_imp.g_varchar2_table(26) := 'l_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(27) := '      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "AccessRequestId",'||wwv_flow.LF||
'      "param_type" :';
wwv_flow_imp.g_varchar2_table(28) := ' "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_para';
wwv_flow_imp.g_varchar2_table(30) := 'm" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23276962311679196)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Reviews/Access Request Procurement Agent Security Values}'
,p_description=>'The security values resource is used to view procurement agent business units assigned to an access request.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestReviews/{AccessRequestId}/child/securityValues'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-reviews/access-request-procurement-agent-actions
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Reviews/Access Request Procurement Ag';
wwv_flow_imp.g_varchar2_table(2) := 'ent Actions",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAcc';
wwv_flow_imp.g_varchar2_table(3) := 'essRequestReviews/{AccessRequestId}/child/procurement",'||wwv_flow.LF||
'    "description" : "The procurement resourc';
wwv_flow_imp.g_varchar2_table(4) := 'e is used to view all the procurement agent actions assigned to an access request.",'||wwv_flow.LF||
'    "format" : ';
wwv_flow_imp.g_varchar2_table(5) := '"JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(6) := '   "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(7) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(8) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribu';
wwv_flow_imp.g_varchar2_table(9) := 'te_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACTION",';
wwv_flow_imp.g_varchar2_table(10) := ''||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(11) := 'description" : "The action associated to the business unit for which the procurement agent has the a';
wwv_flow_imp.g_varchar2_table(12) := 'ccess.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(13) := '    "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Action",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "name" : "SECURITYVALUEID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(15) := ' "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of the procurement agent business unit.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(16) := '       "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(17) := 'lector" : "SecurityValueId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQU';
wwv_flow_imp.g_varchar2_table(18) := 'ESTID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(19) := '    "description" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(20) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(21) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EDITABLE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(22) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean that indicates';
wwv_flow_imp.g_varchar2_table(23) := ' if the procurement agent access record can be edited.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(24) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Edita';
wwv_flow_imp.g_varchar2_table(25) := 'ble",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSOTHERSLEVELCODE",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(26) := 'sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(27) := 'n" : "The access level to documents owned by other procurement agents for each procurement business ';
wwv_flow_imp.g_varchar2_table(28) := 'unit.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(29) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessOthersLevelCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(30) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ALLOWED",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(31) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean that indicates if the procurement a';
wwv_flow_imp.g_varchar2_table(32) := 'gent has the access to the action.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(33) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Allowed",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(34) := 'mon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRe';
wwv_flow_imp.g_varchar2_table(35) := 'questReviews",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET';
wwv_flow_imp.g_varchar2_table(36) := '",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_al';
wwv_flow_imp.g_varchar2_table(37) := 'l_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "d';
wwv_flow_imp.g_varchar2_table(38) := 'atabase_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fe';
wwv_flow_imp.g_varchar2_table(39) := 'tch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(40) := '  "name" : "AccessRequestId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(41) := '    "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(42) := '      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277041491679196)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Reviews/Access Request Procurement Agent Actions}'
,p_description=>'The procurement resource is used to view all the procurement agent actions assigned to an access request.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestReviews/{AccessRequestId}/child/procurement'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-reviews/access-request-procurement-agent-checks
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Reviews/Access Request Procurement Ag';
wwv_flow_imp.g_varchar2_table(2) := 'ent Checks",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAcce';
wwv_flow_imp.g_varchar2_table(3) := 'ssRequestReviews/{AccessRequestId}/child/checkProcurement",'||wwv_flow.LF||
'    "description" : "The check performed';
wwv_flow_imp.g_varchar2_table(4) := ' on an access request for procurement agent requirements.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector';
wwv_flow_imp.g_varchar2_table(5) := '" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURC';
wwv_flow_imp.g_varchar2_table(6) := 'EKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(7) := '     "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(8) := 'erable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$Resource';
wwv_flow_imp.g_varchar2_table(9) := 'Key",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HASPROCUREMENTACCESS",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(10) := 'equence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(11) := '" : "Boolean value that indicates if an access request has procurement agent requirements.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(12) := ' "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(13) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "HasProcurementAccess",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(14) := '     "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(15) := 'ta_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(16) := 'ime_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Ac';
wwv_flow_imp.g_varchar2_table(17) := 'cessRequestId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "';
wwv_flow_imp.g_varchar2_table(18) := 'Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequestReviews",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  [';
wwv_flow_imp.g_varchar2_table(19) := ''||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_patter';
wwv_flow_imp.g_varchar2_table(20) := 'n" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(21) := '  "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APE';
wwv_flow_imp.g_varchar2_table(22) := 'X$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(23) := '  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "AccessRequestId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(24) := '   "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" ';
wwv_flow_imp.g_varchar2_table(25) := ': "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(26) := '}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277184007679196)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Reviews/Access Request Procurement Agent Checks}'
,p_description=>'The check performed on an access request for procurement agent requirements.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestReviews/{AccessRequestId}/child/checkProcurement'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-request-reviews
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Request Reviews",'||wwv_flow.LF||
'    "server_prefix" : "/fsc';
wwv_flow_imp.g_varchar2_table(2) := 'mRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessRequestReviews",'||wwv_flow.LF||
'    "description" : "';
wwv_flow_imp.g_varchar2_table(3) := 'The advanced access request review resource is used to review role access requests that have been as';
wwv_flow_imp.g_varchar2_table(4) := 'signed to specific users.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row"';
wwv_flow_imp.g_varchar2_table(5) := ' : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(6) := '       "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(7) := '  "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(8) := '" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(9) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(10) := ' "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The timestamp at wh';
wwv_flow_imp.g_varchar2_table(11) := 'ich the access request was recorded.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(12) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd';
wwv_flow_imp.g_varchar2_table(13) := '\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISTEMPORARY';
wwv_flow_imp.g_varchar2_table(14) := 'ACCESS",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(15) := '       "description" : "Indicates if the request is time bound.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(16) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(17) := ' : "IsTemporaryAccess",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID';
wwv_flow_imp.g_varchar2_table(18) := '",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(19) := ' "description" : "The ID of a submitted access request.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(20) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Acc';
wwv_flow_imp.g_varchar2_table(21) := 'essRequestId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISANALYZINGRISK",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '  "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(23) := 'tion" : "Boolean value that indicates if the risk analysis job is currently running.",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(24) := 'length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y';
wwv_flow_imp.g_varchar2_table(25) := '",'||wwv_flow.LF||
'        "selector" : "IsAnalyzingRisk",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(26) := ' : "ISREQUESTEDBYUSERVALID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(27) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolean value that indicates if the person who submitted';
wwv_flow_imp.g_varchar2_table(28) := ' the access request is still a valid user in the system.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(29) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsR';
wwv_flow_imp.g_varchar2_table(30) := 'equestedByUserValid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYUSERGU';
wwv_flow_imp.g_varchar2_table(31) := 'ID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(32) := '   "description" : "The GUID of the person submitting the access request.",'||wwv_flow.LF||
'        "max_length" : 6';
wwv_flow_imp.g_varchar2_table(33) := '4,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(34) := ' "selector" : "RequestedByUserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CO';
wwv_flow_imp.g_varchar2_table(35) := 'NTROLANALYSISCOMPLETEDON",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_typ';
wwv_flow_imp.g_varchar2_table(36) := 'e" : "DATE",'||wwv_flow.LF||
'        "description" : "The date of the last successful analysis job run against activ';
wwv_flow_imp.g_varchar2_table(37) := 'e access controls.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(38) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlAnalysisCompletedOn",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(39) := '        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORDISPLAYNAME",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(40) := 'ence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(41) := ' "The display name of the person the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(42) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(43) := '" : "RequestedForDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTE';
wwv_flow_imp.g_varchar2_table(44) := 'DBYDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(45) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The display name of the person submitting the access request.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(46) := '     "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(47) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedByDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(48) := '   {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(49) := 'data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The person ID of the user.",'||wwv_flow.LF||
'        "has_time_zone"';
wwv_flow_imp.g_varchar2_table(50) := ' : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonId",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(51) := '        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORUSERGUID",'||wwv_flow.LF||
'        "sequenc';
wwv_flow_imp.g_varchar2_table(52) := 'e" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(53) := 'The GUID of the person the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(54) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Reques';
wwv_flow_imp.g_varchar2_table(55) := 'tedForUserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JUSTIFICATION",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(56) := '  "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descri';
wwv_flow_imp.g_varchar2_table(57) := 'ption" : "A brief explanation for the access request.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(58) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Jus';
wwv_flow_imp.g_varchar2_table(59) := 'tification",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TOTALCONTROLSCOUNT",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(60) := '   "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(61) := 'tion" : "The total number of active controls at the time the request was submitted.",'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(62) := 'ime_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "To';
wwv_flow_imp.g_varchar2_table(63) := 'talControlsCount",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTEDFORUSERVA';
wwv_flow_imp.g_varchar2_table(64) := 'LID",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(65) := '     "description" : "Boolean value that indicates if the requested-for person is still a valid user';
wwv_flow_imp.g_varchar2_table(66) := ' in the system.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(67) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsRequestedForUserValid",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(68) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLVIOLATIONCOUNT",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(69) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The number of act';
wwv_flow_imp.g_varchar2_table(70) := 'ive controls under violation.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(71) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlViolationCount",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(72) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTSTATUS",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(73) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The current ';
wwv_flow_imp.g_varchar2_table(74) := 'status of the access request.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(75) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestStatus",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(76) := 'ommon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccess';
wwv_flow_imp.g_varchar2_table(77) := 'RequestReviews",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "G';
wwv_flow_imp.g_varchar2_table(78) := 'ET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_';
wwv_flow_imp.g_varchar2_table(79) := 'all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(80) := '"database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_';
wwv_flow_imp.g_varchar2_table(81) := 'fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277235838679197)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Request Reviews}'
,p_description=>'The advanced access request review resource is used to review role access requests that have been assigned to specific users.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequestReviews'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-requests
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Requests",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestAp';
wwv_flow_imp.g_varchar2_table(2) := 'i/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessRequests",'||wwv_flow.LF||
'    "description" : "The advanced ';
wwv_flow_imp.g_varchar2_table(3) := 'access request resource is used to submit role access requests for users by themselves or on behalf ';
wwv_flow_imp.g_varchar2_table(4) := 'of others.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "co';
wwv_flow_imp.g_varchar2_table(5) := 'lumns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(6) := 'ary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zon';
wwv_flow_imp.g_varchar2_table(7) := 'e" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.k';
wwv_flow_imp.g_varchar2_table(8) := 'ey",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(9) := '{'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(10) := 'data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The timestamp at which the access ';
wwv_flow_imp.g_varchar2_table(11) := 'request was recorded.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(12) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss';
wwv_flow_imp.g_varchar2_table(13) := '.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISTEMPORARYACCESS",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(14) := '  "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(15) := 'tion" : "Indicates if the request is time bound.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone"';
wwv_flow_imp.g_varchar2_table(16) := ' : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsTemporary';
wwv_flow_imp.g_varchar2_table(17) := 'Access",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSREQUESTID",'||wwv_flow.LF||
'        "seq';
wwv_flow_imp.g_varchar2_table(18) := 'uence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(19) := ': "The ID of a submitted access request.",'||wwv_flow.LF||
'        "max_length" : 18,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(20) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessRequestId",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(21) := '        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISANALYZINGRISK",'||wwv_flow.LF||
'        "sequence" : ';
wwv_flow_imp.g_varchar2_table(22) := '5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Boolea';
wwv_flow_imp.g_varchar2_table(23) := 'n value that indicates if the risk analysis job is currently running.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(24) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(25) := 'ector" : "IsAnalyzingRisk",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTED';
wwv_flow_imp.g_varchar2_table(26) := 'BYUSERVALID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(27) := '2",'||wwv_flow.LF||
'        "description" : "Boolean value that indicates if the person who submitted the access req';
wwv_flow_imp.g_varchar2_table(28) := 'uest is still a valid user in the system.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(29) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsRequestedByUserV';
wwv_flow_imp.g_varchar2_table(30) := 'alid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYUSERGUID",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(31) := 'equence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(32) := '" : "The GUID of the person submitting the access request.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(33) := '_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "';
wwv_flow_imp.g_varchar2_table(34) := 'RequestedByUserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLANALYSISCO';
wwv_flow_imp.g_varchar2_table(35) := 'MPLETEDON",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(36) := '      "description" : "The date of the last successful analysis job run against active access contro';
wwv_flow_imp.g_varchar2_table(37) := 'ls.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(38) := '    "selector" : "ControlAnalysisCompletedOn",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(39) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(40) := '    "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display n';
wwv_flow_imp.g_varchar2_table(41) := 'ame of the person the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone';
wwv_flow_imp.g_varchar2_table(42) := '" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedF';
wwv_flow_imp.g_varchar2_table(43) := 'orDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDBYDISPLAYNAME"';
wwv_flow_imp.g_varchar2_table(44) := ','||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(45) := ' "description" : "The display name of the person submitting the access request.",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(46) := 'h" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(47) := '        "selector" : "RequestedByDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(48) := 'ame" : "PERSONID",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "N';
wwv_flow_imp.g_varchar2_table(49) := 'UMBER",'||wwv_flow.LF||
'        "description" : "The person ID of the user.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(50) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonId",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(51) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTEDFORUSERGUID",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(52) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of the';
wwv_flow_imp.g_varchar2_table(53) := ' person the request is submitted for.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(54) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestedForUserGuid"';
wwv_flow_imp.g_varchar2_table(55) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JUSTIFICATION",'||wwv_flow.LF||
'        "sequence" : ';
wwv_flow_imp.g_varchar2_table(56) := '13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A bri';
wwv_flow_imp.g_varchar2_table(57) := 'ef explanation for the access request.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(58) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Justification",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(59) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TOTALCONTROLSCOUNT",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(60) := ' 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The to';
wwv_flow_imp.g_varchar2_table(61) := 'tal number of active controls at the time the request was submitted.",'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(62) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TotalControlsCoun';
wwv_flow_imp.g_varchar2_table(63) := 't",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISREQUESTEDFORUSERVALID",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(64) := 'sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(65) := 'on" : "Boolean value that indicates if the requested-for person is still a valid user in the system.';
wwv_flow_imp.g_varchar2_table(66) := '",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(67) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsRequestedForUserValid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(68) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLVIOLATIONCOUNT",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(69) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The number of active controls un';
wwv_flow_imp.g_varchar2_table(70) := 'der violation.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(71) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlViolationCount",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(72) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REQUESTSTATUS",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(73) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The current status of the a';
wwv_flow_imp.g_varchar2_table(74) := 'ccess request.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(75) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RequestStatus",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(76) := '    }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessRequests",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(77) := '"3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_';
wwv_flow_imp.g_varchar2_table(78) := 'operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(79) := '  "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" ';
wwv_flow_imp.g_varchar2_table(80) := ': "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N"';
wwv_flow_imp.g_varchar2_table(81) := ','||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277356242679197)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Requests}'
,p_description=>'The advanced access request resource is used to submit role access requests for users by themselves or on behalf of others.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessRequests'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-access-users
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Access Users",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/r';
wwv_flow_imp.g_varchar2_table(2) := 'esources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedAccessUsers",'||wwv_flow.LF||
'    "description" : "The advanced access';
wwv_flow_imp.g_varchar2_table(3) := ' users resource is used to search for active users in the system.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_';
wwv_flow_imp.g_varchar2_table(4) := 'selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX';
wwv_flow_imp.g_varchar2_table(5) := '$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(6) := 'R2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(7) := '"is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$';
wwv_flow_imp.g_varchar2_table(8) := 'ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(9) := 'nce" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "T';
wwv_flow_imp.g_varchar2_table(10) := 'he person ID of the user.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_f';
wwv_flow_imp.g_varchar2_table(11) := 'ilterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(12) := '  "name" : "USERNAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(13) := ' "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user name or login name of the user.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(14) := '" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(15) := '       "selector" : "Username",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERGUI';
wwv_flow_imp.g_varchar2_table(16) := 'D",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(17) := '  "description" : "The GUID of the user.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(18) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserGuid",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(19) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FIRSTNAME",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(20) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The first name of ';
wwv_flow_imp.g_varchar2_table(21) := 'the user.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(22) := '       "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "FirstName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(23) := '     {'||wwv_flow.LF||
'        "name" : "LASTNAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(24) := '"data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The last name of the user.",'||wwv_flow.LF||
'        "max_length"';
wwv_flow_imp.g_varchar2_table(25) := ' : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(26) := '      "selector" : "LastName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONDI';
wwv_flow_imp.g_varchar2_table(27) := 'SPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2"';
wwv_flow_imp.g_varchar2_table(28) := ','||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(29) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(30) := '   {'||wwv_flow.LF||
'        "name" : "PERSONJOBTITLE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(31) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The person job title of the user.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(32) := 'max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(33) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonJobTitle",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plug';
wwv_flow_imp.g_varchar2_table(34) := 'in_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedAccessUsers",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(35) := '},'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECT';
wwv_flow_imp.g_varchar2_table(36) := 'ION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(37) := '    ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(38) := ' "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(39) := '  ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277477551679197)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Access Users}'
,p_description=>'The advanced access users resource is used to search for active users in the system.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedAccessUsers'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/manage-additional-data-sources
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Manage Additional Data Sources",'||wwv_flow.LF||
'    "server_prefix" : "/fscm';
wwv_flow_imp.g_varchar2_table(2) := 'RestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsAdditionalDataSourceSyncJobs",'||wwv_flow.LF||
'    "d';
wwv_flow_imp.g_varchar2_table(3) := 'escription" : "This resource initiates the incremental update of the data from Non-Fusion data sourc';
wwv_flow_imp.g_varchar2_table(4) := 'es.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" ';
wwv_flow_imp.g_varchar2_table(5) := ':'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(6) := '" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N';
wwv_flow_imp.g_varchar2_table(7) := '",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(8) := '      "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(9) := '   "name" : "ROWKEY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(10) := '"NUMBER",'||wwv_flow.LF||
'        "description" : "Get action not supported",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(11) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RowKey",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(12) := 'n" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsAd';
wwv_flow_imp.g_varchar2_table(13) := 'ditionalDataSourceSyncJobs",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "ope';
wwv_flow_imp.g_varchar2_table(14) := 'ration" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(15) := 'allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "';
wwv_flow_imp.g_varchar2_table(16) := 'GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(17) := '     "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(18) := '  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277518696679198)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Manage Additional Data Sources}'
,p_description=>'This resource initiates the incremental update of the data from Non-Fusion data sources.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsAdditionalDataSourceSyncJobs'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls-data-sources
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls Data Sources",'||wwv_flow.LF||
'    "server_prefix" : "/fscm';
wwv_flow_imp.g_varchar2_table(2) := 'RestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsDatasources",'||wwv_flow.LF||
'    "description" : "Th';
wwv_flow_imp.g_varchar2_table(3) := 'e advanced controls data sources resource is used to extract and update data source information.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(4) := '   "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    [';
wwv_flow_imp.g_varchar2_table(5) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y"';
wwv_flow_imp.g_varchar2_table(6) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(7) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(8) := 'remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(9) := 'e" : "ACTIVE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(10) := 'R2",'||wwv_flow.LF||
'        "description" : "Indicates if the data source is active or not.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(11) := ': 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(12) := '      "selector" : "Active",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(13) := ' },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCEID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of the data source.",'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(15) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "D';
wwv_flow_imp.g_varchar2_table(16) := 'atasourceId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(17) := '     "name" : "DATASOURCENAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(18) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the data source.",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(19) := ' 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(20) := '     "selector" : "DatasourceName",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(21) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JOBTYPE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(22) := '",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The job type used to identify the sync';
wwv_flow_imp.g_varchar2_table(23) := ' job for a particular data source.",'||wwv_flow.LF||
'        "max_length" : 12,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(24) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "JobType",'||wwv_flow.LF||
'        "addit';
wwv_flow_imp.g_varchar2_table(25) := 'ional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCEBIN';
wwv_flow_imp.g_varchar2_table(26) := 'DKEY",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(27) := '     "description" : "The unique bind key of the data source.",'||wwv_flow.LF||
'        "max_length" : 1000,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(28) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(29) := '" : "DatasourceBindKey",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(30) := '      {'||wwv_flow.LF||
'        "name" : "DATASOURCETYPENAME",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(31) := '",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The type name of the data source.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(32) := '      "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(33) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DatasourceTypeName",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(34) := '        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCETYPEID",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(35) := ' 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The typ';
wwv_flow_imp.g_varchar2_table(36) := 'e ID of the data source.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(37) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DatasourceTypeId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(38) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SETUP",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(39) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Indicates if the con';
wwv_flow_imp.g_varchar2_table(40) := 'nection parameters for a data source have been saved and if the data source has been set up successf';
wwv_flow_imp.g_varchar2_table(41) := 'ully.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(42) := '      "selector" : "Setup",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(43) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DEFAULTDATASOURCE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(44) := ' "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the data source is the';
wwv_flow_imp.g_varchar2_table(45) := ' default data source.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(46) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DefaultDatasource",'||wwv_flow.LF||
'        "additiona';
wwv_flow_imp.g_varchar2_table(47) := 'l_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(48) := '1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsDatasources",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" ';
wwv_flow_imp.g_varchar2_table(49) := ':'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_p';
wwv_flow_imp.g_varchar2_table(50) := 'attern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {';
wwv_flow_imp.g_varchar2_table(51) := ''||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "';
wwv_flow_imp.g_varchar2_table(52) := '/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },';
wwv_flow_imp.g_varchar2_table(53) := ''||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",';
wwv_flow_imp.g_varchar2_table(54) := ''||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operat';
wwv_flow_imp.g_varchar2_table(55) := 'ion" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(56) := '     "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(57) := '  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277645790679198)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls Data Sources}'
,p_description=>'The advanced controls data sources resource is used to extract and update data source information.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsDatasources'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls-imported-access-points
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls Imported Access Points",'||wwv_flow.LF||
'    "server_prefix';
wwv_flow_imp.g_varchar2_table(2) := '" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsImportedAccessPoints",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(3) := '"description" : "Advanced access controls can perform risk analysis of user-role assignments in appl';
wwv_flow_imp.g_varchar2_table(4) := 'ications whose data source isn''t Oracle Cloud. For that purpose, you can import access points availa';
wwv_flow_imp.g_varchar2_table(5) := 'ble to users of those applications. An access point is any privilege or role. (You would also use ot';
wwv_flow_imp.g_varchar2_table(6) := 'her REST resources to import information about the applications, their users, and their role assignm';
wwv_flow_imp.g_varchar2_table(7) := 'ents.)",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "column';
wwv_flow_imp.g_varchar2_table(8) := 's" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_';
wwv_flow_imp.g_varchar2_table(9) := 'key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(10) := ' "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",';
wwv_flow_imp.g_varchar2_table(11) := ''||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(12) := '      "name" : "DATASOURCE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(13) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The data source to which the access is associated.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(14) := '     "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(15) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "Datasource",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(16) := ' "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_typ';
wwv_flow_imp.g_varchar2_table(17) := 'e" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(18) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(19) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLENAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(20) := '        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the access point.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(21) := 'max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(22) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(23) := ' : "TYPE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(24) := ''||wwv_flow.LF||
'        "description" : "The role type of the access point.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(25) := 'has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(26) := ': "Type",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLEDESCRIPTION",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(27) := 'quence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(28) := ' : "The description of the access point.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : nu';
wwv_flow_imp.g_varchar2_table(29) := 'll,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleDescription"';
wwv_flow_imp.g_varchar2_table(30) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLECODE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(31) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique ';
wwv_flow_imp.g_varchar2_table(32) := 'code of the access point.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(33) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleCode",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(34) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPLICATION",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_k';
wwv_flow_imp.g_varchar2_table(35) := 'ey" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The application to which the a';
wwv_flow_imp.g_varchar2_table(36) := 'ccess is associated.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(37) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Application",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(38) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUSINESSPROCESS",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(39) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The business process to whic';
wwv_flow_imp.g_varchar2_table(40) := 'h the access is associated.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(41) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "BusinessProcess",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(42) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(43) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(44) := '"Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate"';
wwv_flow_imp.g_varchar2_table(45) := ','||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(46) := '   ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsImportedAccessPoints';
wwv_flow_imp.g_varchar2_table(47) := '",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "da';
wwv_flow_imp.g_varchar2_table(48) := 'tabase_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N';
wwv_flow_imp.g_varchar2_table(49) := '",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_oper';
wwv_flow_imp.g_varchar2_table(50) := 'ation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows';
wwv_flow_imp.g_varchar2_table(51) := '" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277706712679199)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls Imported Access Points}'
,p_description=>'Advanced access controls can perform risk analysis of user-role assignments in applications whose data source isn''t Oracle Cloud. For that purpose, you can import access points available to users of those applications. An access point is any privilege or role. (You would also use other REST resources to import information about the applications, their users, and their role assignments.)'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsImportedAccessPoints'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls-imported-applications
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls Imported Applications",'||wwv_flow.LF||
'    "server_prefix"';
wwv_flow_imp.g_varchar2_table(2) := ' : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsImportedApplications",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(3) := 'description" : "You may use applications that store user-access data outside of the Oracle Cloud dat';
wwv_flow_imp.g_varchar2_table(4) := 'a source. You can import that data for risk analysis by advanced access controls. Before you do, how';
wwv_flow_imp.g_varchar2_table(5) := 'ever, you need to import data about the applications themselves.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_s';
wwv_flow_imp.g_varchar2_table(6) := 'elector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$';
wwv_flow_imp.g_varchar2_table(7) := 'RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(8) := '2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(9) := 'is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$R';
wwv_flow_imp.g_varchar2_table(10) := 'esourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCE",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(11) := 'ence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(12) := ' "The data source of the application.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(13) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Datasource",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(14) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(15) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(16) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "L';
wwv_flow_imp.g_varchar2_table(17) := 'astUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPLICATION",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(18) := 'equence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(19) := '" : "The name of the application.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(20) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Application",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(21) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(22) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(23) := ' "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate';
wwv_flow_imp.g_varchar2_table(24) := '",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(25) := '    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsImportedApplication';
wwv_flow_imp.g_varchar2_table(26) := 's",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "d';
wwv_flow_imp.g_varchar2_table(27) := 'atabase_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "';
wwv_flow_imp.g_varchar2_table(28) := 'N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_ope';
wwv_flow_imp.g_varchar2_table(29) := 'ration" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_row';
wwv_flow_imp.g_varchar2_table(30) := 's" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277808411679199)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls Imported Applications}'
,p_description=>'You may use applications that store user-access data outside of the Oracle Cloud data source. You can import that data for risk analysis by advanced access controls. Before you do, however, you need to import data about the applications themselves.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsImportedApplications'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls-imported-user-roles
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls Imported User Roles",'||wwv_flow.LF||
'    "server_prefix" :';
wwv_flow_imp.g_varchar2_table(2) := ' "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsImportedUserRoles",'||wwv_flow.LF||
'    "descr';
wwv_flow_imp.g_varchar2_table(3) := 'iption" : "Advanced access controls can perform risk analysis of user-role assignments in applicatio';
wwv_flow_imp.g_varchar2_table(4) := 'ns whose data source isn''t Oracle Cloud. For that purpose, you can import information about role ass';
wwv_flow_imp.g_varchar2_table(5) := 'ignments to users of those applications. (You would also use other REST resources to import informat';
wwv_flow_imp.g_varchar2_table(6) := 'ion about the applications, their access points, and their users.)",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row';
wwv_flow_imp.g_varchar2_table(7) := '_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APE';
wwv_flow_imp.g_varchar2_table(8) := 'X$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCH';
wwv_flow_imp.g_varchar2_table(9) := 'AR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(10) := ' "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX';
wwv_flow_imp.g_varchar2_table(11) := '$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCE",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(12) := 'quence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(13) := ' : "The data source of the user-role relationship.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(14) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Datasou';
wwv_flow_imp.g_varchar2_table(15) := 'rce",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence';
wwv_flow_imp.g_varchar2_table(16) := '" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(17) := '        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(18) := 'elector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLENAME",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(19) := '        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(20) := 'escription" : "The display name of the role.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(21) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleName",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(22) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERNAME",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(23) := '   "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user name ';
wwv_flow_imp.g_varchar2_table(24) := 'of the user.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(25) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Username",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(26) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N"';
wwv_flow_imp.g_varchar2_table(27) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user display name of the user.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(28) := '      "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(29) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserDisplayName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(30) := '        "name" : "ROLECODE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(31) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique code of the role.",'||wwv_flow.LF||
'        "max_length" : 40';
wwv_flow_imp.g_varchar2_table(32) := '00,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(33) := '  "selector" : "RoleCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPLICATION"';
wwv_flow_imp.g_varchar2_table(34) := ','||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(35) := '"description" : "The application in which the user-role relationship exists.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(36) := ': 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(37) := '      "selector" : "Application",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTU';
wwv_flow_imp.g_varchar2_table(38) := 'PDATEDATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP';
wwv_flow_imp.g_varchar2_table(39) := ' WITH TIME ZONE",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(40) := ': "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fft';
wwv_flow_imp.g_varchar2_table(41) := 'zh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(42) := ' "2" : "advancedControlsImportedUserRoles",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(43) := '   {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern"';
wwv_flow_imp.g_varchar2_table(44) := ' : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(45) := '"operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$';
wwv_flow_imp.g_varchar2_table(46) := 'ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(47) := '"parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23277920196679200)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls Imported User Roles}'
,p_description=>'Advanced access controls can perform risk analysis of user-role assignments in applications whose data source isn''t Oracle Cloud. For that purpose, you can import information about role assignments to users of those applications. (You would also use other REST resources to import information about the applications, their access points, and their users.)'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsImportedUserRoles'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls-imported-users
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls Imported Users",'||wwv_flow.LF||
'    "server_prefix" : "/fs';
wwv_flow_imp.g_varchar2_table(2) := 'cmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsImportedUsers",'||wwv_flow.LF||
'    "description" :';
wwv_flow_imp.g_varchar2_table(3) := ' "Advanced access controls can perform risk analysis of user-role assignments in applications whose ';
wwv_flow_imp.g_varchar2_table(4) := 'data source isn''t Oracle Cloud. For that purpose, you can import information about users of those ap';
wwv_flow_imp.g_varchar2_table(5) := 'plications. (You would also use other REST resources to import information about the applications, t';
wwv_flow_imp.g_varchar2_table(6) := 'heir access points, and role assignments in those applications.)",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_s';
wwv_flow_imp.g_varchar2_table(7) := 'elector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$';
wwv_flow_imp.g_varchar2_table(8) := 'RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(9) := '2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(10) := 'is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$R';
wwv_flow_imp.g_varchar2_table(11) := 'esourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FIRSTNAME",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(12) := 'nce" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(13) := '"The first name of the user.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Firstname",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(15) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(16) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The data source to which th';
wwv_flow_imp.g_varchar2_table(17) := 'e user is associated.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(18) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Datasource",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(19) := 'Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(20) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(21) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(22) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EMAIL",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(23) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The email of the ';
wwv_flow_imp.g_varchar2_table(24) := 'user.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(25) := '    "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Email",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(26) := '        "name" : "USERNAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(27) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user name of the user.",'||wwv_flow.LF||
'        "max_length" : 4000';
wwv_flow_imp.g_varchar2_table(28) := ','||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(29) := '"selector" : "Username",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTNAME",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(30) := '     "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(31) := 'ription" : "The last name of the user.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(32) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Lastname",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(33) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPLICATION",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(34) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The application t';
wwv_flow_imp.g_varchar2_table(35) := 'o which the user is associated.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(36) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Application",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(37) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(38) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "has_time_zone" : "';
wwv_flow_imp.g_varchar2_table(39) := 'Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",';
wwv_flow_imp.g_varchar2_table(40) := ''||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(41) := '  ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsImportedUsers",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(42) := '3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(43) := 'peration" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(44) := ' "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" :';
wwv_flow_imp.g_varchar2_table(45) := ' "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",';
wwv_flow_imp.g_varchar2_table(46) := ''||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278055372679200)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls Imported Users}'
,p_description=>'Advanced access controls can perform risk analysis of user-role assignments in applications whose data source isn''t Oracle Cloud. For that purpose, you can import information about users of those applications. (You would also use other REST resources to import information about the applications, their access points, and role assignments in those applications.)'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsImportedUsers'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/risk-management-jobs
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Risk Management Jobs",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/re';
wwv_flow_imp.g_varchar2_table(2) := 'sources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsJobs",'||wwv_flow.LF||
'    "description" : "The Risk Management';
wwv_flow_imp.g_varchar2_table(3) := ' jobs resource is used to view job details.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(4) := '   "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(5) := ' "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(6) := 'th" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(8) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(9) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who las';
wwv_flow_imp.g_varchar2_table(10) := 't updated the job.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(11) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(12) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FAILEDITEMS",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(13) := ': "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The number of items in a job that fa';
wwv_flow_imp.g_varchar2_table(14) := 'iled.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(15) := '      "selector" : "FailedItems",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREAT';
wwv_flow_imp.g_varchar2_table(16) := 'EDBY",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(17) := '     "description" : "The user who created the job.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(18) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Created';
wwv_flow_imp.g_varchar2_table(19) := 'By",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SCHEDULEDBY",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(20) := ' 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The u';
wwv_flow_imp.g_varchar2_table(21) := 'ser who scheduled the job.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(22) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ScheduledBy",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(23) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ENDDATE",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(24) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Run Date",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(25) := '  "description" : "The date and time when the job ended.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(26) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "EndDate",'||wwv_flow.LF||
'        "format_mask';
wwv_flow_imp.g_varchar2_table(27) := '" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(28) := ' : "NAME",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'        "description" : "The name of the job.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone"';
wwv_flow_imp.g_varchar2_table(30) := ' : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(31) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESULT",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(32) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "description" : "The result of the job."';
wwv_flow_imp.g_varchar2_table(33) := ','||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(34) := '"selector" : "Result",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUSMESSAGE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(35) := '        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(36) := 'escription" : "The message generated by the job.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(37) := 'ne" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StatusMe';
wwv_flow_imp.g_varchar2_table(38) := 'ssage",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STARTDATE",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(39) := ': 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(40) := 'cription" : "The date and time when the job started.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(41) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StartDate",'||wwv_flow.LF||
'        "format_mask" ';
wwv_flow_imp.g_varchar2_table(42) := ': "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(43) := ' "SUCCESSFULLYPROCESSEDITEMS",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(44) := 'a_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The number of items that the job processed successfully';
wwv_flow_imp.g_varchar2_table(45) := '.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(46) := '  "selector" : "SuccessfullyProcessedItems",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(47) := 'e" : "JOBTYPE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARC';
wwv_flow_imp.g_varchar2_table(48) := 'HAR2",'||wwv_flow.LF||
'        "description" : "A label indicating what the job is to accomplish, such as Business O';
wwv_flow_imp.g_varchar2_table(49) := 'bject Import or Security Synchronization.",'||wwv_flow.LF||
'        "max_length" : 128,'||wwv_flow.LF||
'        "has_time_zone" : nu';
wwv_flow_imp.g_varchar2_table(50) := 'll,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "JobType",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(51) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUSID",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(52) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifie';
wwv_flow_imp.g_varchar2_table(53) := 'r of the job status.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(54) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "StatusId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(55) := 'me" : "ID",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",';
wwv_flow_imp.g_varchar2_table(56) := ''||wwv_flow.LF||
'        "description" : "The unique identifier of the job.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(57) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(58) := ' "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsJobs",';
wwv_flow_imp.g_varchar2_table(59) := ''||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "data';
wwv_flow_imp.g_varchar2_table(60) := 'base_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",';
wwv_flow_imp.g_varchar2_table(61) := ''||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operat';
wwv_flow_imp.g_varchar2_table(62) := 'ion" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" ';
wwv_flow_imp.g_varchar2_table(63) := ': "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278168896679201)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Risk Management Jobs}'
,p_description=>'The Risk Management jobs resource is used to view job details.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsJobs'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/rebuild-graph
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Rebuild Graph",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources';
wwv_flow_imp.g_varchar2_table(2) := '/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsRebuildGraphJobs",'||wwv_flow.LF||
'    "description" : "The Rebuild Gr';
wwv_flow_imp.g_varchar2_table(3) := 'aph resource initiates the rebuilding of the data graph for transaction and audit data.",'||wwv_flow.LF||
'    "forma';
wwv_flow_imp.g_varchar2_table(4) := 't" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(6) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(7) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_at';
wwv_flow_imp.g_varchar2_table(8) := 'tribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROW';
wwv_flow_imp.g_varchar2_table(9) := 'KEY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(10) := '    "description" : "Get action not supported",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone"';
wwv_flow_imp.g_varchar2_table(11) := ' : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RowKey",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(12) := '      "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "adv';
wwv_flow_imp.g_varchar2_table(13) := 'ancedControlsRebuildGraphJobs",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(14) := 'operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(15) := '  "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" ';
wwv_flow_imp.g_varchar2_table(16) := ': "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey"';
wwv_flow_imp.g_varchar2_table(17) := ','||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters"';
wwv_flow_imp.g_varchar2_table(18) := ' :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278273095679201)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Rebuild Graph}'
,p_description=>'The Rebuild Graph resource initiates the rebuilding of the data graph for transaction and audit data.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsRebuildGraphJobs'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/asynchronous-separation-of-duties-simulations
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Asynchronous Separation of Duties Simulations",'||wwv_flow.LF||
'    "server_p';
wwv_flow_imp.g_varchar2_table(2) := 'refix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsRolesProvisioning",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(3) := '  "description" : "The asynchronous separation of duties resource simulates how active access contro';
wwv_flow_imp.g_varchar2_table(4) := 'ls would identify incidents if individual users were assigned particular job roles.\n\nUse this REST';
wwv_flow_imp.g_varchar2_table(5) := ' resource to implement preventive controls within your provisioning workflow.",'||wwv_flow.LF||
'    "format" : "JSON';
wwv_flow_imp.g_varchar2_table(6) := '",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(7) := 'ame" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_typ';
wwv_flow_imp.g_varchar2_table(8) := 'e" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(9) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_na';
wwv_flow_imp.g_varchar2_table(10) := 'me" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INCIDENTPATHC';
wwv_flow_imp.g_varchar2_table(11) := 'ODE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(12) := '    "description" : "The result path, represented as role codes leading to the privilege found to be';
wwv_flow_imp.g_varchar2_table(13) := ' in conflict with the requested role.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "incidentPathCode",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(15) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INCIDENTPATH",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(16) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The result';
wwv_flow_imp.g_varchar2_table(17) := ' path, represented as role display names leading to the privilege found to be in conflict with the r';
wwv_flow_imp.g_varchar2_table(18) := 'equested role.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(19) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "incidentPath",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(20) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLNAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(21) := '",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the access control.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(22) := '    "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filte';
wwv_flow_imp.g_varchar2_table(23) := 'rable" : "Y",'||wwv_flow.LF||
'        "selector" : "controlName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(24) := ' "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(25) := ' "NUMBER",'||wwv_flow.LF||
'        "description" : "The ID of an access control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(26) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "controlId",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(27) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INPUTROLENAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(28) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the r';
wwv_flow_imp.g_varchar2_table(29) := 'ole to be assigned to the user.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(30) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "inputRoleName",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(31) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INPUTROLECODE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(32) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The code of the ro';
wwv_flow_imp.g_varchar2_table(33) := 'le to be assigned to the user.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(34) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "inputRoleCode",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(35) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONFLICTINGROLE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(36) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The roles conflic';
wwv_flow_imp.g_varchar2_table(37) := 'ting with the role to be assigned to the user, delimited by a pipe character.",'||wwv_flow.LF||
'        "max_length"';
wwv_flow_imp.g_varchar2_table(38) := ' : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(39) := '      "selector" : "conflictingRole",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attribu';
wwv_flow_imp.g_varchar2_table(40) := 'tes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsRolesProvisioning",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y';
wwv_flow_imp.g_varchar2_table(41) := '"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COL';
wwv_flow_imp.g_varchar2_table(42) := 'LECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(43) := '['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(44) := '     "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(45) := '      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278324119679201)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Asynchronous Separation of Duties Simulations}'
,p_description=>'The asynchronous separation of duties resource simulates how active access controls would identify incidents if individual users were assigned particular job roles.

Use this REST resource to implement preventive controls within your provisioning workflow.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsRolesProvisioning'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/transaction-synchronization
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Transaction Synchronization",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRes';
wwv_flow_imp.g_varchar2_table(2) := 'tApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControlsTransactionSyncJobs",'||wwv_flow.LF||
'    "description" ';
wwv_flow_imp.g_varchar2_table(3) := ': "The Transaction Synchronization resource initiates the incremental update of the data graph for t';
wwv_flow_imp.g_varchar2_table(4) := 'ransaction and audit data.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row';
wwv_flow_imp.g_varchar2_table(5) := '" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(6) := '        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(7) := '   "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(8) := 'r" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(9) := ''||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROWKEY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(10) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Get action not supported",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(11) := 'length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(12) := ' "Y",'||wwv_flow.LF||
'        "selector" : "RowKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attribut';
wwv_flow_imp.g_varchar2_table(13) := 'es" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControlsTransactionSyncJobs",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "';
wwv_flow_imp.g_varchar2_table(14) := 'Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_CO';
wwv_flow_imp.g_varchar2_table(15) := 'LLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(16) := ' ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(17) := '      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :';
wwv_flow_imp.g_varchar2_table(18) := ''||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278420157679201)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Transaction Synchronization}'
,p_description=>'The Transaction Synchronization resource initiates the incremental update of the data graph for transaction and audit data.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControlsTransactionSyncJobs'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/incidents/perspectives/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Incidents/Perspectives/Perspectives",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(2) := 'server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/in';
wwv_flow_imp.g_varchar2_table(3) := 'cidents/{Id4}/child/perspectives/{TreeId}/child/perspectives",'||wwv_flow.LF||
'    "description" : "The perspectives';
wwv_flow_imp.g_varchar2_table(4) := ' resource is used to view perspective item values in a flat structure assigned to the root node of a';
wwv_flow_imp.g_varchar2_table(5) := 'dvanced controls or to modify those assignments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "item';
wwv_flow_imp.g_varchar2_table(6) := 's",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(7) := '      "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max';
wwv_flow_imp.g_varchar2_table(8) := '_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(9) := ' "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(10) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TREEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(11) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifie';
wwv_flow_imp.g_varchar2_table(12) := 'r of the perspective hierarchy.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(13) := ' "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TreeId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(14) := '      "name" : "INCIDENTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(15) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the advanced control incident t';
wwv_flow_imp.g_varchar2_table(16) := 'he perspective value is assigned to.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(17) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IncidentId",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(18) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSPITEMID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(19) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifi';
wwv_flow_imp.g_varchar2_table(20) := 'er of the perspective value assigned to the advanced control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(21) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PerspItemId",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(22) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(23) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the perspective';
wwv_flow_imp.g_varchar2_table(24) := ' value assigned to the advanced control.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(25) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(26) := 's_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedCon';
wwv_flow_imp.g_varchar2_table(27) := 'trols",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(28) := '  "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows"';
wwv_flow_imp.g_varchar2_table(29) := ' : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database';
wwv_flow_imp.g_varchar2_table(30) := '_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all';
wwv_flow_imp.g_varchar2_table(31) := '_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name';
wwv_flow_imp.g_varchar2_table(32) := '" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : ';
wwv_flow_imp.g_varchar2_table(33) := '"Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_nul';
wwv_flow_imp.g_varchar2_table(34) := 'l" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id4",'||wwv_flow.LF||
'      "param_type" : "URL_';
wwv_flow_imp.g_varchar2_table(35) := 'PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(36) := ' "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "';
wwv_flow_imp.g_varchar2_table(37) := 'N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "TreeId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(38) := 'RCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_arr';
wwv_flow_imp.g_varchar2_table(39) := 'ay" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278517882679202)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Incidents/Perspectives/Perspectives}'
,p_description=>'The perspectives resource is used to view perspective item values in a flat structure assigned to the root node of advanced controls or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/incidents/{Id4}/child/perspectives/{TreeId}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/incidents/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Incidents/Perspectives",'||wwv_flow.LF||
'    "server_prefix';
wwv_flow_imp.g_varchar2_table(2) := '" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/incidents/{Id4}';
wwv_flow_imp.g_varchar2_table(3) := '/child/perspectives",'||wwv_flow.LF||
'    "description" : "The perspectives resource is used to view root node persp';
wwv_flow_imp.g_varchar2_table(4) := 'ective values assigned to advanced control incidents or to modify those assignments.",'||wwv_flow.LF||
'    "format" ';
wwv_flow_imp.g_varchar2_table(5) := ': "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(6) := '     "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(7) := 'ata_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(8) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attri';
wwv_flow_imp.g_varchar2_table(9) := 'bute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TREEID';
wwv_flow_imp.g_varchar2_table(10) := '",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(11) := 'description" : "The unique identifier of the perspective hierarchy.",'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(12) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TreeId",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(13) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INCIDENTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(14) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifie';
wwv_flow_imp.g_varchar2_table(15) := 'r of the advanced control incident the perspective value is assigned to.",'||wwv_flow.LF||
'        "max_length" : 40';
wwv_flow_imp.g_varchar2_table(16) := '00,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(17) := '  "selector" : "IncidentId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(18) := '     "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(19) := 'ription" : "The name of the perspective value assigned to the advanced control.",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(20) := 'h" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(21) := '        "selector" : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(22) := '{'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(23) := '['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_patte';
wwv_flow_imp.g_varchar2_table(24) := 'rn" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(25) := '   "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:AP';
wwv_flow_imp.g_varchar2_table(26) := 'EX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],';
wwv_flow_imp.g_varchar2_table(27) := ''||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_typ';
wwv_flow_imp.g_varchar2_table(28) := 'e" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(29) := ' "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "na';
wwv_flow_imp.g_varchar2_table(30) := 'me" : "Id4",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required"';
wwv_flow_imp.g_varchar2_table(31) := ' : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_';
wwv_flow_imp.g_varchar2_table(32) := 'null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278638335679202)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Incidents/Perspectives}'
,p_description=>'The perspectives resource is used to view root node perspective values assigned to advanced control incidents or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/incidents/{Id4}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/incidents/dynamic-attributes
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Incidents/Dynamic Attributes",'||wwv_flow.LF||
'    "server_';
wwv_flow_imp.g_varchar2_table(2) := 'prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/incidents';
wwv_flow_imp.g_varchar2_table(3) := '/{Id4}/child/dynamicAttributes",'||wwv_flow.LF||
'    "description" : "The dynamic attributes resource is used to vie';
wwv_flow_imp.g_varchar2_table(4) := 'w the system generated attributes of advanced transaction control incidents.",'||wwv_flow.LF||
'    "format" : "JSON"';
wwv_flow_imp.g_varchar2_table(5) := ','||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(6) := 'me" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(7) := '" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(8) := '",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_nam';
wwv_flow_imp.g_varchar2_table(9) := 'e" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ATTRIBUTEVALUE';
wwv_flow_imp.g_varchar2_table(10) := '",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(11) := ' "description" : "The value for the dynamic attribute of the advanced control incident.",'||wwv_flow.LF||
'        "m';
wwv_flow_imp.g_varchar2_table(12) := 'ax_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(13) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "AttributeValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(14) := 'name" : "ATTRIBUTENAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(15) := ' : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name for the dynamic attribute of the advanced control i';
wwv_flow_imp.g_varchar2_table(16) := 'ncident.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(17) := '       "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AttributeName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(18) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(19) := 'ata_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the advanced control incid';
wwv_flow_imp.g_varchar2_table(20) := 'ent the dynamic attribute belongs to.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(21) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(22) := 'mmon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControl';
wwv_flow_imp.g_varchar2_table(23) := 's",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "d';
wwv_flow_imp.g_varchar2_table(24) := 'atabase_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "';
wwv_flow_imp.g_varchar2_table(25) := 'N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_ope';
wwv_flow_imp.g_varchar2_table(26) := 'ration" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_row';
wwv_flow_imp.g_varchar2_table(27) := 's" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : ';
wwv_flow_imp.g_varchar2_table(28) := '"Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" :';
wwv_flow_imp.g_varchar2_table(30) := ' "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id4",'||wwv_flow.LF||
'      "param_type" : "URL_PATT';
wwv_flow_imp.g_varchar2_table(31) := 'ERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is';
wwv_flow_imp.g_varchar2_table(32) := '_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(33) := '   }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278712450679203)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Incidents/Dynamic Attributes}'
,p_description=>'The dynamic attributes resource is used to view the system generated attributes of advanced transaction control incidents.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/incidents/{Id4}/child/dynamicAttributes'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/incidents/comments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Incidents/Comments",'||wwv_flow.LF||
'    "server_prefix" : ';
wwv_flow_imp.g_varchar2_table(2) := '"/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/incidents/{Id4}/chi';
wwv_flow_imp.g_varchar2_table(3) := 'ld/comments",'||wwv_flow.LF||
'    "description" : "The comments resource is used to view or modify comments written ';
wwv_flow_imp.g_varchar2_table(4) := 'about advanced control incidents.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_sin';
wwv_flow_imp.g_varchar2_table(5) := 'gle_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence';
wwv_flow_imp.g_varchar2_table(6) := '" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000';
wwv_flow_imp.g_varchar2_table(7) := ','||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(8) := 'selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(9) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(10) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By",'||wwv_flow.LF||
'        "descr';
wwv_flow_imp.g_varchar2_table(11) := 'iption" : "The user who updated the advanced-control comment most recently.",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(12) := ' 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(13) := '   "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATI';
wwv_flow_imp.g_varchar2_table(14) := 'ONDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WI';
wwv_flow_imp.g_varchar2_table(15) := 'TH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and time the adv';
wwv_flow_imp.g_varchar2_table(16) := 'anced-control comment was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(17) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"';
wwv_flow_imp.g_varchar2_table(18) := 'T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(19) := '       "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "la';
wwv_flow_imp.g_varchar2_table(20) := 'bel" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the advanced-control comment.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(21) := '       "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fil';
wwv_flow_imp.g_varchar2_table(22) := 'terable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(23) := ' "name" : "USERCOMMENT",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(24) := ' : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Comment",'||wwv_flow.LF||
'        "description" : "The text of the advanced-contro';
wwv_flow_imp.g_varchar2_table(25) := 'l comment.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(26) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserComment",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(27) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DELEGATED",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(28) := '     "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The flag indicating that the advanced-contro';
wwv_flow_imp.g_varchar2_table(29) := 'l comment was delegated.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(30) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "Delegated",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(31) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N"';
wwv_flow_imp.g_varchar2_table(32) := ','||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the advanced-con';
wwv_flow_imp.g_varchar2_table(33) := 'trol comment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(34) := ' "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUP';
wwv_flow_imp.g_varchar2_table(35) := 'DATEDATE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP ';
wwv_flow_imp.g_varchar2_table(36) := 'WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated Date",'||wwv_flow.LF||
'        "description" : "The date and time t';
wwv_flow_imp.g_varchar2_table(37) := 'he advanced-control comment was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(38) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "format';
wwv_flow_imp.g_varchar2_table(39) := '_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plug';
wwv_flow_imp.g_varchar2_table(40) := 'in_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(41) := '  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION';
wwv_flow_imp.g_varchar2_table(42) := '",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(43) := ' ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "u';
wwv_flow_imp.g_varchar2_table(44) := 'rl_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      [';
wwv_flow_imp.g_varchar2_table(45) := ''||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_';
wwv_flow_imp.g_varchar2_table(46) := 'pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(47) := '  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type';
wwv_flow_imp.g_varchar2_table(48) := '" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(49) := '"is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "nam';
wwv_flow_imp.g_varchar2_table(50) := 'e" : "Id4",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" ';
wwv_flow_imp.g_varchar2_table(51) := ': "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_n';
wwv_flow_imp.g_varchar2_table(52) := 'ull" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278855635679203)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Incidents/Comments}'
,p_description=>'The comments resource is used to view or modify comments written about advanced control incidents.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/incidents/{Id4}/child/comments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resou';
wwv_flow_imp.g_varchar2_table(2) := 'rces/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls",'||wwv_flow.LF||
'    "description" : "The advanced controls reso';
wwv_flow_imp.g_varchar2_table(3) := 'urce is used to view or modify advanced controls.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "ite';
wwv_flow_imp.g_varchar2_table(4) := 'ms",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(5) := '       "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(6) := 'x_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(7) := ': "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(8) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(9) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By"';
wwv_flow_imp.g_varchar2_table(10) := ','||wwv_flow.LF||
'        "description" : "The user who updated the advanced control most recently.",'||wwv_flow.LF||
'        "max_l';
wwv_flow_imp.g_varchar2_table(11) := 'ength" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y';
wwv_flow_imp.g_varchar2_table(12) := '",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(13) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(14) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Status",'||wwv_flow.LF||
'        "description" : "Whethe';
wwv_flow_imp.g_varchar2_table(15) := 'r the advanced control status is Active or Inactive.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(16) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status';
wwv_flow_imp.g_varchar2_table(17) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : ';
wwv_flow_imp.g_varchar2_table(18) := '4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label"';
wwv_flow_imp.g_varchar2_table(19) := ' : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and time when the advanced control was created';
wwv_flow_imp.g_varchar2_table(20) := '.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(21) := ' "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-';
wwv_flow_imp.g_varchar2_table(22) := 'mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATE';
wwv_flow_imp.g_varchar2_table(23) := 'DBY",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(24) := '    "label" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the advanced control.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(25) := '      "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(26) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(27) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SCHEDULEDBY",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(28) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who schedule';
wwv_flow_imp.g_varchar2_table(29) := 'd the advanced control to run.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(30) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ScheduledBy",'||wwv_flow.LF||
'        "addi';
wwv_flow_imp.g_varchar2_table(31) := 'tional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DESCRIPTION"';
wwv_flow_imp.g_varchar2_table(32) := ','||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(33) := '"label" : "Control Description",'||wwv_flow.LF||
'        "description" : "The description of the advanced control.",';
wwv_flow_imp.g_varchar2_table(34) := ''||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(35) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Description",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(36) := '       "name" : "ENFORCEMENTTYPE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(37) := 'data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Enforcement Type",'||wwv_flow.LF||
'        "description" : "Whether a cont';
wwv_flow_imp.g_varchar2_table(38) := 'rol identifies role assignments or transaction risk that should be monitored, approved, or prevented';
wwv_flow_imp.g_varchar2_table(39) := '.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(40) := '  "selector" : "EnforcementType",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(41) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LATESTJOBID",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(42) := ': "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Latest Analysis Job ID",'||wwv_flow.LF||
'        "descript';
wwv_flow_imp.g_varchar2_table(43) := 'ion" : "The job identifier generated when the advanced control was most recently run.",'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(44) := '_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "';
wwv_flow_imp.g_varchar2_table(45) := 'LatestJobId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATECODE",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(46) := 'ence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Sta';
wwv_flow_imp.g_varchar2_table(47) := 'te",'||wwv_flow.LF||
'        "description" : "The state of the advanced control.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(48) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(49) := 'r" : "StateCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(50) := 'nce" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Name';
wwv_flow_imp.g_varchar2_table(51) := '",'||wwv_flow.LF||
'        "description" : "The name of the advanced control.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(52) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(53) := ' : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTRUNDATE",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(54) := 'nce" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(55) := ' "label" : "Last Run Date",'||wwv_flow.LF||
'        "description" : "The date and time when the advanced control was';
wwv_flow_imp.g_varchar2_table(56) := ' most recently run.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(57) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "LastRunDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.ff';
wwv_flow_imp.g_varchar2_table(58) := 'tzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TYPE",'||wwv_flow.LF||
'        "sequence" : 1';
wwv_flow_imp.g_varchar2_table(59) := '3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Type",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(60) := ' "description" : "The type of risk the advanced control analyzes, access or transaction.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(61) := 'has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(62) := ': "Type",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(63) := '   "name" : "STATUSID",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(64) := ' : "NUMBER",'||wwv_flow.LF||
'        "label" : "Run Status",'||wwv_flow.LF||
'        "description" : "The identifier for the status ';
wwv_flow_imp.g_varchar2_table(65) := 'of the advanced control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(66) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StatusId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(67) := ' "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMB';
wwv_flow_imp.g_varchar2_table(68) := 'ER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the advanced control.",'||wwv_flow.LF||
'        "has_time_zon';
wwv_flow_imp.g_varchar2_table(69) := 'e" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(70) := '    "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "L';
wwv_flow_imp.g_varchar2_table(71) := 'ASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIME';
wwv_flow_imp.g_varchar2_table(72) := 'STAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated Date",'||wwv_flow.LF||
'        "description" : "The date and ';
wwv_flow_imp.g_varchar2_table(73) := 'time when the advanced control was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(74) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "add';
wwv_flow_imp.g_varchar2_table(75) := 'itional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(76) := 'is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedCo';
wwv_flow_imp.g_varchar2_table(77) := 'ntrols",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(78) := '   "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows';
wwv_flow_imp.g_varchar2_table(79) := '" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "databas';
wwv_flow_imp.g_varchar2_table(80) := 'e_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_al';
wwv_flow_imp.g_varchar2_table(81) := 'l_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(82) := '"database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_';
wwv_flow_imp.g_varchar2_table(83) := 'rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23278931762679204)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls}'
,p_description=>'The advanced controls resource is used to view or modify advanced controls.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/advanced-control-flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Advanced Control Flexfields",'||wwv_flow.LF||
'    "server_p';
wwv_flow_imp.g_varchar2_table(2) := 'refix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/additional';
wwv_flow_imp.g_varchar2_table(3) := 'Informations",'||wwv_flow.LF||
'    "description" : "The advanced control flexfields resource is used to view or modi';
wwv_flow_imp.g_varchar2_table(4) := 'fy information added to controls in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items';
wwv_flow_imp.g_varchar2_table(5) := '",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(6) := '     "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(7) := 'length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(8) := '"N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(9) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(10) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of ';
wwv_flow_imp.g_varchar2_table(11) := 'a flexfield associated to the advanced control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(12) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(13) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAYVALUE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(14) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "descri';
wwv_flow_imp.g_varchar2_table(15) := 'ption" : "The segment that appears in a flexfield associated to the advanced control only in a defin';
wwv_flow_imp.g_varchar2_table(16) := 'ed context.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(17) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(18) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(19) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(20) := 'escription" : "The context value that prompts a context-sensitive segment to appear in a flexfield a';
wwv_flow_imp.g_varchar2_table(21) := 'ssociated to the advanced control.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(22) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(23) := '  "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advance';
wwv_flow_imp.g_varchar2_table(24) := 'dControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(25) := '      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_r';
wwv_flow_imp.g_varchar2_table(26) := 'ows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "data';
wwv_flow_imp.g_varchar2_table(27) := 'base_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch';
wwv_flow_imp.g_varchar2_table(28) := '_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(29) := '   "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_a';
wwv_flow_imp.g_varchar2_table(30) := 'll_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "na';
wwv_flow_imp.g_varchar2_table(31) := 'me" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" ';
wwv_flow_imp.g_varchar2_table(32) := ': "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_n';
wwv_flow_imp.g_varchar2_table(33) := 'ull" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279048641679205)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Advanced Control Flexfields}'
,p_description=>'The advanced control flexfields resource is used to view or modify information added to controls in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/additionalInformations'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/comments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Comments",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRest';
wwv_flow_imp.g_varchar2_table(2) := 'Api/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/comments",'||wwv_flow.LF||
'    "description" ';
wwv_flow_imp.g_varchar2_table(3) := ': "The comments resource is used to view or modify comments written about advanced controls.",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(4) := 'format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(5) := '   {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(6) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(7) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remo';
wwv_flow_imp.g_varchar2_table(8) := 'te_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(9) := ' "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(10) := 'CHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By",'||wwv_flow.LF||
'        "description" : "The user who updated the advan';
wwv_flow_imp.g_varchar2_table(11) := 'ced-control comment most recently.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(12) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(13) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creatio';
wwv_flow_imp.g_varchar2_table(15) := 'n Date",'||wwv_flow.LF||
'        "description" : "The date and time the advanced-control comment was created.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(16) := '    "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(17) := 'or" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(18) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(19) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Created By",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(20) := '" : "The user who created the advanced-control comment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(21) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Cre';
wwv_flow_imp.g_varchar2_table(22) := 'atedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERCOMMENT",'||wwv_flow.LF||
'        "sequenc';
wwv_flow_imp.g_varchar2_table(23) := 'e" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Comment';
wwv_flow_imp.g_varchar2_table(24) := '",'||wwv_flow.LF||
'        "description" : "The text of the advanced-control comment.",'||wwv_flow.LF||
'        "max_length" : 2000,';
wwv_flow_imp.g_varchar2_table(25) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(26) := 'selector" : "UserComment",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(27) := ' "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(28) := 'n" : "The unique identifier of the advanced-control comment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(29) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(30) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(31) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated Date';
wwv_flow_imp.g_varchar2_table(32) := '",'||wwv_flow.LF||
'        "description" : "The date and time the advanced-control comment was most recently updated';
wwv_flow_imp.g_varchar2_table(33) := '.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(34) := ' "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(35) := '   "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advanc';
wwv_flow_imp.g_varchar2_table(36) := 'edControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",';
wwv_flow_imp.g_varchar2_table(37) := ''||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_';
wwv_flow_imp.g_varchar2_table(38) := 'rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "dat';
wwv_flow_imp.g_varchar2_table(39) := 'abase_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetc';
wwv_flow_imp.g_varchar2_table(40) := 'h_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(41) := '   "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(42) := '     "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(43) := ' "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "dir';
wwv_flow_imp.g_varchar2_table(44) := 'ection" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(45) := ' "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279100849679205)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Comments}'
,p_description=>'The comments resource is used to view or modify comments written about advanced controls.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/comments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/perspectives/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Perspectives/Perspectives",'||wwv_flow.LF||
'    "server_pre';
wwv_flow_imp.g_varchar2_table(2) := 'fix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/perspectives';
wwv_flow_imp.g_varchar2_table(3) := '/{perspectivesUniqID}/child/perspectives",'||wwv_flow.LF||
'    "description" : "The perspectives resource is used to';
wwv_flow_imp.g_varchar2_table(4) := ' view perspective item values in a flat structure assigned to the root node of advanced controls or ';
wwv_flow_imp.g_varchar2_table(5) := 'to modify those assignments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_r';
wwv_flow_imp.g_varchar2_table(6) := 'ow" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1';
wwv_flow_imp.g_varchar2_table(7) := ','||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(8) := '     "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(9) := 'tor" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(10) := 'Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TREEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(11) := '",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the perspective';
wwv_flow_imp.g_varchar2_table(12) := ' hierarchy.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "';
wwv_flow_imp.g_varchar2_table(13) := 'Y",'||wwv_flow.LF||
'        "selector" : "TreeId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONT';
wwv_flow_imp.g_varchar2_table(14) := 'ROLID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(15) := '    "description" : "The unique identifier of the advanced control the perspective value is assigned';
wwv_flow_imp.g_varchar2_table(16) := ' to.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(17) := '     "selector" : "ControlId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(18) := '       "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(19) := 'scription" : "The name of the perspective value assigned to the advanced control.",'||wwv_flow.LF||
'        "max_len';
wwv_flow_imp.g_varchar2_table(20) := 'gth" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(21) := ','||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSPITE';
wwv_flow_imp.g_varchar2_table(22) := 'MID",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(23) := '  "description" : "The unique identifier of the perspective value assigned to the advanced control."';
wwv_flow_imp.g_varchar2_table(24) := ','||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(25) := '"selector" : "PerspItemId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {';
wwv_flow_imp.g_varchar2_table(26) := ''||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  [';
wwv_flow_imp.g_varchar2_table(27) := ''||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_patter';
wwv_flow_imp.g_varchar2_table(28) := 'n" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(29) := '  "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APE';
wwv_flow_imp.g_varchar2_table(30) := 'X$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type';
wwv_flow_imp.g_varchar2_table(32) := '" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(33) := '"is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "nam';
wwv_flow_imp.g_varchar2_table(34) := 'e" : "perspectivesUniqID",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(35) := ' "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(36) := '   "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279269680679206)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Perspectives/Perspectives}'
,p_description=>'The perspectives resource is used to view perspective item values in a flat structure assigned to the root node of advanced controls or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/perspectives/{perspectivesUniqID}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/incidents
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Incidents",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRes';
wwv_flow_imp.g_varchar2_table(2) := 'tApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/incidents",'||wwv_flow.LF||
'    "description';
wwv_flow_imp.g_varchar2_table(3) := '" : "The incidents resource is used to view or modify records of advanced-control violations.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(4) := '"format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(5) := '    {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(6) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(7) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "rem';
wwv_flow_imp.g_varchar2_table(8) := 'ote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(9) := ': "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIM';
wwv_flow_imp.g_varchar2_table(10) := 'ESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the advanced-control inciden';
wwv_flow_imp.g_varchar2_table(11) := 't was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(12) := ' "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_m';
wwv_flow_imp.g_varchar2_table(13) := 'ask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(14) := 'me" : "CONTROLNAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(15) := 'VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the advanced control that generated the incident.",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(16) := '        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(17) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(18) := '      "name" : "RESULTINVESTIGATOR",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(19) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The investigator assigned to the advanced-contro';
wwv_flow_imp.g_varchar2_table(20) := 'l incident.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(21) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultInvestigator",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(22) := ''||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERLASTNAME",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(23) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The last name of the user involved';
wwv_flow_imp.g_varchar2_table(24) := ' in the incident result.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(25) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserLastName",'||wwv_flow.LF||
'        "additiona';
wwv_flow_imp.g_varchar2_table(26) := 'l_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONFLICTINGROLES"';
wwv_flow_imp.g_varchar2_table(27) := ','||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(28) := '"description" : "For an access incident, access paths that conflict with the access path that is the';
wwv_flow_imp.g_varchar2_table(29) := ' focus of the incident. This does not apply to transaction incidents.",'||wwv_flow.LF||
'        "max_length" : 4000,';
wwv_flow_imp.g_varchar2_table(30) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(31) := 'selector" : "ConflictingRoles",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(32) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESULTGROUP",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(33) := '",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "For a transaction incident, Group is a';
wwv_flow_imp.g_varchar2_table(34) := ' descriptor that indicates what grouped return values have in common. For example, a filter that use';
wwv_flow_imp.g_varchar2_table(35) := 's the Equals condition groups records in which values are equal, and Group reports the business obje';
wwv_flow_imp.g_varchar2_table(36) := 'ct and attribute whose values are equal. For an access incident, Group is one or more access paths t';
wwv_flow_imp.g_varchar2_table(37) := 'hat conflict with the Incident Information path.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(38) := 'ne" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultGr';
wwv_flow_imp.g_varchar2_table(39) := 'oup",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(40) := 'me" : "INCIDENTINFORMATION",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(41) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "For a transaction incident, Incident Information is the ';
wwv_flow_imp.g_varchar2_table(42) := 'value returned for the first attribute selected as a result attribute for the control. For an access';
wwv_flow_imp.g_varchar2_table(43) := ' incident, Incident Information is the path by which a user reaches an access point that is the focu';
wwv_flow_imp.g_varchar2_table(44) := 's of the incident.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(45) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IncidentInformation",'||wwv_flow.LF||
'        "additio';
wwv_flow_imp.g_varchar2_table(46) := 'nal_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INCIDENTVERSION';
wwv_flow_imp.g_varchar2_table(47) := '",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(48) := 'description" : "The version of the incident.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(49) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IncidentVersion",'||wwv_flow.LF||
'        "additional_inf';
wwv_flow_imp.g_varchar2_table(50) := 'o" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONFLICTINGACCPOINTNAM';
wwv_flow_imp.g_varchar2_table(51) := 'E",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(52) := '   "description" : "The name of an access point that is in conflict with the access point identified';
wwv_flow_imp.g_varchar2_table(53) := ' by the AccessPointName attribute.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(54) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ConflictingAccPointName';
wwv_flow_imp.g_varchar2_table(55) := '",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(56) := ' : "INCIDENTINFORMATIONCODES",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(57) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique codes that correlate to the incident infor';
wwv_flow_imp.g_varchar2_table(58) := 'mation path value. These codes represent the job, duty, and privilege codes.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(59) := ': 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(60) := '      "selector" : "IncidentInformationCodes",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(61) := 'ommon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GROUPINGVALUE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(62) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "For a transaction in';
wwv_flow_imp.g_varchar2_table(63) := 'cident, Grouping Value reports the value that grouped result records have in common. For an access i';
wwv_flow_imp.g_varchar2_table(64) := 'ncident, Grouping Value is not used.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(65) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GroupingValue",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(66) := '    "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLO';
wwv_flow_imp.g_varchar2_table(67) := 'BALUSERNAME",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(68) := 'R2",'||wwv_flow.LF||
'        "description" : "The unique global user name.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(69) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(70) := '"GlobalUserName",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(71) := ''||wwv_flow.LF||
'        "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(72) := 'a_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the advanced control that gene';
wwv_flow_imp.g_varchar2_table(73) := 'rated the incident.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(74) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(75) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(76) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who updated ';
wwv_flow_imp.g_varchar2_table(77) := 'the advanced-control incident most recently.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(78) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy"';
wwv_flow_imp.g_varchar2_table(79) := ','||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(80) := ': "STATUS",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(81) := '",'||wwv_flow.LF||
'        "description" : "The status of the advanced-control incident. Values include Assigned, Ac';
wwv_flow_imp.g_varchar2_table(82) := 'cepted, Remediate, and Resolved.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(83) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(84) := 'n" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(85) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who created the adv';
wwv_flow_imp.g_varchar2_table(86) := 'anced-control incident.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(87) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_inf';
wwv_flow_imp.g_varchar2_table(88) := 'o" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALUSERID",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(89) := ' "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(90) := 'on" : "The unique identifier of the global user.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(91) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalUserId",'||wwv_flow.LF||
'        "additional_in';
wwv_flow_imp.g_varchar2_table(92) := 'fo" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISINTRAROLEVIOL",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(93) := '     "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(94) := 'cription" : "Whether the incident is an \"intra-role\" conflict, which is defined as involving acces';
wwv_flow_imp.g_varchar2_table(95) := 's points available within a single role.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(96) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsIntraRoleViol",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(97) := '       "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(98) := 'PRIORITY",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(99) := '        "description" : "The priority of the advanced-control incident.",'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(100) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Priority",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(101) := '     "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "US';
wwv_flow_imp.g_varchar2_table(102) := 'ERFIRSTNAME",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(103) := 'R2",'||wwv_flow.LF||
'        "description" : "The first name of the user involved in the incident result.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(104) := '"max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(105) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "UserFirstName",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(106) := 'common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSPOINTTYPE",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(107) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Whether the focal';
wwv_flow_imp.g_varchar2_table(108) := ' access point of an access incident is a privilege or a role. This does not apply to transaction inc';
wwv_flow_imp.g_varchar2_table(109) := 'idents.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(110) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessPointType",'||wwv_flow.LF||
'        "additional_info" : "Rea';
wwv_flow_imp.g_varchar2_table(111) := 'dOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCE",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(112) := ' : 23,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(113) := 'e data source in which the incident occurred.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(114) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DataSource",';
wwv_flow_imp.g_varchar2_table(115) := ''||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(116) := ' "ROLE",'||wwv_flow.LF||
'        "sequence" : 24,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(117) := '        "description" : "The parent role in the path that is the focus of an access incident. This d';
wwv_flow_imp.g_varchar2_table(118) := 'oes not apply to incidents returned by transaction controls.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(119) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(120) := ' : "Role",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(121) := '  "name" : "ACCESSPOINTNAME",'||wwv_flow.LF||
'        "sequence" : 25,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(122) := '_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The terminal access point in the path that is the focu';
wwv_flow_imp.g_varchar2_table(123) := 's of an access incident. This does not apply to incidents returned by transaction controls.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(124) := '  "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(125) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessPointName",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(126) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVISIONDATE",'||wwv_flow.LF||
'        "sequence" : 26,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(127) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(128) := 'The date and time the advanced-control incident was revised.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(129) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionDate",'||wwv_flow.LF||
'        "fo';
wwv_flow_imp.g_varchar2_table(130) := 'rmat_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(131) := '   "name" : "STATE",'||wwv_flow.LF||
'        "sequence" : 27,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(132) := '"VARCHAR2",'||wwv_flow.LF||
'        "description" : "The state of the advanced-control incident. Values include In I';
wwv_flow_imp.g_varchar2_table(133) := 'nvestigation, Approved, and Closed.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(134) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "State",'||wwv_flow.LF||
'        "additi';
wwv_flow_imp.g_varchar2_table(135) := 'onal_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLTYPE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(136) := '        "sequence" : 28,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(137) := 'scription" : "The type of advanced control that generated the incident, access or transaction.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(138) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(139) := 'ctor" : "ControlType",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(140) := '    {'||wwv_flow.LF||
'        "name" : "CLOSEDDATE",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(141) := '  "data_type" : "DATE",'||wwv_flow.LF||
'        "description" : "The date and time when the advanced-control inciden';
wwv_flow_imp.g_varchar2_table(142) := 't was closed.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(143) := ' "Y",'||wwv_flow.LF||
'        "selector" : "ClosedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mas';
wwv_flow_imp.g_varchar2_table(144) := 'k" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(145) := 'ce" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(146) := '"The unique identifier of the advanced-control incident.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(147) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "I';
wwv_flow_imp.g_varchar2_table(148) := 'd",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(149) := '" : "ENTITLEMENT",'||wwv_flow.LF||
'        "sequence" : 31,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "V';
wwv_flow_imp.g_varchar2_table(150) := 'ARCHAR2",'||wwv_flow.LF||
'        "description" : "The entitlement, if any, to which the focal access point of an ac';
wwv_flow_imp.g_varchar2_table(151) := 'cess incident belongs. This does not apply to transaction incidents.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(152) := '        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(153) := 'elector" : "Entitlement",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },';
wwv_flow_imp.g_varchar2_table(154) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CLOSEDBY",'||wwv_flow.LF||
'        "sequence" : 32,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(155) := '   "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who closed the advanced-control incid';
wwv_flow_imp.g_varchar2_table(156) := 'ent.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(157) := ' "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ClosedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(158) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 33,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(159) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(160) := 'on" : "The date and time when the advanced-control incident was updated.",'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(161) := ' "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate';
wwv_flow_imp.g_varchar2_table(162) := '",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:';
wwv_flow_imp.g_varchar2_table(163) := 'tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2';
wwv_flow_imp.g_varchar2_table(164) := '" : "advancedControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operatio';
wwv_flow_imp.g_varchar2_table(165) := 'n" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow';
wwv_flow_imp.g_varchar2_table(166) := '_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",';
wwv_flow_imp.g_varchar2_table(167) := ''||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(168) := '"allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : ';
wwv_flow_imp.g_varchar2_table(169) := '"PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "a';
wwv_flow_imp.g_varchar2_table(170) := 'llow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(171) := ' {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "i';
wwv_flow_imp.g_varchar2_table(172) := 's_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(173) := '"omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279301772679207)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Incidents}'
,p_description=>'The incidents resource is used to view or modify records of advanced-control violations.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/incidents'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Perspectives",'||wwv_flow.LF||
'    "server_prefix" : "/fscm';
wwv_flow_imp.g_varchar2_table(2) := 'RestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/perspectives",'||wwv_flow.LF||
'    "descr';
wwv_flow_imp.g_varchar2_table(3) := 'iption" : "The perspectives resource is used to view root node perspective values assigned to advanc';
wwv_flow_imp.g_varchar2_table(4) := 'ed controls or to modify those assignments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(5) := '   "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(6) := ' "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(7) := 'th" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",';
wwv_flow_imp.g_varchar2_table(8) := ''||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(9) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TREEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(10) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of ';
wwv_flow_imp.g_varchar2_table(11) := 'the perspective hierarchy.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(12) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TreeId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(13) := ' "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(14) := ' "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the advanced control the perspective va';
wwv_flow_imp.g_varchar2_table(15) := 'lue is assigned to.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(16) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(17) := 'me" : "NAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(18) := '2",'||wwv_flow.LF||
'        "description" : "The name of the perspective value assigned to the advanced control.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(19) := '       "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(20) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin';
wwv_flow_imp.g_varchar2_table(21) := '_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(22) := '"operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",';
wwv_flow_imp.g_varchar2_table(23) := ''||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]';
wwv_flow_imp.g_varchar2_table(24) := ''||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url';
wwv_flow_imp.g_varchar2_table(25) := '_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(26) := '     ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN"';
wwv_flow_imp.g_varchar2_table(27) := ','||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_sta';
wwv_flow_imp.g_varchar2_table(28) := 'tic" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279489402679207)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Perspectives}'
,p_description=>'The perspectives resource is used to view root node perspective values assigned to advanced controls or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/advanced-controls/incidents/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Advanced Controls/Incidents/Flexfields",'||wwv_flow.LF||
'    "server_prefix" ';
wwv_flow_imp.g_varchar2_table(2) := ': "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedControls/{Id}/child/incidents/{Id4}/c';
wwv_flow_imp.g_varchar2_table(3) := 'hild/additionalInformations",'||wwv_flow.LF||
'    "description" : "The advanced control incident flexfields resource';
wwv_flow_imp.g_varchar2_table(4) := ' is used to view or modify information added to incidents in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(5) := '  "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(6) := ': "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(7) := '"VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(8) := '       "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" :';
wwv_flow_imp.g_varchar2_table(9) := ' "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(10) := 'ence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(11) := ' "The unique identifier of a flexfield associated to the advanced control.",'||wwv_flow.LF||
'        "max_length" : ';
wwv_flow_imp.g_varchar2_table(12) := '255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(13) := '   "selector" : "Id",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DI';
wwv_flow_imp.g_varchar2_table(14) := 'SPLAYVALUE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(15) := '",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The segment that appears in a flexf';
wwv_flow_imp.g_varchar2_table(16) := 'ield associated to the advanced control only in a defined context.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(17) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(18) := 'ector" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(19) := '"__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(20) := 'CHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The context value that prompts';
wwv_flow_imp.g_varchar2_table(21) := ' a context-sensitive segment to appear in a flexfield associated to the advanced control.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(22) := '"max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(23) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plu';
wwv_flow_imp.g_varchar2_table(24) := 'gin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "advancedControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },';
wwv_flow_imp.g_varchar2_table(25) := ''||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTIO';
wwv_flow_imp.g_varchar2_table(26) := 'N",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(27) := '  ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(28) := 'url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(29) := '['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "ur';
wwv_flow_imp.g_varchar2_table(30) := 'l_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN';
wwv_flow_imp.g_varchar2_table(32) := '",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_st';
wwv_flow_imp.g_varchar2_table(33) := 'atic" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(34) := '},'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Id4",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(35) := '     "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",';
wwv_flow_imp.g_varchar2_table(36) := ''||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279548832679208)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Advanced Controls/Incidents/Flexfields}'
,p_description=>'The advanced control incident flexfields resource is used to view or modify information added to incidents in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedControls/{Id}/child/incidents/{Id4}/child/additionalInformations'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/transaction-and-audit-performance-configuration
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Transaction and Audit Performance Configuration",'||wwv_flow.LF||
'    "server';
wwv_flow_imp.g_varchar2_table(2) := '_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/advancedTransactionAndAuditPerforman';
wwv_flow_imp.g_varchar2_table(3) := 'ceConfigurations",'||wwv_flow.LF||
'    "description" : "The Transaction and Audit Performance Configuration resource';
wwv_flow_imp.g_varchar2_table(4) := ' sets cutoff dates to limit the data that transaction and audit models can analyze.",'||wwv_flow.LF||
'    "format" :';
wwv_flow_imp.g_varchar2_table(5) := ' "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(6) := '    "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(7) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(8) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attrib';
wwv_flow_imp.g_varchar2_table(9) := 'ute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "VALUE",';
wwv_flow_imp.g_varchar2_table(10) := ''||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(11) := 'description" : "The cutoff dates for transaction and audit events.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(12) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(13) := 'ector" : "Value",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(14) := 'nce" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(15) := '"The key to get the transaction and audit cutoff dates.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(16) := 'ime_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Na';
wwv_flow_imp.g_varchar2_table(17) := 'me",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2"';
wwv_flow_imp.g_varchar2_table(18) := ' : "advancedTransactionAndAuditPerformanceConfigurations",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "oper';
wwv_flow_imp.g_varchar2_table(19) := 'ations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(20) := '  "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(21) := '},'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_patt';
wwv_flow_imp.g_varchar2_table(22) := 'ern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(23) := ']'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279632627679208)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Transaction and Audit Performance Configuration}'
,p_description=>'The Transaction and Audit Performance Configuration resource sets cutoff dates to limit the data that transaction and audit models can analyze.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/advancedTransactionAndAuditPerformanceConfigurations'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignments-for-business-objects
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignments for Business Objects",'||wwv_flow.LF||
'    "server_prefix" :';
wwv_flow_imp.g_varchar2_table(2) := ' "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/businessObjectUserAssignments",'||wwv_flow.LF||
'    "descripti';
wwv_flow_imp.g_varchar2_table(3) := 'on" : "Business objects supply data for transaction models and controls to analyze. But business obj';
wwv_flow_imp.g_varchar2_table(4) := 'ects are subject to security: each user can work only with models and controls that use business obj';
wwv_flow_imp.g_varchar2_table(5) := 'ects assigned to the user. An administrator manages the assignment of business objects to users.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(6) := '   "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    [';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y"';
wwv_flow_imp.g_varchar2_table(8) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(9) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(10) := 'remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(11) := 'e" : "ROWKEY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER';
wwv_flow_imp.g_varchar2_table(12) := '",'||wwv_flow.LF||
'        "description" : "This attribute isn''t currently used.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(13) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "RowKey",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(14) := 'common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "businessObjec';
wwv_flow_imp.g_varchar2_table(15) := 'tUserAssignments",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : ';
wwv_flow_imp.g_varchar2_table(16) := '"GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetc';
wwv_flow_imp.g_varchar2_table(17) := 'h_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(18) := '  "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allo';
wwv_flow_imp.g_varchar2_table(19) := 'w_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279788530679208)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignments for Business Objects}'
,p_description=>'Business objects supply data for transaction models and controls to analyze. But business objects are subject to security: each user can work only with models and controls that use business objects assigned to the user. An administrator manages the assignment of business objects to users.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/businessObjectUserAssignments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/connector-credentials
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Connector Credentials",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/r';
wwv_flow_imp.g_varchar2_table(2) := 'esources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/connectorCredentials",'||wwv_flow.LF||
'    "description" : "The connector cred';
wwv_flow_imp.g_varchar2_table(3) := 'entials resource saves and retrieves credentials from the WebLogic credential store framework.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(4) := ' "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(5) := '     {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(6) := '        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(7) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "re';
wwv_flow_imp.g_varchar2_table(8) := 'mote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(9) := ' : "VALUE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "CLOB",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(10) := '      "description" : "Value of the credential.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(11) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "value",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(12) := '  },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "KEY",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(13) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Unique identifier for the credential.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(15) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "key",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(16) := ': "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "connectorCredentials"';
wwv_flow_imp.g_varchar2_table(17) := ','||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "dat';
wwv_flow_imp.g_varchar2_table(18) := 'abase_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N"';
wwv_flow_imp.g_varchar2_table(19) := ','||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_opera';
wwv_flow_imp.g_varchar2_table(20) := 'tion" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows"';
wwv_flow_imp.g_varchar2_table(21) := ' : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "databas';
wwv_flow_imp.g_varchar2_table(22) := 'e_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "param';
wwv_flow_imp.g_varchar2_table(23) := 'eters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPD';
wwv_flow_imp.g_varchar2_table(24) := 'ATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "paramet';
wwv_flow_imp.g_varchar2_table(25) := 'ers" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELE';
wwv_flow_imp.g_varchar2_table(26) := 'TE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "paramete';
wwv_flow_imp.g_varchar2_table(27) := 'rs" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279876742679208)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Connector Credentials}'
,p_description=>'The connector credentials resource saves and retrieves credentials from the WebLogic credential store framework.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/connectorCredentials'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/control-assessment-results/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Control Assessment Results/Flexfields",'||wwv_flow.LF||
'    "server_prefix" :';
wwv_flow_imp.g_varchar2_table(2) := ' "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControlAssessmentResults/{ResultId}/child/a';
wwv_flow_imp.g_varchar2_table(3) := 'dditionalInformation",'||wwv_flow.LF||
'    "description" : "The control assessment flexfields resource is used to vi';
wwv_flow_imp.g_varchar2_table(4) := 'ew or modify information added to control assessments in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "r';
wwv_flow_imp.g_varchar2_table(5) := 'ow_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "A';
wwv_flow_imp.g_varchar2_table(6) := 'PEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(7) := 'CHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(8) := '   "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "AP';
wwv_flow_imp.g_varchar2_table(9) := 'EX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAY';
wwv_flow_imp.g_varchar2_table(10) := 'VALUE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(11) := '      "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "Context Segment",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(12) := ' 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(13) := '     "selector" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"name" : "RESULTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(15) := 'NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the contro';
wwv_flow_imp.g_varchar2_table(16) := 'l assessment result associated to the flexfield.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(17) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(18) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(19) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(20) := ' : "The context for the flexfield.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(21) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '  "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcCont';
wwv_flow_imp.g_varchar2_table(23) := 'rolAssessmentResults",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation';
wwv_flow_imp.g_varchar2_table(24) := '" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_';
wwv_flow_imp.g_varchar2_table(25) := 'fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(26) := '      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(27) := 'allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "';
wwv_flow_imp.g_varchar2_table(28) := 'PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "al';
wwv_flow_imp.g_varchar2_table(29) := 'low_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(30) := '{'||wwv_flow.LF||
'      "name" : "ResultId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(31) := '   "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(32) := '     "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23279915078679209)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Control Assessment Results/Flexfields}'
,p_description=>'The control assessment flexfields resource is used to view or modify information added to control assessments in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControlAssessmentResults/{ResultId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/control-assessment-results
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Control Assessment Results",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRest';
wwv_flow_imp.g_varchar2_table(2) := 'Api/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControlAssessmentResults",'||wwv_flow.LF||
'    "description" : "The co';
wwv_flow_imp.g_varchar2_table(3) := 'ntrol assessment results resource is used to view or modify an assessment for a Financial Reporting ';
wwv_flow_imp.g_varchar2_table(4) := 'Compliance control. You can have multiple assessments for a control.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "r';
wwv_flow_imp.g_varchar2_table(5) := 'ow_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "A';
wwv_flow_imp.g_varchar2_table(6) := 'PEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(7) := 'CHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(8) := '   "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "AP';
wwv_flow_imp.g_varchar2_table(9) := 'EX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(10) := '  "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(11) := 'tion" : "The user who most recently updated the control assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(12) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(13) := 'ctor" : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(15) := '     "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the c';
wwv_flow_imp.g_varchar2_table(16) := 'ontrol assessment was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(17) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(18) := '       "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(19) := '   {'||wwv_flow.LF||
'        "name" : "REVIEWEDDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(20) := '  "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the cont';
wwv_flow_imp.g_varchar2_table(21) := 'rol assessment was reviewed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(22) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(23) := '     "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(24) := ' {'||wwv_flow.LF||
'        "name" : "RESPONSECODE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(25) := '"data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "One in a set of values indicating what the assess';
wwv_flow_imp.g_varchar2_table(26) := 'or has determined about a control, typically whether it has passed or failed its assessment: PASS, P';
wwv_flow_imp.g_varchar2_table(27) := 'ASS_WITH_EXCEPTION, FAIL,NO_OPINION.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(28) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResponseCode",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(29) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(30) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who create';
wwv_flow_imp.g_varchar2_table(31) := 'd the control assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(32) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_i';
wwv_flow_imp.g_varchar2_table(33) := 'nfo" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SURVEYID",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(34) := 'sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(35) := ' : "The unique identifier of the survey related to the control assessment.",'||wwv_flow.LF||
'        "has_time_zone"';
wwv_flow_imp.g_varchar2_table(36) := ' : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SurveyId",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(37) := '        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(38) := '"ACTIVITYCODE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCH';
wwv_flow_imp.g_varchar2_table(39) := 'AR2",'||wwv_flow.LF||
'        "description" : "A code that identifies the assessment''s type, which specifies an acti';
wwv_flow_imp.g_varchar2_table(40) := 'vity the assessor is to complete.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(41) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ActivityCode",'||wwv_flow.LF||
'        "a';
wwv_flow_imp.g_varchar2_table(42) := 'dditional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDD';
wwv_flow_imp.g_varchar2_table(43) := 'ATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH ';
wwv_flow_imp.g_varchar2_table(44) := 'TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the assessment was approved.",'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(45) := 'ime_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "App';
wwv_flow_imp.g_varchar2_table(46) := 'rovedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:';
wwv_flow_imp.g_varchar2_table(47) := 'ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATECODE",'||wwv_flow.LF||
'        "seq';
wwv_flow_imp.g_varchar2_table(48) := 'uence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(49) := ' : "The state of the control assessment.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(50) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StateCode",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(51) := '  "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESUL';
wwv_flow_imp.g_varchar2_table(52) := 'TSUMMARY",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(53) := '      "description" : "The detailed explanation for the assessment response. This is a CLOB attribut';
wwv_flow_imp.g_varchar2_table(54) := 'e.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(55) := '   "selector" : "ResultSummary",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESULT';
wwv_flow_imp.g_varchar2_table(56) := 'ID",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(57) := '  "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the result for the contro';
wwv_flow_imp.g_varchar2_table(58) := 'l assessment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(59) := ' "Y",'||wwv_flow.LF||
'        "selector" : "ResultId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(60) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSESSEDDATE",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_';
wwv_flow_imp.g_varchar2_table(61) := 'key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and ';
wwv_flow_imp.g_varchar2_table(62) := 'time the control assessment was performed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(63) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessedDate",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(64) := 'ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(65) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OBJECTVERSIONNUMBER",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(66) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The version number of the con';
wwv_flow_imp.g_varchar2_table(67) := 'trol when the assessment was created.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(68) := '       "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ObjectVersionNumber",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(69) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDBY",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(70) := '"N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who approved the assessment';
wwv_flow_imp.g_varchar2_table(71) := ', if any.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(72) := '      "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ApprovedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnl';
wwv_flow_imp.g_varchar2_table(73) := 'y",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSESSMENTID",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(74) := ' 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The un';
wwv_flow_imp.g_varchar2_table(75) := 'ique identifier of the control assessment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(76) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessmentId",'||wwv_flow.LF||
'        "additional_info" : ';
wwv_flow_imp.g_varchar2_table(77) := '"ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDBY",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(78) := 'nce" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(79) := ' "The user who reviewed the control assessment, if any.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(80) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Rev';
wwv_flow_imp.g_varchar2_table(81) := 'iewedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(82) := ' "name" : "ASSESSEDBY",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(83) := ' : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who performed the assessment.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(84) := '" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(85) := '      "selector" : "AssessedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(86) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DUEDATE",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(87) := ''||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date when the contro';
wwv_flow_imp.g_varchar2_table(88) := 'l assessment is due.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(89) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "DueDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_';
wwv_flow_imp.g_varchar2_table(90) := 'mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(91) := 'ame" : "COMPLETIONDATE",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(92) := '" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the control assessme';
wwv_flow_imp.g_varchar2_table(93) := 'nt was completed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(94) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "CompletionDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "for';
wwv_flow_imp.g_varchar2_table(95) := 'mat_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(96) := '  "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(97) := ' : "NUMBER",'||wwv_flow.LF||
'        "label" : "Assessed Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier ';
wwv_flow_imp.g_varchar2_table(98) := 'of the control associated to the assessment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(99) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(100) := 'ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(101) := 'quence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(102) := '    "description" : "The date and time the control assessment was most recently updated.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(103) := 'has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" :';
wwv_flow_imp.g_varchar2_table(104) := ' "LastUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"h';
wwv_flow_imp.g_varchar2_table(105) := 'h24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(106) := '1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControlAssessmentResults",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" ';
wwv_flow_imp.g_varchar2_table(107) := ':'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_p';
wwv_flow_imp.g_varchar2_table(108) := 'attern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {';
wwv_flow_imp.g_varchar2_table(109) := ''||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "';
wwv_flow_imp.g_varchar2_table(110) := '/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },';
wwv_flow_imp.g_varchar2_table(111) := ''||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:';
wwv_flow_imp.g_varchar2_table(112) := 'APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(113) := '],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280066503679210)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Control Assessment Results}'
,p_description=>'The control assessment results resource is used to view or modify an assessment for a Financial Reporting Compliance control. You can have multiple assessments for a control.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControlAssessmentResults'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Flexfields",'||wwv_flow.LF||
'    "ser';
wwv_flow_imp.g_varchar2_table(2) := 'ver_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/child/add';
wwv_flow_imp.g_varchar2_table(3) := 'itionalInformation",'||wwv_flow.LF||
'    "description" : "The flexfields resource is used to view or modify informat';
wwv_flow_imp.g_varchar2_table(4) := 'ion added to control definitions in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items';
wwv_flow_imp.g_varchar2_table(5) := '",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(6) := '     "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(7) := 'length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(8) := '"N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(9) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(10) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(11) := 'cription" : "The unique identifier of the descriptive flexfield for the control.",'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(12) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Contr';
wwv_flow_imp.g_varchar2_table(13) := 'olId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAYVALUE",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(14) := '      "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "lab';
wwv_flow_imp.g_varchar2_table(15) := 'el" : "Context Segment",'||wwv_flow.LF||
'        "description" : "Context Segment",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(16) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(17) := 'ctor" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(18) := '__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARC';
wwv_flow_imp.g_varchar2_table(19) := 'HAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The context of the flexfields a';
wwv_flow_imp.g_varchar2_table(20) := 'ssociated to the control.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(21) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(22) := 'mon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(23) := '  "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "databas';
wwv_flow_imp.g_varchar2_table(24) := 'e_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(25) := '    "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation';
wwv_flow_imp.g_varchar2_table(26) := '" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "';
wwv_flow_imp.g_varchar2_table(27) := 'N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(28) := 'peration" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N"';
wwv_flow_imp.g_varchar2_table(29) := ','||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Control';
wwv_flow_imp.g_varchar2_table(30) := 'Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : ';
wwv_flow_imp.g_varchar2_table(32) := '"N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280123624679210)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Flexfields}'
,p_description=>'The flexfields resource is used to view or modify information added to control definitions in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Perspectives",'||wwv_flow.LF||
'    "s';
wwv_flow_imp.g_varchar2_table(2) := 'erver_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/child/p';
wwv_flow_imp.g_varchar2_table(3) := 'erspectives",'||wwv_flow.LF||
'    "description" : "The perspectives resource is used to view perspective values assi';
wwv_flow_imp.g_varchar2_table(4) := 'gned to controls or to modify those assignments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "item';
wwv_flow_imp.g_varchar2_table(5) := 's",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(6) := '      "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max';
wwv_flow_imp.g_varchar2_table(7) := '_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(8) := ' "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(9) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(10) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identi';
wwv_flow_imp.g_varchar2_table(11) := 'fier of the control to which a perspective is assigned.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(12) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(13) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSPITEMID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(14) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The identifier for a perspecti';
wwv_flow_imp.g_varchar2_table(15) := 've value assigned to the control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(16) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PerspItemId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(17) := ']'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : ';
wwv_flow_imp.g_varchar2_table(18) := '"Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_C';
wwv_flow_imp.g_varchar2_table(19) := 'OLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(20) := '  ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",';
wwv_flow_imp.g_varchar2_table(21) := ''||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" ';
wwv_flow_imp.g_varchar2_table(22) := ':'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ControlId",'||wwv_flow.LF||
'      "param_typ';
wwv_flow_imp.g_varchar2_table(23) := 'e" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "';
wwv_flow_imp.g_varchar2_table(24) := 'IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_';
wwv_flow_imp.g_varchar2_table(25) := 'param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280205757679210)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Perspectives}'
,p_description=>'The perspectives resource is used to view perspective values assigned to controls or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls",'||wwv_flow.LF||
'    "server_prefix"';
wwv_flow_imp.g_varchar2_table(2) := ' : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls",'||wwv_flow.LF||
'    "description" : "The Finan';
wwv_flow_imp.g_varchar2_table(3) := 'cial Reporting Compliance controls resource is used to view or modify controls.",'||wwv_flow.LF||
'    "format" : "JS';
wwv_flow_imp.g_varchar2_table(4) := 'ON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(5) := '"name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(6) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(7) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_';
wwv_flow_imp.g_varchar2_table(8) := 'name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDAT';
wwv_flow_imp.g_varchar2_table(9) := 'E",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TI';
wwv_flow_imp.g_varchar2_table(10) := 'ME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and time when the con';
wwv_flow_imp.g_varchar2_table(11) := 'trol was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(12) := '" : "N",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "forma';
wwv_flow_imp.g_varchar2_table(13) := 't_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"name" : "REVIEWEDDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(15) := ' : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Reviewed Date",'||wwv_flow.LF||
'        "description" : "The date ';
wwv_flow_imp.g_varchar2_table(16) := 'and time when the control was reviewed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(17) := '        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedDate",'||wwv_flow.LF||
'        "additional_info" : "Rea';
wwv_flow_imp.g_varchar2_table(18) := 'dOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(19) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "AUDITTESTINGFLAG",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(20) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Audit Testing",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(21) := '"Whether the control is to be included in audit testing.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(22) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Aud';
wwv_flow_imp.g_varchar2_table(23) := 'itTestingFlag",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequenc';
wwv_flow_imp.g_varchar2_table(24) := 'e" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Name",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(25) := '        "description" : "The name of the control.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(26) := 'ne" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(27) := '       "additional_info" : "Required",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(28) := 'CONTROLCOST",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER"';
wwv_flow_imp.g_varchar2_table(29) := ','||wwv_flow.LF||
'        "label" : "Cost",'||wwv_flow.LF||
'        "description" : "The estimated cost of implementing the control.';
wwv_flow_imp.g_varchar2_table(30) := '",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(31) := ' "selector" : "ControlCost",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STARTDATE"';
wwv_flow_imp.g_varchar2_table(32) := ','||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME';
wwv_flow_imp.g_varchar2_table(33) := ' ZONE",'||wwv_flow.LF||
'        "description" : "The effective start date of the control.",'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(34) := ': "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StartDate",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(35) := '       "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm"';
wwv_flow_imp.g_varchar2_table(36) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDBY",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(37) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user ';
wwv_flow_imp.g_varchar2_table(38) := 'who reviewed the control.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(39) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "ReviewedBy",'||wwv_flow.LF||
'        "additional_';
wwv_flow_imp.g_varchar2_table(40) := 'info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLID",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(41) := ' "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "';
wwv_flow_imp.g_varchar2_table(42) := 'Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of a control.",'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(43) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(44) := '       "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(45) := 'CONTROLFREQUENCY",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "V';
wwv_flow_imp.g_varchar2_table(46) := 'ARCHAR2",'||wwv_flow.LF||
'        "label" : "Frequency",'||wwv_flow.LF||
'        "description" : "How often the control is to be run';
wwv_flow_imp.g_varchar2_table(47) := '.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(48) := 's_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlFrequency",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(49) := '   {'||wwv_flow.LF||
'        "name" : "DETAILEDDESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N"';
wwv_flow_imp.g_varchar2_table(50) := ','||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "label" : "Description",'||wwv_flow.LF||
'        "description" : "The detail';
wwv_flow_imp.g_varchar2_table(51) := 'ed description of the control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(52) := '"is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DetailedDescription",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(53) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(54) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By",'||wwv_flow.LF||
'        "description" : "The';
wwv_flow_imp.g_varchar2_table(55) := ' user who most recently updated the control.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(56) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy"';
wwv_flow_imp.g_varchar2_table(57) := ','||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(58) := ': "STATUS",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(59) := '",'||wwv_flow.LF||
'        "label" : "Status",'||wwv_flow.LF||
'        "description" : "The status of the control. ACTIVE or INACTIV';
wwv_flow_imp.g_varchar2_table(60) := 'E",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(61) := 's_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(62) := '   "name" : "ENFORCEMENTTYPE",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(63) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Enforcement Type",'||wwv_flow.LF||
'        "description" : "Whether the con';
wwv_flow_imp.g_varchar2_table(64) := 'trol detects a risk, corrects it, or prevents if from occurring.",'||wwv_flow.LF||
'        "max_length" : 50,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(65) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(66) := 'r" : "EnforcementType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDDATE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(67) := '        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ';
wwv_flow_imp.g_varchar2_table(68) := 'ZONE",'||wwv_flow.LF||
'        "label" : "Approved Date",'||wwv_flow.LF||
'        "description" : "The date and time when the contro';
wwv_flow_imp.g_varchar2_table(69) := 'l was approved.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(70) := ': "Y",'||wwv_flow.LF||
'        "selector" : "ApprovedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_';
wwv_flow_imp.g_varchar2_table(71) := 'mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(72) := 'ame" : "STATECODE",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(73) := 'VARCHAR2",'||wwv_flow.LF||
'        "label" : "State",'||wwv_flow.LF||
'        "description" : "The state code of the control.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(74) := '    "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(75) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "StateCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(76) := 'ommon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWSTARTDATE",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(77) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(78) := 'e date and time when the control review was started.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(79) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewStartDate",'||wwv_flow.LF||
'        "additio';
wwv_flow_imp.g_varchar2_table(80) := 'nal_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(81) := 'ommon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSESSMENTFLAG",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(82) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Assessment Testing",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(83) := '    "description" : "Whether the control is to be assessed.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(84) := '_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "';
wwv_flow_imp.g_varchar2_table(85) := 'AssessmentFlag",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVISIONDATE",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(86) := ' "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(87) := '        "label" : "Revision Date",'||wwv_flow.LF||
'        "description" : "The date and time when the control was m';
wwv_flow_imp.g_varchar2_table(88) := 'ost recently revised.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(89) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "f';
wwv_flow_imp.g_varchar2_table(90) := 'ormat_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(91) := '    "name" : "APPROVEDBY",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(92) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who approved the control.",'||wwv_flow.LF||
'        "max_length"';
wwv_flow_imp.g_varchar2_table(93) := ' : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(94) := '     "selector" : "ApprovedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(95) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TOTALREVISIONS",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(96) := ': "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Revision Number",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(97) := '"The number of control revisions.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(98) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TotalRevisions",'||wwv_flow.LF||
'        "additional_info" : "ReadOn';
wwv_flow_imp.g_varchar2_table(99) := 'ly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLTYPE",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(100) := ' 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Type",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(101) := '     "description" : "One in a set of user-defined values that may be selected for the control.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(102) := '      "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(103) := 'erable" : "N",'||wwv_flow.LF||
'        "selector" : "ControlType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(104) := '  "name" : "CONTROLMETHOD",'||wwv_flow.LF||
'        "sequence" : 23,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(105) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Method",'||wwv_flow.LF||
'        "description" : "Whether the control is autom';
wwv_flow_imp.g_varchar2_table(106) := 'ated or manually enforced.",'||wwv_flow.LF||
'        "max_length" : 40,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(107) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlMethod",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(108) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 24,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(109) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated';
wwv_flow_imp.g_varchar2_table(110) := ' Date",'||wwv_flow.LF||
'        "description" : "The date and time of the last update of the control.",'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(111) := '_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "L';
wwv_flow_imp.g_varchar2_table(112) := 'astUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24';
wwv_flow_imp.g_varchar2_table(113) := ':mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" ';
wwv_flow_imp.g_varchar2_table(114) := ': "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(115) := 'operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(116) := '  "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" ';
wwv_flow_imp.g_varchar2_table(117) := ': "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey"';
wwv_flow_imp.g_varchar2_table(118) := ','||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "opera';
wwv_flow_imp.g_varchar2_table(119) := 'tion" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch';
wwv_flow_imp.g_varchar2_table(120) := '_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(121) := '   "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_a';
wwv_flow_imp.g_varchar2_table(122) := 'll_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280307687679212)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls}'
,p_description=>'The Financial Reporting Compliance controls resource is used to view or modify controls.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/comments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Comments",'||wwv_flow.LF||
'    "serve';
wwv_flow_imp.g_varchar2_table(2) := 'r_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/child/comme';
wwv_flow_imp.g_varchar2_table(3) := 'nts",'||wwv_flow.LF||
'    "description" : "The comments resource is used to view or modify comments written about co';
wwv_flow_imp.g_varchar2_table(4) := 'ntrols.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "colum';
wwv_flow_imp.g_varchar2_table(5) := 'ns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(6) := '_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(7) := ': "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key"';
wwv_flow_imp.g_varchar2_table(8) := ','||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(9) := '       "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(10) := 'a_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(11) := 'e date and time the comment was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(12) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-m';
wwv_flow_imp.g_varchar2_table(13) := 'm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATED';
wwv_flow_imp.g_varchar2_table(14) := 'BY",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(15) := '   "label" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the comment.",'||wwv_flow.LF||
'        "max';
wwv_flow_imp.g_varchar2_table(16) := '_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(17) := '"Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(18) := 'ID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(19) := ' "description" : "The unique identifier of the comment on the control.",'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(20) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(21) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERCOMMENT",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(22) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Comment",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(23) := 'tion" : "The comment made on the control.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(24) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserComment",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(25) := '       "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "fr';
wwv_flow_imp.g_varchar2_table(26) := 'cControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(27) := '      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_r';
wwv_flow_imp.g_varchar2_table(28) := 'ows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "data';
wwv_flow_imp.g_varchar2_table(29) := 'base_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch';
wwv_flow_imp.g_varchar2_table(30) := '_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(31) := '  "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(32) := '    "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ControlId",';
wwv_flow_imp.g_varchar2_table(33) := ''||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(34) := '  "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",';
wwv_flow_imp.g_varchar2_table(35) := ''||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280463759679212)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Comments}'
,p_description=>'The comments resource is used to view or modify comments written about controls.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/comments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/related-risks
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Related Risks",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(2) := 'server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/child/';
wwv_flow_imp.g_varchar2_table(3) := 'relatedRisks",'||wwv_flow.LF||
'    "description" : "The related risks resource is used to view records of risks that';
wwv_flow_imp.g_varchar2_table(4) := ' are related to the control.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_r';
wwv_flow_imp.g_varchar2_table(5) := 'ow" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1';
wwv_flow_imp.g_varchar2_table(6) := ','||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(7) := '     "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(8) := 'tor" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(9) := 'Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PARENTID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(10) := '"N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The identifier of the risk related to ';
wwv_flow_imp.g_varchar2_table(11) := 'a control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y';
wwv_flow_imp.g_varchar2_table(12) := '",'||wwv_flow.LF||
'        "selector" : "ParentId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CHI';
wwv_flow_imp.g_varchar2_table(13) := 'LDID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(14) := '   "description" : "The identifier of the control related to a risk.",'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(15) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ChildId",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(16) := ' "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcContr';
wwv_flow_imp.g_varchar2_table(17) := 'ols",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(18) := '"database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" :';
wwv_flow_imp.g_varchar2_table(19) := ' "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(20) := 'peration" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_r';
wwv_flow_imp.g_varchar2_table(21) := 'ows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" ';
wwv_flow_imp.g_varchar2_table(22) := ': "ControlId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_require';
wwv_flow_imp.g_varchar2_table(23) := 'd" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_whe';
wwv_flow_imp.g_varchar2_table(24) := 'n_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280544572679212)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Related Risks}'
,p_description=>'The related risks resource is used to view records of risks that are related to the control.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/relatedRisks'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/test-plans/test-plan-activity-type
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Test Plans/Test Plan ';
wwv_flow_imp.g_varchar2_table(2) := 'Activity Type",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcContro';
wwv_flow_imp.g_varchar2_table(3) := 'ls/{ControlId}/child/testPlans/{TestPlanId}/child/planActivity",'||wwv_flow.LF||
'    "description" : "The test plan ';
wwv_flow_imp.g_varchar2_table(4) := 'activity type resource is used to correlate each test plan with an assessment activity. The plan is ';
wwv_flow_imp.g_varchar2_table(5) := 'completed only during an assessment of that type.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "ite';
wwv_flow_imp.g_varchar2_table(6) := 'ms",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(7) := '       "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(8) := 'x_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(9) := ': "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(10) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TESTPLANID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(11) := '    "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique iden';
wwv_flow_imp.g_varchar2_table(12) := 'tifier of the test plan.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(13) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TestPlanId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(14) := '   "name" : "ACTIVITYCODE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(15) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A code for the assessment activity in support of which th';
wwv_flow_imp.g_varchar2_table(16) := 'e test plan is carried out.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(17) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ActivityCode",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(18) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(19) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the c';
wwv_flow_imp.g_varchar2_table(20) := 'ontrol to which this test plan activity is related.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(21) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(22) := '"Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'    "3" :';
wwv_flow_imp.g_varchar2_table(23) := ' "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_opera';
wwv_flow_imp.g_varchar2_table(24) := 'tion" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "pa';
wwv_flow_imp.g_varchar2_table(25) := 'rameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FE';
wwv_flow_imp.g_varchar2_table(26) := 'TCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(27) := '   "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation';
wwv_flow_imp.g_varchar2_table(28) := '" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(29) := '    ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ControlId",'||wwv_flow.LF||
'      "param_type" :';
wwv_flow_imp.g_varchar2_table(30) := ' "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",';
wwv_flow_imp.g_varchar2_table(31) := ''||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_para';
wwv_flow_imp.g_varchar2_table(32) := 'm" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "TestPlanId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_t';
wwv_flow_imp.g_varchar2_table(33) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(34) := '   "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280620686679213)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Test Plans/Test Plan Activity Type}'
,p_description=>'The test plan activity type resource is used to correlate each test plan with an assessment activity. The plan is completed only during an assessment of that type.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/testPlans/{TestPlanId}/child/planActivity'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/test-plans/steps
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Test Plans/Steps",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(2) := '  "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/chi';
wwv_flow_imp.g_varchar2_table(3) := 'ld/testPlans/{TestPlanId}/child/steps",'||wwv_flow.LF||
'    "description" : "The steps resource is used to view or m';
wwv_flow_imp.g_varchar2_table(4) := 'odify individual steps within test plans.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(5) := ' "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(6) := 'sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(7) := '" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(8) := '       "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(9) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(10) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who updat';
wwv_flow_imp.g_varchar2_table(11) := 'ed the test step most recently.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(12) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "ad';
wwv_flow_imp.g_varchar2_table(13) := 'ditional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TESTPLANID';
wwv_flow_imp.g_varchar2_table(14) := '",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(15) := 'description" : "The unique identifier for the test plan the step is a part of.",'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(16) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TestPla';
wwv_flow_imp.g_varchar2_table(17) := 'nId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(18) := ' : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(19) := 'cription" : "The date and time when the test step was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(20) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(21) := 'additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(23) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who creat';
wwv_flow_imp.g_varchar2_table(24) := 'ed the test step.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(25) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(26) := 'ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STEPID",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(27) := ': 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The un';
wwv_flow_imp.g_varchar2_table(28) := 'ique identifier for the test step.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(29) := '    "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StepId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(30) := ''||wwv_flow.LF||
'        "name" : "STEPORDER",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(31) := '_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The logical order of the test step.",'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(32) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StepOr';
wwv_flow_imp.g_varchar2_table(33) := 'der",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DETAILEDDESCRIPTION",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(34) := 'quence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(35) := 'The detailed description of the test step.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(36) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "DetailedDescription",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(37) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(38) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and';
wwv_flow_imp.g_varchar2_table(39) := ' time when the test step was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(40) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additiona';
wwv_flow_imp.g_varchar2_table(41) := 'l_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(42) := 'mon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(43) := '  "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "databas';
wwv_flow_imp.g_varchar2_table(44) := 'e_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(45) := '    "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation';
wwv_flow_imp.g_varchar2_table(46) := '" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "';
wwv_flow_imp.g_varchar2_table(47) := 'N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_op';
wwv_flow_imp.g_varchar2_table(48) := 'eration" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameter';
wwv_flow_imp.g_varchar2_table(49) := 's" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE"';
wwv_flow_imp.g_varchar2_table(50) := ','||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters"';
wwv_flow_imp.g_varchar2_table(51) := ' :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",';
wwv_flow_imp.g_varchar2_table(52) := ''||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" ';
wwv_flow_imp.g_varchar2_table(53) := ':'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ControlId",'||wwv_flow.LF||
'      "param_typ';
wwv_flow_imp.g_varchar2_table(54) := 'e" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "';
wwv_flow_imp.g_varchar2_table(55) := 'IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_';
wwv_flow_imp.g_varchar2_table(56) := 'param" : "N"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "TestPlanId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "da';
wwv_flow_imp.g_varchar2_table(57) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",';
wwv_flow_imp.g_varchar2_table(58) := ''||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280721790679213)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Test Plans/Steps}'
,p_description=>'The steps resource is used to view or modify individual steps within test plans.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/testPlans/{TestPlanId}/child/steps'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/assertions
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Assertions",'||wwv_flow.LF||
'    "ser';
wwv_flow_imp.g_varchar2_table(2) := 'ver_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/child/ass';
wwv_flow_imp.g_varchar2_table(3) := 'ertions",'||wwv_flow.LF||
'    "description" : "The assertions resource is used to view or modify types of assertion.';
wwv_flow_imp.g_varchar2_table(4) := ' An assertion is a statement of presumed facts about a business process regulated by a control.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(5) := '  "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(6) := '      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(8) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "r';
wwv_flow_imp.g_varchar2_table(9) := 'emote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(10) := '" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMB';
wwv_flow_imp.g_varchar2_table(11) := 'ER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the control an assertion is related to.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(12) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(13) := 'ctor" : "ControlId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(14) := '  {'||wwv_flow.LF||
'        "name" : "ASSERTIONCODE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(15) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The code for a control assertion.",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(16) := 'x_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(17) := ' "Y",'||wwv_flow.LF||
'        "selector" : "AssertionCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_a';
wwv_flow_imp.g_varchar2_table(18) := 'ttributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operat';
wwv_flow_imp.g_varchar2_table(19) := 'ions" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(20) := '"url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },';
wwv_flow_imp.g_varchar2_table(21) := ''||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_patter';
wwv_flow_imp.g_varchar2_table(22) := 'n" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(23) := '    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" ';
wwv_flow_imp.g_varchar2_table(24) := ': ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(25) := 'operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceK';
wwv_flow_imp.g_varchar2_table(26) := 'ey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "op';
wwv_flow_imp.g_varchar2_table(27) := 'eration" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKe';
wwv_flow_imp.g_varchar2_table(28) := 'y",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameter';
wwv_flow_imp.g_varchar2_table(29) := 's" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ControlId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "';
wwv_flow_imp.g_varchar2_table(30) := 'VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_a';
wwv_flow_imp.g_varchar2_table(31) := 'rray" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280815272679213)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Assertions}'
,p_description=>'The assertions resource is used to view or modify types of assertion. An assertion is a statement of presumed facts about a business process regulated by a control.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/assertions'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-controls/test-plans
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Controls/Test Plans",'||wwv_flow.LF||
'    "ser';
wwv_flow_imp.g_varchar2_table(2) := 'ver_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcControls/{ControlId}/child/tes';
wwv_flow_imp.g_varchar2_table(3) := 'tPlans",'||wwv_flow.LF||
'    "description" : "The test plans resource is used to view or modify procedures carried o';
wwv_flow_imp.g_varchar2_table(4) := 'ut during control assessments to determine whether controls are effective.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(6) := '" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(7) := ': "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(8) := ''||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name"';
wwv_flow_imp.g_varchar2_table(9) := ' : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(10) := '        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(11) := 'escription" : "The last user who updated the test plan.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(12) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Las';
wwv_flow_imp.g_varchar2_table(13) := 'tUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(14) := '    "name" : "TESTPLANID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_typ';
wwv_flow_imp.g_varchar2_table(15) := 'e" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "Unique identifier of the test';
wwv_flow_imp.g_varchar2_table(16) := ' plan.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(17) := '       "selector" : "TestPlanId",'||wwv_flow.LF||
'        "additional_info" : "Required",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(18) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(19) := ' "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "the date and time t';
wwv_flow_imp.g_varchar2_table(20) := 'he test plan was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(21) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '  "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(23) := '        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(24) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who created the test plan.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(25) := 'th" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(26) := '        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(27) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(28) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Test Plan Name",'||wwv_flow.LF||
'        "description" : "The nam';
wwv_flow_imp.g_varchar2_table(29) := 'e of the test plan.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(30) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "additional_info" : "Re';
wwv_flow_imp.g_varchar2_table(31) := 'quired",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVISIONDATE",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(32) := 'ce" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(33) := 'description" : "The date when the test plan was most recently revised.",'||wwv_flow.LF||
'        "has_time_zone" : "';
wwv_flow_imp.g_varchar2_table(34) := 'Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionDate",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(35) := '       "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm"';
wwv_flow_imp.g_varchar2_table(36) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SAMPLESIZE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(37) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Sample Size",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(38) := '     "description" : "The number of control-enforcement instances to be examined for the plan to be ';
wwv_flow_imp.g_varchar2_table(39) := 'completed.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y';
wwv_flow_imp.g_varchar2_table(40) := '",'||wwv_flow.LF||
'        "selector" : "SampleSize",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "T';
wwv_flow_imp.g_varchar2_table(41) := 'ESTPLANFREQUENCY",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(42) := 'RCHAR2",'||wwv_flow.LF||
'        "label" : "Test Frequency",'||wwv_flow.LF||
'        "description" : "Whether the test plan is to be';
wwv_flow_imp.g_varchar2_table(43) := ' run daily, weekly, monthly, or annually.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(44) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TestPlanFrequency';
wwv_flow_imp.g_varchar2_table(45) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 10,';
wwv_flow_imp.g_varchar2_table(46) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique';
wwv_flow_imp.g_varchar2_table(47) := ' identifier for the control the plan is created to test.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(48) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ControlId",'||wwv_flow.LF||
'        "addition';
wwv_flow_imp.g_varchar2_table(49) := 'al_info" : "Required",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DETAILEDDESCRIPT';
wwv_flow_imp.g_varchar2_table(50) := 'ION",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(51) := ' "label" : "Description",'||wwv_flow.LF||
'        "description" : "The detailed description of the test plan.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(52) := '    "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(53) := 'tor" : "DetailedDescription",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDAT';
wwv_flow_imp.g_varchar2_table(54) := 'EDATE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WI';
wwv_flow_imp.g_varchar2_table(55) := 'TH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the test plan was most recently updated.",';
wwv_flow_imp.g_varchar2_table(56) := ''||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(57) := 'elector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-m';
wwv_flow_imp.g_varchar2_table(58) := 'm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :';
wwv_flow_imp.g_varchar2_table(59) := ''||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcControls",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(60) := '    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern';
wwv_flow_imp.g_varchar2_table(61) := '" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(62) := ' "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX';
wwv_flow_imp.g_varchar2_table(63) := '$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {';
wwv_flow_imp.g_varchar2_table(64) := ''||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(65) := ' "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" :';
wwv_flow_imp.g_varchar2_table(66) := ' "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(67) := 'allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "';
wwv_flow_imp.g_varchar2_table(68) := 'DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "a';
wwv_flow_imp.g_varchar2_table(69) := 'llow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(70) := ' {'||wwv_flow.LF||
'      "name" : "ControlId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(71) := '     "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",';
wwv_flow_imp.g_varchar2_table(72) := ''||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23280922552679214)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Controls/Test Plans}'
,p_description=>'The test plans resource is used to view or modify procedures carried out during control assessments to determine whether controls are effective.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcControls/{ControlId}/child/testPlans'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-issues/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Issues/Flexfields",'||wwv_flow.LF||
'    "serve';
wwv_flow_imp.g_varchar2_table(2) := 'r_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcIssues/{IssueId}/child/additiona';
wwv_flow_imp.g_varchar2_table(3) := 'lInformation",'||wwv_flow.LF||
'    "description" : "The issue flexfields resource is used to view or modify informat';
wwv_flow_imp.g_varchar2_table(4) := 'ion added to issues in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_si';
wwv_flow_imp.g_varchar2_table(5) := 'ngle_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequenc';
wwv_flow_imp.g_varchar2_table(6) := 'e" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 400';
wwv_flow_imp.g_varchar2_table(7) := '0,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(8) := '"selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(9) := 'n" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISSUEID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(10) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(11) := 'e unique identifier of the issue associated to the flexfield.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(12) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IssueId",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(13) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAYVALUE",'||wwv_flow.LF||
'        "sequence" : 3,';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segmen';
wwv_flow_imp.g_varchar2_table(15) := 't",'||wwv_flow.LF||
'        "description" : "The display value of the context of the flexfield.",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(16) := 'h" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",';
wwv_flow_imp.g_varchar2_table(17) := ''||wwv_flow.LF||
'        "selector" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(18) := '    "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(19) := '_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The context for t';
wwv_flow_imp.g_varchar2_table(20) := 'he flexfield.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(21) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(22) := '     }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcIssues",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(23) := '   "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" :';
wwv_flow_imp.g_varchar2_table(24) := ' "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameter';
wwv_flow_imp.g_varchar2_table(25) := 's" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SIN';
wwv_flow_imp.g_varchar2_table(26) := 'GLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "par';
wwv_flow_imp.g_varchar2_table(27) := 'ameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "U';
wwv_flow_imp.g_varchar2_table(28) := 'PDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "param';
wwv_flow_imp.g_varchar2_table(29) := 'eters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "IssueId",'||wwv_flow.LF||
'      "para';
wwv_flow_imp.g_varchar2_table(30) := 'm_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction';
wwv_flow_imp.g_varchar2_table(31) := '" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_q';
wwv_flow_imp.g_varchar2_table(32) := 'uery_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281034852679215)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Issues/Flexfields}'
,p_description=>'The issue flexfields resource is used to view or modify information added to issues in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcIssues/{IssueId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-issues
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Issues",'||wwv_flow.LF||
'    "server_prefix" :';
wwv_flow_imp.g_varchar2_table(2) := ' "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcIssues",'||wwv_flow.LF||
'    "description" : "The Financial';
wwv_flow_imp.g_varchar2_table(3) := ' Reporting Compliance issues resource is used to view or modify the details of an issue. Each record';
wwv_flow_imp.g_varchar2_table(4) := ' can have multiple issues.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row';
wwv_flow_imp.g_varchar2_table(5) := '" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(6) := '        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(7) := '   "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(8) := 'r" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(9) := ''||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(10) := ': "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(11) := '"description" : "The date and time the issue was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(12) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "addit';
wwv_flow_imp.g_varchar2_table(13) := 'ional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(14) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(15) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Reviewed D';
wwv_flow_imp.g_varchar2_table(16) := 'ate",'||wwv_flow.LF||
'        "description" : "The date and time the issue was reviewed.",'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(17) := ' "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedDate",';
wwv_flow_imp.g_varchar2_table(18) := ''||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tz';
wwv_flow_imp.g_varchar2_table(19) := 'm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACTION",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(20) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The action ';
wwv_flow_imp.g_varchar2_table(21) := 'for an issue.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(22) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Action",'||wwv_flow.LF||
'        "additional_info" : "ReadOnl';
wwv_flow_imp.g_varchar2_table(23) := 'y",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OPENDATE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(24) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'        "label" : "Open Date",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(25) := ' "description" : "The date when the issue was opened.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(26) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "OpenDate",'||wwv_flow.LF||
'        "additional_i';
wwv_flow_imp.g_varchar2_table(27) := 'nfo" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(28) := '        "name" : "REMEDIATIONFLAG",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(29) := '"data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Remediation Required Indicator",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(30) := ': "The flag to identify if remediation of the issue is required.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(31) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(32) := '" : "RemediationFlag",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "VALIDATEDBY",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(33) := '      "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "lab';
wwv_flow_imp.g_varchar2_table(34) := 'el" : "Validated By",'||wwv_flow.LF||
'        "description" : "The user who validated the issue.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(35) := 'th" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(36) := '        "selector" : "ValidatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(37) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(38) := '        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Name",'||wwv_flow.LF||
'        "description" : "The name of the';
wwv_flow_imp.g_varchar2_table(39) := ' issue.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(40) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "additional_info" : "Required",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(41) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STARTDATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(42) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'        "label" : "Start Date",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(43) := 'cription" : "The start date of the issue.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(44) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StartDate",'||wwv_flow.LF||
'        "additional_info" : "Rea';
wwv_flow_imp.g_varchar2_table(45) := 'dOnly",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(46) := 'me" : "ORIGINOBJECTID",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(47) := ' : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record of Origin",'||wwv_flow.LF||
'        "description" : "The Financial Reporting ';
wwv_flow_imp.g_varchar2_table(48) := 'Compliance record on which the issue was based.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(49) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "OriginObjectId",'||wwv_flow.LF||
'        "additional_i';
wwv_flow_imp.g_varchar2_table(50) := 'nfo" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "VALIDDATE",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(51) := '"sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'        "label" : "Va';
wwv_flow_imp.g_varchar2_table(52) := 'lidation Date",'||wwv_flow.LF||
'        "description" : "The date the issue was identified as valid.",'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(53) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "V';
wwv_flow_imp.g_varchar2_table(54) := 'alidDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(55) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDBY",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(56) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Reviewed By",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(57) := 'ription" : "The user who reviewed the issue.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(58) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedBy",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(59) := '       "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(60) := 'ISSUEID",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(61) := '       "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier for the issue.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(62) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(63) := 'r" : "IssueId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(64) := '       "name" : "DETAILEDDESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(65) := '    "data_type" : "BLOB",'||wwv_flow.LF||
'        "label" : "Description",'||wwv_flow.LF||
'        "description" : "The detailed des';
wwv_flow_imp.g_varchar2_table(66) := 'cription of the issue.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(67) := 'erable" : "N",'||wwv_flow.LF||
'        "selector" : "DetailedDescription",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(68) := '{'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(69) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Status",'||wwv_flow.LF||
'        "description" : "Whether the issue is open, ';
wwv_flow_imp.g_varchar2_table(70) := 'in remediation, or on hold.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(71) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "additional_in';
wwv_flow_imp.g_varchar2_table(72) := 'fo" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(73) := '   "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label';
wwv_flow_imp.g_varchar2_table(74) := '" : "Last Updated By",'||wwv_flow.LF||
'        "description" : "The user who most recently updated the issue.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(75) := '    "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(76) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(77) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(78) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Created By",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(79) := 'ription" : "The user who created the issue.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(80) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(81) := '     "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RE';
wwv_flow_imp.g_varchar2_table(82) := 'MEDDATE",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(83) := '     "label" : "Remediation Date",'||wwv_flow.LF||
'        "description" : "The date when issue was remediated.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(84) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(85) := 'ector" : "RemedDate",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(86) := ' {'||wwv_flow.LF||
'        "name" : "APPROVEDDATE",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(87) := ' "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the issue was ';
wwv_flow_imp.g_varchar2_table(88) := 'approved.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",';
wwv_flow_imp.g_varchar2_table(89) := ''||wwv_flow.LF||
'        "selector" : "ApprovedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" ';
wwv_flow_imp.g_varchar2_table(90) := ': "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(91) := ' "ORIGINOBJECTTYPECODE",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(92) := '" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The type of Financial Reporting Compliance record on which ';
wwv_flow_imp.g_varchar2_table(93) := 'the issue was based. This could be a process, risk, or control, or an assessment of any of these obj';
wwv_flow_imp.g_varchar2_table(94) := 'ects.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(95) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "OriginObjectTypeCode",'||wwv_flow.LF||
'        "additional_info" : "R';
wwv_flow_imp.g_varchar2_table(96) := 'eadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATECODE",'||wwv_flow.LF||
'        "sequence';
wwv_flow_imp.g_varchar2_table(97) := '" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "State",';
wwv_flow_imp.g_varchar2_table(98) := ''||wwv_flow.LF||
'        "description" : "The state code of the issue.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(99) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Stat';
wwv_flow_imp.g_varchar2_table(100) := 'eCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(101) := 'name" : "STATEDATE",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(102) := '"TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the state of issue was u';
wwv_flow_imp.g_varchar2_table(103) := 'pdated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(104) := '       "selector" : "StateDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yy';
wwv_flow_imp.g_varchar2_table(105) := 'yy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SEV';
wwv_flow_imp.g_varchar2_table(106) := 'ERITY",'||wwv_flow.LF||
'        "sequence" : 23,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(107) := '       "label" : "Severity",'||wwv_flow.LF||
'        "description" : "One in a set of values indicating the impact o';
wwv_flow_imp.g_varchar2_table(108) := 'f the defect recorded by the issue: DEFICIENCY, DOCUMENTATION_ONLY, MINOR_GAP, or SIGNIFICANT_DEFICI';
wwv_flow_imp.g_varchar2_table(109) := 'ENCY.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(110) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Severity",'||wwv_flow.LF||
'        "additional_info" : "Required",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(111) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LIKELIHOODCODE",'||wwv_flow.LF||
'        "sequence" : 24,';
wwv_flow_imp.g_varchar2_table(112) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Likelihood of ';
wwv_flow_imp.g_varchar2_table(113) := 'Recurrence",'||wwv_flow.LF||
'        "description" : "The code indicating the likelihood of the issue recurring: HIG';
wwv_flow_imp.g_varchar2_table(114) := 'H, LOW, or MEDIUM.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(115) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LikelihoodCode",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(116) := 'Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVISIONNUMBER",'||wwv_flow.LF||
'        "sequence" : 25,'||wwv_flow.LF||
'        "is_primary_';
wwv_flow_imp.g_varchar2_table(117) := 'key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Revision Number",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(118) := 'n" : "The revision number of the issue.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(119) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionNumber",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(120) := 'ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REASONCODE",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(121) := 'ce" : 26,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Reaso';
wwv_flow_imp.g_varchar2_table(122) := 'n Code",'||wwv_flow.LF||
'        "description" : "The reason for closing the issue.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(123) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(124) := 'ctor" : "ReasonCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TYPE",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(125) := 'equence" : 27,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "';
wwv_flow_imp.g_varchar2_table(126) := 'Type",'||wwv_flow.LF||
'        "description" : "One in a set of user-defined values that may be selected for the iss';
wwv_flow_imp.g_varchar2_table(127) := 'ue.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(128) := '"is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Type",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(129) := '   "name" : "VALIDATEDDATE",'||wwv_flow.LF||
'        "sequence" : 28,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(130) := 'type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Validation Date",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(131) := 'e date and time when the issue was validated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(132) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ValidatedDate",'||wwv_flow.LF||
'        "additional_info"';
wwv_flow_imp.g_varchar2_table(133) := ' : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(134) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDBY",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(135) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Approved By",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(136) := '"The user who approved the issue, if any.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(137) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ApprovedBy",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(138) := '    "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HOL';
wwv_flow_imp.g_varchar2_table(139) := 'DDATE",'||wwv_flow.LF||
'        "sequence" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(140) := '   "label" : "Hold Date",'||wwv_flow.LF||
'        "description" : "The hold date for the issue.",'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(141) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "HoldDa';
wwv_flow_imp.g_varchar2_table(142) := 'te",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(143) := 'n" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CLOSEDDATE",'||wwv_flow.LF||
'        "sequence" : 31,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(144) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "DATE",'||wwv_flow.LF||
'        "label" : "Close Date",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(145) := '"The date and time the issue was closed.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(146) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ClosedDate",'||wwv_flow.LF||
'        "additional_info" : "Rea';
wwv_flow_imp.g_varchar2_table(147) := 'dOnly",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(148) := 'me" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 32,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(149) := ' : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated Date",'||wwv_flow.LF||
'        "description" : "The d';
wwv_flow_imp.g_varchar2_table(150) := 'ate and time when the issue was updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(151) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(152) := 'ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(153) := '      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcIssues",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(154) := '    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" ';
wwv_flow_imp.g_varchar2_table(155) := ': "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "paramete';
wwv_flow_imp.g_varchar2_table(156) := 'rs" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SI';
wwv_flow_imp.g_varchar2_table(157) := 'NGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "pa';
wwv_flow_imp.g_varchar2_table(158) := 'rameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "I';
wwv_flow_imp.g_varchar2_table(159) := 'NSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(160) := '      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_';
wwv_flow_imp.g_varchar2_table(161) := 'pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(162) := '    ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281135771679216)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Issues}'
,p_description=>'The Financial Reporting Compliance issues resource is used to view or modify the details of an issue. Each record can have multiple issues.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcIssues'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/process-assessment-results/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Process Assessment Results/Flexfields",'||wwv_flow.LF||
'    "server_prefix" :';
wwv_flow_imp.g_varchar2_table(2) := ' "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcessAssessmentResults/{ResultId}/child/a';
wwv_flow_imp.g_varchar2_table(3) := 'dditionalInformation",'||wwv_flow.LF||
'    "description" : "The process assessment flexfields resource is used to vi';
wwv_flow_imp.g_varchar2_table(4) := 'ew or modify information added to process assessments in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "r';
wwv_flow_imp.g_varchar2_table(5) := 'ow_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "A';
wwv_flow_imp.g_varchar2_table(6) := 'PEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(7) := 'CHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(8) := '   "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "AP';
wwv_flow_imp.g_varchar2_table(9) := 'EX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAY';
wwv_flow_imp.g_varchar2_table(10) := 'VALUE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(11) := '      "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "Context Segment",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(12) := ' 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(13) := '     "selector" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"name" : "RESULTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(15) := 'NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the proces';
wwv_flow_imp.g_varchar2_table(16) := 's assessment result associated to the flexfield.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(17) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(18) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(19) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(20) := ' : "The context for the flexfield.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(21) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '  "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProc';
wwv_flow_imp.g_varchar2_table(23) := 'essAssessmentResults",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation';
wwv_flow_imp.g_varchar2_table(24) := '" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_';
wwv_flow_imp.g_varchar2_table(25) := 'fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(26) := '      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(27) := 'allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "';
wwv_flow_imp.g_varchar2_table(28) := 'PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "al';
wwv_flow_imp.g_varchar2_table(29) := 'low_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(30) := '{'||wwv_flow.LF||
'      "name" : "ResultId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(31) := '   "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(32) := '     "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281296967679216)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Process Assessment Results/Flexfields}'
,p_description=>'The process assessment flexfields resource is used to view or modify information added to process assessments in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcessAssessmentResults/{ResultId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/process-assessment-results
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Process Assessment Results",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRest';
wwv_flow_imp.g_varchar2_table(2) := 'Api/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcessAssessmentResults",'||wwv_flow.LF||
'    "description" : "The pr';
wwv_flow_imp.g_varchar2_table(3) := 'ocess assessment results resource is used to view or modify an assessment for a process. Each proces';
wwv_flow_imp.g_varchar2_table(4) := 's can have multiple assessments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_sing';
wwv_flow_imp.g_varchar2_table(5) := 'le_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(6) := ' : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,';
wwv_flow_imp.g_varchar2_table(7) := ''||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(8) := 'elector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(9) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(10) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who most recently ';
wwv_flow_imp.g_varchar2_table(11) := 'updated the process assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(12) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "ad';
wwv_flow_imp.g_varchar2_table(13) := 'ditional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDA';
wwv_flow_imp.g_varchar2_table(14) := 'TE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH T';
wwv_flow_imp.g_varchar2_table(15) := 'IME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the process assessment was created.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(16) := '"has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(17) := ': "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh';
wwv_flow_imp.g_varchar2_table(18) := '24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDDATE",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(19) := '     "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE';
wwv_flow_imp.g_varchar2_table(20) := '",'||wwv_flow.LF||
'        "description" : "The date and time the process assessment was reviewed.",'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(21) := 'me_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Revi';
wwv_flow_imp.g_varchar2_table(22) := 'ewedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:s';
wwv_flow_imp.g_varchar2_table(23) := 's.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESPONSECODE",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(24) := 'equence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(25) := '" : "One in a set of values indicating what the assessor has determined about a process, typically w';
wwv_flow_imp.g_varchar2_table(26) := 'hether it has passed or failed its assessment: COMPLETED, AGREE, AGREE_WITH_EXCEPTION, DO_NOT_AGREE,';
wwv_flow_imp.g_varchar2_table(27) := '  PASS_WITH_EXCEPTION, FAIL, NO_OPINION, PASS, NO_ACTION.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(28) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "R';
wwv_flow_imp.g_varchar2_table(29) := 'esponseCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(30) := 'ence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(31) := ' "The user who created the process assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(32) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(33) := '        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(34) := '"SURVEYID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(35) := '        "description" : "The unique identifier of the survey related to the process assessment.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(36) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(37) := 'ector" : "SurveyId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(38) := '  {'||wwv_flow.LF||
'        "name" : "ACTIVITYCODE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(39) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A code that identifies the assessment''s type, wh';
wwv_flow_imp.g_varchar2_table(40) := 'ich specifies an activity the assessor is to complete.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(41) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Acti';
wwv_flow_imp.g_varchar2_table(42) := 'vityCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(43) := '  "name" : "APPROVEDDATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_typ';
wwv_flow_imp.g_varchar2_table(44) := 'e" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the process assessment w';
wwv_flow_imp.g_varchar2_table(45) := 'as approved.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "';
wwv_flow_imp.g_varchar2_table(46) := 'Y",'||wwv_flow.LF||
'        "selector" : "ApprovedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mas';
wwv_flow_imp.g_varchar2_table(47) := 'k" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(48) := '" : "STATECODE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(49) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The state of the process assessment.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(50) := '       "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(51) := 'lector" : "StateCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(52) := '    {'||wwv_flow.LF||
'        "name" : "RESULTSUMMARY",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(53) := '     "data_type" : "BLOB",'||wwv_flow.LF||
'        "description" : "The detailed explanation for the assessment resp';
wwv_flow_imp.g_varchar2_table(54) := 'onse. This is a CLOB attribute.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(55) := ' "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "ResultSummary",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(56) := '   {'||wwv_flow.LF||
'        "name" : "RESULTID",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(57) := 'data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier';
wwv_flow_imp.g_varchar2_table(58) := ' of the result for the process assessment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(59) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultId",'||wwv_flow.LF||
'        "additional_info" : "Rea';
wwv_flow_imp.g_varchar2_table(60) := 'dOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSESSEDDATE",'||wwv_flow.LF||
'        "sequenc';
wwv_flow_imp.g_varchar2_table(61) := 'e" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(62) := 'description" : "The date and time the process assessment was performed.",'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(63) := '"Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessedDate",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(64) := '        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm';
wwv_flow_imp.g_varchar2_table(65) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OBJECTVERSIONNUMBER",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(66) := 'nce" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(67) := 'The version of the process being assessed.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(68) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ObjectVersionNumber",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(69) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDBY",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(70) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who approved the proce';
wwv_flow_imp.g_varchar2_table(71) := 'ss assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(72) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ApprovedBy",'||wwv_flow.LF||
'        "additional_info" : "Re';
wwv_flow_imp.g_varchar2_table(73) := 'adOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSESSMENTID",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(74) := 'ce" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "T';
wwv_flow_imp.g_varchar2_table(75) := 'he unique identifier of the process assessment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(76) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessmentId",'||wwv_flow.LF||
'        "additional_inf';
wwv_flow_imp.g_varchar2_table(77) := 'o" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDBY",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(78) := 'sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(79) := 'on" : "The user who reviewed the process assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(80) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Review';
wwv_flow_imp.g_varchar2_table(81) := 'edBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(82) := 'ame" : "ASSESSEDBY",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(83) := '"VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who performed the process assessment.",'||wwv_flow.LF||
'        "max_l';
wwv_flow_imp.g_varchar2_table(84) := 'ength" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y';
wwv_flow_imp.g_varchar2_table(85) := '",'||wwv_flow.LF||
'        "selector" : "AssessedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(86) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROCESSID",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(87) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Assessed Record ID",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(88) := '" : "The unique identifier of the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(89) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ProcessId",'||wwv_flow.LF||
'        "additional_info" : "Re';
wwv_flow_imp.g_varchar2_table(90) := 'adOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DUEDATE",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(91) := ' 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(92) := 'ription" : "The date the process assessment is due.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(93) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DueDate",'||wwv_flow.LF||
'        "additional_info"';
wwv_flow_imp.g_varchar2_table(94) := ' : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(95) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "COMPLETIONDATE",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(96) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and';
wwv_flow_imp.g_varchar2_table(97) := ' time when the process assessment was completed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(98) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CompletionDate",'||wwv_flow.LF||
'        "additional_i';
wwv_flow_imp.g_varchar2_table(99) := 'nfo" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(100) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(101) := 'mary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date';
wwv_flow_imp.g_varchar2_table(102) := ' and time the process assessment was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(103) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "a';
wwv_flow_imp.g_varchar2_table(104) := 'dditional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(105) := ' "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProce';
wwv_flow_imp.g_varchar2_table(106) := 'ssAssessmentResults",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation"';
wwv_flow_imp.g_varchar2_table(107) := ' : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_f';
wwv_flow_imp.g_varchar2_table(108) := 'etch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(109) := '     "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "a';
wwv_flow_imp.g_varchar2_table(110) := 'llow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "P';
wwv_flow_imp.g_varchar2_table(111) := 'ATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "all';
wwv_flow_imp.g_varchar2_table(112) := 'ow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281398494679217)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Process Assessment Results}'
,p_description=>'The process assessment results resource is used to view or modify an assessment for a process. Each process can have multiple assessments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcessAssessmentResults'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-processes/action-items
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Processes/Action Items",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(2) := 'server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcesses/{ProcessId}/child';
wwv_flow_imp.g_varchar2_table(3) := '/actionItems",'||wwv_flow.LF||
'    "description" : "The action items resource is used to view or modify action items';
wwv_flow_imp.g_varchar2_table(4) := ' to be completed in conjunction with processes.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items';
wwv_flow_imp.g_varchar2_table(5) := '",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(6) := '     "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(7) := 'length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(8) := '"N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(9) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(10) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(11) := '        "description" : "The user who most recently updated the action item.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(12) := ': 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(13) := '    "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ESTIM';
wwv_flow_imp.g_varchar2_table(14) := 'ATEDCOMPLETIONDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(15) := 'TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Target Completion Date",'||wwv_flow.LF||
'        "description" : "The ';
wwv_flow_imp.g_varchar2_table(16) := 'target completion date of the action item.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(17) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "EstimatedCompletionDate",'||wwv_flow.LF||
'        "format_ma';
wwv_flow_imp.g_varchar2_table(18) := 'sk" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(19) := 'e" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(20) := 'TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and ';
wwv_flow_imp.g_varchar2_table(21) := 'time the action item was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T';
wwv_flow_imp.g_varchar2_table(23) := '\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(24) := '      "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "lab';
wwv_flow_imp.g_varchar2_table(25) := 'el" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the action item.",'||wwv_flow.LF||
'        "max_le';
wwv_flow_imp.g_varchar2_table(26) := 'ngth" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(27) := ','||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PRI';
wwv_flow_imp.g_varchar2_table(28) := 'ORITYCODE",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2"';
wwv_flow_imp.g_varchar2_table(29) := ','||wwv_flow.LF||
'        "label" : "Priority",'||wwv_flow.LF||
'        "description" : "The priority of the action item.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(30) := '"max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(31) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "PriorityCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(32) := 'me" : "STATECODE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(33) := 'RCHAR2",'||wwv_flow.LF||
'        "label" : "State",'||wwv_flow.LF||
'        "description" : "The state of the action item.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(34) := ' "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(35) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "StateCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(36) := '" : "COMPLETEDDATE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(37) := 'DATE",'||wwv_flow.LF||
'        "label" : "Completion Date",'||wwv_flow.LF||
'        "description" : "The date and time the action it';
wwv_flow_imp.g_varchar2_table(38) := 'em was marked as complete.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(39) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CompletedDate",'||wwv_flow.LF||
'        "format_mask" : "YYYY-MM-DD",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(40) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(41) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Name",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(42) := ' : "The name of the action item.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(43) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(44) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STARTDATE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_';
wwv_flow_imp.g_varchar2_table(45) := 'key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Start Date",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(46) := '  "description" : "The date when the action item started.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(47) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StartDate",'||wwv_flow.LF||
'        "format_m';
wwv_flow_imp.g_varchar2_table(48) := 'ask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(49) := 'me" : "ACTIONID",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NU';
wwv_flow_imp.g_varchar2_table(50) := 'MBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the action i';
wwv_flow_imp.g_varchar2_table(51) := 'tem.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(52) := '     "selector" : "ActionId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROGRESSC';
wwv_flow_imp.g_varchar2_table(53) := 'ODE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(54) := '     "label" : "Progress",'||wwv_flow.LF||
'        "description" : "A value indicating progress toward completion of';
wwv_flow_imp.g_varchar2_table(55) := ' the action item: Assigned, Blocked, Delayed, or On Target.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(56) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(57) := '"ProgressCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROCESSID",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(58) := 'quence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(59) := ': "The unique identifier of the process the action item is related to.",'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(60) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ProcessId",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(61) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DUEDATE",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(62) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Due Da';
wwv_flow_imp.g_varchar2_table(63) := 'te",'||wwv_flow.LF||
'        "description" : "The date when the action item is due.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",';
wwv_flow_imp.g_varchar2_table(64) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DueDate",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(65) := 'format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(66) := '     "name" : "DETAILEDDESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(67) := '  "data_type" : "BLOB",'||wwv_flow.LF||
'        "label" : "Instructions",'||wwv_flow.LF||
'        "description" : "The description o';
wwv_flow_imp.g_varchar2_table(68) := 'f the action item. This is a CLOB attribute.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(69) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "DetailedDescription",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(70) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(71) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated Da';
wwv_flow_imp.g_varchar2_table(72) := 'te",'||wwv_flow.LF||
'        "description" : "The date and time the action item was most recently updated.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(73) := ' "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(74) := ' : "LastUpdateDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(75) := 'on" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProcesses",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(76) := '  "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "databas';
wwv_flow_imp.g_varchar2_table(77) := 'e_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(78) := '    "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation';
wwv_flow_imp.g_varchar2_table(79) := '" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "';
wwv_flow_imp.g_varchar2_table(80) := 'N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Proce';
wwv_flow_imp.g_varchar2_table(81) := 'ssId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y"';
wwv_flow_imp.g_varchar2_table(82) := ','||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" ';
wwv_flow_imp.g_varchar2_table(83) := ': "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281408093679218)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Processes/Action Items}'
,p_description=>'The action items resource is used to view or modify action items to be completed in conjunction with processes.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcesses/{ProcessId}/child/actionItems'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-processes/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Processes/Perspectives",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(2) := 'server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcesses/{ProcessId}/child';
wwv_flow_imp.g_varchar2_table(3) := '/perspectives",'||wwv_flow.LF||
'    "description" : "The perspectives resource is used to view perspective values as';
wwv_flow_imp.g_varchar2_table(4) := 'signed to processes or to modify those assignments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "i';
wwv_flow_imp.g_varchar2_table(5) := 'tems",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(7) := 'max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(8) := '" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(9) := '        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROCESSID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(10) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique ide';
wwv_flow_imp.g_varchar2_table(11) := 'ntifier of the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fil';
wwv_flow_imp.g_varchar2_table(12) := 'terable" : "Y",'||wwv_flow.LF||
'        "selector" : "ProcessId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(13) := ' "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(14) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The name of the perspective item assigned to the process.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(15) := ' "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(16) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(17) := '"PERSPITEMID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER';
wwv_flow_imp.g_varchar2_table(18) := '",'||wwv_flow.LF||
'        "description" : "The unique identifier of the perspective value assigned to the process."';
wwv_flow_imp.g_varchar2_table(19) := ','||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(20) := '"selector" : "PerspItemId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {';
wwv_flow_imp.g_varchar2_table(21) := ''||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProcesses",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(22) := ' {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" :';
wwv_flow_imp.g_varchar2_table(23) := ' ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "o';
wwv_flow_imp.g_varchar2_table(24) := 'peration" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$Re';
wwv_flow_imp.g_varchar2_table(25) := 'sourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "p';
wwv_flow_imp.g_varchar2_table(26) := 'arameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ProcessId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_t';
wwv_flow_imp.g_varchar2_table(27) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(28) := '   "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281580478679218)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Processes/Perspectives}'
,p_description=>'The perspectives resource is used to view perspective values assigned to processes or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcesses/{ProcessId}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-processes/related-risks
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Processes/Related Risks",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(2) := '"server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcesses/{ProcessId}/chil';
wwv_flow_imp.g_varchar2_table(3) := 'd/relatedRisks",'||wwv_flow.LF||
'    "description" : "The related risks resource is used to view records of risks th';
wwv_flow_imp.g_varchar2_table(4) := 'at may impact processes.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" ';
wwv_flow_imp.g_varchar2_table(5) := ': "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(6) := '      "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(7) := ' "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(8) := ' : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(9) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RISKID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(10) := '       "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the risk.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(11) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(12) := '" : "RiskId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROCESSID",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(13) := 'ence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(14) := 'The unique identifier of the process the risk is related to.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(15) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ProcessId",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(16) := 'ommon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProcesses",';
wwv_flow_imp.g_varchar2_table(17) := ''||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "data';
wwv_flow_imp.g_varchar2_table(18) := 'base_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",';
wwv_flow_imp.g_varchar2_table(19) := ''||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operat';
wwv_flow_imp.g_varchar2_table(20) := 'ion" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" ';
wwv_flow_imp.g_varchar2_table(21) := ': "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database';
wwv_flow_imp.g_varchar2_table(22) := '_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parame';
wwv_flow_imp.g_varchar2_table(23) := 'ters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "DEL';
wwv_flow_imp.g_varchar2_table(24) := 'ETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "paramet';
wwv_flow_imp.g_varchar2_table(25) := 'ers" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ProcessId",'||wwv_flow.LF||
'      "para';
wwv_flow_imp.g_varchar2_table(26) := 'm_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction';
wwv_flow_imp.g_varchar2_table(27) := '" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_q';
wwv_flow_imp.g_varchar2_table(28) := 'uery_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281607039679219)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Processes/Related Risks}'
,p_description=>'The related risks resource is used to view records of risks that may impact processes.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcesses/{ProcessId}/child/relatedRisks'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-processes
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Processes",'||wwv_flow.LF||
'    "server_prefix';
wwv_flow_imp.g_varchar2_table(2) := '" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcesses",'||wwv_flow.LF||
'    "description" : "The Fin';
wwv_flow_imp.g_varchar2_table(3) := 'ancial Reporting Compliance processes resource is used to view or modify processes.",'||wwv_flow.LF||
'    "format" :';
wwv_flow_imp.g_varchar2_table(4) := ' "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(5) := '    "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(6) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(7) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attrib';
wwv_flow_imp.g_varchar2_table(8) := 'ute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIO';
wwv_flow_imp.g_varchar2_table(9) := 'NDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WIT';
wwv_flow_imp.g_varchar2_table(10) := 'H TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and time the proc';
wwv_flow_imp.g_varchar2_table(11) := 'ess was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(12) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format';
wwv_flow_imp.g_varchar2_table(13) := '_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(14) := 'name" : "REVIEWEDDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(15) := ': "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Reviewed Date",'||wwv_flow.LF||
'        "description" : "The date a';
wwv_flow_imp.g_varchar2_table(16) := 'nd time the process was reviewed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(17) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly"';
wwv_flow_imp.g_varchar2_table(18) := ','||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(19) := '      {'||wwv_flow.LF||
'        "name" : "AUDITTESTINGFLAG",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(20) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Audit Testing",'||wwv_flow.LF||
'        "description" : "Ident';
wwv_flow_imp.g_varchar2_table(21) := 'ifies if the process is in scope for audit testing.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(22) := 'ne" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AuditTes';
wwv_flow_imp.g_varchar2_table(23) := 'tingFlag",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : ';
wwv_flow_imp.g_varchar2_table(24) := '5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Name",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(25) := '   "description" : "The name of the process.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(26) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(27) := '  "additional_info" : "Required",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIE';
wwv_flow_imp.g_varchar2_table(28) := 'WEDBY",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(29) := '      "label" : "Last Reviewed By",'||wwv_flow.LF||
'        "description" : "The user who reviewed the process.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(30) := '      "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(31) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(32) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DETAILEDDESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(33) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "label" : "Description",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(34) := '"description" : "The description of the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(35) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DetailedDescription",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(36) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(37) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(38) := 'scription" : "The user who most recently updated the process.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(39) := 'has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(40) := ': "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(41) := '{'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(42) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Status",'||wwv_flow.LF||
'        "description" : "The status of the process: A';
wwv_flow_imp.g_varchar2_table(43) := 'CTIVE or INACTIVE.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(44) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(45) := ' },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(46) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Created By",'||wwv_flow.LF||
'        "description" : "The user w';
wwv_flow_imp.g_varchar2_table(47) := 'ho created the process.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(48) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_inf';
wwv_flow_imp.g_varchar2_table(49) := 'o" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDDATE",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(50) := ' "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(51) := '        "label" : "Approved Date",'||wwv_flow.LF||
'        "description" : "The date and time the process was approv';
wwv_flow_imp.g_varchar2_table(52) := 'ed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(53) := '   "selector" : "ApprovedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyy';
wwv_flow_imp.g_varchar2_table(54) := 'y-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STAT';
wwv_flow_imp.g_varchar2_table(55) := 'ECODE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(56) := '       "label" : "State",'||wwv_flow.LF||
'        "description" : "The state of the process.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(57) := ': 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(58) := '    "selector" : "StateCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(59) := '  },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVISIONNUMBER",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(60) := '"N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Revision Number",'||wwv_flow.LF||
'        "description" : "T';
wwv_flow_imp.g_varchar2_table(61) := 'he revision of the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(62) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionNumber",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(63) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWSTARTDATE",'||wwv_flow.LF||
'        "sequence" : 1';
wwv_flow_imp.g_varchar2_table(64) := '4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label"';
wwv_flow_imp.g_varchar2_table(65) := ' : "Reviewed Date",'||wwv_flow.LF||
'        "description" : "The date and time when the process review was started."';
wwv_flow_imp.g_varchar2_table(66) := ','||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(67) := 'selector" : "ReviewStartDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy';
wwv_flow_imp.g_varchar2_table(68) := '-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSES';
wwv_flow_imp.g_varchar2_table(69) := 'SMENTFLAG",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(70) := '",'||wwv_flow.LF||
'        "label" : "Assessment Testing",'||wwv_flow.LF||
'        "description" : "Identifies if the process is in ';
wwv_flow_imp.g_varchar2_table(71) := 'scope for an assessment.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(72) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessmentFlag",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(73) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVISIONDATE",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(74) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Revision Date",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(75) := '        "description" : "The date when the process was revised.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(76) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionDate",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(77) := '"additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(78) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TYPE",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(79) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Type",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(80) := '" : "One in a set of user-defined values that may be selected for the process.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(81) := '" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(82) := '      "selector" : "Type",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDBY",';
wwv_flow_imp.g_varchar2_table(83) := ''||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(84) := '"label" : "Last Approved By",'||wwv_flow.LF||
'        "description" : "The user who approved the process.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(85) := '"max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(86) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "ApprovedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(87) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TOTALREVISIONS",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(88) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The total number of revi';
wwv_flow_imp.g_varchar2_table(89) := 'sions for the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(90) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "TotalRevisions",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(91) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROCESSID",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(92) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(93) := 'ription" : "The unique identifier of the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(94) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ProcessId",'||wwv_flow.LF||
'        "additional_info';
wwv_flow_imp.g_varchar2_table(95) := '" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(96) := '  "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",';
wwv_flow_imp.g_varchar2_table(97) := ''||wwv_flow.LF||
'        "label" : "Last Updated Date",'||wwv_flow.LF||
'        "description" : "The date and time the process was m';
wwv_flow_imp.g_varchar2_table(98) := 'ost recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(99) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(100) := '"format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(101) := '  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProcesses",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(102) := '},'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECT';
wwv_flow_imp.g_varchar2_table(103) := 'ION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(104) := '    ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(105) := ' "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(106) := '  ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "u';
wwv_flow_imp.g_varchar2_table(107) := 'rl_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(108) := '   {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:AP';
wwv_flow_imp.g_varchar2_table(109) := 'EX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],';
wwv_flow_imp.g_varchar2_table(110) := ''||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281738716679220)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Processes}'
,p_description=>'The Financial Reporting Compliance processes resource is used to view or modify processes.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcesses'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-processes/comments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Processes/Comments",'||wwv_flow.LF||
'    "serv';
wwv_flow_imp.g_varchar2_table(2) := 'er_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcesses/{ProcessId}/child/com';
wwv_flow_imp.g_varchar2_table(3) := 'ments",'||wwv_flow.LF||
'    "description" : "The comments resource is used to view or modify comments written about ';
wwv_flow_imp.g_varchar2_table(4) := 'processes.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "co';
wwv_flow_imp.g_varchar2_table(5) := 'lumns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(6) := 'ary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zon';
wwv_flow_imp.g_varchar2_table(7) := 'e" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.k';
wwv_flow_imp.g_varchar2_table(8) := 'ey",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(9) := '{'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(10) := 'data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(11) := '"The date and time the comment was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(12) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyy';
wwv_flow_imp.g_varchar2_table(13) := 'y-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREA';
wwv_flow_imp.g_varchar2_table(14) := 'TEDBY",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(15) := '      "label" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the comment.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(16) := 'max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(17) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(18) := ': "ID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(19) := '    "description" : "The unique identifier of the comment on the process.",'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(20) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(21) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERCOMMENT",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(22) := '"is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Comment",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(23) := 'ription" : "The comment made on the process.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(24) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserComment"';
wwv_flow_imp.g_varchar2_table(25) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : ';
wwv_flow_imp.g_varchar2_table(26) := '"frcProcesses",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GE';
wwv_flow_imp.g_varchar2_table(27) := 'T",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_a';
wwv_flow_imp.g_varchar2_table(28) := 'll_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(29) := 'database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_f';
wwv_flow_imp.g_varchar2_table(30) := 'etch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N"';
wwv_flow_imp.g_varchar2_table(32) := ','||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "Process';
wwv_flow_imp.g_varchar2_table(33) := 'Id",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(34) := '      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : ';
wwv_flow_imp.g_varchar2_table(35) := '"N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281805152679220)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Processes/Comments}'
,p_description=>'The comments resource is used to view or modify comments written about processes.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcesses/{ProcessId}/child/comments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-processes/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Processes/Flexfields",'||wwv_flow.LF||
'    "se';
wwv_flow_imp.g_varchar2_table(2) := 'rver_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcProcesses/{ProcessId}/child/a';
wwv_flow_imp.g_varchar2_table(3) := 'dditionalInformation",'||wwv_flow.LF||
'    "description" : "The flexfields resource is used to view or modify inform';
wwv_flow_imp.g_varchar2_table(4) := 'ation added to process definitions in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "ite';
wwv_flow_imp.g_varchar2_table(5) := 'ms",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(6) := '       "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(7) := 'x_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(8) := ': "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(9) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PROCESSID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(10) := '   "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(11) := 'escription" : "The unique identifier of the process associated to the flexfield.",'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(12) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Proce';
wwv_flow_imp.g_varchar2_table(13) := 'ssId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAYVALUE",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(14) := '      "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "lab';
wwv_flow_imp.g_varchar2_table(15) := 'el" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The display value of the context of the flexfields';
wwv_flow_imp.g_varchar2_table(16) := ' associated to the process.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(17) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context_DisplayValue",';
wwv_flow_imp.g_varchar2_table(18) := ''||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : ';
wwv_flow_imp.g_varchar2_table(19) := '4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segm';
wwv_flow_imp.g_varchar2_table(20) := 'ent",'||wwv_flow.LF||
'        "description" : "The context of the flexfields associated to the process.",'||wwv_flow.LF||
'        "m';
wwv_flow_imp.g_varchar2_table(21) := 'ax_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(22) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugi';
wwv_flow_imp.g_varchar2_table(23) := 'n_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcProcesses",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "op';
wwv_flow_imp.g_varchar2_table(24) := 'erations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(25) := '    "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(26) := '  },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pa';
wwv_flow_imp.g_varchar2_table(27) := 'ttern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(28) := '  ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_patt';
wwv_flow_imp.g_varchar2_table(29) := 'ern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(30) := ']'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ProcessId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTER';
wwv_flow_imp.g_varchar2_table(31) := 'N",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_s';
wwv_flow_imp.g_varchar2_table(32) := 'tatic" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(33) := ' }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23281977545679220)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Processes/Flexfields}'
,p_description=>'The flexfields resource is used to view or modify information added to process definitions in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcProcesses/{ProcessId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/risk-assessment-results
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Risk Assessment Results",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi';
wwv_flow_imp.g_varchar2_table(2) := '/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRiskAssessmentResults",'||wwv_flow.LF||
'    "description" : "The risk ass';
wwv_flow_imp.g_varchar2_table(3) := 'essment results resource is used to view or modify an assessment for a risk. Each risk can have mult';
wwv_flow_imp.g_varchar2_table(4) := 'iple assessments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(6) := 'is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(7) := 'ime_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@co';
wwv_flow_imp.g_varchar2_table(8) := 'ntext.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },';
wwv_flow_imp.g_varchar2_table(9) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(10) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who most recently updated the ris';
wwv_flow_imp.g_varchar2_table(11) := 'k assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(12) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(13) := 'ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RISKID",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(14) := ': 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Assessed Rec';
wwv_flow_imp.g_varchar2_table(15) := 'ord ID",'||wwv_flow.LF||
'        "description" : "The unique identifier for the risk.",'||wwv_flow.LF||
'        "has_time_zone" : nu';
wwv_flow_imp.g_varchar2_table(16) := 'll,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RiskId",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(17) := ' "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEW';
wwv_flow_imp.g_varchar2_table(18) := 'EDDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WI';
wwv_flow_imp.g_varchar2_table(19) := 'TH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the risk assessment was reviewed.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(20) := '  "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(21) := '" : "ReviewedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"';
wwv_flow_imp.g_varchar2_table(22) := 'hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(23) := '       "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZO';
wwv_flow_imp.g_varchar2_table(24) := 'NE",'||wwv_flow.LF||
'        "description" : "The date and time the risk assessment was created.",'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(25) := '_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Creati';
wwv_flow_imp.g_varchar2_table(26) := 'onDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.';
wwv_flow_imp.g_varchar2_table(27) := 'fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESPONSECODE",'||wwv_flow.LF||
'        "seq';
wwv_flow_imp.g_varchar2_table(28) := 'uence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(29) := ': "One in a set of values indicating what the assessor has determined about a risk, typically whethe';
wwv_flow_imp.g_varchar2_table(30) := 'r it has passed or failed its assessment: REQ_EVALUATION, REQ_ADDITIONAL_ANALYSIS, REQ_DOCUMENTATION';
wwv_flow_imp.g_varchar2_table(31) := ', MEETS_GUIDANCE, PASS_WITH_EXCEPTION, FAIL, NO_OPINION, OUT_OF_TOLERANCE, AGREE, AGREE_WITH_EXCEPTI';
wwv_flow_imp.g_varchar2_table(32) := 'ON, PASS, DO_NOT_AGREE.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(33) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResponseCode",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(34) := ': "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(35) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who created the risk as';
wwv_flow_imp.g_varchar2_table(36) := 'sessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(37) := '      "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly';
wwv_flow_imp.g_varchar2_table(38) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SURVEYID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(39) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique i';
wwv_flow_imp.g_varchar2_table(40) := 'dentifier of the survey related to the risk assessment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(41) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SurveyId",'||wwv_flow.LF||
'        "additional';
wwv_flow_imp.g_varchar2_table(42) := '_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDDATE",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(43) := '     "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE';
wwv_flow_imp.g_varchar2_table(44) := '",'||wwv_flow.LF||
'        "description" : "The date and time the risk assessment was approved.",'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(45) := 'zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Approve';
wwv_flow_imp.g_varchar2_table(46) := 'dDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.f';
wwv_flow_imp.g_varchar2_table(47) := 'ftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACTIVITYCODE",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(48) := 'ence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(49) := ': "A code that identifies the assessment''s type, which specifies an activity the assessor is to comp';
wwv_flow_imp.g_varchar2_table(50) := 'lete.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(51) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ActivityCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly"';
wwv_flow_imp.g_varchar2_table(52) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATECODE",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(53) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The state';
wwv_flow_imp.g_varchar2_table(54) := ' of the risk assessment.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(55) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StateCode",'||wwv_flow.LF||
'        "additional_in';
wwv_flow_imp.g_varchar2_table(56) := 'fo" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESULTSUMMARY",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(57) := '   "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(58) := 'on" : "The detailed explanation for the assessment response. This is a CLOB attribute.",'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(59) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(60) := '"ResultSummary",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESULTID",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(61) := 'quence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Rec';
wwv_flow_imp.g_varchar2_table(62) := 'ord ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the result for the risk assessment.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(63) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(64) := 'ctor" : "ResultId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(65) := ' {'||wwv_flow.LF||
'        "name" : "ASSESSEDDATE",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(66) := ' "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the risk asses';
wwv_flow_imp.g_varchar2_table(67) := 'sment was performed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(68) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "fo';
wwv_flow_imp.g_varchar2_table(69) := 'rmat_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(70) := '   "name" : "OBJECTVERSIONNUMBER",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(71) := '"data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The version of the risk being assessed.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(72) := 'has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(73) := ': "ObjectVersionNumber",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDBY",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(74) := '       "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(75) := 'escription" : "The user who approved the risk assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(76) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "A';
wwv_flow_imp.g_varchar2_table(77) := 'pprovedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(78) := '   "name" : "ASSESSMENTID",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(79) := 'ype" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the risk assessment.",'||wwv_flow.LF||
'        "h';
wwv_flow_imp.g_varchar2_table(80) := 'as_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" :';
wwv_flow_imp.g_varchar2_table(81) := ' "AssessmentId",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(82) := '        "name" : "REVIEWEDBY",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(83) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who reviewed the risk assessment.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(84) := '"max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(85) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(86) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ASSESSEDBY",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(87) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who performed the';
wwv_flow_imp.g_varchar2_table(88) := ' risk assessment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(89) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AssessedBy",'||wwv_flow.LF||
'        "additional_info" : ';
wwv_flow_imp.g_varchar2_table(90) := '"ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DUEDATE",'||wwv_flow.LF||
'        "sequence';
wwv_flow_imp.g_varchar2_table(91) := '" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(92) := 'escription" : "The date when the risk assessment is due.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(93) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DueDate",'||wwv_flow.LF||
'        "additional_';
wwv_flow_imp.g_varchar2_table(94) := 'info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(95) := 'n" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "COMPLETIONDATE",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(96) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The dat';
wwv_flow_imp.g_varchar2_table(97) := 'e and time the risk assessment was completed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(98) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CompletionDate",'||wwv_flow.LF||
'        "additional_info';
wwv_flow_imp.g_varchar2_table(99) := '" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(100) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(101) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date an';
wwv_flow_imp.g_varchar2_table(102) := 'd time the risk assessment was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(103) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additio';
wwv_flow_imp.g_varchar2_table(104) := 'nal_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(105) := 'ommon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcRiskAssessm';
wwv_flow_imp.g_varchar2_table(106) := 'entResults",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",';
wwv_flow_imp.g_varchar2_table(107) := ''||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_';
wwv_flow_imp.g_varchar2_table(108) := 'rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "dat';
wwv_flow_imp.g_varchar2_table(109) := 'abase_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetc';
wwv_flow_imp.g_varchar2_table(110) := 'h_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(111) := '    "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_';
wwv_flow_imp.g_varchar2_table(112) := 'all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282026471679221)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Risk Assessment Results}'
,p_description=>'The risk assessment results resource is used to view or modify an assessment for a risk. Each risk can have multiple assessments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRiskAssessmentResults'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/risk-assessment-results/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Risk Assessment Results/Flexfields",'||wwv_flow.LF||
'    "server_prefix" : "/';
wwv_flow_imp.g_varchar2_table(2) := 'fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRiskAssessmentResults/{ResultId}/child/additio';
wwv_flow_imp.g_varchar2_table(3) := 'nalInformation",'||wwv_flow.LF||
'    "description" : "The risk assessment flexfields resource is used to view or mod';
wwv_flow_imp.g_varchar2_table(4) := 'ify information added to risk assessments in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector"';
wwv_flow_imp.g_varchar2_table(5) := ' : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCE';
wwv_flow_imp.g_varchar2_table(6) := 'KEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(7) := '    "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filte';
wwv_flow_imp.g_varchar2_table(8) := 'rable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceK';
wwv_flow_imp.g_varchar2_table(9) := 'ey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAYVALUE",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(10) := '    "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label';
wwv_flow_imp.g_varchar2_table(11) := '" : "Context Segment",'||wwv_flow.LF||
'        "description" : "Context Segment",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(12) := '   "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(13) := 'or" : "__FLEX_Context_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RE';
wwv_flow_imp.g_varchar2_table(14) := 'SULTID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(15) := '     "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the risk assessment re';
wwv_flow_imp.g_varchar2_table(16) := 'sult associated to the flexfield.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(17) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(18) := '{'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(19) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The context';
wwv_flow_imp.g_varchar2_table(20) := ' for the flexfield.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(21) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(22) := ' "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcRiskAssessmentResul';
wwv_flow_imp.g_varchar2_table(23) := 'ts",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(24) := 'database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : ';
wwv_flow_imp.g_varchar2_table(25) := '"N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_op';
wwv_flow_imp.g_varchar2_table(26) := 'eration" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_ro';
wwv_flow_imp.g_varchar2_table(27) := 'ws" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "dat';
wwv_flow_imp.g_varchar2_table(28) := 'abase_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows';
wwv_flow_imp.g_varchar2_table(29) := '" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "';
wwv_flow_imp.g_varchar2_table(30) := 'ResultId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" :';
wwv_flow_imp.g_varchar2_table(31) := ' "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_nu';
wwv_flow_imp.g_varchar2_table(32) := 'll" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282188114679222)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Risk Assessment Results/Flexfields}'
,p_description=>'The risk assessment flexfields resource is used to view or modify information added to risk assessments in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRiskAssessmentResults/{ResultId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-risks/related-processes
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Risks/Related Processes",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(2) := '"server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRisks/{RiskId}/child/relat';
wwv_flow_imp.g_varchar2_table(3) := 'edProcesses",'||wwv_flow.LF||
'    "description" : "The related processes resource is used to view records of process';
wwv_flow_imp.g_varchar2_table(4) := 'es impacted by the risk.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" ';
wwv_flow_imp.g_varchar2_table(5) := ': "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(6) := '      "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(7) := ' "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(8) := ' : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(9) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RISKID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(10) := '       "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the risk associated';
wwv_flow_imp.g_varchar2_table(11) := ' to the process.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(12) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "RiskId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(13) := '"PROCESSID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "description" : "The unique identifier of the process associated to the risk.",'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(15) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(16) := '"ProcessId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",';
wwv_flow_imp.g_varchar2_table(17) := ''||wwv_flow.LF||
'    "2" : "frcRisks",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation';
wwv_flow_imp.g_varchar2_table(18) := '" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_';
wwv_flow_imp.g_varchar2_table(19) := 'fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(20) := '      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(21) := 'allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(22) := '  {'||wwv_flow.LF||
'      "name" : "RiskId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(23) := '   "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(24) := '     "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282287380679222)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Risks/Related Processes}'
,p_description=>'The related processes resource is used to view records of processes impacted by the risk.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRisks/{RiskId}/child/relatedProcesses'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-risks/comments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Risks/Comments",'||wwv_flow.LF||
'    "server_p';
wwv_flow_imp.g_varchar2_table(2) := 'refix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRisks/{RiskId}/child/comments",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(3) := ' "description" : "The comments resource is used to view or modify comments written about risks.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(4) := '  "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(7) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "r';
wwv_flow_imp.g_varchar2_table(8) := 'emote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(9) := '" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "T';
wwv_flow_imp.g_varchar2_table(10) := 'IMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and t';
wwv_flow_imp.g_varchar2_table(11) := 'ime when the comment was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(12) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T';
wwv_flow_imp.g_varchar2_table(13) := '\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(14) := '      "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "lab';
wwv_flow_imp.g_varchar2_table(15) := 'el" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the comment on the risk.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(16) := ' "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(17) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(18) := '" : "ID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(19) := '      "description" : "The unique identifier of the comment on the risk.",'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(20) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(21) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERCOMMENT",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(22) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Comment",'||wwv_flow.LF||
'        "descr';
wwv_flow_imp.g_varchar2_table(23) := 'iption" : "The comment made on the risk.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : nu';
wwv_flow_imp.g_varchar2_table(24) := 'll,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserComment",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(25) := '      "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frc';
wwv_flow_imp.g_varchar2_table(26) := 'Risks",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(27) := '  "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows"';
wwv_flow_imp.g_varchar2_table(28) := ' : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database';
wwv_flow_imp.g_varchar2_table(29) := '_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all';
wwv_flow_imp.g_varchar2_table(30) := '_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "d';
wwv_flow_imp.g_varchar2_table(31) := 'atabase_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(32) := '"parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "RiskId",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(33) := '"param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "dire';
wwv_flow_imp.g_varchar2_table(34) := 'ction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(35) := '"is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282301219679222)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Risks/Comments}'
,p_description=>'The comments resource is used to view or modify comments written about risks.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRisks/{RiskId}/child/comments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-risks/related-controls
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Risks/Related Controls",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(2) := 'server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRisks/{RiskId}/child/relate';
wwv_flow_imp.g_varchar2_table(3) := 'dControls",'||wwv_flow.LF||
'    "description" : "The related controls resource is used to view records of controls t';
wwv_flow_imp.g_varchar2_table(4) := 'hat mitigate the risk.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : ';
wwv_flow_imp.g_varchar2_table(5) := '"N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(6) := '    "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(7) := 'has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" :';
wwv_flow_imp.g_varchar2_table(8) := ' "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(9) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PARENTID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(10) := '       "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the risk associated';
wwv_flow_imp.g_varchar2_table(11) := ' to the control.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(12) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "ParentId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(13) := ': "CHILDID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "description" : "The unique identifier of the control associated to the risk.",'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(15) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(16) := '"ChildId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(17) := '   "2" : "frcRisks",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" ';
wwv_flow_imp.g_varchar2_table(18) := ': "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fe';
wwv_flow_imp.g_varchar2_table(19) := 'tch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(20) := '    "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "al';
wwv_flow_imp.g_varchar2_table(21) := 'low_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(22) := '{'||wwv_flow.LF||
'      "name" : "RiskId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(23) := ' "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(24) := '   "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282480436679223)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Risks/Related Controls}'
,p_description=>'The related controls resource is used to view records of controls that mitigate the risk.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRisks/{RiskId}/child/relatedControls'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-risks/flexfields
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Risks/Flexfields",'||wwv_flow.LF||
'    "server';
wwv_flow_imp.g_varchar2_table(2) := '_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRisks/{RiskId}/child/additionalIn';
wwv_flow_imp.g_varchar2_table(3) := 'formation",'||wwv_flow.LF||
'    "description" : "The flexfields resource is used to view or modify information added';
wwv_flow_imp.g_varchar2_table(4) := ' to risk definitions in flexfields.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_s';
wwv_flow_imp.g_varchar2_table(5) := 'ingle_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(6) := 'ce" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 40';
wwv_flow_imp.g_varchar2_table(7) := '00,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(8) := ' "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(9) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RISKID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(10) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ID",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(11) := 'e unique identifier of the descriptive flexfield for the risk.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(12) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RiskId",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(13) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT_DISPLAYVALUE",'||wwv_flow.LF||
'        "sequence" : 3,';
wwv_flow_imp.g_varchar2_table(14) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Context Segmen';
wwv_flow_imp.g_varchar2_table(15) := 't",'||wwv_flow.LF||
'        "description" : "Context Segment",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(16) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Conte';
wwv_flow_imp.g_varchar2_table(17) := 'xt_DisplayValue",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "__FLEX_CONTEXT",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(18) := '    "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label';
wwv_flow_imp.g_varchar2_table(19) := '" : "Context Segment",'||wwv_flow.LF||
'        "description" : "The context of the flexfields associated to the risk';
wwv_flow_imp.g_varchar2_table(20) := '.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(21) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "__FLEX_Context",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]';
wwv_flow_imp.g_varchar2_table(22) := ''||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcRisks",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(23) := '  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLE';
wwv_flow_imp.g_varchar2_table(24) := 'CTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(25) := '      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(26) := '   "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(27) := '    ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(28) := ' "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(29) := '  ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "RiskId",'||wwv_flow.LF||
'      "param_type" : "URL';
wwv_flow_imp.g_varchar2_table(30) := '_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(31) := '  "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : ';
wwv_flow_imp.g_varchar2_table(32) := '"N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282535736679223)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Risks/Flexfields}'
,p_description=>'The flexfields resource is used to view or modify information added to risk definitions in flexfields.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRisks/{RiskId}/child/additionalInformation'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-risks
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Risks",'||wwv_flow.LF||
'    "server_prefix" : ';
wwv_flow_imp.g_varchar2_table(2) := '"/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRisks",'||wwv_flow.LF||
'    "description" : "The Financial R';
wwv_flow_imp.g_varchar2_table(3) := 'eporting Compliance risks resource is used to view or modify risks.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "ro';
wwv_flow_imp.g_varchar2_table(4) := 'w_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "AP';
wwv_flow_imp.g_varchar2_table(5) := 'EX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARC';
wwv_flow_imp.g_varchar2_table(6) := 'HAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(7) := '  "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APE';
wwv_flow_imp.g_varchar2_table(8) := 'X$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RISKID",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(9) := 'nce" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Record ';
wwv_flow_imp.g_varchar2_table(10) := 'ID",'||wwv_flow.LF||
'        "description" : "The unique identifier of the risk.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(11) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RiskId",'||wwv_flow.LF||
'        "add';
wwv_flow_imp.g_varchar2_table(12) := 'itional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDDAT';
wwv_flow_imp.g_varchar2_table(13) := 'E",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TI';
wwv_flow_imp.g_varchar2_table(14) := 'ME ZONE",'||wwv_flow.LF||
'        "label" : "Reviewed Date",'||wwv_flow.LF||
'        "description" : "The date and time when the ris';
wwv_flow_imp.g_varchar2_table(15) := 'k was reviewed.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(16) := ': "Y",'||wwv_flow.LF||
'        "selector" : "ReviewedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_';
wwv_flow_imp.g_varchar2_table(17) := 'mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(18) := 'ame" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(19) := ' "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date an';
wwv_flow_imp.g_varchar2_table(20) := 'd time the risk was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(21) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(22) := '     "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(23) := ' {'||wwv_flow.LF||
'        "name" : "RISKANALYSISMODELID",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(24) := '       "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Analysis Model",'||wwv_flow.LF||
'        "description" : "The uniq';
wwv_flow_imp.g_varchar2_table(25) := 'ue identifier of the analysis model for the risk.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(26) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RiskAnalysisModelId",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(27) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(28) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Name",'||wwv_flow.LF||
'        "description" : "The n';
wwv_flow_imp.g_varchar2_table(29) := 'ame of the risk.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(30) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "additional_info" : "Requi';
wwv_flow_imp.g_varchar2_table(31) := 'red",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REVIEWEDBY",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(32) := ' 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Reviewed By';
wwv_flow_imp.g_varchar2_table(33) := '",'||wwv_flow.LF||
'        "description" : "The user who reviewed the risk.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(34) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(35) := '"ReviewedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(36) := '     "name" : "DETAILEDDESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(37) := ' "data_type" : "BLOB",'||wwv_flow.LF||
'        "label" : "Description",'||wwv_flow.LF||
'        "description" : "The description of ';
wwv_flow_imp.g_varchar2_table(38) := 'the risk. This is a CLOB attribute.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(39) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DetailedDescription",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(40) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(41) := '"N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(42) := '"The user who last updated the risk.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(43) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(44) := '  "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATU';
wwv_flow_imp.g_varchar2_table(45) := 'S",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(46) := '   "label" : "Status",'||wwv_flow.LF||
'        "description" : "The status of the risk: ACTIVE or INACTIVE.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(47) := '  "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(48) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(49) := ': "RISKCONTEXTMODELID",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(50) := ' : "NUMBER",'||wwv_flow.LF||
'        "label" : "Context Model",'||wwv_flow.LF||
'        "description" : "The unique identifier of th';
wwv_flow_imp.g_varchar2_table(51) := 'e context model for the risk.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(52) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RiskContextModelId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(53) := '      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(54) := '   "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who c';
wwv_flow_imp.g_varchar2_table(55) := 'reated the risk.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : ';
wwv_flow_imp.g_varchar2_table(56) := '"N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "R';
wwv_flow_imp.g_varchar2_table(57) := 'eadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDDATE",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(58) := 'nce" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(59) := ' "label" : "Approved Date",'||wwv_flow.LF||
'        "description" : "The date and time the risk was approved.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(60) := '    "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(61) := 'or" : "ApprovedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T';
wwv_flow_imp.g_varchar2_table(62) := '\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATECODE",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(63) := '      "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "la';
wwv_flow_imp.g_varchar2_table(64) := 'bel" : "State",'||wwv_flow.LF||
'        "description" : "The state of the risk.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(65) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(66) := '" : "StateCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(67) := '        "name" : "REVIEWSTARTDATE",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(68) := ' "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the risk ';
wwv_flow_imp.g_varchar2_table(69) := 'review was started.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(70) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "ReviewStartDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(71) := 'format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(72) := '     "name" : "REVISIONDATE",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(73) := '_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Revision Date",'||wwv_flow.LF||
'        "description" : "The';
wwv_flow_imp.g_varchar2_table(74) := ' date and time when the risk was revised.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(75) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RevisionDate",'||wwv_flow.LF||
'        "additional_info" : "R';
wwv_flow_imp.g_varchar2_table(76) := 'eadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(77) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TYPE",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(78) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Type",'||wwv_flow.LF||
'        "description" : "One in a set of u';
wwv_flow_imp.g_varchar2_table(79) := 'ser-defined values that may be selected for the risk.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(80) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Type"';
wwv_flow_imp.g_varchar2_table(81) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APPROVEDBY",'||wwv_flow.LF||
'        "sequence" : 18,';
wwv_flow_imp.g_varchar2_table(82) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Approved By",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(83) := '        "description" : "The user who approved the risk.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(84) := 'ime_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Ap';
wwv_flow_imp.g_varchar2_table(85) := 'provedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(86) := '  "name" : "TOTALREVISIONS",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(87) := 'type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The number of revisions that have been performed on the r';
wwv_flow_imp.g_varchar2_table(88) := 'isk.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(89) := '     "selector" : "TotalRevisions",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LAS';
wwv_flow_imp.g_varchar2_table(90) := 'TUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMEST';
wwv_flow_imp.g_varchar2_table(91) := 'AMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Updated Date",'||wwv_flow.LF||
'        "description" : "The date and ti';
wwv_flow_imp.g_varchar2_table(92) := 'me the risk was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(93) := '       "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "Re';
wwv_flow_imp.g_varchar2_table(94) := 'adOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(95) := '    }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcRisks",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(96) := ' "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "';
wwv_flow_imp.g_varchar2_table(97) := 'FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters"';
wwv_flow_imp.g_varchar2_table(98) := ' :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGL';
wwv_flow_imp.g_varchar2_table(99) := 'E_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "param';
wwv_flow_imp.g_varchar2_table(100) := 'eters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSE';
wwv_flow_imp.g_varchar2_table(101) := 'RT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(102) := '   ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pat';
wwv_flow_imp.g_varchar2_table(103) := 'tern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(104) := ' ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282648472679224)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Risks}'
,p_description=>'The Financial Reporting Compliance risks resource is used to view or modify risks.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRisks'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/financial-reporting-compliance-risks/perspectives
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Financial Reporting Compliance Risks/Perspectives",'||wwv_flow.LF||
'    "serv';
wwv_flow_imp.g_varchar2_table(2) := 'er_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/frcRisks/{RiskId}/child/perspectiv';
wwv_flow_imp.g_varchar2_table(3) := 'es",'||wwv_flow.LF||
'    "description" : "The perspectives resource is used to view perspective values assigned to r';
wwv_flow_imp.g_varchar2_table(4) := 'isks or to modify those assignments.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_';
wwv_flow_imp.g_varchar2_table(5) := 'single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(6) := 'nce" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4';
wwv_flow_imp.g_varchar2_table(7) := '000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(8) := '  "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(9) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RISKID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_k';
wwv_flow_imp.g_varchar2_table(10) := 'ey" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the ris';
wwv_flow_imp.g_varchar2_table(11) := 'k.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(12) := '   "selector" : "RiskId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAME",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(13) := '  "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(14) := 'tion" : "The name of a perspective item assigned to the risk.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(15) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(16) := ' : "Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSPITEMID",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(17) := 'nce" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "T';
wwv_flow_imp.g_varchar2_table(18) := 'he unique identifier of the perspective value assigned to the risk.",'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(19) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PerspItemId",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(20) := '    "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "frcRi';
wwv_flow_imp.g_varchar2_table(21) := 'sks",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '"database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" :';
wwv_flow_imp.g_varchar2_table(23) := ' "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(24) := 'peration" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_r';
wwv_flow_imp.g_varchar2_table(25) := 'ows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" ';
wwv_flow_imp.g_varchar2_table(26) := ': "RiskId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" ';
wwv_flow_imp.g_varchar2_table(27) := ': "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_n';
wwv_flow_imp.g_varchar2_table(28) := 'ull" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282715181679224)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Financial Reporting Compliance Risks/Perspectives}'
,p_description=>'The perspectives resource is used to view perspective values assigned to risks or to modify those assignments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/frcRisks/{RiskId}/child/perspectives'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/open-incidents
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Open Incidents",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resource';
wwv_flow_imp.g_varchar2_table(2) := 's/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/openIncidents",'||wwv_flow.LF||
'    "description" : "The open incidents resource is u';
wwv_flow_imp.g_varchar2_table(3) := 'sed to view open incidents.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_ro';
wwv_flow_imp.g_varchar2_table(4) := 'w" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,';
wwv_flow_imp.g_varchar2_table(5) := ''||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(6) := '    "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(7) := 'or" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(8) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N"';
wwv_flow_imp.g_varchar2_table(9) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The status of the open incident.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(10) := '    "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(11) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(12) := '" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(13) := 'VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who updated the open incident most recently.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(14) := '"max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(15) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(16) := 'ame" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(17) := ' "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the open incident was c';
wwv_flow_imp.g_varchar2_table(18) := 'reated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(19) := '       "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(20) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DATASOURCENAME",'||wwv_flow.LF||
'        "sequence" : 5,';
wwv_flow_imp.g_varchar2_table(21) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The data';
wwv_flow_imp.g_varchar2_table(22) := ' source of the open incident.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(23) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DatasourceName",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(24) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(25) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who created th';
wwv_flow_imp.g_varchar2_table(26) := 'e open incident.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : ';
wwv_flow_imp.g_varchar2_table(27) := '"N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(28) := '  },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALUSERID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N"';
wwv_flow_imp.g_varchar2_table(29) := ','||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The global user identifier of the open ';
wwv_flow_imp.g_varchar2_table(30) := 'incident.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(31) := '      "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalUserId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },';
wwv_flow_imp.g_varchar2_table(32) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "RESULTID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(33) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The identifier of the open incident.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(34) := '"max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(35) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "ResultId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(36) := ' : "ROLE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(37) := ''||wwv_flow.LF||
'        "description" : "The role of the open incident.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(38) := '_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "';
wwv_flow_imp.g_varchar2_table(39) := 'Role",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONFLICTINGROLES",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(40) := 'ence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(41) := ': "The conflicting role of the open incident.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(42) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ConflictingR';
wwv_flow_imp.g_varchar2_table(43) := 'oles",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "INCIDENTINFORMATION",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(44) := 'equence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(45) := 'n" : "The incident information of the open incident.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(46) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Inci';
wwv_flow_imp.g_varchar2_table(47) := 'dentInformation",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TYPE",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(48) := 'nce" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(49) := 'The type of the open incident.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(50) := '"is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Type",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(51) := '   "name" : "GLOBALUSEREMAIL",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(52) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The global user email of the open incident.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(53) := ' "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(54) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalUserEmail",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(55) := '  "name" : "GLOBALUSERNAME",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(56) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The global user name of the open incident.",'||wwv_flow.LF||
'        "m';
wwv_flow_imp.g_varchar2_table(57) := 'ax_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(58) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalUserName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(59) := 'ame" : "CONTROLID",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(60) := 'NUMBER",'||wwv_flow.LF||
'        "description" : "The advanced control identifier of the open incident.",'||wwv_flow.LF||
'        "h';
wwv_flow_imp.g_varchar2_table(61) := 'as_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" :';
wwv_flow_imp.g_varchar2_table(62) := ' "ControlId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(63) := '"sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(64) := '       "description" : "The date and time when the open incident was most recently updated.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(65) := '  "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(66) := '" : "LastUpdateDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(67) := 'mon" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "openIncidents",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(68) := '    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "datab';
wwv_flow_imp.g_varchar2_table(69) := 'ase_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(70) := '      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operati';
wwv_flow_imp.g_varchar2_table(71) := 'on" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" :';
wwv_flow_imp.g_varchar2_table(72) := ' "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282851360679225)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Open Incidents}'
,p_description=>'The open incidents resource is used to view open incidents.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/openIncidents'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/manage-risk-management-jobs
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Manage Risk Management Jobs",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRes';
wwv_flow_imp.g_varchar2_table(2) := 'tApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/riskManagementJobs",'||wwv_flow.LF||
'    "description" : "The risk manag';
wwv_flow_imp.g_varchar2_table(3) := 'ement jobs resource is used to submit and schedule jobs.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector"';
wwv_flow_imp.g_varchar2_table(4) := ' : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCE';
wwv_flow_imp.g_varchar2_table(5) := 'KEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(6) := '    "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filte';
wwv_flow_imp.g_varchar2_table(7) := 'rable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceK';
wwv_flow_imp.g_varchar2_table(8) := 'ey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROWKEY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(9) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Get action n';
wwv_flow_imp.g_varchar2_table(10) := 'ot supported",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(11) := '"Y",'||wwv_flow.LF||
'        "selector" : "RowKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attribute';
wwv_flow_imp.g_varchar2_table(12) := 's" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "riskManagementJobs",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operati';
wwv_flow_imp.g_varchar2_table(13) := 'ons" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(14) := 'url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern';
wwv_flow_imp.g_varchar2_table(16) := '" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(17) := '   }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23282970645679225)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Manage Risk Management Jobs}'
,p_description=>'The risk management jobs resource is used to submit and schedule jobs.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/riskManagementJobs'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/list-of-values/risk-management-lookups
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "List of Values/Risk Management Lookups",'||wwv_flow.LF||
'    "server_prefix" ';
wwv_flow_imp.g_varchar2_table(2) := ': "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/riskManagementLookups",'||wwv_flow.LF||
'    "description" : "';
wwv_flow_imp.g_varchar2_table(3) := 'The Risk Management lookups resource is used to view lookups implemented throughout Risk Management.';
wwv_flow_imp.g_varchar2_table(4) := '",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(5) := '   ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(6) := ' "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(7) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(8) := '   "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(9) := '"name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(10) := '" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who most recently updated the lookup.",'||wwv_flow.LF||
'        "m';
wwv_flow_imp.g_varchar2_table(11) := 'ax_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(12) := ': "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(13) := 'e" : "ISDEFAULT",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(14) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the lookup value is the default.",'||wwv_flow.LF||
'        "max_l';
wwv_flow_imp.g_varchar2_table(15) := 'ength" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(16) := ','||wwv_flow.LF||
'        "selector" : "IsDefault",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CRE';
wwv_flow_imp.g_varchar2_table(17) := 'ATIONDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP';
wwv_flow_imp.g_varchar2_table(18) := ' WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the lookup was created.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(19) := '"has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(20) := ': "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(21) := ' : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISACTIVEBYUSER",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(22) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the look';
wwv_flow_imp.g_varchar2_table(23) := 'up is restricted to certain users.",'||wwv_flow.LF||
'        "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(24) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsActiveByUser",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(25) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(26) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who created';
wwv_flow_imp.g_varchar2_table(27) := ' the lookup.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(28) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(30) := '     "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The description of the lookup.",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(31) := 'x_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(32) := ': "Y",'||wwv_flow.LF||
'        "selector" : "Description",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(33) := ' : "LOOKUPID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER';
wwv_flow_imp.g_varchar2_table(34) := '",'||wwv_flow.LF||
'        "description" : "The unique identifier of the lookup.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(35) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LookupId",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(36) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOOKUPTYPE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(37) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The type of the looku';
wwv_flow_imp.g_varchar2_table(38) := 'p.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(39) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LookupType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(40) := '        "name" : "ISACTIVE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(41) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The status of the lookup value: ACTIVE or INACTIVE.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(42) := '       "max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(43) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsActive",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(44) := 'name" : "SEEDEDDATA",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(45) := ' "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the lookup is a predefined value.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(46) := '"max_length" : 1,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(47) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "SeededData",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(48) := ' : "LOOKUPCODE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(49) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The code to identify the lookup.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(50) := '    "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(51) := 'tor" : "LookupCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ORDERSEQ",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(52) := ' "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(53) := 'on" : "The sequence in which the lookup value is displayed.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(54) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "OrderSeq",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(55) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MEANING",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(56) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The meaning of the lookup.",';
wwv_flow_imp.g_varchar2_table(57) := ''||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(58) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Meaning",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(59) := '  "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(60) := 'type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time the lookup was most r';
wwv_flow_imp.g_varchar2_table(61) := 'ecently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(62) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.ff';
wwv_flow_imp.g_varchar2_table(63) := 'tzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(64) := '  "2" : "riskManagementLookups",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(65) := '"operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(66) := '   "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation"';
wwv_flow_imp.g_varchar2_table(67) := ' : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey';
wwv_flow_imp.g_varchar2_table(68) := '",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters';
wwv_flow_imp.g_varchar2_table(69) := '" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283049873679226)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{List of Values/Risk Management Lookups}'
,p_description=>'The Risk Management lookups resource is used to view lookups implemented throughout Risk Management.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/riskManagementLookups'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/risk-management-notifications
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Risk Management Notifications",'||wwv_flow.LF||
'    "server_prefix" : "/fscmR';
wwv_flow_imp.g_varchar2_table(2) := 'estApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/riskManagementNotifications",'||wwv_flow.LF||
'    "description" : "The';
wwv_flow_imp.g_varchar2_table(3) := ' Risk Management notifications resource is used to generate emails and notifications for Risk Manage';
wwv_flow_imp.g_varchar2_table(4) := 'ment functional communication.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single';
wwv_flow_imp.g_varchar2_table(5) := '_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(6) := ' 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(7) := '       "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(8) := 'ector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(9) := ' "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROWKEY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(10) := '"N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "GET action not supported",'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(11) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(12) := '"RowKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(13) := '  "2" : "riskManagementNotifications",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".';
wwv_flow_imp.g_varchar2_table(15) := '",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "oper';
wwv_flow_imp.g_varchar2_table(16) := 'ation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$Resou';
wwv_flow_imp.g_varchar2_table(17) := 'rceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "para';
wwv_flow_imp.g_varchar2_table(18) := 'meters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283162934679226)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Risk Management Notifications}'
,p_description=>'The Risk Management notifications resource is used to generate emails and notifications for Risk Management functional communication.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/riskManagementNotifications'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/risk-management-reports/attachments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Risk Management Reports/Attachments",'||wwv_flow.LF||
'    "server_prefix" : "';
wwv_flow_imp.g_varchar2_table(2) := '/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/riskManagementReports/{ReportLocation}/child/Att';
wwv_flow_imp.g_varchar2_table(3) := 'achments",'||wwv_flow.LF||
'    "description" : "The attachments resource is used to view, create, and update attachm';
wwv_flow_imp.g_varchar2_table(4) := 'ents.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns';
wwv_flow_imp.g_varchar2_table(5) := '" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_k';
wwv_flow_imp.g_varchar2_table(6) := 'ey" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(7) := '"N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(8) := '        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(9) := '     "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(10) := 'type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The ';
wwv_flow_imp.g_varchar2_table(11) := 'date when the record was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(12) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T';
wwv_flow_imp.g_varchar2_table(13) := '\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DESCRIPTION",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "l';
wwv_flow_imp.g_varchar2_table(15) := 'abel" : "Description",'||wwv_flow.LF||
'        "description" : "The description of the attachment.",'||wwv_flow.LF||
'        "max_le';
wwv_flow_imp.g_varchar2_table(16) := 'ngth" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N';
wwv_flow_imp.g_varchar2_table(17) := '",'||wwv_flow.LF||
'        "selector" : "Description",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(18) := 'FILENAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(19) := ''||wwv_flow.LF||
'        "label" : "File Name",'||wwv_flow.LF||
'        "description" : "The file name of the attachment.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(20) := '"max_length" : 2048,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(21) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "FileName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(22) := '" : "FILEWEBIMAGE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "B';
wwv_flow_imp.g_varchar2_table(23) := 'LOB",'||wwv_flow.LF||
'        "label" : "File Web Image",'||wwv_flow.LF||
'        "description" : "The base64 encoded image of the f';
wwv_flow_imp.g_varchar2_table(24) := 'ile displayed in .png format if the source is a convertible image.",'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(25) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "FileWebImage",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(26) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "URI",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(27) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Uri",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(28) := ': "The URI of a Topology Manager type attachment.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(29) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Uri",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(30) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "URL",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(31) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Url",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(32) := 'n" : "The URL of a web page type attachment.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(33) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Url",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(34) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DMDOCUMENTID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(35) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The document ID';
wwv_flow_imp.g_varchar2_table(36) := ' from which the attachment is created.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(37) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DmDocumentId",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(38) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ATTACHEDDOCUMENTID",'||wwv_flow.LF||
'        "sequence" : 9';
wwv_flow_imp.g_varchar2_table(39) := ','||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Attached Docume';
wwv_flow_imp.g_varchar2_table(40) := 'nt Id",'||wwv_flow.LF||
'        "description" : "The unique identifier of the attached document.",'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(41) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Attac';
wwv_flow_imp.g_varchar2_table(42) := 'hedDocumentId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "UPLOADEDFILECONTENTTYPE';
wwv_flow_imp.g_varchar2_table(43) := '",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(44) := '  "label" : "Uploaded File Content Type",'||wwv_flow.LF||
'        "description" : "The content type of the attachmen';
wwv_flow_imp.g_varchar2_table(45) := 't.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(46) := ' "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "UploadedFileContentType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(47) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DOWNLOADINFO",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(48) := '"N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "DownloadInfo",'||wwv_flow.LF||
'        "description" : "JS';
wwv_flow_imp.g_varchar2_table(49) := 'ON object represented as a string containing information used to programmatically retrieve a file at';
wwv_flow_imp.g_varchar2_table(50) := 'tachment.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(51) := '        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "DownloadInfo",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(52) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBYUSERNAME",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(53) := ' "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Created By User Name",'||wwv_flow.LF||
'        "descripti';
wwv_flow_imp.g_varchar2_table(54) := 'on" : "The user name who created the record.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(55) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedByUse';
wwv_flow_imp.g_varchar2_table(56) := 'rName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "UPLOADEDFILELENGTH",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(57) := 'equence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Fi';
wwv_flow_imp.g_varchar2_table(58) := 'le Size",'||wwv_flow.LF||
'        "description" : "The size of the attachment file.",'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(59) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "UploadedFileLength';
wwv_flow_imp.g_varchar2_table(60) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DMVERSIONNUMBER",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(61) := ' : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(62) := 'e document version number from which the attachment is created.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(63) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(64) := 'r" : "DmVersionNumber",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",';
wwv_flow_imp.g_varchar2_table(65) := ''||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(66) := '"label" : "Last Updated By",'||wwv_flow.LF||
'        "description" : "The user who last updated the record.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(67) := '  "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(68) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(69) := ' "name" : "ERRORSTATUSMESSAGE",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(70) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Error Status Message",'||wwv_flow.LF||
'        "description" : "The error ';
wwv_flow_imp.g_varchar2_table(71) := 'message, if any, for the attachment.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(72) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "ErrorStatusMessage",';
wwv_flow_imp.g_varchar2_table(73) := ''||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERNAME",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(74) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "User Name",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(75) := '   "description" : "The login credentials of the user who created the attachment.",'||wwv_flow.LF||
'        "max_len';
wwv_flow_imp.g_varchar2_table(76) := 'gth" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(77) := ','||wwv_flow.LF||
'        "selector" : "UserName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREA';
wwv_flow_imp.g_varchar2_table(78) := 'TEDBY",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(79) := '       "label" : "Created By",'||wwv_flow.LF||
'        "description" : "The user who created the record.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(80) := 'max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(81) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(82) := ' : "DATATYPECODE",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "V';
wwv_flow_imp.g_varchar2_table(83) := 'ARCHAR2",'||wwv_flow.LF||
'        "label" : "Type",'||wwv_flow.LF||
'        "description" : "A value that indicates the data type.",';
wwv_flow_imp.g_varchar2_table(84) := ''||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_f';
wwv_flow_imp.g_varchar2_table(85) := 'ilterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DatatypeCode",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(86) := '      "name" : "POSTPROCESSINGACTION",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(87) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "PostProcessingAction",'||wwv_flow.LF||
'        "description" : "The';
wwv_flow_imp.g_varchar2_table(88) := ' name of the action that can be performed after an attachment is uploaded.",'||wwv_flow.LF||
'        "max_length" : ';
wwv_flow_imp.g_varchar2_table(89) := '4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(90) := '    "selector" : "PostProcessingAction",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(91) := ' "TITLE",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(92) := ''||wwv_flow.LF||
'        "label" : "Title",'||wwv_flow.LF||
'        "description" : "The title of the attachment.",'||wwv_flow.LF||
'        "max_len';
wwv_flow_imp.g_varchar2_table(93) := 'gth" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N';
wwv_flow_imp.g_varchar2_table(94) := '",'||wwv_flow.LF||
'        "selector" : "Title",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUP';
wwv_flow_imp.g_varchar2_table(95) := 'DATEDBYUSERNAME",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(96) := 'RCHAR2",'||wwv_flow.LF||
'        "label" : "Last Updated By User",'||wwv_flow.LF||
'        "description" : "The user name who last u';
wwv_flow_imp.g_varchar2_table(97) := 'pdated the record.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden';
wwv_flow_imp.g_varchar2_table(98) := '" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedByUserName",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(99) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "UPLOADEDFILENAME",'||wwv_flow.LF||
'        "sequence" : 23,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(100) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Uploaded File Name",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(101) := '     "description" : "The name to assign to a new attachment file.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(102) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(103) := 'ector" : "UploadedFileName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FILEURL",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(104) := '        "sequence" : 24,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(105) := 'label" : "File Url",'||wwv_flow.LF||
'        "description" : "The URI of the file.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(106) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(107) := 'ector" : "FileUrl",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CONTENTREPOSITORYFI';
wwv_flow_imp.g_varchar2_table(108) := 'LESHARED",'||wwv_flow.LF||
'        "sequence" : 25,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2"';
wwv_flow_imp.g_varchar2_table(109) := ','||wwv_flow.LF||
'        "label" : "Shared",'||wwv_flow.LF||
'        "description" : "Indicates whether the attachment is shared",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(110) := '        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fil';
wwv_flow_imp.g_varchar2_table(111) := 'terable" : "N",'||wwv_flow.LF||
'        "selector" : "ContentRepositoryFileShared",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(112) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FILECONTENTS",'||wwv_flow.LF||
'        "sequence" : 26,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(113) := ''||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "label" : "File Contents",'||wwv_flow.LF||
'        "description" : "The conte';
wwv_flow_imp.g_varchar2_table(114) := 'nts of the attachment.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(115) := 'erable" : "N",'||wwv_flow.LF||
'        "selector" : "FileContents",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(116) := '   "name" : "EXPIRATIONDATE",'||wwv_flow.LF||
'        "sequence" : 27,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(117) := '_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Expiration Date",'||wwv_flow.LF||
'        "description" : "T';
wwv_flow_imp.g_varchar2_table(118) := 'he expiration date of the contents in the attachment.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(119) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ExpirationDate",'||wwv_flow.LF||
'        "format_';
wwv_flow_imp.g_varchar2_table(120) := 'mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "n';
wwv_flow_imp.g_varchar2_table(121) := 'ame" : "ERRORSTATUSCODE",'||wwv_flow.LF||
'        "sequence" : 28,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_typ';
wwv_flow_imp.g_varchar2_table(122) := 'e" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Error Status Code",'||wwv_flow.LF||
'        "description" : "The error code, if ';
wwv_flow_imp.g_varchar2_table(123) := 'any, for the attachment.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(124) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "ErrorStatusCode",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(125) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DMFOLDERPATH",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(126) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Dm Folder Path",'||wwv_flow.LF||
'        "de';
wwv_flow_imp.g_varchar2_table(127) := 'scription" : "The folder path from which the attachment is created.",'||wwv_flow.LF||
'        "max_length" : 1000,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(128) := '       "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(129) := 'lector" : "DmFolderPath",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "UPLOADEDTEXT"';
wwv_flow_imp.g_varchar2_table(130) := ','||wwv_flow.LF||
'        "sequence" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(131) := ' "label" : "Uploaded Text",'||wwv_flow.LF||
'        "description" : "The text content for a new text attachment.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(132) := '       "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_f';
wwv_flow_imp.g_varchar2_table(133) := 'ilterable" : "N",'||wwv_flow.LF||
'        "selector" : "UploadedText",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(134) := '      "name" : "CATEGORYNAME",'||wwv_flow.LF||
'        "sequence" : 31,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(135) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Category",'||wwv_flow.LF||
'        "description" : "The category of the att';
wwv_flow_imp.g_varchar2_table(136) := 'achment.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(137) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CategoryName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(138) := '      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 32,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(139) := '        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "label" : "Last Update Date",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(140) := 'cription" : "The date when the record was last updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(141) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "forma';
wwv_flow_imp.g_varchar2_table(142) := 't_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(143) := '"name" : "ASYNCTRACKERID",'||wwv_flow.LF||
'        "sequence" : 33,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(144) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Asynchronous Upload Tracker Id",'||wwv_flow.LF||
'        "description" : "Attri';
wwv_flow_imp.g_varchar2_table(145) := 'bute provided for the exclusive use by the Attachment UI components to assist in uploading files.",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(146) := '        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(147) := 'filterable" : "N",'||wwv_flow.LF||
'        "selector" : "AsyncTrackerId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(148) := '},'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "riskManagementReports",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(149) := '"4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "F';
wwv_flow_imp.g_varchar2_table(150) := 'ETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" ';
wwv_flow_imp.g_varchar2_table(151) := ':'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE';
wwv_flow_imp.g_varchar2_table(152) := '_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parame';
wwv_flow_imp.g_varchar2_table(153) := 'ters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "ReportLocation",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(154) := ' "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "dir';
wwv_flow_imp.g_varchar2_table(155) := 'ection" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(156) := ' "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283253310679227)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Risk Management Reports/Attachments}'
,p_description=>'The attachments resource is used to view, create, and update attachments.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/riskManagementReports/{ReportLocation}/child/Attachments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/risk-management-reports
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Risk Management Reports",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi';
wwv_flow_imp.g_varchar2_table(2) := '/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/riskManagementReports",'||wwv_flow.LF||
'    "description" : "The Risk Manage';
wwv_flow_imp.g_varchar2_table(3) := 'ment reports resource is used to generate reports for all Risk Management related data.",'||wwv_flow.LF||
'    "forma';
wwv_flow_imp.g_varchar2_table(4) := 't" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(6) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(7) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_at';
wwv_flow_imp.g_varchar2_table(8) := 'tribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REP';
wwv_flow_imp.g_varchar2_table(9) := 'ORTID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(10) := '    "description" : "The identifier for the type of report generated (PDF, Excel).",'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(11) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Rep';
wwv_flow_imp.g_varchar2_table(12) := 'ortId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(13) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique id';
wwv_flow_imp.g_varchar2_table(14) := 'entifier for a specific run of a report.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(15) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Id",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(16) := ' {'||wwv_flow.LF||
'        "name" : "ATTACHMENTENTITYNAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(17) := '        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The generic name of the report which is u';
wwv_flow_imp.g_varchar2_table(18) := 'ploaded as an attachment.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(19) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AttachmentEntityName",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(20) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "REPORTLOCATION",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(21) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique iden';
wwv_flow_imp.g_varchar2_table(22) := 'tifier for the report location.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(23) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ReportLocation",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(24) := '"is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "riskManag';
wwv_flow_imp.g_varchar2_table(25) := 'ementReports",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET';
wwv_flow_imp.g_varchar2_table(26) := '",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_al';
wwv_flow_imp.g_varchar2_table(27) := 'l_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "d';
wwv_flow_imp.g_varchar2_table(28) := 'atabase_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fe';
wwv_flow_imp.g_varchar2_table(29) := 'tch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283386300679228)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{Risk Management Reports}'
,p_description=>'The Risk Management reports resource is used to generate reports for all Risk Management related data.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/riskManagementReports'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-groups-(deprecated)/eligible-users
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Groups (Deprecated)/Eligible Users",'||wwv_flow.LF||
'    "ser';
wwv_flow_imp.g_varchar2_table(2) := 'ver_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/userAssignmentGroups/{GroupId}/ch';
wwv_flow_imp.g_varchar2_table(3) := 'ild/eligibleUsers",'||wwv_flow.LF||
'    "description" : "To add members to a user assignment group, a security admin';
wwv_flow_imp.g_varchar2_table(4) := 'istrator selects among users who are eligible, meaning that they''re assigned roles enabling them to ';
wwv_flow_imp.g_varchar2_table(5) := 'work with records of the object secured by the group.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : ';
wwv_flow_imp.g_varchar2_table(6) := '"items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY';
wwv_flow_imp.g_varchar2_table(7) := '",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(8) := ' "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(9) := 'le" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey"';
wwv_flow_imp.g_varchar2_table(10) := ','||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 2,';
wwv_flow_imp.g_varchar2_table(11) := ''||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The elig';
wwv_flow_imp.g_varchar2_table(12) := 'ible user''s display name.",'||wwv_flow.LF||
'        "max_length" : 128,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(13) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DisplayName",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(14) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURABLETYPE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(15) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Object for which this user';
wwv_flow_imp.g_varchar2_table(16) := ' qualifies to be eligible.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(17) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurableType",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(18) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(19) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The eligible user''s person ID.';
wwv_flow_imp.g_varchar2_table(20) := '",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(21) := ' "selector" : "PersonId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERGUID",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(22) := '      "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(23) := 'cription" : "The eligible user''s GUID.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(24) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserGuid",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(25) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLETYPE",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(26) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Authorization that qua';
wwv_flow_imp.g_varchar2_table(27) := 'lifies this user to be eligible as an owner, editor, or viewer.",'||wwv_flow.LF||
'        "max_length" : 128,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(28) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(29) := 'r" : "RoleType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : ';
wwv_flow_imp.g_varchar2_table(30) := '"Y",'||wwv_flow.LF||
'    "2" : "userAssignmentGroups",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".';
wwv_flow_imp.g_varchar2_table(32) := '",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "oper';
wwv_flow_imp.g_varchar2_table(33) := 'ation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$Resou';
wwv_flow_imp.g_varchar2_table(34) := 'rceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "para';
wwv_flow_imp.g_varchar2_table(35) := 'meters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "GroupId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" ';
wwv_flow_imp.g_varchar2_table(36) := ': "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "i';
wwv_flow_imp.g_varchar2_table(37) := 's_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283496155679228)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Groups (Deprecated)/Eligible Users}'
,p_description=>'To add members to a user assignment group, a security administrator selects among users who are eligible, meaning that they''re assigned roles enabling them to work with records of the object secured by the group.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentGroups/{GroupId}/child/eligibleUsers'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-groups-(deprecated)/group-members
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Groups (Deprecated)/Group Members",'||wwv_flow.LF||
'    "serv';
wwv_flow_imp.g_varchar2_table(2) := 'er_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/userAssignmentGroups/{GroupId}/chi';
wwv_flow_imp.g_varchar2_table(3) := 'ld/members",'||wwv_flow.LF||
'    "description" : "The security administrator may add users to a user assignment grou';
wwv_flow_imp.g_varchar2_table(4) := 'p, or remove them.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",';
wwv_flow_imp.g_varchar2_table(5) := ''||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(6) := '"is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(7) := 'time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@c';
wwv_flow_imp.g_varchar2_table(8) := 'ontext.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(9) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(10) := '   "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The member''s person ID.",'||wwv_flow.LF||
'        "has_time_zone';
wwv_flow_imp.g_varchar2_table(11) := '" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "PersonId",';
wwv_flow_imp.g_varchar2_table(12) := ''||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERNAME",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(13) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The member''s';
wwv_flow_imp.g_varchar2_table(14) := ' user name.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(15) := ''||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "Username",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(16) := '      {'||wwv_flow.LF||
'        "name" : "USERID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(17) := 'data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The member''s GUID.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(18) := '       "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(19) := 'lector" : "UserId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DISPLAYNAME",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(20) := '   "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descri';
wwv_flow_imp.g_varchar2_table(21) := 'ption" : "The member''s display name.",'||wwv_flow.LF||
'        "max_length" : 302,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(22) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "Displayname",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(23) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(24) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The member''s ID.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(25) := 'has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(26) := ': "Id",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISORPHAN",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(27) := ' 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Either ';
wwv_flow_imp.g_varchar2_table(28) := 'the member is valid or invalid.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(29) := ' "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "IsOrphan",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(30) := '        "name" : "GROUPID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(31) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The member''s group ID.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(32) := '    "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(33) := 'tor" : "GroupId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" :';
wwv_flow_imp.g_varchar2_table(34) := ' "Y",'||wwv_flow.LF||
'    "2" : "userAssignmentGroups",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {';
wwv_flow_imp.g_varchar2_table(35) := ''||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : "';
wwv_flow_imp.g_varchar2_table(36) := '.",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "ope';
wwv_flow_imp.g_varchar2_table(37) := 'ration" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$Reso';
wwv_flow_imp.g_varchar2_table(38) := 'urceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(39) := '  "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "all';
wwv_flow_imp.g_varchar2_table(40) := 'ow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DEL';
wwv_flow_imp.g_varchar2_table(41) := 'ETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allo';
wwv_flow_imp.g_varchar2_table(42) := 'w_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(43) := '      "name" : "GroupId",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(44) := '"is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(45) := '  "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283564515679229)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Groups (Deprecated)/Group Members}'
,p_description=>'The security administrator may add users to a user assignment group, or remove them.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentGroups/{GroupId}/child/members'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-groups-(deprecated)/group-security-assignments
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Groups (Deprecated)/Group Security Assignment';
wwv_flow_imp.g_varchar2_table(2) := 's",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/userAssignmentGroups/';
wwv_flow_imp.g_varchar2_table(3) := '{GroupId}/child/securityAssignments",'||wwv_flow.LF||
'    "description" : "A security assignment group may itself be';
wwv_flow_imp.g_varchar2_table(4) := ' secured. The administrator who owns the group may add other users as owners, editors, or viewers of';
wwv_flow_imp.g_varchar2_table(5) := ' the group.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "c';
wwv_flow_imp.g_varchar2_table(6) := 'olumns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(7) := 'mary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(8) := 'ne" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.';
wwv_flow_imp.g_varchar2_table(9) := 'key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(10) := ' {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(11) := ' "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who most recently updated the security ';
wwv_flow_imp.g_varchar2_table(12) := 'assignment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(13) := '        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "Re';
wwv_flow_imp.g_varchar2_table(14) := 'adOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(15) := 'ce" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(16) := 'description" : "The date and time when the security assignment was created.",'||wwv_flow.LF||
'        "has_time_zone';
wwv_flow_imp.g_varchar2_table(17) := '" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDat';
wwv_flow_imp.g_varchar2_table(18) := 'e",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh';
wwv_flow_imp.g_varchar2_table(19) := ':tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" :';
wwv_flow_imp.g_varchar2_table(20) := ' 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The u';
wwv_flow_imp.g_varchar2_table(21) := 'ser who created the security assignment.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(22) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(23) := '  "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISEDI';
wwv_flow_imp.g_varchar2_table(24) := 'TOR",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(25) := '  "description" : "Indicates the user is assigned as an editor.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(26) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsEditor",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(27) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISVIEWER",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(28) := 'mary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Indicates the user is assi';
wwv_flow_imp.g_varchar2_table(29) := 'gned as a viewer.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(30) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "IsViewer",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(31) := ' : "SECURABLEID",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(32) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "ID of the group that''s being secured.",'||wwv_flow.LF||
'        "max_length" : 100,';
wwv_flow_imp.g_varchar2_table(33) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(34) := 'selector" : "SecurableId",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(35) := ' },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSORID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(36) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The GUID of a user, or the ID of a group, ';
wwv_flow_imp.g_varchar2_table(37) := 'granted a security assignment for the group.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(38) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AccessorId",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(39) := '        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(40) := ': "ACCESSORDISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(41) := ' : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name of a user, or the name of a group, granted ';
wwv_flow_imp.g_varchar2_table(42) := 'a security assignment for a user assignment group.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(43) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Accesso';
wwv_flow_imp.g_varchar2_table(44) := 'rDisplayName",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(45) := '      "name" : "ID",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(46) := '"NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the security assignment.",'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(47) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "I';
wwv_flow_imp.g_varchar2_table(48) := 'd",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISOWNER",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(49) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Indicates t';
wwv_flow_imp.g_varchar2_table(50) := 'he user is assigned as an owner.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(51) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsOwner",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(52) := '        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(53) := '"data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and time when the securi';
wwv_flow_imp.g_varchar2_table(54) := 'ty assignment was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(55) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'        "additional_info" : "';
wwv_flow_imp.g_varchar2_table(56) := 'ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(57) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ACCESSORTYPE",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(58) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A type value, USER or GROUP, ident';
wwv_flow_imp.g_varchar2_table(59) := 'ifying whether the actor granted a security assignment is a user or a group.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(60) := ': 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(61) := '    "selector" : "AccessorType",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(62) := ''||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "userAssignmentGroups",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(63) := ' "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database';
wwv_flow_imp.g_varchar2_table(64) := '_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(65) := '   "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation"';
wwv_flow_imp.g_varchar2_table(66) := ' : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N';
wwv_flow_imp.g_varchar2_table(67) := '",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_ope';
wwv_flow_imp.g_varchar2_table(68) := 'ration" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters';
wwv_flow_imp.g_varchar2_table(69) := '" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",';
wwv_flow_imp.g_varchar2_table(70) := ''||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" ';
wwv_flow_imp.g_varchar2_table(71) := ':'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(72) := '      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :';
wwv_flow_imp.g_varchar2_table(73) := ''||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "GroupId",'||wwv_flow.LF||
'      "param_type" ';
wwv_flow_imp.g_varchar2_table(74) := ': "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN"';
wwv_flow_imp.g_varchar2_table(75) := ','||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_par';
wwv_flow_imp.g_varchar2_table(76) := 'am" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283607970679229)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Groups (Deprecated)/Group Security Assignments}'
,p_description=>'A security assignment group may itself be secured. The administrator who owns the group may add other users as owners, editors, or viewers of the group.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentGroups/{GroupId}/child/securityAssignments'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-groups-(deprecated)
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Groups (Deprecated)",'||wwv_flow.LF||
'    "server_prefix" : "';
wwv_flow_imp.g_varchar2_table(2) := '/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/userAssignmentGroups",'||wwv_flow.LF||
'    "description" : "A us';
wwv_flow_imp.g_varchar2_table(3) := 'er assignment group authorizes its members to work with records of an object, such as risks, control';
wwv_flow_imp.g_varchar2_table(4) := 's, or models. While editing an object record, an owner may select groups of users who can work on it';
wwv_flow_imp.g_varchar2_table(5) := '. Security administrators can create groups, and secure them by assigning users or user groups.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(6) := '  "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(7) := '      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",';
wwv_flow_imp.g_varchar2_table(8) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(9) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "r';
wwv_flow_imp.g_varchar2_table(10) := 'emote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(11) := '" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(12) := 'VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who updated the user assignment group most recently.",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(13) := '        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(14) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(15) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(16) := '   "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(17) := ' "The date and time when the user assignment group was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(18) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(19) := '"additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(20) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURABLETYPE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(21) := '    "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The object ty';
wwv_flow_imp.g_varchar2_table(22) := 'pe to be secured by the group.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(23) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurableType",'||wwv_flow.LF||
'        "ad';
wwv_flow_imp.g_varchar2_table(24) := 'ditional_info" : "Required,CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(25) := '"CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(26) := '",'||wwv_flow.LF||
'        "description" : "The user who created the user assignment group.",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(27) := ' 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(28) := '   "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(29) := ' },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLETYPE",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(30) := '     "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The group''s authorization.",'||wwv_flow.LF||
'        "max_le';
wwv_flow_imp.g_varchar2_table(31) := 'ngth" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y';
wwv_flow_imp.g_varchar2_table(32) := '",'||wwv_flow.LF||
'        "selector" : "RoleType",'||wwv_flow.LF||
'        "additional_info" : "Required,CreateOnly",'||wwv_flow.LF||
'        "is_c';
wwv_flow_imp.g_varchar2_table(33) := 'ommon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MEMBERCOUNT",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(34) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The number of members of ';
wwv_flow_imp.g_varchar2_table(35) := 'the user assignment group.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(36) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MemberCount",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(37) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GROUPID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(38) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ID of the user ';
wwv_flow_imp.g_varchar2_table(39) := 'assignment group.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(40) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GroupId",'||wwv_flow.LF||
'        "additional_info" : "R';
wwv_flow_imp.g_varchar2_table(41) := 'eadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ORPHANCOUNT",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(42) := 'ce" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(43) := 'e number of orphan (inactive) members of the user assignment group.",'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(44) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "OrphanCount",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(45) := '    "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAM';
wwv_flow_imp.g_varchar2_table(46) := 'E",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(47) := '   "description" : "The group''s name.",'||wwv_flow.LF||
'        "max_length" : 200,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(48) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Name",'||wwv_flow.LF||
'        "addi';
wwv_flow_imp.g_varchar2_table(49) := 'tional_info" : "Required",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PRIVILEGECOD';
wwv_flow_imp.g_varchar2_table(50) := 'E",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(51) := '   "description" : "The privilege code associated to the user assignment group.",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(52) := 'h" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(53) := '        "selector" : "PrivilegeCode",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(54) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(55) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date and';
wwv_flow_imp.g_varchar2_table(56) := ' time when the user assignment group was most recently updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(57) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(58) := '  "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(59) := '     "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "user';
wwv_flow_imp.g_varchar2_table(60) := 'AssignmentGroups",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : ';
wwv_flow_imp.g_varchar2_table(61) := '"GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetc';
wwv_flow_imp.g_varchar2_table(62) := 'h_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(63) := '  "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allo';
wwv_flow_imp.g_varchar2_table(64) := 'w_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST';
wwv_flow_imp.g_varchar2_table(65) := '",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : ';
wwv_flow_imp.g_varchar2_table(66) := '"N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_';
wwv_flow_imp.g_varchar2_table(67) := 'operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N';
wwv_flow_imp.g_varchar2_table(68) := '",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(69) := 'peration" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N"';
wwv_flow_imp.g_varchar2_table(70) := ','||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283731239679230)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Groups (Deprecated)}'
,p_description=>'A user assignment group authorizes its members to work with records of an object, such as risks, controls, or models. While editing an object record, an owner may select groups of users who can work on it. Security administrators can create groups, and secure them by assigning users or user groups.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentGroups'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-secured-object-types-(deprecated)/user-assignment-authorizations
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Secured Object Types (Deprecated)/User Assign';
wwv_flow_imp.g_varchar2_table(2) := 'ment Authorizations",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/use';
wwv_flow_imp.g_varchar2_table(3) := 'rAssignmentSecurableTypes/{SecurableType}/child/roleTypes",'||wwv_flow.LF||
'    "description" : "While configuring a';
wwv_flow_imp.g_varchar2_table(4) := ' user assignment group, a security administrator selects an authorization value. It sets the level a';
wwv_flow_imp.g_varchar2_table(5) := 't which group members can work with records of the object selected for the group. Values include Own';
wwv_flow_imp.g_varchar2_table(6) := 'er, Editor, and Viewer.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" :';
wwv_flow_imp.g_varchar2_table(7) := ' "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(8) := '     "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(9) := '"has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(10) := ': "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(11) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURABLETYPE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(12) := '"N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The association of an authorization ';
wwv_flow_imp.g_varchar2_table(13) := 'with an object.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : ';
wwv_flow_imp.g_varchar2_table(14) := '"N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SecurableType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PRIVILEGECODE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(16) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The security privilege to access t';
wwv_flow_imp.g_varchar2_table(17) := 'he risk-management object.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(18) := '_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PrivilegeCode",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(19) := 'mon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLETYPE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(20) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of a l';
wwv_flow_imp.g_varchar2_table(21) := 'ocalized translation of the authorization.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(22) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleType",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(23) := '    "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MEANING",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(24) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The localized tran';
wwv_flow_imp.g_varchar2_table(25) := 'slation of the authorization.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(26) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Meaning",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(27) := '" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "userAssignmentSecur';
wwv_flow_imp.g_varchar2_table(28) := 'ableTypes",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(29) := '      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_r';
wwv_flow_imp.g_varchar2_table(30) := 'ows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "data';
wwv_flow_imp.g_varchar2_table(31) := 'base_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch';
wwv_flow_imp.g_varchar2_table(32) := '_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(33) := 'name" : "SecurableType",'||wwv_flow.LF||
'      "param_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(34) := 'is_required" : "Y",'||wwv_flow.LF||
'      "direction" : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(35) := ' "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_query_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283885977679230)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Secured Object Types (Deprecated)/User Assignment Authorizations}'
,p_description=>'While configuring a user assignment group, a security administrator selects an authorization value. It sets the level at which group members can work with records of the object selected for the group. Values include Owner, Editor, and Viewer.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentSecurableTypes/{SecurableType}/child/roleTypes'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-secured-object-types-(deprecated)/eligible-users
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Secured Object Types (Deprecated)/Eligible Us';
wwv_flow_imp.g_varchar2_table(2) := 'ers",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/userAssignmentSecur';
wwv_flow_imp.g_varchar2_table(3) := 'ableTypes/{SecurableType}/child/eligibleUsers",'||wwv_flow.LF||
'    "description" : "To add members to a user assign';
wwv_flow_imp.g_varchar2_table(4) := 'ment group, a security administrator selects among users who are eligible, meaning that they''re assi';
wwv_flow_imp.g_varchar2_table(5) := 'gned roles enabling them to work with records of the object secured by the group.",'||wwv_flow.LF||
'    "format" : "';
wwv_flow_imp.g_varchar2_table(6) := 'JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(7) := '  "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(8) := '_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(9) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribut';
wwv_flow_imp.g_varchar2_table(10) := 'e_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DISPLAYNA';
wwv_flow_imp.g_varchar2_table(11) := 'ME",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(12) := '   "description" : "The eligible user''s display name.",'||wwv_flow.LF||
'        "max_length" : 128,'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(13) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Disp';
wwv_flow_imp.g_varchar2_table(14) := 'layName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURABLETYPE",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(15) := 'ence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(16) := ' "Object for which this user qualifies to be eligible.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(17) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Sec';
wwv_flow_imp.g_varchar2_table(18) := 'urableType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(19) := 'ce" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "Th';
wwv_flow_imp.g_varchar2_table(20) := 'e eligible user''s person ID.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(21) := 's_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PersonId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(22) := '     "name" : "USERGUID",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(23) := '" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The eligible user''s GUID.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(24) := '    "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(25) := 'tor" : "UserGuid",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ROLETYPE",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(26) := 'sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(27) := 'n" : "Authorization that qualifies this user to be eligible as an owner, editor, or viewer.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(28) := '  "max_length" : 128,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(29) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "RoleType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_';
wwv_flow_imp.g_varchar2_table(30) := 'attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "userAssignmentSecurableTypes",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : ';
wwv_flow_imp.g_varchar2_table(31) := '"Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_C';
wwv_flow_imp.g_varchar2_table(32) := 'OLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(33) := '  ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",';
wwv_flow_imp.g_varchar2_table(34) := ''||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" ';
wwv_flow_imp.g_varchar2_table(35) := ':'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "name" : "SecurableType",'||wwv_flow.LF||
'      "param';
wwv_flow_imp.g_varchar2_table(36) := '_type" : "URL_PATTERN",'||wwv_flow.LF||
'      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      "is_required" : "Y",'||wwv_flow.LF||
'      "direction"';
wwv_flow_imp.g_varchar2_table(37) := ' : "IN",'||wwv_flow.LF||
'      "is_static" : "N",'||wwv_flow.LF||
'      "is_array" : "N",'||wwv_flow.LF||
'      "omit_when_null" : "N",'||wwv_flow.LF||
'      "is_qu';
wwv_flow_imp.g_varchar2_table(38) := 'ery_param" : "N"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23283951782679231)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Secured Object Types (Deprecated)/Eligible Users}'
,p_description=>'To add members to a user assignment group, a security administrator selects among users who are eligible, meaning that they''re assigned roles enabling them to work with records of the object secured by the group.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentSecurableTypes/{SecurableType}/child/eligibleUsers'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/user-assignment-secured-object-types-(deprecated)
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "User Assignment Secured Object Types (Deprecated)",'||wwv_flow.LF||
'    "serv';
wwv_flow_imp.g_varchar2_table(2) := 'er_prefix" : "/fscmRestApi/resources/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/userAssignmentSecurableTypes",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(3) := ' "description" : "While configuring a user assignment group, a security administrator selects a risk';
wwv_flow_imp.g_varchar2_table(4) := '-management object. Group members can work with records of that object.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(5) := ' "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(6) := ' "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(7) := 'VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(8) := '      "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : ';
wwv_flow_imp.g_varchar2_table(9) := '"APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SECURABLETYPE",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(10) := '     "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(11) := 'ription" : "The unique identifier of a localized translation of the object name.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(12) := 'th" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",';
wwv_flow_imp.g_varchar2_table(13) := ''||wwv_flow.LF||
'        "selector" : "SecurableType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(14) := 'MEANING",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '        "description" : "The localized translation of the object name.",'||wwv_flow.LF||
'        "max_length" : 255,';
wwv_flow_imp.g_varchar2_table(16) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(17) := 'selector" : "Meaning",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(18) := '"1" : "Y",'||wwv_flow.LF||
'    "2" : "userAssignmentSecurableTypes",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations';
wwv_flow_imp.g_varchar2_table(19) := '" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url';
wwv_flow_imp.g_varchar2_table(20) := '_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(21) := ' {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" :';
wwv_flow_imp.g_varchar2_table(22) := ' "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(23) := '}'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23284056788679231)
,p_catalog_id=>wwv_flow_imp.id(23275607496679156)
,p_name=>q'{User Assignment Secured Object Types (Deprecated)}'
,p_description=>'While configuring a user assignment group, a security administrator selects a risk-management object. Group members can work with records of that object.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/userAssignmentSecurableTypes'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
