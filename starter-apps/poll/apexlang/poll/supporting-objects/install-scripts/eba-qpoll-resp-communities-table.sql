CREATE TABLE EBA_QPOLL_RESP_COMMUNITIES
   (
    ID                    NUMBER constraint EBA_QPOLL_RESP_COMM_PK primary key, 
    ROW_VERSION_NUMBER    NUMBER not null, 
    --
    name                  varchar2(4000) not null,
    publish_yn            varchar2(1),
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255), 
    UPDATED               TIMESTAMP WITH TIME ZONE
   )  ;


create unique index EBA_QPOLL_RESP_COMM_UK on EBA_QPOLL_RESP_COMMUNITIES(name);


CREATE OR REPLACE TRIGGER EBA_QPOLL_RESP_COMM_BIU
   before insert or update on EBA_QPOLL_RESP_COMMUNITIES
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if :new.publish_yn is null then
      :new.publish_yn := 'Y';
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

ALTER TRIGGER EBA_QPOLL_RESP_COMM_BIU ENABLE;
