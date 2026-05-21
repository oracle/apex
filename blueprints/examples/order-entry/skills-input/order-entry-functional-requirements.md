# Order Entry Application - Functional Requirements (v4, EARS)

## 1. Scope
REQ-1.1 The system shall provide an Oracle APEX application for customer, store, product, order, and order item
operations for the OREN schema.
REQ-1.2 The system shall use only the following base tables as persistent data sources: `OREN_CUSTOMERS`,
`OREN_STORES`, `OREN_PRODUCTS`, `OREN_ORDERS`, and `OREN_ORDER_ITEMS`.
REQ-1.3 The system shall not require any additional tables, views, columns, or JSON attributes beyond the objects
defined in the supplied 19c schema document.
REQ-1.4 The system may use SQL joins and aggregations across the OREN base tables to derive reporting columns, KPIs,
charts, and totals.
REQ-1.5 The system shall treat `OREN_ORDERS.ORDER_CHANNEL` as constrained to `ONLINE` and `IN_PERSON`.
REQ-1.6 The system shall treat `OREN_ORDERS.ORDER_STATUS` as constrained to `OPEN`, `PAID`, `COMPLETE`, and
`CANCELLED`.
REQ-1.7 The system shall enforce the schema rule that online orders require a customer and in-person orders may omit a
customer.
REQ-1.8 The system shall treat order revenue and order totals as derived values calculated from
`OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE`.
REQ-1.9 The system shall treat `OREN_ORDER_ITEMS.ORDER_ITEM_ID` as the order line primary key and shall not reference
`LINE_ITEM_ID`.
REQ-1.9a Wherever the application displays, filters, links, edits, or identifies an order line using "Order Line ID",
the value shall be sourced directly from `OREN_ORDER_ITEMS.ORDER_ITEM_ID` as `ORDER_ITEM_ID`. The system shall not
derive Order Line ID from `ROWNUM`, `ROW_NUMBER()`, display sequence, report row position, or any generated
sequential value.
REQ-1.10 The system shall manage product images using `OREN_PRODUCTS.PRODUCT_IMAGE` and its companion metadata columns
`IMAGE_MIME_TYPE`, `IMAGE_FILENAME`, `IMAGE_CHARSET`, and `IMAGE_LAST_UPDATED`.

## 2. Global navigation and interaction
REQ-2.1 The system shall provide top-level main menu navigation for the following non-modal pages only, in this order:
Home Dashboard, Customer Order Details, Orders Workbench, Orders Calendar, Store Command Map, and Management Hub.
REQ-2.1a The Customer Order Details page shall appear directly after Home Dashboard in the main menu because its
Interactive Report showcases the AI chat interface for ad hoc analysis of the joined order-line business dataset.
REQ-2.2 The system shall expose Products Management and Customers Directory through the Management Hub page and shall not
expose those pages as top-level main menu destinations.
REQ-2.3 The system shall expose Customer Order Details (Faceted), Stores Map, and Product Gallery through the
Management Hub page and shall not expose those pages as top-level main menu destinations.
REQ-2.4 The system shall expose Customer 360 and all modal form pages through contextual links, row actions, card
links, calendar selections, list entries, or create actions rather than top-level main menu entries.
REQ-2.5 The system shall support cross-page navigation through report links, card links, calendar selections, list
entries, and page-level create actions where specified in page requirements.
REQ-2.6 When a user launches a modal form from a source page, the system shall return the user to the launching page
after save or cancel.
REQ-2.7 Where a page includes contextual parent-child behavior, the system shall preserve the selected parent context
while child data is displayed.
REQ-2.8 The system shall use SQL data sources for chart regions and metric regions.
REQ-2.9 Where a page includes Faceted Search or Smart Filters, every declared filter column shall exist in the
targeted results dataset.
REQ-2.10 When a user attempts to delete a row that is still referenced by related child data, the system shall prevent
the delete and explain that the dependent data must be removed first.
REQ-2.11 Wherever `OREN_ORDERS.ORDER_DATETIME` is displayed in the application, the displayed label or description text
shall be "Orders Date", and visible date/timestamp values shall use the format mask `YYYY-MM-DD` so the time portion
of the timestamp is not displayed. This requirement controls presentation only; datasets shall continue to source the
schema column as `ORDER_DATETIME`. Exception: the Orders Workbench parent Content Row selector shall display a compact
date-only derived value without the "Orders Date" label text to prevent wrapping in the narrow parent panel.

## 3. Pages and UI patterns

### 3.1 Home Dashboard
REQ-3.1.1 The system shall provide a Home Dashboard page.
REQ-3.1.2 The Home Dashboard page shall use the pattern analytics-workspace.
REQ-3.1.3 The Home Dashboard page shall render regions in the following layout:
    - Row 1: 3 KPI tiles side-by-side.
    - Row 2: 2 KPI tiles side-by-side.
    - Row 3: 2 pie or donut charts side-by-side.
    - Row 4: 1 area chart using the whole row.
    - Row 5: 1 bar chart and 1 line chart side-by-side.
    - Row 6: 1 contextual summary region using the whole row.
    - Row 7: 1 cards region using the whole row.
REQ-3.1.4 The Home Dashboard page shall display the regions in the order defined by the requirements in this section.
REQ-3.1.5 The system shall include on the Home Dashboard page a KPI metric card titled "Revenue Last 30 Days" defined
as the sum of `OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE` for orders in the last 30 days, and shall use
Metric Icon `fa-usd` with Metric Icon Style `subtle`.
REQ-3.1.6 The system shall include on the Home Dashboard page a KPI metric card titled "Avg Order Value Last 30 Days"
defined as revenue in the last 30 days divided by distinct order count in the last 30 days, guarded by
`NULLIF(order_count, 0)`, and shall use Metric Icon `fa-calculator` with Metric Icon Style `subtle`.
REQ-3.1.7 The system shall include on the Home Dashboard page a KPI metric card titled "Open Orders" defined as
`COUNT(*)` from `OREN_ORDERS` where `ORDER_STATUS = 'OPEN'`, and shall use Metric Icon `fa-folder-open-o` with Metric
Icon Style `subtle`.
REQ-3.1.8 The system shall include on the Home Dashboard page a KPI metric card titled "Online Orders Last 30 Days"
defined as `COUNT(*)` from `OREN_ORDERS` where `ORDER_CHANNEL = 'ONLINE'` and
`ORDER_DATETIME >= SYSTIMESTAMP - INTERVAL '30' DAY`, and shall use Metric Icon `fa-globe` with Metric Icon Style
`subtle`.
REQ-3.1.9 The system shall include on the Home Dashboard page a KPI metric card titled "Active Customers Last 30
Days" defined as `COUNT(DISTINCT CUSTOMER_ID)` from `OREN_ORDERS` where `CUSTOMER_ID IS NOT NULL` and
`ORDER_DATETIME >= SYSTIMESTAMP - INTERVAL '30' DAY`, and shall use Metric Icon `fa-users` with Metric Icon Style
`subtle`.
REQ-3.1.10 The system shall include on the Home Dashboard page a donut chart titled "Orders by Status" sourced from
`OREN_ORDERS`.
REQ-3.1.11 The "Orders by Status" donut chart shall include only the statuses `OPEN`, `PAID`, `COMPLETE`, and
`CANCELLED`.
REQ-3.1.12 The system shall include on the Home Dashboard page a pie chart titled "Sales Share by Store" based on a
join of `OREN_STORES`, `OREN_ORDERS`, and `OREN_ORDER_ITEMS`.
REQ-3.1.13 The system shall include on the Home Dashboard page an area chart titled "Orders by Month (Last 12
Months)" derived from `OREN_ORDERS.ORDER_DATETIME`.
REQ-3.1.14 The system shall include on the Home Dashboard page a line chart titled "Sales Trend Last 90 Days".
REQ-3.1.15 The "Sales Trend Last 90 Days" chart shall aggregate revenue by day using `OREN_ORDERS.ORDER_DATETIME` and
`OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE`.
REQ-3.1.16 The system shall include on the Home Dashboard page a bar chart titled "Top 10 Products by Revenue" based
on a join of `OREN_PRODUCTS` and `OREN_ORDER_ITEMS`.
REQ-3.1.17 The system shall include on the Home Dashboard page a Classic Report contextual summary region positioned
immediately above the "Top 5 Revenue Products (Last 12 Months)" cards region.
REQ-3.1.17a The Home Dashboard contextual summary region shall render inline in the page body with `Position: body`,
`Colstart: 1`, and `Colspan: 12`; it shall not render in the breadcrumb bar or page header area.
REQ-3.1.18 The Home Dashboard contextual summary region above the "Top 5 Revenue Products (Last 12 Months)" cards
region shall use single-row SQL context-summary behavior to explain that the cards region shows the top 5 products by
revenue over the previous 12 months.
REQ-3.1.19 The system shall include on the Home Dashboard page a Cards region titled "Top 5 Revenue Products (Last 12
Months)" based on a join of `OREN_PRODUCTS`, `OREN_ORDER_ITEMS`, and `OREN_ORDERS`.
REQ-3.1.20 The "Top 5 Revenue Products (Last 12 Months)" cards region shall rank products by derived total revenue
over the previous 12 months using `SUM(OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE)`.
REQ-3.1.21 The "Top 5 Revenue Products (Last 12 Months)" cards region shall display only the five highest-revenue
products from the previous 12 months and shall order the cards by derived total revenue descending so the highest
total revenue product appears first.
REQ-3.1.22 The "Top 5 Revenue Products (Last 12 Months)" cards dataset shall include `PRODUCT_ID`, `PRODUCT_NAME`,
`UNIT_PRICE`, `PRODUCT_IMAGE`, image metadata required for image rendering, a derived total revenue for the previous 12
months, and a derived total volume for the previous 12 months defined as `SUM(OREN_ORDER_ITEMS.QUANTITY)`.
REQ-3.1.23 The "Top 5 Revenue Products (Last 12 Months)" cards shall display `PRODUCT_IMAGE`, `PRODUCT_NAME`,
`UNIT_PRICE`, derived total revenue for the previous 12 months, and derived total volume for the previous 12 months as
read-only values.

### 3.2 Orders Workbench
REQ-3.2.1 The system shall provide an Orders Workbench page.
REQ-3.2.2 The Orders Workbench page shall use the parent-child pattern.
REQ-3.2.3 The parent region shall be a Content Row region titled "Orders" sourced from `OREN_ORDERS` joined to
`OREN_STORES`, optionally joined to `OREN_CUSTOMERS`, and joined to a derived order-total query.
REQ-3.2.4 The parent Orders region shall include `ORDER_ID`, `ORDER_DATETIME`, `ORDER_CHANNEL`, `ORDER_STATUS`,
`STORE_NAME`, a customer display value, a derived `ORDER_TOTAL`, and compact SQL-derived display aliases for
`ORDER_LABEL`, `ORDER_DATE_DISPLAY`, `STATUS_CHANNEL_LABEL`, and `ORDER_TOTAL_DISPLAY`.
REQ-3.2.4a The parent Orders Content Row region shall optimize for the narrow left parent panel and shall map Content
Row attributes as follows: Overline shall use `STATUS_CHANNEL_LABEL`; Title shall use `ORDER_LABEL`; Description
shall use `ORDER_DATE_DISPLAY`; Miscellaneous shall use `ORDER_TOTAL_DISPLAY`.
REQ-3.2.4b The `ORDER_LABEL` alias shall be a compact label such as `Order #<ORDER_ID>`. The `ORDER_DATE_DISPLAY`
alias shall be a date-only character expression formatted as `YYYY-MM-DD` with no label text or caption. The
`STATUS_CHANNEL_LABEL` alias shall combine `ORDER_STATUS` and `ORDER_CHANNEL` using concise delimiter text. The
`ORDER_TOTAL_DISPLAY` alias shall be a compact formatted total amount.
REQ-3.2.4c The parent Orders Content Row region shall keep `ORDER_ID`, `ORDER_DATETIME`, `ORDER_CHANNEL`,
`ORDER_STATUS`, `STORE_NAME`, customer display value, and derived `ORDER_TOTAL` available in the dataset for context,
links, sorting, and actions, but shall not map `STORE_NAME` or customer display value to the Content Row Overline,
Title, Description, or Miscellaneous attributes because those values may wrap in the narrow parent panel.
REQ-3.2.5 The parent Orders Content Row region shall sort rows by `ORDER_DATETIME` descending so the most recent
orders appear first, using `ORDER_ID` descending as a deterministic tie-breaker when multiple orders have the same
`ORDER_DATETIME`.
REQ-3.2.6 The parent Orders region shall provide an Edit Order action that opens the Order Form modal and passes
`ORDER_ID`.
REQ-3.2.7 The parent Orders region shall provide an Add Order Item action that opens the Order Item Form modal in
create mode and passes `ORDER_ID`.
REQ-3.2.8 The Orders Workbench page shall provide a page-level Create Order action.
REQ-3.2.9 When a user selects Create Order, the system shall open the Order Form in modal create mode.
REQ-3.2.10 The child region shall be a Classic Report titled "Order Items" contextual to the selected `ORDER_ID`.
REQ-3.2.11 The child Order Items region shall include `ORDER_ITEM_ID`, `PRODUCT_NAME`, `UNIT_PRICE`, `QUANTITY`, and
a derived line total amount.
REQ-3.2.11a The child Order Items region shall display `OREN_ORDER_ITEMS.ORDER_ITEM_ID` as `ORDER_ITEM_ID` with label
"Order Line ID"; this value shall be the persisted order item primary key, not a generated row sequence.
REQ-3.2.12 When a user selects the Order Item edit link, the system shall open the Order Item Form modal for the
selected `ORDER_ITEM_ID`.

### 3.3 Order Form
REQ-3.3.1 The system shall provide an Order Form page.
REQ-3.3.2 The Order Form page shall run in modal mode.
REQ-3.3.3 The Order Form shall support create, save, delete, and cancel actions for `OREN_ORDERS` records.
REQ-3.3.4 The Order Form shall include `ORDER_ID`, `ORDER_DATETIME`, `ORDER_CHANNEL`, `ORDER_STATUS`, `STORE_ID`, and
`CUSTOMER_ID`.
REQ-3.3.5 The Order Form shall render `ORDER_ID` as display-only for existing records.
REQ-3.3.6 The Order Form shall provide `ORDER_CHANNEL` as a select list with the values `ONLINE` and `IN_PERSON`.
REQ-3.3.7 The Order Form shall provide `ORDER_STATUS` as a select list with the values `OPEN`, `PAID`, `COMPLETE`,
and `CANCELLED`.
REQ-3.3.8 The Order Form shall provide `STORE_ID` as a select list sourced from `OREN_STORES` using `STORE_NAME` as
the display value.
REQ-3.3.9 The Order Form shall provide `CUSTOMER_ID` as a select list sourced from `OREN_CUSTOMERS` using `FULL_NAME`
as the display value.
REQ-3.3.10 When `ORDER_CHANNEL = 'ONLINE'`, the Order Form shall require `CUSTOMER_ID`.
REQ-3.3.11 When `ORDER_CHANNEL = 'IN_PERSON'`, the Order Form shall allow `CUSTOMER_ID` to be null.
REQ-3.3.12 When the Order Form is launched from an empty Orders Calendar slot, the system shall prepopulate
`ORDER_DATETIME` from the selected calendar slot.

### 3.4 Order Item Form
REQ-3.4.1 The system shall provide an Order Item Form page.
REQ-3.4.2 The Order Item Form page shall run in modal mode.
REQ-3.4.3 The Order Item Form shall support create, save, delete, and cancel actions for `OREN_ORDER_ITEMS` records.
REQ-3.4.4 The Order Item Form shall include `ORDER_ITEM_ID`, `ORDER_ID`, `PRODUCT_ID`, `QUANTITY`, and `UNIT_PRICE`.
REQ-3.4.5 The Order Item Form shall render `ORDER_ITEM_ID` as display-only for existing records.
REQ-3.4.5a The Order Item Form shall use `OREN_ORDER_ITEMS.ORDER_ITEM_ID` as the only row identity for existing order
item records and shall label that item "Order Line ID" when displayed.
REQ-3.4.6 Where the Order Item Form is launched from order context, the system shall prepopulate `ORDER_ID` from
context.
REQ-3.4.6a Where the Order Item Form is launched from order context for create, the system shall leave
`ORDER_ITEM_ID` null and shall not attempt to query an existing `OREN_ORDER_ITEMS` row by `ORDER_ID`.
REQ-3.4.6b Where the Order Item Form is launched for edit or query of an existing order item, the launch source shall
pass `ORDER_ITEM_ID` to the Order Item Form primary-key item.
REQ-3.4.7 Where the Order Item Form is launched from order context, the system shall hide `ORDER_ID` from user
editing.
REQ-3.4.8 The Order Item Form shall provide `PRODUCT_ID` as a single-select LOV sourced from `OREN_PRODUCTS` using
`PRODUCT_NAME` as the display value.
REQ-3.4.9 When a user selects a product for a new order item, the system shall default `UNIT_PRICE` from
`OREN_PRODUCTS.UNIT_PRICE` and shall allow the user to override it before saving.
REQ-3.4.10 The Order Item Form shall persist the selling price entered on the form into `OREN_ORDER_ITEMS.UNIT_PRICE`.

### 3.5 Orders Calendar
REQ-3.5.1 The system shall provide an Orders Calendar page.
REQ-3.5.2 The system shall configure the Orders Calendar page to use the calendar pattern.
REQ-3.5.3 The Orders Calendar page shall include a Calendar region titled "Orders Calendar".
REQ-3.5.3a The Orders Calendar page shall not include a Faceted Search region, Smart Filters region, or facet controls.
REQ-3.5.4 The Orders Calendar region shall use `OREN_ORDERS.ORDER_DATETIME` as the start date.
REQ-3.5.5 The Orders Calendar dataset shall be sourced from `OREN_ORDERS` joined to `OREN_STORES`, optionally joined
to `OREN_CUSTOMERS`, and joined to order-level derived data from `OREN_ORDER_ITEMS` without producing more than one
calendar row per `ORDER_ID`.
REQ-3.5.6 The system shall include `ORDER_ID`, `ORDER_DATETIME`, `ORDER_STATUS`, `STORE_ID`, `STORE_NAME`,
`CUSTOMER_ID`, customer name, an order-level derived `PRODUCT_NAME` value composed from the distinct product names for
the order, and a derived `ORDER_VALUE` defined as `SUM(OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE)` per
`ORDER_ID` in the Orders Calendar dataset.
REQ-3.5.7 The Orders Calendar dataset shall include a derived display column named `DISPLAY_VALUE`; the Orders Calendar
Display Column attribute shall use `DISPLAY_VALUE`.
REQ-3.5.7a The `DISPLAY_VALUE` value shall be a human-readable display string composed from `ORDER_ID`, `STORE_NAME`,
and `ORDER_STATUS`, with each value separated by ` - `.
REQ-3.5.7b The `DISPLAY_VALUE` format shall be equivalent to `Order <ORDER_ID> - <STORE_NAME> - <ORDER_STATUS>`.
For example, an order with `ORDER_ID = 1001`, `STORE_NAME = Online Store`, and `ORDER_STATUS = PAID` shall display as
`Order 1001 - Online Store - PAID`.
REQ-3.5.7c Derived display strings that concatenate multiple values shall include explicit separators between values;
the system shall not concatenate adjacent values without whitespace or delimiter text.
REQ-3.5.8 The Orders Calendar dataset shall include supplemental information columns for `STORE_NAME`, customer name,
and derived `ORDER_VALUE`; the Orders Calendar Supplemental Information attributes shall use those same dataset
columns.
REQ-3.5.8a The Orders Calendar shall not include the time portion of `ORDER_DATETIME` in the Display Column or
Supplemental Information attributes.
REQ-3.5.9 When a user selects an empty calendar slot, the system shall open the Order Form modal in create mode.

### 3.5A Store Command Map
REQ-3.5A.1 The system shall provide a Store Command Map page.
REQ-3.5A.2 The Store Command Map page shall use the parent-child pattern.
REQ-3.5A.3 The Store Command Map page shall be presented as a top-level main menu destination directly after the
Orders Calendar page and directly before the Management Hub page.
REQ-3.5A.3a The Store Command Map page shall render the Market Statuses parent region in a left column occupying
one-third of the page width, shall render the Stores by Selected Status map in a right column occupying two-thirds of
the page width, and shall render the Store Status Detail child report directly below the map in the same right-column
child area. In a 12-column grid this layout is equivalent to Market Statuses at Colstart 1 and Colspan 4, Stores by
Selected Status at Colstart 5 and Colspan 8, and Store Status Detail at Colstart 5 and Colspan 8.
REQ-3.5A.4 The Store Command Map page shall provide a parent Content Row region titled "Market Statuses".
REQ-3.5A.5 The Market Statuses parent region shall be sourced from SQL over `OREN_ORDERS`, `OREN_STORES`, and
`OREN_ORDER_ITEMS`, grouped by `OREN_ORDERS.ORDER_STATUS`.
REQ-3.5A.6 The Market Statuses parent region dataset shall include `ORDER_STATUS`, a derived `ORDER_COUNT` defined as
the distinct count of orders, a derived `TOTAL_SALES` defined as
`SUM(OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE)`, and a derived `STORE_COUNT` defined as the distinct
count of stores with orders in that status.
REQ-3.5A.7 The Market Statuses parent Content Row region shall map `ORDER_STATUS` as Title, `STORE_COUNT` as
Overline, `ORDER_COUNT` as Description, and `TOTAL_SALES` as Miscellaneous.
REQ-3.5A.8 Selecting a Market Statuses row shall pass selected `ORDER_STATUS` context to all child regions on the
Store Command Map page.
REQ-3.5A.9 The Store Command Map page shall provide a child Map region titled "Stores by Selected Status".
REQ-3.5A.10 The Stores by Selected Status map shall be sourced from SQL over `OREN_STORES`, `OREN_ORDERS`, and
`OREN_ORDER_ITEMS`.
REQ-3.5A.11 The Stores by Selected Status map dataset shall include `STORE_ID`, `STORE_NAME`, `LATITUDE`,
`LONGITUDE`, a derived `STORE_ADDRESS` value using `COALESCE(PHYSICAL_ADDRESS, WEB_ADDRESS)`, `ORDER_STATUS`, a
derived `ORDER_COUNT`, and a derived `TOTAL_SALES` defined as
`SUM(OREN_ORDER_ITEMS.QUANTITY * OREN_ORDER_ITEMS.UNIT_PRICE)`.
REQ-3.5A.11a The Stores by Selected Status map dataset shall include a single derived tooltip display column named
`MAP_TOOLTIP`.
REQ-3.5A.11b The `MAP_TOOLTIP` value shall be derived from `STORE_NAME`, `STORE_ADDRESS`, `ORDER_STATUS`,
`ORDER_COUNT`, and `TOTAL_SALES`.
REQ-3.5A.12 The Stores by Selected Status map shall use the `longitudeLatitude` qualifier and shall source coordinates
from `OREN_STORES.LATITUDE` and `OREN_STORES.LONGITUDE`.
REQ-3.5A.13 The Stores by Selected Status map shall plot only stores where both latitude and longitude are present.
REQ-3.5A.14 The Stores by Selected Status map shall render all stores with coordinates when no `ORDER_STATUS` context
is selected and shall filter to stores matching the selected `ORDER_STATUS` when status context is present.
REQ-3.5A.14a When `ORDER_STATUS` context is present, the Stores by Selected Status map SQL shall exclude stores that
do not have at least one `OREN_ORDERS` row for the selected `ORDER_STATUS`; it shall not preserve all coordinate
stores through an unconditional outer-store result set.
REQ-3.5A.15 The Stores by Selected Status map shall render `MAP_TOOLTIP` as the only map tooltip column. The source
columns used to build `MAP_TOOLTIP` shall remain available in the dataset for filtering, links, reporting, and
validation.
REQ-3.5A.15a When a user selects a marker in the Stores by Selected Status map, the system shall open the existing
Store Form page in modal drawer edit mode for the selected store.
REQ-3.5A.15b The Stores by Selected Status map marker edit link shall pass `STORE_ID` to the Store Form primary-key
item so the Store Form queries the selected `OREN_STORES` row.
REQ-3.5A.16 The Store Command Map page shall provide a child Classic Report region titled "Store Status Detail".
REQ-3.5A.17 The Store Status Detail report shall be sourced from the same status-aware store summary dataset used by
the Stores by Selected Status map and shall use the same selected `ORDER_STATUS` context.
REQ-3.5A.17a When `ORDER_STATUS` context is present, the Store Status Detail report shall exclude stores that do not
have at least one `OREN_ORDERS` row for the selected `ORDER_STATUS`.
REQ-3.5A.18 The Store Status Detail report shall include `STORE_ID`, `STORE_NAME`, `STORE_ADDRESS`, `ORDER_STATUS`,
`ORDER_COUNT`, `TOTAL_SALES`, `LATITUDE`, and `LONGITUDE`.
REQ-3.5A.19 The Store Command Map page shall use only the supported order statuses `OPEN`, `PAID`, `COMPLETE`, and
`CANCELLED`.

### 3.7 Customer Order Details
REQ-3.7.1 The system shall provide a Customer Order Details page.
REQ-3.7.2 The Customer Order Details page shall include an Interactive Report region titled "Customer Order Details".
REQ-3.7.3 The Customer Order Details results dataset shall be sourced from a SQL join of `OREN_ORDERS`,
`OREN_ORDER_ITEMS`, `OREN_PRODUCTS`, `OREN_STORES`, and optionally `OREN_CUSTOMERS`.
REQ-3.7.4 The Customer Order Details results dataset shall include `ORDER_ID`, `ORDER_ITEM_ID`, `ORDER_DATETIME`,
`ORDER_CHANNEL`, `ORDER_STATUS`, `PRODUCT_ID`, `PRODUCT_NAME`, `STORE_ID`, `STORE_NAME`, `CUSTOMER_ID`, customer
name, `QUANTITY`, `UNIT_PRICE`, and a derived line total.
REQ-3.7.4a The Customer Order Details results shall be displayed at order-line grain, so repeated `ORDER_ID` values are
expected when an order has multiple line items.
REQ-3.7.4b The Customer Order Details results shall display `ORDER_ID` and `ORDER_ITEM_ID` as two separate visible
adjacent columns, with `ORDER_ID` labeled "Order ID" and `ORDER_ITEM_ID` labeled "Order Line ID".
REQ-3.7.4c The Customer Order Details results shall use `ORDER_ID` for order-level edit navigation and shall use
`ORDER_ITEM_ID` to identify the specific order line row.
REQ-3.7.4d The Customer Order Details results shall source the "Order Line ID" column directly from
`OREN_ORDER_ITEMS.ORDER_ITEM_ID` as `ORDER_ITEM_ID`; it shall not be derived from row numbering or display sequence.
REQ-3.7.5 The Customer Order Details page shall support ad hoc analysis of the joined order-line business dataset.
REQ-3.7.6 The Customer Order Details Interactive Report region shall provide an edit link that opens the Order Form
modal and passes `ORDER_ID`.

### 3.8 Customer Order Details (Faceted)
REQ-3.8.1 The system shall provide a Customer Order Details (Faceted) page.
REQ-3.8.2 The Customer Order Details (Faceted) page shall use the faceted-search pattern.
REQ-3.8.3 The Customer Order Details (Faceted) page shall include a Faceted Search region and a Classic Report results
region targeted by the Faceted Search region.
REQ-3.8.4 The results dataset shall use the same joined business dataset described for the Customer Order Details
page.
REQ-3.8.4a The Customer Order Details (Faceted) results shall display `ORDER_ID` and `ORDER_ITEM_ID` as two separate
visible adjacent columns, with `ORDER_ID` labeled "Order ID" and `ORDER_ITEM_ID` labeled "Order Line ID".
REQ-3.8.4b The Customer Order Details (Faceted) results shall source the "Order Line ID" column directly from
`OREN_ORDER_ITEMS.ORDER_ITEM_ID` as `ORDER_ITEM_ID`; it shall not be derived from row numbering or display sequence.
REQ-3.8.5 The Customer Order Details (Faceted) page shall provide Product, Order Date, Order Status, and Store facets.
REQ-3.8.6 The Product facet shall filter on `PRODUCT_ID` in the targeted results dataset.
REQ-3.8.7 The Order Date facet shall filter on `ORDER_DATETIME` in the targeted results dataset.
REQ-3.8.8 The Order Status facet shall filter on `ORDER_STATUS` in the targeted results dataset.
REQ-3.8.9 The Store facet shall filter on `STORE_ID` in the targeted results dataset.
REQ-3.8.10 The system shall expose the Customer Order Details (Faceted) page through the Management Hub page and
shall not present it as a top-level main menu destination.

### 3.9 Management Hub
REQ-3.9.1 The system shall provide a Management Hub page.
REQ-3.9.2 The Management Hub page shall use a simple single-region launcher layout.
REQ-3.9.2a The Management Hub main menu entry shall use icon `fa-sitemap`.
REQ-3.9.3 The Management Hub page shall include one full-width navigation-only Media List region titled
`Management Links`.
REQ-3.9.4 The `Management Links` region shall include entries for Products Management, Product Gallery, Customer Order
Details (Faceted), Customers Directory, and Stores Map.
REQ-3.9.5 The `Management Links` region shall target only the pages listed in REQ-3.9.4 and shall not include modal
form pages, Customer 360, top-level menu pages, or duplicate launcher entries.
REQ-3.9.6 The `Management Links` entries shall use concise labels and icons that identify the target destination.
REQ-3.9.6a Each `Management Links` entry shall include a short subtext description explaining the destination.
REQ-3.9.7 When a user selects a Management Hub entry, the system shall open the targeted page.

### 3.10 Products Management
REQ-3.10.1 The system shall provide a Products Management page.
REQ-3.10.2 The system shall expose the Products Management page through the Management Hub page.
REQ-3.10.3 The system shall not present the Products Management page as a top-level main menu destination.
REQ-3.10.4 The Products Management page shall use the smart-filter pattern.
REQ-3.10.4a The Products Management page shall include a Smart Filters region and a Classic Report results region
titled "Products" targeted by the Smart Filters region.
REQ-3.10.5 The Products report shall include `PRODUCT_ID`, `PRODUCT_NAME`, `UNIT_PRICE`, and `IMAGE_LAST_UPDATED`.
REQ-3.10.6 The Products Management page shall provide Product Name and Unit Price smart filters.
REQ-3.10.7 The Product Name smart filter shall filter on `PRODUCT_NAME` in the targeted results dataset.
REQ-3.10.8 The Unit Price smart filter shall filter on `UNIT_PRICE` in the targeted results dataset.
REQ-3.10.9 When a user selects the product edit link, the system shall open the Product Form modal for that product.
REQ-3.10.10 The Products Management page shall provide a Create Product action.
REQ-3.10.11 When a user selects Create Product, the system shall open the Product Form in modal create mode.

### 3.11 Product Form
REQ-3.11.1 The system shall provide a Product Form page.
REQ-3.11.2 The Product Form page shall run in modal mode.
REQ-3.11.3 The Product Form shall support create, save, delete, and cancel actions for `OREN_PRODUCTS` records.
REQ-3.11.4 The Product Form shall include `PRODUCT_ID`, `PRODUCT_NAME`, `UNIT_PRICE`, and `PRODUCT_IMAGE`.
REQ-3.11.5 The Product Form shall render `PRODUCT_ID` as display-only for existing records.
REQ-3.11.6 The Product Form shall enforce uniqueness for `PRODUCT_NAME`.
REQ-3.11.7 The Product Form shall enforce `UNIT_PRICE >= 0`.
REQ-3.11.8 Where `PRODUCT_IMAGE` is uploaded, the system shall maintain `PRODUCT_IMAGE`, `IMAGE_MIME_TYPE`,
`IMAGE_FILENAME`, `IMAGE_CHARSET`, and `IMAGE_LAST_UPDATED` using the corresponding `OREN_PRODUCTS` columns.

### 3.12 Customers Directory
REQ-3.12.1 The system shall provide a Customers Directory page.
REQ-3.12.2 The system shall expose the Customers Directory page through the Management Hub page.
REQ-3.12.3 The system shall not present the Customers Directory page as a top-level main menu destination.
REQ-3.12.4 The Customers Directory page shall use the smart-filter pattern.
REQ-3.12.4a The Customers Directory page shall include a Smart Filters region and a Classic Report results region
targeted by the Smart Filters region.
REQ-3.12.5 The Customers report shall include `CUSTOMER_ID`, `FULL_NAME`, `EMAIL_ADDRESS`, a derived total orders
value, and a derived total sales value.
REQ-3.12.6 The Customers Directory page shall provide Customer Name and Email Address smart filters.
REQ-3.12.7 The Customer Name smart filter shall filter on `FULL_NAME` in the targeted results dataset.
REQ-3.12.8 The Email Address smart filter shall filter on `EMAIL_ADDRESS` in the targeted results dataset.
REQ-3.12.9 When a user selects the Customer 360 link in the customers report, the system shall open Customer 360 for
the selected `CUSTOMER_ID`.
REQ-3.12.10 The Customers Directory page shall provide a Create Customer action.
REQ-3.12.11 When a user selects Create Customer, the system shall open the Customer Form in modal create mode.

### 3.13 Customer 360
REQ-3.13.1 The system shall provide a Customer 360 page.
REQ-3.13.2 The Customer 360 page shall provide customer-centric context for a selected `CUSTOMER_ID`.
REQ-3.13.3 The Customer 360 page shall include a Content Row region titled "Customer Overview".
REQ-3.13.4 The Customer Overview region shall display `EMAIL_ADDRESS` as overline.
REQ-3.13.5 The Customer Overview region shall display `FULL_NAME` as title.
REQ-3.13.6 The Customer Overview region shall display derived customer metrics including total orders and total sales.
REQ-3.13.7 The Customer Overview region shall provide a link to open Customer Form in modal mode for the current
customer.
REQ-3.13.8 The Customer 360 page shall not use a parent-child layout.
REQ-3.13.9 The Customer 360 page shall include a Customer Orders report showing recent orders for the selected
`CUSTOMER_ID`.
REQ-3.13.10 The Customer Orders report shall display `ORDER_ID`, `ORDER_DATETIME`, `ORDER_CHANNEL`, `ORDER_STATUS`,
`STORE_NAME`, and a derived `ORDER_TOTAL`.
REQ-3.13.11 The Customer Orders report shall provide a row link to open the Order Form modal for the selected
`ORDER_ID`.
REQ-3.13.12 The Customer 360 page shall not include an Order Items child region and shall not maintain a selected
`P13_ORDER_ID` state item.
REQ-3.13.13 Detailed order item review and maintenance shall be handled through the Orders Workbench and Order Item
Form.
REQ-3.13.14 The Customer 360 page shall include a chart showing customer spend over the last 12 months derived from
`OREN_ORDERS` and `OREN_ORDER_ITEMS`.

### 3.14 Customer Form
REQ-3.14.1 The system shall provide a Customer Form page.
REQ-3.14.2 The Customer Form page shall run in modal mode.
REQ-3.14.3 The Customer Form shall support create, save, delete, and cancel actions for `OREN_CUSTOMERS` records.
REQ-3.14.4 The Customer Form shall include `CUSTOMER_ID`, `FULL_NAME`, and `EMAIL_ADDRESS`.
REQ-3.14.5 The Customer Form shall render `CUSTOMER_ID` as display-only for existing records.
REQ-3.14.6 The Customer Form shall enforce uniqueness for `EMAIL_ADDRESS`.
REQ-3.14.7 When the Customer Form is saved or canceled, the system shall return the user to the launching page.

### 3.15 Stores Map
REQ-3.15.1 The system shall provide a Stores Map page.
REQ-3.15.2 The system shall expose the Stores Map page through the Management Hub page.
REQ-3.15.3 The system shall not present the Stores Map page as a top-level main menu destination.
REQ-3.15.4 The Stores Map page shall use the smart-filter pattern.
REQ-3.15.4a The Stores Map page shall include a Smart Filters region targeting the Store Locations map region.
REQ-3.15.4b The Stores Map page shall provide Store Name and Store Address smart filters.
REQ-3.15.4c The Store Name smart filter shall filter on `STORE_NAME` in the targeted map dataset.
REQ-3.15.4d The Store Address smart filter shall filter on `STORE_ADDRESS` in the targeted map dataset.
REQ-3.15.5 The Stores Map page shall include a Map region titled "Store Locations".
REQ-3.15.6 The Store Locations map shall use the `longitudeLatitude` qualifier.
REQ-3.15.7 The Store Locations map dataset shall include `STORE_ID`, `STORE_NAME`, `WEB_ADDRESS`,
`PHYSICAL_ADDRESS`, `LATITUDE`, `LONGITUDE`, and a derived `STORE_ADDRESS` value using
`COALESCE(PHYSICAL_ADDRESS, WEB_ADDRESS)`.
REQ-3.15.7a The Store Locations map dataset shall include a single derived tooltip display column named
`MAP_TOOLTIP`.
REQ-3.15.7b The `MAP_TOOLTIP` value shall be derived from `STORE_NAME` and `STORE_ADDRESS`.
REQ-3.15.8 The Store Locations map shall source coordinates from `OREN_STORES.LATITUDE` and `OREN_STORES.LONGITUDE`.
REQ-3.15.9 The Store Locations map shall plot only stores where both latitude and longitude are present.
REQ-3.15.10 The Store Locations map shall render `MAP_TOOLTIP` as the only map tooltip column. The source columns used
to build `MAP_TOOLTIP` shall remain available in the dataset for filtering, links, reporting, and validation.
REQ-3.15.11 The Store Locations map shall provide an edit link to the Store Form modal.
REQ-3.15.12 The Stores Map page shall include a Classic Report region titled "Stores".
REQ-3.15.13 The Stores report shall include `STORE_ID`, `STORE_NAME`, `WEB_ADDRESS`, and `PHYSICAL_ADDRESS`.
REQ-3.15.14 When a user selects the store edit link in the Stores report, the system shall open the Store Form modal
for that store.

### 3.16 Store Form
REQ-3.16.1 The system shall provide a Store Form page.
REQ-3.16.2 The Store Form page shall run in modal mode.
REQ-3.16.3 The Store Form shall support create, save, delete, and cancel actions for `OREN_STORES` records.
REQ-3.16.4 The Store Form shall include `STORE_ID`, `STORE_NAME`, `WEB_ADDRESS`, `PHYSICAL_ADDRESS`, `LATITUDE`, and
`LONGITUDE`.
REQ-3.16.5 The Store Form shall render `STORE_ID` as display-only for existing records.
REQ-3.16.6 The Store Form shall enforce uniqueness for `STORE_NAME`.
REQ-3.16.7 The Store Form shall require at least one of `WEB_ADDRESS` or `PHYSICAL_ADDRESS`.
REQ-3.16.8 The Store Form shall validate latitude within `-90` to `90` and longitude within `-180` to `180`.

### 3.17 Product Gallery
REQ-3.17.1 The system shall provide a Product Gallery page.
REQ-3.17.2 The system shall expose the Product Gallery page through the Management Hub page.
REQ-3.17.3 The system shall not present the Product Gallery page as a top-level main menu destination.
REQ-3.17.4 The Product Gallery page shall include a Smart Filters region.
REQ-3.17.5 The Product Gallery page shall include a Cards region titled "Products" targeted by the Smart Filters
region.
REQ-3.17.6 The Products cards dataset shall include `PRODUCT_ID`, `PRODUCT_NAME`, `UNIT_PRICE`, `PRODUCT_IMAGE`, and
image metadata required for image rendering.
REQ-3.17.7 The Products cards shall display `PRODUCT_NAME` as title.
REQ-3.17.8 The Products cards shall display `UNIT_PRICE` as a read-only price value.
REQ-3.17.9 The Products cards shall display `PRODUCT_IMAGE` as a read-only image using display-image rendering.
REQ-3.17.10 The Product Gallery smart filters shall allow filtering by product name and unit price.
REQ-3.17.11 When a user selects a product card link, the system shall open the Product Form modal for the selected
`PRODUCT_ID`.

## 4. Exclusions for this version
REQ-4.1 The system shall exclude any workflow that depends on order statuses other than `OPEN`, `PAID`, `COMPLETE`,
and `CANCELLED`.
REQ-4.2 The system shall exclude shipping, refund, return, and fulfillment-tracking features because those entities
and statuses are not defined in the supplied 19c schema.
REQ-4.3 The system shall exclude stock-on-hand, warehouse, replenishment, and supplier-management features because the
supplied 19c schema does not include inventory quantity or supplier tables.
REQ-4.4 The system shall exclude requirements that depend on prebuilt reporting views not present in the supplied 19c
schema document.

## 5. Non-functional requirements
REQ-5.1 The system shall use standard Oracle APEX components for all specified pages and regions.
REQ-5.2 The system shall use concise, user-readable labels for page titles, actions, filters, and region names.
REQ-5.3 The system shall provide deterministic page behavior aligned with the requirements in this document.
REQ-5.4 The system shall ensure every SQL-backed page region references only columns that exist in the OREN base tables
or in SQL-derived expressions built from those columns.

## 6. Acceptance criteria
REQ-6.1 The system shall implement the pages specified in section 3 and shall keep section 4 exclusions out of scope.
REQ-6.2 The Home Dashboard page shall render exactly five KPI metric cards, five charts, and one Cards region showing
exactly five products, and the order-status chart shall use only the four statuses supported by
`OREN_ORDERS.ORDER_STATUS`.
REQ-6.3 The Orders Workbench page shall preserve parent-child context while displaying order items. Customer 360 shall
show customer-level summary and recent order history only.
REQ-6.4 The Order Form shall enforce that online orders require a customer and in-person orders may omit a customer.
REQ-6.5 The Customer Order Details (Faceted) page shall expose Product, Order Date, Order Status, and Store filters
tied to columns that exist in its targeted results dataset, and Customer Order Details reports shall visibly
distinguish repeated order rows by displaying both Order ID and Order Line ID as separate adjacent columns, with Order
Line ID always sourced from `OREN_ORDER_ITEMS.ORDER_ITEM_ID`.
REQ-6.5a The Customers Directory smart-filter page shall expose Customer Name and Email Address filters tied to
`FULL_NAME` and `EMAIL_ADDRESS` in its targeted results dataset.
REQ-6.5b The Stores Map smart-filter page shall expose Store Name and Store Address filters tied to `STORE_NAME` and
`STORE_ADDRESS` in its targeted map dataset.
REQ-6.5c The Store Command Map page shall display Market Statuses as a parent Content Row region and shall display
Stores by Selected Status and Store Status Detail child regions filtered by selected `ORDER_STATUS`, defaulting to all
stores with coordinates when no status is selected, and map marker selection shall open the Store Form modal drawer
for the selected `STORE_ID`.
REQ-6.6 The Product Form and Product Gallery shall manage product images using `OREN_PRODUCTS.PRODUCT_IMAGE` and its
companion metadata columns.
REQ-6.7 The main menu shall include Home Dashboard, Customer Order Details, Orders Workbench, Orders Calendar, Store
Command Map, and Management Hub, and shall exclude Products Management, Customers Directory, Customer Order Details
(Faceted), Stores Map, Product Gallery, Customer 360, and all modal forms.
REQ-6.8 The main menu shall expose Management Hub as the only launcher page for management-only destinations, and the
Management Hub page shall expose Products Management, Product Gallery, Customer Order Details (Faceted), Customers
Directory, and Stores Map through a single `Management Links` navigation region.
