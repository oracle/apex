create or replace trigger sp_initiative_focus_areas_biu
    before insert or update
    on sp_initiative_focus_areas
    for each row
declare 
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
    --
    -- history
    --
    if updating then
        l_changed_by := lower(:new.updated_by);

        if not sp_value_compare.is_equal(:old.focus_area,:new.focus_area) then
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'INITIATIVE_FOCUS_AREA', 'UPDATE', :old.focus_area, :new.focus_area, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.development_owner_id,:new.development_owner_id) then
            for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.development_owner_id) loop l_old_value := c1.r; end loop;
            for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.development_owner_id) loop l_new_value := c1.r; end loop;
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'DEVELOPMENT_OWNER', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.description,:new.description) then
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'DESCRIPTION', 'UPDATE', :old.description, :new.description, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.active_yn,:new.active_yn) then
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'ACTIVE', 'UPDATE', :old.active_yn, :new.active_yn, sysdate, l_changed_by);
        end if;
        if not sp_value_compare.is_equal(:old.display_sequence,:new.display_sequence) then
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.id, 'DISPLAY_SEQUENCE', 'UPDATE', :old.display_sequence, :new.display_sequence, sysdate, l_changed_by);
        end if;
    end if;
end sp_initiative_focus_areas_biu;
/
create or replace trigger sp_initiative_focus_areas_ai
    after insert
    on sp_initiative_focus_areas
    for each row
begin
    insert into sp_init_focus_area_history
        (init_focus_area_id, attribute_column, change_type, new_value, changed_on, changed_by)
    values
        (:new.id, 'INITIATIVE_FOCUS_AREA', 'CREATE', :new.focus_area, sysdate, lower(:new.created_by));
end sp_initiative_focus_areas_ai;
/
create or replace trigger sp_initiative_focus_areas_bd
    before delete
    on sp_initiative_focus_areas
    for each row
begin
    insert into sp_init_focus_area_history
        (init_focus_area_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.id, 'INITIATIVE_FOCUS_AREA', 'DELETE', :old.focus_area, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_initiative_focus_areas_bd;
/


create or replace trigger sp_init_focus_area_links_biu
    before insert or update
    on sp_init_focus_area_links
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
    update sp_initiative_focus_areas set updated = sysdate, updated_by = :new.updated_by where id = :new.init_focus_area_id;
    --
    -- history
    --
    if inserting then
        insert into sp_init_focus_area_history
            (init_focus_area_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.init_focus_area_id, 'LINK', 'CREATE', :new.link_url, sysdate, lower(:new.created_by));
    elsif updating then
        if not sp_value_compare.is_equal(:old.link_url,:new.link_url) then
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.init_focus_area_id, 'LINK', 'UPDATE', :old.link_url, :new.link_url, sysdate, lower(:new.updated_by));
         end if;
    end if;
end sp_init_focus_area_links_biu;
/

create or replace trigger sp_init_focus_area_links_bd
    before delete
    on sp_init_focus_area_links
    for each row
begin
    --
    -- touch parent table
    --
    update sp_initiative_focus_areas set updated = sysdate, updated_by = :old.updated_by where id = :old.init_focus_area_id;
    --
    insert into sp_init_focus_area_history
        (init_focus_area_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.init_focus_area_id, 'LINK', 'DELETE', :old.link_url, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_init_focus_area_links_bd;
/

	
create or replace trigger sp_init_focus_area_documents_biu
    before insert or update
    on sp_init_focus_area_documents
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
    update sp_initiative_focus_areas set updated = sysdate, updated_by = :new.updated_by where id = :new.init_focus_area_id;
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
        insert into sp_init_focus_area_history
            (init_focus_area_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.init_focus_area_id, 'DOCUMENT', 'CREATE', :new.DOCUMENT_FILENAME, sysdate, lower(:new.created_by));
    elsif updating then 
        insert into sp_init_focus_area_history
            (init_focus_area_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
        values
            (:new.init_focus_area_id, 'DOCUMENT', 'UPDATE', :old.DOCUMENT_FILENAME, :new.DOCUMENT_FILENAME, sysdate, lower(:new.updated_by));
    end if;
end sp_init_focus_area_documents_biu;
/

create or replace trigger sp_init_focus_area_documents_bd
    before delete
    on sp_init_focus_area_documents
    for each row
begin
    --
    -- touch parent table
    --
    update sp_initiative_focus_areas set updated = sysdate, updated_by = :old.updated_by where id = :old.init_focus_area_id;
    --
    insert into sp_init_focus_area_history
        (init_focus_area_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.init_focus_area_id, 'DOCUMENT', 'DELETE', :old.document_filename, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_init_focus_area_documents_bd;
/


create or replace trigger sp_init_focus_area_comments_biu
    before insert or update
    on sp_init_focus_area_comments
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
    update sp_initiative_focus_areas set updated = sysdate, updated_by = :new.updated_by where id = :new.init_focus_area_id;
    --
    -- history
    --
    if inserting and :new.private_yn = 'N' then
        insert into sp_init_focus_area_history
            (init_focus_area_id, attribute_column, change_type, new_value, new_value_clob, changed_on, changed_by)
        values
            (:new.init_focus_area_id, 'COMMENT', 'CREATE', dbms_lob.substr(:new.body_no_images,500,1), :new.body_no_images, sysdate, lower(:new.created_by));
    elsif updating and :old.private_yn = 'N' and :new.private_yn = 'N' then
        if not sp_value_compare.is_equal(:old.body_no_images,:new.body_no_images) then
            insert into sp_init_focus_area_history
                (init_focus_area_id, attribute_column, change_type, old_value, new_value, old_value_clob, new_value_clob, changed_on, changed_by)
            values
                (:new.init_focus_area_id, 'COMMENT', 'UPDATE', dbms_lob.substr(:old.body_no_images,500,1), dbms_lob.substr(:new.body_no_images,500,1), :old.body_no_images, :new.body_no_images, sysdate, lower(:new.updated_by));
        end if;
    end if;
end sp_init_focus_area_comments_biu;
/
create or replace trigger sp_init_focus_area_comments_bd
    before delete
    on sp_init_focus_area_comments
    for each row
begin
    if :old.private_yn = 'N' then
    --
    -- touch parent table
    --
    update sp_initiative_focus_areas set updated = sysdate, updated_by = :old.updated_by where id = :old.init_focus_area_id;
    --
    insert into sp_init_focus_area_history
        (init_focus_area_id, attribute_column, change_type, old_value, old_value_clob, changed_on, changed_by)
    values
        (:old.init_focus_area_id, 'COMMENT', 'DELETE', dbms_lob.substr(:old.body_no_images,500,1), :old.body_no_images, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
    end if;
end sp_init_focus_area_comments_bd;
/