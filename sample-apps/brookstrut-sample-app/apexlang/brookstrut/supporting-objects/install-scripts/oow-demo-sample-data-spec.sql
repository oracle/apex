create or replace package oow_demo_sample_data as
    procedure load;
    procedure remove;
    function is_loaded return boolean;
    procedure load_regions;
    procedure load_items;
    procedure load_stores;
    procedure load_store_products;
end oow_demo_sample_data;
/
show errors
    




