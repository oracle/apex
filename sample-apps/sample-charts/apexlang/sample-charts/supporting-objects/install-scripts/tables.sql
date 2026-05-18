REM eba_demo_chart_projects
create table  eba_demo_chart_projects (
    id                   number         not null
                                        constraint eba_demo_charts_proj_pk
                                        primary key,
    project              varchar2(30)   not null,
    row_version_number   number,
    created              timestamp(6) with time zone,
    created_by           varchar2(255),
    updated              timestamp(6) with time zone,
    updated_by           varchar2(255)
   )
/

REM eba_demo_chart_tasks    
create table  eba_demo_chart_tasks (
    id                       number         not null
                                            constraint eba_demo_chart_tasks_pk
                                            primary key,
    project                  number         constraint eba_demo_chart_tasks_fk
                                            references eba_demo_chart_projects on delete cascade,
    parent_task              number,
    task_name                varchar2(255),
    row_version_number       number,
    start_date               date,
    end_date                 date,
    status                   varchar2(30),
    assigned_to              varchar2(30),
    cost                     number,
    budget                   number,
    created                  timestamp(6) with time zone,
    created_by               varchar2(255),
    updated                  timestamp(6) with time zone,
    updated_by               varchar2(255)
   )
/

create index eba_demo_chart_tasks_idx1 on eba_demo_chart_tasks (project)
/
    
REM eba_demo_chart_stocks    
create table eba_demo_chart_stocks (
    id                     number       not null
                                        constraint eba_demo_chart_stocks_pk
                                        primary key,
    row_version_number     number,
    stock_code             varchar2(4),
    stock_name             varchar2(130),
    pricing_date           date,
    pricing_timestamp      timestamp(6),
    pricing_timestamp_tz   timestamp(6) with time zone,
    opening_val            number,
    high                   number,
    low                    number,
    closing_val            number,
    volume                 number,
    created                timestamp(6) with time zone,
    created_by             varchar2(255),
    updated                timestamp(6) with time zone,
    updated_by             varchar2(255)    
   )
/
    
REM eba_demo_chart_population    
create table eba_demo_chart_population (
    id                  number          not null
                                        constraint eba_demo_chart_pop_pk
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

REM eba_demo_chart_dept
create table eba_demo_chart_dept (
    deptno  NUMBER(2,0) not null
                        constraint eba_demo_chart_dept_pk
                        primary key, 
    dname   VARCHAR2(14 BYTE), 
    loc     VARCHAR2(13 BYTE)
)
/
REM eba_demo_chart_emp
create table eba_demo_chart_emp (
    empno     NUMBER(4,0) not null
                          constraint eba_demo_chart_emp_pk
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

alter table eba_demo_chart_emp add foreign key (MGR) references eba_demo_chart_emp (EMPNO) ENABLE
/

create index eba_demo_chart_emp_1 ON eba_demo_chart_emp (MGR)
/
    
create index eba_demo_chart_emp_2 ON eba_demo_chart_emp (DEPTNO)
/

REM eba_demo_chart_bball
create table eba_demo_chart_bball (
    id                  number          not null
                                        constraint eba_demo_chart_bball_pk
                                        primary key,
    city                varchar2(20),
    team                varchar2(30), 
    conference          varchar2(5), 
    wins                number,
    created             timestamp(6) with time zone,
    created_by          varchar2(255),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255)
   )
/

create index eba_demo_chart_bball_1 ON eba_demo_chart_bball (WINS)
/

Rem eba_demo_chart_products
create table eba_demo_chart_products (  
    product_id            number       not null
                                       constraint eba_demo_chart_prod_pk
                                       primary key,
    product_name          varchar2(50),
    product_description   varchar2(2000),
    list_price            number(8,2),
    created               timestamp(6) with time zone,
    created_by            varchar2(255),
    updated               timestamp(6) with time zone,
    updated_by            varchar2(255)
   )
/

create index eba_demo_chart_prod_1 ON eba_demo_chart_products (list_price)
/

create table eba_demo_chart_orders (  
    order_id            number          not null
                                        constraint eba_demo_chart_order_pk
                                        primary key,
    product_id          number          constraint eba_demo_chart_order_fk
                                        references eba_demo_chart_products on delete cascade,
    quantity            number(8,0),
    customer            varchar2(30),
    sales_date          date,
    created             timestamp(6) with time zone,
    created_by          varchar2(255),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255)
   )
/

create index eba_demo_chart_ord_1 ON eba_demo_chart_orders (quantity)
/

create index eba_demo_chart_ord_2 ON eba_demo_chart_orders (product_id)
/

create table eba_demo_chart_stats (
    id                  number         not null
                                       constraint eba_demo_chart_stats_pk
                                       primary key,
    name                varchar2(2),
    country             varchar2(30),
    employee            number,
    employer            number,
    total               number,
    created             timestamp(6) with time zone,
    created_by          varchar2(255),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255)
   )
/

create index eba_demo_chart_stats_1 ON eba_demo_chart_stats (employee)
/

create index eba_demo_chart_stats_2 ON eba_demo_chart_stats (employer)
/

create index eba_demo_chart_stats_3 ON eba_demo_chart_stats (total)
/

REM eba_demo_chart_grades
create table eba_demo_chart_grades (
    id      number,
    course  varchar2(10),
    schoola number,
	schoolb number not null enable,
	schoolc number,
    created                  timestamp(6) with time zone,
    created_by               varchar2(255),
    updated                  timestamp(6) with time zone,
    updated_by               varchar2(255)
   )
/

REM eba_demo_chart_samples
create table eba_demo_chart_samples (
    sample1      number,
    sample2      number,
    sample3      number,
    sample4      number,
    sample5      number
   )
/

REM eba_demo_chart_sample_names
create table eba_demo_chart_sample_names (
    id            number not null 
                  constraint eba_demo_samples_pk 
                  primary key,
    sample_name   varchar2(30) not null enable,
    sample_date   date,
    created       timestamp(6) with time zone,
    created_by    varchar2(255),
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255)
   )
/

REM eba_demo_chart_sample_data
create table eba_demo_chart_sample_data (
    id            number not null 
                  constraint eba_demo_sample_data_pk 
                  primary key,
    sample_id     number constraint eba_demo_sample_fk
                  references eba_demo_chart_sample_names on delete cascade,
    response      number,
    created       timestamp(6) with time zone,
    created_by    varchar2(255),
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255)
   )
/

create index eba_demo_chart_sample_idx1 on eba_demo_chart_sample_data (sample_id)
/