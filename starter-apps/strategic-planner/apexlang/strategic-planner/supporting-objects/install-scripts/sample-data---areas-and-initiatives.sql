insert into SP_AREAS
    (id, area, description, owner_id) 
    values 
    (1, 'Product Development', 'Building and enhancing customer-facing software products and applications.', 1);
insert into SP_AREAS
    (id, area, description, owner_id) 
    values 
    (2, 'Engineering Excellence', 'Improving engineering processes, infrastructure, developer productivity, and software quality.', 1);
insert into SP_AREAS
    (id, area, description, owner_id) 
    values 
    (3, 'Technical Enablement', 'Creating documentation, reference implementations, training materials, and technical assets.', 1);

insert into SP_INITIATIVES
    (id, area_id, initiative, status_scale, objective, sponsor_id) 
    values
    (1, 1, 'Customer Portal', 'A', 'Deliver a modern web portal with improved user experience and new capabilities.', 1);
insert into SP_INITIATIVES
    (id, area_id, initiative, status_scale, objective, sponsor_id) 
    values
    (2, 1, 'Mobile App Modernization', 'C', 'Update existing mobile applications using current frameworks and design standards.', 1);
insert into SP_INITIATIVES
    (id, area_id, initiative, status_scale, objective, sponsor_id) 
    values
    (3, 1, 'AI-Powered Integration', 'A', 'Integrate AI capabilities such as chat assistants, recommendations, and intelligent search.', 1);
insert into SP_INITIATIVES
    (id, area_id, initiative, status_scale, objective, sponsor_id) 
    values
    (4, 2, 'Developer Productivity & Tooling', 'A', 'Improve CI/CD pipelines, developer tools, and engineering workflows.', 1);
insert into SP_INITIATIVES
    (id, area_id, initiative, status_scale, objective, sponsor_id) 
    values
    (5, 2, 'Cloud Migration', 'C', 'Migrate applications and services to modern cloud-native architectures.', 1);
insert into SP_INITIATIVES
    (id, area_id, initiative, status_scale, objective, sponsor_id) 
    values
    (6, 2, 'Quality & Test Automation', 'A', 'Expand automated testing, code quality, and release reliability across products.', 1);


insert into sp_initiative_links
    (id, initiative_id, link_name, link_url, important_yn)
    values
    (1, 1, 'Fav development platform','https://apex.oracle.com', 'Y');


insert into sp_initiative_focus_areas
    (id, initiative_id, focus_area)
    values
    (1, 1, 'Customer Systems');
insert into sp_initiative_focus_areas
    (id, initiative_id, focus_area)
    values
    (2, 1, 'Workflow');
insert into sp_initiative_focus_areas
    (id, initiative_id, focus_area)
    values
    (3, 1, 'Accessibility');
insert into sp_initiative_focus_areas
    (id, initiative_id, focus_area)
    values
    (4, 1, 'Security & Identity');
insert into sp_initiative_focus_areas
    (id, initiative_id, focus_area)
    values
    (6, 1, 'Analytics');

insert into sp_initiative_focus_areas
    (id, initiative_id, focus_area)
    values
    (30, 3, 'AI');

insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (31, 2, 'Mobile Experience');
insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (32, 2, 'Mobile Workflows');
insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (33, 2, 'Offline & Sync');
insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (35, 2, 'Mobile Security');
insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (36, 2, 'Mobile Commerce');
insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (37, 2, 'Mobile Accessibility');
insert into sp_initiative_focus_areas (id, initiative_id, focus_area) values (38, 2, 'Mobile Quality');
