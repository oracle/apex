-- HOLDS ALL EVENTS BY DAY (RECURRENCE DETAILS IN SERIES)
create table sp_events (
    id                        number
                                default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                constraint sp_events_pk primary key,
    event_type_id             number  not null
                                constraint sp_events_type_fk
                                references sp_event_types,
    event_date                timestamp with time zone  not null,
    event_name                varchar2(255),
    for_user_id               number
                                constraint sp_events_for_user_fk
                                references sp_team_members,
    event_details             varchar2(4000),
    --
    series_id                 number
                                constraint sp_events_series_fk
                                references sp_event_series,
    --
    created                   date            not null,
    created_by                varchar2(255)   not null,
    updated                   date            not null,
    updated_by                varchar2(255)   not null
);

create index sp_events_i1 on sp_events (event_type_id);
create index sp_events_i2 on sp_events (for_user_id);
create index sp_events_i3 on sp_events (series_id);
create index sp_events_i4 on sp_events (event_date);

create or replace trigger sp_events_biu
    before insert or update
    on sp_events
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
end sp_events_biu;
/