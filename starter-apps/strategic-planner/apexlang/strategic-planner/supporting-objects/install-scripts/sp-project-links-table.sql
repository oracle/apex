create table sp_project_links (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_links_pk primary key,
    project_id                     number
                                   constraint sp_project_links_proj_fk
                                   references sp_projects on delete cascade,
    --
    link_name                      varchar2(255 char)   not null,
    link_url                       varchar2(4000 char) not null,
    important_yn                   varchar2(1 char) default on null 'N'
                                   constraint sp_project_links_imp_ck
                                   check (important_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_project_links_i1 on sp_project_links (project_id);
create index sp_project_links_i2 on sp_project_links (updated);