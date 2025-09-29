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
prompt --workspace/rest-source-catalogs/25B_common
begin
wwv_web_src_catalog_api.create_catalog(
 p_id=>wwv_flow_imp.id(23506675139288456)
,p_name=>'common (Release 25B)'
,p_internal_name=>'25B_COMMON'
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
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDBY",'||wwv_flow.LF||
'        "sequence" : 2';
wwv_flow_imp.g_varchar2_table(10) := ','||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The use';
wwv_flow_imp.g_varchar2_table(11) := 'r who last updated the announcement.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(12) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdatedBy",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(13) := '  "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SHOWA';
wwv_flow_imp.g_varchar2_table(14) := 'NNOUNCEMENT",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(15) := '2",'||wwv_flow.LF||
'        "description" : "Determines whether the announcement is visible or not. The visibility d';
wwv_flow_imp.g_varchar2_table(16) := 'epends on the EL Expression specified on the IsVisible attribute.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(17) := '     "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sele';
wwv_flow_imp.g_varchar2_table(18) := 'ctor" : "ShowAnnouncement",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(19) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CATEGORYCODE",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(20) := '        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The category code of the announcement. Va';
wwv_flow_imp.g_varchar2_table(21) := 'lid values are OC and OF.",'||wwv_flow.LF||
'        "max_length" : 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(22) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CategoryCode",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(23) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(24) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date wh';
wwv_flow_imp.g_varchar2_table(25) := 'en the announcement was created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(26) := ' "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreationDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",';
wwv_flow_imp.g_varchar2_table(27) := ''||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(28) := '     {'||wwv_flow.LF||
'        "name" : "ANNOUNCEMENTID",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(29) := '      "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the announcement."';
wwv_flow_imp.g_varchar2_table(30) := ','||wwv_flow.LF||
'        "max_length" : 18,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(31) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "AnnouncementId",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(32) := '        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CREATEDBY",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(33) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The user who';
wwv_flow_imp.g_varchar2_table(34) := ' created the announcement.",'||wwv_flow.LF||
'        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(35) := 'hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "CreatedBy",'||wwv_flow.LF||
'        "additional_';
wwv_flow_imp.g_varchar2_table(36) := 'info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DESCRIPTION",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(37) := '   "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label"';
wwv_flow_imp.g_varchar2_table(38) := ' : "Content",'||wwv_flow.LF||
'        "description" : "A short description of the announcement.",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(39) := 'h" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",';
wwv_flow_imp.g_varchar2_table(40) := ''||wwv_flow.LF||
'        "selector" : "Description",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "IM';
wwv_flow_imp.g_varchar2_table(41) := 'AGEFILE",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(42) := '    "description" : "The image for an announcement can be specified as a File, URL, or Predefined. T';
wwv_flow_imp.g_varchar2_table(43) := 'he Predefined option allows selection from a list of predefined images.",'||wwv_flow.LF||
'        "has_time_zone" : ';
wwv_flow_imp.g_varchar2_table(44) := 'null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "ImageFile",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(45) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EXPIREDATE",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(46) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(47) := ' : "The date when the announcement expires.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(48) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ExpireDate",'||wwv_flow.LF||
'        "format_mask" : "yyyy-';
wwv_flow_imp.g_varchar2_table(49) := 'mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "IMAGEU';
wwv_flow_imp.g_varchar2_table(50) := 'RL",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(51) := '    "description" : "The image URL link, if URL option is selected to add an image for the announcem';
wwv_flow_imp.g_varchar2_table(52) := 'ent.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(53) := '   "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ImageURL",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(54) := '{'||wwv_flow.LF||
'        "name" : "SUBJECT",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(55) := '_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The subject of the announcement.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(56) := '" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(57) := '       "selector" : "Subject",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CROPPEDI';
wwv_flow_imp.g_varchar2_table(58) := 'MAGEFILE",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(59) := '      "description" : "A cropped image as displayed in the announcement newsfeed.",'||wwv_flow.LF||
'        "has_tim';
wwv_flow_imp.g_varchar2_table(60) := 'e_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "N",'||wwv_flow.LF||
'        "selector" : "Crop';
wwv_flow_imp.g_varchar2_table(61) := 'pedImageFile",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STARTDATE",'||wwv_flow.LF||
'        "seq';
wwv_flow_imp.g_varchar2_table(62) := 'uence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(63) := '   "description" : "The date on which the announcement is created.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(64) := '        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "StartDate",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(65) := '"format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(66) := '      "name" : "IMAGENAME",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(67) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The file name of the image to be uploaded, if File optio';
wwv_flow_imp.g_varchar2_table(68) := 'n is selected to add an image for the announcement.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(69) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Image';
wwv_flow_imp.g_varchar2_table(70) := 'Name",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OBJECTVERSIONNUMBER",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(71) := 'equence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(72) := ' : "This attribute is currently not used.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(73) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ObjectVersionNumber",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(74) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DESCRIPTIONCLOB",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(75) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "BLOB",'||wwv_flow.LF||
'        "description" : "The announcement content that t';
wwv_flow_imp.g_varchar2_table(76) := 'he users can view.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterab';
wwv_flow_imp.g_varchar2_table(77) := 'le" : "N",'||wwv_flow.LF||
'        "selector" : "DescriptionClob",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(78) := '  "name" : "EXPIRYDAYSFLAG",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(79) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The number of days after which the announcement expires';
wwv_flow_imp.g_varchar2_table(80) := '.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(81) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ExpiryDaysFlag",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(82) := '{'||wwv_flow.LF||
'        "name" : "CATEGORYNAME",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(83) := '"data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The category name of the announcement. An announc';
wwv_flow_imp.g_varchar2_table(84) := 'ement can be an article, event, insight, or user-defined.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(85) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(86) := '"CategoryName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISVISIBLE",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(87) := 'quence" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(88) := '" : "The visibility of the announcement. The visibility can be determined using values ''Y'', ''N'' or a';
wwv_flow_imp.g_varchar2_table(89) := 'n ''EL Expression''. The default value is set to ''Y''.",'||wwv_flow.LF||
'        "max_length" : 1024,'||wwv_flow.LF||
'        "has_time';
wwv_flow_imp.g_varchar2_table(90) := '_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IsVis';
wwv_flow_imp.g_varchar2_table(91) := 'ible",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATEDATE",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(92) := 'ce" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(93) := '"description" : "The date when the announcement was last updated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(94) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateDate",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(95) := '    "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "format_mask" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(96) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LASTUPDATELOGIN",'||wwv_flow.LF||
'        "sequence" : 2';
wwv_flow_imp.g_varchar2_table(97) := '2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "This a';
wwv_flow_imp.g_varchar2_table(98) := 'ttribute is currently not used.",'||wwv_flow.LF||
'        "max_length" : 32,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(99) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LastUpdateLogin",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(100) := 'additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(101) := '  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "announcements",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  [';
wwv_flow_imp.g_varchar2_table(102) := ''||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_patter';
wwv_flow_imp.g_varchar2_table(103) := 'n" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(104) := '  "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APE';
wwv_flow_imp.g_varchar2_table(105) := 'X$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(106) := '{'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(107) := '  "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" ';
wwv_flow_imp.g_varchar2_table(108) := ': "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(109) := '"allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : ';
wwv_flow_imp.g_varchar2_table(110) := '"DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "';
wwv_flow_imp.g_varchar2_table(111) := 'allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(112) := ']'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23506783000288461)
,p_catalog_id=>wwv_flow_imp.id(23506675139288456)
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
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOASERVER",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(10) := ': 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The ';
wwv_flow_imp.g_varchar2_table(11) := 'name of the SOA server.",'||wwv_flow.LF||
'        "max_length" : 128,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(12) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SOAServer",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(13) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKID",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(14) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the task.",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '        "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(16) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(17) := 'name" : "USERGUID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "V';
wwv_flow_imp.g_varchar2_table(18) := 'ARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the assigned user.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(19) := '" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(20) := '      "selector" : "UserGUID",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(21) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKCREATOR",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "';
wwv_flow_imp.g_varchar2_table(22) := 'N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Identifies who created the task.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(23) := '      "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(24) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskCreator",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(25) := '  "name" : "MSGCREATIONDBDATE",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "dat';
wwv_flow_imp.g_varchar2_table(26) := 'a_type" : "TIMESTAMP WITH TIME ZONE",'||wwv_flow.LF||
'        "description" : "The date on which the message was cre';
wwv_flow_imp.g_varchar2_table(27) := 'ated.",'||wwv_flow.LF||
'        "has_time_zone" : "Y",'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(28) := '     "selector" : "MsgCreationDbDate",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "format_mas';
wwv_flow_imp.g_varchar2_table(29) := 'k" : "yyyy-mm-dd\"T\"hh24:mi:ss.fftzh:tzm",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name';
wwv_flow_imp.g_varchar2_table(30) := '" : "TASKDISPLAYURL",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : ';
wwv_flow_imp.g_varchar2_table(31) := '"VARCHAR2",'||wwv_flow.LF||
'        "description" : "The URL used for displaying the task details dialog box.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(32) := '    "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(33) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskDisplayURL",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(34) := '     "name" : "SOURCE",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" ';
wwv_flow_imp.g_varchar2_table(35) := ': "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The source of the message.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(36) := '   "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "select';
wwv_flow_imp.g_varchar2_table(37) := 'or" : "Source",'||wwv_flow.LF||
'        "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {';
wwv_flow_imp.g_varchar2_table(38) := ''||wwv_flow.LF||
'        "name" : "NAVIGATIONURLKEY",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(39) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The URL used for navigation.",'||wwv_flow.LF||
'        "max_len';
wwv_flow_imp.g_varchar2_table(40) := 'gth" : 80,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",';
wwv_flow_imp.g_varchar2_table(41) := ''||wwv_flow.LF||
'        "selector" : "NavigationURLKey",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" ';
wwv_flow_imp.g_varchar2_table(42) := ': "TASKFLOWID",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARC';
wwv_flow_imp.g_varchar2_table(43) := 'HAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier of the task flow.",'||wwv_flow.LF||
'        "max_length" : 400';
wwv_flow_imp.g_varchar2_table(44) := ','||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(45) := '"selector" : "TaskflowId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "THINGSTOFINI';
wwv_flow_imp.g_varchar2_table(46) := 'SHSTATE",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",';
wwv_flow_imp.g_varchar2_table(47) := ''||wwv_flow.LF||
'        "description" : "Indicates the state of things to complete.",'||wwv_flow.LF||
'        "max_length" : 20,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(48) := '      "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "sel';
wwv_flow_imp.g_varchar2_table(49) := 'ector" : "ThingsToFinishState",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "OBJECTV';
wwv_flow_imp.g_varchar2_table(50) := 'ERSIONNUMBER",'||wwv_flow.LF||
'        "sequence" : 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBE';
wwv_flow_imp.g_varchar2_table(51) := 'R",'||wwv_flow.LF||
'        "description" : "The version of the message.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(52) := 'is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ObjectVersionNumber",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(53) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ADDITIONALATTRIBUTES",'||wwv_flow.LF||
'        "sequence" : 13';
wwv_flow_imp.g_varchar2_table(54) := ','||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Additio';
wwv_flow_imp.g_varchar2_table(55) := 'nal information captured about the popup item.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'        "has_time_zone';
wwv_flow_imp.g_varchar2_table(56) := '" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Additional';
wwv_flow_imp.g_varchar2_table(57) := 'Attributes",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOAOUTCOMES",'||wwv_flow.LF||
'        "seq';
wwv_flow_imp.g_varchar2_table(58) := 'uence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description"';
wwv_flow_imp.g_varchar2_table(59) := ' : "The SOA outcome.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(60) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SOAOutcomes",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(61) := 'Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MESSAGEEXPIRYDATE",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(62) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'        "description" : "The date on which the announ';
wwv_flow_imp.g_varchar2_table(63) := 'cement notification is set to expire.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(64) := '       "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageExpiryDate",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(65) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MESSAGESUMMARY",'||wwv_flow.LF||
'        "sequence" : 16,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(66) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Message Summary",'||wwv_flow.LF||
'        "description" ';
wwv_flow_imp.g_varchar2_table(67) := ': "The title of the notification containing the task details.",'||wwv_flow.LF||
'        "max_length" : 2000,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(68) := ' "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector';
wwv_flow_imp.g_varchar2_table(69) := '" : "MessageSummary",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TFKEYLISTSTRING",';
wwv_flow_imp.g_varchar2_table(70) := ''||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(71) := '"description" : "The task flow parameters.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(72) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TfKeyListString';
wwv_flow_imp.g_varchar2_table(73) := '",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(74) := '      "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "label" : "Status",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(75) := '"description" : "The status of the notification.",'||wwv_flow.LF||
'        "max_length" : 20,'||wwv_flow.LF||
'        "has_time_zone';
wwv_flow_imp.g_varchar2_table(76) := '" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Status",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(77) := '       "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKTABLABEL",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(78) := '        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The label';
wwv_flow_imp.g_varchar2_table(79) := ' of the task.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(80) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskTabLabel",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(81) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SOAOUTCOMESDISPLAY",'||wwv_flow.LF||
'        "sequence" : 20,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(82) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The displayed array of SOA outc';
wwv_flow_imp.g_varchar2_table(83) := 'ome.",'||wwv_flow.LF||
'        "max_length" : 256,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(84) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SOAOutcomesDisplay",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(85) := '},'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "MESSAGECREATIONTRANSLATEDDATE",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(86) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The date on which the t';
wwv_flow_imp.g_varchar2_table(87) := 'ranslated version of the message was created.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" ';
wwv_flow_imp.g_varchar2_table(88) := ': null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageCreat';
wwv_flow_imp.g_varchar2_table(89) := 'ionTranslatedDate",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(90) := ' {'||wwv_flow.LF||
'        "name" : "PAGEPARAMLISTSTRING",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(91) := '        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The parameters associated with the page."';
wwv_flow_imp.g_varchar2_table(92) := ','||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(93) := '_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PageParamListString",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(94) := '     {'||wwv_flow.LF||
'        "name" : "UMSMESSAGEID",'||wwv_flow.LF||
'        "sequence" : 23,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(95) := '     "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The unique identifier for the message.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(96) := '     "max_length" : 64,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filte';
wwv_flow_imp.g_varchar2_table(97) := 'rable" : "Y",'||wwv_flow.LF||
'        "selector" : "UmsMessageId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(98) := '  "name" : "MESSAGECREATIONDATE",'||wwv_flow.LF||
'        "sequence" : 24,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(99) := 'data_type" : "NUMBER",'||wwv_flow.LF||
'        "label" : "Creation Date",'||wwv_flow.LF||
'        "description" : "The date and time';
wwv_flow_imp.g_varchar2_table(100) := ' when the notification was created.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(101) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageCreationDate",'||wwv_flow.LF||
'        "additional_info" : ';
wwv_flow_imp.g_varchar2_table(102) := '"CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "DISPLAYMENU",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(103) := 'quence" : 25,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(104) := '" : "The name of the display menu.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(105) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "DisplayMenu",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(106) := '"is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "NOTIFICATIONTYPE",'||wwv_flow.LF||
'        "sequence" : 26,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(107) := '     "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The type of ';
wwv_flow_imp.g_varchar2_table(108) := 'notification.",'||wwv_flow.LF||
'        "max_length" : 30,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(109) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "NotificationType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(110) := '      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "TASKDETAILSAVAILABLEFLAG",'||wwv_flow.LF||
'        "sequence" : 27,'||wwv_flow.LF||
'        "is_p';
wwv_flow_imp.g_varchar2_table(111) := 'rimary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Identifies if the task';
wwv_flow_imp.g_varchar2_table(112) := ' details are available.",'||wwv_flow.LF||
'        "max_length" : 5,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidd';
wwv_flow_imp.g_varchar2_table(113) := 'en" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskDetailsAvailableFlag",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(114) := 'is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "VIEWID",'||wwv_flow.LF||
'        "sequence" : 28,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(115) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The view identifier for';
wwv_flow_imp.g_varchar2_table(116) := ' the message.",'||wwv_flow.LF||
'        "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(117) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ViewId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(118) := '      {'||wwv_flow.LF||
'        "name" : "TFPARAMETERSTRING",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "is_primary_key" : "N';
wwv_flow_imp.g_varchar2_table(119) := '",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The task flow parameter strings.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(120) := '     "max_length" : 400,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(121) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "TfParameterString",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(122) := '        "name" : "TASKSTATE",'||wwv_flow.LF||
'        "sequence" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data';
wwv_flow_imp.g_varchar2_table(123) := '_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The current state of the task in the workflow.",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(124) := '   "max_length" : 20,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filtera';
wwv_flow_imp.g_varchar2_table(125) := 'ble" : "Y",'||wwv_flow.LF||
'        "selector" : "TaskState",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "na';
wwv_flow_imp.g_varchar2_table(126) := 'me" : "MESSAGEID",'||wwv_flow.LF||
'        "sequence" : 31,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "N';
wwv_flow_imp.g_varchar2_table(127) := 'UMBER",'||wwv_flow.LF||
'        "description" : "The unique identifier of the message.",'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(128) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "MessageId",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(129) := '     "additional_info" : "CreateOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attrib';
wwv_flow_imp.g_varchar2_table(130) := 'utes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "atkPopupItems",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operation';
wwv_flow_imp.g_varchar2_table(131) := 's" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "ur';
wwv_flow_imp.g_varchar2_table(132) := 'l_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(133) := '  {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" ';
wwv_flow_imp.g_varchar2_table(134) := ': "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(135) := ' },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : "';
wwv_flow_imp.g_varchar2_table(136) := '.",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "ope';
wwv_flow_imp.g_varchar2_table(137) := 'ration" : "PATCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey"';
wwv_flow_imp.g_varchar2_table(138) := ','||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "opera';
wwv_flow_imp.g_varchar2_table(139) := 'tion" : "DELETE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",';
wwv_flow_imp.g_varchar2_table(140) := ''||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    }'||wwv_flow.LF||
'  ],'||wwv_flow.LF||
'  "parameters" ';
wwv_flow_imp.g_varchar2_table(141) := ':'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'  ]'||wwv_flow.LF||
'}';
end;
/
begin
wwv_web_src_catalog_api.create_catalog_service(
 p_id=>wwv_flow_imp.id(23506871656288461)
,p_catalog_id=>wwv_flow_imp.id(23506675139288456)
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
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(8) := '        "name" : "GRIDICONCOLORTYPE",'||wwv_flow.LF||
'        "sequence" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(9) := '  "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the grid icon color is monochrome ';
wwv_flow_imp.g_varchar2_table(10) := 'or multicolor.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : ';
wwv_flow_imp.g_varchar2_table(11) := '"N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconColorType",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(12) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINHEADINGCOLOR",'||wwv_flow.LF||
'        "sequence" : 3,'||wwv_flow.LF||
'        "is_prima';
wwv_flow_imp.g_varchar2_table(13) := 'ry_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the login pag';
wwv_flow_imp.g_varchar2_table(14) := 'e header.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginHeadingColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(16) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINBACKGROUNDCOLOR",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(17) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The background color of the ';
wwv_flow_imp.g_varchar2_table(18) := 'login page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(19) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginBackgroundColor",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(20) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BANNERIMAGETYPE",'||wwv_flow.LF||
'        "sequence" : 5,'||wwv_flow.LF||
'        "is_primary';
wwv_flow_imp.g_varchar2_table(21) := '_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Type of the banner image whe';
wwv_flow_imp.g_varchar2_table(22) := unistr('ther it\2019s a link, or an uploaded image, or an image that Oracle predefined.",'||wwv_flow.LF||
'        "max_length" :');
wwv_flow_imp.g_varchar2_table(23) := ' 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(24) := '     "selector" : "BannerImageType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LA';
wwv_flow_imp.g_varchar2_table(25) := 'STMODIFIED",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(26) := '",'||wwv_flow.LF||
'        "description" : "The date and time when the them was last modified.",'||wwv_flow.LF||
'        "max_length';
wwv_flow_imp.g_varchar2_table(27) := '" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(28) := '        "selector" : "LastModified",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LO';
wwv_flow_imp.g_varchar2_table(29) := 'GOTYPE",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(30) := unistr('       "description" : "The type of the image whether it\2019s a link, or an uploaded file, or an image ');
wwv_flow_imp.g_varchar2_table(31) := 'that Oracle predefined.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(32) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LogoType",'||wwv_flow.LF||
'        "is_common" : ';
wwv_flow_imp.g_varchar2_table(33) := '"Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GLOBALBGENDCOLOR",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primar';
wwv_flow_imp.g_varchar2_table(34) := 'y_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The end color of the gradie';
wwv_flow_imp.g_varchar2_table(35) := 'nt for the global background color.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(36) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBgEndColor",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(37) := '      "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ORAHEROANIMATIONENABLED",'||wwv_flow.LF||
'        "sequen';
wwv_flow_imp.g_varchar2_table(38) := 'ce" : 9,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "';
wwv_flow_imp.g_varchar2_table(39) := 'The option to enable or disable the welcome animation on the Ask Oracle UI.",'||wwv_flow.LF||
'        "max_length" :';
wwv_flow_imp.g_varchar2_table(40) := ' 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(41) := '     "selector" : "OraHeroAnimationEnabled",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(42) := 'e" : "GLOBALBGCOLOR",'||wwv_flow.LF||
'        "sequence" : 10,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(43) := ' "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The hex color code for the background color of the page.",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(44) := '     "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fil';
wwv_flow_imp.g_varchar2_table(45) := 'terable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBGColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(46) := '     "name" : "HIGHLIGHTCOLOR",'||wwv_flow.LF||
'        "sequence" : 11,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(47) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color used to highlight any important text or im';
wwv_flow_imp.g_varchar2_table(48) := 'age, such as the notification count and help icon.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_';
wwv_flow_imp.g_varchar2_table(49) := 'zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "HighLi';
wwv_flow_imp.g_varchar2_table(50) := 'ghtColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "STATUS",'||wwv_flow.LF||
'        "sequence" ';
wwv_flow_imp.g_varchar2_table(51) := ': 12,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Ind';
wwv_flow_imp.g_varchar2_table(52) := 'icates the status of a theme. The value can be either Inactive or Active.",'||wwv_flow.LF||
'        "max_length" : 4';
wwv_flow_imp.g_varchar2_table(53) := '000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(54) := '   "selector" : "Status",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SELECTIONCOLO';
wwv_flow_imp.g_varchar2_table(55) := 'R",'||wwv_flow.LF||
'        "sequence" : 13,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(56) := '   "description" : "The color to indicate selection of the vertical tab associated with a page.",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(57) := '      "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_fi';
wwv_flow_imp.g_varchar2_table(58) := 'lterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SelectionColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(59) := '       "name" : "GLOBALREGIONBGCOLOR",'||wwv_flow.LF||
'        "sequence" : 14,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(60) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The hex color code for the background of glob';
wwv_flow_imp.g_varchar2_table(61) := 'al region on the pages.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_h';
wwv_flow_imp.g_varchar2_table(62) := 'idden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalRegionBGColor",'||wwv_flow.LF||
'        "is';
wwv_flow_imp.g_varchar2_table(63) := '_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISSEEDEDTHEME",'||wwv_flow.LF||
'        "sequence" : 15,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(64) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the t';
wwv_flow_imp.g_varchar2_table(65) := 'heme was predefined by Oracle or if the user created it.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(66) := '_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "';
wwv_flow_imp.g_varchar2_table(67) := 'IsSeededTheme",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "THEMENAME",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(68) := 'quence" : 16,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(69) := '" : "The display name of the theme.",'||wwv_flow.LF||
'        "max_length" : 255,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(70) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ThemeName",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(71) := 's_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SKINID",'||wwv_flow.LF||
'        "sequence" : 17,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(72) := 'mary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The Unique id of the the';
wwv_flow_imp.g_varchar2_table(73) := 'me.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(74) := '  "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SkinId",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(75) := '       "name" : "GLOBALREGIONLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 18,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(76) := '       "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The hex color code for the global region l';
wwv_flow_imp.g_varchar2_table(77) := 'abels on the pages.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidde';
wwv_flow_imp.g_varchar2_table(78) := 'n" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalRegionLabelColor",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(79) := 'common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONSHAPE",'||wwv_flow.LF||
'        "sequence" : 19,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(80) := 's_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Determines the shap';
wwv_flow_imp.g_varchar2_table(81) := 'e of the filmstrip or the grid icons.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(82) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconShape",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(83) := '     "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISBUTTONGRADIENTSUPPORTED",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(84) := 'nce" : 20,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" :';
wwv_flow_imp.g_varchar2_table(85) := ' "Indicates if gradient is supported for the background color of the button.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(86) := ': 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(87) := '      "selector" : "IsButtonGradientSupported",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(88) := 'name" : "REPEATWATERMARK",'||wwv_flow.LF||
'        "sequence" : 21,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(89) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the image is repeated throughout the backgro';
wwv_flow_imp.g_varchar2_table(90) := 'und or not.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(91) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "RepeatWatermark",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(92) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONBACKGROUNDCOLOR",'||wwv_flow.LF||
'        "sequence" : 22,'||wwv_flow.LF||
'        "is_pri';
wwv_flow_imp.g_varchar2_table(93) := 'mary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the grid ic';
wwv_flow_imp.g_varchar2_table(94) := 'on background.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : ';
wwv_flow_imp.g_varchar2_table(95) := '"N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconBackgroundColor",'||wwv_flow.LF||
'        "is_comm';
wwv_flow_imp.g_varchar2_table(96) := 'on" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUTTONBGCOLOR",'||wwv_flow.LF||
'        "sequence" : 23,'||wwv_flow.LF||
'        "is_pr';
wwv_flow_imp.g_varchar2_table(97) := 'imary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The button background c';
wwv_flow_imp.g_varchar2_table(98) := 'olor if gradient isn''t supported.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(99) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonBGColor",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(100) := ' "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDICONINDICATORCOLOR",'||wwv_flow.LF||
'        "sequence" : ';
wwv_flow_imp.g_varchar2_table(101) := '24,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "This ';
wwv_flow_imp.g_varchar2_table(102) := 'is the color of the dot in cluster icons that are usually displayed in the grid or banner of homepag';
wwv_flow_imp.g_varchar2_table(103) := 'e.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(104) := ' "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconIndicatorColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(105) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUTTONLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 25,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(106) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The hex color code for the text o';
wwv_flow_imp.g_varchar2_table(107) := 'n the buttons.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : ';
wwv_flow_imp.g_varchar2_table(108) := '"N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonLabelColor",'||wwv_flow.LF||
'        "is_common" : "';
wwv_flow_imp.g_varchar2_table(109) := 'Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGOWIDTH",'||wwv_flow.LF||
'        "sequence" : 26,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(110) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Width of the logo.",'||wwv_flow.LF||
'        "max_';
wwv_flow_imp.g_varchar2_table(111) := 'length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" :';
wwv_flow_imp.g_varchar2_table(112) := ' "Y",'||wwv_flow.LF||
'        "selector" : "LogoWidth",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : ';
wwv_flow_imp.g_varchar2_table(113) := '"LOGINLOGOTYPE",'||wwv_flow.LF||
'        "sequence" : 27,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VAR';
wwv_flow_imp.g_varchar2_table(114) := 'CHAR2",'||wwv_flow.LF||
'        "description" : "The type of the proposed login logo.",'||wwv_flow.LF||
'        "max_length" : 4000,';
wwv_flow_imp.g_varchar2_table(115) := ''||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(116) := 'selector" : "LoginLogoType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BASESEEDED';
wwv_flow_imp.g_varchar2_table(117) := 'THEME",'||wwv_flow.LF||
'        "sequence" : 28,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(118) := '       "description" : "The basic theme from Oracle. The user-defined theme is created on top of it.';
wwv_flow_imp.g_varchar2_table(119) := '",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(120) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "BaseSeededTheme",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(121) := '   {'||wwv_flow.LF||
'        "name" : "LOGONAME",'||wwv_flow.LF||
'        "sequence" : 29,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(122) := 'data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Name of the logo used for the theme.",'||wwv_flow.LF||
'        "ma';
wwv_flow_imp.g_varchar2_table(123) := 'x_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable"';
wwv_flow_imp.g_varchar2_table(124) := ' : "Y",'||wwv_flow.LF||
'        "selector" : "LogoName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" :';
wwv_flow_imp.g_varchar2_table(125) := ' "WATERMARKTYPE",'||wwv_flow.LF||
'        "sequence" : 30,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VA';
wwv_flow_imp.g_varchar2_table(126) := unistr('RCHAR2",'||wwv_flow.LF||
'        "description" : "Type of the background image  whether it\2019s a link, or an uploaded ');
wwv_flow_imp.g_varchar2_table(127) := 'file, or an image that Oracle predefined.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : n';
wwv_flow_imp.g_varchar2_table(128) := 'ull,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "WaterMarkType",';
wwv_flow_imp.g_varchar2_table(129) := ''||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PAGELINKCOLOR",'||wwv_flow.LF||
'        "sequence" : 3';
wwv_flow_imp.g_varchar2_table(130) := '1,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The co';
wwv_flow_imp.g_varchar2_table(131) := 'lor of the page links.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hi';
wwv_flow_imp.g_varchar2_table(132) := 'dden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "PageLinkColor",'||wwv_flow.LF||
'        "is_common';
wwv_flow_imp.g_varchar2_table(133) := '" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINREUSEGENERAL",'||wwv_flow.LF||
'        "sequence" : 32,'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(134) := 'primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates whether the';
wwv_flow_imp.g_varchar2_table(135) := ' login page CSS parameters are the same as that of the Fusion theme.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(136) := '        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "s';
wwv_flow_imp.g_varchar2_table(137) := 'elector" : "LoginReuseGeneral",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINBA';
wwv_flow_imp.g_varchar2_table(138) := 'NNERIMAGE",'||wwv_flow.LF||
'        "sequence" : 33,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2';
wwv_flow_imp.g_varchar2_table(139) := '",'||wwv_flow.LF||
'        "description" : "The banner image of the proposed login page.",'||wwv_flow.LF||
'        "max_length" : 40';
wwv_flow_imp.g_varchar2_table(140) := '00,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(141) := '  "selector" : "LoginBannerImage",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CARD';
wwv_flow_imp.g_varchar2_table(142) := 'THEME",'||wwv_flow.LF||
'        "sequence" : 34,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(143) := '       "description" : "A style of the HCM card. The value can be dark or light.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(144) := 'th" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(145) := ','||wwv_flow.LF||
'        "selector" : "CardTheme",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRI';
wwv_flow_imp.g_varchar2_table(146) := 'DICONCOLOR",'||wwv_flow.LF||
'        "sequence" : 35,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(147) := '2",'||wwv_flow.LF||
'        "description" : "The color of the icons displayed in the grid, or on filmstrip, or the n';
wwv_flow_imp.g_varchar2_table(148) := 'ewsfeed page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "';
wwv_flow_imp.g_varchar2_table(149) := 'N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(150) := '     },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "SVGICONTYPE",'||wwv_flow.LF||
'        "sequence" : 36,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(151) := '"N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the icon type is solid ';
wwv_flow_imp.g_varchar2_table(152) := 'or outlined.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(153) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "SvgIconType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(154) := '  },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGOHEIGHT",'||wwv_flow.LF||
'        "sequence" : 37,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(155) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Height of the logo.",'||wwv_flow.LF||
'        "max_lengt';
wwv_flow_imp.g_varchar2_table(156) := 'h" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",';
wwv_flow_imp.g_varchar2_table(157) := ''||wwv_flow.LF||
'        "selector" : "LogoHeight",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOG';
wwv_flow_imp.g_varchar2_table(158) := 'INLINKCOLOR",'||wwv_flow.LF||
'        "sequence" : 38,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHA';
wwv_flow_imp.g_varchar2_table(159) := 'R2",'||wwv_flow.LF||
'        "description" : "The color of the URL that opens the login page.",'||wwv_flow.LF||
'        "max_length"';
wwv_flow_imp.g_varchar2_table(160) := ' : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(161) := '       "selector" : "LoginLinkColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "G';
wwv_flow_imp.g_varchar2_table(162) := 'LOBALBGSTARTCOLOR",'||wwv_flow.LF||
'        "sequence" : 39,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "';
wwv_flow_imp.g_varchar2_table(163) := 'VARCHAR2",'||wwv_flow.LF||
'        "description" : "The start color of the gradient for the global background color.';
wwv_flow_imp.g_varchar2_table(164) := '",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(165) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBgStartColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(166) := '      {'||wwv_flow.LF||
'        "name" : "GLOBALBGCOLORGRADIENT",'||wwv_flow.LF||
'        "sequence" : 40,'||wwv_flow.LF||
'        "is_primary_key" ';
wwv_flow_imp.g_varchar2_table(167) := ': "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Indicates if the background color ';
wwv_flow_imp.g_varchar2_table(168) := 'of the page supports gradient or not.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,';
wwv_flow_imp.g_varchar2_table(169) := ''||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GlobalBgColorGradie';
wwv_flow_imp.g_varchar2_table(170) := 'nt",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINBANNERIMAGETYPE",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(171) := 'quence" : 41,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description';
wwv_flow_imp.g_varchar2_table(172) := '" : "The banner image type of the proposed login page.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_t';
wwv_flow_imp.g_varchar2_table(173) := 'ime_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Lo';
wwv_flow_imp.g_varchar2_table(174) := 'ginBannerImageType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ISEDITEDBYADVEDITO';
wwv_flow_imp.g_varchar2_table(175) := 'R",'||wwv_flow.LF||
'        "sequence" : 42,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(176) := '   "description" : "Indicates whether the theme was edited by the Advanced Theme Editor.",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(177) := 'max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterabl';
wwv_flow_imp.g_varchar2_table(178) := 'e" : "Y",'||wwv_flow.LF||
'        "selector" : "IsEditedByAdvEditor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(179) := '     "name" : "HOMELAYOUTTYPE",'||wwv_flow.LF||
'        "sequence" : 43,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "da';
wwv_flow_imp.g_varchar2_table(180) := 'ta_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The type of the home layout, such as grid, banner, o';
wwv_flow_imp.g_varchar2_table(181) := 'r newsfeed.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(182) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "HomeLayoutType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(183) := '    },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUTTONBORDERCOLOR",'||wwv_flow.LF||
'        "sequence" : 44,'||wwv_flow.LF||
'        "is_primary_ke';
wwv_flow_imp.g_varchar2_table(184) := 'y" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the border around ';
wwv_flow_imp.g_varchar2_table(185) := 'the button.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N"';
wwv_flow_imp.g_varchar2_table(186) := ','||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonBorderColor",'||wwv_flow.LF||
'        "is_common" : "Y"';
wwv_flow_imp.g_varchar2_table(187) := ''||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINLOGO",'||wwv_flow.LF||
'        "sequence" : 45,'||wwv_flow.LF||
'        "is_primary_key" : ';
wwv_flow_imp.g_varchar2_table(188) := '"N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The logo of the proposed login page.';
wwv_flow_imp.g_varchar2_table(189) := '",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(190) := 'is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginLogo",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(191) := '       "name" : "ICONLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 46,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(192) := 'data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The label color of the navigation icons shown on t';
wwv_flow_imp.g_varchar2_table(193) := 'he homepage or on the film strip.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(194) := '     "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IconLabelColor",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(195) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BUTTONBGENDCOLOR",'||wwv_flow.LF||
'        "sequence" : 47,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(196) := '       "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The end co';
wwv_flow_imp.g_varchar2_table(197) := 'lor of the gradient for the background of the button.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_ti';
wwv_flow_imp.g_varchar2_table(198) := 'me_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "But';
wwv_flow_imp.g_varchar2_table(199) := 'tonBGEndColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GRIDCARDSIZE",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(200) := '"sequence" : 48,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descript';
wwv_flow_imp.g_varchar2_table(201) := 'ion" : "The size of the cards displayed on the grid or banner.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(202) := '  "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selecto';
wwv_flow_imp.g_varchar2_table(203) := 'r" : "GridCardSize",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "BANNERIMAGE",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(204) := '    "sequence" : 49,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(205) := 'ription" : "The cover image of the home page banner as well as the background image of OSN.",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(206) := '  "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filter';
wwv_flow_imp.g_varchar2_table(207) := 'able" : "Y",'||wwv_flow.LF||
'        "selector" : "BannerImage",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(208) := '"name" : "HEADERLABELCOLOR",'||wwv_flow.LF||
'        "sequence" : 50,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_';
wwv_flow_imp.g_varchar2_table(209) := 'type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The color of the page header label.",'||wwv_flow.LF||
'        "max_leng';
wwv_flow_imp.g_varchar2_table(210) := 'th" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y"';
wwv_flow_imp.g_varchar2_table(211) := ','||wwv_flow.LF||
'        "selector" : "HeaderLabelColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name"';
wwv_flow_imp.g_varchar2_table(212) := ' : "BUTTONBGSTARTCOLOR",'||wwv_flow.LF||
'        "sequence" : 51,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type';
wwv_flow_imp.g_varchar2_table(213) := '" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The start color of the gradient for the background of the b';
wwv_flow_imp.g_varchar2_table(214) := 'utton.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(215) := '     "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "ButtonBGStartColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(216) := '   },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ICONSTYLE",'||wwv_flow.LF||
'        "sequence" : 52,'||wwv_flow.LF||
'        "is_primary_key" : "N",';
wwv_flow_imp.g_varchar2_table(217) := ''||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The style of the icon that existed befor';
wwv_flow_imp.g_varchar2_table(218) := 'e Rel13. It''s no longer used in Rel13.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null';
wwv_flow_imp.g_varchar2_table(219) := ','||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "IconStyle",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(220) := '  "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "CORNERRADIUS",'||wwv_flow.LF||
'        "sequence" : 53,'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(221) := '   "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The value of t';
wwv_flow_imp.g_varchar2_table(222) := 'he radius that defines the round corners of the buttons.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has';
wwv_flow_imp.g_varchar2_table(223) := '_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "';
wwv_flow_imp.g_varchar2_table(224) := 'CornerRadius",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "HOMEPANELSTYLE",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(225) := ' "sequence" : 54,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descrip';
wwv_flow_imp.g_varchar2_table(226) := 'tion" : "Indicates whether the background of the OSN panel is dark or light.",'||wwv_flow.LF||
'        "max_length" ';
wwv_flow_imp.g_varchar2_table(227) := ': 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(228) := '      "selector" : "HomePanelStyle",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "GR';
wwv_flow_imp.g_varchar2_table(229) := 'IDICONBACKGROUNDCOLORTYPE",'||wwv_flow.LF||
'        "sequence" : 55,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_t';
wwv_flow_imp.g_varchar2_table(230) := 'ype" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Determines if the icon background color is monochrome or';
wwv_flow_imp.g_varchar2_table(231) := ' multicolor.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N';
wwv_flow_imp.g_varchar2_table(232) := '",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "GridIconBackgroundColorType",'||wwv_flow.LF||
'        "is_co';
wwv_flow_imp.g_varchar2_table(233) := 'mmon" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINACCENTCOLOR",'||wwv_flow.LF||
'        "sequence" : 56,'||wwv_flow.LF||
'        "';
wwv_flow_imp.g_varchar2_table(234) := 'is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The Accent color."';
wwv_flow_imp.g_varchar2_table(235) := ','||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(236) := 's_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginAccentColor",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(237) := '   {'||wwv_flow.LF||
'        "name" : "GLOBALBGCOLORGRADIENTTYPE",'||wwv_flow.LF||
'        "sequence" : 57,'||wwv_flow.LF||
'        "is_primary_key"';
wwv_flow_imp.g_varchar2_table(238) := ' : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Determines the type of the gradie';
wwv_flow_imp.g_varchar2_table(239) := 'nt support that the user wants to choose for the global background color.",'||wwv_flow.LF||
'        "max_length" : 4';
wwv_flow_imp.g_varchar2_table(240) := '000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(241) := '   "selector" : "GlobalBgColorGradientType",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "nam';
wwv_flow_imp.g_varchar2_table(242) := 'e" : "WATERMARKNAME",'||wwv_flow.LF||
'        "sequence" : 58,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" :';
wwv_flow_imp.g_varchar2_table(243) := ' "VARCHAR2",'||wwv_flow.LF||
'        "description" : "Name of the background image.",'||wwv_flow.LF||
'        "max_length" : 4000,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(244) := '       "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "se';
wwv_flow_imp.g_varchar2_table(245) := 'lector" : "WaterMarkName",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "LOGINREPEATB';
wwv_flow_imp.g_varchar2_table(246) := 'ANNERIMAGE",'||wwv_flow.LF||
'        "sequence" : 59,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR';
wwv_flow_imp.g_varchar2_table(247) := '2",'||wwv_flow.LF||
'        "description" : "Indicates if the banner image is reapeated on login page or not.",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(248) := '    "max_length" : 4000,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filt';
wwv_flow_imp.g_varchar2_table(249) := 'erable" : "Y",'||wwv_flow.LF||
'        "selector" : "LoginRepeatBannerImage",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(250) := ']'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :'||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "atkThemes",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y';
wwv_flow_imp.g_varchar2_table(251) := '"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COL';
wwv_flow_imp.g_varchar2_table(252) := 'LECTION",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(253) := '['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(254) := '     "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(255) := '      ['||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(23506953491288462)
,p_catalog_id=>wwv_flow_imp.id(23506675139288456)
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
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "FIRSTNAME",'||wwv_flow.LF||
'        "seque';
wwv_flow_imp.g_varchar2_table(10) := 'nce" : 2,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : ';
wwv_flow_imp.g_varchar2_table(11) := '"The first name of the person.",'||wwv_flow.LF||
'        "max_length" : 150,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(12) := ' "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Firstname",'||wwv_flow.LF||
'        "additi';
wwv_flow_imp.g_varchar2_table(13) := 'onal_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "JOBTITLE",'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(14) := '     "sequence" : 3,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "desc';
wwv_flow_imp.g_varchar2_table(15) := 'ription" : "The job title of the person.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : nul';
wwv_flow_imp.g_varchar2_table(16) := 'l,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Jobtitle",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(17) := '  "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "PERSO';
wwv_flow_imp.g_varchar2_table(18) := 'NID",'||wwv_flow.LF||
'        "sequence" : 4,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "NUMBER",'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(19) := '  "description" : "The unique identifier of the person.",'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "i';
wwv_flow_imp.g_varchar2_table(20) := 's_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Personid",'||wwv_flow.LF||
'        "additional';
wwv_flow_imp.g_varchar2_table(21) := '_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "USERNAME",'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(22) := ' "sequence" : 5,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "descript';
wwv_flow_imp.g_varchar2_table(23) := 'ion" : "The user name of the person.",'||wwv_flow.LF||
'        "max_length" : 100,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(24) := '       "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Username",'||wwv_flow.LF||
'        "a';
wwv_flow_imp.g_varchar2_table(25) := 'dditional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "EMAILADDR';
wwv_flow_imp.g_varchar2_table(26) := 'ESS",'||wwv_flow.LF||
'        "sequence" : 6,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(27) := '    "description" : "The primary work email of the person.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "ha';
wwv_flow_imp.g_varchar2_table(28) := 's_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : ';
wwv_flow_imp.g_varchar2_table(29) := '"Emailaddress",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(30) := '       "name" : "LASTNAME",'||wwv_flow.LF||
'        "sequence" : 7,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_ty';
wwv_flow_imp.g_varchar2_table(31) := 'pe" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The last name of the person.",'||wwv_flow.LF||
'        "max_length" : 150';
wwv_flow_imp.g_varchar2_table(32) := ','||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(33) := '"selector" : "Lastname",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(34) := '      {'||wwv_flow.LF||
'        "name" : "DISPLAYNAME",'||wwv_flow.LF||
'        "sequence" : 8,'||wwv_flow.LF||
'        "is_primary_key" : "N",'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(35) := '    "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The name of the person displayed on the UI.",';
wwv_flow_imp.g_varchar2_table(36) := ''||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'        "is_hidden" : "N",'||wwv_flow.LF||
'        "is_';
wwv_flow_imp.g_varchar2_table(37) := 'filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Displayname",'||wwv_flow.LF||
'        "additional_info" : "ReadOnly",'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(38) := '   "is_common" : "Y"'||wwv_flow.LF||
'      },'||wwv_flow.LF||
'      {'||wwv_flow.LF||
'        "name" : "ORGUNITNAME",'||wwv_flow.LF||
'        "sequence" : 9,'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(39) := '  "is_primary_key" : "N",'||wwv_flow.LF||
'        "data_type" : "VARCHAR2",'||wwv_flow.LF||
'        "description" : "The organizatio';
wwv_flow_imp.g_varchar2_table(40) := 'n unit name where the person works.",'||wwv_flow.LF||
'        "max_length" : 240,'||wwv_flow.LF||
'        "has_time_zone" : null,'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(41) := '      "is_hidden" : "N",'||wwv_flow.LF||
'        "is_filterable" : "Y",'||wwv_flow.LF||
'        "selector" : "Orgunitname",'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(42) := '"additional_info" : "ReadOnly",'||wwv_flow.LF||
'        "is_common" : "Y"'||wwv_flow.LF||
'      }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "plugin_attributes" :';
wwv_flow_imp.g_varchar2_table(43) := ''||wwv_flow.LF||
'  {'||wwv_flow.LF||
'    "1" : "Y",'||wwv_flow.LF||
'    "2" : "persons",'||wwv_flow.LF||
'    "3" : "N",'||wwv_flow.LF||
'    "4" : "Y"'||wwv_flow.LF||
'  },'||wwv_flow.LF||
'  "operations" :'||wwv_flow.LF||
'  ['||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(44) := '{'||wwv_flow.LF||
'      "operation" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_COLLECTION",'||wwv_flow.LF||
'      "url_pattern" : ';
wwv_flow_imp.g_varchar2_table(45) := '".",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "op';
wwv_flow_imp.g_varchar2_table(46) := 'eration" : "GET",'||wwv_flow.LF||
'      "database_operation" : "FETCH_SINGLE_ROW",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$Res';
wwv_flow_imp.g_varchar2_table(47) := 'ourceKey",'||wwv_flow.LF||
'      "allow_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(48) := '   "operation" : "POST",'||wwv_flow.LF||
'      "database_operation" : "INSERT",'||wwv_flow.LF||
'      "url_pattern" : ".",'||wwv_flow.LF||
'      "al';
wwv_flow_imp.g_varchar2_table(49) := 'low_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "PA';
wwv_flow_imp.g_varchar2_table(50) := 'TCH",'||wwv_flow.LF||
'      "database_operation" : "UPDATE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allo';
wwv_flow_imp.g_varchar2_table(51) := 'w_fetch_all_rows" : "N",'||wwv_flow.LF||
'      "parameters" :'||wwv_flow.LF||
'      ['||wwv_flow.LF||
'      ]'||wwv_flow.LF||
'    },'||wwv_flow.LF||
'    {'||wwv_flow.LF||
'      "operation" : "DELE';
wwv_flow_imp.g_varchar2_table(52) := 'TE",'||wwv_flow.LF||
'      "database_operation" : "DELETE",'||wwv_flow.LF||
'      "url_pattern" : "/:APEX$ResourceKey",'||wwv_flow.LF||
'      "allow';
wwv_flow_imp.g_varchar2_table(53) := '_fetch_all_rows" : "N",'||wwv_flow.LF||
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
 p_id=>wwv_flow_imp.id(23507000730288462)
,p_catalog_id=>wwv_flow_imp.id(23506675139288456)
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
