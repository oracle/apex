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
prompt --workspace/rest-source-catalogs/25D_common
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(21754115426273324)
,p_name=>'common (Release 25D)'
,p_internal_name=>'25D_COMMON'
,p_format=>'APEX'
);
end;
/
prompt --workspace/rest-source-catalogs/announcements
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Announcements",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources';
wwv_flow_imp.g_varchar2_table(2) := '/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/announcements",'||wwv_flow.LF||
'    "description" : "The announcements resource is use';
wwv_flow_imp.g_varchar2_table(3) := 'd to create, update, view, or delete announcements. You can post announcements from other applicatio';
wwv_flow_imp.g_varchar2_table(4) := 'ns to Oracle Applications Cloud using this resource.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "';
wwv_flow_imp.g_varchar2_table(5) := 'items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY"';
wwv_flow_imp.g_varchar2_table(6) := ','||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(7) := '"max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(8) := 'e" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",';
wwv_flow_imp.g_varchar2_table(9) := ''||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "apex_resourcekey"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(10) := ' : "ANNOUNCEMENTID",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(11) := 'VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the announcement.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(12) := '" : 18,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(13) := '      "selector" : "AnnouncementId",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(14) := ' "Y",'||wwv_flow.LF||
'        "static_id" : "announcementid"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CATEGORYCODE",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(15) := '   "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descri';
wwv_flow_imp.g_varchar2_table(16) := 'ption" : "The category code of the announcement. Valid values are OC and OF.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(17) := ': 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(18) := '    "selector" : "CategoryCode",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "categorycode"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(19) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CATEGORYNAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(20) := '",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The category name of the announcement.';
wwv_flow_imp.g_varchar2_table(21) := ' An announcement can be an article, event, insight, or user-defined.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(22) := '        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(23) := 'elector" : "CategoryName",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "categoryname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(24) := '      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(25) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who created the announcement.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(26) := '  "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(27) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(28) := 'mon" : "Y",'||wwv_flow.LF||
'        "static_id" : "createdby"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(29) := '    "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE"';
wwv_flow_imp.g_varchar2_table(30) := ','||wwv_flow.LF||
'        "description" : "The date when the announcement was created.",'||wwv_flow.LF||
'        "has_time_zone" : "';
wwv_flow_imp.g_varchar2_table(31) := 'Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(32) := '       "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm"';
wwv_flow_imp.g_varchar2_table(33) := ','||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "creationdate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(34) := '"CROPPEDIMAGEFILE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "B';
wwv_flow_imp.g_varchar2_table(35) := 'LOB",'||wwv_flow.LF||
'        "description" : "A cropped image as displayed in the announcement newsfeed.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(36) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(37) := ' : "CroppedImageFile",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "croppedimagefile"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(38) := '      {'||wwv_flow.LF||
'        "name" : "DESCRIPTION",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(39) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Content",'||wwv_flow.LF||
'        "description" : "A short descript';
wwv_flow_imp.g_varchar2_table(40) := 'ion of the announcement.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(41) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Description",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(42) := '" : "Y",'||wwv_flow.LF||
'        "static_id" : "description"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DESCRIPTIONCLOB",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(43) := '      "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(44) := 'tion" : "The announcement content that the users can view.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(45) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "DescriptionClob",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(46) := 'is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "descriptionclob"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EXPIRED';
wwv_flow_imp.g_varchar2_table(47) := 'ATE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH';
wwv_flow_imp.g_varchar2_table(48) := ' TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date when the announcement expires.",'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(49) := 'ne" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ExpireDat';
wwv_flow_imp.g_varchar2_table(50) := 'e",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(51) := '  "static_id" : "expiredate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EXPIRYDAYSFLAG",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(52) := ': 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The';
wwv_flow_imp.g_varchar2_table(53) := ' number of days after which the announcement expires.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(54) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Expiry';
wwv_flow_imp.g_varchar2_table(55) := 'DaysFlag",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "expirydaysflag"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(56) := '  "name" : "IMAGEFILE",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(57) := ' : "BLOB",'||wwv_flow.LF||
'        "description" : "The image for an announcement can be specified as a File, URL, o';
wwv_flow_imp.g_varchar2_table(58) := 'r Predefined. The Predefined option allows selection from a list of predefined images.",'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(59) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(60) := '"ImageFile",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "imagefile"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(61) := 'name" : "IMAGENAME",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(62) := '"VARCHAR2",'||wwv_flow.LF||
'        "description" : "The file name of the image to be uploaded, if File option is se';
wwv_flow_imp.g_varchar2_table(63) := 'lected to add an image for the announcement.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(64) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ImageName",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(65) := '        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "imagename"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "IMAG';
wwv_flow_imp.g_varchar2_table(66) := 'EURL",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(67) := '      "description" : "The image URL link, if URL option is selected to add an image for the announc';
wwv_flow_imp.g_varchar2_table(68) := 'ement.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(69) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ImageURL",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "sta';
wwv_flow_imp.g_varchar2_table(70) := 'tic_id" : "imageurl"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISVISIBLE",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(71) := ' "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The visibility o';
wwv_flow_imp.g_varchar2_table(72) := 'f the announcement. The visibility can be determined using values ''Y'', ''N'' or an ''EL Expression''. Th';
wwv_flow_imp.g_varchar2_table(73) := 'e default value is set to ''Y''.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(74) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsVisible",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(75) := 'mmon" : "Y",'||wwv_flow.LF||
'        "static_id" : "isvisible"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(76) := '       "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME Z';
wwv_flow_imp.g_varchar2_table(77) := 'ONE",'||wwv_flow.LF||
'        "description" : "The date when the announcement was last updated.",'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(78) := 'zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpd';
wwv_flow_imp.g_varchar2_table(79) := 'ateDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss';
wwv_flow_imp.g_varchar2_table(80) := '.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "lastupdatedate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(81) := '    "name" : "LASTUPDATELOGIN",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(82) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "This attribute is currently not used.",'||wwv_flow.LF||
'        "max';
wwv_flow_imp.g_varchar2_table(83) := '_length" : 32,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(84) := '"Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateLogin",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(85) := 'mon" : "Y",'||wwv_flow.LF||
'        "static_id" : "lastupdatelogin"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY';
wwv_flow_imp.g_varchar2_table(86) := '",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(87) := '  "description" : "The user who last updated the announcement.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(88) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(89) := ' : "LastUpdatedBy",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "stat';
wwv_flow_imp.g_varchar2_table(90) := 'ic_id" : "lastupdatedby"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OBJECTVERSIONNUMBER",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(91) := ' : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "This';
wwv_flow_imp.g_varchar2_table(92) := ' attribute is currently not used.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(93) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ObjectVersionNumber",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(94) := '     "static_id" : "objectversionnumber"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SHOWANNOUNCEMENT",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(95) := '   "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descr';
wwv_flow_imp.g_varchar2_table(96) := 'iption" : "Determines whether the announcement is visible or not. The visibility depends on the EL E';
wwv_flow_imp.g_varchar2_table(97) := 'xpression specified on the IsVisible attribute.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zon';
wwv_flow_imp.g_varchar2_table(98) := 'e" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ShowAnnou';
wwv_flow_imp.g_varchar2_table(99) := 'ncement",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "';
wwv_flow_imp.g_varchar2_table(100) := 'showannouncement"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STARTDATE",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(101) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The';
wwv_flow_imp.g_varchar2_table(102) := ' date on which the announcement is created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(103) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StartDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-m';
wwv_flow_imp.g_varchar2_table(104) := 'm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "startdate"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(105) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SUBJECT",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(106) := '   "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The subject of the announcement.",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(107) := 'x_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(108) := ': "Y",'||wwv_flow.LF||
'        "selector" : "Subject",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "subject"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(109) := '    }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "announcements",'||wwv_flow.LF||
'    "3" : "N"';
wwv_flow_imp.g_varchar2_table(110) := ','||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation';
wwv_flow_imp.g_varchar2_table(111) := '" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parame';
wwv_flow_imp.g_varchar2_table(112) := 'ters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "fetch_collection"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GE';
wwv_flow_imp.g_varchar2_table(113) := 'T",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(114) := '   "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "fetch_si';
wwv_flow_imp.g_varchar2_table(115) := 'ngle_row"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url';
wwv_flow_imp.g_varchar2_table(116) := '_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "st';
wwv_flow_imp.g_varchar2_table(117) := 'atic_id" : "insert"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",';
wwv_flow_imp.g_varchar2_table(118) := ''||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" ';
wwv_flow_imp.g_varchar2_table(119) := ':'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "update"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "da';
wwv_flow_imp.g_varchar2_table(120) := 'tabase_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_row';
wwv_flow_imp.g_varchar2_table(121) := 's" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "delete"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameter';
wwv_flow_imp.g_varchar2_table(122) := 's" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(21754201445273324)
,p_catalog_id=>wwv_flow_imp.id(21754115426273324)
,p_name=>q'{Announcements}'
,p_description=>'The announcements resource is used to create, update, view, or delete announcements. You can post announcements from other applications to Oracle Applications Cloud using this resource.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/announcements'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/atk-popup-items
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "ATK Popup Items",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resourc';
wwv_flow_imp.g_varchar2_table(2) := 'es/11.13.18.05",'||wwv_flow.LF||
'    "path" : "/atkPopupItems",'||wwv_flow.LF||
'    "description" : "The ATK Popup Items resource is';
wwv_flow_imp.g_varchar2_table(3) := ' used to create, view, update, and delete popup items. Using this resource, you can also use  popup ';
wwv_flow_imp.g_varchar2_table(4) := 'items from other applications in Oracle Applications Cloud.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_select';
wwv_flow_imp.g_varchar2_table(5) := 'or" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOU';
wwv_flow_imp.g_varchar2_table(6) := 'RCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(7) := '       "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(8) := 'lterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$Resour';
wwv_flow_imp.g_varchar2_table(9) := 'ceKey",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "apex_resourcekey"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(10) := ' "name" : "ADDITIONALATTRIBUTES",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(11) := 'ata_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Additional information captured about the popup ite';
wwv_flow_imp.g_varchar2_table(12) := 'm.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(13) := ' "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AdditionalAttributes",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(14) := '    "static_id" : "additionalattributes"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DISPLAYMENU",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(15) := 'equence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(16) := '" : "The name of the display menu.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(17) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DisplayMenu",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(18) := '"is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "displaymenu"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MESSAGECRE';
wwv_flow_imp.g_varchar2_table(19) := 'ATIONDATE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(20) := '        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and time when the notification ';
wwv_flow_imp.g_varchar2_table(21) := 'was created.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(22) := '"Y",'||wwv_flow.LF||
'        "selector" : "MessageCreationDate",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(23) := 'is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "messagecreationdate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MES';
wwv_flow_imp.g_varchar2_table(24) := 'SAGECREATIONTRANSLATEDDATE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(25) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The date on which the translated version of the message ';
wwv_flow_imp.g_varchar2_table(26) := 'was created.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(27) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageCreationTranslatedDate",'||wwv_flow.LF||
'        "addi';
wwv_flow_imp.g_varchar2_table(28) := 'tional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "messagecreationtranslat';
wwv_flow_imp.g_varchar2_table(29) := 'eddate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MESSAGEEXPIRYDATE",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(30) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The date on which the an';
wwv_flow_imp.g_varchar2_table(31) := 'nouncement notification is set to expire.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(32) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageExpiryDate",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(33) := '",'||wwv_flow.LF||
'        "static_id" : "messageexpirydate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MESSAGEID",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(34) := '"sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(35) := '" : "The unique identifier of the message.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(36) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageId",'||wwv_flow.LF||
'        "additional_info" : "Cr';
wwv_flow_imp.g_varchar2_table(37) := 'eateOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "messageid"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(38) := 'me" : "MESSAGESUMMARY",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(39) := ': "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Message Summary",'||wwv_flow.LF||
'        "description" : "The title of the notific';
wwv_flow_imp.g_varchar2_table(40) := 'ation containing the task details.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(41) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageSummary",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(42) := '   "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "messagesummary"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MSGC';
wwv_flow_imp.g_varchar2_table(43) := 'REATIONDBDATE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMES';
wwv_flow_imp.g_varchar2_table(44) := 'TAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date on which the message was created.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(45) := '"has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" ';
wwv_flow_imp.g_varchar2_table(46) := ': "MsgCreationDbDate",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd';
wwv_flow_imp.g_varchar2_table(47) := '\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "msgcreationdbdate"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(48) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NAVIGATIONURLKEY",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(49) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The URL used for navigation.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(50) := '      "max_length" : 80,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(51) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "NavigationURLKey",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_i';
wwv_flow_imp.g_varchar2_table(52) := 'd" : "navigationurlkey"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NOTIFICATIONTYPE",'||wwv_flow.LF||
'        "sequence" : 1';
wwv_flow_imp.g_varchar2_table(53) := '1,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ty';
wwv_flow_imp.g_varchar2_table(54) := 'pe of notification.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(55) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "NotificationType",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(56) := ': "Y",'||wwv_flow.LF||
'        "static_id" : "notificationtype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OBJECTVERSIONNUMB';
wwv_flow_imp.g_varchar2_table(57) := 'ER",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(58) := '  "description" : "The version of the message.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(59) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ObjectVersionNumber",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(60) := 'n" : "Y",'||wwv_flow.LF||
'        "static_id" : "objectversionnumber"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PAGEPARAMLI';
wwv_flow_imp.g_varchar2_table(61) := 'STSTRING",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2"';
wwv_flow_imp.g_varchar2_table(62) := ','||wwv_flow.LF||
'        "description" : "The parameters associated with the page.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(63) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(64) := 'ector" : "PageParamListString",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "pageparamliststrin';
wwv_flow_imp.g_varchar2_table(65) := 'g"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOAOUTCOMES",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key';
wwv_flow_imp.g_varchar2_table(66) := '" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The SOA outcome.",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(67) := 'length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(68) := '"Y",'||wwv_flow.LF||
'        "selector" : "SOAOutcomes",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "soaoutcom';
wwv_flow_imp.g_varchar2_table(69) := 'es"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOAOUTCOMESDISPLAY",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(70) := 'mary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The displayed array of S';
wwv_flow_imp.g_varchar2_table(71) := 'OA outcome.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",';
wwv_flow_imp.g_varchar2_table(72) := ''||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SOAOutcomesDisplay",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(73) := ','||wwv_flow.LF||
'        "static_id" : "soaoutcomesdisplay"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOASERVER",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(74) := '"sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descript';
wwv_flow_imp.g_varchar2_table(75) := 'ion" : "The name of the SOA server.",'||wwv_flow.LF||
'        "max_length" : 128,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(76) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SOAServer",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(77) := 's_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "soaserver"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOURCE",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(78) := '   "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descr';
wwv_flow_imp.g_varchar2_table(79) := 'iption" : "The source of the message.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(80) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Source",'||wwv_flow.LF||
'        "add';
wwv_flow_imp.g_varchar2_table(81) := 'itional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "source"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(82) := '   {'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(83) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Status",'||wwv_flow.LF||
'        "description" : "The status of the notifi';
wwv_flow_imp.g_varchar2_table(84) := 'cation.",'||wwv_flow.LF||
'        "max_length" : 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(85) := '    "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static';
wwv_flow_imp.g_varchar2_table(86) := '_id" : "status"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKCREATOR",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(87) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Identifies who crea';
wwv_flow_imp.g_varchar2_table(88) := 'ted the task.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(89) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskCreator",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(90) := '    "static_id" : "taskcreator"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKDETAILSAVAILABLEFLAG",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(91) := '  "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descri';
wwv_flow_imp.g_varchar2_table(92) := 'ption" : "Identifies if the task details are available.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(93) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Task';
wwv_flow_imp.g_varchar2_table(94) := 'DetailsAvailableFlag",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "taskdetailsavailableflag"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(95) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKDISPLAYURL",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(96) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The URL used for displaying the t';
wwv_flow_imp.g_varchar2_table(97) := 'ask details dialog box.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(98) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskDisplayURL",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(99) := 'on" : "Y",'||wwv_flow.LF||
'        "static_id" : "taskdisplayurl"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKID",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(100) := '  "sequence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descri';
wwv_flow_imp.g_varchar2_table(101) := 'ption" : "The unique identifier of the task.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(102) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskId",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(103) := '   "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "taskid"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKSTATE",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(104) := '        "sequence" : 23,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(105) := 'description" : "The current state of the task in the workflow.",'||wwv_flow.LF||
'        "max_length" : 20,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(106) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(107) := ' : "TaskState",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "taskstate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(108) := '  "name" : "TASKTABLABEL",'||wwv_flow.LF||
'        "sequence" : 24,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(109) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The label of the task.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(110) := '    "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selec';
wwv_flow_imp.g_varchar2_table(111) := 'tor" : "TaskTabLabel",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "tasktablabel"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(112) := '  {'||wwv_flow.LF||
'        "name" : "TASKFLOWID",'||wwv_flow.LF||
'        "sequence" : 25,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(113) := '"data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the task flow.",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(114) := ' "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(115) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskflowId",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "task';
wwv_flow_imp.g_varchar2_table(116) := 'flowid"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TFKEYLISTSTRING",'||wwv_flow.LF||
'        "sequence" : 26,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(117) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The task flow parameter';
wwv_flow_imp.g_varchar2_table(118) := 's.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(119) := '"is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TfKeyListString",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(120) := 'tatic_id" : "tfkeyliststring"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TFPARAMETERSTRING",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(121) := 'ce" : 27,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(122) := '"The task flow parameter strings.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(123) := '    "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TfParameterString",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(124) := '    "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "tfparameterstring"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(125) := 'THINGSTOFINISHSTATE",'||wwv_flow.LF||
'        "sequence" : 28,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(126) := ' "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates the state of things to complete.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(127) := 'th" : 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(128) := '        "selector" : "ThingsToFinishState",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "things';
wwv_flow_imp.g_varchar2_table(129) := 'tofinishstate"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "UMSMESSAGEID",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(130) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifi';
wwv_flow_imp.g_varchar2_table(131) := 'er for the message.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(132) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UmsMessageId",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(133) := '",'||wwv_flow.LF||
'        "static_id" : "umsmessageid"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERGUID",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(134) := 'nce" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(135) := ' "The unique identifier of the assigned user.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(136) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "UserGUID",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(137) := '      "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "userguid"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(138) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "VIEWID",'||wwv_flow.LF||
'        "sequence" : 31,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(139) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The view identifier for the message.",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(140) := '       "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(141) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ViewId",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "vi';
wwv_flow_imp.g_varchar2_table(142) := 'ewid"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "atkPopupItems",'||wwv_flow.LF||
'    "';
wwv_flow_imp.g_varchar2_table(143) := '3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(144) := 'peration" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(145) := ' "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "fetch_collection"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operatio';
wwv_flow_imp.g_varchar2_table(146) := 'n" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceK';
wwv_flow_imp.g_varchar2_table(147) := 'ey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "';
wwv_flow_imp.g_varchar2_table(148) := 'fetch_single_row"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(149) := '    "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(150) := '     "static_id" : "insert"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "';
wwv_flow_imp.g_varchar2_table(151) := 'UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "para';
wwv_flow_imp.g_varchar2_table(152) := 'meters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "update"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(153) := '     "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch';
wwv_flow_imp.g_varchar2_table(154) := '_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "delete"'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "p';
wwv_flow_imp.g_varchar2_table(155) := 'arameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(21754362543273325)
,p_catalog_id=>wwv_flow_imp.id(21754115426273324)
,p_name=>q'{ATK Popup Items}'
,p_description=>'The ATK Popup Items resource is used to create, view, update, and delete popup items. Using this resource, you can also use  popup items from other applications in Oracle Applications Cloud.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/atkPopupItems'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/atk-themes
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "ATK Themes",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11';
wwv_flow_imp.g_varchar2_table(2) := '.13.18.05",'||wwv_flow.LF||
'    "path" : "/atkThemes",'||wwv_flow.LF||
'    "description" : "The ATK Themes resource is used to  view';
wwv_flow_imp.g_varchar2_table(3) := ' themes.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_selector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "colu';
wwv_flow_imp.g_varchar2_table(4) := 'mns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(5) := 'y_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone"';
wwv_flow_imp.g_varchar2_table(6) := ' : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key';
wwv_flow_imp.g_varchar2_table(7) := '",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$ResourceKey",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_';
wwv_flow_imp.g_varchar2_table(8) := 'id" : "apex_resourcekey"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BANNERIMAGE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(9) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The cover i';
wwv_flow_imp.g_varchar2_table(10) := 'mage of the home page banner as well as the background image of OSN.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(11) := '        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(12) := 'elector" : "BannerImage",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "bannerimage"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(13) := '    {'||wwv_flow.LF||
'        "name" : "BANNERIMAGETYPE",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(14) := unistr('      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Type of the banner image whether it\2019s a lin');
wwv_flow_imp.g_varchar2_table(15) := 'k, or an uploaded image, or an image that Oracle predefined.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(16) := '"has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector"';
wwv_flow_imp.g_varchar2_table(17) := ' : "BannerImageType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "bannerimagetype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(18) := '    {'||wwv_flow.LF||
'        "name" : "BASESEEDEDTHEME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(19) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The basic theme from Oracle. The user-defin';
wwv_flow_imp.g_varchar2_table(20) := 'ed theme is created on top of it.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(21) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "BaseSeededTheme",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(22) := '   "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "baseseededtheme"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUT';
wwv_flow_imp.g_varchar2_table(23) := 'TONBGCOLOR",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(24) := '",'||wwv_flow.LF||
'        "description" : "The button background color if gradient isn''t supported.",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(25) := 'length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(26) := ' "Y",'||wwv_flow.LF||
'        "selector" : "ButtonBGColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "button';
wwv_flow_imp.g_varchar2_table(27) := 'bgcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUTTONBGENDCOLOR",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(28) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The end color of the g';
wwv_flow_imp.g_varchar2_table(29) := 'radient for the background of the button.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(30) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonBGEndColo';
wwv_flow_imp.g_varchar2_table(31) := 'r",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "buttonbgendcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(32) := 'me" : "BUTTONBGSTARTCOLOR",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(33) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The start color of the gradient for the background of the';
wwv_flow_imp.g_varchar2_table(34) := ' button.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(35) := '       "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonBGStartColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(36) := '        "static_id" : "buttonbgstartcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUTTONBORDERCOLOR",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(37) := '      "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(38) := 'cription" : "The color of the border around the button.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_';
wwv_flow_imp.g_varchar2_table(39) := 'time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "B';
wwv_flow_imp.g_varchar2_table(40) := 'uttonBorderColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "buttonbordercolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(41) := '   {'||wwv_flow.LF||
'        "name" : "BUTTONLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(42) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The hex color code for the text on the butt';
wwv_flow_imp.g_varchar2_table(43) := 'ons.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(44) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonLabelColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(45) := '  "static_id" : "buttonlabelcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CARDTHEME",'||wwv_flow.LF||
'        "sequence"';
wwv_flow_imp.g_varchar2_table(46) := ' : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "A ';
wwv_flow_imp.g_varchar2_table(47) := 'style of the HCM card. The value can be dark or light.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(48) := 'ime_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Ca';
wwv_flow_imp.g_varchar2_table(49) := 'rdTheme",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "cardtheme"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(50) := 'e" : "CORNERRADIUS",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(51) := '"VARCHAR2",'||wwv_flow.LF||
'        "description" : "The value of the radius that defines the round corners of the b';
wwv_flow_imp.g_varchar2_table(52) := 'uttons.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(53) := '      "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CornerRadius",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(54) := ' "static_id" : "cornerradius"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALBGCOLOR",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(55) := ': 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The';
wwv_flow_imp.g_varchar2_table(56) := ' hex color code for the background color of the page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(57) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Glo';
wwv_flow_imp.g_varchar2_table(58) := 'balBGColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "globalbgcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(59) := '   "name" : "GLOBALBGCOLORGRADIENT",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(60) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the background color of the page s';
wwv_flow_imp.g_varchar2_table(61) := 'upports gradient or not.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(62) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBgColorGradient",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(63) := '"is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "globalbgcolorgradient"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(64) := 'GLOBALBGCOLORGRADIENTTYPE",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(65) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Determines the type of the gradient support that the use';
wwv_flow_imp.g_varchar2_table(66) := 'r wants to choose for the global background color.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(67) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Global';
wwv_flow_imp.g_varchar2_table(68) := 'BgColorGradientType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "globalbgcolorgradienttype"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(69) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALBGENDCOLOR",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(70) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The end color of the gradient f';
wwv_flow_imp.g_varchar2_table(71) := 'or the global background color.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(72) := '   "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBgEndColor",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(73) := '  "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "globalbgendcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLO';
wwv_flow_imp.g_varchar2_table(74) := 'BALBGSTARTCOLOR",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(75) := 'RCHAR2",'||wwv_flow.LF||
'        "description" : "The start color of the gradient for the global background color.",';
wwv_flow_imp.g_varchar2_table(76) := ''||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(77) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBgStartColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(78) := 'tatic_id" : "globalbgstartcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALREGIONBGCOLOR",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(79) := 'equence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(80) := 'n" : "The hex color code for the background of global region on the pages.",'||wwv_flow.LF||
'        "max_length" : ';
wwv_flow_imp.g_varchar2_table(81) := '4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(82) := '    "selector" : "GlobalRegionBGColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "globalregi';
wwv_flow_imp.g_varchar2_table(83) := 'onbgcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALREGIONLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(84) := '    "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The hex color';
wwv_flow_imp.g_varchar2_table(85) := ' code for the global region labels on the pages.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zo';
wwv_flow_imp.g_varchar2_table(86) := 'ne" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalRe';
wwv_flow_imp.g_varchar2_table(87) := 'gionLabelColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "globalregionlabelcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(88) := '      {'||wwv_flow.LF||
'        "name" : "GRIDCARDSIZE",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(89) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The size of the cards displayed on the grid';
wwv_flow_imp.g_varchar2_table(90) := ' or banner.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(91) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridCardSize",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(92) := '     "static_id" : "gridcardsize"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONBACKGROUNDCOLOR",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(93) := '   "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descr';
wwv_flow_imp.g_varchar2_table(94) := 'iption" : "The color of the grid icon background.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(95) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIco';
wwv_flow_imp.g_varchar2_table(96) := 'nBackgroundColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "gridiconbackgroundcolor"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(97) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONBACKGROUNDCOLORTYPE",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(98) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Determines if the icon ba';
wwv_flow_imp.g_varchar2_table(99) := 'ckground color is monochrome or multicolor.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(100) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconBackg';
wwv_flow_imp.g_varchar2_table(101) := 'roundColorType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "gridiconbackgroundcolortype"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(102) := '  },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONCOLOR",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(103) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the icons displayed in t';
wwv_flow_imp.g_varchar2_table(104) := 'he grid, or on filmstrip, or the newsfeed page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zon';
wwv_flow_imp.g_varchar2_table(105) := 'e" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconC';
wwv_flow_imp.g_varchar2_table(106) := 'olor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "gridiconcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(107) := 'me" : "GRIDICONCOLORTYPE",'||wwv_flow.LF||
'        "sequence" : 23,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(108) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the grid icon color is monochrome or multico';
wwv_flow_imp.g_varchar2_table(109) := 'lor.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(110) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconColorType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(111) := '   "static_id" : "gridiconcolortype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONINDICATORCOLOR",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(112) := '     "sequence" : 24,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(113) := 'cription" : "This is the color of the dot in cluster icons that are usually displayed in the grid or';
wwv_flow_imp.g_varchar2_table(114) := ' banner of homepage.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(115) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconIndicatorColor",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(116) := '_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "gridiconindicatorcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GR';
wwv_flow_imp.g_varchar2_table(117) := 'IDICONSHAPE",'||wwv_flow.LF||
'        "sequence" : 25,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(118) := 'R2",'||wwv_flow.LF||
'        "description" : "Determines the shape of the filmstrip or the grid icons.",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(119) := 'x_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(120) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconShape",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "grid';
wwv_flow_imp.g_varchar2_table(121) := 'iconshape"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HEADERLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 26,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(122) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the pa';
wwv_flow_imp.g_varchar2_table(123) := 'ge header label.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(124) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "HeaderLabelColor",'||wwv_flow.LF||
'        "is_common" :';
wwv_flow_imp.g_varchar2_table(125) := ' "Y",'||wwv_flow.LF||
'        "static_id" : "headerlabelcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HIGHLIGHTCOLOR",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(126) := '       "sequence" : 27,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(127) := 'escription" : "The color used to highlight any important text or image, such as the notification cou';
wwv_flow_imp.g_varchar2_table(128) := 'nt and help icon.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden"';
wwv_flow_imp.g_varchar2_table(129) := ' : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "HighLightColor",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(130) := '"Y",'||wwv_flow.LF||
'        "static_id" : "highlightcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HOMELAYOUTTYPE",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(131) := '    "sequence" : 28,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(132) := 'ription" : "The type of the home layout, such as grid, banner, or newsfeed.",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(133) := ' 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(134) := '     "selector" : "HomeLayoutType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "homelayouttype';
wwv_flow_imp.g_varchar2_table(135) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HOMEPANELSTYLE",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "is_primary_k';
wwv_flow_imp.g_varchar2_table(136) := 'ey" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the backgrou';
wwv_flow_imp.g_varchar2_table(137) := 'nd of the OSN panel is dark or light.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(138) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "HomePanelStyle",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(139) := '      "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "homepanelstyle"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "I';
wwv_flow_imp.g_varchar2_table(140) := 'CONLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARC';
wwv_flow_imp.g_varchar2_table(141) := 'HAR2",'||wwv_flow.LF||
'        "description" : "The label color of the navigation icons shown on the homepage or on ';
wwv_flow_imp.g_varchar2_table(142) := 'the film strip.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" :';
wwv_flow_imp.g_varchar2_table(143) := ' "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IconLabelColor",'||wwv_flow.LF||
'        "is_common" : "Y';
wwv_flow_imp.g_varchar2_table(144) := '",'||wwv_flow.LF||
'        "static_id" : "iconlabelcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ICONSTYLE",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(145) := 'quence" : 31,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(146) := '" : "The style of the icon that existed before Rel13. It''s no longer used in Rel13.",'||wwv_flow.LF||
'        "max_l';
wwv_flow_imp.g_varchar2_table(147) := 'ength" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : ';
wwv_flow_imp.g_varchar2_table(148) := '"Y",'||wwv_flow.LF||
'        "selector" : "IconStyle",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "iconstyle"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(149) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISBUTTONGRADIENTSUPPORTED",'||wwv_flow.LF||
'        "sequence" : 32,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(150) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if gradient';
wwv_flow_imp.g_varchar2_table(151) := ' is supported for the background color of the button.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(152) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsB';
wwv_flow_imp.g_varchar2_table(153) := 'uttonGradientSupported",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "isbuttongradientsupported';
wwv_flow_imp.g_varchar2_table(154) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISEDITEDBYADVEDITOR",'||wwv_flow.LF||
'        "sequence" : 33,'||wwv_flow.LF||
'        "is_prim';
wwv_flow_imp.g_varchar2_table(155) := 'ary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the the';
wwv_flow_imp.g_varchar2_table(156) := 'me was edited by the Advanced Theme Editor.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" :';
wwv_flow_imp.g_varchar2_table(157) := ' null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsEditedByAdv';
wwv_flow_imp.g_varchar2_table(158) := 'Editor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "iseditedbyadveditor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(159) := '     "name" : "ISSEEDEDTHEME",'||wwv_flow.LF||
'        "sequence" : 34,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(160) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the theme was predefined by Oracle or if';
wwv_flow_imp.g_varchar2_table(161) := ' the user created it.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hid';
wwv_flow_imp.g_varchar2_table(162) := 'den" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsSeededTheme",'||wwv_flow.LF||
'        "is_common"';
wwv_flow_imp.g_varchar2_table(163) := ' : "Y",'||wwv_flow.LF||
'        "static_id" : "isseededtheme"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTMODIFIED",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(164) := '    "sequence" : 35,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(165) := 'ription" : "The date and time when the them was last modified.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(166) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(167) := 'r" : "LastModified",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "lastmodified"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(168) := '{'||wwv_flow.LF||
'        "name" : "LOGINACCENTCOLOR",'||wwv_flow.LF||
'        "sequence" : 36,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(169) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The Accent color.",'||wwv_flow.LF||
'        "max_length" : 40';
wwv_flow_imp.g_varchar2_table(170) := '00,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(171) := '  "selector" : "LoginAccentColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginaccentcolo';
wwv_flow_imp.g_varchar2_table(172) := 'r"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINBACKGROUNDCOLOR",'||wwv_flow.LF||
'        "sequence" : 37,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(173) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The background color of';
wwv_flow_imp.g_varchar2_table(174) := ' the login page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(175) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginBackgroundColor",'||wwv_flow.LF||
'        "is_commo';
wwv_flow_imp.g_varchar2_table(176) := 'n" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginbackgroundcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINBANNE';
wwv_flow_imp.g_varchar2_table(177) := 'RIMAGE",'||wwv_flow.LF||
'        "sequence" : 38,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(178) := '        "description" : "The banner image of the proposed login page.",'||wwv_flow.LF||
'        "max_length" : 4000,';
wwv_flow_imp.g_varchar2_table(179) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(180) := 'selector" : "LoginBannerImage",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginbannerimage"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(181) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINBANNERIMAGETYPE",'||wwv_flow.LF||
'        "sequence" : 39,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(182) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The banner image type of t';
wwv_flow_imp.g_varchar2_table(183) := 'he proposed login page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(184) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginBannerImageType",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(185) := 's_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginbannerimagetype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOG';
wwv_flow_imp.g_varchar2_table(186) := 'INHEADINGCOLOR",'||wwv_flow.LF||
'        "sequence" : 40,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(187) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The color of the login page header.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(188) := '        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(189) := 'elector" : "LoginHeadingColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginheadingcolor"';
wwv_flow_imp.g_varchar2_table(190) := ''||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINLINKCOLOR",'||wwv_flow.LF||
'        "sequence" : 41,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(191) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the URL that opens';
wwv_flow_imp.g_varchar2_table(192) := ' the login page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" ';
wwv_flow_imp.g_varchar2_table(193) := ': "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginLinkColor",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(194) := 'Y",'||wwv_flow.LF||
'        "static_id" : "loginlinkcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINLOGO",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(195) := 'equence" : 42,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descriptio';
wwv_flow_imp.g_varchar2_table(196) := 'n" : "The logo of the proposed login page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(197) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginLogo",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(198) := '      "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginlogo"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINL';
wwv_flow_imp.g_varchar2_table(199) := 'OGOTYPE",'||wwv_flow.LF||
'        "sequence" : 43,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(200) := ''||wwv_flow.LF||
'        "description" : "The type of the proposed login logo.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(201) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(202) := 'r" : "LoginLogoType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginlogotype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(203) := '  {'||wwv_flow.LF||
'        "name" : "LOGINREPEATBANNERIMAGE",'||wwv_flow.LF||
'        "sequence" : 44,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(204) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the banner image is reap';
wwv_flow_imp.g_varchar2_table(205) := 'eated on login page or not.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(206) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginRepeatBannerImage",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(207) := '    "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginrepeatbannerimage"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(208) := '" : "LOGINREUSEGENERAL",'||wwv_flow.LF||
'        "sequence" : 45,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(209) := '" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the login page CSS parameters are the sam';
wwv_flow_imp.g_varchar2_table(210) := 'e as that of the Fusion theme.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(211) := '  "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginReuseGeneral",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(212) := '  "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "loginreusegeneral"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LO';
wwv_flow_imp.g_varchar2_table(213) := 'GOHEIGHT",'||wwv_flow.LF||
'        "sequence" : 46,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2"';
wwv_flow_imp.g_varchar2_table(214) := ','||wwv_flow.LF||
'        "description" : "Height of the logo.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone';
wwv_flow_imp.g_varchar2_table(215) := '" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LogoHeight';
wwv_flow_imp.g_varchar2_table(216) := '",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "logoheight"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "';
wwv_flow_imp.g_varchar2_table(217) := 'LOGONAME",'||wwv_flow.LF||
'        "sequence" : 47,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2"';
wwv_flow_imp.g_varchar2_table(218) := ','||wwv_flow.LF||
'        "description" : "Name of the logo used for the theme.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(219) := '   "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(220) := 'or" : "LogoName",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "logoname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(221) := '   "name" : "LOGOTYPE",'||wwv_flow.LF||
'        "sequence" : 48,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type"';
wwv_flow_imp.g_varchar2_table(222) := unistr(' : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The type of the image whether it\2019s a link, or an uploaded fi');
wwv_flow_imp.g_varchar2_table(223) := 'le, or an image that Oracle predefined.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(224) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LogoType",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(225) := '  "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "logotype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGOWIDTH",';
wwv_flow_imp.g_varchar2_table(226) := ''||wwv_flow.LF||
'        "sequence" : 49,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(227) := '"description" : "Width of the logo.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(228) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LogoWidth",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(229) := 'is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "logowidth"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ORAHEROANIMAT';
wwv_flow_imp.g_varchar2_table(230) := 'IONENABLED",'||wwv_flow.LF||
'        "sequence" : 50,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(231) := '2",'||wwv_flow.LF||
'        "description" : "The option to enable or disable the welcome animation on the Ask Oracle';
wwv_flow_imp.g_varchar2_table(232) := ' UI.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(233) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "OraHeroAnimationEnabled",'||wwv_flow.LF||
'        "is_common" : "Y",';
wwv_flow_imp.g_varchar2_table(234) := ''||wwv_flow.LF||
'        "static_id" : "oraheroanimationenabled"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PAGELINKCOLOR",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(235) := '        "sequence" : 51,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(236) := 'description" : "The color of the page links.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(237) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PageLinkColo';
wwv_flow_imp.g_varchar2_table(238) := 'r",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "pagelinkcolor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(239) := ' : "REPEATWATERMARK",'||wwv_flow.LF||
'        "sequence" : 52,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(240) := ' "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the image is repeated throughout the background o';
wwv_flow_imp.g_varchar2_table(241) := 'r not.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(242) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RepeatWatermark",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(243) := '   "static_id" : "repeatwatermark"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SELECTIONCOLOR",'||wwv_flow.LF||
'        "sequ';
wwv_flow_imp.g_varchar2_table(244) := 'ence" : 53,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(245) := ': "The color to indicate selection of the vertical tab associated with a page.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(246) := '" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(247) := '        "selector" : "SelectionColor",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "selectionco';
wwv_flow_imp.g_varchar2_table(248) := 'lor"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SKINID",'||wwv_flow.LF||
'        "sequence" : 54,'||wwv_flow.LF||
'        "is_primary_key" :';
wwv_flow_imp.g_varchar2_table(249) := ' "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The Unique id of the theme.",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(250) := '   "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filte';
wwv_flow_imp.g_varchar2_table(251) := 'rable" : "Y",'||wwv_flow.LF||
'        "selector" : "SkinId",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "skini';
wwv_flow_imp.g_varchar2_table(252) := 'd"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 55,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(253) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates the status of a theme. The ';
wwv_flow_imp.g_varchar2_table(254) := 'value can be either Inactive or Active.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(255) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(256) := '"is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "status"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SVGICONTYPE",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(257) := '       "sequence" : 56,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "d';
wwv_flow_imp.g_varchar2_table(258) := 'escription" : "Indicates if the icon type is solid or outlined.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(259) := '   "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(260) := 'or" : "SvgIconType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "svgicontype"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(261) := ''||wwv_flow.LF||
'        "name" : "THEMENAME",'||wwv_flow.LF||
'        "sequence" : 57,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(262) := 'a_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The display name of the theme.",'||wwv_flow.LF||
'        "max_length"';
wwv_flow_imp.g_varchar2_table(263) := ' : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(264) := '      "selector" : "ThemeName",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "themename"'||wwv_flow.LF||
'      }';
wwv_flow_imp.g_varchar2_table(265) := ','||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "WATERMARKNAME",'||wwv_flow.LF||
'        "sequence" : 58,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(266) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Name of the background image.",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(267) := '"max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(268) := 'le" : "Y",'||wwv_flow.LF||
'        "selector" : "WaterMarkName",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "w';
wwv_flow_imp.g_varchar2_table(269) := 'atermarkname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "WATERMARKTYPE",'||wwv_flow.LF||
'        "sequence" : 59,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(270) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Type of the backgro';
wwv_flow_imp.g_varchar2_table(271) := unistr('und image  whether it\2019s a link, or an uploaded file, or an image that Oracle predefined.",'||wwv_flow.LF||
'        "');
wwv_flow_imp.g_varchar2_table(272) := 'max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(273) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "WaterMarkType",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "wa';
wwv_flow_imp.g_varchar2_table(274) := 'termarktype"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "atkThemes",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(275) := '  "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "databas';
wwv_flow_imp.g_varchar2_table(276) := 'e_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(277) := '    "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "fetch_collection"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "opera';
wwv_flow_imp.g_varchar2_table(278) := 'tion" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$Resour';
wwv_flow_imp.g_varchar2_table(279) := 'ceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" ';
wwv_flow_imp.g_varchar2_table(280) := ': "fetch_single_row"'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(21754420903273326)
,p_catalog_id=>wwv_flow_imp.id(21754115426273324)
,p_name=>q'{ATK Themes}'
,p_description=>'The ATK Themes resource is used to  view themes.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/atkThemes'
,p_plugin_internal_name=>'NATIVE_ADFBC'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_details_json=>wwv_flow_imp.g_varchar2_table
,p_version=>'20250228'
);
end;
/
prompt --workspace/rest-source-catalogs/persons
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '{'||wwv_flow.LF||
'  "data_profile" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "name" : "Persons",'||wwv_flow.LF||
'    "server_prefix" : "/fscmRestApi/resources/11.13';
wwv_flow_imp.g_varchar2_table(2) := '.18.05",'||wwv_flow.LF||
'    "path" : "/persons",'||wwv_flow.LF||
'    "description" : "The Persons resource is used for viewing publ';
wwv_flow_imp.g_varchar2_table(3) := 'icly available information about all the active workers, as on the current date. A worker can be an ';
wwv_flow_imp.g_varchar2_table(4) := 'employee, a contingent worker, a pending worker, or a nonworker.",'||wwv_flow.LF||
'    "format" : "JSON",'||wwv_flow.LF||
'    "row_s';
wwv_flow_imp.g_varchar2_table(5) := 'elector" : "items",'||wwv_flow.LF||
'    "is_single_row" : "N",'||wwv_flow.LF||
'    "columns" :'||wwv_flow.LF||
'    ['||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "APEX$';
wwv_flow_imp.g_varchar2_table(6) := 'RESOURCEKEY",'||wwv_flow.LF||
'        "sequence" : 1,'||wwv_flow.LF||
'        "is_primary_key" : "Y",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(7) := '2",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : "N",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(8) := 'is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "@context.key",'||wwv_flow.LF||
'        "remote_attribute_name" : "APEX$R';
wwv_flow_imp.g_varchar2_table(9) := 'esourceKey",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "apex_resourcekey"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(10) := '      "name" : "DISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(11) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the person displayed on the UI.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(12) := 'max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable';
wwv_flow_imp.g_varchar2_table(13) := '" : "Y",'||wwv_flow.LF||
'        "selector" : "Displayname",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(14) := 'mon" : "Y",'||wwv_flow.LF||
'        "static_id" : "displayname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EMAILADDRESS",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(15) := '      "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "des';
wwv_flow_imp.g_varchar2_table(16) := 'cription" : "The primary work email of the person.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_z';
wwv_flow_imp.g_varchar2_table(17) := 'one" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Emailad';
wwv_flow_imp.g_varchar2_table(18) := 'dress",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "em';
wwv_flow_imp.g_varchar2_table(19) := 'ailaddress"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FIRSTNAME",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(20) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The first name of the pers';
wwv_flow_imp.g_varchar2_table(21) := 'on.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(22) := ' "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Firstname",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(23) := '      "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "firstname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JOBTIT';
wwv_flow_imp.g_varchar2_table(24) := 'LE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(25) := '   "description" : "The job title of the person.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zon';
wwv_flow_imp.g_varchar2_table(26) := 'e" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Jobtitle"';
wwv_flow_imp.g_varchar2_table(27) := ','||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "jobtitle';
wwv_flow_imp.g_varchar2_table(28) := '"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTNAME",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(29) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The last name of the person.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(30) := '  "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(31) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "Lastname",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_com';
wwv_flow_imp.g_varchar2_table(32) := 'mon" : "Y",'||wwv_flow.LF||
'        "static_id" : "lastname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ORGUNITNAME",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(33) := '  "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(34) := 'tion" : "The organization unit name where the person works.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "h';
wwv_flow_imp.g_varchar2_table(35) := 'as_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" :';
wwv_flow_imp.g_varchar2_table(36) := ' "Orgunitname",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_i';
wwv_flow_imp.g_varchar2_table(37) := 'd" : "orgunitname"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSONID",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(38) := '_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier ';
wwv_flow_imp.g_varchar2_table(39) := 'of the person.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" ';
wwv_flow_imp.g_varchar2_table(40) := ': "Y",'||wwv_flow.LF||
'        "selector" : "Personid",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" ';
wwv_flow_imp.g_varchar2_table(41) := ': "Y",'||wwv_flow.LF||
'        "static_id" : "personid"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERNAME",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(42) := 'nce" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(43) := '"The user name of the person.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(44) := '"is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Username",'||wwv_flow.LF||
'        "addition';
wwv_flow_imp.g_varchar2_table(45) := 'al_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y",'||wwv_flow.LF||
'        "static_id" : "username"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  }';
wwv_flow_imp.g_varchar2_table(46) := ','||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "persons",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(47) := '  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION';
wwv_flow_imp.g_varchar2_table(48) := '",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(49) := ' ],'||wwv_flow.LF||
'      "static_id" : "fetch_collection"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_o';
wwv_flow_imp.g_varchar2_table(50) := 'peration" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_r';
wwv_flow_imp.g_varchar2_table(51) := 'ows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "fetch_single_row"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(52) := '{'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(53) := '  "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "insert"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(54) := '   },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" ';
wwv_flow_imp.g_varchar2_table(55) := ': "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(56) := '    "static_id" : "update"'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "';
wwv_flow_imp.g_varchar2_table(57) := 'DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "para';
wwv_flow_imp.g_varchar2_table(58) := 'meters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ],'||wwv_flow.LF||
'      "static_id" : "delete"'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(21754531551273326)
,p_catalog_id=>wwv_flow_imp.id(21754115426273324)
,p_name=>q'{Persons}'
,p_description=>'The Persons resource is used for viewing publicly available information about all the active workers, as on the current date. A worker can be an employee, a contingent worker, a pending worker, or a nonworker.'
,p_base_url=>'https://facatalog_restapi_baseurl.example.com'
,p_auth_server_base_url=>'https://facatalog_authentication_baseurl.example.com'
,p_service_path=>'/fscmRestApi/resources/11.13.18.05/persons'
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
