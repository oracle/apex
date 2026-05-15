create table sp_release_milestone_default_tags (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_milestone_default_tags_pk primary key,
    display_sequence               number            not null,
    tag                            varchar2(30 char) not null,
    description                    varchar2(512 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

alter table sp_release_milestone_default_tags 
    add constraint sp_release_milestone_default_tags_uk unique(tag);

create or replace trigger sp_release_milestone_default_tags_biu
    before insert or update
    on sp_release_milestone_default_tags
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.tag := upper(:new.tag);
end sp_release_milestone_default_tags_biu;
/