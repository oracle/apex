CREATE TABLE  OOW_DEMO_STORE_PRODUCTS (
    ID                 NUMBER, 
    ROW_VERSION_NUMBER NUMBER, 
    STORE_ID           NUMBER, 
    ITEM_ID            NUMBER, 
    SALE_START_DATE    DATE, 
    DISCOUNT_PCT       NUMBER, 
    SALE_END_DATE      DATE, 
    ITEM_PRICE         NUMBER,
    CONSTRAINT OOW_DEMO_STORE_PRODUCTS_PK PRIMARY KEY (ID) ENABLE
   );

CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_STORE_PRODUCTS
BEFORE INSERT OR UPDATE ON OOW_DEMO_STORE_PRODUCTS
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
END;
/
show errors

