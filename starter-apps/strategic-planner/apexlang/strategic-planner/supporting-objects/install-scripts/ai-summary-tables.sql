create table sp_project_ai_summaries (
   id                 number  default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                          constraint sp_project_ai_summaries_pk primary key,
   --
   project_id         number constraint sp_project_ai_summaries_proj_fk
                                   references sp_projects on delete cascade,
   summary_type       varchar2(30),  -- full or update
   prompt_sent        clob, 
   details_sent       clob,
   data_received      clob,
   --
   summary            clob,
   risk               varchar2(100),
   highlights         varchar2(4000),
   --
   created            date  default on null sysdate
   )
/

create index sp_project_ai_summaries_i1 on sp_project_ai_summaries (project_id);
create index sp_project_ai_summaries_i2 on sp_project_ai_summaries (created);


create table sp_release_ai_summaries (
   id                 number  default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                          constraint sp_release_ai_summaries_pk primary key,
   --
   release_id         number constraint sp_release_ai_summaries_rel_fk
                                   references sp_release_trains on delete cascade,
   prompt_sent        clob, 
   details_sent       clob,
   data_received      clob,
   --
   summary            clob,
   highlights         varchar2(4000),
   --
   created            date  default on null sysdate
   )
/

create index sp_release_ai_summaries_i1 on sp_release_ai_summaries (release_id);
create index sp_release_ai_summaries_i2 on sp_release_ai_summaries (created);