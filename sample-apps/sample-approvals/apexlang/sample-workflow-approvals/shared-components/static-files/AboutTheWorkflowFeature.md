#### 

#### Overview

APEX workflow lets you automate business processes of any kind, including business logic, conditional branching, local or remote API invocation, time delays, email and push notifications, approvals, and action tasks to to be completed by end users. Using process plug-ins you can extend its core set of activities. APEX workflow components include:

- The *Workflow* definition shared component and visual designer to configure the activities and flow of a business process, as well as its subject, participants, parameters, and variables. A workflow can optionally be related to a system of record table row by a *Details Primary Key* value.
- The *Workflow Console* page type in the Create Page wizard to quickly create three kinds of pages to review and manage workflow instances
- The *Workflow* page process to easily start, suspend, resume, or retry a workflow.
- The APEX Workflow engine to execute individual workflow *instances*
- A ready-to-use data model for workflows and database views to query their definitions and instances
- The `APEX_WORKFLOW` package API for creating, retrieving, and managing workflows programmatically

#### Workflows

At design time, you'll create *workflows*, each of which is a shared component that defines:
- a *subject* that summarizes the business process and can include parameter values, 
- a built-in *detail primary key* for the row of application data to which the workflow is related
- an Additional Data table name or SQL query that uses the detail primary key value at runtime to retrieve related system-of-record data
- the parameters to store data relevant to the workflow that cannot be queried from other existing tables
- the users who can participate in the workflow as owners or admins, or the query/expression that will determine them at runtime
- the activities and connections that determine the logical flow of the business process.
- One workflow can call another using an *Invoke Workflow* activity, optionally waiting for it to complete and return out parameters

At runtime, the detail primary key, parameter values, and additional data table (or SQL query) columns are available to reference as substitution parameters in the workflow activities, and they are available to reference as bind variables in any dynamic task participant expressions and activity expressions or code blocks. 

#### Workflow Console

The Workflow Console is a type of page the APEX Create Page wizard can create to show your users a list of workflows  from any application in your workspace. Alternatively you can configure it to show only the workflows related to the current application if that better suits your requirements. The report context you choose at page creation time determines which tasks the generated page will show the current user:
- "My Workflows" - workflows in which they are a participant
- "Initiated Workflows" -  workflows they created
- "Admin Workflows" - workflows they are allowed to administer (e.g. change variable values, suspend, retry, etc. )

In addition, the wizard generates a second Workflow Details Page explained below. If you set the *Include Dashboard Page* switch to on, the wizard can also create a Workflow Dashboard Page containing a graphical overview of workflow instance activity over time. Once created, the workflow console page, workflow details page, and workflow dashboard pages can be customized like any other APEX page. 

#### Workflow Details Page

The Workflow Details Page is shown to the end-user when they click on a particular workflow instance in the workflow console list page. It accepts the ID of a workflow instance as a hidden page item and displays an overview of information about the workflow instance identified by the ID passed in. It also shows:
- the history of activities performed and their status (Waiting, Completed, Faulted, etc.)
- the values of all of the parameters and variables
- buttons allowing appropriate users to suspend, resume, terminate, or retry the workflow.
- visual diagram of the workflow status

#### Workflow Dashboard Page

The Workflow Dashboard Page includes seven charts by default that give a graphical overview and details about Workflows by State, Active Workload, Fault Workload, and Performance.

#### Workflow Diagram Region

The Workflow Diagram region type lets a developer include a visual workflow diagram that illustrates the current status of a workflow instance and helps an end-user understand what particular path of activities have already been completed and if applicable, what activity the workflow instance is currently waiting on. 

#### Workflow Page Processes

Use the *Workflow* process in a page to create a new workflow instance, by choosing the workflow definition and the **Start** type. Configure the optional Details Primary Key Item if appropriate and any required parameters the workflow may define. To further process the system-assigned unique ID of the workflow, configure a Workflow ID Item. Other avalable action types are Terminate, Suspend, Resume, or Retry.  

#### Workflow Database Views

You can query the metadata about your workflow definitions from new views shown in the figure below. Use the `APEX_APPL_WORKFLOWS` view to query workflow definitions, and use its related child views to retrieve the metadata about the parameters, versions, variables, participants, activities, activity variables, branches, and transitions that comprise the workflow definition. Use the `APEX_APPL_WORKFLOW_COMP_PARAMS` view to query the parameter information about the workflow-related page processes in your pages.  Use the `APEX_WORKFLOWS` view to query workflow instances, and use its related child views to query the workflow instance's activities, activity variables, version variables, parameters, participants, and audit information.

![readme_workflowviews.jpg](#APP_FILES#readme_workflowviews.jpg)

#### APEX_WORKFLOW Package

The `APEX_WORKFLOW` package provides the PL/SQL API your application can use to programmatically create and manage workflows.

