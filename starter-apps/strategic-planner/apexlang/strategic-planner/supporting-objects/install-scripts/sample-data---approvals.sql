begin

sp_globals.g_audit_this := FALSE;

insert into sp_approval_types
    (id, display_seq, approval_type, description, active_yn)
    values
    (1, 1, 'Development', 'Approval to begin development. This approval should be obtained when a developer is ready to begin development.', 'Y');

insert into sp_initiative_approvals
    (id, initiative_id, approval_type_id, active_yn)
    values
    (1, 1, 1, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (1, 1, 14, 1, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (2, 1, 16, 2, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (3, 1, 18, 3, 'Y');

insert into sp_initiative_approvals
    (id, initiative_id, approval_type_id, active_yn)
    values
    (2, 2, 1, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (21, 2, 14, 1, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (22, 2, 18, 2, 'Y');

insert into sp_initiative_approvals
    (id, initiative_id, approval_type_id, active_yn)
    values
    (3, 3, 1, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (31, 3, 14, 1, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (32, 3, 16, 2, 'Y');
insert into sp_initiative_approval_chain
    (id, initiative_approval_id, team_member_id, approval_seq, active_yn)
    values
    (33, 3, 18, 3, 'Y');


insert into sp_project_approvals
    (id, approval_type_id, project_id, submitted_by_team_member_id, justification, 
     initiative_approval_id, status, submitted, updated, updated_by)
    values
    (1, 1, 8504, 7, 'Specs are done, I am ready to code.',
     1, 'APPROVED', sp_util.fix_demo_dates(sysdate-70), sp_util.fix_demo_dates(sysdate-69), upper('Ethan.Caldwell@acme.com'));
insert into sp_project_approval_chain
    (id, project_approval_id, team_member_id, status, last_status_on, final_yn, 
     created, created_by, updated, updated_by)
    values
    (1, 1, 14, 'APPROVED', sp_util.fix_demo_dates(sysdate-67), 'Y', 
     sp_util.fix_demo_dates(sysdate-70), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-67), upper('Chloe.Whitaker@acme.com'));
insert into sp_project_approval_chain
    (id, project_approval_id, team_member_id, status, last_status_on, final_yn, 
     created, created_by, updated, updated_by)
    values
    (2, 1, 16, 'APPROVED', sp_util.fix_demo_dates(sysdate-68), 'Y',
     sp_util.fix_demo_dates(sysdate-67), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-68), upper('Maya.Patel@acme.com'));
insert into sp_project_approval_chain
    (id, project_approval_id, team_member_id, status, last_status_on, final_yn, 
     created, created_by, updated, updated_by)
    values
    (3, 1, 17, 'APPROVED', sp_util.fix_demo_dates(sysdate-69), 'Y',
     sp_util.fix_demo_dates(sysdate-68), upper('Maya.Patel@acme.com'), sp_util.fix_demo_dates(sysdate-69), upper('Ethan.Caldwell@acme.com'));

sp_globals.g_audit_this := TRUE;

exception
    when others then
        sp_globals.g_audit_this := TRUE;
end;