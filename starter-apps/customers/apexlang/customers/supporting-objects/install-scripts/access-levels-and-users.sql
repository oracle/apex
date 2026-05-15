create table eba_cust_access_levels (
    id                      number              not null
                                                constraint eba_cust_access_levels_pk
                                                primary key,
    access_level            varchar2(30)        not null
                                                constraint eba_cust_acc_lvl_acc_lvl_ck
                                                check (access_level in (
                                                    'Administrator',
                                                    'Contributor',
                                                    'Reader' )),
    row_version             number )
/
create unique index eba_cust_access_levels_uk on eba_cust_access_levels(access_level);



create table eba_cust_users (
    id                      number              not null
                                                constraint eba_cust_users_pk
                                                primary key,
    username                varchar2(255)       not null
                                                constraint eba_cust_users_username_ck
                                                check (upper(username)=username),
    access_level_id         number              not null
                                                constraint eba_cust_users_acc_level_fk
                                                references eba_cust_access_levels,
    account_locked          varchar2(1)         not null
                                                constraint eba_cust_users_acc_locked_ck
                                                check (account_locked in ('Y','N')),
    row_version             number,
    created_by              varchar2(255)       not null,
    created                 timestamp with time zone,
    updated_by              varchar2(255),
    updated                 timestamp with time zone )
/
create unique index eba_cust_users_uk on eba_cust_users (username);
create index eba_cust_users_acc_lvl_idx on eba_cust_users (access_level_id);




