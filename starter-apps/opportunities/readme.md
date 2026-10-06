# Opportunities

Opportunities helps you to track your sales opportunities throughout their lifespan, while giving sales management a quick and easy tool to both see the current state of the sales pipeline and analyze past sales performance.

With Opportunities, you can define accounts, contacts, territories, products and competitors and combine these to define leads and opportunities. Opportunities includes a rich set of reports on opportunities, pipeline analysis, key accounts, projected closing dates and different snapshots of sales by rep.

All reports in Opportunities are completely customizable by users, allowing for extended analysis and charting based on these reports.

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
