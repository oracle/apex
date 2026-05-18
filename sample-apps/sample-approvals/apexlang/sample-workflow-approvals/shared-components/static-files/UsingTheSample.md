#### 

#### Overview

This section explains how use the sample.

#### Initiating a Task for an Employee

To request the change of an employee's salary, job, bank account, provision an employee a new laptop, or request an appraisal for a subordinate, login as some employee and then navigate to the *Employees* page. A cards region displays all the employees with a select list at the top allowing you to sort the list by Name, Job, or Salary. Click the *(Edit Salary)*,  *(Edit Job)*, (*Bank*) or *(Laptop)* buttons to perform the respective action. If the current user is a manager, then an *(Appraisal)* button will appear on employee cards for their subordinates.

- In the *Request Job Change* modal dialog, enter the new proposed job and click *Submit*.
- In the *Request Salary Change* modal dialog, enter the new proposed salary and click *Submit*
- In the *Request Bank Account Change* modal dialog, enter the new proposed bank account and click *Submit*
- In the *Request Laptop* modal dialog, choose a laptop type, enter a *Need By* date, and click *Submit*
- In the *Request Appraisal* modal dialog, choose an appraisal due date, and click *Submit*

![readme_employees](#APP_FILES#readme_employees.jpg)

Once there is a pending request for salary change, job change, bank account change, new laptop, or appraisal for a specific employee, the related request button is no longer shown for the employee involved until the request is completed.

![readme_employees2](#APP_FILES#readme_employees2.jpg)

Navigating to the *Pending Approvals* page, you can see any open, unassigned or assigned approval tasks and optionally click on their subject to review the task details. If the task is assigned, the *Status* column shows "Assigned to USER". If the task is unassigned, it shows the two or more potential approvers like this "Unassigned (USER1, USER2)". This page queries information from the combination of the `APEX_TASKS` and `APEX_TASK_PARTICIPANTS` views. Using the information about the approver and admins shown in this page, you know which user to login as to be able to approve or administer the tasks using the appropriate unified task list page.

#### Causing and Fixing a Fault in the Appraisal Workflow

By design, the sample causes a fault to happen if user KING requests an appraisal for one of her direct reports (BLAKE, BO, CLARK, or JONES). The appraisal process will first wait for the employee to do their self-appraisal, then will wait for KING to add the manager's comments. When the "Determine VP" activity is invoked, it will raise an exception because KING's direct reports have no second-level manager.  It does this for demo purposes so you can experience what a faulted workflow looks like. Logging in as PAT the workflow administrator, and visiting the "Workflow Status" page, you can examine the faulted workflow, expand the "Variables" section, and edit the "VP Username" variable value to enter the case-sensitive name of another valid employee (e.g. `WARD`), then click the (Retry) button to have the workflow engine retry that activity to use the manually-entered employee as the assignee of the VP-level review. Alternatively, you can enter `NONE` (in capital letters!) and click (Retry) to cause the workflow to skip the VP-level review. If you enter an invalid employee name (or forget to enter the name in CAPITAL LETTERS), a different fault will occur when you click (Retry).

#### Which Users Can Approve or Administer Tasks?

This section helps you understand which users can approve the Job Change and Salary Change tasks in the sample.

##### Job Change Task Approvers and Admins

The *Job Change* task definition configures its task participants at design time as follows:

- Approvers: BO, JANE, STEVE
- Admins: PAT

Note that in the APEX Task Definition page approvers are called *Potential Owners* in the Participants section, and admins are called *Business Administrators*.

##### Bank Account Change Task Approvers and Admins

The *Bank Account Change* task definition configures its task participants at design time as follows:

- Approvers: BO, JANE, STEVE, (*Expression*: `:APEX$TASK_INITIATOR`)
- Admins: PAT

Note that in the APEX Task Definition page approvers are called *Potential Owners* in the Participants section, and admins are called *Business Administrators*. This task definition configures the Initiator Can Complete switch to ON so that the task initiator is also allowed to approve the task.

##### Salary Change Task Approvers and Admins

The Salary Change task definition configures its task participants dynamically by calling a PL/SQL package function, passing in bind variables representing the primary key of the application data row related to the task (`:APEX$TASK_PK`), the employee's current job (`:JOB`), and the task parameter representing the proposed new salary (`:P_NEW_SALARY`):

- Approvers: `eba_demo_appr.get_approver_for('SALARY_CHANGE', :APEX$TASK_PK, :JOB, :P_NEW_SALARY)`
- Admins: `eba_demo_appr.get_admin_for('SALARY_CHANGE', :APEX$TASK_PK, :JOB, :P_NEW_SALARY)`

Note that the `:JOB` bind variable is referencing information from the task definition's *Action SQL Query* that allows any task to retrieve any relevant data required to process the task participant assignment and/or task actions. The *Salary Change* task definition configures the following *Action SQL Query* the includes the JOB column, among others. These *Action SQL Query* columns can also be referenced as substitution variables using the `&JOB.` syntax in the task subject, task email template parameter values, and other task-related property values.

- `select ename, sal, initcap(ename) as initcap_ename, job
  from eba_demo_appr_emp where empno = :APEX$TASK_PK`

The `get_approver_for()` and `get_admin_for()` functions return one or more user names in a comma-separated string depending on the rows you have configured in the `EBA_DEMO_APPR_APPROVERS` table. See the *Configuring Salary Change Approvers* section below for more information on how to do that and how the dynamic approver and admin assignment works.

#### Approving a Task

As noted above, STEVE is one of three users configured as an approver for a *Job Change* task. So, if you logout and login to the sample application as user JANE and visit the *My Tasks* page, you'll see any pending tasks awaiting his attention:

![readme_approvals](#APP_FILES#readme_approvals.jpg)

Notice the task is unassigned because there were multiple available approvers. The task will appear in each of their unified task lists until one of them approves or rejects the task, or else claims ownership of it while they are considering the requested change. STEVE can directly click *Approve* or *Reject* from this task list, or click on the task subject line to open the *Task Details* page where he can add comments, review the task history, and claim ownership of the task.

#### Task Actions On Approval

The *Salary Change* task definition configures an action to fire on the task's `Complete` event, when the outcome is `APPROVED`. The action executes a single SQL UPDATE statement that changes the SAL column on the appropriate `EBA_DEMO_APPR_EMP` table row to the new value proposed by the current task (stored during the life of the task in the `P_NEW_SALARY` parameter).

- `update eba_demo_appr_emp set sal = :P_NEW_SALARY where empno = :APEX$TASK_PK;`

The *Job Change* task definition configures two actions to fire on the task's `Complete` event, when the outcome is `APPROVED`. The first action in sequence order executes a single SQL UPDATE statement that changes the JOB column on the appropriate `EBA_DEMO_APPR_EMP` table row to the new value proposed by the current task (stored during the life of the task in the P_NEW_JOB parameter).

- `update eba_demo_appr_emp set job = :P_NEW_JOB where empno = :APEX$TASK_PK;`

The second action in the task definition sends a notification email based on the *Job Notification Change* email template about the approved change. The email notification is sent only if the application item `DEMO_NOTIFICATION_EMAIL` is not null. This item's value is computed from an application setting of the same name that is configured using the *Administration* > *Email Settings* page in the sample. This illustrates not only the ability to send template-based email notification, but also how task actions can be conditional based on evaluating a server side condition.

#### Configuring Salary Change Approvers

The *Setup* > *Salary Change Approvers* page in the sample allows you to see and change the rows in the `EBA_DEMO_APPR_APPROVERS` table used by the `eba_demo_appr.get_approver_for()` and `eba_demo_appr.get_admin_for()` functions that the *Salary Change* task definition uses to dynamically determine the approvers and admins at task creation time. The task participants are computed each time a *Salary Change* task instance is created and can be queried using the combination of the `APEX_TASK` and `APEX_TASK_PARTICIPANTS` views. The *About this page* box at the top of the page explains the approach used by the application business logic to determine which usernames to return. The interactive grid below allows you to edit the contents of the approver table's information.

![readme_salapprovers](#APP_FILES#readme_salapprovers.jpg)

After clicking *Save* to make any changes you've made to the approvers table permanent, you can click the *Test Salary Approver Assignment...* button to test the assignment rules. For example, requesting a salary change to 5500 for an employee like BLAKE whose job is MANAGER will result in having approvers BO or STEVE and an admin user PAT. The user STEVE is included because the job code of MANAGER is one of the codes (and happens to be the only one) in STEVE's *Job Codes* column and the proposed salary is over the 3000 value in his *Minimum Salary* column. The user BO is included because MANAGER is one of the codes in BO's *Job Codes* column. Despite having MANAGER in her list of *Job Codes*, the user JANE is not included because JANE is the current user and company policy imposes that the same user cannot approve a request that she herself requested. So the business logic excludes the task initiator from the list of approvers.   

If you experiment with the data in the *Salary Change Approvers* page, and do so in a way that produces no matching Admin or no matching Approver for a salary change, then you'll see an appropriate error message explaining that either admin or approver could not be assigned. A similar error will be displayed from the *Request Salary Change* page on clicking *Submit* if you have left the salary approver data in this state.

One solution to this situation is to return to the *Setup* > *Salary Change Approvers* page and add/edit the rows to ensure there is at least one Admin and at least one Approver defined. Another solution is to use the *Administration* > *Manage Sample Data* page to reset the sample data back to its original state.

#### Completing Approved Laptop Orders

After a laptop request has been approved, the *Laptop Request* workflow invokes the *Laptop Procurement* workflow to handle the laptop procurement. If a laptop of the appropriate type is already in stock in house, it is delivered immediately and the stock is decremented. If there is no stock on hand, the *Laptop Procurement* workfow places an order for the laptop with the supplier and *waits* for a confirmation that the laptop has been delivered before notifying the employee by email. The delivery confirmation happens as a result of the OPERATIONS team (`BO`, `JANE`, `STEVE`, or `PAT`) visiting the *Laptop Order Management* page and entering an Ordered Date and Delivered Date. A database trigger on the `EBA_DEMO_APPR_LAPTOP_REQUESTS` calls the `LAPTOP_DELIVERED()` procedure in the `EBA_DEMO_APPR` package when the `DELIVERED_DATE` changes from `NULL` to `NOT NULL`. This procedure in turn calls the `COMPLETE_TASK()` procedure in the `APEX_APPROVAL` package to programmatically mark the appropriate *Laptop Delivered* action task as completed. This allows the *Laptop Request* workflow to proceed to the next activity to notify the employee by email if the demo notification Email has been configured in *Setup* > *Email Settings* in the sample. 

![readme_laptopordermgmt](#APP_FILES#readme_laptopordermgmt.jpg)

#### Completing an Employee Appraisal

After a manager has requested an employee appraisal for one of their subordinates, the *Employee Appraisal* workflow creates an action task for the employee in question to first perform a self-appraisal. When that employee logs in, they'll find a task waiting for them in their *My Tasks* page. Clicking on the "Your Appraisal - please complete your self review" task, the employee sees the self review form to fill in as shown below:

![readme_selfeval](#APP_FILES#readme_selfeval.jpg)

After the employee clicks *(Complete)* on this action task, the *Employee Appraisal* workflow creates an action task for the employee's manager to add their additional comments.  When their manager logs in, again the manager finds the task to Evaluate the employee. Clicking on the task the same *Employee Self-Review Details* opens to let the manager see their subordinate's self-evaluation comments and enter their own. 

After the manager clicks *(Complete)* on this action task, the *Employee Appraisal* workflow creates an action task for the employee's manager's manager (VP-level) to review both sets of evaluation comments. Once the VP completes the review, the *Employee Appraisal* workflow concludes and the appraisal is visible in the *Appraisal History* page.

#### Managing Vacation Rules

Login as a member of the Operations Team (STEVE, PAT, BO, or JANE) to see the *Manage Vacation Rules* page in the navigation menu. Use this page to configure vacation rules to influence which additional potential owners will be added to a new approval task instance of one or more approval task tasks you can specific in the *For Which Approvals?* column. If you leave the *For Vacationing* column username set to the default *<Any User>* then the *Covering User* will be added to any approval for any potential owner. Otherwise, you can configure that a covering user be substituting just one particular potential owner, optionally only between a start date and an end date. On the same page, you can use the *Additional Appraisal VP Reviews* shuttle to add one or more additional potential owners to the final step of the employee appraisal process. Using the *Temporary Business Admin* list you can configure a user to be added as the business administrator of all approval and action tasks while `PAT` the default business administrator is on vacation.
