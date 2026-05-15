create or replace package body eba_sales_acl_api as
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

    procedure add_error_log (
        p_error in apex_error.t_error )
    is
    pragma autonomous_transaction;
    begin
        -- Remove old errors
        delete from eba_sales_errors where err_time <= current_timestamp - 21;
        -- Log the error.
        insert into eba_sales_errors (
            app_id,
            app_page_id,
            app_user,
            user_agent,
            ip_address,
            ip_address2,
            message,
            page_item_name,
            region_id,
            column_alias,
            row_num,
            apex_error_code,
            ora_sqlcode,
            ora_sqlerrm,
            error_backtrace )
        select v('APP_ID'),
            v('APP_PAGE_ID'),
            v('APP_USER'),
            owa_util.get_cgi_env('HTTP_USER_AGENT'),
            owa_util.get_cgi_env('REMOTE_ADDR'),
            sys_context('USERENV', 'IP_ADDRESS'),
            substr(p_error.message,0,4000),
            p_error.page_item_name,
            p_error.region_id,
            p_error.column_alias,
            p_error.row_num,
            p_error.apex_error_code,
            p_error.ora_sqlcode,
            substr(p_error.ora_sqlerrm,0,4000),
            substr(p_error.error_backtrace,0,4000)
        from dual;
        commit;
    end add_error_log;

    -------------------------------------------------------------------------
    -- Error handling function
    -------------------------------------------------------------------------
    function apex_error_handling (
        p_error in apex_error.t_error )
        return apex_error.t_error_result
    is
        l_result          apex_error.t_error_result;
        l_constraint_name varchar2(255);
    begin
        l_result := apex_error.init_error_result (
                        p_error => p_error );
        -- If it's an internal error raised by APEX, like an invalid statement or
        -- code which can't be executed, the error text might contain security sensitive
        -- information. To avoid this security problem we can rewrite the error to
        -- a generic error message and log the original error message for further
        -- investigation by the help desk.
        if p_error.is_internal_error then
            -- mask all errors that are not common runtime errors (Access Denied
            -- errors raised by application / page authorization and all errors
            -- regarding session and session state)
            if not p_error.is_common_runtime_error then
                -- Change the message to the generic error message which doesn't expose
                -- any sensitive information.

                add_error_log( p_error );

                l_result.message         := 'An unexpected internal application error has occurred. ';
                l_result.additional_info := null;                      
            end if;
        else
            -- Always show the error as inline error
            -- Note: If you have created manual tabular forms (using the package
            --       apex_item/htmldb_item in the SQL statement) you should still
            --       use "On error page" on that pages to avoid loosing entered data
            l_result.display_location := case
                                           when l_result.display_location = apex_error.c_on_error_page then apex_error.c_inline_in_notification
                                           else l_result.display_location
                                         end;
            -- If it's a constraint violation like
            --
            --   -) ORA-00001: unique constraint violated
            --   -) ORA-02091: transaction rolled back (-> can hide a deferred constraint)
            --   -) ORA-02290: check constraint violated
            --   -) ORA-02291: integrity constraint violated - parent key not found
            --   -) ORA-02292: integrity constraint violated - child record found
            --
            -- we try to get a friendly error message from our constraint lookup configuration.
            -- If we don't find the constraint in our lookup table we fallback to
            -- the original ORA error message.
            if p_error.ora_sqlcode in (-1, -2091, -2290, -2291, -2292) then
                l_constraint_name := apex_error.extract_constraint_name (
                                         p_error => p_error );
                begin
                    select message
                      into l_result.message
                      from eba_sales_error_lookup
                     where constraint_name = l_constraint_name;
                exception when no_data_found then null; -- not every constraint has to be in our lookup table
                end;
            end if;
            -- If an ORA error has been raised, for example a raise_application_error(-20xxx, '...')
            -- in a table trigger or in a PL/SQL package called by a process and we
            -- haven't found the error in our lookup table, then we just want to see
            -- the actual error text and not the full error stack with all the ORA error numbers.
            if p_error.ora_sqlcode is not null and l_result.message = p_error.message then
                l_result.message := apex_error.get_first_ora_error_text (
                                        p_error => p_error );
            end if;
            -- If no associated page item/tabular form column has been set, we can use
            -- apex_error.auto_set_associated_item to automatically guess the affected
            -- error field by examine the ORA error for constraint names or column names.
            if l_result.page_item_name is null and l_result.column_alias is null then
                apex_error.auto_set_associated_item (
                    p_error        => p_error,
                    p_error_result => l_result );
            end if;
        end if;
        return l_result;
    end apex_error_handling;
    -------------------------------------------------------------------------
    -- Get's a preference value, given the name
    -------------------------------------------------------------------------
    function get_preference_value (
        p_preference_name   varchar2)
        return varchar2
    is
        l_preference_value varchar2(255);
    begin
        select preference_value
          into l_preference_value
          from eba_sales_preferences
         where preference_name = p_preference_name;
        return l_preference_value;
    exception
        when no_data_found then
            return 'Preference does not exist';
    end get_preference_value;
    -------------------------------------------------------------------------
    -- Set's a preference value, given the name
    -------------------------------------------------------------------------
    procedure set_preference_value (
        p_preference_name   varchar2,
        p_preference_value  varchar2)
    is
    begin
        update eba_sales_preferences
           set preference_value = p_preference_value
         where preference_name  = p_preference_name;
    end set_preference_value;
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
        l_access_level_id       eba_sales_users.access_level_id%type := 0;  -- default to lowest privilege.
        l_account_locked        eba_sales_users.account_locked%type;
    begin
        -- If access control is disabled, default to highest privilege
        if get_preference_value('ACCESS_CONTROL_ENABLED') = 'N' then
            return 3;
        else
            -- Query for user's access level, throws no_data_found if no user
            select access_level_id,
                   account_locked
              into l_access_level_id,
                   l_account_locked
              from eba_sales_users
             where username = p_username;
            -- Check if user's account is locked, return 0 (no privilege), otherwise stick
            -- with their level.
            if l_account_locked = 'Y' then
                return 0;
            end if;
            -- Overwrite user access level 1 with access level 2 if access control scope is PUBLIC_CONTRIBUTE
            if l_access_level_id = 1 and get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then
                return 2;
            end if;            
        end if;
        return l_access_level_id;
    exception
        when no_data_found then
            -- If no user exists with passed username, do a final check if reader access is set to any authenticated user
            if get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then
                return 2;
            elsif get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_READONLY' then
                return 1;
            else
                return 0;
            end if;           
    end get_authorization_level;
    
end eba_sales_acl_api;
/
show errors
