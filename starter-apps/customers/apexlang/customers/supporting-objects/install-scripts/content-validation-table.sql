create table eba_cust_verifications
(
    id                   number primary key,
    cust_id              number,
    verified_by          varchar2(255) not null,
    verification_comment varchar2(4000),
    created              timestamp(6) with time zone,
    created_by           varchar2(255),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255)
);
/

create index eba_cust_verify_idx1 on eba_cust_verifications (cust_id);
    
create or replace trigger eba_cust_verify_biu_fer
   before insert or update on eba_cust_verifications
   for each row
begin
   if :new.id is null then
     :new.id := eba_cust_seq.nextval;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(apex_application.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(apex_application.g_user,user);
   end if;
end;
/

alter trigger eba_cust_verify_biu_fer enable;
