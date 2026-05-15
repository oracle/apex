declare
    t varchar(32767) := null;
    s number := 5000;
    o number := 5;
    d number := 365;
begin
    oow_demo_event_pkg.log (p_event_name => 'transaction generation starting, attempt 1', p_error_message => null);
    oow_demo_gen_data_pkg.oow_demo_gen_sales_data (
        p_days      => d,
        p_orders    => o,
        p_truncate  =>'N',
        p_max_rows  => s);
    oow_demo_event_pkg.log (p_event_name => 'transaction generation completed', p_error_message => null);
exception when others then
    --t := dbms_utility.format_error_backtrace;
    oow_demo_event_pkg.log (p_event_name => 'error gennerating data', p_error_message => sqlerrm, p_error_trace=>t);
    raise;
end;
/

