# Forms Patterns

Forms Patterns is a reference application for developers and designers choosing how users enter and maintain records in Oracle APEX. Four examples share a fictional expense-report dataset and use Universal Theme 42 with Iris (Patterns).

## Explore the patterns

- **Simple Form:** create and edit a category in a modal with required and unique-name validation, an optional description, and an Active switch.
- **Form with Attachment:** upload PNG, JPEG, or PDF receipts through a native drop zone, preview saved documents, and edit their details.
- **Advanced Form:** find reports with Faceted Search and newest-first Content Rows, then use a full-page form with four sections, dates, choices, signed amounts, long CLOB text, and an Add Expense drawer.
- **Editable Grid:** add, edit, and delete expense lines using native cell editing, lookup columns, row actions, and automatic row processing.

Open Help on each pattern page for guidance on when to use it, its components, and how its actions work together.

## Requirements

Oracle APEX 26.2 or later, with a parsing schema that can create the supplied tables and indexes.

## Installation

### APEXlang import

1. Download `apexlang/sample-forms.zip`.
2. In App Builder, choose **Import** and upload the ZIP.
3. Complete the application import, then install its **Supporting Objects** to create the sample tables, data, and receipts.

For SQLcl, use the complete `apexlang/sample-forms/` project directory. In a fresh parsing schema, enable Supporting Objects installation before importing. Replace the placeholders with your workspace, parsing schema, and an unused application ID:

```sql
begin
    apex_application_install.set_auto_install_sup_obj(true);
end;
/
apex import -input apexlang/sample-forms -workspace YOUR_WORKSPACE -schema YOUR_SCHEMA -id YOUR_APP_ID
```

If Supporting Objects were not installed during the import, open the imported application's **Supporting Objects** in App Builder and install them before opening the data-entry examples.

### SQL import

Import `sql/forms-patterns.sql` through App Builder, or download `sql/forms-patterns.zip` for the split SQL export. Install the supplied Supporting Objects when prompted.

## Sample data and Supporting Objects

Supporting Objects create four `SFM_EXPENSE_*` tables containing seven reports, sixteen expense lines, six categories, and four image/PDF receipts. All names, merchants, and documents are fictional. The examples demonstrate data entry; they do not implement expense approvals or payments.

The app uses native **No Authentication**, so visitors can edit its sample records and view receipts without signing in. Use fictional values and demonstration documents. All patterns in an installation share the same data.

When updating an installation that already contains these tables, reuse its existing Supporting Objects rather than rerunning the creation and seed scripts. Deinstalling Supporting Objects removes the four application tables and their data.
