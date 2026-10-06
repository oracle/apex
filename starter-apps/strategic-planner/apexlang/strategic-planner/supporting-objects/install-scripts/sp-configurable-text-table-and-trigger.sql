create table sp_configurable_text (
    id                   number default on null to_number(sys_guid(), 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx') not null, 
    config_id            varchar2(50 char) not null,
    description          varchar2(4000 char) not null,
    --
    configurable_content clob,
    --
    created              date not null, 
    created_by           varchar2(255 char) not null, 
    updated              date not null, 
    updated_by           varchar2(255 char) not null
    ) 
;

create or replace trigger sp_configurable_text_biu
    before insert or update
    on sp_configurable_text
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
end sp_configurable_text_biu;
/