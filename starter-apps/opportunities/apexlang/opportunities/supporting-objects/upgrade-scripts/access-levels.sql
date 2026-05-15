alter table eba_sales_access_levels drop constraint EBA_SALES_ACC_LVL_ACC_LVL_CK;
/

alter table eba_sales_access_levels
add constraint eba_sales_access_levels_ck
    check (access_level in ( 'Administrator', 'Contributor', 'Reader', 'Approval Pending', 'No Access' ));
/

insert into eba_sales_access_levels (id, access_level) values (-99, 'No Access');
insert into eba_sales_access_levels (id, access_level) values (0, 'Approval Pending');