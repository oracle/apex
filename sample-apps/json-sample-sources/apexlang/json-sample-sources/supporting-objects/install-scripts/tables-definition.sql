-- ===========================================================================
-- table definitions
-- ===========================================================================
create table eba_demo_json_customers (
    customer_id       number default eba_demo_json_customers_seq.nextval not null enable, 
	full_name         varchar2(255)                                      not null enable, 
	email_address     varchar2(255)                                      not null enable, 
	customer_metadata json, 
	latitude          number, 
	longitude         number, 
	constraint eba_demo_json_customers_pk
        primary key (customer_id)
        using index  enable,
    constraint eba_demo_json_customers_email_u 
        unique (email_address)
        using index  enable
   );


create table  eba_demo_json_stores (
    store_id          number default eba_demo_json_stores_seq.nextval not null enable,  
	store_name        varchar2(255)                                   not null enable,   
	web_address       varchar2(100),   
	physical_address  varchar2(512),   
	latitude          number,   
	longitude         number, 
    country_code      varchar2(2)                                     not null,
    country           varchar2(255),
	logo              blob,   
	logo_mime_type    varchar2(512),   
	logo_filename     varchar2(512),   
	logo_charset      varchar2(512),   
	logo_last_updated date, 
	 constraint eba_demo_json_stores_pk
        primary key (store_id)  
        using index  enable,   
	 constraint eba_demo_json_store_name_u 
        unique (store_name)  
        using index  enable,   
	 constraint eba_demo_json_required_adr_c 
        check (coalesce ( web_address, physical_address ) is not null) enable  
   );  
 

 create  table eba_demo_json_orders (
    order_id       number default eba_demo_json_orders_seq.nextval not null enable,   
	order_datetime timestamp (6)                                   not null enable,  
	customer_id    number                                          not null enable,  
	order_status   varchar2(10)                                    not null enable,  
	store_id       number                                          not null enable,
    order_metadata json, 
	 constraint eba_demo_json_orders_pk 
        primary key (order_id)  
        using index  enable,
	 constraint eba_demo_json_order_status_c 
        check (order_status in ('Cancelled','Complete','Open','Paid','Refunded')) enable
    );

create table eba_demo_json_products (
    product_id         number default eba_demo_json_products_seq.nextval not null enable,  
	product_name       varchar2(255)                                     not null enable, 
	unit_price         number(10,2), 
	product_details    json, 
	product_image      blob, 
	image_mime_type    varchar2(512), 
	image_filename     varchar2(512), 
	image_charset      varchar2(512), 
	image_last_updated date,
	 constraint eba_demo_json_products_pk 
        primary key (product_id)
        using index  enable, 
	 constraint eba_demo_json_product_json_c 
        check (product_details is json) enable
   );

create table eba_demo_json_order_items (	
    order_id     number         not null enable,   
	line_item_id number         not null enable,   
	product_id   number         not null enable,   
	unit_price   number(10,2)   not null enable,   
	quantity     number         not null enable,    
	 constraint eba_demo_json_order_items_pk 
        primary key (order_id, line_item_id)
        using index  enable,   
	 constraint eba_demo_json_ord_item_prd_u
        unique (product_id, order_id)
        using index  enable  
   );

-- JSON Collection

create json collection table eba_demo_json_support_ticket;

-- Add foreign key constraints
alter table  eba_demo_json_orders 
    add constraint eba_demo_json_order_customer_id_fk
        foreign key (customer_id)  
	    references  eba_demo_json_customers (customer_id) 
        on delete cascade enable;  

alter table  eba_demo_json_orders 
    add constraint eba_demo_json_order_store_id_fk 
        foreign key (store_id)  
	    references  eba_demo_json_stores (store_id)
        on delete cascade enable;  

alter table  eba_demo_json_order_items 
    add constraint eba_demo_json_item_order_id_fk
        foreign key (order_id)  
	    references  eba_demo_json_orders (order_id)
        on delete cascade enable;

alter table  eba_demo_json_order_items 
    add constraint eba_demo_json_item_product_id_fk 
        foreign key (product_id)  
	    references  eba_demo_json_products (product_id)
        on delete cascade enable;  


-- Create indexes
create index eba_demo_json_customer_name_i 
    on  eba_demo_json_customers (full_name);

create index eba_demo_json_order_customer_id_i 
    on  eba_demo_json_orders (customer_id);

create index  eba_demo_json_order_store_id_i 
    on  eba_demo_json_orders (store_id);  

-- Create Duality Views

create or replace force editionable json relational duality view eba_demo_json_stores_dv as 
  select json {
           '_id'          : s.store_id,
           'storeName'    : s.store_name,
           'address'      : s.physical_address,
           'location'     : {
              'latitude'  : s.latitude,
              'longitude' : s.longitude
           },
           'country_code' : s.country_code,
           'country'      : s.country
         }
    from eba_demo_json_stores s 
 with insert update delete nocheck;

  create or replace force editionable json relational duality view eba_demo_json_customer_orders_dv as 
  select json {
           '_id'                        : c.customer_id,
           'full_name'                  : c.full_name,
           'email_address'              : c.email_address,
           'orders' : [
             select json {
                       'order_id'       : o.order_id,
                       'order_datetime' : o.order_datetime,
                       'order_status'   : o.order_status,
                       'store_id'       : o.store_id
                     }
               from eba_demo_json_orders o
              with insert update delete
              where o.customer_id = c.customer_id
           ]
         }
    from eba_demo_json_customers c
 with insert update delete nocheck;


-- ===========================================================================
--  triggers
-- ===========================================================================

create or replace trigger eba_demo_json_customers_bir
before insert on eba_demo_json_customers
for each row
begin
    if :new.customer_id is null then
        :new.customer_id := eba_demo_json_customers_seq.nextval;
    end if;
end;
/

create or replace trigger eba_demo_json_orders_bir
before insert on eba_demo_json_orders
for each row
begin
    if :new.order_id is null then
        :new.order_id := eba_demo_json_orders_seq.nextval;
    end if;
end;
/
create or replace trigger eba_demo_json_stores_bir
before insert on eba_demo_json_stores
for each row
begin
    if :new.store_id is null then
        :new.store_id := eba_demo_json_stores_seq.nextval;
    end if;
end;
/
create or replace trigger eba_demo_json_products_bir
before insert on eba_demo_json_products
for each row
begin
    if :new.product_id is null then
        :new.product_id := eba_demo_json_products_seq.nextval;
    end if;
end;
/