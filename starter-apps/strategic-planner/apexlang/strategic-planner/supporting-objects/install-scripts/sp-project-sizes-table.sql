

create table sp_project_sizes (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_size_id_pk primary key,
    --
    project_size                   varchar2(30 char) not null,
    size_description               varchar2(100 char) not null,
    effort_days                    number not null,
    include_yn                     varchar2(1 char) not null,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index sp_project_sizes_u1 on sp_project_sizes (project_size);
create unique index sp_project_sizes_u2 on sp_project_sizes(EFFORT_DAYS);
