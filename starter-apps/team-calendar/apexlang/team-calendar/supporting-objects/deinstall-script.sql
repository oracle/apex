drop table eba_ca_event_types      cascade constraints;
drop table eba_ca_series           cascade constraints;
drop table eba_ca_events           cascade constraints;
drop table eba_ca_email_groups     cascade constraints;
drop table eba_ca_email_group_mbrs cascade constraints;
drop table eba_ca_timeframes       cascade constraints;
drop table eba_ca_admins           cascade constraints;
drop table eba_ca_access_levels    cascade constraints purge;
drop table eba_ca_error_lookup     cascade constraints purge;
drop table eba_ca_preferences      cascade constraints;
drop table eba_ca_users            cascade constraints purge;
drop table eba_ca_notifications    cascade constraints purge;
drop table eba_ca_tz_pref          cascade constraints purge;
drop table eba_ca_HISTORY          cascade constraints purge;
drop table eba_ca_tags             cascade constraints;
drop table eba_ca_tags_type_sum    cascade constraints;
drop table eba_ca_tags_sum         cascade constraints;
drop table eba_ca_FILES            cascade constraints;
drop table eba_ca_NOTES            cascade constraints;
drop table eba_ca_color_prefs      cascade constraints;
drop table eba_ca_errors           cascade constraints;
drop table eba_ca_calendars        cascade constraints;

drop package eba_ca_api;
drop package eba_ca;
drop package eba_ca_fw;
drop package eba_ca_sample_data;

drop sequence eba_ca_seq;

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'group-cal-logo2.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

