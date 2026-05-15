begin
    oow_demo_event_pkg.log (p_event_name => 'load sample data starting', p_error_message => null);
    oow_demo_sample_data.load;
    oow_demo_event_pkg.log (p_event_name => 'load sample data completed', p_error_message => null);
    commit;
exception when others then
    oow_demo_event_pkg.log (p_event_name => 'error loading sample data', p_error_message => sqlerrm);
end;
/

begin
    for j in 1..4 loop
    for c1 in (select count(*) c from oow_demo_regions) loop
        if c1.c = 0 then 
            begin
               oow_demo_event_pkg.log (p_event_name => 'retry loading regions '||j, p_error_message => null);
               oow_demo_sample_data.load_regions;
            exception when others then
               oow_demo_event_pkg.log (p_event_name => 'error loading regions '||j, p_error_message => sqlerrm);
            end;
        end if;
    end loop;
    end loop;
end;
/

begin
    for j in 1..4 loop
    for c1 in (select count(*) c from oow_demo_items) loop
        if c1.c = 0 then 
            begin
               oow_demo_event_pkg.log (p_event_name => 'retry loading items '||j, p_error_message => null);
               oow_demo_sample_data.load_items;
            exception when others then
               oow_demo_event_pkg.log (p_event_name => 'error loading items '||j, p_error_message => sqlerrm);
            end;
        end if;
    end loop;
    end loop;
end;
/

begin
    for j in 1..4 loop
    for c1 in (select count(*) c from oow_demo_stores) loop
        if c1.c = 0 then 
            begin
               oow_demo_event_pkg.log (p_event_name => 'retry loading stores '||j, p_error_message => null);
               oow_demo_sample_data.load_stores;
            exception when others then
               oow_demo_event_pkg.log (p_event_name => 'error loading stores '||j, p_error_message => sqlerrm);
            end;
        end if;
    end loop;
    end loop;
end;
/

begin
    for j in 1..4 loop
    for c1 in (select count(*) c from oow_demo_store_products) loop
        if c1.c = 0 then 
            begin
               oow_demo_event_pkg.log (p_event_name => 'retry loading products '||j, p_error_message => null);
               oow_demo_sample_data.load_store_products;
            exception when others then
               oow_demo_event_pkg.log (p_event_name => 'error loading products '||j, p_error_message => sqlerrm);
            end;
        end if;
    end loop;
    end loop;
end;
/
    

