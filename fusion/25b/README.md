# Fusion Apps REST Source Catalog 25B Reference

Oracle Fusion Cloud Applications provide a catalog of REST API's that you can use to view and manage data stored in the Oracle Fusion Cloud. This catalog of REST API's is available across different Fusion modules. Fusion modules with REST API's include:
* Human Capital Management (HCM)
* Supply Chain Management (SCM)
* Engagement (CRM)
* Common Features (Common)
* Financials 
* Risk Management and Compliance (GRC)
* Loyalty 
* Project Portfolio Management (PPM)
* Procurement (PRC)
* Public Sector (PSC)
* Student Management (StudentMC)

Oracle APEX provides a REST Catalog zip file for each Fusion release, for example 25B_apex_rest_catalog_sqls.  The APEX REST Catalog zip contains a group of sql files that allow for easy import of the Fusion REST API endpoints into APEX database. After completing the steps for importing the catalog, it is easy to search for information on the REST API needed to build your Fusion integration application. You can create a REST Datasource with the Fusion API needed from the REST Catalog.

**Steps for importing the REST Catalog using SQLcl**

1. Download REST Catalog zip file for your FA Release (For example 25B) from GitHub and unzip it into a local folder (For example, /scratch/apexcatalog)

2. Launch SQLcl with the **parsing schema user** for your APEX workspace and run the script below to import all REST Catalog sqls. Ensure that you specify correct REST Catalog group and workspace for your environment. 

```sql
begin
  apex_util.set_workspace('WKSP_DBATP1WS1');
  apex_application_install.set_rest_source_catalog_group('FUSION');
end;
/
```

```sql
@/scratch/rest-source-catalogs/fusion/25b/fa-hcm-rest-catalog-25b.sql
```

3. Repeat above command for each catalog sql that you want to import. 


**Steps for importing the REST Catalog using APEX AppBuilder**

Oracle recommends you import the REST Catalog using SQLcl. If however you need to import the REST Catalog using APEX AppBuilder then follow these steps:

1. Login to APEX where APEX Instance is integrated with the Fusion Environment
2. Navigate to AppBuilder -> Workspace Utilities -> All Workspace Utilities
3. Select "REST Source Catalogs".
4. Click "Create Group" to create a REST Source Catalog Group if needed.
4. Click on "Import Catalog" under "Tasks".
5. Drag and drop the Catalog sql file, for example, '/scratch/rest-source-catalogs/fusion/25b/fa-hcm-rest-catalog-25b.sql'
6. Import the desired Catalog sql file.



After completing the import of Fusion REST Catalog to your APEX workspace, you can create REST Data Sources from the Catalog.

**Steps for creating REST Data Sources**

1. Navigate to Application -> Shared Components → REST Data Sources → Create
2. Select REST Source Catalog → Select Catalog and Browse Services → Select Service
3. Under Web Credentials, select your Fusion credentials and create REST Data Source
4. Verify the REST Data Source is created.
5. Your REST Data Source is created with a placeholder Remote Server, for example 'facatalog_restapi_baseurl-example-com'.
6. Replace the sample Remote Server with the Remote Server created for your Fusion integration
7. Login to your Fusion instance 
8. Test your Rest Data Source. 


Oracle recommends you import the complete Fusion REST Catalog into your APEX workspace to easily search against your Fusion REST API's and facilitate ease of use in configuring your REST Data Sources with your Fusion API endpoints. 


