begin
    --FSP_COUNTRIES: 249/10000 rows exported, APEX$DATA$PKG/FSP_COUNTRIES$663609
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_COUNTRIES', p_delete_after_install => false );
    --FSP_COST_CENTERS: 10/10000 rows exported, APEX$DATA$PKG/FSP_COST_CENTERS$188552
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_COST_CENTERS', p_delete_after_install => false );
    --FSP_GROUPS: 8/10000 rows exported, APEX$DATA$PKG/FSP_GROUPS$17017
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_GROUPS', p_delete_after_install => false );
    --FSP_SKILLS: 15/10000 rows exported, APEX$DATA$PKG/FSP_SKILLS$950790
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_SKILLS', p_delete_after_install => false );
    --FSP_LOCATIONS: 12/10000 rows exported, APEX$DATA$PKG/FSP_LOCATIONS$280096
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_LOCATIONS', p_delete_after_install => false );
    --FSP_EMPLOYEES: 120/10000 rows exported, APEX$DATA$PKG/FSP_EMPLOYEES$534467
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_EMPLOYEES', p_delete_after_install => false );
    --FSP_EMPLOYEE_EVENTS: 360/10000 rows exported, APEX$DATA$PKG/FSP_EMPLOYEE_EVENTS$50463
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_EMPLOYEE_EVENTS', p_delete_after_install => false );
    --FSP_EMPLOYEE_GROUPS: 264/10000 rows exported, APEX$DATA$PKG/FSP_EMPLOYEE_GROUPS$182398
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_EMPLOYEE_GROUPS', p_delete_after_install => false );
    --FSP_EMPLOYEE_SKILLS: 360/10000 rows exported, APEX$DATA$PKG/FSP_EMPLOYEE_SKILLS$908337
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_EMPLOYEE_SKILLS', p_delete_after_install => false );
    --FSP_PATTERNS: 10/10000 rows exported, APEX$DATA$PKG/FSP_PATTERNS$674302
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_PATTERNS', p_delete_after_install => false );
    --FSP_TASKS: 100/10000 rows exported, APEX$DATA$PKG/FSP_TASKS$682287
    apex_data_install.load_supporting_object_data(p_table_name => 'FSP_TASKS', p_delete_after_install => false );
end;