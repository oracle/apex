alter table eba_cust_customers add type_id number
/
alter table eba_cust_customers
   add constraint eba_customers_type_fk
       foreign key (type_id)
       references eba_cust_type (id) on delete cascade
/
create index eba_cust_customers_08 on eba_cust_customers (type_id)
/