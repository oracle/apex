create table eba_cust_type (
   id                      number       not null,
   row_version_number      number,
   type                    varchar2(60) not null,
   description             varchar2(4000) ,
   is_active               varchar2(1)  default 'Y',

   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_type
   add constraint eba_cust_type_pk
       primary key (id)
/
create unique index eba_cust_type_uk on eba_cust_type(type)
/
alter table eba_cust_type
   add constraint eba_cust_type_uk
       unique (type)
       using index eba_cust_type_uk
/