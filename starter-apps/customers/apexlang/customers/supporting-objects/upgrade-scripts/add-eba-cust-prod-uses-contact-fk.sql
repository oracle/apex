alter table eba_cust_product_uses
   add constraint eba_cust_prod_uses_contact_fk
       foreign key (customer_contact_id)
       references eba_cust_contacts (id) on delete cascade
/
show errors