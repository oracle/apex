create or replace trigger EBA_ca_events_biu
  before insert or update on EBA_ca_events               
  for each row  
begin   
  if inserting then
     if :NEW.event_id is null 
        then :NEW.event_id := EBA_ca_api.gen_id;
     end if;
     :NEW.CREATED_ON := CURRENT_TIMESTAMP;
     :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
     :new.row_version_number := 1;
   end if;

   if updating then
      :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;
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
show errors    

alter trigger EBA_ca_events_biu enable
/
    
    
create or replace trigger BD_EBA_ca_events
    before delete on EBA_ca_events
    for each row
begin
    eba_ca_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'EVENT',
        p_content_id    => :old.event_id );

end;
/
show errors
    
alter trigger BD_EBA_ca_events enable
/
