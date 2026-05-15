# APEX PWA Reference

Oracle APEX enables developers to build Progressive Web Apps (PWAs) that can be installed on any desktop or mobile device to deliver a more native app experience. This application serves as a reference for key PWA features in APEX and how you can use them in your own apps.

Install this application to view all the APEX PWA features that can be incorporated into an application.

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
