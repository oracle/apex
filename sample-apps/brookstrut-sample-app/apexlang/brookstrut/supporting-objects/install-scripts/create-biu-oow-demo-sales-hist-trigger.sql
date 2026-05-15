CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_SALES_HIST 
BEFORE INSERT OR UPDATE ON OOW_DEMO_SALES_HISTORY 
FOR EACH ROW
BEGIN
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then 
      :new.created_on := localtimestamp; 
      
      if :new.sales_data is null then
         :new.sales_data := 
             '{"ID" :"'||:new.id||'" ,'||
             '"STORE_ID":'||:new.STORE_ID||','||
             '"PRODUCT_ID":'||:new.PRODUCT_ID||','||
             '"DATE_OF_SALE":"'||to_char(:new.DATE_OF_SALE,'YYYY-MM-DD"T"HH24:MI:SS".OZ"')||'",'||
             '"QUANTITY":'||:new.QUANTITY||','||
             '"TRANSACTION_ID":"'||:new.TRANSACTION_ID||'",'||
             '"ITEM_PRICE":'||:new.ITEM_PRICE||','||
             '"CREATED_ON":"'||to_char(:new.DATE_OF_SALE,'YYYY-MM-DD"T"HH24:MI:SS".OZ"')||'"'||
             '}';
      end if; 
   end if;
END;
/