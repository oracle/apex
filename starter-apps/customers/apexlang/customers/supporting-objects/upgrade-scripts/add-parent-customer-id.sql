alter table eba_cust_customers
    add ( parent_customer_id number,
        customer_account_number varchar2(255) )
/
alter table eba_cust_customers
    add constraint eba_customers_parent_fk
        foreign key (parent_customer_id)
        references eba_cust_customers (id) on delete cascade
/
create index eba_cust_customers_07 on eba_cust_customers (parent_customer_id);
/