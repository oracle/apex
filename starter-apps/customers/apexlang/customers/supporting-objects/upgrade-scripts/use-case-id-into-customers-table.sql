alter table eba_cust_customers add use_case_id number
/
alter table eba_cust_customers
   add constraint eba_customers_use_case_fk
       foreign key (use_case_id)
       references eba_cust_use_case (id) on delete cascade
/
create index eba_cust_customers_06 on eba_cust_customers (use_case_id)
/