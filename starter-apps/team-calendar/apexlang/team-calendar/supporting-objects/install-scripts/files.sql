CREATE TABLE eba_ca_FILES 
   (   
    ID                   NUMBER constraint eba_ca_FILES_PK primary key, 
    ROW_VERSION_NUMBER   NUMBER, 
    EVENT_ID             NUMBER references eba_ca_events (event_id) on delete cascade, 
    FILENAME             VARCHAR2(4000 BYTE), 
    FILE_MIMETYPE        VARCHAR2(512 BYTE), 
    FILE_CHARSET         VARCHAR2(512 BYTE), 
    FILE_BLOB            BLOB, 
    FILE_COMMENTS        VARCHAR2(4000 BYTE), 
    TAGS                 VARCHAR2(4000 BYTE), 
    CREATED              timestamp with time zone, 
    CREATED_BY           VARCHAR2(255 BYTE), 
    UPDATED              timestamp with time zone, 
    UPDATED_BY           VARCHAR2(255 BYTE)
   )  ;

create index eba_ca_FILES_i1 on eba_ca_FILES(event_id);

CREATE OR REPLACE TRIGGER BIU_eba_ca_FILES 
   before insert or update on eba_ca_files
   for each row
begin
  if :new.ID is null then
    select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
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
  if (inserting or updating) and nvl(dbms_lob.getlength(:new.file_blob),0) > 15728640 then
    raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller file.');
  end if;
  if inserting or updating then
    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
  end if;
end;
/
show errors

ALTER TRIGGER BIU_eba_ca_FILES ENABLE;


