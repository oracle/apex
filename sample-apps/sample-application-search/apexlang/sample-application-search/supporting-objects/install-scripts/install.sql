-------------------------------------------------------------------------------------------------------
-- Install Sample Dataset
-------------------------------------------------------------------------------------------------------

-- Create tables
CREATE TABLE  "EBA_DEMO_SEARCH_CUSTOMERS"   
   (	"CUSTOMER_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),   
	"FULL_NAME" VARCHAR2(255) NOT NULL ENABLE,   
	"EMAIL_ADDRESS" VARCHAR2(255) NOT NULL ENABLE,   
	 CONSTRAINT "EBA_DEMO_SEARCH_CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")  
  USING INDEX  ENABLE,   
	 CONSTRAINT "EBA_DEMO_SEARCH_CUST_EMAIL_U" UNIQUE ("EMAIL_ADDRESS")  
  USING INDEX  ENABLE  
   )  
/

CREATE TABLE  "EBA_DEMO_SEARCH_STORES"    
   (	"STORE_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),   
	"STORE_NAME" VARCHAR2(255) NOT NULL ENABLE,   
	"WEB_ADDRESS" VARCHAR2(100),   
	"PHYSICAL_ADDRESS" VARCHAR2(512),   
	"LATITUDE" NUMBER,   
	"LONGITUDE" NUMBER,   
	"LOGO" BLOB,   
	"LOGO_MIME_TYPE" VARCHAR2(512),   
	"LOGO_FILENAME" VARCHAR2(512),   
	"LOGO_CHARSET" VARCHAR2(512),   
	"LOGO_LAST_UPDATED" DATE,    
	 CONSTRAINT "EBA_DEMO_SEARCH_STORES_PK" PRIMARY KEY ("STORE_ID")  
  USING INDEX  ENABLE,   
	 CONSTRAINT "EBA_DEMO_SEARCH_STORE_NAME_U" UNIQUE ("STORE_NAME")  
  USING INDEX  ENABLE,   
	 CONSTRAINT "EBA_DEMO_SEARCH_REQUIRED_ADR_C" CHECK (coalesce ( web_address, physical_address ) is not null) ENABLE  
   )  
/ 

 CREATE  TABLE  "EBA_DEMO_SEARCH_ORDERS"
    (   "ORDER_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),  
	"ORDER_DATETIME" TIMESTAMP (6) NOT NULL ENABLE,  
	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,  
	"ORDER_STATUS" VARCHAR2(10) NOT NULL ENABLE,  
	"STORE_ID" NUMBER NOT NULL ENABLE,
	 CONSTRAINT "EBA_DEMO_SEARCH_ORDERS_PK" PRIMARY KEY ("ORDER_ID")  
  USING INDEX  ENABLE,
	 CONSTRAINT "EBA_DEMO_SEARCH_ORDER_STATUS_C" CHECK (order_status in ('CANCELLED','COMPLETE','OPEN','PAID','REFUNDED','SHIPPED')) ENABLE
    )
/

CREATE TABLE  "EBA_DEMO_SEARCH_PRODUCTS" 
   (	"PRODUCT_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'), 
	"PRODUCT_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"UNIT_PRICE" NUMBER(10,2), 
	"PRODUCT_DETAILS" BLOB, 
	"PRODUCT_IMAGE" BLOB, 
	"IMAGE_MIME_TYPE" VARCHAR2(512), 
	"IMAGE_FILENAME" VARCHAR2(512), 
	"IMAGE_CHARSET" VARCHAR2(512), 
	"IMAGE_LAST_UPDATED" DATE,
    "TEXT_INDEX_COLUMN" VARCHAR2(255),
	 CONSTRAINT "EBA_DEMO_SEARCH_PRODUCTS_PK" PRIMARY KEY ("PRODUCT_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "EBA_DEMO_SEARCH_PRODUCT_JSON_C" CHECK (product_details is json) ENABLE
   )
/

CREATE TABLE  "EBA_DEMO_SEARCH_ORDER_ITEMS"   
   (	"ORDER_ID" NUMBER NOT NULL ENABLE,   
	"LINE_ITEM_ID" NUMBER NOT NULL ENABLE,   
	"PRODUCT_ID" NUMBER NOT NULL ENABLE,   
	"UNIT_PRICE" NUMBER(10,2) NOT NULL ENABLE,   
	"QUANTITY" NUMBER NOT NULL ENABLE,    
	 CONSTRAINT "EBA_DEMO_SEARCH_ORDER_ITEMS_PK" PRIMARY KEY ("ORDER_ID", "LINE_ITEM_ID")
  USING INDEX  ENABLE,   
	 CONSTRAINT "EBA_DEMO_SEARCH_ORD_ITEM_PRD_U" UNIQUE ("PRODUCT_ID", "ORDER_ID")
  USING INDEX  ENABLE  
   )  
/


-- Add foreign key constraints
ALTER TABLE  "EBA_DEMO_SEARCH_ORDERS" ADD CONSTRAINT "EBA_DEMO_SEARCH_ORD_CUST_ID_FK" FOREIGN KEY ("CUSTOMER_ID")  
	  REFERENCES  "EBA_DEMO_SEARCH_CUSTOMERS" ("CUSTOMER_ID") ON DELETE CASCADE ENABLE  
/  
ALTER TABLE  "EBA_DEMO_SEARCH_ORDERS" ADD CONSTRAINT "EBA_DEMO_SEARCH_ORD_STR_ID_FK" FOREIGN KEY ("STORE_ID")  
	  REFERENCES  "EBA_DEMO_SEARCH_STORES" ("STORE_ID") ON DELETE CASCADE ENABLE  
/  

ALTER TABLE  "EBA_DEMO_SEARCH_ORDER_ITEMS" ADD CONSTRAINT "EBA_DEMO_SEARCH_ITEM_ORD_ID_FK" FOREIGN KEY ("ORDER_ID")  
	  REFERENCES  "EBA_DEMO_SEARCH_ORDERS" ("ORDER_ID") ON DELETE CASCADE ENABLE  
/  
ALTER TABLE  "EBA_DEMO_SEARCH_ORDER_ITEMS" ADD CONSTRAINT "EBA_DEMO_SEARCH_ITEM_PRD_ID_FK" FOREIGN KEY ("PRODUCT_ID")  
	  REFERENCES  "EBA_DEMO_SEARCH_PRODUCTS" ("PRODUCT_ID") ON DELETE CASCADE ENABLE  
/  

-- Create indexes
CREATE INDEX  "EBA_DEMO_SEARCH_CUST_NAME_I" ON  "EBA_DEMO_SEARCH_CUSTOMERS" ("FULL_NAME")  
/
CREATE INDEX  "EBA_DEMO_SEARCH_ORD_CUST_ID_I" ON  "EBA_DEMO_SEARCH_ORDERS" ("CUSTOMER_ID")  
/  

CREATE INDEX  "EBA_DEMO_SEARCH_ORD_STR_ID_I" ON  "EBA_DEMO_SEARCH_ORDERS" ("STORE_ID")  
/

-- Create views
-- Create view to show order details along with customer and product info
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "EBA_DEMO_SEARCH_CUST_ORD_PRD" ("ORDER_ID", "ORDER_STATUS", "ORDER_DATETIME", "CUSTOMER_ID",  
"EMAIL_ADDRESS", "FULL_NAME", "ORDER_TOTAL", "ITEMS") AS  
select o.order_id,
      o.order_status,
      o.order_datetime,
      c.customer_id,
      c.email_address,
      c.full_name,
      sum ( oi.quantity * oi.unit_price ) order_total,
      listagg (p.product_name, ', ' on overflow truncate '...' with count)   
         within group ( order by oi.line_item_id ) items  
from eba_demo_search_orders o  
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id  
join eba_demo_search_customers c
  on o.customer_id = c.customer_id  
join eba_demo_search_products p
  on oi.product_id = p.product_id
group by o.order_id,
        o.order_datetime,
        o.order_status,
        c.customer_id,
        c.email_address,
        c.full_name
/

-- Create view to show product order details 
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "EBA_DEMO_SEARCH_PRD_ORDERS" ("PRODUCT_NAME", "ORDER_STATUS", "TOTAL_SALES", "ORDER_COUNT") AS  

 select p.product_name,
       o.order_status,
       sum ( oi.quantity * oi.unit_price ) total_sales,
       count (*) order_count 
from eba_demo_search_orders o  
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id  
join eba_demo_search_customers c
  on o.customer_id = c.customer_id  
join eba_demo_search_products p
  on oi.product_id = p.product_id
group by p.product_name  
,        o.order_status
/  

-- Create view to show product review details
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "EBA_DEMO_SEARCH_PRD_REVIEWS" ("PRODUCT_NAME", "RATING", "AVG_RATING", "REVIEW") AS  

 select p.product_name,
       r.rating,
       round (avg (r.rating) over (partition by product_name), 2) avg_rating,
       r.review
from eba_demo_search_products p,
    json_table  
       (p.product_details, '$.reviews[*]'  
        columns (
            rating number path '$.rating',
            review varchar2(4000) path '$.review')  
       ) r
/

-- Create view to show order details grouped by store
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "EBA_DEMO_SEARCH_STR_ORDERS" ("TOTAL", "STORE_NAME", "ADDRESS", "LATITUDE", "LONGITUDE", "ORDER_STATUS", "ORDER_COUNT", "TOTAL_SALES") AS   

 select case  
         grouping_id ( store_name, order_status )  
           when 1 then 'STORE TOTAL'  
           when 2 then 'STATUS TOTAL'  
           when 3 then 'GRAND TOTAL'  
       end total,
	         s.store_name,
	         coalesce ( s.web_address, s.physical_address ) address,
	         s.latitude,
	         s.longitude,
	         o.order_status,
	         count ( distinct o.order_id ) order_count,
	         sum ( oi.quantity * oi.unit_price ) total_sales  
from eba_demo_search_stores s  
join eba_demo_search_orders o 
  on s.store_id = o.store_id 
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id 
group by grouping sets (  (s.store_name, coalesce(s.web_address,s.physical_address), s.latitude, s.longitude) ,
							 (s.store_name, coalesce(s.web_address,s.physical_address), s.latitude, s.longitude, o.order_status),
							  o.order_status ,
							 ()  
                       )
/ 

-- Create view to show order details grouped by store and status
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "EBA_DEMO_SEARCH_STR_ORD_STAT" ("STORE_NAME", "ADDRESS", "LATITUDE", "LONGITUDE", "ORDER_STATUS", "ORDER_COUNT", "TOTAL_SALES") AS   

 select s.store_name,
        coalesce ( s.web_address, s.physical_address ) address,
        s.latitude,
        s.longitude,
        o.order_status,
        count ( distinct o.order_id ) order_count,
        sum ( oi.quantity * oi.unit_price ) total_sales 
from eba_demo_search_stores s
join eba_demo_search_orders o 
  on s.store_id = o.store_id
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id
group by  s.store_name, coalesce ( s.web_address, s.physical_address ), s.latitude, s.longitude, o.order_status
/

-------------------------------------------------------------------------------------------------------
-- Application specific objects
-------------------------------------------------------------------------------------------------------

-- Track Web Credetiels
create table eba_demo_search_web_creds(
    credential_static_id varchar2(50) unique not null enable
);


-- Sync Text Index 
create or replace trigger text_index_pending
    before update on eba_demo_search_products
    for each row
begin
    :new.text_index_column := nvl(to_number(:old.text_index_column)+1, '0');
end;
/

alter trigger text_index_pending enable;


-- Error handling function
create or replace function eba_demo_search_error_handling( p_error in apex_error.t_error )
    return apex_error.t_error_result
is
    l_result          apex_error.t_error_result;
    l_message varchar2(255);
begin
    l_result := apex_error.init_error_result (
                    p_error => p_error );
                    
    l_message := APEX_ERROR.GET_FIRST_ORA_ERROR_TEXT (p_error,false);
    if p_error.ora_sqlcode = -20999 and l_message like '%401%' then
        l_result.message := 'Incorrect credentials. Please navigate to "Manage Web Credentials" under "Administration" and provide a valid API Key.';
    end if;

    return l_result;
end eba_demo_search_error_handling;