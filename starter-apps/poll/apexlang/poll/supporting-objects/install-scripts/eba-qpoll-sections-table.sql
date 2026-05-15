CREATE TABLE EBA_QPOLL_SECTIONS
   (
    ID                    NUMBER not null constraint EBA_QPOLL_SECTIONS_PK primary key, 
    POLL_ID               NUMBER not null constraint EBA_QPOLL_SEC_FK
                          references EBA_QPOLL_POLLS(id)
                          on delete cascade,
    ROW_VERSION_NUMBER    NUMBER not null, 
    --
    display_sequence      number,
    title                 VARCHAR2(255) not null, 
    section_text          varchar2(4000), 
    --
    image_filename        VARCHAR2(4000),         
    image_mimetype        VARCHAR2(512),
    image_charset         VARCHAR2(512),
    image_blob            BLOB,
    image_last_updated    DATE,
    image_width           number,
    image_height          number,
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255), 
    UPDATED               TIMESTAMP WITH TIME ZONE
   )  ;


create index EBA_QPOLL_SECTIONS_i1 on EBA_QPOLL_SECTIONS(POLL_ID);


CREATE OR REPLACE TRIGGER EBA_QPOLL_SECTIONS_BIU
   before insert or update on EBA_QPOLL_SECTIONS
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if; 
end;
/
ALTER TRIGGER EBA_QPOLL_SECTIONS_BIU ENABLE;
