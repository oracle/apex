create table sp_team_members (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_team_members_id_pk primary key,
    first_name                     varchar2(255 char) not null,
    last_name                      varchar2(255 char) not null,
    initials                       varchar2(3 char)   not null,
    screen_name                    varchar2(50 char),
    email                          varchar2(255 char) not null,
    email_domain                   varchar2(255 char),
    notification_pref              varchar2(255 char), -- colon separated list of APP, EMAIL, TEXT, SLACK
    comment_notif_pref             varchar2(255 char), -- colon separated list of APP, EMAIL, TEXT, SLACK
    tags                           varchar2(4000 char),
    --
    photo                          blob,
    photo_filename                 varchar2(512 char),
    photo_mimetype                 varchar2(512 char),
    photo_charset                  varchar2(512 char),
    photo_lastupd                  date,
    --
    is_current_yn                  varchar2(1 char) constraint sp_team_members_is_current_ck
                                   check (is_current_yn in ('Y','N')),
    auto_created_yn                varchar2(1 char) constraint sp_team_members_auto_cr_ck
                                   check (auto_created_yn in ('Y','N')),
    location                       varchar2(500 char),
    country_id                     number,
    timezone                       varchar2(255 char),
    hp_my_activities_yn            varchar2(1 char) default on null 'Y',
    hp_my_initiatives_yn           varchar2(1 char) default on null 'Y',
    hp_my_projects_yn              varchar2(1 char) default on null 'Y',
    hp_my_fav_projects_yn          varchar2(1 char) default on null 'N',
    hp_my_open_releases_yn         varchar2(1 char) default on null 'Y',
    --
    app_role                       varchar2(255 char), -- derived
    --
    competencies                   varchar2(4000 char),
    ooo_summary                    varchar2(4000),
    --
    -- audit columns
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index sp_team_members_u1 on sp_team_members (email);
create unique index sp_team_members_u2 on sp_team_members (screen_name);
create index sp_team_members_i1 on sp_team_members (country_id);

comment on column sp_team_members.hp_my_activities_yn    is 'Identifies if My Activities region will display on home page (contains current and future activities).';
comment on column sp_team_members.hp_my_initiatives_yn   is 'Identifies if My Initiatives region will display on home page (you own the initiative, own a project within, or are a project contributor within).';
comment on column sp_team_members.hp_my_projects_yn      is 'Identifies if My Projects region will display on home page (you own the project or have an active milestone, review or task on that project).';
comment on column sp_team_members.hp_my_fav_projects_yn  is 'Identifies if My Favorite Projects region will display on home page (all projects you have favorited).';
comment on column sp_team_members.hp_my_open_releases_yn is 'Identifies if My Open Releases region will display on home page (you own the release, own a project within, own a task within a project within, or own a project activity within).';
