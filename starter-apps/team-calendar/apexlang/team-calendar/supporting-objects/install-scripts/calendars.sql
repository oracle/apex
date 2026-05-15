create table eba_ca_calendars (
   calendar_id      number         not null,
   short_name       varchar2(10)   not null,
   calendar_name    varchar2(60)   not null,
   public_view_yn   varchar2(1)    default 'Y',
   description      varchar2(4000),
   is_active_yn     varchar2(1)    default 'Y',
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/

alter table eba_ca_calendars
   add constraint eba_ca_calendars_pk primary key (calendar_id)
/
    
alter table eba_ca_calendars
   add constraint eba_ca_calendars_uk1 unique (short_name)
/
alter table eba_ca_calendars
   add constraint eba_ca_calendars_uk2 unique (calendar_name)
/
alter table eba_ca_calendars
   add constraint eba_ca_calendar_cc1 
   check ( public_view_yn in ('Y','N') )
/
alter table eba_ca_calendars
   add constraint eba_ca_calendar_cc2 
   check ( is_active_yn in ('Y','N') )
/
    
    
create or replace trigger eba_ca_calendars_biu
  before insert or update on eba_ca_calendars               
  for each row  
begin   
  if inserting then
     if :new.calendar_id is null 
        then :new.calendar_id := eba_ca_api.gen_id; 
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
show errors
    
 
alter trigger eba_ca_calendars_biu enable
/