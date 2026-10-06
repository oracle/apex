create table sp_application_notifications (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_application_notifications_pk primary key,
    notification_name              varchar2(128 char)   not null,
    notification_description       varchar2(4000 char),
    is_active_yn                   varchar2(1 char)    not null,
    required_user_tag              varchar2(30 char),
    from_date                      date,
    to_date                        date,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index sp_application_notifications_u1 on sp_application_notifications(notification_name);


create or replace trigger sp_application_notifications_biu
    before insert or update
    on sp_application_notifications
    for each row
begin
    if inserting then
        :new.created    := nvl(:new.created,sysdate);
        :new.created_by := nvl(:new.created_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
        :new.updated    := nvl(:new.updated,sysdate);
        :new.updated_by := nvl(:new.updated_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
    elsif updating then
        :new.updated    := sysdate;
        :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
end sp_application_notifications_biu;
/