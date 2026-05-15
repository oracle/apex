create or replace package body qask_util 
as

-- To catch PL/SQL error, error log procedure needs to be autonomous transactions and do commit at the end. 
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
    p_arg5_val        in varchar2 default null ) 
is 
    pragma autonomous_transaction; 
begin 
    insert into qask_log 
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

    insert into qask_settings 
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
          from qask_settings 
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
        update qask_settings 
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
         from qask_settings  
        where name = lower(p_name)  
    ) loop 
        return c1.value;
    end loop; 
 
    return null; 
end get_setting; 


procedure insert_service_terms (
    p_service_terms     in  clob,
    p_current_yn        in  varchar2 )
is
begin
    if p_current_yn = 'Y' then
       update qask_service_terms
          set current_yn = 'N'
        where current_yn = 'Y';
    end if;

    insert into qask_service_terms
        (service_terms, current_yn)
    values
        (p_service_terms, p_current_yn);
exception when others then 
    add_log ( 
        p_procedure_name => 'insert_service_terms', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_service_terms', p_arg1_val => substr(p_service_terms,1,255),
        p_arg2_name      => 'p_current_yn', p_arg2_val => p_current_yn ); 
    raise_application_error(-20111,'Error inserting service terms.');
end insert_service_terms;


procedure update_service_terms (
    p_service_terms_id  in  number,
    p_service_terms     in  clob,
    p_current_yn        in  varchar2 )
is
begin
    if p_current_yn = 'Y' then
       update qask_service_terms
          set current_yn = 'N'
        where current_yn = 'Y'
          and id != p_service_terms_id;
    end if;

    update qask_service_terms
       set service_terms = p_service_terms,
           current_yn = p_current_yn
     where id = p_service_terms_id;
exception when others then 
    add_log ( 
        p_procedure_name => 'update_service_terms', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_service_terms_id', p_arg1_val => p_service_terms_id ); 
    raise_application_error(-20111,'Error updating service terms.');
end update_service_terms;


procedure delete_service_terms (
    p_service_terms_id  in  number )
is
begin
    delete from qask_service_terms
     where id = p_service_terms_id;
exception when others then 
    add_log ( 
        p_procedure_name => 'delete_service_terms', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_service_terms_id', p_arg1_val => p_service_terms_id ); 
    raise_application_error(-20111,'Error deleting service terms.');
end delete_service_terms;


function get_latest_service_terms_id 
    return number
is
begin
    for c1 in (
        select id
          from qask_service_terms
         where current_yn = 'Y'
          order by updated_on desc
    ) loop
        return c1.id;
    end loop;

    return null;
end get_latest_service_terms_id;

------------------------------------------------
procedure add_user (
    p_username           in  varchar2,
    p_role_id            in  number,
    p_send_email_yn      in  varchar2 default 'Y',
    p_app_id             in  number,
    p_app_url            in  varchar2 default null )
is
    l_from_email  varchar2(255)  := get_setting('from_email');
begin
    if p_username is null or
       p_app_id   is null
    then
        return;
    end if;

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


procedure log_service_terms_accept (
    p_email              in  varchar2,
    p_accepted_terms_id  in  number,
    p_accepted_on        in  date  default null )
is
begin

    insert into qask_service_term_accepts 
        (email, accepted_terms_id, accepted_on)
    values
        (lower(p_email), p_accepted_terms_id, nvl(p_accepted_on,sysdate) );

exception when others then 
    add_log ( 
        p_procedure_name => 'log_service_terms_accept', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_email', p_arg1_val => p_email, 
        p_arg2_name      => 'p_accepted_terms_id', p_arg2_val => p_accepted_terms_id ); 
    raise_application_error(-20111,'Error accepting service terms.');
end log_service_terms_accept;


function has_accepted_latest_terms_yn (
    p_email  in  varchar2 )
    return varchar2
is
    l_id number := get_latest_service_terms_id;
begin
    -- no terms to accept
    if l_id is null then
       return 'Y';
    end if;

    for c1 in (
        select 1
          from qask_service_term_accepts
         where email = lower(p_email)
           and accepted_terms_id = l_id
    ) loop
        return 'Y';
    end loop;

    return 'N';
end has_accepted_latest_terms_yn;


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
        raise_application_error(-20111,'Not a qASK user.');
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
    update qask_verify_tokens
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
      from qask_verify_tokens
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
                      from qask_verify_tokens
                     where username = lower(p_username)
                       and (l_reset_verify_after_x_hours = 0 or created_on > sysdate - l_reset_verify_after_x_hours/24)
                       and verified_yn = 'N'
                       and expired_yn = 'N'
                       and reset_on is null ), 
                   (select access_attempts
                      from qask_verify_tokens
                     where username = lower(p_username)
                       and (l_reset_verify_after_x_hours = 0 or created_on > sysdate - l_reset_verify_after_x_hours/24)
                       and updated_on = (select max (updated_on)
                                           from qask_verify_tokens
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
          from qask_verify_tokens
        where username = lower(p_username)
          and expire_on > sysdate + l_grace_minutes/(24*60)
          and verified_yn = 'N'
          and expired_yn = 'N';
    exception
        when too_many_rows or no_data_found then
            null;
    end;

    if l_token is null then

        update qask_verify_tokens
           set expired_yn = 'Y'
         where username = lower(p_username)
           and expired_yn = 'N';

        l_token := lpad(to_char(round(dbms_random.value(1,999999))),l_token_length,'0');

        insert into qask_verify_tokens (
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
          from qask_verify_tokens 
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
    update qask_verify_tokens 
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


-----------------------------------------------

function in_restricted_domains_yn (
    p_email             in  varchar2 )
    return varchar2
is
begin

    for c1 in (
        select 1
          from qask_restricted_email_domains
         where lower(p_email) like '%@'||email_domain
    ) loop
        return 'Y';
    end loop;

    return 'N';

end in_restricted_domains_yn;


procedure request_access (
    p_email             in  varchar2,
    p_justification     in  varchar2,
    p_app_id            in  number,
    p_app_url           in  varchar2,
    p_service_terms_id  in  number )
is
    l_exists_yn   varchar2(1)   := 'N';
    l_from_email  varchar2(255) := get_setting('from_email');
begin

    if get_setting('allow_account_requests_yn') = 'N' then
        add_log ( 
            p_procedure_name => 'request_access', 
            p_log_type       => 'info',
            p_error          => 'User Requests not enabled', 
            p_arg1_name      => 'p_email', p_arg1_val => p_email, 
            p_arg2_name      => 'p_justification',  p_arg2_val => p_justification ); 
        raise_application_error(-20111,'User Requests not enabled.');
    end if;

    if get_setting('restrict_requests_to_email_domains_yn') = 'Y' and
       in_restricted_domains_yn(p_email => p_email) = 'N' then
        add_log ( 
            p_procedure_name => 'request_access', 
            p_log_type       => 'info',
            p_error          => 'Email not in allowed domains', 
            p_arg1_name      => 'p_email', p_arg1_val => p_email, 
            p_arg2_name      => 'p_justification',  p_arg2_val => p_justification ); 
        raise_application_error(-20111,'Email not in allowed domains.');
    end if;

    if apex_acl.has_user_any_roles (
           p_application_id  => p_app_id,
           p_user_name       => upper(p_email) ) 
    then
        l_exists_yn := 'Y';
        add_log ( 
            p_procedure_name => 'request_access', 
            p_log_type       => 'info',
            p_error          => 'Requestor already has account', 
            p_arg1_name      => 'p_email', p_arg1_val => p_email );

        apex_mail.send (
            p_to                 => p_email,  
            p_from               => l_from_email, 
            p_application_id     => p_app_id, 
            p_template_static_id => 'EXISTING_ACCOUNT', 
            p_placeholders       => '{' || '"APPLICATION_LINK": "' || p_app_url || '" }' ); 
    end if;

    if l_exists_yn = 'N' then
        for c1 in (
            select 1
              from qask_account_requests
             where email = upper(p_email)
               and request_status = 'REQUESTED'
        ) loop
            l_exists_yn := 'Y';
            add_log ( 
                p_procedure_name => 'request_access', 
                p_log_type       => 'info',
                p_error          => 'Requestor already has open request', 
                p_arg1_name      => 'p_email', p_arg1_val => p_email );
        end loop;
    end if;

    if l_exists_yn = 'N' then
        -- other parameters set in trigger
        insert into qask_account_requests
            (email, justification, accepted_terms_id, request_status)
        values
            (lower(p_email), p_justification, p_service_terms_id, 'REQUESTED');
    end if;

exception when others then 
    add_log ( 
        p_procedure_name => 'request_access', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_email', p_arg1_val => p_email, 
        p_arg2_name      => 'p_justification',  p_arg2_val => p_justification ); 
    raise_application_error(-20111,'Error requesting access.');
end request_access;


procedure delete_access_request (
    p_access_request_id  in  number )
is
begin
    delete from qask_account_requests
     where id = p_access_request_id;

exception when others then 
    add_log ( 
        p_procedure_name => 'delete_access_request', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_access_request_id', p_arg1_val => p_access_request_id ); 
    raise_application_error(-20111,'Error deleting access request.');
end delete_access_request;


procedure approve_access (
    p_access_request_id  in  number,
    p_reason             in  varchar2 default null,
    p_send_email_yn      in  varchar2 default 'Y',
    p_app_id             in  number,
    p_app_url            in  varchar2 default null )
is
begin
    if p_send_email_yn = 'Y' and p_app_url is null then
        add_log ( 
            p_procedure_name => 'approve_access', 
            p_log_type       => 'info',
            p_error          => 'Must have app_url to send email',
            p_arg1_name      => 'p_access_request_id', p_arg1_val => p_access_request_id );
        raise_application_error(-20111,'Must have app_url to send email.');
    end if;

    for c1 in (
        select email, accepted_terms_id, created_on,
               (select role_id
                  from apex_appl_acl_roles
                 where application_id = p_app_id
                   and role_static_id = 'CONTRIBUTOR') role_id
          from qask_account_requests
         where id = p_access_request_id
    ) loop

        add_user (
            p_username      => upper(c1.email),
            p_role_id       => c1.role_id,
            p_send_email_yn => p_send_email_yn,
            p_app_id        => p_app_id,
            p_app_url       => p_app_url );

        update qask_account_requests
          set request_status = 'APPROVED',
              status_reason = p_reason
         where id = p_access_request_id;

        if c1.accepted_terms_id is not null then
            log_service_terms_accept (
                p_email             => lower(c1.email),
                p_accepted_terms_id => c1.accepted_terms_id,
                p_accepted_on       => c1.created_on );
        end if;

    end loop;
   
exception when others then 
    add_log ( 
        p_procedure_name => 'approve_access', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_access_request_id', p_arg1_val => p_access_request_id ); 
    raise_application_error(-20111,'Error approving access.');
end approve_access;


procedure decline_access (
    p_access_request_id  in  number,
    p_reason             in  varchar2,
    p_send_email_yn      in  varchar2 default 'Y',
    p_app_id             in  number   default null,
    p_app_url            in  varchar2 default null )
is
    l_email       qask_account_requests.email%type;
    l_from_email  varchar2(255)  := get_setting('from_email');
begin
    if p_send_email_yn = 'Y' and (p_app_id is null or p_app_url is null) then
        add_log ( 
            p_procedure_name => 'decline_access', 
            p_log_type       => 'info',
            p_error          => 'Must have app_id and app_url to send email',
            p_arg1_name      => 'p_access_request_id', p_arg1_val => p_access_request_id );
        raise_application_error(-20111,'Must have app_id and app_url to send email.');
    end if;

    update qask_account_requests
       set request_status = 'DECLINED',
           status_reason = p_reason
     where id = p_access_request_id
     returning email into l_email;

    if p_send_email_yn = 'Y' then
        apex_mail.send (
            p_to                 => l_email,  
            p_from               => l_from_email, 
            p_application_id     => p_app_id, 
            p_template_static_id => 'ACCESS_DECLINED', 
            p_placeholders       => '{' || '"APPLICATION_LINK": "' || p_app_url || '" }' ); 
    end if;

exception when others then 
    add_log ( 
        p_procedure_name => 'decline_access', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_access_request_id', p_arg1_val => p_access_request_id ); 
    raise_application_error(-20111,'Error declining access.');
end decline_access;

-------------------------------------------

function open_session_count_for_user (
    p_app_user     in varchar2 )
    return number
is  
begin 
    for c1 in (
       select count(*) cnt
         from qask_sessions 
        where session_status = 'OPEN'
    ) loop 
       return c1.cnt;
   end loop;
end open_session_count_for_user;


function add_answer_set (
    p_answer_set_code  in varchar2,
    p_answer_set_name  in varchar2 )
    return number
is 
    l_answer_set_id  number;
begin 
    insert into qask_answer_sets
        ( answer_set_code, answer_set_name ) 
    values
        ( p_answer_set_code, p_answer_set_name )
    returning id into l_answer_set_id;

    return l_answer_set_id;
end add_answer_set;


procedure add_aset_answer (
    p_answer_set_id   in number,
    p_answer_text     in varchar2,
    p_display_order   in number )
is 
begin 
    insert into qask_aset_answers
        ( answer_set_id, answer_text, display_order ) 
    values
        ( p_answer_set_id, p_answer_text, p_display_order );
end add_aset_answer;


------------------------------------

function new_session_name_ok_yn (
    p_session_name  in  varchar2,
    p_app_user      in  varchar2 )
    return varchar2
is 
begin 
    -- session name must be unique by user for open sessions
    for c1 in (
        select session_name 
          from qask_sessions 
         where session_status in ('OPEN','STAGED')
           and owner = lower(p_app_user)
           and lower(session_name) = lower(p_session_name)
    ) loop 
      return 'N';
    end loop;
    return 'Y';
end new_session_name_ok_yn;


function create_session (
    p_app_user                in varchar2,
    p_session_name            in varchar2,
    p_purpose                 in varchar2,
    p_visibility              in varchar2 default 'PRIVATE', -- NOT CURRENTLY USED
    p_resp_name_required_yn   in varchar2 default 'N',
    p_resp_email_required_yn  in varchar2 default 'N',
    p_session_status          in varchar2 default 'OPEN' )
    return number
is
    l_session_code  varchar2(30) := null;
    l_session_id    number;

    function gen_session_code 
        return varchar2
    is
        l_code varchar2(30);

        function session_code_exists_yn (
            p_session_code in varchar2 )
            return varchar2
        is
        begin
            for c1 in (
                select 1
                  from qask_sessions
                 where session_code = p_session_code
            ) loop
                return 'Y';
            end loop;
            return 'N';
        end session_code_exists_yn;
    begin
        for i in 1..200 loop
            -- generate 3 upper case characters and 3 random numbers with zero padding
            l_session_code := dbms_random.string('U', 3) || lpad(round(dbms_random.value(1,999)),3,'000');
            if substr(l_session_code,2,1) in ('E','A','I') then
               null; -- avoid potential bad words
            elsif substr(l_session_code,1,1) = 'A' then 
               null; -- avoid potential bad words
            elsif session_code_exists_yn(p_session_code => l_session_code)  = 'Y' then
               null; -- session exists so get another one
            else
               exit; -- acceptable code found
            end if;
        end loop;
        return l_session_code;
    end gen_session_code;
begin

    l_session_code := gen_session_code;

    if l_session_code is null then
       raise_application_error(-20111,'No Session Code generated.');
    else

        insert into qask_sessions (
            owner, 
            session_name,
            session_code,
            purpose,
            visibility,
            --
            resp_name_required_yn,
            resp_email_required_yn,
            --
            session_status,
            started_on,
            started_by )
        values (
            lower(p_app_user),
            p_session_name,
            l_session_code,
            p_purpose,
            p_visibility,
            --
            p_resp_name_required_yn,
            p_resp_email_required_yn,
            --
            p_session_status,
            case when p_session_status = 'OPEN' then sysdate end,
            case when p_session_status = 'OPEN' then lower(p_app_user) end )
        returning id into l_session_id;

        commit;

        return l_session_id;

    end if;

exception when others then 
    add_log ( 
        p_procedure_name => 'create_session', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_app_user', p_arg1_val => p_app_user, 
        p_arg2_name      => 'p_session_name',  p_arg2_val => p_session_name ); 
    raise_application_error(-20111,'Error creating session.');
end create_session;


procedure get_session_details (
    p_session_id              in  number,
    p_session_name            out varchar2,
    p_session_code            out varchar2,
    p_purpose                 out varchar2,
    p_resp_name_required_yn   out varchar2,
    p_resp_email_required_yn  out varchar2,
    p_session_status          out varchar2 )
is
begin
    for c1 in (
       select session_name,
              session_code,
              purpose,
              resp_name_required_yn,
              resp_email_required_yn,
              session_status
         from qask_sessions 
        where id = p_session_id
    ) loop
        p_session_name           := c1.session_name;
        p_session_code           := c1.session_code;
        p_purpose                := c1.purpose;
        p_resp_name_required_yn  := c1.resp_name_required_yn;
        p_resp_email_required_yn := c1.resp_email_required_yn;
        p_session_status         := c1.session_status;
    end loop;
end get_session_details;


function clean_session_code (
    p_session_code in varchar2 )
    return varchar2
is 
    l_session_code varchar2(30) := null;
begin
    -- remove white space and upper case also remove dash
    l_session_code := replace(replace(upper(trim(p_session_code)),' ',null),'-',null);
    return l_session_code;
end clean_session_code;


function get_session_id (
    p_session_code  in varchar2 )
    return number
is
    l_session_code  varchar2(30) := clean_session_code(p_session_code);
begin
    for c1 in (
        select id
          from qask_sessions 
         where session_code = l_session_code
    ) loop
        return c1.id;
    end loop;

    return null;
end get_session_id;


function get_session_code (
    p_session_id  in number )
    return varchar2
is
    l_session_code  qask_sessions.session_code%type := null;
begin
    select session_code
      into l_session_code
      from qask_sessions 
     where id = p_session_id;

    return l_session_code;
end get_session_code;


function get_session_name (
    p_session_id  in number )
    return varchar2
is
    l_session_name  qask_sessions.session_name%type := null;
begin
    select session_name
      into l_session_name
      from qask_sessions 
     where id = p_session_id;

    return l_session_name;
end get_session_name;


function get_session_owner (
    p_session_id  in number )
    return varchar2
is
    l_owner  qask_sessions.owner%type := null;
begin
    select upper(owner) owner
      into l_owner
      from qask_sessions 
     where id = p_session_id;

    return l_owner;
end get_session_owner;


function get_session_status (
    p_session_id    in number   default null,
    p_session_code  in varchar2 default null )
    return varchar2
is
    l_session_code    varchar2(30) := clean_session_code(p_session_code);
    l_session_status  qask_sessions.session_status%type := null;
begin
    if p_session_id is null and p_session_code is null then
       raise_application_error(-20111,'No Session Identifier provided.');
    end if;

    select session_status
      into l_session_status
      from qask_sessions 
     where (p_session_id is not null and id = p_session_id)
        or (p_session_code is not null and session_code = l_session_code);

    return l_session_status;
end get_session_status;


function session_resp_name_req_yn (
    p_session_id    in number   default null )
    return varchar2
is
begin
    for c1 in (
        select resp_name_required_yn
          from qask_sessions
         where id = p_session_id
    ) loop
        return c1.resp_name_required_yn;
    end loop;

    return 'N';
end session_resp_name_req_yn;


function session_resp_email_req_yn (
    p_session_id    in number   default null )
    return varchar2
is
begin
    for c1 in (
        select resp_email_required_yn
          from qask_sessions
         where id = p_session_id
    ) loop
        return c1.resp_email_required_yn;
    end loop;

    return 'N';
end session_resp_email_req_yn;


procedure close_session (
    p_session_id  in number )
is 
begin
    close_question (p_session_id => p_session_id);

    update qask_sessions
       set session_status = 'CLOSED',
           closed_on = sysdate,
           length_minutes = case when session_status = 'OPEN' then  (sysdate - created_on) * 24 * 60 else null end
     where id = p_session_id
       and session_status != 'CLOSED';

exception when others then 
    add_log ( 
        p_procedure_name => 'close_session', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_session_id', p_arg1_val => p_session_id ); 
    raise_application_error(-20111,'Error closing session.');
end close_session;


-- if last question created more than x mins ago (or if session created x mins ago and no questions yet)
procedure close_old_sessions
is 
    l_max_session_idle_hours  number := to_number(get_setting('max_session_idle_hours'));
begin
    for c1 in (
        select session_id
          from
        (
        select s.id session_id,
               s.created_on,
               (select max(created_on)
                  from qask_session_questions q
                 where s.id = q.session_id) last_question_start_date
          from qask_sessions s
         where s.session_status = 'OPEN'
        )
         where nvl(last_question_start_date,created_on) < sysdate - (l_max_session_idle_hours/24)
    ) loop
        close_session (p_session_id => c1.session_id);
    end loop;
exception when others then 
    add_log ( 
        p_procedure_name => 'close_old_sessions', 
        p_error          =>  sqlerrm ); 
    -- purposefully not raising, will run in background
end close_old_sessions;


procedure delete_session (
    p_session_id  in number )
is 
begin
    for c1 in (
        select id
          from qask_responses
         where session_id = p_session_id
    ) loop
        delete from qask_response_answers
         where response_id = c1.id;
    end loop;

    delete from qask_responses
     where session_id = p_session_id;

    for c1 in (
        select id
          from qask_session_questions
         where session_id = p_session_id
    ) loop
        delete from qask_sess_question_answers
         where question_id = c1.id;
    end loop;

    delete from qask_session_questions
     where session_id = p_session_id;

    delete from qask_sessions
     where id = p_session_id;

    commit;

exception when others then 
    add_log ( 
        p_procedure_name => 'delete_session', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_session_id', p_arg1_val => p_session_id ); 
    raise_application_error(-20111,'Error deleting session.');
end delete_session;


procedure start_staged_session (
    p_session_id  in  number, 
    p_app_user    in  varchar2,
    p_question_id out number )
is 
begin
    for c1 in (
        select id
          from qask_sessions
         where id = p_session_id
           and session_status = 'STAGED'
           and (owner = lower(p_app_user) or visibility = 'SHARED')
    ) loop
        update qask_sessions
           set session_status = 'OPEN',
               started_on = sysdate,
               started_by = lower(p_app_user)
         where id = p_session_id;
        commit;
    end loop;

    p_question_id := get_next_question_id (
                         p_session_id => p_session_id,
                         p_status     => 'ANY');  -- session will be OPEN, question will be STAGED

    start_staged_question(p_question_id => p_question_id);

exception when others then 
    add_log ( 
        p_procedure_name => 'start_staged_session', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_session_id', p_arg1_val => p_session_id ); 
    raise_application_error(-20111,'Error starting saved session.');
end start_staged_session;


function get_question_count (
    p_session_id  in number )
    return number
is
    l_count  number;
begin
    select count(*) cnt
      into l_count
      from qask_session_questions 
     where session_id = p_session_id;

    return l_count;
end get_question_count;


function get_next_question_number (
    p_session_id  in number )
    return number
is
    l_next_q_nbr  number;
begin
    select nvl(max(question_number),0) + 1
      into l_next_q_nbr
      from qask_session_questions 
     where session_id = p_session_id;

    return l_next_q_nbr;
end get_next_question_number;


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
    return number
is
    l_question_id   number;
    l_answers_tmp   varchar2(32767) := p_answers;
    l_answers       apex_t_varchar2;
    l_answer_count  number := 0;

    procedure add_answer (
        p_question_id   in number,
        p_answer_number in number,
        p_answer_text   in varchar2 )
    is
    begin
        insert into qask_sess_question_answers
           (question_id, answer_number, answer_text)
        values
           (p_question_id, p_answer_number, p_answer_text);
    exception 
        when dup_val_on_index then
            null;  -- do not raise an error if user added duplicate answers
        when others then 
            raise_application_error(-20111,'Error adding question.');
    end add_answer;
begin

    if p_answer_type != 'FREEFORM' and p_answer_set_id is null and p_answers is null then 
       raise_application_error(-20111,'Answers are required.');
    end if;

    insert into qask_session_questions (
        session_id,
        question,
        question_number,
        answer_set_id,
        answer_type,
        ask_for_comments_yn,
        question_status,
        --
        question_explanation )
    values (
        p_session_id,
        p_question,
        p_question_number,
        p_answer_set_id,
        p_answer_type,
        p_ask_for_comments_yn,
        'WORKING',
        --
        p_question_explanation )
    returning id into l_question_id;

    if p_question_filename is not null and p_question_file is null -- not a copy but new insert
    then
        for c1 in (
            select id, blob_content, mime_type, created_on
              from apex_application_temp_files
             where name = p_question_filename
        ) loop
            update qask_session_questions
               set question_filename = p_question_filename,
                   question_file = c1.blob_content,
                   question_file_mimetype = c1.mime_type,
                   question_file_last_updated_on = c1.created_on
             where id = l_question_id;
            delete from apex_application_temp_files where id = c1.id;
        end loop;
    elsif p_question_filename is not null and p_question_file is not null -- a copy
    then
        update qask_session_questions
           set question_filename = p_question_filename,
               question_file = p_question_file,
               question_file_mimetype = p_question_file_mimetype,
               question_file_last_updated_on = p_question_file_last_updated_on
         where id = l_question_id;
    end if;
--    commit;

    if p_answer_set_id is not null then
       for c1 in (
           select answer_text, dense_rank() over (order by display_order) answer_number
             from qask_aset_answers
            where answer_set_id = p_answer_set_id 
            order by display_order
       ) loop
           add_answer (
               p_question_id   => l_question_id,
               p_answer_number => c1.answer_number,
               p_answer_text   => c1.answer_text );
       end loop;
--       commit;
    elsif p_answers is not null then
        l_answers_tmp  := replace(l_answers_tmp,chr(13)||chr(10),chr(10));
        l_answers_tmp  := replace(l_answers_tmp,chr(10),'|');
        l_answers      := apex_string.split(l_answers_tmp,'|');
        l_answer_count := l_answers.count;
        if l_answer_count < 2 then
            raise_application_error(-20111,'A minimum of two answers is required.');
        end if;

        for i in 1..l_answer_count loop
            add_answer (
                p_question_id   => l_question_id,
                p_answer_number => i,
                p_answer_text   => l_answers(i) );
        end loop;
--        commit;
    end if;

    for c1 in (
        select session_status
          from qask_sessions
         where id = p_session_id
    ) loop
        -- closes any open question, so only one open at a time
        if c1.session_status = 'OPEN' then
            close_question (p_session_id => p_session_id);
        end if;

        update qask_session_questions
           set question_status = case when c1.session_status = 'STAGED' then 'STAGED' else 'OPEN' end,
               started_on = case when c1.session_status = 'OPEN' then sysdate end
         where id = l_question_id;
    end loop;
    commit;

    return l_question_id;

exception when others then 
    add_log ( 
        p_procedure_name => 'add_question', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_session_id', p_arg1_val => p_session_id, 
        p_arg2_name      => 'p_question_number', p_arg2_val => p_question_number ); 
    rollback;
    raise_application_error(-20111,'Error adding question.');
end add_question;


procedure start_staged_question (
    p_question_id  in number )
is 
begin
    update qask_session_questions
       set question_status = 'OPEN',
           started_on = sysdate
     where id = p_question_id
       and question_status = 'STAGED';
    commit;
exception when others then 
    add_log ( 
        p_procedure_name => 'start_staged_question', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_question_id', p_arg1_val => p_question_id ); 
    raise_application_error(-20111,'Error starting staged question.');
end start_staged_question;


function get_next_question_id (
    p_session_id   in number,
    p_question_id  in number   default null,
    p_status       in varchar2 default 'OPEN' )
    return number
is
begin
    for c1 in (
        select q.id
          from qask_sessions s,
               qask_session_questions q
         where s.id = q.session_id
           and s.id = p_session_id
           and (s.session_status = p_status or p_status = 'ANY')
           and (q.question_status = p_status or p_status = 'ANY')
           and (p_question_id is null or
                q.question_number > (select question_number
                                       from qask_session_questions
                                      where session_id = s.id
                                        and id = p_question_id))
         order by q.question_number
    ) loop
        return c1.id;
    end loop;

    return null;
end get_next_question_id;


function get_prev_question_id (
    p_session_id   in number,
    p_question_id  in number,
    p_status       in varchar2 default 'OPEN' )
    return number
is
begin
    for c1 in (
        select q.id
          from qask_sessions s,
               qask_session_questions q
         where s.id = q.session_id
           and s.id = p_session_id
           and (s.session_status = p_status or p_status = 'ANY')
           and (q.question_status = p_status or p_status = 'ANY')
           and q.question_number < (select question_number
                                      from qask_session_questions
                                     where session_id = s.id
                                       and id = p_question_id)
         order by q.question_number desc
    ) loop
        return c1.id;
    end loop;

    return null;
end get_prev_question_id;


procedure get_next_question_status_json (
    p_session_id   in number,
    p_question_id  in number  default null )
is 
    l_next_question_id  number;
    l_status            varchar2(255);
begin
    l_next_question_id := get_next_question_id (
                              p_session_id  => p_session_id,
                              p_question_id => p_question_id );

    if l_next_question_id is not null then
        l_status := get_question_status (
                        p_question_id => l_next_question_id );
    else
       if get_session_status (p_session_id => p_session_id) = 'CLOSED' then
           l_status := 'SESSION_CLOSED';
       end if;
    end if;

    apex_json.open_object();
    apex_json.write( 'status', l_status );
    apex_json.close_all();
end get_next_question_status_json;


function question_available_yn (
    p_session_code  in varchar2 )
    return varchar2
is
    l_session_code  varchar2(30) := clean_session_code(p_session_code);
begin
    for c1 in (
        select 'Y'
          from qask_sessions s,
               qask_session_questions q
         where s.id = q.session_id
           and s.session_code = l_session_code
           and s.session_status = 'OPEN'
           and q.question_status = 'OPEN'
    ) loop
        return 'Y';
    end loop;

    return 'N';
end question_available_yn;


procedure get_question_details (
    p_question_id           in number,
    p_question_number       out number,
    p_question_status       out varchar2,
    p_question              out varchar2,
    p_answer_type           out varchar2,
    p_ask_for_comments_yn   out varchar2,
    p_question_explanation  out clob )
is
begin
    for c1 in (
       select question_number,
              question_status,
              question,
              answer_type,
              ask_for_comments_yn,
              question_explanation
         from qask_session_questions 
        where id = p_question_id
    ) loop
        p_question_number      := c1.question_number;
        p_question_status      := c1.question_status;
        p_question             := c1.question;
        p_answer_type          := c1.answer_type;
        p_ask_for_comments_yn  := c1.ask_for_comments_yn;
        p_question_explanation := c1.question_explanation;
    end loop;
end get_question_details;


function get_question_status (
    p_question_id  in number )
    return varchar2
is 
    l_question_status  qask_session_questions.question_status%type;
begin
    select question_status
      into l_question_status
      from qask_session_questions 
     where id = p_question_id;

    return l_question_status;
end get_question_status;


function is_ask_for_comments_yn (
    p_question_id  in number )
    return varchar2
is 
    l_ask_for_comments_yn  qask_session_questions.ask_for_comments_yn%type;
begin
    select ask_for_comments_yn
      into l_ask_for_comments_yn
      from qask_session_questions 
     where id = p_question_id;

    return l_ask_for_comments_yn;
end is_ask_for_comments_yn;


function copy_session (
    p_from_session_id         in number,
    p_app_user                in varchar2,
    p_session_name            in varchar2,
    p_purpose                 in varchar2,
    p_visibility              in varchar2,
    p_resp_name_required_yn   in varchar2 default 'N',
    p_resp_email_required_yn  in varchar2 default 'N',
    p_session_status          in varchar2 default 'OPEN' )
    return number
is
    l_session_id    number;
    l_question_id   number;
begin

    l_session_id := create_session (
                        p_app_user               => p_app_user,
                        p_session_name           => p_session_name,
                        p_purpose                => p_purpose,
                        p_visibility             => p_visibility,
                        p_resp_name_required_yn  => p_resp_name_required_yn,
                        p_resp_email_required_yn => p_resp_email_required_yn,
                        p_session_status         => 'STAGED');

    for c1 in (
        select q.*, (select listagg(answer_text, '|') 
                            within group (order by answer_number)
                       from qask_sess_question_answers a
                      where q.id = a.question_id) answers
          from qask_session_questions q
         where q.session_id = p_from_session_id
         order by q.question_number
    ) loop
        l_question_id := add_question (
                             p_session_id                    => l_session_id,
                             p_question_number               => c1.question_number,
                             p_question                      => c1.question,
                             p_answer_set_id                 => c1.answer_set_id,
                             p_answers                       => c1.answers,
                             p_answer_type                   => c1.answer_type,
                             p_ask_for_comments_yn           => c1.ask_for_comments_yn,
                             p_question_explanation          => c1.question_explanation,
                             p_question_file                 => c1.question_file,
                             p_question_filename             => c1.question_filename,
                             p_question_file_mimetype        => c1.question_file_mimetype,
                             p_question_file_last_updated_on => c1.question_file_last_updated_on );
    end loop;

    return l_session_id;

exception when others then 
    add_log ( 
        p_procedure_name => 'copy_session', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_from_session_id', p_arg1_val => p_from_session_id, 
        p_arg2_name      => 'p_app_user', p_arg2_val => p_app_user ); 
    rollback;
    raise_application_error(-20111,'Error copying session.');
end copy_session;


-----------------------------------



-- returns response_id
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
    return number
is 
    l_response_id             number;
    l_answer_type             qask_session_questions.answer_type%type;
    l_is_ask_for_comments_yn  varchar2(1) := 'N';
    l_answer_text             qask_sess_question_answers.answer_text%type;
begin

    -- check if session is still open
    if get_session_status (p_session_id => p_session_id) != 'OPEN' then
       raise_application_error(-20111,'Session is now closed.');
    end if;

    -- check if question is still open
    if get_question_status (p_question_id => p_question_id) != 'OPEN' then
       raise_application_error(-20111,'Question is now closed.');
    end if;

    -- check if response_id matches session_id (if not, user in new session)
    if p_response_id is not null then
        for c1 in (
            select 1 from qask_responses
             where id = p_response_id
               and session_id != p_session_id
        ) loop
            raise_application_error(-20111,'Response ID for different Session ID.');
        end loop;
    end if;

    if p_response_id is null then
        -- check if apex_session_id already has response_id for this session_id
        --  (user may have gone back to page 1, which clears out response_id)
        for c1 in (
            select id from qask_responses
             where session_id = p_session_id
               and apex_session = nvl(p_apex_session_id,sys_context('APEX$SESSION','APP_SESSION'))
        ) loop
            l_response_id := c1.id;
        end loop;

        if l_response_id is null then
            -- only record name and email if required by session
            insert into qask_responses (
                session_id,
                name,
                email )
            values (
                p_session_id,
                case when session_resp_name_req_yn(p_session_id => p_session_id) = 'Y' then p_respondent_name end,
                case when session_resp_email_req_yn(p_session_id => p_session_id) = 'Y' then p_respondent_email end)
            returning id into l_response_id;
        end if;
    else
        l_response_id := p_response_id;
    end if;

    select answer_type, ask_for_comments_yn
      into l_answer_type, l_is_ask_for_comments_yn
      from qask_session_questions 
     where id = p_question_id;

    if l_answer_type = 'MULTI' then
        for c1 in (
           select to_number(v.column_value) answer_id, a.answer_text
             from apex_string.split(p_multi_answer, ':') v,
                  qask_sess_question_answers a
            where to_number(v.column_value) = a.id (+)
        ) loop
            insert into qask_response_answers (
                response_id,
                question_id,
                answer_id,
                answer_text )
            values (
                l_response_id,
                p_question_id,
                c1.answer_id,
                c1.answer_text);
        end loop;
    else  -- SINGLE or FREEFORM
        if p_answer_id is not null then
            select answer_text
              into l_answer_text
              from qask_sess_question_answers
             where id = p_answer_id;
        end if;
        insert into qask_response_answers (
            response_id,
            question_id,
            answer_id,
            answer_text,
            comment_text )
        values (
            l_response_id,
            p_question_id,
            p_answer_id,
            case when p_answer_id is not null then l_answer_text else p_answer_freeform end,
            case when l_is_ask_for_comments_yn = 'Y' then p_comment_text end );
    end if;

    commit;

    return l_response_id;

exception when others then 
    add_log ( 
        p_procedure_name => 'answer_question', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_session_id', p_arg1_val => p_session_id, 
        p_arg2_name      => 'p_question_id', p_arg2_val => p_question_id ); 
    raise_application_error(-20111,'Error answering question.');
end answer_question;


function is_question_answered_yn (
    p_response_id  in number,
    p_question_id  in number )
    return varchar2
is
begin
    for c1 in (
        select 1
          from qask_response_answers
         where response_id = p_response_id
           and question_id = p_question_id
    ) loop
        return 'Y';
    end loop;
    return 'N';
end is_question_answered_yn;


function get_response_id (
    p_session_id        in number,
    p_apex_session_id   in number )
    return number
is
begin
    for c1 in (
        select id
          from qask_responses
         where session_id = p_session_id
           and apex_session = p_apex_session_id
    ) loop
        return c1.id;
    end loop;

    return null;
end get_response_id;


procedure close_question (
    p_session_id   in number default null,
    p_question_id  in number default null )
is 
begin
    if p_session_id is not null then
        update qask_session_questions
           set question_status = 'CLOSED',
           closed_on = case when question_status = 'OPEN' then sysdate end,
           length_seconds = case when question_status = 'OPEN' then (sysdate - started_on)  * 24 * 60 * 60 end
         where session_id = p_session_id
           and question_status in ('STAGED','OPEN');
    else
        update qask_session_questions
           set question_status = 'CLOSED',
           closed_on = case when question_status = 'OPEN' then sysdate end,
           length_seconds = case when question_status = 'OPEN' then (sysdate - started_on)  * 24 * 60 * 60 end
         where id = p_question_id
           and question_status in ('STAGED','OPEN');
    end if;

exception when others then 
    add_log ( 
        p_procedure_name => 'close_question', 
        p_error          =>  sqlerrm, 
        p_arg1_name      => 'p_session_id', p_arg1_val => p_session_id, 
        p_arg2_name      => 'p_question_id', p_arg2_val => p_question_id ); 
    raise_application_error(-20111,'Error closing question.');
end close_question;

end qask_util;
/