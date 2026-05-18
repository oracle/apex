create or replace trigger ad_EBA_CA_EVENTS
   after delete on EBA_CA_EVENTS
   for each row
begin
   insert into eba_ca_history (
       table_name, component_rowkey, COMPONENT_ID, column_name, old_value, new_value) values
       ('EVENTS', :old.row_key, :old.event_id, 'DELETE',null,'Removed event '||:old.EVENT_NAME);
end ad_EBA_CA_EVENTS;
/
show errors


create or replace trigger ai_EBA_CA_EVENTS
   after insert on EBA_CA_EVENTS
   for each row
begin
   insert into eba_ca_history (
       table_name, component_rowkey, component_id, column_name, old_value, new_value) values
       ('EVENTS',:new.row_key, :new.event_id, 'Event Name ',null,:new.EVENT_NAME);
end ai_EBA_CA_EVENTS;
/
show errors

create or replace trigger au_EBA_CA_EVENTS
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
end au_EBA_CA_EVENTS;
/
show errors