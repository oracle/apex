create table EBA_CA_notifications (
    id                        number            not null
                                                constraint EBA_CA_note_pk
                                                primary key,
    row_version_number        number,
    notification_name         varchar2(255)     not null,
    notification_description  varchar2(4000)    null,
    --
    notification_type         varchar2(30)      not null
                                                constraint EBA_CA_note_tp_cc
                                                check (notification_type in ('RED','YELLOW')),
    --
    display_sequence          number,
    display_from              timestamp with time zone,
    display_until             timestamp with time zone,
    --
    created_by                varchar2(255)       not null,
    created                   timestamp with time zone,
    updated_by                varchar2(255)       not null,
    updated                   timestamp with time zone )
/
create unique index EBA_CA_note_uk on EBA_CA_notifications (notification_name);
/

create or replace trigger EBA_CA_note_biu
before insert or update on EBA_CA_notifications
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated    := current_timestamp;
    end if;
    if :new.notification_type is null then
       :new.notification_type := 'MANUAL';
    end if;
    if :new.display_sequence is null then
       :new.display_sequence := 10;
    end if;
end;
/
show errors

alter trigger EBA_CA_note_biu enable;
/