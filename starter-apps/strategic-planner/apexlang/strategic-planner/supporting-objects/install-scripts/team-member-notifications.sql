create table sp_team_member_notifications (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_team_member_notifications_pk primary key,
    --
    team_member_id                 number  not null
                                   constraint sp_team_member_notifications_tm_fk
                                   references sp_team_members on delete cascade,
    notification_pref              varchar2(255),
    title                          varchar2(255)  not null,
    email_contents                 varchar2(4000 char),
    notification_type              varchar2(30 char),
    project_id                     number
                                   constraint sp_team_member_notifications_project_fk
                                   references sp_projects on delete cascade,
    task_id                        number 
                                   constraint sp_team_member_notifications_task_fk
                                   references sp_tasks on delete cascade,
    release_id                     number 
                                   constraint sp_team_member_notifications_release_fk
                                   references sp_release_trains on delete cascade,
    initiative_id                  number 
                                   constraint sp_team_member_notif_initiative_fk
                                   references sp_initiatives on delete cascade,
    dismissed_yn                   varchar2(1 char)  default on null 'N'
                                   constraint sp_team_member_notifications_dismissed_cc
                                   check (dismissed_yn in ('Y','N')),
    --
    created                        date  not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);
create index sp_team_member_notifications_i1 on sp_team_member_notifications (team_member_id);
create index sp_team_member_notifications_i2 on sp_team_member_notifications (project_id);
create index sp_team_member_notifications_i3 on sp_team_member_notifications (created);

create or replace trigger sp_team_member_notifications_biu
    before insert or update
    on sp_team_member_notifications
    for each row
declare 
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_team_member_notifications_biu;
/