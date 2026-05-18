create or replace trigger sp_project_links_biu
    before insert or update
    on sp_project_links
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
    update sp_projects set updated = sysdate, updated_by = :new.updated_by where id = :new.project_id;
    --
    -- history
    --
    if inserting then
       if :new.project_id is not null then
           insert into sp_project_history
               (project_id, attribute_column, change_type, new_value, changed_on, changed_by)
           values
               (:new.project_id, 'LINK', 'CREATE', :new.link_url, sysdate, lower(:new.created_by));
       elsif updating then
          if not sp_value_compare.is_equal(:old.link_url,:new.link_url) then
              insert into sp_project_history
                  (project_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
              values
                  (:new.project_id, 'LINK', 'UPDATE', :old.link_url, :new.link_url, sysdate, lower(:new.updated_by));
          end if;
       end if;
    end if;
end sp_project_links_biu;
/

create or replace trigger sp_project_links_bd
    before delete
    on sp_project_links
    for each row
begin
    if :old.project_id is not null then
        --
        -- touch parent table
        --
        update sp_projects set updated = sysdate, updated_by = :old.updated_by where id = :old.project_id;
        --
        insert into sp_project_history
            (project_id, attribute_column, change_type, old_value, changed_on, changed_by)
        values
            (:old.project_id, 'LINK', 'DELETE', :old.link_url, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
    end if;
end sp_project_links_bd;
/