alter table EBA_CUST_CUSTOMERS add SALES_CHANNEL_ID number;
/

alter table eba_cust_customers
   add constraint eba_customers_channel_fk
       foreign key (sales_channel_id)
       references eba_cust_sales_channel(id) on delete set null
/

create index eba_cust_customers_05 on eba_cust_customers (sales_channel_id);