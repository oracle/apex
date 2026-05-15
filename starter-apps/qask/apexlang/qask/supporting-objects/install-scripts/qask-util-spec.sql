create or replace package qask_util 
as

-- if user exceeds max verification attempts, this is raised for the app to read from
-- se when generating tokens
e_account_locked  exception;

procedure add_log ( 
    p_procedure_name  in varchar2, 
    p_log_type        in varchar2 default 'error', -- error or info
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

procedure add_setting ( 
    p_name           in  varchar2,  
    p_display_order  in  number,
    p_description    in  varchar2,
    p_value          in  varchar2,
    p_is_numeric_yn  in  varchar2,
    p_is_yn          in  varchar2 );

procedure set_setting ( 
    p_name       in  varchar2,  
    p_value      in  varchar2 );

function get_setting ( 
    p_name       in  varchar2 )
    return varchar2;

procedure insert_service_terms (
    p_service_terms     in  clob,
    p_current_yn        in  varchar2 );

procedure update_service_terms (
    p_service_terms_id  in  number,
    p_service_terms     in  clob,
    p_current_yn        in  varchar2 );

procedure delete_service_terms (
    p_service_terms_id  in  number );

function get_latest_service_terms_id 
    return number;

-----------------------

procedure add_user (
    p_username           in  varchar2,
    p_role_id            in  number,
    p_send_email_yn      in  varchar2 default 'Y',
    p_app_id             in  number,
    p_app_url            in  varchar2 default null );

procedure update_user (
    p_username           in  varchar2,
    p_role_id            in  number,
    p_app_id             in  number );

procedure delete_user (
    p_username           in  varchar2,
    p_app_id             in  number );

procedure log_service_terms_accept (
    p_email              in  varchar2,
    p_accepted_terms_id  in  number,
    p_accepted_on        in  date  default null );

function has_accepted_latest_terms_yn (
    p_email  in  varchar2 )
    return varchar2;

procedure send_verification_email (
    p_username          in  varchar2,
    p_token             in  varchar2,
    p_app_id            in  number );

procedure log_access (
    p_username     in  varchar2,
    p_verified_yn  in  varchar2 );

function is_account_locked_yn ( 
    p_username     in  varchar2 )
    return varchar2;

function is_token_maxed_yn (
    p_username     in  varchar2 )
    return varchar2;

function generate_token (
    p_username       in  varchar2 )
    return varchar2;

function token_is_valid (
    p_username    in  varchar2,
    p_token       in  varchar2 )
    return boolean;

procedure reset_verification_tokens (
    p_username    in  varchar2 );

--------------------------------------

function in_restricted_domains_yn (
    p_email             in  varchar2 )
    return varchar2;

procedure request_access (
    p_email             in  varchar2,
    p_justification     in  varchar2,
    p_app_id            in  number,
    p_app_url           in  varchar2,
    p_service_terms_id  in  number );

procedure delete_access_request (
    p_access_request_id  in  number );

procedure approve_access (
    p_access_request_id  in  number,
    p_reason             in  varchar2 default null,
    p_send_email_yn      in  varchar2 default 'Y',
    p_app_id             in  number,
    p_app_url            in  varchar2 default null );

procedure decline_access (
    p_access_request_id  in  number,
    p_reason             in  varchar2,
    p_send_email_yn      in  varchar2 default 'Y',
    p_app_id             in  number   default null,
    p_app_url            in  varchar2 default null );

--------------------------------------------

function open_session_count_for_user (
    p_app_user     in varchar2 )
    return number;

function add_answer_set (
    p_answer_set_code  in varchar2,
    p_answer_set_name  in varchar2 )
return number;

procedure add_aset_answer (
    p_answer_set_id   in number,
    p_answer_text     in varchar2,
    p_display_order   in number );

--------------------

function new_session_name_ok_yn (
    p_session_name  in  varchar2,
    p_app_user      in  varchar2 )
    return varchar2;

function create_session (
    p_app_user                in varchar2,
    p_session_name            in varchar2,
    p_purpose                 in varchar2,
    p_visibility              in varchar2 default 'PRIVATE', -- NOT CURRENTLY USED
    p_resp_name_required_yn   in varchar2 default 'N',
    p_resp_email_required_yn  in varchar2 default 'N',
    p_session_status          in varchar2 default 'OPEN' )
    return number;

procedure get_session_details (
    p_session_id              in  number,
    p_session_name            out varchar2,
    p_session_code            out varchar2,
    p_purpose                 out varchar2,
    p_resp_name_required_yn   out varchar2,
    p_resp_email_required_yn  out varchar2,
    p_session_status          out varchar2 );

function get_session_id (
    p_session_code  in varchar2 )
    return number;

function get_session_code (
    p_session_id  in number )
    return varchar2;

function get_session_name (
    p_session_id  in number )
    return varchar2;

function get_session_owner (
    p_session_id  in number )
    return varchar2;

function get_session_status (
    p_session_id    in number   default null,
    p_session_code  in varchar2 default null )
    return varchar2;

function session_resp_name_req_yn (
    p_session_id    in number   default null )
    return varchar2;

function session_resp_email_req_yn (
    p_session_id    in number   default null )
    return varchar2;

procedure close_session (
    p_session_id  in number );

-- if last question created more than x mins ago (or if session created x mins ago and no questions yet)
procedure close_old_sessions;

procedure delete_session (
    p_session_id  in number );

procedure start_staged_session (
    p_session_id  in  number, 
    p_app_user    in  varchar2,
    p_question_id out number );

function get_question_count (
    p_session_id  in number )
    return number;

function get_next_question_number (
    p_session_id  in number )
    return number;

function add_question (
    p_session_id                     in number,
    p_question_number                in number,
    p_question                       in varchar2,
    p_answer_set_id                  in number default null,
    p_answers                        in varchar2,
    p_answer_type                    in varchar2,
    p_ask_for_comments_yn            in varchar2 default 'N',
    p_question_explanation           in clob,
    p_question_filename              in varchar2  default null,
    p_question_file                  in blob      default null,
    p_question_file_mimetype         in varchar2  default null,
    p_question_file_last_updated_on  in date      default null )
    return number;

procedure start_staged_question (
    p_question_id  in number );

function get_next_question_id (
    p_session_id   in number,
    p_question_id  in number   default null,
    p_status       in varchar2 default 'OPEN' )
    return number;

function get_prev_question_id (
    p_session_id   in number,
    p_question_id  in number,
    p_status       in varchar2 default 'OPEN' )
    return number;

procedure get_next_question_status_json (
    p_session_id   in number,
    p_question_id  in number  default null );

function question_available_yn (
    p_session_code  in varchar2 )
    return varchar2;

procedure get_question_details (
    p_question_id           in number,
    p_question_number       out number,
    p_question_status       out varchar2,
    p_question              out varchar2,
    p_answer_type           out varchar2,
    p_ask_for_comments_yn   out varchar2,
    p_question_explanation  out clob );

function get_question_status (
    p_question_id  in number )
    return varchar2;

function is_ask_for_comments_yn (
    p_question_id  in number )
    return varchar2;

function copy_session (
    p_from_session_id         in number,
    p_app_user                in varchar2,
    p_session_name            in varchar2,
    p_purpose                 in varchar2,
    p_visibility              in varchar2 default 'PRIVATE', -- NOT CURRENTLY USED
    p_resp_name_required_yn   in varchar2 default 'N',
    p_resp_email_required_yn  in varchar2 default 'N',
    p_session_status          in varchar2 default 'OPEN' )
    return number;

-------------------------

function answer_question (
    p_session_id        in number,
    p_question_id       in number,
    p_apex_session_id   in number,
    p_answer_id         in number   default null,
    p_answer_freeform   in varchar2 default null,
    p_comment_text      in varchar2 default null,
    p_multi_answer      in varchar2 default null,
    p_response_id       in number,
    p_respondent_name   in varchar2 default null,
    p_respondent_email  in varchar2 default null )
    return number;

function is_question_answered_yn (
    p_response_id  in number,
    p_question_id  in number )
    return varchar2;

function get_response_id (
    p_session_id        in number,
    p_apex_session_id   in number )
    return number;

procedure close_question (
    p_session_id   in number default null,
    p_question_id  in number default null );

end qask_util;
/