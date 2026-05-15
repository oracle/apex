create or replace package body oow_demo_timing
as
procedure start_timer
is
begin
    g_timestamp := systimestamp;
end start_timer;

function get_elap return number
is
begin
    return extract (second from (systimestamp - g_timestamp) );
end get_elap;
end oow_demo_timing;
/
