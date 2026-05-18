CREATE TABLE  OOW_DEMO_STORES (
    ID                   NUMBER, 
    ROW_VERSION_NUMBER   NUMBER, 
    STORE_NAME           VARCHAR2(255), 
    STORE_TYPE           VARCHAR2(50), 
    STORE_ADDRESS        VARCHAR2(255), 
    STORE_OPEN_DATE      timestamp with local time zone,
    STORE_CITY           VARCHAR2(50), 
    STORE_STATE          VARCHAR2(50), 
    region_id            number,
    STORE_ZIP            VARCHAR2(12), 
    STORE_LAT            NUMBER(9,6), 
    STORE_LNG            NUMBER(9,6), 
    n1                   number,
    n2                   number,
    n3                   number,
    n4                   number,
    CONSTRAINT OOW_DEMO_STORES_PK PRIMARY KEY (ID) ENABLE
   );

CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_STORES
BEFORE INSERT OR UPDATE ON OOW_DEMO_STORES
FOR EACH ROW
BEGIN
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if :new.n1 is null then
     :new.n1 := round(dbms_random.value(1,1000000));
   end if;   
   if :new.n2 is null then
     :new.n2 := round(dbms_random.value(1,1000000));
   end if;   
   if :new.n3 is null then
     :new.n3 := round(dbms_random.value(1,1000000));
   end if;
   if :new.n4 is null then
     :new.n4 := round(dbms_random.value(1,1000000));
   end if;   
END;
/
show errors
