begin

sp_globals.g_audit_this := FALSE;

insert into sp_release_trains
    (id, release_train, release, release_owner_id, description, release_type,
     release_target_date, release_open_date, release_open_completed, release_completed,
     created, created_by, updated, updated_by)
values
    (1, 'Cust Hub', '1.0', 7, 'Web portal for account management, service requests, documents, billing, and AI-assisted support.', 'FULL',
     sp_util.fix_demo_dates(sysdate-10), sp_util.fix_demo_dates(sysdate-100), 'Y', 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-8), upper('Caleb.Foster@acme.com'));

insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (10, 1, 1, 'Build Open', sp_util.fix_demo_dates(sysdate-100), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-100), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (11, 1, 3, 'Feature Complete', sp_util.fix_demo_dates(sysdate-65), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-65), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (12, 1, 1, 'QA Build 1', sp_util.fix_demo_dates(sysdate-61), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-61), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (13, 1, 1, 'QA Build 2', sp_util.fix_demo_dates(sysdate-47), 'Y',
    sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'),  sp_util.fix_demo_dates(sysdate-47), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (14, 1, 1, 'QA Build 3', sp_util.fix_demo_dates(sysdate-33), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-33), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (15, 1, 1, 'QA Build 4', sp_util.fix_demo_dates(sysdate-19), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-19), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (16, 1, 5, 'Translation Drop 1', sp_util.fix_demo_dates(sysdate-45), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-45), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (17, 1, 5, 'Translation Drop 2', sp_util.fix_demo_dates(sysdate-17), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-17), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (18, 1, 2, 'Release Note Review', sp_util.fix_demo_dates(sysdate-25), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-25), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (19, 1, 2, 'Release Notes Final', sp_util.fix_demo_dates(sysdate-13), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-13), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (19.1, 1, 3, 'Code Freeze', sp_util.fix_demo_dates(sysdate-17), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-17), upper('Caleb.Foster@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (19.2, 1, 3, 'Release Complete', sp_util.fix_demo_dates(sysdate-10), 'Y',
     sp_util.fix_demo_dates(sysdate-110), upper('Caleb.Foster@acme.com'), sp_util.fix_demo_dates(sysdate-17), upper('Caleb.Foster@acme.com'));


insert into sp_release_trains
    (id, release_train, release, release_owner_id, description, release_type,
     release_target_date, release_open_date, release_open_completed, release_completed,
     created, created_by, updated, updated_by)
values
    (2, 'Mobile Comp', '1.0', 3, 'Modern iOS and Android app for notifications, self-service workflows, mobile document upload, and personalized recommendations.','FULL',
     sp_util.fix_demo_dates(sysdate+20), sp_util.fix_demo_dates(sysdate-60), 'Y', 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));

insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (20, 2, 1, 'Build Open', sp_util.fix_demo_dates(sysdate-60), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate-60), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (21, 2, 1, 'QA Build 1', sp_util.fix_demo_dates(sysdate-30), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate-30), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (22, 2, 1, 'QA Build 2', sp_util.fix_demo_dates(sysdate-16), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate-16), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (23, 2, 1, 'QA Build 3', sp_util.fix_demo_dates(sysdate-2), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate-2), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (24, 2, 1, 'QA Build 4', sp_util.fix_demo_dates(sysdate+12), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (25, 2, 3, 'Feature Complete', sp_util.fix_demo_dates(sysdate-10), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate-10), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (26, 2, 5, 'Translation Drop 1', sp_util.fix_demo_dates(sysdate-15), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate-15), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (27, 2, 5, 'Translation Drop 2', sp_util.fix_demo_dates(sysdate+13), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (28, 2, 2, 'Release Note Review', sp_util.fix_demo_dates(sysdate+1), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (29, 2, 2, 'Release Notes Final', sp_util.fix_demo_dates(sysdate+17), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (29.1, 2, 3, 'Code Freeze', sp_util.fix_demo_dates(sysdate+13), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (29.2, 2, 3, 'Release Complete', sp_util.fix_demo_dates(sysdate+20), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Elena.Vargas@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Elena.Vargas@acme.com'));


insert into sp_release_trains
    (id, release_train, release, release_owner_id, description, release_type,
     release_target_date, release_open_date, release_open_completed, release_completed,
     created, created_by, updated, updated_by)
values
    (7, 'InsIQ', '1.0', 14, 'Analytics and machine-learning platform powering customer insights, recommendations, forecasting, and operational dashboards.', 'FULL',
     sp_util.fix_demo_dates(sysdate-90), sp_util.fix_demo_dates(sysdate-200), 'Y', 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-88), upper('Chloe.Whitaker@acme.com'));

insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (70 ,7, 1, 'Build Open', sp_util.fix_demo_dates(sysdate-200), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-200), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (71 ,7, 1, 'QA Build 1', sp_util.fix_demo_dates(sysdate-140), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-140), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (72 ,7, 1, 'QA Build 2', sp_util.fix_demo_dates(sysdate-126), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-126), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (73 ,7, 1, 'QA Build 3', sp_util.fix_demo_dates(sysdate-112), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-112), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (74 ,7, 1, 'QA Build 4', sp_util.fix_demo_dates(sysdate-98), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-98), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (75 ,7, 3, 'Feature Complete', sp_util.fix_demo_dates(sysdate-125), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-125), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (76 ,7, 5, 'Translation Drop 1', sp_util.fix_demo_dates(sysdate-145), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-145), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (77 ,7, 5, 'Translation Drop 2', sp_util.fix_demo_dates(sysdate-97), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-97), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (78 ,7, 2, 'Release Note Review', sp_util.fix_demo_dates(sysdate-110), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-110), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (79 ,7, 2, 'Release Notes Final', sp_util.fix_demo_dates(sysdate-93), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-93), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (79.1 ,7, 3, 'Code Freeze', sp_util.fix_demo_dates(sysdate-97), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-97), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (79.2 ,7, 3, 'Release Complete', sp_util.fix_demo_dates(sysdate-90), 'Y',
     sp_util.fix_demo_dates(sysdate-220), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-90), upper('Chloe.Whitaker@acme.com'));


insert into sp_release_trains
    (id, release_train, release, release_owner_id, description, release_type,
     release_target_date, release_open_date, release_open_completed, release_completed,
     created, created_by, updated, updated_by)
values
    (8, 'InsIQ', '1.1', 14, 'Improvements and bug fixes to 1.0', 'PATCH',
     sp_util.fix_demo_dates(sysdate-25), sp_util.fix_demo_dates(sysdate-85), 'Y', 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-20), upper('Chloe.Whitaker@acme.com'));

insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (80, 8, 1, 'Build Open', sp_util.fix_demo_dates(sysdate-85), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-85), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (81, 8, 1, 'QA Build 1', sp_util.fix_demo_dates(sysdate-55), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-55), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (82, 8, 1, 'QA Build 2', sp_util.fix_demo_dates(sysdate-41), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-41), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (83, 8, 1, 'QA Build 3', sp_util.fix_demo_dates(sysdate-27), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-27), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (84, 8, 3, 'Feature Complete', sp_util.fix_demo_dates(sysdate-50), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-50), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (85, 8, 5, 'Translation Drop', sp_util.fix_demo_dates(sysdate-32), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-32), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (86, 8, 2, 'Release Note Review', sp_util.fix_demo_dates(sysdate-48), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-48), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (87, 8, 2, 'Release Notes Final', sp_util.fix_demo_dates(sysdate-28), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-28), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (88, 8, 3, 'Code Freeze', sp_util.fix_demo_dates(sysdate-32), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-32), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (89, 8, 3, 'Release Complete', sp_util.fix_demo_dates(sysdate-25), 'Y',
     sp_util.fix_demo_dates(sysdate-95), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-25), upper('Chloe.Whitaker@acme.com'));


insert into sp_release_trains
    (id, release_train, release, release_owner_id, description, release_type,
     release_target_date, release_open_date, release_open_completed, release_completed,
     created, created_by, updated, updated_by)
values
    (3, 'InsIQ', '2.0', 14, 'Analytics and machine-learning platform powering customer insights, recommendations, forecasting, and operational dashboards.', 'FULL',
     sp_util.fix_demo_dates(sysdate+27), sp_util.fix_demo_dates(sysdate-60), 'Y', 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));

insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (30, 3, 1, 'Build Open', sp_util.fix_demo_dates(sysdate-60), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-60), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (31, 3, 1, 'QA Build 1', sp_util.fix_demo_dates(sysdate-15), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-15), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (32, 3, 1, 'QA Build 2', sp_util.fix_demo_dates(sysdate-1), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-1), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (33, 3, 1, 'QA Build 3', sp_util.fix_demo_dates(sysdate+13), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (34, 3, 3, 'Feature Complete', sp_util.fix_demo_dates(sysdate-5), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-5), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (35, 3, 5, 'Translation Drop 1', sp_util.fix_demo_dates(sysdate-10), 'Y',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate-10), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (36, 3, 5, 'Translation Drop 2', sp_util.fix_demo_dates(sysdate+20), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (37, 3, 2, 'Release Note Review', sp_util.fix_demo_dates(sysdate+7), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (38, 3, 2, 'Release Notes Final', sp_util.fix_demo_dates(sysdate+24), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (39, 3, 3, 'Code Freeze', sp_util.fix_demo_dates(sysdate+20), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));
insert into sp_release_milestones
    (id, release_id, milestone_type_id, milestone_name, milestone_date, milestone_completed_yn,
     created, created_by, updated, updated_by)
    values
    (39.1, 3, 3, 'Release Complete', sp_util.fix_demo_dates(sysdate+27), 'N',
     sp_util.fix_demo_dates(sysdate-70), upper('Chloe.Whitaker@acme.com'), sp_util.fix_demo_dates(sysdate), upper('Chloe.Whitaker@acme.com'));

sp_globals.g_audit_this := TRUE;

exception
    when others then
        sp_globals.g_audit_this := TRUE;
end;