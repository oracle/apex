create or replace package body eba_ema_util  
as 
 
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
    p_arg5_val        in varchar2 default null )  
is  
    pragma autonomous_transaction;  
begin  
    insert into eba_ema_log  
       (page_id, procedure_name, log_type, error,  
        arg1_name, arg1_val, arg2_name, arg2_val, arg3_name, arg3_val,  
        arg4_name, arg4_val, arg5_name, arg5_val )  
    values  
       (apex_application.g_flow_step_id, p_procedure_name, p_log_type, p_error,  
        p_arg1_name, p_arg1_val, p_arg2_name, p_arg2_val, p_arg3_name, p_arg3_val,  
        p_arg4_name, p_arg4_val, p_arg5_name, p_arg5_val );  
    commit;  
end add_log;  
 
 
procedure add_setting (  
    p_name           in  varchar2,   
    p_display_order  in  number, 
    p_description    in  varchar2, 
    p_value          in  varchar2, 
    p_is_numeric_yn  in  varchar2, 
    p_is_yn          in  varchar2 ) 
is  
begin  
  
    if p_is_numeric_yn = 'Y' and p_is_yn = 'Y' then 
        add_log (  
            p_procedure_name => 'add_setting',  
            p_error          => 'Setting cannot be both numeric and YN',  
            p_arg1_name      => 'p_name', p_arg1_val => p_name );  
        raise_application_error(-20111,'Setting cannot be both numeric and YN.'); 
    end if; 
 
    insert into eba_ema_settings  
        (name, display_order, description, is_numeric_yn, is_yn) 
    values 
        (p_name, p_display_order, p_description, p_is_numeric_yn, p_is_yn); 
 
    set_setting(p_name => p_name, p_value => p_value); 
  
exception when others then  
    add_log (  
        p_procedure_name => 'add_setting',  
        p_error          =>  sqlerrm,  
        p_arg1_name      => 'p_name', p_arg1_val => p_name );  
    raise;  
end add_setting; 
 
 
procedure set_setting (  
    p_name       in  varchar2,   
    p_value      in  varchar2 ) 
is  
begin  
  
    for c1 in ( 
        select id, 
               is_numeric_yn, 
               is_yn 
          from eba_ema_settings  
         where name = lower(p_name) 
    ) loop 
        if c1.is_numeric_yn = 'Y' and validate_conversion(p_value as NUMBER) = 0 then 
            add_log (  
                   p_procedure_name => 'set_setting',  
                   p_log_type       => 'info', 
                   p_error          => 'Value must be numeric',  
                   p_arg1_name      => 'p_name', p_arg1_val => p_name,  
                   p_arg2_name      => 'p_value', p_arg2_val => p_value );  
                raise_application_error(-20111,'Value must be numeric.'); 
        elsif c1.is_yn = 'Y' and p_value not in ('Y','N') then 
            add_log (  
                p_procedure_name => 'set_setting',  
                p_log_type       => 'info', 
                p_error          => 'Value must be Y or N',  
                p_arg1_name      => 'p_name', p_arg1_val => p_name,  
                p_arg2_name      => 'p_value', p_arg2_val => p_value );  
            raise_application_error(-20111,'Value must be Y or N.'); 
        end if; 
        update eba_ema_settings  
           set value = p_value  
         where id = c1.id;  
    end loop; 
  
exception when others then  
    add_log (  
        p_procedure_name => 'set_setting',  
        p_error          =>  sqlerrm,  
        p_arg1_name      => 'p_name', p_arg1_val => p_name );  
    raise;  
end set_setting; 
 
 
function get_setting (  
    p_name       in  varchar2 ) 
    return varchar2  
is  
begin  
    for c1 in (  
       select value  
         from eba_ema_settings   
        where name = lower(p_name)   
    ) loop  
        return c1.value; 
    end loop;  
  
    return null;  
end get_setting;  
 
----------------------------------------------- 
 
procedure add_user ( 
    p_username           in  varchar2, 
    p_role_id            in  number, 
    p_send_email_yn      in  varchar2 default 'Y', 
    p_app_id             in  number, 
    p_app_url            in  varchar2 default null ) 
is 
    l_from_email  varchar2(255)  := get_setting('from_email'); 
begin 
    if p_send_email_yn = 'Y' and (p_app_url is null or l_from_email is null) then 
        add_log (  
            p_procedure_name => 'add_user',  
            p_log_type       => 'info', 
            p_error          => 'Must have app_url and from_email to send email.',  
            p_arg1_name      => 'p_username', p_arg1_val => p_username,  
            p_arg2_name      => 'p_role_id',  p_arg2_val => p_role_id );  
        raise_application_error(-20111,'Cannot send email.'); 
    end if; 
 
    -- user may already have access 
    if not apex_acl.has_user_any_roles ( 
               p_application_id => p_app_id,  
               p_user_name      => p_username )  
    then 
        apex_acl.add_user_role ( 
            p_application_id => p_app_id, 
            p_user_name      => p_username, 
            p_role_id        => p_role_id ); 
    end if; 
 
    if p_send_email_yn = 'Y' then 
        apex_mail.send ( 
                p_to                 => p_username,   
                p_from               => l_from_email,  
                p_application_id     => p_app_id,  
                p_template_static_id => 'USER_CREATED',  
                p_placeholders       => '{' || '"APPLICATION_LINK": "' || p_app_url ||'", '|| 
                                               '"USERNAME":' || apex_json.stringify( p_username ) || 
                                         '}' );  
    end if; 
    
exception when others then  
    add_log (  
        p_procedure_name => 'add_user',  
        p_error          =>  sqlerrm,  
        p_arg1_name      => 'p_username', p_arg1_val => p_username,  
        p_arg2_name      => 'p_role_id',  p_arg2_val => p_role_id );  
    raise_application_error(-20111,'Error adding user.'); 
end add_user; 
 
 
procedure update_user ( 
    p_username           in  varchar2, 
    p_role_id            in  number, 
    p_app_id             in  number ) 
is 
begin 
 
    apex_acl.replace_user_roles ( 
        p_application_id => p_app_id, 
        p_user_name      => p_username, 
        p_role_ids       => wwv_flow_t_number(p_role_id) ); 
 
exception when others then  
    add_log (  
        p_procedure_name => 'update_user',  
        p_error          =>  sqlerrm,  
        p_arg1_name      => 'p_username', p_arg1_val => p_username,  
        p_arg2_name      => 'p_role_id',  p_arg2_val => p_role_id );  
    raise_application_error(-20111,'Error updating user.'); 
end update_user; 
 
 
procedure delete_user ( 
    p_username           in  varchar2, 
    p_app_id             in  number ) 
is 
begin 
 
    apex_acl.remove_all_user_roles ( 
        p_application_id => p_app_id, 
        p_user_name      => p_username ); 
 
exception when others then  
    add_log (  
        p_procedure_name => 'delete_user',  
        p_error          =>  sqlerrm,  
        p_arg1_name      => 'p_username', p_arg1_val => p_username );  
    raise_application_error(-20111,'Error deleting user.'); 
end delete_user; 
 
 
procedure send_verification_email ( 
    p_username          in  varchar2, 
    p_token             in  varchar2, 
    p_app_id            in  number ) 
is 
    l_from_email  varchar2(255)  := get_setting('from_email'); 
begin 
 
    if not apex_acl.has_user_any_roles ( 
               p_application_id => p_app_id,  
               p_user_name      => p_username ) then 
        raise_application_error(-20111,'Not a Sample Email Authentication user.'); 
    end if; 
 
    apex_mail.send ( 
        p_to                 => p_username,   
        p_from               => nvl(l_from_email,p_username), -- allows first user to login
        p_application_id     => p_app_id,  
        p_template_static_id => 'VERIFICATION',  
        p_placeholders       => '{' || '"TOKEN": "' || p_token ||'"' || 
                                         '}' );  
 
    -- must push to get token out immediately 
    apex_mail.push_queue; 
 
exception when others then  
    add_log (  
        p_procedure_name => 'send_verification_email',  
        p_error          =>  sqlerrm,  
        p_arg1_name      => 'p_username', p_arg1_val => p_username ); 
    raise_application_error(-20111,'Error sending verification email.'); 
end send_verification_email; 
 
 
procedure log_access ( 
    p_username     in  varchar2, 
    p_verified_yn  in  varchar2 ) 
is 
    pragma autonomous_transaction; 
    l_max_verify_attempts  number:= get_setting('max_verify_attempts_per_token'); 
begin 
    update eba_ema_verify_tokens 
       set verified_yn     = p_verified_yn, 
           accessed_on     = sysdate, 
           access_attempts = access_attempts + 1, 
           expired_yn      = case when p_verified_yn = 'N' and access_attempts + 1 >= l_max_verify_attempts then 'Y'  
                                  else expired_yn end 
     where expired_yn = 'N' 
       and username = lower(p_username); 
    commit; 
end log_access; 
 
 
function is_account_locked_yn (  
    p_username     in  varchar2 ) 
    return varchar2  
is                                    
    l_tokens                      number; 
    l_reset_verify_after_x_hours  number;      
    l_max_tokens                  number:= get_setting('max_tokens');  
    l_max_verify_attempts         number:= get_setting('max_verify_attempts_per_token');                                                                                
begin 
    if p_username is null then 
        return 'Y'; 
    end if; 
 
    l_reset_verify_after_x_hours := coalesce(get_setting('reset_verify_after_x_hours'),0); 
 
    if l_reset_verify_after_x_hours = 0 then 
       return 'N'; 
    end if; 
 
    select count(*) 
      into l_tokens 
      from eba_ema_verify_tokens 
     where username = lower(p_username) 
       and created_on > sysdate - l_reset_verify_after_x_hours/24 
       and verified_yn = 'N' 
       and (expired_yn = 'Y' or access_attempts >= l_max_verify_attempts) 
       and reset_on is null; 
 
    if l_tokens >= l_max_tokens then 
        return 'Y'; 
    else 
        return 'N'; 
    end if; 
end is_account_locked_yn; 
 
 
function is_token_maxed_yn ( 
    p_username     in  varchar2 ) 
    return varchar2  
is 
    l_reset_verify_after_x_hours  number; 
    l_max_verify_attempts         number:= get_setting('max_verify_attempts_per_token'); 
begin 
    l_reset_verify_after_x_hours := coalesce(get_setting('reset_verify_after_x_hours'),0); 
 
    for c1 in ( 
        select coalesce ( 
                   (select access_attempts 
                      from eba_ema_verify_tokens 
                     where username = lower(p_username) 
                       and (l_reset_verify_after_x_hours = 0 or created_on > sysdate - l_reset_verify_after_x_hours/24) 
                       and verified_yn = 'N' 
                       and expired_yn = 'N' 
                       and reset_on is null ),  
                   (select access_attempts 
                      from eba_ema_verify_tokens 
                     where username = lower(p_username) 
                       and (l_reset_verify_after_x_hours = 0 or created_on > sysdate - l_reset_verify_after_x_hours/24) 
                       and updated_on = (select max (updated_on) 
                                           from eba_ema_verify_tokens 
                                          where username = lower(p_username)) ) 
                   ,0) verification_attempts 
          from dual 
    ) loop 
        if c1.verification_attempts < l_max_verify_attempts then 
           return 'N'; 
        end if; 
    end loop; 
 
    return 'Y'; 
end is_token_maxed_yn;  
 
 
function generate_token ( 
    p_username       in  varchar2 ) 
    return varchar2  
is 
    l_max_verify_attempts         number := get_setting('max_verify_attempts');  
    l_grace_minutes               number := 5; 
    l_token_length                number := 6; 
    l_expire_minutes              number := 15; -- if change to setting, need to update verification email template 
    -- 
    l_token                       varchar2(255); 
begin 
 
    if l_max_verify_attempts > 0 then 
 
        if is_account_locked_yn(p_username => p_username) = 'Y' then 
            add_log (p_procedure_name => 'generate_token',  
                           p_log_type       => 'info', 
                           p_error          => 'Maximum verification attempts exceeded', 
                           p_arg1_name      => 'p_username', p_arg1_val => p_username ); 
            raise e_account_locked; 
--            raise_application_error(-20111,'Maximum verification attempts exceeded.  Account will reset in '||get_setting('reset_verify_after_x_hours')||' hours.'); 
        end if; 
 
    end if; 
 
    begin 
        select token 
          into l_token 
          from eba_ema_verify_tokens 
        where username = lower(p_username) 
          and expire_on > sysdate - l_grace_minutes/(24*60) 
          and verified_yn = 'N' 
          and expired_yn = 'N'; 
    exception 
        when too_many_rows or no_data_found then 
            null; 
    end; 
 
    if l_token is null then 
 
        update eba_ema_verify_tokens 
           set expired_yn = 'Y' 
         where username = lower(p_username) 
           and expired_yn = 'N'; 
 
        l_token := lpad(to_char(round(dbms_random.value(1,999999))),l_token_length,'0'); 
 
        insert into eba_ema_verify_tokens ( 
            username, 
            token, 
            expire_on ) 
        values ( 
            lower(p_username), 
            l_token, 
            sysdate + l_expire_minutes/(24*60) ); 
 
    end if; 
 
    return l_token; 
exception  
    when others then 
        add_log (p_procedure_name => 'generate_token',  
                       p_error => sqlerrm, 
                       p_arg1_name => 'p_username', p_arg1_val => p_username ); 
        raise; 
end generate_token; 
 
 
function token_is_valid ( 
    p_username    in  varchar2, 
    p_token       in  varchar2 ) 
    return boolean  
is 
    l_verified_yn  varchar2(1); 
begin 
    begin 
        select 'Y' 
          into l_verified_yn 
          from eba_ema_verify_tokens  
         where username = lower(p_username) 
           and token = trim(p_token) 
           and expire_on > sysdate 
           and expired_yn = 'N' 
           and rownum = 1; 
    exception when no_data_found then 
        l_verified_yn := 'N'; 
        add_log (p_procedure_name => 'token_is_valid',  
                       p_log_type       => 'info', 
                       p_error          => 'invalid token used', 
                       p_arg1_name => 'p_username', p_arg1_val => p_username, 
                       p_arg2_name => 'p_token', p_arg2_val => p_token ); 
    end; 
    log_access ( 
        p_username    => p_username, 
        p_verified_yn => l_verified_yn ); 
    return l_verified_yn = 'Y'; 
exception when others then 
    add_log (p_procedure_name => 'token_is_valid',  
                   p_error => sqlerrm, 
                   p_arg1_name => 'p_username', p_arg1_val => p_username, 
                   p_arg2_name => 'p_token', p_arg2_val => p_token ); 
    raise_application_error(-20111,'Error validating token.'); 
end token_is_valid; 
 
 
procedure reset_verification_tokens ( 
    p_username    in  varchar2 ) 
is 
begin 
    update eba_ema_verify_tokens  
       set reset_on = sysdate, 
           reset_by = lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)) 
     where username = lower(p_username) 
       and reset_on is null 
       and verified_yn = 'N'; 
exception when others then 
    add_log (p_procedure_name => 'reset_verification_tokens',  
                   p_error => sqlerrm, 
                   p_arg1_name => 'p_username', p_arg1_val => p_username); 
    raise_application_error(-20111,'Error resetting verification token.'); 
end reset_verification_tokens; 
 
end eba_ema_util; 
/