create or replace package eba_demo_md_data_pkg as
  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table) return blob;
  procedure load_sample_data;
  procedure remove_sample_data;
end eba_demo_md_data_pkg; 
/

create or replace package body eba_demo_md_data_pkg as 
  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table) 
    return blob 
  is 
    l_blob blob; 
    l_raw  raw(500); 
    l_size number; 
  begin 
    dbms_lob.createtemporary(l_blob, true, dbms_lob.session); 
    for i in 1 .. p_varchar2_tab.count loop 
      l_size := length(p_varchar2_tab(i)) / 2; 
      dbms_lob.writeappend(l_blob, l_size, hextoraw(p_varchar2_tab(i))); 
    end loop; 
    return l_blob; 
  exception 
    when others then 
      dbms_lob.close(l_blob); 
  end varchar2_to_blob;   
 
  procedure load_sample_data is 
    i               dbms_sql.varchar2_table; 
    j               dbms_sql.varchar2_table default wwv_flow_api.empty_varchar2_table; 
    l_blob          blob; 
    l_full_name         varchar2(255); 
    l_email             varchar2(255); 
    l_add_days          number; 
  begin 
    -- Remove any data currenlty in the tables 
    remove_sample_data; 
 
    ---------------------------------- 
    --<< Load statuses >>-- 
    ---------------------------------- 
    delete from eba_demo_md_status; 
    insert into eba_demo_md_status (cd, description, display_order) 
      values ('ASSIGNED', 'Assigned', 1); 
    insert into eba_demo_md_status (cd, description, display_order) 
      values ('IN-PROGRESS', 'In-Progress', 2); 
    insert into eba_demo_md_status (cd, description, display_order) 
      values ('COMPLETED', 'Completed', 3);
      
    ---------------------------------------- 
    --<< Load remaining 12 Team Members >>--   
    ---------------------------------------- 
    -- Load Team Member 1 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  1 
       , 'Lucille Beatie' 
       , 'lbeatie' 
       , 'lucy.beattie@email.com' 
       , 'I have extensive experience running development teams. If I can''t bring in a project on time and on budget it can''t be done.' 
      ); 
     
    -- Load Team Member 2 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  2 
       , 'Nina Herschel' 
       , 'nina' 
       , 'nina.herschel@email.com' 
       , 'I''m a consumate team player who likes to explore and learn new things. My belief is to work hard and play hard.' 
      ); 
     
    -- Load Team Member 3 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  3 
       , 'Tameka Hall' 
       , 'thall' 
       , 'tamika.hall@email.com' 
       , 'I am all business and thrive on developing the lowest-level code. Point me at some obtuse security bug or framework API, step back, send in pizza and coke (not diet coke - YUK) occassionally, and consider it done!' 
      ); 
     
    -- Load Team Member 4 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  4 
       , 'Eva Jelinek' 
       , 'eva' 
       , 'eva.jelinek@email.com' 
       , 'I will tell you directly what I think and expect you to tell me the same. If you are sensitive then it may be best you don''t talk to me. ' 
      ); 
     
    -- Load Team Member 5 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  5 
       , 'Mei Yu' 
       , 'meiyu' 
       , 'mei.yu@email.com' 
       , 'I have extensive experience in all aspects of application development. If you need help then come and see me.' 
      ); 
     
    -- Load Team Member 6 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  6 
       , 'Madison Smith' 
       , 'mady' 
       , 'madison.smith@email.com' 
       , 'Mady to my friends - I love being creative and coming up with beautiful solutions.' 
      ); 
     
    -- Load Team Member 7 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  7 
       , 'Tyson King' 
       , 'tking' 
       , 'alonso.king@email.com' 
       , 'No problem too big, no problem too small!' 
      ); 
     
    -- Load Team Member 8 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  8 
       , 'Daniel James Lee' 
       , 'dj' 
       , 'daniel.lee@email.com' 
       , 'I am a DJ, I am what I say. If you ask me a question and I don''t answer, it is not because I''m rude, it is probably because I have my earbuds in and am rocking out to some gangsta rap.' 
      ); 
     
    -- Load Team Member 9 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  9 
       , 'Brock Shilling' 
       , 'thebrock' 
       , 'brock.shilling@email.com' 
       , 'I am your man! Let me solve that for you.' 
      ); 
     
    -- Load Team Member 10 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  10 
       , 'Miyazaki Yokohama' 
       , 'miyazaki' 
       , 'miyazaki.yokohama@email.com' 
       , 'My motto is to lead by example. I run a tight ship where everyone knows where we are heading.' 
      ); 
     
    -- Load Team Member 11 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  11 
       , 'Bernard Jackman' 
       , 'bernie' 
       , 'bernard.jackman@email.com' 
       , 'I am a great believer in the fact there is no "i" in TEAM.' 
      ); 
     
    -- Load Team Member 12 
    insert into eba_demo_md_team_members  
      (  id 
       , full_name 
       , username  
       , email     
       , profile   
      ) 
    values 
      (  12 
       , 'Harold Youngblood' 
       , 'harry' 
       , 'harold.youngblood@email.com' 
       , 'Providing I have my soy latte, falafel, and my MacBook - Bring It!' 
      ); 
     
 
    --*******************************************-- 
    --*** Load Projects, Milestones and Tasks ***--  
    --*******************************************-- 
    -- Need to insert a project and all of its releated child records at once and then move to the next project 
 
    ----------------------------------- 
    --<< Determine the data offset >>-- 
    ----------------------------------- 
    l_add_days := sysdate - to_date('20150101','YYYYMMDD'); 
 
    -------------------------- 
    --<< Insert Project 1 >>-- 
    -------------------------- 
    insert into eba_demo_md_projects 
      (  id 
       , name 
       , description 
       , project_lead 
       , completed_date 
       , status_cd 
      ) 
      values 
      (  1 
       , 'Configure Web Development Tool Environment' 
       , 'Determine the hardware and software required to develop with Web development tool.' 
       , 7 
       , to_date('20141205', 'YYYYMMDD') + l_add_days 
       , 'COMPLETED' 
      ); 
 
    -- Insert Tasks for Project 1  
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  51 
       , 1 
       , 7
       , 'Identify Server Requirements' 
       , 'Determine which databases will be used to install Web development tool for Development, QA, and Production.  
          Also specify which Web Listeners will be used for the three environments.' 
       , null 
       , 'Y' 
       , to_date('20141201', 'YYYYMMDD') + l_add_days 
       , to_date('20141202', 'YYYYMMDD') + l_add_days 
      ); 

    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  52 
       , 1 
       , 5 
       , 'Install Web development tool' 
       , 'Install the latest version of Web development tool from the vendor into the databases for Development, QA, and Production. 
          Note: For QA and Production, Web development tool should be configured as "run time" only.' 
       , null 
       , 'Y' 
       , to_date('20141203', 'YYYYMMDD') + l_add_days 
       , to_date('20141203', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  1
       , 1
       , 52
       , 7
       , 'Download tool from vendor'
       , 'Download the latest available version of the Web development tool from the vendor site.'
       , 'Y'
      );

    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  1
       , 1
       , 52
       , 'URL'
       , 'http://Web-tool.download.com'
       , null
       , null
       , 'Ficticous download page for Web development tool' 
      );
 
    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  2
       , 1
       , 52
       , 'URL'
       , 'http://Web-tool.install.com'
       , null
       , null
       , 'Ficticous installation guide for Web development tool' 
      );
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  53 
       , 1 
       , 12 
       , 'Configure Web Listeners' 
       , 'Configure the three Web Listeners for Web development tool to support the Dev, QA, and Prod environments.' 
       , null 
       , 'Y' 
       , to_date('20141203', 'YYYYMMDD') + l_add_days 
       , to_date('20141203', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  2
       , 1
       , 53
       , 12
       , 'Download Web Listener from vendor'
       , 'Download the latest available version of the Web Listener from the vendor site.'
       , 'Y'
      );
 
    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  3
       , 1
       , 53
       , 'URL'
       , 'http://Web-Listener.download.com'
       , null
       , null
       , 'Ficticous download page for Web Listener' 
      );
 
    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  4
       , 1
       , 53
       , 'URL'
       , 'http://Web-Listener.install.com'
       , null
       , null
       , 'Ficticous installation guide for Web Listener' 
      );
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  54 
       , 1 
       , 11 
       , 'Configure Web development tool Instance Administration Settings' 
       , 'Set the appropriate security and configuration settings for the development instance using specified tools. 
          Also set instance settings for QA and Production using the available APIs.' 
       , null 
       , 'Y' 
       , to_date('20141204', 'YYYYMMDD') + l_add_days 
       , to_date('20141204', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  6
       , 1
       , 54
       , 'URL'
       , 'https://Web-tool.admin.com'
       , null
       , null
       , 'Ficticous administration guide for Web development tool' 
      );
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  55 
       , 1 
       , 5 
       , 'Define Workspaces' 
       , 'Define workspaces needed for different application development teams. 
          It is important that access be granted to the necessary schemas and/or new schemas created as appropriate. 
          Then export these workspaces and import them into QA and Production environments.' 
       , null 
       , 'Y' 
       , to_date('20141205', 'YYYYMMDD') + l_add_days 
       , to_date('20141205', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  56 
       , 1 
       , 12 
       , 'Assign Workspace Administrators' 
       , 'In development assign a minimum of two Workspace administators to each workspace. 
          These administrators will then be responsible for maintaining developer access within their own workspaces.' 
       , null 
       , 'N' 
       , to_date('20141205', 'YYYYMMDD') + l_add_days 
       , to_date('20141205', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Project Comments for Project 1 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  1 
       , 1 
       , 'We have decided to use the Web Listener included with the database for Dev Only and a separate Web Listener for QA and Prod.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('20141202', 'YYYYMMDD') + l_add_days
      ,   created_by = 'TKING'
      where id = 1; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  2 
       , 1 
       , 'Installed latest version of Web development tool.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('20141204', 'YYYYMMDD') + l_add_days 
      ,   created_by = 'MEIYU' 
      where id = 2; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  3 
       , 1 
       , 'Installed latest version of Web Listener in QA and Prod environments' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('20141204', 'YYYYMMDD') + l_add_days 
      ,   created_by = 'HARRY' 
      where id = 3; 
    commit;

 
    -------------------------- 
    --<< Insert Project 2 >>-- 
    -------------------------- 
    insert into eba_demo_md_projects 
      (  id 
       , name 
       , description 
       , project_lead 
       , completed_date 
       , status_cd 
      ) 
      values 
      (  2 
       , 'Train Developers on Web development tool' 
       , 'Ensure all developers who will be developing with the new tool get the appropriate training.' 
       , 1 
       , to_date('20141220', 'YYYYMMDD') + l_add_days 
       , 'COMPLETED' 
      ); 
 
    -- Insert Milestone 1 for Project 2 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  11 
       , 2 
       , 'Train the Trainers' 
       , 'Rather than all developers being trained centrally, a select group will be trained. 
          These people will then be responsible for training other developers in their group.' 
       , to_date('20141211', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 2 / Milestone 1 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  57 
       , 2 
       , 6 
       , 'Prepare Course Outline' 
       , 'Creation of the training syllabus' 
       , 11 
       , 'Y' 
       , to_date('20141201', 'YYYYMMDD') + l_add_days 
       , to_date('20141205', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  58 
       , 2 
       , 6 
       , 'Write Training Guide' 
       , 'Produce the powerpoint deck (with notes) for the training instructor.' 
       , 11 
       , 'N' 
       , to_date('20141206', 'YYYYMMDD') + l_add_days 
       , to_date('20141208', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  4
       , 2
       , 58
       , 6
       , 'Review the online examples hosted by the vendor'
       , 'Run through the numerous examples available from the vendor to get course content.'
       , 'Y'
      );
 
    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  7
       , 2
       , 58
       , 'URL'
       , 'https://Web-tool.examples.com'
       , null
       , null
       , 'Ficticous examples page for Web development tool' 
      );
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  59 
       , 2 
       , 6 
       , 'Develop Training Exercises' 
       , 'Create scripts for sample data and problem statements with solutions.' 
       , 11 
       , 'Y' 
       , to_date('20141202', 'YYYYMMDD') + l_add_days 
       , to_date('20141208', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  60 
       , 2 
       , 7
       , 'Conduct Train-the-Trainer session' 
       , 'Give the training material to the selected developers.' 
       , 11 
       , 'Y' 
       , to_date('20141209', 'YYYYMMDD') + l_add_days 
       , to_date('20141211', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Milestone 2 for Project 2 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  12 
       , 2 
       , 'All Developers Trained' 
       , 'Train the Trainers will have successfully trained the remaining development team members.' 
       , to_date('20141215', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 2 / Milestone 2 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  61 
       , 2 
       , 7 
       , 'Train Developers I' 
       , 'Give the training to developers within your group.' 
       , 12 
       , 'Y' 
       , to_date('20141212', 'YYYYMMDD') + l_add_days 
       , to_date('20141214', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  62 
       , 2 
       , 8 
       , 'Train Developers II' 
       , 'Give the training to developers within your group.' 
       , 12 
       , 'Y' 
       , to_date('20141214', 'YYYYMMDD') + l_add_days 
       , to_date('20141216', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Project Comments for Project 2 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  4 
       , 2 
       , 'The exercises had some errors that need correcting ASAP.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('20141211', 'YYYYMMDD') + l_add_days 
      where id = 4; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  5 
       , 2 
       , 'Thanks for the feedback, Exercises corrected.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('20141212', 'YYYYMMDD') + l_add_days 
      ,   created_by = 'TKING' 
      where id = 5; 
    commit;
 
 
    -------------------------- 
    --<< Insert Project 3 >>-- 
    -------------------------- 
    insert into eba_demo_md_projects 
      (  id 
       , name 
       , description 
       , project_lead 
       , completed_date 
       , status_cd 
      ) 
      values 
      (  3 
       , 'Migrate Legacy Applications' 
       , 'Move the data and redevelop the applications currently running on top of legacy servers' 
       , 10 
       , null 
       , 'IN-PROGRESS' 
      ); 
 
    -- Insert Milestone 1 for Project 3 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  13 
       , 3 
       , 'Move Data Structures' 
       , 'Move all of the tables and program logic across to the new database' 
       , to_date('20141220', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 3 / Milestone 1 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  63 
       , 3 
       , 3 
       , 'Create New Tables' 
       , 'Create table scripts to replicate the legacy tables' 
       , 13 
       , 'Y' 
       , to_date('20141214', 'YYYYMMDD') + l_add_days 
       , to_date('20141214', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  5
       , 3
       , 63
       , 3
       , 'Reverse engineer the legacy tables into the data modeling tool'
       , 'Connect the data modeling tool to the legacy dev instance and suck in all of the required DB objects.'
       , 'Y'
      );
 
    insert into eba_demo_md_task_links
      (  id
       , project_id
       , task_id
       , link_type
       , url
       , application_id
       , application_page
       , description
      )
    values
      (  8
       , 3
       , 63
       , 'URL'
       , 'http://Web-data-modeler.info.com'
       , null
       , null
       , 'Ficticous information site for the data mdoeling tool' 
      );
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  6
       , 3
       , 63
       , 3
       , 'Add proper integrity constraints to the entities'
       , 'Add foreign keys as needed to correctly integrate referential integrity.'
       , 'Y'
      );
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  7
       , 3
       , 63
       , 3
       , 'Generate DDL Scripts for new tables'
       , 'Generate the DDL scripts from the data modeling tool to create the DB objects in the new database.'
       , 'Y'
      );
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  64 
       , 3 
       , 2 
       , 'Migrate data from Legacy Server' 
       , 'Develop scripts to populate the new database tables from the legacy database.' 
       , 13
       , 'Y' 
       , to_date('20141215', 'YYYYMMDD') + l_add_days 
       , to_date('20141218', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  65 
       , 3 
       , 3 
       , 'Convert transaction logic' 
       , 'Convert the legacy database transactional objects across to the new database' 
       , 13
       , 'Y' 
       , to_date('20141215', 'YYYYMMDD') + l_add_days 
       , to_date('20141217', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Milestone 2 for Project 3 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  14 
       , 3 
       , 'Redevelop HR Applications' 
       , 'Build applications to replace the HR functionality currently implemented in older technologies' 
       , to_date('20141228', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 3 / Milestone 2 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  66 
       , 3 
       , 4 
       , 'Redevelop Timesheet App' 
       , 'Develop desktop and mobile app for entering timesheets' 
       , 14 
       , 'Y' 
       , to_date('20141217', 'YYYYMMDD') + l_add_days 
       , to_date('20141222', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  67 
       , 3 
       , 8 
       , 'Create Shift Schedule App' 
       , 'Create an app for defining when people are scheduled to work different shifts.' 
       , 14 
       , 'Y' 
       , to_date('20141217', 'YYYYMMDD') + l_add_days 
       , to_date('20141225', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  68 
       , 3 
       , 8 
       , 'Reengineer Employee App' 
       , 'Create an app for employee details and benefits.' 
       , 14 
       , 'N' 
       , to_date('20141226', 'YYYYMMDD') + l_add_days 
       , to_date('20141228', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Milestone 3 for Project 3 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  15 
       , 3 
       , 'Redevelop Project Tracking Applications' 
       , 'Build applications to replace the project tracking functionality currently running on legacy servers' 
       , to_date('20150103', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 3 / Milestone 3 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  69 
       , 3 
       , 9 
       , 'Customize Customer Tracker Packaged App' 
       , 'Install Customer Tracker and use flex fields to meet requirements.' 
       , 15 
       , 'Y' 
       , to_date('20141228', 'YYYYMMDD') + l_add_days 
       , to_date('20141228', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  70 
       , 3 
       , 9 
       , 'Migrate data into Customer Tracker tables' 
       , 'Move previous project tracking data into the Customer Tracker EBA_CUST_xxx tables.' 
       , 15 
       , 'Y' 
       , to_date('20141229', 'YYYYMMDD') + l_add_days 
       , to_date('20141230', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  71 
       , 3 
       , 11 
       , 'Pilot new Customer Tracker application' 
       , 'Use Customer Tracker to ensure it meets requirements.' 
       , 15 
       , 'N' 
       , to_date('20141231', 'YYYYMMDD') + l_add_days 
       , to_date('20150109', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Project Comments for Project 3 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  6 
       , 3 
       , 'Bernie - I have migrated all of the projects data across, so you can start your pilot now.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('201412310100', 'YYYYMMDDHH24MI') + l_add_days 
      ,   created_by = 'THEBROCK' 
      where id = 6; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  7 
       , 3 
       , 'I''m telling you now, this Customer Tracker thing had better be good' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('201412310200', 'YYYYMMDDHH24MI') + l_add_days 
      ,   created_by = 'BERNIE' 
      where id = 7; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  8 
       , 3 
       , 'This guy Mike told me this app is brilliant.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('201412310300', 'YYYYMMDDHH24MI') + l_add_days 
      ,   created_by = 'THEBROCK' 
      where id = 8; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  9 
       , 3 
       , 'So far Customer Tracker is working out great - better than the old apps. Brocky, my boy, you are the man!' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('201501010100', 'YYYYMMDDHH24MI') + l_add_days 
      ,   created_by = 'BERNIE' 
      where id = 9; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  10 
       , 3 
       , 'Bernie, I told you that you were going to be impressed.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('201501010200', 'YYYYMMDDHH24MI') + l_add_days 
      ,   created_by = 'THEBROCK' 
      where id = 10; 
 
    insert into eba_demo_md_comments 
      (  id 
       , project_id 
       , comment_text 
      ) 
    values 
      (  11 
       , 3 
       , 'All of the old tables and transactional logic now migrated and ready for developers to use in the new database.' 
      ); 
    update eba_demo_md_comments 
      set created = to_date('20141217', 'YYYYMMDD') + l_add_days 
      ,   created_by = 'THALL' 
      where id = 11; 
    commit;
 
 
    -------------------------- 
    --<< Insert Project 4 >>-- 
    -------------------------- 
    insert into eba_demo_md_projects 
      (  id 
       , name 
       , description 
       , project_lead 
       , completed_date 
       , status_cd 
      ) 
      values 
      (  4 
       , 'Develop Partner Portal POC' 
       , 'Develop a proof of concept that partners can use to work more collaboratively with us.' 
       , 7
       , null 
       , 'IN-PROGRESS' 
      ); 
 
    -- Insert Milestone 1 for Project 4 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  16 
       , 4 
       , 'Define Requirements' 
       , 'Work with key stakeholders to define the scope of the project, and design screen flow and data requirements.' 
       , to_date('20150106', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 4 / Milestone 1 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  72 
       , 4 
       , 7
       , 'Define scope of Partner Portal App.' 
       , 'Meet with internal and external SMEs and define the requirements' 
       , 16 
       , 'N' 
       , to_date('20141228', 'YYYYMMDD') + l_add_days 
       , to_date('20150104', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  8
       , 4
       , 72
       , 7
       , 'Meet key Partners for input'
       , 'Determine the most important functionality for Partners.'
       , 'Y'
      );
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  9
       , 4
       , 72
       , 7
       , 'Meet internal Partner liason reps'
       , 'Determine the most important functionality for internal stakeholders.'
       , 'Y'
      );
 
    insert into eba_demo_md_task_todos
      (  id
       , project_id
       , task_id
       , assignee
       , name
       , description
       , is_complete_yn
      )
    values
      (  10
       , 4
       , 72
       , 7
       , 'Develop inital screen designs'
       , 'Prototype new screens using Web development tool to get buy-in from SMEs.'
       , 'Y'
      );
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  73 
       , 4 
       , 8 
       , 'Define Partner App Data Structures' 
       , 'Design the data model for new and existing entities required to support the Partner Portal.' 
       , 16 
       , 'N' 
       , to_date('20150104', 'YYYYMMDD') + l_add_days 
       , to_date('20150107', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  74 
       , 4 
       , 6 
       , 'Design User Experience' 
       , 'Define how partners will interact with the application.' 
       , 16 
       , 'N' 
       , to_date('20150105', 'YYYYMMDD') + l_add_days 
       , to_date('20150106', 'YYYYMMDD') + l_add_days 
      ); 
 
 
    -- Insert Milestone 2 for Project 4 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  17 
       , 4 
       , 'Build Proof-of-Concept' 
       , 'Create the initial screens and populate with data so key stakeholders can review proposed solution.' 
       , to_date('20150113', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 4 / Milestone 2 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  75 
       , 4 
       , 2 
       , 'Develop Admin Screens for Partner Portal' 
       , 'Develop the screens needed to maintain all of the base tables for the Partner Portal app.' 
       , 17 
       , 'N' 
       , to_date('20150108', 'YYYYMMDD') + l_add_days 
       , to_date('20150110', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  76 
       , 4 
       , 12 
       , 'Populate Data Structures for Partner Portal' 
       , 'Upload sample data provided by key partner, and ensure existing tables accessible.' 
       , 17 
       , 'N' 
       , to_date('20150108', 'YYYYMMDD') + l_add_days 
       , to_date('20150109', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  77 
       , 4 
       , 6 
       , 'Design first-cut of main Partner Portal app' 
       , 'Implement the major functional areas and ensure navigation between pages is working correctly.' 
       , 17 
       , 'N' 
       , to_date('20150107', 'YYYYMMDD') + l_add_days 
       , to_date('20150111', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  78 
       , 4 
       , 7
       , 'Present POC to Key Stakeholders' 
       , 'Walk key stakeholders through the proof of concept and obtain their feedback.' 
       , 17 
       , 'N' 
       , to_date('20150112', 'YYYYMMDD') + l_add_days 
       , to_date('20150112', 'YYYYMMDD') + l_add_days 
      ); 
 
 
    -------------------------- 
    --<< Insert Project 5 >>-- 
    -------------------------- 
    insert into eba_demo_md_projects 
      (  id 
       , name 
       , description 
       , project_lead 
       , completed_date 
       , status_cd 
      ) 
      values 
      (  5 
       , 'Develop Production Partner Portal' 
       , 'Develop the production app that partners can use to work more collaboratively with us.' 
       , 1 
       , null 
       , 'ASSIGNED' 
      ); 
 
    -- Insert Milestone 1 for Project 5 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  18 
       , 5 
       , 'Define Production App Scope' 
       , 'Based on the results of the POC, define the requirements for the production app.' 
       , to_date('20150114', 'YYYYMMDD') + l_add_days 
     ); 
 
    -- Insert Tasks for Project 5 / Milestone 1 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  79 
       , 5 
       , 7
       , 'Define production scope of Partner Portal App.' 
       , 'Define the scope and timelines for the development of the production app.' 
       , 18 
       , 'N' 
       , to_date('20150113', 'YYYYMMDD') + l_add_days 
       , to_date('20150114', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  80 
       , 5 
       , 8 
       , 'Finalize Partner App Data Model' 
       , 'Refine the data model for new and existing entities required to support the Partner Portal.' 
       , 18 
       , 'N' 
       , to_date('20150113', 'YYYYMMDD') + l_add_days 
       , to_date('20150114', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  81 
       , 5 
       , 6 
       , 'Finalize User Experience' 
       , 'Write developer standards on UX and development standards on how partners will interact with the application.' 
       , 18 
       , 'N' 
       , to_date('20150113', 'YYYYMMDD') + l_add_days 
       , to_date('20150114', 'YYYYMMDD') + l_add_days 
      ); 
 
 
    -- Insert Milestone 2 for Project 5 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  19 
       , 5 
       , 'Build Phase 1 of Production Partner Portal App' 
       , 'Develop the modules defined in the first phase of the application.' 
       , to_date('20150121', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 5 / Milestone 2 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  82 
       , 5 
       , 6 
       , 'Refine Admin Screens for Partner Portal' 
       , 'Refine screens developed in the POC to be fully operational to maintain all of the base tables for the Partner Portal app.' 
       , 19 
       , 'N' 
       , to_date('20150115', 'YYYYMMDD') + l_add_days 
       , to_date('20150118', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  83 
       , 5 
       , 5 
       , 'Populate Data Structures for Production Partner Portal' 
       , 'Upload actual data provided by key partner, and ensure existing tables accessible.' 
       , 19 
       , 'N' 
       , to_date('20150115', 'YYYYMMDD') + l_add_days 
       , to_date('20150117', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  84 
       , 5 
       , 7 
       , 'Design production screens for main Partner Portal app' 
       , 'Implement fully functional and complete screens to cover the major functional areas in Phase 1.' 
       , 19 
       , 'N' 
       , to_date('20150117', 'YYYYMMDD') + l_add_days 
       , to_date('20150123', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Milestone 3 for Project 5 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  20 
       , 5 
       , 'Perform Beta testing with select Partners' 
       , 'Work with a few key partners to trial Phase 1 of the Partner Portal app.' 
       , to_date('20150129', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 5 / Milestone 3 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  85 
       , 5 
       , 10 
       , 'Train Partners' 
       , 'Train selected partners in how to use the Partner Portal app.' 
       , 20 
       , 'N' 
       , to_date('20150122', 'YYYYMMDD') + l_add_days 
       , to_date('20150122', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  86 
       , 5 
       , 4 
       , 'Monitor Partners' 
       , 'Monitor partners selected for the Beta and provide assistance as necessary.' 
       , 20 
       , 'N' 
       , to_date('20150123', 'YYYYMMDD') + l_add_days 
       , to_date('20150128', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  87 
       , 5 
       , 7
       , 'Review Beta Feedback' 
       , 'Analyse feedback from the partners who participated in the Beta program.' 
       , 20 
       , 'N' 
       , to_date('20150129', 'YYYYMMDD') + l_add_days 
       , to_date('20150129', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Milestone 4 for Project 5 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  21 
       , 5 
       , 'Complete Phase 1 Development of Partner Portal app' 
       , 'Based on the results of the Beta program, enhance the application to make production ready.' 
       , to_date('20150225', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 5 / Milestone 4 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  88 
       , 5 
       , 5 
       , 'Improve existing feature functions' 
       , 'Enhance existing features based on responses from Beta partners.' 
       , 21 
       , 'N' 
       , to_date('20150201', 'YYYYMMDD') + l_add_days 
       , to_date('20150220', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  89 
       , 5 
       , 3 
       , 'Add required feature functions' 
       , 'Add missing features outlined in responses from Beta partners.' 
       , 21 
       , 'N' 
       , to_date('20150201', 'YYYYMMDD') + l_add_days 
       , to_date('20150220', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  90 
       , 5 
       , 12 
       , 'Load full production data' 
       , 'Ensure all data required for production roll out are inserted and maintained.' 
       , 21 
       , 'N' 
       , to_date('20150215', 'YYYYMMDD') + l_add_days 
       , to_date('20150220', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  91 
       , 5 
       , 8 
       , 'Test Production Partner Portal' 
       , 'Do full scale testing on the Partner Portal application.' 
       , 21 
       , 'N' 
       , to_date('20150221', 'YYYYMMDD') + l_add_days 
       , to_date('20150225', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Milestone 5 for Project 5 
    insert into eba_demo_md_milestones 
      (  id 
       , project_id 
       , name 
       , description 
       , due_date 
      ) 
    values 
      (  22 
       , 5 
       , 'Roll out Phase 1 of Partner Portal app' 
       , 'Go-Live for the Partner Portal application to all partners.' 
       , to_date('20150301', 'YYYYMMDD') + l_add_days 
      ); 
 
    -- Insert Tasks for Project 5 / Milestone 5 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  92 
       , 5 
       , 3 
       , 'Install Partner Portal app onto Production Server' 
       , 'Install the database objects and application(s) into the production environment.' 
       , 22 
       , 'N' 
       , to_date('20150226', 'YYYYMMDD') + l_add_days 
       , to_date('20150226', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  93 
       , 5 
       , 12 
       , 'Configure production data load procedures' 
       , 'Install and test data load procedures from internal and external data sources into production environment.' 
       , 22 
       , 'N' 
       , to_date('20150227', 'YYYYMMDD') + l_add_days 
       , to_date('20150228', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  94 
       , 5 
       , 7
       , 'Provide user credentials for partners' 
       , 'Define user credentials for each partner to allow access to the Partner Portal app.' 
       , 22 
       , 'N' 
       , to_date('20150228', 'YYYYMMDD') + l_add_days 
       , to_date('20150228', 'YYYYMMDD') + l_add_days 
      ); 
 
    insert into eba_demo_md_tasks 
      (  id 
       , project_id 
       , assignee 
       , name 
       , description 
       , milestone_id 
       , is_complete_yn 
       , start_date 
       , end_date 
      ) 
    values 
      (  95 
       , 5 
       , 1 
       , 'Announce Partner Portal app to all partners' 
       , 'Email or call partners to inform them of the new application and instructions on how to get started.' 
       , 22 
       , 'N' 
       , to_date('20150301', 'YYYYMMDD') + l_add_days 
       , to_date('20150301', 'YYYYMMDD') + l_add_days 
      ); 
 
  end load_sample_data; 
 
  procedure remove_sample_data is 
  begin 
    delete from eba_demo_md_team_members;
    delete from eba_demo_md_projects; 
      -- Cascade delete will delete Milestones, Tasks, Task ToDos, Task Links and Comment records 
  end remove_sample_data; 
 
end eba_demo_md_data_pkg; 
/


-----------------------
--<< Load the Data >>--
-----------------------
begin
  eba_demo_md_data_pkg.load_sample_data;
end;
/
