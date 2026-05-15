declare
    l_tables_to_drop apex_t_varchar2 := apex_t_varchar2('eba_demo_appr_laptop_requests',
                                                        'eba_demo_appr_laptop_stock',
                                                        'eba_demo_appr_sal_history',
                                                        'eba_demo_appr_emp',
                                                        'eba_demo_appr_dept',
                                                        'eba_demo_appr_approvers',
                                                        'eba_demo_appr_appraisals',
                                                        'eba_demo_appr_vacation');

begin
    for j in 1..l_tables_to_drop.count loop
        begin
            execute immediate apex_string.format('drop table %s cascade constraints',l_tables_to_drop(j));
        exception
            when others then
                if sqlcode != -942 then
                    raise;
                end if;
        end;
    end loop;
end;   
/