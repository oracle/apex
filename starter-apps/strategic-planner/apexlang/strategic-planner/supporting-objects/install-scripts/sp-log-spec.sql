create or replace package sp_log
as 
procedure log_interaction (p_project_id in number);
function  log_and_summarize (p_project_id in number) return varchar2;
end sp_log;
/