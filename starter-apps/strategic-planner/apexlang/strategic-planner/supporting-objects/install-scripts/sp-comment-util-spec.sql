create or replace package sp_comment_util as

-- used in the views to swap in current user's session id
function replace_session_on_display (
    p_body        in  clob,
    p_session_id  in  number )
    return clob;

-------------------------------

procedure add_initiative_comment (
    p_app_user_id     in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_initiative_id   in  number,
    p_image_ref_id    in  number   default null );

procedure update_initiative_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null );

procedure delete_initiative_comment (
    p_comment_id      in  number );


procedure add_project_comment (
    p_app_user_id     in  number,
    p_app_user        in  varchar2,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_project_id      in  number,
    p_system_gen_yn   in  varchar2 default 'N',
    p_app_id          in  number   default null,
    p_permalink_pre   in  varchar2 default null,
    p_nomen_sp        in  varchar2 default null,
    p_nomen_project   in  varchar2 default null,
    p_image_ref_id    in  number   default null );

procedure update_project_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null );

procedure delete_project_comment (
    p_comment_id      in  number );


procedure add_task_comment (
    p_app_user_id     in  number,
    p_app_user        in  varchar2,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_project_id      in  number,
    p_task_id         in  number,
    p_app_id          in  number,
    p_link            in  varchar2,
    p_nomen_sp        in  varchar2,
    p_image_ref_id    in  number   default null );

procedure update_task_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null );

procedure delete_task_comment (
    p_comment_id      in  number );


procedure add_release_comment (
    p_app_user_id     in  number,
    p_comment         in varchar2,
    p_release_id      in number,
    p_private_yn      in varchar2 default 'N',
    p_image_ref_id    in  number   default null );

procedure update_release_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null );

procedure delete_release_comment (
    p_comment_id      in  number );


 procedure add_init_focus_area_comment (
    p_app_user_id         in  number,
    p_comment             in  varchar2,
    p_init_focus_area_id  in  number,
    p_private_yn          in  varchar2 default 'N',
    p_image_ref_id        in  number   default null );

procedure update_init_focus_area_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null );

procedure delete_init_focus_area_comment (
    p_comment_id      in  number );

----------------------

procedure upload_image (
    p_file_base64           in  clob,
    p_filename              in  varchar2,
    p_mimetype              in  varchar2,
    p_image_ref_id          in  number );

procedure display_image (
    p_unique_filename  in  varchar2 );

end sp_comment_util;
/