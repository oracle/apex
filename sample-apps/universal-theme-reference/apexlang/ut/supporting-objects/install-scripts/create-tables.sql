ALTER SESSION SET PLSCOPE_SETTINGS = 'IDENTIFIERS:NONE';


create table  EBA_UT_chart_projects (
    id                   number         not null
                                        constraint EBA_UT_charts_proj_pk
                                        primary key,
    project              varchar2(30)   not null,
    row_version_number   number,
    created              timestamp,
    created_by           varchar2(255),
    updated              timestamp,
    updated_by           varchar2(255)
   )
/

REM EBA_UT_chart_tasks    
create table  EBA_UT_chart_tasks (
    id                       number         not null
                                            constraint EBA_UT_chart_tasks_pk
                                            primary key,
    project                  number         constraint EBA_UT_chart_tasks_fk
                                            references EBA_UT_chart_projects on delete cascade,
    parent_task              number,
    task_name                varchar2(255),
    row_version_number       number,
    start_date               date,
    end_date                 date,
    status                   varchar2(30),
    assigned_to              varchar2(30),
    cost                     number,
    budget                   number,
    created                  timestamp,
    created_by               varchar2(255),
    updated                  timestamp,
    updated_by               varchar2(255)
   )
/

create index EBA_UT_chart_tasks_idx1 on EBA_UT_chart_tasks (project);
/


create or replace trigger biu_EBA_UT_chart_proj 
   before insert or update on EBA_UT_chart_projects
   for each row 
begin  
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := localtimestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := localtimestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := localtimestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_EBA_UT_chart_proj enable
/
    
create or replace trigger biu_EBA_UT_chart_tasks
   before insert or update on EBA_UT_chart_tasks
   for each row
begin  
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := localtimestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := localtimestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := localtimestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if inserting then
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
end;
/
    
alter trigger biu_EBA_UT_chart_tasks enable
/

create table eba_ut_demo_cards (
    id                             number               not null
                                                        constraint eba_ut_demo_cards_id_pk
                                                        primary key,
    category                       varchar2(255 char)   not null,
    title                          varchar2(255 char)   not null,
    subtitle                       varchar2(255 char)   not null,
    body                           varchar2(4000 char)  not null,
    secondary_body                 varchar2(4000 char),
    icon_class                     varchar2(255 char),
    badge                          varchar2(255 char),
    image_url                      varchar2(255 char)   not null,
    start_date                     timestamp with time zone,
    end_date                       timestamp with time zone
)
/

create or replace trigger biu_eba_ut_demo_cards
   before insert or update on eba_ut_demo_cards
   for each row 
begin  
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
end;
/

alter trigger biu_eba_ut_demo_cards enable
/

insert into EBA_UT_chart_projects (ID,PROJECT) values (1,'Maintain Support Systems');
insert into EBA_UT_chart_projects (ID,PROJECT) values (2,'Load Software');
insert into EBA_UT_chart_projects (ID,PROJECT) values (3,'Email Integration');
insert into EBA_UT_chart_projects (ID,PROJECT) values (4,'Documentation');
insert into EBA_UT_chart_projects (ID,PROJECT) values (5,'Training');
insert into EBA_UT_chart_projects (ID,PROJECT) values (6,'Bug Tracker');
insert into EBA_UT_chart_projects (ID,PROJECT) values (7,'Migrate Old Systems');
insert into EBA_UT_chart_projects (ID,PROJECT) values (8,'Software Projects Tracking');
insert into EBA_UT_chart_projects (ID,PROJECT) values (9,'Public Website');
insert into EBA_UT_chart_projects (ID,PROJECT) values (10,'Early Adopter Release');
insert into EBA_UT_chart_projects (ID,PROJECT) values (11,'Environment Configuration');
insert into EBA_UT_chart_projects (ID,PROJECT) values (12,'Customer Satisfaction Survey');
insert into EBA_UT_chart_projects (ID,PROJECT) values (13,'Convert Excel Spreadsheet');
insert into EBA_UT_chart_projects (ID,PROJECT) values (14,'Upgrade Equipment');
    

    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (74,14,'Decommission servers',to_date('01-02-12','DD-MM-RR'),to_date('30-04-12','DD-MM-RR'),'Pending','Al Bines',0,500,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (75,6,'Measure effectiveness of improved QA',to_date('01-02-12','DD-MM-RR'),to_date('02-03-12','DD-MM-RR'),'Pending','Myra Sutcliff',0,1500,18);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (76,10,'Response to Customer Feedback',to_date('01-02-12','DD-MM-RR'),to_date('25-05-12','DD-MM-RR'),'Pending','Russ Saunders',0,6000,33);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (77,10,'User acceptance testing',to_date('16-02-12','DD-MM-RR'),to_date('20-05-12','DD-MM-RR'),'Pending','Russ Saunders',0,2500,33);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (78,10,'End-user Training',to_date('20-03-12','DD-MM-RR'),to_date('01-06-12','DD-MM-RR'),'Pending','Myra Sutcliff',0,2500,79);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (79,10,'Rollout sample applications',to_date('23-05-12','DD-MM-RR'),to_date('03-06-12','DD-MM-RR'),'Pending','Pam King',0,500,32);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (72,14,'Installation',to_date('03-02-12','DD-MM-RR'),to_date('04-03-12','DD-MM-RR'),'Pending','Mark Nile',0,1500,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (73,14,'Notify users',to_date('06-03-12','DD-MM-RR'),to_date('09-03-12','DD-MM-RR'),'Pending','Mark Nile',0,200,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (34,10,'Plan production release schedule',to_date('22-12-11','DD-MM-RR'),to_date('22-12-11','DD-MM-RR'),'Closed','Pam King',100,100,32);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (37,12,'Complete questionnaire',to_date('18-12-11','DD-MM-RR'),to_date('01-01-11','DD-MM-RR'),'On-Hold','Irene Jones',1200,800,38);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (59,11,'Select servers for Development, Test, Production',to_date('03-11-11','DD-MM-RR'),to_date('08-11-11','DD-MM-RR'),'Closed','James Cassidy',200,600,61);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (3,1,'HR Support Systems',to_date('01-11-11','DD-MM-RR'),to_date('12-03-12','DD-MM-RR'),'Closed','Al Bines',300,500,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (1,1,'HR software upgrades',to_date('01-11-11','DD-MM-RR'),to_date('27-02-12','DD-MM-RR'),'On-Hold','Pam King',8000,7000,3);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (2,1,'Arrange for vacation coverage',to_date('01-11-11','DD-MM-RR'),to_date('31-12-11','DD-MM-RR'),'On-Hold','Russ Sanders',9500,7000,3);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (4,3,'Complete plan',to_date('08-11-11','DD-MM-RR'),to_date('14-12-11','DD-MM-RR'),'Closed','Mark Nile',3000,1500,44);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (5,3,'Check software licenses',to_date('12-12-11','DD-MM-RR'),to_date('13-12-11','DD-MM-RR'),'Closed','Mark Nile',200,200,44);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (6,5,'Create training workspace',to_date('01-12-11','DD-MM-RR'),to_date('08-12-11','DD-MM-RR'),'Closed','James Cassidy',500,700,36);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (7,5,'Publish links to self-study courses',to_date('01-12-11','DD-MM-RR'),to_date('01-12-11','DD-MM-RR'),'Closed','John Watson',100,100,36);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (8,2,'Identify point solutions required',to_date('03-12-11','DD-MM-RR'),to_date('05-12-11','DD-MM-RR'),'Closed','John Watson',200,300,49);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (9,2,'Install in development',to_date('07-12-11','DD-MM-RR'),to_date('07-12-11','DD-MM-RR'),'Closed','John Watson',100,100,49);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (15,4,'Identify owners',to_date('19-11-11','DD-MM-RR'),to_date('22-11-11','DD-MM-RR'),'Closed','Hank Davis',250,300,17);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (16,4,'Initial Draft Review',to_date('23-11-11','DD-MM-RR'),to_date('23-11-11','DD-MM-RR'),'Closed','Hank Davis',100,100,17);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (17,4,'Monitor Review Comments',to_date('23-11-11','DD-MM-RR'),to_date('31-12-11','DD-MM-RR'),'Closed','Hank Davis',450,500,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (18,6,'Implement bug tracking software',to_date('15-11-11','DD-MM-RR'),to_date('15-11-11','DD-MM-RR'),'Closed','Myra Sutcliff',100,100,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (19,6,'Review automated testing tools',to_date('16-11-11','DD-MM-RR'),to_date('15-12-11','DD-MM-RR'),'Closed','Myra Sutcliff',2750,1500,18);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (20,7,'Identify pilot applications',to_date('10-11-11','DD-MM-RR'),to_date('15-11-11','DD-MM-RR'),'Closed','Mark Nile',300,500,53);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (21,7,'Migrate pilot applications to ',to_date('20-11-11','DD-MM-RR'),to_date('25-11-11','DD-MM-RR'),'Closed','Mark Nile',500,500,53);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (22,8,'Customize Software Projects software',to_date('15-12-12','DD-MM-RR'),to_date('20-01-12','DD-MM-RR'),'Open','Tom Suess',600,1000,28);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (23,7,'Post-migration review',to_date('01-12-11','DD-MM-RR'),to_date('01-12-11','DD-MM-RR'),'Closed','Mark Nile',100,100,53);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (24,7,'User acceptance testing',to_date('03-12-11','DD-MM-RR'),to_date('04-12-11','DD-MM-RR'),'Closed','Mark Nile',600,200,23);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (25,8,'Enter base data (Projects, Milestones, etc.)',to_date('10-12-11','DD-MM-RR'),to_date('11-12-11','DD-MM-RR'),'Closed','Tom Suess',200,200,28);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (26,8,'Load current tasks and enhancements',to_date('12-12-11','DD-MM-RR'),to_date('16-12-11','DD-MM-RR'),'Closed','Tom Suess',400,500,28);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (27,6,'Document quality assurance procedures',to_date('16-12-11','DD-MM-RR'),to_date('19-01-12','DD-MM-RR'),'On-Hold','Myra Sutcliff',3500,4000,18);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (28,8,'Conduct project kickoff meeting',to_date('05-12-11','DD-MM-RR'),to_date('05-12-11','DD-MM-RR'),'Closed','Pam King',100,100,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (29,9,'Determine host server',to_date('06-12-11','DD-MM-RR'),to_date('07-12-11','DD-MM-RR'),'Closed','Tiger Scott',200,200,40);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (30,9,'Check software licenses',to_date('07-12-11','DD-MM-RR'),to_date('07-12-11','DD-MM-RR'),'Closed','Tom Suess',100,100,40);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (31,10,'Identify pilot users',to_date('05-12-11','DD-MM-RR'),to_date('06-12-11','DD-MM-RR'),'Closed','Scott Spencer',200,200,33);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (32,10,'Software Deliverable',to_date('07-12-11','DD-MM-RR'),to_date('20-12-11','DD-MM-RR'),'Closed','Scott Spencer',400,500,33);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (33,10,'Early Adopter Release',to_date('21-12-11','DD-MM-RR'),to_date('21-12-11','DD-MM-RR'),'Closed','Pam King',100,100,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (35,11,'Determine midtier configuration(s)',to_date('02-11-11','DD-MM-RR'),to_date('02-11-11','DD-MM-RR'),'Closed','James Cassidy',100,100,61);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (36,5,'Manage Training Activities',to_date('28-11-11','DD-MM-RR'),to_date('03-02-12','DD-MM-RR'),'On-Hold','John Watson',1000,2000,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (38,12,'Review feedback',to_date('09-01-12','DD-MM-RR'),to_date('15-01-12','DD-MM-RR'),'On-Hold','Irene Jones',200,400,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (39,12,'Plan rollout schedule',to_date('16-01-12','DD-MM-RR'),to_date('24-01-12','DD-MM-RR'),'On-Hold','Irene Jones',0,750,38);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (40,9,'Plan rollout schedule',to_date('10-12-11','DD-MM-RR'),to_date('02-01-12','DD-MM-RR'),'On-Hold','Al Bines',300,1000,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (41,9,'Develop web pages',to_date('10-01-12','DD-MM-RR'),to_date('15-02-12','DD-MM-RR'),'On-Hold','Tiger Scott',800,2000,40);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (42,9,'Purchase additional software licenses, if needed',to_date('17-02-12','DD-MM-RR'),to_date('17-02-12','DD-MM-RR'),'On-Hold','Tom Suess',0,100,40);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (43,1,'Investigate new Virus Protection software',to_date('29-12-11','DD-MM-RR'),to_date('13-01-12','DD-MM-RR'),'Open','Pam King',1700,1500,3);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (44,3,'Get RFPs for new server',to_date('13-12-11','DD-MM-RR'),to_date('03-01-12','DD-MM-RR'),'Open','Mark Nile',2000,1000,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (45,13,'Collect mission-critical spreadsheets',to_date('15-12-11','DD-MM-RR'),to_date('15-02-12','DD-MM-RR'),'Open','Pam King',2500,4000,46);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (46,13,'Create  applications from spreadsheets',to_date('15-12-11','DD-MM-RR'),to_date('30-05-12','DD-MM-RR'),'Open','Pam King',6000,10000,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (47,13,'Lock spreadsheets',to_date('15-12-11','DD-MM-RR'),to_date('30-05-12','DD-MM-RR'),'Open','Pam King',1000,800,46);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (48,13,'Send links to previous spreadsheet owners',to_date('16-12-11','DD-MM-RR'),to_date('01-06-12','DD-MM-RR'),'Open','Pam King',1000,1500,46);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (49,2,'Customize solutions',to_date('08-12-11','DD-MM-RR'),to_date('01-03-12','DD-MM-RR'),'Open','John Watson',1500,4000,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (50,2,'Train developers / users',to_date('10-01-12','DD-MM-RR'),to_date('25-03-12','DD-MM-RR'),'Pending','John Watson',0,8000,49);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (51,2,'Implement in Production',to_date('27-12-11','DD-MM-RR'),to_date('03-05-12','DD-MM-RR'),'Open','John Watson',200,1500,49);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (52,7,'Migrate applications',to_date('15-12-11','DD-MM-RR'),to_date('20-02-12','DD-MM-RR'),'Open','Mark Nile',1000,8000,53);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (53,7,'Plan migration schedule',to_date('22-12-11','DD-MM-RR'),to_date('03-03-12','DD-MM-RR'),'Open','Mark Nile',1500,6000,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (54,10,'Publish Feedback application',to_date('26-12-11','DD-MM-RR'),to_date('04-05-12','DD-MM-RR'),'Open','Pam King',300,12000,33);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (55,6,'Train developers on tracking bugs',to_date('20-01-12','DD-MM-RR'),to_date('10-03-12','DD-MM-RR'),'On-Hold','Myra Sutcliff',0,2000,18);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (56,7,'End-user Training',to_date('28-12-11','DD-MM-RR'),to_date('22-02-12','DD-MM-RR'),'Open','John Watson',0,2000,53);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (57,11,'Identify server requirements',to_date('01-11-11','DD-MM-RR'),to_date('02-11-11','DD-MM-RR'),'Closed','John Watson',100,200,61);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (58,11,'Specify security authentication scheme(s)',to_date('03-11-11','DD-MM-RR'),to_date('05-11-11','DD-MM-RR'),'Closed','John Watson',200,300,61);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (60,11,'Create pilot workspace',to_date('10-11-11','DD-MM-RR'),to_date('10-11-11','DD-MM-RR'),'Closed','John Watson',100,100,61);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (61,11,'Configure Workspace provisioning',to_date('10-11-11','DD-MM-RR'),to_date('10-11-11','DD-MM-RR'),'Closed','John Watson',200,100,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (62,11,'Run installation',to_date('11-11-11','DD-MM-RR'),to_date('11-11-11','DD-MM-RR'),'Closed','James Cassidy',100,100,57);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (64,14,'Obtain equipment specifications',to_date('03-01-12','DD-MM-RR'),to_date('06-01-12','DD-MM-RR'),'Pending','James Cassidy',0,500,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (65,3,'Purchase backup server',to_date('12-01-12','DD-MM-RR'),to_date('07-02-12','DD-MM-RR'),'Pending','Mark Nile',0,3000,44);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (66,14,'Identify integration points',to_date('08-01-12','DD-MM-RR'),to_date('28-01-12','DD-MM-RR'),'Pending','Mark Nile',0,2000,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (67,14,'Decommission machines',to_date('08-01-12','DD-MM-RR'),to_date('08-01-12','DD-MM-RR'),'Pending','Scott Spencer',0,100,null);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (68,14,'Map data usage',to_date('20-01-12','DD-MM-RR'),to_date('03-03-12','DD-MM-RR'),'Pending','Mark Nile',0,8000,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (69,14,'Purchase new machines',to_date('24-02-12','DD-MM-RR'),to_date('20-03-12','DD-MM-RR'),'Pending','John Watson',0,2500,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (70,14,'Import data',to_date('25-02-12','DD-MM-RR'),to_date('23-03-12','DD-MM-RR'),'Pending','John Watson',0,1000,67);
    insert into EBA_UT_chart_tasks (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET,PARENT_TASK) values (71,14,'Convert processes',to_date('02-02-12','DD-MM-RR'),to_date('01-04-12','DD-MM-RR'),'Pending','Pam King',0,3000,67);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(1, 'conference', 'Accessibility', 'Creating Accessible Apps', 'This conference breaks down all aspects of creating accessible web applications. We focus on the latest World Wide Web Consortium (W3C) standards in sessions discussing tables, labels, forms, images, color contrast, links, page structure, screen reader testing, and Voluntary Product Accessibility Templates (VPATs). The conference starts at 8am  and ends at 4pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Tables</li>
<li>9am-10am: Labels and Forms</li>
<li>10am-11am: Images and Color Contrast</li>
<li>11am-Noon: Links and Page Structure</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Screen Reader Analyzation</li>
<li>2pm-3pm: Voluntary Product Accessibility Templates (VPATs)</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-universal-access', '200.00', 'img/adaptable.jpg',
cast(trunc(sysdate + 10) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 10) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(2, 'conference', 'Security', 'Creating Secure Apps', 'This conference discusses all aspects of securing/hardening a web application. You''ll learn how to protect against Cross Side Scripting vulnerabilities and SQL Injection attacks. Other topics discussed are virus protection, VPNs and port sniffing, phishing and malware, and handling data breaches. The conference starts at 8am and ends at 4pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Cross Side Scripting</li>
<li>9am-10am: SQL Injection</li>
<li>10am-11am: Virus Protection</li>
<li>11am-Noon: VPNs and Port Sniffing</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Phishing and Malware</li>
<li>2pm-3pm: Handling Data Breaches</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-lock', '200.00', 'img/discovery.jpg',
cast(trunc(sysdate + 20) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 20) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(3, 'conference', 'Responsive Design', 'Creating Responsive Apps', 'This conference discusses all aspects of making a web application responsive. We will discuss topics like responsive design, minimalism, parallax vs. infinite scrolling, cross-browser compatibility, typography, and CSS animations. The conference starts at 8am and ends at 4pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Responsive Design</li>
<li>9am-10am: Minimalism</li>
<li>10am-11am: Parallax vs. Infinite Scrolling</li>
<li>11am-Noon: Cross-Browser Compatibility</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Typography</li>
<li>2pm-3pm: CSS Animations</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-arrows-h', '200.00', 'img/construction-and-engineering.jpg',
cast(trunc(sysdate + 30) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 30) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(4, 'conference', 'Slack Integration', 'Integrate Slack Into Your Apps', 'This conference shows how to integrate Slack into your web application. We will discuss topics like the Slack API, channels, channel topics vs. descriptions, markdown, and third party vendor integration. The conference starts at 8am and ends at 3pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Slack API</li>
<li>9am-10am: Channels</li>
<li>10am-11am: Channel Topics vs. Descriptions</li>
<li>11am-Noon: Markdown</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: 3rd Party Vendor Integration</li>
<li>2pm-3pm: Review and Q&A</li>
</ul>', 'fa-comment-o', '200.00', 'img/diversity.jpg',
cast(trunc(sysdate + 40) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 40) as timestamp with time zone) + interval '15' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(5, 'conference', 'Blockchain', 'Understanding Blockchain', 'This conference will cover high value payments, enhancements in transactions including IoT and Supply Chain Automation. Bring your own Laptop. The conference starts at 8am and ends at 5pm. Lunch will be provided. If you have special dietary requirements, please send an email to the organizers.', '<ul>
<li>8am-9am: Introduction to Blockchain</li>
<li>9am-10am: High Value Payments</li>
<li>10am-11am: Enhancements in Transactions</li>
<li>11am-Noon: Data and Finances</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Mobility and IoT</li>
<li>2pm-3pm: Standards for Blockchain Adoption</li>
<li>3pm-4pm: Supply Chain Automation with Blockchain</li>
<li>4pm-5pm: Review and Q&A</li>
</ul>', 'fa-cubes', '300.00', 'img/blockchain.jpg',
cast(trunc(sysdate + 50) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 50) as timestamp with time zone) + interval '17' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(6, 'conference', 'Localizations', 'Preparing your app for a global audience', 'This conference focuses on important considerations needed to ensure an application can reach a global audience, it covers the difference between automated and manual translations, User eXperience analysis, handling of sensitive data during translations, and some standards and definitions important for the target markets. Lunch will be at noon. It starts at 8 am and ends at 3 pm.', '<ul>
<li>8am-9am: Global Audience Analysis</li>
<li>9am-10am: Automated vs Manual Translations</li>
<li>10am-11am: UX Considerations</li>
<li>11am-Noon: Sensitive Data Translations</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Localization Standards and Definitions</li>
<li>2pm-3pm: Review and Q&A</li>
</ul>', 'fa-language', '140.00', 'img/best-in-class.jpg',
cast(trunc(sysdate + 60) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 60) as timestamp with time zone) + interval '15' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(7, 'workshop', 'Big Data', 'Performant Searching Against Data Warehouses', 'This small workshop covers data volume management, its analysis, integration and visualization. It also encompases cost-effective solutions for our potential customers. It starts at 8 am and ends at 2 pm. Lunch is included just before the Q&A.', '<ul>
<li>8am-9am: Data Volume Management</li>
<li>9am-10am: Analysis of Unstructured Data</li>
<li>10am-11am: Data Integration and Visualization</li>
<li>11am-Noon: Cost-Effective Solutions</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Q&A</li>
</ul>', 'fa-database-wrench', '100.00', 'img/analyze.jpg', 
cast(trunc(sysdate + 15) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 15) as timestamp with time zone) + interval '14' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(8, 'workshop', 'Cloud Services', 'Which Cloud Service Fits Your Needs', 'In this workshop we will cover protection of your data, containerized apps, shared block storage and cloud tiering when using Oracle Cloud Services. There is focus on optimizing work loads and usage analysis. It starts at 8 am and ends at 4 pm. Lunch is served at noon with vegan and meat options.', '<ul>
<li>8am-9am: Data Protection</li>
<li>9am-10am: Legacy to Containerized Apps</li>
<li>10am-11am: Shared Block Storage</li>
<li>11am-Noon: Cloud Tiering</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Optimizing Work Loads</li>
<li>2pm-3pm: Cloud Usage Analysis</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-cloud-new', '240.00', 'img/emerging-tech.jpg',
cast(trunc(sysdate + 25) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 25) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(9, 'workshop', 'Quantum Computing', 'Storing Data in Qubits', 'In this workshop, the topic of Quantum Computing as a strategy for the future development of applications and services is covered. It will include neural networks, advanced machine learning, natural language processing, quantum simulations and modern applications. It starts at 8 am and ends at 4 pm. Lunch will be served.', '<ul>
<li>8am-9am: Introduction to Quantum Computing</li>
<li>9am-10am: Neural Networks</li>
<li>10am-11am: Advanced Machine Learning</li>
<li>11am-Noon: Natural Language Processing</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Quantum Simulations</li>
<li>2pm-3pm: Modern Applications</li>
<li>3pm-4pm: Review and Q&A & Anthony Rayner</li>
</ul>', 'fa-function', '350.00', 'img/ai.jpg',
cast(trunc(sysdate + 35) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 35) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(10, 'workshop', 'HIPAA Compliance', 'Ensuring Your App Meets HIPAA Compliancies', 'HIPPA compliance is required for any application that deals with sensitive data such as medical history of patients. In this workshop you will understand the requirements that must be met before release, with special focus on personal sensitive data. It starts at 9 am and ends at 3 pm with lunch served at noon.', '<ul>
<li>9am-10am: Introduction to HIPAA</li>
<li>10am-11am: HIPAA Compliance Checklist</li>
<li>11am-Noon: Restricted Personal Data</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: App-Focused Risk Assessment</li>
<li>2pm-3pm: Review and Q&A</li>
</ul>', 'fa-medkit', '140.00', 'img/hr.jpg',
cast(trunc(sysdate + 45) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 45) as timestamp with time zone) + interval '15' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(11, 'workshop', 'Automated Testing', 'Validate App Functionality Before Release', 'This workshop covers automated build tools from you can setup unit, acceptance and UI testing. We will cover continuous integration and version control systems related to automated testing. A manager will provide insight on how to prepare your software quality assurance team to cover all bases before, during and after tests, thus ensuring a release without bugs.', '<ul>
<li>8am-9am: Automated Build Tools</li>
<li>9am-10am: Unit, Acceptance and UI Testing</li>
<li>10am-11am: Continuous Integration (CI)</li>
<li>11am-Noon: Version Control Systems</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Coding Standards</li>
<li>2pm-3pm: Managing Integrated Testing Projects</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-check-square-o', '300.00', 'img/chatbots.jpg',
cast(trunc(sysdate + 55) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 55) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(12, 'workshop', 'Database Modeling', 'Design Data Models With Referential Integrity', 'This workshop covers several design patterns for data modeling, including graphs and classic models. There will be software tools available for the hands-on lab, so bring your laptop. It will start at 8 am and ends at 4 pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Data Models Overview</li>
<li>9am-10am: Graph Data Models</li>
<li>10am-11am: Classic Data Modeling</li>
<li>11am-Noon: Performance-Driven Analysis</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Software Tools for Data Modeling</li>
<li>2pm-3pm: Data Models Hands-on Lab</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-database', '220.00', 'img/collaboration.jpg',
cast(trunc(sysdate + 65) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 65) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(13, 'badge', 'Fernanda Mendez', 'Product Manager', 'fernanda.mendez@yourcompany.com', null, null, null, 'img/persona-female01-apex.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(14, 'badge', 'Krist Grohl', 'Quality Manager', 'k.grohl@yourcompany.com', null, null, null, 'img/persona-male03.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(15, 'badge', 'Charles Statman', 'QA Specialist', 'charlie.s@yourcompany.com', null, null, null, 'img/persona-male01-apex.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(16, 'badge', 'Susan Parrish', 'Software Developer', 'susan.parrish@yourcompany.com', null, null, null, 'img/persona-female04-oracle.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(17, 'badge', 'Johnnathan Brie', 'Team Lead', 'johnathan.b@yourcompany.com', null, null, null, 'img/persona-male04-apex.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(18, 'badge', 'Diana Flores', 'CFO', 'diana.flores@yourcompany.com', null, null, null, 'img/persona-female03.png', null, null);

update EBA_UT_chart_tasks
   set start_date = start_date + (SYSDATE - TO_DATE('01012012','MMDDYYYY')),
       end_date = end_date + (SYSDATE - TO_DATE('01012012','MMDDYYYY'))
/

