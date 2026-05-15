create or replace package eba_qpoll_fw as
    function conv_txt_html (
        p_txt_message in varchar2 )
        return varchar2;
    function conv_urls_links (
        p_string in varchar2 )
        return varchar2;
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
    procedure add_error_log ( 
        p_error           in apex_error.t_error,
        p_procedure_name  in varchar2 default null,
        p_error_text      in varchar2 default null,
        p_arg1_name       in varchar2 default null,
        p_arg1_val        in varchar2 default null,
        p_arg2_name       in varchar2 default null,
        p_arg2_val        in varchar2 default null,
        p_arg3_name       in varchar2 default null,
        p_arg3_val        in varchar2 default null,
        p_arg4_name       in varchar2 default null,
        p_arg4_val        in varchar2 default null );
    function apex_error_handling (
        p_error in apex_error.t_error )
        return apex_error.t_error_result;
end eba_qpoll_fw;
/
show errors