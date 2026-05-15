create table eba_ca_access_levels (
    id                      number              not null
                                                constraint eba_ca_access_levels_pk
                                                primary key,
    access_level            varchar2(30)        not null
                                                constraint eba_ca_acc_lvl_acc_lvl_ck
                                                check (access_level in (
                                                    'Administrator',
                                                    'Contributor',
                                                    'Reader' )),
    row_version             number )
/
create unique index eba_ca_access_levels_uk on eba_ca_access_levels(access_level);

create table eba_ca_users (
    id                      number              not null
                                                constraint eba_ca_users_pk
                                                primary key,
    username                varchar2(255)       not null
                                                constraint eba_ca_users_username_ck
                                                check (upper(username)=username),
    access_level_id         number              not null
                                                constraint eba_ca_users_acc_level_fk
                                                references eba_ca_access_levels,
    account_locked          varchar2(1)         not null
                                                constraint eba_ca_users_acc_locked_ck
                                                check (account_locked in ('Y','N')),
    restricted_to           varchar2(4000), -- comma separated list of calendar_ids, for contributor (access_level_id 2)
    row_version             number,
    created_by              varchar2(255)       not null,
    created                 timestamp with time zone,
    updated_by              varchar2(255),
    updated                 timestamp with time zone )
/
create unique index eba_ca_users_uk on eba_ca_users (username);
create index eba_ca_users_acc_lvl_idx on eba_ca_users (access_level_id);

create or replace trigger eba_ca_users_biu
    before insert or update on eba_ca_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_ca.gen_id();
        end if;
        :new.created_by         := nvl(v('APP_USER'), USER);
        :new.created            := current_timestamp;
        :new.row_version        := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';    
        end if;
    end if;
    if updating then
            :new.updated_by         := nvl(v('APP_USER'), USER);
            :new.updated            := current_timestamp;
            :new.row_version        := nvl(:old.row_version,1) + 1;                                
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;
/
alter trigger eba_ca_users_biu enable;

create or replace trigger eba_ca_users_bd
    before delete on eba_ca_users
    for each row
declare
    pragma autonomous_transaction;
begin
    -- Disallow deletes to a user's own record unless last one.
    if v('APP_USER') = upper(:old.username) then
       for c1 in (
          select count(*) cnt
            from eba_ca_users
           where id != :old.id )
       loop
          if c1.cnt > 0 then
             raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
          end if;
       end loop;
    end if;    
end;
/
alter trigger eba_ca_users_bd enable;

create table eba_ca_error_lookup (
    constraint_name         varchar2(30)        not null
                                                constraint eba_ca_error_lookup_pk
                                                primary key,
    message                 varchar2(4000)      not null,
    language_code           varchar2(30)        not null
)
/
create unique index eba_ca_error_lookup_uk on eba_ca_error_lookup (constraint_name,language_code);
/
create table eba_ca_preferences (
    id                      number              not null
                                                constraint eba_ca_preferences_pk
                                                primary key,
    preference_name         varchar2(255)       not null
                                                constraint eba_ca_prefs_prefname_ck
                                                check (upper(preference_name)=preference_name),
    preference_value        varchar2(255)       not null,
    created_by              varchar2(255)       not null,
    created_on              timestamp with time zone,
    updated_by              varchar2(255),
    updated_on              timestamp with time zone )
/
create unique index eba_ca_preferences_uk on eba_ca_preferences (preference_name);
/

create or replace trigger eba_ca_preferences_biu
before insert or update on eba_ca_preferences
    for each row
begin
    if inserting and :new.id is null then
        :new.id := eba_ca.gen_id();
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created_on := current_timestamp;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated_on := current_timestamp;
    end if;
    :new.preference_name := upper(:new.preference_name);
end;
/
alter trigger eba_ca_preferences_biu enable;
