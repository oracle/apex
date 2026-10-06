create table sp_comment_images (
    id                 number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                           constraint sp_comment_images_pk primary key,
    --
    file_blob          blob               not null,
    unique_filename    varchar2(512 char) not null,
    filename           varchar2(512 char), -- image.png for screensnaps
    mimetype           varchar2(512 char),
    blob_size          number,
    image_ref_id       number             not null,
    --
    created            date not null,
    created_by         varchar2(255 char) not null
);

alter table sp_comment_images add constraint sp_comment_images_uk 
    unique (unique_filename);

create index sp_comment_images_i1 on sp_comment_images (image_ref_id);