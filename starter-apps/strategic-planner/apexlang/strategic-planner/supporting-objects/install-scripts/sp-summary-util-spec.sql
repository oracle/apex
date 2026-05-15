create or replace package sp_summary_util as

g_hrs_to_replace  number := 6;

function ai_summary_info (
    p_type  in  varchar2 )
    return clob;

-- can be run from APEX App UI (not SQL Commands) 
--  or from within a job (if session context is set)
procedure generate_project_summary (
    p_project_id    in   number,
    p_summary_type  in   varchar2,
    p_ai_id         out  number,
    p_error_yn      out  varchar2 );

-- run as a job, once a week (cannot be run via SQL Commands)
procedure generate_project_summaries;

-- TEMP - WILL BE REMOVED
procedure summarize_release (
    p_release_id  in   number,
    p_summary     out  clob );

-- can be run from APEX App UI (not SQL Commands) or from within a job (if session context is set)
procedure generate_release_summary (
    p_release_id    in   number,
    p_error_yn      out  varchar2 );


end sp_summary_util;
/