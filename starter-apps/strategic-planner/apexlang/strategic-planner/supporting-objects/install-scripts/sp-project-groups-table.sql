create table sp_project_groups (
   id                 number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                      constraint sp_project_groups_pk primary key,
   group_name         varchar2(255   char) not null enable, 
   group_description  varchar2(4000  char),
   --
   is_active_yn       varchar2(1 char)
                      default on null 'Y'
                      constraint sp_project_groups_active_yn 
                      check (is_active_yn in ('Y','N')),
   --
   created            date,
   created_by         varchar2(255 char), 
   updated            date, 
   updated_by         varchar2(255 char)
   )
/

create unique index  sp_project_groups_i1 on  sp_project_groups (upper(group_name))
/


CREATE OR REPLACE EDITIONABLE TRIGGER  sp_project_groups_biu
   before insert or update on sp_project_groups 
   for each row 
begin 
   if inserting then 
       :new.created := localtimestamp; 
       :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
   end if; 
   if inserting or updating then 
       :new.updated := localtimestamp; 
       :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
   end if; 
end sp_project_groups_biu; 
/
