create or replace view sp_initiative_comments_v as
select id, 
       initiative_id,
       sp_comment_util.replace_session_on_display(body, sys_context('APEX$SESSION', 'APP_SESSION') ) body,
       sp_comment_util.replace_session_on_display(body_html, sys_context('APEX$SESSION', 'APP_SESSION') ) body_html,
       body_no_images, 
       author_id, private_yn,
       image_ref_id,
       created, created_by, updated, updated_by
  from sp_initiative_comments;


create or replace view sp_init_focus_area_comments_v as
select id, 
       init_focus_area_id,
       sp_comment_util.replace_session_on_display(body, sys_context('APEX$SESSION', 'APP_SESSION') ) body,
       sp_comment_util.replace_session_on_display(body_html, sys_context('APEX$SESSION', 'APP_SESSION') ) body_html,
       body_no_images, 
       author_id, private_yn,
       image_ref_id,
       created, created_by, updated, updated_by
  from sp_init_focus_area_comments;


create or replace view sp_project_comments_v as
select id, 
       project_id,
       sp_comment_util.replace_session_on_display(body, sys_context('APEX$SESSION', 'APP_SESSION') ) body,
       sp_comment_util.replace_session_on_display(body_html, sys_context('APEX$SESSION', 'APP_SESSION') ) body_html,
       body_no_images, 
       author_id, private_yn,
       image_ref_id,
       created, created_by, updated, updated_by
  from sp_project_comments;


create or replace view sp_task_comments_v as
select id, 
       task_id,
       sp_comment_util.replace_session_on_display(body, sys_context('APEX$SESSION', 'APP_SESSION') ) body,
       sp_comment_util.replace_session_on_display(body_html, sys_context('APEX$SESSION', 'APP_SESSION') ) body_html,
       body_no_images, 
       author_id, private_yn,
       image_ref_id,
       created, created_by, updated, updated_by
  from sp_task_comments;


create or replace view sp_release_comments_v as
select id, 
       release_id,
       sp_comment_util.replace_session_on_display(body, sys_context('APEX$SESSION', 'APP_SESSION') ) body,
       sp_comment_util.replace_session_on_display(body_html, sys_context('APEX$SESSION', 'APP_SESSION') ) body_html,
       body_no_images, 
       author_id, private_yn,
       image_ref_id,
       created, created_by, updated, updated_by
  from sp_release_comments;