insert into sfm_expense_categories(category_id,category_name,description) values(1,'Travel','Airfare, rail, and local transit');
insert into sfm_expense_categories(category_id,category_name,description) values(2,'Accommodation','Hotel and overnight stays');
insert into sfm_expense_categories(category_id,category_name,description) values(3,'Meals','Business meals and refreshments');
insert into sfm_expense_categories(category_id,category_name,description) values(4,'Office','Office supplies and equipment');
insert into sfm_expense_categories(category_id,category_name,description) values(5,'Training','Courses and learning materials');
insert into sfm_expense_categories(category_id,category_name,description) values(6,'Other','Other business expenses');
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on) values (1,'Developer Summit - San Francisco','Avery Chen','avery.chen@example.com',trunc(sysdate)-1,'USD','SUBMITTED',to_clob('Conference attendance and customer workshops. Includes hotel, transit and meals. Receipts are attached.'),systimestamp-interval '2' day);
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on) values (2,'Customer workshop - London','Jordan Morgan','jordan.morgan@example.com',trunc(sysdate)-2,'GBP','APPROVED',to_clob('On-site discovery and solution design workshop. All figures are in GBP.'),systimestamp-interval '2' day);
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on) values (3,'Home office refresh','Sam Rivera','sam.rivera@example.com',trunc(sysdate)-3,'USD','DRAFT',to_clob('Replacement keyboard and home office accessories. Includes a negative refund for a returned item and a zero-cost replacement.'),null);
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on) values (4,'Training and certification','Taylor Brooks','taylor.brooks@example.com',trunc(sysdate)-4,'USD','PAID',to_clob('Professional development expenses and course materials.'),systimestamp-interval '2' day);
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on) values (5,'October team planning','Casey Patel','casey.patel@example.com',trunc(sysdate)-5,'USD','RETURNED',to_clob('Planning session expenses. Please add the missing receipt before resubmitting.'),systimestamp-interval '2' day);
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on) values (6,'Long-text form example','Alex Kim','alex.kim@example.com',trunc(sysdate)-6,'USD','DRAFT',to_clob('This record demonstrates a CLOB justification exceeding 32 KB.'),null);
declare l_text clob; begin select business_justification into l_text from sfm_expense_reports where report_id=6 for update; for i in 1..700 loop dbms_lob.writeappend(l_text,length(chr(10)||'Sample paragraph '||i||': Meeting goals, outcomes, customer feedback, and business justification.'),chr(10)||'Sample paragraph '||i||': Meeting goals, outcomes, customer feedback, and business justification.'); end loop; end;
/
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(1,1,2,trunc(sysdate)-2,'Harbor Hotel','Three nights near the conference venue',785.5,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(2,1,1,trunc(sysdate)-2,'Metro Transit','Airport and local rail travel',32.75,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(3,1,3,trunc(sysdate)-2,'Market Street Cafe','Working lunch with project team',48.6,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(4,1,1,trunc(sysdate)-2,'Airline refund','Refund for unused seat upgrade',-85.0,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(5,2,1,trunc(sysdate)-3,'City Rail','Return rail ticket',64.2,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(6,2,2,trunc(sysdate)-3,'Riverside Hotel','Two nights for customer workshop',410.0,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(7,2,3,trunc(sysdate)-3,'Workshop Catering','Team lunch',125.5,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(8,3,4,trunc(sysdate)-4,'Desk Supply Co','Ergonomic keyboard',129.99,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(9,3,4,trunc(sysdate)-4,'Desk Supply Co - return','Refund for incompatible adapter',-39.95,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(10,3,4,trunc(sysdate)-4,'Warranty replacement','Replacement at no additional charge',0.0,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(11,4,5,trunc(sysdate)-5,'Learning Academy','Technical certification course',299.0,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(12,4,5,trunc(sysdate)-5,'Bookshop','Reference materials',54.8,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(13,5,3,trunc(sysdate)-6,'Corner Kitchen','Team planning lunch',186.45,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(14,5,6,trunc(sysdate)-6,'Meeting Supplies','Whiteboard supplies',22.3,'Y');
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn) values(15,6,6,trunc(sysdate)-7,'Documentation example','Long CLOB content demonstration',15.0,'Y');
insert into sfm_expense_reports(report_id,report_title,employee_name,employee_email,report_date,currency_code,status,business_justification,submitted_on)
values(7,'Regional planning workshop','Morgan Lee','morgan.lee@example.com',trunc(sysdate),'USD','SUBMITTED',to_clob('Travel and working meals for the regional planning workshop. Includes image and PDF receipts.'),systimestamp);
insert into sfm_expense_report_lines(report_line_id,report_id,category_id,expense_date,merchant,description,amount,reimbursable_yn)
values(16,7,3,trunc(sysdate),'Workshop Cafe','Working lunch after the regional planning session',48.60,'Y');
commit;

update sfm_expense_reports
set department=case when mod(report_id,2)=0 then 'Product Development' else 'Customer Success' end,
    cost_center='CC-410', project_code='APEX-262', manager_email='manager@example.com',
    destination=case when currency_code='GBP' then 'London' else 'San Francisco' end,
    travel_start=report_date-3, travel_end=report_date,
    payment_method='BANK_TRANSFER', advance_amount=case when mod(report_id,2)=0 then -25 else 100 end,
    policy_accepted_yn='Y', contact_phone='+1 415 555 0100';
commit;
