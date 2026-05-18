-- This script fixes BUG 31352674, replacing all columns of type TIMESTAMP(6) WITH LOCAL TIME ZONE to TIMESTAMP WITH TIME ZONE
-- it also updates all application triggers where columns where updated with LOCALTIMESTAMP to CURRENT_TIMESTAMP
-- 
-- This upgrade script will only run if there are tables that start with 'EBA_CA%' with columns of data type
-- TIMESTAMP(6) WITH LOCAL TIME ZONE

-- 1 Disable all triggers.
alter trigger "BI_EBA_CA_ERRORS" DISABLE;
/
alter trigger "BIU_EBA_CA_COLOR_PREFS" DISABLE;
/
alter trigger "EBA_CA_EVENT_TYPES_BIU" DISABLE;
/
alter trigger "BIU_EBA_CA_HISTORY" DISABLE;
/
alter trigger "EBA_CA_SERIES_BIU" DISABLE;
/
alter trigger "BIU_EBA_CA_TAGS" DISABLE;
/
alter trigger "EBA_CA_CALENDARS_BIU" DISABLE;
/
alter trigger "AD_EBA_CA_EVENTS" DISABLE;
/
alter trigger "EBA_CA_EVENTS_BIU" DISABLE;
/
alter trigger "BD_EBA_CA_EVENTS" DISABLE;
/
alter trigger "AU_EBA_CA_EVENTS" DISABLE;
/
alter trigger "AI_EBA_CA_EVENTS" DISABLE;
/
alter trigger "BIU_EBA_CA_NOTES" DISABLE;
/
alter trigger "BIU_EBA_CA_FILES" DISABLE;
/
alter trigger "EBA_CA_EMAIL_GROUPS_BIU" DISABLE;
/
alter trigger "EBA_CA_EMAIL_GROUP_MBRS_BIU" DISABLE;
/
alter trigger "EBA_CA_TIMEFRAMES_BIU" DISABLE;
/
--TABLE and TRIGGER NO LONGER EXISTS AT THIS POINT.
--alter trigger "EBA_CA_ADMINS_BIU" DISABLE;
--/
alter trigger "EBA_CA_NOTE_BIU" DISABLE;
/
alter trigger "BIU_EBA_CA_TZ_PREF" DISABLE;
/
alter trigger "EBA_CA_USERS_BD" DISABLE;
/
alter trigger "EBA_CA_USERS_BIU" DISABLE;
/
alter trigger "EBA_CA_PREFERENCES_BIU" DISABLE;
/

-- 2 Add temporary timestamp columns
alter table EBA_CA_ERRORS add (ERR_TIME1 timestamp with time zone)
/
alter table EBA_CA_COLOR_PREFS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_EVENT_TYPES add (CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CA_HISTORY add (CHANGE_DATE1 timestamp with time zone)
/
alter table EBA_CA_SERIES add (START_DATE1 timestamp with time zone,END_DATE1 timestamp with time zone,CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CA_TAGS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_CALENDARS add (CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CA_EVENTS add (EVENT_DATE_TIME1 timestamp with time zone,CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CA_NOTES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_FILES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_EMAIL_GROUPS add (CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CA_EMAIL_GROUP_MBRS add (CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CA_TIMEFRAMES add (CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
/
--TABLE and TRIGGER NO LONGER EXISTS AT THIS POINT.
--alter table EBA_CA_ADMINS add (CREATED_ON1 timestamp with time zone,LAST_UPDATED_ON1 timestamp with time zone)
--/
alter table EBA_CA_NOTIFICATIONS add (DISPLAY_FROM1 timestamp with time zone,DISPLAY_UNTIL1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_TZ_PREF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_USERS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CA_PREFERENCES add (CREATED_ON1 timestamp with time zone,UPDATED_ON1 timestamp with time zone)
/

-- Copy original column values into temporary column values
update EBA_CA_ERRORS set ERR_TIME1 = ERR_TIME;
update EBA_CA_COLOR_PREFS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_EVENT_TYPES set CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_HISTORY set CHANGE_DATE1 = CHANGE_DATE;
update EBA_CA_SERIES set START_DATE1 = START_DATE,END_DATE1 = END_DATE,CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_TAGS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_CALENDARS set CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_EVENTS set EVENT_DATE_TIME1 = EVENT_DATE_TIME,CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_NOTES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_FILES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_EMAIL_GROUPS set CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_EMAIL_GROUP_MBRS set CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_TIMEFRAMES set CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
--TABLE and TRIGGER NO LONGER EXISTS AT THIS POINT.
--update EBA_CA_ADMINS set CREATED_ON1 = CREATED_ON,LAST_UPDATED_ON1 = LAST_UPDATED_ON;
update EBA_CA_NOTIFICATIONS set DISPLAY_FROM1 = DISPLAY_FROM,DISPLAY_UNTIL1 = DISPLAY_UNTIL,CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_TZ_PREF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_USERS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CA_PREFERENCES set CREATED_ON1 = CREATED_ON,UPDATED_ON1 = UPDATED_ON;

-- 3 Drop original timestamp with local time zone columns
alter table EBA_CA_ERRORS drop (ERR_TIME)
/
alter table EBA_CA_COLOR_PREFS drop (CREATED,UPDATED)
/
alter table EBA_CA_EVENT_TYPES drop (CREATED_ON,LAST_UPDATED_ON)
/
alter table EBA_CA_HISTORY drop (CHANGE_DATE)
/
alter table EBA_CA_SERIES drop (START_DATE,END_DATE,CREATED_ON,LAST_UPDATED_ON)
/
alter table EBA_CA_TAGS drop (CREATED,UPDATED)
/
alter table EBA_CA_CALENDARS drop (CREATED_ON,LAST_UPDATED_ON)
/
alter table EBA_CA_EVENTS drop (EVENT_DATE_TIME,CREATED_ON,LAST_UPDATED_ON)
/
alter table EBA_CA_NOTES drop (CREATED,UPDATED)
/
alter table EBA_CA_FILES drop (CREATED,UPDATED)
/
alter table EBA_CA_EMAIL_GROUPS drop (CREATED_ON,LAST_UPDATED_ON)
/
alter table EBA_CA_EMAIL_GROUP_MBRS drop (CREATED_ON,LAST_UPDATED_ON)
/
alter table EBA_CA_TIMEFRAMES drop (CREATED_ON,LAST_UPDATED_ON)
/
--TABLE and TRIGGER NO LONGER EXISTS AT THIS POINT.
--alter table EBA_CA_ADMINS drop (CREATED_ON,LAST_UPDATED_ON)
--/
alter table EBA_CA_NOTIFICATIONS drop (DISPLAY_FROM,DISPLAY_UNTIL,CREATED,UPDATED)
/
alter table EBA_CA_TZ_PREF drop (CREATED,UPDATED)
/
alter table EBA_CA_USERS drop (CREATED,UPDATED)
/
alter table EBA_CA_PREFERENCES drop (CREATED_ON,UPDATED_ON)
/

-- 4 Rename temporary columns back to original column names
alter table EBA_CA_ERRORS rename column ERR_TIME1 to ERR_TIME
/
alter table EBA_CA_COLOR_PREFS rename column CREATED1 to CREATED
/
alter table EBA_CA_COLOR_PREFS rename column UPDATED1 to UPDATED
/
alter table EBA_CA_EVENT_TYPES rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_EVENT_TYPES rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
alter table EBA_CA_HISTORY rename column CHANGE_DATE1 to CHANGE_DATE
/
alter table EBA_CA_SERIES rename column START_DATE1 to START_DATE
/
alter table EBA_CA_SERIES rename column END_DATE1 to END_DATE
/
alter table EBA_CA_SERIES rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_SERIES rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
alter table EBA_CA_TAGS rename column CREATED1 to CREATED
/
alter table EBA_CA_TAGS rename column UPDATED1 to UPDATED
/
alter table EBA_CA_CALENDARS rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_CALENDARS rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
alter table EBA_CA_EVENTS rename column EVENT_DATE_TIME1 to EVENT_DATE_TIME
/
alter table EBA_CA_EVENTS rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_EVENTS rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
alter table EBA_CA_NOTES rename column CREATED1 to CREATED
/
alter table EBA_CA_NOTES rename column UPDATED1 to UPDATED
/
alter table EBA_CA_FILES rename column CREATED1 to CREATED
/
alter table EBA_CA_FILES rename column UPDATED1 to UPDATED
/
alter table EBA_CA_EMAIL_GROUPS rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_EMAIL_GROUPS rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
alter table EBA_CA_EMAIL_GROUP_MBRS rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_EMAIL_GROUP_MBRS rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
alter table EBA_CA_TIMEFRAMES rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_TIMEFRAMES rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
/
----TABLE and TRIGGER NO LONGER EXISTS AT THIS POINT.
--alter table EBA_CA_ADMINS rename column CREATED_ON1 to CREATED_ON
--/
--alter table EBA_CA_ADMINS rename column LAST_UPDATED_ON1 to LAST_UPDATED_ON
--/
alter table EBA_CA_NOTIFICATIONS rename column DISPLAY_FROM1 to DISPLAY_FROM
/
alter table EBA_CA_NOTIFICATIONS rename column DISPLAY_UNTIL1 to DISPLAY_UNTIL
/
alter table EBA_CA_NOTIFICATIONS rename column CREATED1 to CREATED
/
alter table EBA_CA_NOTIFICATIONS rename column UPDATED1 to UPDATED
/
alter table EBA_CA_TZ_PREF rename column CREATED1 to CREATED
/
alter table EBA_CA_TZ_PREF rename column UPDATED1 to UPDATED
/
alter table EBA_CA_USERS rename column CREATED1 to CREATED
/
alter table EBA_CA_USERS rename column UPDATED1 to UPDATED
/
alter table EBA_CA_PREFERENCES rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CA_PREFERENCES rename column UPDATED_ON1 to UPDATED_ON
/

-- 6 Re-create, enable Triggers and set columns with current_timestamp instead of localtimestamp
create or replace TRIGGER BI_EBA_CA_ERRORS
    before insert or update on EBA_CA_ERRORS
    for each row
begin
    if :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
end;
/

alter trigger "BI_EBA_CA_ERRORS" ENABLE;
/

create or replace TRIGGER BIU_EBA_CA_COLOR_PREFS
before insert or update on EBA_CA_COLOR_PREFS
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated    := current_timestamp;
    end if;
    if :new.display_sequence is null then
       :new.display_sequence := 10;
    end if;
end;
/

alter trigger "BIU_EBA_CA_COLOR_PREFS" ENABLE;
/

create or replace TRIGGER EBA_CA_EVENT_TYPES_BIU
  before insert or update on EBA_CA_EVENT_TYPES               
  for each row  
begin   
  if inserting then
     if :new.type_id is null 
        then :new.type_id := eba_ca_api.gen_id; 
     end if;
     :new.created_on := current_timestamp;
     :new.created_by := nvl(v('APP_USER'),USER);
   end if;
   if updating then
      :new.last_updated_on := current_timestamp;
      :new.last_updated_by := nvl(v('APP_USER'),USER);
   end if; 
   if :new.is_active_yn is null then
       if :new.type_name is null then
          :new.is_active_yn := 'N';
       else
          :new.is_active_yn := 'Y';
       end if;
   end if;
end; 
/

alter trigger "EBA_CA_EVENT_TYPES_BIU" ENABLE;
/

create or replace TRIGGER BIU_EBA_CA_HISTORY 
   before insert or update on EBA_CA_HISTORY
   for each row
begin
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.change_date := current_timestamp;
       :new.changed_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := :new.row_version_number + 1;
   end if;
end;
/

alter trigger "BIU_EBA_CA_HISTORY" ENABLE;
/

create or replace TRIGGER EBA_CA_SERIES_BIU
  before insert or update on EBA_CA_SERIES               
  for each row  
begin   
  if inserting then
     if :new.series_id is null 
        then :new.series_id := eba_ca_api.gen_id;
     end if;
     :new.created_on := current_timestamp;
     :new.created_by := nvl(v('APP_USER'),USER);
   end if;
   if updating then
      :new.last_updated_on := current_timestamp;
      :new.last_updated_by := nvl(v('APP_USER'),USER);
   end if; 
end;
/

alter trigger "EBA_CA_SERIES_BIU" ENABLE;
/

create or replace TRIGGER BIU_EBA_CA_TAGS
   before insert or update on EBA_CA_TAGS
   for each row
   begin
      if inserting then
         if :new.id is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
         end if;
         :new.created := current_timestamp;
         :new.created_by := nvl(v('APP_USER'),USER);
      end if;
      if updating then
         :new.updated := current_timestamp;
         :new.updated_by := nvl(v('APP_USER'),USER);
      end if;
end;
/

alter trigger "BIU_EBA_CA_TAGS" ENABLE;
/

create or replace TRIGGER EBA_CA_CALENDARS_BIU
  before insert or update on EBA_CA_CALENDARS               
  for each row  
begin   
  if inserting then
     if :new.calendar_id is null 
        then :new.calendar_id := eba_ca_api.gen_id; 
     end if;
     :new.created_on := current_timestamp;
     :new.created_by := nvl(v('APP_USER'),USER);
   end if;
   if updating then
      :new.last_updated_on := current_timestamp;
      :new.last_updated_by := nvl(v('APP_USER'),USER);
   end if; 
end; 
/

alter trigger "EBA_CA_CALENDARS_BIU" ENABLE;
/

create or replace TRIGGER AD_EBA_CA_EVENTS
   after delete on EBA_CA_EVENTS
   for each row
begin
   insert into eba_ca_history (
       table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :old.row_key, :old.event_id, 'DELETE',null,'Removed event '||:old.EVENT_NAME);
end AD_EBA_CA_EVENTS;
/

alter trigger "AD_EBA_CA_EVENTS" ENABLE;
/

create or replace TRIGGER EBA_CA_EVENTS_BIU
  before insert or update on EBA_CA_EVENTS               
  for each row  
begin   
  if inserting then
     if :NEW.event_id is null 
        then :NEW.event_id := EBA_ca_api.gen_id;
     end if;
     :NEW.CREATED_ON := current_timestamp;
     :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
     :new.row_version_number := 1;
   end if;
   if updating then
      :NEW.LAST_UPDATED_ON := current_timestamp;
      :NEW.LAST_UPDATED_BY := nvl(v('APP_USER'),USER);
      :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if; 
   if :new.row_key is null then
       select eba_ca_fw.compress_int(eba_ca_seq.nextval) into :new.row_key from dual;
   end if;
   eba_ca_fw.tag_sync(
         p_new_tags      => :new.tags,
         p_old_tags      => :old.tags,
         p_content_type  => 'EVENT',
         p_content_id    => :new.event_id );
end; 
/

alter trigger "EBA_CA_EVENTS_BIU" ENABLE;
/

create or replace TRIGGER BD_EBA_CA_EVENTS
    before delete on EBA_CA_EVENTS
    for each row
begin
    eba_ca_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'EVENT',
        p_content_id    => :old.event_id );
end;
/

alter trigger "BD_EBA_CA_EVENTS" ENABLE;
/

create or replace TRIGGER AU_EBA_CA_EVENTS
   after update on EBA_CA_EVENTS
   for each row
declare
   ov varchar2(4000) := null;
   nv varchar2(4000) := null;
begin
   -- FK
   if updating and :old.TYPE_ID != :new.TYPE_ID then
      ov := null; nv := null;
      for c1 in (select type_name from eba_ca_event_types t where t.type_id = :old.TYPE_ID) loop
          ov := c1.type_name;
      end loop;
      for c1 in (select type_name from eba_ca_event_types t where t.type_id = :new.TYPE_ID) loop
          nv := c1.type_name;
      end loop;   
      insert into eba_ca_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
          ('EVENTS',:new.row_key, :new.event_id, 'TYPE_ID',ov,nv);
   end if;
   --
   if nvl(:old.SERIES_ID,'0') != nvl(:new.SERIES_ID,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS',:new.row_key, :new.event_id, 'SERIES_ID',:old.SERIES_ID,:new.SERIES_ID);
   end if;
   if nvl(:old.EVENT_NAME,'0') != nvl(:new.EVENT_NAME,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS',:new.row_key, :new.event_id, 'EVENT_NAME',:old.EVENT_NAME,:new.EVENT_NAME);
   end if;
   if nvl(:old.DURATION,'0') != nvl(:new.DURATION,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'DURATION',:old.DURATION,:new.DURATION);
   end if;
   if nvl(:old.EVENT_DESC,'0') != nvl(:new.EVENT_DESC,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'EVENT_DESC',:old.EVENT_DESC,:new.EVENT_DESC);
   end if;
   if nvl(:old.CONTACT_PERSON,'0') != nvl(:new.CONTACT_PERSON,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'CONTACT_PERSON',:old.CONTACT_PERSON,:new.CONTACT_PERSON);
   end if;
   if nvl(:old.CONTACT_EMAIL,'0') != nvl(:new.CONTACT_EMAIL,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'CONTACT_EMAIL',:old.CONTACT_EMAIL,:new.CONTACT_EMAIL);
   end if;
   if nvl(:old.DISPLAY_TIME,'0') != nvl(:new.DISPLAY_TIME,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'DISPLAY_TIME',:old.DISPLAY_TIME,:new.DISPLAY_TIME);
   end if;
   if nvl(:old.LOCATION,'0') != nvl(:new.LOCATION,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LOCATION',:old.LOCATION,:new.LOCATION);
   end if;
   if nvl(:old.LINK_NAME_1,'0') != nvl(:new.LINK_NAME_1,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_NAME_1',:old.LINK_NAME_1,:new.LINK_NAME_1);
   end if;
   if nvl(:old.LINK_URL_1,'0') != nvl(:new.LINK_URL_1,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_URL_1',:old.LINK_URL_1,:new.LINK_URL_1);
   end if;
   if nvl(:old.LINK_NAME_2,'0') != nvl(:new.LINK_NAME_2,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_NAME_2',:old.LINK_NAME_2,:new.LINK_NAME_2);
   end if;
   if nvl(:old.LINK_URL_2,'0') != nvl(:new.LINK_URL_2,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_URL_2',:old.LINK_URL_2,:new.LINK_URL_2);
   end if;
   if nvl(:old.LINK_NAME_3,'0') != nvl(:new.LINK_NAME_3,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_NAME_3',:old.LINK_NAME_3,:new.LINK_NAME_3);
   end if;
   if nvl(:old.LINK_URL_3,'0') != nvl(:new.LINK_URL_3,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_URL_3',:old.LINK_URL_3,:new.LINK_URL_3);
   end if;
   if nvl(:old.LINK_NAME_4,'0') != nvl(:new.LINK_NAME_4,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_NAME_4',:old.LINK_NAME_4,:new.LINK_NAME_4);
   end if;
   if nvl(:old.LINK_URL_4,'0') != nvl(:new.LINK_URL_4,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'LINK_URL_4',:old.LINK_URL_4,:new.LINK_URL_4);
   end if;
   if nvl(:old.TAGS,'0') != nvl(:new.TAGS,'0') then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :new.row_key, :new.event_id, 'TAGS',:old.TAGS,:new.TAGS);
   end if;
   -- timestamp columns
   if (:old.EVENT_DATE_TIME is null and :new.EVENT_DATE_TIME is not null) or 
      (:old.EVENT_DATE_TIME is not null and :new.EVENT_DATE_TIME is null) or 
      (:old.EVENT_DATE_TIME != :new.EVENT_DATE_TIME) then
       insert into eba_ca_history (table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
          ('EVENTS', :new.row_key, :new.event_id, 'EVENT_DATE_TIME',:old.EVENT_DATE_TIME,:new.EVENT_DATE_TIME);
   end if;
end AU_EBA_CA_EVENTS;
/

alter trigger "AU_EBA_CA_EVENTS" ENABLE;
/

create or replace TRIGGER AI_EBA_CA_EVENTS
   after insert on EBA_CA_EVENTS
   for each row
begin
   insert into eba_ca_history (
       table_name, component_rowkey, component_id, column_name, old_value, new_value) values
       ('EVENTS',:new.row_key, :new.event_id, 'Event Name ',null,:new.EVENT_NAME);
end AI_EBA_CA_EVENTS;
/

alter trigger "AI_EBA_CA_EVENTS" ENABLE;
/

create or replace TRIGGER BIU_EBA_CA_NOTES 
   before insert or update on EBA_CA_NOTES
   for each row
begin
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/

alter trigger "BIU_EBA_CA_NOTES" ENABLE;
/

create or replace TRIGGER BIU_EBA_CA_FILES 
   before insert or update on EBA_CA_FILES
   for each row
begin
  if :new.ID is null then
    select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
  end if;
  if inserting then
    :new.created := current_timestamp;
    :new.created_by := nvl(wwv_flow.g_user,user);
    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
    :new.row_version_number := 1;
  elsif updating then
    :new.row_version_number := nvl(:old.row_version_number,1) + 1;
  end if;
  if (inserting or updating) and nvl(dbms_lob.getlength(:new.file_blob),0) > 15728640 then
    raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller file.');
  end if;
  if inserting or updating then
    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
  end if;
end;
/

alter trigger "BIU_EBA_CA_FILES" ENABLE;
/

create or replace TRIGGER EBA_CA_EMAIL_GROUPS_BIU
  before insert or update on EBA_CA_EMAIL_GROUPS               
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

alter trigger "EBA_CA_EMAIL_GROUPS_BIU" ENABLE;
/

create or replace TRIGGER EBA_CA_EMAIL_GROUP_MBRS_BIU
  before insert or update on EBA_CA_EMAIL_GROUP_MBRS              
  for each row  
begin   
  if inserting then
     if :NEW.mbr_id is null 
        then :NEW.mbr_id := EBA_ca_api.gen_id; 
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

alter trigger "EBA_CA_EMAIL_GROUP_MBRS_BIU" ENABLE;
/

create or replace TRIGGER EBA_CA_TIMEFRAMES_BIU
  before insert or update on EBA_CA_TIMEFRAMES               
  for each row  
begin   
  if inserting then
     if :NEW.tf_id is null 
        then :NEW.tf_id := EBA_ca_api.gen_id; 
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

alter trigger "EBA_CA_TIMEFRAMES_BIU" ENABLE;
/

--TABLE and TRIGGER NO LONGER EXISTS AT THIS POINT.
--create or replace TRIGGER EBA_CA_ADMINS_BIU
--  before insert or update on EBA_CA_ADMINS               
--  for each row  
--begin   
--  if inserting then
--     if :NEW.admin_id is null 
--        then :NEW.admin_id := EBA_ca_api.gen_id; 
--     end if;
--     :NEW.CREATED_ON := current_timestamp;
--     :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
--   end if;
--   if updating then
--      :NEW.LAST_UPDATED_ON := current_timestamp;
--      :NEW.LAST_UPDATED_BY := nvl(v('APP_USER'),USER);
--   end if; 
--end;
--/

--alter trigger "EBA_CA_ADMINS_BIU" ENABLE;
--/

create or replace TRIGGER EBA_CA_NOTE_BIU
before insert or update on EBA_CA_NOTIFICATIONS
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated    := current_timestamp;
    end if;
    if :new.notification_type is null then
       :new.notification_type := 'MANUAL';
    end if;
    if :new.display_sequence is null then
       :new.display_sequence := 10;
    end if;
end;
/

alter trigger "EBA_CA_NOTE_BIU" ENABLE;
/

create or replace TRIGGER BIU_EBA_CA_TZ_PREF
   before insert or update on EBA_CA_TZ_PREF
   for each row
begin
   if :new.ID is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if :new.TIMEZONE_PREFERENCE is null then
       :new.timezone_preference := 'UTC';
   end if;
end;
/

alter trigger "BIU_EBA_CA_TZ_PREF" ENABLE;
/

create or replace TRIGGER EBA_CA_USERS_BD
    before delete on EBA_CA_USERS
    for each row
declare
    pragma autonomous_transaction;
begin
    -- Disallow deletes to a user's own record unless last one.
    if v('APP_USER') = upper(:old.username) then
       for c1 in (
          select count(*) cnt
            from eba_ca_users
           where id != :old.id )
       loop
          if c1.cnt > 0 then
             raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
          end if;
       end loop;
    end if;    
end;
/

alter trigger "EBA_CA_USERS_BD" ENABLE;
/

create or replace TRIGGER EBA_CA_USERS_BIU
    before insert or update on EBA_CA_USERS
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_ca.gen_id();
        end if;
        :new.created_by         := nvl(v('APP_USER'), USER);
        :new.created            := current_timestamp;
        :new.row_version        := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';    
        end if;
    end if;
    if updating then
            :new.updated_by         := nvl(v('APP_USER'), USER);
            :new.updated            := current_timestamp;
            :new.row_version        := nvl(:old.row_version,1) + 1;                                
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;
/

alter trigger "EBA_CA_USERS_BIU" ENABLE;
/

create or replace TRIGGER EBA_CA_PREFERENCES_BIU
before insert or update on EBA_CA_PREFERENCES
    for each row
begin
    if inserting and :new.id is null then
        :new.id := eba_ca.gen_id();
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created_on := current_timestamp;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated_on := current_timestamp;
    end if;
    :new.preference_name := upper(:new.preference_name);
end;
/

alter trigger "EBA_CA_PREFERENCES_BIU" ENABLE;
/
