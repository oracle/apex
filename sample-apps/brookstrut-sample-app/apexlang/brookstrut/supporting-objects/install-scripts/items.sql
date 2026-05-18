begin
    oow_demo_event_pkg.log (p_event_name => 'create table OOW_DEMO_ITEMS', p_error_message => null);
end;
/

CREATE TABLE  OOW_DEMO_ITEMS (
    ID                 NUMBER, 
    ROW_VERSION_NUMBER NUMBER, 
    ITEM_TYPE          VARCHAR2(255) NOT NULL ENABLE, 
    ITEM_NAME          VARCHAR2(60) NOT NULL ENABLE, 
    ITEM_DESC          VARCHAR2(255), 
    MSRP               NUMBER DEFAULT 1 NOT NULL ENABLE, 
    CONSTRAINT OOW_DEMO_ITEMS_PK PRIMARY KEY (ID) ENABLE
   );


CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_ITEMS
BEFORE INSERT OR UPDATE ON OOW_DEMO_ITEMS
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
