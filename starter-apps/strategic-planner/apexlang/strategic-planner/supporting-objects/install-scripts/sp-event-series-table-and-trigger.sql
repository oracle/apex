create table sp_event_series (
    id                      number
                              default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                              constraint sp_event_series_pk primary key,
    start_date              timestamp with time zone  not null,
    end_date                timestamp with time zone  not null,
    recur_freq              varchar2(10)  not null
                              constraint sp_event_series_freq_cc
                              check (recur_freq in ('D','WD','W','2W','M')),
    --
    created                 date            not null,
    created_by              varchar2(255)   not null,
    updated                 date            not null,
    updated_by              varchar2(255)   not null
);
create index sp_event_series_i1 on sp_event_series (start_date);

create or replace trigger sp_event_series_biu
    before insert or update
    on sp_event_series
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
end sp_event_series_biu;
/