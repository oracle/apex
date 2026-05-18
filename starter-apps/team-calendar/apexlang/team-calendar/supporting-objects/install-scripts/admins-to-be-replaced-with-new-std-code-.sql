create table EBA_ca_admins (
   admin_id        number         not null,
   admin_username  varchar2(255)  not null,
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/
alter table EBA_ca_admins
   add constraint EBA_ca_admins_pk primary key (admin_id)
/
alter table EBA_ca_admins
   add constraint EBA_ca_admins_uk unique (admin_username)
/
create or replace trigger EBA_ca_admins_biu
  before insert or update on EBA_ca_admins               
  for each row  
begin   
  if inserting then
     if :NEW.admin_id is null 
        then :NEW.admin_id := EBA_ca_api.gen_id; 
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
alter trigger EBA_ca_admins_biu enable
/