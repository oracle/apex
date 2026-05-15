create table sp_initiative_focus_areas (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_initiative_focus_area_pk primary key,
    --
    initiative_id                  number  not null
                                   constraint sp_initiative_focus_areas_fk
                                   references sp_initiatives 
                                   on delete cascade,
    focus_area                     varchar2(60 char) not null,
    active_yn                      varchar2(1 char)  default on null 'Y'
                                   constraint sp_initiative_fa_active_cc
                                   check (active_yn in ('Y','N')),
    --
    -- control display for kanban
    --
    display_sequence               number,
    --
    --
    --
    development_owner_id           number
                                   constraint sp_dev_focus_area_owner_fk
                                   references sp_team_members (id),
    --
    description                    varchar2(4000 char),
    --
    --
    --
    created                        date  not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_initiative_focus_areas_u1 on sp_initiative_focus_areas (initiative_id, focus_area);

create table sp_init_focus_area_links (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_init_focus_area_links_pk primary key,
    init_focus_area_id             number  not null
                                   constraint sp_init_focus_area_links_ifa_fk
                                   references sp_initiative_focus_areas on delete cascade,
    --
    link_name                      varchar2(255 char)   not null,
    link_url                       varchar2(4000 char) not null,
    important_yn                   varchar2(1 char) default on null 'N'
                                   constraint sp_init_focus_area_link_imp_cc
                                   check (important_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_init_focus_area_links_i1 on sp_init_focus_area_links (init_focus_area_id);
create index sp_init_focus_area_links_i2 on sp_init_focus_area_links (updated);


create table sp_init_focus_area_documents (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_init_focus_area_documents_pk primary key,
    init_focus_area_id             number  not null
                                   constraint sp_init_focus_area_document_ifa_fk
                                   references sp_initiative_focus_areas on delete cascade,
    --
    document_blob                  blob,
    document_filename              varchar2(512 char),
    document_mimetype              varchar2(512 char),
    document_charset               varchar2(512 char),
    document_lastupd               date,
    --
    important_yn                   varchar2(1 char) default on null 'N'
                                   constraint sp_init_focus_area_doc_imp_cc
                                   check (important_yn in ('Y','N')),
    doc_description                varchar2(4000 char),
    --
    tags                           varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_init_focus_area_documents_i1 on sp_init_focus_area_documents (init_focus_area_id);
create index sp_init_focus_area_documents_i2 on sp_init_focus_area_documents (updated);


create table sp_init_focus_area_comments (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_init_focus_area_comments_pk primary key,
    init_focus_area_id             number  not null
                                   constraint sp_init_focus_area_comment_ifa_fk
                                   references sp_initiative_focus_areas on delete cascade,
    --
    body                           clob,
    body_html                      clob,
    body_no_images                 clob,
    image_ref_id                   number, 
    author_id                      number,
    private_yn                     varchar2(1 char) default on null 'N'
                                   constraint sp_init_focus_area_comment_private_cc
                                   check (private_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_init_focus_area_comments_i1 on sp_init_focus_area_comments (init_focus_area_id);
create index sp_init_focus_area_comments_i2 on sp_init_focus_area_comments (author_id);
create index sp_init_focus_area_comments_i3 on sp_init_focus_area_comments (image_ref_id);

create table sp_init_focus_area_history (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_init_focus_area_history_pk primary key,
    init_focus_area_id             number  not null,
    --
    attribute_column               varchar2(255 char) not null, 
    change_type                    varchar2(30 char)  not null
                                   constraint sp_init_focus_area_history_type_cc 
                                   check (change_type in ('CREATE','UPDATE','DELETE')),
    old_value                      varchar2(4000 char),
    new_value                      varchar2(4000 char),
    old_value_clob                 clob,
    new_value_clob                 clob,
    --
    changed_on                     date  not null,
    changed_by                     varchar2(255 char)
);

create index sp_init_focus_area_history_i1 on sp_init_focus_area_history (init_focus_area_id);
create index sp_init_focus_area_history_i2 on sp_init_focus_area_history (changed_by);