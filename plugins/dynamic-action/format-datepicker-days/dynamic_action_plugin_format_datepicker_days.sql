--------------------------------------------------------------------------------
-- Name: Sample Calendar
-- Copyright (c) 2012, 2023 Oracle and/or its affiliates.
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
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0-19'
,p_default_workspace_id=>20
,p_default_application_id=>7820
,p_default_id_offset=>0
,p_default_owner=>'ORACLE'
);
end;
/
 
prompt APPLICATION 7820 - Sample Calendar
--
-- Application Export:
--   Application:     7820
--   Name:            Sample Calendar
--   Date and Time:   13:29 Monday January 23, 2023
--   Exported By:     DANIEL
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 1375194386962821909
--   Manifest End
--   Version:         22.2.0-19
--   Instance ID:     713418452231244
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_format_datepicker_days
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1375194386962821909)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.FORMAT_DATEPICKER_DAYS'
,p_display_name=>'Format Date Picker Days'
,p_category=>'EXECUTE'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_ajax (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin',
') return apex_plugin.t_dynamic_action_ajax_result is',
'    c_source_type          constant varchar2(32767) := p_dynamic_action.attribute_01;',
'    c_ics_uri              constant varchar2(32767) := apex_plugin_util.replace_substitutions(p_dynamic_action.attribute_02, false);',
'    c_ics_class            constant varchar2(32767) := p_dynamic_action.attribute_10;',
'    c_start_column_name    constant varchar2(32767) := upper(p_dynamic_action.attribute_04);',
'    c_end_column_name      constant varchar2(32767) := upper(p_dynamic_action.attribute_05);',
'    c_tooltip_column_name  constant varchar2(32767) := upper(p_dynamic_action.attribute_06);',
'    c_class_column_name    constant varchar2(32767) := upper(p_dynamic_action.attribute_07);',
'    c_disabled_column_name constant varchar2(32767) := upper(p_dynamic_action.attribute_08);',
'    c_web_credential_id    constant varchar2(32767) := p_dynamic_action.attribute_12;',
'    c_server_cache         constant boolean         := case when p_dynamic_action.attribute_11 = ''server'' then true else false end;',
'    c_cache_id             constant varchar2(32767) := to_char(p_dynamic_action.id);',
'    c_sql_query            constant varchar2(32767) := p_dynamic_action.attribute_03;',
'    c_iso_short_data       constant varchar2(10)    := ''YYYY-MM-DD'';',
'    l_context              apex_exec.t_context;',
'    l_idx_start            pls_integer;',
'    l_idx_end              pls_integer;',
'    l_idx_tooltip          pls_integer;',
'    l_idx_class            pls_integer;',
'    l_idx_disabled         pls_integer;',
'    l_result               apex_plugin.t_dynamic_action_ajax_result;',
'    l_rest_result          blob;',
'    l_collection_exists    boolean;',
'',
'    procedure write_row(',
'        p_start    in varchar2,',
'        p_end      in varchar2,',
'        p_tooltip  in varchar2,',
'        p_class    in varchar2,',
'        p_disabled in number default null ) is',
'    begin',
'        apex_json.open_object; -- open json object - { ',
'        apex_json.write(''start'', p_start);',
'        apex_json.write(''end'', p_end);',
'        apex_json.write(''tooltip'', p_tooltip);',
'        apex_json.write(''class'', p_class);',
'        if p_disabled is not null then',
'            apex_json.write(''disabled'', p_disabled);',
'        end if;',
'        apex_json.close_object; -- Close json object - }',
'    end write_row;',
'begin',
'    apex_json.initialize_output;',
'    apex_json.open_object; -- open json object - {',
'    apex_json.open_array(''rows''); -- open json array - [',
'',
'    l_collection_exists := apex_collection.collection_exists(c_cache_id);',
'    -- when data is cached then loop over collection',
'    if c_server_cache and l_collection_exists then',
'        for rec in (',
'            select',
'                c001 as date_start,',
'                c002 as date_end,',
'                c003 as tooltip',
'            from',
'                apex_collections',
'            where collection_name = c_cache_id',
'        ) loop',
'            write_row(',
'                p_start   => rec.date_start,',
'                p_end     => rec.date_end,',
'                p_tooltip => rec.tooltip,',
'                p_class   => c_ics_class );',
'        end loop;',
'    -- else load data from db or rest',
'    else',
'        if c_server_cache then',
'            apex_collection.create_or_truncate_collection(c_cache_id); -- create collection to create cache',
'        elsif l_collection_exists then',
'            apex_collection.delete_collection(c_cache_id);',
'        end if;',
'        if c_source_type = ''sql'' then',
'            l_context := apex_exec.open_query_context( -- open context',
'                             p_location => apex_exec.c_location_local_db,',
'                             p_sql_query => c_sql_query',
'                         );',
'            -- get positions of columns',
'            l_idx_start := apex_exec.get_column_position(',
'                               p_context => l_context,',
'                               p_column_name => c_start_column_name',
'                           );',
'            l_idx_end := apex_exec.get_column_position(',
'                             p_context => l_context,',
'                             p_column_name => c_end_column_name',
'                         );',
'            l_idx_tooltip := apex_exec.get_column_position(',
'                                 p_context => l_context,',
'                                 p_column_name => c_tooltip_column_name',
'                             );',
'            l_idx_class := apex_exec.get_column_position(',
'                               p_context => l_context,',
'                               p_column_name => c_class_column_name',
'                           );',
'            l_idx_disabled := apex_exec.get_column_position(',
'                                  p_context => l_context,',
'                                  p_column_name => c_disabled_column_name',
'                              );',
'            -- loop over context and create json objects for array',
'            while apex_exec.next_row(p_context => l_context) loop -- loop through conext array ',
'                if c_server_cache then -- if cache is activated then write data into collection',
'                    apex_collection.add_member(',
'                        p_collection_name => c_cache_id,',
'                        p_c001 => to_char(apex_exec.get_date(l_context,l_idx_start), c_iso_short_data),',
'                        p_c002 => to_char(apex_exec.get_date(l_context,l_idx_end), c_iso_short_data),',
'                        p_c003 => case when l_idx_tooltip is not null then apex_exec.get_varchar2(l_context,l_idx_tooltip) end',
'                    );',
'                end if;',
'                write_row(',
'                    p_start    => to_char(apex_exec.get_date(l_context,l_idx_start), c_iso_short_data),',
'                    p_end      => to_char(apex_exec.get_date(l_context,l_idx_end), c_iso_short_data),',
'                    p_tooltip  => case when l_idx_tooltip is not null then apex_exec.get_varchar2(l_context,l_idx_tooltip) end,',
'                    p_class    => case when l_idx_class is not null then apex_exec.get_varchar2(l_context,l_idx_class) end,',
'                    p_disabled => case when l_idx_disabled is not null then apex_exec.get_number(l_context,l_idx_disabled) end);',
'            end loop;',
'        else',
'            begin',
'                l_rest_result := apex_web_service.make_rest_request_b(',
'                                    p_url => c_ics_uri, ',
'                                    p_http_method => ''GET'',',
'                                    p_credential_static_id => c_web_credential_id );',
'            exception when others then',
'                apex_debug.error(p_dynamic_action.action || '' raised an error while try to load ics file over rest please check ACLs and Wallet with certificates.'');',
'                raise;',
'            end;',
'            -- when rest call return a file',
'            if l_rest_result is not null then',
'                for rec in (',
'                    select ',
'                        col002 as tooltip,',
'                        to_date(col005, ''YYYY-MM-DD HH24:MI:SS'') as date_start,',
'                        to_date(col006, ''YYYY-MM-DD HH24:MI:SS'') - 1/86400 as date_end -- decrease the end time by 1 second to prevent that e.g. single days are displayed twice',
'                    from table(',
'                            apex_data_parser.parse(',
'                                p_content => l_rest_result,',
'                                p_file_name => ''basic.ics''',
'                            )',
'                    )',
'                ) loop',
'                    if c_server_cache then -- if cache is activated then write data into collection',
'                        apex_collection.add_member(',
'                            p_collection_name => c_cache_id,',
'                            p_c001 => to_char(rec.date_start, c_iso_short_data),',
'                            p_c002 => to_char(rec.date_end, c_iso_short_data),',
'                            p_c003 => rec.tooltip',
'                        );',
'                    end if;',
'                    write_row(',
'                        p_start   => to_char(rec.date_start, c_iso_short_data),',
'                        p_end     => to_char(rec.date_end, c_iso_short_data),',
'                        p_tooltip => rec.tooltip,',
'                        p_class   => c_ics_class );',
'                end loop;',
'            else',
'                apex_debug.error(p_dynamic_action.action || '' raised an error: ICS file not available or empty.''); -- log only the problem bug don''t raise an error;',
'            end if;',
'        end if;',
'    end if;',
'',
'    apex_exec.close(l_context); -- don''t forget to cleanup',
'    apex_json.close_array; -- open json array - ]',
'    apex_json.close_object; -- Close json object - }',
'',
'    return l_result;',
'exception',
'    when others then',
'        apex_debug.error(p_dynamic_action.action || '' raised an error while loading data.'');',
'        apex_exec.close(l_context);',
'        apex_json.close_all;',
'        raise;',
'end;',
'',
'function f_render (',
'    p_dynamic_action   in apex_plugin.t_dynamic_action,',
'    p_plugin           in apex_plugin.t_plugin',
') return apex_plugin.t_dynamic_action_render_result as',
'    l_result         apex_plugin.t_dynamic_action_render_result;',
'    c_items2submit constant varchar2(32767) := apex_plugin_util.page_item_names_to_jquery(p_dynamic_action.attribute_09);',
'    c_client_cache constant boolean         := case when p_dynamic_action.attribute_11 = ''client'' then true else false end;',
'    c_cache_id     constant varchar2(32767) := to_char(p_dynamic_action.id);',
'begin',
'',
'    l_result.javascript_function   := ''',
'    function () { ',
'           apexDatePickerDayFormatter.initialize(this, '' ||',
'                   apex_javascript.add_value( apex_plugin.get_ajax_identifier, true ) ||',
'                   apex_javascript.add_value( c_items2submit, true ) ||',
'                   apex_javascript.add_value( c_client_cache, true ) ||',
'                   apex_javascript.add_value( c_cache_id, false ) ||',
'    ''); }'';',
'',
'    return l_result;',
'end;'))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'ITEM:REQUIRED:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'This plug-in is for the new APEX date picker to format days in the date picker calendar by a SQL Query or a online available ICS file.'
,p_version_identifier=>'1.1.0'
,p_about_url=>'https://apex.oracle.com'
,p_files_version=>153
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1375202414816855944)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Load from'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'ics'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the data should be loaded.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1375203137952857916)
,p_plugin_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_display_sequence=>10
,p_display_value=>'ICS File'
,p_return_value=>'ics'
,p_help_text=>'Load data from an ICS file that is available over a public URI.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1375203531986858494)
,p_plugin_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_display_sequence=>20
,p_display_value=>'SQL Query'
,p_return_value=>'sql'
,p_help_text=>'Load data from a SQL Query.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1375204253349866140)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'URL for ICS file'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_default_value=>'https://calendar.google.com/calendar/ical/en.usa%23holiday@group.v.calendar.google.com/public/basic.ics'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ics'
,p_examples=>'https://calendar.google.com/calendar/ical/en.usa%23holiday@group.v.calendar.google.com/public/basic.ics'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Load data from an ICS file that is available over a public URI. If data is loaded from "i" folder or application files please add host URI.</p>',
'<p>Supported Substitutions: Application, Page Items and System Variables</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374394648745625340)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'SQL Source'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    trunc(sysdate) - 1 as start_date,',
'    trunc(sysdate) - 1 as end_date,',
'    null               as css_class,',
'    null               as tooltip,',
'    1                  as is_disabled',
'from',
'    dual',
'union all',
'select',
'    trunc(sysdate) + 1     as start_date,',
'    trunc(sysdate) + 1     as end_date,',
'    ''u-hot-text''           as css_class,',
'    ''Today is a good day!'' as tooltip,',
'    null                   as is_disabled',
'from',
'    dual'))
,p_sql_min_column_count=>3
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    trunc(sysdate) - 1 as start_date,',
'    trunc(sysdate) - 1 as end_date,',
'    null               as css_class,',
'    null               as tooltip,',
'    1                  as is_disabled',
'from',
'    dual',
'union all',
'select',
'    trunc(sysdate) + 1     as start_date,',
'    trunc(sysdate) + 1     as end_date,',
'    ''u-hot-text''           as css_class,',
'    ''Today is a good day!'' as tooltip,',
'    null                   as is_disabled',
'from',
'    dual'))
,p_help_text=>'Load data from a SQL Query.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374395347314635098)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Start Date Column (DATE)'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'START_DATE'
,p_max_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_text_case=>'UPPER'
,p_help_text=>'Enter name of the start date column. Data type must be a date.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374396101047637013)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'End Date Column (DATE)'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'END_DATE'
,p_max_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_text_case=>'UPPER'
,p_help_text=>'Enter name of the end date column. Data type must be a date.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374396777003639219)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Tooltip Column (VARCHAR2)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'TOOLTIP'
,p_max_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_text_case=>'UPPER'
,p_help_text=>'Enter name of the tooltip column. Data type must be a varchar2.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374397438753641560)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'CSS Class Column (VARCHAR2)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'CSS_CLASS'
,p_max_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_text_case=>'UPPER'
,p_help_text=>'Enter name of the css_class column. Data type must be a varchar2.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374398132915643833)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Is disabled Column (NUMBER)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'IS_DISABLED'
,p_max_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_text_case=>'UPPER'
,p_help_text=>'Enter name of the css_class column. Data type must be a number. 1 for disabled and 0 for enabled.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1374803632203745436)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Item to submit'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_help_text=>'Enter page or application items to be set into session state when the plug-in makes ajax request.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1375393819009586274)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'CSS Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'u-hot-text'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ics'
,p_examples=>'u-hot-text'
,p_help_text=>'Enter a static class that should be set for the entries in the ICS file.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1376195708863878222)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>21
,p_prompt=>'Cache for current Session'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'server'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ics'
,p_lov_type=>'STATIC'
,p_help_text=>'Select wether the results are cached after the first data load or if data is always loaded.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1374000918935619262)
,p_plugin_attribute_id=>wwv_flow_imp.id(1376195708863878222)
,p_display_sequence=>10
,p_display_value=>'Disabled'
,p_return_value=>'disabled'
,p_help_text=>'Cache is disabled.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1374001315777621773)
,p_plugin_attribute_id=>wwv_flow_imp.id(1376195708863878222)
,p_display_sequence=>20
,p_display_value=>'Server'
,p_return_value=>'server'
,p_help_text=>'Data is cached for the current Session in an APEX collection.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1374001776275628339)
,p_plugin_attribute_id=>wwv_flow_imp.id(1376195708863878222)
,p_display_sequence=>30
,p_display_value=>'Client'
,p_return_value=>'client'
,p_help_text=>'Data is cached for the current Session in the local storage of the clients browser. This is limited to 5MB, depending on the browser.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1375394555873448263)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>21
,p_prompt=>'Static ID of Web Credential'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1375202414816855944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ics'
,p_help_text=>'Enter the name of a Web Credential (configured in Shared Components) to use also ics files that requires authentication.'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6E73742061706578446174655069636B6572446179466F726D61747465723D66756E6374696F6E28297B2275736520737472696374223B636F6E737420653D224150455820666F726D61742044617465205069636B65722044617973222C743D2241';
wwv_flow_imp.g_varchar2_table(2) := '5045582E464F524D41542E444154452E5049434B45522E44415953222C613D66756E6374696F6E28652C74297B652E666F7245616368282866756E6374696F6E2865297B617065782E6974656D2865292E646179466F726D61747465723D66756E637469';
wwv_flow_imp.g_varchar2_table(3) := '6F6E2865297B636F6E737420613D6E657720446174652865293B6C657420733D7B7D3B72657475726E20742E726F77732E666F7245616368282866756E6374696F6E2865297B636F6E737420743D6E6577204461746528652E7374617274292C6F3D6E65';
wwv_flow_imp.g_varchar2_table(4) := '77204461746528652E656E64293B613E3D742626613C3D6F262628733D7B64697361626C65643A313D3D3D652E64697361626C65642C636C6173733A652E636C6173732C746F6F6C7469703A652E746F6F6C7469707D297D29292C737D2C617065782E69';
wwv_flow_imp.g_varchar2_table(5) := '74656D2865292E7265667265736828297D29297D2C733D66756E6374696F6E28732C6F2C722C6E2C692C63297B617065782E7365727665722E706C7567696E286F2C7B706167654974656D733A727D2C7B737563636573733A66756E6374696F6E286F29';
wwv_flow_imp.g_varchar2_table(6) := '7B696628617065782E64656275672E696E666F28652C6F292C61286E2C6F292C692626617065782E73746F726167652E6861734C6F63616C53746F72616765537570706F72742829297472797B617065782E73746F726167652E67657453636F70656453';
wwv_flow_imp.g_varchar2_table(7) := '657373696F6E53746F72616765287B7072656669783A747D292E7365744974656D28632C4A534F4E2E737472696E67696679286F29297D63617463682874297B617065782E64656275672E6572726F7228652C2243616E6E6F6E74207772697465206461';
wwv_flow_imp.g_varchar2_table(8) := '746120696E746F2073657373696F6E2073746F726167652028636C69656E742073696465206361636865292E222C74297D617065782E64612E726573756D6528732E726573756D6543616C6C6261636B2C2131297D2C6572726F723A66756E6374696F6E';
wwv_flow_imp.g_varchar2_table(9) := '28652C742C61297B617065782E64612E68616E646C65416A61784572726F727328652C742C612C732E726573756D6543616C6C6261636B297D2C64617461547970653A226A736F6E227D297D3B72657475726E7B696E697469616C697A653A66756E6374';
wwv_flow_imp.g_varchar2_table(10) := '696F6E286F2C722C6E2C692C63297B636F6E737420703D6F2E616374696F6E2E6166666563746564456C656D656E74732E73706C697428222C22293B6966286929696628617065782E73746F726167652E6861734C6F63616C53746F7261676553757070';
wwv_flow_imp.g_varchar2_table(11) := '6F72742829297B636F6E737420653D617065782E73746F726167652E67657453636F70656453657373696F6E53746F72616765287B7072656669783A747D292E6765744974656D2863293B653F286128702C4A534F4E2E7061727365286529292C617065';
wwv_flow_imp.g_varchar2_table(12) := '782E64612E726573756D65286F2E726573756D6543616C6C6261636B2C213129293A73286F2C722C6E2C702C692C63297D656C736520617065782E64656275672E7761726E28652C22596F75722042726F7773657220646F6573206E6F7420737570706F';
wwv_flow_imp.g_varchar2_table(13) := '72742073657373696F6E2073746F726167652028636C69656E742073696465206361636865292E22292C73286F2C722C6E2C70293B656C73652073286F2C722C6E2C70297D7D7D28293B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(762682137437057691)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_file_name=>'js/script.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6E73742061706578446174655069636B6572446179466F726D6174746572203D202866756E6374696F6E202829207B0D0A202020202275736520737472696374223B0D0A20202020636F6E73742066656174757265203D20224150455820666F726D';
wwv_flow_imp.g_varchar2_table(2) := '61742044617465205069636B65722044617973223B0D0A20202020636F6E737420707265666978203D2022415045582E464F524D41542E444154452E5049434B45522E44415953223B0D0A0D0A20202020636F6E7374207365744974656D46756E637469';
wwv_flow_imp.g_varchar2_table(3) := '6F6E203D2066756E6374696F6E20287041666665637465644974656D732C20704461746129207B0D0A20202020202020202F2F2068616E646C6520616C6C206166666563746564206974656D730D0A20202020202020207041666665637465644974656D';
wwv_flow_imp.g_varchar2_table(4) := '732E666F72456163682866756E6374696F6E2028656C656D656E7429207B0D0A2020202020202020202020202F2F2073657420646179466F726D61747465722066756E6374696F6E0D0A202020202020202020202020617065782E6974656D28656C656D';
wwv_flow_imp.g_varchar2_table(5) := '656E74292E646179466F726D6174746572203D2066756E6374696F6E20287044617929207B0D0A20202020202020202020202020202020636F6E737420646179203D206E657720446174652870446179293B0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(6) := '6C65742072657475726E4A534F4E203D207B7D3B0D0A2020202020202020202020202020202070446174612E726F77732E666F72456163682866756E6374696F6E2028656C656D656E7429207B0D0A202020202020202020202020202020202020202063';
wwv_flow_imp.g_varchar2_table(7) := '6F6E7374207374617274203D206E6577204461746528656C656D656E742E7374617274292C0D0A202020202020202020202020202020202020202020202020656E64203D206E6577204461746528656C656D656E742E656E64293B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(8) := '2020202020202020202020202069662028646179203E3D20737461727420262620646179203C3D20656E6429207B0D0A20202020202020202020202020202020202020202020202072657475726E4A534F4E203D207B0D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(9) := '2020202020202020202020202020202064697361626C65643A20656C656D656E742E64697361626C6564203D3D3D2031203F2074727565203A2066616C73652C0D0A20202020202020202020202020202020202020202020202020202020636C6173733A';
wwv_flow_imp.g_varchar2_table(10) := '20656C656D656E742E636C6173732C0D0A20202020202020202020202020202020202020202020202020202020746F6F6C7469703A20656C656D656E742E746F6F6C7469700D0A2020202020202020202020202020202020202020202020207D3B0D0A20';
wwv_flow_imp.g_varchar2_table(11) := '202020202020202020202020202020202020202020202072657475726E3B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A2020202020202020202020202020202072657475726E2072';
wwv_flow_imp.g_varchar2_table(12) := '657475726E4A534F4E3B0D0A2020202020202020202020207D0D0A2020202020202020202020202F2F2072656672657368206974656D0D0A202020202020202020202020617065782E6974656D28656C656D656E74292E7265667265736828293B0D0A20';
wwv_flow_imp.g_varchar2_table(13) := '202020202020207D293B0D0A202020207D3B0D0A0D0A20202020636F6E7374206C6F616444617461203D2066756E6374696F6E202870546869732C2070414A415849442C20704974656D325375626D69742C207041666665637465644974656D732C2070';
wwv_flow_imp.g_varchar2_table(14) := '43616368652C20704361636865494429207B0D0A20202020202020202F2F206D616B6520616A61782063616C6C20746F2064620D0A2020202020202020617065782E7365727665722E706C7567696E280D0A20202020202020202020202070414A415849';
wwv_flow_imp.g_varchar2_table(15) := '442C207B0D0A202020202020202020202020706167654974656D733A20704974656D325375626D69740D0A20202020202020207D2C207B0D0A202020202020202020202020737563636573733A2066756E6374696F6E2028704461746129207B0D0A2020';
wwv_flow_imp.g_varchar2_table(16) := '2020202020202020202020202020617065782E64656275672E696E666F28666561747572652C207044617461293B0D0A202020202020202020202020202020207365744974656D46756E6374696F6E287041666665637465644974656D732C2070446174';
wwv_flow_imp.g_varchar2_table(17) := '61293B0D0A202020202020202020202020202020202F2F2073746F726520696E2073657373696F6E2073746F7261676520696620636C69656E74207369646520636163686520697320617661696C61626C650D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(18) := '6966202870436163686520262620617065782E73746F726167652E6861734C6F63616C53746F72616765537570706F7274282929207B0D0A2020202020202020202020202020202020202020747279207B0D0A2020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(19) := '20202020202020636F6E7374206C53746F72616765203D20617065782E73746F726167652E67657453636F70656453657373696F6E53746F72616765287B207072656669783A20707265666978207D293B0D0A2020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(20) := '202020202020206C53746F726167652E7365744974656D2870436163686549442C204A534F4E2E737472696E6769667928704461746129293B0D0A20202020202020202020202020202020202020207D20636174636820286529207B0D0A202020202020';
wwv_flow_imp.g_varchar2_table(21) := '202020202020202020202020202020202020617065782E64656275672E6572726F7228666561747572652C202243616E6E6F6E74207772697465206461746120696E746F2073657373696F6E2073746F726167652028636C69656E742073696465206361';
wwv_flow_imp.g_varchar2_table(22) := '636865292E222C2065293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020617065782E64612E726573756D652870546869732E726573756D654361';
wwv_flow_imp.g_varchar2_table(23) := '6C6C6261636B2C2066616C7365293B0D0A2020202020202020202020207D2C0D0A2020202020202020202020206572726F723A2066756E6374696F6E2028706A715848522C2070546578745374617475732C20704572726F725468726F776E29207B0D0A';
wwv_flow_imp.g_varchar2_table(24) := '20202020202020202020202020202020617065782E64612E68616E646C65416A61784572726F727328706A715848522C2070546578745374617475732C20704572726F725468726F776E2C2070546869732E726573756D6543616C6C6261636B293B0D0A';
wwv_flow_imp.g_varchar2_table(25) := '2020202020202020202020207D2C0D0A20202020202020202020202064617461547970653A20226A736F6E220D0A20202020202020207D293B0D0A202020207D3B0D0A0D0A2020202072657475726E207B0D0A2020202020202020696E697469616C697A';
wwv_flow_imp.g_varchar2_table(26) := '653A2066756E6374696F6E202870546869732C2070414A415849442C20704974656D325375626D69742C207043616368652C20704361636865494429207B0D0A202020202020202020202020636F6E73742061666665637465644974656D73203D207054';
wwv_flow_imp.g_varchar2_table(27) := '6869732E616374696F6E2E6166666563746564456C656D656E74732E73706C697428222C22293B0D0A0D0A2020202020202020202020202F2F20697320636163686520697320757365642074727920746F20726561642076616C75652066726F6D207365';
wwv_flow_imp.g_varchar2_table(28) := '7373696F6E2073746F726167650D0A2020202020202020202020206966202870436163686529207B0D0A202020202020202020202020202020202F2F20636865636B2069662062726F7773657220646F657320737570706F72742073657373696F6E2073';
wwv_flow_imp.g_varchar2_table(29) := '746F726167650D0A2020202020202020202020202020202069662028617065782E73746F726167652E6861734C6F63616C53746F72616765537570706F7274282929207B0D0A2020202020202020202020202020202020202020636F6E7374206C53746F';
wwv_flow_imp.g_varchar2_table(30) := '72616765203D20617065782E73746F726167652E67657453636F70656453657373696F6E53746F72616765287B207072656669783A20707265666978207D293B0D0A2020202020202020202020202020202020202020636F6E73742076616C7565203D20';
wwv_flow_imp.g_varchar2_table(31) := '6C53746F726167652E6765744974656D287043616368654944293B0D0A0D0A20202020202020202020202020202020202020206966202876616C756529207B0D0A2020202020202020202020202020202020202020202020207365744974656D46756E63';
wwv_flow_imp.g_varchar2_table(32) := '74696F6E2861666665637465644974656D732C204A534F4E2E70617273652876616C756529293B0D0A202020202020202020202020202020202020202020202020617065782E64612E726573756D652870546869732E726573756D6543616C6C6261636B';
wwv_flow_imp.g_varchar2_table(33) := '2C2066616C7365293B0D0A20202020202020202020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202020202020202020202F2F6C6F61642064617461206265636175736520636163686520697320656D7074790D';
wwv_flow_imp.g_varchar2_table(34) := '0A2020202020202020202020202020202020202020202020206C6F6164446174612870546869732C2070414A415849442C20704974656D325375626D69742C2061666665637465644974656D732C207043616368652C207043616368654944293B0D0A20';
wwv_flow_imp.g_varchar2_table(35) := '202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202020202020617065782E64656275672E7761726E28666561747572652C2022596F75722042';
wwv_flow_imp.g_varchar2_table(36) := '726F7773657220646F6573206E6F7420737570706F72742073657373696F6E2073746F726167652028636C69656E742073696465206361636865292E22293B0D0A20202020202020202020202020202020202020202F2F6C6F6164206461746120626563';
wwv_flow_imp.g_varchar2_table(37) := '617573652063616368652063616E6E6F74206265206C6F61642066726F6D2073657373696F6E2073746F726167650D0A20202020202020202020202020202020202020206C6F6164446174612870546869732C2070414A415849442C20704974656D3253';
wwv_flow_imp.g_varchar2_table(38) := '75626D69742C2061666665637465644974656D73293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020206C6F6164446174612870546869732C2070414A';
wwv_flow_imp.g_varchar2_table(39) := '415849442C20704974656D325375626D69742C2061666665637465644974656D73293B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A202020207D3B0D0A7D2928293B0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(1374799071654714840)
,p_plugin_id=>wwv_flow_imp.id(1375194386962821909)
,p_file_name=>'js/script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
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
