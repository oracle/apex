create table SP_release_links (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint SP_release_links_PK primary key,
    release_id                     number 
                                   constraint sp_release_links_to_rel_fk
                                   references sp_release_trains (id)
                                   on delete cascade,
    link_name                      varchar2(255 char)   not null,
    link_url                       varchar2(4000 char),
    important_yn                   varchar2(1 char)    default on null 'N'
                                   constraint sp_release_links_imp_cc
                                   check (important_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index SP_release_links_i1 on SP_release_links(release_id);
create unique index SP_release_links_U1 on SP_release_links(release_id,link_name);


create or replace trigger sp_release_links_biu
    before insert or update
    on sp_release_links
    for each row
declare
    l_changed_by  varchar2(255)  := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);

    --
    -- touch parent table
    --
    update sp_release_trains set updated = sysdate, updated_by = :new.updated_by where id = :new.release_id;

    --
    -- change history tracking
    --
    if inserting then
        insert into sp_release_history
            (release_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.release_id, 'RELEASE_LINK', 'CREATE', :new.link_name, sysdate, lower(:new.created_by));
    elsif updating then
        l_changed_by := lower(:new.updated_by);
        --
        if not sp_value_compare.is_equal(:old.link_name,:new.link_name) then
           insert into sp_release_history
               (release_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
           values
               (:new.release_id, 'RELEASE_LINK', 'UPDATE', :old.link_name, :new.link_name, sysdate, l_changed_by);
        end if;
        --
        if not sp_value_compare.is_equal(:old.link_url,:new.link_url) then
           insert into sp_release_history
               (release_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
           values
               (:new.release_id, 'RELEASE_LINK_URL', 'UPDATE', :new.link_name||' - ' ||:old.link_url, :new.link_name||' - ' ||:new.link_url, sysdate, l_changed_by);
        end if;
        --
        if not sp_value_compare.is_equal(:old.important_yn,:new.important_yn) then
           insert into sp_release_history
               (release_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
           values
               (:new.release_id, 'RELEASE_LINK_IMPORTANT', 'UPDATE', :new.link_name||' - ' ||:old.important_yn, :new.link_name||' - ' ||:new.important_yn, sysdate, l_changed_by);
        end if;
    end if;
end sp_release_links_biu;
/

create or replace trigger sp_release_links_bd
    before delete
    on sp_release_links
    for each row
begin
    insert into sp_release_history
        (release_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.release_id, 'RELEASE_LINK', 'DELETE', :old.link_name, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_release_links_bd;
/