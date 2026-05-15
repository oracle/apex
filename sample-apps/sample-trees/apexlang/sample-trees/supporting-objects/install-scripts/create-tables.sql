REM eba_demo_tree_projects
create table  eba_demo_tree_projects (
    proj_id              number         not null
                                        constraint eba_demo_tree_proj_pk
                                        primary key,
    project_name         varchar2(4000) not null,
    start_date           date,
    estimated_completion date,
    completion_date      date,
    status               number,
    description          clob,
    row_version_number   number,
    created              timestamp(6) with time zone,
    created_by           varchar2(255),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255)
   )
/

REM eba_demo_tree_task    
create table  eba_demo_tree_task (
    task_id                  number         not null
                                            constraint eba_demo_tree_task_pk
                                            primary key,
    proj_id                  number         not null
                                            constraint eba_demo_tree_task_fk
                                            references eba_demo_tree_projects on delete cascade,
    task_name                varchar2(4000),
    task_start               date,
    task_est_comp            date,
    task_comp                date,
    task_priority            number,
    task_status              number,
    task_assign              number,
    task_desc                clob,
    row_version_number       number,
    created                  timestamp(6) with time zone,
    created_by               varchar2(255),
    updated                  timestamp(6) with time zone,
    updated_by               varchar2(255)
   )
/

create index eba_demo_tree_task_idx1 on eba_demo_tree_task (proj_id);
/

REM eba_demo_tree_subtask    
create table eba_demo_tree_subtask (
    sub_id               number         not null,
    proj_id              number         not null,
    task_id              number         not null,
    sub_name             varchar2(4000),
    sub_start            date,
    sub_est_comp         date,
    sub_comp             date,
    sub_priority         varchar2(400),
    sub_status           varchar2(400),
    sub_assign           varchar2(400),
    sub_desc             clob,
    row_version_number   number,
    created              timestamp(6) with time zone,
    created_by           varchar2(255),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255),
    constraint eba_demo_tree_subtask_pk primary key (sub_id, proj_id, task_id)
   )
/    

create index eba_demo_tree_subtask_idx1 on eba_demo_tree_subtask (task_id);
/

create index eba_demo_tree_subtask_idx2 on eba_demo_tree_subtask (proj_id);
/    
    
REM eba_demo_tree_stocks    
create table eba_demo_tree_stocks (
    id                  number       not null
                                     constraint eba_demo_tree_stocks_pk
                                     primary key,
    row_version_number  number,
    stock_code          varchar2(4),
    stock_name          varchar2(130),
    pricing_date        date,
    opening_val         number,
    high                number,
    low                 number,
    closing_val         number,
    created             timestamp(6) with time zone,
    created_by          varchar2(255),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255)    
   )
/
    
REM eba_demo_tree_population    
create table eba_demo_tree_population (
    id                  number          not null
                                        constraint eba_demo_tree_pop_pk
                                        primary key,
    row_version_number  number,
    state_name          varchar2(100),
    state_code          varchar2(2),
    population          number,
    region              number,
    created             timestamp(6) with time zone,
    created_by          varchar2(255),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255)    
   )
/

REM eba_demo_tree_dept
create table eba_demo_tree_dept (
    deptno  NUMBER(2,0) not null
                        constraint eba_demo_tree_dept_pk
                        primary key,
    dname   VARCHAR2(14 BYTE),
    loc     VARCHAR2(13 BYTE)
)
/
REM eba_demo_tree_emp
create table eba_demo_tree_emp (
    empno     NUMBER(4,0) not null
                          constraint eba_demo_tree_emp_pk
                          primary key,
    ename     VARCHAR2(10 BYTE),
    job       VARCHAR2(9 BYTE),
    mgr       NUMBER(4,0),
    hiredate  DATE,
    sal       NUMBER(7,2),
    comm      NUMBER(7,2),
    deptno    NUMBER(2,0)
)
/

alter table eba_demo_tree_emp add foreign key (MGR) references eba_demo_tree_emp (EMPNO) ENABLE
/

create index eba_demo_tree_emp_1 ON eba_demo_tree_emp (MGR)
/
    
create index eba_demo_tree_emp_2 ON eba_demo_tree_emp (DEPTNO)
/

create table eba_demo_tree_proj_files (
    id                      number         not null,
    row_version_number      number         not null,
    project_id              number         not null,
    --
    file_name               varchar2(512),
    file_mimetype           varchar2(512),
    file_charset            varchar2(512),
    file_lastupd            date,
    file_blob               blob,
    file_comments           varchar2(4000),
    tags                    varchar2(4000),
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255)
   )
/
alter table eba_demo_tree_proj_files
   add constraint eba_demo_tree_proj_files_pk
       primary key (id)
/
alter table eba_demo_tree_proj_files
   add constraint eba_demo_tree_files_fk
       foreign key (project_id)
       references eba_demo_tree_projects (proj_id) on delete cascade
/

create index eba_demo_tree_files_idx1 on eba_demo_tree_proj_files (project_id)
/