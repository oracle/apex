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

   :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;
   :NEW.LAST_UPDATED_BY := nvl(v('APP_USER'),USER);
end; 
/
    
alter trigger eba_ca_calendars_biu enable
/

-- Add constraint error messages
insert into eba_ca_error_lookup (constraint_name, message, language_code) values ('EBA_CA_CALENDAR_UK1', 'Calendar Short Name must be unique.', 'en');
insert into eba_ca_error_lookup (constraint_name, message, language_code) values ('EBA_CA_CALENDAR_UK2', 'Calendar Name must be unique.', 'en');

-- Update Events table
alter table eba_ca_events add (calendar_id number)
/
alter table eba_ca_events add constraint eba_ca_events_fk3
   foreign key (calendar_id)
   references eba_ca_calendars (calendar_id)
/
create index eba_ca_events_i3
   on eba_ca_events (calendar_id)
/

-- comma separated list of calendar_ids, for contributor (access_level_id 2)
alter table eba_ca_users add (restricted_to varchar2(4000)); 

