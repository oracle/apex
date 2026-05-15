create or replace package oow_demo_gen_data_pkg
is
    g_i               number := null;
    g_store_count     integer := null;
    g_transaction     varchar2(255) := null;
    g_item_id         number := null;
    g_qty             number := null;
    g_price           number := null;
    g_progress        number := 0;
    g_context         varchar2(4000) := null;
    g_insert_count    integer := 0;
    
function generate_transaction 
    return number;

procedure oow_demo_gen_sales_data (
    p_days      in number default 90, -- 365
    p_orders    in number default 50, -- 50
    p_truncate  in varchar2 default 'Y',
    p_max_stores in number default 500,
    p_max_rows   in number default 0
);

procedure exec_100_transactions;

procedure exec_n_transactions (
    P_transactions in number default 1
);

end;
/


