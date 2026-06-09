# Quickstart: SCM Inventory and Warehouse Management Example

This guide shows how to use the bundled SCM Inventory and Warehouse Management
example to install sample database objects, generate an APEX blueprint, import
it into APEX, and iterate from the functional requirements and schema metadata.

For a conceptual overview of blueprint application scaffolding, see
[README.md](README.md).

## Before You Start

You need:

- an Oracle APEX workspace
- access to a parsing schema where you can install the sample database objects
- an AI coding assistant that can use local skills or read local files
- access to APEX SQL Workshop, SQLcl, SQL Developer, or another Oracle SQL tool
- Oracle Database 19c or Oracle Database 26ai

Use a strong reasoning-capable assistant for final blueprint generation because
the scaffolded application design depends on careful instruction following and
long-context handling.

Security note: before sharing source files with any assistant or external tool,
remove real names, emails, customer data, credentials, and production-only
schema details. Use only approved tooling for restricted or internal data.

## Run The SCM Example

Start here if you are using this package for the first time:

1. Review the SCM source files:
   - `prompt-input/scm_functional_requirement.md`
   - `prompt-input/scm_schema_metadata.md`
   - `prompt-output/scm_generated_blueprint.md`
2. Install one matching database script set from `database-objects/`.
3. Generate a working blueprint with the instructions in **Generate The
   Blueprint**.
4. Import the generated blueprint into APEX as an **Application Blueprint**.
5. If the generated app is not right, update the functional requirements or
   schema metadata and regenerate.

## Install Database Objects

Run the scripts from APEX SQL Workshop, SQLcl, SQL Developer, or another Oracle
SQL tool connected to the target parsing schema. Always run the schema script
before the seed-data and operational-data scripts.

Each version folder contains the same script sequence:

1. `01_scm_datamodel.sql`
2. `02_scm_sample_dataload.sql`
3. `03_scm_operational_dataload.sql`
4. `04_scm_uninstall.sql`

For Oracle 19c, run:

1. `database-objects/19c/01_scm_datamodel.sql`
2. `database-objects/19c/02_scm_sample_dataload.sql`
3. `database-objects/19c/03_scm_operational_dataload.sql`

For Oracle 26ai, run:

1. `database-objects/26ai/01_scm_datamodel.sql`
2. `database-objects/26ai/02_scm_sample_dataload.sql`
3. `database-objects/26ai/03_scm_operational_dataload.sql`

Use the 19c scripts for the broadest compatibility. Use the 26ai scripts when
your target database is Oracle Database 26ai.

The datamodel script creates the SCM schema objects, reporting views, and
supporting indexes. The sample data script loads foundation and setup data:
business partners, partner sites, warehouses, locations, users, roles, lists,
items, policies, replenishment alerts, lots, and serials. The operational data
script loads balances, receiving, movements, transfers, fulfillment, returns,
counts, adjustments, and exceptions.

Use `04_scm_uninstall.sql` only when you need to drop the SCM views, indexes,
tables, and spatial metadata before reinstalling.

## Generate The Blueprint

Paste this instruction into your AI assistant:

```text

You are given
 1. `./prompt-input/scm_schema_metadata.md` for all underlying database objects
 2. `./prompt-input/scm_functional_requirement.md` for business context
 3. the package-provided APEX icon allowlist, when available

#Task
- Generate a complete APEX blueprint strictly using the structure, style, and requirements in the package-provided blueprint prompt.
- When selecting icons, use the package-provided APEX icon allowlist whenever it is available, but do not treat its absence as a blocker.

#Rules
- Do not invent any entities, features, or assumptions beyond the source files unless directed by the prompt.
- Emit the final blueprint as markdown file `./scm_generated_blueprint.md`

```

After generation, inspect the output and optionally compare it with
`prompt-output/scm_generated_blueprint.md`.

If the blueprint contains validation findings, paste the full findings back into
the assistant and ask it to fix the blueprint using the same prompt and inputs.

## Import Into APEX

Open Oracle APEX Builder and go to **App Builder > Import**.

On the **Specify File** step:

- choose the generated blueprint file
- set **File Type** to **Application Blueprint**
- keep **File Character Set** as **Unicode UTF-8**
- continue through the import wizard

Import into a workspace whose parsing schema has access to the SCM database
objects installed earlier.

If APEX reports an import error, copy the exact error text or full error log
back into your assistant and ask it to fix the generated blueprint using the
same prompt and inputs.

## Next Steps

After the SCM loop works, try a small edit to the functional requirements or
schema metadata, regenerate, and import again. Good first edits include changing
the application title, adding a dashboard metric, changing report columns,
adding a filter, or improving a table or column comment.

For your own app, use the same pattern with your own files:

- `myapp-functional-requirements.md`
- `myapp-schema-metadata.md`
- `myapp-blueprint.md`

Start with a few core pages and workflows, then add more once the generated
blueprint imports cleanly.

## Troubleshooting

| What you see | What to do |
| --- | --- |
| Generated output is incomplete or truncated | Regenerate with the strongest reasoning-capable assistant available. |
| Generated design intent is wrong | Improve the functional requirements or schema metadata first, then regenerate. |
| Blueprint contains `## Validation Findings` | Copy the full findings back into the assistant and ask it to fix the blueprint using the same prompt and inputs. |
| APEX shows **Blueprint Import Error** with parse errors | Use the embedded **copy the full error log to the clipboard** link, paste the full log back into the assistant, and ask it to fix the blueprint using the same prompt and inputs. |
| APEX import error mentions missing database objects or privileges | Install the schema objects, grant access, or import into a workspace whose parsing schema can access the objects. |
| APEX says at least one workspace schema must be REST enabled | REST enable a schema associated with the workspace. See the steps below. |
| Output differs from `prompt-output/scm_generated_blueprint.md` | Some variation is normal. The reference blueprint is an example, not a byte-for-byte replay target. |
| Imported app is not what you expected | Update the functional requirements or schema metadata first, then regenerate. |

### APEX Workspace Schema Must Be REST Enabled

If APEX reports this error:

```text
1 error has occurred
In order to import Blueprints, at least one schema associated with this workspace must be REST enabled.
```

REST enable a schema associated with the workspace:

1. Open **RESTful Services** in APEX Builder.
2. If APEX shows **Schema not registered with ORDS**, use **Register Schema
   with ORDS**.
3. Return to **App Builder > Import** and import the blueprint again.
