create table sp_favorites (
    id                  number default on null to_number(sys_guid(), 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx') not null, 
    --
    project_id          number 
                        constraint sp_fav_to_proj_fk
                        references sp_projects(id)
                        on delete cascade,
    team_member_id      number 
                        constraint sp_fav_to_user_fk
                        references sp_team_members(id)
                        on delete cascade,
    created             date not null, 
    created_by          varchar2(255 char) not null, 
    updated             date not null, 
    updated_by          varchar2(255 char) not null
    ) ;

create unique index sp_favorites_i1 on sp_favorites (project_id, team_member_id);

CREATE OR REPLACE TRIGGER sp_favorites_biu
    before insert or update
    on sp_favorites
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_favorites_biu;
/