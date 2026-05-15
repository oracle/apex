CREATE TABLE EBA_DEMO_FILES 
   (   
    -- primary key and row number for lost update detection
    ID                   NUMBER constraint EBA_DEMO_FILES_PK primary key, 
    ROW_VERSION_NUMBER   NUMBER, 
    --
    -- foreign key
    PROJECT_ID           NUMBER constraint eba_demo_files_fk
                         references EBA_DEMO_FILE_PROJECTS (id)
                         on delete cascade, 
    --
    -- standard columns
    FILENAME             VARCHAR2(4000 BYTE), 
    FILE_MIMETYPE        VARCHAR2(512 BYTE), 
    FILE_CHARSET         VARCHAR2(512 BYTE), 
    FILE_BLOB            BLOB, 
    --
    -- optional columns
    FILE_COMMENTS        VARCHAR2(4000 BYTE), 
    TAGS                 VARCHAR2(4000 BYTE), 
    CREATED              timestamp, 
    CREATED_BY           VARCHAR2(255 BYTE), 
    UPDATED              timestamp, 
    UPDATED_BY           VARCHAR2(255 BYTE)
   )  ;

create index EBA_DEMO_FILES_i2 on EBA_DEMO_FILES(project_id);

CREATE OR REPLACE TRIGGER BIU_EBA_DEMO_FILES 
   before insert or update on EBA_DEMO_FILES
   for each row
begin
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;

   if inserting then
       :new.created := localtimestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := localtimestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating and :new.filename is not null and nvl(dbms_lob.getlength(:new.file_blob),0) > 15728640 then
       raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller sized file.');
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := localtimestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
ALTER TRIGGER BIU_EBA_DEMO_FILES ENABLE;

