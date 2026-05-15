This application shows all Oracle Cloud Applications REST Data Sources in the apps in your workspace and helps you retrieve useful, searchable reference info about them including business object attributes and child objects available. It also lets you discover what other REST endpoints are available for use. Easily copy REST endpoint URLs for List of Values, child objects, and other available services to the clipboard for use in the APEX Builder's Create REST Data Source wizard.

Installation
------------------------------------
### APEXlang Import
1. Open the `apexlang/` folder in this directory.
2. Use the generated project directory inside `apexlang/` as the import source.
3. In SQLcl, connect to the target workspace schema and run `apex import -input apexlang/<app-alias>`.
4. To validate the project before import, run `apex validate -input apexlang/<app-alias>` in SQLcl.

### Legacy SQL Import
1. Open the `sql/` folder in this directory.
2. Download the `.zip` file, or use the `.sql` file if you prefer a SQL import.
3. In Oracle APEX App Builder, navigate to **Import** and import the application.
4. Continue through the import wizard to finish installing the app.
