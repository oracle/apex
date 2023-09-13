# Oracle Graph Visualization Plug-In (Preview)

This plug-in supports visualization of property graph queries in the database as an interactive network graph. The queries can be expressed in SQL (specifically the new SQL/PGQ standard) for database version 23c or later, or in PGQL (https://pgql-lang.org/) for Autonomous Database Serverless.

This plug-in requires APEX 23.1 or newer on an Oracle Database 19c or newer. 
You can use it on premises or on Oracle Cloud by using the APEX Service. 

Description of files:
* optional-23c-only/gvt_sqlgraph_to_json.sql: an optional SQL function to visualize SQL property graphs

Import the Plug-In
==================

1. Sign into APEX. 
2. Make sure you have an application that Plug-In will be installed into. Or you can skip `Import the Plug-In` step and install Sample Application directly.
3. Click App Builder -> Import.
4. Choose the Plug-In option.
5. Upload the gvt_apex_plugin.sql file.
6. Click Next and follow the instructions to finish the import process.

(Optional) Import the Sample Application
========================================

1. Sign into APEX. 
2. Click App Builder -> Import.
3. Choose the Application option.
4. Upload the gvt_sample_app.sql file.
5. Click Next and follow the instructions to finish the import process.

(Optional) Install the `GRAPH_SQLGRAPH_TO_JSON` function.
=====================================================

Note: This function requires Oracle Database 23c or newer.

1. Sign into APEX
2. Go to SQL Workshop -> SQL Scripts -> Upload
3. Upload the gvt_sqlgraph_to_json.sql file.
4. Click Run.
5. Go to SQL Workshop -> SQL Commands
4. Next, create the graph used by the sample app so it can be queried using SQL/PGQ. 
Copy and paste the following statement, click Run:
```CREATE PROPERTY GRAPH EBA_SAMPLE_GRAPH
  VERTEX TABLES (
    eba_graphviz_countries
      KEY ( country_id )
      LABEL country PROPERTIES ( country_id, country_name, region_id ),
    eba_graphviz_departments
      KEY ( department_id )
      LABEL department PROPERTIES ( department_id, department_name, location_id, manager_id ),
    eba_graphviz_locations
      KEY ( location_id )
      LABEL location PROPERTIES ( city, country_id, location_id, postal_code, state_province, street_address ),
    eba_graphviz_job_history
      KEY ( employee_id, end_date, job_id, start_date )
      PROPERTIES ( department_id, employee_id, end_date, job_id, start_date ),
    eba_graphviz_jobs
      KEY ( job_id )
      LABEL job PROPERTIES ( job_id, job_title, max_salary, min_salary ),
    eba_graphviz_regions
      KEY ( region_id )
      LABEL region PROPERTIES ( region_id, region_name ),
    eba_graphviz_employees
      KEY ( employee_id )
      LABEL employee PROPERTIES ( commission_pct, department_id, email, employee_id, first_name, hire_date, job_id, last_name, manager_id, phone_number, salary )
  )
  EDGE TABLES (
    eba_graphviz_countries AS country_located_in
      SOURCE KEY ( country_id ) REFERENCES eba_graphviz_countries (country_id)
      DESTINATION KEY ( region_id ) REFERENCES eba_graphviz_regions (region_id)
      NO PROPERTIES,
    eba_graphviz_departments AS department_located_in
      SOURCE KEY ( department_id ) REFERENCES eba_graphviz_departments (department_id)
      DESTINATION KEY ( location_id ) REFERENCES eba_graphviz_locations ( location_id )
      NO PROPERTIES,
    eba_graphviz_locations AS location_located_in
      SOURCE KEY ( location_id ) REFERENCES eba_graphviz_locations ( location_id )
      DESTINATION KEY ( country_id ) REFERENCES eba_graphviz_countries ( country_id )
      NO PROPERTIES,
    eba_graphviz_employees AS works_as
      SOURCE KEY ( employee_id ) REFERENCES eba_graphviz_employees ( employee_id )
      DESTINATION KEY ( job_id ) REFERENCES eba_graphviz_jobs ( job_id )
      NO PROPERTIES,
    eba_graphviz_employees AS works_at
      SOURCE KEY ( employee_id ) REFERENCES eba_graphviz_employees  ( employee_id ) 
      DESTINATION KEY ( department_id ) REFERENCES eba_graphviz_departments ( department_id ) 
      NO PROPERTIES,
    eba_graphviz_employees AS works_for
      SOURCE KEY ( employee_id ) REFERENCES eba_graphviz_employees ( employee_id )
      DESTINATION KEY ( manager_id ) REFERENCES eba_graphviz_employees  ( employee_id )
      NO PROPERTIES,
    eba_graphviz_job_history AS for_job KEY ( employee_id, start_date )
      SOURCE KEY ( employee_id, start_date ) REFERENCES eba_graphviz_job_history ( employee_id, start_date )
      DESTINATION KEY ( job_id ) REFERENCES eba_graphviz_jobs ( job_id )
      NO PROPERTIES,
    eba_graphviz_job_history AS for_department KEY ( employee_id, start_date )
      SOURCE KEY ( employee_id, start_date ) REFERENCES eba_graphviz_job_history ( employee_id, start_date )
      DESTINATION KEY ( department_id ) REFERENCES eba_graphviz_departments ( department_id )
      NO PROPERTIES,
    eba_graphviz_job_history AS for_employee KEY ( employee_id, start_date )
      SOURCE KEY ( employee_id, start_date ) REFERENCES eba_graphviz_job_history ( employee_id, start_date ) 
      DESTINATION KEY ( employee_id ) REFERENCES eba_graphviz_employees  ( employee_id )
      NO PROPERTIES
  )
  ```
How to Use `ORA_SQLGRAPHL_TO_JSON` Function
=======================================

`ORA_SQLGRAPHL_TO_JSON` accepts CURSOR as input. Here is an example helper function you can use which takes a SQL/PGQ query as VARCHAR2, converts it into a cursor and passes it into the ORA_SQLGRAPH_TO_JSON function.
```
CREATE OR REPLACE FUNCTION CUST_SQLGRAPH_JSON (
  QUERY VARCHAR2
) RETURN CLOB
  AUTHID CURRENT_USER IS
  INCUR    SYS_REFCURSOR;
  L_CUR    NUMBER;
  RETVALUE CLOB;
BEGIN
  OPEN INCUR FOR QUERY;
  L_CUR := DBMS_SQL.TO_CURSOR_NUMBER(INCUR);
  RETVALUE := ORA_SQLGRAPH_TO_JSON(L_CUR);
  DBMS_SQL.CLOSE_CURSOR(L_CUR);
  RETURN RETVALUE;
END;
```
Please add column alias after the function.
```
SELECT CUST_SQLGRAPH_JSON('YOUR QUERY STRING') AS COLUMN_ALIAS FROM DUAL;
```
Here is an example of using the helper function.
```
SELECT CUST_SQLGRAPH_JSON('SELECT employee, e, manager
    FROM GRAPH_TABLE ( EBA_SAMPLE_GRAPH
    MATCH (worker is employee) -[w is works_for]-> (boss is employee)
    COLUMNS (vertex_id(worker) AS employee, edge_id(w) AS e, vertex_id(boss) AS manager )
)') as result_column FROM DUAL;
```
The function will return the result in the JSON format the APEX plugin uses to visualize graphs. See the sample app for an example how plugin and function can be used together.

ORA_SQLGRAPHL_TO_JSON Function with Pagination
==============================================
To use Pagination in APEX, please turn on PaginationPresent in Attribute Page. 

We also need to add page_start and page_size in helper function.

Here is an example of the helper function with page parameters.
```
CREATE OR REPLACE FUNCTION CUST_SQLGRAPH_JSON (
  QUERY VARCHAR2,
  PAGE_START NUMBER DEFAULT -1,
  PAGE_SIZE NUMBER DEFAULT -1
  ) RETURN CLOB
  AUTHID CURRENT_USER IS
  INCUR    SYS_REFCURSOR;
  L_CUR    NUMBER;
  RETVALUE CLOB;
BEGIN
  OPEN INCUR FOR QUERY;
  L_CUR := DBMS_SQL.TO_CURSOR_NUMBER(INCUR);
  RETVALUE := ORA_SQLGRAPH_TO_JSON(L_CUR, PAGE_START, PAGE_SIZE);
  DBMS_SQL.CLOSE_CURSOR(L_CUR);
  RETURN RETVALUE;
END;
```
When calling the helper function, we need to bind variables to page_start and page_size. page_start value is automatcially set. The value of page_size is set in Attribute page or it will use default page size in plugin.

```
SELECT CUST_SQLGRAPH_JSON(
  'SELECT employee, e, manager
  FROM GRAPH_TABLE ( test_graph
  MATCH (worker) -[w]-> (boss)
  COLUMNS (vertex_id(worker) AS employee, edge_id(w) AS e, vertex_id(boss) AS manager )
  )', 
  :page_start, 
  :page_size
) as result_column from dual;
```
The function will return the grah in seperate pages. See the sample app for an example how plugin and function can be used together.
