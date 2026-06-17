drop table if exists dv_customers cascade constraints;
drop table if exists dv_purchase_orders cascade constraints;
drop table if exists dv_products cascade constraints;
drop table if exists dv_po_line_items cascade constraints;
drop trigger if exists trg_dv_po_number;
drop trigger if exists trg_dv_po_line_items;
drop sequence if exists dv_po_number_seq;
drop view if exists dv_purchase_order_dv;