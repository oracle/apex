create or replace package oow_demo_timing
as
    g_timestamp timestamp;
    procedure start_timer;
    function get_elap return number;
end;
/

