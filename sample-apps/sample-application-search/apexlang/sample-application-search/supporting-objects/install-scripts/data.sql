-------------------------------------------------------------------------------------------------------
-- Load Data
-------------------------------------------------------------------------------------------------------

create or replace package eba_demo_search_data_pkg authid current_user is
    procedure clear_data;
    -- clears all the data in the database tables

    procedure load_data;
    -- loads data into the database tables

    procedure load_product_images(p_app_id in number, p_file_name in varchar2);
    -- loads images into the eba_demo_search_products table

    procedure reset_data;
    -- reset all the data in the database tables

end eba_demo_search_data_pkg;
/

create or replace package body eba_demo_search_data_pkg is

    procedure clear_data is
    begin
        delete from EBA_DEMO_SEARCH_CUSTOMERS;
        delete from EBA_DEMO_SEARCH_STORES;
        delete from EBA_DEMO_SEARCH_ORDERS;
        delete from EBA_DEMO_SEARCH_ORDER_ITEMS;
        delete from EBA_DEMO_SEARCH_PRODUCTS;
    end clear_data;

    procedure load_data is
    begin
        -- Customers data
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (1,'Tammy Bryant','tammy.bryant@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (2,'Roy White','roy.white@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (3,'Gary Jenkins','gary.jenkins@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (4,'Victor Morris','victor.morris@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (5,'Beverly Hughes','beverly.hughes@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (6,'Evelyn Torres','evelyn.torres@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (7,'Carl Lee','carl.lee@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (8,'Douglas Flores','douglas.flores@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (9,'Norma Robinson','norma.robinson@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (10,'Gregory Sanchez','gregory.sanchez@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (11,'Judy Evans','judy.evans@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (12,'Jean Patterson','jean.patterson@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (13,'Michelle Ramirez','michelle.ramirez@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (14,'Elizabeth Martinez','elizabeth.martinez@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (15,'Walter Rogers','walter.rogers@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (16,'Ralph Foster','ralph.foster@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (17,'Tina Simmons','tina.simmons@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (18,'Peter Jones','peter.jones@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (19,'Kathryn Rogers','kathryn.rogers@internalmail');
        Insert into EBA_DEMO_SEARCH_CUSTOMERS (CUSTOMER_ID,FULL_NAME,EMAIL_ADDRESS) values (20,'Dennis Lopez','dennis.lopez@internalmail');

        -- Stores data
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (1,'Online','https://www.example.com',null,null,null);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (2,'San Francisco',null,'Redwood Shores
500 Oracle Parkway
Redwood Shores, CA 94065',37.529395,-122.267237);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (3,'Seattle',null,'1501 Fourth Avenue
Suite 1800
Seattle, WA 98101',47.6053,-122.33221);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (4,'New York City',null,'205 Lexington Ave
7th Floor
New York, NY 10016',40.745216,-73.980518);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (5,'Chicago',null,'233 South Wacker Dr.
45th Floor
Chicago, IL 60606',41.878751,-87.636675);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (6,'London',null,'One South Place
London
EC2M 2RB',51.519281,-0.087296);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (7,'Bucharest',null,'Floreasca Park
43 Soseaua Pipera, corp B.
Sector 2
Bucharest , 014254
RO',44.43225,26.10626);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (8,'Berlin',null,'Behrenstrabe 42 (Humboldt Carre)
10117 Berlin',52.5161,13.3873);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (9,'Utrecht',null,'Hertogswetering 163-167, 3543 AS Utrecht, Netherlands',52.103263,5.061644);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (10,'Madrid',null,'C/ Jose Echegaray 6B
Las Rozas
28230 Madrid',40.4929,-3.8737);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (11,'Johannesburg',null,'Woodmead North Office Park
54 Maxwell Drive
Jukskeiview, Sandton, 2196',-26.044222,28.094662);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (12,'Lagos',null,'1391 Tiamiyu Savage St, Victoria Island, Lagos, Nigeria',6.42806,3.42199);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (13,'Bengaluru',null,'193, Bannerghatta Main Rd, Industrial Area, Stage 2, BTM Layout, Bengaluru, Karnataka 560076, India',12.8939,77.5978);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (14,'Mumbai',null,'First International Financial Center
Unit No. 501, Level 5
No. C54 & 55, G Block
Bandra Kurla Complex
CTS No. 4207, Kolekalyan Village
Mumbai - 400 051
India',19.069405,72.870143);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (15,'New Dehli',null,'F-01/02, First Floor
Salcon Rasvillas
D-1, District Centre,
Saket, New Delhi - 110017
India',28.527693,77.220135);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (16,'Sydney',null,'Riverside Corporate Park
4 Julius Avenue
North Ryde
NSW 2113',-33.797279,151.143826);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (17,'Perth',null,'Level 9
225 St Georges Terrace
Perth WA 6000',-31.953715,115.851645);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (18,'Sao Paulo',null,'Rua Dr. Jose Aureo Bustamante,
455 - Vila Cordeiro,
CEP 04710-090 Sao Paulo',-23.5475,-46.63611);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (19,'Buenos Aires',null,'Juana Manso 1069, Buenos Aires, Argentina',-34.61016,-58.362867);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (20,'Mexico City',null,'Montes Urales # 470 P3
Col. Lomas de Chapultepec
Delegacion Miguel Hidalgo - C.P. 11000',19.428489,-99.205745);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (21,'Bejing',null,'China, Beijing Shi, Haidian Qu, Dongbeiwang W Rd, 8, 100085',40.0572,116.290061);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (22,'Tokyo',null,'2 Chome-5-? Kitaaoyama, Minato City, Tokyo 107-0061, Japan',35.671534,139.718584);
        Insert into EBA_DEMO_SEARCH_STORES (STORE_ID,STORE_NAME,WEB_ADDRESS,PHYSICAL_ADDRESS,LATITUDE,LONGITUDE) values (23,'Tel Aviv',null,'B, Aharon Bart St 18, Petah Tikva, 4951400, Israel',32.100664,34.862138);

        -- Orders data
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (453,to_timestamp('23-JUL-22 12.13.03.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),4,'COMPLETE',4);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (506,to_timestamp('07-AUG-22 10.56.44.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),4,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (513,to_timestamp('09-AUG-22 08.00.22.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),15,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (544,to_timestamp('16-AUG-22 06.32.10.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),3,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (585,to_timestamp('26-AUG-22 11.02.38.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),4,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (608,to_timestamp('01-SEP-22 08.01.41.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (672,to_timestamp('13-SEP-22 01.37.34.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),4,'COMPLETE',4);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (687,to_timestamp('17-SEP-22 12.09.10.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),16,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (707,to_timestamp('20-SEP-22 06.12.35.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),5,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (760,to_timestamp('29-SEP-22 07.19.53.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),19,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (761,to_timestamp('29-SEP-22 08.35.11.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),11,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (765,to_timestamp('29-SEP-22 09.36.52.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),2,'COMPLETE',2);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (766,to_timestamp('30-SEP-22 12.38.08.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (769,to_timestamp('30-SEP-22 02.49.28.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),6,'REFUNDED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (808,to_timestamp('08-OCT-22 04.06.33.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),14,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (832,to_timestamp('12-OCT-22 11.16.40.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),3,'COMPLETE',3);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (839,to_timestamp('14-OCT-22 01.59.20.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),12,'COMPLETE',12);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (862,to_timestamp('19-OCT-22 02.34.20.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),7,'COMPLETE',7);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (899,to_timestamp('27-OCT-22 09.42.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),17,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (920,to_timestamp('30-OCT-22 05.59.30.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),4,'COMPLETE',4);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (928,to_timestamp('31-OCT-22 05.07.56.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),9,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (943,to_timestamp('03-NOV-22 04.41.53.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (950,to_timestamp('05-NOV-22 07.02.43.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),7,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (960,to_timestamp('06-NOV-22 09.18.36.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),11,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (968,to_timestamp('08-NOV-22 12.30.18.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),9,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (972,to_timestamp('09-NOV-22 02.12.47.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),6,'COMPLETE',6);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (986,to_timestamp('11-NOV-22 07.03.57.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,'CANCELLED',10);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (993,to_timestamp('13-NOV-22 10.16.45.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),8,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1052,to_timestamp('22-NOV-22 05.14.32.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),13,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1058,to_timestamp('24-NOV-22 03.58.10.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),6,'CANCELLED',6);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1082,to_timestamp('28-NOV-22 05.29.33.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),8,'CANCELLED',8);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1102,to_timestamp('01-DEC-22 10.25.32.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),9,'COMPLETE',9);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1,to_timestamp('25-FEB-22 02.24.33.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (3,to_timestamp('02-MAR-22 12.21.18.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),18,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (5,to_timestamp('04-MAR-22 07.05.41.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),2,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (7,to_timestamp('14-MAR-22 02.01.22.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),9,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (17,to_timestamp('19-MAR-22 08.51.57.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),16,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (20,to_timestamp('21-MAR-22 11.11.43.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),3,'COMPLETE',3);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (63,to_timestamp('11-APR-22 07.21.35.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),3,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (78,to_timestamp('17-APR-22 11.00.11.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),20,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (79,to_timestamp('18-APR-22 04.39.13.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (82,to_timestamp('19-APR-22 01.24.05.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),13,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (92,to_timestamp('21-APR-22 09.25.03.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),17,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (125,to_timestamp('01-MAY-22 01.45.50.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),12,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (132,to_timestamp('02-MAY-22 02.19.08.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),17,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (159,to_timestamp('11-MAY-22 01.56.08.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (182,to_timestamp('16-MAY-22 05.00.13.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (196,to_timestamp('19-MAY-22 05.57.59.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),8,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (201,to_timestamp('20-MAY-22 12.52.12.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (204,to_timestamp('21-MAY-22 12.43.26.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),6,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (240,to_timestamp('28-MAY-22 01.31.20.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),8,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (290,to_timestamp('13-JUN-22 02.12.59.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),15,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (298,to_timestamp('14-JUN-22 09.34.20.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (306,to_timestamp('16-JUN-22 04.24.36.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),5,'COMPLETE',5);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (307,to_timestamp('16-JUN-22 05.31.39.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),3,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (331,to_timestamp('24-JUN-22 02.29.17.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),5,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (349,to_timestamp('29-JUN-22 08.24.23.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (401,to_timestamp('11-JUL-22 10.55.57.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),16,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (430,to_timestamp('17-JUL-22 08.56.02.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),8,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (437,to_timestamp('18-JUL-22 06.41.45.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1111,to_timestamp('03-DEC-22 12.42.17.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),6,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1119,to_timestamp('05-DEC-22 09.35.51.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,'CANCELLED',14);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1121,to_timestamp('05-DEC-22 11.25.14.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),7,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1169,to_timestamp('15-DEC-22 04.16.06.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),14,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1191,to_timestamp('20-DEC-22 03.12.50.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1195,to_timestamp('21-DEC-22 06.46.35.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),15,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1200,to_timestamp('21-DEC-22 12.24.05.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),17,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1260,to_timestamp('30-DEC-22 01.21.21.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),9,'CANCELLED',9);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1321,to_timestamp('09-JAN-23 06.32.45.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),11,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1348,to_timestamp('13-JAN-23 08.57.23.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),18,'COMPLETE',18);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1363,to_timestamp('16-JAN-23 10.00.07.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),19,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1373,to_timestamp('18-JAN-23 03.27.07.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),16,'CANCELLED',16);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1390,to_timestamp('21-JAN-23 04.51.37.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1400,to_timestamp('22-JAN-23 06.52.24.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),15,'COMPLETE',15);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1418,to_timestamp('25-JAN-23 05.30.59.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),13,'CANCELLED',13);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1437,to_timestamp('28-JAN-23 09.08.42.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),16,'CANCELLED',16);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1439,to_timestamp('29-JAN-23 04.52.36.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),16,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1448,to_timestamp('31-JAN-23 07.09.51.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),16,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1450,to_timestamp('31-JAN-23 07.56.41.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),6,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1451,to_timestamp('31-JAN-23 08.10.59.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),16,'CANCELLED',16);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1455,to_timestamp('01-FEB-23 03.40.10.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),4,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1468,to_timestamp('02-FEB-23 02.27.01.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),4,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1471,to_timestamp('02-FEB-23 07.29.40.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,'CANCELLED',14);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1483,to_timestamp('04-FEB-23 08.09.09.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),14,'COMPLETE',14);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1486,to_timestamp('05-FEB-23 04.35.40.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),15,'COMPLETE',15);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1491,to_timestamp('05-FEB-23 09.16.42.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),1,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1498,to_timestamp('06-FEB-23 06.40.27.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),13,'COMPLETE',13);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1513,to_timestamp('09-FEB-23 05.17.37.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),20,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1520,to_timestamp('10-FEB-23 12.46.23.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),3,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1525,to_timestamp('11-FEB-23 02.22.05.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),10,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1543,to_timestamp('13-FEB-23 12.54.09.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),8,'CANCELLED',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1549,to_timestamp('13-FEB-23 05.28.26.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),19,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1552,to_timestamp('14-FEB-23 01.13.25.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),17,'CANCELLED',17);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1555,to_timestamp('14-FEB-23 04.22.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),7,'CANCELLED',7);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1560,to_timestamp('14-FEB-23 06.38.06.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1561,to_timestamp('14-FEB-23 09.01.04.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),8,'COMPLETE',8);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1635,to_timestamp('26-FEB-23 02.22.36.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),11,'CANCELLED',11);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1637,to_timestamp('26-FEB-23 03.21.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),12,'COMPLETE',1);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1659,to_timestamp('02-MAR-23 02.20.04.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),18,'CANCELLED',18);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1730,to_timestamp('15-MAR-23 03.38.39.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,'COMPLETE',10);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1731,to_timestamp('16-MAR-23 09.57.43.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),19,'CANCELLED',19);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1776,to_timestamp('24-MAR-23 12.05.43.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),20,'COMPLETE',20);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1808,to_timestamp('29-MAR-23 11.37.35.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),20,'CANCELLED',20);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1817,to_timestamp('31-MAR-23 10.58.36.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),8,'CANCELLED',8);
        Insert into EBA_DEMO_SEARCH_ORDERS (ORDER_ID,ORDER_DATETIME,CUSTOMER_ID,ORDER_STATUS,STORE_ID) values (1890,to_timestamp('15-APR-23 12.36.09.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),7,'CANCELLED',7);

        -- Products data
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (16,'Women''s Socks (Grey)',39.89,null);
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (17,'Women''s Sweater (Brown)',24.46,utl_raw.cast_to_raw('{"colour":"brown","gender":"Women''s","brand":"KLUGGER","description":"Dolore adipisicing commodo consequat Lorem ut incididunt. Ullamco nulla qui qui pariatur qui officia adipisicing magna aliqua ex qui incididunt.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":7,"review":"Fugiat cillum anim in qui laborum velit eu consectetur ad fugiat."},{"rating":6,"review":"Elit duis nostrud ad non enim elit mollit deserunt."},{"rating":2,"review":"Amet anim mollit laboris deserunt deserunt laboris anim ad commodo dolor."},{"rating":7,"review":"Labore nulla ullamco aute labore esse do proident sit."},{"rating":5,"review":"Non amet cillum eu cillum cupidatat occaecat excepteur ad voluptate culpa id."},{"rating":4,"review":"Non aliqua nisi anim qui consectetur id dolore duis sint aliqua ea tempor laborum."},{"rating":5,"review":"Elit ea Lorem duis amet."},{"rating":10,"review":"Aliqua velit nulla exercitation dolor minim ipsum culpa nostrud occaecat proident voluptate."},{"rating":3,"review":"Exercitation anim eu et veniam tempor ea."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (18,'Women''s Jacket (Black)',14.34,null);
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (19,'Men''s Coat (Red)',28.21,utl_raw.cast_to_raw('{"colour":"red","gender":"Men''s","brand":"VELOS","description":"Sint quis dolor in dolore sint elit ullamco ex magna laborum id eu. Magna fugiat qui pariatur dolore ex est esse minim elit velit.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":7,"review":"Esse velit est cupidatat ea labore cupidatat ipsum ullamco cupidatat Lorem."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (20,'Girl''s Shorts (Green)',38.34,utl_raw.cast_to_raw('{"colour":"green","gender":"Girl''s","brand":"TRASOLA","description":"These shorts are perfect for a day out at sea. Made with quick-drying and breathable materials, they are comfortable to wear even in hot and humid conditions.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Veniam consectetur ea nisi irure aute cillum."},{"rating":8,"review":"Consequat ex incididunt pariatur mollit magna incididunt veniam pariatur aliqua ex exercitation aute mollit ullamco."},{"rating":4,"review":"Proident tempor cupidatat ut cillum nisi sunt consectetur veniam dolore est ut."},{"rating":8,"review":"Deserunt amet quis do duis nulla officia anim sint do eiusmod exercitation."},{"rating":5,"review":"Anim magna incididunt mollit deserunt proident veniam occaecat ex ut ex incididunt."},{"rating":4,"review":"Consectetur cillum minim dolore cupidatat esse."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (21,'Girl''s Pyjamas (White)',39.78,utl_raw.cast_to_raw('{"colour":"black","gender":"Girl''s","brand":"UTARIAN","description":"Fugiat adipisicing sunt ullamco est ea. Dolor excepteur sit ad eu.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Proident consequat consequat eu enim Lorem incididunt ad amet excepteur tempor aliquip ad aliquip ea."},{"rating":7,"review":"Nulla sint anim aliqua laboris sint eu adipisicing incididunt."},{"rating":10,"review":"Aliqua aliquip non commodo duis consequat ad nisi et magna."},{"rating":9,"review":"Tempor consequat Lorem ipsum proident do nisi est dolore."},{"rating":7,"review":"Pariatur amet laborum dolor dolore incididunt sint labore."},{"rating":10,"review":"Eu exercitation incididunt et est."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (22,'Men''s Shorts (Black)',10.33,utl_raw.cast_to_raw('{"colour":"black","gender":"Men''s","brand":"TERSANKI","description":"Occaecat veniam do aliqua irure consectetur ea fugiat aliqua qui ea veniam officia. Culpa officia Lorem dolor ullamco culpa adipisicing qui exercitation labore minim exercitation sunt.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":3,"review":"Consequat anim reprehenderit commodo non aliqua laborum aute."},{"rating":6,"review":"Labore cillum do qui magna culpa ea excepteur quis."},{"rating":1,"review":"Dolor amet quis ea magna."},{"rating":7,"review":"Minim sit nostrud anim nostrud excepteur nostrud ea ex veniam consectetur elit."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (23,'Men''s Pyjamas (Blue)',48.39,utl_raw.cast_to_raw('{"colour":"blue","gender":"Men''s","brand":"ADORNICA","description":"Irure amet Lorem consequat aliquip officia dolore amet officia. Do elit laboris non dolore nostrud dolore cupidatat ea quis aliquip ex aliquip non ex.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":3,"review":"Laboris elit pariatur labore duis fugiat ad in nulla tempor."},{"rating":5,"review":"Voluptate minim officia id excepteur."},{"rating":8,"review":"Eiusmod cupidatat et nisi ipsum non aliqua."},{"rating":1,"review":"Aute veniam irure dolor laborum esse ut ex tempor non velit."},{"rating":2,"review":"Nostrud nostrud mollit incididunt et tempor excepteur sit ut id exercitation."},{"rating":6,"review":"Labore tempor cillum laborum commodo et sit est qui aute enim id aute."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (24,'Boy''s Sweater (Red)',9.8,utl_raw.cast_to_raw('{"colour":"red","gender":"Boy''s","brand":"PHARMEX","description":"Ex occaecat nulla esse duis nulla laboris aute. Commodo magna Lorem exercitation occaecat do anim minim non ad non ex do nulla ad.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Ea reprehenderit occaecat commodo exercitation ut adipisicing laboris adipisicing ex aute reprehenderit nisi sint qui."},{"rating":8,"review":"Qui anim sint dolore id dolor proident occaecat."},{"rating":5,"review":"Dolore fugiat mollit Lorem aliqua id consequat irure veniam."},{"rating":2,"review":"Esse dolore occaecat consectetur sit sit labore exercitation sint occaecat quis enim occaecat."},{"rating":4,"review":"Do commodo do laboris qui minim fugiat nisi nostrud elit."},{"rating":7,"review":"Pariatur eu non eiusmod ex dolor veniam."},{"rating":3,"review":"Magna aliqua dolor sint anim aliquip officia officia esse labore do."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (25,'Girl''s Jeans (Grey)',48.75,utl_raw.cast_to_raw('{"colour":"grey","gender":"Girl''s","brand":"KINETICUT","description":"Ut aliqua nostrud exercitation cupidatat cupidatat in. Sit tempor eu cillum quis incididunt consectetur quis amet.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":2,"review":"Id consectetur minim anim nisi occaecat elit labore duis."},{"rating":5,"review":"Ut fugiat qui velit fugiat nostrud ea dolor amet magna id pariatur."},{"rating":3,"review":"Labore laborum eiusmod qui minim exercitation."},{"rating":4,"review":"Excepteur ea mollit ad pariatur mollit veniam."},{"rating":9,"review":"Consectetur aliquip deserunt fugiat excepteur elit occaecat culpa fugiat dolor in."},{"rating":1,"review":"Adipisicing adipisicing mollit reprehenderit ex nulla in ea ad exercitation irure ullamco."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (26,'Girl''s Hoodie (White)',39.91,utl_raw.cast_to_raw('{"colour":"white","gender":"Girl''s","brand":"PROXSOFT","description":"Aliquip culpa eu deserunt ex culpa in laborum adipisicing. Amet et id minim esse ea non qui veniam.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":6,"review":"Commodo ut fugiat voluptate adipisicing deserunt."},{"rating":4,"review":"Fugiat cupidatat amet fugiat cupidatat ea ea."},{"rating":7,"review":"Incididunt ex enim commodo sit consequat enim."},{"rating":3,"review":"Ullamco in et aute laboris cillum."},{"rating":3,"review":"Reprehenderit Lorem proident sit deserunt do tempor commodo velit velit nulla ipsum."},{"rating":10,"review":"Dolore pariatur velit enim est culpa eiusmod cupidatat deserunt esse elit exercitation sunt proident exercitation."},{"rating":2,"review":"Minim fugiat elit aliquip nostrud velit reprehenderit cillum."},{"rating":4,"review":"Sint Lorem est laborum consectetur pariatur minim tempor ullamco Lorem est."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (27,'Boy''s Coat (Blue)',10.24,utl_raw.cast_to_raw('{"colour":"brown","gender":"Boy''s","brand":"GRONK","description":"Quis aliquip fugiat sunt qui eu velit aliqua sint eiusmod mollit id ad. Anim anim ipsum in reprehenderit amet amet consectetur incididunt qui cillum Lorem.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Sit id elit cupidatat aute consectetur esse proident aliqua ad voluptate cillum Lorem."},{"rating":6,"review":"Enim enim fugiat consectetur ut sunt veniam ad sit minim amet Lorem veniam mollit."},{"rating":5,"review":"Dolor ipsum consectetur nostrud ex Lorem pariatur voluptate."},{"rating":8,"review":"Commodo magna sint sint dolore aute anim laborum."},{"rating":4,"review":"Laboris amet proident occaecat dolore labore exercitation dolore sunt Lorem sunt anim."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (28,'Men''s Hoodie (Red)',24.71,utl_raw.cast_to_raw('{"colour":"red","gender":"Men''s","brand":"FANGOLD","description":"Dolor irure dolore est ipsum nisi incididunt laboris culpa. Ullamco ad cupidatat sint culpa adipisicing pariatur.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":3,"review":"Proident aliqua aliquip aute quis cillum."},{"rating":5,"review":"Pariatur enim ipsum aliqua Lorem eiusmod consequat cupidatat irure nulla sint fugiat veniam amet ipsum."},{"rating":10,"review":"Sint duis ipsum reprehenderit Lorem aute pariatur elit."},{"rating":4,"review":"Enim qui qui consequat culpa ex velit sint excepteur ipsum in amet mollit mollit."},{"rating":10,"review":"Qui velit reprehenderit fugiat adipisicing anim incididunt anim commodo occaecat consectetur in aute."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (29,'Boy''s Shirt (Black)',37.34,utl_raw.cast_to_raw('{"colour":"black","gender":"Boy''s","brand":"SQUISH","description":"Pariatur nulla elit pariatur excepteur ullamco officia incididunt. Aliquip quis aliquip cupidatat magna fugiat eiusmod pariatur excepteur tempor officia voluptate fugiat.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":5,"review":"Non esse labore ullamco laboris irure cupidatat ex proident eiusmod."},{"rating":10,"review":"Ea velit et mollit labore consequat."},{"rating":6,"review":"Labore sit pariatur Lorem ad sint consectetur incididunt deserunt eiusmod sit nostrud dolore eiusmod sint."},{"rating":1,"review":"Id voluptate sunt amet laboris laborum ad dolor aliqua ipsum sint qui aute eu esse."},{"rating":5,"review":"Sint Lorem dolore do ea."},{"rating":9,"review":"Quis pariatur consequat nisi labore Lorem elit in qui Lorem."},{"rating":2,"review":"Consectetur voluptate tempor ullamco voluptate labore sint."},{"rating":9,"review":"Qui laboris tempor ullamco ullamco commodo sint occaecat Lorem."},{"rating":1,"review":"Laborum eu sit duis et culpa eu duis irure incididunt amet."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (30,'Women''s Pyjamas (Grey)',28.59,utl_raw.cast_to_raw('{"colour":"grey","gender":"Women''s","brand":"THREDZ","description":"Quis aliqua eiusmod incididunt quis ut ea aliqua sunt veniam ut et cupidatat eiusmod. Sunt sunt duis excepteur excepteur do exercitation.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":1,"review":"Et anim culpa voluptate pariatur ullamco dolore ad aliquip."},{"rating":4,"review":"Nulla non ea nisi nulla elit veniam duis."},{"rating":4,"review":"Lorem adipisicing deserunt duis id sint aliquip minim deserunt magna sunt magna laborum dolore."},{"rating":3,"review":"Officia amet magna eu nulla dolore magna pariatur deserunt amet reprehenderit."},{"rating":3,"review":"Ad aliqua ex eu cillum labore elit mollit reprehenderit anim."},{"rating":1,"review":"Duis excepteur magna aliqua qui officia ipsum sunt."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (31,'Women''s Skirt (Green)',5.65,utl_raw.cast_to_raw('{"colour":"green","gender":"Women''s","brand":"ZIDANT","description":"Et est officia est amet est nisi sit veniam proident. Ullamco proident culpa velit proident quis dolore occaecat proident Lorem tempor.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (32,'Women''s Jacket (Blue)',37,utl_raw.cast_to_raw('{"colour":"blue","gender":"Women''s","brand":"ZOGAK","description":"Tempor ipsum duis aliqua veniam qui laboris et ut officia. Fugiat fugiat nisi labore excepteur ullamco excepteur veniam in in et adipisicing sint.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":9,"review":"Sit amet id ut laborum in exercitation laborum Lorem fugiat ex."},{"rating":7,"review":"Nisi non mollit dolore id aute velit laboris consequat voluptate id."},{"rating":1,"review":"Nisi nisi fugiat non nisi amet esse."},{"rating":1,"review":"Laborum eiusmod id ipsum aliqua adipisicing cillum enim."},{"rating":8,"review":"Duis aliqua ut nulla proident voluptate incididunt elit est exercitation id aute."},{"rating":4,"review":"Veniam labore exercitation eiusmod nisi mollit anim eu."},{"rating":6,"review":"Exercitation eu est irure velit pariatur."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (33,'Boy''s Pyjamas (Grey)',23.32,utl_raw.cast_to_raw('{"colour":"grey","gender":"Boy''s","brand":"RETRACK","description":"Sit consectetur Lorem culpa ipsum ad ullamco ea aute qui ea. Laboris ipsum enim enim veniam.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Ut incididunt veniam ullamco voluptate occaecat velit."},{"rating":5,"review":"Consectetur cupidatat voluptate dolore velit culpa est id enim aute."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (34,'Women''s Jeans (Red)',7.18,utl_raw.cast_to_raw('{"colour":"red","gender":"Women''s","brand":"PANZENT","description":"Eiusmod culpa dolore occaecat excepteur esse magna fugiat dolore cupidatat laboris mollit culpa. Consequat dolor qui tempor sit minim sit excepteur enim excepteur aute minim.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":10,"review":"Nulla enim cillum pariatur do consectetur et Lorem."},{"rating":1,"review":"Cupidatat fugiat incididunt fugiat eu."},{"rating":1,"review":"Ullamco eiusmod adipisicing fugiat reprehenderit mollit aliquip."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (35,'Girl''s Dress (Red)',49.12,utl_raw.cast_to_raw('{"colour":"red","gender":"Girl''s","brand":"NIXELT","description":"Ipsum pariatur laborum nulla pariatur consequat consequat amet nisi. Ut in quis officia excepteur.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":10,"review":"Ut est anim sit nulla commodo velit occaecat amet mollit fugiat id."},{"rating":2,"review":"Eu quis ea anim incididunt nisi nisi velit velit labore do."},{"rating":9,"review":"Eu laborum laborum reprehenderit minim officia anim."},{"rating":8,"review":"Et consectetur labore ullamco occaecat cupidatat magna pariatur esse qui ut mollit ea cillum."},{"rating":4,"review":"Dolore culpa magna commodo aute do culpa non commodo qui id commodo consectetur exercitation."},{"rating":6,"review":"Adipisicing laborum tempor sunt laboris et sint aute pariatur."},{"rating":9,"review":"Excepteur voluptate qui magna in cillum aliqua."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (36,'Women''s Trousers (Blue)',29.51,utl_raw.cast_to_raw('{"colour":"blue","gender":"Women''s","brand":"TROLLERY","description":"Proident sunt ipsum pariatur duis dolor eu dolore culpa ad aliquip elit. Mollit Lorem et aliquip commodo est anim amet eiusmod amet dolore laborum tempor officia.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":10,"review":"Consequat ut commodo irure sit elit anim amet eu est sunt tempor non."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (37,'Boy''s Jeans (Blue)',22.98,utl_raw.cast_to_raw('{"colour":"blue","gender":"Boy''s","brand":"AVIT","description":"Velit velit esse nulla minim minim laborum esse. Sint minim id aliquip amet fugiat dolor aliqua.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (38,'Girl''s Pyjamas (Red)',11,utl_raw.cast_to_raw('{"colour":"red","gender":"Girl''s","brand":"EMTRAK","description":"Magna est occaecat consectetur ullamco mollit dolore aute irure consectetur nulla ipsum id elit occaecat. Amet Lorem sint nulla eiusmod commodo aliqua cillum anim tempor tempor pariatur do nostrud minim.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":4,"review":"Consectetur velit adipisicing excepteur in excepteur sit excepteur irure veniam velit."},{"rating":4,"review":"Consectetur exercitation exercitation irure commodo officia do adipisicing ullamco sit anim consequat."},{"rating":9,"review":"Minim occaecat sunt laborum voluptate culpa enim elit."},{"rating":2,"review":"Reprehenderit labore incididunt ex ullamco nostrud cillum irure mollit dolore aliqua enim tempor aliquip laborum."},{"rating":2,"review":"Enim commodo adipisicing consequat commodo."},{"rating":8,"review":"Sint ut cillum Lorem ut ad aliquip elit sunt labore laboris consequat Lorem aliqua occaecat."},{"rating":2,"review":"Et consectetur in officia ullamco labore ea duis amet."},{"rating":8,"review":"Reprehenderit enim tempor proident commodo ex eu fugiat cupidatat exercitation culpa id adipisicing deserunt officia."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (39,'Boy''s Trousers (Blue)',34.06,utl_raw.cast_to_raw('{"colour":"blue","gender":"Boy''s","brand":"DIGINETIC","description":"Dolor aliqua minim nostrud non labore in ullamco mollit mollit sit non. Duis nulla exercitation et adipisicing nostrud voluptate cupidatat eu reprehenderit.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":6,"review":"Culpa id consequat cillum dolor."},{"rating":8,"review":"Qui do quis magna nostrud exercitation enim aute dolore proident ipsum sint nostrud deserunt."},{"rating":9,"review":"Excepteur fugiat adipisicing laboris ea culpa cupidatat laborum occaecat nostrud."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (40,'Girl''s Pyjamas (Black)',8.66,utl_raw.cast_to_raw('{"colour":"black","gender":"Girl''s","brand":"ISOLOGICS","description":"Ex exercitation aliquip cillum adipisicing cupidatat. Culpa labore eiusmod do ut ipsum incididunt ipsum labore.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":6,"review":"Duis minim duis dolor laboris eiusmod consequat fugiat adipisicing ex non culpa Lorem proident qui."},{"rating":4,"review":"Veniam tempor commodo aliqua sit ex mollit cillum aute officia fugiat tempor sunt nulla elit."},{"rating":10,"review":"Dolore officia aute magna eiusmod exercitation esse amet tempor."},{"rating":7,"review":"Proident nisi voluptate ea esse exercitation ullamco consequat consectetur in enim amet adipisicing commodo nulla."},{"rating":4,"review":"Irure ullamco id adipisicing fugiat Lorem do non officia nisi sunt esse mollit consectetur."},{"rating":9,"review":"Laboris do elit dolor officia irure esse incididunt pariatur elit."},{"rating":1,"review":"Aliqua Lorem nostrud et reprehenderit exercitation exercitation nostrud consectetur dolor."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (41,'Women''s Dress (Black)',10.11,utl_raw.cast_to_raw('{"colour":"black","gender":"Women''s","brand":"NEOCENT","description":"Eu enim aliquip deserunt est duis do sunt consequat sit sit labore nisi. Culpa mollit cupidatat Lorem et minim sit.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":4,"review":"Ex culpa sint ad eu quis."},{"rating":4,"review":"Irure labore adipisicing velit sint sint."},{"rating":4,"review":"Ullamco dolore ad qui consequat labore do cillum velit."},{"rating":5,"review":"Velit officia eiusmod proident dolore occaecat eu eiusmod."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (1,'Boy''s Shirt (White)',29.55,utl_raw.cast_to_raw('{"colour":"white","gender":"Boy''s","brand":"COMTOURS","description":"Labore commodo velit cupidatat ullamco ea proident velit sunt adipisicing. Esse tempor exercitation reprehenderit ullamco esse incididunt dolore laboris Lorem ipsum fugiat ea.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (2,'Women''s Shirt (Green)',16.67,utl_raw.cast_to_raw('{"colour":"green","gender":"Women''s","brand":"NIKE","description":"Excepteur anim adipisicing aliqua ad. Ex aliquip ad tempor cupidatat dolore ipsum ex anim Lorem aute amet.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":8,"review":"Laborum ipsum adipisicing magna nulla tempor incididunt."},{"rating":10,"review":"Cupidatat dolore nulla pariatur quis quis."},{"rating":9,"review":"Pariatur mollit dolor in deserunt cillum consectetur."},{"rating":3,"review":"Dolore occaecat mollit id ad aliqua irure reprehenderit amet eiusmod pariatur."},{"rating":10,"review":"Est pariatur et qui minim velit non consectetur sint fugiat ad."},{"rating":6,"review":"Et pariatur ipsum eu qui."},{"rating":6,"review":"Voluptate labore irure cupidatat mollit irure quis fugiat enim laborum consectetur officia sunt."},{"rating":8,"review":"Irure elit do et elit aute veniam proident sunt."},{"rating":8,"review":"Aute mollit proident id veniam occaecat dolore mollit dolore nostrud."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (3,'Boy''s Sweater (Green)',44.17,utl_raw.cast_to_raw('{"colour":"green","gender":"Boy''s","brand":"KINETICA","description":"Occaecat dolore in ut et ad pariatur laborum mollit nulla exercitation. Laboris esse tempor quis velit nostrud exercitation veniam reprehenderit minim minim exercitation.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":5,"review":"Sunt ad proident excepteur laboris officia eu reprehenderit dolor nostrud elit nulla pariatur incididunt Lorem."},{"rating":2,"review":"Ullamco ad amet fugiat adipisicing."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (4,'Boy''s Trousers (White)',43.71,utl_raw.cast_to_raw('{"colour":"white","gender":"Boy''s","brand":"INTERLOO","description":"Nostrud esse velit incididunt occaecat ullamco dolor quis reprehenderit proident dolore deserunt tempor qui proident. Magna deserunt sit minim eu commodo minim labore occaecat ea id sint laborum.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Anim culpa qui est adipisicing qui dolore enim. Sint duis aute laborum nisi ut elit Lorem nisi proident consectetur."},{"rating":6,"review":"Reprehenderit ad ipsum sint mollit aliqua."},{"rating":4,"review":"Enim culpa reprehenderit non ullamco non ex veniam. Sit do incididunt ullamco ad et et aliquip deserunt dolor officia nostrud ipsum officia nostrud. Lorem esse tempor aliqua ut quis occaecat."},{"rating":9,"review":"Pariatur sit dolor dolor tempor commodo aute culpa sit."},{"rating":2,"review":"Sunt enim sunt occaecat exercitation deserunt nisi anim mollit deserunt non laboris cillum."},{"rating":8,"review":"Exercitation et duis quis minim id duis veniam occaecat amet cillum velit pariatur tempor. Culpa aliquip adipisicing aliquip non minim occaecat eu nisi esse veniam eu aliqua."},{"rating":5,"review":"Culpa elit nulla dolore mollit tempor mollit in. Voluptate deserunt eiusmod sint id excepteur eiusmod excepteur qui enim cupidatat. Nostrud enim anim commodo adipisicing nisi dolore commodo elit commodo aliqua aliquip laborum."},{"rating":4,"review":"Exercitation sunt consequat anim nisi sunt cillum esse amet ut reprehenderit ea. Laborum labore ipsum consectetur ad excepteur proident fugiat consectetur eiusmod incididunt officia enim ullamco."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (5,'Girl''s Shorts (Red)',38.28,utl_raw.cast_to_raw('{"colour":"red","gender":"Girl''s","brand":"OZEAN","description":"These sea shorts are designed with quick-drying and breathable materials, making them the perfect choice for a day out on the water.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (6,'Boy''s Socks (Grey)',19.16,utl_raw.cast_to_raw('{"colour":"grey","gender":"Boy''s","brand":"GROK","description":"Pariatur elit adipisicing aute dolor sunt laborum ullamco aliqua exercitation consectetur. Lorem qui sint ullamco sint commodo anim.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":5,"review":"Ea eu sit est consectetur quis in dolor ut."},{"rating":6,"review":"In do cillum occaecat minim."},{"rating":6,"review":"Laborum laborum excepteur ipsum aliquip reprehenderit cillum irure proident voluptate eiusmod in culpa."},{"rating":9,"review":"Exercitation magna proident non deserunt consectetur consectetur do ex sint id irure ipsum voluptate."},{"rating":7,"review":"Aliquip irure minim quis quis voluptate reprehenderit mollit dolore."},{"rating":1,"review":"Duis mollit aute cillum aute culpa magna."},{"rating":9,"review":"Magna exercitation exercitation sit commodo proident fugiat occaecat ullamco voluptate do consectetur officia velit."},{"rating":7,"review":"Laboris nostrud et nulla tempor commodo non aute ipsum excepteur qui dolore enim."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (7,'Boy''s Socks (Black)',19.58,utl_raw.cast_to_raw('{"colour":"black","gender":"Boy''s","brand":"ENERVATE","description":"Sit minim sunt nulla proident velit Lorem dolor. Aute reprehenderit laborum labore proident non esse nisi ex magna consectetur minim ex est.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Laborum laboris eu occaecat amet adipisicing consequat veniam velit."},{"rating":2,"review":"Mollit fugiat commodo minim sint do irure duis quis ex minim ad."},{"rating":2,"review":"Sit duis aliquip proident et nostrud enim anim amet dolor consequat tempor culpa."},{"rating":3,"review":"Proident aute voluptate aute irure."},{"rating":2,"review":"Ex excepteur duis irure veniam elit occaecat sit Lorem labore id minim tempor dolore officia."},{"rating":2,"review":"Amet fugiat commodo qui eiusmod dolore sint fugiat commodo elit qui esse in officia."},{"rating":2,"review":"Dolor proident proident ad officia cillum dolor aute officia enim exercitation."},{"rating":4,"review":"Dolor esse cupidatat eiusmod non veniam elit nostrud aliquip eu elit."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (8,'Boy''s Coat (Brown)',21.16,utl_raw.cast_to_raw('{"colour":"brown","gender":"Boy''s","brand":"KOFFEE","description":"Voluptate quis excepteur mollit id dolore. Sunt aliquip in magna ut irure nostrud duis officia fugiat aute.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (9,'Women''s Jeans (Brown)',29.49,utl_raw.cast_to_raw('{"colour":"brown","gender":"Women''s","brand":"PROTODYNE","description":"Est dolor tempor sint commodo irure sint ut dolor proident enim Lorem. Pariatur deserunt nostrud quis minim non.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":2,"review":"Occaecat cupidatat in id elit magna Lorem esse ad magna labore non qui magna."},{"rating":8,"review":"Cupidatat cupidatat laboris consectetur labore veniam aliqua et incididunt duis sunt proident."},{"rating":2,"review":"Esse ipsum veniam ullamco irure ad minim mollit consequat non dolor labore."},{"rating":1,"review":"Cillum ea minim voluptate id ut consectetur commodo nostrud cillum eiusmod eiusmod dolore cillum veniam."},{"rating":5,"review":"Excepteur adipisicing culpa dolor id et irure sint ex non nostrud velit pariatur esse quis."},{"rating":9,"review":"Do fugiat aliqua sunt quis proident fugiat."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (10,'Women''s Skirt (Red)',30.69,utl_raw.cast_to_raw('{"colour":"green","gender":"Women''s","brand":"FLYBOYZ","description":"Qui aliquip dolor aute labore amet nostrud deserunt nulla ut veniam id. Ut aute velit tempor anim ex sit nisi.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":7,"review":"Mollit consequat minim sit consequat deserunt duis."},{"rating":8,"review":"Quis eu esse proident elit eu aliqua magna voluptate labore adipisicing voluptate ex do."},{"rating":6,"review":"Laborum nulla aliquip nulla adipisicing aliquip qui cupidatat aliquip in."},{"rating":3,"review":"Exercitation aute voluptate voluptate tempor sit enim ut veniam do."},{"rating":8,"review":"Cillum cillum anim aliqua eu deserunt amet eu ut veniam in qui."},{"rating":7,"review":"Nostrud aliqua ullamco irure consectetur elit nisi eu elit reprehenderit ut."},{"rating":5,"review":"Irure nisi dolore dolore ut non ad minim pariatur."},{"rating":2,"review":"Laboris aliqua sint est incididunt sunt non tempor irure reprehenderit labore."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (11,'Boy''s Shorts (Blue)',10.48,utl_raw.cast_to_raw('{"colour":"blue","gender":"Boy''s","brand":"WRAPTURE","description":"Id sit adipisicing ea dolore fugiat laborum ut dolore. Reprehenderit aliqua non adipisicing aliqua adipisicing aute ullamco consectetur est aliqua.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Laborum labore exercitation culpa sint cillum aute duis labore do excepteur."},{"rating":10,"review":"Do velit laborum adipisicing velit."},{"rating":6,"review":"Culpa dolor aute adipisicing ad."},{"rating":6,"review":"Sit sunt elit proident fugiat consectetur id incididunt nulla nulla magna consectetur."},{"rating":6,"review":"Adipisicing ipsum eiusmod sint ullamco dolor irure qui officia."},{"rating":4,"review":"Ipsum commodo amet non ut labore."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (12,'Boy''s Socks (White)',12.64,utl_raw.cast_to_raw('{"colour":"grey","gender":"Boy''s","brand":"HANDSHAKE","description":"Tempor laborum voluptate mollit aliquip et tempor nostrud Lorem. Nostrud anim exercitation est fugiat elit est deserunt mollit exercitation.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Quis culpa laborum ex magna."},{"rating":3,"review":"Culpa ullamco deserunt ex ea."},{"rating":3,"review":"Fugiat ullamco reprehenderit tempor nulla ad fugiat qui excepteur sunt officia deserunt nulla."},{"rating":2,"review":"Mollit dolore magna magna veniam culpa ullamco tempor esse id in occaecat excepteur ullamco ea."},{"rating":10,"review":"Culpa dolore enim consequat aliquip nulla ipsum."},{"rating":2,"review":"Excepteur aliqua sunt exercitation mollit pariatur anim tempor."},{"rating":8,"review":"Proident culpa tempor dolore deserunt anim ea deserunt quis duis."},{"rating":8,"review":"Reprehenderit est do quis quis reprehenderit adipisicing qui Lorem mollit sit labore veniam."},{"rating":1,"review":"Mollit dolore ad laboris ut cillum velit in sint labore nulla Lorem minim."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (13,'Boy''s Hoodie (Grey)',26.14,utl_raw.cast_to_raw('{"colour":"grey","gender":"Boy''s","brand":"SUNCLIPSE","description":"Voluptate irure voluptate labore sint amet occaecat elit ea incididunt aliquip. Tempor laboris tempor tempor magna officia in aliqua consequat elit occaecat.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":7,"review":"Fugiat officia nostrud cillum duis consequat sunt culpa duis laborum reprehenderit laborum."},{"rating":10,"review":"Et do reprehenderit do irure tempor id aliquip voluptate anim consequat amet sunt."},{"rating":3,"review":"Minim adipisicing dolore eiusmod laborum aliqua non Lorem laboris minim est cillum qui qui Lorem."},{"rating":4,"review":"Esse Lorem aute deserunt quis."},{"rating":1,"review":"Ex deserunt aliqua consectetur elit cillum cillum ex et mollit sint."},{"rating":4,"review":"Magna esse ipsum ipsum irure officia nostrud ad velit sit."},{"rating":8,"review":"Mollit et tempor esse fugiat fugiat ad voluptate irure est sunt proident magna anim ex."},{"rating":4,"review":"Nulla nisi esse ut exercitation commodo irure non amet labore mollit et elit."},{"rating":1,"review":"Enim officia anim proident consequat."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (14,'Women''s Skirt (Brown)',13.97,utl_raw.cast_to_raw('{"colour":"brown","gender":"Women''s","brand":"ISOTRONIC","description":"Magna Lorem do ad incididunt qui magna irure commodo nisi. Dolore ipsum adipisicing magna ea ullamco Lorem officia culpa do laborum voluptate.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":1,"review":"Officia occaecat laboris magna sint tempor officia deserunt proident eu excepteur."},{"rating":2,"review":"Aliqua nisi sint enim ad mollit qui."},{"rating":3,"review":"Fugiat excepteur eiusmod incididunt Lorem nostrud nostrud labore aute esse aliquip."},{"rating":8,"review":"Voluptate ad enim anim culpa veniam amet."},{"rating":3,"review":"Do cillum quis cillum Lorem tempor labore laboris."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (15,'Girl''s Coat (Blue)',13.09,utl_raw.cast_to_raw('{"colour":"blue","gender":"Girl''s","brand":"DECRATEX","description":"Proident ut officia non duis est eu aliquip culpa cupidatat est incididunt amet ipsum veniam. Aliqua ea cupidatat incididunt ad excepteur irure ad pariatur occaecat duis incididunt excepteur amet.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":8,"review":"Officia irure deserunt mollit Lorem dolor dolor minim deserunt."},{"rating":10,"review":"Aliqua nostrud dolore enim dolore reprehenderit officia quis aliquip irure occaecat et."},{"rating":2,"review":"Consectetur consequat ut cupidatat et elit et cillum veniam exercitation Lorem culpa ipsum."},{"rating":9,"review":"Nisi tempor incididunt Lorem sit sit do mollit qui aliquip qui eu quis Lorem."},{"rating":9,"review":"Sunt nulla ad dolore fugiat cillum et."},{"rating":8,"review":"Incididunt nostrud officia sunt cupidatat culpa ex id ut."},{"rating":1,"review":"Deserunt sit officia enim adipisicing exercitation velit ipsum dolore laboris officia mollit ex esse et."},{"rating":3,"review":"Aliqua nulla laborum id mollit irure incididunt aliqua mollit qui nostrud consectetur sint aliqua quis."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (42,'Boy''s Jeans (Black)',16.64,utl_raw.cast_to_raw('{"colour":"black","gender":"Boy''s","brand":"EARTHMARK","description":"Duis dolor est eu elit anim proident aliqua eu tempor. Est fugiat non ullamco et pariatur nulla exercitation eiusmod id officia minim.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":10,"review":"Anim aliquip id reprehenderit laboris."},{"rating":7,"review":"Nostrud non cupidatat id eiusmod aliquip anim ullamco aliquip cupidatat excepteur dolor reprehenderit."},{"rating":6,"review":"Veniam consequat deserunt nostrud sunt est commodo sint eu fugiat ipsum deserunt aute elit est."},{"rating":9,"review":"Eiusmod excepteur ut ullamco eiusmod labore deserunt."},{"rating":5,"review":"Aute deserunt eu voluptate id irure aliquip duis sint proident dolore dolor."},{"rating":5,"review":"Dolore mollit quis elit qui voluptate ad culpa voluptate elit consectetur."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (43,'Boy''s Trousers (Black)',39.32,utl_raw.cast_to_raw('{"colour":"blue","gender":"Boy''s","brand":"PHOLIO","description":"Voluptate ex mollit enim minim nulla proident dolor eu nostrud velit. Ex ullamco aute dolor duis elit elit.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":3,"review":"Labore non exercitation anim id deserunt excepteur dolore sunt deserunt dolor."},{"rating":5,"review":"Laborum eiusmod mollit amet nulla ex esse culpa ut elit reprehenderit labore ex Lorem cupidatat."},{"rating":7,"review":"Reprehenderit dolore aute consectetur voluptate excepteur veniam nulla ad."},{"rating":5,"review":"Reprehenderit proident in elit pariatur."},{"rating":8,"review":"Magna laborum ad deserunt voluptate enim excepteur enim dolore veniam consequat officia anim dolore mollit."},{"rating":3,"review":"Elit et reprehenderit amet aute amet laboris minim irure sint."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (44,'Women''s Coat (Black)',31.68,utl_raw.cast_to_raw('{"colour":"black","gender":"Women''s","brand":"COMVEYOR","description":"Exercitation ut ad reprehenderit sunt eiusmod sit. Qui nisi ut esse mollit nisi.","sizes":[0,2,4,6,8,10,12,14,16,18,20],"reviews":[{"rating":7,"review":"Ad consequat nisi est tempor nisi nulla veniam consectetur ad ut laborum magna."},{"rating":8,"review":"Incididunt magna ipsum cupidatat elit eiusmod enim mollit eiusmod id esse sit elit irure Lorem."},{"rating":7,"review":"Aute aliquip et esse consequat reprehenderit ipsum ut."},{"rating":8,"review":"Consectetur commodo cupidatat nostrud qui labore magna duis sit."},{"rating":8,"review":"Qui occaecat elit exercitation do est officia fugiat adipisicing velit occaecat deserunt Lorem ex adipisicing."},{"rating":6,"review":"Velit est commodo esse sint id ullamco aute ut ut officia laboris irure in."},{"rating":10,"review":"Ad nulla labore cupidatat do laboris do elit cupidatat excepteur occaecat cupidatat."},{"rating":5,"review":"Do esse magna occaecat non."},{"rating":10,"review":"Et sint qui tempor nostrud sunt sit duis dolor excepteur voluptate."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (45,'Men''s Jeans (Grey)',27.64,utl_raw.cast_to_raw('{"colour":"grey","gender":"Men''s","brand":"QNEKT","description":"Dolore duis minim dolor est fugiat sit dolor nisi anim Lorem culpa id. Consequat labore et reprehenderit pariatur culpa minim laboris pariatur esse aliquip.","sizes":["XS","S","M","L","XL","XXL"],"reviews":[{"rating":7,"review":"Veniam qui ipsum consequat laboris ad aliquip est reprehenderit esse sint cupidatat tempor."},{"rating":8,"review":"Ut anim anim ipsum ipsum irure."},{"rating":9,"review":"Non qui sunt ullamco deserunt sint."},{"rating":10,"review":"Nostrud fugiat velit aliqua eu culpa do excepteur do."}]}'));
        Insert into EBA_DEMO_SEARCH_PRODUCTS (PRODUCT_ID,PRODUCT_NAME,UNIT_PRICE,PRODUCT_DETAILS) values (46,'Girl''s Trousers (Red)',39.16,utl_raw.cast_to_raw('{"colour":"red","gender":"Girl''s","brand":"OTHERSIDE","description":"Lorem officia laborum deserunt veniam cillum anim adipisicing minim aute ad esse sint sit tempor. Magna enim proident eiusmod incididunt adipisicing duis deserunt pariatur sint officia occaecat est minim ipsum.","sizes":["1 Yr","2 Yr","3-4 Yr","5-6 Yr","7-8 Yr","9-10 Yr"],"reviews":[{"rating":9,"review":"Magna magna ullamco ipsum pariatur occaecat eiusmod amet ea sunt reprehenderit dolore aute voluptate."},{"rating":7,"review":"Eiusmod cupidatat cillum qui dolor consequat."},{"rating":4,"review":"Do proident cillum cupidatat laboris in cillum."},{"rating":5,"review":"Sunt eiusmod ea labore est sint adipisicing velit duis."},{"rating":6,"review":"Ut consectetur ad magna officia ut aliqua deserunt magna."}]}'));

        -- Order items data
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (349,1,11,30.69,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (349,2,12,10.48,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (401,1,28,10.24,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (401,2,12,10.48,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (430,1,18,24.46,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (430,2,15,13.97,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (437,1,37,29.51,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (437,2,20,28.21,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (453,1,43,16.64,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (453,2,2,29.55,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (506,1,18,24.46,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (506,2,21,38.34,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (513,1,11,30.69,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (513,2,4,44.17,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (513,3,19,14.34,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (544,1,37,29.51,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (544,2,6,38.28,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (544,3,27,39.91,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (585,1,29,24.71,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (585,2,31,28.59,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (585,3,37,29.51,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (608,1,15,13.97,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (608,2,23,10.33,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (608,3,35,7.18,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (672,1,46,39.16,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (687,1,42,10.11,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (687,2,13,12.64,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (707,1,18,24.46,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (760,1,46,39.16,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (760,2,20,28.21,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (761,1,33,37,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (761,2,2,29.55,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (765,1,34,23.32,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (765,2,13,12.64,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (766,1,12,10.48,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (769,1,42,10.11,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (808,1,39,11,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (808,2,13,12.64,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1,1,33,37,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1,2,11,30.69,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (3,1,41,8.66,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (5,1,40,34.06,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (5,2,32,5.65,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (7,1,36,49.12,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (7,2,29,24.71,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (17,1,46,39.16,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (17,2,26,48.75,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (20,1,27,39.91,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (20,2,9,21.16,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (20,3,32,5.65,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (63,1,7,19.16,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (63,2,24,48.39,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (78,1,3,16.67,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (78,2,35,7.18,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (78,3,9,21.16,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (79,1,34,23.32,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (79,2,8,19.58,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (79,3,4,44.17,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (82,1,21,38.34,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (82,2,10,29.49,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (92,1,15,13.97,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (125,1,22,39.78,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (125,2,39,11,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (132,1,11,30.69,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (132,2,31,28.59,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (132,3,10,29.49,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (159,1,8,19.58,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (182,1,23,10.33,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (182,2,20,28.21,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (196,1,3,16.67,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (196,2,23,10.33,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (201,1,19,14.34,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (201,2,36,49.12,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (204,1,33,37,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (204,2,12,10.48,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (240,1,12,10.48,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (240,2,17,39.89,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (290,1,11,30.69,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (290,2,27,39.91,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (290,3,38,22.98,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (298,1,9,21.16,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (298,2,43,16.64,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (306,1,28,10.24,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (307,1,38,22.98,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (307,2,19,14.34,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (331,1,34,23.32,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1483,1,46,39.16,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1483,2,23,10.33,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1483,3,14,26.14,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1486,1,44,39.32,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1486,2,36,49.12,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1486,3,14,26.14,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1491,1,12,10.48,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1498,1,16,13.09,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1498,2,5,43.71,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1513,1,36,49.12,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1513,2,5,43.71,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1513,3,44,39.32,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1520,1,13,12.64,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1520,2,46,27.64,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1520,3,33,37,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1525,1,40,34.06,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1525,2,17,39.89,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1543,1,21,38.34,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1543,2,26,48.75,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1543,3,11,30.69,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1549,1,14,26.14,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1549,2,43,16.64,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1552,1,34,23.32,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1555,1,17,39.89,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1555,2,34,23.32,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1560,1,8,19.58,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1560,2,21,38.34,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1561,1,43,16.64,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1561,2,7,19.16,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1635,1,15,13.97,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1635,2,4,44.17,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1635,3,36,49.12,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1637,1,25,9.8,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1659,1,14,26.14,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1730,1,20,28.21,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1730,2,11,30.69,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1731,1,39,11,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1731,2,21,38.34,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1776,1,34,23.32,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1776,2,25,9.8,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1776,3,20,28.21,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1808,1,14,26.14,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1817,1,34,23.32,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1817,2,42,10.11,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1817,3,22,39.78,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1890,1,2,29.55,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1890,2,46,39.16,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (832,1,10,29.49,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (832,2,9,21.16,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (839,1,38,22.98,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (839,2,7,19.16,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (862,1,23,10.33,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (862,2,33,37,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (899,1,31,28.59,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (920,1,41,8.66,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (920,2,4,44.17,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (928,1,3,16.67,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (928,2,12,10.48,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (928,3,35,7.18,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (943,1,6,38.28,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (950,1,22,39.78,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (950,2,23,10.33,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (960,1,26,48.75,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (960,2,43,16.64,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (960,3,24,48.39,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (968,1,30,37.34,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (968,2,13,12.64,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (968,3,35,7.18,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (972,1,27,39.91,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (972,2,23,10.33,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (986,1,12,10.48,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (986,2,14,26.14,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (993,1,35,7.18,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (993,2,14,26.14,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (993,3,19,14.34,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1052,1,36,49.12,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1052,2,33,37,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1052,3,44,39.32,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1058,1,16,13.09,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1058,2,34,23.32,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1058,3,2,29.55,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1082,1,22,39.78,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1082,2,20,28.21,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1102,1,10,29.49,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1102,2,39,11,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1102,3,14,26.14,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1111,1,41,8.66,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1111,2,13,12.64,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1119,1,25,9.8,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1119,2,9,21.16,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1119,3,45,31.68,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1121,1,27,39.91,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1169,1,9,21.16,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1169,2,22,39.78,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1191,1,33,37,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1191,2,40,34.06,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1191,3,14,26.14,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1195,1,13,12.64,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1200,1,19,14.34,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1200,2,27,39.91,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1200,3,7,19.16,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1260,1,30,37.34,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1260,2,5,43.71,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1321,1,43,16.64,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1321,2,37,29.51,1);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1321,3,46,39.16,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1348,1,31,28.59,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1348,2,23,10.33,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1348,3,3,16.67,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1363,1,11,30.69,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1363,2,14,26.14,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1373,1,17,39.89,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1373,2,29,24.71,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1390,1,12,10.48,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1390,2,28,10.24,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1390,3,9,21.16,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1400,1,11,30.69,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1400,2,6,38.28,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1418,1,31,28.59,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1418,2,45,31.68,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1437,1,3,16.67,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1439,1,46,27.64,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1439,2,9,21.16,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1448,1,2,29.55,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1450,1,4,44.17,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1451,1,10,29.49,5);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1451,2,35,7.18,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1455,1,45,31.68,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1455,2,23,10.33,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1468,1,2,29.55,3);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1468,2,45,31.68,4);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1471,1,14,26.14,2);
        Insert into EBA_DEMO_SEARCH_ORDER_ITEMS (ORDER_ID,LINE_ITEM_ID,PRODUCT_ID,UNIT_PRICE,QUANTITY) values (1471,2,6,38.28,3);
        
        commit;
    end load_data;

    procedure load_product_images(p_app_id in number, p_file_name in varchar2) is
        l_zip_file      blob;
        l_files         apex_zip.t_files;
    begin
        select file_content
        into l_zip_file
        from APEX_APPLICATION_STATIC_FILES
        where application_id = p_app_id and file_name = p_file_name;
    
        l_files := APEX_ZIP.get_files (
                p_zipped_blob => l_zip_file );
    
        for i in 1 .. l_files.count loop
            update eba_demo_search_products
            set product_image = APEX_ZIP.get_file_content (
                p_zipped_blob => l_zip_file,
                p_file_name   => l_files(i) )
            where product_id = substr(l_files(i),0,instr(l_files(i),'.'));
        end loop;
        commit;
    end load_product_images;

    procedure reset_data is
    begin
        clear_data;
        load_data;
    end reset_data;

end eba_demo_search_data_pkg;
/

begin
    eba_demo_search_data_pkg.reset_data;
end;
/
