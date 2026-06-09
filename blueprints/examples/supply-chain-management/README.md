# Blueprint Application Scaffolding for Oracle APEX

This package helps Oracle APEX developers generate an initial application
scaffold for inventory and warehouse management from functional requirements
and schema metadata.

For a hands-on walkthrough, start with [QUICKSTART.md](QUICKSTART.md). The
quickstart shows how to use the SCM example in this repository, install the
database objects, generate a blueprint, and import it into APEX.

## What Is An APEX Blueprint?

An APEX blueprint is an importable application design artifact. It describes the
application APEX should create: pages, navigation, regions, reports, forms,
charts, filters, actions, and supporting page behavior.

Oracle APEX imports the blueprint as an **Application Blueprint** and creates a
baseline application. The scaffolded application is a starting point, not a
finished implementation.

In this workflow, the blueprint is generated from functional requirements and
schema metadata. You can inspect it before creating the application and
regenerate it when those inputs change.

## What This Package Does

This package provides a blueprint-based application scaffolding workflow for an
APEX Inventory and Warehouse Management application:

- functional requirements describe what users need to do
- schema metadata describes the database objects and their business meaning
- a blueprint generator converts those inputs into an APEX blueprint
- Oracle APEX imports the blueprint and creates the scaffolded application

The scaffolded application is named **APEX Inventory and Warehouse
Management**. It supports practical warehouse operations and inventory control
across multiple warehouses:

- master data maintenance for warehouses, storage locations, business partners,
  users, roles, controlled lists, and items
- inventory control for balances, lots, serials, replenishment, stock counts,
  and stock adjustments
- warehouse operations for receiving, putaway, stock movement, transfers,
  outbound fulfillment, allocations, and returns
- traceability and reporting across inventory transactions and serial lifecycle
  events
- role-based access for administrators, warehouse managers, inventory
  controllers, operations users, quality users, and business viewers

The assistant does not directly modify your APEX application. It produces the
blueprint; APEX turns that blueprint into the application.

## The Generation Process

```text
Functional Requirements
        |
        v
Schema Metadata
        |
        v
Blueprint Generator
        |
        v
APEX Blueprint
        |
        v
APEX Application Blueprint Import
        |
        v
Scaffolded Oracle APEX Application
```

The process is intentionally input-driven:

1. Write functional requirements for the application workflow, pages, reports,
   forms, dashboards, navigation, and user outcomes.
2. Provide schema metadata for the tables, columns, relationships, labels,
   comments, constraints, annotations, and display hints.
3. Use the blueprint generator with those inputs to produce an APEX blueprint.
4. Review the generated blueprint as the proposed application design.
5. Import the blueprint into Oracle APEX as an **Application Blueprint**.
6. Iterate by updating the functional requirements or schema metadata and
   regenerating the blueprint.

This gives teams a repeatable path from requirements and schema metadata to an
inspectable scaffold before the application is created in APEX.

## Source Files And Outputs

The package-provided prompt files define how blueprints should be generated.
Use them with this SCM example when they are available in your blueprint
generation package:

| Path | Purpose |
| --- | --- |
| `blueprint_prompt.md` or `prompt/blueprint-prompt.md` | Canonical blueprint generator prompt used to produce an APEX blueprint. |
| `apex-fa-icons-allowlist.txt` or `prompt/apex-fa-icons-allowlist.txt` | Approved Font APEX icon class allowlist for generated blueprint icon choices, when provided. |

The SCM example shows the expected folder layout for an application blueprint
generation run:

| Path | Purpose |
| --- | --- |
| `README.md` | Overview of this SCM blueprint scaffolding package. |
| `QUICKSTART.md` | Hands-on workflow for installing database objects, generating the blueprint, and importing into APEX. |
| `prompt-input/scm_functional_requirement.md` | Functional requirements for the APEX Inventory and Warehouse Management application. |
| `prompt-input/scm_schema_metadata.md` | Table, column, relationship, constraint, display, and semantic metadata used by the generator. |
| `prompt-output/scm_generated_blueprint.md` | Reference generated APEX blueprint output. |
| `database-objects/` | Database setup scripts for the SCM schema, seed data, operational data, and uninstall. |

The prompt files are shared generator inputs supplied outside this SCM example.
This example supplies its own functional requirements, schema metadata, and a
sample generated blueprint output. When a blueprint includes APEX icons, use
the package-provided icon allowlist when it is available.

The database objects are split by target database version:

| Path | Purpose |
| --- | --- |
| `database-objects/26ai/` | Oracle Database 26ai scripts with native SQL `boolean` columns and 26ai table/column `annotations`. |
| `database-objects/19c/` | Oracle Database 19c-compatible scripts using `comment on table`, `comment on column`, and string flag columns. |

The folder contents are intentionally almost identical. The main difference is
in `01_scm_datamodel.sql`.

| Area | `26ai/` | `19c/` |
| --- | --- | --- |
| Metadata | Uses 26ai table and column `annotations` syntax. | Uses `comment on table` and `comment on column` statements with the same metadata keys and values. |
| Flag columns | Uses native SQL `boolean` columns with `default true` or `default false`. | Uses `varchar2(5 char)` columns with default `'true'` or `'false'`. |
| Flag validation | Enforced by the Boolean datatype. | Enforced with explicit `check (... in ('true', 'false'))` constraints. |
| Data scripts | Uses true/false values directly with the 26ai Boolean columns. | Uses the same true/false values as string-compatible values. |
| Object model | Same table, view, index, and constraint intent. | Same object model, adjusted only for 19c SQL compatibility. |

Future examples should follow the same pattern under a dedicated example
folder, with source inputs, generated output, and database objects kept
separate.

## Get Started

Use [QUICKSTART.md](QUICKSTART.md) to run the SCM Inventory and Warehouse
Management example. It references the files in `prompt-input/`, explains which
SQL scripts to run, provides the prompt shape for generation, and describes how
to import the generated blueprint into Oracle APEX.
