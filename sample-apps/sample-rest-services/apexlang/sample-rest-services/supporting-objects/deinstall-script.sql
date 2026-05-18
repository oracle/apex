-- ===========================================================================
-- section: remove ORDS REST modules
-- ===========================================================================

begin
    ords.drop_rest_for_object(p_object => 'EBA_DEMO_REST_TASKS');
    ords.drop_rest_for_object(p_object => 'EBA_DEMO_REST_ORDERS');
    ords.drop_rest_for_object(p_object => 'EBA_DEMO_REST_DEPARTMENT');
    ords.drop_rest_for_object(p_object => 'EBA_DEMO_REST_EMPLOYEE');
    ords.drop_rest_for_object(p_object => 'EBA_DEMO_REST_STORES');
    ords.delete_module       (p_module_name => 'eba.rest.emp');
    ords.delete_module       (p_module_name => 'eba.rest.orders');
end;
/
  
-- ===========================================================================
-- section: remove PL/SQL packages
-- ===========================================================================

drop package eba_demo_rest_data_pkg;
drop package eba_demo_rest_etl_pkg;

-- ===========================================================================
-- section: remove views
-- ===========================================================================

drop view customer_order_products;
drop view product_orders;
drop view product_reviews;
drop view store_orders;
drop view store_orders_status;

-- ===========================================================================
-- section: remove tables
-- ===========================================================================

drop table eba_demo_rest_producttable           cascade constraints purge;
drop table eba_demo_rest_order_workflow         cascade constraints purge;
drop table eba_demo_rest_purchaseorders         cascade constraints purge;
drop table eba_demo_rest_stores                 cascade constraints purge;
drop table eba_demo_rest_assignees              cascade constraints purge;
drop table eba_demo_rest_customers              cascade constraints purge;
drop table eba_demo_rest_department             cascade constraints purge;
drop table eba_demo_rest_dept_local             cascade constraints purge;
drop table eba_demo_rest_employee               cascade constraints purge;
drop table eba_demo_rest_employeecustom         cascade constraints purge;
drop table eba_demo_rest_orderitems             cascade constraints purge;
drop table eba_demo_rest_orders                 cascade constraints purge;
drop table eba_demo_rest_storeordersummary      cascade constraints purge;
drop table eba_demo_rest_tasks                  cascade constraints purge;




-- ===========================================================================
-- section: remove sequence
-- ===========================================================================

drop sequence dept_seq;
drop sequence eba_demo_emp_seq;

