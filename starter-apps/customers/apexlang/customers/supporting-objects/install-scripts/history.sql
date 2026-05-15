CREATE TABLE "EBA_CUST_HISTORY" 
   (   
    "ID"                  NUMBER constraint eba_cust_history_pk primary key, 
    "ROW_VERSION_NUMBER"  NUMBER, 
    "TABLE_NAME"          varchar2(255),
    "COMPONENT_ID"        NUMBER, 
    "COMPONENT_ROWKEY"    VARCHAR2(30 BYTE), 
    "COLUMN_NAME"         VARCHAR2(60 BYTE) not null, 
    "OLD_VALUE"           VARCHAR2(4000 BYTE), 
    "NEW_VALUE"           VARCHAR2(4000 BYTE), 
    "CHANGE_DATE"         TIMESTAMP WITH TIME ZONE, 
    "CHANGED_BY"          VARCHAR2(255 BYTE)
   ) ;

create index eba_cust_history_i1 on EBA_CUST_HISTORY(component_id);

CREATE OR REPLACE TRIGGER BIU_EBA_CUST_HISTORY
   before insert or update on EBA_CUST_HISTORY
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.change_date := current_timestamp;
       :new.changed_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := :new.row_version_number + 1;
   end if;
end;
/

ALTER TRIGGER BIU_EBA_CUST_HISTORY ENABLE;

