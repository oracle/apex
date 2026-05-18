drop procedure eba_demo_chart_data;

drop table eba_demo_chart_tasks cascade constraints;
drop table eba_demo_chart_projects cascade constraints;
drop table eba_demo_chart_emp cascade constraints;
drop table eba_demo_chart_dept cascade constraints;
drop table eba_demo_chart_population cascade constraints;
drop table eba_demo_chart_stocks cascade constraints;
drop table eba_demo_chart_bball cascade constraints;
drop table eba_demo_chart_orders cascade constraints;
drop table eba_demo_chart_products cascade constraints;
drop table eba_demo_chart_stats cascade constraints;
drop table eba_demo_chart_grades;
drop table eba_demo_chart_samples;
drop table eba_demo_chart_sample_data cascade constraints;
drop table eba_demo_chart_sample_names;

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_candlestick.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_bar.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_combination.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/


begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_gantt.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_gauge.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_map.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_pie.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/


begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'charts_scatter.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/
