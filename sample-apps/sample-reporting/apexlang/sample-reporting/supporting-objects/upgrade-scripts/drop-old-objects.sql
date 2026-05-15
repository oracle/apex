-- remove old packages
begin
    for c1 in ( select object_name
                from user_objects
                where object_type = 'PACKAGE'
                    and object_name in ( 'EBA_DEMO_IR_FILTER_FW', 'EBA_DEMO_IR_FILTER2_FW' ) )
    loop
        execute immediate 'drop package '||c1.object_name;
    end loop;
exception
    -- Hide the error if the package cannot be dropped due to bug #21770724
    when others then null;
end;
/

-- remove old types
begin
    for c1 in ( select object_name
                from user_objects
                where object_type = 'TYPE'
                    and object_name in ('EBA_DEMO_IR_ACTIVE_FILTERS_TBL', 'EBA_DEMO_IR_FILTER_COL_TBL') )
    loop
        execute immediate 'drop type '||c1.object_name;
    end loop;
exception
    -- Hide the error if the package cannot be dropped due to bug #21770724
    when others then null;
end;
/

-- remove old types
begin
    for c1 in ( select object_name
                from user_objects
                where object_type = 'TYPE'
                    and object_name in ('EBA_DEMO_IR_FILTER_COLUMN_T', 'EBA_DEMO_IR_ACTIVE_FILTERS_T') )
    loop
        execute immediate 'drop type '||c1.object_name;
    end loop;
exception
    -- Hide the error if the package cannot be dropped due to bug #21770724
    when others then null;
end;
/
