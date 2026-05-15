DROP TRIGGER "BIU_EBA_DEMO_IR_PROJECTS";

DROP TABLE  "EBA_DEMO_IR_PROJECTS";

DROP PROCEDURE "EBA_DEMO_IR_DATA";

drop table eba_demo_ir_dept;

drop table eba_demo_ir_emp;

drop package EBA_DEMO_IR_PKG;

-- Remove Images

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'reports_ir.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'reports_classic.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'reports_drilldown.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'reports_filter.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/

begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'reports_usecases.jpg',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/
    
begin
    wwv_flow_api.create_or_remove_file( 
        p_location => 'APPLICATION',
        p_name     => 'fs-sprite.png',
        p_mode     => 'REMOVE',
        p_type     => 'IMAGE');
end;
/
