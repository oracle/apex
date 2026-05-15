begin
    sys.dbms_scheduler.create_job    
     (job_name        => 'SP_NOTIF_SUBSCRIPTIONS',
      job_type        => 'STORED_PROCEDURE',
      job_action      => 'SP_UTIL.SEND_NOTIF_SUBSCRIPTIONS',
      start_date      => systimestamp,
      repeat_interval => 'FREQ=DAILY; BYDAY=MON,TUE,WED,THU,FRI; BYHOUR=8; BYMINUTE=0;',
      enabled         => true,
      auto_drop       => false);
end;
/