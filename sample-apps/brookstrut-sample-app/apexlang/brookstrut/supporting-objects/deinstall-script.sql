drop table OOW_DEMO_ITEMS cascade constraints;
drop table OOW_DEMO_REGIONS cascade constraints;
drop table OOW_DEMO_STORES cascade constraints;
drop table OOW_DEMO_STORE_PRODUCTS cascade constraints;
drop table OOW_DEMO_PREFERENCES cascade constraints;
drop table OOW_DEMO_SALES_HISTORY cascade constraints;
drop table oow_demo_hist_gen_log cascade constraints;
drop table oow_demo_event_log cascade constraints;
drop package oow_demo_gen_data_pkg;
drop package OOW_DEMO_EVENT_PKG;
drop package oow_demo_timing;
drop sequence oow_demo_seq;
---

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'app_icon.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');

    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'blue_marker.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');

    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'red_marker.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');

    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'excanvas.min.js',
        p_mode     => 'REMOVE',
        p_type     => 'STATIC');

    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'jquery.flot.min.js',
        p_mode     => 'REMOVE',
        p_type     => 'STATIC');

    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'jquery.flot.resize.js',
        p_mode     => 'REMOVE',
        p_type     => 'STATIC');

    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'jquery.flot.selection.js',
        p_mode     => 'REMOVE',
        p_type     => 'STATIC');
end;
/

drop package oow_demo_sample_data;

