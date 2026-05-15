begin
    oow_demo_event_pkg.log (p_event_name => 'install supporting objects start', p_error_message => null);
    oow_demo_event_pkg.log (p_event_name => 'APEX Session ID='||v('APP_SESSION'));
    for c1 in (select owner, application_id from APEX_APPLICATIONS where upper(application_name) like '%BROOKSTRUT%') loop
        oow_demo_event_pkg.log (p_event_name => 'APEX application id='||c1.application_id||', parsing schema='||c1.owner);
    end loop;
end;
/
    
begin
    oow_demo_event_pkg.log (p_event_name => 'purge recyclebin', p_error_message => null);
    execute immediate 'purge recyclebin';
    oow_demo_event_pkg.log (p_event_name => 'completed call to purge recyclebin', p_error_message => null);
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'error purging recycle bin', p_error_message => sqlerrm);
end;
/

