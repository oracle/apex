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