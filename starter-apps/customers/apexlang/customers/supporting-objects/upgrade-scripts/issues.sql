CREATE TABLE  "EBA_CUST_ISSUES" 
   ("ID" NUMBER,
    "CUSTOMER_ID" NUMBER NOT NULL ENABLE,
    "NAME" VARCHAR2(255) NOT NULL ENABLE,
    "ISSUE_TYPE" VARCHAR2(10) NOT NULL ENABLE,
    "STATUS_ID" NUMBER NOT NULL ENABLE,
    "PRODUCT_ID" NUMBER,
    "DETAILS" VARCHAR2(4000),
    "RESOLUTION" VARCHAR2(4000),
    "CREATED" TIMESTAMP (6) WITH TIME ZONE,
    "CREATED_BY" VARCHAR2(255),
    "UPDATED" TIMESTAMP (6) WITH TIME ZONE,
    "UPDATED_BY" VARCHAR2(255),
     PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

ALTER TABLE  "EBA_CUST_ISSUES" ADD FOREIGN KEY ("CUSTOMER_ID")
      REFERENCES  "EBA_CUST_CUSTOMERS" ("ID") ON DELETE CASCADE ENABLE
/

ALTER TABLE  "EBA_CUST_ISSUES" ADD FOREIGN KEY ("STATUS_ID")
      REFERENCES  "EBA_CUST_ISSUE_STATUSES" ("ID") ON DELETE CASCADE ENABLE
/

ALTER TABLE  "EBA_CUST_ISSUES" ADD FOREIGN KEY ("PRODUCT_ID")
      REFERENCES  "EBA_CUST_PRODUCTS" ("ID") ON DELETE CASCADE ENABLE
/

CREATE OR REPLACE TRIGGER  "BIU_EBA_CUST_ISSUES" 
    before insert or update 
    on eba_cust_issues
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),USER);
    end if;
    if inserting or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
    end if;
end;
/

ALTER TRIGGER  "BIU_EBA_CUST_ISSUES" ENABLE
/