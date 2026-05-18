create table eba_qpoll_preferences (
    id                      number              not null
                                                constraint eba_qpoll_preferences_pk
                                                primary key,
    preference_name         varchar2(255)       not null
                                                constraint eba_qp_prefs_prefname_ck
                                                check (upper(preference_name)=preference_name),
    preference_value        varchar2(255)       not null,
    created_by              varchar2(255)       not null,
    created_on              timestamp with time zone,
    updated_by              varchar2(255),
    updated_on              timestamp with time zone )
/
create unique index eba_qpoll_preferences_uk on eba_qpoll_preferences (preference_name);
/

create or replace trigger eba_qpoll_preferences_biu
before insert or update on eba_qpoll_preferences
    for each row
begin
    if inserting and :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
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
alter trigger eba_qpoll_preferences_biu enable;
/

