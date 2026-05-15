-- simple triggers



create or replace trigger sp_project_sizes_biu
    before insert or update
    on sp_project_sizes
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    if :new.include_yn is null then
       :new.include_yn := 'Y';
    end if;
end sp_project_sizes_biu;
/


create or replace trigger SP_DEFAULT_TAGS_biu
    before insert or update
    on SP_DEFAULT_TAGS
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.tag := upper(:new.tag);
end SP_DEFAULT_TAGS_biu;
/

create or replace trigger SP_APP_NOMENCLATURE_biu
    before insert or update
    on SP_APP_NOMENCLATURE
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.static_id := upper(:new.static_id);
end SP_APP_NOMENCLATURE_biu;
/

create or replace trigger sp_project_priorities_biu
    before insert or update
    on sp_project_priorities
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_project_priorities_biu;
/





create or replace trigger sp_resource_types_biu
    before insert or update
    on sp_resource_types
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.upper_resource_type := upper(:new.resource_type);
end sp_resource_types_biu;
/

create or replace trigger sp_project_scales_biu
    before insert or update
    on sp_project_scales
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_project_scales_biu;
/