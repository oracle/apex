create table eba_cust_administrators (
    id                      number        not null,
    row_version_number      number,
    app_user                varchar2(255) not null,
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255)
   )
/
alter table eba_cust_administrators
   add constraint eba_cust_administrators_pk
       primary key (id)
/
create unique index eba_cust_administrators_uk on eba_cust_administrators(app_user)
/
alter table eba_cust_administrators
   add constraint eba_cust_administrators_uk
       unique (app_user)
       using index eba_cust_administrators_uk
/



