insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ) values (1, 'REVIEW', 'Review', 'Reviews', 10);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (2, 'REVIEW-FUNCSPEC', 'Functional Spec Review', 'A review of the functional specification document', 11, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (3, 'REVIEW-SPEC', 'Spec Review', 'A review of the implementation designed to implement a functional specification document', 12, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (4, 'REVIEW-PEER', 'Peer Review', 'Review of the implementation by your fellow developer', 13, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (5, 'REVIEW-SECURITY', 'Security Review', 'Review of the security exposure, remediations, and risk of this implementation', 14, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (6, 'REVIEW-ACCESSIBILITY', 'Accessibility Review', 'Review web accessibility', 15, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (7, 'REVIEW-PM', 'Product Management Review', 'Project Management (PM) team review', 16, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (8, 'REVIEW-DOC', 'Documentation Review', 'Review of the documentation', 17, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (9, 'REVIEW-TESTING', 'Functional Testing Review', 'Review of the testing plan', 18, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (10, 'REVIEW-UX', 'User Experience Review', 'Review of end-user experience', 19, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (11, 'REVIEW-IMPLEMENTATION', 'Implementation Review', 'An implementation review is typically performed before merge', 20, 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (12, 'REVIEW-OTHER', 'Other Review', 'A review that does not fall into any other category', 21, 1);

insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ) values (20, 'MILESTONE', 'Milestone', 'Milestones', 1);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (21, 'MILESTONE-SPEC', 'Spec', 'Specification is complete and ready for review', 2, 20);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (22, 'MILESTONE-DEMO', 'Demonstration', 'Code has been successfully demonstrated', 3, 20);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (23, 'MILESTONE-CODE', 'Code Complete', 'Code is complete', 4, 20);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (24, 'MILESTONE-MERGED', 'Merged', 'Code has been merged', 5, 20);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (25, 'MILESTONE-HOSTED', 'Hosted', 'Code has been hosted', 6, 20);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (26, 'MILESTONE-COMPLETE', 'Fully Completed', 'The task is now fully complete', 7, 20);

insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ) values (30, 'PM', 'PM', 'Project Management', 30);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (31, 'PM-CUST-ISSUE', 'Customer Issue Identified', 'Customer Issue has been identified', 31, 30);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (32, 'PM-RES-IDENTIFIED', 'Resolution Identified', 'Resolution has been identified', 32, 30);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (33, 'PM-PROVIDED', 'Provided to Customer', 'Resolution Provided to Customer', 33, 30);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (34, 'PM-IMPLEMENTED', 'Implemented by Customer', 'Resolution implemented by Customer', 44, 30);

insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ) values (40, 'SALES', 'Sales', 'Sales Engagement', 40);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (41, 'SALES-OPP-QUALIFIED', 'Opportunity Qualified', 'Opportunity has been qualified', 41, 40);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (42, 'SALES-PRESENT', 'Presented to Customer', 'Presented to Customer', 42, 40);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (43, 'SALES-PROPOSAL-DRAFT', 'Proposal Drafted', 'Proposal Drafted', 43, 40);
insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, PARENT_TYPE_ID) values (44, 'SALES-PROPOSAL-DEL', 'Proposal Delivered', 'Proposal Delivered', 44, 40);

insert into sp_task_types (ID, STATIC_ID, TASK_TYPE, DESCRIPTION, DISPLAY_SEQ, TASK_NAME_REQ_YN) values (50, 'DEVELOPMENT', 'Development', 'Development Activities', 50, 'Y');

insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (1, 1, 'Identified', 'IDENTIFIED', 1, 'Y', 'Y', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (2, 1, 'Assigned', 'ASSIGNED', 2, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (4, 1, 'In Progress', 'IN-PROGRESS', 4, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (5, 1, 'More Information Requested', 'MORE-INFO', 5, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (6, 1, 'Paused', 'PAUSED', 6, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (7, 1, 'Blocked', 'BLOCKED', 7, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (8, 1, 'Completed', 'COMPLETED', 8, 'Y', 'N', 'Y');

insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (10, 20, 'Identified', 'IDENTIFIED', 1, 'Y', 'Y', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (11, 20, 'In Progress', 'IN-PROGRESS', 4, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (12, 20, 'Paused', 'PAUSED', 6, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (13, 20, 'Blocked', 'BLOCKED', 7, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (14, 20, 'Completed', 'COMPLETED', 8, 'Y', 'N', 'Y');

insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (21, 30, 'Identified', 'IDENTIFIED', 1, 'Y', 'Y', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (22, 30, 'Assigned', 'ASSIGNED', 2, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (23, 30, 'In Progress', 'IN-PROGRESS', 4, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (24, 30, 'More Information Requested', 'MORE-INFO', 5, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (25, 30, 'Paused', 'PAUSED', 6, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (26, 30, 'Blocked', 'BLOCKED', 7, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (27, 30, 'Completed', 'COMPLETED', 8, 'Y', 'N', 'Y');

insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (31, 40, 'Identified', 'IDENTIFIED', 1, 'Y', 'Y', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (32, 40, 'Assigned', 'ASSIGNED', 2, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (33, 40, 'In Progress', 'IN-PROGRESS', 4, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (34, 40, 'Completed', 'COMPLETED', 8, 'Y', 'N', 'Y');

insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (41, 50, 'Identified', 'IDENTIFIED', 1, 'Y', 'Y', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (42, 50, 'Assigned', 'ASSIGNED', 2, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (43, 50, 'In Progress', 'IN-PROGRESS', 4, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (44, 50, 'More Information Requested', 'MORE-INFO', 5, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (45, 50, 'Paused', 'PAUSED', 6, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (46, 50, 'Blocked', 'BLOCKED', 7, 'Y', 'N', 'N');
insert into sp_task_statuses (id, task_type_id, status, static_id, display_seq, include_yn, is_default_yn, indicates_complete_yn) values (47, 50, 'Completed', 'COMPLETED', 8, 'Y', 'N', 'Y');
