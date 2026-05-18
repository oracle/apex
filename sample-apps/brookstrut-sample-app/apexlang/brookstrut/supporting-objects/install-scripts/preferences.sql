begin
   execute immediate 'drop table OOW_DEMO_PREFERENCES cascade constraints';
exception when others then
    if sqlcode <> -942 then /* ORA-00942: table already exists - see bug 18386198  */
        raise;
    end if;
end;
/


create table oow_demo_preferences (
    id                      number              not null
                                                constraint oow_demo_preferences_pk
                                                primary key,
    preference_name         varchar2(255)       not null
                                                constraint oow_demo_prefs_prefname_ck
                                                check (upper(preference_name)=preference_name),
    preference_value        varchar2(255)       not null,
    created_by              varchar2(255)       not null,
    created_on              timestamp with local time zone,
    updated_by              varchar2(255),
    updated_on              timestamp with local time zone )
/
create unique index oow_demo_preferences_uk on oow_demo_preferences (preference_name);
/

create or replace trigger oow_demo_preferences_biu
before insert or update on oow_demo_preferences
    for each row
begin
    if inserting and :new.id is null then
       select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created_on := localtimestamp;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated_on := localtimestamp;
    end if;
    :new.preference_name := upper(:new.preference_name);
end;
/
alter trigger oow_demo_preferences_biu enable;
/