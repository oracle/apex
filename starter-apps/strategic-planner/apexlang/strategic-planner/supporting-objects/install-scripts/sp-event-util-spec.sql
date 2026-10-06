create or replace package sp_event_util
as 

procedure create_event ( 
    p_event_type_id    number, 
    p_event_date       timestamp with time zone, 
    p_event_name       varchar2, 
    p_for_user_id      number, 
    p_event_details    varchar2, 
    p_recur_freq       varchar2, 
    p_recur_end_date   timestamp with time zone ); 

procedure delete_event ( 
    p_event_id        number, 
    p_delete_type     varchar2 ); -- ONLY, ALL, FUTURE (usually ONLY  if not series)

procedure update_event ( 
    p_event_id         number, 
    p_event_type_id    number, 
    p_event_date       timestamp with time zone, 
    p_event_name       varchar2, 
    p_for_user_id      number,
    p_event_details    varchar2, 
    -- 
    p_recur_freq       varchar2, 
    p_recur_end_date   timestamp with time zone, 
    -- 
    p_update_type      varchar2 ); -- ONLY, ALL, FUTURE (usually ONLY if not series)

-----------------------

function days_out_summary (
    p_user_id      in  number
) return varchar2;

function days_out (
    p_user_id      in  number
) return varchar2;

procedure load_one_ooo (
    p_team_member_id  in   number,
    p_updated_yn      out  varchar2 );

procedure load_all_ooo;

end sp_event_util;
/