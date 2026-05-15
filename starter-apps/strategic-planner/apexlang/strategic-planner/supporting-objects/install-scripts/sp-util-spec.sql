create or replace package sp_util as

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
    p_arg5_val        in varchar2 default null );

procedure add_app_log ( 
    p_activity   in varchar2,
    p_details    in varchar2 );

-- create APIs
function create_area (
    p_area                     in varchar2,
    p_description              in varchar2 default null,
    p_owner_id                 in number   default null )
    return number;

function create_initiative (
    p_area_id                  in number,
    p_initiative               in varchar2,
    p_objective                in varchar2 default null,
    p_owner_id                 in number   default null )
    return number;

function create_release (
    p_release_train                  in varchar2,
    p_release_owner_id               in number,
    p_release                        in varchar2,
    p_release_target_date            in date,
    p_release_open_date              in date )
    return number;

procedure copy_release (
    p_copy_from_release_id  in  number,
    p_new_release           in  varchar2,
    p_push_days             in  number,
    p_new_release_id        out number );

function create_team_member (
    p_first_name                     in varchar2,
    p_last_name                      in varchar2,
    p_email                          in varchar2,
    p_tags                           in varchar2 default null,
    p_is_current_yn                  in varchar2 default 'Y' )
    return number;

function create_project (
    p_initiative_id                  in number,
    p_project                        in varchar2,
    p_owner_id                       in number,
    p_status_scale                   in varchar2 default 'A',
    p_pct_complete                   in number default 10,
    p_priority_id                    in number default 4,
    p_target_complete                in date default null,
    p_release_id                     in number default null,
    p_project_size                   in varchar2 default 'M',
    p_description                    in varchar2 default null,
    p_tags                           in varchar2 default null ) 
    return number;

function copy_project (
    p_project_id                     in number,
    p_new_project_name               in varchar2 ) 
    return number;

procedure add_related_project (
    p_related_project_id in number,
    p_project_id         in number );

procedure add_project_link (
    p_project_id      in number,
    p_link_name       in varchar2,
    p_link_url        in varchar2 );

procedure default_project_tasks (
    p_project_id      in number );

procedure archive_project (
    p_project_id      in number,
    p_app_user        in varchar2 );

procedure un_archive_project (
    p_project_id      in number );

procedure mark_proj_as_duplidate (
    p_project_id        in number,
    p_dup_of_project    in number );

procedure unmark_proj_as_duplicate (
    p_project_id        in number );

-------------------
-- additional APIs
--

function get_user_email (
    p_app_user     in  varchar2  default null,
    p_user_id      in  number    default null )
    return varchar2;

function get_user_id (
    p_app_user     in varchar2   default null,
    p_screen_name  in  varchar2  default null )
    return number;

function get_area_name (
    p_id              in number )
    return varchar2;

function get_initiative_name (
    p_id              in number )
    return varchar2;

function get_project_name (
    p_id              in number )
    return varchar2;

procedure add_project_contributor (
    P_TEAM_MEMBER_ID    in number,
    p_RESPONSIBILITY_ID in number,
    p_project_id        in number );
    
procedure add_project_tag (
    p_project_id        in number,
    p_tag               in varchar2 );

procedure remove_project_tag (
    p_project_id        in number,
    p_tag               in varchar2 );

procedure set_nomenclature;

function show_nomenclature return clob;

function get_nomenclature (
    p_static_id  in  varchar2 )
    return varchar2;

procedure add_setting (  
    p_static_id      in  varchar2,   
    p_description    in  varchar2, 
    p_setting_value  in  varchar2, 
    p_is_numeric_yn  in  varchar2, 
    p_is_yn          in  varchar2 );

procedure set_setting (  
    p_static_id      in  varchar2,   
    p_setting_value  in  varchar2 );

function get_setting (
    p_static_id  in  varchar2 )
    return varchar2;

procedure add_ai_prompt (  
    p_static_id      in  varchar2,   
    p_description    in  varchar2, 
    p_prompt         in  clob );

procedure set_ai_prompt (  
    p_static_id      in  varchar2,   
    p_prompt         in  clob );

function get_ai_prompt (
    p_static_id  in  varchar2 )
    return clob;

function get_notification_id (
    p_static_id   in  varchar2 )
    return number;

procedure notification_opt_in (
    p_team_member_id   in  number,
    p_notification_id  in  number,
    p_frequency        in  varchar2 default 'WEEKLY',
    p_release_id       in  number   default null );

procedure notification_opt_out (
    p_team_member_id   in  number,
    p_notification_id  in  number,
    p_release_id       in  number default null );

procedure get_create_project_qp (
    p_app_user         in varchar2,
    p_quick_pick_id_1  out number,
    p_quick_pick_1     out varchar2,
    p_quick_pick_id_2  out number,
    p_quick_pick_2     out varchar2,
    p_quick_pick_id_3  out number,
    p_quick_pick_3     out varchar2,
    p_quick_pick_id_4  out number,
    p_quick_pick_4     out varchar2 );

procedure get_current_username_and_id (
    p_app_user         in varchar2,
    p_users_name       out varchar2,
    p_users_id         out number );

-------------
-- data sync
--

procedure sync_team_members_app_role (
    p_app_id in number );

procedure sync_team_member_app_role (
    p_app_id in number,
    p_email  in varchar2 );

-------------
-- Tags
--

procedure add_default_tag (
    p_tag        in varchar2,
    p_sequence   in number default null );

procedure get_default_tags (
    p_tag_1      out varchar2,
    p_tag_2      out varchar2,
    p_tag_3      out varchar2,
    p_tag_4      out varchar2,
    p_tag_5      out varchar2,
    p_tag_6      out varchar2 );

function count_project_tags (
    p_project_id in number )
    return number;

function get_project_id (
    p_friendly_identifier in varchar2,
    p_project_url_name    in varchar2 )
    return number;

 function get_initiative_id (
    p_friendly_identifier    in varchar2,
    p_initiative_url_name    in varchar2 )
    return number;

--------------------
-- utility functions
--

function compress_int (
    n in integer ) 
    return varchar2;

function find_mentions (
    p_clob in clob )
    return varchar2;

function list_change (
    p_old_list   in varchar2 default null, 
    p_new_list   in varchar2 default null, 
    p_delim      in varchar2 default ',' )
    return varchar2;

--------------------
-- for Notification Subscriptions
--
procedure send_notif_subscriptions;

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
    p_notification_type  in  varchar2 );

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
    p_notification_type  in  varchar2 default 'COMMENT' );

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
    return clob;

-- used for build option display within Admin
function replace_nomenclature (
    p_contents  in  varchar2 )
    return varchar2;

end sp_util;
/