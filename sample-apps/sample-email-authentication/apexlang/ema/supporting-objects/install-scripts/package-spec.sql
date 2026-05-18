create or replace package eba_ema_util 
as

-- if user exceeds max verification attempts, this is raised for the app to read from
e_account_locked  exception;

-- To catch PL/SQL error, error log procedure needs to be autonomous transactions and do commit at the end. 
procedure add_log ( 
    p_procedure_name  in varchar2, 
    p_log_type        in varchar2 default 'error',
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

-----------------------------------------------

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

end eba_ema_util;
/