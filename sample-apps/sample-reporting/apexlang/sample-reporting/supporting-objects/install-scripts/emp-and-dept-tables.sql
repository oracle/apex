create table eba_demo_ir_dept (
    deptno  NUMBER(2) not null
                        constraint eba_demo_ir_dept_pk
                        primary key,
    dname   VARCHAR2(14),
    loc     VARCHAR2(13)
)
/

create table eba_demo_ir_emp (
    empno     NUMBER(4) not null
                          constraint eba_demo_ir_emp_pk
                          primary key,
    ename     VARCHAR2(10),
    job       VARCHAR2(9),
    mgr       NUMBER(4),
    hiredate  DATE,
    sal       NUMBER(7),
    comm      NUMBER(7),
    deptno    NUMBER(2)
)
/

alter table eba_demo_ir_emp add foreign key (MGR) references eba_demo_ir_emp (EMPNO) ENABLE
/

create index eba_demo_ir_emp_1 ON eba_demo_ir_emp (MGR)
/
    
create index eba_demo_ir_emp_2 ON eba_demo_ir_emp (DEPTNO)
/
