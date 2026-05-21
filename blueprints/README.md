# Blueprint Generation for Oracle APEX

This package helps Oracle APEX developers generate an APEX application
blueprint from written specifications and schema metadata.

For a hands-on walkthrough, start with [QUICKSTART.md](QUICKSTART.md). The
quickstart shows how to use the Order Entry example under `examples/`, install
the sample database objects, generate a blueprint, and import it into APEX.

## What Is An APEX Blueprint?

An APEX blueprint is an importable application design artifact. It describes the
application APEX should create: pages, navigation, regions, reports, forms,
charts, filters, actions, and supporting page behavior.

In this workflow, the blueprint is generated from source documents. It is useful
because you can inspect it before creating the application, keep it for
traceability, and regenerate it when the specification changes.

The blueprint is not the durable source of truth. Durable changes should go back
into the functional requirements or schema metadata, then a new blueprint should
be generated.

## What This Package Does

This package provides a Spec Driven Development workflow for bootstrapping APEX
applications:

- functional requirements describe what users need to do
- schema metadata describes the database objects and their business meaning
- a blueprint generator skill converts those inputs into an APEX blueprint
- Oracle APEX imports the blueprint and creates the application

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
Oracle APEX Application
```

The process is intentionally specification-first:

1. Write functional requirements for the application workflow, pages, reports,
   forms, dashboards, navigation, and user outcomes.
2. Provide schema metadata for the tables, columns, relationships, labels,
   comments, constraints, annotations, and display hints.
3. Use the blueprint generator with those inputs to produce an APEX blueprint.
4. Review the generated blueprint as the proposed application design.
5. Import the blueprint into Oracle APEX as an **Application Blueprint**.
6. Iterate by updating the functional requirements or schema metadata and
   regenerating the blueprint.

This gives teams a repeatable path from intent to an inspectable design artifact
before the application is created in APEX.

## Source Files And Outputs

The shared prompt files define how blueprints should be generated:

| Path | Purpose |
| --- | --- |
| `prompt/blueprint-prompt.md` | Canonical blueprint generator prompt used to produce APEX Application Blueprint Markdown. |
| `prompt/apex-fa-icons-allowlist.txt` | Approved Font APEX icon class allowlist for generated blueprint icon choices. |

The Order Entry example shows the expected folder layout for an application
blueprint generation run:

| Path | Purpose |
| --- | --- |
| `examples/order-entry/README.md` | Overview of the generated Order Entry example app. |
| `examples/order-entry/skills-input/` | Functional requirements and schema metadata used by the generator. |
| `examples/order-entry/skills-output/` | Reference generated blueprint output. |
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
