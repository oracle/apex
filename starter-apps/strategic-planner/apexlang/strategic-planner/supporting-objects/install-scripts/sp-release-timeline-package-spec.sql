create or replace package sp_release_timeline
as

function show_week (
    p_release_id           in number,
    p_show_past_yn         in varchar2 default 'N',
    p_exclude_complete_yn  in varchar2 default 'N')
    return clob;

function release_exceptions (
    p_release_id               in number,
    p_links                    in varchar2 default 'NONE',
    p_apex_session             in varchar2 default null )
    return clob;

end sp_release_timeline;
/