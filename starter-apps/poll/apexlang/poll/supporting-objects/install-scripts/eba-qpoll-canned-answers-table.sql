CREATE TABLE EBA_QPOLL_CANNED_ANSWERS
   (
    ID                    NUMBER constraint EBA_QPOLL_CANNED_ANSWERS_PK primary key, 
    ROW_VERSION_NUMBER    NUMBER not null, 
    NAME                  VARCHAR2(255) not null, 
    code                  varchar2(255) not null,
    sort_order            number,
    description           varchar2(4000),
    --
    intro_text            varchar2(4000),
    help_text             varchar2(4000),
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
    --
    CREATED_BY            VARCHAR2(255 BYTE), 
    CREATED               TIMESTAMP WITH TIME ZONE, 
    UPDATED_BY            VARCHAR2(255 BYTE), 
    UPDATED               TIMESTAMP WITH TIME ZONE
   )  ;


create unique index EBA_QPOLL_CANNED_ANSWERS_i1 on EBA_QPOLL_CANNED_ANSWERS( NAME );
create unique index EBA_QPOLL_CANNED_ANSWERS_i2 on EBA_QPOLL_CANNED_ANSWERS( code );


CREATE OR REPLACE TRIGGER EBA_QPOLL_CANNED_ANSW_BIU
   before insert or update on EBA_QPOLL_CANNED_ANSWERS
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
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
   :new.code := replace(:new.code,' ','');
   :new.code := upper(:new.code);
end;
/
ALTER TRIGGER EBA_QPOLL_CANNED_ANSW_BIU ENABLE;




insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (1, 'Range: 1 = Will not use to 5 = Will immediately use', 'RANGE_TIMEFRAME', 
'Will not use', 'Unlikely to use', 'Will consider using', 'Likely to use', 'Will use immediately');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (2, 'Range: 1 = Least valuable to 5 = Most Valuable', 'RANGE_VALUE', 
'Least Valuable', 'Limited Value', 'Useful', 'Valuable', 'Most Valuable');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (3, 'Range: 1 = Megabytes or less to 5 = Petabytes or more', 'RANGE_STORAGE', 
'Megabytes or less', '100 MB', 'Gigabytes', 'Terabytes', 'Petabytes or more');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (4, 'Range: 1 = Never to 5 = All of the time', 'RANGE_FREQUENCY', 
'Never', 'Infrequently', 'Sometimes', 'Frequently', 'All of the time');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (5, 'Range: 1 = Not Applicable to 5 = Most Applicable', 'RANGE_APPLICABILITY', 
'Not Applicable', 'Less Applicable', 'Applicable', 'Broadly Applicable', 'Most Applicable');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (6, 'Range: 1 = Obtuse to 5 = Elegant', 'RANGE_ELEGANCE', 
'Obtuse', 'Needs Improvement', 'Somewhat Elegant', 'Reasonably Elegant', 'Elegant');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (7, 'Range: 1 = Very Complex to 5 = Very Simple', 'RANGE_SIMPLE_TO_COMPLEX', 
'Very Complex', 'Complex', 'Medium complexity', 'Simple', 'Very Simple');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (8, 'Range: 1 = Hard to 5 = Easy', 'RANGE_HARD_TO_EASY', 
'Very Hard', 'Hard', 'Neutral', 'Easy', 'Very Easy');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (9, 'Range: 1 = Will not endorse to 5 = Will fully endorse', 'RANGE_ENDORSE', 
'Will not endorse', 'Unlikely to endorse', 'Neutral', 'Likely to endorse', 'Will fully endorse');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (10, 'Range: 1 = Will not consider using to 5 = Will definitely consider', 'RANGE_CONSIDERATION', 
'Will not consider', 'Unlikely to consider', 'Neutral', 'Will consider', 'Will definitely consider');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (11, 'Range: 1 = Not recommend to 5 = Highly recommend', 'RANGE_RECOMMENDATION', 
'Not recommend', 'Less recommend', 'Neutral', 'Recommend', 'Highly recommend');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (12, 'Range: 1 = Poor to 5 = Excellent', 'RANGE_POOR_TO_EXCELLENT', 
'Poor', 'Needs Improvement', 'Neutral', 'Good', 'Excellent');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (13, 'Range: 1 = Least Likely to 5 = Most Likely', 'RANGE_LIKELIHOOD', 
'Least likely', 'Unlikely', 'Neutral', 'Somewhat likely', 'Most likely');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (14, 'Range: 1 = Disagree to 5 = Fully Agree', 'RANGE_AGREE_DISAGREE', 
'Disagree', 'Somewhat disagree', 'Neutral', 'Agree', 'Fully Agree');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (15, 'Range: 1 = Hate it to 5 = Love it', 'RANGE_LOVE_HATE', 
'Hate it', 'Don''t like it', 'Neutral', 'Like it', 'Love it');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (16, 'Range: 1 = Lowest to 5 = Highest', 'RANGE_LOW_TO_HIGH', 
'Lowest', 'Low', 'Medium', 'High', 'Highest');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, sort_order, answer_01, answer_02, answer_03, answer_04, answer_05)
values (17,'Range: Yes, No', 'YES_NO', 10,
'Yes', 'No', null, null, null);

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, sort_order, answer_01, answer_02, answer_03, answer_04, answer_05)
values (18, 'Range: True, False', 'TRUE_FALSE', 11,
'True', 'False', null, null, null);

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (19, 'Range: Grades A to F', 'GRADE', 
    'F - Failure', 'D - Needs improvement', 'C - Adequate', 'B - Above average', 'A - Outstanding');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, sort_order, answer_01, answer_02, answer_03, answer_04, answer_05)
    values (20, 'Text Field (255 character maximum)', 'TEXT', 11.5,
    'Text field', null, null, null, null);

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, sort_order, answer_01, answer_02, answer_03, answer_04, answer_05)
    values (21, 'Multi-line Text (4000 character maximum)', 'TEXTAREA', 12,
    'Free form text', null, null, null, null);

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (22, 'Range: 1 = Unusable to 5 = Intuitive', 'INTUITIVE', 
    'Unusable', 'Poor', 'Usable', 'Good', 'Intuitive');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (23, 'Range: 1 = Very Little to 5 = Very Much', 'LIKE', 
    'Very little', 'Little', 'Neutral', 'A little bit', 'Very much');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (24, 'Range: 1 = Low to 5 = High', 'LOW_HIGH', 
    'Low', 'Below Average', 'Average', 'Above Average', 'High');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04, answer_05)
values (25, 'Range: 1 = Cold to 5 = Hot', 'HOT_COLD', 
    'Cold', 'Cool', 'Neutral', 'Warm', 'Hot');

insert into EBA_QPOLL_CANNED_ANSWERS (id, NAME, code, answer_01, answer_02, answer_03, answer_04)
values (26, 'Range: MoSCoW', 'MosCoW', 
    'Must Have', 'Should Have (high-priority, include if possible)', 'Could Have (desirable, but not necessary)', 'Won''t Have (not needed, will not be included)');


commit;

