create table sp_release_trains (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_trains_id_pk primary key,
    release_train                  varchar2(50 char) not null,
    release_owner_id               number
                                   constraint sp_release_trains_owner_fk
                                   references sp_team_members,
    release                        varchar2(30 char) not null,
    release_target_date            date,
    release_open_date              date,
    --
    release_distribution_url       varchar2(4000 char),
    release_management_url         varchar2(4000 char),
    description                    clob,
    --
    release_open_completed         varchar2(1 char)  default on null 'N'
                                   constraint sp_release_trains_open_ck
                                   check (release_open_completed in ('Y','N')),
    release_completed              varchar2(1 char)  default on null 'N'
                                   constraint sp_release_trains_completed_ck
                                   check (release_completed in ('Y','N')),
    --
    release_type                   varchar2(50 char)
                                   constraint sp_valid_release_type
                                   check (release_type in ('FULL','PATCH')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index sp_release_trains_u1 on sp_release_trains (release_owner_id);