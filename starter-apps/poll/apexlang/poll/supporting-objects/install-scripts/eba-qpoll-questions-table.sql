CREATE TABLE EBA_QPOLL_QUESTIONS
   (
    ID                    NUMBER constraint EBA_QPOLL_QUES_PK primary key, 
    POLL_ID               NUMBER constraint EBA_QPOLL_QUES_FK
                          references EBA_QPOLL_POLLS(id)
                          on delete cascade,
    ROW_VERSION_NUMBER    NUMBER not null, 
    row_key               varchar2(30),
    --
    section_id            NUMBER constraint EBA_QPOLL_QUES_FK2
                          references EBA_QPOLL_SECTIONS(id)
                          on delete set null,
    display_sequence      number,
    question              varchar2(4000) not null,
    question_type         varchar2(30)   not null,
    mandatory_yn          varchar2(1)    not null,
    publish_yn            varchar2(1)    not null,
    allow_comments_yn     varchar2(1)    not null,
    use_custom_answers_yn varchar2(1)    not null, 
    --
    image_filename        VARCHAR2(4000),         
    image_mimetype        VARCHAR2(512),
    image_charset         VARCHAR2(512),
    image_blob            BLOB,
    image_last_updated    DATE,
    image_width           number,
    image_height          number,
    --
    answer_01             varchar2(4000),
    answer_02             varchar2(4000),
    answer_03             varchar2(4000),
    answer_04             varchar2(4000),
    answer_05             varchar2(4000),
    answer_06             varchar2(4000),
    answer_07             varchar2(4000),
    answer_08             varchar2(4000),
    answer_09             varchar2(4000),
    answer_10             varchar2(4000),
    answer_11             varchar2(4000),
    answer_12             varchar2(4000),
    correct_answer        varchar2(4000),
    --
    enable_score_yn       varchar2(1) default 'N',
    answer_01_score       number,
    answer_02_score       number,
    answer_03_score       number,
    answer_04_score       number,
    answer_05_score       number,
    answer_06_score       number,
    answer_07_score       number,
    answer_08_score       number,
    answer_09_score       number,
    answer_10_score       number,
    answer_11_score       number,
    answer_12_score       number,
    --
    CREATED_BY            VARCHAR2(255 byte), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255 byte), 
    UPDATED               TIMESTAMP WITH TIME ZONE
   )  ;


create index EBA_QPOLL_QUESTIONS_I1 on EBA_QPOLL_QUESTIONS( POLL_ID );

alter table eba_qpoll_questions
add constraint eba_qpoll_questions_cc1
check (mandatory_yn in ('Y','N'));

alter table eba_qpoll_questions
add constraint eba_qpoll_questions_cc2
check (publish_yn in ('Y','N'));

alter table eba_qpoll_questions
add constraint eba_qpoll_questions_cc3
check (allow_comments_yn in ('Y','N'));

alter table eba_qpoll_questions
add constraint eba_qpoll_questions_cc4
check (use_custom_answers_yn in ('Y','N'));

alter table eba_qpoll_questions
add constraint eba_qpoll_questions_cc5
check (enable_score_yn in ('Y','N'));


CREATE OR REPLACE TRIGGER EBA_QPOLL_QUESTIONS_BIU
   before insert or update on EBA_QPOLL_QUESTIONS
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
   :new.mandatory_yn := nvl(upper(:new.mandatory_yn),'Y');
   :new.publish_yn := nvl(upper(:new.publish_yn),'Y');
   :new.allow_comments_yn := nvl(upper(:new.allow_comments_yn),'N');
   if :new.question_type in ('PICK_TWO','CHECKBOX','TEXTAREA','RADIO_GROUP','STACK','ALLOCATION') then
       :new.use_custom_answers_yn := 'Y';
   else
       :new.use_custom_answers_yn := 'N';
   end if;
end;
/
ALTER TRIGGER EBA_QPOLL_QUESTIONS_BIU ENABLE;
