create table sp_event_types (
    id                        number
                                  default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                  constraint sp_event_types_pk primary key,
    event_type                varchar2(60)   not null  
                                  constraint sp_event_types_uk unique,
    general_event_yn          varchar2(1) default on null 'N'
                                  constraint sp_event_types_general_event_cc
                                  check (general_event_yn in ('Y','N')),
    --
    calendar_event_color      varchar2(30),
    icon_class                varchar2(30),
    quick_pick_yn             varchar2(1) default on null 'N'
                                  constraint sp_event_types_quick_pick_cc
                                  check (quick_pick_yn in ('Y','N')),
    active_yn                 varchar2(1) default on null 'Y'
                                  constraint sp_event_types_active_cc
                                  check (active_yn in ('Y','N')),
    --
    created                   date            not null,
    created_by                varchar2(255)   not null,
    updated                   date            not null,
    updated_by                varchar2(255)   not null
);

create or replace trigger sp_event_types_biu
    before insert or update
    on sp_event_types
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
end sp_event_types_biu;
/