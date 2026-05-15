create table SP_CONFIGURABLE_TEXT (
    id                   number default on null to_number(sys_guid(), 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx') not null, 
    config_ID            varchar2(50 char) not null,
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
    on SP_CONFIGURABLE_TEXT
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_configurable_text_biu;
/

begin
insert into SP_CONFIGURABLE_TEXT (id, config_ID, description) values (1, 'ABOUT-PRIMARY-TEXT','Primary text displayed on application about page.');
end;
/