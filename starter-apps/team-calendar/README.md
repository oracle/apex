# Team Calendar

The Team Calendar application gives you a way to list all your events on an easy to use, Web-accessible calendar. The Home page for the Team Calendar displays events in a monthly, weekly or daily format, with embedded links to detailed information about each event. You can also create customized reports on events.

Each event is classified by event type and automatically displayed in an associated color. You can create your own event types or modify existing event type attributes.

You can send emails to individuals or groups with information about upcoming meetings, and you have the ability to create your own groups to match your needs.

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
