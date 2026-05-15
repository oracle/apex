begin
insert into sp_project_sizes (Project_size, size_description, effort_days) values ('S','Small',2);   -- 2 days
insert into sp_project_sizes (Project_size, size_description, effort_days) values ('M','Medium',10); -- 2 weeks
insert into sp_project_sizes (Project_size, size_description, effort_days) values ('L','Large',40);  -- 2 months
insert into sp_project_sizes (Project_size, size_description, effort_days) values ('XL','Extra Large',120); -- 6 months
insert into sp_project_sizes (Project_size, size_description, effort_days) values ('2XL','2 Times Extra Large',240);  -- 12 months, 1 year
insert into sp_project_sizes (Project_size, size_description, effort_days, include_yn) values ('3XL','3 Times Extra Large',360,'N');  -- 18 months, 1.5 years
insert into sp_project_sizes (Project_size, size_description, effort_days, include_yn) values ('4XL','4 Times Extra Large',640,'N');  -- 24 months, 2 years
insert into sp_project_sizes (Project_size, size_description, effort_days, include_yn) values ('8XL','8 Times Extra Large',960,'N');  -- 48 months, 4 years
end;
/