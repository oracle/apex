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
    hash_tag_reference             varchar2(30 char),
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
    --
    app_role                       varchar2(255 char), -- derived
    --
    competencies                   varchar2(4000 char),
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
create unique index sp_team_members_u2 on sp_team_members (hash_tag_reference);
create unique index sp_team_members_u4 on sp_team_members (screen_name);
create index sp_team_members_i1 on sp_team_members (country_id);
