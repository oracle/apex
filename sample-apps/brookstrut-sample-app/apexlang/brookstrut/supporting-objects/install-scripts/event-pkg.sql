create or replace package oow_demo_event_pkg
as
procedure log (
    p_event_name    in varchar2,
    p_event_type    in varchar2 default null,
    p_event_detail  in varchar2 default null,
    p_error_message in varchar2 default null,
    p_error_trace   in varchar2 default null,
    p_a1            in varchar2 default null,
    p_a2            in varchar2 default null
    );
end;
/
show errors
    
 
create or replace package body oow_demo_event_pkg
as
procedure log (
    p_event_name    in varchar2,
    p_event_type    in varchar2 default null,
    p_event_detail  in varchar2 default null,
    p_error_message in varchar2 default null,
    p_error_trace   in varchar2 default null,
    p_a1            in varchar2 default null,
    p_a2            in varchar2 default null
)
is
begin
  
    insert into oow_demo_event_log 
        (event_type, event_name, event_detail, error_message, error_trace, a1, a2) values
        (p_event_type, p_event_name, p_event_detail, p_error_message, p_error_trace, p_a1, p_a2);
    commit;
end log;
end oow_demo_event_pkg;
/
show errors


