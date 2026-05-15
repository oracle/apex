create table EBA_ca_email_groups (
   group_id    number         not null,
   group_name  varchar2(255)  not null,
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/
alter table EBA_ca_email_groups
   add constraint EBA_ca_email_groups_pk primary key (group_id)
/
alter table EBA_ca_email_groups
   add constraint EBA_ca_email_groups_uk unique (group_name)
/
create or replace trigger EBA_ca_email_groups_biu
  before insert or update on EBA_ca_email_groups               
  for each row  
begin   
  if inserting then
     if :NEW.group_id is null 
        then :NEW.group_id := EBA_ca_api.gen_id; 
     end if;
     :NEW.CREATED_ON := current_timestamp;
     :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
   end if;

   if updating then
      :NEW.LAST_UPDATED_ON := current_timestamp;
      :NEW.LAST_UPDATED_BY := nvl(v('APP_USER'),USER);
   end if; 
end; 
/
alter trigger EBA_ca_email_groups_biu enable
/



