# SCM DDL Scripts

This folder contains Oracle SQL scripts for the SCM Inventory and Warehouse Management schema. The scripts are split by target database version because the 26ai datamodel uses newer SQL metadata syntax that is not available in Oracle Database 19c.

## Folder Layout

### `26ai/`

Use this folder for Oracle Database 26ai.

The 26ai datamodel keeps the original schema definition pattern:

- Native SQL `boolean` columns for true/false flags.
- 26ai `annotations` clauses on tables and columns to describe labels, descriptions, display behavior, semantic types, LOV hints, and AI context.
- The same table, view, index, sample data, operational data, and uninstall structure as the 19c folder.

### `19c/`

Use this folder for Oracle Database 19c.

The 19c datamodel is generated from the 26ai datamodel but replaces unsupported 26ai syntax:

- 26ai `annotations` clauses are converted to `comment on table` and `comment on column` statements.
- Native SQL `boolean` columns are converted to `varchar2(5 char)` flag columns.
- Each converted flag column has a check constraint enforcing `('true', 'false')`.
- Sample and operational data scripts use the same values as 26ai, so true/false data remains aligned with the converted string flag columns.

## Script Order

Run the scripts in numeric order for the target database version:

1. `01_scm_datamodel.sql`
2. `02_scm_sample_dataload.sql`
3. `03_scm_operational_dataload.sql`

Use `04_scm_uninstall.sql` only when you need to drop the schema objects created by the datamodel and data scripts.

## File Contents

### `01_scm_datamodel.sql`

Creates the SCM schema objects:

- Core reference data tables for business partners, partner sites, warehouses, users, roles, and business lists.
- Warehouse and item master tables for areas, storage locations, items, replenishment policies, lots, and serials.
- Operational transaction tables for inventory balances, receipts, movements, transfers, outbound orders, allocations, returns, stock counts, adjustments, and exceptions.
- Reporting views for inventory transactions and serial lifecycle events.
- Supporting indexes for common lookup, status, and operational access paths.

### `02_scm_sample_dataload.sql`

Loads foundational and sample setup data. The script header identifies this as file 1 of the reduced live-export package.

Data includes:

- Business partners and partner sites.
- Warehouses, areas, and storage locations.
- Application users, roles, and role assignments.
- Business list values and configuration rows.
- Item master data, warehouse policies, replenishment alerts, inventory lots, and item serials.

This file must run before `03_scm_operational_dataload.sql` so identity-generated primary keys and downstream foreign keys remain aligned.

### `03_scm_operational_dataload.sql`

Loads operational transaction data. The script header identifies this as file 2 of the reduced live-export package.

Data includes:

- Inventory balances.
- Inbound receipts and receipt lines.
- Stock movements and transfers.
- Outbound orders, order lines, and allocations.
- Returns and return lines.
- Stock counts, count lines, adjustments, adjustment lines, and operational exceptions.

### `04_scm_uninstall.sql`

Drops the SCM views, indexes, tables, and spatial metadata created by the DDL package. It uses safe dynamic drops so rerunning the uninstall does not fail when an object is already absent.

## 26ai vs 19c Differences

The folder contents are intentionally almost identical. The main difference is in `01_scm_datamodel.sql`.

| Area | `26ai/` | `19c/` |
|---|---|---|
| Metadata | Uses 26ai table and column `annotations` syntax. | Uses `comment on table` and `comment on column` statements with the same metadata keys and values. |
| Flag columns | Uses native SQL `boolean` columns with `default true` or `default false`. | Uses `varchar2(5 char)` columns with default `'true'` or `'false'`. |
| Flag validation | Enforced by the Boolean datatype. | Enforced with explicit `check (... in ('true', 'false'))` constraints. |
| Data scripts | Uses true/false values directly with the 26ai Boolean columns. | Uses the same true/false values as string-compatible values. |
| Object model | Same table, view, index, and constraint intent. | Same object model, adjusted only for 19c SQL compatibility. |

The data load and uninstall scripts are the same across both folders. Only the datamodel script differs because it contains the database-version-specific DDL syntax.
