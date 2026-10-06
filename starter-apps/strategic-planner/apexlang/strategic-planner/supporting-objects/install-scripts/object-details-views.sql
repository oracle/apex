create or replace view sp_area_details_v as
select f.ID area_id,
       f.area AREA,
       substr(f.DESCRIPTION,1,80)||decode(greatest(length(f.DESCRIPTION),80),80,null,'...') DESCRIPTION,
       --
       -- owner
       --
       tm.id owner_id,
       case when tm.id is null then 'none' else tm.first_name||' '||tm.last_name end owner_name,
       case when tm.id is null then 'none' else tm.email end owner_email,
       --
       f.tags,
       --
       -- initiatives
       --
       (select count(*) 
          from SP_INITIATIVES i 
         where i.AREA_ID = f.id) initiative_count,
       --
       -- projects
       --
       (select count(*) 
          from SP_PROJECTS p 
         where ARCHIVED_YN = 'N' and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               p.initiative_id in (select distinct id 
                                     from SP_INITIATIVES i 
                                    where i.AREA_ID = f.id)) project_count,
       --
       (select count(*) 
          from SP_PROJECTS p 
         where ARCHIVED_YN = 'N' and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               p.pct_complete != 0 and 
               p.pct_complete != 100 and
               p.initiative_id in (select distinct id 
                                     from SP_INITIATIVES i 
                                    where i.AREA_ID = f.id)) open_project_count,
       --
       (select max(p.created) 
          from SP_PROJECTS p 
         where p.ARCHIVED_YN = 'N' and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               p.initiative_id in (select distinct id 
                                     from SP_INITIATIVES i 
                                    where i.AREA_ID = f.id)) last_project_created_date,
       --
       -- most recently created project
       --
       (select max(p.updated) 
          from SP_PROJECTS p 
         where p.ARCHIVED_YN = 'N' and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               p.initiative_id in (select distinct id 
                                     from SP_INITIATIVES i 
                                    where i.AREA_ID = f.id)) last_project_updated_date,
       --
       -- audit info
       --
       f.created created_date,
       lower(f.created_by) created_by_app_username,
       f.updated last_updated_date,
       lower(f.updated_by) last_updated_by_app_username
  from SP_AREAS f,
       sp_team_members tm
  where f.OWNER_ID = tm.id(+);


create or replace view sp_initiative_details_v as
select i.ID initiative_id,
       i.INITIATIVE,
       i.area_id,
       f.AREA,
       --
       -- details
       --
       decode(i.OBJECTIVE,null,'none',substr(i.OBJECTIVE,1,80)||decode(greatest(length(i.objective),80),80,null,'...')) OBJECTIVE,
       lower(i.tags) tags,
       (select count(*)
          from sp_initiative_focus_areas
         where initiative_id = i.id
           and active_yn = 'Y') active_focus_area_count,
       (select listagg(focus_area, ', ' on overflow truncate with count) within group (order by 1) 
          from sp_initiative_focus_areas
         where initiative_id = i.id
           and active_yn = 'Y') active_focus_areas,
       --
       -- owner
       --
       tm.id owner_id,
       case when tm.id is null then 'none' else tm.first_name||' '||tm.last_name end owner_name,
       case when tm.id is null then 'none' else tm.email end owner_email,
       --
       -- project counts
       --
       (select count(*) 
          from sp_projects p 
         where p.initiative_id = i.id and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               ARCHIVED_YN = 'N') project_count,
       --
       (select count(*) 
          from sp_projects p 
         where p.initiative_id = i.id and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               p.pct_complete != 0 and 
               p.pct_complete != 100 and
               ARCHIVED_YN = 'N') open_project_count,
       --
       (select count(*) 
          from sp_projects p 
         where p.initiative_id = i.id and 
               p.DUPLICATE_OF_PROJECT_ID is null and
               p.pct_complete = 100 and
               ARCHIVED_YN = 'N') completed_project_count,
       --
       -- last projects
       --
       nvl((select max(p.created) 
              from sp_projects p 
             where p.initiative_id = i.id and 
                   p.ARCHIVED_YN = 'N' and 
                   p.DUPLICATE_OF_PROJECT_ID is null ),i.updated) last_project_created_date,
       nvl((select max(p.updated) 
              from sp_projects p 
             where p.initiative_id = i.id and 
                   p.ARCHIVED_YN = 'N' and 
                   p.DUPLICATE_OF_PROJECT_ID is null ),i.updated) last_project_updated_date,
       --
       -- audit info
       --
       i.created created_date,
       lower(i.created_by) created_by_app_username,
       i.updated last_updated_date,
       lower(i.updated_by) last_updated_by_app_username
  from SP_INITIATIVES i, 
       sp_areas f,
       sp_team_members tm
 where i.area_id = f.id and
       i.SPONSOR_ID = tm.id(+);


create or replace view sp_project_details_v as
  select  
       -- 
       -- project information 
       -- 
       p.ID as project_id, 
       p.PROJECT, 
       decode(nvl(dbms_lob.getlength(p.description),0),0,'Not Provided', 
           dbms_lob.substr(p.description,200,1)|| 
           decode(greatest(dbms_lob.getlength(p.description),200),200,null,'...')) description, 
       -- 
       -- initiative and area 
       -- 
       p.initiative_id, 
       i.initiative, 
       i.area_id, 
       (select area from sp_areas a where a.id = i.area_id) area, 
       (select focus_area from sp_initiative_focus_areas where id = p.focus_area_id) focus_area, 
       -- 
       -- owner 
       -- 
       p.owner_id, 
       (select FIRST_NAME ||' '||last_name from SP_TEAM_MEMBERS x where x.ID = p.OWNER_ID) owner_name, 
       (select email from SP_TEAM_MEMBERS x where x.ID = p.OWNER_ID) owner_email, 
       (select lower(tags) from sp_team_members where id = p.owner_id) owner_tags, 
       -- 
       -- project details 
       -- 
       (select 'P'||PRIORITY from SP_PROJECT_PRIORITIES x where x.ID = p.PRIORITY_ID) priority, 
       p.PROJECT_SIZE, 
       z.size_description, 
       z.effort_days, 
       round((100 - p.PCT_COMPLETE) * z.effort_days *.01) days_remaining, 
       p.PCT_COMPLETE pct_complete, 
       case when p.pct_complete >= s.min_pc_for_status and p.pct_complete != 100 
            then nvl((select status from sp_project_statuses 
                       where id = p.status_id),'Not Set')
            else 'NA' 
            end status, 
       case when p.requires_reviews_yn = 'Y' then 'Yes' else 'No' end requires_reviews, 
       case when p.doc_impact_yn = 'Y' then 'Yes' else 'No' end doc_impact, 
       replace(lower(p.tags),',',', ') as tags, 
       (select group_name from sp_project_groups 
         where id = p.project_group_id) project_group, 
       -- 
       -- target (release or date) 
       -- 
       p.release_id,
       (select t.release_train||' '||t.release from SP_RELEASE_TRAINS t where t.id = p.release_id) release,
       p.target_complete, 
       -- 
       external_ticket_identifier, 
       external_system_link, 
       -- 
       -- contributors 
       -- 
       (select listagg(distinct xtm.first_name||' '||xtm.last_name, ', ' on overflow truncate with count) within group (order by 1) names 
          from SP_TASKS xpc, SP_TEAM_MEMBERS xtm 
         where xpc.project_id = p.id and 
               xpc.OWNER_ID = xtm.id 
                ) contributor_names, 
       -- 
       -- contributor emails 
       -- 
       (select listagg(distinct xtm.email, ', ' on overflow truncate with count) within group (order by 1) names 
          from SP_TASKS xpc, SP_TEAM_MEMBERS xtm 
         where xpc.project_id = p.id and 
               xpc.OWNER_ID = xtm.id 
               ) contributor_emails, 
       -- 
       -- reviews 
       -- 
       (select count(*) from sp_tasks t, sp_task_types tt 
         where t.project_id = p.id  
           and nvl(t.task_sub_type_id,t.task_type_id) = tt.id     
           and tt.static_id like 'REVIEW%') review_count, 
       (select listagg(distinct xtm.first_name||' '||xtm.last_name, ', ' on overflow truncate with count) within group (order by 1) names 
          from SP_TASKS xpc, SP_TEAM_MEMBERS xtm, sp_task_types tt 
         where xpc.project_id = p.id and 
               xpc.OWNER_ID = xtm.id and  
               nvl(xpc.task_sub_type_id,xpc.task_type_id) = tt.id and  
               tt.static_id like 'REVIEW%' 
                ) reviewer_names, 
       (select listagg(distinct xtm.email, ', ' on overflow truncate with count) within group (order by 1) names 
          from SP_TASKS xpc, SP_TEAM_MEMBERS xtm, sp_task_types tt 
         where xpc.project_id = p.id and 
               xpc.OWNER_ID = xtm.id and  
               nvl(xpc.task_sub_type_id,xpc.task_type_id) = tt.id and  
               tt.static_id like 'REVIEW%' 
                ) reviewer_emails, 
       (select listagg(tt.task_type||' - '||nvl(to_char(t.target_complete,'DD-MON-YYYY'),'No date'), ', ' on overflow truncate with count) within group (order by t.target_complete nulls first)  
          from sp_tasks t, sp_task_types tt 
         where t.project_id = p.id  
           and nvl(t.task_sub_type_id,t.task_type_id) = tt.id     
           and tt.static_id like 'REVIEW%') reviews, 
       -- 
       -- milestones 
       -- 
       (select count(*) from sp_tasks t, sp_task_types tt 
         where t.project_id = p.id  
           and nvl(t.task_sub_type_id,t.task_type_id) = tt.id     
           and tt.static_id like 'MILESTONE%') milestone_count, 
       (select listagg(tt.task_type||' - '||nvl(to_char(t.target_complete,'DD-MON-YYYY'),'No date'), ', ' on overflow truncate with count) within group (order by t.target_complete nulls first)  
          from sp_tasks t, sp_task_types tt 
         where t.project_id = p.id  
           and nvl(t.task_sub_type_id,t.task_type_id) = tt.id     
           and tt.static_id like 'MILESTONE%') milestones, 
       -- 
       -- approvals 
       -- 
       nvl((select listagg(t.approval_type||' ('||initcap(replace(status,'-',' '))||')',', ' on overflow truncate with count) 
                   within group (order by submitted) 
              from (select approval_type_id, status, submitted, max(submitted) over (partition by approval_type_id) last_submitted 
                      from sp_project_approvals 
                     where project_id = p.id) a, 
                   sp_approval_types t 
             where a.submitted = a.last_submitted 
               and a.approval_type_id = t.id),'None') approvals, 
       -- 
       -- last comments 
       -- 
       (select max(dbms_lob.substr(c.body,255,1)|| 
               decode(greatest(dbms_lob.getlength(c.body),255),255,null,'...')) last_comment  
        from   SP_PROJECT_COMMENTS c  
        where c.project_id = p.id and  
              c.private_yn = 'N' and  
              c.created = (select max(c2.created) from sp_project_comments c2 where c2.project_id = p.id and c2.private_yn = 'N')) 
        as last_comment, 
       -- 
       (select max(c.created) from sp_project_comments c where c.project_id = p.id and c.private_yn = 'N') last_comment_on, 
       (select first_name||' '||last_name from SP_TEAM_MEMBERS t where t.id = (select max(c.author_id) from sp_project_comments c where c.project_id = p.id and c.created = (select max(c.created) from sp_project_comments c where c.project_id = p.id and c.private_yn = 'N'))) last_comment_by, 
       -- 
       -- last owner comments 
       -- 
       (select max(dbms_lob.substr(c.body,255,1)|| 
               decode(greatest(dbms_lob.getlength(c.body),255),255,null,'...')) last_comment  
        from   SP_PROJECT_COMMENTS c  
        where c.project_id = p.id and  
              c.private_yn = 'N' and  
              c.AUTHOR_ID = p.owner_id and 
              c.created = (select max(c2.created) from sp_project_comments c2 where c2.project_id = p.id and c2.AUTHOR_ID = p.owner_id and c2.private_yn = 'N')) 
        as last_comment_by_owner, 
       -- 
       (select max(c.created) from sp_project_comments c where c.project_id = p.id and c.author_id = p.owner_id and c.private_yn = 'N') last_comment_by_owner_on, 
       (select count(*) from sp_project_comments c where c.project_id = p.id and c.created >= sysdate - 28 and c.private_yn = 'N') comments_28d, 
       -- 
       -- activity 
       -- 
       nvl((select count(*) from SP_ACTIVITIES ap where ap.project_id = p.id and trunc(sysdate) >= ap.start_date and trunc(sysdate) <= ap.end_date),0) current_activity_count, 
       -- 
       -- favorites 
       -- 
       (select count(*) 
          from sp_favorites f  
         where f.project_id = p.id) favorited, 
       -- 
       -- views in last 28 days 
       -- 
       (select count(*) 
          from sp_proj_interactions_log l 
         where l.project_id = p.id 
           and page_rendered >= sysdate-28) views_28d, 
       (select count(distinct(app_user)) 
          from sp_proj_interactions_log l 
         where l.project_id = p.id 
           and page_rendered >= sysdate-28) distinct_user_views_28d, 
       -- 
       -- audit info 
       -- 
       P.created created_date, 
       lower(p.created_by) created_by_app_username, 
       p.updated last_updated_date, 
       lower(p.updated_by) last_updated_by_app_username 
from  SP_PROJECTS p, 
      sp_project_scales s, 
      sp_initiatives i, 
      SP_PROJECT_SIZES z 
where nvl(p.ARCHIVED_YN,'N') = 'N' and  
      p.DUPLICATE_OF_PROJECT_ID is null and 
      p.status_scale = s.scale_letter and  
      p.initiative_id = i.id and 
      p.PROJECT_SIZE = z.project_size;


create or replace view sp_project_change_history_v as
select 'Project' change_to,
       h.PROJECT_ID             project_id,
       p.project                project,
       h.change_type,
       --
       initcap(replace(h.attribute_column,'_',' ')) ATTRIBUTE_COLUMN,
       decode(h.old_value,'Y','Yes','N','No',h.old_value) OLD_VALUE,
       decode(h.new_value,'Y','Yes','N','No',h.new_value) NEW_VALUE,
       h.CHANGED_ON             ATTRIBUTE_CHANGE_DATE,
       lower(h.changed_by) changed_by_app_username
  from SP_PROJECT_HISTORY h,
       sp_projects p
 where h.project_id = p.id
union all
select tt.task_type ||
       case when t.task_sub_type_id is not null
            then (select ': '||task_type from sp_task_types where t.task_sub_type_id = id)
            end change_to,
       t.PROJECT_ID             project_id,
       p.project                project,
       h.change_type,
       --
       initcap(replace(h.attribute_column,'_',' ')) ATTRIBUTE_COLUMN,
       decode(h.old_value,'Y','Yes','N','No',h.old_value) OLD_VALUE,
       decode(h.new_value,'Y','Yes','N','No',h.new_value) NEW_VALUE,
       h.CHANGED_ON             ATTRIBUTE_CHANGE_DATE,
       lower(h.changed_by) changed_by_app_username
  from sp_task_history h,
       sp_tasks t,
       sp_task_types tt,
       sp_projects p
 where h.task_id = t.id
   and t.task_type_id = tt.id
   and t.project_id = p.id;


create or replace view sp_release_details_v as
select r.ID release_id,
       r.RELEASE_TRAIN,
       r.RELEASE,
       initcap(nvl(r.release_type,'FULL')) release_type,
       --
       -- details
       --
       r.RELEASE_OPEN_DATE,
       r.RELEASE_TARGET_DATE,
       case when release_open_completed = 'Y' and nvl(release_completed,'N') = 'N' then
           'Open'
           when nvl(release_open_completed,'N') = 'N' then
           'Future'
           else
           'Closed' end release_status,
       r.RELEASE_TARGET_DATE - r.RELEASE_OPEN_DATE duration_in_days,
       case when r.RELEASE_TARGET_DATE >= trunc(sysdate) 
            then trunc(r.RELEASE_TARGET_DATE) - trunc(sysdate) 
            end days_remaining,
       --
       -- release owner
       --
       r.RELEASE_OWNER_ID owner_id,
       (select first_Name||' '||last_name from sp_team_members tm where tm.id =  r.RELEASE_OWNER_ID) owner_name,
       (select email from sp_team_members tm where tm.id =  r.RELEASE_OWNER_ID) owner_email,
       --
       -- project counts
       --
       (select count(*) 
          from sp_projects p 
         where p.release_id = r.id and 
               p.ARCHIVED_YN = 'N' and 
               p.duplicate_of_project_id is null) project_count,
       --
       (select count(*) c 
          from sp_projects p 
         where p.release_id = r.id and 
               p.pct_complete != 100 and 
               p.ARCHIVED_YN = 'N' and 
               p.duplicate_of_project_id is null) open_project_count,
       --
       (select count(*) c 
       from sp_projects p 
       where p.release_id = r.id and
             p.pct_complete = 100 and 
             p.ARCHIVED_YN = 'N' and 
             p.duplicate_of_project_id is null) completed_project_count,
       --
       (select count(distinct OWNER_ID)
          from SP_TASKS c 
         where c.PROJECT_ID in (select id 
                                  from sp_projects p
                                 where p.release_id  = r.id and 
                                       p.ARCHIVED_YN = 'N' and 
                                       p.duplicate_of_project_id is null)) project_contributor_count,
       --
       nvl((select round(avg(p.PCT_COMPLETE))
              from sp_projects p 
             where p.release_id = r.id and 
                   p.ARCHIVED_YN = 'N' and 
                   p.duplicate_of_project_id is null), 0) avg_project_pct_complete,
       --
       -- last project update
       --
       (select max(updated) 
          from sp_projects p 
         where p.release_id = r.id and 
               p.ARCHIVED_YN = 'N' and 
               p.duplicate_of_project_id is null) last_project_update,
       --
       -- milestone counts
       --
       (select count(*) from SP_RELEASE_MILESTONES m where m.RELEASE_ID = r.id) milestone_count,
       (select count(*) from SP_RELEASE_MILESTONES m where m.RELEASE_ID = r.id and m.MILESTONE_COMPLETED_YN = 'Y') completed_milestone_count,

       --
       -- audit info
       --
       r.created created_date,
       lower(r.created_by) created_by_app_username,
       r.updated last_updated_date,
       lower(r.updated_by) last_updated_by_app_username
  from SP_RELEASE_TRAINS r;


create or replace view sp_person_details_v as
select t.ID person_id,
       t.FIRST_NAME,
       t.last_name,
       t.email,
       t.email_domain,
       t.screen_name,
       t.location,
       nvl((select COUNTRY_NAME from sp_countries cc where cc.id = t.country_id),'Unknown') country,
       nvl((select region from sp_countries cc where cc.id = t.country_id),'Unknown') region,
       lower(t.TAGS) tags,
       t.competencies,
       decode(t.IS_CURRENT_YN,'Y','Yes','N','No',IS_CURRENT_YN) IS_ACTIVE,
       --
       -- counts
       --
       (select count(*) from SP_AREAS f where f.owner_id = t.id) area_owner_count,
       (select count(*) from SP_INITIATIVES i where i.sponsor_id = t.id) initiative_owner_count,
       (select count(*) from sp_projects p where p.owner_id = t.id and ARCHIVED_YN = 'N') project_owner_count,
       (select count(*) from sp_tasks t, sp_projects p where t.owner_id = t.id and t.project_id = p.id and p.ARCHIVED_YN = 'N') task_owner_count,    
       (select count(*) from SP_PROJECT_DOCUMENTS d where d.created_by = upper(t.email)) project_contrib_doc_count,
       (select count(*) from SP_INITIATIVE_DOCUMENTS d where d.created_by = upper(t.email)) initiative_contrib_doc_count,
       (select count(*) from SP_RELEASE_DOCUMENTS d where d.created_by = upper(t.email)) release_contrib_doc_count,
       (select count(*) from SP_TASK_DOCUMENTS d where d.created_by = upper(t.email)) task_contrib_doc_count,
       (select count(*) from SP_PROJECT_COMMENTS c where c.AUTHOR_ID = t.id) proj_contrib_comment_count,
       (select count(*) from SP_INITIATIVE_COMMENTS c where c.AUTHOR_ID = t.id) initiative_contrib_comment_count,
       (select count(*) from SP_RELEASE_COMMENTS c where c.AUTHOR_ID = t.id) release_contrib_comment_count,
       (select count(*) from SP_TASK_COMMENTS c where c.AUTHOR_ID = t.id) task_contrib_comment_count,
       (select count(*) from SP_ACTIVITIES ap where ap.TEAM_MEMBER_ID = t.id and ap.end_date >= trunc(sysdate)) active_activity_count,
       --
       -- open reviews
       --
       (select count(*) 
          from SP_TASKS r, SP_TASK_TYPES tt, sp_task_statuses s
         where r.OWNER_ID = t.id 
           and nvl(r.task_sub_type_id,r.task_type_id) = tt.id
           and tt.static_id like 'REVIEW%'
           and r.status_id = s.id
           and s.INDICATES_COMPLETE_YN != 'Y') open_review_count,
       --
       -- groups
       --
       (select count(*)
          from SP_GROUP_MEMBERS gm, SP_GROUPS g
         where gm.group_id = g.id 
           and gm.team_member_id = t.id) group_membership_count,
       (select LISTAGG(g.group_name, ', ' on overflow truncate with count) within group (order by 1)
          from SP_GROUP_MEMBERS gm, SP_GROUPS g
         where gm.group_id = g.id 
           and gm.team_member_id = t.id) group_membership,
       --
       -- audit info
       --
       t.created created_date,
       lower(t.created_by) created_by_app_username,
       t.updated last_updated_date,
       lower(t.updated_by) last_updated_by_app_username
  from SP_TEAM_MEMBERS t;