create table EBA_ca_email_group_mbrs (
   mbr_id         number         not null,
   group_id       number         not null,
   email_address  varchar2(255)  not null,
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/
alter table EBA_ca_email_group_mbrs
   add constraint EBA_ca_email_group_mbrs_pk primary key (mbr_id)
/
alter table EBA_ca_email_group_mbrs
   add constraint EBA_ca_email_group_mbrs_uk unique (group_id, email_address)
/
alter table EBA_ca_email_group_mbrs 
   add constraint EBA_ca_email_group_mbrs_fk1 
   foreign key (group_id)
   references EBA_ca_email_groups (group_id)
   on delete cascade
/
create index EBA_ca_email_group_mbrs_i1
   on EBA_ca_email_group_mbrs (group_id)
/
create or replace trigger EBA_ca_email_group_mbrs_biu
  before insert or update on EBA_ca_email_group_mbrs              
  for each row  
begin   
  if inserting then
     if :NEW.mbr_id is null 
        then :NEW.mbr_id := EBA_ca_api.gen_id; 
     end if;
     :NEW.CREATED_ON := CURRENT_TIMESTAMP;
     :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
   end if;

   if updating then
      :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;
      :NEW.LAST_UPDATED_BY := nvl(v('APP_USER'),USER);
   end if; 
end; 
/
alter trigger EBA_ca_email_group_mbrs_biu enable
/



