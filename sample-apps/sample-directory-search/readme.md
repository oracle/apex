# Sample Directory Search

This application showcases search functionality on an employee directory, using APEX and Oracle Text. Search functionality, like fuzzy search, name searching, progressive relaxation and relevance scoring is utilized by APEX components like Search Configurations, Content Row Regions or Faceted Search.

Prerequisites
------------------------------------
- Oracle AI Database 26ai or higher
- Oracle Text available to the workspace schema (CTXAPP role granted)

Installation
------------------------------------
### APEXlang Import (Recommended)
**For App Builder UI**
1. Open the `apexlang/` folder in this directory.
2. Download `apexlang/sample-directory-search.zip`.
3. In Oracle APEX App Builder, navigate to **Import** and upload the APEXlang ZIP file.
4. Continue through the import wizard to finish installing the app.

**For SQLcl**
1. Open the `apexlang/` folder in this directory.
2. Use the generated project directory inside `apexlang/` as the import source.
3. In SQLcl, connect to the target workspace schema and run `apex import -input apexlang/sample-directory-search`.
4. To validate the project before import, run `apex validate -input apexlang/sample-directory-search` in SQLcl.

### Legacy SQL Import
1. Open the `sql/` folder in this directory.
2. Download the `.zip` file, or use the `.sql` file if you prefer a SQL import.
3. In Oracle APEX App Builder, navigate to **Import** and import the application.
4. Continue through the import wizard to finish installing the app.
