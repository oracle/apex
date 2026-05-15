create table eba_sales_verifications
(
    id                   number primary key,
    cust_id              number references eba_sales_customers (id) on delete cascade,
    lead_id              number references eba_sales_leads (id) on delete cascade,
    opp_id               number,
    verified_by          varchar2(255) not null,
    verification_comment varchar2(4000),
    created              timestamp(6) with time zone,
    created_by           varchar2(255),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255)
);
/

create index eba_sales_verify_idx1 on eba_sales_verifications (cust_id);
create index eba_sales_verify_idx2 on eba_sales_verifications (lead_id);
create index eba_sales_verify_idx3 on eba_sales_verifications (opp_id);
    
create or replace trigger eba_sales_verify_biu_fer
   before insert or update on eba_sales_verifications
   for each row
begin
   if :new.id is null then
     :new.id := eba_sales_sequence.nextval;
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

alter trigger eba_sales_verify_biu_fer enable;
