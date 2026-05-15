alter table eba_cust_customers add country_id number
/
alter table eba_cust_customers
   add constraint eba_customers_country_fk
       foreign key (country_id)
       references eba_cust_countries (id) on delete cascade
/
drop index eba_cust_customers_04
/
create index eba_cust_customers_04 on eba_cust_customers (geography_id,country_id)
/