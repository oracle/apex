begin
    oow_demo_event_pkg.log (p_event_name => 'create table OOW_DEMO_REGIONS', p_error_message => null);
end;
/

CREATE TABLE  OOW_DEMO_REGIONS (
    ID                 NUMBER, 
    ROW_VERSION_NUMBER NUMBER,
    REGION_NAME        VARCHAR2(255),
    REGION_ZOOM        VARCHAR2(50),
    REGION_LAT         NUMBER(9,6),
    REGION_LNG         NUMBER(9,6),
    REGION_COLOR       VARCHAR2(7),
    IS_DEFAULT_YN      VARCHAR2(1), 
    CONSTRAINT OOW_DEMO_REGIONS_PK PRIMARY KEY (ID) ENABLE
   );


CREATE OR REPLACE TRIGGER BIU_OOW_DEMO_REGIONS
BEFORE INSERT OR UPDATE ON OOW_DEMO_REGIONS
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

