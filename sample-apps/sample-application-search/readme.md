This application showcases the Application Search feature, introduced with APEX 22.2. Search Configurations and Search Regions allow developers to add robust search engine functionality to their APEX applications. Users can easily search across multiple data sources, and the results are displayed in a unified search results region. The application illustrates how Application Search works in general as well as in conjunction with other APEX components and database features, such as Oracle Text.

Installation
------------------------------------
### APEXlang Import (Recommended)
**For App Builder UI**
1. Open the `apexlang/` folder in this directory.
2. Download `apexlang/<app-alias>.zip`.
3. In Oracle APEX App Builder, navigate to **Import** and upload the APEXlang ZIP file.
4. Continue through the import wizard to finish installing the app.

**For SQLcl**
1. Open the `apexlang/` folder in this directory.
2. Use the generated project directory inside `apexlang/` as the import source.
3. In SQLcl, connect to the target workspace schema and run `apex import -input apexlang/<app-alias>`.
4. To validate the project before import, run `apex validate -input apexlang/<app-alias>` in SQLcl.

### Legacy SQL Import
1. Open the `sql/` folder in this directory.
2. Download the `.zip` file, or use the `.sql` file if you prefer a SQL import.
3. In Oracle APEX App Builder, navigate to **Import** and import the application.
4. Continue through the import wizard to finish installing the app.
