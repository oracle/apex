create table sp_areas (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_areas_id_pk primary key,
    area                           varchar2(50 char) not null,
    description                    varchar2(4000 char),
    owner_id                       number
                                   constraint sp_areas_owner_fk
                                   references sp_team_members on delete cascade,
    --
    status_scale varchar2(1)       check (status_scale in ('A','B','C','D','E','F','G')),
    hidden_by_default_yn           varchar2(1 char),
    tags                           varchar2(4000 char),
    --
    image                          blob,
    image_name                     varchar2(512 char),
    image_mimetype                 varchar2(512 char),
    image_last_updated             date,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index sp_areas_i1 on sp_areas (owner_id);
create unique index sp_areas_u1 on sp_areas (area);