CREATE OR REPLACE PACKAGE "EBA_SALES_DATA" as 
    procedure load_codes; 
    procedure load_sample; 
    procedure remove_sample; 
end;
/

CREATE OR REPLACE PACKAGE "EBA_SALES_ACL_API" is
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

CREATE OR REPLACE PACKAGE "EBA_SALES_FW" as
    function conv_txt_html (
        p_txt_message in varchar2 )
        return varchar2;
    function conv_urls_links (
        p_string in varchar2 )
        return varchar2;
    function tags_cleaner (
        p_tags  in varchar2,
        p_case  in varchar2 default 'U' )
        return varchar2;
    procedure tag_sync (
        p_new_tags          in varchar2,
        p_old_tags          in varchar2,
        p_content_type      in varchar2,
        p_content_id        in number );
    function selective_escape (
        p_text  in varchar2,
        p_tags  in varchar2 default '<h2>,</h2>,<p>,</p>,<b>,</b>,<li>,</li>,<ul>,</ul>,<br />,<i>,</i>,<h3>,</h3>' )
        return varchar2;
    function get_preference_value (
        p_preference_name in varchar2 )
        return varchar2;
    procedure set_preference_value (
        p_preference_name  in varchar2, 
        p_preference_value in varchar2 );
    function compress_int (
        n in integer )
        return varchar2;
end eba_sales_fw;
/

