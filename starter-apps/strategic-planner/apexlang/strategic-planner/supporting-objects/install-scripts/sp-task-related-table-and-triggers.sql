create table sp_task_related (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_task_related_pk primary key,
    task_id                        number  not null
                                   constraint sp_task_related_task1_fk
                                   references sp_tasks on delete cascade,
    related_task_id                number  not null
                                   constraint sp_task_related_task2_fk
                                   references sp_tasks on delete cascade,
    --
    relation_type_id               number
                                   constraint sp_task_related_type_fk
                                   references sp_relation_types,
    relation_details               varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_task_related_i1 on sp_task_related (task_id);
create index sp_task_related_i2 on sp_task_related (related_task_id);
create index sp_task_related_i3 on sp_task_related (relation_type_id);

create or replace trigger sp_task_related_biu
    before insert or update
    on sp_task_related
    for each row
declare
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
begin
    if inserting then
        :new.created    := nvl(:new.created,sysdate);
        :new.created_by := nvl(:new.created_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
        :new.updated    := nvl(:new.updated,sysdate);
        :new.updated_by := nvl(:new.updated_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
    elsif updating then
        :new.updated    := sysdate;
        :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    --
    -- touch parent table
    --
    if sp_globals.g_audit_this then
        update sp_tasks set updated = sysdate, updated_by = :new.updated_by where id = :new.task_id;
        update sp_tasks set updated = sysdate, updated_by = :new.updated_by where id = :new.related_task_id;
    end if;
    --
    -- history
    --
    if inserting then
        for c1 in (
            select nvl((select relation_type from sp_relation_types where id = :new.relation_type_id),'relates to') ||' '||
                   task ||
                   case when task is not null then ' (' end ||
                   (select task_type from sp_task_types rt where rt.id = task_type_id)||
                    case when task_sub_type_id is not null 
                         then ': '||(select task_type from sp_task_types rt where rt.id = task_sub_type_id) 
                         end ||
                         case when task is not null then ')' end x
             from sp_tasks
            where id = :new.related_task_id
        ) loop l_new_value := substr(c1.x,1,4000); end loop;
        insert into sp_task_history
            (task_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.task_id, 'RELATED_TASK', 'CREATE', l_new_value, sysdate, lower(:new.created_by));
    elsif updating and
          (nvl(:old.relation_type_id,-1) != nvl(:new.relation_type_id,-1) or
           :new.related_task_id != :new.related_task_id) then 
        for c1 in (
            select nvl((select relation_type from sp_relation_types where id = :old.relation_type_id),'relates to') ||' '||
                   task ||
                   case when task is not null then ' (' end ||
                   (select task_type from sp_task_types rt where rt.id = task_type_id)||
                    case when task_sub_type_id is not null 
                         then ': '||(select task_type from sp_task_types rt where rt.id = task_sub_type_id) 
                         end ||
                         case when task is not null then ')' end x
             from sp_tasks
            where id = :old.related_task_id
        ) loop l_old_value := substr(c1.x,1,4000); end loop;
        for c1 in (
            select nvl((select relation_type from sp_relation_types where id = :new.relation_type_id),'relates to') ||' '||
                   task ||
                   case when task is not null then ' (' end ||
                   (select task_type from sp_task_types rt where rt.id = task_type_id)||
                    case when task_sub_type_id is not null 
                         then ': '||(select task_type from sp_task_types rt where rt.id = task_sub_type_id) 
                         end ||
                         case when task is not null then ')' end x
             from sp_tasks
            where id = :new.related_task_id
        ) loop l_new_value := substr(c1.x,1,4000); end loop;
        insert into sp_task_history
            (task_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
        values
            (:new.task_id, 'RELATED_TASK', 'UPDATE', l_old_value, l_new_value, sysdate, lower(:new.updated_by));
    end if;

end sp_task_related_biu;
/

create or replace trigger sp_task_related_bd
    before delete
    on sp_task_related
    for each row
declare
    l_old_value   varchar2(4000) := null;
begin
    -- touch parent table
    --
    update sp_tasks set updated = sysdate, updated_by = :old.updated_by where id = :old.task_id;
    update sp_tasks set updated = sysdate, updated_by = :old.updated_by where id = :old.related_task_id;
    --
    -- history
    --
    for c1 in (
        select nvl((select relation_type from sp_relation_types where id = :old.relation_type_id),'relates to') ||' '||
               task ||
               case when task is not null then ' (' end ||
               (select task_type from sp_task_types rt where rt.id = task_type_id)||
                case when task_sub_type_id is not null 
                     then ': '||(select task_type from sp_task_types rt where rt.id = task_sub_type_id) 
                     end ||
                     case when task is not null then ')' end x
         from sp_tasks
        where id = :old.related_task_id
    ) loop l_old_value := substr(c1.x,1,4000); end loop;
    insert into sp_task_history
        (task_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.task_id, 'RELATED_TASK', 'DELETE', l_old_value, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_task_related_bd;
/
