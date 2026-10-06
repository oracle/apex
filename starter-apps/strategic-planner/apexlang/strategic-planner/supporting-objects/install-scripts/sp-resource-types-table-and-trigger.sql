create table sp_resource_types (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_resource_types_id_pk primary key,
    resource_type                  varchar2(50 char) not null,
    resource_description           varchar2(4000 char),
    is_default_yn                  varchar2(1 char)
                                   constraint sp_res_t_is_default_ck 
                                   check (is_default_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_resource_types_u1 on sp_resource_types (resource_type);

create or replace trigger sp_resource_types_biu
    before insert or update
    on sp_resource_types
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
end sp_resource_types_biu;
/