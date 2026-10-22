# Faceted Search Patterns

The Oracle APEX Faceted Search Pattern Catalog is a reference application for developers and designers. It shows ways to help users find, filter, review, and compare records by combining Faceted Search with different result components and interactions.

Installation
------------------------------------
### APEXlang Import (Recommended)
**For App Builder UI**
1. Open the `apexlang/` folder in this directory.
2. Download `apexlang/oracle-apex-faceted-search-patterns.zip`.
3. In Oracle APEX App Builder, navigate to **Import** and upload the APEXlang ZIP file.
4. Continue through the import wizard to finish installing the app.

**For SQLcl**
1. Open the `apexlang/` folder in this directory.
2. Use the generated project directory inside `apexlang/` as the import source.
3. In SQLcl, connect to the target workspace schema and run `apex import -input apexlang/oracle-apex-faceted-search-patterns`.
4. To validate the project before import, run `apex validate -input apexlang/oracle-apex-faceted-search-patterns` in SQLcl.

### Legacy SQL Import
1. Open the `sql/` folder in this directory.
2. Download the `.zip` file, or use the `.sql` file if you prefer a SQL import.
3. In Oracle APEX App Builder, navigate to **Import** and import the application.
4. Continue through the import wizard to finish installing the app.
