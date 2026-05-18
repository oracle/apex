create table sp_activities (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_activities_pk 
                                   primary key,
    --
    activity_type_id               number 
                                   constraint sp_activities_type_fk
                                   references sp_activity_types (id),
    project_id                     number 
                                   constraint sp_activities_project_fk
                                   references sp_projects (id),
    team_member_id                 number
                                   constraint sp_activities_person_fk
                                   references sp_team_members (id),
    initiative_id                  number
                                   constraint sp_activities_initiative_fk
                                   references sp_initiatives (id),
    --
    start_date                     date not null,
    end_date                       date not null,
    comments                       varchar2(4000 char),
    ticket_number                  varchar2(50 char),
    url                            varchar2(500 char),
    activity_status                varchar2(30 char),
    --
    tags                           varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index sp_activities_i1 on sp_activities (activity_type_id);
create index sp_activities_i2 on sp_activities (project_id);
create index sp_activities_i3 on sp_activities (team_member_id);
create index sp_activities_i4 on sp_activities (end_date);
create index sp_activities_i5 on sp_activities (start_date);
create index sp_activities_i6 on sp_activities (initiative_id);