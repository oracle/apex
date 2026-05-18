-- weekly, Sunday morning at 5am
begin
    dbms_scheduler.create_job (
        job_name   => 'SP_GENERATE_AI_PROJECT_SUMMARIES_JOB',
        job_type   => 'STORED_PROCEDURE',
        job_action => 'sp_summary_util.generate_project_summaries',
        start_date => null,
        repeat_interval => 'FREQ=WEEKLY; BYTIME=050000; BYDAY=SUN',
        enabled    => TRUE,
        auto_drop  => FALSE,
        comments   => 'Creates AI Summaries of active projects once a week' );
end;
/