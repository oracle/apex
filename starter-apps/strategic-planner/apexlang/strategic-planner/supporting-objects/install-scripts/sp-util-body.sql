create or replace package body sp_util as

g_error_retention_in_days  number := 21;

procedure add_error_log ( 
    p_package_name    in varchar2,
    p_procedure_name  in varchar2, 
    p_error           in varchar2, 
    p_arg1_name       in varchar2 default null, 
    p_arg1_val        in varchar2 default null, 
    p_arg2_name       in varchar2 default null, 
    p_arg2_val        in varchar2 default null, 
    p_arg3_name       in varchar2 default null, 
    p_arg3_val        in varchar2 default null, 
    p_arg4_name       in varchar2 default null, 
    p_arg4_val        in varchar2 default null, 
    p_arg5_name       in varchar2 default null, 
    p_arg5_val        in varchar2 default null ) 
as 
    pragma       autonomous_transaction; 
begin 

    insert into sp_error_log 
       (package_name, procedure_name, error, 
        arg1_name, arg1_val, arg2_name, arg2_val, arg3_name, arg3_val, 
        arg4_name, arg4_val, arg5_name, arg5_val ) 
    values 
       (substr(p_package_name,1,255), substr(p_procedure_name,1,500), substr(p_error,1,4000), 
        substr(p_arg1_name,1,255), substr(p_arg1_val,1,4000), substr(p_arg2_name,1,255), substr(p_arg2_val,1,4000), 
        substr(p_arg3_name,1,255), substr(p_arg3_val,1,4000), substr(p_arg4_name,1,255), substr(p_arg4_val,1,4000), 
        substr(p_arg5_name,1,255), substr(p_arg5_val,1,4000) );
    commit; 

    -- g_error_retention_in_days is in the spec
    delete from sp_error_log
     where created_trunc < sysdate - g_error_retention_in_days;
    commit;

end add_error_log;


procedure add_app_log ( 
    p_activity   in varchar2,
    p_details    in varchar2 ) 
as 
begin 

    insert into sp_app_log 
       (activity, details) 
    values 
       (substr(p_activity,1,255), substr(p_details,1,4000) );
    commit; 

end add_app_log;


function create_area (
    p_area                     in varchar2,
    p_description              in varchar2 default null,
    p_owner_id                 in number   default null
    )
    return number
is 
    l_area_id number := null;
begin
    insert into sp_areas (
        AREA,
        description,
        OWNER_ID)
    values (
        p_area,
        p_description,
        p_owner_id
        )
        returning id into l_area_id;
    return l_area_id;
end create_area;

function create_initiative (
    p_area_id                  in number,
    p_initiative               in varchar2,
    p_objective                in varchar2 default null,
    P_OWNER_ID                 in number   default null
    )
    return number
is 
    l_initiative_id number := null;
begin 
    insert into sp_initiatives (
        area_id,
        initiative,
        objective,
        SPONSOR_ID) 
    values (
        p_area_id,
        p_initiative,
        p_objective,
        p_owner_ID
        )
    returning id into l_initiative_id ;
    return l_initiative_id;
end create_initiative;

function create_release (
    p_release_train                  in varchar2,
    p_release_owner_id               in number,
    p_release                        in varchar2,
    p_release_target_date            in date,
    p_release_open_date              in date
    )
    return number
is 
    l_release_id  number := null;
begin
    insert into sp_release_trains (
        release_train,
        release_owner_id,
        release,
        release_target_date,
        release_open_date
        )
    values (
        p_release_train,
        p_release_owner_id,
        p_release,
        p_release_target_date,
        p_release_open_date
        )
        returning id into l_release_id;

    return l_release_id;
end create_release;

procedure copy_release (
    p_copy_from_release_id  in  number,
    p_new_release           in  varchar2,
    p_push_days             in  number,
    p_new_release_id        out number )
is
begin
    for c1 in (
        select release_train, release_owner_id,
               release_target_date, release_open_date,
               description
          from sp_release_trains
         where id = p_copy_from_release_id
    ) loop
        insert into sp_release_trains
            (release_train, release_owner_id, release, 
             release_target_date, release_open_date,
             description)
        values
            (c1.release_train, c1.release_owner_id, p_new_release, 
             c1.release_target_date + p_push_days, c1.release_open_date + p_push_days,
             c1.description)
            returning id into p_new_release_id;
    end loop;

    insert into sp_release_milestones
       (release_id, milestone_name, upper_milestone_name, 
        milestone_date, milestone_description)
    select p_new_release_id, milestone_name, upper_milestone_name, 
           milestone_date + p_push_days, milestone_description
      from sp_release_milestones
     where release_id = p_copy_from_release_id;
end copy_release;

function create_team_member (
    p_first_name                     in varchar2,
    p_last_name                      in varchar2,
    p_email                          in varchar2,
    p_tags                           in varchar2 default null,
    p_is_current_yn                  in varchar2 default 'Y'
    )
    return number
is 
    l_team_member_id number := null;
begin
    insert into sp_team_members (
        first_name,
        last_name,
        email,
        tags,
        is_current_yn
        )
    values (
        p_first_name,
        p_last_name,
        p_email,
        p_tags,
        p_is_current_yn
    )
    returning id into l_team_member_id;
    return l_team_member_id;
end create_team_member;

function create_project (
    p_initiative_id                  in number,
    p_project                        in varchar2,
    p_owner_id                       in number,
    p_status_scale                   in varchar2  default 'A',
    p_pct_complete                   in number    default 10,
    p_priority_id                    in number    default 4,
    p_target_complete                in date      default null,
    p_release_id                     in number    default null,
    p_project_size                   in varchar2  default 'M',
    p_description                    in varchar2  default null,
    p_tags                           in varchar2  default null
    ) 
    return number
is 
    l_project_id           number;
begin

    insert into sp_projects (
        initiative_id,
        project,
        owner_id,
        status_scale,
        pct_complete,
        --
        priority_id,
        release_id,
        project_size,
        description,
        --
        tags) 
    values (
        p_initiative_id,
        p_project,
        p_owner_id,
        p_status_scale,
        p_pct_complete,
        --
        p_priority_id,
        p_release_id,
        p_project_size,
        p_description,
        --
        p_tags) 
    returning id into l_project_id;

    return l_project_id;
end create_project;


function copy_project (
    p_project_id                     in number,
    p_new_project_name               in varchar2
    ) 
    return number
is 
    l_project_id           number;
begin

    -- forced to use cursor to do insert into select returning
    for c1 in (
        select initiative_id,
               owner_id,
               status_scale,
               priority_id,
               project_size,
               description,
               requires_reviews_yn,
               doc_impact_yn,
               focus_area_id,
               project_group_id,
               tags
          from sp_projects
         where id = p_project_id
    ) loop
        insert into sp_projects (
               initiative_id,
               project,
               owner_id,
               status_scale,
               pct_complete,
               --
               priority_id,
               project_size,
               description,
               --
               requires_reviews_yn,
               doc_impact_yn,
               focus_area_id,
               project_group_id,
               tags ) 
        values (
               c1.initiative_id,
               p_new_project_name,
               c1.owner_id,
               c1.status_scale,
               10,
               --
               c1.priority_id,
               c1.project_size,
               c1.description,
               --
               c1.requires_reviews_yn,
               c1.doc_impact_yn,
               c1.focus_area_id,
               c1.project_group_id,
               c1.tags )
        returning id into l_project_id;
    end loop;

    default_project_tasks (p_project_id => l_project_id);

    insert into sp_project_contributors (
           project_id,
           team_member_id,
           responsibility_id,
           responsibility, 
           tags )
    select l_project_id,
           team_member_id,
           responsibility_id,
           responsibility, 
           tags
      from sp_project_contributors
     where project_id = p_project_id;

    return l_project_id;
end copy_project;


procedure add_related_project (
    p_related_project_id in number,
    p_project_id         in number)
is 
begin 
    insert into SP_PROJECT_RELATED (
        PROJECT_ID,
        RELATED_PROJECT_ID)
    values (
        p_project_id,
        p_related_project_id);
end add_related_project;


procedure add_project_contributor (
    P_TEAM_MEMBER_ID    in number,
    p_RESPONSIBILITY_ID in number,
    p_project_id        in number)
is
    l_team_member_id number;
begin
    insert into SP_PROJECT_CONTRIBUTORS (
        TEAM_MEMBER_ID, 
        RESPONSIBILITY_ID, 
        project_id) 
        values (
        P_TEAM_MEMBER_ID,
        p_RESPONSIBILITY_ID,
        p_project_id);
    
end add_project_contributor;


procedure add_project_link (
    p_project_id      in number,
    p_link_name       in varchar2,
    p_link_url        in varchar2)
is 
begin
    insert into SP_PROJECT_LINKS (PROJECT_ID, link_name, LINK_URL) 
    values (p_project_id, p_link_name, p_link_url);
end add_project_link;


procedure default_project_tasks (
    p_project_id      in number)
is
begin
    insert into sp_tasks
        (project_id, task_type_id, task_sub_type_id, status_id)
    select p.id,
           nvl(tt.parent_type_id,tt.id),
           case when tt.parent_type_id is not null then tt.id end,
           (select min(id) from sp_task_statuses
             where is_default_yn = 'Y'
               and task_type_id = tt.parent_type_id)
      from sp_projects p,
           sp_initiatives i,
           sp_initiative_default_tasks dt,
           sp_task_types tt
     where p.id = p_project_id
       and p.initiative_id = i.id
       and i.id = dt.initiative_id
       and dt.type_id = tt.id
       and tt.include_yn = 'Y';
end default_project_tasks;


procedure archive_project (
    p_project_id      in number,
    p_app_user        in varchar2)
is 
begin
   update sp_projects set archived_yn = 'Y', archived_date = sysdate, archived_by = p_app_user where id = p_project_id;
end archive_project;

procedure un_archive_project (
    p_project_id      in number)
is 
begin
   update sp_projects set archived_yn = 'N', archived_date = null where id = p_project_id;
end un_archive_project;

procedure mark_proj_as_duplidate (
    p_project_id        in number,
    p_dup_of_project    in number)
is
begin
    update sp_projects set DUPLICATE_OF_PROJECT_ID = p_dup_of_project where id = p_project_id;
end mark_proj_as_duplidate;

procedure unmark_proj_as_duplicate (
    p_project_id        in number)
is 
begin
    update sp_projects set DUPLICATE_OF_PROJECT_ID = null where id = p_project_id;
end unmark_proj_as_duplicate;


-- additional APIs

function get_user_email (
    p_app_user     in  varchar2  default null,
    p_user_id      in  number    default null )
    return varchar2
is
    l_email varchar(255) := null;
begin
    for c1 in (
        select email 
          from sp_team_members 
         where email = lower(p_app_user)
            or id = p_user_id
    ) loop
        l_email := c1.email;
        exit;
    end loop;     
    return l_email;
end get_user_email;

function get_user_id (
    p_app_user     in  varchar2  default null,
    p_screen_name  in  varchar2  default null)
    return number
is
    l_id number := null;
begin
    for c1 in (
        select id 
          from sp_team_members 
         where email = lower(p_app_user)
            or screen_name = lower(p_screen_name)
    ) loop
        l_id := c1.id;
        exit;
    end loop;     
    return l_id;
end get_user_id;

function get_area_name (
    p_id              in number)
    return varchar2
is
    l_name varchar2(255) := null;
begin 
    for c1 in (select area from SP_AREAS where id = p_id) loop
        l_name := c1.area;
    end loop;
    return l_name;
end get_area_name;

function get_initiative_name (
    p_id              in number)
    return varchar2
is
    l_name varchar2(255) := null;
begin 
    for c1 in (select INITIATIVE from SP_INITIATIVES where id = p_id) loop
        l_name := c1.INITIATIVE;
    end loop;
    return l_name;
end get_initiative_name;

function get_project_name (
    p_id              in number)
    return varchar2
is
    l_name varchar2(255) := null;
begin 
    for c1 in (select PROJECT from SP_PROJECTS where id = p_id) loop
        l_name := c1.PROJECT;
    end loop;
    return l_name;
end get_project_name;


procedure add_project_tag (
    p_project_id        in number,
    p_tag               in varchar2)
is 
    l_tags varchar2(4000) := null;
begin 
    if trim(p_tag) is not null then
       for c1 in (select tags from sp_projects where id = p_project_id) loop
          l_tags := c1.tags;
          if c1.tags is null then
             update sp_projects set tags = upper(p_tag) where id = p_project_id;
          elsif instr(','||c1.tags||',', ','||upper(p_tag)||',') = 0 then
             l_tags := rtrim(l_tags,', ');
             l_tags := ltrim(l_tags,',');
             l_tags := l_tags||','||upper(p_tag);
             update sp_projects set tags = l_tags where id = p_project_id;
         end if;
       end loop;
    end if;
end add_project_tag;

procedure remove_project_tag (
    p_project_id        in number,
    p_tag               in varchar2)
is 
    l_tags varchar(4000) := null;
begin 
    update sp_projects set tags = replace(tags,', ',',') where id = p_project_id;
    update sp_projects set tags = rtrim(rtrim(tags,','),' ') where id = p_project_id;
    update sp_projects set tags = ltrim(ltrim(tags,','),' ') where id = p_project_id;
    for c1 in (select tags from sp_projects where id = p_project_id) loop
       if c1.tags = upper(p_tag) then
           update sp_projects set tags = null where id = p_project_id;
       elsif instr(c1.tags, ','||upper(p_tag)||',') > 0 then
           update sp_projects set tags = replace(tags,upper(p_tag)||',',null) where id = p_project_id;
       elsif instr(c1.tags, ','||upper(p_tag)) > 0 then
           update sp_projects set tags = replace(tags,','||upper(p_tag),null) where id = p_project_id;
       elsif instr(c1.tags, upper(p_tag)) > 0 then
           update sp_projects set tags = replace(tags,upper(p_tag),null) where id = p_project_id;
       end if;
    end loop;
    update sp_projects set tags = rtrim(tags,', ') where id = p_project_id;
end remove_project_tag;


procedure set_nomenclature
is 
begin
    for c1 in (
        select static_id, 
               nvl(custom_value, default_value) nomenclature
        from SP_APP_NOMENCLATURE
        ) loop
    
        if    c1.static_id = 'PROJECTS'    then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_PROJECTS',   c1.nomenclature); 
        elsif c1.static_id = 'PROJECT'     then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_PROJECT',    c1.nomenclature); 
        --
        elsif c1.static_id = 'AREAS'       then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_AREAS',      c1.nomenclature);
        elsif c1.static_id = 'AREA'        then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_AREA',       c1.nomenclature); 
        --
        elsif c1.static_id = 'INITIATIVES' then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_INITIATIVES', c1.nomenclature); 
        elsif c1.static_id = 'INITIATIVE'  then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_INITIATIVE',  c1.nomenclature); 
        --
        elsif c1.static_id = 'CONTRIBUTOR'   then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_CONTRIBUTOR',  c1.nomenclature); 
        elsif c1.static_id = 'CONTRIBUTORS'  then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_CONTRIBUTORS', c1.nomenclature); 
        --
        --
        elsif c1.static_id = 'USERS'       then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_USERS',       c1.nomenclature); 
        elsif c1.static_id = 'USER'        then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_USER',        c1.nomenclature); 
        --
        elsif c1.static_id = 'STRATEGIC_PLANNER' then APEX_UTIL.SET_SESSION_STATE('NOMENCLATURE_STRATEGIC_PLANNER', c1.nomenclature); 
        end if;
    end loop;
end set_nomenclature;

function show_nomenclature return clob
is 
begin
return 'Area:        <strong>'||apex_util.get_session_state('NOMENCLATURE_AREA')||'</strong><br>
Areas:       <strong>'||apex_util.get_session_state('NOMENCLATURE_AREAS')||'</strong><br>
Initiative:  <strong>'||apex_util.get_session_state('NOMENCLATURE_INITIATIVE')||'</strong><br>
Initiatives: <strong>'||apex_util.get_session_state('NOMENCLATURE_INITIATIVES')||'</strong><br>
Projects:    <strong>'||apex_util.get_session_state('NOMENCLATURE_PROJECTS')||'</strong><br>
Project:     <strong>'||apex_util.get_session_state('NOMENCLATURE_PROJECT')||'</strong><br>
Contributors:<strong>'||apex_util.get_session_state('NOMENCLATURE_CONTRIBUTORS')||'</strong><br>
Contributor: <strong>'||apex_util.get_session_state('NOMENCLATURE_CONTRIBUTOR')||'</strong><br>';
end show_nomenclature;

function get_nomenclature (
    p_static_id  in  varchar2 )
    return varchar2
is
begin
    for c1 in (
        select nvl(custom_value, default_value) nomenclature
          from sp_app_nomenclature
         where static_id = upper(p_static_id)
    ) loop
        return c1.nomenclature;
    end loop;

    return null;
end get_nomenclature;


procedure add_setting (  
    p_static_id      in  varchar2,   
    p_description    in  varchar2, 
    p_setting_value  in  varchar2, 
    p_is_numeric_yn  in  varchar2, 
    p_is_yn          in  varchar2 ) 
is
begin

    if p_is_numeric_yn = 'Y' and p_is_yn = 'Y' then 
        raise_application_error(-20111,'Setting cannot be both numeric and YN.'); 
    end if; 

    insert into sp_app_settings  
        (static_id, description, is_numeric_yn, is_yn) 
    values 
        (p_static_id, p_description, p_is_numeric_yn, p_is_yn); 
 
    set_setting(p_static_id => p_static_id, p_setting_value => p_setting_value); 

end add_setting;


procedure set_setting (  
    p_static_id      in  varchar2,   
    p_setting_value  in  varchar2 ) 
is  
begin  
  
    for c1 in ( 
        select id, 
               setting_value,
               is_numeric_yn, 
               is_yn 
          from sp_app_settings  
         where static_id = upper(p_static_id) 
    ) loop 
        if c1.is_numeric_yn = 'Y' and validate_conversion(p_setting_value as NUMBER) = 0 then 
                raise_application_error(-20111,'Value must be numeric.'); 
        elsif c1.is_yn = 'Y' and p_setting_value not in ('Y','N') then  
            raise_application_error(-20111,'Value must be Y or N.'); 
        end if; 
        update sp_app_settings  
           set setting_value = p_setting_value  
         where id = c1.id
           and (p_setting_value != c1.setting_value or c1.setting_value is null or p_setting_value is null);  
    end loop; 

end set_setting;


function get_setting (
    p_static_id  in  varchar2 )
    return varchar2
is
begin

    for c1 in (
        select setting_value
          from sp_app_settings
         where static_id = upper(p_static_id)
    ) loop
        return c1.setting_value;
    end loop;

    return null;

end get_setting;


procedure add_ai_prompt (  
    p_static_id      in  varchar2,   
    p_description    in  varchar2, 
    p_prompt         in  clob ) 
is
begin

    insert into sp_ai_prompts  
        (static_id, description) 
    values 
        (p_static_id, p_description); 
 
    set_ai_prompt(p_static_id => p_static_id, p_prompt => p_prompt); 

end add_ai_prompt;


procedure set_ai_prompt (  
    p_static_id   in  varchar2,   
    p_prompt      in  clob ) 
is  
begin  
  
    for c1 in ( 
        select id, prompt 
          from sp_ai_prompts  
         where static_id = upper(p_static_id) 
    ) loop 
        if (c1.prompt is null and p_prompt is not null) or 
           (c1.prompt is not null and p_prompt is null) or
           c1.prompt != p_prompt
        then 
            update sp_ai_prompts 
               set prompt = p_prompt  
             where id = c1.id;
        end if;
    end loop;

end set_ai_prompt;


function get_ai_prompt (
    p_static_id  in  varchar2 )
    return clob
is
begin

    for c1 in (
        select prompt
          from sp_ai_prompts
         where static_id = upper(p_static_id)
    ) loop
        return c1.prompt;
    end loop;

    return null;

end get_ai_prompt;


function get_notification_id (
    p_static_id   in  varchar2 )
    return number
is
begin

    for c1 in (
        select id
          from sp_notifications
         where static_id = upper(p_static_id)
    ) loop
        return c1.id;
    end loop;

    return null;

end get_notification_id;


procedure notification_opt_in (
    p_team_member_id   in  number,
    p_notification_id  in  number,
    p_frequency        in  varchar2 default 'WEEKLY',
    p_release_id       in  number   default null )
is
begin
    for c1 in (
        select count(*) cnt
          from sp_notification_subscriptions
         where team_member_id = p_team_member_id
           and notification_id = p_notification_id
           and (release_id = p_release_id or p_release_id is null)
    ) loop
        if c1.cnt = 0 then
            insert into sp_notification_subscriptions
                (team_member_id, notification_id, frequency, release_id, opted_in_yn)
            values
                (p_team_member_id, p_notification_id, p_frequency, p_release_id, 'Y');
        else
            update sp_notification_subscriptions
               set opted_in_yn = 'Y'
             where team_member_id = p_team_member_id
               and notification_id = p_notification_id
               and (release_id = p_release_id or p_release_id is null);
            update sp_notification_subscriptions
               set frequency = p_frequency
             where team_member_id = p_team_member_id
               and notification_id = p_notification_id
               and (release_id = p_release_id or p_release_id is null)
               and frequency != p_frequency;
        end if;
    end loop;
end notification_opt_in;


procedure notification_opt_out (
    p_team_member_id   in  number,
    p_notification_id  in  number,
    p_release_id       in  number default null )
is
begin
    for c1 in (
        select id
          from sp_notification_subscriptions
         where team_member_id = p_team_member_id
           and notification_id = p_notification_id
           and (release_id = p_release_id or p_release_id is null)
    ) loop
        update sp_notification_subscriptions
           set opted_in_yn = 'N'
         where id = c1.id
           and opted_in_yn != 'N';
    end loop;
end notification_opt_out;


procedure get_create_project_qp (
    p_app_user         in varchar2,
    p_quick_pick_id_1  out number,
    p_quick_pick_1     out varchar2,
    p_quick_pick_id_2  out number,
    p_quick_pick_2     out varchar2,
    p_quick_pick_id_3  out number,
    p_quick_pick_3     out varchar2,
    p_quick_pick_id_4  out number,
    p_quick_pick_4     out varchar2
    )
is 
    c int := 0;
    l_quick_pick_id_1   number        := null;
    l_quick_pick_1      varchar2(255) := null;
    l_quick_pick_id_2   number        := null;
    l_quick_pick_2      varchar2(255) := null;
    l_quick_pick_id_3   number        := null;
    l_quick_pick_3      varchar2(255) := null;
    l_quick_pick_id_4   number        := null;
    l_quick_pick_4      varchar2(255) := null;
    l_app_user_id       number        := null;
    l_app_user          varchar2(255) := null;
begin 
    -- get top 4 project owners
    for c1 in (
        select t.first_name||' '||t.last_name||' ('||t.email||')' n, p.owner_id, count(*) c 
        from sp_projects p, sp_team_members t 
        where p.owner_id = t.id 
        group by t.first_name||' '||t.last_name||' ('||t.email||')', p.owner_id 
        order by 3 desc 
        fetch first 5 rows only) loop
            c := c + 1;
            if c = 1 then 
                l_quick_pick_id_1 := c1.owner_id; 
                l_quick_pick_1    := c1.n;
            elsif c = 2 then 
                l_quick_pick_id_2 := c1.owner_id; 
                l_quick_pick_2    := c1.n;
            elsif c = 3 then 
                l_quick_pick_id_3 := c1.owner_id; 
                l_quick_pick_3    := c1.n;
            elsif c = 4 then 
                l_quick_pick_id_4 := c1.owner_id; 
                l_quick_pick_4    := c1.n;
            end if;
    end loop;

    -- make sure the current user is on the list
    for c1 in (select id, t.first_name||' '||t.last_name||' ('||t.email||')' n from SP_TEAM_MEMBERS t where t.email = lower(p_app_user)) loop
        l_app_user_id := c1.id;
        l_app_user := c1.n;
    end loop;
    if l_app_user_id = l_quick_pick_id_1 or 
       l_app_user_id = l_quick_pick_id_2 or 
       l_app_user_id = l_quick_pick_id_3 or 
       l_app_user_id = l_quick_pick_id_4 then
        null;
    else
       l_quick_pick_id_4 := l_app_user_id;
       l_quick_pick_4 := l_app_user;
    end if;

    -- set return values
    p_quick_pick_id_1  := l_quick_pick_id_1 ;
    p_quick_pick_1     := l_quick_pick_1    ;
    p_quick_pick_id_2  := l_quick_pick_id_2 ;
    p_quick_pick_2     := l_quick_pick_2   ;
    p_quick_pick_id_3  := l_quick_pick_id_3 ;
    p_quick_pick_3     := l_quick_pick_3   ;
    p_quick_pick_id_4  := l_quick_pick_id_4 ;
    p_quick_pick_4     := l_quick_pick_4    ;
end get_create_project_qp;

procedure get_current_username_and_id (
    p_app_user         in varchar2,
    p_users_name       out varchar2,
    p_users_id         out number
    )
is 
    l_users_name varchar(255) := null;
    l_users_id   number := null;
begin 
    for c1 in (select first_name, last_name, id from SP_TEAM_MEMBERS where email = lower(p_app_user)) loop 
        l_users_name := c1.first_name || ' ' || c1.last_name;
        l_users_id := c1.id;
    end loop;
    p_users_name := l_users_name;
    p_users_id := p_users_id;
end get_current_username_and_id;

-------------
-- data sync
--

procedure sync_team_members_app_role (
    p_app_id in number)
is 
begin
    for c1 in (
       select 
           t.id,
           t.first_name,
           t.last_name,
           t.email,
           nvl(t.APP_ROLE,'Unknown') current_app_role,
           nvl((
            select
                    decode(instr(role_names,'Administrator'),0,
                    decode(instr(role_names,'Contributor'),0,
                    decode(instr(role_names,'Reader'),0,'No Access','Reader'),
                    'Contributor'),
                    'Administrator') role_names
             from   APEX_APPL_ACL_USERS u 
             where  u.APPLICATION_ID = p_app_id and 
                    u.user_name_lc = t.email
             ),
             'No Access') app_role
        from sp_team_members t
        where nvl((
            select
                    decode(instr(role_names,'Administrator'),0,
                    decode(instr(role_names,'Contributor'),0,
                    decode(instr(role_names,'Reader'),0,'No Access','Reader'),
                    'Contributor'),
                    'Administrator') role_names
             from   APEX_APPL_ACL_USERS u 
             where  u.APPLICATION_ID = p_app_id and 
                    u.user_name_lc = t.email),
             'No Access') != nvl(t.APP_ROLE,'Unknown')
        ) loop
            update sp_team_members
            set app_role = c1.app_role
            where id = c1.id;
    end loop;
end sync_team_members_app_role;

procedure sync_team_member_app_role (
    p_app_id in number,
    p_email  in varchar2)
is 
begin
    for c1 in (
       select 
           t.id,
           t.first_name,
           t.last_name,
           t.email,
           nvl(t.APP_ROLE,'Unknown') current_app_role,
           nvl((
            select
                    decode(instr(role_names,'Administrator'),0,
                    decode(instr(role_names,'Contributor'),0,
                    decode(instr(role_names,'Reader'),0,'No Access','Reader'),
                    'Contributor'),
                    'Administrator') role_names
             from   APEX_APPL_ACL_USERS u 
             where  u.APPLICATION_ID = p_app_id and 
                    u.user_name_lc = t.email
             ),
             'No Access') app_role
        from sp_team_members t
        where nvl((
            select
                    decode(instr(role_names,'Administrator'),0,
                    decode(instr(role_names,'Contributor'),0,
                    decode(instr(role_names,'Reader'),0,'No Access','Reader'),
                    'Contributor'),
                    'Administrator') role_names
             from   APEX_APPL_ACL_USERS u 
             where  u.APPLICATION_ID = p_app_id and USER_NAME_LC = lower(p_email)),
             'No Access') != nvl(t.APP_ROLE,'Unknown')
        ) loop
            update sp_team_members
            set app_role = c1.app_role
            where id = c1.id;
    end loop;
end sync_team_member_app_role;

-------------
-- Tags
--

procedure add_default_tag (
    p_tag        in varchar2,
    p_sequence   in number default null)
is 
    l_seq number := p_sequence;
begin
    if l_seq is null then 
        for c1 in (select max(DISPLAY_SEQUENCE) mds from SP_DEFAULT_TAGS) loop
            l_seq := c1.mds + 10;
        end loop;
    end if;
    insert into SP_DEFAULT_TAGS (DISPLAY_SEQUENCE, tag) values (l_seq, upper(p_tag));
end add_default_tag;

procedure get_default_tags (
    p_tag_1      out varchar2,
    p_tag_2      out varchar2,
    p_tag_3      out varchar2,
    p_tag_4      out varchar2,
    p_tag_5      out varchar2,
    p_tag_6      out varchar2)
is
    c int := 0;
begin
    p_tag_1 := null;
    p_tag_2 := null;
    p_tag_3 := null;
    p_tag_4 := null;
    p_tag_5 := null;
    p_tag_6 := null;

    for c1 in (select tag from SP_DEFAULT_TAGS order by display_sequence, tag) loop
        c := c + 1;
        if    c = 1 then p_tag_1 := c1.tag;
        elsif c = 2 then p_tag_2 := c1.tag;
        elsif c = 3 then p_tag_3 := c1.tag;
        elsif c = 4 then p_tag_4 := c1.tag;
        elsif c = 5 then p_tag_5 := c1.tag;
        elsif c = 6 then p_tag_6 := c1.tag;
        end if;
    end loop;
end get_default_tags;

function prepare_tags (
    p_tags in varchar2)
    return varchar2
is 
    l_tags  varchar2(4000) := null;
begin
    -- remove whitespace, have leading and trailing commas to facilitate instr
    l_tags := trim(upper(p_tags));
    l_tags := ','||l_tags||',';
    l_tags := replace(l_tags,chr(9),' ');
    for i in 1..5 loop 
        l_tags := replace(l_tags,', ',','); 
    end loop;
    l_tags := replace(l_tags,',,',',');
    return l_tags;
end prepare_tags;

function reformat_tags (
    p_tags in varchar2) 
    return varchar2
is 
    l_tags varchar2(4000) := null;
begin
    -- call this after calling prepare tags to reformat to friendly format
    l_tags := ltrim(p_tags,',');
    l_tags := rtrim(l_tags,',');
    l_tags := replace(l_tags,',',', ');
    return l_tags;
end reformat_tags;


function count_project_tags (
    p_project_id in number)
    return number
is 
    l_tag_count number := 0;
begin 
    for c1 in (select tags from sp_projects where id = p_project_id and tags is not null) loop
       l_tag_count := 1 + length(c1.tags) - length(replace(c1.tags,',',null));
    end loop;
    return l_tag_count;
end count_project_tags;


function get_project_id (
    p_friendly_identifier in varchar2,
    p_project_url_name    in varchar2)
    return number
is
    l_id number := null;
begin
    if p_friendly_identifier is not null then
       for c1 in (select id from sp_projects where FRIENDLY_IDENTIFIER = p_friendly_identifier) loop
            l_id := c1.id;
            exit;
       end loop;
    end if;
    if l_id is null and p_project_url_name is not null then 
       for c1 in (select id from sp_projects where PROJECT_URL_NAME = p_project_url_name) loop
            l_id := c1.id;
            exit;
       end loop;
    end if;
    return l_id;
end get_project_id;


function get_initiative_id (
    p_friendly_identifier    in varchar2,
    p_initiative_url_name    in varchar2)
    return number
is
    l_id number := null;
begin
    if p_friendly_identifier is not null then
       for c1 in (select id from sp_initiatives where FRIENDLY_IDENTIFIER = p_friendly_identifier) loop
            l_id := c1.id;
            exit;
       end loop;
    end if;
    if l_id is null and p_initiative_url_name is not null then 
       for c1 in (select id from sp_initiatives where INITIATIVE_URL_NAME = p_initiative_url_name) loop
            l_id := c1.id;
            exit;
       end loop;
    end if;
    return l_id;
end get_initiative_id;


--------------------
-- Utility Functions
--

function compress_int (n in integer ) return varchar2
as
   ret       varchar2(30);
   quotient  integer;
   remainder integer;
   digit     char(1);
begin
   ret := null; quotient := n;
   while quotient > 0
   loop
       remainder := mod(quotient, 10 + 26);
       quotient := floor(quotient  / (10 + 26));
       if remainder < 26 then
           digit := chr(ascii('A') + remainder);
       else
           digit := chr(ascii('0') + remainder - 26);
       end if;
       ret := digit || ret;
   end loop ;
   if length(ret) < 5 then ret := lpad(ret, 4, 'A'); end if ;
   return upper(ret);
end compress_int;


-- mostly used in comments but could be helpful elsewhere
function find_mentions (
    p_clob in clob )
    return varchar2 
is
    l_clob               clob;
    l_mention_list       varchar2(4000) := null;
    l_pos                integer := 1;
    l_match              varchar2(320);
    l_clob_length        integer;
    l_screen_name_exists boolean := false;
    l_user_id            number;
    l_loop_count         integer := 0;
    l_max_loops          integer := 100;
begin
    -- remove characters considered trailing white space
    l_clob := replace(p_clob, '+', ' '); -- remove all plus
    l_clob := replace(l_clob, '.', ' '); -- remove all dots
    l_clob := replace(l_clob, ',', ' '); -- remove all commas
    l_clob := replace(l_clob, '@', ' @'); -- prefix at sign with white space
    -- Get the length of the input CLOB
    l_clob_length := DBMS_LOB.GETLENGTH(l_clob);
    -- Loop through the CLOB to extract mentions using regex
    WHILE l_pos <= l_clob_length loop
        if l_loop_count > l_max_loops then
            exit; -- prevent infinite loop
        end if;
        l_match := null;
        l_match := REGEXP_SUBSTR(l_clob,
                                 '@\S+',  -- Match "@" followed by non-whitespace characters
                                 l_pos, 1);
        EXIT WHEN l_match IS NULL;
        -- clean l_match
        l_match := lower(trim(l_match));
        l_match := ltrim(l_match,'@'); -- remove leading at signs
        l_match := rtrim(l_match,'.,;:"''\/-|!#$%^&*()[]');
        -- locate screen name in team members table
        l_screen_name_exists := false;
        -- see if screen name exists in database, note stored as lower case
        for c1 in (select id from sp_team_members tm where tm.screen_name = l_match) loop
            l_screen_name_exists := true;
            exit;
        end loop;
        -- see if name already exists in string, e.g. avoid returning duplicate names
        if l_screen_name_exists and
           instr(':'||l_mention_list||':',':'||l_match||':') > 0 then
           l_screen_name_exists := false;
        end if;
        -- Append to the mention list
        if l_screen_name_exists then
            if l_mention_list is not null then
                l_mention_list := l_mention_list || ':' || l_match;
            else
                l_mention_list := l_match;
            end if;
        end if;
        -- Move position forward to continue searching
        l_pos := INSTR(l_clob, l_match, l_pos) + LENGTH(l_match);
        l_loop_count := l_loop_count + 1;
    end loop;
    return l_mention_list;
end find_mentions;


function list_change (
    p_old_list   in varchar2 default null, 
    p_new_list   in varchar2 default null, 
    p_delim      in varchar2 default ',')
    return varchar2
as
    l_old_array           apex_t_varchar2;
    l_new_array           apex_t_varchar2;
    l_added               varchar2(4000) := null;
    l_removed             varchar2(4000) := null;
    l_found               boolean := false;
    l_action              varchar2(32767) := null;
begin
    --
    -- determine list changes including nulls
    --
    if p_old_list is null and p_new_list is null then
        l_action := 'No Values';
    elsif p_old_list is not null and p_new_list is null then 
        l_removed := p_old_list;
        l_action := 'All values removed';
    elsif p_old_list is null and p_new_list is not null then 
        l_added := '"'||p_new_list||'"';
        l_action := 'First values added';
    elsif p_old_list = p_new_list then
        l_action := 'No change';
    else
        l_action := 'Values changed';
       l_old_array := apex_string.split(p_str => p_old_list, p_sep => nvl(p_delim,','));
       l_new_array := apex_string.split(p_str => p_new_list, p_sep => nvl(p_delim,','));
       --
       -- added
       --
       for i in 1..l_new_array.count loop 
           l_found := false;
           for j in 1..l_old_array.count loop
                if trim(l_new_array(i)) = trim(l_old_array(j)) then 
                   l_found := true;
                   exit;
                end if;
           end loop;
           if not l_found then 
               l_added := l_added||'"'||trim(l_new_array(i))||'", ';
           end if;
       end loop;
       l_added := rtrim(l_added,', ');
       --
       -- removed
       --
       for i in 1..l_old_array.count loop 
           l_found := false;
           for j in 1..l_new_array.count loop
                if trim(l_old_array(i)) = trim(l_new_array(j)) then 
                   l_found := true;
                   exit;
                end if;
           end loop;
           if not l_found then 
               l_removed := l_removed||'"'||trim(l_old_array(i))||'", ';
           end if;
       end loop;
       l_removed := rtrim(l_removed,', ');
    end if;
    if l_added is not null and l_removed is null then
       l_action := 'added '||trim(l_added);
    elsif l_added is null and l_removed is not null then 
       l_action := 'removed '||trim(l_removed);
    elsif l_added is not null and l_added is not null then 
       l_action := 'added '||trim(l_added)||' and removed '||trim(l_removed);
    end if;
    return l_action;
end list_change;

--------------------
-- for Notification Subscriptions
--
procedure send_notif_subscriptions
is
    l_app_id         varchar2(30);
    l_app_url        varchar2(4000);
    l_app_name       varchar2(4000);
    l_opt_out_url    varchar2(4000);
    l_gen_date       varchar2(30);
    l_summary        clob;
    l_day            varchar2(3) := to_char(sysdate,'DY');
    l_sysdate        date        := sysdate;
    l_tsysdate       date        := trunc(sysdate);
    l_project_label  varchar2(255);
    l_changes_yn     varchar2(1);
begin

    -- need to fetch app_id because this is being run by a db job so has no knowledge of the app
    l_app_id := get_setting(p_static_id => 'APP_ID');

    -- the app_id is used to get the workspace, workspace must be set in order to use other apex apis (like apex_mail.send - without sgid, email template will not be found)
    for c1 in (
        select workspace_id
         from apex_applications
        where application_id = l_app_id 
    ) loop
        apex_util.set_security_group_id(p_security_group_id => c1.workspace_id);
    end loop;

    -- if build not not enabled, nothing will be run (careful to not update the build option name in the UI without editing this)
    if apex_util.get_build_option_status(
           p_application_id    => l_app_id, 
           p_build_option_name => 'Subscriptions') = 'INCLUDE' and
       apex_util.get_build_option_status (
           p_application_id    => l_app_id,
           p_build_option_name => 'Email Configured') = 'INCLUDE'
    then

        l_app_url       := get_setting(p_static_id => 'APP_HOME_URL');
        l_project_label := get_nomenclature('PROJECT');
        l_app_name      := get_nomenclature('STRATEGIC_PLANNER');
        l_gen_date      := to_char(l_sysdate,'DD-Mon-YYYY');
        l_opt_out_url   := get_setting(p_static_id => 'APP_PREFIX_URL')||
                               apex_page.get_url(
                                   p_application => l_app_id,
                                   p_page        => 139,
                                   p_session     => null,
                                   p_plain_url   => TRUE );

        -- WEEKLY_SUMMARY
        for c1 in (
            select tm.id team_member_id, 
                   tm.email, 
                   s.id subscription_id
              from sp_team_members tm,
                   sp_notification_subscriptions s,
                   sp_notifications n
             where tm.id = s.team_member_id
               and s.notification_id = n.id
               and n.static_id = 'WEEKLY_SUMMARY'
               and n.is_active_yn = 'Y'
               and s.opted_in_yn = 'Y'
               and ( (s.frequency = 'WEEKDAYS' and 
                      l_day in ('MON','TUES','WED','THU','FRI') and
                      (s.last_sent < l_sysdate - 1/2 or s.last_sent is null) )
                     or
                     (s.frequency = 'WEEKLY' and 
                      l_day = 'MON' and
                      (s.last_sent < l_sysdate - 6 or s.last_sent is null) ) )
        ) loop

            l_summary := sp_contributor_summary.generate (
                             p_team_member_id  => c1.team_member_id,
                             p_show_activities => 'Y',
                             p_show_projects   => 'Y',
                             p_links           => 'JOB' );

            apex_mail.send ( 
                p_to                 => c1.email,   
                p_from               => c1.email,  
                p_application_id     => l_app_id,  
                p_template_static_id => 'NOTIF_SUBSCRIPTIONS_JOB',  
                p_placeholders       => '{' || '"APPLICATION_LINK": "' || l_app_url ||'", '|| 
                                               '"OPT_OUT_URL": "'      || l_opt_out_url ||'", '||
                                               '"APP_NAME": '          || apex_json.stringify( l_app_name ) ||', '||
                                               '"SUBJECT": '           || apex_json.stringify( l_app_name||' Weekly Summary - '||to_char(l_sysdate,'Month DD, YYYY' ) )||', '||
                                               '"SUMMARY": '           || apex_json.stringify( l_summary ) ||
                                         '}' ); 

            -- this allows job to be restarted without duplicate emails going out
            -- this marks that an email was queued to be sent, but the sending could ultimately fail
            update sp_notification_subscriptions
               set last_sent = sysdate
             where id = c1.subscription_id;
        end loop; 

        -- PROJECT_EXCEPTIONS
        for c1 in (
            select tm.id team_member_id, 
                   tm.email, 
                   s.id subscription_id
              from sp_team_members tm,
                   sp_notification_subscriptions s,
                   sp_notifications n
             where tm.id = s.team_member_id
               and s.notification_id = n.id
               and n.static_id = 'PROJECT_EXCEPTIONS'
               and n.is_active_yn = 'Y'
               and s.opted_in_yn = 'Y'
               and ( (s.frequency = 'WEEKDAYS' and 
                      l_day in ('MON','TUES','WED','THU','FRI') and
                      (s.last_sent < l_sysdate - 1/2 or s.last_sent is null) )
                     or
                     (s.frequency = 'WEEKLY' and 
                      l_day = 'MON' and
                      (s.last_sent < l_sysdate - 6 or s.last_sent is null) ) )
        ) loop

            l_summary := sp_contributor_summary.project_exceptions (
                             p_team_member_id  => c1.team_member_id,
                             p_links           => 'JOB' );

            apex_mail.send ( 
                p_to                 => c1.email,   
                p_from               => c1.email,  
                p_application_id     => l_app_id,  
                p_template_static_id => 'NOTIF_SUBSCRIPTIONS_JOB',  
                p_placeholders       => '{' || '"APPLICATION_LINK": "' || l_app_url ||'", '|| 
                                               '"OPT_OUT_URL": "'      || l_opt_out_url ||'", '||
                                               '"APP_NAME": '          || apex_json.stringify( l_app_name ) ||', '||
                                               '"SUBJECT": '           || apex_json.stringify( l_app_name||' '||l_project_label||' Exceptions - '||to_char(l_sysdate,'Month DD, YYYY' ) )||', '||
                                               '"SUMMARY": '           || apex_json.stringify( l_summary ) ||
                                         '}' ); 

            -- this allows job to be restarted without duplicate emails going out
            -- this marks that an email was queued to be sent, but the sending could ultimately fail
            update sp_notification_subscriptions
               set last_sent = sysdate
             where id = c1.subscription_id;
        end loop; 

        -- RELEASE_EXCEPTIONS
        for c1 in (
            select tm.id team_member_id, 
                   tm.email, 
                   s.id subscription_id,
                   r.release_train||' '||r.release release,
                   r.id release_id
              from sp_team_members tm,
                   sp_notification_subscriptions s,
                   sp_notifications n,
                   sp_release_trains r
             where tm.id = s.team_member_id
               and s.notification_id = n.id
               and n.static_id = 'RELEASE_EXCEPTIONS'
               and n.is_active_yn = 'Y'
               and s.release_id = r.id
               and nvl(r.release_completed,'N') != 'Y'
               and s.opted_in_yn = 'Y'
               and ( (s.frequency = 'WEEKDAYS' and 
                      l_day in ('MON','TUES','WED','THU','FRI') and
                      (s.last_sent < l_sysdate - 1/2 or s.last_sent is null) )
                     or
                     (s.frequency = 'WEEKLY' and 
                      l_day = 'MON' and
                      (s.last_sent < l_sysdate - 6 or s.last_sent is null) ) )
        ) loop

            l_summary := sp_release_timeline.release_exceptions (
                             p_release_id => c1.release_id,
                             p_links      => 'JOB' );

            apex_mail.send ( 
                p_to                 => c1.email,   
                p_from               => c1.email,  
                p_application_id     => l_app_id,  
                p_template_static_id => 'NOTIF_SUBSCRIPTIONS_JOB',  
                p_placeholders       => '{' || '"APPLICATION_LINK": "' || l_app_url ||'", '|| 
                                               '"OPT_OUT_URL": "'      || l_opt_out_url ||'", '||
                                               '"APP_NAME": '          || apex_json.stringify( l_app_name ) ||', '||
                                               '"SUBJECT": '           || apex_json.stringify( l_app_name||' '||c1.release||' Release Exceptions - '||to_char(l_sysdate,'Month DD, YYYY') )||', '||
                                               '"SUMMARY": '           || apex_json.stringify( l_summary ) ||
                                         '}' ); 

            -- this allows job to be restarted without duplicate emails going out
            -- this marks that an email was queued to be sent, but the sending could ultimately fail
            update sp_notification_subscriptions
               set last_sent = sysdate
             where id = c1.subscription_id;
        end loop; 

        -- PROJECT_CHANGES
        for c1 in (
            select tm.id team_member_id, 
                   tm.email, 
                   s.id subscription_id,
                   s.frequency
              from sp_team_members tm,
                   sp_notification_subscriptions s,
                   sp_notifications n
             where tm.id = s.team_member_id
               and s.notification_id = n.id
               and n.static_id = 'PROJECT_CHANGES'
               and n.is_active_yn = 'Y'
               and s.opted_in_yn = 'Y'
               and ( (s.frequency = 'WEEKDAYS' and 
                      l_day in ('MON','TUES','WED','THU','FRI') and
                      (s.last_sent < l_sysdate - 1/2 or s.last_sent is null) )
                     or
                     (s.frequency = 'WEEKLY' and 
                      l_day = 'MON' and
                      (s.last_sent < l_sysdate - 6 or s.last_sent is null) ) )
        ) loop

            sp_contributor_summary.project_changes (
                p_team_member_id => c1.team_member_id,
                p_frequency      => c1.frequency,
                p_links          => 'JOB',
                p_changes_yn     => l_changes_yn,
                p_change_summary => l_summary );

            if l_changes_yn = 'Y' then

                apex_mail.send ( 
                    p_to                 => c1.email,   
                    p_from               => c1.email,  
                    p_application_id     => l_app_id,  
                    p_template_static_id => 'NOTIF_SUBSCRIPTIONS_JOB',  
                    p_placeholders       => '{' || '"APPLICATION_LINK": "' || l_app_url ||'", '|| 
                                                   '"OPT_OUT_URL": "'      || l_opt_out_url ||'", '||
                                                   '"APP_NAME": '          || apex_json.stringify( l_app_name ) ||', '||
                                                   '"SUBJECT": '           || apex_json.stringify( l_app_name||' '||l_project_label||' Changes - '||to_char(l_sysdate,'Month DD, YYYY' ) )||', '||
                                                   '"SUMMARY": '           || apex_json.stringify( l_summary ) ||
                                             '}' ); 

                -- this allows job to be restarted without duplicate emails going out
                -- this marks that an email was queued to be sent, but the sending could ultimately fail
                update sp_notification_subscriptions
                   set last_sent = sysdate
                 where id = c1.subscription_id;
            end if;
        end loop; 

    end if;

end send_notif_subscriptions;

procedure assignment_notification (
    p_team_member_id     in  number,
    p_app_name           in  varchar2,
    p_app_id             in  number,
    p_project_id         in  number  default null,
    p_task_id            in  number  default null,
    p_link               in  varchar2,
    p_view_what          in  varchar2,
    p_title              in  varchar2,
    p_email_contents     in  varchar2,
    p_notification_type  in  varchar2 )
is
begin
    -- only send if person is also a user (project owners may not be users)
    for c1 in (
        select email, 
               nvl(notification_pref,'APP:EMAIL') notification_pref
          from sp_team_members t
         where id = p_team_member_id
           and exists (select 1
                         from APEX_APPL_ACL_USERS
                        where application_id = p_app_id
                          and user_name_lc = t.email)
    ) loop
        insert into sp_team_member_notifications
            (team_member_id, project_id, task_id, title, email_contents, notification_pref, notification_type)
        values
            (p_team_member_id, p_project_id, p_task_id, p_title, p_email_contents, c1.notification_pref, p_notification_type);

        if instr(':'||c1.notification_pref||':',':EMAIL:') > 0 and
           apex_util.get_build_option_status (
               p_application_id    => p_app_id,
               p_build_option_name => 'Email Configured') = 'INCLUDE'
        then
            apex_mail.send ( 
                p_to                 => c1.email,   
                p_from               => c1.email,  
                p_application_id     => p_app_id,  
                p_template_static_id => 'PROJECT_RELATED',  
                p_placeholders       => '{' || '"VIEW_LINK": "' || p_link ||'", '|| 
                                               '"APP_NAME": '   || apex_json.stringify( p_app_name ) ||', '||
                                               '"SUBJECT": '    || apex_json.stringify( p_title ) ||', '||
                                               '"VIEW_WHAT": '  || apex_json.stringify( p_view_what ) ||', '||
                                               '"SUMMARY": '    || apex_json.stringify( p_email_contents ) ||
                                         '}' ); 
        end if;
    end loop;
end assignment_notification;


procedure comment_notification (
    p_team_member_id     in  number,
    p_app_name           in  varchar2,
    p_app_id             in  number,
    p_project_id         in  number  default null,
    p_task_id            in  number  default null,
    p_link               in  varchar2,
    p_view_what          in  varchar2,
    p_title              in  varchar2,
    p_email_contents     in  varchar2,
    p_notification_type  in  varchar2 default 'COMMENT' )
is
begin
    -- only send if person is also a user (project owners may not be users)
    for c1 in (
        select email, 
               nvl(comment_notif_pref,'APP:EMAIL') comment_pref
          from sp_team_members t
         where id = p_team_member_id
           and (instr(':'||nvl(comment_notif_pref,'APP:EMAIL')||':',':APP:') > 0 or
                instr(':'||nvl(comment_notif_pref,'APP:EMAIL')||':',':EMAIL:') > 0)
           and exists (select 1
                         from APEX_APPL_ACL_USERS
                        where application_id = p_app_id
                          and user_name_lc = t.email)
    ) loop
        insert into sp_team_member_notifications
            (team_member_id, project_id, title, email_contents, notification_pref, notification_type)
        values
            (p_team_member_id, p_project_id, p_title, substr(p_email_contents,1,4000), c1.comment_pref, p_notification_type);

        if instr(':'||c1.comment_pref||':',':EMAIL:') > 0 and
           apex_util.get_build_option_status (
               p_application_id    => p_app_id,
               p_build_option_name => 'Email Configured') = 'INCLUDE'
        then
            apex_mail.send ( 
                p_to                 => c1.email,   
                p_from               => c1.email,  
                p_application_id     => p_app_id,  
                p_template_static_id => 'PROJECT_RELATED',  
                p_placeholders       => '{' || '"VIEW_LINK": "' || p_link ||'", '|| 
                                               '"APP_NAME": '   || apex_json.stringify( p_app_name ) ||', '||
                                               '"SUBJECT": '    || apex_json.stringify( p_title ) ||', '||
                                               '"VIEW_WHAT": '  || apex_json.stringify( p_view_what ) ||', '||
                                               '"SUMMARY": '    || apex_json.stringify( p_email_contents ) ||
                                         '}' ); 
        end if;
    end loop;
end comment_notification;


-- used by SP_CONTRIBUTOR_SUMMARY, SP_RELEASE_TIMELINE and with app
function exceptions_for_project (
    p_project_id      in  number,
    p_one_project_yn  in  varchar2 default 'N',
    p_team_member_id  in  number   default null,
    p_link_type       in  varchar2,
    p_app_prefix_url  in  varchar2,
    p_app_id          in  number,
    p_apex_session    in  number   default null,
    p_reviews_yn      in  varchar2 default 'N',
    p_approvals_yn    in  varchar2 default 'N' )
    return clob
is
    l_proj_yn              varchar2(1) := 'N';
    l_exceptions_yn        varchar2(1) := 'N';
    l_sysdate              date := trunc(sysdate);
    l_date_fm              varchar2(255) := 'FMDay DD-MON';
    l_project              varchar2(4000);
    l_role                 varchar2(4000);
    l_url                  varchar2(4000);
    l_activity             varchar2(4000);
    x                      clob := null;
begin
    for c1 in (
        select p.id,
               p.friendly_identifier,
               p.project,
               p.owner_id,
               p.requires_reviews_yn,
               p.pct_complete,
               ' - '|| to_char(p.pct_complete) ||'% '|| p.project_size ||' P'||to_char(r.priority) quick_summary,
               case when p.owner_id is not null then ' - '||(select first_name ||' '||last_name from sp_team_members where id = p.owner_id) end owner,
               case when p.pct_complete >= s.min_pc_for_status and
                         p.pct_complete != 100 and 
                         p.status_id is null
                    then 'Y'
                    end status_not_set
          from sp_projects p,
               sp_initiatives i,
               sp_project_priorities r,
               sp_project_scales s
         where p.id = p_project_id
           and p.initiative_id = i.id
           and p.priority_id = r.id
           and i.status_scale = s.scale_letter
    ) loop

        l_proj_yn := 'N';

        -- if for just one project, no need to include the project header
        if p_one_project_yn = 'N' then
            l_project := '<strong>'||apex_escape.html(c1.project)||'</strong>';
            -- broken out to avoid bulk bind error
            if c1.owner_id = p_team_member_id then l_role := ' (Owner)';
            else select ' ('||listagg(rt.resource_type, ', ') within group (order by rt.resource_type) ||')'
                   into l_role
                   from sp_project_contributors c,
                        sp_resource_types rt
                  where c.project_id = c1.id
                    and c.team_member_id = p_team_member_id
                    and c.responsibility_id = rt.id;
            end if;

            if p_link_type = 'APP' then
               l_url := apex_util.prepare_url('f?p='||p_app_id||':3:'||p_apex_session||'::NO:3:FI:'||apex_escape.html(c1.friendly_identifier));
               l_project := '<a href="'||l_url||'">'||l_project||'</a>' || apex_escape.html(l_role) || apex_escape.html(c1.owner) || apex_escape.html(c1.quick_summary);
            elsif p_link_type in ('EMAIL','JOB') then
               l_url := apex_page.get_url(
                            p_application => p_app_id,
                            p_page        => 3,
                            p_session     => null,
                            p_items       => 'FI',
                            p_values      => c1.friendly_identifier,
                            p_plain_url   => TRUE );
               if p_link_type = 'EMAIL' then
                  l_url := p_app_prefix_url || l_url; 
               end if;
               l_project := '<a href="'||l_url||'">'||l_project||'</a>' || apex_escape.html(l_role) || apex_escape.html(c1.owner) || apex_escape.html(c1.quick_summary);
            else
               l_project := l_project || apex_escape.html(l_role) || apex_escape.html(c1.owner) || apex_escape.html(c1.quick_summary);
            end if;
        end if;

        -- NO PROJECT OWNER
        if c1.owner_id is null then
            l_exceptions_yn := 'Y';
            x := x||l_project||chr(10)||'<ul>';
            l_proj_yn := 'Y';
            x := x||'<li>No Owner</li>'||chr(10);
        end if;

        -- STATUS NOT SET
        if c1.status_not_set = 'Y' then
            if l_proj_yn = 'N' then
               x := x||l_project||chr(10)||'<ul>';
               l_proj_yn := 'Y';
            end if;
            l_exceptions_yn := 'Y';
            x := x||'<li>Status not set</li>'||chr(10);
        end if;

        -- NO PROJECT REVIEWERS
        if c1.requires_reviews_yn = 'Y' and
           c1.pct_complete >= 50 and
           p_reviews_yn = 'Y' then
            for c2 in (
                select count(*) cnt
                  from sp_tasks t,
                       sp_task_types tt
                 where t.project_id = c1.id
                   and nvl(t.task_sub_type_id,t.task_type_id) = tt.id
                   and tt.static_id like 'REVIEW%'
                   and t.owner_id is not null
            ) loop
                if c2.cnt = 0 then
                    if l_proj_yn = 'N' then
                        x := x||l_project||chr(10)||'<ul>';
                        l_proj_yn := 'Y';
                    end if;
                    l_exceptions_yn := 'Y';
                    x := x||'<li>No Reviewers</li>'||chr(10);
                end if;
            end loop;
        end if;

        -- OVERDUE PROJECT MILESTONES
        for c2 in (
            select (select first_name||' '||last_name from sp_team_members tm where tm.id = t.owner_id) owner,
                   tt.task_type type,
                   s.status,
                   trunc(t.target_complete) target_complete
              from sp_tasks t,
                   sp_task_types tt,
                   sp_task_statuses s
             where t.project_id = c1.id
               and nvl(t.task_sub_type_id,t.task_type_id) = tt.id
               and tt.static_id like 'MILESTONE%'
               and t.status_id = s.id
               and s.indicates_complete_yn = 'N'
               and trunc(t.target_complete) < l_sysdate
        ) loop
             if l_proj_yn = 'N' then
                 x := x||l_project||chr(10)||'<ul>';
                 l_proj_yn := 'Y';
             end if;
             l_exceptions_yn := 'Y';
             x := x||'<li>'|| apex_escape.html(c2.type)||' assigned to '||apex_escape.html(c2.owner) ||' was due '|| to_char(c2.target_complete,l_date_fm)||'  ('||apex_escape.html(c2.status)||')</li>'||chr(10);
        end loop;

        -- OVERDUE REVIEWS
        if c1.requires_reviews_yn = 'Y' and
           p_reviews_yn = 'Y' then
            for c2 in (
                select (select first_name||' '||last_name from sp_team_members tm where tm.id = t.owner_id) reviewer,
                       tt.task_type type,
                       s.status,
                       trunc(t.target_complete) review_date
                  from sp_tasks t,
                       sp_task_types tt,
                       sp_task_statuses s
                 where t.project_id = c1.id
                   and nvl(t.task_sub_type_id,t.task_type_id) = tt.id
                   and tt.static_id like 'REVIEW%'
                   and t.status_id = s.id
                   and s.indicates_complete_yn = 'N'
                   and trunc(t.target_complete) < l_sysdate
            ) loop
                if l_proj_yn = 'N' then
                    x := x||l_project||chr(10)||'<ul>';
                    l_proj_yn := 'Y';
                end if;
                l_exceptions_yn := 'Y';
                x := x||'<li>'||apex_escape.html(c2.type)||' by '||apex_escape.html(c2.reviewer)||' was targeted for '||to_char(c2.review_date,l_date_fm)||'  ('||apex_escape.html(c2.status)||')</li>'||chr(10);
            end loop;

            -- REVIEWS WITHOUT DATES
            for c2 in (
                select (select first_name||' '||last_name from sp_team_members tm where tm.id = t.owner_id) reviewer,
                       tt.task_type type,
                       s.status
                  from sp_tasks t,
                       sp_task_types tt,
                       sp_task_statuses s
                 where t.project_id = c1.id
                   and nvl(t.task_sub_type_id,t.task_type_id) = tt.id
                   and tt.static_id like 'REVIEW%'
                   and t.status_id = s.id
                   and s.indicates_complete_yn = 'N'
                   and t.target_complete is null
            ) loop
                if l_proj_yn = 'N' then
                    x := x||l_project||chr(10)||'<ul>';
                    l_proj_yn := 'Y';
                end if;
                l_exceptions_yn := 'Y';
                x := x||'<li>'||apex_escape.html(c2.type)||' by '||apex_escape.html(c2.reviewer)||' has no target date ('||apex_escape.html(c2.status)||')</li>'||chr(10);
            end loop;
        end if;

        -- PENDING APPROVALS
        if p_approvals_yn = 'Y' then
            for c2 in (
                select (select first_name||' '||last_name from sp_team_members tm where tm.id = a.submitted_by_team_member_id) owner,
                       t.approval_type ||' Review' type,
                       case when a.status = 'PENDING'
                            then 'Pending Review'
                            when a.status = 'CLARIFICATION-REQUESTED'
                            then 'Clarification Requested'
                            end status,
                       trunc(a.updated) target_complete
                  from sp_project_approvals a,
                       sp_approval_types t
                 where a.project_id = c1.id
                   and a.approval_type_id = t.id
                   and a.status in ('PENDING','CLARIFICATION-REQUESTED')
            ) loop
                 if l_proj_yn = 'N' then
                     x := x||l_project||chr(10)||'<ul>';
                     l_proj_yn := 'Y';
                 end if;
                 l_exceptions_yn := 'Y';
                 x := x||'<li>'|| apex_escape.html(c2.type)||' submitted by '||apex_escape.html(c2.owner) ||' is currently '||apex_escape.html(c2.status)||'</li>'||chr(10);
            end loop;
        end if;

        if l_proj_yn = 'Y' then
            x := x||'</ul>';
        end if;    
  
    end loop;

    return x;

end exceptions_for_project;


function replace_nomenclature (
    p_contents  in  varchar2
) return varchar2
is
    l_new_contents  varchar2(4000);
begin
    l_new_contents := p_contents;

    for c1 in (
        select static_id, custom_value
          from sp_app_nomenclature
         order by static_id desc
    ) loop
        l_new_contents := replace(l_new_contents,'&NOMENCLATURE_'||c1.static_id||'.',c1.custom_value);
    end loop;

    for c1 in (
        select static_id, custom_value
          from sp_app_nomenclature
         order by static_id desc
    ) loop
        l_new_contents := replace(l_new_contents,'NOMENCLATURE_'||c1.static_id,c1.custom_value);
    end loop;

    return l_new_contents;

end replace_nomenclature;


end sp_util;
/