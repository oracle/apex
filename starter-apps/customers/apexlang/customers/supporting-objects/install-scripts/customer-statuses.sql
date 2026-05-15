create table eba_cust_status (
   id                      number       not null,
   row_version_number      number,
   status                  varchar2(60) not null,
   description             varchar2(4000) ,
   is_active               varchar2(1)  default 'Y',

   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_status
   add constraint eba_cust_status_pk
       primary key (id)
/
create unique index eba_cust_status_uk on eba_cust_status(status)
/
alter table eba_cust_status
   add constraint eba_cust_status_uk
       unique (status)
       using index eba_cust_status_uk
/



