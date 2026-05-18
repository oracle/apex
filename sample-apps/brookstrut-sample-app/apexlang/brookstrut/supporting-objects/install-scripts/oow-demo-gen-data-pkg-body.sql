create or replace package body oow_demo_gen_data_pkg
is
    g_last_history_id number;

    
function generate_transaction 
    return number
is
begin
    oow_demo_gen_sales_data (
       p_days => 1,
       p_orders => 1,
       p_truncate => 'N',
       p_max_stores => 1
       );
    commit;
    return g_last_history_id;
end generate_transaction;


--
-- G E N   S A L E S   D A T A
--

procedure oow_demo_gen_sales_data (
    p_days       in number   default 90, 
    p_orders     in number   default 50, 
    p_truncate   in varchar2 default 'Y',
    p_max_stores in number   default 500,
    p_max_rows   in number   default 0
)
as
    cursor log_csr is
        select owner, start_time, to_char(start_time,'YYYY.MM.DD HH24:MI:SS') start_txt
        from oow_demo_hist_gen_log
        where start_time is not null
            and end_time is null;
    log_rec            log_csr%ROWTYPE;
    l_log_id           number;
    l_date             timestamp with local time zone;
    l_transaction      varchar2(30);
    l_order            number;
    i                  number;
    l_qty              number;
    l_item_price       number;
    l_app_user         varchar(255);
    l_history_id       number;
    l_max_stores       number;
    l_store_count      integer := 0;
    l_product_count    integer := 0;
    x                  number;
    l_app_session      varchar2(255);
    l_error_trace      varchar2(32767);
    l_continue         boolean := true;
    l_max_rows         integer := 0;
begin
    --
    -- initialize variables
    --
    l_max_rows     := nvl(p_max_rows,0);
    g_insert_count := 0;
    g_progress     := 1;
    l_max_stores   := nvl(p_max_stores,100);
    l_app_user     := v('APP_USER');
    l_app_session  := v('APP_SESSION');
    g_progress     := 2;

    --
    -- insert history log which gets updated later
    --
    g_progress := 3;
    insert into oow_demo_hist_gen_log ( owner, start_time, num_days, max_orders )
    values ( l_app_user, localtimestamp, p_days, p_orders )
    returning id into l_log_id;

    --
    -- Truncate sales history table if requested
    --
    if nvl(p_truncate,'N') = 'Y' then
        oow_demo_event_pkg.log(p_event_name => 'about to truncate oow_demo_sales_history table');
        execute immediate 'truncate table oow_demo_sales_history';
    end if;

    x := round(dbms_random.value(1,4));
    g_progress := 4;


    --
    -- loop over days requested (p_days)
    --
    for i in 1..greatest(p_days,1) loop
        g_progress := 5;
        g_context := 'i='||i;
        l_date := localtimestamp - numtodsinterval(i-1,'day');
        
        g_i := i;
        -- walk every store for the date
        l_store_count := 0;

        --
        -- loop over open stores
        --
        for s in (select id, region_id, decode(x,1,n1,2,n2,3,n3,4,n4,id) x
                  from oow_demo_stores
                  where STORE_OPEN_DATE <= l_date 
                  order by 3) loop
            --
            -- audit
            --
            g_progress := 6;
            g_context := 'i='||i||', store_id='||s.id;
            --
            -- increment store counter
            --
            l_store_count := l_store_count + i;
            g_store_count := l_store_count;
            --
            -- max stores defaults to 1
            --
            if l_store_count > l_max_stores then 
                exit; 
            end if;
            g_last_history_id := null;
            -- make 0 to p_orders 500 orders for this date in the store
            g_transaction := null;
            --
            -- generate transactions, between zero and p_orders 
            --
            for l_order in 1..greatest(round(dbms_random.value(0,p_orders)),1) loop
                g_progress := 7;
                g_context := 'i='||i||', store_id='||s.id||', l_order_id='||l_order;
                -- something unique for a transaction id
                l_transaction := to_char(l_date,'YYYYMMDD') || '-'|| l_order ;
                g_transaction := l_transaction;
                -- add a weight to sales items to give a higher chance they are sold
                g_item_id := null;
                --
                -- loop over store products, not all products are sold in all stores
                --
                for p in (select id, item_id, item_price,
                            case when l_date between sale_start_date and sale_end_date then 3
                            else 1 end weight
                        from oow_demo_store_products
                        where store_id = s.id 
                        ) loop
                    g_progress := 8;
                    l_product_count := l_product_count + 1;
                    g_context := 'i='||i||', store_id='||s.id||', l_order_id='||l_order||', product_id='||p.id||', l_product_count='||l_product_count;
                    if p_orders = 1 and l_product_count > 1 then exit; end if;
                    g_item_id := p.item_id;
                    -- for none sale items a 50/50 on sale
                    -- for sale items its 3/4 chance
                    -- for one transaction orders buy 1 anyway
                    g_qty := null;
                    g_price := null;
                    g_progress := 8;
                    if ( round(dbms_random.value(0,p.weight)) != 0 ) or (p_days = 1 and p_orders = 1) then
                        -- pick how many to buy
                        l_qty := greatest(round(dbms_random.value(1,10)),1);
                        g_qty := l_qty;
                        -- if store discount price null, use msrp price
                        if p.item_price is null then
                            for c1 in (select msrp from oow_demo_items where id = p.item_id) loop
                                l_item_price := c1.msrp;
                            end loop;
                        else
                            l_item_price := p.item_price;
                        end if;
                        g_price := l_item_price;
                        -- order it up
                        g_progress := 9;
                        insert into oow_demo_sales_history(
                            store_id,product_id,date_of_sale,quantity,transaction_id,item_price)
                        values
                            (s.id,p.item_id,l_date,l_qty,l_transaction,l_item_price)
                        returning id into g_last_history_id;
                        g_insert_count := g_insert_count +1;
                        if l_max_rows != 0 and g_insert_count >= nvl(l_max_rows,5000) then
                            l_continue := false;
                        end if;
                    end if;
                    if not l_continue then exit; end if;
                end loop;
                commit;
                g_progress := 10;
                if not l_continue then exit; end if;
            end loop;
            if not l_continue then exit; end if;
        end loop;
        if not l_continue then exit; end if;
    end loop;

    g_progress := 100;
    update oow_demo_hist_gen_log
    set end_time = localtimestamp, row_count = g_insert_count
    where id = l_log_id;
    commit;

exception
    when others then
    oow_demo_event_pkg.log (
        p_event_name => 'error executing oow_demo_gen_sales_data', 
        p_error_message => sqlerrm, 
        p_error_trace => l_error_trace, 
        p_a1=>g_progress, 
        p_a2=>g_context);
        --
        if l_log_id is not null then
            update oow_demo_hist_gen_log
            set end_time = localtimestamp, row_count = g_insert_count
            where id = l_log_id;
        end if;
        --
        raise;
end oow_demo_gen_sales_data;


procedure exec_100_transactions
is
   x number;
   l_found boolean;
begin
for i in 1..100 loop
   x :=  generate_transaction;

   l_found := false;
   for c1 in (select id,
                     store_id, 
                     created_on,
                     product_id, 
                     quantity, 
                     item_price,
                     date_of_sale,
                     (select store_name 
                      from OOW_demo_stores s 
                      where s.id = h.store_id) store,
                     (select item_Name from OOW_demo_items i
                      where i.id = h.product_id) product
              from oow_demo_sales_history h
              where id = x) loop
     sys.htp.p('Transaction: '||to_char(i));
     sys.htp.p('<br>ID: '||apex_escape.html(c1.id));
     sys.htp.p('<br>Store: '||apex_escape.html(c1.store));
     sys.htp.p('<br>Product: '||apex_escape.html(c1.product));
     sys.htp.p('<br>Date of Sale: '||to_char(c1.date_of_sale,'DD-MM-YYYY HH24:MI:SS'));
     sys.htp.p('<br>Date of Posting: '||to_char(c1.created_on,'DD-MM-YYYY HH24:MI:SS'));
     sys.htp.p('<br>Quantity: '||to_char(c1.quantity,'999G999G999G990'));
     sys.htp.p('<br>Price: '||to_char(c1.item_price,'$999G999G999G990D00'));
     sys.htp.p('<br>Sale: '||to_char(c1.item_price * c1.quantity,'$999G999G999G990D00'));
     l_found := true;
   end loop;
     if not l_found then 
         sys.htp.p('Transaction: '||to_char(i));
         sys.htp.p('<br>Day loop: '||oow_demo_gen_data_pkg.g_i);
         sys.htp.p('<br>Store loop: '||oow_demo_gen_data_pkg.g_store_count);
         sys.htp.p('<br>Item ID: '||oow_demo_gen_data_pkg.g_item_id);
         sys.htp.p('<br>Quantity: '||oow_demo_gen_data_pkg.g_qty);
         sys.htp.p('<br>Attempted Transaction: '||apex_escape.html(oow_demo_gen_data_pkg.g_transaction));
         sys.htp.p('<br>Order request did not result in order being processed');
     end if;
     sys.htp.p('<hr>');
end loop;
commit;
end exec_100_transactions;

procedure exec_n_transactions (
    P_transactions in number default 1
)
is
   x number;
begin
    for i in 1..P_transactions loop
        x := generate_transaction;
    end loop;
    commit;
end exec_n_transactions;

end oow_demo_gen_data_pkg;
/
