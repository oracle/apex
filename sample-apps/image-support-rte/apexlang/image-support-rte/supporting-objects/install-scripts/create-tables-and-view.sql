create table excm_content (
    id                number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                          constraint excm_content_pk primary key,
    body              clob,
    body_html         clob,
    body_no_images    clob,
    image_ref_id      number,
    --
    created           date not null,
    created_by        varchar2(255 char) not null,
    updated           date not null,
    updated_by        varchar2(255 char) not null
);
create index excm_content_i1 on excm_content (image_ref_id);

create or replace trigger excm_content_biu 
    before insert or update
    on excm_content
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);

    -- DONE IN TRIGGER TO PREVENT MANUAL UPDATE OF BODY_HTML
    :new.body_html := apex_markdown.to_html(:new.body);
end excm_content_biu;
/


create or replace view excm_content_v as
select id, 
       excm_util.replace_session_on_display(body, sys_context('APEX$SESSION', 'APP_SESSION') ) body,
       excm_util.replace_session_on_display(body_html, sys_context('APEX$SESSION', 'APP_SESSION') ) body_html,
       body_no_images, 
       image_ref_id,
       created, created_by, updated, updated_by
  from excm_content;


create table excm_rte_images (
    id                 number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                           constraint excm_rte_images_pk primary key,
    --
    file_blob          blob               not null,
    unique_filename    varchar2(512 char) not null,
    filename           varchar2(512 char), -- image.png for screensnaps
    mimetype           varchar2(512 char),
    blob_size          number,
    image_ref_id      number             not null,
    --
    created            date not null,
    created_by         varchar2(255 char) not null
);

alter table excm_rte_images add constraint excm_rte_images_uk 
    unique (unique_filename);

create index excm_rte_images_i1 on excm_rte_images (image_ref_id);