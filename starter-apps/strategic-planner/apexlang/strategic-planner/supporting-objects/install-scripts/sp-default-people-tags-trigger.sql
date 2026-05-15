create or replace trigger SP_DEFAULT_PEOPLE_TAGS_biu
    before insert or update
    on SP_DEFAULT_PEOPLE_TAGS
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.tag := upper(:new.tag);
    :new.tag := replace(trim(:new.tag),' ','-');
    :new.tag := replace(trim(:new.tag),'_','-');
end SP_DEFAULT_PEOPLE_TAGS_biu;
/