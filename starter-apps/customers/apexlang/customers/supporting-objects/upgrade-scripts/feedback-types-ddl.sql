create table eba_cust_feedback_types
(
    id             number constraint eba_cust_feedback_types_pk not null primary key,
    type           varchar2(30),
    created        timestamp with time zone,
    created_by     varchar2(255),
    updated        timestamp with time zone,
    updated_by     varchar2(255)
);

create or replace trigger eba_cust_feedback_types_biu
    before insert or update 
    on eba_cust_feedback_types
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := NVL(V('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := NVL(V('APP_USER'),user);
end;
/

alter trigger eba_cust_feedback_types_biu enable
/