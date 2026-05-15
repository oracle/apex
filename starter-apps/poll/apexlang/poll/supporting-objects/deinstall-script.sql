drop table eba_qpoll_sections           cascade constraints;
drop table eba_qpoll_questions          cascade constraints;
drop table eba_qpoll_resp_communities   cascade constraints;
drop table eba_qpoll_comm_invites       cascade constraints;
drop table eba_qpoll_invites            cascade constraints;
drop table eba_qpoll_canned_answers     cascade constraints;
drop table eba_qpoll_respondents        cascade constraints;
drop table eba_qpoll_polls              cascade constraints;
drop table eba_qpoll_notifications      cascade constraints;
drop table eba_qpoll_preferences        cascade constraints;
drop table eba_qpoll_errors             cascade constraints;
drop table eba_qpoll_results            cascade constraints;
drop table eba_qpoll_access_requests    cascade constraints;
drop table eba_qpoll_error_log          cascade constraints;
drop table eba_qpoll_application_log    cascade constraints;
drop table eba_qpoll_user_log           cascade constraints;
drop table eba_qpoll_emails             cascade constraints;
drop table eba_qpoll_result_details     cascade constraints;
drop table eba_qpoll_resp_comm_ref      cascade constraints;
drop table eba_qpoll_email_opt_out      cascade constraints;
drop table eba_qpoll_history            cascade constraints;

drop sequence eba_qpoll_seq;

drop package eba_qpoll;
drop package eba_qpoll_fw;
drop package eba_qpoll_quiz;
drop package eba_qpoll_account;
drop package eba_qpoll_email;
