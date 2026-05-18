CREATE OR REPLACE FORCE VIEW "EBA_SALES_OPPORTUNITIES_V" ("ID", "ROW_KEY", "CUSTOMER_ID", "CUSTOMER_NAME", "REP_NAME", "DEAL_NAME", "DEAL_CLOSE_DATE", "DEAL_CLOSE_DATE_ALT", "DEAL_AMOUNT", "DEAL_PROBABILITY", "STATUS_CODE", "IS_OPEN", "IS_OVERDUE", "WEIGHTED_FORECAST", "NOTES", "PRODUCTS", "LAST_CHANGED", "SVP", "TERRITORY_NAME", "QTR", "TAGS", "CUSTOMER_TAGS") AS 
  select d.id, 
    d.row_key,
    c.id customer_id,
    c.customer_name,
    s.rep_last_name || ', ' || s.rep_first_name as rep_name,
    d.deal_name,
    d.deal_close_date,
    d.deal_close_date_alt,
    d.deal_amount,
    d.deal_probability,
    sc.status_code,
    case
      when d.deal_probability is null 
        or d.deal_probability in (0, 100)
      then 'No'
      else 'Yes'
    end is_open,
    case 
      when d.deal_probability in (0, 100)
      then 'No'
      when greatest(sysdate, d.deal_close_date) = sysdate
      then 'Yes'
      else 'No'
    end is_overdue,
    d.deal_amount * d.deal_probability / 100 weighted_forecast,
    (
      select count(*) 
      from eba_sales_comments 
      where deal_id = d.id
    ) notes,
    (
      select count(*) 
      from eba_sales_deal_products 
      where deal_id = d.id
    ) products,
    nvl(d.updated, d.created) last_changed,
    (
      select svp_name 
      from eba_sales_svps svp 
      where svp.id = d.svp_id
    ) svp,
    t.territory_name,
    d.qtr,
    d.tags,
    c.tags customer_tags
  from eba_sales_deals d
  join eba_sales_customers c
    on c.id = d.customer_id 
  left join eba_sales_salesreps s
    on s.id = d.salesrep_id_01
  left join eba_sales_deal_status_codes sc
    on sc.id = d.deal_status_code_id
  left join eba_sales_territories t
    on t.id = c.customer_territory_id
;

CREATE OR REPLACE FORCE VIEW "EBA_SALES_OPP_V" ("CUSTOMER_ID", "DEAL_ID", "CUSTOMER_NAME", "CUSTOMER_STOCK_SYMB", "REP_FIRST_NAME", "REP_LAST_NAME", "REP_EMAIL", "DEAL_NAME", "DEAL_CLOSE_DATE", "DEAL_AMOUNT", "DEAL_PROBABILITY", "STATUS_CODE") AS 
  select c.id customer_id,
    d.id deal_id,
    c.customer_name,
    c.customer_stock_symb,
    sr.rep_first_name,
    sr.rep_last_name,
    sr.rep_email,
    d.deal_name,
    d.deal_close_date,
    case when exists (select null
                        from APEX_APPLICATION_BUILD_OPTIONS
                       where application_id = v('APP_ID')
                         and BUILD_OPTION_NAME = 'Opportunity Amount Set at Product Level'
                         and BUILD_OPTION_STATUS = 'Exclude') then
        d.deal_amount
    else
        (select sum(nvl(quote_price, 0.00)) from EBA_SALES_DEAL_PRODUCTS dp where dp.deal_id = d.id)
    end as deal_amount,
    d.deal_probability,
    dsc.status_code 
  from  eba_sales_deals d
  join eba_sales_deal_status_codes dsc
    on dsc.id = d.deal_status_code_id
  join eba_sales_salesreps sr
    on sr.id = d.salesrep_id_01
  join eba_sales_customers c
    on c.id = d.customer_id;

