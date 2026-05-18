create table sp_approval_types (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_approval_types_pk primary key,
    --
    display_seq                    number             not null,
    approval_type                  varchar2(30 char)  not null, -- DEVELOPMENT, RELEASE INCLUSION 
    description                    varchar2(4000 char),
    active_yn                      varchar2(1 char) default on null 'Y'
                                   constraint sp_approval_types_active_cc
                                   check (active_yn in ('Y','N')),
    --
    created                        date                not null,
    created_by                     varchar2(255 char)  not null,
    updated                        date                not null,
    updated_by                     varchar2(255 char)  not null
);
alter table sp_approval_types add constraint sp_approval_types_uk
    unique (approval_type);

create or replace trigger sp_approval_types_biu
    before insert or update
    on sp_approval_types
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_approval_types_biu;
/


create table sp_initiative_approvals (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_initiative_approvals_pk primary key,
    --
    initiative_id                  number
                                   constraint sp_initiative_approvals_init_fk
                                   references sp_initiatives on delete cascade,
    approval_type_id               number  not null
                                   constraint sp_initiative_approvals_apptype_fk
                                   references sp_approval_types,   
    active_yn                      varchar2(1 char) default on null 'Y'
                                   constraint sp_initiative_approvals_active_cc
                                   check (active_yn in ('Y','N')),           
    --
    created                        date                not null,
    created_by                     varchar2(255 char)  not null,
    updated                        date                not null,
    updated_by                     varchar2(255 char)  not null
);
alter table sp_initiative_approvals add constraint sp_initiative_approvals_uk
    unique (initiative_id, approval_type_id);
create index sp_initiative_approvals_i1 on sp_initiative_approvals (approval_type_id);

create or replace trigger sp_initiative_approvals_biu
    before insert or update
    on sp_initiative_approvals
    for each row
declare
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    -- touch parent table
    --
    update sp_initiatives set updated = sysdate, updated_by = :new.updated_by where id = :new.initiative_id;
    --
    -- history
    --
    if inserting then
        for c1 in (select approval_type r from sp_approval_types x where x.id = :new.approval_type_id) loop l_new_value := c1.r; end loop; 
        insert into sp_initiative_history 
            (initiative_id, attribute_column, change_type, new_value, changed_on, changed_by) 
        values 
            (:new.initiative_id, 'INITIATIVE_APPROVAL', 'CREATE', l_new_value||' ('||case when :new.active_yn = 'Y' then 'Active' else 'Inactive' end||')', sysdate, lower(:new.created_by)); 
    elsif updating then
        if not sp_value_compare.is_equal(:old.approval_type_id,:new.approval_type_id) or
           not sp_value_compare.is_equal(:old.active_yn,:new.active_yn) then
            for c1 in (select approval_type r from sp_approval_types x where x.id = :old.approval_type_id) loop l_old_value := c1.r; end loop;
            for c1 in (select approval_type r from sp_approval_types x where x.id = :new.approval_type_id) loop l_new_value := c1.r; end loop; 
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (:new.initiative_id, 'INITIATIVE_APPROVAL', 'UPDATE', 
                 l_old_value||' ('||case when :old.active_yn = 'Y' then 'Active' else 'Inactive' end||')', 
                 l_new_value||' ('||case when :new.active_yn = 'Y' then 'Active' else 'Inactive' end||')', 
                 sysdate, lower(:new.updated_by));
        end if;
    end if;
end sp_initiative_approvals_biu;
/
create or replace trigger sp_initiative_approvals_bd
    before delete
    on sp_initiative_approvals
    for each row
declare
    l_old_value   varchar2(4000) := null;
begin
    --
    -- touch parent table
    --
    update sp_initiatives set updated = sysdate, updated_by = :old.updated_by where id = :old.initiative_id;
    --
    for c1 in (select approval_type r from sp_approval_types x where x.id = :old.approval_type_id) loop l_old_value := c1.r; end loop; 
    insert into sp_initiative_history
        (initiative_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.initiative_id, 'INITIATIVE_APPROVAL', 'DELETE', 
         l_old_value||' ('||case when :old.active_yn = 'Y' then 'Active' else 'Inactive' end||')', sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_initiative_approvals_bd;
/


create table sp_initiative_approval_chain (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_initiative_approval_chain_pk primary key,
    --
    initiative_approval_id         number  not null
                                   constraint sp_initiative_approval_chain_apptype_fk
                                   references sp_initiative_approvals,              
    team_member_id                 number
                                   constraint sp_initiative_approval_chain_tm_fk
                                   references sp_team_members,
    approval_seq                   number not null,
    active_yn                      varchar2(1 char) default on null 'Y'
                                   constraint sp_initiative_approval_chain_active_cc
                                   check (active_yn in ('Y','N')),
    alternate_team_member_id       number
                                   constraint sp_project_approval_chain_alt_tm_fk
                                   references sp_team_members,
    alternate_start_date           date,
    alternate_end_date             date,
    --
    created                        date                not null,
    created_by                     varchar2(255 char)  not null,
    updated                        date                not null,
    updated_by                     varchar2(255 char)  not null
);
alter table sp_initiative_approval_chain add constraint sp_initiative_approval_chain_uk1
    unique (initiative_approval_id, team_member_id);
alter table sp_initiative_approval_chain add constraint sp_initiative_approval_chain_uk2
    unique (initiative_approval_id, approval_seq);
create index sp_initiative_approval_chain_i1 on sp_initiative_approval_chain (team_member_id);

create or replace trigger sp_initiative_approval_chain_biu
    before insert or update
    on sp_initiative_approval_chain
    for each row
declare
    l_initiative_id  number;
    l_approval_type  varchar2(4000) := null;
    l_old_value      varchar2(4000) := null;
    l_new_value      varchar2(4000) := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    :new.alternate_start_date := trunc(:new.alternate_start_date);
    :new.alternate_end_date   := trunc(:new.alternate_end_date);
    --
    -- touch parent table
    --
    update sp_initiative_approvals set updated = sysdate, updated_by = :old.updated_by where id = :old.initiative_approval_id;
    --
    -- history
    --
    if inserting then
        for c1 in (select x.initiative_id, t.approval_type 
                     from sp_initiative_approvals x, sp_approval_types t 
                    where x.id = :new.initiative_approval_id
                      and x.approval_type_id = t.id
                  ) loop l_initiative_id := c1.initiative_id; l_approval_type := c1.approval_type; end loop;     
        for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.team_member_id) loop l_new_value := :new.approval_seq||'-'||c1.r; end loop;
        insert into sp_initiative_history 
            (initiative_id, attribute_column, change_type, new_value, changed_on, changed_by) 
        values 
            (l_initiative_id, 'INITIATIVE_APPROVAL_CHAIN', 'CREATE', l_approval_type||' - '||l_new_value, sysdate, lower(:new.created_by)); 
    elsif updating then
        if not sp_value_compare.is_equal(:old.team_member_id,:new.team_member_id) or
               sp_value_compare.is_equal(:old.approval_seq,:new.approval_seq) or
               sp_value_compare.is_equal(:old.active_yn,:new.active_yn) or
               sp_value_compare.is_equal(:old.alternate_team_member_id,:new.alternate_team_member_id) or
               sp_value_compare.is_equal(:old.alternate_start_date,:new.alternate_start_date) or
               sp_value_compare.is_equal(:old.alternate_end_date,:new.alternate_end_date)
        then
            for c1 in (select x.initiative_id, t.approval_type 
                         from sp_initiative_approvals x, sp_approval_types t 
                        where x.id = :new.initiative_approval_id
                          and x.approval_type_id = t.id
                      ) loop l_initiative_id := c1.initiative_id; l_approval_type := c1.approval_type; end loop;   
            for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.team_member_id) loop l_old_value := :old.approval_seq||'-'||c1.r; end loop;
            for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.team_member_id) loop l_new_value := :new.approval_seq||'-'||c1.r; end loop;
            if sp_value_compare.is_equal(:old.alternate_team_member_id,:new.alternate_team_member_id) then
                for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.alternate_team_member_id) loop 
                           l_old_value := l_old_value || ' [alternate '||c1.r||' '||case when :old.alternate_start_date is not null then :old.alternate_start_date||' thru ' end|| 
                                                                                    case when :old.alternate_end_date is not null then :old.alternate_end_date end||']'; end loop;
                for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :new.alternate_team_member_id) loop 
                           l_new_value := l_new_value || ' [alternate '||c1.r||' '||case when :new.alternate_start_date is not null then :new.alternate_start_date||' thru ' end|| 
                                                                                    case when :new.alternate_end_date is not null then :new.alternate_end_date end||']'; end loop;
            end if;
            insert into sp_initiative_history
                (initiative_id, attribute_column, change_type, old_value, new_value,changed_on, changed_by)
            values
                (l_initiative_id, 'INITIATIVE_APPROVAL_CHAIN', 'UPDATE', 
                 l_approval_type||' - '||l_old_value||' ('||decode(:old.active_yn,'Y','Active','Inactive')||')', 
                 l_approval_type||' - '||l_new_value||' ('||decode(:new.active_yn,'Y','Active','Inactive')||')', 
                 sysdate, lower(:new.updated_by));
        end if;
    end if;
end sp_initiative_approval_chain_biu;
/
create or replace trigger sp_initiative_approval_chain_bd
    before delete
    on sp_initiative_approval_chain
    for each row
declare
    l_initiative_id  number;
    l_approval_type  varchar2(4000) := null;
    l_old_value      varchar2(4000) := null;
begin
    --
    -- touch parent table
    --
    update sp_initiative_approvals set updated = sysdate, updated_by = :old.updated_by where id = :old.initiative_approval_id;
    --
    -- history
    --
    for c1 in (select x.initiative_id, t.approval_type 
                 from sp_initiative_approvals x, sp_approval_types t 
                where x.id = :old.initiative_approval_id
                  and x.approval_type_id = t.id
              ) loop l_initiative_id := c1.initiative_id; l_approval_type := c1.approval_type; end loop; 
    for c1 in (select lower(email) r from SP_TEAM_MEMBERS x where x.id = :old.team_member_id) loop l_old_value := :old.approval_seq||'-'||c1.r; end loop;
    insert into sp_initiative_history
        (initiative_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (l_initiative_id, 'INITIATIVE_APPROVAL', 'DELETE', 
         l_approval_type||' - '||l_old_value||' ('||decode(:old.active_yn,'Y','Active','Inactive')||')', 
         sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_initiative_approval_chain_bd;
/


create table sp_project_approvals (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_approvals_pk primary key,
    --
    approval_type_id               number  not null
                                   constraint sp_project_approvals_apptype_fk
                                   references sp_approval_types, 
    project_id                     number  not null
                                   constraint sp_project_approvals_proj_fk
                                   references sp_projects on delete cascade,
    submitted_by_team_member_id    number  not null
                                   constraint sp_project_approvals_subm_fk
                                   references sp_team_members,
    justification                  varchar2(4000)  not null,
    submitted                      date  not null,
    initiative_approval_id         number
                                   constraint sp_project_approvals_chain_fk
                                   references sp_initiative_approvals,
    status                         varchar2(30)  default on null 'PENDING', -- Pending, Withdrawn, Clarification Requested, Approved, Rejected
    withdrawn_by_team_member_id    number
                                   constraint sp_project_approvals_withd_fk
                                   references sp_team_members,
    --
    updated                        date                not null,
    updated_by                     varchar2(255 char)  not null
);
create index sp_project_approvals_i1 on sp_project_approvals (approval_type_id);
create index sp_project_approvals_i2 on sp_project_approvals (project_id);
create index sp_project_approvals_i3 on sp_project_approvals (submitted_by_team_member_id);
create index sp_project_approvals_i4 on sp_project_approvals (initiative_approval_id);

create or replace trigger sp_project_approvals_biu
    before insert or update
    on sp_project_approvals
    for each row
declare
    l_old_value   varchar2(4000) := null;
    l_new_value   varchar2(4000) := null;
begin
    if inserting then
        :new.submitted := sysdate;
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    -- touch parent table
    --
    update sp_projects set updated = sysdate, updated_by = :new.updated_by where id = :new.project_id;
    --
    -- history
    -- 
    if inserting then
        for c1 in (select approval_type x from sp_approval_types t where t.id = :new.approval_type_id) loop l_new_value := c1.x; end loop;
        insert into sp_project_history
            (project_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.project_id, 'APPROVAL', 'CREATE', l_new_value, sysdate, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
    elsif updating then
        if not sp_value_compare.is_equal(:old.status,:new.status) then
            for c1 in (select approval_type x from sp_approval_types t where t.id = :new.approval_type_id) loop l_new_value := c1.x; end loop;
            insert into sp_project_history
                (project_id, attribute_column, change_type, new_value, changed_on, changed_by)
            values
                (:new.project_id, 'APPROVAL', 'UPDATE', l_new_value||' - '||:new.status, sysdate, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
        end if;
    end if;
end sp_project_approvals_biu;
/
create or replace trigger sp_project_approvals_bd
    before delete
    on sp_project_approvals
    for each row
declare
    l_old_value   varchar2(4000) := null;
begin
    --
    -- touch parent table
    --
    update sp_projects set updated = sysdate, updated_by = :old.updated_by where id = :old.project_id;
    --
    for c1 in (select approval_type x from sp_approval_types t where t.id = :old.approval_type_id) loop l_old_value := c1.x; end loop;
    insert into sp_project_history
        (project_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.project_id, 'APPROVAL', 'DELETE', l_old_value, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_project_approvals_bd;
/

create table sp_project_approval_chain (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_approval_chain_pk primary key,
    --
    project_approval_id            number  not null
                                   constraint sp_project_approval_chain_projapp_fk
                                   references sp_project_approvals on delete cascade,
    initiative_approval_chain_id   number
                                   constraint sp_project_approval_chain_iac_fk
                                   references sp_initiative_approval_chain,
    team_member_id                 number  not null
                                   constraint sp_project_approval_chain_tm_fk
                                   references sp_team_members,
    status                         varchar2(30 char)  default on null 'PENDING', -- Pending, Withdrawn, Clarification Requested, Approved, Rejected
    last_status_on                 date               default on null sysdate,
    comments                       varchar2(4000),  -- not null if clarification or rejected
    response                       varchar2(4000),
    response_by_team_member_id     number
                                   constraint sp_project_approval_chain_resp_fk
                                   references sp_team_members,
    responded_on                   date,
    final_yn                       varchar2(1 char)
                                      default on null 'Y'
                                      constraint sp_project_approval_chain_final_cc
                                      check (final_yn in ('Y','N')),
    --
    created                        date                not null,
    created_by                     varchar2(255 char)  not null,
    updated                        date                not null,
    updated_by                     varchar2(255 char)  not null
);
create index sp_project_approval_chain_i1 on sp_project_approval_chain (project_approval_id);
create index sp_project_approval_chain_i2 on sp_project_approval_chain (initiative_approval_chain_id);
create index sp_project_approval_chain_i3 on sp_project_approval_chain (team_member_id);
create index sp_project_approval_chain_i4 on sp_project_approval_chain (response_by_team_member_id);

create or replace trigger sp_project_approval_chain_biu
    before insert or update
    on sp_project_approval_chain
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    -- no need to update project table nor history
    --
end sp_project_approval_chain_biu;
/