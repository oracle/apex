-- ===========================================================================
-- Remove PL/SQL package
-- ===========================================================================
drop package eba_demo_json_data_pkg;

-- ===========================================================================
-- Remove tables
-- ===========================================================================
drop table eba_demo_json_stores          cascade constraints purge;
drop table eba_demo_json_products        cascade constraints purge;
drop table eba_demo_json_customers       cascade constraints purge;
drop table eba_demo_json_orders          cascade constraints purge;
drop table eba_demo_json_order_items     cascade constraints purge;

-- Remove json collection
drop table eba_demo_json_support_ticket  cascade constraints purge;

-- Remove duality views
drop json relational duality view eba_demo_json_stores_dv;
drop json relational duality view eba_demo_json_customer_orders_dv;


-- ===========================================================================
-- Remove sequences
-- ===========================================================================

drop sequence eba_demo_json_customers_seq ;
drop sequence eba_demo_json_orders_seq ;
drop sequence eba_demo_json_stores_seq ;
drop sequence eba_demo_json_products_seq ;
