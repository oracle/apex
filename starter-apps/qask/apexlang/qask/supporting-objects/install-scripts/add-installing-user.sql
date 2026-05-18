declare
    l_app_user  varchar2(255) := apex_custom_auth.get_username;
begin
    for u in (
        select case when email is null and regexp_like(l_app_user,'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}')
                    then l_app_user
                    else email
                    end email
          from apex_workspace_apex_users
         where user_name = l_app_user
    ) loop
      if u.email is not null then
        for a in (
            select application_id
              from apex_applications
             where application_name = 'qAsk'
             order by last_updated_on desc
        ) loop
            for r in (
                select role_id
                  from apex_appl_acl_roles
                 where application_id = a.application_id 
                   and role_static_id = 'ADMINISTRATOR'
            ) loop
                qask_util.add_user (
                    p_username      => u.email,
                    p_role_id       => r.role_id,
                    p_send_email_yn => 'N',
                    p_app_id        => a.application_id );
                exit;
            end loop;
            exit;
        end loop;
      end if;
    end loop;
end;
/