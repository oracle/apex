create table eba_cust_preferences (
    id                      number              not null
                                                constraint eba_cust_preferences_pk
                                                primary key,
    preference_name         varchar2(255)       not null
                                                constraint eba_cust_prefs_prefname_ck
                                                check (upper(preference_name)=preference_name),
    preference_value        varchar2(255),
    created_by              varchar2(255)       not null,
    created_on              timestamp with time zone,
    updated_by              varchar2(255),
    updated_on              timestamp with time zone )
/
create unique index eba_cust_preferences_uk on eba_cust_preferences (preference_name)
/


