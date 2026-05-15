create table eba_ut_demo_cards (
    id                             number               not null
                                                        constraint eba_ut_demo_cards_id_pk
                                                        primary key,
    category                       varchar2(255 char)   not null,
    title                          varchar2(255 char)   not null,
    subtitle                       varchar2(255 char)   not null,
    body                           varchar2(4000 char)  not null,
    secondary_body                 varchar2(4000 char),
    icon_class                     varchar2(255 char),
    badge                          varchar2(255 char),
    image_url                      varchar2(255 char)   not null,
    start_date                     timestamp with time zone,
    end_date                       timestamp with time zone
)
/

create or replace trigger biu_eba_ut_demo_cards
   before insert or update on eba_ut_demo_cards
   for each row 
begin  
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
end;
/

alter trigger biu_eba_ut_demo_cards enable
/

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(1, 'conference', 'Accessibility', 'Creating Accessible Apps', 'This conference breaks down all aspects of creating accessible web applications. We focus on the latest World Wide Web Consortium (W3C) standards in sessions discussing tables, labels, forms, images, color contrast, links, page structure, screen reader testing, and Voluntary Product Accessibility Templates (VPATs). The conference starts at 8am  and ends at 4pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Tables</li>
<li>9am-10am: Labels and Forms</li>
<li>10am-11am: Images and Color Contrast</li>
<li>11am-Noon: Links and Page Structure</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Screen Reader Analyzation</li>
<li>2pm-3pm: Voluntary Product Accessibility Templates (VPATs)</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-universal-access', '200.00', 'img/adaptable.jpg',
cast(trunc(sysdate + 10) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 10) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(2, 'conference', 'Security', 'Creating Secure Apps', 'This conference discusses all aspects of securing/hardening a web application. You''ll learn how to protect against Cross Side Scripting vulnerabilities and SQL Injection attacks. Other topics discussed are virus protection, VPNs and port sniffing, phishing and malware, and handling data breaches. The conference starts at 8am and ends at 4pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Cross Side Scripting</li>
<li>9am-10am: SQL Injection</li>
<li>10am-11am: Virus Protection</li>
<li>11am-Noon: VPNs and Port Sniffing</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Phishing and Malware</li>
<li>2pm-3pm: Handling Data Breaches</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-lock', '200.00', 'img/discovery.jpg',
cast(trunc(sysdate + 20) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 20) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(3, 'conference', 'Responsive Design', 'Creating Responsive Apps', 'This conference discusses all aspects of making a web application responsive. We will discuss topics like responsive design, minimalism, parallax vs. infinite scrolling, cross-browser compatibility, typography, and CSS animations. The conference starts at 8am and ends at 4pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Responsive Design</li>
<li>9am-10am: Minimalism</li>
<li>10am-11am: Parallax vs. Infinite Scrolling</li>
<li>11am-Noon: Cross-Browser Compatibility</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Typography</li>
<li>2pm-3pm: CSS Animations</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-arrows-h', '200.00', 'img/construction-and-engineering.jpg',
cast(trunc(sysdate + 30) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 30) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(4, 'conference', 'Slack Integration', 'Integrate Slack Into Your Apps', 'This conference shows how to integrate Slack into your web application. We will discuss topics like the Slack API, channels, channel topics vs. descriptions, markdown, and third party vendor integration. The conference starts at 8am and ends at 3pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Slack API</li>
<li>9am-10am: Channels</li>
<li>10am-11am: Channel Topics vs. Descriptions</li>
<li>11am-Noon: Markdown</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: 3rd Party Vendor Integration</li>
<li>2pm-3pm: Review and Q&A</li>
</ul>', 'fa-comment-o', '200.00', 'img/diversity.jpg',
cast(trunc(sysdate + 40) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 40) as timestamp with time zone) + interval '15' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(5, 'conference', 'Blockchain', 'Understanding Blockchain', 'This conference will cover high value payments, enhancements in transactions including IoT and Supply Chain Automation. Bring your own Laptop. The conference starts at 8am and ends at 5pm. Lunch will be provided. If you have special dietary requirements, please send an email to the organizers.', '<ul>
<li>8am-9am: Introduction to Blockchain</li>
<li>9am-10am: High Value Payments</li>
<li>10am-11am: Enhancements in Transactions</li>
<li>11am-Noon: Data and Finances</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Mobility and IoT</li>
<li>2pm-3pm: Standards for Blockchain Adoption</li>
<li>3pm-4pm: Supply Chain Automation with Blockchain</li>
<li>4pm-5pm: Review and Q&A</li>
</ul>', 'fa-cubes', '300.00', 'img/blockchain.jpg',
cast(trunc(sysdate + 50) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 50) as timestamp with time zone) + interval '17' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(6, 'conference', 'Localizations', 'Preparing your app for a global audience', 'This conference focuses on important considerations needed to ensure an application can reach a global audience, it covers the difference between automated and manual translations, User eXperience analysis, handling of sensitive data during translations, and some standards and definitions important for the target markets. Lunch will be at noon. It starts at 8 am and ends at 3 pm.', '<ul>
<li>8am-9am: Global Audience Analysis</li>
<li>9am-10am: Automated vs Manual Translations</li>
<li>10am-11am: UX Considerations</li>
<li>11am-Noon: Sensitive Data Translations</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Localization Standards and Definitions</li>
<li>2pm-3pm: Review and Q&A</li>
</ul>', 'fa-language', '140.00', 'img/best-in-class.jpg',
cast(trunc(sysdate + 60) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 60) as timestamp with time zone) + interval '15' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(7, 'workshop', 'Big Data', 'Performant Searching Against Data Warehouses', 'This small workshop covers data volume management, its analysis, integration and visualization. It also encompases cost-effective solutions for our potential customers. It starts at 8 am and ends at 2 pm. Lunch is included just before the Q&A.', '<ul>
<li>8am-9am: Data Volume Management</li>
<li>9am-10am: Analysis of Unstructured Data</li>
<li>10am-11am: Data Integration and Visualization</li>
<li>11am-Noon: Cost-Effective Solutions</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Q&A</li>
</ul>', 'fa-database-wrench', '100.00', 'img/analyze.jpg', 
cast(trunc(sysdate + 15) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 15) as timestamp with time zone) + interval '14' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(8, 'workshop', 'Cloud Services', 'Which Cloud Service Fits Your Needs', 'In this workshop we will cover protection of your data, containerized apps, shared block storage and cloud tiering when using Oracle Cloud Services. There is focus on optimizing work loads and usage analysis. It starts at 8 am and ends at 4 pm. Lunch is served at noon with vegan and meat options.', '<ul>
<li>8am-9am: Data Protection</li>
<li>9am-10am: Legacy to Containerized Apps</li>
<li>10am-11am: Shared Block Storage</li>
<li>11am-Noon: Cloud Tiering</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Optimizing Work Loads</li>
<li>2pm-3pm: Cloud Usage Analysis</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-cloud-new', '240.00', 'img/emerging-tech.jpg',
cast(trunc(sysdate + 25) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 25) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(9, 'workshop', 'Quantum Computing', 'Storing Data in Qubits', 'In this workshop, the topic of Quantum Computing as a strategy for the future development of applications and services is covered. It will include neural networks, advanced machine learning, natural language processing, quantum simulations and modern applications. It starts at 8 am and ends at 4 pm. Lunch will be served.', '<ul>
<li>8am-9am: Introduction to Quantum Computing</li>
<li>9am-10am: Neural Networks</li>
<li>10am-11am: Advanced Machine Learning</li>
<li>11am-Noon: Natural Language Processing</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Quantum Simulations</li>
<li>2pm-3pm: Modern Applications</li>
<li>3pm-4pm: Review and Q&A & Anthony Rayner</li>
</ul>', 'fa-function', '350.00', 'img/ai.jpg',
cast(trunc(sysdate + 35) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 35) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(10, 'workshop', 'HIPAA Compliance', 'Ensuring Your App Meets HIPAA Compliancies', 'HIPPA compliance is required for any application that deals with sensitive data such as medical history of patients. In this workshop you will understand the requirements that must be met before release, with special focus on personal sensitive data. It starts at 9 am and ends at 3 pm with lunch served at noon.', '<ul>
<li>9am-10am: Introduction to HIPAA</li>
<li>10am-11am: HIPAA Compliance Checklist</li>
<li>11am-Noon: Restricted Personal Data</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: App-Focused Risk Assessment</li>
<li>2pm-3pm: Review and Q&A</li>
</ul>', 'fa-medkit', '140.00', 'img/hr.jpg',
cast(trunc(sysdate + 45) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 45) as timestamp with time zone) + interval '15' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(11, 'workshop', 'Automated Testing', 'Validate App Functionality Before Release', 'This workshop covers automated build tools from you can setup unit, acceptance and UI testing. We will cover continuous integration and version control systems related to automated testing. A manager will provide insight on how to prepare your software quality assurance team to cover all bases before, during and after tests, thus ensuring a release without bugs.', '<ul>
<li>8am-9am: Automated Build Tools</li>
<li>9am-10am: Unit, Acceptance and UI Testing</li>
<li>10am-11am: Continuous Integration (CI)</li>
<li>11am-Noon: Version Control Systems</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Coding Standards</li>
<li>2pm-3pm: Managing Integrated Testing Projects</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-check-square-o', '300.00', 'img/chatbots.jpg',
cast(trunc(sysdate + 55) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 55) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(12, 'workshop', 'Database Modeling', 'Design Data Models With Referential Integrity', 'This workshop covers several design patterns for data modeling, including graphs and classic models. There will be software tools available for the hands-on lab, so bring your laptop. It will start at 8 am and ends at 4 pm. Lunch will be served, with vegan options for those interested.', '<ul>
<li>8am-9am: Data Models Overview</li>
<li>9am-10am: Graph Data Models</li>
<li>10am-11am: Classic Data Modeling</li>
<li>11am-Noon: Performance-Driven Analysis</li>
<li>Noon-1pm: Lunch</li>
<li>1pm-2pm: Software Tools for Data Modeling</li>
<li>2pm-3pm: Data Models Hands-on Lab</li>
<li>3pm-4pm: Review and Q&A</li>
</ul>', 'fa-database', '220.00', 'img/collaboration.jpg',
cast(trunc(sysdate + 65) as timestamp with time zone) + interval '8' hour,
cast(trunc(sysdate + 65) as timestamp with time zone) + interval '16' hour
);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(13, 'badge', 'Fernanda Mendez', 'Product Manager', 'fernanda.mendez@yourcompany.com', null, null, null, 'img/persona-female01-apex.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(14, 'badge', 'Krist Grohl', 'Quality Manager', 'k.grohl@yourcompany.com', null, null, null, 'img/persona-male03.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(15, 'badge', 'Charles Statman', 'QA Specialist', 'charlie.s@yourcompany.com', null, null, null, 'img/persona-male01-apex.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(16, 'badge', 'Susan Parrish', 'Software Developer', 'susan.parrish@yourcompany.com', null, null, null, 'img/persona-female04-oracle.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(17, 'badge', 'Johnnathan Brie', 'Team Lead', 'johnathan.b@yourcompany.com', null, null, null, 'img/persona-male04-apex.png', null, null);

insert into eba_ut_demo_cards (id, category, title, subtitle, body, secondary_body, icon_class, badge, image_url, start_date, end_date)
values
(18, 'badge', 'Diana Flores', 'CFO', 'diana.flores@yourcompany.com', null, null, null, 'img/persona-female03.png', null, null);