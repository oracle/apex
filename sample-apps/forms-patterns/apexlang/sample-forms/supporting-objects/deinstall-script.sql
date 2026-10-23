-- Remove only this application's tables, children before parents.
begin
    for t in (select column_value table_name
                from table(sys.odcivarchar2list(
                    'SFM_EXPENSE_RECEIPTS','SFM_EXPENSE_REPORT_LINES',
                    'SFM_EXPENSE_REPORTS','SFM_EXPENSE_CATEGORIES'))) loop
        begin
            execute immediate 'drop table ' || t.table_name || ' cascade constraints purge';
        exception
            when others then
                if sqlcode != -942 then
                    raise;
                end if;
        end;
    end loop;
end;
/
