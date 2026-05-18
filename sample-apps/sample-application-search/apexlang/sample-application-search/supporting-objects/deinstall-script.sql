----------------------------------------------------------------
-- Remove Oracle Text objects
----------------------------------------------------------------
begin
    eba_demo_search_text_pkg.drop_text_preferences;
    eba_demo_search_text_pkg.drop_text_index;
end;
/

drop package eba_demo_search_text_pkg;
----------------------------------------------------------------
-- Remove packages
----------------------------------------------------------------
drop package eba_demo_search_data_pkg;
----------------------------------------------------------------
-- Remove functions
----------------------------------------------------------------
drop function eba_demo_search_error_handling;
----------------------------------------------------------------
-- Remove views
----------------------------------------------------------------
drop view eba_demo_search_cust_ord_prd;
drop view eba_demo_search_prd_orders;
drop view eba_demo_search_prd_reviews;
drop view eba_demo_search_str_orders;
drop view eba_demo_search_str_ord_stat;
----------------------------------------------------------------
-- Remove Tables
---------------------------------------------------------------
drop table eba_demo_search_customers    cascade constraints purge;
drop table eba_demo_search_stores    cascade constraints purge;
drop table eba_demo_search_orders    cascade constraints purge;
drop table eba_demo_search_order_items    cascade constraints purge;
drop table eba_demo_search_products    cascade constraints purge;

drop table eba_demo_search_web_creds cascade constraints purge;

