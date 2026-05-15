declare
    c integer;
begin
    select count(*) into c from OOW_DEMO_ITEMS;
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_ITEMS row count', p_event_detail => to_char(c,'999G999G990'));
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_ITEMS row count', p_error_message => sqlerrm);
end;
/
    
declare
    c integer;
begin
    select count(*) into c from OOW_DEMO_REGIONS;
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_REGIONS row count', p_event_detail => to_char(c,'999G999G990'));
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_REGIONS row count', p_error_message => sqlerrm);
end;
/
    
declare
    c integer;
begin
    select count(*) into c from OOW_DEMO_STORES;
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_STORES row count', p_event_detail => to_char(c,'999G999G990'));
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_STORES row count', p_error_message => sqlerrm);
end;
/
    
declare
    c integer;
begin
    select count(*) into c from OOW_DEMO_STORE_PRODUCTS;
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_STORE_PRODUCTS row count', p_event_detail => to_char(c,'999G999G990'));
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_STORE_PRODUCTS row count', p_error_message => sqlerrm);
end;
/
    
declare
    c integer;
begin
    select count(*) into c from OOW_DEMO_SALES_HISTORY;
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_SALES_HISTORY row count', p_event_detail => to_char(c,'999G999G990'));
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'OOW_DEMO_SALES_HISTORY row count', p_error_message => sqlerrm);
end;
/


