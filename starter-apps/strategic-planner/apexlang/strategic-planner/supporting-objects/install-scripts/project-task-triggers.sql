create or replace trigger sp_task_types_biu
    before insert or update
    on sp_task_types
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    --
    --
    :new.static_id := upper(:new.static_id);
end sp_task_types_biu;
/


create or replace trigger sp_initiative_def_tasks_biu
    before insert or update
    on sp_initiative_default_tasks
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    -- touch parent table
    --
    update sp_initiatives set updated = sysdate, updated_by = :new.updated_by where id = :new.initiative_id;
end sp_initiative_def_tasks_biu;
/


create or replace trigger sp_task_statuses_biu
    before insert or update
    on sp_task_statuses
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    :new.static_id := upper(:new.static_id);
end sp_task_statuses_biu;
/


create or replace trigger sp_tasks_biu
    before insert or update
    on sp_tasks
    for each row
declare
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
    l_changed_by  varchar2(255)  := null;
    l_tags        varchar2(4000) := null;
begin
    --
    -- maintain tracking columns
    --
    
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);

    -- maintain status_last_changed
    if not sp_value_compare.is_equal(:old.status_id,:new.status_id) then
       :new.status_last_changed_on := sysdate;
    end if;

    --
    -- adjust tag data
    --
    if :new.tags is not null then
        l_tags := trim(upper(:new.tags));
        -- remove multiple spaces
        if instr(l_tags,'  ') > 0 then
            for j in 1..10 loop 
                l_tags := replace(l_tags,'  ',' '); 
                if instr(l_tags,'  ') = 0 then
                   exit;
                end if;
            end loop; 
        end if;
        for i in 1..length(l_tags) loop
            if i > 2 and substr(l_tags,i,1) = ' ' and substr(l_tags,i-1,1) != ',' then
               l_tags := substr(l_tags,1,i-1)||'-'||substr(l_tags,i+1);
            end if;
        end loop;
        :new.tags := l_tags;
   end if;

    --
    -- touch parent table
    --
    update sp_projects set updated = sysdate, updated_by = :new.updated_by where id = :new.project_id;

    --
    -- change history tracking
    --
    if updating then
       l_changed_by := lower(:new.updated_by);
       --
       -- PROJECT_ID
       --
       if not sp_value_compare.is_equal(:old.PROJECT_ID,:new.PROJECT_ID) then
          for c1 in (select PROJECT r from SP_PROJECTS x where x.id = :old.PROJECT_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select PROJECT r from SP_PROJECTS x where x.id = :new.PROJECT_ID) loop l_new_value := c1.r; end loop;
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'PROJECT', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       --
       -- TASK_TYPE 
       --
       if not sp_value_compare.is_equal(:old.TASK_TYPE_ID,:new.TASK_TYPE_ID) then
          for c1 in (select TASK_TYPE r from SP_TASK_TYPES x where x.id = :old.TASK_TYPE_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select TASK_TYPE r from SP_TASK_TYPES x where x.id = :new.TASK_TYPE_ID) loop l_new_value := c1.r; end loop;
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TASK_TYPE', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       --
       -- TASK_SUB_TYPE 
       --
       if not sp_value_compare.is_equal(:old.TASK_SUB_TYPE_ID,:new.TASK_SUB_TYPE_ID) then
          for c1 in (select TASK_TYPE r from SP_TASK_TYPES x where x.id = :old.TASK_SUB_TYPE_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select TASK_TYPE r from SP_TASK_TYPES x where x.id = :new.TASK_SUB_TYPE_ID) loop l_new_value := c1.r; end loop;
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TASK_SUB_TYPE', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       --
       -- TASK
       --
       if not sp_value_compare.is_equal(:old.TASK,:new.TASK) then
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TASK', 'UPDATE', :old.TASK, :new.TASK, sysdate, l_changed_by);
       end if;
       --
       -- OWNER_ID
       --
       if not sp_value_compare.is_equal(:old.OWNER_ID,:new.OWNER_ID) then
          for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.owner_id) loop l_old_value := c1.r; end loop;
          for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.owner_id) loop l_new_value := c1.r; end loop;
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'OWNER', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       --
       -- START_DATE
       --
       if not sp_value_compare.is_equal(:old.START_DATE,:new.START_DATE) then
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'START_DATE', 'UPDATE', to_char(:old.START_DATE,'DD-MON-YYYY'), to_char(:new.START_DATE,'DD-MON-YYYY'), sysdate, l_changed_by);
       end if;
       --
       -- TARGET_COMPLETE
       --
       if not sp_value_compare.is_equal(:old.TARGET_COMPLETE,:new.TARGET_COMPLETE) then
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TARGET_COMPLETE', 'UPDATE', to_char(:old.TARGET_COMPLETE,'DD-MON-YYYY'), to_char(:new.TARGET_COMPLETE,'DD-MON-YYYY'), sysdate, l_changed_by);
       end if;
       --
       -- STATUS
       --
       if not sp_value_compare.is_equal(:old.status_id,:new.status_id) then
          for c1 in (select status r from SP_TASK_STATUSES x where x.id = :old.status_id) loop l_old_value := c1.r; end loop;
          for c1 in (select status r from SP_TASK_STATUSES x where x.id = :new.status_id) loop l_new_value := c1.r; end loop;
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'STATUS', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;  
       --
       -- DESCRIPTION 
       --
       if not sp_value_compare.is_equal(:old.DESCRIPTION,:new.DESCRIPTION) then
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'DESCRIPTION', 'UPDATE', :old.DESCRIPTION, :new.DESCRIPTION, sysdate, l_changed_by);
       end if;
       --
       -- TAGS
       --
       if not sp_value_compare.is_equal(:old.tags,:new.tags) then
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TAGS', 'UPDATE', :old.tags, :new.tags, sysdate, l_changed_by);
       end if;
       --
       -- IMPACT
       --
       if not sp_value_compare.is_equal(:old.impact,:new.impact) then
          insert into sp_task_history
              (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'IMPACT', 'UPDATE', :old.impact, :new.impact, sysdate, l_changed_by);
       end if;
    end if;
    
end sp_tasks_biu;
/

create or replace trigger sp_tasks_ai
    after insert
    on sp_tasks
    for each row
declare
    l_type  varchar2(5000) := null;
begin
    for c1 in (
        select TASK_TYPE || case when :new.TASK_SUB_TYPE_ID is not null
                                 then ': '||(select task_type from sp_task_types
                                              where id = :new.task_sub_type_id)
                                 end ||
                            case when :new.task is not null 
                                 then ' - '||:new.task
                                 end  r
          from SP_TASK_TYPES x 
         where x.id = :new.TASK_TYPE_ID
    ) loop l_type := substr(c1.r,1,4000); end loop;
    insert into sp_task_history
        (task_id, attribute_column, change_type, new_value, changed_on, changed_by)
    values
        (:new.id, 'TASK', 'CREATE', l_type, sysdate, lower(:new.created_by));
end sp_tasks_ai;
/

create or replace trigger sp_tasks_bd
    before delete
    on sp_tasks
    for each row
declare
    l_type  varchar2(5000) := null;
begin
    --
    -- touch parent table
    --
    update sp_projects set updated = sysdate, updated_by = :old.updated_by where id = :old.project_id;
    --
    for c1 in (
        select TASK_TYPE || case when :old.TASK_SUB_TYPE_ID is not null
                                 then ': '||(select task_type from sp_task_types
                                              where id = :old.task_sub_type_id)
                                 end ||
                            case when :old.task is not null 
                                 then ' - '||:new.task
                                 end r
          from SP_TASK_TYPES x 
         where x.id = :old.TASK_TYPE_ID
    ) loop l_type := substr(c1.r,1,4000); end loop;
    insert into sp_task_history
        (task_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.id, 'TASK', 'DELETE', l_type, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_tasks_bd;
/

create or replace trigger sp_task_links_biu
    before insert or update
    on sp_task_links
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    -- touch parent table
    --
    update sp_tasks set updated = sysdate, updated_by = :new.updated_by where id = :new.task_id;
    --
    -- history
    --
    if inserting then
       if :new.task_id is not null then
           insert into sp_task_history
               (task_id, attribute_column, change_type, new_value, changed_on, changed_by)
           values
               (:new.task_id, 'LINK', 'CREATE', :new.link_url, sysdate, lower(:new.created_by));
       elsif updating then
          if not sp_value_compare.is_equal(:old.link_url,:new.link_url) then
              insert into sp_task_history
                  (task_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
              values
                  (:new.task_id, 'LINK', 'UPDATE', :old.link_url, :new.link_url, sysdate, lower(:new.updated_by));
          end if;
       end if;
    end if;
end sp_task_links_biu;
/

create or replace trigger sp_task_links_bd
    before delete
    on sp_task_links
    for each row
begin
    if :old.task_id is not null then
        --
        -- touch parent table
        --
        update sp_tasks set updated = sysdate, updated_by = :old.updated_by where id = :old.task_id;
        --
        insert into sp_task_history
            (task_id, attribute_column, change_type, old_value, changed_on, changed_by)
        values
            (:old.task_id, 'LINK', 'DELETE', :old.link_url, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
    end if;
end sp_task_links_bd;
/

	
create or replace trigger sp_task_documents_biu
    before insert or update
    on sp_task_documents
    for each row
declare
    l_tags varchar2(4000) := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    --
    --
    :new.tags := upper(:new.tags);
    --
    -- touch parent table
    --
    update sp_tasks set updated = sysdate, updated_by = :new.updated_by where id = :new.task_id;
    --
    -- adjust tag data
    --
    if :new.tags is not null then
        l_tags := trim(upper(:new.tags));
        -- remove multiple spaces
        if instr(l_tags,'  ') > 0 then
            for j in 1..10 loop 
                l_tags := replace(l_tags,'  ',' '); 
                if instr(l_tags,'  ') = 0 then
                   exit;
                end if;
            end loop; 
        end if;
        for i in 1..length(l_tags) loop
            if i > 2 and substr(l_tags,i,1) = ' ' and substr(l_tags,i-1,1) != ',' then
               l_tags := substr(l_tags,1,i-1)||'-'||substr(l_tags,i+1);
            end if;
        end loop;
        :new.tags := l_tags;
   end if;
    --
    -- history
    --
    if inserting then
        insert into sp_task_history
            (task_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.task_id, 'DOCUMENT', 'CREATE', :new.DOCUMENT_FILENAME, sysdate, lower(:new.created_by));
    elsif updating then 
        insert into sp_task_history
            (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
        values
            (:new.task_id, 'DOCUMENT', 'UPDATE', :old.DOCUMENT_FILENAME, :new.DOCUMENT_FILENAME, sysdate, lower(:new.updated_by));
    end if;
end sp_task_documents_biu;
/

create or replace trigger sp_task_documents_bd
    before delete
    on sp_task_documents
    for each row
begin
    --
    -- touch parent table
    --
    update sp_tasks set updated = sysdate, updated_by = :old.updated_by where id = :old.task_id;
    --
    insert into sp_task_history
        (task_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.task_id, 'DOCUMENT', 'DELETE', :old.document_filename, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_task_documents_bd;
/


create or replace trigger sp_task_comments_biu
    before insert or update
    on sp_task_comments
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    --
    --
    if :new.private_yn is null then 
        :new.private_yn := 'N';
    end if;
    --
    -- touch parent table
    --
    update sp_tasks set updated = sysdate, updated_by = :new.updated_by where id = :new.task_id;
    --
    -- history
    --
    if inserting and :new.private_yn = 'N' then
        insert into sp_task_history
            (task_id, attribute_column, change_type, new_value, new_value_clob, changed_on, changed_by)
        values
            (:new.task_id, 'COMMENT', 'CREATE', dbms_lob.substr(:new.body_no_images,500,1), :new.body_no_images, sysdate, lower(:new.created_by));
    elsif updating and :old.private_yn = 'N' and :new.private_yn = 'N' then
        if not sp_value_compare.is_equal(:old.body_no_images,:new.body_no_images) then
            insert into sp_task_history
                (task_id, attribute_column, change_type, old_value, new_value, old_value_clob, new_value_clob, changed_on, changed_by)
            values
                (:new.task_id, 'COMMENT', 'UPDATE', dbms_lob.substr(:old.body_no_images,500,1), dbms_lob.substr(:new.body_no_images,1), :old.body_no_images, :new.body_no_images, sysdate, lower(:new.updated_by));
        end if;
    end if;
end sp_task_comments_biu;
/

create or replace trigger sp_task_comments_bd
    before delete
    on sp_task_comments
    for each row
begin
    if :old.private_yn = 'N' then
        --
        -- touch parent table
        --
        update sp_tasks set updated = sysdate, updated_by = :old.updated_by where id = :old.task_id;
        --
        insert into sp_task_history
            (task_id, attribute_column, change_type, old_value, old_value_clob, changed_on, changed_by)
        values
            (:old.task_id, 'COMMENT', 'DELETE', dbms_lob.substr(:old.body_no_images,500,1), :old.body_no_images, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
    end if;
end sp_task_comments_bd;
/