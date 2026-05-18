begin
   dbms_scheduler.create_job (
      job_name        => 'QASK_CLOSE_OLD_SESSIONS',
      job_type        => 'STORED_PROCEDURE',
      job_action      => 'QASK_UTIL.CLOSE_OLD_SESSIONS',
      auto_drop       => false,
      comments        => 'Closes any sessions idle for more than the allowed time');
exception when others then
    -- ORA-00955: name is already used by an existing object
    if sqlcode not in (-955,-27477) then
        raise;
    end if;
end;
/