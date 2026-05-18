create or replace trigger qask_log_bi
    before insert
    on qask_log
    for each row
begin
    :new.created_on    := sysdate;
    :new.created_trunc := trunc(sysdate);
    :new.created_by    := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end sch_log_bi;
/

create or replace trigger qask_service_terms_biu
    before insert or update 
    on qask_service_terms
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_service_terms_biu;
/

create or replace trigger qask_restricted_email_domains_biu
    before insert or update 
    on qask_restricted_email_domains
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    :new.EMAIL_DOMAIN := lower(:new.EMAIL_DOMAIN);
end qask_restricted_email_domains_biu;
/

create or replace trigger qask_settings_biu
    before insert or update 
    on qask_settings
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_settings_biu;
/

create or replace trigger qask_account_requests_biu
    before insert or update 
    on qask_account_requests 
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
        --
        :new.user_agent      := substr(owa_util.get_cgi_env('HTTP_USER_AGENT'),1,4000);
        :new.x_forwarded_for := substr(owa_util.get_cgi_env('X-FORWARDED-FOR'),1,4000);
        :new.remote_addr     := substr(owa_util.get_cgi_env('REMOTE_ADDR'),1,4000);
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_account_requests_biu;
/

create or replace trigger qask_verify_tokens_biu
    before insert or update 
    on qask_verify_tokens
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_verify_tokens_biu;
/

create or replace trigger qask_answer_sets_biu
    before insert or update 
    on qask_answer_sets
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_answer_sets_biu;
/

create or replace trigger qask_aset_answers_biu
    before insert or update 
    on qask_aset_answers
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_aset_answers_biu;
/

-----------------

create or replace trigger qask_sessions_biu
    before insert or update 
    on qask_sessions
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_sessions_biu;
/

create or replace trigger qask_session_questions_biu
    before insert or update 
    on qask_session_questions
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_session_questions_biu;
/

create or replace trigger qask_sess_question_answers_biu
    before insert or update 
    on qask_sess_question_answers
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_sess_question_answers_biu;
/

-------------------

create or replace trigger qask_responses_biu
    before insert or update 
    on qask_responses
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.apex_session := sys_context('APEX$SESSION','APP_SESSION');
        --
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
        --
        :new.user_agent      := substr(owa_util.get_cgi_env('HTTP_USER_AGENT'),1,4000);
        :new.x_forwarded_for := substr(owa_util.get_cgi_env('X-FORWARDED-FOR'),1,4000);
        :new.remote_addr     := substr(owa_util.get_cgi_env('REMOTE_ADDR'),1,4000);
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_responses_biu;
/

create or replace trigger qask_response_answers_biu
    before insert or update 
    on qask_response_answers
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end qask_response_answers_biu;
/