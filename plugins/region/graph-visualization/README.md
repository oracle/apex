# Graph Visualization Plug-In (Preview)

This preview plugin supports visualization of property graph queries in the database as an interactive network graph.
The queries can be expressed in SQL (specifically the new SQL/PGQ standard) for database version 23ai or later, or in
[PGQL](https://pgql-lang.org/) for Autonomous Database Serverless.

## Installation Steps

1. Download the `region_type_plugin_graphviz.sql` file in this directory
2. Navigate to App Builder -> Import
3. Drag and drop the plugin .sql file
4. Choose File Type -> Plug-in
5. Click Next
6. Continue through the remaining steps in the wizard to finish installing the application

## Usage

Please refer to the following chapters of Oracle's product documentation depending on the database you are using:

### Oracle Database 23ai

[Visualizing SQL Graph Queries Using the APEX Graph Visualization Plug-in](https://docs.oracle.com/pls/topic/lookup?ctx=property-graph-latest&id=apex-plugin-on-premises)

### Autonomous Database Serverless

[Interactive Graph Visualization in Oracle APEX Applications](https://docs.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/autonomous-database&id=apex-plugin-adb)

## Sample Application

You can find a sample APEX application which demonstrates the plug-in [here](/sample-apps/sample-graph-visualizations).
