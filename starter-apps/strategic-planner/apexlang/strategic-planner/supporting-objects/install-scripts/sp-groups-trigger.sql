create or replace trigger sp_groups_biu
    before insert or update
    on sp_groups
    for each row
begin
    if inserting then
        :new.created    := nvl(:new.created,sysdate);
        :new.created_by := nvl(:new.created_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
        :new.updated    := nvl(:new.updated,sysdate);
        :new.updated_by := nvl(:new.updated_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
    elsif updating then
        :new.updated    := sysdate;
        :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    --
    -- set organization_name_upper
    --
    :new.group_name_upper := upper(:new.group_name);
    :new.group_tag := upper(replace(trim(:new.group_tag),' ','-'));
end sp_groups_biu;
/