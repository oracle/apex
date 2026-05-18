create table EBA_CA_tz_pref (
  id                        number not null
                            constraint EBA_CA_tz_pref_pk
                            primary key,
  row_version_number        integer,
  userid                    varchar2(255) not null,
  TIMEZONE_PREFERENCE       varchar2(255) not null,
  created                   timestamp with time zone,
  created_by                varchar2(255),
  updated                   timestamp with time zone,
  updated_by                varchar2(255)
  );
  
create or replace trigger biu_EBA_CA_tz_pref
   before insert or update on EBA_CA_tz_pref
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
alter trigger biu_EBA_CA_tz_pref enable;