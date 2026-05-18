create table sp_release_comments (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_comments_id_pk primary key,
    release_id                     number
                                   constraint sp_release_comm_proj_id_fk
                                   references SP_RELEASE_TRAINS on delete cascade,
    --
    body                           clob,
    body_html                      clob,
    body_no_images                 clob,
    image_ref_id                   number, 
    author_id                      number,
    PRIVATE_YN                     varchar2(1 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_release_comments_i1 on sp_release_comments (release_id);
create index sp_release_comments_i2 on sp_release_comments (author_id);
create index sp_release_comments_i3 on sp_release_comments (image_ref_id);
