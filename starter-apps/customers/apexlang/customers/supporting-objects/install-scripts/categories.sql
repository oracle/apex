create table eba_cust_categories
(
   id                      number       not null,
   row_version_number      number,
   category                varchar2(60) not null,
   description             varchar2(255) ,
   is_active               varchar2(1) default 'Y',
   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_categories
   add constraint eba_cust_categories_pk
       primary key (id)
/
create unique index eba_cust_categories_uk on eba_cust_categories(category)
/
alter table eba_cust_categories
   add constraint eba_cust_categories_uk
       unique (category)
       using index eba_cust_categories_uk
/



