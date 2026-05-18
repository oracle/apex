CREATE OR REPLACE FORCE VIEW  "EBA_DEMO_TREE_DEF_ST_CODES" ("PCT_COMPLETE", "STATUS_NAME") AS 
select 0   pct_complete, wwv_flow_lang.system_message('NOT_STARTED')                  status_name from dual union all
select 10  pct_complete, wwv_flow_lang.system_message('UNDER_CONSIDERATION')          status_name from dual union all
select 20  pct_complete, wwv_flow_lang.system_message('APPROVED')                     status_name from dual union all
select 30  pct_complete, wwv_flow_lang.system_message('ASSIGNED')                     status_name from dual union all
select 40  pct_complete, wwv_flow_lang.system_message('WORK_INITIATED')               status_name from dual union all
select 50  pct_complete, wwv_flow_lang.system_message('WORK_PROGRESSING')             status_name from dual union all
select 60  pct_complete, wwv_flow_lang.system_message('SIGNIFICANT_PROGRESS')         status_name from dual union all
select 70  pct_complete, wwv_flow_lang.system_message('DEMONSTRABLE')                 status_name from dual union all
select 80  pct_complete, wwv_flow_lang.system_message('FUNCTIONALLY_COMPLETE')        status_name from dual union all
select 90  pct_complete, wwv_flow_lang.system_message('INTEGRATION_COMPLETE')         status_name from dual union all
select 100 pct_complete, wwv_flow_lang.system_message('COMPLETE')                     status_name from dual
/