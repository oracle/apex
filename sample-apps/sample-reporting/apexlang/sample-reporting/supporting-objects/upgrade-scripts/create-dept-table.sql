create table eba_demo_ir_dept (
    deptno  NUMBER(2) not null
                        constraint eba_demo_ir_dept_pk
                        primary key,
    dname   VARCHAR2(14),
    loc     VARCHAR2(13)
)
/
insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
insert into eba_demo_ir_dept (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');

commit;

