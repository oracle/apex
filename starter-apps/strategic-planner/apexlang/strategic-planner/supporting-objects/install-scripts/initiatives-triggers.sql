create or replace trigger sp_initiatives_biu
    before insert or update
    on sp_initiatives
    for each row
declare 
    l_tags        varchar2(4000);
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
    l_changed_by  varchar2(255)  := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    if :new.SPONSOR_ID is null then
       for c1 in (select OWNER_ID from SP_AREAS f where f.id = :new.AREA_ID and owner_id is not null) loop
           :new.SPONSOR_ID := c1.owner_id;
       end loop;
    end if;
    --
    -- short ID used as an alternative to long numeric ID primary key column
    --
    if :new.friendly_identifier is null then
       :new.friendly_identifier := sp_util.compress_int(sp_seq.nextval);
    end if;
    --
    -- used to provide friendly URLs
    --
    if not sp_value_compare.is_equal(:old.initiative,:new.initiative) then
       :new.initiative_url_name := ltrim(rtrim(replace(replace(REGEXP_REPLACE(translate(substr(:new.initiative,1,80),'()+%$&^!@[];:"?/~!-+_.<>','                        '),'\s+', ' '), '''', ''),' ','-'),'-'),'-');
    end if;
    --
    -- status scale
    --
    if :new.status_scale is null then
       :new.status_scale := 'A';
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
   --
   --
   if :new.hidden_by_default_yn is null then
      :new.hidden_by_default_yn := 'N';
   end if;
   --
   -- touch parent table
   --
   update sp_areas set updated = sysdate, updated_by = :new.updated_by where id = :new.area_id;
    --
    -- history
    --
    if updating then
        l_changed_by := lower(:new.updated_by);

        if not sp_value_compare.is_equal(:old.initiative,:new.initiative) then
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'INITIATIVE', 'UPDATE', :old.initiative, :new.initiative, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.area_id,:new.area_id) then
            for c1 in (select AREA r from SP_AREAS x where x.id = :old.AREA_ID) loop l_old_value := c1.r; end loop;
            for c1 in (select AREA r from SP_AREAS x where x.id = :new.AREA_ID) loop l_new_value := c1.r; end loop;
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'AREA', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.objective,:new.objective) then
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'OBJECTIVE', 'UPDATE', :old.objective, :new.objective, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.sponsor_id,:new.sponsor_id) then
            for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.sponsor_id) loop l_old_value := c1.r; end loop;
            for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.sponsor_id) loop l_new_value := c1.r; end loop;
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'SPONSOR', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.status_scale,:new.status_scale) then
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'STATUS_SCALE', 'UPDATE', :old.status_scale, :new.status_scale, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.tags,:new.tags) then
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'TAGS', 'UPDATE', :old.tags, :new.tags, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.archived_yn,:new.archived_yn) then
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
            values
                (:new.id, 'ARCHIVED', 'UPDATE', :old.archived_yn, :new.archived_yn, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.hidden_by_default_yn,:new.hidden_by_default_yn) then
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
            values
                (:new.id, 'HIDDEN_BY_DEFAULT', 'UPDATE', :old.hidden_by_default_yn, :new.hidden_by_default_yn, sysdate, l_changed_by);
        end if;
    end if;
end sp_initiatives_biu;
/
create or replace trigger sp_initiatives_ai
    after insert
    on sp_initiatives
    for each row
declare
    l_new_value   varchar2(4000) := null;
begin
    for c1 in (select AREA r from SP_AREAS x where x.id = :new.AREA_ID) loop l_new_value := c1.r; end loop;
    insert into sp_initiative_history
        (initiative_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:new.id, 'INITIATIVE', 'CREATE', l_new_value||': '||:new.initiative, sysdate, lower(:new.created_by));
end sp_initiatives_ai;
/
create or replace trigger sp_initiatives_bd
    before delete
    on sp_initiatives
    for each row
declare
    l_old_value   varchar2(4000) := null;
begin
    --
    -- touch parent table
    --
    update sp_areas set updated = sysdate, updated_by = :old.updated_by where id = :old.area_id;
    --
    for c1 in (select AREA r from SP_AREAS x where x.id = :old.AREA_ID) loop l_old_value := c1.r; end loop;
    insert into sp_initiative_history
        (initiative_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.id, 'INITIATIVE', 'DELETE', l_old_value||': '||:old.initiative, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_initiatives_bd;
/