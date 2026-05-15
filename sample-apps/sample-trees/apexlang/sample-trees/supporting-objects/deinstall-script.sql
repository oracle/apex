drop procedure eba_demo_tree_data;
drop function varchar2_to_blob;
REM Drop tables
drop table eba_demo_tree_subtask cascade constraints;
drop table eba_demo_tree_task cascade constraints;
drop table eba_demo_tree_stocks cascade constraints;
drop table eba_demo_tree_emp cascade constraints;
drop table eba_demo_tree_dept cascade constraints;
drop table eba_demo_tree_population cascade constraints;
drop table eba_demo_tree_proj_files cascade constraints;
drop table eba_demo_tree_projects cascade constraints;
drop view eba_demo_tree_def_st_codes;
