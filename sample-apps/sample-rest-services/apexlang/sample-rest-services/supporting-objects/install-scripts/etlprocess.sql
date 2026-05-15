-------------------------------------------------------------------------------------------------------
-- REST Data Source and PLSQL ETL Process Package 
-------------------------------------------------------------------------------------------------------


create or replace package eba_demo_rest_etl_pkg as
    
    procedure process_store_order_summary(
        p_email in varchar2
    );
    
end eba_demo_rest_etl_pkg;
/

create or replace package body eba_demo_rest_etl_pkg as

   procedure process_store_order_summary( p_email in varchar2 ) as

        l_store_context apex_exec.t_context;
        l_store_columns apex_exec.t_columns;
        l_store_id_idx pls_integer;
        l_store_name_idx pls_integer;
        l_order_context apex_exec.t_context;
        l_order_columns apex_exec.t_columns;
        l_order_store_id_idx pls_integer;
        l_order_datetime_idx pls_integer;

        type t_store_rec is record (
            store_id number,
            store_name varchar2(255));

        type t_store_tab is table of t_store_rec index by pls_integer;
        l_stores t_store_tab;
        l_store_count pls_integer := 0;

        type t_order_rec is record (
            store_id number,
            order_datetime date);

        type t_order_tab is table of t_order_rec index by pls_integer;

        l_orders t_order_tab;
        l_order_count pls_integer := 0;
        l_order_datetime_str varchar2(50);
        l_html_table clob;
        l_report_line clob;
        l_placeholders clob;

    begin
        apex_exec.add_column(p_columns => l_store_columns, p_column_name => 'STORE_ID');
        apex_exec.add_column(p_columns => l_store_columns, p_column_name => 'STORE_NAME');

        l_store_context := apex_exec.open_web_source_query(
            p_module_static_id => 'eba_rest_stores',
            p_columns => l_store_columns,
            p_max_rows => 1000 );
        l_store_id_idx := apex_exec.get_column_position(l_store_context, 'STORE_ID');
        l_store_name_idx := apex_exec.get_column_position(l_store_context, 'STORE_NAME');

        while apex_exec.next_row(l_store_context) loop
            l_store_count := l_store_count + 1;
            l_stores(l_store_count).store_id := apex_exec.get_number(l_store_context, l_store_id_idx);
            l_stores(l_store_count).store_name := apex_exec.get_varchar2(l_store_context, l_store_name_idx);
        end loop;

        apex_exec.close(l_store_context);
        apex_exec.add_column(p_columns => l_order_columns, p_column_name => 'STORE_ID');
        apex_exec.add_column(p_columns => l_order_columns, p_column_name => 'ORDER_DATETIME');

        l_order_context := apex_exec.open_web_source_query(
            p_module_static_id => 'eba_rest_orders',
            p_columns => l_order_columns,
            p_max_rows => 1000 );
        l_order_store_id_idx := apex_exec.get_column_position(l_order_context, 'STORE_ID');
        l_order_datetime_idx := apex_exec.get_column_position(l_order_context, 'ORDER_DATETIME');

        while apex_exec.next_row(l_order_context) loop
            l_order_count := l_order_count + 1;
            l_orders(l_order_count).store_id := apex_exec.get_number(l_order_context, l_order_store_id_idx);
            l_order_datetime_str := apex_exec.get_varchar2(l_order_context, l_order_datetime_idx);
            l_orders(l_order_count).order_datetime := to_date(l_order_datetime_str, 'yyyy-mm-dd"t"hh24:mi:ss"z"');
        end loop;

        apex_exec.close(l_order_context);

        for l_i in 1 .. l_store_count loop
            declare
                l_total_orders number := 0;
                l_last_order_datetime date := null;
            begin
                for l_j in 1 .. l_order_count loop
                    if l_orders(l_j).store_id = l_stores(l_i).store_id then
                        l_total_orders := l_total_orders + 1;
                        if l_last_order_datetime is null or l_orders(l_j).order_datetime > l_last_order_datetime then
                            l_last_order_datetime := l_orders(l_j).order_datetime;
                        end if;
                    end if;
                end loop;
                insert into eba_demo_rest_storeordersummary (
                    store_id,
                    store_name,
                    total_orders,
                    last_order_datetime,
                    load_timestamp)
                values (
                    l_stores(l_i).store_id,
                    l_stores(l_i).store_name,
                    l_total_orders,
                    l_last_order_datetime,
                    sysdate );
            end;
        end loop;
        commit;
        l_html_table := '
                <table>
                <tr>
                <th>Store Name</th>
                <th>Total Orders</th>
                </tr>
                ';
        for l_rec in (
            select store_name,
                   total_orders
            from eba_demo_rest_storeordersummary
            order by store_name
        ) loop
            l_report_line := '<tr>
                        <td>' || apex_escape.html(l_rec.store_name) || '</td>
                        <td>' || apex_escape.html(l_rec.total_orders) || '</td>
                    </tr>
                    ';
            l_html_table := l_html_table || l_report_line;
        end loop;

        l_html_table := l_html_table || '</table>';
        apex_json.initialize_clob_output;
        apex_json.open_object;
        apex_json.write('ORDER_SUMMARY_TABLE', l_html_table);
        apex_json.close_object;
        l_placeholders := apex_json.get_clob_output;
        apex_json.free_output;

        apex_mail.send(
            p_from => p_email,
            p_to => p_email,
            p_template_static_id => 'STORE_ORDER_SUMMARY',
            p_placeholders => l_placeholders
        );
        
        apex_mail.push_queue;
        apex_application.g_print_success_message := apex_lang.get_message('P404.PROCESS.SUCCESS');
    exception
        when others then
            apex_exec.close(l_store_context);
            apex_exec.close(l_order_context);
            raise;
    end process_store_order_summary;
    


end eba_demo_rest_etl_pkg;
/ 