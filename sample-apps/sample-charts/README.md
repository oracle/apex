# Sample Charts

This application highlights the charting capabilities of Oracle APEX. It demonstrates how you can enhance your applications to visually represent your data, using declarative and plug-in based charting solutions. Supported chart types include Area, Bar, Box Plot, Bubble, Combination, Donut, Funnel, Gantt, Line, Line with Area, Pie, Polar, Pyramid, Radar, Range, Status Meter Gauge, Stock, and Scatter. It features a number of our new native charts, based on Oracle JavaScript Extension Toolkit (JET) Data Visualizations. The charts can be easily created and modified using native Oracle APEX wizards. Chart attributes such as color, formatting, axes and legend settings can be easily modified to suit your requirements. This application also contains a number of plug-in based alternative charting solutions.

Use this application to familiarize yourself with the various charting options available.

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
