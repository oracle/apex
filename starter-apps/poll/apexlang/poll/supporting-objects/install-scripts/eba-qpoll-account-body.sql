CREATE OR REPLACE PACKAGE BODY "EBA_QPOLL_ACCOUNT" as

    c_pwd_len constant number := 8;
    
    procedure add_application_log (
       p_activity  in  varchar2,
       p_details   in  varchar2  default null )
    is
    begin
       -- remove old entries
       delete from eba_qpoll_application_log where created <= current_timestamp - 21;
       -- add new entry
       insert into eba_qpoll_application_log
          (activity, details)
       values
          (p_activity, p_details);
    exception when others then
        eba_qpoll_fw.add_error_log(
                       p_error => null,
                       p_procedure_name  => 'add_application_log',
                       p_error_text => sqlerrm,
                       p_arg1_name => 'p_activity',
                       p_arg1_val => p_activity,
                       p_arg2_name => 'p_details',
                       p_arg2_val => p_details);
    end add_application_log;
    
    procedure add_user_log (
       p_username       in  varchar2,
       p_email_address  in  varchar2,
       p_activity       in  varchar2,
       p_details        in  varchar2  default null )
    is
    begin
       -- remove old entries
       delete from eba_qpoll_user_log where created <= current_timestamp - 21;
       -- add new entry
       insert into eba_qpoll_user_log
          (username, email_address, activity, details)
       values
          (p_username, p_email_address, p_activity, p_details);
    exception when others then
        eba_qpoll_fw.add_error_log(
                       p_error => null,
                       p_procedure_name  => 'add_user_log',
                       p_error_text => sqlerrm,
                       p_arg1_name => 'p_username',
                       p_arg1_val => p_username,
                       p_arg2_name => 'p_email_address',
                       p_arg2_val => p_email_address,
                       p_arg3_name => 'p_activity',
                       p_arg3_val => p_activity,
                       p_arg4_name => 'p_details',
                       p_arg4_val => p_details);
    end add_user_log;
    
    function rand_max(
        n in number )
    return number
    is
    begin
        return mod( abs(dbms_random.random), n ) + 1;
    end rand_max;
    
    function get_random_password (
        p_length          in number )
        return varchar2
    is
        l_consonants  varchar2(30) := 'bcdfghjklmnpqrstvwxyz';
        l_vowels      varchar2(30) := 'aeiou';
        l_digits      varchar2(10) := '0123456789';
        l_punctuation varchar2(10) := '$&@!*';
        l_str         varchar2(38);
    begin
        for i in 1 .. p_length-2
        loop
            if mod(i,2) = 0 then
                l_str := l_str || substr(l_vowels,
                                   rand_max(length(l_vowels)),
                                   1);
            else
                l_str := l_str || substr(l_consonants,
                                   rand_max(length(l_consonants)),
                                   1);
            end if;
      end loop;
      --l_str := l_str || substr(l_punctuation, rand_max(length(l_punctuation)), 1);
      l_str := l_str || substr(l_digits, rand_max(length(l_digits)), 1);
      l_str := l_str || substr(l_consonants, rand_max(length(l_consonants)),1);
      return l_str;
    end get_random_password;
    
    procedure email_user_rejection (
       p_app_id          in  number,
       p_app_title       in  varchar2,
       p_email_to        in  varchar2,
       p_action_reason   in  varchar2 )
    is
       l_email_id      number;
    begin
      
       eba_qpoll_email.send (
          p_app_id             => p_app_id,
          p_template_static_id => 'ACCESS_REQUEST_DECLINED',
          p_placeholders       => '{' || 
                                  '    "ACTION_REASON":'     || apex_json.stringify( p_action_reason ) || 
                                  '   ,"APPLICATION_TITLE":' || apex_json.stringify( p_app_title ) ||
                                      '}' , 
          p_to                 => p_email_to,
          p_from               => eba_qpoll_fw.get_preference_value('NOTIFICATION_EMAIL_FROM'),
          p_email_id           => l_email_id );
          
    exception
        when others then
            raise;
    end email_user_rejection;
    
    procedure email_user_creds (
       p_email_to       in  varchar2,
       p_app_id         in  number,
       p_app_title      in  varchar2,
       p_app_link       in  varchar2,
       p_username       in  varchar2,
       p_apex_password  in  varchar2 )
    is
       l_email_id      number;
    begin

      eba_qpoll_email.send (
          p_app_id             => p_app_id,
          p_template_static_id => case when p_apex_password is not null 
                                       then 'ACCESS_REQUEST_APPROVED_WITH_PASSWORD'
                                       else 'ACCESS_REQUEST_APPROVED_WITHOUT_PASSWORD'
                                       end,
          p_placeholders       => '{' || 
                                  '    "USERNAME":'     || apex_json.stringify( p_username ) || 
                                  case when p_apex_password is not null then
                                  '   ,"APEX_PASSWORD":'     || apex_json.stringify( p_apex_password ) end || 
                                  '   ,"APPLICATION_TITLE":' || apex_json.stringify( p_app_title ) ||
                                  '   ,"APP_LINK":' || apex_json.stringify( p_app_link ) ||
                                      '}' , 
          p_to                 => p_email_to,
          p_from               => eba_qpoll_fw.get_preference_value('NOTIFICATION_EMAIL_FROM'),
          p_email_id           => l_email_id );
      
    exception
        when others then
            raise;
    end email_user_creds;
    
    procedure add_user (
       p_email_address     in  varchar2,
       p_email_user_yn     in  varchar2,
       p_username          in  varchar2,
       p_app_id            in  number    default null,
       p_app_title         in  varchar2  default null,
       p_app_link          in  varchar2  default null,
       p_apex_password     out varchar2 )
    is
       l_apex_admin       varchar2(30) := 'not found';
       l_user_id                       number;
       l_workspace                     varchar2(255);
       l_user_name                     varchar2(100);
       l_first_name                    varchar2(255);
       l_last_name                     varchar2(255);
       l_web_password                  varchar2(255);
       l_email_address                 varchar2(240);
       l_start_date                    date;
       l_end_date                      date;
       l_employee_id                   number(15,0);
       l_allow_access_to_schemas       varchar2(4000);
       l_person_type                   varchar2(1);
       l_default_schema                varchar2(30);
       l_groups                        varchar2(1000);
       l_developer_role                varchar2(60);
       l_description                   varchar2(240);
       l_account_expiry                date;
       l_account_locked                varchar2(1);
       l_failed_access_attempts        number;
       l_change_password_on_first_use  varchar2(1);
       l_first_password_use_occurred   varchar2(1);
    begin
       -- Create new accounts with Contributor role
       APEX_ACL.ADD_USER_ROLE (
          p_application_id => p_app_id,
          p_user_name      => nvl(p_username,p_email_address),
          p_role_static_id => 'CONTRIBUTOR' );
       -- if app using APEX Authentication, create APEX user, if necessary
       for c2 in (
          select null
            from apex_applications
           where application_id = p_app_id
             and authentication_scheme_type = 'Application Express Accounts'
       ) loop
          for c3 in (
             select is_admin
               from apex_workspace_apex_users
              where user_name = upper(nvl(p_username,p_email_address))
          ) loop
             l_apex_admin := c3.is_admin;
          end loop;
          if l_apex_admin = 'not found' then
             p_apex_password := get_random_password( c_pwd_len );
             apex_util.create_user (
                p_user_name     => upper(nvl(p_username,p_email_address)),
                p_first_name    => l_first_name,
                p_last_name     => l_last_name,
                p_email_address => lower(p_email_address),
                p_developer_privs => null,
                p_change_password_on_first_use => 'N',
                p_web_password  => p_apex_password,
                p_description   => 'Created by '|| v('APPLICATION_TITLE') ||'.' );
          elsif l_apex_admin = 'No' then
             l_user_id := apex_util.get_user_id(upper(nvl(p_username,p_email_address)));
             apex_util.fetch_user (
                p_user_id                       => l_user_id,
                p_workspace                     => l_workspace,
                p_user_name                     => l_email_address,
                p_first_name                    => l_first_name,
                p_last_name                     => l_last_name,
                p_web_password                  => l_web_password,
                p_email_address                 => l_email_address,
                p_start_date                    => l_start_date,
                p_end_date                      => l_end_date,
                p_employee_id                   => l_employee_id,
                p_allow_access_to_schemas       => l_allow_access_to_schemas,
                p_person_type                   => l_person_type,
                p_default_schema                => l_default_schema,
                p_groups                        => l_groups,
                p_developer_role                => l_developer_role,
                p_description                   => l_description,
                p_account_expiry                => l_account_expiry,
                p_account_locked                => l_account_locked,
                p_failed_access_attempts        => l_failed_access_attempts,
                p_change_password_on_first_use  => l_change_password_on_first_use,
                p_first_password_use_occurred   => l_first_password_use_occurred );
             apex_util.edit_user (
                p_user_id                       => l_user_id,
                p_user_name                     => upper(nvl(p_username,p_email_address)),
                p_first_name                    => l_first_name,
                p_last_name                     => l_last_name,
                p_web_password                  => l_web_password,
                p_new_password                  => l_web_password,
                p_email_address                 => lower(p_email_address),
                p_start_date                    => l_start_date,
                p_end_date                      => l_end_date,
                p_employee_id                   => l_employee_id,
                p_allow_access_to_schemas       => l_allow_access_to_schemas,
                p_person_type                   => l_person_type,
                p_default_schema                => l_default_schema,
                p_group_ids                     => l_groups,
                p_developer_roles               => null,
                p_description                   => l_description,
                p_account_expiry                => l_account_expiry,
                p_account_locked                => l_account_locked,
                p_failed_access_attempts        => l_failed_access_attempts,
                p_change_password_on_first_use  => l_change_password_on_first_use,
                p_first_password_use_occurred   => l_first_password_use_occurred );
          end if;
       end loop;
       commit;
       add_user_log (
          p_username      => p_username,
          p_email_address => lower(p_email_address),
          p_activity      => 'Account request approved. User account created.',
          p_details       => 'Application role: CONTRIBUTOR / APEX role: End-User' );
       if p_email_user_yn = 'Y' then
          email_user_creds (
             p_email_to      => lower(p_email_address),
             p_app_id        => p_app_id,
             p_app_title     => p_app_title,
             p_app_link      => p_app_link,
             p_username      => upper(p_username),
             p_apex_password => p_apex_password );
          add_user_log (
             p_username      => p_username,
             p_email_address => lower(p_email_address),
             p_activity      => 'Application credentials emailed to user.' );
        end if;
    exception when others then
          rollback;
          eba_qpoll_fw.add_error_log(
                         p_error => null,
                         p_procedure_name  => 'add_user',
                         p_error_text => sqlerrm,
                         p_arg1_name => 'p_email_address',
                         p_arg1_val => p_email_address);
          raise;
    end add_user;
    
    procedure approve_access_request (
       p_app_id           in  number,
       p_app_title        in  varchar2,
       p_app_link         in  varchar2,
       p_request_id       in  number,
       p_actioned_reason  in  varchar2  default null )
    is
       l_request_found    varchar2(1) := 'N';
       request_not_found  exception;
       l_user_found       varchar2(1) := 'N';
       l_apex_password    varchar2(15);
       l_email_id         number;
    begin
       for c1 in (
          select username, email_address
            from eba_qpoll_access_requests
           where id = p_request_id
             and status = 'pending'
       ) loop
          l_request_found := 'Y';
          update eba_qpoll_access_requests
             set status = 'approved',
                 actioned_reason = p_actioned_reason
           where id = p_request_id;
          for c2 in (
             select 'Y' found
               from apex_appl_acl_users
              where upper(user_name) = upper(nvl(c1.username,c1.email_address))
                and application_id = p_app_id
          ) loop
             l_user_found := c2.found;
          end loop;
          if l_user_found = 'N' then
             add_user (
                p_email_address    => c1.email_address,
                p_email_user_yn    => 'Y',
                p_username         => c1.username,
                p_app_id           => p_app_id,
                p_app_title        => p_app_title,
                p_app_link         => p_app_link,
                p_apex_password    => l_apex_password );
          else
             eba_qpoll_email.send (
                p_app_id             => p_app_id,
                p_template_static_id => 'ACCESS_REQUEST_APPROVED_WITHOUT_PASSWORD',
                p_placeholders       => '{' || 
                                        '    "USERNAME":'     || apex_json.stringify( c1.username ) || 
                                        '   ,"APPLICATION_TITLE":' || apex_json.stringify( p_app_title ) ||
                                        '   ,"APP_LINK":' || apex_json.stringify( p_app_link ) ||
                                            '}' , 
                p_to                 => c1.email_address,
                p_from               => eba_qpoll_fw.get_preference_value('NOTIFICATION_EMAIL_FROM'),
                p_email_id           => l_email_id );
          end if;
          commit;
       end loop;
       if l_request_found = 'N' then
          raise request_not_found;
       end if;
    exception
        when request_not_found then
            eba_qpoll_fw.add_error_log(
                           p_error => null,
                           p_procedure_name  => 'approve_access_request',
                           p_error_text => 'Request not found, or not still pending.',
                           p_arg1_name => 'p_request_id',
                           p_arg1_val => p_request_id,
                           p_arg2_name => 'p_actioned_reason',
                           p_arg2_val => p_actioned_reason);
            raise_application_error( -20900, 'Request not found, or not still pending.', TRUE );
        when others then
            rollback;
            eba_qpoll_fw.add_error_log(
                           p_error => null,
                           p_procedure_name  => 'approve_access_request', 
                           p_error_text => sqlerrm,
                           p_arg1_name => 'p_request_id',
                           p_arg1_val => p_request_id,
                           p_arg2_name => 'p_actioned_reason',
                           p_arg2_val => p_actioned_reason,
                           p_arg3_name => 'l_request_found',
                           p_arg3_val => l_request_found,
                           p_arg4_name => 'l_user_found',
                           p_arg4_val => l_user_found );
--          raise;
    end approve_access_request;
    
    procedure decline_access_request (
       p_app_id           in  number,
       p_app_title        in  varchar2,
       p_request_id       in  number,
       p_actioned_reason  in  varchar2 )
    is
       l_request_found    varchar2(1) := 'N';
       request_not_found  exception;
    begin
       for c1 in (
          select username, email_address
            from eba_qpoll_access_requests
           where id = p_request_id
             and status = 'pending'
       ) loop
          l_request_found := 'Y';
          update eba_qpoll_access_requests
             set status = 'declined',
                 actioned_reason = p_actioned_reason
           where id = p_request_id;
          commit;
          add_user_log (
              p_username      => c1.username,
              p_email_address => lower(c1.email_address),
              p_activity      => 'Account request declined. No user account was created.');
          email_user_rejection (
             p_app_id        => p_app_id,
             p_app_title     => p_app_title,
             p_email_to      => c1.email_address,
             p_action_reason => p_actioned_reason );
          add_user_log (
             p_username      => c1.username,
             p_email_address => lower(c1.email_address),
             p_activity      => 'Account request rejection emailed to user.' );
       end loop;
    exception
        when request_not_found then
            eba_qpoll_fw.add_error_log(
                           p_error => null,
                           p_procedure_name  => 'decline_access_request',
                           p_error_text => 'Request not found, or not still pending.',
                           p_arg1_name => 'p_request_id',
                           p_arg1_val => p_request_id,
                           p_arg2_name => 'p_actioned_reason',
                           p_arg2_val => p_actioned_reason);
            raise_application_error( -20900, 'Request not found, or not still pending.', TRUE );
        when others then
            rollback;
            eba_qpoll_fw.add_error_log(
                           p_error => null,
                           p_procedure_name  => 'decline_access_request',
                           p_error_text => sqlerrm,
                           p_arg1_name => 'p_request_id',
                           p_arg1_val => p_request_id,
                           p_arg2_name => 'p_actioned_reason',
                           p_arg2_val => p_actioned_reason);
            raise;
    end decline_access_request;
end eba_qpoll_account;
/

