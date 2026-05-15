create or replace package body sp_approvals
as

procedure submit_for_approval (
    p_project_id           in  number,
    p_approval_type_id     in  number,
    p_team_member_id       in  number,
    p_justification        in  varchar2,
    p_project_approval_id  out number )
is
begin
    for c1 in (
        select i.id initiative_approval_id,
               (select count(*) from sp_initiative_approval_chain
                 where initiative_approval_id = i.id
                   and active_yn = 'Y') approvers_cnt
          from sp_projects p,
               sp_initiative_approvals i
         where p.id = p_project_id
           and p.initiative_id = i.initiative_id
           and i.approval_type_id = p_approval_type_id
    ) loop
        insert into sp_project_approvals
            (approval_type_id, project_id, submitted_by_team_member_id, justification, initiative_approval_id)
        values
            (p_approval_type_id, p_project_id, p_team_member_id, p_justification, c1.initiative_approval_id)
        returning id into p_project_approval_id;

        commit;

        if c1.initiative_approval_id is null then 
            -- no approval chain
            update sp_project_approvals
               set status = 'NO-APPROVAL'
             where id = p_project_approval_id;
        elsif c1.approvers_cnt = 0 then 
            -- no approvers
            update sp_project_approvals
               set status = 'NO-APPROVERS'
             where id = p_project_approval_id;
        else 
            -- if submittor is in approval chain, start after that person
            for c2 in (
                select id
                  from sp_initiative_approval_chain
                 where initiative_approval_id = c1.initiative_approval_id
                   and (team_member_id = p_team_member_id or 
                        (alternate_team_member_id = p_team_member_id and
                         nvl(alternate_start_date,sysdate) <= sysdate and
                         nvl(alternate_end_date,sysdate)+1 > sysdate) )
                   and active_yn = 'Y'
            ) loop
                insert into sp_project_approval_chain
                    (project_approval_id, initiative_approval_chain_id, team_member_id, status)
                values
                    (p_project_approval_id, c2.id, p_team_member_id, 'APPROVED');
                commit;
            end loop;
        end if;
    end loop;
end submit_for_approval;


procedure clarify (
    p_project_approval_chain_id  number,
    p_team_member_id             number,
    p_response                   varchar2 )
is
    l_project_approval_id  number;
begin
    insert into sp_project_approval_chain
        (project_approval_id, initiative_approval_chain_id, 
         team_member_id, comments,
         response, response_by_team_member_id,
         status, last_status_on,
         final_yn)
    select project_approval_id, initiative_approval_chain_id,  
           team_member_id, comments, 
           p_response, p_team_member_id,
           'CLARIFICATION-REQUESTED', sysdate,
           'N'
      from sp_project_approval_chain
     where id = p_project_approval_chain_id;  

    update sp_project_approval_chain
       set status = 'PENDING',
           last_status_on = sysdate,
           comments = null
     where id = p_project_approval_chain_id
     returning project_approval_id into l_project_approval_id;

     update sp_project_approvals
        set status = 'PENDING'
      where id = l_project_approval_id;

end clarify;


procedure withdraw (
    p_project_approval_id  in  number,
    p_team_member_id       in  number )
is
    l_project_approval_id  number;
begin
    update sp_project_approvals
       set status = 'WITHDRAWN',
           withdrawn_by_team_member_id = p_team_member_id
     where id = p_project_approval_id;

    update sp_project_approval_chain
       set final_yn = 'N'
     where project_approval_id = p_project_approval_id
       and final_yn != 'N';

    -- removing fk to allow for approval chain changes over time (team_member is always known)
    update sp_project_approval_chain
       set initiative_approval_chain_id = null
     where project_approval_id = p_project_approval_id
       and initiative_approval_chain_id is not null;

end withdraw;


function approval_pending (
    p_project_id      in  number,
    p_team_member_id  in  number
) return number
is
begin
    for c1 in (
        select c.id
          from sp_project_approval_chain c,
               sp_project_approvals a
         where a.id = c.project_approval_id
           and a.project_id = p_project_id
           and c.team_member_id = p_team_member_id
           and c.status = 'PENDING'
           and c.final_yn = 'Y'
    ) loop
        return c1.id;
    end loop;

    return null;
end approval_pending;


function more_info_pending (
    p_project_id      in  number,
    p_team_member_id  in  number
) return number
is
begin
    for c1 in (
        select c.id
          from sp_project_approval_chain c,
               sp_project_approvals a
         where a.id = c.project_approval_id
           and a.project_id = p_project_id
           and c.status = 'CLARIFICATION-REQUESTED'
           and a.status = 'CLARIFICATION-REQUESTED'
           and c.final_yn = 'Y'
           and a.submitted_by_team_member_id = p_team_member_id
    ) loop
        return c1.id;
    end loop;

    return null;
end more_info_pending;


function approval_pending_cnt (
    p_team_member_id  in  number
) return number
is
begin
    for c1 in (
        select count(*) cnt
          from sp_project_approval_chain c,
               sp_project_approvals a
         where a.id = c.project_approval_id
           and c.team_member_id = p_team_member_id
           and c.status = 'PENDING'
           and c.final_yn = 'Y'
    ) loop
        return c1.cnt;
    end loop;
end approval_pending_cnt;


function more_info_pending_cnt (
    p_team_member_id  in  number
) return number
is
begin
    for c1 in (
        select count(*) cnt
          from sp_project_approval_chain c,
               sp_project_approvals a
         where a.id = c.project_approval_id
           and c.status = 'CLARIFICATION-REQUESTED'
           and a.status = 'CLARIFICATION-REQUESTED'
           and c.final_yn = 'Y'
           and a.submitted_by_team_member_id = p_team_member_id
    ) loop
        return c1.cnt;
    end loop;
end more_info_pending_cnt;


-----------------------------------------------

procedure identify_next_reviewer (
    p_project_approval_id        in   number,
    p_project_approval_chain_id  out  number,
    p_reviewer_email             out  varchar2,
    p_reviewer_tm_id             out  number )
is
    l_project_approval_chain_id  number;
begin
    for c1 in (
        select initiative_approval_chain_id, team_member_id,
               (select email from sp_team_members where id = team_member_id) reviewer_email
          from (
        select iac.id initiative_approval_chain_id, 
               case when iac.alternate_team_member_id is not null and 
                         nvl(iac.alternate_start_date,sysdate) <= sysdate and 
                         nvl(iac.alternate_end_date+1,sysdate) > sysdate
                    then iac.alternate_team_member_id
                    else iac.team_member_id
                    end team_member_id
          from sp_project_approvals pa,
               sp_initiative_approval_chain iac
         where pa.id =  p_project_approval_id
           and pa.initiative_approval_id = iac.initiative_approval_id
           and iac.active_yn = 'Y'
           and iac.id not in (select initiative_approval_chain_id
                                from sp_project_approval_chain
                               where project_approval_id = pa.id
                                 and status = 'APPROVED'
                                 and final_yn = 'Y')
           and iac.approval_seq > nvl((select max(iac2.approval_seq)
                                         from sp_project_approval_chain pac,
                                              sp_initiative_approval_chain iac2
                                        where pac.initiative_approval_chain_id = iac2.id
                                          and pac.project_approval_id = pa.id
                                          and pac.status = 'APPROVED'
                                          and pac.final_yn = 'Y'),-100)
         order by iac.approval_seq
         )
    ) loop
        insert into sp_project_approval_chain (project_approval_id, initiative_approval_chain_id, team_member_id)
        values (p_project_approval_id, c1.initiative_approval_chain_id, c1.team_member_id)
        returning id into l_project_approval_chain_id;
        commit;

        p_project_approval_chain_id := l_project_approval_chain_id;
        p_reviewer_email := c1.reviewer_email;
        p_reviewer_tm_id := c1.team_member_id;

        exit;  -- to just get the next stop
    end loop;
end identify_next_reviewer;


procedure approve (
    p_project_approval_chain_id  in  number )
is
begin
    update sp_project_approval_chain
       set status = 'APPROVED',
           last_status_on = sysdate
     where id = p_project_approval_chain_id;
end approve;


procedure reject (
    p_project_approval_chain_id  in  number )
is
    l_project_approval_id  number;
begin
    update sp_project_approval_chain
       set status = 'REJECTED',
           last_status_on = sysdate
     where id = p_project_approval_chain_id
 returning project_approval_id into l_project_approval_id;

    update sp_project_approvals
       set status = 'REJECTED'
     where id = l_project_approval_id;

    -- removing fk to allow for approval chain changes over time (team_member is always known)
    update sp_project_approval_chain
       set initiative_approval_chain_id = null
     where project_approval_id = l_project_approval_id
       and initiative_approval_chain_id is not null;
end reject;


procedure add_comments (
    p_project_approval_chain_id  in  number,
    p_comments                   in  varchar2 )
is
begin
    update sp_project_approval_chain
       set comments = p_comments
     where id = p_project_approval_chain_id;
end add_comments;


procedure request_clarification (
    p_project_approval_chain_id  in  number,
    p_comments                   in  varchar2 )
is
    l_project_approval_id  number;
begin
    update sp_project_approval_chain
       set status = 'CLARIFICATION-REQUESTED',
           comments = p_comments,
           last_status_on = sysdate
     where id = p_project_approval_chain_id
     returning project_approval_id into l_project_approval_id;

    update sp_project_approvals
       set status = 'CLARIFICATION-REQUESTED'
     where id = l_project_approval_id;
end request_clarification;


procedure approve_request (
    p_project_approval_id  in  number )
is
begin
    update sp_project_approvals 
       set status = 'APPROVED'
     where id = p_project_approval_id;

    -- removing fk to allow for approval chain changes over time (team_member is always known)
    update sp_project_approval_chain
       set initiative_approval_chain_id = null
     where project_approval_id = p_project_approval_id
       and initiative_approval_chain_id is not null;
end approve_request;

end sp_approvals;
/