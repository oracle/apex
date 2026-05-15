CREATE TABLE EBA_CUST_NOTES
   ( 
    ID                     NUMBER constraint EBA_CUST_notes_pk primary key, 
    ROW_VERSION_NUMBER     NUMBER not null, 
    CUSTOMER_ID            NUMBER not null
                             references eba_cust_customers (id)
                             on delete cascade,
    CONTACT_ID             NUMBER
                             references eba_cust_contacts (id)
                             on delete cascade,
    NOTE_DATE              DATE,
    NOTE                   CLOB, 
    tags                   VARCHAR2(4000 BYTE), 
    CREATED                timestamp with time zone, 
    CREATED_BY             VARCHAR2(255 BYTE), 
    UPDATED                timestamp with time zone, 
    UPDATED_BY             VARCHAR2(255 BYTE)
   );

create index EBA_CUST_NOTES_i1 on EBA_CUST_NOTES(customer_id);
create index eba_cust_notes_contact_idx on eba_cust_notes(contact_id);

CREATE OR REPLACE TRIGGER BIU_EBA_CUST_NOTES 
   before insert or update on EBA_CUST_NOTES
   for each row
begin
   if :new."ID" is null then
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
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/

ALTER TRIGGER BIU_EBA_CUST_NOTES ENABLE;
