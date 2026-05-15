create or replace trigger SP_PROJECT_RELATED_biu
    before insert or update
    on SP_PROJECT_RELATED
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end SP_PROJECT_RELATED_biu;
/