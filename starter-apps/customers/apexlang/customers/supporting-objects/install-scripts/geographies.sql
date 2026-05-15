create table eba_cust_geographies (
    id                      number not null,
    row_version_number      number not null,
    geography_name          varchar2(255),
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255)
   )
/
alter table eba_cust_geographies
   add constraint eba_cust_geographies_pk
       primary key (id)
/
create unique index eba_cust_geographies_uk on eba_cust_geographies(geography_name)
/
alter table eba_cust_geographies
   add constraint eba_cust_geographies_uk
       unique (geography_name)
       using index eba_cust_geographies_uk
/



