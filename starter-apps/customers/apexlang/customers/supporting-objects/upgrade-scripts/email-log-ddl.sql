create table eba_cust_email_log (
    id                 number,
    row_version_number number,
    email_first_to     varchar2(255),
    email_to           varchar2(4000),
    email_from         varchar2(255),
    body_size          number,
    customer_id        number,
    email_type         varchar2(30),
    --
    created            timestamp (6) with time zone,
    created_by         varchar2(255),
    updated            timestamp (6) with time zone,
    updated_by         varchar2(255),
    primary key (id) using index enable
)
/

create index eba_cust_email_log_n1 on eba_cust_email_log (email_first_to)
/

create index eba_cust_email_log_n2 on eba_cust_email_log (email_from)
/

create or replace trigger  biu_eba_cust_email_log
    before insert or update on eba_cust_email_log
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
    :new.email_first_to := lower(:new.email_first_to);
    :new.email_from := lower(:new.email_from);
end;
/

alter trigger  biu_eba_cust_email_log enable
/