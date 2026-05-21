# Table: OREN_CUSTOMERS
Comment: Customers who place online orders or who may be associated with in-person purchases

## Columns:
  - CUSTOMER_ID - NUMBER NOT NULL [pk]
  - FULL_NAME - VARCHAR2(255) NOT NULL
  - EMAIL_ADDRESS - VARCHAR2(255) NOT NULL [uk]

## Column Comments:
  - CUSTOMER_ID - Surrogate primary key
  - FULL_NAME - Customer name used in forms, reports, and dashboards
  - EMAIL_ADDRESS - Email address used to identify a customer for online orders

## Column Display Attributes:
  - CUSTOMER_ID
    - description: Surrogate primary key.
    - display-label: Customer ID
    - read-only: true
    - semantic-type: identifier
  - FULL_NAME
    - description: Customer name used in forms, reports, and dashboards.
    - display-label: Customer Name
    - primary-display-column: true
    - semantic-type: person_name
    - value-required: true
  - EMAIL_ADDRESS
    - description: Email address used to identify a customer for online orders.
    - display-label: Email Address
    - semantic-type: email_address
    - value-required: true

## Constraints:
  - OREN_CUSTOMERS_PK - PRIMARY KEY (CUSTOMER_ID)
  - OREN_CUST_EMAIL_UK - UNIQUE (EMAIL_ADDRESS)

## Table Attributes:
  - description: Customers who place online orders or who may be associated with in-person purchases.
  - display-label: Customers

# Table: OREN_ORDERS
Comment: Order headers for both online and in-person sales

## Columns:
  - ORDER_ID - NUMBER NOT NULL [pk]
  - ORDER_DATETIME - TIMESTAMP NOT NULL
  - ORDER_CHANNEL - VARCHAR2(10) NOT NULL
  - ORDER_STATUS - VARCHAR2(10) NOT NULL
  - STORE_ID - NUMBER NOT NULL [fk]
  - CUSTOMER_ID - NUMBER [fk]

## Column Comments:
  - ORDER_ID - Surrogate primary key
  - ORDER_DATETIME - Date and time when the order was created
  - ORDER_CHANNEL - Order source. Valid values are ONLINE and IN_PERSON
  - ORDER_STATUS - Processing state of the order. Valid values are OPEN, PAID, COMPLETE, and CANCELLED
  - STORE_ID - Store responsible for the sale or fulfillment
  - CUSTOMER_ID - Customer tied to the order. Required for online orders and optional for walk-in sales

## Column Display Attributes:
  - ORDER_ID
    - description: Surrogate primary key.
    - display-label: Order ID
    - primary-display-column: true
    - read-only: true
    - semantic-type: identifier
  - ORDER_DATETIME
    - description: Date and time when the order was created.
    - display-label: Order Date Time
    - format-mask: DD-MON-YYYY HH24:MI
    - semantic-type: date_time
    - value-required: true
  - ORDER_CHANNEL
    - ai-context: Valid values are ONLINE and IN_PERSON.
    - description: Order source.
    - display-label: Order Channel
    - semantic-type: enumeration
    - value-required: true
  - ORDER_STATUS
    - ai-context: Valid values are OPEN, PAID, COMPLETE, and CANCELLED.
    - description: Processing state of the order.
    - display-label: Order Status
    - semantic-type: enumeration
    - value-required: true
  - STORE_ID
    - description: Store responsible for the sale or fulfillment.
    - display-as-lov: select-list
    - display-label: Store
    - semantic-type: identifier
    - value-required: true
  - CUSTOMER_ID
    - ai-context: Required for ONLINE orders and optional for IN_PERSON orders.
    - description: Customer tied to the order.
    - display-as-lov: select-list
    - display-label: Customer
    - semantic-type: identifier

## Constraints:
  - OREN_ORDERS_CHAN_CK - CHECK (ORDER_CHANNEL)
  - OREN_ORDERS_STATUS_CK - CHECK (ORDER_STATUS)
  - OREN_ORDERS_CUST_REQ_CK - CHECK (ORDER_CHANNEL, CUSTOMER_ID)
  - OREN_ORDERS_PK - PRIMARY KEY (ORDER_ID)
  - OREN_ORDERS_STORE_FK - FOREIGN KEY (STORE_ID) -> OREN_STORES(STORE_ID)
  - OREN_ORDERS_CUST_FK - FOREIGN KEY (CUSTOMER_ID) -> OREN_CUSTOMERS(CUSTOMER_ID)

## Table Attributes:
  - description: Order headers for both online and in-person sales.
  - display-label: Orders

# Table: OREN_ORDER_ITEMS
Comment: Line items that record the products, quantities, and selling prices for each order

## Columns:
  - ORDER_ITEM_ID - NUMBER NOT NULL [pk]
  - ORDER_ID - NUMBER NOT NULL [fk]
  - PRODUCT_ID - NUMBER NOT NULL [fk]
  - QUANTITY - NUMBER(10) NOT NULL
  - UNIT_PRICE - NUMBER(10,2) NOT NULL

## Column Comments:
  - ORDER_ITEM_ID - Surrogate primary key for the order line
  - ORDER_ID - Order header that owns this line item
  - PRODUCT_ID - Product sold on this order line
  - QUANTITY - Number of units sold on the order line
  - UNIT_PRICE - Selling price captured at the time of sale for one unit

## Column Display Attributes:
  - ORDER_ITEM_ID
    - description: Surrogate primary key for the order line.
    - display-label: Order Item ID
    - read-only: true
    - semantic-type: identifier
  - ORDER_ID
    - description: Order header that owns this line item.
    - display-as-lov: select-list
    - display-label: Order
    - semantic-type: identifier
    - value-required: true
  - PRODUCT_ID
    - description: Product sold on this order line.
    - display-as-lov: select-list
    - display-label: Product
    - semantic-type: identifier
    - value-required: true
  - QUANTITY
    - description: Number of units sold on the order line.
    - display-label: Quantity
    - semantic-type: quantity
    - value-required: true
  - UNIT_PRICE
    - description: Selling price captured at the time of sale for one unit.
    - display-label: Selling Unit Price
    - format-mask: FM999G999G990D00
    - semantic-type: currency_amount
    - value-required: true

## Constraints:
  - OREN_OI_PRODUCT_FK - FOREIGN KEY (PRODUCT_ID) -> OREN_PRODUCTS(PRODUCT_ID)
  - OREN_OI_QTY_CK - CHECK (QUANTITY)
  - OREN_OI_PRICE_CK - CHECK (UNIT_PRICE)
  - OREN_ORDER_ITEMS_PK - PRIMARY KEY (ORDER_ITEM_ID)
  - OREN_OI_ORDER_FK - FOREIGN KEY (ORDER_ID) -> OREN_ORDERS(ORDER_ID)

## Table Attributes:
  - description: Line items that record the products, quantities, and selling prices for each order.
  - display-label: Order Items

# Table: OREN_PRODUCTS
Comment: Products available for sale, including an optional stored product image

## Columns:
  - PRODUCT_ID - NUMBER NOT NULL [pk]
  - PRODUCT_NAME - VARCHAR2(255) NOT NULL [uk]
  - UNIT_PRICE - NUMBER(10,2) NOT NULL
  - PRODUCT_IMAGE - BLOB
  - IMAGE_MIME_TYPE - VARCHAR2(255)
  - IMAGE_FILENAME - VARCHAR2(255)
  - IMAGE_CHARSET - VARCHAR2(128)
  - IMAGE_LAST_UPDATED - TIMESTAMP

## Column Comments:
  - PRODUCT_ID - Surrogate primary key
  - PRODUCT_NAME - Name of the product sold to customers
  - UNIT_PRICE - Standard selling price for one unit of the product
  - PRODUCT_IMAGE - Optional product image stored as a BLOB
  - IMAGE_MIME_TYPE - MIME type for the stored product image
  - IMAGE_FILENAME - Original filename for the uploaded product image
  - IMAGE_CHARSET - Character set associated with the uploaded product image when supplied
  - IMAGE_LAST_UPDATED - Timestamp when the product image was last changed

## Column Display Attributes:
  - PRODUCT_ID
    - description: Surrogate primary key.
    - display-label: Product ID
    - read-only: true
    - semantic-type: identifier
  - PRODUCT_NAME
    - description: Name of the product sold to customers.
    - display-label: Product Name
    - primary-display-column: true
    - semantic-type: name
    - value-required: true
  - UNIT_PRICE
    - description: Standard selling price for one unit of the product.
    - display-label: Unit Price
    - format-mask: FM999G999G990D00
    - semantic-type: currency_amount
    - value-required: true
  - PRODUCT_IMAGE
    - description: Optional product image stored as a BLOB.
    - display-in-report: false
    - display-label: Product Image
    - semantic-type: binary_image
  - IMAGE_MIME_TYPE
    - description: MIME type for the stored product image.
    - display-in-form: false
    - display-in-report: false
    - display-label: Image MIME Type
    - semantic-type: mime_type
  - IMAGE_FILENAME
    - description: Original filename for the uploaded product image.
    - display-in-form: false
    - display-in-report: false
    - display-label: Image Filename
    - semantic-type: file_name
  - IMAGE_CHARSET
    - description: Character set associated with the uploaded product image when supplied.
    - display-in-form: false
    - display-in-report: false
    - display-label: Image Charset
    - semantic-type: character_set
  - IMAGE_LAST_UPDATED
    - description: Timestamp when the product image was last changed.
    - display-in-form: false
    - display-in-report: false
    - display-label: Image Last Updated
    - format-mask: DD-MON-YYYY HH24:MI
    - semantic-type: date_time

## Constraints:
  - OREN_PRODUCTS_PRICE_CK - CHECK (UNIT_PRICE)
  - OREN_PRODUCTS_PK - PRIMARY KEY (PRODUCT_ID)
  - OREN_PRODUCTS_NAME_UK - UNIQUE (PRODUCT_NAME)

## Table Attributes:
  - description: Products available for sale, including an optional stored product image.
  - display-label: Products

# Table: OREN_STORES
Comment: Physical stores and online storefronts that accept or fulfill orders

## Columns:
  - STORE_ID - NUMBER NOT NULL [pk]
  - STORE_NAME - VARCHAR2(255) NOT NULL [uk]
  - WEB_ADDRESS - VARCHAR2(512)
  - PHYSICAL_ADDRESS - VARCHAR2(512)
  - LATITUDE - NUMBER(9,6)
  - LONGITUDE - NUMBER(9,6)

## Column Comments:
  - STORE_ID - Surrogate primary key
  - STORE_NAME - Business name of the store or online storefront
  - WEB_ADDRESS - Website URL for online ordering or store information
  - PHYSICAL_ADDRESS - Street or mailing address for a physical store location
  - LATITUDE - Latitude used to plot the store on a map
  - LONGITUDE - Longitude used to plot the store on a map

## Column Display Attributes:
  - STORE_ID
    - description: Surrogate primary key.
    - display-label: Store ID
    - read-only: true
    - semantic-type: identifier
  - STORE_NAME
    - description: Business name of the store or online storefront.
    - display-label: Store Name
    - primary-display-column: true
    - semantic-type: name
    - value-required: true
  - WEB_ADDRESS
    - description: Website URL for online ordering or store information.
    - display-label: Web Address
    - semantic-type: url
  - PHYSICAL_ADDRESS
    - description: Street or mailing address for a physical store location.
    - display-label: Physical Address
    - semantic-type: postal_address
  - LATITUDE
    - description: Latitude used to plot the store on a map.
    - display-label: Latitude
    - semantic-type: latitude
  - LONGITUDE
    - description: Longitude used to plot the store on a map.
    - display-label: Longitude
    - semantic-type: longitude

## Constraints:
  - OREN_STORES_ADDR_CK - CHECK (WEB_ADDRESS, PHYSICAL_ADDRESS)
  - OREN_STORES_LAT_CK - CHECK (LATITUDE)
  - OREN_STORES_LON_CK - CHECK (LONGITUDE)
  - OREN_STORES_PK - PRIMARY KEY (STORE_ID)
  - OREN_STORES_NAME_UK - UNIQUE (STORE_NAME)

## Table Attributes:
  - description: Physical stores and online storefronts that accept or fulfill orders.
  - display-label: Stores
