create table sp_initiative_links (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_initiative_links_PK primary key,
    initiative_id                  number 
                                   constraint sp_initiative_links_to_int_fk
                                   references sp_initiatives (id)
                                   on delete cascade,
    link_name                      varchar2(255 char)   not null,
    link_url                       varchar2(4000 char),
    important_yn                   varchar2(1 char) default on null 'N'
                                   constraint sp_initiative_links_imp_ck
                                   check (important_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create index sp_initiative_links_i1 on sp_initiative_links(initiative_id);
create unique index sp_initiative_links_u1 on sp_initiative_links(initiative_id,link_name);
create unique index sp_initiative_links_u2 on sp_initiative_links(initiative_id, LINK_URL);


create or replace trigger sp_initiative_links_biu
    before insert or update
    on sp_initiative_links
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
   -- touch parent table
   --
   if sp_globals.g_audit_this then
       update sp_initiatives set updated = sysdate, updated_by = :new.updated_by where id = :new.initiative_id;
   end if;
end sp_initiative_links_biu;
/