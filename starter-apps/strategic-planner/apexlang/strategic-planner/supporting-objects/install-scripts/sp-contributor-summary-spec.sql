create or replace package sp_contributor_summary
as

function generate (
    p_team_member_id     in number,
    p_show_activities    in varchar2 default 'Y',
    p_show_projects      in varchar2 default 'Y',
    p_show_approvals     in varchar2 default 'N',  -- based on build option in app
    p_links              in varchar2 default 'NONE',
    p_include_title_yn   in varchar2 default 'Y',
    p_apex_session       in varchar2 default null )
    return clob;

function project_exceptions (
    p_team_member_id     in number,
    p_links              in varchar2 default 'NONE',
    p_include_title_yn   in varchar2 default 'Y',
    p_apex_session       in varchar2 default null )
    return clob;

procedure project_changes (
    p_team_member_id     in number,
    p_frequency          in varchar2, -- WEEKLY, WEEKDAYS
    p_links              in varchar2 default 'NONE',
    p_apex_session       in varchar2 default null,
    p_exclude_user_yn    in varchar2 default 'N',
    p_changes_yn         out  varchar2,  -- if N changes, no email
    p_change_summary     out  clob );

end sp_contributor_summary;
/