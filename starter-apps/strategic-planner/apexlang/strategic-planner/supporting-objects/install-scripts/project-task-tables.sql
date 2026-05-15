-- recursive but allowed only one level deep via application
create table sp_task_types (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_types_pk primary key,
    --
    task_type                      varchar2(100 char) not null,
    static_id                      varchar2(30 char),
    description                    varchar2(4000 char),
    display_seq                    number,
    include_yn                     varchar2(1 char) 
                                   default on null 'Y'
                                   constraint sp_task_types_include_ck 
                                   check (include_yn in ('Y','N')),
    task_name_req_yn               varchar2(1 char) 
                                   default on null 'N'
                                   constraint sp_task_types_task_name_req_ck 
                                   check (task_name_req_yn in ('Y','N')),
    parent_type_id                 number
                                   constraint sp_tasks_type_parent_fk
                                   references sp_task_types on delete set null,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_task_types_u1 on sp_task_types (parent_type_id,task_type);
create unique index sp_task_types_u2 on sp_task_types (static_id);


create table sp_initiative_default_tasks (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_ini_def_tasks_pk primary key,
    --
    initiative_id                  number  not null
                                   constraint sp_ini_def_tasks_ini_fk
                                   references sp_initiatives on delete cascade,
    type_id                        number  not null
                                   constraint sp_ini_def_tasks_task_fk
                                   references sp_task_types on delete cascade,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_initiative_default_tasks_u1 on sp_initiative_default_tasks (initiative_id, type_id);


create table sp_task_statuses (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_statuses_pk primary key,
    --
    task_type_id                   number not null
                                   constraint sp_task_statuses_type_fk
                                   references sp_task_types,
    status                         varchar2(100 char) not null,
    static_id                      varchar2(30 char)  not null,
    display_seq                    number,
    include_yn                     varchar2(1 char) 
                                   default on null 'Y'
                                   constraint sp_task_statuses_include_ck 
                                   check (include_yn in ('Y','N')),
    is_default_yn                  varchar2(1 char) 
                                   default on null 'N'
                                   constraint sp_task_statuses_default_ck 
                                   check (is_default_yn in ('Y','N')),
    indicates_complete_yn          varchar2(1 char) 
                                   default on null 'N'
                                   constraint sp_task_statuses_ind_complete_ck 
                                   check (indicates_complete_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_task_statuses_u1 on sp_task_statuses (task_type_id,status);
create unique index sp_task_statuses_u2 on sp_task_statuses (task_type_id,static_id);


create table sp_tasks (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_tasks_id_pk primary key,
    project_id                     number not null
                                   constraint sp_tasks_project_fk
                                   references sp_projects on delete cascade,
    --
    task                           varchar2(255 char),
    task_type_id                   number not null
                                   constraint sp_tasks_type_fk
                                   references sp_task_types,
    task_sub_type_id               number
                                   constraint sp_tasks_sub_type_fk
                                   references sp_task_types,
    owner_id                       number
                                   constraint sp_tasks_owner_fk
                                   references sp_team_members,
    start_date                     date,
    target_complete                date,   
    status_id                      number not null
                                   constraint sp_tasks_status_fk
                                   references sp_task_statuses,   
    status_last_changed_on         date,         
    description                    varchar2(4000 char),
    tags                           varchar2(4000 char),
    -- impact currently just used for Reviews
    impact                         varchar2(30 char)  
                                   constraint sp_task_impact_cc
                                   check (impact in ('Not Identified','None','Low','Medium','High')),
    --
    -- Standard auditing columns
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_tasks_i1 on sp_tasks (project_id);
create index sp_tasks_i2 on sp_tasks (task_type_id);
create index sp_tasks_i3 on sp_tasks (task_sub_type_id);
create index sp_tasks_i4 on sp_tasks (owner_id);

create table sp_task_history (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_history_pk primary key,
    task_id                        number  not null,
    --
    attribute_column               varchar2(255 char) not null, 
    change_type                    varchar2(30 char)  not null
                                   constraint sp_task_history_type_cc 
                                   check (change_type in ('CREATE','UPDATE','DELETE')),
    old_value                      varchar2(4000 char),
    new_value                      varchar2(4000 char),
    old_value_clob                 clob,
    new_value_clob                 clob,
    --
    changed_on                     date  not null,
    changed_by                     varchar2(255 char)
);

create index sp_task_history_i1 on sp_task_history (task_id);
create index sp_task_history_i2 on sp_task_history (changed_by);


create table sp_task_links (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_links_pk primary key,
    task_id                        number  not null
                                   constraint sp_task_links_fk
                                   references sp_tasks on delete cascade,
    --
    link_name                      varchar2(255 char)   not null,
    link_url                       varchar2(4000 char) not null,
    important_yn                   varchar2(1 char) default on null 'N'
                                   constraint sp_task_links_imp_ck
                                   check (important_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_task_links_i1 on sp_task_links (task_id);
create index sp_task_links_i2 on sp_task_links (updated);


create table sp_task_documents (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_documents_pk primary key,
    task_id                        number  not null
                                   constraint sp_task_document_fk
                                   references sp_tasks on delete cascade,
    --
    document_blob                  blob,
    document_filename              varchar2(512 char),
    document_mimetype              varchar2(512 char),
    document_charset               varchar2(512 char),
    document_lastupd               date,
    --
    important_yn                   varchar2(1 char),
    doc_description                varchar2(4000 char),
    --
    tags                           varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_task_documents_i1 on sp_task_documents (task_id);
create index sp_task_documents_i2 on sp_task_documents (updated);


create table sp_task_comments (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_comments_pk primary key,
    task_id                        number  not null
                                   constraint sp_task_comments_task_fk
                                   references sp_tasks on delete cascade,
    --
    body                           clob,
    body_html                      clob,
    body_no_images                 clob,
    image_ref_id                   number,
    author_id                      number,
    private_yn                     varchar2(1 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_task_comments_i1 on sp_task_comments (task_id);
create index sp_task_comments_i2 on sp_task_comments (author_id);
create index sp_task_comments_i3 on sp_task_comments (image_ref_id);