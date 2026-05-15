CREATE TABLE "EBA_SALES_CUST_SPT_AMT_MAP" 
(
    "ID" NUMBER,
    "ROW_VERSION_NUMBER" NUMBER,
    "NAME" VARCHAR2(255),
    "CLOSE_DATE" TIMESTAMP (6) WITH TIME ZONE,
    "TERM_ID" NUMBER references EBA_SALES_TERMS on delete set null,
    "CUSTOMER_ID" NUMBER references EBA_SALES_CUSTOMERS on delete set null,
    "AMOUNT_ID" NUMBER references EBA_SALES_SUPPORT_AMTS on delete cascade,
    "QUOTE_PRICE" NUMBER,
    "DESCRIPTION" VARCHAR2(4000),
    "CREATED_BY" VARCHAR2(255),
    "CREATED" TIMESTAMP (6) WITH TIME ZONE,
    "UPDATED_BY" VARCHAR2(255),
    "UPDATED" TIMESTAMP (6) WITH TIME ZONE,
     PRIMARY KEY ("ID")  USING INDEX  ENABLE
);

CREATE OR REPLACE TRIGGER "BIU_EBA_SALES_CUST_SPT_AMT_MAP" 
   before insert or update on EBA_SALES_CUST_SPT_AMT_MAP
   for each row
   begin
      if inserting then
         if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
         end if;
         :NEW.CREATED := current_timestamp;
         :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/

ALTER TRIGGER "BIU_EBA_SALES_CUST_SPT_AMT_MAP" ENABLE;