create or replace package sp_approvals
as

------------------
-- called by UI
------------------

procedure submit_for_approval (
    p_project_id           in  number,
    p_approval_type_id     in  number,
    p_team_member_id       in  number,
    p_justification        in  varchar2,
    p_project_approval_id  out number );

procedure clarify (
    p_project_approval_chain_id  number,
    p_team_member_id             number,
    p_response                   varchar2 );

procedure withdraw (
    p_project_approval_id  in  number,
    p_team_member_id       in  number );

function approval_pending (
    p_project_id      in  number,
    p_team_member_id  in  number
) return number;

function more_info_pending (
    p_project_id      in  number,
    p_team_member_id  in  number
) return number;

function approval_pending_cnt (
    p_team_member_id  in  number
) return number;

function more_info_pending_cnt (
    p_team_member_id  in  number
) return number;


---------------------------------
-- only used within workflow
---------------------------------

procedure identify_next_reviewer (
    p_project_approval_id        in   number,
    p_project_approval_chain_id  out  number,
    p_reviewer_email             out  varchar2,
    p_reviewer_tm_id             out  number );

procedure approve (
    p_project_approval_chain_id  in  number );

procedure reject (
    p_project_approval_chain_id  in  number );

-- for approve and reject, the comments are not available to the task until after the action
procedure add_comments (
    p_project_approval_chain_id  in  number,
    p_comments                   in  varchar2 );

procedure request_clarification (
    p_project_approval_chain_id  in  number,
    p_comments                   in  varchar2 );

procedure approve_request (
    p_project_approval_id  in  number );

end sp_approvals;
/