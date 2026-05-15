-- ===========================================================================
--  Sequence Definitions
-- ===========================================================================

begin
    execute immediate '
        create sequence dept_seq
            minvalue 1
            maxvalue 9999999999999999999999999999
            increment by 1
            start with 50
            cache 20
            noorder
            nocycle
            nokeep
            noscale
            global
    ';
exception
    when others then
        if sqlcode = -955 then
            null; 
        else
            raise;
        end if;
end;
/

begin
    execute immediate '
        create sequence eba_demo_emp_seq
            minvalue 1
            maxvalue 9999999999999999999999999999
            increment by 1
            start with 21
            cache 20
            noorder
            nocycle
            nokeep
            noscale
            global
    ';
exception
    when others then
        if sqlcode = -955 then
            null; 
        else
            raise;
        end if;
end;
/
