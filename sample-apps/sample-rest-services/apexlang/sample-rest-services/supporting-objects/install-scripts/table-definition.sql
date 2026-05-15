-- ===========================================================================
-- table definitions
-- ===========================================================================

create table eba_demo_rest_producttable (
    product_id         number             not null enable,
    product_name       varchar2(255)      not null enable,
    unit_price         number(10,2),
    product_details    blob,
    product_image      blob,
    image_mime_type    varchar2(512),
    image_filename     varchar2(512),
    image_charset      varchar2(512),
    image_last_updated date,
    constraint eba_demo_rest_producttable_pk
        primary key (product_id)
        using index enable,
    constraint eba_demo_rest_product_json_c
        check (product_details is json) enable
);

create table eba_demo_rest_order_workflow (
    id               number generated always as identity,
    user_id          varchar2(100),
    product_name     varchar2(255),
    product_details  clob,
    constraint eba_demo_rest_order_workflow_pk
        primary key (id)
);

create table eba_demo_rest_purchaseorders (
    id               number not null enable,
    po               clob,
    constraint eba_demo_rest_purchaseorders_pk 
        primary key (id) 
);

create table eba_demo_rest_stores (
    store_id                number           not null enable,
    store_name              varchar2(255)    not null enable,
    web_address             varchar2(100),
    physical_address        varchar2(512),
    latitude                number,
    longitude               number,
    logo                    blob,
    logo_mime_type          varchar2(512),
    logo_filename           varchar2(512),
    logo_charset            varchar2(512),
    logo_last_updated       date,
    constraint eba_demo_rest_stores_pk
        primary key (store_id)
        using index enable,
    constraint eba_demo_rest_store_name_u
        unique (store_name)
        using index enable,
    constraint eba_demo_rest_store_at_least_one_address_c
        check (coalesce(web_address, physical_address) is not null) enable
);

create table eba_demo_rest_assignees (
    id           number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') not null enable,
    full_name    varchar2(255 char)                not null enable,
    email        varchar2(255 char),
    phone_number number,
    created      date                             not null enable,
    created_by   varchar2(255 char)                 ,
    updated      date                             not null enable,
    updated_by   varchar2(255 char)                 ,
    constraint eba_demo_rest_assignees_id_pk
        primary key (id)
        using index enable
);

create table eba_demo_rest_customers (
    customer_id   number         not null enable,
    full_name     varchar2(255)  not null enable,
    email_address varchar2(255)  not null enable,
    constraint eba_demo_rest_customers_pk
        primary key (customer_id)
        using index enable,
    constraint eba_demo_rest_customers_email_u
        unique (email_address)
        using index enable
);

create table eba_demo_rest_department (
    deptno                   number,
    dname                    varchar2(4000),
    loc                      varchar2(4000),
    constraint eba_demo_rest_department_pk
        primary key (deptno)
        using index enable
);

create table eba_demo_rest_dept_local (
    deptno number,
    dname  varchar2(4000),
    loc    varchar2(4000),
    primary key (deptno)
        using index enable
);

create table eba_demo_rest_employee (
    empno                      number,
    ename                      varchar2(4000),
    job                        varchar2(4000),
    mgr                        number,
    hiredate                   date,
    sal                        number,
    comm                       number,
    deptno                     number,
   
    constraint eba_demo_rest_employee_pk
        primary key (empno)
        using index enable
);

create table eba_demo_rest_employeecustom (
    deptno            number,
    empno             number,
    emp_name          varchar2(50),
    role_desc         varchar2(50),
    hourly_rate       number(6,2),
    bonus_eligibility varchar2(3),

    constraint eba_demo_rest_employeecustom_pk
        primary key (empno)
        using index enable
);

create table eba_demo_rest_orderitems (
    order_id     number           not null enable,
    line_item_id number           not null enable,
    product_id   number           not null,
    unit_price   number(10,2)     not null enable,
    quantity     number           not null enable,
    constraint eba_demo_rest_orderitems_pk
        primary key (order_id, line_item_id)
        using index enable,
    constraint eba_demo_rest_orderitems_product_u
        unique (product_id, order_id)
        using index enable
);

create table eba_demo_rest_orders (
    order_id       number             not null enable,
    order_datetime timestamp(6)       not null enable,
    customer_id    number             not null enable,
    order_status   varchar2(10)       not null,
    store_id       number             not null enable,
    constraint eba_demo_rest_orders_pk
        primary key (order_id)
        using index enable,
    constraint eba_demo_rest_order_status_c
        check (order_status in ('CANCELLED','COMPLETE','OPEN','PAID','REFUNDED','SHIPPED')) enable
);

create table eba_demo_rest_storeordersummary (
    store_id            number,
    store_name          varchar2(255),
    total_orders        number,
    last_order_datetime date,
    load_timestamp      date default sysdate,

    constraint eba_demo_rest_storeordersummary_pk
        primary key (store_id)
        using index enable
);

create table eba_demo_rest_tasks (
    id           number             not null enable,
    project      varchar2(30)       not null enable,
    task_name    varchar2(255),
    start_date   date               not null enable,
    end_date     date,
    status       varchar2(30)       not null enable,
    assigned_to  varchar2(30),
    cost         number,
    budget       number,
    created      timestamp(6) with time zone not null enable,
    created_by   varchar2(255)       ,
    updated      timestamp(6) with time zone not null enable,
    updated_by   varchar2(255)       ,
    constraint eba_demo_rest_tasks_pk
        primary key (id)
        using index enable,
    constraint eba_demo_rest_tasks_uk
        unique (project, task_name)
        using index enable
);



-- ===========================================================================
--  indexes & constraints
-- ===========================================================================

create index eba_demo_rest_customers_name_idx
    on eba_demo_rest_customers (full_name);

create index eba_demo_rest_orders_customer_idx
    on eba_demo_rest_orders (customer_id);

create index eba_demo_rest_orders_store_idx
    on eba_demo_rest_orders (store_id);
create index eba_demo_rest_orderitems_productid_idx
    on eba_demo_rest_orderitems (product_id);



alter table eba_demo_rest_orderitems
    add constraint eba_demo_rest_orderitems_order_id_fk
        foreign key (order_id)
        references eba_demo_rest_orders (order_id)
        on delete cascade enable;

alter table eba_demo_rest_orderitems
    add constraint eba_demo_rest_orderitems_product_id_fk
        foreign key (product_id)
        references eba_demo_rest_producttable (product_id)
        on delete cascade enable;

alter table eba_demo_rest_orders
    add constraint eba_demo_rest_orders_customer_id_fk
        foreign key (customer_id)
        references eba_demo_rest_customers (customer_id)
        on delete cascade enable;

alter table eba_demo_rest_orders
    add constraint eba_demo_rest_orders_store_id_fk
        foreign key (store_id)
        references eba_demo_rest_stores (store_id)
        on delete cascade enable;






-- ===========================================================================
--  view definitions
-- ===========================================================================

create or replace force editionable view customer_order_products (
    order_id,
    order_datetime,
    order_status,
    customer_id,
    email_address,
    full_name,
    order_total,
    items
) as
    select
        o.order_id
      , o.order_datetime
      , o.order_status
      , c.customer_id
      , c.email_address
      , c.full_name
      , sum(oi.quantity * oi.unit_price) order_total
      , listagg(p.product_name, ', ' on overflow truncate '...' with count)
          within group (order by oi.line_item_id) items
    from eba_demo_rest_orders o
    join eba_demo_rest_orderitems oi
      on o.order_id = oi.order_id
    join eba_demo_rest_customers c
      on o.customer_id = c.customer_id
    join eba_demo_rest_producttable p
      on oi.product_id = p.product_id
    group by
        o.order_id
      , o.order_datetime
      , o.order_status
      , c.customer_id
      , c.email_address
      , c.full_name
;

create or replace force editionable view product_orders (
    product_name,
    order_status,
    total_sales,
    order_count
) as
    select
        p.product_name
      , o.order_status
      , sum(oi.quantity * oi.unit_price) total_sales
      , count(*) order_count
    from eba_demo_rest_orders o
    join eba_demo_rest_orderitems oi
      on o.order_id = oi.order_id
    join eba_demo_rest_customers c
      on o.customer_id = c.customer_id
    join eba_demo_rest_producttable p
      on oi.product_id = p.product_id
    group by
        p.product_name
      , o.order_status
;

create or replace force editionable view product_reviews (
    product_name,
    rating,
    avg_rating,
    review
) as
    select
        p.product_name
      , r.rating
      , round(avg(r.rating) over (partition by product_name), 2) avg_rating
      , r.review
    from eba_demo_rest_producttable p
    , json_table(
        p.product_details, '$'
        columns nested path '$.reviews[*]'
            columns (
                rating number path '$.rating',
                review varchar2(4000) path '$.review'
            )
      ) r
;

create or replace force editionable view store_orders (
    total,
    store_name,
    address,
    latitude,
    longitude,
    order_status,
    order_count,
    total_sales
) as
    select
        case grouping_id(store_name, order_status)
            when 1 then 'STORE TOTAL'
            when 2 then 'STATUS TOTAL'
            when 3 then 'GRAND TOTAL'
        end total
      , s.store_name
      , coalesce(s.web_address, s.physical_address) address
      , s.latitude
      , s.longitude
      , o.order_status
      , count(distinct o.order_id) order_count
      , sum(oi.quantity * oi.unit_price) total_sales
    from eba_demo_rest_stores s
    join eba_demo_rest_orders o
      on s.store_id = o.store_id
    join eba_demo_rest_orderitems oi
      on o.order_id = oi.order_id
    group by 
        grouping sets (
            (s.store_name, coalesce(s.web_address, s.physical_address), s.latitude, s.longitude),
            (s.store_name, coalesce(s.web_address, s.physical_address), s.latitude, s.longitude, o.order_status),
            o.order_status,
            ()
        )
;

create or replace force editionable view store_orders_status (
    store_name,
    address,
    latitude,
    longitude,
    order_status,
    order_count,
    total_sales
) as
    select
        s.store_name
      , coalesce(s.web_address, s.physical_address) address
      , s.latitude
      , s.longitude
      , o.order_status
      , count(distinct o.order_id) order_count
      , sum(oi.quantity * oi.unit_price) total_sales
    from eba_demo_rest_stores s
    join eba_demo_rest_orders o
      on s.store_id = o.store_id
    join eba_demo_rest_orderitems oi
      on o.order_id = oi.order_id
    group by
        s.store_name
      , coalesce(s.web_address, s.physical_address)
      , s.latitude
      , s.longitude
      , o.order_status
;


-- ===========================================================================
--  triggers
-- ===========================================================================

create or replace trigger eba_demo_rest_employee_t
before insert on eba_demo_rest_employee
for each row
begin
    if :new.empno is null then
        select eba_demo_emp_seq.nextval into :new.empno from sys.dual;
    end if;
end;