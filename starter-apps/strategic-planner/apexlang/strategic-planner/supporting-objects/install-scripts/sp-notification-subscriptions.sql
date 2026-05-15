create table sp_notification_subscriptions (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_notification_subscriptions_pk primary key,

    team_member_id                 number not null
                                   constraint sp_notification_sub_tm_fk
                                   references sp_team_members (id)
                                   on delete cascade,
    notification_id                number not null
                                   constraint sp_notification_sub_notif_fk
                                   references sp_notifications (id)
                                   on delete cascade,
    release_id                     number
                                   constraint sp_notification_sub_release_fk
                                   references sp_release_trains (id)
                                   on delete cascade,
    --
    opted_in_yn                    varchar2(1)    not null
                                      constraint sp_notification_sub_opt_in_cc
                                      check (opted_in_yn in ('Y','N')),
    frequency                      varchar2(30)   not null
                                      constraint sp_notification_sub_freq_cc
                                      check (frequency in ('WEEKDAYS','WEEKLY')),
    last_sent                      date,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_notification_subscriptions_u1 on sp_notification_subscriptions (team_member_id, notification_id, nullif(release_id,1));
create index sp_notification_subscriptions_i1 on sp_notification_subscriptions (notification_id);
create index sp_notification_subscriptions_i2 on sp_notification_subscriptions (release_id);

create or replace trigger sp_notification_subscriptions_biu
    before insert or update
    on sp_notification_subscriptions
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_notification_subscriptions_biu;
/