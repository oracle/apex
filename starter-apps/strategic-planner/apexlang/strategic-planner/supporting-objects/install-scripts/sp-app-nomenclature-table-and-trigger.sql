create table sp_app_nomenclature (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_app_nomenclature_pk primary key,
    static_id                      varchar2(50 char),
    default_order                  number,
    custom_value                   varchar2(50 char),
    default_value                  varchar2(50 char),
    --
    description                    varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_app_nomenclature_u1 on sp_app_nomenclature (static_id);

create or replace trigger sp_app_nomenclature_biu
    before insert or update
    on sp_app_nomenclature
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
    :new.static_id := upper(:new.static_id);
end sp_app_nomenclature_biu;
/