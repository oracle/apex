create table eba_cust_links (
   id                      number          not null,
   row_version_number      number,
   customer_id             number          not null,
   contact_id              number,
   link                    varchar2(4000)  not null,
   link_desc               varchar2(255),
   link_type               varchar2(10),
   LINK_COMMENTS           varchar2(4000),
   tags                    varchar2(4000),
   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_links
   add constraint eba_cust_links_pk
       primary key (id)
/
alter table eba_cust_links
   add constraint eba_cust_links_cust_fk
       foreign key (customer_id)
       references eba_cust_customers (id) on delete cascade
/
alter table eba_cust_links
   add constraint eba_cust_links_contact_fk
       foreign key (contact_id)
       references eba_cust_contacts (id) on delete cascade
/

create index eba_cust_links_01 on eba_cust_links (customer_id);
create index eba_cust_links_02 on eba_cust_links (contact_id);



