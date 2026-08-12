This application demonstrates how to work with JSON data using modern Oracle Database features. It provides a structured and intuitive environment to explore JSON sources, transform data, and present it through rich and interactive components.

The application showcases key capabilities such as JSON columns, JSON collection tables, and SQL/JSON functions, combined with relational duality views to bridge structured and semi-structured data.

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
