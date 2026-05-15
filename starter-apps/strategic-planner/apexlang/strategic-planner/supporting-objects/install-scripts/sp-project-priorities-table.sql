create table sp_project_priorities (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_priority_id_pk primary key,
    priority                       number not null,
    description                    varchar2(40 char) not null,
    --
    is_default_yn                  varchar2(1 char)
                                   constraint sp_is_default_ck 
                                   check (is_default_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;


create unique index sp_project_priorities_u1 on sp_project_priorities (priority);