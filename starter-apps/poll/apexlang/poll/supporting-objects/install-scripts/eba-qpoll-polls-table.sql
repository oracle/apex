CREATE TABLE EBA_QPOLL_POLLS 
   (
    ID                    NUMBER constraint EBA_QPOLL_POLL_PK primary key, 
    ROW_VERSION_NUMBER    NUMBER not null, 
    ROW_KEY               VARCHAR2(30), 
    POLL_NAME             VARCHAR2(255) not null, 
    Poll_details          varchar2(4000),
    intro_text            varchar2(4000),
    thank_you_text        varchar2(4000),
    STATUS_ID             NUMBER       not null
                             constraint EBA_QPOLL_POLL_status_cc 
                               check (status_id in (1,2,3,4)), 
    poll_or_quiz          varchar2(1)  not null,
    score_type            varchar2(1)  default 'N',
    use_sections_yn       varchar2(1)  default 'N',
    --
    image_filename        VARCHAR2(4000),         
    image_mimetype        VARCHAR2(512),
    image_charset         VARCHAR2(512),
    image_blob            BLOB,
    image_last_updated    DATE,
    image_width           number,
    image_height          number,
    --
    anonymous_yn          varchar2(1) default 'N',
    can_update_answers_yn varchar2(1) default 'N',
    all_view_results_yn   varchar2(1) default 'Y',
    enable_score_yn       varchar2(1) default 'N', 
    invite_only_yn        varchar2(1) default 'N',
    authentication_req_yn varchar2(1) default 'N',
    start_time            TIMESTAMP WITH TIME ZONE, 
    stop_time             TIMESTAMP WITH TIME ZONE, 
    --
    invite_subject        varchar2(4000),
    invite_body           clob,
    reminder_subject      varchar2(4000),
    reminder_body         clob,
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255), 
    UPDATED               TIMESTAMP WITH TIME ZONE
   )  ;


create index EBA_QPOLL_POLLS_I1 on EBA_QPOLL_POLLS(STATUS_ID);

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc1
check (poll_or_quiz in ('P','Q'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc2
check (score_type in ('A','C','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc3
check (use_sections_yn in ('Y','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc4
check (anonymous_yn in ('Y','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc5
check (can_update_answers_yn in ('Y','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc6
check (all_view_results_yn in ('Y','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc7
check (enable_score_yn in ('Y','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc8
check (invite_only_yn in ('Y','N'));

alter table eba_qpoll_polls
add constraint eba_qpoll_polls_cc9
check (authentication_req_yn in ('Y','N'));


CREATE OR REPLACE TRIGGER EBA_QPOLL_POLLS_BIU
   before insert or update on EBA_QPOLL_POLLS
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if :new.row_key is null then
      :new.row_key := EBA_QPOLL_FW.compress_int(eba_qpoll_seq.nextval);
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;

   if :new.poll_or_quiz = 'Q' then
      :new.score_type := 'N';
   end if;

   if :new.status_id = 3 and nvl(:old.status_id,0) != 3 then
      :new.start_time := current_timestamp;
   elsif :new.status_id = 4 and nvl(:old.status_id,0) != 4 then
      :new.stop_time := current_timestamp;
   end if;
end;
/
ALTER TRIGGER EBA_QPOLL_POLLS_BIU ENABLE;

