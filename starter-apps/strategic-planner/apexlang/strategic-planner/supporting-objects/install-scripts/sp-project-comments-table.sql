create table sp_project_comments (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_comments_id_pk primary key,
    project_id                     number
                                   constraint sp_project_comm_proj_id_fk
                                   references sp_projects on delete cascade,
    body                           clob,
    body_html                      clob,
    body_no_images                 clob,
    image_ref_id                   number,
    private_yn                     varchar2(1 char)
                                   default on null 'Y'
                                   constraint sp_project_comm_private_ck
                                   check (private_yn in ('Y','N')),
    author_id                      number,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index sp_project_comments_i1 on sp_project_comments (project_id);
create index sp_project_comments_i2 on sp_project_comments (author_id);
create index sp_project_comments_i3 on sp_project_comments (updated);
create index sp_project_comments_i4 on sp_project_comments (image_ref_id);

create table sp_project_comments_emails (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_proj_comment_em_id_pk primary key,
    comment_id                     number
                                   constraint sp_proj_comment_em_id_fk
                                   references sp_project_comments (id)
                                   on delete cascade,
    email                          varchar2(255 char)
);

create index sp_project_comm_emails_i1 on sp_project_comments_emails (comment_id);
create index sp_project_comm_emails_i2 on sp_project_comments_emails (email);