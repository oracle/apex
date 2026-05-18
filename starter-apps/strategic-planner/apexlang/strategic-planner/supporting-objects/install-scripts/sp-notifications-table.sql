create table SP_NOTIFICATIONS (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_notifications_id_pk primary key,

    name                           varchar2(150 char)  not null,
    static_id                      varchar2(30 char)   not null,
    description                    varchar2(4000 char) not null,
    is_active_yn                   varchar2(1 char)    not null,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index sp_notifications_u1 on sp_notifications(name);


create or replace trigger sp_notifications_biu
    before insert or update
    on sp_notifications
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.static_id := upper(:new.static_id);
end sp_notifications_biu;
/
