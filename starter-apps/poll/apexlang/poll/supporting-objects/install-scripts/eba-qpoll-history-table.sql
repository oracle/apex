create table eba_qpoll_history (
    id                  number,
    row_version_number  number,
    component_id        number,
    poll_id             number,
    component_rowkey    varchar2(30),
    table_name          varchar2(60) not null enable,
    column_name         varchar2(60) not null enable,
    old_value           varchar2(4000),
    new_value           varchar2(4000),
    change_date         timestamp (6) with time zone,
    changed_by          varchar2(255),
    constraint eba_qpoll_history_pk primary key (id) enable
)
/

create index eba_qpoll_history_i1 on eba_qpoll_history (component_id)
/

create or replace trigger eba_qpoll_history_biu
    before insert or update on eba_qpoll_history
    for each row
begin
    if :new.id is null then
       :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.change_date := current_timestamp;
        :new.changed_by := nvl(wwv_flow.g_user,user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := :new.row_version_number + 1;
    end if;
end;
/
alter trigger eba_qpoll_history_biu enable
/