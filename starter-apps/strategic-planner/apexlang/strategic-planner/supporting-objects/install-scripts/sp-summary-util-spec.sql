create or replace package sp_summary_util as

g_hrs_to_replace  number := 6;

function ai_summary_info (
    p_type  in  varchar2 )
    return clob;

-- used for generative ai agent
function generate_project_md (
    p_project_id   in  number,
    p_app_user_id  in  number )
    return clob;

-- used in UI for getting high-level project details in markdown format
function generate_project_high_level (
    p_project_id  in  number )
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

-- can be run from APEX App UI (not SQL Commands) or from within a job (if session context is set)
procedure generate_release_summary (
    p_release_id  in   number,
    p_error_yn    out  varchar2 );


end sp_summary_util;
/