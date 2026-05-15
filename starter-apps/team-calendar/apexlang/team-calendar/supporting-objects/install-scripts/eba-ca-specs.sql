create or replace package eba_ca is 
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
    -- Returns all of the restricted calendars for the given user          --
    -------------------------------------------------------------------------
    function decode_restrictions (
        p_user_id             number)
        return varchar2;
end eba_ca ;
/