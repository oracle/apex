----------------------------------------------------------------
-- Remove Procedure
----------------------------------------------------------------
drop procedure eba_demo_ig_data;
----------------------------------------------------------------
-- Remove Tables
---------------------------------------------------------------
drop table eba_demo_ig_emp    cascade constraints purge;
drop table eba_demo_ig_dept   cascade constraints purge;
drop table eba_demo_ig_people cascade constraints purge;

----------------------------------------------------------------
-- Remove sequences
----------------------------------------------------------------
drop sequence eba_demo_ig_dept_seq;
drop sequence eba_demo_ig_emp_seq;
drop sequence eba_demo_ig_people_seq;

----------------------------------------------------------------
-- Remove Oracle Text objects
----------------------------------------------------------------
begin
    eba_demo_ig_text_pkg.drop_text_preferences;
end;
/

drop package eba_demo_ig_text_pkg;
  