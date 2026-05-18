create table eba_ca_event_types (
   type_id          number         not null,
   type_name        varchar2(60)   not null,
   display_color    varchar2(60),
   border_color     varchar2(30),
   text_color       varchar2(30),
   internal_yn      varchar2(1),
   is_active_yn     varchar2(1),
   color_pref_id    number
                    constraint eba_ca_et_cp_ck
                    references eba_ca_color_prefs (id),
   --
   created_on       timestamp with time zone  not null,
   created_by       varchar2(255)  not null,
   last_updated_on  timestamp with time zone,
   last_updated_by  varchar2(255) )
/

-- Add index on foreign key columns
create index eba_ca_event_types_cp_idx on eba_ca_event_types(color_pref_id);

alter table eba_ca_event_types
   add constraint eba_ca_event_types_pk primary key (type_id)
/
    
alter table eba_ca_event_types
   add constraint eba_ca_event_types_uk unique (type_name)
/
    
    
create or replace trigger eba_ca_event_types_biu
  before insert or update on eba_ca_event_types               
  for each row  
begin   
  if inserting then
     if :NEW.type_id is null 
        then :NEW.type_id := eba_ca_api.gen_id; 
     end if;
     :NEW.CREATED_ON := CURRENT_TIMESTAMP;
     :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
   end if;

   if updating then
      :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;
      :NEW.LAST_UPDATED_BY := nvl(v('APP_USER'),USER);
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
show errors
    
 
alter trigger eba_ca_event_types_biu enable
/

commit;

