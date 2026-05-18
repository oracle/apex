create table EBA_ca_timeframes (
   tf_id       number         not null,
   tf_name     varchar2(255)  not null,
   start_date  date           not null,
   end_date    date           not null,
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/
alter table EBA_ca_timeframes
   add constraint EBA_ca_timeframes_pk primary key (tf_id)
/
alter table EBA_ca_timeframes
   add constraint EBA_ca_timeframes_uk unique (tf_name)
/
create or replace trigger EBA_ca_timeframes_biu
  before insert or update on EBA_ca_timeframes               
  for each row  
begin   
  if inserting then
     if :NEW.tf_id is null 
        then :NEW.tf_id := EBA_ca_api.gen_id; 
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
alter trigger EBA_ca_timeframes_biu enable
/



