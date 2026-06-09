-- SCM Inventory and Warehouse Management uninstall
-- Drops all objects created by the SCM DDL and sample data scripts

set define off

declare
    procedure safe_exec(p_sql varchar2) is
    begin
        execute immediate p_sql;
    exception
        when others then
            null;
    end;
begin
    safe_exec('drop view scm_serial_events');
    safe_exec('drop view scm_inventory_transactions');
    safe_exec('drop index idx_scm_warehouses_geo');
    safe_exec('drop index idx_scm_user_role_assignments_01');
    safe_exec('drop index idx_scm_inventory_balances_01');
    safe_exec('drop index idx_scm_inventory_balances_02');
    safe_exec('drop index idx_scm_inbound_receipts_01');
    safe_exec('drop index idx_scm_stock_movements_01');
    safe_exec('drop index idx_scm_stock_movements_02');
    safe_exec('drop index idx_scm_stock_movements_03');
    safe_exec('drop index idx_scm_stock_transfers_01');
    safe_exec('drop index idx_scm_outbound_orders_01');
    safe_exec('drop index idx_scm_stock_allocations_01');
    safe_exec('drop index idx_scm_stock_allocations_02');
    safe_exec('drop index idx_scm_stock_allocations_03');
    safe_exec('drop index idx_scm_stock_allocations_04');
    safe_exec('drop index idx_scm_returns_01');
    safe_exec('drop index idx_scm_stock_counts_01');
    safe_exec('drop index idx_scm_stock_adjustments_01');
    safe_exec('drop index idx_scm_operational_exceptions_01');
    safe_exec('drop table scm_operational_exceptions cascade constraints purge');
    safe_exec('drop table scm_stock_adjustment_lines cascade constraints purge');
    safe_exec('drop table scm_stock_adjustments cascade constraints purge');
    safe_exec('drop table scm_stock_count_lines cascade constraints purge');
    safe_exec('drop table scm_stock_counts cascade constraints purge');
    safe_exec('drop table scm_return_lines cascade constraints purge');
    safe_exec('drop table scm_returns cascade constraints purge');
    safe_exec('drop table scm_stock_allocations cascade constraints purge');
    safe_exec('drop table scm_outbound_order_lines cascade constraints purge');
    safe_exec('drop table scm_outbound_orders cascade constraints purge');
    safe_exec('drop table scm_stock_transfer_lines cascade constraints purge');
    safe_exec('drop table scm_stock_transfers cascade constraints purge');
    safe_exec('drop table scm_stock_movements cascade constraints purge');
    safe_exec('drop table scm_inbound_receipt_lines cascade constraints purge');
    safe_exec('drop table scm_inbound_receipts cascade constraints purge');
    safe_exec('drop table scm_inventory_balances cascade constraints purge');
    safe_exec('drop table scm_item_serials cascade constraints purge');
    safe_exec('drop table scm_inventory_lots cascade constraints purge');
    safe_exec('drop table scm_replenishment_alerts cascade constraints purge');
    safe_exec('drop table scm_item_warehouse_policies cascade constraints purge');
    safe_exec('drop table scm_items cascade constraints purge');
    safe_exec('drop table scm_storage_locations cascade constraints purge');
    safe_exec('drop table scm_warehouse_areas cascade constraints purge');
    safe_exec('drop table scm_business_list_values cascade constraints purge');
    safe_exec('drop table scm_business_lists cascade constraints purge');
    safe_exec('drop table scm_user_role_assignments cascade constraints purge');
    safe_exec('drop table scm_application_users cascade constraints purge');
    safe_exec('drop table scm_user_roles cascade constraints purge');
    safe_exec('drop table scm_warehouses cascade constraints purge');
    safe_exec('drop table scm_partner_sites cascade constraints purge');
    safe_exec('drop table scm_business_partners cascade constraints purge');
    safe_exec('delete from user_sdo_geom_metadata where table_name = ''SCM_WAREHOUSES'' and column_name = ''WAREHOUSE_GEOMETRY''');
end;
/

commit;
