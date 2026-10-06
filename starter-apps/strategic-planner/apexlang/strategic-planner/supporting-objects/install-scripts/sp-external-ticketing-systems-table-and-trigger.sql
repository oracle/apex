create table sp_external_ticketing_systems (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_external_ticketing_systems_pk primary key,
    --
    external_system_name           varchar2(30 char)   not null,
    description                    varchar2(4000 char),
    is_active_yn                   varchar2(1 char)    not null,
    link_pattern                   varchar2(4000 char) not null,
    min_id_length                  integer,
    max_id_length                  integer,
    --
    must_contain                   varchar2(255 char),
    ticket_id_regex                varchar2(255 char) not null,
    evaulation_sequence            number,
    --
    required_initiative_id         number
                                   constraint sp_external_ticketing_system_ini_fk 
                                   references sp_initiatives (id)
                                   on delete cascade,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;


create or replace trigger sp_external_ticketing_systems_biu
    before insert or update
    on sp_external_ticketing_systems
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
    -- default values
    --
    if :new.evaulation_sequence is null then
       :new.evaulation_sequence := 100;
    end if;
    if :new.is_active_yn is null then
       :new.is_active_yn := 'N';
    end if;
end sp_external_ticketing_systems_biu;
/