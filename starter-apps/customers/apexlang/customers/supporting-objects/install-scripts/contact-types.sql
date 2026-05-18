create table eba_cust_contact_types (
   id                      number       not null,
   row_version_number      number,
   contact_type            varchar2(60) not null,
   is_active               varchar2(1)  default 'Y',
   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_contact_types
   add constraint eba_cust_contact_types_pk
       primary key (id)
/
create unique index eba_cust_contact_types_uk on eba_cust_contact_types(contact_type)
/
alter table eba_cust_contact_types
   add constraint eba_cust_contact_types_uk
       unique (contact_type)
       using index eba_cust_contact_types_uk
/



