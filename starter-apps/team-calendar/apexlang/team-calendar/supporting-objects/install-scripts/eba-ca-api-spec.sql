create or replace package eba_ca_api 
as 
function gen_id 
   return  number; 
function create_event_type ( 
   p_event_type    varchar2, 
   p_color_pref_id number,
   p_internal_yn   varchar2
  ) 
   return number; 
procedure create_event ( 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_new_event_type   varchar2, 
   p_new_color_pref_id number,
   p_new_internal_yn   varchar2,
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   p_tags             varchar2 default null, 
   -- 
   p_recur_flag       varchar2, 
   p_recur_freq       varchar2, 
   p_recur_end_date   timestamp with time zone ); 
procedure delete_event ( 
   p_event_id         number, 
   -- 
   p_delete_request   varchar2  default null ); 
procedure update_event ( 
   p_event_id         number, 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_new_event_type   varchar2, 
   p_new_color_pref_id number,
   p_new_internal_yn   varchar2,
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   -- 
   p_recur_flag       varchar2, 
   p_recur_freq       varchar2, 
   p_recur_end_date   timestamp with time zone, 
   -- 
   p_update_request   varchar2  default null, 
   p_tags             varchar2  default null ); 
procedure create_mbrs_collection ( 
    p_users     in varchar2, 
    p_group_id  in number ); 
procedure create_mbrs_from_collection ( 
    p_group_id  in number ); 
function get_timeframes ( 
   p_event_id  in  number ) 
   return varchar2; 
end eba_ca_api; 
/
