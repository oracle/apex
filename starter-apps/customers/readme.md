# Customers

Customers helps you improve your customer interactions by offering a centralized repository of information about your customers.

Each customer can have multiple contacts and be associated with multiple products. Each contact has a variety of standard attributes, such as category, geography, industry and status, as well as the ability to add tags to a customer for further ad hoc classification. You can indicate the reference status for a customer and enter free form text as a customer profile.

You can create activity records to log interactions with each customer. Customers includes a variety of reports which let you view recent activities, status changes and tags. You can also use interactive reports to give your users the ability to filter and shape customer, contact, activity and interaction data.

Customers gives you the ability to define your own standards for attributes such as categories, statuses, customer types, activity types, and products, allowing you to create a customized version of Customers to meet your own needs.

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
