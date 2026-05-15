CREATE TABLE EBA_QPOLL_RESULTS
   (
    ID                    NUMBER constraint EBA_QPOLL_RESULTS_PK primary key, 
    poll_ID               NUMBER constraint EBA_QPOLL_RESULTS_FK
                          references EBA_QPOLL_POLLS (id)
                          on delete cascade,
    ROW_VERSION_NUMBER    NUMBER not null, 
    ROW_KEY               VARCHAR2(30), 
    --
    ip_address            varchar2(255),
    apex_session_id       varchar2(255),
    apex_user             varchar2(255),
    respondent_id         number,
    preactive_yn          varchar2(1)  null,
    --
    grade                 number,
    is_valid_yn           varchar2(1),
    validation_errors     varchar2(4000),
    --
    score                 number,
    --
    name                  varchar2(4000),
    email                 varchar2(4000) not null,
    company               varchar2(255),
    title                 varchar2(255),
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255), 
    UPDATED               TIMESTAMP WITH TIME ZONE
   )  ;


create index EBA_QPOLL_RESULTS_I1 on EBA_QPOLL_RESULTS( poll_ID );
create index EBA_QPOLL_RESULTS_I2 on EBA_QPOLL_RESULTS( row_key );
create index EBA_QPOLL_RESULTS_I3 on EBA_QPOLL_RESULTS( email );
create index EBA_QPOLL_RESULTS_I4 on EBA_QPOLL_RESULTS( created );
create index EBA_QPOLL_RESULTS_I5 on EBA_QPOLL_RESULTS( is_valid_yn );

CREATE OR REPLACE TRIGGER EBA_QPOLL_RESULTS_BIU
   before insert or update on EBA_QPOLL_RESULTS
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
    if :new.row_key is null then
       :new.row_key := eba_qpoll_fw.compress_int(eba_qpoll_seq.nextval);
    end if;
   if inserting then
       if :new.apex_user is null then
          :new.apex_user := nvl(v('APP_USER'),user);
       end if;
       if :new.apex_session_id is null then
          :new.apex_session_id := nvl(v('SESSION_ID'),'unknown');
       end if;
       :new.created := current_timestamp;
       if :new.created_by is null then
          :new.created_by := nvl(wwv_flow.g_user,user);
       end if;
       :new.updated := current_timestamp;
       if :new.updated_by is null then
          :new.updated_by := nvl(wwv_flow.g_user,user);
       end if;
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if :new.preactive_yn is null
      then :new.preactive_yn := 'N';
   end if;
   :new.email := lower(:new.email);
   if updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
ALTER TRIGGER EBA_QPOLL_RESULTS_BIU ENABLE;

CREATE TABLE EBA_QPOLL_RESULT_DETAILS
   (
    id                    number
                          constraint EBA_QPOLL_RESULT_DET_PK
                          primary key,
    result_id             number 
                          constraint EBA_QPOLL_RESULT_DET_FK
                          references EBA_QPOLL_RESULTS on delete cascade,
    ROW_VERSION_NUMBER    NUMBER not null, 
    question              varchar2(4000),
    question_id           number,
    question_type         varchar2(30),
    display_sequence      number,
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
    answer_correct_yn     varchar2(1),
    --
    answer_id_01          number,
    answer_id_02          number,
    answer_id_03          number,
    answer_id_04          number,
    answer_id_05          number,
    answer_id_06          number,
    answer_id_07          number,
    answer_id_08          number,
    answer_id_09          number,
    answer_id_10          number,
    answer_id_11          number,
    answer_id_12          number,
    --
    score                 number,
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255), 
    UPDATED               TIMESTAMP WITH TIME ZONE
)  ;

alter table eba_qpoll_result_details
add constraint eba_qpoll_result_det_cc1
check (answer_correct_yn in ('Y','N'));

create index EBA_QPOLL_RESULT_DET_I1 on EBA_QPOLL_RESULT_DETAILS( result_id );
create index EBA_QPOLL_RESULT_DET_I2 on EBA_QPOLL_RESULT_DETAILS( question_id );
create index EBA_QPOLL_RESULT_DET_I3 on EBA_QPOLL_RESULT_DETAILS( answer_id_01 );
create index EBA_QPOLL_RESULT_DET_I4 on EBA_QPOLL_RESULT_DETAILS( answer_id_02 );
create index EBA_QPOLL_RESULT_DET_I5 on EBA_QPOLL_RESULT_DETAILS( answer_id_03 );
create index EBA_QPOLL_RESULT_DET_I6 on EBA_QPOLL_RESULT_DETAILS( answer_id_04 );
create index EBA_QPOLL_RESULT_DET_I7 on EBA_QPOLL_RESULT_DETAILS( answer_id_05 );
create index EBA_QPOLL_RESULT_DET_I8 on EBA_QPOLL_RESULT_DETAILS( answer_id_06 );
create index EBA_QPOLL_RESULT_DET_I9 on EBA_QPOLL_RESULT_DETAILS( answer_id_07 );
create index EBA_QPOLL_RESULT_DET_I10 on EBA_QPOLL_RESULT_DETAILS( answer_id_08 );
create index EBA_QPOLL_RESULT_DET_I11 on EBA_QPOLL_RESULT_DETAILS( answer_id_09 );
create index EBA_QPOLL_RESULT_DET_I12 on EBA_QPOLL_RESULT_DETAILS( answer_id_10 );
create index EBA_QPOLL_RESULT_DET_I13 on EBA_QPOLL_RESULT_DETAILS( answer_id_11 );
create index EBA_QPOLL_RESULT_DET_I14 on EBA_QPOLL_RESULT_DETAILS( answer_id_12 );


CREATE OR REPLACE TRIGGER EBA_QPOLL_RESULT_DETS_BIU
   before insert or update on EBA_QPOLL_RESULT_DETAILS
   for each row
begin
   if :new.ID is null then
      :new.ID := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
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
end;
/
ALTER TRIGGER EBA_QPOLL_RESULT_DETS_BIU ENABLE;

