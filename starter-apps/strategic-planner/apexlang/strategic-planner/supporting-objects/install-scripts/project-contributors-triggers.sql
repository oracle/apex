create or replace trigger sp_project_contributors_biu
    before insert or update
    on sp_project_contributors
    for each row
declare
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.tags := trim(upper(:new.tags));
    --
    -- touch parent table
    --
    update sp_projects set updated = sysdate, updated_by = :new.updated_by where id = :new.project_id;
    --
    -- history
    --
    if inserting then
          for c1 in (select first_name||' '||last_name||' - '||email x from SP_TEAM_MEMBERS t where t.id = :NEW.TEAM_MEMBER_ID) loop l_new_value := c1.x; end loop;
          for c1 in (select resource_type x from SP_RESOURCE_TYPES t where t.id = :NEW.RESPONSIBILITY_ID) loop l_new_value := l_new_value||' - '||c1.x; end loop;
        insert into sp_project_history
            (project_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.project_id, 'CONTRIBUTOR', 'CREATE', l_new_value, sysdate, lower(:new.created_by));
    elsif updating then
          for c1 in (select first_name||' '||last_name||' - '||email x from SP_TEAM_MEMBERS t where t.id = :OLD.TEAM_MEMBER_ID) loop l_old_value := c1.x; end loop;
          for c1 in (select first_name||' '||last_name||' - '||email x from SP_TEAM_MEMBERS t where t.id = :NEW.TEAM_MEMBER_ID) loop l_new_value := c1.x; end loop;
          for c1 in (select resource_type x from SP_RESOURCE_TYPES t where t.id = :OLD.RESPONSIBILITY_ID) loop l_old_value := l_old_value||' - '||c1.x; end loop;
          for c1 in (select resource_type x from SP_RESOURCE_TYPES t where t.id = :NEW.RESPONSIBILITY_ID) loop l_new_value := l_new_value||' - '||c1.x; end loop;
          --
          -- only log updates that change values
          --
          if nvl(l_old_value,'x') != nvl(l_new_value,'x') then
              insert into sp_project_history
                  (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
              values
                  (:new.project_id, 'CONTRIBUTOR', 'UPDATE', l_old_value, l_new_value, sysdate, lower(:new.updated_by));
          end if;
    end if;

end sp_project_contributors_biu;
/

create or replace trigger sp_project_contributors_bd
    before delete
    on sp_project_contributors
    for each row
declare
    v1   varchar2(255) := null;
    v2   varchar2(255) := null;
begin
    --
    -- touch parent table
    --
    update sp_projects set updated = sysdate, updated_by = :old.updated_by where id = :old.project_id;
    --
    for c1 in (select email from sp_team_members x where x.id = :old.team_member_id) loop
        v1 := c1.email;
    end loop;
    for c1 in (select resource_type from sp_resource_types x where x.id = :old.responsibility_id) loop 
        v2 := c1.resource_type;
    end loop;
    insert into sp_project_history
        (project_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.project_id, 'CONTRIBUTOR', 'DELETE', v2||': '||v1, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_project_contributors_bd;
/