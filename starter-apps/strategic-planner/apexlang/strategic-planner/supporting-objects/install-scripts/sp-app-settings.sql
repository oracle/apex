create table sp_app_settings (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint sp_app_settings_pk primary key,
    --
    static_id                      varchar2(255)  not null
                                      constraint sp_app_settings_uk unique,
    description                    varchar2(4000) not null,
    setting_value                  varchar2(4000),
    is_numeric_yn                  varchar2(1)    not null    -- used in validation
                                      constraint sp_app_settings_is_numeric_cc
                                      check (is_numeric_yn in ('Y','N')),
    is_yn                          varchar2(1)    not null    -- used in validation
                                      constraint sp_app_settings_is_yn_cc
                                      check (is_yn in ('Y','N')),
    --
    created                        date            not null,
    created_by                     varchar2(255)   not null,
    updated                        date            not null,
    updated_by                     varchar2(255)   not null
);

create or replace trigger sp_app_settings_biu
    before insert or update 
    on sp_app_settings
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated    := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.static_id  := upper(:new.static_id);
end sp_app_settings_biu;
/