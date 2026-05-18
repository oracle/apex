CREATE TABLE EBA_DEMO_FILE_PROJECTS
   (
    ID NUMBER, 
    row_version_number number,
    PROJECT            VARCHAR2(30) not null, 
    TASK_NAME          VARCHAR2(255) not null, 
    START_DATE         date not null, 
    END_DATE           date not null, 
    STATUS             VARCHAR2(30) not null, 
    ASSIGNED_TO        VARCHAR2(30), 
    COST               NUMBER, 
    BUDGET             NUMBER, 
    created_on         timestamp,
    created_by         varchar2(255),
    browser_env        varchar2(4000),
    icon_name          varchar2(4000),
    icon_comments      varchar2(4000),
    icon_blob          blob,
    icon_mimetype      varchar2(512),
    icon_charset       varchar2(512),
    icon_last_updated  timestamp,
    CONSTRAINT EBA_DEMO_FILE_PROJECTS_PK PRIMARY KEY (ID) ENABLE
   ) ;

CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_FILE_PROJECTS
   before insert or update on EBA_DEMO_FILE_PROJECTS
   for each row
begin
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;

    -- Icon Validations
    -- Size (200KB limit)
    if updating and :NEW.ICON_NAME is not null and nvl(dbms_lob.getlength(:NEW.ICON_BLOB),0) > 204800 then
        raise_application_error(-20000, 'The size of the uploaded icon image was over 200kb. Please upload a smaller sized image.');
    end if;
    -- Mimetype (must be image)
    if (inserting or updating) and :NEW.ICON_NAME is not null and nvl(:NEW.ICON_MIMETYPE,'NULL') not like 'image%' then
       raise_application_error(-20000, 'The uploaded file was not an image. Please upload an image file.');
    end if;

   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
show errors    
    
 
ALTER TRIGGER BIU_EBA_DEMO_FILE_PROJECTS ENABLE
/
