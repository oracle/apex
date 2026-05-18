create table eba_ca_series (
   series_id        number        not null,
   --
   start_date       timestamp with time zone  not null,
   end_date         timestamp with time zone  not null,
   recur_freq       varchar2(10)  not null,
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/
alter table eba_ca_series 
   add constraint eba_ca_series_pk primary key (series_id)
/
create or replace trigger eba_ca_series_biu
  before insert or update on eba_ca_series               
  for each row  
begin   
  if inserting then
     if :NEW.series_id is null 
        then :NEW.series_id := eba_ca_api.gen_id;
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
alter trigger eba_ca_series_biu enable
/



