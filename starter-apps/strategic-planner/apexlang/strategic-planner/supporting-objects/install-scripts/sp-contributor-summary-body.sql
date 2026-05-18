create or replace package body sp_contributor_summary
as

function generate (
    p_team_member_id     in number,
    p_show_activities    in varchar2 default 'Y',
    p_show_projects      in varchar2 default 'Y',
    p_show_approvals     in varchar2 default 'N',  -- based on build option in app
    p_links              in varchar2 default 'NONE',
    p_include_title_yn   in varchar2 default 'Y',
    p_apex_session       in varchar2 default null )
    return clob
is
    x                      clob := null;
    x2                     clob := null;
    x3                     clob := null;
    x4                     clob := null;
    x5                     clob := null;
    x6                     clob := null;
    x7                     clob := null;
    l_date_from            date := trunc(sysdate) - 6;
    l_date_to              date := sysdate;
    l_person               varchar2(255);
    l_email                varchar2(255);
    l_team_member_id       number;
    l_lower_app_user       varchar2(255) := null;
    l_date_fm              varchar2(255) := 'FMDay DD-MON';
    l_date_fm2             varchar2(255) := 'FMDay DD-MON-YYYY';
    l_day_fm               varchar2(255) := 'FMDay';
    l_days                 number;
    l_last_heading         varchar2(500);
    l_row_count            int := 0;
    l_activity_count       int := 0;
    l_release_count        int := 0;
    l_max_text_length      int := 120;
    l_project_max_count    int := 20;
    l_link_type            varchar2(30);
    l_project_label        varchar2(255);
    l_initiative_label     varchar2(255);
    l_projects_label       varchar2(255);
    l_initiatives_label    varchar2(255);
    --
    -- support for links
    --
    l_project              varchar2(4000);
    l_role                 varchar2(4000);
    l_url                  varchar2(4000);
    l_app_id               varchar2(4000);
    l_app_prefix_url       varchar2(4000);
begin
    --
    -- get settings
    --
    l_project_label     := sp_util.get_nomenclature('PROJECT');
    l_initiative_label  := sp_util.get_nomenclature('INITIATIVE');
    l_projects_label    := sp_util.get_nomenclature('PROJECTS');
    l_initiatives_label := sp_util.get_nomenclature('INITIATIVES');
    l_app_id            := sp_util.get_setting('APP_ID');
    l_app_prefix_url    := sp_util.get_setting('APP_PREFIX_URL');

    --
    -- determine link type
    --
    -- APP: generate links from within the current app requires p_apex_session
    -- EMAIL: generate fully qualified links
    --
    if p_links = 'APP' and p_apex_session is not null and l_app_id is not null then
       l_link_type := 'APP';
    elsif p_links = 'EMAIL' and l_app_id is not null then
       l_link_type := 'EMAIL';
    elsif p_links = 'JOB' and l_app_id is not null then
       l_link_type := 'JOB';
    elsif p_links is null then
       l_link_type := 'NONE';
    end if;


    --
    -- name
    -- 
    for c1 in (
        select first_Name||' '||last_name name, email, id 
          from sp_team_members tm 
         where id = p_team_member_id
    ) loop 
        l_person := apex_escape.html(c1.name);
        l_email  := lower(apex_escape.html(c1.email));
        l_lower_app_user := lower(c1.email);
        l_team_member_id := c1.id;
    end loop;

    --
    -- heading
    --
    if p_include_title_yn = 'Y' then
       x := '<h3>Weekly report for '||l_person||'</h3>'||chr(10);
    end if;
    if l_link_type != 'APP' then
        x := x||'<span><strong>email</strong>: '||l_email||'</span><br>';
    end if;
    x := x||'<span><strong>timeframe</strong>: '||to_char(l_date_from,l_date_fm)||' - '||to_char(l_date_to,l_date_fm2)||'</span><br><br><p style="border-bottom: 1px solid #E0DEDD;"></p>';


    --
    --  ###############################################################
    --
    --  A C T I V I T I E S
    -- 
    --
    --  current
    --
    if p_show_activities = 'Y' then
    
        x2 := x2||'<h3>Activities</h3>'||chr(10);
        l_row_count := 0;
        for c1 in (
            select ap.id, 
                   ap.project_id,
                   --
                   -- activity core information
                   --
                   at.activity_type,
                   decode(greatest(length(ap.comments),l_max_text_length),l_max_text_length,ap.comments,substr(ap.comments,1,l_max_text_length)||'...') comments,
                   --
                   to_char(ap.start_date,'DD-MON')||' to '||to_char(ap.end_date,'DD-MON-YYYY') TIMELINE,
                   --
                   decode(ap.project_id,null,null,(
                       select decode(greatest(length(p.project),l_max_text_length),l_max_text_length,p.PROJECT,substr(p.project,1,l_max_text_length)||'...') project 
                       from sp_projects p 
                       where p.id = ap.project_id and 
                             p.DUPLICATE_OF_PROJECT_ID is null and
                             p.ARCHIVED_YN = 'N')
                       ) project,
                    --
                    -- initiative
                    --
                    decode(ap.initiative_id,null,null,(
                        select i.initiative from sp_initiatives i where i.id = ap.initiative_id)) initiative,
                    ap.initiative_id,
                    --
                    (select FRIENDLY_IDENTIFIER 
                        from sp_projects p 
                       where p.id = ap.project_id and 
                             p.DUPLICATE_OF_PROJECT_ID is null and
                             p.ARCHIVED_YN = 'N') friendly_identifier
            from sp_activities ap,
                 sp_activity_types at,
                 sp_team_members tm
            where 
                  ap.activity_type_id = at.id and
                  tm.id = l_team_member_id and
                  ap.team_member_id = tm.id and
                  trunc(sysdate) <= ap.end_date and
                  ap.start_date <= trunc(sysdate)
                  order by ap.end_date
        ) loop
            l_row_count := l_row_count + 1;
            --
            -- determine project link
            --
            l_project  := apex_escape.html(c1.project);
            if c1.project is not null then 
                if l_link_type = 'APP' then
                   l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||c1.FRIENDLY_IDENTIFIER);
                   l_project := '<a href="'||l_url||'">'||l_project||'</a>';
                elsif l_link_type in ('EMAIL','JOB') then
                   l_url := apex_page.get_url(
                              p_application => l_app_id,
                              p_page        => 3,
                              p_session     => null,
                              p_items       => 'FI',
                              p_values      => c1.FRIENDLY_IDENTIFIER,
                              p_plain_url   => TRUE );
                   if l_link_type = 'EMAIL' then
                      l_url := l_app_prefix_url || l_url; 
                   end if;
                   l_project := '<a href="'||l_url||'">'||l_project||'</a>';
                end if;
            end if;
            --
            -- generate HTML for activities
            --
            if l_row_count = 1 then 
              x2 := x2||chr(10)||'<h4>Current</h4>'||chr(10)||'<ul>';
            end if;
            x2 := x2||'<li>'||
                  ' '||apex_escape.html(c1.TIMELINE)||
                  ' (<strong>'||apex_escape.html(c1.activity_type)||'</strong>) - '||
                  apex_escape.html(c1.comments);
            if c1.project is not null then 
                x2 := x2||'<br>'||nvl(l_project_label,'Project')||': '||l_project;
            end if;
            if c1.initiative is not null then 
                x2 := x2||'<br>'||nvl(l_initiative_label,'Initiative')||': '||apex_escape.html(c1.initiative);
            end if;        
            x2 := x2||'</li>';
        end loop;

        if l_row_count > 0 then
            x2 := x2||chr(10)||'</ul>';
            l_activity_count := l_row_count;
        end if;

        --
        -- FUTURE
        --
        l_row_count := 0;
        for c1 in (
            select ap.id, 
                   ap.project_id,
                   --
                   -- activity core information
                   --
                   at.activity_type,
                   decode(greatest(length(ap.comments),l_max_text_length),l_max_text_length,ap.comments,substr(ap.comments,1,l_max_text_length)||'...') comments,
                   --
                   to_char(ap.start_date,'DD-MON-YYYY')||' to '||to_char(ap.end_date,'DD-MON-YYYY') TIMELINE,
                   --
                   decode(ap.project_id,null,null,(
                       select decode(greatest(length(p.project),l_max_text_length),l_max_text_length,p.PROJECT,substr(p.project,1,l_max_text_length)||'...') project 
                       from sp_projects p 
                       where p.id = ap.project_id and 
                             p.DUPLICATE_OF_PROJECT_ID is null and
                             p.ARCHIVED_YN = 'N')
                       ) project,
                    --
                    -- initiative
                    --
                    decode(ap.initiative_id,null,null,(
                        select i.initiative from sp_initiatives i where i.id = ap.initiative_id)) initiative,
                    ap.initiative_id,
                    (select FRIENDLY_IDENTIFIER 
                        from sp_projects p 
                       where p.id = ap.project_id and 
                             p.DUPLICATE_OF_PROJECT_ID is null and
                             p.ARCHIVED_YN = 'N') friendly_identifier
            from sp_activities ap,
                 sp_activity_types at,
                 sp_team_members tm
            where 
                  ap.activity_type_id = at.id and
                  tm.id = l_team_member_id and
                  ap.team_member_id = tm.id and
                  ap.start_date > trunc(sysdate)
            order by ap.end_date
        ) loop
            l_row_count := l_row_count + 1;
           
            if l_row_count = 1 then   
               x3 := x3||'<h4>Future</h4><ul>';
            end if;

            --
            -- determine project link
            --
            l_project  := apex_escape.html(c1.project);
            if c1.project is not null then 
                if l_link_type = 'APP' then
                   l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||c1.FRIENDLY_IDENTIFIER);
                   l_project := '<a href="'||l_url||'">'||l_project||'</a>';
                elsif l_link_type in ('EMAIL','JOB') then
                   l_url := apex_page.get_url(
                              p_application => l_app_id,
                              p_page        => 3,
                              p_session     => null,
                              p_items       => 'FI',
                              p_values      => c1.FRIENDLY_IDENTIFIER,
                              p_plain_url   => TRUE );
                   if l_link_type = 'EMAIL' then
                      l_url := l_app_prefix_url || l_url; 
                   end if;
                   l_project := '<a href="'||l_url||'">'||l_project||'</a>';
                end if;
            end if;

            x3 := x3||'<li>'||
                  ' '||apex_escape.html(c1.TIMELINE)||
                  ' (<strong>'||apex_escape.html(c1.activity_type)||'</strong>) - '||
                  apex_escape.html(c1.comments);
            if c1.project is not null then 
               x3 := x3||'<br>'||nvl(l_project_label,'Project')||': '||l_project;
            end if;
            if c1.initiative is not null then 
               x3 := x3||'<br>'||nvl(l_initiative_label,'Initiative')||': '||apex_escape.html(c1.initiative);
            end if;    
            x3 := x3||'</li>';
           
        end loop;

        if l_row_count > 0 then 
           x3 := x3||'</ul>';
           l_activity_count := l_activity_count + l_row_count;
        end if;

        --
        -- LAST WEEK
        --
        l_row_count := 0;
        for c1 in (
            select ap.id, 
                   ap.project_id,
                   --
                   -- activity core information
                   --
                   at.activity_type,
                   decode(greatest(length(ap.comments),l_max_text_length),l_max_text_length,ap.comments,substr(ap.comments,1,l_max_text_length)||'...') comments,
                   --
                   to_char(ap.start_date,'DD-MON-YYYY')||' to '||to_char(ap.end_date,'DD-MON-YYYY') TIMELINE,
                   --
                   decode(ap.project_id,null,null,(
                          select decode(greatest(length(p.project),l_max_text_length),l_max_text_length,p.PROJECT,substr(p.project,1,l_max_text_length)||'...') project 
                            from sp_projects p 
                           where p.id = ap.project_id and 
                                 p.DUPLICATE_OF_PROJECT_ID is null and
                                 p.ARCHIVED_YN = 'N')
                          ) project,
                    --
                    -- initiative
                    --
                    decode(ap.initiative_id,null,null,(
                           select i.initiative from sp_initiatives i where i.id = ap.initiative_id)) initiative,
                    ap.initiative_id
            from sp_activities ap,
                 sp_activity_types at,
                 sp_team_members tm
            where 
                  ap.activity_type_id = at.id and
                  tm.id = l_team_member_id and
                  ap.team_member_id = tm.id and
                  ap.end_date > trunc(sysdate) - 7 and
                  ap.end_date < trunc(sysdate)
            order by ap.end_date 
        ) loop
            l_row_count := l_row_count + 1;
            if l_row_count = 1 then 
               x3 := x3||'<h4>Last week</h4>'||chr(10)||'<ul>';
            end if;
            x3 := x3||chr(10)||'<li>'||
                 ' '||apex_escape.html(c1.TIMELINE)||
                 ' (<strong>'||apex_escape.html(c1.activity_type)||'</strong>) - '||
                 apex_escape.html(c1.comments);
            --
            if c1.project is not null then 
               x3 := x3||'<br>'||nvl(l_project_label,'Project')||': '||apex_escape.html(c1.project);
            end if;
            if c1.initiative is not null then 
               x3 := x3||'<br>'||nvl(l_initiative_label,'Initiative')||': '||apex_escape.html(c1.initiative);
            end if;    
            x3 := x3||'</li>';
        end loop;
        if l_row_count > 0 then 
           x3 := x3||'</ul>'||chr(10);
           l_activity_count := l_activity_count + l_row_count;
        end if;
        -- end of activity reporting
        x3 := x3||chr(10);

        x3 := x3||'<p><i>Activities listed include activities for the past week, current and future planned.</i></p>';

        if l_activity_count = 0 then
           x3 := x3||'<p>No Activities found.</p>';
        end if;
    end if;
      

    --
    --  ###############################################################
    --
    -- P R O J E C T S
    -- 
    if p_show_projects = 'Y' then
        l_row_count := 0;
        x4 := '<h3>'||apex_escape.html(nvl(l_projects_label,'Projects')) ||'</h3>';
        x4 := x4||'<i>Only above 20% complete are included.</i>';
        l_row_count := 0;
        l_release_count := 0;

        for c1 in (
            select case when p.release_id is not null then 1 
                        when p.target_complete is null then 3
                        else 2 end sort_order_1,
                   case when p.target_complete is null and p.release_id is not null
                        then (select release_target_date from sp_release_trains where id = p.release_id)
                        else p.target_complete end sort_order_2,
                   pp.priority sort_order_3,
                   case when p.release_id is not null 
                             then (select release_train||': '||release from SP_RELEASE_TRAINS t where t.id = p.release_id)
                        when p.target_complete is null
                        then 'No Target'
                        else to_char(p.target_complete,'Mon-YYYY')
                        end heading,
                   p.project, 
                   p.pct_complete, 
                   p.project_size,
                   pp.priority,
                   p.id project_id,
                   p.FRIENDLY_IDENTIFIER,
                   p.owner_id,
                   (select count(*) cnt
                      from sp_tasks t,
                           sp_task_types tt
                     where t.owner_id = l_team_member_id 
                       and t.project_id = p.id
                       and t.task_type_id = tt.id
                       and tt.static_id like 'REVIEW%') review_cnt,
                   (select count(*) cnt
                      from sp_tasks t,
                           sp_task_types tt
                     where t.owner_id = l_team_member_id 
                       and t.project_id = p.id
                       and t.task_type_id = tt.id
                       and tt.static_id like 'MILESTONE%') milestone_cnt,
                   (select count(*) cnt
                      from sp_tasks t,
                           sp_task_types tt
                     where t.owner_id = l_team_member_id 
                       and t.project_id = p.id
                       and t.task_type_id = tt.id
                       and tt.static_id not like 'REVIEW%'
                       and tt.static_id not like 'MILESTONE%') other_task_cnt
              from sp_projects p, 
                   SP_PROJECT_PRIORITIES pp
             where p.priority_id = pp.id and 
                   p.pct_complete > 20 and
                   p.pct_complete != 100 and
                   p.ARCHIVED_YN = 'N' and
                   p.DUPLICATE_OF_PROJECT_ID is null and 
                   (
                      p.release_id is null or 
                       p.release_id in (select t.id from SP_RELEASE_TRAINS t where nvl(t.RELEASE_OPEN_COMPLETED,'Y') = 'Y' and nvl(RELEASE_COMPLETED,'N') = 'N')
                   ) and
                   (p.owner_id = l_team_member_id or 
                    exists (select 1
                              from sp_tasks
                             where owner_id = l_team_member_id 
                               and project_id = p.id) or 
                    exists (select 1
                              from sp_project_contributors
                             where team_member_id = l_team_member_id 
                               and project_id = p.id) )
            order by 1, 2, 3 asc, 4
        ) loop
            l_row_count := l_row_count + 1;
            l_project := apex_escape.html(c1.project);
            -- broken out to avoid bulk bind error
            if c1.owner_id = l_team_member_id then l_role := 'Owner';
            elsif c1.review_cnt > 0 then l_role := 'Reviewer';
            elsif c1.milestone_cnt > 0 then l_role := 'Milestone Owner';
            elsif c1.other_task_cnt > 0 then l_role := 'Task Owner';
            else select listagg(rt.resource_type, ', ') within group (order by rt.resource_type)
                   into l_role
                   from sp_project_contributors c,
                        sp_resource_types rt
                  where c.project_id = c1.project_id
                    and c.team_member_id = l_team_member_id
                    and c.responsibility_id = rt.id;
            end if;
            if l_link_type = 'APP' then
               l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||c1.FRIENDLY_IDENTIFIER);
               l_project := '<a href="'||l_url||'">'||l_project||'</a>';
            elsif l_link_type in ('EMAIL','JOB') then
               l_url := apex_page.get_url(
                          p_application => l_app_id,
                          p_page        => 3,
                          p_session     => null,
                          p_items       => 'FI',
                          p_values      => c1.FRIENDLY_IDENTIFIER,
                          p_plain_url   => TRUE );
               if l_link_type = 'EMAIL' then
                  l_url := l_app_prefix_url || l_url; 
               end if;
               l_project := '<a href="'||l_url||'">'||l_project||'</a>';
            end if;

            if c1.heading != l_last_heading or l_last_heading is null then
                if l_row_count > 1 then
                   x4 := x4||'</ul>';
                end if;
                x4 := x4||'<h4>'||apex_escape.html(c1.heading)||'</h4>';
                x4 := x4||'<ul>';
            end if;
            x4 := x4||'<li> '||l_project||
                      ' (<strong>'||apex_escape.html(l_role)||'</strong>) - '||
                      to_char(c1.pct_complete)||'% '||apex_escape.html(c1.project_size)||' '||  
                      'P'||to_char(c1.priority)||'</li>';
            l_last_heading := c1.heading;

            if p_links in ('EMAIL','JOB') and l_row_count = l_project_max_count then
               x4 := x4||'View more in application...';
               exit;
            end if;
       
         end loop;
         if l_row_count = 0 then
            -- x4 := x4||'</ul>';
            x4 := x4||'No '||l_projects_label||' found';
         else
            x4 := x4||'</ul>';
         end if;


         --
         -- APPROVALS
         --
         if p_show_approvals = 'Y' then
             l_row_count := 0;
             x5 := '<h3>'||apex_escape.html(nvl(l_project_label,'Project')) ||' Approvals</h3> <ul>';
             for c1 in (
                 select p.project, p.friendly_identifier, 
                        t.approval_type,
                        case when a.submitted_by_team_member_id = p_team_member_id
                             then 'Submitter'
                             else  (select case when status = 'PENDING' then 'Pending Review'
                                                else initcap(replace(status,'-',' '))
                                                end
                                      from
                                       (select status,
                                               updated,
                                               max(updated) over (partition by team_member_id) last_updated
                                          from sp_project_approval_chain
                                         where project_approval_id = a.id
                                           and team_member_id = p_team_member_id)
                                     where last_updated = updated)
                             end role,
                        initcap(replace(a.status,'-',' ')) current_status
                   from sp_projects p, 
                        sp_project_approvals a,
                        sp_approval_types t
                  where p.id = a.project_id
                    and p.ARCHIVED_YN = 'N'
                    and p.DUPLICATE_OF_PROJECT_ID is null
                    and a.approval_type_id = t.id
                    and ( (a.submitted_by_team_member_id = p_team_member_id and
                           a.submitted between l_date_from and l_date_to)
                          or
                          exists (select 1 from sp_project_approval_chain
                                   where project_approval_id = a.id
                                     and team_member_id = p_team_member_id
                                     and updated between l_date_from and l_date_to) )
                  order by p.project, t.approval_type
            ) loop
                l_row_count := l_row_count + 1;
                l_project := apex_escape.html(c1.project);
                if l_link_type = 'APP' then
                   l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||c1.friendly_identifier);
                   l_project := '<a href="'||l_url||'">'||l_project||'</a>';
                elsif l_Link_type in ('EMAIL','JOB') then
                   l_url := apex_page.get_url(
                         p_application => l_app_id,
                         p_page        => 3,
                         p_session     => null,
                         p_items       => 'FI',
                         p_values      => c1.FRIENDLY_IDENTIFIER,
                         p_plain_url   => TRUE );
                   if l_link_type = 'EMAIL' then
                      l_url := l_app_prefix_url || l_url; 
                   end if;
                   l_project := '<a href="'||l_url||'">'||l_project||'</a>';
                end if;
                x5 := x5||'<li>'||l_project||' - '||apex_escape.html(c1.approval_type)||' - '||apex_escape.html(c1.role);
                x5 := x5||' (Current Status: '||apex_escape.html(c1.current_status)||')'; 
                x5 := x5||'</li>';
            end loop;
            x5 := x5||'</ul>';
            if l_row_count = 0 then
               x5 := x5||'No Approvals found';
            end if;
        end if;


         --
         -- PROJECTS COMMENTED
         --
         l_row_count := 0;
         x6 := '<h3>'||apex_escape.html(nvl(l_projects_label,'Projects')) ||' Commented On'||'</h3> <ul>';
         for c1 in (
             select p.project, max(p.friendly_identifier) friendly_identifier, min(c.created) min_created, max(c.created) max_created, Count(*) comments
               from sp_projects p, 
                    sp_project_comments c
              where lower(c.created_by) = l_lower_app_user and 
                    p.id = c.project_id and
                    c.created between l_date_from and l_date_to and
                    p.ARCHIVED_YN = 'N' and
                    p.DUPLICATE_OF_PROJECT_ID is null
              group by p.project
        ) loop
            l_row_count := l_row_count + 1;
            l_project := apex_escape.html(c1.project);
            if l_link_type = 'APP' then
               l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||c1.friendly_identifier);
               l_project := '<a href="'||l_url||'">'||l_project||'</a>';
            elsif l_Link_type in ('EMAIL','JOB') then
               l_url := apex_page.get_url(
                     p_application => l_app_id,
                     p_page        => 3,
                     p_session     => null,
                     p_items       => 'FI',
                     p_values      => c1.FRIENDLY_IDENTIFIER,
                     p_plain_url   => TRUE );
               if l_link_type = 'EMAIL' then
                  l_url := l_app_prefix_url || l_url; 
               end if;
               l_project := '<a href="'||l_url||'">'||l_project||'</a>';
            end if;
            x6 := x6||'<li>'||l_project||' - '||to_char(c1.min_created,l_day_fm);
            if c1.comments > 1 then 
                if trunc(c1.min_created) != trunc(c1.max_created) then
                   x6 := x6||' to '||to_char(c1.max_created,l_day_fm);
                end if;
                x6 := x6||' ('||apex_escape.html(c1.comments)||' comments)'; 
            end if;
            x6 := x6||'</li>';
        end loop;
        x6 := x6||'</ul>';
        if l_row_count = 0 then
           x6 := x6||'No '||l_projects_label||' found';
        end if;


        --
        -- PROJECTS ADDED
        --
        l_row_count := 0;
        x7 := '<h3>'||apex_escape.html(nvl(l_projects_label,'Projects')) ||' Created'||'</h3> <ul>';
        for c1 in (
            select p.project, p.FRIENDLY_IDENTIFIER, to_char(p.created,l_day_fm) created
              from sp_projects p
             where lower(p.created_by) = l_lower_app_user and 
                   p.created between l_date_from and l_date_to and
                   p.ARCHIVED_YN = 'N' and
                   p.DUPLICATE_OF_PROJECT_ID is null
        ) loop
            l_row_count := l_row_count + 1;
            l_project := apex_escape.html(c1.project);
            if l_link_type = 'APP' then
               l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||c1.friendly_identifier);
               l_project := '<a href="'||l_url||'">'||l_project||'</a>';
            elsif l_Link_type in ('EMAIL','JOB') then
               l_url := apex_page.get_url(
                     p_application => l_app_id,
                     p_page        => 3,
                     p_session     => null,
                     p_items       => 'FI',
                     p_values      => c1.FRIENDLY_IDENTIFIER,
                     p_plain_url   => TRUE );
               if l_link_type = 'EMAIL' then
                  l_url := l_app_prefix_url || l_url; 
               end if;
               l_project := '<a href="'||l_url||'">'||l_project||'</a>';
            end if;
            x7 := x7||'<li>'||l_project||' - '||c1.created||' </li>';
        end loop;
        x7 := x7||'</ul>';
        if l_row_count = 0 then
           x7 := x7||'No '||l_projects_label||' found';
        end if;

    -- END CHECKING P_SHOW_PROJECTS
    end if;

    if p_show_activities = 'Y' then
       sys.dbms_lob.append(x, x2);
       sys.dbms_lob.append(x, x3);
    end if;
    if p_show_projects = 'Y' then
       sys.dbms_lob.append(x, x4);
       if p_show_approvals = 'Y' then
           sys.dbms_lob.append(x, x5);
       end if;
       sys.dbms_lob.append(x, x6);
       sys.dbms_lob.append(x, x7);
    end if;
    return x;

end generate;


function project_exceptions (
    p_team_member_id     in number,
    p_links              in varchar2 default 'NONE',
    p_include_title_yn   in varchar2 default 'Y',
    p_apex_session       in varchar2 default null )
    return clob
is
    l_header               clob := null;
    l_proj_content         clob := null;
    x                      clob := null;
    l_person               varchar2(255);
    l_email                varchar2(255);
    l_team_member_id       number;
    l_link_type            varchar2(30);
    l_project_label        varchar2(255);
    l_exceptions_yn        varchar2(1) := 'N';
    l_reviews_yn           varchar2(1);
    l_approvals_yn         varchar2(1);
    l_proj_except_count    int := 0;
    l_project_max_count    int := 20;
    --
    -- support for links
    --
    l_project              varchar2(4000);
    l_role                 varchar2(4000);
    l_url                  varchar2(4000);
    l_app_id               varchar2(4000);
    l_app_prefix_url       varchar2(4000);
begin
    --
    -- get settings
    --
    l_project_label     := sp_util.get_nomenclature('PROJECT');
    l_app_id            := sp_util.get_setting('APP_ID');
    l_app_prefix_url    := sp_util.get_setting('APP_PREFIX_URL');

    if apex_util.get_build_option_status (
           p_application_id    => l_app_id,
           p_build_option_name => 'Reviews') = 'INCLUDE'
    then
         l_reviews_yn := 'Y';
    else
         l_reviews_yn := 'N';
    end if;

    if apex_util.get_build_option_status (
           p_application_id    => l_app_id,
           p_build_option_name => 'Approvals') = 'INCLUDE'
    then
         l_approvals_yn := 'Y';
    else
         l_approvals_yn := 'N';
    end if;

    --
    -- determine link type
    --
    -- APP: generate links from within the current app requires p_apex_session
    -- EMAIL: generate fully qualified links
    --
    if p_links = 'APP' and p_apex_session is not null and l_app_id is not null then
       l_link_type := 'APP';
    elsif p_links = 'EMAIL' and l_app_id is not null then
       l_link_type := 'EMAIL';
    elsif p_links = 'JOB' and l_app_id is not null then
       l_link_type := 'JOB';
    elsif p_links is null then
       l_link_type := 'NONE';
    end if;

    --
    -- name
    -- 
    for c1 in (
        select first_Name||' '||last_name name, email, id 
          from sp_team_members tm 
         where id = p_team_member_id
    ) loop 
        l_person := apex_escape.html(c1.name);
        l_email  := lower(apex_escape.html(c1.email));
        l_team_member_id := c1.id;
    end loop;

    --
    -- heading
    --
    if p_include_title_yn = 'Y' then
       l_header := '<h3>'||nvl(l_project_label,'Project')||' Exception report for '||l_person||'</h3>'||chr(10);
    end if;
    
    if l_link_type != 'APP' then
        l_header := l_header||'<strong>email</strong>: '||l_email||'<br>';
    end if;
    l_header := l_header||'<i>Only above 20% complete are included.</i><br><br>';

    --
    -- PROJECT ISSUES
    --
    for c1 in (
        select p.id
          from sp_projects p,
               sp_project_priorities r
         where p.duplicate_of_project_id is null
           and p.archived_yn = 'N'
           and p.priority_id = r.id
           and p.pct_complete > 20
           and p.pct_complete < 100
           and (p.owner_id = l_team_member_id or 
                exists (select 1
                          from sp_project_contributors
                         where team_member_id = l_team_member_id 
                           and project_id = p.id) )
         order by r.priority, p.project
    ) loop
        l_proj_content := null;
        l_proj_content := sp_util.exceptions_for_project (
                              p_project_id      => c1.id,
                              p_one_project_yn  => 'N',
                              p_team_member_id  => l_team_member_id,
                              p_link_type       => l_link_type,
                              p_app_prefix_url  => l_app_prefix_url,
                              p_app_id          => l_app_id,
                              p_apex_session    => p_apex_session,
                              p_reviews_yn      => l_reviews_yn,
                              p_approvals_yn    => l_approvals_yn );


        if dbms_lob.getlength(l_proj_content) != 0 then
            l_proj_except_count := l_proj_except_count + 1;
            x := x||l_proj_content;
        end if; 
        
        if l_proj_except_count = l_project_max_count and p_links in ('EMAIL','JOB') then
            x := x||'View more in application...';
            exit;
        end if; 

    end loop;

    -- END PROJECT EXCEPTIONS
    if dbms_lob.getlength(x) = 0 then
       x := l_header||'No exceptions found';
    else
       x := l_header||x;
    end if;

    return x;

end project_exceptions;


procedure project_changes (
    p_team_member_id     in number,
    p_frequency          in varchar2, -- WEEKLY, WEEKDAYS
    p_links              in varchar2 default 'NONE',
    p_apex_session       in varchar2 default null,
    p_exclude_user_yn    in varchar2 default 'N',
    p_changes_yn         out  varchar2,  -- if N changes, no email
    p_change_summary     out  clob ) 
is
    x                      clob := null;
    l_person               varchar2(255);
    l_email                varchar2(255);
    l_team_member_id       number;
    l_exclude_user_yn      varchar2(1);

    l_day                  varchar2(3) := to_char(sysdate,'DY');
    l_tsysdate             date        := trunc(sysdate);
    l_date_from            date;
    l_row_count            int := 0;
    l_last_project_id      number;
    l_proj_yn              varchar2(1) := 'N';
    l_max_change_count     int := 30;
    --
    -- support for links
    --
    l_project_label        varchar2(255);
    l_link_type            varchar2(30);
    l_project              varchar2(4000);
    l_url                  varchar2(4000);
    l_app_id               varchar2(4000);
    l_app_prefix_url       varchar2(4000);
begin
    --
    -- get settings
    --
    l_app_id            := sp_util.get_setting('APP_ID');
    l_app_prefix_url    := sp_util.get_setting('APP_PREFIX_URL');
    l_project_label     := sp_util.get_nomenclature('PROJECT');

    --
    -- LINK TYPE
    --
    -- APP: generate links from within the current app requires p_apex_session
    -- EMAIL: generate fully qualified links
    --
    if p_links = 'APP' and p_apex_session is not null and l_app_id is not null then
       l_link_type := 'APP';
    elsif p_links = 'EMAIL' and l_app_id is not null then
       l_link_type := 'EMAIL';
    elsif p_links = 'JOB' and l_app_id is not null then
       l_link_type := 'JOB';
    elsif p_links is null then
       l_link_type := 'NONE';
    end if;

    --
    -- TIMESPAN
    --
    if p_frequency = 'WEEKDAYS' and l_day != 'MON' 
       then l_date_from := l_tsysdate - 1;
    elsif p_frequency = 'WEEKDAYS' and l_day = 'MON'
       then l_date_from := l_tsysdate - 3;
    elsif p_frequency = 'WEEKLY' 
       then l_date_from := l_tsysdate - 7;
    end if;

    --
    -- NAME
    -- 
    for c1 in (
        select first_Name||' '||last_name name, email, id 
          from sp_team_members tm 
         where id = p_team_member_id
    ) loop 
        l_person := apex_escape.html(c1.name);
        l_email  := lower(c1.email);
        l_team_member_id := c1.id;
    end loop;

    if l_link_type in ('EMAIL','JOB') then
        l_exclude_user_yn := nvl(apex_util.GET_preference (
                                 p_preference => 'P5_PROJ_CHANGE_EXCLUDE_USER_YN',
                                 p_user       => upper(l_email) ),'N');
    else
        l_exclude_user_yn := p_exclude_user_yn;
    end if;

    --
    -- HEADING
    --
    x := '<h3>'||l_project_label||' Change report for '||l_person||'</h3>'||chr(10);
    x := x||'<i>Changes for projects you own or have favorited</i><br/>'||chr(10);
    if l_link_type in ('EMAIL','JOB') and l_exclude_user_yn = 'Y' then
       x := x||'<i>(changes made by current user are excluded)</i><br/>';
    end if;

    x := x||'<strong>timeframe</strong>: '||case when p_frequency = 'WEEKDAYS' and l_day != 'MON'
                                                     then 'last day'
                                                 when p_frequency = 'WEEKDAYS' and l_day = 'MON'
                                                     then 'last 3 days'
                                                 when p_frequency = 'WEEKLY'
                                                     then 'last 7 days'
                                                 end ||'<br><br>';

    for c1 in ( 
        with fav as (select project_id from sp_favorites
                      where team_member_id = l_team_member_id)
        select pc.project_id,
               p.project,
               p.friendly_identifier,
               ' - '|| to_char(p.pct_complete) ||'% '|| p.project_size ||' P'||to_char(pp.priority) quick_summary,
               case when p.owner_id is not null then ' - '||(select first_name ||' '||last_name from sp_team_members where id = p.owner_id) end owner,
               --
               case when pc.attribute_column = 'TAGS' and pc.change_type = 'UPDATE'
                    then 'Tags, '||sp_util.list_change (
                                        p_old_list => pc.old_value, 
                                        p_new_list => pc.new_value )||' '
                    when pc.change_type = 'CREATE'
                    then initcap(replace(pc.attribute_column,'_',' '))||' '||case when pc.attribute_column in ('COMMENT','LINK') then '"' end||
                            case when pc.attribute_column = 'COMMENT'
                                 then substr(pc.new_value,1,40)||case when length(pc.new_value) > 40 then '...' end
                                 else decode(pc.new_value,'Y','Yes','N','No',pc.new_value)
                                 end ||
                            case when pc.attribute_column in ('COMMENT','LINK') then '"' end||' added '
                    when pc.change_type = 'DELETE'
                    then initcap(replace(pc.attribute_column,'_',' '))||' '||case when pc.attribute_column in ('COMMENT','LINK') then '"' end||
                             decode(pc.old_value,'Y','Yes','N','No',pc.old_value)||case when pc.attribute_column in ('COMMENT','LINK') then '"' end||' deleted '
                    when pc.attribute_column = 'OWNER' and pc.old_value is null and pc.new_value is not null
                      then 'Owner added "'||pc.new_value||'" '
                    when pc.attribute_column = 'RELEASE' and pc.old_value is null and pc.new_value is not null
                      then 'Release added "'||pc.new_value||'" '
                    when pc.attribute_column = 'COMMENT'
                      then 'Comment changed from "'||substr(pc.old_value,1,40)||case when length(pc.old_value) > 40 then '...' end||'" to "'||
                                                substr(pc.new_value,1,40)||case when length(pc.new_value) > 40 then '...' end||'" '
                    else initcap(replace(pc.attribute_column,'_',' '))||
                             ' changed from "'||nvl(decode(pc.old_value,'Y','Yes','N','No',pc.old_value),'NULL')||'" to "'||
                                                nvl(decode(pc.new_value,'Y','Yes','N','No',pc.new_value),'NULL')||'" '
                    end ||
                    apex_util.get_since(pc.changed_on) || ' by ' || lower(pc.changed_by) change,
               --
               case when p.owner_id = l_team_member_id then 1 else 0 end ob1,
               pp.priority ob2,
               p.pct_complete ob3,
               pc.project_id ob4,
               pc.changed_on ob5
          from sp_project_history pc,
               sp_projects p, 
               sp_project_priorities pp
         where pc.project_id = p.id
           and p.priority_id = pp.id
           and (p.owner_id = l_team_member_id or 
                p.id in (select project_id from fav) )
           and pc.changed_on > l_date_from
           and (l_exclude_user_yn = 'N' or pc.changed_by != l_email)
           and pc.changed_by != 'nobody'
        union all
        select p.id project_id,
               p.project,
               p.friendly_identifier,
               ' - '|| to_char(p.pct_complete) ||'% '|| p.project_size ||' P'||to_char(pp.priority) quick_summary,
               case when p.owner_id is not null then ' - '||(select first_name ||' '||last_name from sp_team_members where id = p.owner_id) end owner,
               --
               tt.task_type || case when t.task is not null then ' - '||t.task end ||' '||
               case when pc.attribute_column = 'TAGS' and pc.change_type = 'UPDATE'
                      then 'Tags, '||sp_util.list_change (
                                        p_old_list => pc.old_value, 
                                        p_new_list => pc.new_value )||' '
                    when pc.change_type = 'CREATE'
                      then initcap(replace(pc.attribute_column,'_',' '))||' '||case when pc.attribute_column in ('COMMENT','LINK') then '"' end||
                           case when pc.attribute_column = 'COMMENT'
                                then substr(pc.new_value,1,40)||case when length(pc.new_value) > 40 then '...' end
                                else decode(pc.new_value,'Y','Yes','N','No',pc.new_value)
                                end ||
                           case when pc.attribute_column in ('COMMENT','LINK') then '"' end||' added '
                    when pc.change_type = 'DELETE'
                      then initcap(replace(pc.attribute_column,'_',' '))||' '||case when pc.attribute_column in ('COMMENT','LINK') then '"' end||
                             decode(pc.old_value,'Y','Yes','N','No',pc.old_value)||case when pc.attribute_column in ('COMMENT','LINK') then '"' end||' deleted '
                    when pc.attribute_column = 'OWNER' and pc.old_value is null and pc.new_value is not null
                      then 'Owner added "'||pc.new_value||'" '
                    when pc.attribute_column = 'COMMENT'
                      then 'Comment changed from "'||substr(pc.old_value,1,40)||case when length(pc.old_value) > 40 then '...' end||'" to "'||
                                                substr(pc.new_value,1,40)||case when length(pc.new_value) > 40 then '...' end||'" '
                    else initcap(replace(pc.attribute_column,'_',' '))||
                             ' changed from "'||nvl(decode(pc.old_value,'Y','Yes','N','No',pc.old_value),'NULL')||'" to "'||
                                                nvl(decode(pc.new_value,'Y','Yes','N','No',pc.new_value),'NULL')||'" '
                    end ||
                    apex_util.get_since(pc.changed_on) || ' by ' || lower(pc.changed_by) change,
               --
               case when p.owner_id = l_team_member_id then 1 else 0 end ob1,
               pp.priority ob2,
               p.pct_complete ob3,
               p.id ob4,
               pc.changed_on ob5
          from sp_task_history pc,
               sp_tasks t,
               sp_projects p, 
               sp_project_priorities pp,
               sp_task_types tt
         where p.id = t.project_id
           and pc.task_id = t.id
           and p.priority_id = pp.id
           and nvl(t.task_sub_type_id,t.task_type_id) = tt.id
           and p.owner_id = l_team_member_id
           and pc.changed_on > l_date_from
           and (l_exclude_user_yn = 'N' or pc.changed_by != l_email)
         order by ob1, ob2, ob3 desc, ob4, ob5 desc
    ) loop

        if l_last_project_id is null or l_last_project_id != c1.project_id then

            -- CREATE PROJECT HEADER TO BREAK ON
            if l_link_type = 'APP' then
               l_url := apex_util.prepare_url('f?p='||l_app_id||':3:'||p_apex_session||'::NO:3:FI:'||apex_escape.html(c1.friendly_identifier));
               l_project := '<a href="'||l_url||'"><strong>'||apex_escape.html(c1.project)||'</strong></a>';
            elsif l_link_type in ('EMAIL','JOB') then
               l_url := apex_page.get_url(
                            p_application => l_app_id,
                            p_page        => 3,
                            p_session     => null,
                            p_items       => 'FI',
                            p_values      => c1.friendly_identifier,
                            p_plain_url   => TRUE );
               if l_link_type = 'EMAIL' then
                  l_url := l_app_prefix_url || l_url; 
               end if;
               l_project := '<a href="'||l_url||'"><strong>'||apex_escape.html(c1.project)||'</strong></a>';
            else
               l_project := '<strong>'||apex_escape.html(c1.project)||'</strong>';
            end if;

            if l_row_count = 0 then
                x := x|| l_project || apex_escape.html(c1.owner) || apex_escape.html(c1.quick_summary) ||'<ul>'||chr(10);
            else
                x := x||'</ul>'|| l_project || apex_escape.html(c1.owner) || apex_escape.html(c1.quick_summary) ||'<ul>'||chr(10);
            end if;
        end if;

        x := x||'<li>'||apex_escape.html(c1.change)||'</li>'||chr(10);

        l_last_project_id := c1.project_id;
        l_row_count := l_row_count + 1;

        if p_links in ('EMAIL','JOB') and l_row_count = l_max_change_count then
           x := x||'View more in application...';
           exit;
        end if;

    end loop;

    if l_row_count = 0 then
       p_changes_yn := 'N';
       p_change_summary := null;
    else
       x := x||'</ul>';
       p_changes_yn := 'Y';
       p_change_summary := x;
    end if;

end project_changes;

end sp_contributor_summary;
/