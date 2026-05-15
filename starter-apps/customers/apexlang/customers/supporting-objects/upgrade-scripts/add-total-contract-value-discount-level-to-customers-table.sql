alter table eba_cust_customers add (total_contract_value number, discount_level number);

alter table eba_cust_customers add  annual_recurring_revenue      number;
alter table eba_cust_customers add  currency                      varchar2(20);