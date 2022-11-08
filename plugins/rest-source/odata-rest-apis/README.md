# Oracle ODATA Connector

## Description
OData (Open Data Protocol) is an ISO/IEC approved, OASIS standard that defines a set of best practices for building and consuming RESTful APIs. OData helps you focus on your business logic while building RESTful APIs without having to worry about the various approaches to define request and response headers, status codes, HTTP methods, URL conventions, media types, payload formats, query options, etc. OData also provides guidance for tracking changes, defining functions/actions for reusable procedures, and sending asynchronous/batch requests.


## Getting started

#### Quick Start

- Import Sample App `odata_connector_sample_app.zip` or `odata_connector_sample_app.sql`
- Make sure to Install Supporting Objects, so that PL/SQL packages will be created or replaced: 
  - plg_odata_filters
  - plg_odata_order_bys
  - plg_odata_metadata
  - plg_odata_connector
- Run the application and navigate to the Sample Pages in order to test the ODATA Plugin.


#### Manual Installation

- Navigate to the "src" folder.
- Install the PL/SQL packages into your database schema, using the install_packages.sql script.
- Import the ODATA Connector Plugin into your App "web_source_type_plugin_odata-connector.sql".


### Plug-In Usage for new REST Data Sources

- Create an application
- Option 1: 
  - Add the Plug-In to your application, following the "Manual Installation" steps.
- Option 2:
  - Install the Sample Application, following the "Quick Start" steps.
  - In your application, create a Plug-In **As a Copy of an Existing Plug-in**.
  - Choose the Sample application and copy the **OData REST Service** Plug-In to your application.
- Create a new REST Data Source in Shared Components, REST Data Sources.
- Make sure to use **Data REST Service [Plug-In]** as the **REST Source Type**.
- Follow the wizard steps.
- Click **Discover** and when you see sample data, click **Create** to create the REST Data Source.
- Create a new page in your application and add components based on the new REST Data Source.
