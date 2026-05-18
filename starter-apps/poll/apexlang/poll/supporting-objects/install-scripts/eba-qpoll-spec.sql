create or replace package EBA_QPOLL is
    -------------------------------------------------------------------------
    -- Gets the current user's authorization level. Depends on the following:
    --  * If access control is currently disabled, returns highest role of ADMINISTRATOR.
    --  * If access control is enabled, but user is not in list, returns NONE.
    --  * If access control is enabled and user is in list, returns their
    --    access level.
    -------------------------------------------------------------------------
    function get_access_role (
        p_app_id               number,
        p_username             varchar2)
        return varchar2;
        
    -- returns error text if mandatory questions are not answered
    function validate_submission
        return varchar2;
       
    procedure remove_preactive_results (
       p_poll_id   in  number );
       
    function poll_take_status (
          p_app_id       in  number,
          p_poll_id      in  number,
          p_app_user     in  varchar2,
          p_app_session  in  number )
          return varchar2;
          
    -- used for emailing results
    function prepare_poll_results (
        p_poll_id  number )
        return clob;
        
   procedure eba_qpoll_data_load;
   
   procedure eba_qpoll_remove_data;
        
end EBA_QPOLL;
/