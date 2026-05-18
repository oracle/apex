The Strategic Planner is designed to monitor projects, releases, contributors, reviews, and activities, making it particularly useful for managing teams of developers working on larger projects. This tool complements platforms like Jira and Confluence, or similar project tracking tools. Its user interface features faceted search, row-menus, interactive reporting, and other contemporary UX designs. You can use the tool as-is to help manage the application development projects or customize it to meet your specific requirements.

The first Administrative user will be created during the 

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
