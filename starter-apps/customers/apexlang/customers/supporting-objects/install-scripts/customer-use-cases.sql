create table eba_cust_use_case (
   id                      number       not null,
   row_version_number      number,
   use_case                varchar2(60) not null,
   description             varchar2(4000) ,
   is_active               varchar2(1)  default 'Y',

   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_use_case
   add constraint eba_cust_use_case_pk
       primary key (id)
/
create unique index eba_cust_use_case_uk on eba_cust_use_case(use_case)
/
alter table eba_cust_use_case
   add constraint eba_cust_use_case_uk
       unique (use_case)
       using index eba_cust_use_case_uk
/