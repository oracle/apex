create or replace PACKAGE "EBA_SALES_FW" as
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
    function remove_duplicates (
        p_csv_string in varchar2 )
        return varchar2;
end eba_sales_fw;
/
show errors