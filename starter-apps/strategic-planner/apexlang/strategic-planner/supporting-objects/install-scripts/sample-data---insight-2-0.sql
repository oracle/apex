begin

sp_globals.g_audit_this := FALSE;

insert all
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8501,3,'Real-Time Recommendation Events',1,'Y',1,3,sp_util.fix_demo_dates(sysdate+24),80,1,'XL','A','New real-time recommendation event processing.','insightiq,ai,recommendations,realtime',30,sp_util.fix_demo_dates(sysdate-55),'SCOTT.TIGER@ACME.COM',sp_util.fix_demo_dates(sysdate-2),'SCOTT.TIGER@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8502,3,'Recommendation Explanation Service',3,'Y',2,3,sp_util.fix_demo_dates(sysdate+22),70,1,'L','A','New customer-facing recommendation explanations.','insightiq,ai,recommendations',30,sp_util.fix_demo_dates(sysdate-54),'ELENA.VARGAS@ACME.COM',sp_util.fix_demo_dates(sysdate-3),'ELENA.VARGAS@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8503,3,'Forecast Scenario Planning',5,'Y',2,3,sp_util.fix_demo_dates(sysdate+25),70,1,'XL','A','Expands demand forecasting with scenario planning.','insightiq,ai,forecasting',30,sp_util.fix_demo_dates(sysdate-52),'NAOMI.CHEN@ACME.COM',sp_util.fix_demo_dates(sysdate-4),'NAOMI.CHEN@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8504,1,'Customer Journey Funnel Builder',7,'Y',2,3,sp_util.fix_demo_dates(sysdate+21),80,1,'L','A','New self-service journey funnel configuration.','insightiq,customer-systems,journey',1,sp_util.fix_demo_dates(sysdate-50),'CALEB.FOSTER@ACME.COM',sp_util.fix_demo_dates(sysdate-1),'CALEB.FOSTER@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8505,3,'Support Intent Model Expansion',9,'Y',1,3,sp_util.fix_demo_dates(sysdate+26),60,2,'XL','A','Expands supported intents and routing confidence.','insightiq,ai,support',30,sp_util.fix_demo_dates(sysdate-48),'ANDRE.COLLINS@ACME.COM',sp_util.fix_demo_dates(sysdate-5),'ANDRE.COLLINS@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8506,1,'Data Quality Remediation Workflow',11,'Y',2,3,sp_util.fix_demo_dates(sysdate+19),70,1,'L','A','Adds remediation assignments for data-quality alerts.','insightiq,analytics,data-quality,workflow',6,sp_util.fix_demo_dates(sysdate-46),'VICTOR.RAMIREZ@ACME.COM',sp_util.fix_demo_dates(sysdate-2),'VICTOR.RAMIREZ@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8507,1,'Executive Dashboard Drill Through',13,'Y',3,3,sp_util.fix_demo_dates(sysdate+18),90,1,'M','A','Expands executive dashboards with detail drill-through.','insightiq,analytics,dashboards',6,sp_util.fix_demo_dates(sysdate-44),'ISAAC.TURNER@ACME.COM',sp_util.fix_demo_dates(sysdate-1),'ISAAC.TURNER@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8508,3,'Segmentation Model Governance',15,'Y',2,3,sp_util.fix_demo_dates(sysdate+23),60,2,'L','A','New governance controls for segmentation models.','insightiq,ai,segmentation,governance',30,sp_util.fix_demo_dates(sysdate-42),'DOMINIC.REYES@ACME.COM',sp_util.fix_demo_dates(sysdate-6),'DOMINIC.REYES@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8509,1,'Experiment Results Comparison',17,'Y',3,3,sp_util.fix_demo_dates(sysdate+17),80,1,'M','A','Adds side-by-side experiment result comparison.','insightiq,analytics,experimentation',6,sp_util.fix_demo_dates(sysdate-40),'ETHAN.CALDWELL@ACME.COM',sp_util.fix_demo_dates(sysdate-1),'ETHAN.CALDWELL@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8510,1,'Analytics Data Retention Controls',19,'Y',1,3,sp_util.fix_demo_dates(sysdate+20),70,1,'L','A','New configurable data retention and purge controls.','insightiq,security,data-retention',4,sp_util.fix_demo_dates(sysdate-38),'LUCAS.BENNETT@ACME.COM',sp_util.fix_demo_dates(sysdate-2),'LUCAS.BENNETT@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8511,1,'Dashboard Accessibility Improvements',21,'Y',2,3,sp_util.fix_demo_dates(sysdate+16),90,1,'M','A','Improves dashboard keyboard navigation and screen-reader support.','insightiq,accessibility,dashboards',3,sp_util.fix_demo_dates(sysdate-36),'ZOE.MATTHEWS@ACME.COM',sp_util.fix_demo_dates(sysdate-1),'ZOE.MATTHEWS@ACME.COM')
 into sp_projects (id,initiative_id,project,owner_id,active_yn,priority_id,release_id,target_complete,pct_complete,status_id,project_size,status_scale,description,tags,focus_area_id,created,created_by,updated,updated_by) values (8512,1,'Analytics Export Defect Fixes',20,'Y',3,3,sp_util.fix_demo_dates(sysdate+15),90,1,'S','A','Fixes export formatting and timezone calculation defects.','insightiq,analytics,export,bug-fix',6,sp_util.fix_demo_dates(sysdate-34),'AIDEN.CLARKE@ACME.COM',sp_util.fix_demo_dates(sysdate-1),'AIDEN.CLARKE@ACME.COM')
select 1 from dual;

insert into sp_project_contributors (id,project_id,team_member_id,responsibility_id,responsibility,tags,created,created_by,updated,updated_by)
select 8600+(p.project_id-8500)*10+r.seq,p.project_id,case when r.seq=1 then p.owner_id when p.owner_id=21 then 20 else p.owner_id+1 end,r.responsibility_id,r.responsibility,r.tags,sp_util.fix_demo_dates(sysdate+p.created_offset),p.owner_email,sp_util.fix_demo_dates(sysdate+p.created_offset),p.owner_email
from (select 8501 project_id,1 owner_id,'SCOTT.TIGER@ACME.COM' owner_email,-55 created_offset from dual union all select 8502,3,'ELENA.VARGAS@ACME.COM',-54 from dual union all select 8503,5,'NAOMI.CHEN@ACME.COM',-52 from dual union all select 8504,7,'CALEB.FOSTER@ACME.COM',-50 from dual union all select 8505,9,'ANDRE.COLLINS@ACME.COM',-48 from dual union all select 8506,11,'VICTOR.RAMIREZ@ACME.COM',-46 from dual union all select 8507,13,'ISAAC.TURNER@ACME.COM',-44 from dual union all select 8508,15,'DOMINIC.REYES@ACME.COM',-42 from dual union all select 8509,17,'ETHAN.CALDWELL@ACME.COM',-40 from dual union all select 8510,19,'LUCAS.BENNETT@ACME.COM',-38 from dual union all select 8511,21,'ZOE.MATTHEWS@ACME.COM',-36 from dual union all select 8512,20,'AIDEN.CLARKE@ACME.COM',-34 from dual) p
cross join (select 1 seq,3 responsibility_id,'Leads release delivery.' responsibility,'project-management' tags from dual union all select 2,1,'Builds and tests the delivered change.','development,qa' from dual) r;

-- Comments are inserted oldest to newest so the comment-number trigger assigns numbers chronologically.
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8801,8501,1,'Real-time events passed throughput testing.','Real-time events passed throughput testing.','Real-time events passed throughput testing.','N',sp_util.fix_demo_dates(sysdate-42),upper('scott.tiger@acme.com'),sp_util.fix_demo_dates(sysdate-42),upper('scott.tiger@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8802,8502,3,'Explanation text was approved by Product.','Explanation text was approved by Product.','Explanation text was approved by Product.','N',sp_util.fix_demo_dates(sysdate-38),upper('elena.vargas@acme.com'),sp_util.fix_demo_dates(sysdate-38),upper('elena.vargas@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8803,8503,5,'Scenario inputs were validated with Operations.','Scenario inputs were validated with Operations.','Scenario inputs were validated with Operations.','N',sp_util.fix_demo_dates(sysdate-34),upper('naomi.chen@acme.com'),sp_util.fix_demo_dates(sysdate-34),upper('naomi.chen@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8804,8504,7,'Funnel templates were accepted for launch.','Funnel templates were accepted for launch.','Funnel templates were accepted for launch.','N',sp_util.fix_demo_dates(sysdate-30),upper('caleb.foster@acme.com'),sp_util.fix_demo_dates(sysdate-30),upper('caleb.foster@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8805,8505,9,'New support intents passed quality review.','New support intents passed quality review.','New support intents passed quality review.','N',sp_util.fix_demo_dates(sysdate-26),upper('andre.collins@acme.com'),sp_util.fix_demo_dates(sysdate-26),upper('andre.collins@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8806,8506,11,'Remediation ownership flow was agreed.','Remediation ownership flow was agreed.','Remediation ownership flow was agreed.','N',sp_util.fix_demo_dates(sysdate-22),upper('victor.ramirez@acme.com'),sp_util.fix_demo_dates(sysdate-22),upper('victor.ramirez@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8807,8507,13,'Drill-through KPI definitions were approved.','Drill-through KPI definitions were approved.','Drill-through KPI definitions were approved.','N',sp_util.fix_demo_dates(sysdate-18),upper('isaac.turner@acme.com'),sp_util.fix_demo_dates(sysdate-18),upper('isaac.turner@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8808,8508,15,'Governance checks are ready for model onboarding.','Governance checks are ready for model onboarding.','Governance checks are ready for model onboarding.','N',sp_util.fix_demo_dates(sysdate-14),upper('dominic.reyes@acme.com'),sp_util.fix_demo_dates(sysdate-14),upper('dominic.reyes@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8809,8509,17,'Comparison results include confidence guidance.','Comparison results include confidence guidance.','Comparison results include confidence guidance.','N',sp_util.fix_demo_dates(sysdate-10),upper('ethan.caldwell@acme.com'),sp_util.fix_demo_dates(sysdate-10),upper('ethan.caldwell@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8810,8510,19,'Retention policies were approved by Security.','Retention policies were approved by Security.','Retention policies were approved by Security.','N',sp_util.fix_demo_dates(sysdate-7),upper('lucas.bennett@acme.com'),sp_util.fix_demo_dates(sysdate-7),upper('lucas.bennett@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8811,8511,21,'Accessibility improvements passed the agreed checks.','Accessibility improvements passed the agreed checks.','Accessibility improvements passed the agreed checks.','N',sp_util.fix_demo_dates(sysdate-4),upper('zoe.matthews@acme.com'),sp_util.fix_demo_dates(sysdate-4),upper('zoe.matthews@acme.com'));
insert into sp_project_comments (id,project_id,author_id,body,body_html,body_no_images,private_yn,created,created_by,updated,updated_by)
values (8812,8512,20,'Export defects were corrected and regression-tested.','Export defects were corrected and regression-tested.','Export defects were corrected and regression-tested.','N',sp_util.fix_demo_dates(sysdate-2),upper('aiden.clarke@acme.com'),sp_util.fix_demo_dates(sysdate-2),upper('aiden.clarke@acme.com'));

insert into sp_tasks (id,project_id,task,task_type_id,task_sub_type_id,owner_id,start_date,target_complete,status_id,status_last_changed_on,description,tags,display_sequence,impact,created,created_by,updated,updated_by)
select 8700+(p.project_id-8500)*10+t.seq,p.project_id,t.task,t.task_type_id,null,p.owner_id,sp_util.fix_demo_dates(sysdate+t.start_offset),sp_util.fix_demo_dates(sysdate+t.complete_offset),t.status_id,sp_util.fix_demo_dates(sysdate+t.changed_offset),t.description,t.tags,t.seq*10,t.impact,sp_util.fix_demo_dates(sysdate+t.created_offset),p.owner_email,sp_util.fix_demo_dates(sysdate+t.updated_offset),p.owner_email
from (
select 8501 project_id,1 owner_id,'SCOTT.TIGER@ACME.COM' owner_email from dual 
union all 
select 8502,3,'ELENA.VARGAS@ACME.COM' from dual 
union all 
select 8503,5,'NAOMI.CHEN@ACME.COM' from dual 
union all 
select 8504,7,'CALEB.FOSTER@ACME.COM' from dual 
union all 
select 8505,9,'ANDRE.COLLINS@ACME.COM' from dual 
union all 
select 8506,11,'VICTOR.RAMIREZ@ACME.COM' from dual 
union all 
select 8507,13,'ISAAC.TURNER@ACME.COM' from dual 
union all 
select 8508,15,'DOMINIC.REYES@ACME.COM' from dual 
union all 
select 8509,17,'ETHAN.CALDWELL@ACME.COM' from dual 
union all 
select 8510,19,'LUCAS.BENNETT@ACME.COM' from dual 
union all 
select 8511,21,'ZOE.MATTHEWS@ACME.COM' from dual 
union all 
select 8512,20,'AIDEN.CLARKE@ACME.COM' from dual) p
cross join (
select 1 seq,'Spec Complete' task,21 task_type_id,-55 start_offset,-45 complete_offset,14 status_id,-45 changed_offset,-58 created_offset,-45 updated_offset,'Specification approved.' description,'milestone,spec' tags,cast(null as varchar2(30)) impact from dual 
union all 
select 2,'Demonstrable',22,-25,-18,14,-18,-27,-18,'Demonstrated to stakeholders.','milestone,demo',cast(null as varchar2(30)) from dual 
union all 
select 3,'Code Complete',23,-5,15,11,-2,-7,-2,'Implementation in progress.','milestone,code',cast(null as varchar2(30)) from dual 
union all 
select 4,'Implementation Review',11,-8,12,4,-3,-10,-3,'Implementation review in progress.','review,implementation','High' from dual) t;

sp_globals.g_audit_this := TRUE;

exception
    when others then
        sp_globals.g_audit_this := TRUE;
end;