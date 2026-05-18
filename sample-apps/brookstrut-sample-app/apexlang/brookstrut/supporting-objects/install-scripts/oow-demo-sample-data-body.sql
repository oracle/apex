create or replace package body oow_demo_sample_data 
as

procedure load 
is
begin
    load_regions;
    load_items;
    load_stores;
    load_store_products;
end load;


--
-- R E G I O N S
--
procedure load_regions
is
begin
    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_regions begin', p_error_message => null);
    insert into oow_demo_regions
    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )
    values
    (1, 'San Francisco', 11, 37.8, -122.4, '#FE523A', null);
    commit;

    insert into oow_demo_regions
    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )
    values
    (2, 'Boston Area', 10, 42.324789, -71.083448, '#598BC9', 'Y');
    commit;

    insert into oow_demo_regions
    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )
    values
    (3, 'Chicago Area', 11, 41.95, -87.8, '#169928', null);
    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_regions end', p_error_message => null);
    commit;

    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_regions begin', p_error_message => null);
    insert into oow_demo_regions
    (id, region_name, region_zoom, region_lat, region_lng, region_color, is_default_yn )
    values
    (4, 'San Diego', 11, 32.8, -117.4, '#FE523A', null);
    commit;
end load_regions;


--
-- P R O D U C T S
--
procedure load_items
is
begin
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items begin', p_error_message => null);
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (1, 'Food', 'Coconut Water', 7.5, 'Refreshing Coconut Water from NuttyH2O');
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (2, 'Food', 'Free range Beef', 25, 'Home, home on that free range');
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (3, 'Soap', 'Dr. Bronners Liquid Soap', 4.99, 'One world - Now!');
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (4, 'Soap', 'Aloe Vera Pure', 3.25, 'Gentlest on your skin');
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (5, 'Food', 'Macademia nuts', 9.99, 'Fresh from the Hawaiian Islands');
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (6, 'Food', 'Rea-Dee Protein Bars', 11.99, 'Make you strong like ox.');
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (7, 'Miscellaneous', 'Tennis Balls', 6, 'Can of 3');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (8, 'Miscellaneous', 'Toothpaste', 6, 'With whitening boost');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (9, 'Fruit', 'Apples', 3.75, 'Farmfresh, bag of 12');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (10, 'Fruit', 'Oranges', 4.55, 'Choice bag of 8');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (11, 'Fruit', 'Blueberries', 4.15, 'Medium box of 80');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (12, 'Fruit', 'Bananas', 3.65, '1 lbs');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (13, 'Fruit', 'Lemons', 2.87, 'Zesty 1 lbs bag');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (14, 'Fruit', 'Grapes', 3.88, '1/2 lbs');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (15, 'Snacks', 'Super Tasty Chocolate Bar', 1.99, '2 Oz');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (16, 'Snacks', 'Peanut Butter Bar', 1.59, '1.5 Oz');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;

    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (17, 'Snacks', 'Chocolate Covered Peanuts', 16.99, '2 lbs');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
    
    insert into oow_demo_items 
    (id, item_type, item_name, msrp, item_desc)
    values
    (18, 'Snacks', 'Orange Twist Bar', 1.79, '2 Oz');
    oow_demo_event_pkg.log (p_event_name => 'insert  oow_demo_items end', p_error_message => null);
    commit;
end load_items;

--
-- S T O R E S
--
procedure load_stores
is
begin
    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_stores begin', p_error_message => null);

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (1, 'All U Can Eat', 'Branch', '1000 California St', 'San Francisco', 'CA', '94108', 1, 37.79226, -122.411397, to_date('23-08-2010', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (2, 'Holistic Foods of San Francicso', 'Branch', '1221 Fell St', 'San Francisco', 'CA', '94117', 1, 37.773862, -122.438354, to_date('04-02-2011', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (3, 'Moscone Store', 'Branch', '800 Howard St', 'San Francisco', 'CA', '94103',  1, 37.783197, -122.403445, to_date('11-06-2011', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (4, 'Holistic Foods - Sacramento St.', 'Flagship', '1 Sacramento Street', 'San Francisco', 'CA', '94108',  1, 37.793025, -122.409409, to_date('04-01-2007', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (5, 'Mission Eats of San Francicso', 'Branch', '154 Lombard St', 'San Francisco', 'CA', '94111',  1, 37.80445, -122.404178, to_date('04-01-2010', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (6, 'Holistic Foods - Hayes', 'Flagship', '301 Hayes St', 'San Francisco', 'CA', '94102',  1, 37.776981, -122.421451, to_date('04-05-2009', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (7, 'Stop and Buy', 'Flagship', '12 Main St', 'Cambridge', 'MA', '02142',  2, 42.361811, -71.080314, to_date('04-01-2010', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (8, 'Big Yellow Dog', 'Branch', '987 West St', 'Boston', 'MA', '02136',  2, 42.271113, -71.131913, sysdate-2);
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (9, 'Holistic Foods - Lexington', 'Branch', '187 Massachusetts Ave', 'Lexington', 'MA', '02421', 2, 42.426179, -71.196743, to_date('04-04-2011', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (10, 'Big Grab', 'Branch', '5500 Pearl St', 'Rosemont', 'IL', '60018', 3, 41.978683, -87.872729, to_date('04-07-2011', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (11, 'Central Supply', 'Branch', '5100 W Harrison St', 'Chicago', 'IL', '60644',3, 41.872867, -87.752103, to_date('27-03-2002', 'DD-MM-YYYY'));
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (12, 'The Warehouse', 'Flagship', '4015 N Western Ave', 'Chicago', 'IL', '60618', 3, 41.954396, -87.688393, sysdate-70);
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (13, 'Big Al', 'Branch', '640 S Clark St', 'Chicago', 'IL', '60605', 3, 41.873792, -87.630648, sysdate-28);
    commit;
    
    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (14, 'Oracle Arena', 'Branch', '7000 Coliseum Way', 'Oakland', 'CA', '94621', 1, 37.750277, -122.202862, sysdate-365);
    commit;

    insert into oow_demo_stores
    (id, store_name, store_type, store_address, store_city, store_state, store_zip, region_id, store_lat, store_lng, store_open_date)
    values
    (15, 'Oracle Eats', 'Flagship', '9890 Towne Centre Dr', 'San Diego', 'CA', '92121', 4, 32.715736, -117.161087, sysdate-400);
    commit;

    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_stores end', p_error_message => null);
end load_stores;

procedure load_store_products
is
begin
    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_store_products begin', p_error_message => null);

    -- Store 1 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (1, 1, 1, 8, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (2, 1, 2, 30, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (6, 1, 3, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (3, 1, 4, 3.75, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (4, 1, 5, 12.50, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (5, 1, 6, 14.95, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (105, 1, 7, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (54, 1, 8, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (110, 1, 9, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (130, 1, 10, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (120, 1, 11, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (200, 1, 12, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (74, 1, 15, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (75, 1, 16, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (80, 1, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (81, 1, 18, null, null, null, null);
    commit;
    
    -- Store 2 --

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (8, 2, 1, null, 15, to_date('04-02-2011', 'DD-MM-YYYY'), to_date('04-02-2011', 'DD-MM-YYYY')+7);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (7, 2, 4, 4.25, 20, to_date('04-02-2011', 'DD-MM-YYYY'), to_date('04-02-2011', 'DD-MM-YYYY')+4);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (106, 2, 7, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (111, 2, 9, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (140, 2, 10, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (122, 2, 11, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (123, 2, 12, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (70, 2, 13, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (71, 2, 14, null, null, null, null);
    commit;
     
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (78, 2, 15, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (79, 2, 16, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (82, 2, 17, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (83, 2, 18, null, null, null, null);

    commit;
   
    -- Store 3 --

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (12, 3, 2, 20, null, to_date('11-06-2011', 'DD-MM-YYYY'), to_date('11-06-2011', 'DD-MM-YYYY')+5);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (9, 3, 3, null, 15, to_date('11-06-2011', 'DD-MM-YYYY'), to_date('11-06-2011', 'DD-MM-YYYY')+5);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (10, 3, 5, null, 15, to_date('11-06-2011', 'DD-MM-YYYY'), to_date('11-06-2011', 'DD-MM-YYYY')+5);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (11, 3, 6, null, 15, to_date('11-06-2011', 'DD-MM-YYYY'), to_date('11-06-2011', 'DD-MM-YYYY')+5);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (107, 3, 7, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (112, 3, 9, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (133, 3, 10, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (76, 3, 15, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (77, 3, 16, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (182, 3, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (183, 3, 18, null, null, null, null);
    commit;
   
    -- Store 4 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (13, 4, 1, 8.95, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (14, 4, 5, 8.50, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (15, 4, 6, 9.99, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (72, 4, 13, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (73, 4, 14, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (84, 4, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (85, 4, 18, null, null, null, null);
    commit;
    
    -- Store 5 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (16, 5, 4, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (17, 5, 5, null, 10, to_date('04-01-2010', 'DD-MM-YYYY'), to_date('04-01-2010', 'DD-MM-YYYY')+4);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (18, 6, 1, 7.35, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (86, 6, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (87, 6, 18, null, null, null, null);
    commit;
    
    -- Store 7 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (19, 7, 1, 7.75, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (20, 7, 2, 27, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (21, 7, 7, 5.50, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (88, 7, 17, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (89, 7, 18, null, null, null, null);
    commit;
    
    -- Store 8 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (22, 8, 1, 8.5, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (23, 8, 2, 26, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (24, 8, 3, 5.99, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (25, 8, 4, 3.50, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (26, 8, 5,10.99, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (27, 8, 6, 12.99, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (28, 8, 7, 7, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (90, 8, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (91, 8, 18, null, null, null, null);

    commit;
  
    
    -- Store 9 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (29, 9, 2, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (30, 9, 3, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (31, 9, 4, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (32, 9, 5, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (53, 9, 8, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (92, 9, 17, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (93, 9, 18, null, null, null, null);
    commit;
    
    -- Store 10 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (33, 10, 1, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (34, 10 , 4, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (35, 10, 5, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (36, 10, 7, null, null, null, null);
    commit;


    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (94, 8, 17, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (95, 8, 18, null, null, null, null);

    commit;

    
    -- Store 11 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (37, 11, 1, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (38, 11, 4, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (39, 11, 5, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (40, 11, 7, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (55, 11, 8, null, null, null, null);
    commit;
    
    -- Store 12 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (41, 12, 2, 23.95, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (42, 12, 4, 2.95, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (43, 12, 6, 9.95, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (44, 12, 7, 4.95, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (59, 12, 9, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (96, 12, 17, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (97, 12, 18, null, null, null, null);

    commit;

  
    
    -- Store 13 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (45, 13, 1, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (46, 13, 2, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (47, 13, 5, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (56, 13, 8, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (98, 13, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (99, 13, 18, null, null, null, null);
    commit;
    
    -- Store 14 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (48, 14, 1, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (49, 14, 2, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (50, 14, 5, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (51, 14, 6, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (52, 14, 7, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (57, 14, 8, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (58, 14, 9, null, null, null, null);
    commit;
    
     insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (60, 14, 10, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (61, 14, 11, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (62, 14, 12, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (100, 14, 17, null, null, null, null);

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (101, 14, 18, null, null, null, null);

    commit;

   -- Store 15 --
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (63, 15, 1, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (64, 15, 2, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (65, 15, 5, null, null, null, null);
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (66, 15, 6, null, null, null, null);
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (67, 15, 7, null, null, null, null);
    commit;
    
    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (68, 15, 8, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (69, 15, 12, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (102, 15, 17, null, null, null, null);
    commit;

    insert into oow_demo_store_products
    (id, store_id, item_id, item_price, discount_pct, sale_start_date, sale_end_date)
    values
    (103, 15, 18, null, null, null, null);

    commit;
    
    oow_demo_event_pkg.log (p_event_name => 'insert oow_demo_store_products end', p_error_message => null);
end load_store_products;

procedure remove 
is
    begin
        delete from oow_demo_sales_history where store_id < 100 or product_id < 100;
        commit;
        delete from oow_demo_store_products where id < 200;
        commit;
        delete from oow_demo_stores where id < 200;
        commit;
        delete from oow_demo_items where id < 200;
        commit;
        delete from oow_demo_regions where id < 200;
        commit;
exception
        when others then
        if sqlcode <> -2292 then
            raise;
        end if;
end remove;

function is_loaded return boolean is
        l_cnt number := 0;
begin
        select count(*) into l_cnt from oow_demo_regions where id < 200;
        if l_cnt > 0 then return true; end if;
        select count(*) into l_cnt from oow_demo_items where id < 200;
        if l_cnt > 0 then return true; end if;
        select count(*) into l_cnt from oow_demo_stores where id < 200;
        if l_cnt > 0 then return true; end if;
        select count(*) into l_cnt from oow_demo_store_products where id < 200;
        if l_cnt > 0 then return true; end if;
        return false;
end is_loaded;

end oow_demo_sample_data;
/
show errors


