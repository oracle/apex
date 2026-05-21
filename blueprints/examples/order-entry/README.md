# Order Entry App Overview

This document walks through the Order Entry sample application generated from
the bundled functional requirements and schema metadata. It is intended as the
reference format for future example app overview documents.

## What This App Demonstrates

The Order Entry app shows how a generated APEX blueprint can combine operational
entry pages, analytical dashboards, maps, calendars, faceted search, AI-assisted
interactive reporting, and master-detail workflows from a compact specification.

The app is organized around four user flows:

- Review order performance from the home dashboard.
- Explore order lines through an AI-enabled interactive report.
- Manage orders, products, customers, and stores.
- Use map, calendar, gallery, and faceted views to inspect the same data through
  different user experiences.

## Application Flow

Start on **Home Dashboard** for the executive summary. Move to **Customer Order
Details** to inspect order-line data and use the AI-assisted report interface.
Use **Orders Workbench** for operational order maintenance, then use
**Management Hub** to branch into product, customer, and store management.

Form pages are modal dialogs launched from their parent pages. The screenshots
for form pages show the form in that normal user context rather than as a
standalone page.

## Page Walkthrough

### Page 1: Home Dashboard

<img src="screenshots/p01-home-dashboard.png" alt="Home Dashboard" width="900">

The dashboard summarizes recent revenue, average order value, open orders,
online orders, and active customers. It also includes charts for order status,
store share, monthly order volume, top products, sales trend, and a small product
summary.

This page is the first stop for understanding current order activity.

### Page 2: Customer Order Details

<img src="screenshots/p02-customer-order-details.png" alt="Customer Order Details" width="900">

This AI-enabled interactive report lists order lines with order, product, store,
customer, quantity, unit price, and line total information.

This page showcases the app's report exploration flow and gives users a detailed
line-level view of sales activity.

### Page 3: Orders Workbench

<img src="screenshots/p03-orders-workbench.png" alt="Orders Workbench" width="900">

The workbench uses a parent orders region with a child order-items region. Users
select an order to review its related line items, then use row actions to edit
the order or add line items.

This page demonstrates the master-detail maintenance workflow.

### Page 4: Order Form

<img src="screenshots/p04-order-form.png" alt="Order Form" width="900">

The order form edits order header attributes such as order date, channel, status,
store, and customer.

This modal is launched from order maintenance pages so users can update an order
without leaving the surrounding workflow.

### Page 5: Order Item Form

<img src="screenshots/p05-order-item-form.png" alt="Order Item Form" width="900">

The order item form adds or edits products on an order, including product,
quantity, unit price, and line total.

This modal keeps line-item entry close to the selected parent order.

### Page 6: Orders Calendar

<img src="screenshots/p06-orders-calendar.png" alt="Orders Calendar" width="900">

The calendar shows orders by order date.

This page helps users inspect order timing and spot daily activity patterns.

### Page 7: Store Command Map

<img src="screenshots/p07-store-command-map.png" alt="Store Command Map" width="900">

The command map combines order status filtering with store locations, sales
metrics, and store-level detail.

This page demonstrates a map-led operational view for store performance.

### Page 8: Management Hub

<img src="screenshots/p08-management-hub.png" alt="Management Hub" width="900">

The management hub is a navigation page for administrative tasks.

It gives users a clean entry point for products, product gallery, customer
analysis, customer management, and store management.

### Page 9: Products Management

<img src="screenshots/p09-products-management.png" alt="Products Management" width="900">

Products Management lists products with price and image information.

This page supports product maintenance and launches the product form.

### Page 10: Product Form

<img src="screenshots/p10-product-form.png" alt="Product Form" width="900">

The product form edits product name, unit price, and stored product image.

This modal keeps product maintenance close to the product report.

### Page 11: Product Gallery

<img src="screenshots/p11-product-gallery.png" alt="Product Gallery" width="900">

The product gallery presents product images, prices, order volume, and revenue
in a card layout.

This page demonstrates a visual browsing experience for catalog-style data.

### Page 12: Customer Order Details Faceted

<img src="screenshots/p12-customer-order-details-faceted.png" alt="Customer Order Details Faceted" width="900">

The faceted search page lets users filter order-line data by product, order date,
status, and store.

This page is useful when users need guided filtering instead of a full
interactive report.

### Page 13: Customers Directory

<img src="screenshots/p13-customers-directory.png" alt="Customers Directory" width="900">

The directory lists customers with email, order count, and sales totals.

Users can open Customer 360 for customer analysis or create a new customer.

### Page 14: Customer 360

<img src="screenshots/p14-customer-360.png" alt="Customer 360" width="900">

Customer 360 summarizes an individual customer's order history and spend.

This page gives users a focused customer profile before they inspect or manage
related order activity.

### Page 15: Customer Form

<img src="screenshots/p15-customer-form.png" alt="Customer Form" width="900">

The customer form creates or edits customer identity and email information.

This modal is launched from the Customers Directory.

### Page 16: Stores Map

<img src="screenshots/p16-stores-map.png" alt="Stores Map" width="900">

The stores map plots store locations and lists store details below the map.

This page combines geospatial browsing with a tabular maintenance entry point.

### Page 17: Store Form

<img src="screenshots/p17-store-form.png" alt="Store Form" width="900">

The store form edits store name, web address, physical address, latitude, and
longitude.

This modal is launched from the Stores Map page.
