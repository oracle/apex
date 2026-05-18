create or replace package eba_cust as

    -------------------------------------------------------------------------
    -- Generates a unique Identifier
    -------------------------------------------------------------------------
    function gen_id return number;

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

    -------------------------------------------------------------------------
    -- Gets the current user's feature level. 
    --   Based on combination of the ACL Feature's access level and user's access level (if access control enabled) 
    -------------------------------------------------------------------------
    function get_feature_level (
        p_username             varchar2,
        p_authorization_name   varchar2)
        return boolean;

    -------------------------------------------------------------------------
    procedure eba_cust_add_views_log(
        p_view_type varchar2,
        p_id number
    );
        
end eba_cust;
/
show errors