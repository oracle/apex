begin
    for c1 in (
        select 1 from user_scheduler_jobs
         where job_name = 'SP_NOTIF_SUBSCRIPTIONS'
    ) loop
        sys.dbms_scheduler.drop_job(job_name => 'SP_NOTIF_SUBSCRIPTIONS');
    end loop;
end;
/
begin
    for c1 in (
        select 1 from user_scheduler_jobs
         where job_name = 'SP_GENERATE_AI_PROJECT_SUMMARIES_JOB'
    ) loop
        sys.dbms_scheduler.drop_job(job_name => 'SP_GENERATE_AI_PROJECT_SUMMARIES_JOB');
    end loop;
end;
/

drop sequence   sp_seq;
drop sequence   sp_kb_stack_rank_seq;

drop package    sp_globals;
drop package    sp_release_timeline;
drop package    sp_log;
drop package    sp_util;
drop package    sp_summary_util;
drop package    sp_comment_util;
drop package    sp_value_compare;
drop package    sp_contributor_summary;
drop package    sp_approvals;
drop procedure  sp_favorite_toggle;
drop function   sp_date_range_pct_comp;
drop function   sp_tag_diff;

drop view sp_initiative_comments_v;
drop view sp_init_focus_area_comments_v;
drop view sp_project_comments_v;
drop view sp_task_comments_v;
drop view sp_release_comments_v;
drop view sp_documents_v;

drop table SP_APP_NOMENCLATURE           cascade constraints;
drop table sp_app_settings               cascade constraints;
drop table sp_app_log                    cascade constraints;
drop table sp_error_log                  cascade constraints;
drop table SP_DEFAULT_TAGS               cascade constraints;
drop table SP_RELEASE_MILESTONE_DEFAULT_TAGS cascade constraints;
drop table sp_countries                  cascade constraints;
drop table sp_project_priorities         cascade constraints;
drop table sp_resource_types             cascade constraints;
drop table sp_team_members               cascade constraints;
drop table SP_TEAM_MEMBER_NOTIFICATIONS  cascade constraints;
drop table sp_areas                      cascade constraints;
drop table sp_initiatives                cascade constraints;
drop table sp_initiative_history         cascade constraints;
drop table sp_initiative_documents       cascade constraints;
drop table sp_initiative_comments        cascade constraints;
drop table sp_initiative_links           cascade constraints;
drop table sp_initiative_focus_areas     cascade constraints;
drop table sp_init_focus_area_history    cascade constraints;
drop table sp_init_focus_area_documents  cascade constraints;
drop table sp_init_focus_area_comments   cascade constraints;
drop table sp_init_focus_area_links      cascade constraints;
drop table sp_projects                   cascade constraints;
drop table sp_project_history            cascade constraints;
drop table sp_project_contributors       cascade constraints;
drop table sp_project_comments           cascade constraints;
drop table sp_project_documents          cascade constraints;
drop table sp_project_links              cascade constraints;
drop table sp_project_related            cascade constraints;
drop table sp_project_comments_emails    cascade constraints;
drop table sp_project_sizes              cascade constraints;
drop table sp_project_groups             cascade constraints;
drop table sp_project_statuses           cascade constraints;
drop table sp_release_trains             cascade constraints;
drop table sp_release_comments           cascade constraints;
drop table sp_release_milestone_types    cascade constraints;
drop table sp_release_milestones         cascade constraints;
drop table sp_release_documents          cascade constraints;
drop table sp_release_history            cascade constraints;
drop table SP_RELEASE_LINKS              cascade constraints;
drop table sp_proj_interactions_log      cascade constraints;
drop table sp_favorites                  cascade constraints;
drop table sp_configurable_text          cascade constraints;
drop table sp_project_scales             cascade constraints;
drop table sp_activity_types             cascade constraints;
drop table sp_activities                 cascade constraints;
drop table sp_notifications              cascade constraints;
drop table sp_notification_subscriptions cascade constraints;
drop table SP_GROUPS                     cascade constraints;
drop table SP_GROUP_MEMBERS              cascade constraints;
drop table SP_DEFAULT_PEOPLE_TAGS        cascade constraints;
drop table SP_EXTERNAL_TICKETING_SYSTEMS cascade constraints;
drop table SP_APPLICATION_NOTIFICATIONS  cascade constraints;
drop table sp_competencies               cascade constraints;
drop table sp_task_comments              cascade constraints;
drop table sp_task_documents             cascade constraints;
drop table sp_task_links                 cascade constraints;
drop table sp_task_history               cascade constraints;
drop table sp_tasks                      cascade constraints;
drop table sp_task_statuses              cascade constraints;
drop table sp_initiative_default_tasks   cascade constraints;
drop table sp_task_types                 cascade constraints;
drop table sp_comment_images             cascade constraints;

drop table sp_ai_prompts                 cascade constraints;
drop table sp_project_ai_summaries       cascade constraints;
drop table sp_release_ai_summaries       cascade constraints;
drop table sp_report_questions           cascade constraints;

drop table sp_approval_types             cascade constraints;
drop table sp_initiative_approvals       cascade constraints;
drop table sp_initiative_approval_chain  cascade constraints;
drop table sp_project_approvals          cascade constraints;
drop table sp_project_approval_chain     cascade constraints;