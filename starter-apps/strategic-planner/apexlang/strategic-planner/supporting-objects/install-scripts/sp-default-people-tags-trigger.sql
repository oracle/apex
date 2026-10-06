create or replace trigger sp_default_people_tags_biu
    before insert or update
    on sp_default_people_tags
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
    :new.tag := upper(:new.tag);
    :new.tag := replace(trim(:new.tag),' ','-');
    :new.tag := replace(trim(:new.tag),'_','-');
end sp_default_people_tags_biu;
/