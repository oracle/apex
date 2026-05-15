create table eba_sales_clicks (    
    id                number primary key,
    cust_id           number references eba_sales_customers (id) on delete cascade,
    lead_id           number references eba_sales_leads (id) on delete cascade,
    opp_id            number,
    app_username      varchar2(255),
    view_timestamp    timestamp(6) with time zone,
    app_session       varchar2(255)
);
/

create index eba_sales_clicks_idx2 on eba_sales_clicks (cust_id);
create index eba_sales_clicks_idx1 on eba_sales_clicks (lead_id);
create index eba_sales_clicks_idx3 on eba_sales_clicks (opp_id);
create index eba_sales_clicks_idx4 on eba_sales_clicks (view_timestamp);

create or replace trigger eba_sales_clicks_biu
    before insert on eba_sales_clicks
    for each row
begin
     if :new.id is null then
         :new.id := eba_sales_sequence.nextval;
     end if;
     :new.view_timestamp := current_timestamp;
     :new.app_username := nvl(v('APP_USER'),user);
     :new.app_session := v('APP_SESSION');
end;
/

alter trigger eba_sales_clicks_biu enable;
