create table SP_GROUP_MEMBERS (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint SP_GROUP_MEMBERS_pk primary key,
    --
    group_id                       number not null
                                   constraint SP_GROUPS_FK
                                   references SP_GROUPS (id),
    team_member_id                 number not null
                                   constraint sp_team_group_members_tmfk
                                   references sp_team_members(id),
    assignment                     varchar2(255 char),
    full_time_yn                   varchar2(1 char),
    group_leader_yn                varchar2(1 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index SP_GROUP_MEMBERS_i1 on SP_GROUP_MEMBERS (group_id);
create unique index SP_GROUP_MEMBERS_u1 on SP_GROUP_MEMBERS (team_member_id, group_id);