Loki
==========

Overview
--------

Have you ever lost work or time because you were unknowingly working on the same database object (package, view, etc.) as another developer at the same time? Loki is a utility app that can help prevent developers from “stepping on each other’s toes” while working together in a shared development database. Loki creates “locks” on objects that are associated with a developer, ensuring only that developer can make changes to the object until the lock is released.

Locks can be created two different ways:

*   **Implicitly** - Automatic locking occurs when an object is created, altered, or compiled into the database. Loki will first check to see if the object is locked and will create a lock if it isn't. This allows developers to "collect" locks as they work on an issue.
*   **Explicitly** - Developers can manually create locks at any time, provided the object isn't already locked.

The recommended development flow when using Loki while working on an issue/ticket is as follows:

*   **Start of issue/ticket** - If you know the objects you need to touch as part of the issue, you should explicitly lock them ahead of time. This helps ensure that you don't get halfway through working on an issue only to find that the next object you need is locked by someone else, forcing you to have to wait before you can acquire a lock and complete your work.
*   **End of issue/ticket** - You should only release your locks when your code changes have been accepted and merged to the main (or similar) branch. This ensures that if a PR/MR is rejected and requires additional development, the required objects will still be available for you to work on.

Supported Object Types
----------------------

Loki leverages Oracle Database’s system/DDL triggers to function. These triggers fire when certain object types are being created or altered in the database. Not all object types trigger DDL events, but the most common ones do. Here's a list of the object types Loki can lock:

*   COMMENT (escalates to the base object)
*   CONSTRAINT (escalates to the base object)
*   FUNCTION
*   INDEX (escalates to the base object)
*   MATERIALIZED\_VIEW
*   MATERIALIZED\_VIEW\_LOG (escalates to the base object)
*   PACKAGE
*   PROCEDURE
*   REF\_CONSTRAINT (escalates to the base object)
*   SEQUENCE
*   SYNONYM
*   TABLE
*   TRIGGER (DML and INSTEAD OF triggers escalate to the base object, SYSTEM triggers do not)
*   TYPE
*   VIEW

_Note: There's a base/dependent object type relationship between certain object types in the database. Think of it like this: when you drop a base object the dependents go with it. In the case of a table (base), any triggers, indexes, ref constraints, comments, etc. (dependents) all go with it. Loki escalates locks on dependent objects to the base object to better protect what developers are changing._

Trigger Options
---------------

Loki uses database or schema triggers to execute locking logic when DDL events occur. Schema triggers are better from a security perspective, but database triggers can work for multiple schemas and are more easily enforced.

Schema triggers use the "on schema" clause ("schema" may be prefixed with a schema name). Here's an example:

```
create or replace trigger hr.loki_before_ddl_tgr before ddl on hr.schema
begin
  execute immediate 'begin loki.loki_lock.handle_ddl_event(); end;';
end loki_before_ddl_tgr;
```
  

With this trigger, when DDL events occur on the HR schema, Loki’s locking logic will execute correctly. Keep in mind that developers may disable this trigger, preventing locks from being enforced.

_Note: The generated trigger code for each schema can be found in the section “Administration” -> “Schemas”._

Database triggers use the "on database" clause. To create a database trigger, the owner must have the "administer database trigger" privilege. Here's an example:

```
create or replace trigger loki.loki_ddl_tgr before ddl on database begin
  if ora_dict_obj_owner in ('HR', 'GL', 'INV') then
    execute immediate 'begin loki.loki_lock.handle_ddl_event(); end;';
  end if;
end loki_lock_tgr;
```
  
This trigger works for multiple schemas and cannot be disabled without access to the LOKI schema.

Installation Steps
------------------------------------
1. Download the .zip file in this directory
2. Navigate to App Builder -> Import
3. Drag and drop the application .sql file and click Next
4. Leave the defaults as they are, then continue through the remaining steps in the wizard to finish installing the application
