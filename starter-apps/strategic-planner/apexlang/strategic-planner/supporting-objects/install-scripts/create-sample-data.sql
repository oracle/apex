insert into SP_TEAM_MEMBERS (
    id, first_name, last_name, country_id, email, hash_tag_reference) 
    values (1,  'John', 'Doe', 187, 'john.doe@acme.com', 'John');
insert into SP_TEAM_MEMBERS (
    id, first_name, last_name, country_id, email, hash_tag_reference) 
    values (2,  'Jane', 'Doe', 187, 'jane.doe@acme.com', 'Jane');
insert into SP_TEAM_MEMBERS (
    id, first_name, last_name, country_id, email, hash_tag_reference) 
    values (3,  'Scott', 'Tiger', 187, 'scott.tiger@acme.com', 'Scott');

insert into SP_AREAS
    (ID, AREA, DESCRIPTION, owner_id) 
    values 
    (1, 'Alpha', 'Primary focus of our organization', 1);
insert into SP_AREAS
    (ID, AREA, DESCRIPTION, owner_id) 
    values 
    (2, 'Beta', 'Secondary focus area of our organization', 1);

insert into SP_INITIATIVES
    (ID, AREA_ID, INITIATIVE, status_scale) 
    values
    (1, 1, 'Initiative 1', 'A');
insert into SP_INITIATIVES
    (ID, AREA_ID, INITIATIVE, status_scale) 
    values
    (2, 1, 'Initiative 2', 'C');
insert into SP_INITIATIVES
    (ID, AREA_ID, INITIATIVE, status_scale) 
    values
    (3, 2, 'Initiative 3', 'A');

insert into sp_initiative_links
    (id, initiative_id, link_name, link_url, important_yn)
    values
    (1, 1, 'Fav development platform','https://apex.oracle.com', 'Y');

insert into sp_release_trains
    (id, release_train, release_owner_id, release, release_open_date, RELEASE_TARGET_DATE, release_open_completed) 
    values 
    (1, 'Alpha R1', 3, '1.0', sysdate - 45, sysdate + 45, 'Y');
insert into sp_release_trains
    (id, release_train, release_owner_id, release, release_open_date, RELEASE_TARGET_DATE, release_open_completed, release_completed) 
    values 
    (2, 'Gamma', 1, '2.1', sysdate - 90, sysdate -5, 'Y', 'Y');

 insert into SP_PROJECTS
    (id, INITIATIVE_ID, PROJECT, release_id, owner_id, priority_id, project_size, pct_complete, 
     description) 
    values
    (1, 1, 'Project 1', 1, 1, 2, 'M', 70,
     'This is a very important project');
insert into SP_PROJECTS
    (id, INITIATIVE_ID, PROJECT, owner_id, priority_id, project_size, tags, pct_complete,
     display_external_link_yn) 
    values
    (2, 1, 'Jira-1234 We need to fix something', 2, 1, 'S', 'URGENT', 30, 'Y');
insert into SP_PROJECTS
    (id, INITIATIVE_ID, PROJECT, owner_id, priority_id, project_size, pct_complete) 
    values
    (3, 2, 'Sales Blitz 1', 3, 1, 'L', 10);
insert into SP_PROJECTS
    (id, INITIATIVE_ID, PROJECT, owner_id, priority_id, project_size, pct_complete) 
    values
    (4, 2, 'Sales Blitz 2', 3, 3, 'M', 20);
insert into SP_PROJECTS
    (id, INITIATIVE_ID, PROJECT, owner_id, priority_id, project_size, pct_complete) 
    values
    (5, 1, 'Project 4', 2, 4, 'XL', 20);
insert into SP_PROJECTS
    (id, INITIATIVE_ID, PROJECT, owner_id, priority_id, project_size, pct_complete) 
    values
    (6, 3, 'Project 5', 2, 4, 'S', 50);

insert into sp_project_contributors
    (id, project_id, team_member_id, responsibility_id)
    values
    (1, 1, 1, 1);
insert into sp_project_contributors
    (id, project_id, team_member_id, responsibility_id)
    values
    (2, 1, 3, 4);

insert into sp_project_links
    (id, project_id, link_name, link_url, important_yn)
    values
    (1, 1, 'Fav development platform','https://apex.oracle.com', 'Y');

insert into sp_project_comments
    (id, project_id, body, private_yn, author_id)
    values
    (1, 1, 'Wow, APEX is so easy to use, the UI is looking great!', 'N', 1);

insert into sp_activities
    (id, activity_type_id, project_id, team_member_id, start_date, end_date, activity_status, comments)
    values
    (1, 1, 1, 1, sysdate-42, sysdate-10, 'CLOSED','Active development');
insert into sp_activities
    (id, activity_type_id, project_id, team_member_id, start_date, end_date, activity_status, comments)
    values
    (2, 1, 1, 1, sysdate-12, sysdate-10, 'CLOSED','Demo prep');
insert into sp_activities
    (id, activity_type_id, project_id, team_member_id, start_date, end_date, activity_status, comments)
    values
    (3, 3, 1, 2, sysdate-8, sysdate-8, 'CLOSED','Review');

insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (1, 1, 20, 21, 1,
     sysdate-60, sysdate-40, 14);
insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (2, 1, 20, 22, 1,
     null, sysdate-10, 14);
insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (3, 1, 20, 23, 1,
     null, sysdate-1, 14);
insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (4, 1, 20, 24, 1,
     null, sysdate+5, 11);

insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (5, 1, 1, 2, 2,
     null, sysdate-40, 8);
insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (6, 1, 1, 4, 2,
     null, sysdate-3, 8);
insert into sp_tasks
    (id, project_id, task_type_id, task_sub_type_id, owner_id,
     start_date, target_complete, status_id)
values
    (7, 1, 1, 10, 2,
     null, sysdate+2, 1);