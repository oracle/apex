declare
    l_app_user  varchar2(255) := apex_custom_auth.get_username;
begin
    for u in (
        select email
          from apex_workspace_apex_users
         where user_name = l_app_user
    ) loop
        for a in (
            select application_id
              from apex_applications
             where application_name = 'Sample Email Authentication'
             order by last_updated_on desc
        ) loop
            for r in (
                select role_id
                  from apex_appl_acl_roles
                 where application_id = a.application_id 
                   and role_static_id = 'ADMINISTRATOR'
            ) loop
                eba_ema_util.add_user (
                    p_username      => u.email,
                    p_role_id       => r.role_id,
                    p_send_email_yn => 'N',
                    p_app_id        => a.application_id );
                exit;
            end loop;
            exit;
        end loop;
    end loop;
end;
/