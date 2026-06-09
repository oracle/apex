# Quickstart: Order Entry Example

This guide shows how to use the bundled Order Entry example to install sample
database objects, generate an APEX blueprint, import it into APEX, and iterate
from the functional requirements and schema metadata.

For a conceptual overview of blueprint application scaffolding, see
[README.md](README.md).

## Before You Start

You need:

- an Oracle APEX workspace
- access to a parsing schema where you can install the sample database objects
- an AI coding assistant that can read local files or accept file uploads

Use a strong reasoning-capable assistant for final blueprint generation because
the output depends on careful instruction following and long-context handling.

## Run The Order Entry Example

Start here if you are using this package for the first time:

1. Review the Order Entry source files:
   - `examples/order-entry/prompt-input/order-entry-functional-requirements.md`
   - `examples/order-entry/prompt-input/order-entry-schema-metadata.md`
   - `examples/order-entry/prompt-output/order-entry-blueprint.md`
2. Install one matching database script pair from
   `examples/order-entry/database-objects/`.
3. Generate a working blueprint with the prompt in **Generate The Blueprint**.
4. Import the generated blueprint into APEX as an **Application Blueprint** to
   create the scaffolded application.
5. If the generated app is not right, update the functional requirements or
   schema metadata and regenerate.

## Install Database Objects

Run the scripts from APEX SQL Workshop, SQLcl, SQL Developer, or another Oracle
SQL tool connected to the target parsing schema. Always run the schema script
before the seed-data script.

For Oracle 19c, run:

1. `examples/order-entry/database-objects/order-entry-schema-19c.sql`
2. `examples/order-entry/database-objects/order-entry-seed-data-19c.sql`

For Oracle 26ai, run:

1. `examples/order-entry/database-objects/order-entry-schema-26ai.sql`
2. `examples/order-entry/database-objects/order-entry-seed-data-26ai.sql`

Use the 19c scripts for the broadest compatibility. Use the 26ai scripts when
your target database is Oracle Database 26ai.

## Generate The Blueprint

Paste this instruction into your AI assistant:

```text
Using the prompt and icon allowlist files:
- prompt/blueprint-prompt.md
- prompt/apex-fa-icons-allowlist.txt

Generate and overwrite:
- <full-path-to-output-blueprint.md>

Using:
- examples/order-entry/prompt-input/order-entry-functional-requirements.md
- examples/order-entry/prompt-input/order-entry-schema-metadata.md

Don't read any other files unless directed by the prompt.
```

Replace `<full-path-to-output-blueprint.md>` with the complete path and filename
for your generated blueprint, for example `C:\my-work\order-entry-blueprint.md`.
Generate your working blueprint outside `examples/order-entry/prompt-output/`
unless you intentionally want to replace the bundled reference blueprint.

After generation, inspect the output and optionally compare it with
`examples/order-entry/prompt-output/order-entry-blueprint.md`.

If the blueprint contains validation findings, paste the full findings back into
the assistant and ask it to fix the blueprint using the same prompt and inputs.

## Import Into APEX

Open Oracle APEX Builder and go to **App Builder > Import**.

On the **Specify File** step:

- choose the generated blueprint file
- set **File Type** to **Application Blueprint**
- keep **File Character Set** as **Unicode UTF-8**
- continue through the import wizard

Import into a workspace whose parsing schema has access to the Order Entry
database objects installed earlier.

If APEX reports an import error, copy the exact error text or full error log
back into your assistant and ask it to fix the generated blueprint using the
same prompt and inputs.

## Next Steps

After the Order Entry loop works, try a small edit to the functional
requirements or schema metadata, regenerate, and import again. Good first edits
include changing the application title, adding a dashboard metric, changing
report columns, adding a filter, or improving a table or column comment.

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
| Output differs from `examples/order-entry/prompt-output/order-entry-blueprint.md` | Some variation is normal. The reference blueprint is an example, not a byte-for-byte replay target. |
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
