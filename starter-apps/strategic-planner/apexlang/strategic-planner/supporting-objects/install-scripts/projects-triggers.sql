create or replace trigger sp_projects_biu
    before insert or update
    on sp_projects
    for each row
declare
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
    l_changed_by  varchar2(255)  := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    l_old_clob    clob;
    l_new_clob    clob;
    l_tags        varchar2(4000) := null;
begin
    --
    -- maintain tracking columns
    --
    
    if inserting then
        :new.created := sysdate;
        :new.created_by := l_changed_by;
    end if;
    if sp_globals.g_audit_this then
        :new.updated := sysdate;
        :new.updated_by := l_changed_by;
    end if;
    --
    -- upper project name
    --
    :new.upper_project_name := upper(:new.project);

    --
    -- set external_ticket_identifier and EXTERNAL_TICKET_SYSTEM and external_system_link
    --
    :new.external_ticket_system     := null;
    :new.external_ticket_identifier := null;
    :new.external_system_link       := null;
    for c1 in (
        select EXTERNAL_SYSTEM_NAME, 
               LINK_PATTERN, 
               TICKET_ID_REGEX,
               REQUIRED_INITIATIVE_ID,
               replace(replace(replace(replace(regexp_substr(:new.project,ticket_id_regex),':','-'),' ','-'),'<','-'),'>','-') ext_id
          from SP_EXTERNAL_TICKETING_SYSTEMS
         where nvl(IS_ACTIVE_YN,'N') = 'Y'
           and regexp_substr(:new.project,ticket_id_regex) is not null
           and (required_initiative_id is null or required_initiative_id = :new.initiative_id)
         order by evaulation_sequence
    ) loop
           :new.EXTERNAL_TICKET_SYSTEM := c1.EXTERNAL_SYSTEM_NAME;
           if instr(c1.LINK_PATTERN,'#TICKET_NUMERIC#') > 0 then
              :new.external_ticket_identifier := c1.ext_id;
              :new.external_system_link       := replace(c1.LINK_PATTERN,'#TICKET_NUMERIC#',regexp_replace(c1.ext_id,'[^0-9]',''));
           elsif instr(c1.LINK_PATTERN,'#TICKET#') > 0 then
              :new.external_ticket_identifier := c1.ext_id;
              :new.external_system_link       := replace(c1.LINK_PATTERN,'#TICKET#',:new.external_ticket_identifier);
           else
              :new.external_ticket_identifier := null;
              :new.external_system_link       := c1.LINK_PATTERN;
           end if;
           exit;
    end loop;

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
    -- defaults
    --
    if :new.STATUS_SCALE is null then
       :new.STATUS_SCALE := 'A';
    end if;
    --
    if :new.ARCHIVED_YN is null then
       :new.ARCHIVED_YN := 'N';
    end if;
    --
    -- short project ID used as an alturnative to long numeric ID primary key column
    --
    if :new.friendly_identifier is null then
       :new.friendly_identifier := sp_util.compress_int(sp_seq.nextval);
    end if;
    --
    -- used to provide friendly URLs
    --
    if not sp_value_compare.is_equal(:old.project,:new.project) then
       :new.project_url_name := ltrim(rtrim(replace(replace(REGEXP_REPLACE(translate(substr(:new.project,1,80),'()+%$&^!@[];:"?/~!-+_.<>','                        '),'\s+', ' '), '''', ''),' ','-'),'-'),'-');
    end if;

    --
    -- change history tracking
    --
    if updating then
       l_changed_by := lower(l_changed_by);
       --
       -- INITIATIVE_ID
       --
       if not sp_value_compare.is_equal(:old.INITIATIVE_ID,:new.INITIATIVE_ID) then
          for c1 in (select INITIATIVE r from SP_INITIATIVES x where x.id = :old.INITIATIVE_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select INITIATIVE r from SP_INITIATIVES x where x.id = :new.INITIATIVE_ID) loop l_new_value := c1.r; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'INITIATIVE', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       --
       -- PROJECT 
       --
       if not sp_value_compare.is_equal(:old.PROJECT,:new.PROJECT) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'PROJECT', 'UPDATE', :old.PROJECT, :new.PROJECT, sysdate, l_changed_by);
       end if;
       --
       -- DESCRIPTION 
       --
       if not sp_value_compare.is_equal(:old.DESCRIPTION,:new.DESCRIPTION) then
          l_old_clob := :old.DESCRIPTION;
          l_new_clob := :new.DESCRIPTION;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, old_value_clob, new_value_clob, changed_on, changed_by)
          values
              (:new.id, 'DESCRIPTION', 'UPDATE', dbms_lob.substr(:old.DESCRIPTION,500,1), dbms_lob.substr(:new.DESCRIPTION,500,1), l_old_clob, l_new_clob, sysdate, l_changed_by);
       end if;
       --
       -- OWNER_ID
       --
       if not sp_value_compare.is_equal(:old.OWNER_ID,:new.OWNER_ID) then
          for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.owner_id) loop l_old_value := c1.r; end loop;
          for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.owner_id) loop l_new_value := c1.r; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'OWNER', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       --
       -- TARGET_COMPLETE
       --
       if not sp_value_compare.is_equal(:old.TARGET_COMPLETE,:new.TARGET_COMPLETE) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TARGET_COMPLETE', 'UPDATE', to_char(:old.TARGET_COMPLETE,'DD-MON-YYYY'), to_char(:new.TARGET_COMPLETE,'DD-MON-YYYY'), sysdate, l_changed_by);
       end if;
       --
       -- STATUS_SCALE
       --
       if not sp_value_compare.is_equal(:old.status_scale,:new.status_scale) then
          for c1 in (select scale_name from sp_project_scales where :old.status_scale = scale_letter) loop l_old_value := c1.scale_name; end loop;
          for c1 in (select scale_name from sp_project_scales where :new.status_scale = scale_letter) loop l_new_value := c1.scale_name; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'STATUS_SCALE', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;       
       --
       -- PCT_COMPLETE
       --
       if not sp_value_compare.is_equal(:old.pct_complete,:new.pct_complete) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'PCT_COMPLETE', 'UPDATE', :old.pct_complete, :new.pct_complete, sysdate, l_changed_by);
       end if;
       -- STATUS
       if not sp_value_compare.is_equal(:old.status_id,:new.status_id) then
          for c1 in (select status from sp_project_statuses where :old.status_id = id) loop l_old_value := c1.status; end loop;
          for c1 in (select status from sp_project_statuses where :new.status_id = id) loop l_new_value := c1.status; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'STATUS', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;  
       -- REQUIRES_REVIEWS_YN
       if not sp_value_compare.is_equal(:old.requires_reviews_yn,:new.requires_reviews_yn) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'REQUIRES_REVIEWS', 'UPDATE', :old.requires_reviews_yn, :new.requires_reviews_yn, sysdate, l_changed_by);
       end if;
       -- DUPLICATE_OF_PROJECT_ID
       if not sp_value_compare.is_equal(:old.duplicate_of_project_id,:new.duplicate_of_project_id) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'DUPLICATE_OF_PROJECT_ID', 'UPDATE', :old.duplicate_of_project_id, :new.duplicate_of_project_id, sysdate, l_changed_by);
       end if;

       -- PRIORITY_ID
       if not sp_value_compare.is_equal(:old.priority_id,:new.priority_id) then
          for c1 in (select 'P'||PRIORITY r from SP_PROJECT_PRIORITIES x where x.id = :old.PRIORITY_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select 'P'||PRIORITY r from SP_PROJECT_PRIORITIES x where x.id = :new.PRIORITY_ID) loop l_new_value := c1.r; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'PRIORITY', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       -- RELEASE_ID
       if not sp_value_compare.is_equal(:old.RELEASE_ID,:new.RELEASE_ID) then
          for c1 in (select RELEASE_TRAIN||' '||RELEASE r from SP_RELEASE_TRAINS x where x.id = :old.RELEASE_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select RELEASE_TRAIN||' '||RELEASE r from SP_RELEASE_TRAINS x where x.id = :new.RELEASE_ID) loop l_new_value := c1.r; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'RELEASE', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       -- TAGS
       if not sp_value_compare.is_equal(:old.tags,:new.tags) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'TAGS', 'UPDATE', :old.tags, :new.tags, sysdate, l_changed_by);
       end if;
       -- PROJECT_GROUP
       if not sp_value_compare.is_equal(:old.PROJECT_GROUP_ID,:new.PROJECT_GROUP_ID) then
          for c1 in (select GROUP_NAME r from SP_PROJECT_GROUPS x where x.id = :old.PROJECT_GROUP_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select GROUP_NAME r from SP_PROJECT_GROUPS x where x.id = :new.PROJECT_GROUP_ID) loop l_new_value := c1.r; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'PROJECT_GROUP', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       -- PROJECT_SIZE
       if not sp_value_compare.is_equal(:old.project_size,:new.project_size) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'PROJECT_SIZE', 'UPDATE', :old.project_size, :new.project_size, sysdate, l_changed_by);
       end if;
       -- KB_STACK_RANK
       if not sp_value_compare.is_equal(:old.kb_stack_rank,:new.kb_stack_rank) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'KB_STACK_RANK', 'UPDATE', :old.kb_stack_rank, :new.kb_stack_rank, sysdate, l_changed_by);
       end if;
       -- FOCUS_AREA_ID
       if not sp_value_compare.is_equal(:old.focus_area_id,:new.focus_area_id) then
          for c1 in (select focus_area r from SP_INITIATIVE_FOCUS_AREAS x where x.id = :old.FOCUS_AREA_ID) loop l_old_value := c1.r; end loop;
          for c1 in (select focus_area r from SP_INITIATIVE_FOCUS_AREAS x where x.id = :new.FOCUS_AREA_ID) loop l_new_value := c1.r; end loop;
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'FOCUS_AREA', 'UPDATE', l_old_value, l_new_value, sysdate, l_changed_by);
       end if;
       -- ACTIVE_YN
       if not sp_value_compare.is_equal(:old.active_yn,:new.active_yn) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'ACTIVE', 'UPDATE', :old.active_yn, :new.active_yn, sysdate, l_changed_by);
       end if;
       -- ARCHIVED_YN
       if not sp_value_compare.is_equal(:old.archived_yn,:new.archived_yn) then
          insert into sp_project_history
              (project_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
          values
              (:new.id, 'ARCHIVED', 'UPDATE', :old.archived_yn, :new.archived_yn, sysdate, l_changed_by);
       end if;

    end if;
    
end sp_projects_biu;
/

create or replace trigger sp_projects_ai
    after insert
    on sp_projects
    for each row
begin
    insert into sp_project_history
        (project_id, attribute_column, change_type, new_value, changed_on, changed_by)
    values
        (:new.id, 'PROJECT', 'CREATE', :new.PROJECT, sysdate, lower(:new.created_by));
end sp_projects_ai;
/

create or replace trigger sp_projects_bd
    before delete
    on sp_projects
    for each row
begin
    insert into sp_project_history
        (project_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.id, 'PROJECT', 'DELETE', :old.PROJECT, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_projects_bd;
/