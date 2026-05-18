create or replace package body sp_release_timeline
as
function show_week (
    p_release_id           in number,
    p_show_past_yn         in varchar2 default 'N',
    p_exclude_complete_yn  in varchar2 default 'N')
    return clob
is
    l_first_day_of_week    date;
    l_last_day_of_week     date;
    x                      clob := null;
    x2                     clob := null;
    l_row_count            int := 0;
    e                      varchar2(1) := chr(10);
    l_proj_max_length      int := 45;
    l_the_metric           varchar2(255);
    l_dt_fmt_short         varchar2(10) := 'FMMonth DD';
    l_weeks_to_show        int;
    l_release_end_date     date;
    l_release_start_date   date;
    l_release_start_monday date;
    l_sysdate              date := trunc(sysdate);
    h                      varchar2(4000) := null;
    l_start_date           date;
    l_end_date             date;
    week                   int;
    post_hr                varchar2(1) := 'n';
begin

    for c1 in (
        select id release_id, 
               trunc(release_open_date) release_open_date,
               to_char(release_open_date,'Day Month FMDD, YYYY') release_open,
               nvl(release_open_completed,'N') release_open_yn,
               trunc(release_target_date) release_target_date, 
               to_char(release_target_date,'Day Month FMDD, YYYY') release_target,
               nvl(release_completed,'N') release_completed_yn,
               release_train||' '||release as release,
               (select min(milestone_date) from sp_release_milestones
                 where release_id = r.id
                   and milestone_date is not null) min_milestone,
               (select max(milestone_date) from sp_release_milestones
                 where release_id = r.id
                   and milestone_date is not null) max_milestone,
               (select min(nvl(nvl(t.target_complete,t.start_date),r.release_open_date))
                  from sp_projects p,
                       sp_tasks t
                 where p.release_id = r.id
                   and p.id = t.project_id
                   and nvl(p.archived_yn,'N') = 'N'
                   and p.duplicate_of_project_id is null) min_task,
               (select max(nvl(nvl(t.target_complete,t.start_date),r.release_open_date))
                  from sp_projects p,
                       sp_tasks t
                 where p.release_id = r.id
                   and p.id = t.project_id
                   and nvl(p.archived_yn,'N') = 'N'
                   and p.duplicate_of_project_id is null) max_task
         from sp_release_trains  r
        where id = p_release_id
    ) loop
        if p_show_past_yn = 'Y' then
            l_start_date := least(nvl(c1.min_milestone,c1.release_open_date),
                                  nvl(c1.min_task,c1.release_open_date));
        else
            l_start_date := sysdate;
        end if;
        l_end_date := greatest(nvl(c1.max_milestone,c1.release_target_date),
                               nvl(c1.max_task,c1.release_target_date));
        l_weeks_to_show := nvl(ceil((l_end_date - l_start_date)/7) + 1,12); -- to ensure never getting 0
        l_first_day_of_week := trunc(l_start_date,'D') +1;
        l_last_day_of_week  := trunc(l_start_date,'D') +7;
        l_release_end_date   := c1.release_target_date;
        l_release_start_date := c1.release_open_date;
        l_release_start_monday := trunc(c1.release_open_date,'D')+1;

        x2 := '<h3>'||apex_escape.html(c1.release)||' Release Timeline</h3>'||e;
        x2 := x2||case when c1.release_open_date < l_sysdate or
                            c1.release_open_yn = 'Y'
                       then 'Release ' ||
                          case when c1.release_open_yn = 'Y' 
                               then 'opened '
                               else 'was targeted to open ' 
                               end ||
                          c1.release_open
                     when c1.release_open_date = l_sysdate 
                     then 'Release opens today'
                     else 'Release opens on '|| c1.release_open
                     end ||
                ' and '||
                case when c1.release_target_date < l_sysdate or
                          c1.release_completed_yn = 'Y'
                     then case when c1.release_completed_yn = 'Y' 
                               then 'completed '
                               else 'was targeted to complete ' 
                               end ||
                          c1.release_target
                     when c1.release_target_date = l_sysdate 
                     then 'completes today'
                     else 'completes on '|| c1.release_target
                     end ||'.<br>'||e;

    end loop;
    
    if l_weeks_to_show is not null and l_weeks_to_show > 0 then
    --
    -- Release week
    --
    for w in 1..l_weeks_to_show loop

        if l_first_day_of_week > l_end_date then
           exit;
        end if;

        -- before release start
        if l_last_day_of_week < l_release_start_date then
            week := (l_release_start_monday - l_first_day_of_week)/7;
            h := '<h3><i>Week -'||week||': '||to_char(l_first_day_of_week,'FMDay Month DD')||' to '||
                 to_char(l_last_day_of_week,'FMDay Month DD, YYYY')||'</i></h3>'||e;
        -- after release end
        elsif l_first_day_of_week > l_release_end_date then
            week := ceil((l_first_day_of_week - l_release_end_date)/7);
            h := '<h3><i>Week +'||week||': '||to_char(l_first_day_of_week,'FMDay Month DD')||' to '||
                 to_char(l_last_day_of_week,'FMDay Month DD, YYYY')||'</i></h3>'||e;
        else
            week := ((l_first_day_of_week - l_release_start_monday)/7)+1;
            h := case when week = 1 and w != 1 and p_show_past_yn = 'Y'
                      then '<div style="background-color: DarkGray; text-align: left; width: 50%; height: 2px;"></div>' end ||
                 '<h3>Week '||week||': '||to_char(l_first_day_of_week,'FMDay Month DD')||' to '||
                 to_char(l_last_day_of_week,'FMDay Month DD, YYYY')||'</h3>'||e;
        end if;

        --
        -- PROJECT MILESTONES
        --
        l_the_metric := 'Project Milestones';
        l_row_count := 0;
        for c2 in (
            select p.id, 
                   decode(greatest(length(p.project),l_proj_max_length),l_proj_max_length,p.PROJECT,substr(p.project,1,l_proj_max_length)||'...') as project, 
                   tt.task_type label,
                   case when t.start_date is not null then to_char(t.start_date,l_dt_fmt_short) ||' - ' end ||
                        to_char(t.target_complete,l_dt_fmt_short) as the_date, 
                   trunc(t.target_complete) target_complete,
                   s.indicates_complete_yn,
                   s.status,
                   tm.first_name||' '||tm.last_name as owner
            from  sp_tasks t,
                  sp_task_types tt,
                  sp_task_statuses s,
                  sp_projects p,
                  sp_team_members tm
            where t.project_id = p.id and
                  nvl(t.task_sub_type_id,t.task_type_id) = tt.id and
                  tt.static_id like 'MILESTONE%' and
                  t.owner_id = tm.id and 
                  t.status_id = s.id and
                  p.archived_yn = 'N' and
                  p.DUPLICATE_OF_PROJECT_ID is null and 
                  p.release_id = p_release_id and 
                  (t.start_date is not null or t.target_complete is not null) and
                  (t.start_date between l_first_day_of_week and l_last_day_of_week or
                   t.target_complete between l_first_day_of_week and l_last_day_of_week) and
                  ((s.indicates_complete_yn = 'N' and p_exclude_complete_yn = 'Y') or p_exclude_complete_yn = 'N')
            order by t.target_complete, t.start_date, tt.display_seq
        ) loop
            l_row_count := l_row_count + 1;
            if l_row_count = 1 then
               x := x||''||l_the_metric||'<br>'||e;
               x := x||'<ul>'||e;
            end if;
            x := x||'<li>'||apex_escape.html(c2.project)||' - '||apex_escape.html(c2.label)||' - '||apex_escape.html(c2.owner)||' - ';
            if c2.target_complete is not null and c2.target_complete < trunc(sysdate) and c2.indicates_complete_yn = 'N' then 
               x := x||' <strong>'||c2.the_date || ' Past Due</strong>';
            elsif c2.indicates_complete_yn = 'Y' then 
               x := x||'<strong>Complete</strong>';
            else 
               x := x||'<strong>'||c2.the_date ||' '||apex_escape.html(c2.status)||'</strong>';
            end if; 
            x := x||'</li>'||e;
        end loop; -- c2
        if l_row_count > 0 then 
            x := x||'</ul>'||e;
        end if;

        --
        -- REVIEWS
        --
        l_the_metric := 'Reviews';
        l_row_count := 0;
        for c2 in (
            select p.id, 
                   decode(greatest(length(p.project),l_proj_max_length),l_proj_max_length,p.PROJECT,substr(p.project,1,l_proj_max_length)||'...') as project, 
                   tt.task_type label,
                   case when t.start_date is not null then to_char(t.start_date,l_dt_fmt_short) ||' - ' end ||
                        to_char(t.target_complete,l_dt_fmt_short) as the_date, 
                   trunc(t.target_complete) target_complete,
                   s.indicates_complete_yn,
                   s.status,
                   tm.first_name||' '||tm.last_name as owner
            from  sp_tasks t,
                  sp_task_types tt,
                  sp_task_statuses s,
                  sp_projects p,
                  sp_team_members tm
            where t.project_id = p.id and
                  nvl(t.task_sub_type_id,t.task_type_id) = tt.id and
                  tt.static_id like 'REVIEW%' and
                  t.owner_id = tm.id and 
                  t.status_id = s.id and
                  p.archived_yn = 'N' and
                  p.DUPLICATE_OF_PROJECT_ID is null and 
                  p.release_id = p_release_id and 
                  (t.start_date is not null or t.target_complete is not null) and
                  (t.start_date between l_first_day_of_week and l_last_day_of_week or
                   t.target_complete between l_first_day_of_week and l_last_day_of_week) and
                  ((s.indicates_complete_yn = 'N' and p_exclude_complete_yn = 'Y') or p_exclude_complete_yn = 'N')
            order by t.target_complete, t.start_date, tt.display_seq
        ) loop
            l_row_count := l_row_count + 1;
            if l_row_count = 1 then
               x := x||''||l_the_metric||'<br>'||e;
               x := x||'<ul>'||e;
            end if;
            x := x||'<li>'||apex_escape.html(c2.project)||' - '||apex_escape.html(c2.label)||' - '||apex_escape.html(c2.owner)||' - ';
            if c2.target_complete is not null and c2.target_complete < trunc(sysdate) and c2.indicates_complete_yn = 'N' then 
               x := x||' <strong>'||c2.the_date || ' Past Due</strong>';
            elsif c2.indicates_complete_yn = 'Y' then 
               x := x||'<strong>Complete</strong>';
            else 
               x := x||'<strong>'||c2.the_date ||' '||apex_escape.html(c2.status)||'</strong>';
            end if; 
            x := x||'</li>'||e;
        end loop; -- c2
        if l_row_count > 0 then 
            x := x||'</ul>'||e;
        end if;

        --
        -- OTHER TASKS
        --
        l_the_metric := 'Other Tasks';
        l_row_count := 0;
        for c2 in (
            select p.id, 
                   decode(greatest(length(p.project),l_proj_max_length),l_proj_max_length,p.PROJECT,substr(p.project,1,l_proj_max_length)||'...') as project, 
                   tt.task_type || case when t.task is not null then ' - '||t.task end label,
                   case when t.start_date is not null then to_char(t.start_date,l_dt_fmt_short) ||' - ' end ||
                        to_char(t.target_complete,l_dt_fmt_short) as the_date, 
                   trunc(t.target_complete) target_complete,
                   s.indicates_complete_yn,
                   s.status,
                   tm.first_name||' '||tm.last_name as owner
            from  sp_tasks t,
                  sp_task_types tt,
                  sp_task_statuses s,
                  sp_projects p,
                  sp_team_members tm
            where t.project_id = p.id and
                  nvl(t.task_sub_type_id,t.task_type_id) = tt.id and
                  tt.static_id not like 'REVIEW%' and
                  tt.static_id not like 'MILESTONE%' and
                  t.owner_id = tm.id and 
                  t.status_id = s.id and
                  p.archived_yn = 'N' and
                  p.DUPLICATE_OF_PROJECT_ID is null and 
                  p.release_id = p_release_id and 
                  (t.start_date is not null or t.target_complete is not null) and
                  (t.start_date between l_first_day_of_week and l_last_day_of_week or
                   t.target_complete between l_first_day_of_week and l_last_day_of_week) and
                  ((s.indicates_complete_yn = 'N' and p_exclude_complete_yn = 'Y') or p_exclude_complete_yn = 'N')
            order by t.target_complete, t.start_date, tt.display_seq
        ) loop
            l_row_count := l_row_count + 1;
            if l_row_count = 1 then
               x := x||''||l_the_metric||'<br>'||e;
               x := x||'<ul>'||e;
            end if;
            x := x||'<li>'||apex_escape.html(c2.project)||' - '||apex_escape.html(c2.label)||' - '||apex_escape.html(c2.owner)||' - ';
            if c2.target_complete is not null and c2.target_complete < trunc(sysdate) and c2.indicates_complete_yn = 'N' then 
               x := x||' <strong>'||c2.the_date || ' Past Due</strong>';
            elsif c2.indicates_complete_yn = 'Y' then 
               x := x||'<strong>Complete</strong>';
            else 
               x := x||'<strong>'||c2.the_date ||' '||apex_escape.html(c2.status)||'</strong>';
            end if; 
            x := x||'</li>'||e;
        end loop; -- c2
        if l_row_count > 0 then 
            x := x||'</ul>'||e;
        end if;

        --
        -- activity
        --
        l_the_metric := 'Activity';
        l_row_count := 0;

        for c2 in (
            select p.id, 
                   decode(greatest(length(p.project),l_proj_max_length),
                       l_proj_max_length,p.PROJECT,
                       substr(p.project,1,l_proj_max_length)||'...') as project, 
                   a.START_DATE,
                   a.END_DATE,
                   tm.first_name||' '||tm.last_name as owner,
                   decode(greatest(length(a.COMMENTS),l_proj_max_length),
                       l_proj_max_length,a.COMMENTS,
                       substr(a.COMMENTS,1,l_proj_max_length)||'...') as COMMENTS, 
                   a.url,
                   a.ACTIVITY_TYPE_ID,
                   at.ACTIVITY_TYPE
            from  sp_projects p,
                  SP_ACTIVITIES a,
                  sp_team_members tm,
                  SP_ACTIVITY_TYPES at
            where a.TEAM_MEMBER_ID = tm.id and 
                  a.ACTIVITY_TYPE_ID = at.id and
                  a.project_id = p.id and 
                  p.archived_yn = 'N' and
                  p.DUPLICATE_OF_PROJECT_ID is null and 
                  p.release_id = p_release_id and 
                  a.comments is not null and
                  a.start_date is not null and 
                  a.end_date is not null and
                  (
                    a.start_date between l_first_day_of_week and l_last_day_of_week or 
                    a.end_date   between l_first_day_of_week and l_last_day_of_week or 
                    (a.start_date < l_first_day_of_week and a.end_date > l_last_day_of_week)
                  )
        ) loop
            l_row_count := l_row_count + 1;
                
            if l_row_count = 1 then
               x := x||''||l_the_metric||'<br>'||e;
               x := x||'<ul>'||e;
            end if;
            x := x||'<li>'||apex_escape.html(c2.project)||' - <b>'||apex_escape.html(c2.owner)||'</b> (';
            if to_char(c2.start_date,l_dt_fmt_short) = to_char(c2.end_date,l_dt_fmt_short) then 
                x := x||to_char(c2.end_date,l_dt_fmt_short);
            else 
                x := x||to_char(c2.start_date,l_dt_fmt_short)||' - '||to_char(c2.end_date,l_dt_fmt_short);
            end if;
            x := x||')</li>'||e;
        end loop; -- c2
        if l_row_count > 0 then 
            x := x||'</ul>'||e;
        end if;

        --
        -- release dates
        --
        l_the_metric := 'Release Milestones';
        l_row_count := 0;
        for c2 in (
            select m.id,
                   (select milestone_type from sp_release_milestone_types
                     where id = m.milestone_type_id) milestone_type,
                   m.milestone_name, 
                   m.milestone_date, 
                   decode (MILESTONE_COMPLETED_YN,'Y','Complete','N','Open') as milestone_status
            from   SP_RELEASE_MILESTONES M  
            where  m.RELEASE_ID = p_release_id and 
                   m.milestone_date between l_first_day_of_week and l_last_day_of_week and
                   ((milestone_completed_yn = 'N' and p_exclude_complete_yn = 'Y') or p_exclude_complete_yn = 'N')
        ) loop
            l_row_count := l_row_count + 1;
                
            if l_row_count = 1 then
               x := x||''||l_the_metric||'<br>'||e;
               x := x||'<ul>'||e;
            end if;
            x := x||'<li>'||case when c2.milestone_type is not null then c2.milestone_type||': ' end ||
                            apex_escape.html(c2.milestone_name)||' - '||
                            to_char(c2.milestone_date,'FM Day Month DD')||
                            ' (<b>'||apex_escape.html(c2.milestone_status)||'</b>)</li>'||e;
                
        end loop;
        if l_row_count > 0 then 
            x := x||'</ul>'||e;
        end if;

        --
        -- show week before/after release open only if activities, show all weeks during release
        if dbms_lob.getlength(x) > 0 then
           if post_hr = 'n' and l_release_end_date < l_first_day_of_week then
              h := '<div style="background-color: DarkGray; text-align: left; width: 50%; height: 2px;"></div>'||h;
              post_hr := 'y';
           end if;
           dbms_lob.append(x2, h);
           dbms_lob.append(x2, x);
        elsif (l_release_start_date <= l_first_day_of_week and l_release_end_date >= l_last_day_of_week) or
              (l_release_start_date > l_first_day_of_week and l_release_start_date <= l_last_day_of_week) or
              (l_release_end_date > l_first_day_of_week and l_release_end_date <= l_last_day_of_week) then
           dbms_lob.append(x2, h);
        end if;

        x := '';

        l_first_day_of_week := l_first_day_of_week +  7;
        l_last_day_of_week  := l_last_day_of_week  +  7;

    end loop;
    end if;

    return x2;
end show_week;


function release_exceptions (
    p_release_id               in number,
    p_links                    in varchar2 default 'NONE',
    p_apex_session             in varchar2 default null )
    return clob
is
    x                      clob;
    l_exceptions_yn        varchar2(1) := 'N';
    l_proj_content         clob;
    l_reviews_yn           varchar2(1);
    l_approvals_yn         varchar2(1);
    l_date_fm              varchar2(255) := 'FMDay DD-MON';
    l_date_fm2             varchar2(255) := 'FMDay DD-MON-YYYY';
    l_row_count            int := 0;
    l_link_type            varchar2(30);
    l_project_label        varchar2(255);
    l_sysdate              date := trunc(sysdate);

    --
    -- support for links
    --
    l_release_url          varchar2(4000);
    l_project              varchar2(4000);
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
    -- HEADING
    --
    if l_link_type in ('EMAIL','JOB','NONE') then
        for c1 in (
            select release_train ||' '|| release name,
                   trunc(release_open_date) release_open_date,
                   to_char(release_open_date,'Day Month FMDD, YYYY') release_open,
                   nvl(release_open_completed,'N') release_open_yn,
                   trunc(release_target_date) release_target_date, 
                   to_char(release_target_date,'Day Month FMDD, YYYY') release_target,
                   nvl(release_completed,'N') release_completed_yn
              from sp_release_trains 
             where id = p_release_id
        ) loop 
            if l_link_type in ('EMAIL','JOB') then
               l_url := apex_page.get_url(
                          p_application => l_app_id,
                          p_page        => 117,
                          p_session     => null,
                          p_items       => 'P117_RELEASE_ID',
                          p_values      => p_release_id,
                          p_plain_url   => TRUE );
               if l_link_type = 'EMAIL' then
                  l_url := l_app_prefix_url || l_url; 
               end if;
               l_release_url := '<a href="'||l_url||'">'||apex_escape.html(c1.name)||'</a>';
               x := '<h3>Exception Report for Release '||l_release_url||'</h3>'||chr(10);
            elsif l_link_type = 'NONE' then
                x := '<h3>Exception Report for Release '||apex_escape.html(c1.name)||'</h3>'||chr(10);
            end if;
            x := x||'<strong>As of</strong>: '||to_char(sysdate,l_date_fm2)||'<br><br>';

            if c1.release_open_date < l_sysdate or
               c1.release_open_yn = 'Y'
            then x := x||'<strong>Release ' ||
                         case when c1.release_open_yn = 'Y' 
                              then 'opened:</strong> '
                              else 'was targeted to open:</strong> ' 
                              end;
            else x := x||'<strong>Release opens:</strong> ';
            end if;
            x := x|| c1.release_open ||'<br>'||chr(10);

            if c1.release_target_date < l_sysdate or
               c1.release_completed_yn = 'Y'
            then x := x||'<strong>Release ' ||
                         case when c1.release_completed_yn = 'Y' 
                                   then 'completed:</strong> '
                                   else 'was targeted to complete:</strong> ' 
                                   end;
            else x := x||'<strong>Release completes:</strong> ';
            end if;
            x := x|| c1.release_target ||'<br><br>'||chr(10);
        end loop;
    else
       x := '';
    end if;


    --
    --  RELEASE MISSING OWNER
    -- 
    for c1 in (
        select 1
          from sp_release_trains
         where id = p_release_id
           and release_owner_id is null
    ) loop
        if l_exceptions_yn = 'N' then
            x := x||chr(10)||'<h3>Release Issues</h3><ul>';
        end if;
        l_exceptions_yn := 'Y';
        x := x||chr(10)||'<li>Release has no owner</li>';
    end loop;

    --
    --  OPEN DATE PAST BUT RELEASE NOT OPEN
    -- 
    for c1 in (
        select 1
          from sp_release_trains
         where id = p_release_id
           and trunc(release_open_date) < l_sysdate
           and nvl(release_open_completed,'N') = 'N'
    ) loop
        if l_exceptions_yn = 'N' then
            x := x||chr(10)||'<h3>Release Issues</h3><ul>';
        end if;
        l_exceptions_yn := 'Y';
        x := x||chr(10)||'<li>Release past due to Open</li>';
    end loop;

    --
    --  CLOSED DATE PAST BUT RELEASE NOT CLOSED
    -- 
    for c1 in (
        select 1
          from sp_release_trains
         where id = p_release_id
           and trunc(release_target_date) < l_sysdate
           and nvl(release_completed,'N') = 'N'
    ) loop
        if l_exceptions_yn = 'N' then
            x := x||chr(10)||'<h3>Release Issues</h3><ul>';
        end if;
        l_exceptions_yn := 'Y';
        x := x||chr(10)||'<li>Release past due to Close</li>';
    end loop;

    --
    --  NO MILESTONES DEFINED
    -- 
    for c1 in (
        select count(*) cnt
          from sp_release_milestones
         where release_id = p_release_id
    ) loop
        if c1.cnt = 0 then
            if l_exceptions_yn = 'N' then
                x := x||chr(10)||'<h3>Release Issues</h3><ul>';
            end if;
            l_exceptions_yn := 'Y';
            x := x||chr(10)||'<li>No Milestones defined</li>';
        end if;
    end loop;

    --
    -- OVERDUE MILESTONES
    --
    l_row_count := 0;
    for c1 in (
        select milestone_name, 
               milestone_date
          from sp_release_milestones
         where release_id = p_release_id
           and trunc(milestone_date) < l_sysdate
           and milestone_completed_yn = 'N'
         order by milestone_date
    ) loop
        if l_exceptions_yn = 'N' then
            x := x||chr(10)||'<h3>Release Issues</h3><ul>';
        end if;
        l_exceptions_yn := 'Y';
        l_row_count := l_row_count + 1;
        if l_row_count = 1 then
            x := x||chr(10)||'<li><strong>Overdue Milestones</strong></li><ul>';
        end if;

        x := x||'<li>'||apex_escape.html(c1.milestone_name)||' was due '||to_char(c1.milestone_date,l_date_fm)||'</li>';
    end loop;

    -- CLOSING MILESTONES
    if l_row_count > 0 then 
        x := x||'</ul>';
    end if;

    -- CLOSING RELEASE ISSUES
    if l_exceptions_yn = 'Y' then
        x := x||'</ul>';
    end if;

    --
    -- PROJECT ISSUES
    --
    for c1 in (
        select p.id
          from sp_projects p,
               sp_project_priorities r
         where p.release_id = p_release_id
           and p.duplicate_of_project_id is null
           and p.archived_yn = 'N'
           and p.pct_complete > 20
           and p.pct_complete < 100
           and p.priority_id = r.id
         order by r.priority, p.project
    ) loop
        l_proj_content := null;
        l_proj_content := sp_util.exceptions_for_project (
                              p_project_id      => c1.id,
                              p_one_project_yn  => 'N',
                              p_team_member_id  => null,
                              p_link_type       => l_link_type,
                              p_app_prefix_url  => l_app_prefix_url,
                              p_app_id          => l_app_id,
                              p_apex_session    => p_apex_session,
                              p_reviews_yn      => l_reviews_yn,
                              p_approvals_yn    => l_approvals_yn );

        if dbms_lob.getlength(l_proj_content) != 0 then
            l_exceptions_yn := 'Y';
            x := x||l_proj_content;
        end if;   
    end loop;

    -- END
    if l_exceptions_yn = 'N' then
       x := x||chr(10)||'No exceptions found';
    end if;

    return x;
end release_exceptions;

end sp_release_timeline;
/