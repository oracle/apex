create table qask_log (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_log_pk primary key,
   --
   page_id                         number,
   procedure_name                  varchar2(1000),
   log_type                        varchar2(30)    not null
                                       constraint qask_log_type check (log_type in ('error','info')),
   error                           varchar2(4000)  not null,
   --
   arg1_name                       varchar2(255),
   arg1_val                        varchar2(4000),
   arg2_name                       varchar2(255),
   arg2_val                        varchar2(4000),
   arg3_name                       varchar2(255),
   arg3_val                        varchar2(4000),
   arg4_name                       varchar2(255),
   arg4_val                        varchar2(4000),
   arg5_name                       varchar2(255),
   arg5_val                        varchar2(4000),
   --
   created_on                      date  not null,
   created_trunc                   date  not null,
   created_by                      varchar2(255)  not null
);
create index qask_log_i1 on qask_log (created_trunc);


create table qask_service_terms (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_service_terms_pk primary key,
    --
    service_terms                  clob,
    current_yn                     varchar2(1)   not null
                                       constraint qask_service_terms_current check (current_yn in ('Y','N')),
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);
-- ensures only one current_yn is set to Y
create unique index qask_service_terms_one_current on qask_service_terms (nullif(current_yn,'N'));

create table qask_service_term_accepts (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_service_term_accepts_pk primary key,
    --
    email                          varchar2(255) not null,
    accepted_terms_id              number        not null,  -- not fk to allow old terms to be removed without setting to null
    accepted_on                    date          not null
);

create index qask_service_term_accepts_i1 on qask_service_term_accepts (email);

-- restricts who can be given access to app (as contributors or administrators
create table qask_restricted_email_domains (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_resticted_email_domains_pk primary key,
    --
    email_domain                   varchar2(255) not null,
    comments                       varchar2(4000),
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create table qask_settings (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_settings_pk primary key,
    --
    display_order                  number,
    name                           varchar2(255)  not null
                                      constraint qask_settings_uk unique,
    description                    varchar2(4000) not null,
    value                          varchar2(4000),
    is_numeric_yn                  varchar2(1)    not null    -- used in validation
                                      constraint qask_settings_is_numeric_cc
                                      check (is_numeric_yn in ('Y','N')),
    is_yn                          varchar2(1)    not null    -- used in validation
                                      constraint qask_settings_is_yn_cc
                                      check (is_yn in ('Y','N')),
    --
    row_version                    integer         not null,
    created_on                     date            not null,
    created_by                     varchar2(255)   not null,
    updated_on                     date            not null,
    updated_by                     varchar2(255)   not null
);

create table qask_account_requests (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_account_requests_pk primary key,
    --
    email                          varchar2(255) not null,
    justification                  varchar2(4000),
    accepted_terms_id              number,
    --
    user_agent                     varchar2(4000),
    x_forwarded_for                varchar2(4000),
    remote_addr                    varchar2(4000),
    --
    request_status                 varchar2(30)  not null
                                      constraint qask_account_requests_status_cc
                                      check (request_status in ('REQUESTED','APPROVED','DECLINED')),
    status_reason                  varchar2(4000),

    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_account_requests_i1 on qask_account_requests (email);

create table qask_verify_tokens (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_ver_token_pk primary key,
    --
    username                       varchar2(255) not null,
    token                          varchar2(30)  not null,
    verified_yn                    varchar2(1)   default 'N' not null  
                                      constraint qask_ver_token_verified_cc
                                      check (verified_yn in ('Y','N')),
    expired_yn                     varchar2(1)   default 'N' not null  
                                      constraint qask_ver_token_expired_cc
                                      check (expired_yn in ('Y','N')),
    expire_on                      date  not null,
    accessed_on                    date,
    access_attempts                number  default 0  not null,
    reset_on                       date,
    reset_by                       varchar2(255),
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_verify_tokens_i1 on qask_verify_tokens (username, token);

-- ACCOUNTS HANDLED BY APEX ACL

create table qask_answer_sets (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_answer_sets_pk primary key,
    --
    answer_set_code                varchar2(30)   not null,
    answer_set_name                varchar2(100)  not null,
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create unique index qask_answer_sets_i1 on qask_answer_sets (answer_set_code);
create unique index qask_answer_sets_i2 on qask_answer_sets (answer_set_name);

create table qask_aset_answers (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_aset_answers_pk primary key,
    --
    answer_set_id                  number  not null
                                      constraint aset_answers_aset_fk
                                      references qask_answer_sets on delete cascade,
    answer_text                    varchar2(255) not null,
    display_order                  number        not null,
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_aset_answers_i1 on qask_aset_answers (answer_set_id);
create unique index qask_aset_answers_uk on qask_aset_answers (answer_set_id, answer_text);

---------------------

create table qask_sessions (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_sessions_pk primary key,
    owner                          varchar2(255) not null,
    --
    session_name                   varchar2(255)  not null,
    purpose                        varchar2(4000),
    visibility                     varchar2(30)  not null
                                      constraint qask_sessions_vis_cc
                                      check (visibility in ('PRIVATE','SHARED')), -- CURRENTLY NOT USED
    session_code                   varchar2(30)    not null
                                      constraint qask_sessions_uk unique,
    resp_name_required_yn          varchar2(1)  not null
                                      constraint qask_sessions_resp_name_req_cc
                                      check (resp_name_required_yn in ('Y','N')),
    resp_email_required_yn         varchar2(1)  not null
                                      constraint qask_sessions_resp_email_req_cc
                                      check (resp_email_required_yn in ('Y','N')),
    --
    session_status                 varchar2(30)  not null
                                      constraint qask_sessions_status_cc
                                      check (session_status in ('STAGED','OPEN','CLOSED')),
    started_on                     date,
    started_by                     varchar2(255),  -- CURRENTLY NOT USED
    closed_on                      date,
    length_minutes                 number,
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_sessions_i1 on qask_sessions (owner);
create index qask_sessions_i2 on qask_sessions (visibility);
create index qask_sessions_i3 on qask_sessions (session_status);

create table qask_session_questions (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_session_questions_pk primary key,
    session_id                     number  not null
                                      constraint qask_session_questions_sess_fk
                                      references qask_sessions on delete cascade,
    --
    question                       varchar2(255)  not null,
    question_number                integer not null,
    answer_set_id                  number
                                      constraint qask_session_questions_aset_fk
                                      references qask_answer_sets on delete set null,
    answer_type                    varchar2(10) not null
                                      constraint qask_session_questions_atype_cc
                                      check (answer_type in ('SINGLE','MULTI','FREEFORM')),
    ask_for_comments_yn            varchar2(1)  not null
                                      constraint qask_session_questions_comments_cc
                                      check (ask_for_comments_yn in ('Y','N')),
    question_status                varchar2(30) constraint qask_session_questions_status_cc
                                      check (question_status in ('WORKING','STAGED','OPEN','CLOSED')),
    --
    question_explanation           clob,
    question_file                  blob,
    question_filename              varchar2(512),
    question_file_mimetype         varchar2(512),
    question_file_last_updated_on  date,
    --
    started_on                     date,
    closed_on                      date,
    end_date                       date,
    length_seconds                 number,
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_session_questions_i1 on qask_session_questions (session_id);
create index qask_session_questions_i2 on qask_session_questions (answer_set_id);

create table qask_sess_question_answers (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_sess_qa_pk primary key,
    question_id                    number  not null
                                      constraint qask_sess_qa_quest_fk
                                      references qask_session_questions on delete cascade,
    --
    answer_number                  number         not null,
    answer_text                    varchar2(255)  not null,
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_sess_question_answers_i1 on qask_sess_question_answers (question_id);
alter table qask_sess_question_answers add constraint qask_sess_question_answers_uk unique (question_id,answer_text);
------------------

create table qask_responses (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_responses_pk primary key,
    --
    session_id                     number
                                      constraint qask_response_session_fk
                                      references qask_sessions on delete set null,
    apex_session                   number,
    name                           varchar2(255),
    email                          varchar2(255),
    --
    user_agent                     varchar2(4000),
    x_forwarded_for                varchar2(4000),
    remote_addr                    varchar2(4000),
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create unique index qask_responses_i1 on qask_responses (session_id, apex_session);

create table qask_response_answers (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint qask_response_answers_pk primary key,
    response_id                    number  not null
                                      constraint qask_response_answers_resp_fk
                                      references qask_responses on delete cascade,
    question_id                    number  not null
                                      constraint qask_response_answers_q_fk
                                      references qask_session_questions on delete cascade,
    --
    answer_id                      number
                                      constraint qask_response_answers_a_fk
                                      references qask_sess_question_answers on delete set null,
    answer_text                    varchar2(4000),
    comment_text                   varchar2(4000),
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index qask_response_answers_i1 on qask_response_answers (response_id);
create index qask_response_answers_i2 on qask_response_answers (question_id);
create index qask_response_answers_i3 on qask_response_answers (answer_id);
create unique index qask_response_answers_i4 on qask_response_answers (response_id, question_id, answer_id);