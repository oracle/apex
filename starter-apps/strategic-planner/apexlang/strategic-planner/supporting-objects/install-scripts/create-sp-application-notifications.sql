create table SP_APPLICATION_NOTIFICATIONS (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint SP_APPLICATION_NOTIFICATIONS_PK primary key,
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

create unique index SP_APPLICATION_NOTIFICATIONS_U1 on SP_APPLICATION_NOTIFICATIONS(notification_name);


create or replace trigger SP_APPLICATION_NOTIFICATIONS_biu
    before insert or update
    on SP_APPLICATION_NOTIFICATIONS
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end SP_APPLICATION_NOTIFICATIONS_biu;
/