create table eba_demo_card_dept (
    deptno    number not null constraint eba_demo_card_dept_pk primary key,
    dname     varchar2(50),
    loc       varchar2(255) );

create table eba_demo_card_emp (
    empno            number not null constraint eba_demo_card_emp_pk  primary key,
    ename            varchar2(255),
    job              varchar2(255),
    mgr              number,
    hiredate         date,
    sal              number,
    comm             number,
    deptno           number,
    profile_image    blob,
    mimetype         varchar2(255),
    filename         varchar2(400),
    image_last_update date,
    tags             varchar2(4000) );

alter table eba_demo_card_emp add constraint eba_demo_card_emp_mgr_fk foreign key (mgr)
      references eba_demo_card_emp (empno) enable;

alter table eba_demo_card_emp add constraint eba_demo_card_emp_dept_fk foreign key (deptno)
      references eba_demo_card_dept (deptno) enable;
