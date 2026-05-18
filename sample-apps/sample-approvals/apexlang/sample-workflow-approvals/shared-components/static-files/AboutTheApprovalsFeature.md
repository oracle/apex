####  
#### Overview

The APEX approvals and tasks features simplify creating apps requring any kind of end-user actions, including approvals. They include:

- The *Task Definition* shared component to configure the subject, parameters, participants, and actions of a task. It can optionally be related to a system of record table row by a *Details Primary Key* value. Tasks can be either:
  - an *action task*, when only tracking a task's *completion* is important, or
  - an *approval task*, when an approved or rejected outcome is needed.

- The *Unified Task List* page type in the Create Page wizard to quickly create three kinds of approvals "inbox" pages
- The *Generate Task Details Page* button while editing a task to create a page showing task info, history, comments, and actions
- The *Human Task - Create* and *Human Task - Manage* page processes to easily create and act on task instances in your pages
- The APEX approval tasks engine to execute instances of approval and action tasks.
- A ready-to-use data model for tasks and database views to query their definitions and instances
- The `APEX_APPROVAL` package API for creating, retrieving, and managing tasks programmatically
- An optional *Task Vacation Rule Procedure* that can be configured at application level or task definition level to implement custom handling of task participant reassignment due to staff vacations or other reasons.

#### Task Definition

At design time, you'll create *task definitions*, each of which is a shared component that includes:
- a *subject* that summarizes the request for approval, 
- a built-in *detail primary key* for the row of application data to which the request is related
- an action table name or SQL query that uses the detail primary key value at runtime to retrieve related system-of-record data
- the parameters to store data relevant to the pending request that cannot be queried from other existing tables
- the users who can participate in the task's approval process as approvers or admins, or the query/expression that will determine them at runtime
- the actions that will be triggered when the state of the task changes, which can conditionally execute code or send email

At runtime, the detail primary key, parameter values, and action table (or SQL query) columns are available to reference as substitution parameters in the task's subject and email notifications, and they are available to reference as bind variables in any dynamic task participant expressions and action code. 

#### Unified Task List

The Unified Task List is a type of page the APEX Create Page wizard can create to show your users a list of tasks requiring their attention from any application in your workspace. Alternatively you can configure it to show only the tasks related to the current application if that better suits your requirements. The report context you choose at page creation time determines which tasks the generated page will show the current user:
- "My Tasks" - pending tasks requiring their approval
- "Initiated Tasks" -  tasks they created
- "Admin Tasks" - tasks they are allowed to administer (e.g. change the due date, or explicitly assign)

Once created, the unified task list can be customized like any other APEX page.

#### Task Details Page

The Task Details Page is a type of page you can create by clicking on the *Create Task Details Page* button in the Task Definition editor. It accepts the ID of a task instance as a hidden page item and displays an overview of information about the particular task instance identified by the ID passed in. It also shows:
- the values of all of the task parameters
- the discussion thread of comments users have made during the approval process
- the history of changes made to the task
- buttons allowing appropriate users to claim, release, delegate, prioritize, approve, or reject the task.

Each task definition includes a reference to the task details page that it should use at runtime. While *technically* a single task details page could be used by all task definitions, in practice, you will most likely find it useful to create one task detail page per task definition and customize it to include additional information from your application data that will be useful to the approver of that specific task at hand.

#### Approvals Page Processes

Use the *Human Task - Create* process in a page to create a new task instance, passing in values for the detail primary key of the task as well as any required parameters the task may define. The *Human Task - Manage* process allows your pages to perform actions on existing tasks like approve, reject, comment, claim, delegate, release, cancel, invite a participant, or set the priority. 

#### Task Database Views

You can query the metadata about your task definitions from new views shown in the figure below. Use the APEX_APPL_TASKDEFS view to query task definitions, and use its related child views to retrieve the metadata about the actions, parameters, and participants that comprise the task definition. Use the APEX_APPL_TASKDEF_COMP_PARAMS view to query the parameter information about the approval-related page processes in your pages.  Use the APEX_TASKS view to query task instances, and use its related child views to query the task instance's history, parameters, comments, and participants.

![readme_taskviews.jpg](#APP_FILES#readme_taskviews.jpg)

#### APEX_HUMAN_TASK Package

The APEX_HUMAN_TASK package provides the PL/SQL API your application can use to programmatically create and manage tasks.

#### Task Vacation Rule Procedure

You can configure a task vacation rule procedure at application-level or task definition level. If configured at task definition level, that one takes precedence over an application-level one. The procedure receives an input record containing the static id of the task definition involved, task parameter values, and the list of original task participants. The procedure can use this information, along with any other application-specific data, to return a set of additional task potential owners and/or business administrators for the current task instance. The APEX engine engages your task vacation rule procedure at task instance creation and when a task is delegated to a new owner.

