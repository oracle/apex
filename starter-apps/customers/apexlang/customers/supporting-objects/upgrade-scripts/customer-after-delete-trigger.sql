create or replace trigger ad_eba_cust_customers
    after delete on eba_cust_customers
    for each row
begin
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value)
    values 
    ('CUSTOMERS', :old.row_key, :old.id, 'CUSTOMER_REMOVED', substr(:old.customer_name,0,4000), null ); 
end ad_eba_cust_customers;
/
alter trigger ad_eba_cust_customers enable
/