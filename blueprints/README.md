# Blueprint Application Scaffolding for Oracle APEX

This package helps Oracle APEX developers generate an initial application
scaffold from functional requirements and schema metadata.

For a hands-on walkthrough, start with [QUICKSTART.md](QUICKSTART.md). The
quickstart shows how to use the Order Entry example under `examples/`, install
the sample database objects, generate a blueprint, and import it into APEX.

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

This package provides a blueprint-based application scaffolding workflow:

- functional requirements describe what users need to do
- schema metadata describes the database objects and their business meaning
- a blueprint generator converts those inputs into an APEX blueprint
- Oracle APEX imports the blueprint and creates the scaffolded application

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

The shared prompt files define how blueprints should be generated:

| Path | Purpose |
| --- | --- |
| `prompt/blueprint-prompt.md` | Canonical blueprint generator prompt used to produce APEX Application Blueprint Markdown. |
| `prompt/apex-fa-icons-allowlist.txt` | Approved Font APEX icon class allowlist for generated blueprint icon choices. |

The Oracle APEX 26.1 Blueprint package is also available here:

- <https://github.com/oracle/apex/tree/26.1/blueprints>

The Order Entry example shows the expected folder layout for an application
blueprint generation run:

| Path | Purpose |
| --- | --- |
| `examples/order-entry/README.md` | Overview of the generated Order Entry example app. |
| `examples/order-entry/prompt-input/` | Functional requirements and schema metadata used by the generator. |
| `examples/order-entry/prompt-output/` | Reference generated blueprint output. |
| `examples/order-entry/database-objects/` | Database setup scripts for the sample schema and seed data. |

The prompt files are shared generator inputs. Each example supplies its own
functional requirements, schema metadata, and a sample generated blueprint
output. When a blueprint includes APEX icons, use icon classes from
`prompt/apex-fa-icons-allowlist.txt`.

Future examples should follow the same pattern under `examples/<app-name>/`.

## Get Started

Use [QUICKSTART.md](QUICKSTART.md) to run the bundled Order Entry example. It
references the files in `examples/order-entry/`, explains which SQL scripts to
run, provides the prompt shape for generation, and describes how to import the
generated blueprint into Oracle APEX.
