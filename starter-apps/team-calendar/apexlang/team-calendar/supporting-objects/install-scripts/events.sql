create table eba_ca_events (
   event_id            number         not null,
   row_version_number  integer,
   row_key             varchar2(30),
   event_name          varchar2(255)  not null,
   type_id             number,
   calendar_id         number,
   event_date_time     timestamp with time zone  not null,
   duration            number         not null,
   event_desc          varchar2(4000),
   contact_person      varchar2(255),
   contact_email       varchar2(255),
   display_time        varchar2(1)    not null,
   location            varchar2(255),
   link_name_1         varchar2(255),
   link_url_1          varchar2(4000),
   link_name_2         varchar2(255),
   link_url_2          varchar2(4000),
   link_name_3         varchar2(255),
   link_url_3          varchar2(4000),
   link_name_4         varchar2(255),
   link_url_4          varchar2(4000),
   tags                varchar2(4000),
   --
   series_id        number,
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/
alter table eba_ca_events 
   add constraint eba_ca_events_pk primary key (event_id)
/
alter table eba_ca_events 
   add constraint eba_ca_event_fk1 
   foreign key (type_id)
   references eba_ca_event_types (type_id)
/
create index eba_ca_events_i1 
   on eba_ca_events (type_id)
/
alter table eba_ca_events 
   add constraint eba_ca_event_fk2 
   foreign key (series_id)
   references eba_ca_series (series_id)
/
create index eba_ca_events_i2
   on eba_ca_events (series_id)
/
alter table eba_ca_events 
   add constraint eba_ca_event_fk3 
   foreign key (calendar_id)
   references eba_ca_calendars (calendar_id)
/
create index eba_ca_events_i3
   on eba_ca_events (calendar_id)
/
alter table eba_ca_events 
   add constraint eba_ca_event_cc1 
   check ( display_time in ('Y','N') )
/







