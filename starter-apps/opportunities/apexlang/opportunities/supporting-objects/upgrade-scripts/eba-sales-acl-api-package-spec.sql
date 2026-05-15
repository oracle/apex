create or replace package eba_sales_acl_api is
    -------------------------------------------------------------------------
    -- Generates a unique Identifier
    -------------------------------------------------------------------------
    function gen_id return number;
    -------------------------------------------------------------------------
    -- Error handling function
    -------------------------------------------------------------------------
    function apex_error_handling (
        p_error in apex_error.t_error )
        return apex_error.t_error_result;
    -------------------------------------------------------------------------
    -- Get's a preference value, given the name
    -------------------------------------------------------------------------
    function get_preference_value (
        p_preference_name   varchar2)
        return varchar2;
    -------------------------------------------------------------------------
    -- Set's a preference value, given the name
    -------------------------------------------------------------------------
    procedure set_preference_value (
        p_preference_name   varchar2,
        p_preference_value  varchar2);
    -------------------------------------------------------------------------
    -- Gets the current user's authorization level. Can depend on the following:
    --  * If access control is currently disabled, returns highest level of 3.
    --  * If access control is enabled, but user is not in list, returns 0
    --  * If access control is enabled and user is in list, returns their
    --    access level.
    -------------------------------------------------------------------------
    function get_authorization_level (
        p_username             varchar2)
        return number;
end eba_sales_acl_api;
/