create table eba_cust_industries (
    id                    number not null,
    row_version_number    number,
    industry_name         varchar2(255),
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255)
   )
/
alter table eba_cust_industries
   add constraint eba_cust_industries_pk
       primary key (id)
/
create unique index eba_cust_industries_uk on eba_cust_industries(industry_name)
/
alter table eba_cust_industries
   add constraint eba_cust_industries_uk
       unique (industry_name)
       using index eba_cust_industries_uk
/



