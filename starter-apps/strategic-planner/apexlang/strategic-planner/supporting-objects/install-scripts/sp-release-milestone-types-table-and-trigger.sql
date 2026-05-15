create table sp_release_milestone_types (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_milestone_types_pk primary key,
    --
    milestone_type                 varchar2(60 char) not null,
    include_yn                     varchar2(1 char) default on null 'Y',
    display_seq                    number,
    calendar_event_color           varchar2(30),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);
alter table sp_release_milestone_types add constraint sp_release_milestone_types_uk
    unique (milestone_type);
alter table sp_release_milestone_types add constraint sp_release_milestone_types_include_cc
    check (include_yn in ('Y','N'));

create or replace trigger sp_release_milestone_types_biu
    before insert or update
    on sp_release_milestone_types
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_release_milestone_types_biu;
/