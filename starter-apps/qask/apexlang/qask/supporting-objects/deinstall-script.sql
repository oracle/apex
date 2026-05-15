drop table qask_log cascade constraints;
drop table qask_service_terms cascade constraints;
drop table qask_service_term_accepts cascade constraints;
drop table qask_restricted_email_domains cascade constraints;
drop table qask_settings cascade constraints;
drop table qask_account_requests cascade constraints;
drop table qask_verify_tokens cascade constraints;
drop table qask_answer_sets cascade constraints;
drop table qask_aset_answers cascade constraints;
drop table qask_sessions cascade constraints;
drop table qask_session_questions cascade constraints;
drop table qask_sess_question_answers cascade constraints;
drop table qask_responses cascade constraints;
drop table qask_response_answers cascade constraints;

drop package qask_util;

begin
   dbms_scheduler.drop_job (job_name => 'QASK_CLOSE_OLD_SESSIONS');
end;
/