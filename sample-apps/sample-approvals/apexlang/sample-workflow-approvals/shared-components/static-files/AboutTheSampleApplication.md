####

#### Overview

The *Sample Workflow, Approvals, and Tasks* application uses a copy of the data from the familiar EMP and DEPT tables, along with a few additional tables to capture salary history, employee appraisals, laptop requests, and assigned approvers for salary change requests as shown below.

![readme_datamodel.jpg](#APP_FILES#readme_datamodel.jpg)

The sample includes the following APEX components:

#### Workflows

##### *Employee Appraisal*

The *Employee Appraisal* workflow defines the business process for an employee evaluation. It begins with an employee's filling out a self-evaluation, proceeds to the employee's manager for their additional comments, then ends with a second-level manager's VP review (if one is available). The workflow uses three action tasks explained below: ***Appraisal - Employee Input***, ***Appraisal - Manager Input***, and ***Appraisal - VP Review***. 

![readme_appraisalworkflow.jpg](#APP_FILES#readme_appraisalworkflow.jpg)

##### *Laptop Request*

The *Laptop Request* workflow defines the business process for provisioning an employee with a new laptop. It begins with an approval by a member of the OPERATIONS team, notifying the employee of the outcome of the approval. If rejected, it waits for an appropriate moment before notifying the employee. If approved, it invokes the *Laptop Procurement* workflow to handle the process of checking stock, optionally ordering a new laptop, and receiving the ordered item before marking the laptop request as delivered. It also returns information about whether the laptop was in stock to the calling workflow. The workflow uses the ***Laptop Request*** approval task explained below. and the ***Laptop Delivered*** action task explained below. 

![readme_laptopworkflow.jpg](#APP_FILES#readme_laptopworkflow.jpg)

##### *Laptop Procurement*

The *Laptop Procurement* workflow defines the business process for procuring a new laptop. It begins by checking whether the required laptop type is in stock. If so, it delivers the laptop from that stock and decrements the stock by one. If not, it places an order for the required laptop and waits for a member of the OPERATIONS team to enter delivery date information about the laptop in the Laptop Order Management page once they have received the laptop from the supplier. Once the laptop is delivered, it notifies the employee of the good news. If the invoked workflow returned the information that the laptop was supplied from existing stock, this information triggers an optional additional sentence in the notification email. The email notifications are conditionally sent. They only occur if you have configured the notification email address in the sample's *Setup* > *Email Settings* page to set the application setting `DEMO_NOTIFICATION_EMAIL`. The workflow uses the ***Laptop Delivered*** action task explained below. 

![readme_laptopworkflow.jpg](#APP_FILES#readme_laptopprocurementworkflow.jpg)

#### Approval Task Definitions

- *Job Change* 
  - contains a task details page URL that points to page 2 ("Task Details")
  - configures its participants at design time,
  - defines one parameter `P_NEW_JOB`
  - configures a due date that is 2 days from its creation using the interval expression `P2D`
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_EMP` table and has an Actions SQL Query that references additional data about the employee in question using the `EMPNO = :APEX$TASK_PK` where clause.
  - contains actions related to the `Complete` event with outcome `Approved` to: 
    - update the `JOB` column of the appropriate employee in the `EBA_DEMO_APPR_EMP` table, and
    - conditionally send an email notification when the task is approved
- *Salary Change* 
  - contains a task details page URL that points to page 15 ("Salary Change Details")
  - determines its participants dynamically at task creation time by invoking the `GET_APPROVER_FOR()` and `GET_ADMIN_FOR()` PL/SQL functions in the `EBA_DEMO_APPR` package
  - defines one parameter `P_PROPOSED_SALARY`
  - configures a due date that is 7 days from its creation using the interval expression `P7D`
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_EMP` table and has an Actions SQL Query that references additional data about the employee in question using the `EMPNO = :APEX$TASK_PK` where clause.
  - contains an action related to the `Complete` event with outcome `Approved` to perform the following logic when the task is approved:
    - update the `SAL` column of the appropriate employee in the `EBA_DEMO_APPR_EMP` table, and
    - insert a row in the `EBA_DEMO_APPR_SAL_HISTORY` table
- *Bank Account Change*
  - contains a task details page URL that points to page 2 ("Task Details")
  - configures its participants at design time, including an Expression type potential owner referencing the task initiator using the bind variable `:APEX$TASK_INITIATOR`
  - sets the *Initiator Can Complete* switch to ON to allow the task initiator to approve/reject the task
  - defines one parameter `P_NEW_BANK_ACCOUNT`
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_EMP` table and has an Actions SQL Query that references additional data about the employee in question using the `EMPNO = :APEX$TASK_PK` where clause.
  - contains actions related to the `Complete` event with outcome `Approved` to: 
    - update the `BANK_ACCOUNT` column of the appropriate employee in the `EBA_DEMO_APPR_EMP` table

- *Laptop Approval*
  - contains a task details page URL that (also) points to page 2 ("Task Details")
  - for demo purposes, configures a due date that is 2 minutes from its creation using the scheduler expression  expression `FREQ=MINUTELY;INTERVAL=2`
  - configures an Expiration Policy to automatically renew the task after it has expired (i.e. passed its due date without any action by the task owner) and sets a maximum renewal count to 2 times.
  - determines its participants dynamically at task creation time by invoking the `GET_LAPTOP_APPROVER()` PL/SQL function in the `EBA_DEMO_APPR`package, passing in the `:APEX$TASK_RENEWAL_COUNT` bind variable. This allows the function to dynamically assign JANE as the owner if the renewal count is zero (0), STEVE if the renewal count is one (1), and BO if the renewal count is two (2).
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_LAPTOP_REQUESTS` table and has an Actions SQL Query that references additional data about the laptop request and the related employee needing that computer by joining `EBA_DEMO_APPR_EMP` and `EBA_DEMO_APPR_LAPTOP_REQUESTS` and using the `LR.ID = :APEX$TASK_PK` where clause.
  - contains actions related to the `Before Expire` event to: 
    - conditionally send an email notification one (1) minute before the task is due to expire as a reminder to the approver

#### Action Task Definitions

- *Appraisal - Employee Input*
  - determines its participants dynamically at task creation time by invoking the `GET_APPRAISAL_PARTICIPANT()` PL/SQL function in the `EBA_DEMO_APPR` package, passing in the `:APEX$TASK_PK` bind variable. This lets the function return the username (i.e. `ENAME`) of the employee being appraised as the assignee.
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_APPRAISALS` table and has an Actions SQL Query that references additional data about the related employee being appraised by joining `EBA_DEMO_APPR_EMP` and `EBA_DEMO_APPR_APPRAISALS` and using the `A.ID = :APEX$TASK_PK` where clause.
- *Appraisal - Manager Input*
  - determines its participants dynamically at task creation time by invoking the `GET_APPRAISAL_MANAGER()` PL/SQL function in the `EBA_DEMO_APPR` package, passing in the `:APEX$TASK_PK` bind variable. This lets the function return the username (i.e. `ENAME`) of the *manager* of the employee being appraised as the assignee.
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_APPRAISALS` table and has an Actions SQL Query that references additional data about the related employee being appraised by joining `EBA_DEMO_APPR_EMP` and `EBA_DEMO_APPR_APPRAISALS` and using the `A.ID = :APEX$TASK_PK` where clause.
- *Appraisal - VP Review*
  - illustrates a different technique of determining its participants at task creation time by defining a `P_VP_USERNAME` parameter, and using the expression `:P_VP_USERNAME` as the value of the Potential *Owner*. This allows the workflow to determine the VP username, and pass it in as a parameter when creating the task.
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_APPRAISALS` table and has an Actions SQL Query that references additional data about the related employee being appraised by joining `EBA_DEMO_APPR_EMP` and `EBA_DEMO_APPR_APPRAISALS` and using the `A.ID = :APEX$TASK_PK` where clause.
- *Laptop Delivered*
  - determines its participants dynamically at task creation time by invoking the `GETUSERLIST_FOR_DEPARTMENT()`  PL/SQL function in the `EBA_DEMO_APPR` package, passing in the literal`'OPERATIONS'` department name. This lets the function return a comma-separated list of all the usernames (i.e. `ENAME`) who belong to the department with the `DNAME` value of `OPERATIONS`. These are `BO`, `JANE`, `STEVE`, and `PAT`.  
  - uses a *Details Primary Key* value related to the `EBA_DEMO_APPR_LAPTOP_REQUESTS` table and has an Actions SQL Query that references additional data about the related employee being appraised by joining `EBA_DEMO_APPR_EMP` and `EBA_DEMO_APPR_LAPTOP_REQUESTS` and using the `LR.ID = :APEX$TASK_PK` where clause.
  - Involved in illustrating how a task can be completed programmatically using the `COMPLETE_TASK()` API in the `APEX_APPROVAL` package.
    -  A `BEFORE UPDATE FOR EACH ROW` database trigger on the `EBA_DEMO_APPR_LAPTOP_REQUESTS` table conditionally invokes the `LAPTOP_DELIVERED()` procedure in the `EBA_DEMO_APPR` package if the value of the `DELIVERED_DATE` column changes from `NULL` to `NOT NULL`.
    - This happens when a member of the OPERATIONS team uses the interactive grid on the *Laptop Order Management* page to enter in a *Delivered Date* for a particular laptop request.
    - The `LAPTOP_DELIVERED()` procedure calls `COMPLETE_TASK()` to programmatically indicate that the laptop has been delivered so that the APEX workflow engine can proceed to the next activity in the corresponding *Laptop Request*  workflow.

#### Task Vacation Rule Procedures

The sample application configures a Task Vacation Rule Procedure at application level `eba_demo_appr.approval_vacation_handler`. This procedure uses the contents of the `eba_demo_appr_vacation` table to dynamically add additional task potential owners if appropriate to the task instance being created or delegated. It uses the value of the `TEMPORARY_BUSINESS_ADMIN` application setting to optionally add an additional business administrator to any task instance.  The sample's *Appraisal - VP Review* task definition defines a Task Vacation Rule Procedure at task definition level  `eba_demo_appr.appraisal_vp_review_handler`. This procedure uses the value of the `EMP_APPRAISAL_EXTRA_VP_REVIEWERS` application setting to add one or more additional potential owners for the action task of giving the final review of an employee's appraisal process.

#### Pages

- *Home*
  - Provides an overview of the workflow, approvals, and tasks features
- *More Information*
  - This page
- *Employees*  
  - Lets users initiate a salary or job change for an employee, or request a new laptop. If the current employee has subordinates (i.e. employees who report directly or indirectly to them as a manager), then the user can also initiate an employee appraisal.
- *Request Salary Change*
  - Accepts new proposed salary and creates a new instance of the *Salary Change* approval task using the *Human Task - Create* process
- *Request Job Change*
  - Accepts the new proposed job and creates a new instance of the *Job Change* approval task using the *Human Task - Create* process
- *Request Bank Account Change*
  - Accepts the new proposed bank account and creates a new instance of the *Bank Account Change* approval task using the *Human Task - Create* process
- *Request Laptop*
  - Accepts the laptop type and need by date, inserts the new row into the `EBA_DEMO_APPR_LAPTOP_REQUESTS` table,  and starts a new instance of the *Laptop Request* workflow, passing in the *Details Primary Key* value of the newly-created row.
- *Request Employee Appraisal*
  - Accepts the appraisal date, inserts the new row into the `EBA_DEMO_APPR_APPRAISALS` table,  and starts a new instance of the *Employee Appraisal* workflow, passing in the *Details Primary Key* value of the newly-created row.
- *Task Details* [Generated via *Create Task Details Page* button]
  - Supports participant conversations about an approval in progress, shows history of the approval process, and allows approving, rejecting, or delegating a task. Used for *Job Change* and *Laptop Approval* approval tasks in this sample.
- *Salary Change Details* [Generated via *Create Task Details Page* button, then customized]
  - Customized to include graph of employee salary history and percentage change in salary. This illustrates how task definitions need only capture the absolute essential information specific to the task (e.g. `P_NEW_SALARY`) and can easily query and join with any system of record tables using the task's `DETAIL_PK` value to present application-specific details of relevance to the task approver. Supports participant conversations about an approval in progress, shows history of the approval process, and allows approving, rejecting, or delegating a task.
- *My Tasks* [Generated using Create Page wizard]
  - Shows current user approval tasks awaiting their approval and action tasks awaiting their action.
- *My Requests* [Generated using Create Page wizard]
  - Shows current user job-change, salary-change, or laptop requests they initiated.
- *Task Administration* [Generated using Create Page wizard]
  - Shows business admins tasks they can administer and allows them to do it if appropriate.
- *Pending Approvals*
  - Useful for demo purposes as it shows any open, unassigned or assigned approval tasks and from whom the task is awaiting approval
  - Uses the `APEX_TASKS` and `APEX_APPL_TASKDEFS` views in its SQL query to retrieve information about the pending tasks including the `DETAILS_LINK_TARGET` page for the task, and calls the `details_task_url()` function in the `eba_demo_appr` package to substitute the `&APP_ID.` and `&TASK_ID.` parameters in that URL.
  - Uses the `TASK_TYPE_CODE` to filter the results to only show approval tasks.
- *Pending Actions*
  - Useful for demo purposes as it shows any open, unassigned or assigned action tasks and from whom the task is awaiting an action
  - Uses the `TASK_TYPE_CODE` to filter the results to only show action tasks.
- *Setup* - shows a list of setup activities, including:
  - *Approvers* - manage dynamic Salary Change participants optionally based on job code and/or minimum salary
    - *Test Approver Assignment* - test dynamic Salary Change participant assignment 
  - *Manage Laptop Stock* - set levels of MAC and WIN laptops in stock for use in laptop procurement.
  - *Email Settings* - Configure an email address user preference for Job Change task's email notification
  - *Manage Sample Data* - Reset the sample data back to its original state
  - *Theme Style Selection* - Change the application's UI theme
- *Help*
  - Explains how to request and approve salary changes, job changes, and laptops, as well as how managers can initiate an employee appraisal.
- *Workflow Status* [Generated using Create Page wizard]
  - Shows current user the workflows in which they are a participant.
  - In this sample, that will be employees in the OPERATIONS department (`BO`, `JANE`, `STEVE`, and `PAT`)
  - User `PAT` is also able to administer the workflow instances.
- *Workflow Detail*  [Generated using Create Page wizard]
  - Shows current user the activity history of a specific workflow
  - In this sample, that will be employees in the OPERATIONS department (`BO`, `JANE`, `STEVE`, and `PAT`)
  - User `PAT` is also able to administer the workflow instances.
- *Workflow Dashboard* [Generated using Create Page wizard]
  - Shows current user a graphical overview and details about Workflows by State, Active Workload, Fault Workload, and Performance
  - In this sample, that will be employees in the OPERATIONS department (`BO`, `JANE`, `STEVE`, and `PAT`)
- Workflow Diagram
  - Shows current user a visual diagram that illustrates the current status of a workflow instance and helps an end-user understand what particular path of activities have already been completed and if applicable, what activity the workflow instance is currently waiting on.
  - In this sample, that will be employees in the OPERATIONS department (`BO`, `JANE`, `STEVE`, and `PAT`)
- *Workflow Debug Messages*
  - Lets users of the OPERATIONS team (`BO`, `JANE`, `STEVE`, and `PAT`) see recent ten workflow-related debug messages from the `APEX_DEBUG_MESSAGES` view, ordered by most recently occurred timestamp.
- *Appraisal History*
  - Shows the history of employee appraisals for the current user
  - If the current user is a manager, lets them flip a switch to see appraisal history of their subordinates.
- *Employee Self-Review Details*
  - Conditionally renders an appropriate form allowing:
    - employee to enter self-evaluation,
    - manager to see employees comments and enter their own about the employee
    - second-level manager (VP) to review both employee and manager comments.
- *Laptop Order Management*
  - Lets members of the OPERATIONS team (`BO`, `JANE`, `STEVE`, and `PAT`) see recently approved laptop requests so they can proceed to complete the order and delivery process by entering the order date and delivery date in the interactive grid.
  - Also provides a switch to see all laptop requests (since by default only ones with no order and delivery date appear in the grid).
- *Manage Vacation Rules*
  - Lets Operations Team members edit the vacation rules that affect future task assignments, configure additional employee appraisal VP reviewers, and indicate a temporary business admininstrator for all approvals and action tasks.
- *Sample Login*
  - Shows a management hierarchy of employees and simplifies logging into the sample as any of the employees using a for-demo-purposes-only custom authentication scheme.
  - For simplicity, the sample uses a custom authentication scheme so you can easily login as any employee in the fictitious company and quickly switch from one user to another. 
  - This lets developers studying APEX workflow, approvals, and task focus on these new features instead of on creating a number of new user accounts in their APEX instance to try out the functionality.
  - Of course, your real-world application will require each user to authenticate with their own password to access the system. 
  - The workflow, approvals, and tasks functionality works the same way, regardless of the authentication scheme in use.


#### Email Template

- *Job Change Notification* used by the Job Change task when sending an email notification

#### Supporting Objects

The sample's supporting object's script creates the `EBA_DEMO_APPR_EMP`, `EBA_DEMO_APPR_DEPT`, `EBA_DEMO_APPR_SAL_HISTORY`, `EBA_DEMO_APPR_LAPTOP_REQUESTS`, `EBA_DEMO_APPR_APPRAISALS`, `EBA_DEMO_APPR_VACATION`  and `EBA_DEMO_APPR_APPROVERS` tables as well as the `EBA_DEMO_APPR` package containing application-specific PL/SQL code and the `EBA_DEMO_APPR_DATA` package for installing the sample data. It also contains a deinstallation script that will drop these tables and packages if you delete the application and check the *Deinstall Supporting Objects* checkbox. Any task instances created by the sample app are deleted when the sample application is deinstalled.
