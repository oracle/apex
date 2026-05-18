create or replace trigger biu_eba_demo_tree_proj
   before insert or update on eba_demo_tree_projects
   for each row
begin  
   if :new."PROJ_ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.proj_id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_eba_demo_tree_proj enable
/
    
create or replace trigger biu_eba_demo_tree_task
   before insert or update on eba_demo_tree_task
   for each row
begin  
   if :new."TASK_ID" is null then
     select max(task_id)+1 into :new.task_id from eba_demo_tree_task;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_eba_demo_tree_task enable
/

create or replace trigger biu_eba_demo_tree_stocks
   before insert or update on eba_demo_tree_stocks
   for each row
begin  
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_eba_demo_tree_stocks enable
/
    

create or replace trigger biu_eba_demo_tree_pop
   before insert or update on eba_demo_tree_population
   for each row
begin  
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_eba_demo_tree_pop enable
/    


  CREATE OR REPLACE TRIGGER BIU_EBA_DEMO_TREE_FILES
   before insert or update on eba_demo_tree_proj_files
   for each row
   begin
      if :NEW.ID is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
      end if;
      if inserting then
         :new.created := current_timestamp;
         :new.created_by := nvl(wwv_flow.g_user,user);
         :new.updated := current_timestamp;
         :new.updated_by := nvl(wwv_flow.g_user,user);
      end if;
      if inserting or updating then
         :new.updated := current_timestamp;
         :new.updated_by := nvl(wwv_flow.g_user,user);
      end if;
      if inserting then
         :new.row_version_number := 1;
      elsif updating then
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
   end;
/
    
ALTER TRIGGER BIU_EBA_DEMO_TREE_FILES ENABLE
/



create or replace trigger biu_eba_demo_tree_subtask
   before insert or update on eba_demo_tree_subtask
    for each row
begin  
   if :new."SUB_ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.sub_id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_eba_demo_tree_subtask enable
/

