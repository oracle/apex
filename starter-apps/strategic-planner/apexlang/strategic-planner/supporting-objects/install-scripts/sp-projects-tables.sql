create table sp_projects (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_projects_id_pk primary key,
    --
    friendly_identifier            varchar2(30 char),
    project_url_name               varchar2(255 char),
    --
    -- parent foreign key, each project is part of an initiative
    --
    initiative_id                  number constraint sp_projects_initiative_fk
                                   references sp_initiatives on delete cascade,
    --
    --
    --
    project                        varchar2(255 char) not null,
    upper_project_name             varchar2(255 char),
    --
    -- foreign keys
    --
    owner_id                       number
                                   constraint sp_projects_owner_fk
                                   references sp_team_members,
    active_yn                      varchar2(1 char) 
                                   default on null 'Y'
                                   constraint sp_projects_active_ck 
                                   check (active_yn in ('Y','N')),
    priority_id                    number 
                                   default 4
                                   constraint sp_projects_priority_fk
                                   references sp_project_priorities,

    release_id                     number
                                   constraint sp_projects_release_fk
                                   references SP_RELEASE_TRAINS,

    project_group_id               number
                                   constraint sp_projects_group_fk
                                   references SP_PROJECT_GROUPS,
    --
    -- project attributes
    --
    release                        varchar2(30 char),
    target_complete                date,
    pct_complete                   number 
                                   default 10 
                                   constraint sp_projects_pct_complete_ck
                                   check (pct_complete in (0,10,20,30,40,50,60,70,80,90,100)),
    status_id                      number
                                   constraint sp_projects_status_fk
                                   references SP_PROJECT_STATUSES,
    project_size                   varchar2(10 char) 
                                   constraint sp_projects_size_ck 
                                   check (project_size in ('S','M','L','XL','2XL','3XL','4XL','8XL')),
    status_scale                   varchar2(1) not null
                                   constraint sp_projects_scale_fk 
                                   references sp_project_scales,
    requires_reviews_yn            varchar2(1)  default on null 'Y'
                                   constraint sp_projects_req_rev_ck 
                                   check (requires_reviews_yn in ('Y','N')),       
    doc_impact_yn                  varchar2(1 char) default on null 'N'
                                   constraint sp_projects_doc_impact_cc
                                   check (doc_impact_yn in ('Y','N')),           
    description                    clob,
    kb_stack_rank                  number default on null sp_kb_stack_rank_seq.nextval,
    --
    -- counts, should remove these, not used
    --
    comments                       integer default 0, -- computed
    links                          integer default 0, -- computed
    documents                      integer default 0, -- computed
    --
    -- comma seperated tags
    --
    tags                           varchar2(4000 char),
    focus_area_id                  number constraint sp_projects_focus_area_fk
                                   references sp_initiative_focus_areas on delete set null,
    --
    --
    --
    display_external_link_yn       varchar2(1 char) constraint sp_projects_disp_ext_link_yn 
                                   check (display_external_link_yn in ('Y','N')),
    external_ticket_identifier     varchar2(128 char),
    external_ticket_system         varchar2(30 char),
    external_system_link           varchar2(4000 char),
    --
    -- Duplicate
    --
    duplicate_of_project_id        number,
    --
    -- Archived, soft delete
    --
    archived_yn                    varchar2(1 char)
                                   constraint sp_project_archived_ck
                                   check (archived_yn in ('Y','N')),
    archived_date                  date,
    archived_by                    varchar2(255 char),
    --
    -- blocking
    --
    blocked_by_yn                  varchar2(1 char)
                                   constraint sp_project_blocked_ck
                                   check (blocked_by_yn in ('Y','N')),
    blocked_by_project_id          number,
    blocked_by_comment             varchar2(4000 char),
    --
    -- Standard auditing columns
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index        sp_projects_i1 on  sp_projects (owner_id);
create index        sp_projects_i2 on  sp_projects (initiative_id);
create index        sp_projects_i3 on  sp_projects (status_scale);
create index        sp_projects_i4 on  sp_projects (priority_id);
create index        sp_projects_i5 on  sp_projects (updated);
create index        sp_projects_i6 on  sp_projects (release_id);
create index        sp_projects_i7 on  sp_projects (DUPLICATE_OF_PROJECT_ID);
create index        sp_projects_i8 on  sp_projects (pct_complete);
create unique index sp_projects_u1 on sp_projects (upper_project_name);
create unique index sp_projects_u2 on  sp_projects (friendly_identifier);


---
--- Related Projects
---


create table sp_project_related (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_related_id_pk primary key,
    project_id                     number not null
                                   constraint sp_project_relate_project_id_fk
                                   references sp_projects on delete cascade,
    related_project_id             number not null
                                   constraint sp_project_relto_project_id_fk
                                   references sp_projects on delete cascade,
    project_relation               varchar2(4000 char),
    relation_type                  varchar2(30 char)
                                   constraint sp_project_relation_type_ck
                                   check (relation_type in ('DUPLICATE_OF','RELATED','SUBPROJECT')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_project_related_i1 on sp_project_related (project_id);
create index sp_project_related_i2 on sp_project_related (related_project_id);


---
--- Project Contributors
---

create table sp_project_contributors (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_contrib_id_pk primary key,
    project_id                     number
                                   constraint sp_project_cont_project_id_fk
                                   references sp_projects on delete cascade,
    team_member_id                 number
                                   constraint sp_project_cont_team_member_fk
                                   references sp_team_members on delete cascade,
    responsibility_id              number
                                   constraint sp_project_cont_to_resp_fk
                                   references SP_RESOURCE_TYPES,
    responsibility                 varchar2(4000 char),
    tags                           varchar2(4000 char),
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);
comment on table sp_project_contributors is 'Identifies resources working on a given project';
create index sp_project_contrib_i1 on sp_project_contributors (project_id);
create index sp_project_contrib_i2 on sp_project_contributors (team_member_id);
create index sp_project_contrib_i3 on sp_project_contributors (responsibility_id);
create index SP_PROJECT_CONTRIBUTORS_i4 on SP_PROJECT_CONTRIBUTORS(updated);
create unique index SP_PROJECT_CONTRIBUTORS_u1 on SP_PROJECT_CONTRIBUTORS (TEAM_MEMBER_ID, PROJECT_ID);

--
-- Project Documents
--

create table sp_project_documents (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_documents_id_pk primary key,
    project_id                     number
                                   constraint sp_project_doc_proj_id_fk
                                   references sp_projects on delete cascade,
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

create index sp_project_documents_i1 on sp_project_documents (project_id);
create index sp_project_documents_i2 on sp_project_documents (updated);