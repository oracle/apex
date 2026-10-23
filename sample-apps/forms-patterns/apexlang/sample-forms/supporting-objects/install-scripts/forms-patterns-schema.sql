create table sfm_expense_categories (
 category_id number default on null to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') primary key,
 category_name varchar2(80 char) not null unique,
 description varchar2(500 char),
 active_yn varchar2(1 char) default 'Y' not null check (active_yn in ('Y','N'))
);
create table sfm_expense_reports (
 report_id number default on null to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') primary key,
 report_title varchar2(200 char) not null,
 employee_name varchar2(100 char) not null,
 employee_email varchar2(254 char) not null,
 report_date date default trunc(sysdate) not null,
 currency_code varchar2(3 char) default 'USD' not null check (currency_code in ('USD','EUR','GBP','CAD')),
 status varchar2(20 char) default 'DRAFT' not null check (status in ('DRAFT','SUBMITTED','APPROVED','PAID','RETURNED')),
 business_justification clob,
 submitted_on timestamp,
 created_on timestamp default systimestamp not null,
 department varchar2(100 char),
 cost_center varchar2(30 char),
 project_code varchar2(40 char),
 manager_email varchar2(254 char),
 destination varchar2(150 char),
 travel_start date,
 travel_end date,
 payment_method varchar2(20 char) default 'BANK_TRANSFER',
 advance_amount number(12,2),
 policy_accepted_yn varchar2(1 char) default 'N' not null,
 contact_phone varchar2(40 char),
 constraint sfm_reports_payment_ck check (payment_method in ('BANK_TRANSFER','PAYROLL','CORPORATE_CARD')),
 constraint sfm_reports_policy_ck check (policy_accepted_yn in ('Y','N')),
 constraint sfm_reports_travel_ck check (travel_end >= travel_start)
);
create table sfm_expense_report_lines (
 report_line_id number default on null to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') primary key,
 report_id number not null references sfm_expense_reports(report_id) on delete cascade,
 category_id number not null references sfm_expense_categories(category_id),
 expense_date date not null,
 merchant varchar2(150 char) not null,
 description varchar2(500 char),
 amount number(12,2) not null,
 reimbursable_yn varchar2(1 char) default 'Y' not null check (reimbursable_yn in ('Y','N'))
);
create index sfm_lines_report_ix on sfm_expense_report_lines(report_id);
create index sfm_lines_category_ix on sfm_expense_report_lines(category_id);
create table sfm_expense_receipts (
 receipt_id number default on null to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') primary key,
 report_line_id number not null references sfm_expense_report_lines(report_line_id) on delete cascade,
 caption varchar2(200 char) not null,
 file_content blob not null,
 mime_type varchar2(128 char) not null check (mime_type in ('image/png','image/jpeg','application/pdf')),
 filename varchar2(255 char) not null,
 file_charset varchar2(40 char),
 file_updated_on timestamp default systimestamp not null
);
create index sfm_expense_receipts_line_ix on sfm_expense_receipts(report_line_id);
comment on table sfm_expense_reports is 'Forms Patterns: expense report headers; fictional demonstration data.';
comment on column sfm_expense_reports.business_justification is 'Long plain-text justification; includes a sample exceeding 32 KB.';
comment on column sfm_expense_report_lines.amount is 'Signed amount in the parent expense report currency. Negative amounts are refunds; zero is valid.';
comment on column sfm_expense_receipts.file_content is 'Receipt image or PDF stored as a BLOB.';
commit;
