# Provenance
- Source Prompt: blueprint-prompt.md (v26.1.220)
- Functional Requirements: order-entry-functional-requirements.md
- Schema Metadata: order-entry-schema-metadata.md
- UX Patterns: Built-in
# Application Definition
- Name: Order Entry
- Description: Order Entry application for OREN customers, stores, products, orders, and order items.
- Comments: Uses OREN base tables for order operations, management maintenance, reporting, and KPI analytics.
- Primary Application Language: en
- Home Page: Page 1
- List of Values:
  - LOV
    - Name: LOV_ORDER_CHANNEL
    - Type: Static
    - Entries:
      - Entry:
        - Display: ONLINE
        - Return: ONLINE
      - Entry:
        - Display: IN_PERSON
        - Return: IN_PERSON
  - LOV
    - Name: LOV_ORDER_STATUS
    - Type: Static
    - Entries:
      - Entry:
        - Display: OPEN
        - Return: OPEN
      - Entry:
        - Display: PAID
        - Return: PAID
      - Entry:
        - Display: COMPLETE
        - Return: COMPLETE
      - Entry:
        - Display: CANCELLED
        - Return: CANCELLED
  - LOV
    - Name: LOV_STORES
    - Type: Table
    - Table Name: OREN_STORES
    - Display: STORE_NAME
    - Return: STORE_ID
  - LOV
    - Name: LOV_CUSTOMERS
    - Type: Table
    - Table Name: OREN_CUSTOMERS
    - Display: FULL_NAME
    - Return: CUSTOMER_ID
  - LOV
    - Name: LOV_PRODUCTS
    - Type: Table
    - Table Name: OREN_PRODUCTS
    - Display: PRODUCT_NAME
    - Return: PRODUCT_ID
  - LOV
    - Name: LOV_PRODUCT_NAMES
    - Type: Table
    - Table Name: OREN_PRODUCTS
    - Display: PRODUCT_NAME
    - Return: PRODUCT_NAME
  - LOV
    - Name: LOV_PRODUCT_PRICES
    - Type: SQL
    - SQL:
```sql
select distinct p.UNIT_PRICE display
     , p.UNIT_PRICE return
from OREN_PRODUCTS p
order by 1
```
    - Display: display
    - Return: return
  - LOV
    - Name: LOV_CUSTOMER_NAMES
    - Type: Table
    - Table Name: OREN_CUSTOMERS
    - Display: FULL_NAME
    - Return: FULL_NAME
  - LOV
    - Name: LOV_CUSTOMER_EMAILS
    - Type: Table
    - Table Name: OREN_CUSTOMERS
    - Display: EMAIL_ADDRESS
    - Return: EMAIL_ADDRESS
  - LOV
    - Name: LOV_STORE_NAMES
    - Type: Table
    - Table Name: OREN_STORES
    - Display: STORE_NAME
    - Return: STORE_NAME
  - LOV
    - Name: LOV_STORE_ADDRESSES
    - Type: SQL
    - SQL:
```sql
select distinct coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) display
     , coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) return
from OREN_STORES s
where coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) is not null
order by 1
```
    - Display: display
    - Return: return
- Page Groups
  - Page Group
    - Name: Dashboard
    - Description: Dashboard pages for order KPIs, charts, and summary cards.
  - Page Group
    - Name: Order Operations
    - Description: Order workbench, calendar, order-line reporting, and order forms.
  - Page Group
    - Name: Store Operations
    - Description: Store maps, status context, and store maintenance workflows.
  - Page Group
    - Name: Management
    - Description: Launcher pages for management-only destinations.
  - Page Group
    - Name: Product Management
    - Description: Product maintenance and image gallery workflows.
  - Page Group
    - Name: Customer Management
    - Description: Customer directory, profile, and customer maintenance workflows.
- Menu
  - Menu Name: Navigation Menu
  - Entries:
    - Entry
      - Label: Home Dashboard
      - Icon: fa-dashboard
      - Action: Navigate
      - Target: Page 1
    - Entry
      - Label: Customer Order Details
      - Icon: fa-table
      - Action: Navigate
      - Target: Page 2
    - Entry
      - Label: Orders Workbench
      - Icon: fa-shopping-cart
      - Action: Navigate
      - Target: Page 3
    - Entry
      - Label: Orders Calendar
      - Icon: fa-calendar
      - Action: Navigate
      - Target: Page 6
    - Entry
      - Label: Store Command Map
      - Icon: fa-map
      - Action: Navigate
      - Target: Page 7
    - Entry
      - Label: Management Hub
      - Icon: fa-sitemap
      - Action: Navigate
      - Target: Page 9
- Breadcrumb
  - Name: Breadcrumb
  - Entries:
    - Entry
      - Name: Home Dashboard
      - Page: Page 1
    - Entry
      - Name: Customer Order Details
      - Page: Page 2
    - Entry
      - Name: Orders Workbench
      - Page: Page 3
    - Entry
      - Name: Orders Calendar
      - Page: Page 6
    - Entry
      - Name: Store Command Map
      - Page: Page 7
    - Entry
      - Name: Management Hub
      - Page: Page 9
    - Entry
      - Name: Products Management
      - Page: Page 10
      - Parent Entry: Management Hub
    - Entry
      - Name: Product Gallery
      - Page: Page 12
      - Parent Entry: Management Hub
    - Entry
      - Name: Customer Order Details Faceted
      - Page: Page 13
      - Parent Entry: Management Hub
    - Entry
      - Name: Customers Directory
      - Page: Page 14
      - Parent Entry: Management Hub
    - Entry
      - Name: Customer 360
      - Page: Page 15
      - Parent Entry: Customers Directory
    - Entry
      - Name: Stores Map
      - Page: Page 17
      - Parent Entry: Management Hub
- Lists
  - List
    - Name: Management Links
    - Entries
      - Entry
        - Label: Products Management
        - Icon: fa-shopping-bag
        - Action: Navigate
        - Target: Page 10
        - Description: Maintain products and launch product edit workflows.
      - Entry
        - Label: Product Gallery
        - Icon: fa-image
        - Action: Navigate
        - Target: Page 12
        - Description: Browse product images and prices with smart filtering.
      - Entry
        - Label: Customer Order Details Faceted
        - Icon: fa-filter
        - Action: Navigate
        - Target: Page 13
        - Description: Explore joined order-line details with faceted filters.
      - Entry
        - Label: Customers Directory
        - Icon: fa-users
        - Action: Navigate
        - Target: Page 14
        - Description: Search customers and open customer profile workflows.
      - Entry
        - Label: Stores Map
        - Icon: fa-map
        - Action: Navigate
        - Target: Page 17
        - Description: Inspect store locations and open store edit workflows.
## Pages
### Page 1: Home Dashboard
- Description: Dashboard for order revenue, volume, status, store, and product performance.
- Comments: Provides KPI and chart analytics for order operations with product revenue cards.
- Pattern: analytics-workspace
- Page Mode: standard
- Menu: true
- Page Group: Dashboard
#### Regions
##### Region: Revenue Last 30 Days KPI
- Comments: Shows recent derived order revenue from order item quantities and selling prices.
- Position: body
- Colstart: 1
- Colspan: 4
- Component:
  - Component Type: Metric Card
- Metric Subtitle: Sum of order item revenue in the last 30 days.
- Metric Icon: fa-usd
- Metric Icon Style: subtle
- Data Source:
  - Type: SQL
  - SQL:
```sql
select coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as REVENUE_LAST_30_DAYS
from OREN_ORDERS o
join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where o.ORDER_DATETIME >= systimestamp - interval '30' day
```
  - Summary: Single revenue KPI for orders created in the last 30 days.
- Columns:
  - Column Name: REVENUE_LAST_30_DAYS
    - Label: Revenue Last 30 Days
    - Datatype: number
    - Render As: metric
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
##### Region: Avg Order Value Last 30 Days KPI
- Comments: Shows average order value using derived revenue and distinct order count.
- Position: body
- Colstart: 5
- Colspan: 4
- Component:
  - Component Type: Metric Card
- Metric Subtitle: Revenue divided by distinct order count in the last 30 days.
- Metric Icon: fa-calculator
- Metric Icon Style: subtle
- Data Source:
  - Type: SQL
  - SQL:
```sql
select coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0)
       / nullif(count(distinct o.ORDER_ID), 0) as AVG_ORDER_VALUE_LAST_30_DAYS
from OREN_ORDERS o
join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where o.ORDER_DATETIME >= systimestamp - interval '30' day
```
  - Summary: Single average order value KPI guarded by nullif.
- Columns:
  - Column Name: AVG_ORDER_VALUE_LAST_30_DAYS
    - Label: Avg Order Value Last 30 Days
    - Datatype: number
    - Render As: metric
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
##### Region: Open Orders KPI
- Comments: Counts open order headers for operations queue visibility.
- Position: body
- Colstart: 9
- Colspan: 4
- Component:
  - Component Type: Metric Card
- Metric Subtitle: Count of orders currently in OPEN status.
- Metric Icon: fa-folder-open-o
- Metric Icon Style: subtle
- Data Source:
  - Type: SQL
  - SQL:
```sql
select count(*) as OPEN_ORDERS
from OREN_ORDERS o
where o.ORDER_STATUS = 'OPEN'
```
  - Summary: Single count KPI for open orders.
- Columns:
  - Column Name: OPEN_ORDERS
    - Label: Open Orders
    - Datatype: number
    - Render As: metric
    - Visible: true
    - Format Mask: 999G999G999G999G990
##### Region: Online Orders Last 30 Days KPI
- Comments: Counts recent online order headers for channel monitoring.
- Position: body
- Colstart: 1
- Colspan: 6
- Component:
  - Component Type: Metric Card
- Metric Subtitle: Count of online orders in the last 30 days.
- Metric Icon: fa-globe
- Metric Icon Style: subtle
- Data Source:
  - Type: SQL
  - SQL:
```sql
select count(*) as ONLINE_ORDERS_LAST_30_DAYS
from OREN_ORDERS o
where o.ORDER_CHANNEL = 'ONLINE'
and o.ORDER_DATETIME >= systimestamp - interval '30' day
```
  - Summary: Single count KPI for recent online orders.
- Columns:
  - Column Name: ONLINE_ORDERS_LAST_30_DAYS
    - Label: Online Orders Last 30 Days
    - Datatype: number
    - Render As: metric
    - Visible: true
    - Format Mask: 999G999G999G999G990
##### Region: Active Customers Last 30 Days KPI
- Comments: Counts distinct recent customers for customer activity analytics.
- Position: body
- Colstart: 7
- Colspan: 6
- Component:
  - Component Type: Metric Card
- Metric Subtitle: Distinct customers with orders in the last 30 days.
- Metric Icon: fa-users
- Metric Icon Style: subtle
- Data Source:
  - Type: SQL
  - SQL:
```sql
select count(distinct o.CUSTOMER_ID) as ACTIVE_CUSTOMERS_LAST_30_DAYS
from OREN_ORDERS o
where o.CUSTOMER_ID is not null
and o.ORDER_DATETIME >= systimestamp - interval '30' day
```
  - Summary: Single customer activity KPI for recent orders.
- Columns:
  - Column Name: ACTIVE_CUSTOMERS_LAST_30_DAYS
    - Label: Active Customers Last 30 Days
    - Datatype: number
    - Render As: metric
    - Visible: true
    - Format Mask: 999G999G999G999G990
##### Region: Orders by Status Chart
- Comments: Shows order header distribution across supported order statuses.
- Position: body
- Colstart: 1
- Colspan: 6
- Component:
  - Component Type: Chart
  - Qualifier: Donut
- Data Source:
  - Type: SQL
  - SQL:
```sql
select o.ORDER_STATUS as label
     , count(*) as value
from OREN_ORDERS o
where o.ORDER_STATUS in ('OPEN', 'PAID', 'COMPLETE', 'CANCELLED')
group by o.ORDER_STATUS
order by label
```
  - Summary: Donut chart grouped by supported order status values.
- Columns:
  - Column Name: label
    - Label: Order Status
    - Datatype: varchar2
    - Render As: label
  - Column Name: value
    - Label: Orders
    - Datatype: number
    - Render As: value
##### Region: Sales Share by Store Chart
- Comments: Shows derived sales share by store from orders and order items.
- Position: body
- Colstart: 7
- Colspan: 6
- Component:
  - Component Type: Chart
  - Qualifier: Pie
- Data Source:
  - Type: SQL
  - SQL:
```sql
select s.STORE_NAME as label
     , sum(oi.QUANTITY * oi.UNIT_PRICE) as value
from OREN_STORES s
join OREN_ORDERS o
    on o.STORE_ID = s.STORE_ID
join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
group by s.STORE_NAME
order by value desc
```
  - Summary: Pie chart summarizing sales value by store.
- Columns:
  - Column Name: label
    - Label: Store
    - Datatype: varchar2
    - Render As: label
  - Column Name: value
    - Label: Sales
    - Datatype: number
    - Render As: value
    - Format Mask: 999G999G999G999G990D00
##### Region: Orders by Month (Last 12 Months) Chart
- Comments: Shows monthly order count trend over the previous 12 months.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Chart
  - Qualifier: Area
- Data Source:
  - Type: SQL
  - SQL:
```sql
select to_char(trunc(cast(o.ORDER_DATETIME as date), 'MM'), 'YYYY-MM') as label
     , count(*) as value
from OREN_ORDERS o
where o.ORDER_DATETIME >= cast(add_months(cast(systimestamp as date), -12) as timestamp)
group by to_char(trunc(cast(o.ORDER_DATETIME as date), 'MM'), 'YYYY-MM')
order by label
```
  - Summary: Area chart grouped by month from order timestamps.
- Columns:
  - Column Name: label
    - Label: Orders Month
    - Datatype: varchar2
    - Render As: label
  - Column Name: value
    - Label: Orders
    - Datatype: number
    - Render As: value
##### Region: Top 10 Products by Revenue Chart
- Comments: Shows the ten highest revenue products for dashboard product analytics.
- Position: body
- Colstart: 1
- Colspan: 6
- Component:
  - Component Type: Chart
  - Qualifier: Bar
- Data Source:
  - Type: SQL
  - SQL:
```sql
select p.PRODUCT_NAME as label
     , sum(oi.QUANTITY * oi.UNIT_PRICE) as value
from OREN_PRODUCTS p
join OREN_ORDER_ITEMS oi
    on oi.PRODUCT_ID = p.PRODUCT_ID
group by p.PRODUCT_NAME
order by value desc
fetch first 10 rows only
```
  - Summary: Bar chart ranked by derived product revenue.
- Columns:
  - Column Name: label
    - Label: Product
    - Datatype: varchar2
    - Render As: label
  - Column Name: value
    - Label: Revenue
    - Datatype: number
    - Render As: value
    - Format Mask: 999G999G999G999G990D00
##### Region: Sales Trend Last 90 Days Chart
- Comments: Shows daily revenue trend for the last 90 days from order items.
- Position: body
- Colstart: 7
- Colspan: 6
- Component:
  - Component Type: Chart
  - Qualifier: Line
- Data Source:
  - Type: SQL
  - SQL:
```sql
select to_char(cast(o.ORDER_DATETIME as date), 'YYYY-MM-DD') as label
     , sum(oi.QUANTITY * oi.UNIT_PRICE) as value
from OREN_ORDERS o
join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where o.ORDER_DATETIME >= systimestamp - interval '90' day
group by to_char(cast(o.ORDER_DATETIME as date), 'YYYY-MM-DD')
order by label
```
  - Summary: Line chart grouped by order date for recent sales.
- Columns:
  - Column Name: label
    - Label: Sales Day
    - Datatype: varchar2
    - Render As: label
  - Column Name: value
    - Label: Sales
    - Datatype: number
    - Render As: value
    - Format Mask: 999G999G999G999G990D00
##### Region: Top Products Context
- Comments: Explains the product cards using a single-row dashboard context summary.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Classic Report
  - Qualifier: Contextual Info
- Data Source:
  - Type: SQL
  - Primary Keys: PRODUCT_ID
  - SQL:
```sql
select max(p.PRODUCT_ID) as PRODUCT_ID
     , 'Top 5 products by revenue over the previous 12 months.' as SUMMARY_TEXT
from OREN_PRODUCTS p
```
  - Summary: Single-row context text for the top revenue product cards.
- Columns:
  - Column Name: PRODUCT_ID
    - Label: Product
    - Datatype: number
    - Render As: hidden
  - Column Name: SUMMARY_TEXT
    - Label: Summary
    - Datatype: varchar2
    - Render As: plainText
##### Region: Top 5 Revenue Products (Last 12 Months)
- Comments: Displays top product cards with images and derived revenue over the previous 12 months.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Cards
- Data Source:
  - Type: SQL
  - Primary Keys: PRODUCT_ID
  - SQL:
```sql
select p.PRODUCT_ID as PRODUCT_ID
     , p.PRODUCT_NAME as PRODUCT_NAME
     , p.UNIT_PRICE as UNIT_PRICE
     , p.PRODUCT_IMAGE as PRODUCT_IMAGE
     , p.IMAGE_MIME_TYPE as IMAGE_MIME_TYPE
     , p.IMAGE_FILENAME as IMAGE_FILENAME
     , p.IMAGE_CHARSET as IMAGE_CHARSET
     , p.IMAGE_LAST_UPDATED as IMAGE_LAST_UPDATED
     , z.TOTAL_REVENUE as TOTAL_REVENUE
     , z.TOTAL_VOLUME as TOTAL_VOLUME
from OREN_PRODUCTS p
join (
    select oi.PRODUCT_ID as PRODUCT_ID
         , sum(oi.QUANTITY * oi.UNIT_PRICE) as TOTAL_REVENUE
         , sum(oi.QUANTITY) as TOTAL_VOLUME
    from OREN_ORDER_ITEMS oi
    join OREN_ORDERS o
        on o.ORDER_ID = oi.ORDER_ID
    where o.ORDER_DATETIME >= cast(add_months(cast(systimestamp as date), -12) as timestamp)
    group by oi.PRODUCT_ID
    order by TOTAL_REVENUE desc
    fetch first 5 rows only
) z
    on z.PRODUCT_ID = p.PRODUCT_ID
order by z.TOTAL_REVENUE desc
```
  - Summary: Cards query ranks products by prior 12 month revenue.
- Columns:
  - Column Name: PRODUCT_ID
    - Label: Product
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Render As: title
    - Visible: true
  - Column Name: UNIT_PRICE
    - Label: Unit Price
    - Datatype: number
    - Render As: body
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
  - Column Name: PRODUCT_IMAGE
    - Label: Product Image
    - Datatype: blob
    - Render As: displayImage
    - Visible: true
    - Storage:
      - Mime Type Column: IMAGE_MIME_TYPE
      - Alt Text Column: PRODUCT_NAME
      - Filename Column: IMAGE_FILENAME
      - Blob Last Updated Column: IMAGE_LAST_UPDATED
      - Char Set Column: IMAGE_CHARSET
  - Column Name: IMAGE_MIME_TYPE
    - Label: Image MIME Type
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: IMAGE_FILENAME
    - Label: Image Filename
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: IMAGE_CHARSET
    - Label: Image Charset
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: IMAGE_LAST_UPDATED
    - Label: Image Last Updated
    - Datatype: timestamp
    - Render As: hidden
    - Visible: false
  - Column Name: TOTAL_REVENUE
    - Label: Total Revenue
    - Datatype: number
    - Render As: secondaryBody
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
  - Column Name: TOTAL_VOLUME
    - Label: Total Volume
    - Datatype: number
    - Render As: secondaryBody
    - Visible: true
    - Format Mask: 999G999G999G999G990
### Page 2: Customer Order Details
- Description: Interactive order-line report for ad hoc analysis of joined customer order data.
- Comments: Provides AI-ready order-line analysis across orders, items, products, stores, and customers.
- Pattern: metric-grid
- Page Mode: standard
- Menu: true
- Page Group: Order Operations
#### Regions
##### Region: Customer Order Details
- Comments: Shows joined order-line detail with order edit navigation from each report row.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Interactive Report
- Report Context: Joined order-line business dataset for ad hoc analysis of customer orders, products, stores, and customers.
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_ITEM_ID
  - SQL:
```sql
select oi.ORDER_ITEM_ID as ORDER_ITEM_ID
     , o.ORDER_ID as ORDER_ID
     , o.ORDER_DATETIME as ORDER_DATETIME
     , o.ORDER_CHANNEL as ORDER_CHANNEL
     , o.ORDER_STATUS as ORDER_STATUS
     , p.PRODUCT_ID as PRODUCT_ID
     , p.PRODUCT_NAME as PRODUCT_NAME
     , s.STORE_ID as STORE_ID
     , s.STORE_NAME as STORE_NAME
     , c.CUSTOMER_ID as CUSTOMER_ID
     , c.FULL_NAME as CUSTOMER_NAME
     , oi.QUANTITY as QUANTITY
     , oi.UNIT_PRICE as UNIT_PRICE
     , oi.QUANTITY * oi.UNIT_PRICE as LINE_TOTAL
from OREN_ORDER_ITEMS oi
join OREN_ORDERS o
    on o.ORDER_ID = oi.ORDER_ID
join OREN_PRODUCTS p
    on p.PRODUCT_ID = oi.PRODUCT_ID
join OREN_STORES s
    on s.STORE_ID = o.STORE_ID
left join OREN_CUSTOMERS c
    on c.CUSTOMER_ID = o.CUSTOMER_ID
```
  - Summary: SQL join displays order-line grain for interactive analysis.
- Columns:
  - Column Name: ORDER_ID
    - Label: Order ID
    - Datatype: number
    - Render As: plainText
    - Visible: true
    - Column Context: Surrogate primary key
  - Column Name: ORDER_ITEM_ID
    - Label: Order Line ID
    - Datatype: number
    - Render As: plainText
    - Visible: true
    - Column Context: Surrogate primary key for the order line
  - Column Name: ORDER_DATETIME
    - Label: Orders Date
    - Datatype: timestamp
    - Render As: plainText
    - Visible: true
    - Column Context: Date and time when the order was created
    - Format Mask: YYYY-MM-DD
  - Column Name: ORDER_CHANNEL
    - Label: Order Channel
    - Datatype: varchar2
    - Render As: plainTextBasedOnLov
    - LOV: LOV_ORDER_CHANNEL
    - Visible: true
    - Column Context: Order source. Valid values are ONLINE and IN_PERSON
    - Column Context LOV: LOV_ORDER_CHANNEL
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: plainTextBasedOnLov
    - LOV: LOV_ORDER_STATUS
    - Visible: true
    - Column Context: Processing state of the order. Valid values are OPEN, PAID, COMPLETE, and CANCELLED
    - Column Context LOV: LOV_ORDER_STATUS
  - Column Name: PRODUCT_ID
    - Label: Product
    - Datatype: number
    - Render As: hidden
    - Visible: false
    - Column Context: Product sold on this order line
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Render As: plainText
    - Visible: true
    - Column Context: Name of the product sold to customers
  - Column Name: STORE_ID
    - Label: Store
    - Datatype: number
    - Render As: hidden
    - Visible: false
    - Column Context: Store responsible for the sale or fulfillment
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: plainText
    - Visible: true
    - Column Context: Business name of the store or online storefront
  - Column Name: CUSTOMER_ID
    - Label: Customer
    - Datatype: number
    - Render As: hidden
    - Visible: false
    - Column Context: Customer tied to the order. Required for online orders and optional for walk-in sales
  - Column Name: CUSTOMER_NAME
    - Label: Customer Name
    - Datatype: varchar2
    - Render As: plainText
    - Visible: true
    - Column Context: Customer name used in forms, reports, and dashboards
  - Column Name: QUANTITY
    - Label: Quantity
    - Datatype: number
    - Render As: plainText
    - Visible: true
    - Column Context: Number of units sold on the order line
    - Format Mask: 999G999G999G999G990
  - Column Name: UNIT_PRICE
    - Label: Selling Unit Price
    - Datatype: number
    - Render As: plainText
    - Visible: true
    - Column Context: Selling price captured at the time of sale for one unit
    - Format Mask: FM999G999G990D00
  - Column Name: LINE_TOTAL
    - Label: Line Total
    - Datatype: number
    - Render As: plainText
    - Visible: true
    - Column Context: a derived line total
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 4
    - Link Passing: ORDER_ID
    - Link Target Items: P4_ORDER_ID
    - Label: Edit
    - Link Icon: fa-edit
### Page 3: Orders Workbench
- Description: Parent-child workbench for selecting orders and maintaining order items.
- Comments: Preserves selected order context while users edit orders and order line records.
- Pattern: parent-child
- Page Mode: standard
- Menu: true
- Page Group: Order Operations
#### Regions
##### Region: Orders
- Comments: Provides the parent order selector and contextual row actions for order maintenance.
- Position: body
- Colstart: 1
- Colspan: 4
- Component:
  - Component Type: Content Row
  - Parent Child Role: Parent
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_ID
  - SQL:
```sql
select o.ORDER_ID as ORDER_ID
     , o.ORDER_DATETIME as ORDER_DATETIME
     , o.ORDER_CHANNEL as ORDER_CHANNEL
     , o.ORDER_STATUS as ORDER_STATUS
     , s.STORE_NAME as STORE_NAME
     , coalesce(c.FULL_NAME, 'Walk-in Customer') as CUSTOMER_DISPLAY
     , coalesce(t.ORDER_TOTAL, 0) as ORDER_TOTAL
     , 'Order #' || to_char(o.ORDER_ID) as ORDER_LABEL
     , to_char(o.ORDER_DATETIME, 'YYYY-MM-DD') as ORDER_DATE_DISPLAY
     , o.ORDER_STATUS || ' - ' || o.ORDER_CHANNEL as STATUS_CHANNEL_LABEL
     , to_char(coalesce(t.ORDER_TOTAL, 0), 'FM999G999G999G990D00') as ORDER_TOTAL_DISPLAY
from OREN_ORDERS o
join OREN_STORES s
    on s.STORE_ID = o.STORE_ID
left join OREN_CUSTOMERS c
    on c.CUSTOMER_ID = o.CUSTOMER_ID
left join (
    select oi.ORDER_ID as ORDER_ID
         , sum(oi.QUANTITY * oi.UNIT_PRICE) as ORDER_TOTAL
    from OREN_ORDER_ITEMS oi
    group by oi.ORDER_ID
) t
    on t.ORDER_ID = o.ORDER_ID
```
  - Summary: Parent order selector with compact display aliases and derived order total.
- Hidden Page Items: P3_ORDER_ID
- Columns:
  - Column Name: ORDER_ID
    - Label: Order ID
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: ORDER_DATETIME
    - Label: Orders Date
    - Datatype: timestamp
    - Render As: hidden
    - Visible: false
  - Column Name: ORDER_CHANNEL
    - Label: Order Channel
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: CUSTOMER_DISPLAY
    - Label: Customer
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: ORDER_TOTAL
    - Label: Order Total
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: STATUS_CHANNEL_LABEL
    - Label: Status Channel
    - Datatype: varchar2
    - Render As: overline
    - Visible: true
  - Column Name: ORDER_LABEL
    - Label: Order
    - Datatype: varchar2
    - Render As: title2
    - Visible: true
  - Column Name: ORDER_DATE_DISPLAY
    - Label: Order Date
    - Datatype: varchar2
    - Render As: description
    - Visible: true
  - Column Name: ORDER_TOTAL_DISPLAY
    - Label: Order Total
    - Datatype: varchar2
    - Render As: miscellaneous
    - Visible: true
- Links: 
  - Link:
    - Link To: Page 3
    - Link Type: fullRowLink
    - Link Passing: ORDER_ID
    - Link Target Items: P3_ORDER_ID
  - Link:
    - Link To: Page 4
    - Link Type: primaryActions
    - Link Passing: ORDER_ID
    - Link Target Items: P4_ORDER_ID
    - Label: Edit Order
  - Link:
    - Link To: Page 5
    - Link Type: primaryActions
    - Link Passing: ORDER_ID
    - Link Target Items: P5_ORDER_ID
    - Label: Add Order Item
- Actions:
  - Action
    - Label: Create Order
    - Link To: Page 4
    - slot: CREATE
    - Action Type: navigate
##### Region: Order Items
- Comments: Shows child order lines for the selected parent order and opens line editing.
- Position: body
- Colstart: 5
- Colspan: 8
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
  - Parent Child Role: Child
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_ITEM_ID
  - SQL:
```sql
select oi.ORDER_ITEM_ID as ORDER_ITEM_ID
     , p.PRODUCT_NAME as PRODUCT_NAME
     , oi.UNIT_PRICE as UNIT_PRICE
     , oi.QUANTITY as QUANTITY
     , oi.QUANTITY * oi.UNIT_PRICE as LINE_TOTAL
from OREN_ORDER_ITEMS oi
join OREN_PRODUCTS p
    on p.PRODUCT_ID = oi.PRODUCT_ID
where oi.ORDER_ID = to_number(:P3_ORDER_ID)
order by oi.ORDER_ITEM_ID
```
  - Summary: Child report of order item rows filtered by selected order context.
- Columns:
  - Column Name: ORDER_ITEM_ID
    - Label: Order Line ID
    - Datatype: number
    - Render As: plainText
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: UNIT_PRICE
    - Label: Selling Unit Price
    - Datatype: number
    - Render As: plainText
    - Format Mask: FM999G999G990D00
  - Column Name: QUANTITY
    - Label: Quantity
    - Datatype: number
    - Render As: plainText
  - Column Name: LINE_TOTAL
    - Label: Line Total
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 5
    - Link Passing: ORDER_ITEM_ID
    - Link Target Items: P5_ORDER_ITEM_ID
    - Label: Edit
    - Link Icon: fa-edit
### Page 4: Order Form
- Description: Modal form for creating, updating, and deleting order headers.
- Comments: Maintains OREN_ORDERS rows and enforces online customer requirements during order workflows.
- Pattern: modal-drawer
- Page Mode: modalDialog
- Menu: false
- Page Group: Order Operations
#### Regions
##### Region: Order Form
- Comments: Edits order header fields and returns to the launching page after save or cancel.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Form
- Data Source:
  - Type: Table
  - Name: OREN_ORDERS
  - Primary Keys: ORDER_ID
  - Summary: Form source for order header create, edit, and delete operations.
- Columns:
  - Column Name: ORDER_ID
    - Label: Order ID
    - Datatype: number
    - Page Item Name: P4_ORDER_ID
    - Render As: displayOnly
  - Column Name: ORDER_DATETIME
    - Label: Orders Date
    - Datatype: timestamp
    - Page Item Name: P4_ORDER_DATETIME
    - Render As: datePicker
    - Required: true
    - Format Mask: YYYY-MM-DD
  - Column Name: ORDER_CHANNEL
    - Label: Order Channel
    - Datatype: varchar2
    - Page Item Name: P4_ORDER_CHANNEL
    - Render As: selectList
    - LOV: LOV_ORDER_CHANNEL
    - Required: true
    - MaxLength: 10
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Page Item Name: P4_ORDER_STATUS
    - Render As: selectList
    - LOV: LOV_ORDER_STATUS
    - Required: true
    - MaxLength: 10
  - Column Name: STORE_ID
    - Label: Store
    - Datatype: number
    - Page Item Name: P4_STORE_ID
    - Render As: selectList
    - LOV: LOV_STORES
    - Required: true
  - Column Name: CUSTOMER_ID
    - Label: Customer
    - Datatype: number
    - Page Item Name: P4_CUSTOMER_ID
    - Render As: selectList
    - LOV: LOV_CUSTOMERS
- Actions:
  - Action
    - Label: Create
    - slot: CHANGE
    - Action Type: submit
    - Process: Create
  - Action
    - Label: Apply Changes
    - slot: CHANGE
    - Action Type: submit
    - Process: Apply
  - Action
    - Label: Delete
    - slot: DELETE
    - Action Type: submit
    - Process: Delete
  - Action
    - Label: Cancel
    - slot: CLOSE
    - Action Type: navigate
    - Process: cancelDialog
### Page 5: Order Item Form
- Description: Modal form for creating, updating, and deleting order line records.
- Comments: Maintains OREN_ORDER_ITEMS rows using ORDER_ITEM_ID as the persisted order line identity.
- Pattern: modal-drawer
- Page Mode: modalDialog
- Menu: false
- Page Group: Order Operations
#### Regions
##### Region: Order Item Form
- Comments: Edits order line product, quantity, and selling price, defaulting price from product when creating.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Form
- Data Source:
  - Type: Table
  - Name: OREN_ORDER_ITEMS
  - Primary Keys: ORDER_ITEM_ID
  - Summary: Form source for order line create, edit, and delete operations.
- Columns:
  - Column Name: ORDER_ITEM_ID
    - Label: Order Line ID
    - Datatype: number
    - Page Item Name: P5_ORDER_ITEM_ID
    - Render As: displayOnly
  - Column Name: ORDER_ID
    - Label: Order
    - Datatype: number
    - Page Item Name: P5_ORDER_ID
    - Render As: hidden
  - Column Name: PRODUCT_ID
    - Label: Product
    - Datatype: number
    - Page Item Name: P5_PRODUCT_ID
    - Render As: selectList
    - LOV: LOV_PRODUCTS
    - Required: true
  - Column Name: QUANTITY
    - Label: Quantity
    - Datatype: number
    - Page Item Name: P5_QUANTITY
    - Render As: numberField
    - Required: true
  - Column Name: UNIT_PRICE
    - Label: Selling Unit Price
    - Datatype: number
    - Page Item Name: P5_UNIT_PRICE
    - Render As: numberField
    - Required: true
    - Format Mask: FM999G999G990D00
- Actions:
  - Action
    - Label: Create
    - slot: CHANGE
    - Action Type: submit
    - Process: Create
  - Action
    - Label: Apply Changes
    - slot: CHANGE
    - Action Type: submit
    - Process: Apply
  - Action
    - Label: Delete
    - slot: DELETE
    - Action Type: submit
    - Process: Delete
  - Action
    - Label: Cancel
    - slot: CLOSE
    - Action Type: navigate
    - Process: cancelDialog
### Page 6: Orders Calendar
- Description: Calendar view of orders by order creation date.
- Comments: Shows order events and launches order forms from event or empty slot interactions.
- Pattern: vertical-stack
- Page Mode: standard
- Menu: true
- Page Group: Order Operations
#### Regions
##### Region: Orders Calendar
- Comments: Displays one calendar row per order with supplemental store, customer, and value information.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Calendar
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_ID
  - SQL:
```sql
select o.ORDER_ID as ORDER_ID
     , o.ORDER_DATETIME as ORDER_DATETIME
     , o.ORDER_STATUS as ORDER_STATUS
     , o.STORE_ID as STORE_ID
     , s.STORE_NAME as STORE_NAME
     , o.CUSTOMER_ID as CUSTOMER_ID
     , c.FULL_NAME as CUSTOMER_NAME
     , max(p.PRODUCT_NAME) as PRODUCT_NAME
     , sum(oi.QUANTITY * oi.UNIT_PRICE) as ORDER_VALUE
     , 'Order ' || to_char(o.ORDER_ID) || ' - ' || s.STORE_NAME || ' - ' || o.ORDER_STATUS as DISPLAY_VALUE
from OREN_ORDERS o
join OREN_STORES s
    on s.STORE_ID = o.STORE_ID
left join OREN_CUSTOMERS c
    on c.CUSTOMER_ID = o.CUSTOMER_ID
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
left join OREN_PRODUCTS p
    on p.PRODUCT_ID = oi.PRODUCT_ID
group by o.ORDER_ID
       , o.ORDER_DATETIME
       , o.ORDER_STATUS
       , o.STORE_ID
       , s.STORE_NAME
       , o.CUSTOMER_ID
       , c.FULL_NAME
```
  - Summary: Calendar query aggregates order item values while preserving one row per order.
- Columns:
  - Column Name: ORDER_ID
    - Label: Order ID
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: DISPLAY_VALUE
    - Label: Order
    - Datatype: varchar2
    - Render As: displayCol
    - Visible: true
  - Column Name: ORDER_DATETIME
    - Label: Orders Date
    - Datatype: timestamp
    - Render As: startDateCol
    - Visible: true
    - Format Mask: YYYY-MM-DD
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: STORE_ID
    - Label: Store
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: supplementalInfo
    - Visible: true
  - Column Name: CUSTOMER_ID
    - Label: Customer
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: CUSTOMER_NAME
    - Label: Customer Name
    - Datatype: varchar2
    - Render As: supplementalInfo
    - Visible: true
  - Column Name: PRODUCT_NAME
    - Label: Products
    - Datatype: varchar2
    - Render As: supplementalInfo
    - Visible: true
  - Column Name: ORDER_VALUE
    - Label: Order Value
    - Datatype: number
    - Render As: supplementalInfo
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 4
    - Link Type: Edit
    - Link Passing: ORDER_ID
    - Link Target Items: P4_ORDER_ID
  - Link:
    - Link To: Page 4
    - Link Type: Create
### Page 7: Store Command Map
- Description: Parent-child status command page for store performance map and detail.
- Comments: Uses selected order status context to filter store map markers and store summary detail.
- Pattern: parent-child
- Page Mode: standard
- Menu: true
- Page Group: Store Operations
#### Regions
##### Region: Market Statuses
- Comments: Provides parent status context for child map and detail regions using supported order statuses.
- Position: body
- Colstart: 1
- Colspan: 4
- Component:
  - Component Type: Content Row
  - Parent Child Role: Parent
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_STATUS
  - SQL:
```sql
select o.ORDER_STATUS as ORDER_STATUS
     , count(distinct o.ORDER_ID) as ORDER_COUNT
     , coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as TOTAL_SALES
     , count(distinct o.STORE_ID) as STORE_COUNT
from OREN_ORDERS o
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where o.ORDER_STATUS in ('OPEN', 'PAID', 'COMPLETE', 'CANCELLED')
group by o.ORDER_STATUS
```
  - Summary: Parent content rows summarize orders, stores, and sales by order status.
- Hidden Page Items: P7_ORDER_STATUS
- Columns:
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: title2
    - Visible: true
  - Column Name: STORE_COUNT
    - Label: Store Count
    - Datatype: number
    - Render As: overline
    - Visible: true
    - Format Mask: 999G999G999G999G990
  - Column Name: ORDER_COUNT
    - Label: Order Count
    - Datatype: number
    - Render As: description
    - Visible: true
    - Format Mask: 999G999G999G999G990
  - Column Name: TOTAL_SALES
    - Label: Total Sales
    - Datatype: number
    - Render As: miscellaneous
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 7
    - Link Type: fullRowLink
    - Link Passing: ORDER_STATUS
    - Link Target Items: P7_ORDER_STATUS
##### Region: Stores by Selected Status
- Comments: Plots coordinate stores and filters markers by selected market status when status context exists.
- Position: body
- Colstart: 5
- Colspan: 8
- Component:
  - Component Type: Map
  - Qualifier: longitudeLatitude
  - Parent Child Role: Child
- Data Source:
  - Type: SQL
  - Primary Keys: STORE_ID
  - SQL:
```sql
select s.STORE_ID as STORE_ID
     , s.STORE_NAME as STORE_NAME
     , s.LATITUDE as LATITUDE
     , s.LONGITUDE as LONGITUDE
     , coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) as STORE_ADDRESS
     , coalesce(:P7_ORDER_STATUS, 'ALL') as ORDER_STATUS
     , count(distinct o.ORDER_ID) as ORDER_COUNT
     , coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as TOTAL_SALES
     , s.STORE_NAME || ' - ' || coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) || ' - '
       || coalesce(:P7_ORDER_STATUS, 'ALL') as MAP_TOOLTIP
from OREN_STORES s
left join OREN_ORDERS o
    on o.STORE_ID = s.STORE_ID
    and (:P7_ORDER_STATUS is null or o.ORDER_STATUS = :P7_ORDER_STATUS)
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where s.LATITUDE is not null
and s.LONGITUDE is not null
group by s.STORE_ID
       , s.STORE_NAME
       , s.LATITUDE
       , s.LONGITUDE
       , coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS)
having :P7_ORDER_STATUS is null
or count(distinct o.ORDER_ID) > 0
```
  - Summary: Map query returns all coordinate stores or status-matching stores for child context.
- Columns:
  - Column Name: STORE_ID
    - Label: Store ID
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: LATITUDE
    - Label: Latitude
    - Datatype: number
    - Render As: latitudeCol
    - Visible: true
  - Column Name: LONGITUDE
    - Label: Longitude
    - Datatype: number
    - Render As: longitudeCol
    - Visible: true
  - Column Name: STORE_ADDRESS
    - Label: Store Address
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: ORDER_COUNT
    - Label: Order Count
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: TOTAL_SALES
    - Label: Total Sales
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: MAP_TOOLTIP
    - Label: Map Tooltip
    - Datatype: varchar2
    - Render As: tooltip
    - Visible: true
- Links: 
  - Link:
    - Link To: Page 8
    - Link Type: Edit
    - Link Passing: STORE_ID
    - Link Target Items: P8_STORE_ID
##### Region: Store Status Detail
- Comments: Lists status-aware store summary values using the same selected market status context.
- Position: body
- Colstart: 5
- Colspan: 8
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
  - Parent Child Role: Child
- Data Source:
  - Type: SQL
  - Primary Keys: STORE_ID
  - SQL:
```sql
select s.STORE_ID as STORE_ID
     , s.STORE_NAME as STORE_NAME
     , coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) as STORE_ADDRESS
     , coalesce(:P7_ORDER_STATUS, 'ALL') as ORDER_STATUS
     , count(distinct o.ORDER_ID) as ORDER_COUNT
     , coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as TOTAL_SALES
     , s.LATITUDE as LATITUDE
     , s.LONGITUDE as LONGITUDE
from OREN_STORES s
left join OREN_ORDERS o
    on o.STORE_ID = s.STORE_ID
    and (:P7_ORDER_STATUS is null or o.ORDER_STATUS = :P7_ORDER_STATUS)
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where s.LATITUDE is not null
and s.LONGITUDE is not null
group by s.STORE_ID
       , s.STORE_NAME
       , coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS)
       , s.LATITUDE
       , s.LONGITUDE
having :P7_ORDER_STATUS is null
or count(distinct o.ORDER_ID) > 0
order by s.STORE_NAME
```
  - Summary: Classic report uses selected status context to summarize stores and sales.
- Columns:
  - Column Name: STORE_ID
    - Label: Store ID
    - Datatype: number
    - Render As: plainText
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: STORE_ADDRESS
    - Label: Store Address
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: ORDER_COUNT
    - Label: Order Count
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990
  - Column Name: TOTAL_SALES
    - Label: Total Sales
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990D00
  - Column Name: LATITUDE
    - Label: Latitude
    - Datatype: number
    - Render As: plainText
  - Column Name: LONGITUDE
    - Label: Longitude
    - Datatype: number
    - Render As: plainText
### Page 8: Store Form
- Description: Modal form for creating, updating, and deleting store records.
- Comments: Maintains store location fields and coordinate validation for map workflows.
- Pattern: modal-drawer
- Page Mode: modalDialog
- Menu: false
- Page Group: Store Operations
#### Regions
##### Region: Store Form
- Comments: Edits store identity, required address coverage, and coordinate data for map markers.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Form
- Data Source:
  - Type: Table
  - Name: OREN_STORES
  - Primary Keys: STORE_ID
  - Summary: Form source for store create, edit, and delete operations.
- Columns:
  - Column Name: STORE_ID
    - Label: Store ID
    - Datatype: number
    - Page Item Name: P8_STORE_ID
    - Render As: displayOnly
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Page Item Name: P8_STORE_NAME
    - Render As: textField
    - Required: true
    - MaxLength: 255
  - Column Name: WEB_ADDRESS
    - Label: Web Address
    - Datatype: varchar2
    - Page Item Name: P8_WEB_ADDRESS
    - Render As: textField
    - MaxLength: 512
  - Column Name: PHYSICAL_ADDRESS
    - Label: Physical Address
    - Datatype: varchar2
    - Page Item Name: P8_PHYSICAL_ADDRESS
    - Render As: textarea
    - MaxLength: 512
  - Column Name: LATITUDE
    - Label: Latitude
    - Datatype: number
    - Page Item Name: P8_LATITUDE
    - Render As: numberField
  - Column Name: LONGITUDE
    - Label: Longitude
    - Datatype: number
    - Page Item Name: P8_LONGITUDE
    - Render As: numberField
- Actions:
  - Action
    - Label: Create
    - slot: CHANGE
    - Action Type: submit
    - Process: Create
  - Action
    - Label: Apply Changes
    - slot: CHANGE
    - Action Type: submit
    - Process: Apply
  - Action
    - Label: Delete
    - slot: DELETE
    - Action Type: submit
    - Process: Delete
  - Action
    - Label: Cancel
    - slot: CLOSE
    - Action Type: navigate
    - Process: cancelDialog
### Page 9: Management Hub
- Description: Launcher for management-only pages not exposed in the top-level menu.
- Comments: Provides a single navigation list for product, customer, faceted, and store management pages.
- Pattern: vertical-stack
- Page Mode: standard
- Menu: true
- Page Group: Management
#### Regions
##### Region: Management Links
- Comments: Navigation-only media list exposes management destinations while keeping them out of the main menu.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: List
  - Qualifier: Media List
### Page 10: Products Management
- Description: Smart-filter product management report for product maintenance.
- Comments: Filters product rows and opens product modal forms for create and edit workflows.
- Pattern: smart-filter
- Page Mode: standard
- Menu: false
- Page Group: Product Management
#### Regions
##### Region: Products Smart Filters
- Comments: Provides product name and unit price filter controls for the products report.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Smart Filters
- Filtered Region: Products
- Filters:
  - Filter
    - Name: P10_F_PRODUCT_NAME
    - Label: Product Name
    - Render As: checkboxGroup
    - LOV: LOV_PRODUCT_NAMES
    - Database Column: PRODUCT_NAME
    - Datatype: varchar2
  - Filter
    - Name: P10_F_UNIT_PRICE
    - Label: Unit Price
    - Render As: checkboxGroup
    - LOV: LOV_PRODUCT_PRICES
    - Database Column: UNIT_PRICE
    - Datatype: number
##### Region: Products
- Comments: Lists products for edit navigation and product creation workflows.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
- Data Source:
  - Type: Table
  - Name: OREN_PRODUCTS
  - Primary Keys: PRODUCT_ID
  - Summary: Product table report targeted by smart filters.
- Columns:
  - Column Name: PRODUCT_ID
    - Label: Product ID
    - Datatype: number
    - Render As: hidden
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: UNIT_PRICE
    - Label: Unit Price
    - Datatype: number
    - Render As: plainText
    - Format Mask: FM999G999G990D00
  - Column Name: IMAGE_LAST_UPDATED
    - Label: Image Last Updated
    - Datatype: timestamp
    - Render As: plainText
    - Format Mask: DD-MON-YYYY HH24:MI
- Links: 
  - Link:
    - Link To: Page 11
    - Link Passing: PRODUCT_ID
    - Link Target Items: P11_PRODUCT_ID
    - Label: Edit
    - Link Icon: fa-edit
- Actions:
  - Action
    - Label: Create Product
    - Link To: Page 11
    - slot: CREATE
    - Action Type: navigate
### Page 11: Product Form
- Description: Modal form for product maintenance and product image upload.
- Comments: Maintains product rows and product image storage metadata in OREN_PRODUCTS.
- Pattern: modal-drawer
- Page Mode: modalDialog
- Menu: false
- Page Group: Product Management
#### Regions
##### Region: Product Form
- Comments: Edits unique product name, nonnegative price, image blob, and image metadata for management workflows.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Form
- Data Source:
  - Type: Table
  - Name: OREN_PRODUCTS
  - Primary Keys: PRODUCT_ID
  - Summary: Form source for product create, edit, delete, and image upload operations.
- Columns:
  - Column Name: PRODUCT_ID
    - Label: Product ID
    - Datatype: number
    - Page Item Name: P11_PRODUCT_ID
    - Render As: displayOnly
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Page Item Name: P11_PRODUCT_NAME
    - Render As: textField
    - Required: true
    - MaxLength: 255
  - Column Name: UNIT_PRICE
    - Label: Unit Price
    - Datatype: number
    - Page Item Name: P11_UNIT_PRICE
    - Render As: numberField
    - Required: true
    - Format Mask: FM999G999G990D00
  - Column Name: PRODUCT_IMAGE
    - Label: Product Image
    - Datatype: blob
    - Page Item Name: P11_PRODUCT_IMAGE
    - Render As: imageUpload
    - Storage:
      - Mime Type Column: IMAGE_MIME_TYPE
      - Filename Column: IMAGE_FILENAME
      - Blob Last Updated Column: IMAGE_LAST_UPDATED
      - Char Set Column: IMAGE_CHARSET
  - Column Name: IMAGE_MIME_TYPE
    - Label: Image MIME Type
    - Datatype: varchar2
    - Page Item Name: P11_IMAGE_MIME_TYPE
    - Render As: hidden
  - Column Name: IMAGE_FILENAME
    - Label: Image Filename
    - Datatype: varchar2
    - Page Item Name: P11_IMAGE_FILENAME
    - Render As: hidden
  - Column Name: IMAGE_CHARSET
    - Label: Image Charset
    - Datatype: varchar2
    - Page Item Name: P11_IMAGE_CHARSET
    - Render As: hidden
  - Column Name: IMAGE_LAST_UPDATED
    - Label: Image Last Updated
    - Datatype: timestamp
    - Page Item Name: P11_IMAGE_LAST_UPDATED
    - Render As: hidden
- Actions:
  - Action
    - Label: Create
    - slot: CHANGE
    - Action Type: submit
    - Process: Create
  - Action
    - Label: Apply Changes
    - slot: CHANGE
    - Action Type: submit
    - Process: Apply
  - Action
    - Label: Delete
    - slot: DELETE
    - Action Type: submit
    - Process: Delete
  - Action
    - Label: Cancel
    - slot: CLOSE
    - Action Type: navigate
    - Process: cancelDialog
### Page 12: Product Gallery
- Description: Smart-filter product card gallery with image display.
- Comments: Shows product cards with stored images and opens product modal forms from card links.
- Pattern: smart-filter
- Page Mode: standard
- Menu: false
- Page Group: Product Management
#### Regions
##### Region: Product Gallery Smart Filters
- Comments: Provides product name and price filters for product card browsing.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Smart Filters
- Filtered Region: Products
- Filters:
  - Filter
    - Name: P12_F_PRODUCT_NAME
    - Label: Product Name
    - Render As: checkboxGroup
    - LOV: LOV_PRODUCT_NAMES
    - Database Column: PRODUCT_NAME
    - Datatype: varchar2
  - Filter
    - Name: P12_F_UNIT_PRICE
    - Label: Unit Price
    - Render As: checkboxGroup
    - LOV: LOV_PRODUCT_PRICES
    - Database Column: UNIT_PRICE
    - Datatype: number
##### Region: Products
- Comments: Displays product image cards and opens product edit forms from selected cards.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Cards
- Data Source:
  - Type: Table
  - Name: OREN_PRODUCTS
  - Primary Keys: PRODUCT_ID
  - Summary: Product cards with BLOB image display targeted by smart filters.
- Columns:
  - Column Name: PRODUCT_ID
    - Label: Product ID
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Render As: title
    - Visible: true
  - Column Name: UNIT_PRICE
    - Label: Unit Price
    - Datatype: number
    - Render As: body
    - Visible: true
    - Format Mask: FM999G999G990D00
  - Column Name: PRODUCT_IMAGE
    - Label: Product Image
    - Datatype: blob
    - Render As: displayImage
    - Visible: true
    - Storage:
      - Mime Type Column: IMAGE_MIME_TYPE
      - Alt Text Column: PRODUCT_NAME
      - Filename Column: IMAGE_FILENAME
      - Blob Last Updated Column: IMAGE_LAST_UPDATED
      - Char Set Column: IMAGE_CHARSET
  - Column Name: IMAGE_MIME_TYPE
    - Label: Image MIME Type
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: IMAGE_FILENAME
    - Label: Image Filename
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: IMAGE_CHARSET
    - Label: Image Charset
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: IMAGE_LAST_UPDATED
    - Label: Image Last Updated
    - Datatype: timestamp
    - Render As: hidden
    - Visible: false
- Links: 
  - Link:
    - Link To: Page 11
    - Link Type: fullCard
    - Link Passing: PRODUCT_ID
    - Link Target Items: P11_PRODUCT_ID
### Page 13: Customer Order Details Faceted
- Description: Faceted search page for order-line business details.
- Comments: Filters the joined order-line dataset by product, order date, status, and store.
- Pattern: faceted-search
- Page Mode: standard
- Menu: false
- Page Group: Order Operations
#### Regions
##### Region: Customer Order Details Facets
- Comments: Provides sidebar facets that target the joined order-line classic report.
- Position: left-column
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Faceted Search
- Filtered Region: Customer Order Details Search Results
- Filters:
  - Filter
    - Name: P13_F_PRODUCT_ID
    - Label: Product
    - Render As: checkboxGroup
    - LOV: LOV_PRODUCTS
    - Database Column: PRODUCT_ID
    - Datatype: number
  - Filter
    - Name: P13_F_ORDER_DATETIME
    - Label: Orders Date
    - Render As: range
    - Database Column: ORDER_DATETIME
    - Datatype: timestamp
  - Filter
    - Name: P13_F_ORDER_STATUS
    - Label: Order Status
    - Render As: checkboxGroup
    - LOV: LOV_ORDER_STATUS
    - Database Column: ORDER_STATUS
    - Datatype: varchar2
  - Filter
    - Name: P13_F_STORE_ID
    - Label: Store
    - Render As: checkboxGroup
    - LOV: LOV_STORES
    - Database Column: STORE_ID
    - Datatype: number
##### Region: Customer Order Details Search Results
- Comments: Shows faceted order-line details and opens order edit forms from selected rows.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_ITEM_ID
  - SQL:
```sql
select oi.ORDER_ITEM_ID as ORDER_ITEM_ID
     , o.ORDER_ID as ORDER_ID
     , o.ORDER_DATETIME as ORDER_DATETIME
     , o.ORDER_CHANNEL as ORDER_CHANNEL
     , o.ORDER_STATUS as ORDER_STATUS
     , p.PRODUCT_ID as PRODUCT_ID
     , p.PRODUCT_NAME as PRODUCT_NAME
     , s.STORE_ID as STORE_ID
     , s.STORE_NAME as STORE_NAME
     , c.CUSTOMER_ID as CUSTOMER_ID
     , c.FULL_NAME as CUSTOMER_NAME
     , oi.QUANTITY as QUANTITY
     , oi.UNIT_PRICE as UNIT_PRICE
     , oi.QUANTITY * oi.UNIT_PRICE as LINE_TOTAL
from OREN_ORDER_ITEMS oi
join OREN_ORDERS o
    on o.ORDER_ID = oi.ORDER_ID
join OREN_PRODUCTS p
    on p.PRODUCT_ID = oi.PRODUCT_ID
join OREN_STORES s
    on s.STORE_ID = o.STORE_ID
left join OREN_CUSTOMERS c
    on c.CUSTOMER_ID = o.CUSTOMER_ID
order by o.ORDER_DATETIME desc
       , oi.ORDER_ITEM_ID
```
  - Summary: Classic report exposes the joined order-line dataset for faceted filtering.
- Columns:
  - Column Name: ORDER_ID
    - Label: Order ID
    - Datatype: number
    - Render As: plainText
  - Column Name: ORDER_ITEM_ID
    - Label: Order Line ID
    - Datatype: number
    - Render As: plainText
  - Column Name: ORDER_DATETIME
    - Label: Orders Date
    - Datatype: timestamp
    - Render As: plainText
    - Format Mask: YYYY-MM-DD
  - Column Name: ORDER_CHANNEL
    - Label: Order Channel
    - Datatype: varchar2
    - Render As: plainTextBasedOnLov
    - LOV: LOV_ORDER_CHANNEL
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: plainTextBasedOnLov
    - LOV: LOV_ORDER_STATUS
  - Column Name: PRODUCT_ID
    - Label: Product
    - Datatype: number
    - Render As: hidden
  - Column Name: PRODUCT_NAME
    - Label: Product Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: STORE_ID
    - Label: Store
    - Datatype: number
    - Render As: hidden
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: CUSTOMER_ID
    - Label: Customer
    - Datatype: number
    - Render As: hidden
  - Column Name: CUSTOMER_NAME
    - Label: Customer Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: QUANTITY
    - Label: Quantity
    - Datatype: number
    - Render As: plainText
  - Column Name: UNIT_PRICE
    - Label: Selling Unit Price
    - Datatype: number
    - Render As: plainText
    - Format Mask: FM999G999G990D00
  - Column Name: LINE_TOTAL
    - Label: Line Total
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 4
    - Link Passing: ORDER_ID
    - Link Target Items: P4_ORDER_ID
    - Label: Edit
    - Link Icon: fa-edit
### Page 14: Customers Directory
- Description: Smart-filter customer directory with order and sales totals.
- Comments: Filters customer records and opens Customer 360 or Customer Form workflows.
- Pattern: smart-filter
- Page Mode: standard
- Menu: false
- Page Group: Customer Management
#### Regions
##### Region: Customers Smart Filters
- Comments: Provides customer name and email filters for the customer directory report.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Smart Filters
- Filtered Region: Customers
- Filters:
  - Filter
    - Name: P14_F_FULL_NAME
    - Label: Customer Name
    - Render As: checkboxGroup
    - LOV: LOV_CUSTOMER_NAMES
    - Database Column: FULL_NAME
    - Datatype: varchar2
  - Filter
    - Name: P14_F_EMAIL_ADDRESS
    - Label: Email Address
    - Render As: checkboxGroup
    - LOV: LOV_CUSTOMER_EMAILS
    - Database Column: EMAIL_ADDRESS
    - Datatype: varchar2
##### Region: Customers
- Comments: Lists customer totals and links to customer profile and create workflows.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
- Data Source:
  - Type: SQL
  - Primary Keys: CUSTOMER_ID
  - SQL:
```sql
select c.CUSTOMER_ID as CUSTOMER_ID
     , c.FULL_NAME as FULL_NAME
     , c.EMAIL_ADDRESS as EMAIL_ADDRESS
     , count(distinct o.ORDER_ID) as TOTAL_ORDERS
     , coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as TOTAL_SALES
from OREN_CUSTOMERS c
left join OREN_ORDERS o
    on o.CUSTOMER_ID = c.CUSTOMER_ID
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
group by c.CUSTOMER_ID
       , c.FULL_NAME
       , c.EMAIL_ADDRESS
order by c.FULL_NAME
```
  - Summary: Customer report aggregates total orders and sales per customer.
- Columns:
  - Column Name: CUSTOMER_ID
    - Label: Customer ID
    - Datatype: number
    - Render As: hidden
  - Column Name: FULL_NAME
    - Label: Customer Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: EMAIL_ADDRESS
    - Label: Email Address
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: TOTAL_ORDERS
    - Label: Total Orders
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990
  - Column Name: TOTAL_SALES
    - Label: Total Sales
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 15
    - Link Passing: CUSTOMER_ID
    - Link Target Items: P15_CUSTOMER_ID
    - Label: Details
    - Link Icon: fa-angle-right
- Actions:
  - Action
    - Label: Create Customer
    - Link To: Page 16
    - slot: CREATE
    - Action Type: navigate
### Page 15: Customer 360
- Description: Customer profile page with customer overview, recent orders, and spend chart.
- Comments: Uses selected customer context to summarize customer activity and link to customer and order forms.
- Pattern: vertical-stack
- Page Mode: standard
- Menu: false
- Page Group: Customer Management
#### Regions
##### Region: Customer Overview
- Comments: Displays selected customer identity and derived sales metrics for profile review.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Content Row
- Data Source:
  - Type: SQL
  - Primary Keys: CUSTOMER_ID
  - SQL:
```sql
select c.CUSTOMER_ID as CUSTOMER_ID
     , c.EMAIL_ADDRESS as EMAIL_ADDRESS
     , c.FULL_NAME as FULL_NAME
     , count(distinct o.ORDER_ID) as TOTAL_ORDERS
     , coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as TOTAL_SALES
from OREN_CUSTOMERS c
left join OREN_ORDERS o
    on o.CUSTOMER_ID = c.CUSTOMER_ID
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where c.CUSTOMER_ID = to_number(:P15_CUSTOMER_ID)
group by c.CUSTOMER_ID
       , c.EMAIL_ADDRESS
       , c.FULL_NAME
```
  - Summary: Customer overview query returns one selected customer with derived metrics.
- Hidden Page Items: P15_CUSTOMER_ID
- Columns:
  - Column Name: CUSTOMER_ID
    - Label: Customer ID
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: EMAIL_ADDRESS
    - Label: Email Address
    - Datatype: varchar2
    - Render As: overline
    - Visible: true
  - Column Name: FULL_NAME
    - Label: Customer Name
    - Datatype: varchar2
    - Render As: title2
    - Visible: true
  - Column Name: TOTAL_ORDERS
    - Label: Total Orders
    - Datatype: number
    - Render As: description
    - Visible: true
    - Format Mask: 999G999G999G999G990
  - Column Name: TOTAL_SALES
    - Label: Total Sales
    - Datatype: number
    - Render As: miscellaneous
    - Visible: true
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 16
    - Link Type: primaryActions
    - Link Passing: CUSTOMER_ID
    - Link Target Items: P16_CUSTOMER_ID
    - Label: Edit Customer
##### Region: Customer Orders
- Comments: Shows recent orders for the selected customer and opens the order form for each order.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
- Data Source:
  - Type: SQL
  - Primary Keys: ORDER_ID
  - SQL:
```sql
select o.ORDER_ID as ORDER_ID
     , o.ORDER_DATETIME as ORDER_DATETIME
     , o.ORDER_CHANNEL as ORDER_CHANNEL
     , o.ORDER_STATUS as ORDER_STATUS
     , s.STORE_NAME as STORE_NAME
     , coalesce(sum(oi.QUANTITY * oi.UNIT_PRICE), 0) as ORDER_TOTAL
from OREN_ORDERS o
join OREN_STORES s
    on s.STORE_ID = o.STORE_ID
left join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where o.CUSTOMER_ID = to_number(:P15_CUSTOMER_ID)
group by o.ORDER_ID
       , o.ORDER_DATETIME
       , o.ORDER_CHANNEL
       , o.ORDER_STATUS
       , s.STORE_NAME
order by o.ORDER_DATETIME desc
```
  - Summary: Customer orders report filters order headers by selected customer context.
- Columns:
  - Column Name: ORDER_ID
    - Label: Order ID
    - Datatype: number
    - Render As: plainText
  - Column Name: ORDER_DATETIME
    - Label: Orders Date
    - Datatype: timestamp
    - Render As: plainText
    - Format Mask: YYYY-MM-DD
  - Column Name: ORDER_CHANNEL
    - Label: Order Channel
    - Datatype: varchar2
    - Render As: plainTextBasedOnLov
    - LOV: LOV_ORDER_CHANNEL
  - Column Name: ORDER_STATUS
    - Label: Order Status
    - Datatype: varchar2
    - Render As: plainTextBasedOnLov
    - LOV: LOV_ORDER_STATUS
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: ORDER_TOTAL
    - Label: Order Total
    - Datatype: number
    - Render As: plainText
    - Format Mask: 999G999G999G999G990D00
- Links: 
  - Link:
    - Link To: Page 4
    - Link Passing: ORDER_ID
    - Link Target Items: P4_ORDER_ID
    - Label: Edit
    - Link Icon: fa-edit
##### Region: Customer Spend Last 12 Months Chart
- Comments: Charts monthly customer spend from selected customer orders and order items.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Chart
  - Qualifier: Line
- Data Source:
  - Type: SQL
  - SQL:
```sql
select to_char(trunc(cast(o.ORDER_DATETIME as date), 'MM'), 'YYYY-MM') as label
     , sum(oi.QUANTITY * oi.UNIT_PRICE) as value
from OREN_ORDERS o
join OREN_ORDER_ITEMS oi
    on oi.ORDER_ID = o.ORDER_ID
where o.CUSTOMER_ID = to_number(:P15_CUSTOMER_ID)
and o.ORDER_DATETIME >= cast(add_months(cast(systimestamp as date), -12) as timestamp)
group by to_char(trunc(cast(o.ORDER_DATETIME as date), 'MM'), 'YYYY-MM')
order by label
```
  - Summary: Customer spend chart groups selected customer revenue by month.
- Columns:
  - Column Name: label
    - Label: Spend Month
    - Datatype: varchar2
    - Render As: label
  - Column Name: value
    - Label: Spend
    - Datatype: number
    - Render As: value
    - Format Mask: 999G999G999G999G990D00
### Page 16: Customer Form
- Description: Modal form for creating, updating, and deleting customers.
- Comments: Maintains OREN_CUSTOMERS rows and unique email identity for customer workflows.
- Pattern: modal-drawer
- Page Mode: modalDialog
- Menu: false
- Page Group: Customer Management
#### Regions
##### Region: Customer Form
- Comments: Edits customer name and email details from directory and profile launch points.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Form
- Data Source:
  - Type: Table
  - Name: OREN_CUSTOMERS
  - Primary Keys: CUSTOMER_ID
  - Summary: Form source for customer create, edit, and delete operations.
- Columns:
  - Column Name: CUSTOMER_ID
    - Label: Customer ID
    - Datatype: number
    - Page Item Name: P16_CUSTOMER_ID
    - Render As: displayOnly
  - Column Name: FULL_NAME
    - Label: Customer Name
    - Datatype: varchar2
    - Page Item Name: P16_FULL_NAME
    - Render As: textField
    - Required: true
    - MaxLength: 255
  - Column Name: EMAIL_ADDRESS
    - Label: Email Address
    - Datatype: varchar2
    - Page Item Name: P16_EMAIL_ADDRESS
    - Render As: textField
    - Required: true
    - MaxLength: 255
- Actions:
  - Action
    - Label: Create
    - slot: CHANGE
    - Action Type: submit
    - Process: Create
  - Action
    - Label: Apply Changes
    - slot: CHANGE
    - Action Type: submit
    - Process: Apply
  - Action
    - Label: Delete
    - slot: DELETE
    - Action Type: submit
    - Process: Delete
  - Action
    - Label: Cancel
    - slot: CLOSE
    - Action Type: navigate
    - Process: cancelDialog
### Page 17: Stores Map
- Description: Smart-filter store map and store listing for store management.
- Comments: Filters coordinate store markers and opens store modal forms from map or report links.
- Pattern: smart-filter
- Page Mode: standard
- Menu: false
- Page Group: Store Operations
#### Regions
##### Region: Store Map Smart Filters
- Comments: Provides store name and address filters for the store locations map.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Smart Filters
- Filtered Region: Store Locations
- Filters:
  - Filter
    - Name: P17_F_STORE_NAME
    - Label: Store Name
    - Render As: checkboxGroup
    - LOV: LOV_STORE_NAMES
    - Database Column: STORE_NAME
    - Datatype: varchar2
  - Filter
    - Name: P17_F_STORE_ADDRESS
    - Label: Store Address
    - Render As: checkboxGroup
    - LOV: LOV_STORE_ADDRESSES
    - Database Column: STORE_ADDRESS
    - Datatype: varchar2
##### Region: Store Locations
- Comments: Plots stores with coordinates and exposes a single tooltip for map marker review.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Map
  - Qualifier: longitudeLatitude
- Data Source:
  - Type: SQL
  - Primary Keys: STORE_ID
  - SQL:
```sql
select s.STORE_ID as STORE_ID
     , s.STORE_NAME as STORE_NAME
     , s.WEB_ADDRESS as WEB_ADDRESS
     , s.PHYSICAL_ADDRESS as PHYSICAL_ADDRESS
     , s.LATITUDE as LATITUDE
     , s.LONGITUDE as LONGITUDE
     , coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) as STORE_ADDRESS
     , s.STORE_NAME || ' - ' || coalesce(s.PHYSICAL_ADDRESS, s.WEB_ADDRESS) as MAP_TOOLTIP
from OREN_STORES s
where s.LATITUDE is not null
and s.LONGITUDE is not null
```
  - Summary: Map query returns coordinate stores with derived address and tooltip aliases.
- Columns:
  - Column Name: STORE_ID
    - Label: Store ID
    - Datatype: number
    - Render As: hidden
    - Visible: false
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: WEB_ADDRESS
    - Label: Web Address
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: PHYSICAL_ADDRESS
    - Label: Physical Address
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: LATITUDE
    - Label: Latitude
    - Datatype: number
    - Render As: latitudeCol
    - Visible: true
  - Column Name: LONGITUDE
    - Label: Longitude
    - Datatype: number
    - Render As: longitudeCol
    - Visible: true
  - Column Name: STORE_ADDRESS
    - Label: Store Address
    - Datatype: varchar2
    - Render As: hidden
    - Visible: false
  - Column Name: MAP_TOOLTIP
    - Label: Map Tooltip
    - Datatype: varchar2
    - Render As: tooltip
    - Visible: true
- Links: 
  - Link:
    - Link To: Page 8
    - Link Type: Edit
    - Link Passing: STORE_ID
    - Link Target Items: P8_STORE_ID
##### Region: Stores
- Comments: Lists store address fields and opens store edit forms from report rows.
- Position: body
- Colstart: 1
- Colspan: 12
- Component:
  - Component Type: Classic Report
  - Qualifier: Standard
- Data Source:
  - Type: Table
  - Name: OREN_STORES
  - Primary Keys: STORE_ID
  - Summary: Store table report supports edit navigation from the stores map page.
- Columns:
  - Column Name: STORE_ID
    - Label: Store ID
    - Datatype: number
    - Render As: plainText
  - Column Name: STORE_NAME
    - Label: Store Name
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: WEB_ADDRESS
    - Label: Web Address
    - Datatype: varchar2
    - Render As: plainText
  - Column Name: PHYSICAL_ADDRESS
    - Label: Physical Address
    - Datatype: varchar2
    - Render As: plainText
- Links: 
  - Link:
    - Link To: Page 8
    - Link Passing: STORE_ID
    - Link Target Items: P8_STORE_ID
    - Label: Edit
    - Link Icon: fa-edit
