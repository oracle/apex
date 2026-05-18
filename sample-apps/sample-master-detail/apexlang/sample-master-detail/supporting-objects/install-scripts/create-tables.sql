------------------------------------------------------------
-- Demo Project Status table
-----------------------------------------------------------
create table eba_demo_md_status (
    cd                  varchar2(15)        not null
                        constraint eba_demo_md_status_pk 
                        primary key,
    description         varchar2(255) not null,
    display_order       number not null,
    --
    created                 timestamp with time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with time zone  not null,
    updated_by              varchar2(255)                   not null )
/

create or replace trigger biu_eba_demo_md_status
    before insert or update on eba_demo_md_status
    for each row
begin
    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.cd         := upper(:new.cd);
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

------------------------------------------------------------
-- Demo Project Team Members table
-----------------------------------------------------------
create table eba_demo_md_team_members (
    id                  number        not null
                        constraint eba_demo_md_team_members_pk 
                        primary key,
    username            varchar2(255) not null,
    full_name           varchar2(255) not null,
    email               varchar2(255),
    profile             varchar2(4000),
    --
    created                 timestamp with time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table eba_demo_md_team_members add constraint eba_demo_md_team_members_uk
  unique (username);

create or replace trigger biu_eba_demo_md_team_members
    before insert or update on eba_demo_md_team_members
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.username   := upper(:new.username);
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Projects table
-----------------------------------------------------------
create table eba_demo_md_projects (
    id                   number        not null
                         constraint eba_demo_md_projects_pk 
                         primary key,
    project_lead         number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    status_cd            varchar2(15) not null,
    completed_date       date,
    --
    created              timestamp with time zone  not null,
    created_by           varchar2(255)                   not null,
    updated              timestamp with time zone  not null,
    updated_by           varchar2(255)                   not null )
/

alter table eba_demo_md_projects add constraint eba_demo_md_projects_uk
  unique (name);

alter table eba_demo_md_projects add constraint eba_demo_md_team_member_fk
  foreign key (project_lead) references eba_demo_md_team_members (id)
  on delete set null;

create index eba_demo_md_project_idx on eba_demo_md_projects (project_lead);

alter table eba_demo_md_projects add constraint eba_demo_md_status_fk
  foreign key (status_cd) references eba_demo_md_status (cd)
  on delete set null;

create index eba_demo_md_status_idx on eba_demo_md_projects (status_cd);


create or replace trigger biu_eba_demo_md_projects
    before insert or update on eba_demo_md_projects
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Milestones table
-----------------------------------------------------------
create table eba_demo_md_milestones (
    id                   number        not null
                         constraint eba_demo_md_milestones_pk 
                         primary key,
    project_id           number not null,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    due_date             date not null,
    --
    created              timestamp with time zone  not null,
    created_by           varchar2(255)                   not null,
    updated              timestamp with time zone  not null,
    updated_by           varchar2(255)                   not null )
/

alter table eba_demo_md_milestones add constraint eba_demo_md_mstone_md_fk
  foreign key (project_id) references eba_demo_md_projects (id) 
  on delete cascade;

create index eba_demo_md_mstone_prj_idx on eba_demo_md_milestones (project_id);

create or replace trigger biu_eba_demo_md_milestones
    before insert or update on eba_demo_md_milestones
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Tasks table
-----------------------------------------------------------
create table eba_demo_md_tasks (
    id                   number        not null
                         constraint eba_demo_md_tasks_pk 
                         primary key,
    project_id           number not null,
    milestone_id         number,
    assignee             number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    start_date           date not null,
    end_date             date not null,
    is_complete_yn       varchar2(1),
    --
    created                 timestamp with time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table eba_demo_md_tasks add constraint eba_demo_md_tasks_uk
  unique (project_id, name);

alter table eba_demo_md_tasks add constraint eba_demo_md_task_project_fk
  foreign key (project_id) references eba_demo_md_projects (id) 
  on delete cascade;

create index eba_demo_md_task_project_idx on eba_demo_md_tasks (project_id);

alter table eba_demo_md_tasks add constraint eba_demo_md_task_mstone_fk
  foreign key (milestone_id) references eba_demo_md_milestones (id) 
  on delete set null;

create index eba_demo_md_task_mstone_idx on eba_demo_md_tasks (milestone_id);

alter table eba_demo_md_tasks add constraint eba_demo_md_task_team_mem_fk
  foreign key (assignee) references eba_demo_md_team_members (id) 
  on delete set null;

create index eba_demo_md_task_team_mm_idx on eba_demo_md_tasks (assignee);

create or replace trigger biu_eba_demo_md_tasks
    before insert or update on eba_demo_md_tasks
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Task ToDos table
-----------------------------------------------------------
create table eba_demo_md_task_todos (
    id                 number        not null
                         constraint eba_demo_md_task_todos_pk 
                         primary key,
    project_id           number not null,
    task_id              number not null,
    assignee             number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    is_complete_yn       varchar2(1),
    --
    created                 timestamp with time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table eba_demo_md_task_todos add constraint eba_demo_md_task_todo_prj_fk
  foreign key (project_id) references eba_demo_md_projects (id) 
  on delete cascade;

create index eba_demo_md_tsk_todo_prj_idx  on eba_demo_md_task_todos (project_id);

alter table eba_demo_md_task_todos add constraint eba_demo_md_task_todo_tsk_fk
  foreign key (task_id) references eba_demo_md_tasks (id) 
  on delete cascade;

create index eba_demo_md_tsk_todo_tsk_idx on eba_demo_md_task_todos (task_id);

alter table eba_demo_md_task_todos add constraint eba_demo_md_task_todo_tm_fk
  foreign key (assignee) references eba_demo_md_team_members (id) 
  on delete set null;

create index eba_demo_md_task_todo_tm_idx on eba_demo_md_task_todos (assignee);

create or replace trigger biu_eba_demo_md_task_todos
    before insert or update on eba_demo_md_task_todos
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Task Links table
-----------------------------------------------------------
create table eba_demo_md_task_links (
    id                 number        not null
                         constraint eba_demo_md_task_links_pk 
                         primary key,
    project_id         number not null,
    task_id            number not null,
    --
    link_type          varchar2(20) not null,
    url                varchar2(255),
    application_id     number,
    application_page   number,
    description        varchar2(4000),
    --
    created                 timestamp with time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table eba_demo_md_task_links add constraint eba_demo_md_task_link_prj_fk
  foreign key (project_id) references eba_demo_md_projects (id) 
  on delete cascade;

create index eba_demo_md_tsk_link_prj_idx  on eba_demo_md_task_links (project_id);

alter table eba_demo_md_task_links add constraint eba_demo_md_task_link_tsk_fk
  foreign key (task_id) references eba_demo_md_tasks (id) 
  on delete cascade;

create index eba_demo_md_tsk_link_tsk_idx on eba_demo_md_task_links (task_id);

alter table eba_demo_md_task_links add constraint eba_demo_md_task_link_lty_ch 
   check ( link_type in ('URL','Application'));


create or replace trigger biu_eba_demo_md_task_links
    before insert or update on eba_demo_md_task_links
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Comments table
-----------------------------------------------------------
create table eba_demo_md_comments (
    id                   number        not null
                         constraint eba_demo_md_comments_pk 
                         primary key,
    project_id           number not null,
    --
    comment_text         varchar2(4000) not null,
    --
    created                 timestamp with time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table eba_demo_md_comments add constraint eba_demo_md_comment_md_fk
  foreign key (project_id) references eba_demo_md_projects (id) 
  on delete cascade;

create index eba_demo_md_comment_md_idx on eba_demo_md_comments (project_id);

create or replace trigger biu_eba_demo_md_comments
    before insert or update on eba_demo_md_comments
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/
