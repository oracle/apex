create or replace package body eba_cust as
   
    -------------------------------------------------------------------------
    -- Generates a unique Identifier
    -------------------------------------------------------------------------
    function gen_id
        return number
    is
        l_id  number;
    begin
        select to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
          into l_id
          from dual;
    
        return l_id;
    end gen_id;

    -------------------------------------------------------------------------
    -- Gets the current user's authorization level. Depends on the following:
    --  * If access control is currently disabled, returns highest level of 3.
    --  * If access control is enabled, but user is not in list, returns 0
    --  * If access control is enabled and user is in list, returns their
    --    access level.
    -------------------------------------------------------------------------
    function get_authorization_level (
        p_username             varchar2)
        return number
    is
        l_access_level_id       eba_cust_users.access_level_id%type := 0;  -- default to lowest privilege.
        l_account_locked        eba_cust_users.account_locked%type;
    begin
        -- If access control is disabled, default to highest privilege
        if eba_cust_fw.get_preference_value('ACCESS_CONTROL_ENABLED') = 'N' then
            return 3;
        else
            -- Query for user's access level, throws no_data_found if no user
            select access_level_id,
                   account_locked
              into l_access_level_id,
                   l_account_locked
              from eba_cust_users
             where username = p_username;
            -- Check if user's account is locked, return 0 (no privilege), otherwise stick
            -- with their level.
            if l_account_locked = 'Y' then
                return 0;
            end if;
            -- Overwrite user access level 1 with access level 2 if access control scope is PUBLIC_CONTRIBUTE
            if l_access_level_id = 1 and eba_cust_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then
                return 2;
            end if;            
        end if;
        return l_access_level_id;
    exception
        when no_data_found then
            -- If no user exists with passed username, do a final check if reader access is set to any authenticated user
            if eba_cust_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then
                return 2;
            elsif eba_cust_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_READONLY' then
                return 1;
            else
                return 0;
            end if;           
    end get_authorization_level;

    -------------------------------------------------------------------------
    -- Gets the current user's feature level. 
    --   Based on combination of the ACL Feature's access level and user's access level (if access control enabled) 
    -------------------------------------------------------------------------
    function get_feature_level (
        p_username             varchar2,
        p_authorization_name   varchar2)
        return boolean
    is
        l_feature_level_id    eba_cust_acl_features.access_level_id%type := 1;  -- default to lowest privilege required
        l_user_level_id       eba_cust_users.access_level_id%type := 0;  -- default to lowest privilege.
        l_account_locked      eba_cust_users.account_locked%type;
    begin
        -- If access control is disabled, default to highest privilege
        if eba_cust_fw.get_preference_value('ACCESS_CONTROL_ENABLED') = 'N' then
            return true;
        end if;

        -- Determine the Feature level from ACL Features
        for c1 in (select access_level_id
                   from eba_cust_acl_features
                   where authorization_name = p_authorization_name
                  ) loop
            l_feature_level_id := c1.access_level_id;
        end loop;

        -- Query for user's access level, throws no_data_found if no user
        begin
            select access_level_id,
                   account_locked
              into l_user_level_id,
                   l_account_locked
              from eba_cust_users
             where username = p_username;
            -- Check if user's account is locked, return false (no privilege), otherwise stick with their level.
            if l_account_locked = 'Y' then
                return false;
            end if;
            -- Overwrite user access level 1 with access level 2 if access control scope is PUBLIC_CONTRIBUTE
            if l_user_level_id = 1 and eba_cust_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then
                l_user_level_id := 2;
            end if;            
        exception
            when no_data_found then
            -- If no user exists with passed username, do a final check if reader access is set to any authenticated user
            if eba_cust_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then
                l_user_level_id := 2;
            elsif eba_cust_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_READONLY' then
                l_user_level_id := 1;
            end if;           
        end;

        -- Compare the Feature level to the User level
        -- If the User level is at least as high as the Feature level then the user can perform the given function.
        if l_feature_level_id <= l_user_level_id then
          return true;
        else
          return false;
        end if;
    end get_feature_level;



    procedure eba_cust_add_views_log(p_view_type varchar2,p_id number) as
       l_count number;
    begin
         select count(*)
           into l_count
           from eba_cust_views_log
          where table_primary_id = p_id
            and view_type = p_view_type;
         if l_count >= 1 then
               update eba_cust_views_log
                  set view_count = view_count + 1
                where table_primary_id = p_id
                 and view_type = p_view_type ;
         else
               insert into eba_cust_views_log( view_type, table_primary_id )
               values (p_view_type, p_id);         
         end if;
    end;

end eba_cust;
/
show errors
