create table sp_proj_interactions_log (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_proj_interactions_log_pk primary key,
    project_id                     number
                                   constraint sp_proj_interactions_log_fk
                                   references sp_projects (id),
    app_page                       number not null,
    app_user                       varchar2(255 char) not null,
    action                         varchar2(50 char) not null,
    page_rendered                  date);

create or replace trigger sp_proj_interactions_log_biu
    before insert or update
    on sp_proj_interactions_log
    for each row
begin
    :new.page_rendered := sysdate;
    :new.app_user := lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user));
end sp_proj_interactions_log_biu;
/

create  index sp_proj_interactions_log_i1 on sp_proj_interactions_log (project_id);
create  index sp_proj_interactions_log_i2 on sp_proj_interactions_log (app_user);

create or replace package sp_log
as 
procedure log_interaction (p_project_id in number);
function  log_and_summarize (p_project_id in number) return varchar2;
end sp_log;
/

create or replace package body sp_log 
as  
procedure log_interaction (
    p_project_id in number) 
is
    l_action varchar2(50) := null;
    l_page   number := to_number(v('APP_PAGE_ID'));
begin 
    --
    -- determine action based on page
    --
    if    l_page = 3   then l_action := 'detail view'; 
    elsif l_page = 6   then l_action := 'edit link';
    elsif l_page = 9   then l_action := 'edit contributor';
    elsif l_page = 10  then l_action := 'edit related';
    elsif l_page = 12  then l_action := 'add/edit document';
    elsif l_page = 24  then l_action := 'edit project';
    elsif l_page = 28  then l_action := 'edit comment';
    elsif l_page = 32  then l_action := 'edit description';
    elsif l_page = 36  then l_action := 'quick look';
    elsif l_page = 47  then l_action := 'archive';
    elsif l_page = 49  then l_action := 'mark as duplicate';
    elsif l_page = 64  then l_action := 'view change history';
    elsif l_page = 82  then l_action := 'view tag history';
    elsif l_page = 96  then l_action := 'view description history';
    elsif l_page = 101 then l_action := 'edit activity';    
    elsif l_page = 136 then l_action := 'view description';
    elsif l_page = 501 then l_action := 'task';
    elsif l_page = 502 then l_action := 'task details';
    elsif l_page = 503 then l_action := 'edit task comment';   
    elsif l_page = 504 then l_action := 'edit task document'; 
    elsif l_page = 506 then l_action := 'edit task link'; 
    elsif l_page = 507 then l_action := 'task history';
    elsif l_page = 508 then l_action := 'milestone';
    elsif l_page = 509 then l_action := 'review';
    else                    l_action := 'unknown';
    end if;

    --
    -- log project interaction
    --
    insert into sp_proj_interactions_log (project_id, app_page, action) values (p_project_id, l_page, l_action);
end log_interaction;

function log_and_summarize (
    p_project_id in number) 
    return varchar2
is 
    l_return varchar2(50) := null;
begin  
    --
    -- log interaction
    --
    log_interaction(
        p_project_id => p_project_id);
    --
    -- return interaction summary
    --
    for c1 in (select count(*) c, count(distinct(app_user)) u from sp_proj_interactions_log where project_id = p_project_id) loop 
        l_return := trim(to_char(c1.c,'999G999G999G990'));
        if c1.c = 1 then  
            l_return := l_return||' interaction by '||trim(to_char(c1.u,'999G999G999G990'));
        else 
            l_return := l_return||' interactions by '||trim(to_char(c1.u,'999G999G999G990'));
        end if;
        if c1.u = 1 then 
            l_return := l_return ||' user';
        else 
            l_return := l_return ||' users';
        end if;
    end loop;
    return l_return;
end log_and_summarize;
end sp_log;
/