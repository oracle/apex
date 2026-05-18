CREATE TABLE "EBA_DEMO_IR_PROJECTS"
   ("ID" NUMBER, 
    "ROW_VERSION_NUMBER" NUMBER,
    "PROJECT" VARCHAR2(30), 
    "TASK_NAME" VARCHAR2(255), 
    "START_DATE" DATE, 
    "END_DATE" DATE, 
    "STATUS" VARCHAR2(30), 
    "ASSIGNED_TO" VARCHAR2(30), 
    "COST" NUMBER, 
    "BUDGET" NUMBER 
   ) ;

CREATE UNIQUE INDEX "EBA_DEMO_IR_PROJECTS_PK" ON "EBA_DEMO_IR_PROJECTS" ("ID");


create or replace TRIGGER "BIU_EBA_DEMO_IR_PROJECTS"
BEFORE INSERT OR UPDATE ON EBA_DEMO_IR_PROJECTS
FOR EACH ROW
BEGIN
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if :new.start_date > :new.end_date then
       RAISE_APPLICATION_ERROR(-20001, 'Error start date must be before end date');
   end if;
END;
/
