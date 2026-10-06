begin
    dbms_scheduler.create_job (
        job_name   => 'SP_LOAD_OOO_JOB',
        job_type   => 'STORED_PROCEDURE',
        job_action => 'sp_event_util.load_all_ooo',
        start_date => null,
        repeat_interval => 'FREQ=DAILY; BYTIME=050000;',
        enabled    => TRUE,
        auto_drop  => FALSE,
        comments   => 'Loads Out of Office Summary for each active team member' );
end;
/