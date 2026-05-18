create or replace package body eba_cust_sample_data as
  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table)
    return blob
  is
    l_blob blob;
    l_raw  raw(500);
    l_size number;
  begin
    dbms_lob.createtemporary(l_blob, true, dbms_lob.session);
    for i in 1 .. p_varchar2_tab.count loop
      l_size := length(p_varchar2_tab(i)) / 2;
      dbms_lob.writeappend(l_blob, l_size, hextoraw(p_varchar2_tab(i)));
    end loop;
    return l_blob;
  exception
    when others then
      dbms_lob.close(l_blob);
  end varchar2_to_blob;  


  procedure create_sample_data is
    i               dbms_sql.varchar2_table;
    j               dbms_sql.varchar2_table default wwv_flow_api.empty_varchar2_table;
    l_blob          blob;
    l_cust_id       number;
  begin
--
-- Customers
--
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (1, 'Carlton Closets',2,2,'Manufacture custom cabinetry.', 5, 'N', 'Yes', 4, 10, 'http://www.caltonclosets.com','CCLO',300000,15,4,'CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (2, 'Organic Farms',1,3,'Wholesale distributor of farm produce.', 22,  'N', 'No', 2, 10, 'http://www.organicfarms.com','ORGF',575000,18,3,'APPS');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (3, 'Water Works Construction',2,3,'Construction of major water infrastructure.', 7, 'Y', 'No', null, 50, 'http://www.water-works.com','WWCO',710000,20,3,'MOBILE,CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (4, 'Barney Burger',1,2,'Restuarant chain, rapidly spreading across Japan.', 5, 'N', 'Yes', 3, 40, 'http://www.barneyburger.ja','BARB',498000,15,1,'CLOUD,MOBILE');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (5, 'Logistics 36',2,2,'Engineering consultancy.', 7, 'N', 'No', 1, 10, 'http://www.logistics36.com','LOGT',350000,10,2,'');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (6, 'Bauhaus Ink',2,1,'Manufacturer and Distributor of Art Products and Supplies.',12, 'Y', 'No', null, 30, 'http://www.bauhausink.com','BAUI',600000,17,1,'APPS,MOBILE');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (7, 'Soho Chair',2,3,'Manufacture high end chairs.',12, 'N', 'No', 2, 10, 'http://www.sohochairs.com','SOHC',1300000,20,2,'APPS,CLOUD,MOBILE');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (8, 'Danish Architects',2,2,'Distinguished architects responsible for noteworthy buildings.',7 , 'N', 'No', null, 30, 'http://www.darchitects.com','DAAR',100000,19,4,'APPS,CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (9, 'Colorado Outfitters',2,2,'Premium clothing for the outdoorsey type.',5 , 'N', 'Yes', 4, 40, 'http://www.colorado-out.com','COOU',805000,18,1,'CLOUD,MOBILE');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (10, 'Telex Communications',2,2,'Telecommunication equipment supplier.',4, 'N', 'No', 1, 50, 'http://www.telexcom.com','TLXC',95000,10,1,'CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (11, 'A-Frame Aerospace',2,2,'Specialize in building components for the aerospace industry.',1, 'Y', 'Yes', 3, 10, 'http://www.aframeaero.com','AFRA',187000,5,1,'CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (12, 'Marvel Power Systems',2,2,'Manufacture automotive power plants, such as superchargers and turbos.',2, 'N', 'No', null, 20, 'http://www.marvelps.com','MVPS',800000,17.5,2,'');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (13, 'Make Good',3,2,'Provide free skills training and placements to returning veterans.',6, 'Y', 'No', 1, 10, 'http://www.makegoodveterans.com','MKGD',1325000,15,4,'APPS,CLOUD,MOBILE');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (14, 'Synergy Sales Solutions',2,2,'Sell financial software.',8, 'N', 'No', 1, 50, 'http://www.synergysoftware.com','SYSS',1200000,15,3,'APPS,CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (15, 'Sakoro Speakers',2,2,'Manufacture high-fidelity speaker systems for cinemas.',14, 'Y', 'No', null, 40, 'http://www.sakoros.com','SAKO',250000,10,3,'');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (16, 'Bankgraph',2,2,'Specialize in financial projections and modelling.',8, 'N', 'No', 2, 50, 'http://www.bankgraph.com','BGRH',400000,8,2,'CLOUD,MOBILE');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (17, 'Mogul Mashups',2,2,'Produce new age marketing campaigns.',4, 'N', 'No', null, 30, 'http://www.mogulmashups.com','MMSH',175000,10,2,'CLOUD');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (18, 'Cyphria',2,2,'Manufacture drugs primarily for Multiple Sclerosis.',13, 'Y', 'No', 2, 10, 'http://www.cyphria.com','CYIA',null,null,3,'');
    insert into eba_cust_customers (id, customer_name, category_id, status_id, summary, industry_id, marquee_customer_yn, referencable, reference_phase_id, geography_id, web_site, stock_symbol,total_contract_value, discount_level, type_id, tags)
      values (19, 'Illumina Biotech',1,2,'Specialize in validation, compliance, consulting and programming solutions for biotech companies',13, 'Y', 'Yes', 4, 10, 'http://www.illuminabiotech.com','ILBI',1400000,18,2,'APPS,CLOUD,MOBILE');
    commit;

--
-- References
--  
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (1,1,1) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (2,1,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (3,1,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (4,1,4) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (5,1,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (6,2,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (7,2,4) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (8,2,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (9,4,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (10,4,4) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (11,4,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (12,5,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (13,5,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (14,7,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (15,7,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (16,7,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (17,9,1) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (18,9,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (19,9,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (20,9,4) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (21,9,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (22,10,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (23,11,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (24,11,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (25,11,4) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (26,13,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (27,13,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (28,14,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (29,16,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (30,16,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (31,16,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (32,18,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (33,18,5) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (34,19,1) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (35,19,2) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (36,19,3) ;
       insert into eba_cust_customer_reftype_ref (id, customer_id, reference_type_id )
          values (37,19,4) ;

--
-- Implementation Partners
--
       insert into eba_cust_impl_partners ( id, name, description, website)
          values (1,'SSC Solutions', 'Cloud integration specialists', 'http://wwww.ssc-solutions.com');
       insert into eba_cust_impl_partners ( id, name, description, website)
          values (2,'TRQ Alliance', 'Apps implementation specialists', 'http://wwww.trqa.com');
       insert into eba_cust_impl_partners ( id, name, description, website)
          values (3,'HHU Partners', 'Mobile application development', 'http://wwww.hhup.com');

       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (1, 2, 2);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (2, 6, 3);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (3, 3, 1);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (4, 7, 1);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (5, 7, 2);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (6, 7, 3);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (7, 10, 1);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (8, 19, 1);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (9, 19, 2);
       insert into eba_cust_cust_partner_ref ( id, customer_id, partner_id)
          values (10, 19, 3);
       commit;

--
-- Competitiors
--
       insert into eba_cust_competitors ( id, name, description, website)
          values (1,'Hamper Enterprises Inc', 'Software Products and Services', 'http://wwww.hamperinc.com');
       insert into eba_cust_competitors ( id, name, description, website)
          values (2,'PAS Solutions', 'Cloud solutions and integration', 'http://wwww.pascloud.com');

       insert into eba_cust_cust_competitor_ref ( id, customer_id, competitor_id)
          values (1, 7, 1);
       insert into eba_cust_cust_competitor_ref ( id, customer_id, competitor_id)
          values (2, 7, 2);
       insert into eba_cust_cust_competitor_ref ( id, customer_id, competitor_id)
          values (3, 19, 1);
       insert into eba_cust_cust_competitor_ref ( id, customer_id, competitor_id)
          values (4, 19, 2);
       commit;


--
-- Contacts
--
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags)
          values (1,'Barry Bruce','CFO', 'Californua Closets',2,1,'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (2,'Ignacio Cirac','CEO', 'Organic Farms',2,2,'APPS');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (3,'Esther Duflo','CFO', 'Water Works Construction',2,3,'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (4,'Kevin Eggan','CFO', 'Barney Burger',2,4,'MOBILE');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (5,'Matt Hanson','CFO', 'Logistics 36',2,5,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (6,'Thomas Linzey','Executive Director', 'Bauhaus Ink',2,6,'MOBILE');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (7,'Karim Nader','CFO', 'Bauhaus Ink',2,6,'APPS');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (8,'Max Tegmark','CEO', 'Bauhaus Ink',2,6,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (9,'Josh Tenenbaum','CIO', 'Soho Chair',2,7,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (10,'Christopher Voigt','Executive Director', 'Danish Architects',2,8,'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (11,'Ralph Tenenbaum','Executive Director', 'Colorado Outfitters',2,9,'MOBILE');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (12,'Franklin Hu','Executive Director', 'Telex Communications',2,10,'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (13,'Daniel James Lee','IT Director', 'A-Frame Aerospace',2,11,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (14,'Brock Shilling','VP Information Technology', 'Marvel Power Systems',2,12,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (15,'Lucille Beatie','CIO', 'Make Good',2,13,'APPS,CLOUD,MOBILE');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (16,'Nina Herschel','IT Director', 'Synergy Sales Solutions',2,14,'APPS,CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (17,'Tameka Hall','Chief Architect', 'Sakoro Speakers',2,15,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (18,'Mei Yu','IT Director', 'Bankgraph',2,16,'MOBILE');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (19,'Madison Smith','IT Director', 'Mogul Mashups',2,17,'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags )
          values (20,'Bernhard Jackman','CEO', 'Cyphria',2,18,'');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id, email, phone, tags )
          values (21,'Eva Jelinek','CFO', 'Illumina Biotech',2,19, 'ejelinek@illumninabiotech.com','1-555-506-3324', 'APPS');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id, email, phone, tags )
          values (22,'Harold Youngblood','CIO', 'Illumina Biotech',2,19,'hyoungblood@illuminabiotech.com','1-555-506-3955','CLOUD,MOBILE');

       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags)
          values (51,'John Parker','Distinguished Product Manager', 'SSC Solutions',4,7,'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags)
          values (52,'Kevin Mason','Senior Sales Consultant', 'TRQ Alliance',3,7,'APPS');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id,tags)
          values (53,'Dianne Wilson','Principal Consultant', 'HHU PArtners',3,7,'MOBILE');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id, email, phone, tags )
          values (54,'John Parker','Distinguished Product Manager', 'SSC Solutions',4,19, 'johnp@ssc-solutions.com', '1-555-301-8881', 'CLOUD');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id, email, phone, tags )
          values (55,'Kevin Mason','Senior Sales Consultant', 'TRQ Alliance',3,19,'kevin.mason@hhqa.com', '1-555-334-1721', 'APPS');
       insert into eba_cust_contacts ( id, name, title, Company,contact_type_id, customer_id, tags )
          values (56,'Dianne Wilson','Principal Consultant', 'HHU PArtners',3,7,'MOBILE');
       commit;

--
-- Activity
--
       insert into eba_cust_activities (id, type_id, name, description, activity_date, owner, location )
          values (1, 1, 'Cloud Overview', 'Outlining the architecture and benefits of moving to the cloud', null, 'Irene Walker', null);
       insert into eba_cust_activities (id, type_id, name, description, activity_date, owner, location )
          values (2, 2, 'Cold Call', 'Call based on leads obtained from various sources', null, 'Jack Han', null);
       insert into eba_cust_activities (id, type_id, name, description, activity_date, owner, location )
          values (3, 2, 'Lead Follow-Up', 'Phone specific customer based on a qualified lead from Internal Sales', null, null, null);
       insert into eba_cust_activities (id, type_id, name, description, activity_date, owner, location )
          values (4, 2, 'Status Update', 'Phone customer to see how they are progressing', null, null, null);
       insert into eba_cust_activities (id, type_id, name, description, activity_date, owner, location )
          values (5, 3, 'Demo Grounds', 'Lead generation from a conference, such as from the demo booth', null, 'Irene Walker', null);
       insert into eba_cust_activities (id, type_id, name, description, activity_date, owner, location )
          values (6, 4, 'Face-to-Face', 'In person meeting with customer / prospect', null, null, null);
       insert into eba_cust_activity_ref (id, activity_id, customer_id, contact_id, activity_date, owner, location, notes )
          values (1, 1, 7, 9, to_date('12202015','MMDDYYYY'), null, 'Webcast', 'Josh showed genuine interest in cloud. Worth a follow-up from sales.');
       insert into eba_cust_activity_ref (id, activity_id, customer_id, contact_id, activity_date, owner, location, notes )
          values (2, 3, 7, 9, to_date('12232015','MMDDYYYY'), 'Petra Olinski', null, 'Josh wants to meet with us and an integration partner.');
       insert into eba_cust_activity_ref (id, activity_id, customer_id, contact_id, activity_date, owner, location, notes )
          values (3, 6, 7, 9, to_date('12302015','MMDDYYYY'), 'Jim Jameson', 'Soho', 'Agreement in principle to buy cloud credits.');
       insert into eba_cust_activity_ref (id, activity_id, customer_id, contact_id, activity_date, owner, location, notes )
          values (4, 1, 19, 9, to_date('12242015','MMDDYYYY'), null, 'Webcast', 'Harold showed genuine interest in cloud. Worth a follow-up from sales.');
       insert into eba_cust_activity_ref (id, activity_id, customer_id, contact_id, activity_date, owner, location, notes )
          values (5, 3, 19, 9, to_date('12272015','MMDDYYYY'), 'Petra Olinski', null, 'Harold wants to meet with us and an integration partner.');
       insert into eba_cust_activity_ref (id, activity_id, customer_id, contact_id, activity_date, owner, location, notes )
          values (6, 6, 19, 9, to_date('12312015','MMDDYYYY'), 'Jim Jameson', 'Illumina Biotech HQ', 'Positive meeting - Expect to sell apps, cloud and mobile solutions.');

       update eba_cust_activities
         set activity_date = activity_date + (SYSDATE - TO_DATE('01012016','MMDDYYYY'))
         where activity_date is not null;
       update eba_cust_activity_ref
         set activity_date = activity_date + (SYSDATE - TO_DATE('01012016','MMDDYYYY'))
         where activity_date is not null;
       commit;

--
-- notes
--
       insert into eba_cust_notes (id, customer_id, contact_id, note )
          values (1,1,1,'Interested in moving to the cloud in the near future') ;
       insert into eba_cust_notes (id, customer_id, contact_id, note )
          values (2,2,null,'Apps not meeting all of their requirements - May be cloud / extension opportunities') ;
       insert into eba_cust_notes (id, customer_id, contact_id, note )
          values (3,3,3,'Interested in (disconnected) mobile capabilities and cloud for external facing apps') ;
       commit;

--
-- links
--
       insert into eba_cust_links (id, customer_id, link,link_desc, link_type)
          values ( 1,10,'http://www.telexcom.com/products.html','Product Portfolio','HTM');
       commit;
  
--
-- products
--
        insert into eba_cust_products (id, PRODUCT_NAME, tags) values (1,'Peregrine Enterprise Edition','SAMPLE PRODUCT');
        insert into eba_cust_products (id, PRODUCT_NAME, tags) values (2,'Peregrine Standard Edition','SAMPLE PRODUCT');
        insert into eba_cust_products (id, PRODUCT_NAME, tags) values (4,'System Sanity Check','SAMPLE PRODUCT');
        insert into eba_cust_products (id, PRODUCT_NAME, tags) values (6,'Symmetric 2000','SAMPLE PRODUCT');
        insert into eba_cust_products (id, PRODUCT_NAME, tags) values (7,'Symmetric 2100','SAMPLE PRODUCT');
        commit;
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (1, 1, 1);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (2, 1, 2);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (3, 2, 1);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (4, 2, 2);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (5, 2, 4);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (6, 3, 2);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (7, 3, 6);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (8, 4, 6);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (9, 5, 7);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (10, 6, 7);
        insert into eba_cust_product_uses (id, customer_id, PRODUCT_ID) values (11, 7, 1);
        commit;
--
-- logos
--
  -- Carlton Closets (1)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000114A4944415478DAEC9D3D685CC71A8657D7C146C6C2021B1909190B';
    i(2) := '0C0A31182B44CD4D15E2D62ED2B8952B43DAA40B2993DB39B7BC5C5771EB2685DD26A4F26D04713038441050B090B0B0404146C2262277DFB1DECDECD19CDDB3D2D9DFF33C6191B3BB6734E768BE77BEF9BEF9A9D5000000000000000000000000000000';
    i(3) := '0000000000000000000000000000000060D0181BB51B5ABEB37CBBFE63A9FEFA883F2F94C88FF5D7FDC57B8BDF22008369F873F51FDFD55F0BB455E8224FEAAF4FEA42B08A000C96F1FF547F4DD23EA1076CD75FEF8F8208FC6344FE20DF61FCD043260F';
    i(4) := 'DA5C0D01188C313F6E3FF49A8583B68700F49925DA22D0F6AA2B001FD10E81B657ED180000200000800000000200000800002000008000000002000008000002000008000020000080000000020000080000200000800000000200000800002000008000';
    i(5) := '00000200000800002000008000000002000008000020000080000000020000BDE31D1E41B538F7CF73B5C985C9DAC4FC44EDC4E913E1BDDDE7BBB5572BAF6A2FBE7F517BB3F586878400C0A871FAE2E9DAE54F2FD74E9E3B99FC4CAFA9EB53B58D471BB5';
    i(6) := 'F587EB3C30040046C9F8E73F9B0F3DBE7A78F5F4DB4FB6C3BFF59EBC0119BF7E4EDF980E22B1FAED2A0F0E01806147066EE397D1AFDE5FADEDEFEE373ED7BFF5BE5E1A1ECCDD9E0B3F352CD8FC7E930738E210041C712EDEBA188C5F069D35FE2C5BFFDB';
    i(7) := 'AA3D7FF03CFC7BE6C64C23460008000C69EFAFDE5CAC3D586B69FC46BDBE870693D726798808000C2B1AD30BF5FE3B2B3B85AF538C40285B0008000C290AFE09A5F83AC1DFF7F58000C010B3BFB7DFD1F7E5318421C438318051872C0024513090494108';
    i(8) := '008C00A9C93FED2005C81000861CE5F685A2F9A4F40001A8181ACB3BA577E1FA051E082000551CCB0B4DF1F59C000004A042C300CDF0139AE6ABD75162028000C090A2853D0EEAC90BB8F2E51572FC8000546D28B0727725C405E2054280004045D074E0';
    i(9) := '956FFE160102838000540C2D08D2A61FE2ECB5B33C100400AAE80908E200800054D40B004000001000004000000001806A71F55F571B3B07010200238EA601CF7F3E7FE8FFF5628A70F5603F808AE0893F5A14643C1F40EFC90B9037A0F7B42720990204';
    i(10) := '004604CDFFF7F6E042F300B43EC03BFEBC7CFC322C12F2C120531F4F85A9C35E4404A3CBD8B0DFC0F29DE5BFF833A609067D73BA31C697C1CBF0F37608D6F7E2D582FADEC6C38D8E7614AE1A8BF716C710000460E0DC7DF5F85EFF2F777EF387CDC267FE';
    i(11) := 'CDDC9C095E803D061F18C2B060F4048021C0885186F14A281407B088841385AF4D7624228000408FDDFD32DD770986860B5B8FB71AC308EF2AD46A18010C011802F41019BC037836DC6E04F0DA05121902200008408FC7F9A9B45E375378FDF89D080002';
    i(12) := '80000C586FDC2BAF030140001080CC38BF93B4DEB0C51D1000040001C871BD8F93D6EB36554E1B920684CA1B17694304002AEE5E93366408C010A0044625C05695B421310004A0B471FECC8DBABB7F7DAAF1DEB0A7D85269431D50B2FE687D64E2030800';
    i(13) := '02406F5911AF060140004A1FE7CFDE9A6D6CCFDDEFB45EAFE31A3AA064EDC1DA50DF2F0280001CA94754747F50D37ADD2695D9D0BD0FA3C7431A108EDDF8ABB6D496B421025039261726438367B38D5AC3EBC94B1B4A1075AC392000430FF3E65B2301DC';
    i(14) := 'B9BBD30884EA795DFEF432AB0D89010C770C6014D37ABD7866C39636240888001C82B5F3D5F19A080242136AB88EEE8F7A5AAF5BE8B9ADDC5D694A1B06417877223C4F280F0E0629B9E7B7F1CBDD7FFAC5538CFF98F1013D439F5F103F5F4000060E8FF7';
    i(15) := 'E5AE92CE2A0F3D4B3DD3F8190302307078461F11FEF2F133F533060400001080C14173DB3D568572F133F533060460E050CE5A2805A8B1AAD380703CF42CF54CE3670CE5401AB0E471AA52559E07E0460BE53D5FE22B08C04013F2FEBFEE845E8B805579';
    i(16) := '432BF5FC183F02404F05400C0000100000400000000100000400001000004000000001000004000010000040000010000040000000010000040000100000400000000100000400004605F604AC28DAB2FCF4ECDB4D4B39BF100F002A868C7FFEF3F9F002';
    i(17) := '3C00802674A6C1F8C5F1DADEF3BDC6C19C8000404590F14FCC4FF02018020000020000080014E7E4B993E1D5EF32FA4199C7A2E9FE39689518C050A0834153E702EA7CBB3F7EFEA3F6E2FB17B5FDDDFDDCEBD5D02F5CBF10CAC91ABEAEDBFE79BBB6FE70';
    i(18) := 'BDF666EB4DD2E8666FCD867FAFDC5D6994A7B2261726C3FF6F3DCE3FB64CDF3BF7E1DB63B89D2274B6C0AC3D584B1ED1ADBACEDC9CA94D5E9B3C64ACDB4FB6C3D97EADD28DFE1D2E5FF5D573CCC6213827100118D8DEFEF2A7970F19BE8C36E4DCEBEFEB';
    i(19) := '2523FBED3FBF258D489FCF7F36DF6440BEBEC998EB46B6F2CDCAA1324E8C9F6832985479AF565EE5DEC3A9F3A70E199CAE8DDFD3EF4809C7DCEDB9E47D0B19B35E325A1D9E9AC2BF43E5AB2C95992A4BF7A4CF750A735E598000F41435CE2B5F5E6934D2';
    i(20) := '8D471BB5978F5F367A69F7EAD337A61B42F1ECAB674D9E80BE6363D5FB4ABD657B391F3BAEEFA88CA75F3C6DE982C7E5A9F7DD5BDB0B2717E7A13AFB7379122A4322A35EB9D103AFEDE61ABFEE57DE495C6F19F6F4CDE9F0D346DDCA70D5EB4B2C54969E';
    i(21) := '81BC87B82CD74B65A9AE78020840DF9131DAF8D5B8B38D520628C378FDF275301689800441EF19FDBF8D35D5BB07F7BD5EAE0C43EEB2CA90A1C406127369E952284FD7C8905A0D3B8CCAB668EDEFED377EE6B9EEEE8DED9AABDED9DFA36B77EEEE347A75';
    i(22) := 'BDECC6A7D03DB52A4BEF5FFDFAEA5B6FA83E5C41008E0741C063A25EC9EEAB7AFE560D529FD9986217579C993FF376BC5C1FE3A78C3F36021B69AB409B3EB3CB5DC4F88F823C1A0B5CCA6063540FDFFBCC8D9996E5FE7EFFF7DCB2F4BE9F31F3141080FE';
    i(23) := '07FD0E8266EEE5DBA1209C630629E36EE5A29B3F77FF2CD49B77738CAC1ED881C5CD1F360B89CCC6C38D43D76691F8B512403F27600830301E807BF722E87BA9EF3A6ADF0E0713DBA16C432FEEDBB18322D87B91F8E9FAD4F04599927674CBA34100A063';
    i(24) := 'DC9377A357B29129E2ED614251B75773F8BB894548C6984A49E6A1DE5DCF4C538D53284E0208C0D05146AFE46CC1D96B67737B791BDBA04C0ECA6605DA0AD3DA5EAEFB1FDF1F200095424631B734D794B30FA9BB7A4F1E22F1BFEED45E6FBD6ECA020020';
    i(25) := '0003C271A6AACA986DFC9E03A06CC0308C753D63B028E3B3E3349601822CC031B1CB5A746C2E63F7461C76F3CF7F78BE21204AA72948D8CAF84F9D3BD57FD7FF2052AF7A77E28DF89EBB1DA30004A027E4E5F5F3F0BC01BDE4D2C7BDA2CA6A9702EBD4E0';
    i(26) := 'BA7DDF16B0A2F7DECDA02920003DC7797D19A616C3B4C3F30664E84771F115241C04C2C2A48334DED4C7538586409A129CBD161080A1F700DC9B69665CABA140BCBA2D9E0AABC8B87BC856397E79199E7D370868E6A3C52FBBE8284B58C07370EFEB8FD6';
    i(27) := '693808C0E8104FB7D5D85E9E406C0C21C85737002DE4B168C49381E2893432A4EC70C273EEF552CCC1BDA7E7D677634AAC570D7A118F872DF17DC98BF16C43D5510BA2B229BEB028E9F3BFEFC94B836130200B5002324A05EFB400470D5EBDB45EA99CBD';
    i(28) := '8C5FCB81B3D7CB9064E032301BBBBE1B1BB7BEA76B153390A15958D413973DA656DAD1DE46BCD4573316E3DF6521F322272D8CF27D2A43100B46ABE5C080000C35EA0D7FF9EA97A60D4162C36FB7918557FA7939AC7B5F1BBE3EF766220E14FA7B5E3F10';
    i(29) := 'AFDCF36ABEDC317C8B557E366019BBEAD3B43F41A25C2F728A37048985ABC8862045EB5DA4EE509CB161BF81E53BCB7FF167847EB1786F71A86D881800408541000010000040000000010000040000100000400000000100000400001000004000006028';
    i(30) := '6135E000A055745A7AEB15780008008C1CDA1844E8B4E1767B1F0202002386F70838317E8287410C00001000006008304A684BACF8C41C6D6155D698375BB68F0BEB046D55161F2ED26919DDBCBF32EB0908404FF186A0A9C32FD570D71FAE173E463C35';
    i(31) := '7ED6BEFAA91D808B96ADFD0A9571481D2CA20C44BBE09CAED3F5A94350548770A45966BF7FED849C3D0978F6D66C63EF3F9DAB90ADF771EB090840CF51A38D77CF55439551A811ABB7F40EBE3AEABBD39D715365EB682D19565CB68467F5FE6AF2C0117D';
    i(32) := '6EC355BDC2C1247523D40EC3122E09CB7B5FBE17761D4E1DDA11B6F78EF6FED7F53ACF20BE3FED089CDDF95775CC8A567CF681B71F6F574F95EFADC95BD51310809E134EF63D3050355835CEACABEA5CBF1AB77BEC4E8D5F862FE38ACBF691E2F63CE6EA';
    i(33) := 'FF65B71DF7F90142BD74765F7E1B6F387F6069AEF674E569938884F30C0F8CDF5B98C7BBF28653916ECC841D84F57BBC03B288E7357CF0DF0F1AEFA576F53D6E3DA17308029630265763B4F16B6BF0D4385506DFE9515AFA4E7C98880C275BB60C4065CB';
    i(34) := '602C46D921888F2353EF9C3A94C3E70DF877667B6C1F74A2DFF5ECAB67878CD7271AFBA42089C1514E4BEEB49EDA821C1080BEBBFE6EECD99E378B8D341B44CB433DBB0DAF5DD9F1BEFB79C787B50AA0E9335F1FBBE8FAFD71AFDCAAC79510A99CF89AA3';
    i(35) := '50B49EA7CE9FA2013204E8BFFBEF5EAB5D84DA81B2774E177BEC67AF9D0D3FB77FDE2EE4EA4A047CBEA0DC65D7C7D7CA287DB8480A05D73449C7A71687FB3BE865754D9100A6BEE3E148A74780C5F5D4716979CF33554FC003E80B76977D3A4F1123554F';
    i(36) := '59E4641BF7C445835DF1F7E25EDC862851B8FAF5D5E0D2A70E21D510C6C14BE35EB6E8493C7E0E453C9CD4B3713D75CEA0863F45EB0978007DA5ECC61837FC4E525E3E4F50D75B101C3C9441C93DF7D985E198B1B5DD108997E1A68CFCCCFC99467D3C97';
    i(37) := 'BF65DCE2609AEF516200D97A2AA8A857917A0202D057D440CB249E2F5F86B8F8FC3EB9E672B165D00EF8853906078799A672F9EE955379F9B2396E3D0101E80B7279CBEC99E2F1AD8CA0A817D06AA18D0C476EB65DED6054EF4E845883E3064AB3A572EC';
    i(38) := '8AF0174D5D96E14D1DB59E400CA02F14ED1D3DCB2D35A32F6F48A1C93A858C5FD98583A143919884044B46ADD4A5528C0EC239F5283C51C743817E10D753AF543D0101E80BEE8152D37F53784250767A6C5EC30F3DE0BB1385CA8EF3E21E9278ECDE6EFC';
    i(39) := '1EC6DFF7570F89D9EB97AF1B1E4E5181D3849F857F2F741CF328524F7942A97A0202D077014845AC63D4EBBBD166A7C0B62ADB63E122E262638E537D1E3FB73398547A5029487B174572FB9ECCE3EB3AA1683D590780000C0C71FEFFD2D2A5DCE8B7DED7';
    i(40) := '22181B6891465CB46CA1E9C2369C8D871B4DC6E232DAB9CCF634622188F3FF7969B9B8F7F7D0468B7C3AA1937A9EFFF07CAE600102D0733C4B4FC6A1FC75767CAFFFD75C7A1B8F26B214410DDC0B6BBC18275BB60362EE9DE3198146937FECA5E8BBD91E';
    i(41) := 'D6538E3D8370F387E6093C9E01A8EFA90E594F20AC05A87B1F5EB3E0487E5E5C43A93D8B592C6A45EAE92154AA9ED03963C37E03CB7796FF1A847A8485384B738D06EDDCB5D6B3C70D59069D9D51D76E53D0BCB215F1CF4EF8F174E39487101BAE8C5199';
    i(42) := '866C19D9D57C4D63F46835A0EB60818B630912C4762B124D36BB70DC7AF69AC57B8B63080002D0E8A1347F5F0D38367A1983C6C49E2B9F729D3576D612DF3C03F68A3B8941B66C195DAAE74F8DB1D5FBA602968A37B42B23EFFEECC2EBFA56D3857D7D9C';
    i(43) := '5148ED07D0AE9EFAFEA0A4FF100004002ACCB00B003100800A830000200000800000000200000800002000008000000002000008000020000080000000020000080000200000800000000200000800002000008000000002000008000020000080000000';
    i(44) := '02000008000020000080000000020000080000200000800000000200000800002000008000000002000008000002C02300400000000100000460B8F8913F23D0F6AA2B00F7698740DB3B1A63A3F05758BEB3FC53FDC702ED117AC893C57B8BEFE3010C06';
    i(45) := '9FD45FDBB449E811DB076D8E18C0205057E2D5FA0FA9F113DA2674BBE7575B3B687343CFD8A8FD75EAC381DBF51F4BF5D747B45528911F35E6AF1BFEB73C0A00000000000000000000000000000000000000000000000000000000000000E826FF176000';
    i(46) := '48E7DF2E772990200000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'carlton_closets.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 1;

  -- Organic Farms (2)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000162E4944415478DAEC9D416C5BC799C7C78E1BA3DEF5960B07CD4AA8';
    i(2) := '111A05D4ED228169B817E722EAD253DC50E829B998BA384759CD1EF626EBBE5949C7F822E9B0C9A92B79EDCBF622EA925CA2350D07DB8D80C20C124868B78219A848102F82F47DD23C79347E241FC947F2CDCCEF0710A41EC5C7C779F3FDE7FBBEF9E63D';
    i(3) := 'A5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000203B4ED104FEF0FE27578BD1933C4AD1A3103D26F55B05BDAD1BEAD1A3A95F6FE9D7B2ADF1CE2FB61BB4360200A337F6';
    i(4) := '72F4B8AC8DBB3CE443A869417828AF11050400066BF0328A57F4A85ED6237D9E686851106F6123128426670D0180FE477931FA1B3DB8F0A346BC83352D06780708007431D2571D35FA4E62B08A67800040B2E197B5D1573DFFA9AB22069110D438EB0800';
    i(5) := '86FFC95531F8598F46FB6EBC82E5480856E9050840A8863FAFF297CC1B36921F58400810000C1F21400810006F0D5FB2F98B187E2A21988B846083A640007C307C31F81535FC421DD7A9458F19A6101100570D5FA6F36E69771F7A67217A2C317D8800B8';
    i(6) := '64FC653DEAE3EE671716CC3075983DA76982CC8D5FE2FC4D8C3F53A42D3775DB021E402E0DBFA447FD12AD3150EADA1BA8D31478007931FEAA1EF531FEC153D2DE4095A6C003C88BCB7F8B961809921C9CA31910805118BE64F9D715D37BA3A6163DA699';
    i(7) := '2540008669FC456DFCB8FCF9C90B4C533380000CC3F84B3ADE2FD01AB9423C802992830800C68F0820020800C68F08000280F12302800060FC88002000183F220008402AE32F464F0F307E2F44E00A5384C9500A9C6CFC71910FC6EF3E87E7529F534000';
    i(8) := '5241918F5F94F4390542808EA3BF17B5FDE3E7AFAA836FF7D4C1D3DDBEF775FEC57175FEECD8896DDF7E77A0F6BFDE71AD59583B8000B435FEAA3A5AD2EB34E5E26D3571E18DC3D7B5C682DAD9BFD793804C5CB8AE8A8549F5E20BE75BFE9F88C0EE5FB6';
    i(9) := '0FBFC3114198E1C2A3084092F17B93F1BF79F593137FFFF6F76FA7364E31FCAB6337D558F4DC2D074FF70E8560E7CFF733F13C06043303E4001259519E24FDF60EB64FFC7D7DE27D75E1DC44C7CF5DBBF8AE7A23FADF5E8CFF2854183B148FB75EFBCF43';
    i(10) := '2F64BCC7FD0C98820F5E5E56BC40131CC7FD155F7E4FA3B9A52EFEDDEBEADC0F2E1C9DE4D367D5CB7FF39AFAC393DFA9EFBE7FFADCFF8B8B5FF9C7D5C8DD2F67760C223812428808EC1DFCB77AFADD419E9AE81FAEDF1C2FDCBFB3F75F8400187F59BBFE';
    i(11) := '5E2189BB5FFFD3BF9F88DF1FFDE943F5F117EF3D67A8BFFCE97B87A3F720D9D9BFAF3E8ABE3B67423015FA85464F056EFCE20E4AB14FD1C7DF27C6FDEB9F7F7062DBFD9D77D4AE1122C8FB69C2832C10E3BF177D7F8E92850D75542414ECC54442CF01DC';
    i(12) := '521E5FBD570C6D7BEFCE896D93516C6E225EC1B08CFFA32FFE2D6F33054515F8E5DC82F50074A9EFE3107EAB3DCADB538312AB978B83BB7F8988D0A33F7E9837F7DFE452A8A5C2217B00C164823FFEF264DC7F75FCA6159FDF3B9C2ACCDA4025EEFFF0D1';
    i(13) := 'AFD4F6EE9D3C1B7F507DC126C859007DA3CE7F09E5F7CAFCFCF9B3E3C75EC0D917CE1F6EDBFFE6993BFECDFFEFABFFF9BFFF50E77EF0525F3901D9EFA75158F1BB3FFCF3E1AC43CE0DFF3814B87E73FCE1FD3B7BFF4B081086003C5681DDB9C74E084A2C';
    i(14) := '2EA37E123283205E425C4D9826BE97A9C746B376F870944614065C4200FC37FE6AA82EDF75ABC847DCF376157B328528F3F8221EE37F7BB2A847CA7F65ADC1FE379FB9B826A015C195099F09D00E82BD5BEF67514C6E0A80D4F9B79B05381AD98F46F5ED';
    i(15) := '70FA465002105412508FFEC55005C076CF25FB0F277301A1DD722CB45980F9907B773CA29B790108BB8F042300A18FFE31F642A19C2ED8C10B4000326796BE7D344D67F2EA8FDFC21308B8AF04310BE0EB829F6E10237FFD27EFB65CEA2BC2B0D5B87D62';
    i(16) := '9D40E004B15028140FE046C83D59927D5203D06E9DBFAC06946B01C83501209C3EE3BD07A057FC3D09B5179B97074B8B94F0D6226F00D4DFFBBE5230040FA01AF2C8DFADF11F7DEE8D43E100FFFB4E080210A4FB2F317F3F2BFC44045EFBF15B84010880';
    i(17) := 'D3EE7F5105787D7F29E195ABFCF48BAC079075010153D27D080170944A88BDF6B597DFCAE4125F2224D72EFE26742FA08200E0C23935FA67E9BACB8542032F16BA8100B8E9FE174274FF65F46F77238F9E4281B19BA18701050400D7CD0D011840E24EEA';
    i(18) := '0702CF05541000F7980CAD97CAB45FD6A37FCCAB2F073D23308900B84739B45E2AEBFB07C5CF7AA827A02F2100A38AFF8B2AB0957F32F26779679F61EF3FEFDAEAEB74A0AF1E4080A3FFE07FF258D8B3016504C01D2E87D63B873155675F1730302E2300';
    i(19) := 'EE10DCF4DF304667292F1E5492913E8500E0AEF5884CD10DFAE69EC3F434E8530840CFF85EBB3DEAD83CE43C808F7DCB470F20380118E6A81CF04C80977DCB4701082EFE1FE4FCFFF3E1C658C8D7102C2100F9A710528F1C64F55FBBEF0C940202907F82';
    i(20) := '2A011E45855EC05581930800E40671C5479194138F83BB0A2100B869236694CB74E56A41840008401E0922092899FF5166E4251918E035034902423EB8F693D15FBF5FBC80802B031100189DE1E5612A4E8CBF9F2B0F0302003DB8FE79BA449784215C3E';
    i(21) := '1C0180A1C4DDE3EA973FFDD7FC852317DFE52EC308000CDADD16E3CF6BCC2DC7C65D8611001810D727DECFB5818930C931921444002063E43E7D2E8CAEB108000200192149B609874A6F45A8022D12420020FB11D5C5693699A5201F800040BF86E470A1';
    i(22) := 'CDEB3928540204C05964CACFE5F97559A4C48221046014D47D19FDF90DF42D04A07B9A3E8CFE131EACB99705439E15083511001838132FF973C18D572913460086CC96F302E051EC2CD3981E15076D2100B8690345A6CF86758DFF618A007D0B0118164E';
    i(23) := '276A7CBCFD9647790092800ED070F9E07DBCF18647BFA98100E49C777EB1EDF449BA70EE67DE098084343EE4015CEF5BA1780042CD6563F19197DC2F0DAEF9785E7C15002763359F2FAA71E18713F4290460683C54902B5E3C739E3E8500E0AE017D0A01';
    i(24) := '18303A59D370EDB8C7B8AE5E5E69F89800F4D903C00B00FA52E002E05CD9E6DEC136A6465F42003262837E0BF4A54005208AD9A46EBB4EDFCD0707DFEEB97AE875DD971000075973E960773D0E01FEF274973E8400E0BA751C299FEE797922FEFCF50E7D';
    i(25) := '0801187A18D0702D0CD8FFFA33FFDCFF48D49E7E77E0AAFBDF4000080386868F33010EFFA635DF8D2304015875E9601B4DFF669C1CCE6DAC2200EE87014D974EE4C1D35DEFF2008D66CD49E3F739FB1F9207E09C2BF7E91F3FF0CAF81D8DFFD742308C20';
    i(26) := '0420527219829C49067EB67FDF9BB6FFF44F1FBA78D875DD6710008F5876E54065C4DCF1400424947134FE5F0EC52882118048D1250FD070E578B777EF38DFE61F7FF19E93518BEE2B0880872CB8337AEEAA476EBACF87C8D49FA3C9BF85900C22280170';
    i(27) := 'D10B703481A63EFA92D11F0140E1FBCE05D41AEE0D48DB7B77D4BE9BA5BF0BA119C3A9000540BDFFC9D5C7D153D195E3BD76F15D676E152E86FFDBDFBFEDEAE87F29345B08F5E6A0732E1DAC24D35C1851C563B9B7F30E7D0201C87D2E405678D55C3A66';
    i(28) := '31AC3C8B406CFC8EE62C6ABA4F20000131E3D2C1C606964711C8F3B1F9D81710806CBC8086722CE9934743F3C0F8177C5FF28B00B466493976F9F0D8E0F250292846FFC1A35FB96CFC0DDD0782E554E002203302E5E869D3C563979981ABE3374772E34D';
    i(29) := '295272B4D2CF642A949A7F04A0BD082C464FB75C3CF6F32F8EAB6B177FA38A85F2D046FD8FBF7CCF87EB172E45C63F177ADF47009E89C083E8A9E4EAF1CB8D45AF8EDD1CD8DD8564618F5426EEECDFF3E174CB6ABF2BF47AA5CED004C7CCE850A0E0E2C1';
    i(30) := 'CB88BC7BF08EBA706E220A0DDE8E3C82C94C4203A9E7977C83A375FD493455C0597F3C80F65E40357A5AF1E5F74858201EC14B3F9C48ED19888BBFFFCDCEA1A0387C318FB6421F5ABD3F0210483E204DBEE0FCD9B1C4F7BE8D0CDDE16C3E713F0290A908';
    i(31) := '482850A625BC42AAFDA66886939CA609129956DC56CC27EAFA9C021E406A2FA0183DC9CC4081D6701A49FA5D09B9DA0F0FA007748799D21D08DC35FE298C1F0FA01F4F406A039C9D1EC4F8B709E510004400E307040011C0F801014004307E400010018C';
    i(32) := '3F789805E812DDC16421091D2D3F1C9E138C1F0F60989E807800EB8A8AC151538B1ED321DCC91701C8A71078BB76C001A8ED4700722102D5E86991BCC050E3FD3956F52100791201490ECA52E212AD31F0787F86781F012024C0E5070420972250D6DE40';
    i(33) := '91D6C884861EF56B3445B6300D3800744795A9C2055AA36FA40DAF60FC7800AE7A0345ED0D94698DAEA8E951BF415320003E0841451DCD1410167476F7E742BD571F02E0BF1054A3A7798420D1F01798DA430010020C1F1080A084605685573F20F3F8CB';
    i(34) := '183E0200EA78EAF046F4A87AFE53C5E0D7C8EA2300902C04052D02373CF20A64B45F13E367D10E0200E9C540F2031547C52036FA0DA6F21000C8C63310319854473505C59C1DA218B9B8F55BDAE819E9110018B077204270597B07E5211F424D8FF20FD5';
    i(35) := 'D15D7718E51100C8812814B52014B4B7A0F4EB6E430831EE7814DFD2AF655B03630700000000000000000000000000000000000000C803DE94021BCB6859720A9092339E18BFAC92932BEFC6F5EFD39CDAA1B5BDAC319047317ABCA2D2AF529473358558';
    i(36) := '2300FD7640FB4E3C654EEBC0DB5C8C5C2E635651FD2D4B96CF728B2F04A0E78E78CB327EB9943437E318AEE0F64A8DFBFB9103E8A723CA48BF696C929B48AC6A517853BB98F18527EB9E1BA5B8E0CD412ED3D539964D757259B1B8EF3575B45CB8AEDF5B';
    i(37) := 'D4EFC9957E6F1B9F3DB11C996B02E201F4CB8AF17A4E1BBF74B87963BB74BA6AB47DC6D7ABCF46BF4DDAA1AA5F4B3B2C0DB0BD4B86E12FABA39B75368D6349FCA0FE1F0C3E879C76B4D3578DD8B36674FA596B648A59D471AB8F237FD5FC9D036CEF8AD1';
    i(38) := 'B692BCBB4D020F011815E6283F63BC2EE867990A9C928E6A6C9FD79DF9B67649213DB356A845EC8E008C74D43347FFA4B8B764C499B12750D5EEF2BCF2E4DAFBDA10975A886196ED1DBBFE75EED987008C9A8AF17ACD7A2F8EF3CB51C77DAC730226B1E1';
    i(39) := '4FFA720223839C8B9E2EC96340790E33797717934100468D69BC35EB3D3186D83D2DEAD1BE6CFD8FC4AD0B7A742B7A220283BC50A7D9462373FDF372AEC423F229847451008E33D176A797A454F4B8620981B23AF0257D229F444FE2256C320EA4A63922';
    i(40) := 'A35BD1E7EA89AEFA1CC53114745F79A04E4E3F3B8D8BD380854EA3919E1558324EDEF786683475272A18E182840A1BDD24B78C7BF995F52829DEC874BBCCB871A71F3359D9B0E2EDA6B5AD6C7831ABB6E8A5A90130D64914B411E7EE6E3D1DDAA66A9C7B';
    i(41) := '99D169EA7C44B34DDEC26EC7AA3E4F4D65AC17D16D131736D5DAD427983510250460349DA49CD1AE6C43975061DE98C76E6A63AEB530A6F584D0A2AC3B46AD45E74E4A3E4A383365ECF7817E1D1735AD589F998DB65D893B76D2675AB4D9BA61584AFFD6';
    i(42) := 'A91EB2F989BF2F03C36FDB36EA5991511C926CEACFC6FF2B8236DD453B4AA1D894168A4DA36DE6936A29741B96DA849E840023A09711ACA83D844E25C3B191278D2C8F0DE36F684F635A77D67A8BCF3CB03A604D3DBBB3CE71F862BC7F43573456ADDF2A';
    i(43) := 'C735DBEA332DBE7B3DC16B3A1C4953B659CD329C4CE3E9346DA38E6637DA895545B757523BDED6FB6F1A214C597F77BC80CCDCF76C8ABEB68C07307A3EEF4734A49025EA04713DC1AAB1BF37B5DA371346FE15CB459D316ED155B35DD284114644672945';
    i(44) := '014D5CB7D0D4C222C7FDA407F7D3347EF11CEAC66898CA9B122F48BBDC056D3865DB33323C33F3D85E49F0D81A86F792BA6DF471DFD5FB97CFC7B33F3F32DCF7660BC12F69039FD2BF3B16BE45FD5E7C1E1FA867AB1AEDEF6F44EF9B5E8878275E4C87BA';
    i(45) := 'EC01BC92E1BED67465DB6DA343DA27F896D101A4A3C673EE2BFAF12061BFA660CCE8FD8B9BF9BD36C476AE76417FA6DE4BC59D552DB96AB8FB6B9D7228099823DEBA36DEF87B2ADA90372DAFA26A6C8F1F2B19B44DC338570F8DED1B2D04206EC7A6F59B';
    i(46) := 'CB7A5F336D04C4147253DC6E65188E22003D52ECC2CD4CB55D9FD478BF5BD6E83F6B74C0B9847C4231C1004B468C1AC7E75FC506D2A113D5FA2CBA79B38501D78D90252D4B8681D8E143374272B78FB6B99CB0BF38EC692792AB6D721D73298FFB86E141';
    i(47) := 'D60D21747E3AD0B510A06EB9C96930FF6FABC5F67A82D1986EAE999DB6E3BFAF5A7CEF6C0F1D2DCB38B36CBAD056DEA02B61D1332753869773D7728FAFA86737205D34C2AA353B9CE8A36D4EE431B4F1955324E5D6DA781269DBA162EC6B49B743517B31';
    i(48) := 'D308C090D01DB1A9BABBDB6DB9D368658C1EE516234ABBE2A324EFC23CBE7A2F536EFD8CFE3A2F51E8E2783B4E25EA385C0CBD681F5B2C30D66AC0CFDBCCA2F4D3365F259CD7AD16FFDB6C33AD574BD996252B94923E38A3439A4A524E841060B0D4ACF8';
    i(49) := 'B31B57B89E200C352BF64E128A62D268DA2186EFAAA3F5D239FB0D8F0CA4333FEE546DA7F311FD26BF7A6D1BFB7C95528421EDCED5E75D7EEF7102531B7C3DC19B913EB9DE2AEC4400B2E16E426C962679638F363FB25CCA720F9D43E8948CFCAA9F5C45';
    i(50) := '8FA44E1A9A455123280EEAA56DEAB6576615FC14333EC638F7B0D1A21F56ACB694C73A023038368C0E5EE990485B6C13532FEB7DADF539A29633FA5D5DEF27A568943B24ABDE4C315A8E9A56A1D920CF476CD0E50E618619DACC3BD0966E0B80EE00F6B4';
    i(51) := '5431E184DCB2DCB7556B3FB26DBA934BAF3B41D1F8BBDCEABD169EC92B293D861B3D3447ABCFD8C52CD536BFADDA42208741B76D93E61867333CBE15E3FC4E5AFDECB2D18ED2860F0C6FD399EB52BA5A08B4A43B4551BBAF0FA293B06CC487B3EAE4B2E1';
    i(52) := '6E33B59309AA7EEC5544DB17548B6A3ADD494C83132F655927D12AD67B2226352D56694380A23E2EFB7B8A8657504D38E6788D84B93660D11859578724E0666151376DD372F6224EC459D38B3D874DFA586AEAE44CD1E10568A3F7E2F8BF620945BC0FA7';
    i(53) := '2E98E2A400E84CAC18755C49161BEA7CC2BFA73A2109156FDF27C49D714E61DDEA388584CE10130B54D2D7CE1BD58869429FD8E37892F0FD45EB9897748C3D6F88C062C2F11E76DA8C4E4DDAA9D9657D5CDDB4CD8CE5FEDF353CBCCD56D723EC822DC3A8';
    i(54) := 'D73B84187698D1D0A1E4926B974973B610481BF515D53A932C2765AACB916D5A3D9F40AB6B039179F055CB70164CB754D79D978D7DADB6F05E92B6CFA8F6EB1B16128E6D551FD773DBA5584957CBCD58EF172C51B994C588A547CDF9A41135E1DCDDEEB6';
    i(55) := '6D12A61E975A78040B6DDAB169F50FBB2DEB09E77EAEC5FE649B8490A7A2C72557AF91E8C5ADC18C7AFC3846DBE8B5535BCB5213A7BDE47F8C9AF6DB099EC7525C2DD86A39AFB1FD7879AE113E241EBF756C1BC6FC7BE2F604032D199DB79665D63FA11D';
    i(56) := '2E75DA7F376DD341784A69DBD1D877E2686D94509F38F756FBD57CB9ACB937F7061CA1F8D81D7FD5A82F0FAD2D6EE9FCCB5A7C4F0040007CEFF4E65AF3608D1F1080D08D5FE252DA139CE2344D908DF103200061C5FDB1F173930C7096333441D7C65F54';
    i(57) := 'CF927E71C5578996013C8030888DBF49A61B1080F028EB676E910508408014F5F3E7340520003049130002100E8DD8F08D557902B301800004C09A910B786208C0324D03AE41E55A0F2414012D59970A0740003C1781F8E61D8DBCDD6813000000000000';
    i(58) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000046C15F05180074A3DEDC889BCF120000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'organic_farms.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 2;

  -- Water WOrks (3)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000017A94944415478DAEC9DCD721B577A865BB6644FC6490C556516338B';
    i(2) := '18AAC922D9445065339B2936B3C952A46E80E01550BC02895720F10A04DD00052D67138195CD6C5282B3491693129445B248AA484FE2C9D88EC7E9177D0ED168F51FD0BFE8F33C55A0640BEC73FAF4F7BDE73B3F7D3ECF03000000000000000000000000';
    i(3) := '000000000000000000000000000000000000000000000000000000000000000000000000000080EAB84513F4888BAB61F0539F51F019049F3DF32F03F3FF36611E7CAECDDF2FCDDFF5FF16DEA3BB0B1A1B0180F69DDD0F3EF78D73FB0DD7606604E1CBE5';
    i(4) := 'DF110504006A7578F5E207A657F74D4FDF25164614142D4C0341B8E6A1210050BE9797D31F6D11C2B78DA28397460C880E1000D8A0A71FEFA8D3E789C184C800018064C7F78DD38F7B7EA793A5183CBA3BE3A12300707125873FE9516FBF4954701E08C1';
    i(5) := '042340005C75FC275EF726F39A46F3036708010280E32304080102D05BC7D76CFE331CBF90109C064230A52910803E38BE1CFE85D7FC469D5D67167C8E5942440076D5F1B59CF7D884FBB03D67C1E739CB8708C02E39BF6F7A7DC2FDEA8605C72C1D56CF';
    i(6) := '473441E5CEAF71FE1B9CBF5286CB360DDB1688003AE9F823D3EB8F688C5A999B68604E53100174C5F9C7A6D7C7F9EB6764A281314D4104D09590FF310DD10A9A1C3CA5191080361C5FB3FCAF3C96F7DA66167C0E592540009A74FEA1717E42FEEECC0B1C';
    i(7) := 'B267000168C2F94766BC3FA0313A8522807D260711009C1F11400410009C1F11000400E747040001C0F911014000707E4400108042CE3F0C7EBEC5F97B21020F58224C86ADC0C9CE6F37F9E0FCBB4FF82CC3670A084021D8E4D32F46E699020290DBFB6B';
    i(8) := '6FBF4F43F40E9FD7899903C873FEB117BED20BFDE5988347118024E767C6DF0D5819600890C80B9CDF090644790840D2B89F493F7718311FC010C03ABF6F427F708F7DD70F1ABDE5B8F32B1CD4669F21BEE0240B2FDC24E4EC6122AE0F011EE3FC4E33F4';
    i(9) := '1C3FCECDDD0820DCEAFB0E1F80807BAE6E157639026026189CB7053705204CD4E963F760F08D4D20008EC0121060134E0A40B8DD77B8F35DD69FDDF6469F7FDC7A3D5407D5A5070C5D4C3672CB410178D7070178F3CB3FF606776E790FFEFEBF5BADC7DB';
    i(10) := 'BFFD13EFFABB1FBCFD7FF89F3E58C7C27B74F71E1100BD7FA719FFF9273711C0B3BFFEA3F662E6A06C1B01A84E44010840D779B2F316FAE38FD69CFEF1CF3F6DC5F954A6CA8E8A81EA868D2000CEF4FE4FFFEA478DDE8242FE57BFF86CF96794177FF3E3';
    i(11) := '46454065A9CC2275AB9B1A9E815351804B11C049D517BCFEF6870F1CA14EE7D7B83F6DE24FF568A22E59E5A86E766EA209540F3D835DB095AEE2C624604D2FFC28E47DF7777FEACDBFFA7E3909A6C9B0BAC27EF5AE4566FD5597E37FFCDDF2CF2A51D972';
    i(12) := 'B8A27538FCF5D7DEE2777FA85D0CEFFDEAB77595E3C48B42AE440047755C548637F9B76F9786282138F8E99D5AC26DCDB4175DF2D3F7F47D396B1563725D43D7DAA60E750C4BD4C66A6B95A1B6AF4B64EAB2192280E67B7FBDF17755D7E56D146099FDD7';
    i(13) := 'FF79A7FFF4BFA57B60CDAC3F09C6B765D7D8A7FFF19DF7FADFBF5BFE593442510F2B477BF8B33BA5454DED71F6CFBF5FFE593602D14463B43D6AECFD2D77FBFEA6A00B02A0B7BD6ADDE5A589A8277FF9A30F0CFFE5FB6FB772BC93BFF8B4964D3E1225D5';
    i(14) := 'EBABA03EB3FF5C7748FF27B7BDCF83F2EBDA60A4B2CF7FF3CD56ED71F4C5271F08E1D9BFFCDE7B1A084BCD9C0602F01C01D86D01D0FBFEB59FF6A331695A6F9DE67832F0D1E063EF8B208A90D37561675F13A83DF4791FF4DEF3EBEFD704A18810A92D1B';
    i(15) := 'DA78340F04E00102B0BBCE3FF41A7AE5376F96BE0EE438E7FFFA8D77F2F34F1B5F7E6BABECBA275C13E8F5ABC27D9F043C68D221649855CFBEE73982C2E0861DE2E65E6DD94DDF7393F7DAA40D2100D5D3E84CAE0C537BF39F073D639D681C1D753CFDA9';
    i(16) := '0931FDFFBA51192A2B5AB6EA5277D96A53B56DC3CEDFB80D3104A82EFCAF75F63F0F8D61AB5A8A8B0A8C5618B4FC95DA5DFDF44E2DDB7235DBAEB2B31C5DCB7E2ABBCA2181CAD5BE86B2AB0825E9ED6A409F0560EC75E0A417398596F3CA38A49CE065E0';
    i(17) := 'F4CF7FF34DE11E50E556B19A6067EFB344273E17F23828F72828BFEC3D6BF9B068B935D3DB6C427D160039FFB82BD59123DAE5AC224E290750AF67D7F0CB947BF0B33BDE5E506ED13D052AF732F84C83B2CB8CEFED5E02955B440CEC6A89964F9B9A5728';
    i(18) := 'C8241080630460B704A0D3EFFD5B6794830E3E091F835D2294F1D735D65D9617F4D272C8E167A1532EBEFEC3527054665D8EB75CF234C2A7A5BEE590E6DB55792D87F8B97ADCD773026EF5D4F9E5F89CF80B55D2CBE5C0BEAE02F8D82B6053EE0AC07DEC';
    i(19) := '15B029770580449F804D310400C0A6DC128070021000DB723402400000DB72580018FF03B6E5B0000CB053C0B6DC15803D27BAA2CF3FEEC439FC4373988923F4CEB66E7BB093E8AD3B6DDDD5E9BB6DD743DB7C7B921ACC391802EC20BE79B1472FDB44B3';
    i(20) := 'F3348DCA561DFC0D5E34C2B61080DAA3E35E5B60D0DB461373A807AEE338F23CECB90316D5A9E963C9B02D04A055DAC8C9A70421F1B1BF9CAF49115059F1EC403679890BCF00018025F7071F37961ACC3A7A52A86DF3F235E10C2A232D07A03D05A9C9F6';
    i(21) := 'D0330004A01574704552A2CC3AC2FE220EAE7AD495A0D3D621EF5EB304A26AE757597A068000B4823DC166D3F45D9BA05E55D72E1AE2DBD4594A56528513EA1ABAD626A9CFF43DD5B98E89C168DA31B57DC74E0EDA39FA376B7371D5E8B1B13272E503B0';
    i(22) := '2863CD2667F7A5A131B5CE122C13D6AB0E3A536F9B23B6EC11662ABF8C90A87C9DED573685973D6B309A81494B8F8D9F24F4E8EE2D0400015843B3E1D1E538399ECEF1D3619A9B3A9E04C53A5E95D83306BFBCFEFEA64EF618301BB9E84F8DA98B9EE1B7';
    i(23) := 'A9104888367558D549879B2AAA880A918E09D729C58D8300200049BD535A56A034C7B3BDFCD2E97F72DBBBFF79E8787D5F4A93E02CDB43C327730662BC3DF284A8A50421080002901DB26B6CDAA403DBF45CF1C4A44DA1E14ED3A9C16CF2959AB3023B23';
    i(24) := '004C02561862AB576ACA30A3E9B99438A3E9D4602AB3E9B4644DB7B10B200015A2D054BD53DD13533604B6430A8DAF9BCAD167CBB6093BE275A90BB5A9DA96597F04A0F3635C398426A8EAE819157627399C151FFD7B1DE5EA9ABA7692135A11D0BFD751';
    i(25) := 'AEDAB2B5317FCFE9E31CC05BAF237BB63536B67BF5CB8E9337594EB34B66558CCFED3C43D1A5CD2A962F6DB95A49A94B48B70D80BC47771F2000DD1680375EC70E709413DA34599BECD9B7A9C1E4FCDB3A811CD1A6E72A2A0676A6DE96BDED3D47CB2E8A';
    i(26) := '9CDEA643EB608F3F0B04601F0140004A6197B76C6AAE35E733E9B2EA9847B087888C52F6CFCFAFBF5F4618758CB36D4E449B062D8A4D4DD6F1F460BD14803EBEC47DD9750168CBD0E5D8FA9449365AE69E77C0C18BD856AFE8E324602FF3B803B6850014';
    i(27) := 'ECE8B053C0B6DC158005760AD85631FA9A1E9C0563A89E9E6D03EE6B042066582B6053EE0A00F300804D392C005F62AF804D310400C0A69C13804777175ECF5703B4A3AF0B8787A80E5D485156330B635308008ADD0DF4C28D3ED4035B420092B9ECEB8D';
    i(28) := '694FBD5EB4B1A9B9DAC2A626535D7A9E20F41201D83DA67DBDB1E8D9FCFA7B1BCEA732E3F5C09610802ECD0368DFF6BC6E2768C3F9A3E5661D485AE77DABCCE81C445C109AAC4BCDCC8D2D21003BC8CB3A2FAEE3AA9BCC4D67C3ED3856049AC8D06BF320';
    i(29) := '244D40DA614953A83C3D835DB62104608743379D73AF5EAF09A35739D16CBC6922F0B4C609395D3BCDF92DAA63139180DA5CE534901A6CDA6707E97D3EE7BA8F0853CA2C2D83E91DFB3A4EE7B539F936E9DD75B886EA52D5FBF736E9E726CB7D2AFBF0D7';
    i(30) := '5FD7D21E361BB2EEF3DEAF7E5B77F8FFA0CFEEE1C2A1A0B58670363B8DCDC957E59040BD9CAEB969682F47554F6D73E86DB35FC01EE9A56BE85A9BAEF5ABCEAA7B95D191EA13CD51D84066A0977D770E17228041F0F3AACE22E2E36FF54C3AC0739B73ED';
    i(31) := 'ACE3696C5BE5061BD5C566E351FDE2878B2E8F280B3E364B5195CB8B2A4B69D2B639DBD09EA7A8BD06D1F65084A193826BE66E9F2700DD108050045EA803A9EBF23252F54C493DED268EB71788481313796D22C7BDD4F16025844822A2D0BFE643432781';
    i(32) := 'F31F1301F443007C75D4751691B434D69443B5251A6D946DF32E349020643F108059DF5DC38DC420E183AC754F401B092B35D1A7329529B7696C8212D5A187CE3F77C1F9DD118090F3DAADC68840DDB9EBAC23D833FB351956C78C7B5AD92A4B79019771';
    i(33) := 'B2494B5677D9362F6043A9C1CE5D718A5B9E4B5C5CBDD330B3EE62340CD0A4551DFB03B2961B6D26A2BA3627C9D9D332F54497E7AA46118E26551B8AAEF4E6DF3D04A09F02300E7EBE68AA388D8F2504558C9335DE96131459DB57795A45A8CA19253A9A';
    i(34) := 'C52F5A761BF75CE5C82A10800902401450199A203CFAE293A5436EB2B467F3E369B7DB364EA0B2C641B90F837237DD33AF50FB7550F624287B9B218D04C0DEF32613A32ACBDE730B99809DEAFD5D158046A380243158A6E8FAECA3E53257DC39B444A6F4';
    i(35) := '6072F82A1D6099124C650F3EF6BE304B6D71C77BAFB460D761F6A02AE73154EE3237E127B7964B9D7191D332A9D283D9CC452DE254EFEFA600B4140540E771AEF7171F39FAB04FB177C0265C8D00C228A0F35984A1317A97F59708A0C8780FC0715B7057';
    i(36) := '00C2535ECFB07DE739EBEB89BF08403ECF3D9289BACCC2D8808700B819055C3314703CF4EFF9EBBE0840BE08CC5CEF059C8DFE1C79E1278B5BD881A1E6A3C3A053F4FEA82F22806DC241CFBBA6197A0FC33E04207128A0F302D820D47F4ECDB30604E003';
    i(37) := '1198301FD0FB71FF8466600E206F3E805D82FDC3D9DD7E44009B73E8D57C841834CADC3C532002281C050C839F5A1918D0183B8D26FD1EB8BCDB8F0860BBF90019CCBEC7CAC0AE3BFF3ECE4F04502612D0DE803744023BEBFC0CE510004400E707040011';
    i(38) := 'C0F901014004707E400010019CDF795805D894D0C0F4220986D61DC26782F31301341809280278E5B163B06D669E36F938FE5E3F02D09E103C0B7E3EA6215A417BFB79810B01685D04C6C1CF67CC0B343ADE3FE5C51E04A04B22A0C941651CE25091FAC7';
    i(39) := 'FBC78CF71100860484FC80007452047C130D0C698C4A58985E7F4653540BCB8075101AAA960AC93B509E332F5CE2C3F9890076321A189A68C0A7313662667AFD054D8100F441080EBC70A58061417EB8AF19FE294D8100F45108C6C1CF270841A2E39FB1';
    i(40) := 'B487002004383E20004E09C189E7DEFE01ADE39FE3F808008442E0073F8F82CFB8E7772A877FC9AC3E0200C94230302270D4A3A860BE747A393F2FED200050580C343F70B0A362609D7ECA521E0200D5440612833D2FDC5330EC580DE5E40AEB2F8DD3D3';
    i(41) := 'D323005073742021B86FA203BFE11ACC4C2FFFA51766DDA1974700A003A23034823030D18267FEBEE91042CE6D7BF14BF3F7F9B2A7C7D90100000000000000000000000000000000000000000000000000000000000000000000000000AAA0BD33012FAE';
    i(42) := '943177E88549222629DF197BE191D8223D53ECC5D5532F3CFFEE75F09DE71965EA6CBC57E6BF2E83EF3E4DF9DE9B2DEE681E5CEFB4C4753EFCFDE2D75898FB996CF92CA2EDA2C49CF394EF29B9A9CE16BC0EBE7398713D5D4BD73CCB4C00B24A86E27BAB';
    i(43) := '538E75F6E0CC3CCB4981BADB3A6571ED85E71A66E72558B5757A1B7C6897E936177EEFA1B9BFC1CD730EEFEFBC0B672BDE6EB97CDF3C9CB4076D1B4FE848EC34E73EBA11936CC691EBF9C1037A9E62107E85F7D7D435C6C1FD28C5D8FEC64772EBFBAB03';
    i(44) := '457D63A469ED3730C63D4A7492552E8350B4B31DF771C2BFD8E3CF0F82EFE8B91EE6DC4FD1139175CD27C135F7339CDB8FD421CBF95F98FF9A243A7F28A86F528469643E7A5EA76DA7466B53002E8D418D721E9A652F510056862BF2524A9F983F67E661';
    i(45) := '1FA488CF7ECA837B96F1EF59467A9AE154457E3FEF1A0F8D338D4C4FBEBFC5F39899E7713FA3B71EC49C659EE144F38C88ED4DE47B13D31BCE23CF736C9E95BEF32EF87FF70A88DA24A30318796122D6D0318B5DAF88F3A7099C75FEC5320AB279124261';
    i(46) := 'F04D5D427BBAB86AF548F53605C08686C3E5438F37426870D6A90F32543E6A7059E1DDC80845989432FCBD934401480A5B2FAEB2FF3D3FBC9F956CAFAC6BCC82FABD3702E527B6677141CE6B67FB3CF65222B2BDD8F34D1AAEF937421ABFA7B0DE4F83EF';
    i(47) := '4D8C230D0B8ADAFB9CF6D1BFBD8D4418935A9CFFE2EA20D2A9EDAF3D87D03EA7A62E6F22C274DC96137ED49AFB870DB3C80873FD9B3156E8B403E3C49B19DC87BDBFE61CA6A6C71DA55C7317891AF4B0B420A7B7F359CED0C48F084A52687C121967CF72';
    i(48) := 'ECE330325CF34BDADB3C12B10C4B38FF7146CFEF459C3FBD670F85E03C21CA754800D68D6E2F25ACB53DCEEB0242719933C975101B264C63C2B0DB944DC59525C8ABD0756E1C699628C8EBC3B159C61CC22273B276DD6927153EA7B261FFF10663F64101';
    i(49) := 'DB3F8B08819302701953CDA8C18D2261FD2C260A450D2E3A973088A9F2EB2E287065447BC8ED871BF6F7EEA788EC2CF6DC0E361C8E3D2C385713A59AE7B4B2A922D16219E79FDED8B456BAC272930557AB50692B510ECC01441FC468D9502BA359373819';
    i(50) := 'F4C5D5754204E047C2ADEB42E1FFEA01682CB63021EFB8E6D9D8D1DA1C42FA18FF7A4BE38E4E503E2F51CFB47980BD98E34FCDD8752FE57BAF73C2E32F379AFB88DE67D6F25CB6F3BF309D40B1F99875E75F14162DD52F9CBF189BCF8119F35F563417D4';
    i(51) := '2301900A5A270C8D6E1AEB295EC7C4E260D9D3AD1AF17E81F07F1831BC69825A6BF6FC68E349A1CD7856E03BFB393DD333238271A251D0343246AF52900F6E447365E449829CD7C30E220EB5898D1409AB8F82EFEDA594398A88499109B723E3BC76D830';
    i(52) := '34CFF0B8609D8F83BA5C9A8E67E4D965CDD01E6DFBBCF6F2F6253830045837BA78CFBEAE969709C300BF40487772E31C1F36F6CBC824D3B0C67BB4E3E6AC4F9E21D8F5EEF8671829E3BC9441ADCF038C62C3AC59E2730B67BDD743EC767AB9614AFB8C22';
    i(53) := '8E7C5E308218DF84FD2B411DDFDC6BB1B694733F08FE76CF5C671289667C2328EF4CA4E1EC10201A76EEC50C6E9A22147ECCE0AE730C6E1C89069EE608C5694DF7785A8153A4ED0318981E4BC6A935EE075B85C9EBED6C8701336F7D3526FEDCEC72E0D4';
    i(54) := '5B5F264CE3DAD4B7B8D8AE0B7396B84DBCF47D00769FC40B13D9141926ADC6FC616471607E7FBED1126BF8DDC94D84B99A90B6D1C18B653465A32B07056016EBCDFDC4B03E0C3B1737E16991DE3F54EC41248CCD52F0831A05A09A28225D44349FF1D618';
    i(55) := 'D489576E5D795D90D39759A79EDD77903C4F901609F95EDA66A3EC79032F47D8F2F6017846044E0ACC93C477E81D7BABEDBCDA93F020C3E6FCCC399DF0FF8582106E993E30F329AD0840FB43805021E791C67B98E1D851B12862704791DF3BCBF88421E4';
    i(56) := '26215EF7781D0985CB308D09F18189B2E629C385E282BCDD8CFE362B0765DB679EE0B48791F991AC48F28D97BE0D38CE79C2F0D7B93980B863FB5EB84E3C4FE99D6C6F936D70EB7BD24F6F965C923EAB077EB4C30230ABC4984263B782FCD8F47AD39C32';
    i(57) := '0F22C3B1794E986EC5F67181F07F1419C2BD2C795FB3D875B7F97D1B393CC9D898344F98AB4A63D0B6D17445002E230E38C8E845A631835B64189C359C458131F16A5756BD93814D30A8504C4E72A2ACD7370E51A4970EC5C5465CCF3223AED0495FDDD4';
    i(58) := 'A7DA31F2604B1189CEC3BC4A59E3B742F5B880D01C5514DDECF41C40D4E086990617BE5031F78A6DE8388A39775ED8FB22222ECF2BBEBFA3025B591725F7225C479C67507279E9D28C978739ED5CECB9AD3FC3A76652CD374E34F1D25F061A98FBAA6AAF';
    i(59) := 'BC9D842C2392C726C4B77B0B0E63F7F7DCBCC5281B7D6BEEEFE54D04B21A2E9D44A2D8B3B61CAF1B114034ECCC57C45942E4903411338C859D79E54F62BD5E958C4D2F99F5392AD986D1F6F34BD677B616D266EF699FA7FC5E168791F61E1B47F961F9D1';
    i(60) := 'D2D8EACD3D5DFB41856FCBCD2343C832ED7C168918938632D13D1D632F5C9DB1F77765221BDF08D261C9559B5E44005605ED38F23A275CFF2AC7E006E67A8B0D7A425DF77D460FBAD842A937F9FE22E71A459CE0B492214018699D469C30AF4CDFFCDEA2';
    i(61) := 'F0F5D5935E5CBDF4CA1E081286DC9705C5E7DC7CF7BA545B87BDBC77134DC4ED25FCFB7EC6812773AF231B810000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(62) := '000000000000000000000000000000000000000000000000009CE0FF051800DAED536F82424C070000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'water_works.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 3;

  -- Barney Burger (4)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000014644944415478DAEC9D4F6C1CD779C01F69192D8214A2911CD28BB5';
    i(2) := '6A5D3487005A1E0DA3E0ECB1CE41CB4B50E442D2A75E5292406F054A12456F0148B6776B75318A5CB43CC43D051A22308C1E02AE811C5AD4AD26298A1A458AAE51C387BA963A6FF58DF4349AF7E6BDD9372BEECEEF072C565ACEBE79EFFBF7BEF76F5629';
    i(3) := '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008630D11AC165F8DDFE9E76FBDFCA5DF6FC9BF35496051A9BC67F9EB57F96BA2FFFDFAF0A309522600';
    i(4) := 'C0F570F69E38F696387C7F41B79EC8EB52078A3C2864688300008B71FA61FE76571CBF774DAA9549C670910783315A2200405CA7DF15A71F2E4995C7120C46688F0000CDC7F2FBE2F41B4BDA8CA9048373E60E0800E0DFDBEFA8F049BBEB8E1E22DC272B';
    i(5) := '200080DDF18FAED1B8BECDF9821302010100BAE5F804020200188EAF53FC53B5B8A5BBEB8A9E1B38CC03418A551000BAE0F87A42EF9E5A9E19FD45A1270BF7F2403045148B631D112CD4F90FF2B747387F255A268F4446400640AF4F3640364000588DB1';
    i(6) := 'FE03B5BC6BF9AF0AEDFCDBCC0D30045866E73FCEDF1EE2FC8DD0327B2832043200527E86040C090800CBE1FCBAD7EF238DA8E8E5C201418000709D9DBF2FE3FD5E94025FFFA67AED7BFB6AEDCD3F7EF6D193CFFF593DFEE5DFA827BFB96A3EEEFBFD1FA8';
    i(7) := 'F5DFFB8152DFF8CED30FBEFC4C3DFED79FA8C7FFF293E686F4ED4DB5FEBD3F536B37FFE0795D7FFDF7EAEB5F9EE782F9229688339917E05C0101E05A3A7FD4F1FE6BC9BD171CCAE4EB8F7ED428086827D501A00A1D00747069E2FCAFBDF3B7957FD301EB';
    i(8) := 'EB742FA6A8A79209100422C024E03575FEF537DFB53AFF2C386CFE45B8A37EE377ADCE5F6406FA9AE040E5A88B6E836E4B448AC94186580480D574FE99E37CE78FDC1714E97B0837DFF2EACD83A9A94B6D5B080204802575FE0DB544CB7C6BAFFF4EED35';
    i(9) := '4FBEFA9F65117F110458622500AC9EF33FF9ECE7EE0BBEFC2CBC4C9F3983CF3F0DAF6C4D5D6ADB421020002C217A9DBFB514F4F1AF3F9C4DA0D9F8FAEAAFC303C097FFE19CE9D77FD3D784E2AACB6CD5226F4B8BF44517D080D71041A3DEFF387FFBD3B6';
    i(10) := 'EFF3E4DF7FA6D67EEB5B2F2EAD6987FAC571E365C027FFF90F4AFDDF176AED9BB766CB8C450FFEF89FDE9FBD1A917FFFC97F5DCDEAB9F6DBDF7A7E2FBD0CF88BA33CB2FC6FDBA2FAEE5FFEC99B6B7FF577FF96629D81C3424410ECFC89A4FE70FD187076';
    i(11) := '8000D0F6B8FF91626FFF7545EF11B8CD6E41E600DA1CF7E3FCD7970DE60308006DF5FEFA600F877BAE3F43D115300420F56728006400F3738AF32FDD50E014319001C4E8FDF53AF31592584A363934440610A3F707744706D0C1DE3F512DACF9EBD371EB';
    i(12) := '7FF8DEF343345F7DF1F43CFE3FBEDF5C91FAD49D3E8F6F1CE699FB3C7ED5F3087E73F5F479048E5D8AB5EDFFEE7B4F9F4750DE88D4CE8E41F60610001A0700EDFC4954E7D7C6AF9DBF8299C336D8E2AB9D7F761EBF7028B34C7D1EFFA31F850701EDFC79';
    i(13) := '99954792F3B266CF23681004F4D16133A098CC82C01C41D0429A078001D6CC10A049EF1FD5F9B553D99C7FE6C8B963B89E01605562DEF35739FFB3CCA0C1797CE7F308743BF43D1B042A9BF3CFEEA9656369C71C24A24B200004B1133DDDF270EE26E7F1';
    i(14) := 'EBBED3E43C7EDD77DAA8A7AF8CAE832E0900ABDDFBEB65A45D24B132EC726498001064306D14EA33666E72CAAFEE3B4DCEE3D77DA78D7AFACAE83AE99400B09AECB7935A7CE13C72AB27019B38C0EC419E9649BEA6E7F19DCF23D0ED68F0F0505D9E6EA3';
    i(15) := 'F59E5A36F19E20BC189D2E39AC02BC9CFEB7BEF18765C0852E039AB0318800501B00F4E6117EA1763539CB03C021626008E0224104E8960CA09BBD7F4F3D3DF507AB8B3E2598210632007A08744C0040042F700711A0630200BD03A063024007E1A7A6D0';
    i(16) := '3101A08BF03B73E89A00D06D7A88005D1300480D015D13003AC84D440004007A05587DB610010100800080080008000040000000000000000000000000000080E5A7D3CF04FCFC876F0DD5D39F90EE610A9D24CB5F87373FF8744C00E8A6F33FC0072067';
    i(17) := 'BBAB41A0CB1B814EB17BE8BA2D74390090F643E76D81ADC0001D860000400000000200001000008000B0EA64A81FBA6E0B5D0E00FC4E3C74DE163A1B0064E7D7369940E77BFEED2E6F0506000000000000000000008055A5B30F0479FBA7EF3E41FD50F0';
    i(18) := 'F1F73FECA42FB01518A0C310000008009D2445FDD0755BE87200B8C0EEA1EBB6D0E500C0FE6FE8BC2D7436007CFCFD0FB3FCEDAC25636A23A56CA3AEE912D575D2565DC51608001DE444C53D0DA88D744F5ED398F5CC8D541F591D452C73DA525D4752D7';
    i(19) := 'B316EABA1DB9AE99D880220074330B9846342AEDFC035DA6F4288348E56A873A96FAEE450A0253A96BD6425DF7A4AE8711EBBA979737117DC5AAEB4CF7522601A0C341403BEEA638F03C69FFC0342629773067B927854319E5EECDD9BB6652D749455DE7';
    i(20) := 'C986CE2C753D8950D771A9AEB7E71C0ECC746ECAA0ABAC2978C6DB3F7D77377F3B52FE3F143111271DD794AB7BF0FDFCB51130363F7419685E6622754D027ABC7371D4A9A54C5DBF830675D5324823D6B598473871F5D00DF495499923AC9D00E072D87E';
    i(21) := 'FEA67F3BF04E85236883FC44F7FA213D8838972EF36EFEEA5718AD76A04B49A3B3C0BAEE8873F52BEAAACBBD90FA4E1BD435A990C1445EF75D8EDFA0AE13A9EB28243537F4B565097CC1FA020000000000000000000000586E3ABD0CF8E3F7DED64B47A7';
    i(22) := 'CA7F1D19568B2C7F1DFEF9FB1F8F0900DD74FE07F800E46C77350874792BF029760F5DB7852E0700D27EE8BC2DF04C40800E430000200000000100000800004000587532D40F5DB7852E078043EC1EBA6E0B9D0D00B2F36B9B4CA0F33DFF7697B7020300';
    i(23) := '000000000000000000C0AAC20F83187C357E47FFC0843E1B9E208D9524CD5F87AF0F3FE2074208002F397F2F7FBB52FE3F8905CB89FEA5A0CD3C08648882B3002647387F27D8105D0301E0057A88005D1300008000000004000020000000010000080000';
    i(24) := '4000000002000010000080000000040000200000000100000800D79C0C11A06B02407739514F1F1601ABCD54740D0480E7C8136206EAE963A36035D1BA1DF034200000000000000000000000000000000000000000000000000000000000000000000000';
    i(25) := '0000000000000000583C6B21177FFEC3B7FAF9DB46FE4AE4A32DF97F7AF3834F0F11E76A83FE578F1B81D75F593E3F47949D00FDAF18DE3F0C9247FFC4F1E71451AE7CEF8FFEBB1C0072FA96CFA779FA9721CA9507FD773C00DCB17C3E418C9D00FD9301';
    i(26) := '547289183B9D01A0FF550F00F9F86FC361008CFF567FFC8FFE3B9E01F41D7F2305EC6EEF8FFE971CDF65C0C4A6FC9B1F7C3ACD7B889E5CD31383983499189272F44BE5DF4FE5B362EDB94C56BE87F9FD127AA26A52715D4819CFEA645C9B547D1ED0DEBE';
    i(27) := 'C86DC3E84D673275C9A6AE5E21B27815FA77AC28BCD47657F66169B797BD18D755CADB21CF67F2ABC98C6ACB2DC94DD5C9CE576E2176E91B006C13405AF90FAB0C24FF7C9CBFED7908417F77277F0D4DC5E59FEBEF9DE4AF7D8B21EB8D2767A5CF8EF2D7';
    i(28) := '6EC5B5BA2EDB799907E5F2F2CFB490B68D7AEABF1F5852DDB4AABE52D7F3BC8C634FC73FB0B4EB48FE7E5251D63D8B23A69634FC54EA58298BC000104DFFE2780F2DE5DDD665963EDB95B6BCE4D0727D9907367BC9EF3D326CC4B4B5B3AA8D4CE2A04715';
    i(29) := 'B6A9EFBD279F3DB0B4E58D1A9B3FB5058F2AD9495D6C72DB141B7C41E7F2D9615ECEA8AD0C20717C67288AD8748C2B4F2D0EAB44B8A781A967E210FA238B6124E2F0C735E9EE242FE39EA5BEBAAE47F9DF6FE5C2DEAB194B3FB4DC6322E5F4A42C550A02';
    i(30) := 'B6B65D06A6ED9F34485662EA3F7439D17BF5C1952549398F2CD9C141FEDD0BB3C794206DB3BFC219C796BF67B68ECF61439904BFBE1170069EB2DEB1745A331FD201C5569FDA390011EA86E5CF23898403792FDFA49F7F7FD7E108E5BF4DA5671FC8BB35';
    i(31) := '7BA848C7371CCA1F3AFEA6D9F210F48123583DEBADAADAEBE1FC3ADA6FE6AFDB8661EF977A4D15C91182862B2DE87F2B702E210908642E39ED3ADAF1C27DC4494F2B1CB468EBC8B02BEFB6389C7FA475AF6DC0C86A9392DEEF38EA7EE0F89B6B98E23509';
    i(32) := 'D87738A1365C5DF954D28C434B742A53E508DA7806793967529E16C4798080EB9C4497BD56316C78565ECD6E37DDBE4D29E3B6184415478ECFABEA78524AD12E0AC519F571B52D6D79D22EB6FEBD97136B827A68BB756F7D5BF43771D84055A09F88EE8B';
    i(33) := 'B6EEC9F05405B4656871FEB494355E943A2E9FB69DC890E38D509DFB0480AD00058CEB22782E88634B63B62B26A7427A8BA4C6F9D30A011781E7BC46C89918FB440C3F7318404F7ACDF298EFC092F69DCD3106B7A59AFDD0D47451FA770DB12204325B5D';
    i(34) := 'B5E36E1B438C8B8A49B4B1E8EDD4629B538FB656D64D02D93DCBB5BE87A86CF6ADEDF258D74FEA58D6CB994BE7F36400938A1EC167D6F3C8A2A034A0D19721866AD64BEE3312C71F4B70C842C79B8E0C40D926F72CBD7F5966B72A8639214E13EAB48BD4';
    i(35) := '7F1298C95883BAE55EB6EB2F2AB2B954743832C6DA554E7A66999BE8FB0E4F25F86F58EC7EE2B09DD4436EE38A6C2013FD9CD49DD2BC3147E469B203CCE608E715C6121AFDBD27BD24E5DA6BB1AD93523BAACA9D9695273DC5B042B1D77102F0326259B6';
    i(36) := 'CCC43B030CB11771E84145E794F8D86683EC74DF72ED7DC79069EAD101BC2437F9CE6D5F85ACD744EC26934F9591BD64DCE5681E94FE95AFAF99A8F21AF3D68C37277318F38E2D725718BDD9539C37D4417F5E59B4A1FF06195668209BF7B0D2BE257BCC';
    i(37) := '02EB96568CFD6DFB12D28A0C29A9083CAD9DC3A81B02248142ED39CAB209E27EE0B8379D2758349CEC4AE7E801863E69A9CC961F1969675AA3035BBD42DBB128FD0739744D504F03ECC557FF438FA14393B6DCF549DD25D83E303AC5E39632BAA00010E2';
    i(38) := '843683B96C382E8D32FE8F60EC8D7BA79ADD7B63E3BA0363FC392A8DDB420D3B666F114DFF3167F42D41BDF150459CAFE7DBCE9A31F924745E42CA7B28016F620E4FDA3E87513707101A79B61C954C027BE818B3C597118C7D3247EF641D5218E9DE8E71';
    i(39) := '5DD50EC050E5C73496D6F5DF20C36AA3DDFD40DB74654613DFAC48B2BE7DE3FE55BB27636674D10280B7128C4AB615619BF4DEF3661CBE63E3C42127735BE7489C3F8BE08449C47431A6FE435732BCAF6F602F3EC13F9DB7B3A8A9D7C3D2BD4E0257C2A2';
    i(40) := '1CC2BAE1884E4142B54C768C6BCA9A062A7F5A717867EE4D2F0D26116DBD537902F0A6ED3A295707977183C31F6D39422BFA0F9C336912C8E6DDF7D00FB0CD908C73C361F7A6FE273132D3D8198035F258847A377012253495B445E5D089AA1085AAC015';
    i(41) := '8A89E7757B9EE95B3F20D56CD20EB540FD87EC000CDDF9B835A7936CF8DA66CD366B5FFD7B1D1C93F17FCC8CEE25D6238D89AB96F832638B6BAFC5B167E844D5BC0147B5AD1443A6FB81861D4316D1F5DF20C30A0DEAF3CE01F523D8665339BBB8A7C256';
    i(42) := '42A206801027AC4AFF4E7C26422CF4021A1D6389A41F68ECAD1A807170A81768D8311FDB1553FFA199C9AD407DF40282CBBC780D37248BD99FC306EE29FB1272938C2E38007809D538D65B4E13471EF7BF55D1F0BA934DE57BC798F58E31DE0C71BCBB1E';
    i(43) := 'CEDF0F349853153ED1A616A4FF7E403BB42E7603EA79E070927902F25D8B6E76EAE4623CF3602354FF86F3EF2E22D3B811A18CD3524375142C6FB3B58DC5F5F1D973E3092BBBCAFD0C80D93979B9475213617D270063A674FAECF58947FD74BBEF57EC68';
    i(44) := 'DC35E4397218C1BE3C942213473DAAC9B2DA7C6C978FFE5DF2D79B5F8A5D6F3B35869FC861B254EEB9AFE2CC92A715E5F4E56127E7D2A65E455B5F0AF632195AA4EE53CB1CC3EC9874B9932C3D2864E2089ED1F4B956A398A1E5E68591EF575CB36D6E72';
    i(45) := '319CECAA46011B46C3FB73B62B93B3F53E06B8ABAA0F81E8F1E61B96EF3CF1AC874B89C559805F19C65F38B1DE0CB4677BDA8EE35EFD90767838662CFD27CAFE349BAAF253E53EE3EEC3C8F570968AACF374CEFBED49CF3E34F43B50F6877528D1FF27C6';
    i(46) := '3C5462C8407FF7BF6DF7F2CCB0E71A029C3BC6400F44A1C39241BFA47C63BC92D6A4E0FDA20CF5FC810B2EA68ECC22A4E76E3283EC53BF54D91F9451F40ABBD27B173D78F108A7C270EF7BCA61A0ECCB564DD3C598FA4F95FBF4A429D781F2FFA9B13D47';
    i(47) := 'BB43E63D46CABDECE73B6137341D58ECFEC4614B4343FF85F39F890C7A8B1802ACD78C9FB60314B759A57C4F651542DB9459DEC31A079C3DDCC1F1F71813802E033AAC5182DED4319033DA4534CF3C657866E860A4DCCF0B281E7291AAC8FBC55BD0BFAB';
    i(48) := 'AC67814F6496D5D8CBCC568CCC71AE21804CDED5D9E7D823F067EAF9D39D2646D9030FA74D25681CCA7716F24B4C5EBF0E2CE31A5DA13B86C0A7AA66238B6512E54052A5BED1F0FB55298DA4E777D5F367E569A1EA398354CAB23D90F1D0779654D26C9B';
    i(49) := '13A71E72D932DA52D42FB3B4BDB8BE675CFF89AA3E19581E420D8D6C457FEF42E4D0AF493307F36E198DA57F43A7778C8CEF52D2F5A94566C5F53D71B04B637931519623E63A00376867DF18D66C18C3B4FB22EB2B8B63A60DED2533F49F550C4BAA260B';
    i(50) := '27317F89794DC1D26138C6BE3174B0F5846F34780A103C97754F64BDE348CBA38DC917CD0D54BC740669CE328F64BC3CB4F48419CE3F57903D527E93914BFBE3280480E532CA5D71FEA999DACB1E8056278B3A26E762A2B3C8AE8A4949DB70636903C03A';
    i(51) := 'EA5EAA54B458AEDC2E8D375B7B6044477BFE62176631C97AACECBB13973AC892012C0FBB465A9F967AAB8D5534CE5744B1D9473F0ECCFC05A5C472FDC53237960C6079285600CA637ADB8356B3654E4D5F2185A35F1A413651F609C03119002C82C2F1FB';
    i(52) := 'C676D8E2370AAB3841648D281CFD8E3124B03DD33F8DB9264F06002E2E4BBD7ED54FAB154C967559EA1A5038F450D6FDAF1CBDFFE1B2379600B03C8C94DFAEBC623B3534C3DC7EDD57EEB5FF0901001682ACE76BC7AEDD22BDEC69E92B96F3B1726FF9D5';
    i(53) := 'B2DD5E950C8B9D804B88EC0728B614EBC0A097FB46387E541927EAC52DEBB367F8D59C77000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000804EF3FF020C007021BE68DFA9';
    i(54) := 'EE9B0000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'barney_burger.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 4;

  -- Logistics 36 (5)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000097E4944415478DAECDDDF6DDB481E0060D2D8021460DF57A9204E05';
    i(2) := 'B12B88B30DAC8C2B2036B0EF8EDF177052819506D64E05562AB03A38EFFB01512AB83391E1653C21452A12254AFA3EC088B3B149CE707EBFF9C31137CB000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(3) := '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005844DEE5C1FF93FD357AFCE3BAC3538C7FCDFE3C751BD994C7365EB4EF5187A7387D6CE3';
    i(4) := 'E3AD4B00821F49A0FF49E0A0A30AB912FCEC8BD016C71D9EE23AC454FF47006BC886829F7D1D09ACBCEDE7821FF6370672C10FFB9B0472C10FFB9B0472C10FFB9B0472C10FFB9B04F21D0FFEE2D1C961F8FEFCF16BDAD3763278FCBA08D7FAE1F1EB7643';
    i(5) := 'D77118AE6316EA6BD6D3BA3A8AEEEB2CDCD7C98ACA3F488EBBD34920DFE1E02FDC85C652385E5123E9C2BB1078A5971B4A565FA20098843AEB53E05FCD69770F2169FD6CF22C8E7B1D05FFCB70CC9D1E091CEC70F06F9317158D7D956E42326C1364716F';
    i(6) := 'D817C3C7AFFB8676370CE5FC990D3387D9D38D6B6F5619FC85356C161A85D8EC2E0108FECE7C8886DBD315F7FE45509F4423A1B9F51F7D7FDEA3FAB909015E8E4CDE84D16B1E7AEACBE867CF5A9635AE9F9BE8EF975D8D14FB98040E047F2F4C42433E0E';
    i(7) := '7FAE72EEBD484F7E1ACEFFBCE386BA88B3A80CB7A18EE261FE344CA1E284F57681E35F47C9E5361CAB337D4B02F98E07FFB6AC0174299EDBE65B78FDF7510278D6901CE3358CBC6572B98AD610569D7C7B1F53073B1CFC7C9F1B6FAB41D2FB3705E72253';
    i(8) := 'A7C328F867615AB1B6A71E7D1909FC22F89F044A31577E15F52245AFF079811B55758CA2517E6A31FA78179DB3EE7CC568E675F6F41158797DB39AEB7991FC7E5BD38680380A5FAFA2FFF63904EAB4E1F7DA966116A623C396C11D3FC25B64DEBF9147C4';
    i(9) := '45DB7F8CB1ACC3182B9240362FC6F21D0FFE365380F219FCD99CE3CCC2FCF8B621802F1608A869326FFD6FB41E705C718DD721B9D45D5FB178F53E0AB2BB25EBAEAEBE86E15AE62593DB505FB325CAF03309FCDF65DB0AE7AF73135D47D3CFEEF47420DF';
    i(10) := 'F19EBF4D02B84F7AA3A2F1FE13FE1EF75459682855BDF35594408A737C0C3DF9201CA3AA2E2FB3A70B4EF312405C8E87708D5F1FBF7E0B0DB9ECF99E877F3F0CE55A7502380CD73268515FEF9304B76819169D2ADC8573373DC38FD744A6E167E30D4093';
    i(11) := '7D4A02F98E0FFB9B12401CB8D3F033B38A21EB4DD440D2E3C43DCF6D984BCE5B6CAA4B227509200EE6AA9EB56CD4839ADE33AE83A685B1781453555F71B21C67D5BB058B60FE23B9CE65CB50B736300C539032813C84FA9FCE1925DC47F7729C249F7804';
    i(12) := '73B9EE69C12662EF60CFE7FC67514F765C33779C2443C48B8A065FFA5073AEF7D1B15F2D789DE9F1ABAE71BCC4D0B9F57C320AFE494D10C74970D66119CA91C87594386EB3E61D945749B08FB2EA4D572759F3C6A34ED604B2352F0C1EEC69F0B76D9471';
    i(13) := 'A37E884604C38A85A7AC61E83A8D12CF32496B535EB748749B2C4319B42773CE7B52B1E6F03CFBBEA9E84D32EA695AEBD8FA2470B0A6E03FEDE1A3BED7492FDFE43699165405FD6143AFD594249ACE5B4E59061BA8AF939A6BDA44192621609F8591DB38';
    i(14) := '0AF29B9A24F03609FE9761CAF3905CE771128017EBAEE8102BA7EB480207DBFE5AE3250C164C005F6B7AB1494D234BD700CAF37D5EF03AA751832C3F10F32534F4D19A92C1A275B5AE32CCA2E9C8CBA4E71E54ACE5949AF6FA9F2723BEC30D2481F13A92';
    i(15) := 'C02FBFFEFDAFEE4BF3FB9F3D8CFF95DDD4873094BC088DE53E0C911FB21F9F024C7E72785734847F428219443DF24908A60FC93A431FEBAAEB329449A64C2847C9C8231E814D5A2496DB688D68986D629FC01A62F320FBFD59E7AF34CEFEFE32EA610278';
    i(16) := '58E1B1DE65DF3F90527EB2EC2EEAE1CAE1E59B25CFF12C1C631C054AB98FE16E0BEAAAEB327C6E91B4DA96E56B079D457BDF62A6D357EB17B1FF6D11703D49E0AAC70960D11B3CAB1822976B0AEF43B04FC2D765189EAE6AAB69F918ED59F6E3A3B6510F';
    i(17) := 'EB6A99320C422F7CB281A4BE8EE3D605FFD53A82FFDB08E0FFC3F4CE93C0D963C1AE7B9400A60B36EA798B8637E118E5E697376131E938F47AD3CE6EE4D351C5700DF53558718F38AF0CE5E7FB6F5A96EDF59CA09D2C98C05ED4B495AE83FF3A9BBF2B75';
    i(18) := '65C1FF3401AC27098C7A94043E46DF37ADF41E2673C8B4411C458D77DD2BF493359DE753F4FDDB359521BE474D23C841325298D45CFFA0C548E9303AD6C3DA12C0B7D818AD2BF87F4C00FB9504E2F7C80DE70CB906C9BF5DCE1922168DA658DDBE0FF3D9';
    i(19) := 'F8ABCCEC8BF6D265831DD4D667FBA1EA323D77BC40379AD350CB4D3A472B28C338A9DB7773EAE82AAADB71455DC46B0E5773EA226D0BE7BB1AFC85BC6F17B4624D5B8187D9D3ADA193ECFB3EFE72481937DC7156FD68A65CF86B1B605549B66E2B70F9DC';
    i(20) := 'FC21249FF263B1658F57EE6E2BF7B5A7D2EDCE97D1A8E7531254EFB2F95B81474970DC86FA9A65D54F3C8E575086F4730DE93D2AEEEF1F51F0D76DE92E93C84D92143E25D77FD2E27EEF44F0CF4F00BB9104DA7C18A86DF0BEAFE90DE24FB94D93A172E9';
    i(21) := 'B7ECC71D84E9875EEA12C05908CA41C32255DD1EF834C9A5BF17BF04A32901542581BA217DBCE8B96C198EB2A79FC7687BDEAC26095CB738D665D6F1DB81FA106379DF2F70498BBC167C147A80A3ECE9FB00CA1E67D29064DA3CE68B7BE3F3ECE9DEF7BB';
    i(22) := 'A8073BAF4832C5EFBD4A86D6939070C60D8DBE7CDDF74952AECB24098D426FDA545FC3B00E701225B572AEFC31ABDE29B86C1906C93DCA16B8476D8F350965F890AD63E5BF07B1956FCB85F6543C3C6DF3CAB1A328D0BB5E6BA1CF7A1253ED5E0ABA5F4F';
    i(23) := '071631487AC5AC4502887B1B04FF463BD4F6AF059704EAE69CF1CAF2A8666E390CFF7E11AD273C8804C1BFE9D174BEED05E881A22ED2C415BFFE6B988C0EEA5E8881E05F7BECE4BB52901EAC055C65F33F3B5EF4F897E6FD82BF4F3193EF5A817AB02670';
    i(24) := '943D7DA4F890ADFEFFF683E05F49ACE4BB5A3010FC5D27004900B63A36F27D292808FEAE128024005B190BF9BE161CF63DF8579F00240104FF56B5FD5C45C0FEB6F9BCC30A292AE35A1240F02FEDF4B1AD8FBB3870DE71C5480208FE9E063F0000000000';
    i(25) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008BFB';
    i(26) := '9F000300CE9677C979AF88180000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'logistics_36.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 5;

  -- Bauhaus Ink (6)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000012704944415478DAEC9D5F885C571DC74FFE3498D626B3B5142A98CE';
    i(2) := '223E7525B3A282D492D917C158DDDDBE346F3B8BD08208BB8B45E88B9B155AFF50C82E2D2A85BA1B1F24796976B5461061276A5154BA1B9A3C49C8B48285509B69D14662259E5FEE6F9AC974F6DE3BF7DFDC7BCFE70327B39BDDBD73CEEF9EDFF7FC7EE7';
    i(3) := '9C7B668F010067D983090010000040000000010000040000100000400000000100000400001000004000000001000004000010000040000020AFECC20425E6A5AB35FB6FDD96076C91AFAB5AFC6869D9B6E5755B9AE6D1916D8C890040FE1DBE62FF9DB2';
    i(4) := '65521DBF92D095DB3785C0980D5BD6AD20B431360200F9717C71FA1975FE2C58B7E5A41582758C8F00C0F01CBF61FF5D0C11D6A785A40A4B5608D6B8190800B8E3F80801020043707CC9EB4F186F422F8FC864E182158226370B0180649D5F1C7FBE20B5';
    i(5) := '5DB622B0C04D430020BEE3CB68BF9AE351DF2F1A986509110180E8CE3FA5CE5F29680BDA2A02AC16200030A0F337D4F9CBC02C13840800B8E9FC880002008E3B3F22800080E3CE8F082000E0E3FC32E177C691D64E33318800C02DE79725BE4D53DCD9FE';
    i(6) := '4191D58109960887CF6E4C900B561D727EA36D5DE5B62300E0EDF0AB39D8F29AB61D48019C75FEBA86FE2E33C1B3034400AEC208880D10004747FF86A3A17FBF54A081191000D758C404D802017077F4AF62880FA8120520008C78D8041080D28FFE538C';
    i(7) := 'FE3B460153980101283B339800DBE405F601643BFACB0EB8AB18C297113E778008A0AC10E2622304C061263101364200DCA58E09B01102E066FE2FBBFE2A1822908ADA0A100046366C05084039780013602B04C05D086BB11502E030554C80AD10003A35';
    i(8) := '602B0400001000004000007AF09E9B0004009C8407821000004000000001000004A0B8B43001B64200E8D480AD100007E19370B155EED88B0932E3F5A1BEFBE57F1AF3DE7563AEFCCB2BFDB8EFA35EB9739F31A31F73D7560800A44033B3771207BFF8A6';
    i(9) := '31176C69BDED397F144404AAF7183376BF310FDEEF8943D96CE5389C0A9C252F5D9513812BA939FD9FEDC0B9F9B7E80E1F4610263E65CCE71F48530CDAE6D191113A0B114059A380644FBD9591FE97173DE7CF228D90F2D33F7922F0D507BDC880D11F01';
    i(10) := '80506C24260032D29F7E75E77C3E6D4470A44824F0D867BCC820391B012940295380F81F0C2223FEE92D2FBFCF13324FF0D8781211011F0C8200945A04CE448A02FE7DDD1BF15FBE98EFF63DF2A01711DCB52FCA5FAF5BE79FA6936407FB00B2E764A451';
    i(11) := 'FF5B67F2EFFC82D451EA7AF1CD6C6C034400058C022E9BB0C75E49B82F237F11914840D28270B4ECE83F4AE720027081A55021FF73BF2BAEF3DF14AF57BD36485B92B009100138110588C37CE76C7AEBF95923FB07BE7BD46F5E80D19F088028A094CE2F';
    i(12) := '485BA44D3B47028CFE44004E460136C1EFFA108C323A7F7024B06D47FF713A0311808B2CDCF6DD0F7E5B5EE7EF4402D2463F1B0002E00C8F8E34EDBFCB37BF96C9B2BC6DEE490369A3B4D563596D00A400EE32F2F5572E5F7DF18F55B7DAFC85D6D5171F';
    i(13) := '62E20F01709BB7CCB3B5F3C66C3E6A4CE51D47DA7CD096978C691F3666E25EF324877F900238CDAA7584CA730E3558DA7AD87B2C7A95DB8F00B83CFA1F37BA0A70D496E71D68F3F3DA56A5A636005200E79C5F727E5906BCED809053B67CB3C4CE7FECC3';
    i(14) := 'FF2D4FFE8DDB54A045AF2002708945D3E774A063258D0476707EA33658A43B1001B836FA5FF6FB9D3245023ECEDFCD28510011804BA3BF2FE2303F33DE8C795139A86D3896904D8008A00CA3FF40A7025DD048E042C1DA39A623FFD8607F3662A3004E03';
    i(15) := '220228358D411DA969CB13056AE0135AE7B1946D03084011998BF2474F1BEFB4CCB11C376C4CEBF874C6B6015280A284FFB2E6BF15F73A3241F8435BDEC849BB0ED9F2EDF0B97E10E3EC0E2402282B33495C441CED55CDB10F0DD9F19FD7BA1CCB998D00';
    i(16) := '01C823F5242FD6110299693F9A61238EEA7B26ECF8A9D8084801F212FEC7FF4C8000E461A25FDB72D69657F4FB2490E5BC87D4F1BF6C32599A64352023F864A0ECA8A5FD06077544EE8CCA175408DED0AFFF1E62DE40C2FA4F186F42EF903AFED8706CD5';
    i(17) := 'A4CB200084FF311833F95E3508B01502C01C40A9388C09B01502E02E154C80AD10005200C056080000200000800000000200A0E8C6294000C045D80988000000020000080000200005A68909B0150200000880839CC304D82A6FF03870760CE99CBB4BC6';
    i(18) := '3B87E46DFDBAFBFFBBF964CFD7F7D832D2F3FF65B715020085EFD4FF30DEF11F97FA38799050F8898314395DE0E3084089E048B00C79CB3C2B1F07564DFECA32C2FFC596BFEA489F2612197CD696CF69849038AD7BCD93A3F416228032B26ECB7CB2E1FD';
    i(19) := 'EF4DB69F1B2402F31B2D12113C9C749AB04E374100CACAB96404E0923AE0A52137E7821611802F2525044C009202943A0D90783DE2832ED76CF98586FB7944D282AFD9B23FEA05DA36FC1FA1976407CB80D9B3167DB47D26C7CE6FB46ECFC44949D6E81E';
    i(20) := '0840D959197CD43FADBE71AD00CDBBA6753D1DA5BE2B740F520017D2804D13EADC3B59D23BA5AF4544960C8F99904B87EB36FC9FA6771001B8C05238E7FF71819D7FE03630FA1301100578C87AFE464142FE30C8A4E0A4F1F60FF4A56947FF097A051180';
    i(21) := '4B2CECECFCA74AE4FC9D798153DAB6416C01084049B1239E6C775DEE9FF39795BEF319CB6A0B40009C9C0B68DD9E2F979DDBE6045A26D47C082000E58C02E4E0CBD95B4B67D71C68F56D6D9DE5F0CFE1C224600E78F7E87D5BD7CF5EA9B9D4E67D47EFDB';
    i(22) := '3E70F6CA38779F08C0696EBC6BE6EF3E75A576C7C3EEB459DA2A6D96B6D30388005C76FEAA7DD9B2A572E31D89048C79FFB572B779EFA78D3970D676BC8337BF95F07F7CD781CE3C081001B8C5AAD10783C421EEFAC9078E51CED1E6C36DACA80D000170';
    i(23) := '6EF4AF9B9E8D403DA363E99C5FDA266DECA1AEB6005200A70460C7D381240D907440D282923B7F87964D0338058808C019E76F189FA3C1C451462EF83A4CA172FE106DA9AA4D00017082B9B0A3E6BE478ADB48A9FB0029CD1CDD02017025F70FB5E62F8E';
    i(24) := '73F7CF8DB9EBFBC56BA7D459EA3EC07C468DB90004C0056606FD838F7CC39883AF142325903A4A5DA5CE59D806E2C12460F611408C33018DF9CF8F8C79EF7BF99B209491FECEA7223B7E87F6AE0386330189004AEBFC53719CBF130DC8A49A385B1E960B';
    i(25) := '3B8E2F758AE9FC42456D04084029994CCAE9F63F754B08761F1A42C73974CBF1F7272B469374135200C2FF01B9FEB22DBFF25ED34A0FC4C965667FDF57525D9D200D40004AE9FC55FB72398BF71211F8EF1F8C79FFF7F19F2D9049BDBD0F1B73C717335D';
    i(26) := '921CE5F9806CE09381B2A39ED51BDD1CA5BB9C55C4E046DB98FFBD76EBFB7E88930B7BACD3EFAADCFA7E48B65AA3CB200065A23AAC37FEC0915514F6632B509804CC8E2398005B2100EE52C104D82A6F3009981137DE3537B0C2001DF3007D9308000010';
    i(27) := '00004000C0AD94897900E6009803600E00880000000100000400001080C2C167E0612B04C061F8086C6C8500384C0B13602B04C05D5EC704A1398F091080B2D1C404A4007983CD1619C266A0909D924D4044004401D8081080B2B18109B0112980BB2940';
    i(28) := 'D56474306881E140502280D2E6B6D2B199E0DA996D9C1F01283B2B9800DB9002B89B0654340DE079F7DB696BF8CF3660228052A7016D46BAFEA33FCE4F044014C0E80F440044018CFE400450FE2860CBF029382D5BC61100220017A380052C6116707E04';
    i(29) := 'C0551158B72FEB0E9B605D6D00A4004EA7022E4E0832F1470400EA00D30E367D1AE74700C01381A663F3010BDA66200580AE7460D5BE344ADECC35EBFCB3DC6D0400DC13019C1F0100474500E74700C05111C0F9730A9380795566CF61CA3031B880F313';
    i(30) := '0140F44860CABE483450B47D02B2C437CB461F0400E28B405545A05E902A37D5F95BDC3D5200889F0EB46C99D09420CF9B67DA1AF24FE0FC4400904E3420A9C00993BF09C235C3833D0800649A162CE64008C4F19718F11100189E108808CC98ECCE1610';
    i(31) := '673F69BCE53D1C1F01809C8881AC184C1A6FB2B09A82D3376DD960661F0180FC8B41CDBE4839A262501FF0124D75FA73C63BAF9FCF334000A004C2E02B043CA50700E0087B3001000200000800002000008000000002000008000020000080000040F161';
    i(32) := '2B3038C1E38F3F2E0F4AC9390A55E31D5CB2F2C20B2F1C47009231AE9F215BD6D06B8E77BE86F1793A8F8E98BAFDC5BE8B7D7ED4B4B69FC8B01ED2071A3EBF22F56966699BBD095D67D1AF51C63B34C265E459FDBACFCF1180F49CAEE2D33FEB121958A7';
    i(33) := 'CBEAF1E66A80AF74FC2533381310CA4E2DE6CF4B0D020065A71DF3E708004051B1E1FDB64F58DD763D3D4500C005A6FB8840CB96092B104E47007BE91BE04014204E3EA1B3F052DA1A19384F6602608D5FEF0EBD92BC015D37B6C37611955D67AC6B49B5';
    i(34) := 'C15E4FAE55E97284A6E342D0D2913F4E3FAB77F5B5B6DEA7260210CC668F31E545965F56A21850054596D7A64C9FCFCDB33F6F69D8B712466C74AD7EC6E757163AD7B1BFBBE9F37BD2211622B465D1F42C15DAFF6F76BF6FC86B493B26D52EA68FCDE55A';
    i(35) := '1B92FBAA43045DEF84F19929EFACA3ABD89CF0B9D4C9B0FB415408A5FE877BDE3BAA6DFDEED752D03E8C9DEE4FD7CF6F6E2CB26539A98147C5E6B2CFAFC8FE9AD1A2A7007293A76C63450866C3184F3BC76ABF0EDE8318509CA111F2FA55E3BF56DF2D32';
    i(36) := 'F534C5B1E77D366DFD278244401D70D5845BF692B268FF6629C426A45AC8F656027EEF5CC88E7FDC04AF9567199589A8CD8768BBD479D2FEFE7418610D4123E0E74B49B42F2F9380E2CC5BDA89833AF96608E7EF77FD4D55D5A251D1BA577CEC32A57619';
    i(37) := '744D5B44E04C5ED21F5BB672E6FCAB219CBF572CB7FCEED50011D05CC0E8BF562601E88CC03B7674FDFF289DBCFBE69C897B73862802F33EE1E91913FDE3C3A7B4A30F9B5593A34D392AAA8D88F72AAEA8CE07DCCFA5A4DAB93B871D7D27E3C5E9E4DD22';
    i(38) := 'B0688AC9CC0EA298C408DED00E3F2C67AB4788EA528D465490A252EF99F4CEE5E89F4701E818AFD16394468279F77C4153816A9FE8E54402A2D87DADDC885B0E52D2B8769DCBFBE89F5701E867BCB9146E7011A9F58C148D04AF5D0D9A83C9A25D396132';
    i(39) := '89812CC2DF1CCC72F4CF5A005AB62C6B099AEDAF7546697D0DEA209D2D9DA28ECD10753992B30ED7D4BA0FB284343580CD974CB8F5EF3A0210AA3EB214391D70BF2A1122CD6AC0E87F32E98666B60CD8BD6629CB4FF665CBF87F826D4D3B6D18E7BF6D99';
    i(40) := '2CC4D24DDE3A9C2C1DB56DBD0F9AF0B3CE87037EBE6DBAB6BADA6B2FEB7C413DC635874547E0CF67956EF989B5B5E9B2DA34684EA96A06DB78745EFFA6E6932A1D2F7C0AA09D322897A98555E3DE3572DD2CD28E788387650FE19D0447A9E9EE7D0FFAF5';
    i(41) := '428C8E9F0A215765A42D0B8E1C2C7332204DAB174D002A3EE16952A9C54E23A0B3F4DB8C92D3FDEF4142D6726C0B73D0E1247379148056987C3EA57CD3E9031D7C46D6A2D8653246DF2AAB70FB89C05492AB5859088070A23BD4D335E720256B861CC917';
    i(42) := 'BB3B7B8A1B7D2A295F7F5082ECB2DA63F354EADD75DDCAA07F67CB7C88390FA70440D9C82A0AD89B6085FD4674717859DFDFD68E521BA083374338E6965EBBADD71E49C9A1E4DA4772D261CF99E089CEABFA405187898876F1BBB7B27B53EEFF4C58BBD8';
    i(43) := 'DFBF31C0FB9F7750002402F0DB88D4D0E738623F78B43BC10A871941EB219D7FBDD3387D0D9303761E5A893AD26D87A8FF6288D4E55C469DA469C22D1BD663A65BE743D85DEC520D51DFA8ED740AEDF36B017D3191BD2CBB13AA70CB247BB4D24ACFF74B';
    i(44) := '1918BD95D0E8BD9E612759C9486862A72B119F90DB76F8E08EA03460313702D0E5A4493C0BBDDC3BEBABDF67E1584B09D43DCB834896D34E391212F7A521DD8F224701EB01FE94C892E0EE843BCA42CCCB347D0E7C9835292FEDE93A73D4F76865DD6155';
    i(45) := '6C8276A40D5BDCD7239EBBBF96E179FD799E0BF0632E3702D0E540B3113BCB9A7666BFCE3E61D25FDF8FE250371D7118C79069883C91A608A8B8CF4609E123FE5D3381C1A40C04A578B1970477A7D059C491C70708D9A5E3CA693D812702C9CF6D194F30';
    i(46) := 'DDD8A9B38F0E20349D2DB743CB55F5BD474D8A475CEB683C3E80DDD74DB453776576DBF9D37ABBEE6B508A172B0AD89BA2134DAB3A49057B8F956AA9E36C44D9DE29C758E9DE7699099DD4EB57BBAE2DC896CA7311EB2F9D6F5C1F43EED4BF9FE3AF84AC';
    i(47) := '7FD8BA3443A4197E759ED5E72CBAED52E9F9DBA528D7EF74487B7D111A597E9C31FD67FE073DE7B1D3C9CF69BA90F49C46506AD61C70EEA115E37E45A9CB82F15F398B25947C3A70487A265CB619A13E748AB1F3A70E0300148A3D980000010000040000';
    i(48) := '1000004000000001000004000010000040000000010000040000100000400000000100000400001000004000000001000004000010000040000000010000040000100000400000000100000400001000004000000001008001F9BF00030055D273E49260';
    i(49) := '73E30000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'bauhaus_ink.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 6;

  -- Soho CHair (7)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000012E54944415478DAEC9DBF4F24C915C77BED0B2EBB5939B9C0127DB2';
    i(2) := '5672B6B3D18634C9A640E88899D011F01700E14503E1454066470C99EF921D325FC46C66E9646D6F60C94E7CB3991DD955F0FAB6B6E81FD53DFD6BBA3E1FA9050CD05D5D5DEFFBDEAB5F1D04000000000000000000000000000000000000000000000000';
    i(3) := '0000000000000000000000000000000000000000000000D014CFA88261F1E2F59BB1FA32524728C7967C4D3E4F63A18EA53AAE7FFAF18725B5880040BF8C3A31E6408C782CDF6F199F47355D2E56C79912822B6A1E010037038D0C8F5B96AD94FF338DBC';
    i(4) := '2B745430554210F38411004837FA4375EC0DF83657EAD85722B0E0892300F068F8DA3BCFD431F1E8B6A7A404C3E457544169DE7A66FC9A99742E0202E0B5F79FF52037EF021DF5DC48F403088097C61FAA2F471E574128A90F20005E7242150413E9FC04';
    i(5) := '04C03BF6A802841001F033FCDF0BB267D1F94644148000F8063DE09F73481520003EB14D157C9E0E49A72820005E4063A72F00014000C08A02E8174100860DA16E26DAF88FA8060400EFEF2F075401028000785C372A429A500D08000240140008007848';
    i(6) := '443F090230645E52058530310801182C0C7515433F0002003E8BA4AC970004003C85CE40046090B010C80D66062200F401784E44152000E02FBB540102001EA701540102001EA74B6C1F8E0000FD00800080A730731201008F210540000001000400BC84';
    i(7) := 'D5810800F80D0280000C86982A0004000100220004000001400000F258520508002980BFACA8020460287CA00A10000400C0D1F87FFAF1075200048014C053E65401028000F8CB3555800090CFFAC94285FF0BAA0101180CE4B3A584729F6A400006E9D9';
    i(8) := 'A88242E3DF516249B484000C925BAA20131D21BD2252DA4CBEA00A9CD03DDB33AAE189D7BF50867F4A5510010CBD1F20565FAEA88907745D1CABE31B8C9F08C027CE82C76DAF479E1ABD8E82AE09F587C533AAC09D17AFDF4CD4974B8FD29EBBE071680F';
    i(9) := 'A3470060C022B094E31D068F00809B08CC36281D88834F331AEFE4EB2260DE3E024015541681502281A8C75EFD4C193873F30101685008F436D8872204618F8C9F893980007410158C834F7BE36F89288C8276F7CBDFC7F30302D0DF6861D2F0A59EE3FD';
    i(10) := '0101E8AF105C362902CAF879AEE0043301BB8135F3800000000200F542EE0F0840CF091B3C37137BC01916030D4F007AC18BD76F92A14F730874ABC2BDEB88E65D8ED8E5453CB1ACE40404A0576C0DD0D82331F46DC3F0EB626F8DB26901D09DAEE70C8D';
    i(11) := '22004400F5197D2886B91BF4773A7452D727BA9CAACCCC8E44007A41B4C186AF8DFE601DAFDC113A2A3952C729CD0F01E8DA736E62B927E24937397A3940001000C2FF7286AFA395CB60181D9721CD0F010037C31F89E1EF511BC3857900EDD3F4262261';
    i(12) := '0DC6AF8DFE3DC68F0040FD6C372D00EBF433C842A59B60989B9FB2449A14A074187C229E30312A3D8CA427A0985B6B3D7C5EB4BD962C079EB450747D8DD312F7A8F3FCDD60F8BB1E9FD1AA3F8765A3F9C61105E53BC04C813067AAE9731DB664600FEFE9';
    i(13) := 'CB7A51A7DC5724D148E4C9E39CAAFAB8A25523005573E24D1CFB5E4A84F2518CBDED9D89FA40AE18220050450C92E9AE1135D2FB9C7FCAEC3F04A049414884E065D0AF8D417D2616C3C7EB2300AD0B4228A9C28187E1761F529E0B727D04A04F62300B18';
    i(14) := '4F6F3AC7D706CF7B0B11805EF71BE8D18411B5418E8F00F8DB57F01611A8951DF2FCF56026604B4878BA4F4D409F602660BB22B0509180CE57279EE4E6C944A8644BAF346FAD23223DAC6ACEB674659C714E2005E86D2AA01BF9FB81DC4E2C8736F48F89';
    i(15) := '31560DCB55DD9C068F53AF5DD1AF32DFA15521009B2602F7C1E60C11A6197963AF15978D472E4B4455B4610460E304A0ACA7EB328C3F6E7B5C5DD5CF4DE03E744A47E01AD009D80D9BD2601F36055106F95E8632DB621AB8BFE024A23921009BC6A64D58';
    i(16) := '09D571A34460D6C6C5645CDF35EAD8A63921009B14FE8F82CD9D1978241B86B4C10511007D004331FA64C1D0EE401AAC5E5E3B6FA1DE5C3B4BE907A808F3009A69B89184CDC9861B61CF8AA88D250E1EC7E7753AB24CA6D34A84A243FD49CEFFEBDFB7B1';
    i(17) := 'BDD6ADA3004401F30188003A0EEB273DF5F0C9A620EFC4D0978EF7F4BE40B81ADF614722A77B1741633E0011405786AFDF36D3D6565F653CBC7E1FDE7C8D85328B8228408B5DA302A0C54AD5F1CAA16EE90740003AC9EB6F7A16DED7B9FDD5BB9E189DBE';
    i(18) := '973D87E711D10F501E4601AA1BFFDB1E1A7F9D9D6145A9C24822A036FA015C60F31504A015E30F837A96F56A433D0F1E27BDE8FCF51B3DAD3539D4CFCF8372DB585FD43C3D37EE89D1B90A1AF30148015A619D8D3DE6E2D10A7373F9FDA9129CADC06DF5';
    i(19) := '60ADF9B8BA7EACAEDD79654B39960E624304800034EEFDF72AE6BEDA38CF74636E20177F08D72B9EDB25ADE843E7E6C2C1C01FDE88D4503D9002C0038715C2689D974FD768984B47036982BE4C59BEA31F0001E8DAFB977D0F8036CA572DF54CBF6BE8BC';
    i(20) := 'BDD86BAFC4AC43048014A031CA18FF95F6FA355D37748C349A1296BEAC5B58383C033A0289001A63D7356CAED1F85D05C087EDB05D8603239A2902D06504F03016DF4188DC54A8BEE851FD3B9545523540006ACDFF43C73F6D628FFAAD8EC2FF5E21731C';
    i(21) := '5CEE150140006AC7A5512D1A5A221B7625003D9C5AEB529E97345704A00B0138EBA86C3EBD15E7AEA667050840298A7A97971D7ACB770D9FBF4F51804B8415D15C1180B623808B06AF4D83FE9492242F1BC9858E4004A036A403B0683AECBCC322363D04';
    i(22) := '78D7B347E2129184B45C04A02DEFBFE8F8EDB4BEBD19F7B686670608406D02D09887741C7E6C5A00FAD407E03A32C18C4004A036B63B3490D0C120BA9C05D895A79DF7B45C08C000096BF0481B4BC1FD75B554B828EA1A9598BC85004066083E2A1080AE';
    i(23) := 'E7E02F3C7D342E9DAE080002D07888BBE8F8FA6DD1ABC546B2B7425CF06711CD17015897A246D4F410D9A82786D9C7918622F1654A3002B0362F0B3CD1BCE3F27DF43102108A8603E90844001A0DC1FB907FB7E5993FF6F0D914D53F7D000840751C3A00';
    i(24) := '6F5B28465118DB96678EFBF67C5CA605CB3B1A0101A8DDFB6BDA08FFFBF2BAB12C01F88A340001182A79DE23EEC3F6D32DCE4158F6D4C08AEE7F8B668C0034117ECF7DAA08D755781D09E08A0800016882BCFCFFBA076568DB20D3363CE9C3F0E0A26214';
    i(25) := '070840A5FC71D5E2FCFB3C0168D5F864C8F3D8B86E1C74B70B9249EE5C0CA604E7C37B01D21B4DB401E17FDC41C8AD5F667ADEB3C7A59FC7AC40C8635A3511401DDE5F73DB93327EE031394D0BA61F000128CDCB9CF0BF2F11C08AC7E4149531251801A8';
    i(26) := '2D0268CDF81D26B12C794C4EFD00440008406D02704BD5F49245CEEF42AA0701A8C3F3F629FC1FFC462425EB629527024C094600362AFC07D20004A03B5EF624FC0FC9FF4B41472002D05804D045F89F27008C003C4D039639F5423F0002B09600F42DFC';
    i(27) := '8F794CA964F503D007800034965F760193804AA669BC2E0C01682ABFEC025280721140566487005005858DA8AB577FE5755CD10998DE0F10E7D40D1D8129B018E829FBEA380A1EDF08A40D7FDA5139463C8ACA023E26024000AA7A116DF4A73D2FE38227';
    i(28) := '95C99D083802400A001E0AF83C48EF2319312310011802E4FFC56475DA220008C0C690B923115553C831F584006C3A232280CA698036FE575624A0BF3FA7763E874EC0CDE32355E0240271F038A20344008322A60A000140000010802152305C45E71620';
    i(29) := '001EE7B674020202E029787F40003C06EF0F08800784540120000880CD1D550308000020001EB2A00A0001000004C04318050004C0573ADA9B10100068190C1D10008F49DBD126A65A0001F023D4D7C63EB52281336A06C0335EBC7E13520B0000000000';
    i(30) := '000000000000000000000000000000000000000000000000B5F1E2F59B31F70B9BC033AAA07643B8971F6375EC0FF9659EBEDDEF106147A01A91C61FCB8FA13A66DC2F20007E1173BF9D462523754434430400FC4BC126EACB7B75BC55DFFF2C3F030200';
    i(31) := '1E18BF4E412ED531928FF4D74BF6544400C00FA2929F03020003222EF939200030147EFAF18745F0F4DD894BF91C32F8822A8001B1A38E893AB6D571A78E2BAA0401007FA200FD26A573398014E071B61A3DC160B48711B5E0810088E1BF0D1EA7AADE23';
    i(32) := '02DE1BFEA93AFEA7BED5F303EE59BF3060019087AB8D3F928F46921B6EACA7C073ADDD1E4E8C8FF4CF4C5B1E621F8018CADBE0D38490CA02A2BEEA1FBF91DCB28E72CD0C218AD571A6CE7DE5783F3AA2D969AB575B66D11D8AB124E53D56D79F3779BF29';
    i(33) := 'E7D1227E20621E1AE7FA6CE1915C6F22CF7D6E2D4A4A6B0B91FA1F5DBE8FD6E70B9F460E86D80938CE78E05715054437AA73F5F9917811FDF9421AE0AA8CA058E5D28D59CF545B1518D58D6184DA2017621497728E27C6508350DD044F27D0E86BDDA8DF';
    i(34) := '6B233E6DF07ECD73CC82F4893CA13C8BFD0CAF7E628AA5FEAA7E8E0D0149384A39B7FEDF2BF53F535280CD244EF94CAB7AECF8FF9756C35DA906B1278D2BF93C9206EE6A50973911C92CE77F8F2C0358495FC68DD198438956EAEAE3781BE4CF9E3BC9BB';
    i(35) := 'D63AF76B451FF74189597C295EDBFEDFFDC07D52D0449E3902B06988A12F1C44212BDC341FFC5C42D6CBB448C371B1C991E1C1F5B95E59E509D3F27BF9ECC4BA87634B88CC10F7A406EF7F6A94F5E1FE83C7B1F563DB40EABE5FCBF8EDFAD6CF537BE4E7';
    i(36) := 'EA793C9363BF64BB58CA395C091180E13071ECF53DB47E3E1651481AECB1954A1C3A34A2C4301FC24A6988D729694B906264A6A19C49CAB16718E7D4BAC775FA3D424B441E0C467B56759CCBF512B61BB8DF40BCAE6DFCBADF614744A0D6215D434CF4C6';
    i(37) := '38CF53440701D834A481A4858E97059E676479FF2B89266C8F786D4501A183178953BC681107A6F7D791882562B7291D6AEB84ADB6989D597D1CB7C6F71775DFAF913A984C457C0249091E86756B5AE6BBC8A9BBD8979D8D861801EC595E6C95D2499486';
    i(38) := '2D1AB74678FD4B7A91926BBA78A46999910431065B78022B2288531AF23ADE716219C03CC560CE744AE0D08937AD30727264DDDFB925704BA30E0E1B683787BE79FFA10AC081E5A9760C1198E4788FB1151ECE33FA088A84C3A6CA8294718618155D77BB';
    i(39) := '62D41459C6B748EB5BD1BDFF0EF75275018E69802B111BD7FA71257214DC3B046073C3FFCF3CA7847266639A65A402DB29DEC636862A39F6450D0D7529466896E5AB1AABCE36A80F6B9CEBA2C273DBB3EAF6AA8EB91705DCE5A44E44001B4A6419FF4A0C';
    i(40) := 'E7DC78A8A38C5420B43C901D6A6B766BC8355DD8B2BC6F5A79EA1CA6DAAAD100AAFCAF4BC453075F653C6353FC5725868C11809EB19BD3884CCF94D6639E9A3F4B63F8C5E84AF6B4576D4CA1838185459B5F6ACFAA8EF77A4D4441B9EB9A175FF57EB7AD';
    i(41) := '3A6FCA038F33A2BCACCFCDBA9CC9302902D063C6599E2825A78F4A9CF7DA881E4ED2C2F30CE36DA227D91C859815946557CA13D568E47951571DF75BC9FB3A0EF3460E02709771EE8799A0439B20343401488C236BE6DF22EDA13B8C2D5F1921A33D7D74';
    i(42) := '659C270AEA9940926948D6CE3763AB517F34CA620F6BC625AE173A1A5D5DC610AE2B0045826E3DE365925655108E3102D0338CA5BFBAF17C137C3E47DC85595E63123139CB31C8A421DD34E055D3461FA679E941CA7A86654168FE212F24CFA1AEE1B83A';
    i(43) := '3AFCB64BD4A9E908460E6531CF3D4700FAC7893CE04B69F84719396F94221CF7414A879AEDDDA423F1CA6E2C925F3FEC3910ACB102D1F254E39CBE8DBC69AD2722843F5BE7289A946337EAC2BE0EA99FA881FBCD3AE7A8E01C45D1C861461A952B465624';
    i(44) := '35B809424311007BD5991604DDF97599784F5958633788FB9C90EEA420FF4EAE5B777E9D76DD494A9A324FF156518A014D8B3AD552D64F247BEA8F72F2EDCBA6EED79EAB21629357C79394CFB6AC086A6CA4877946FC32A77CD7034B9907B31C38CE1085';
    i(45) := '89184F9168ACC4A31E1A06A4A3831B09FD57F2F9CCFA9FD86858BA51DD8AB71E972CEFA12C579D6434E68725BA7A29AE186A147C5A9A6C86B591717EFDF359895EF9E3E0D38B3E03F17A63E39A89B81E04253757A970BFB364D9B088C12C45242EA5CC93';
    i(46) := '0CD1DC93B2DB627556D0FFA1DBCBAD947962F4F924FB0D0E8A41BC1D58BC6395105C3F643D3CF830F124631D7B16A99B7348081E19DE6627A3BCEF0BCEBF2F0DDB25BA285CA3EF588F930A9E7D65D4D73AF71B07EB77A0169D23759DBFF5CC329F87EB66';
    i(47) := '28A4002D235E6E27281E864A3CBDFE5BBDB454EFF6736E4C185A8A5729EA949AAE33562DE53D2F387FB2DAAFC8835FD561FC52AE2B119E95A3B1BD72A873A7FB0D9E2E1B7E729F41FE24A36990DFF9BBC8D9E4A3E8994F8768FC9A5F0FE546FEFD8FBFFF';
    i(48) := '531DDFFDE6B7BF4B7AB47F9FE2E9FFA01EE45FD5DFC5EAF84FC67996EA1C7F16AFA6BDC9978678FC493C41664394EBEFC9FFCDD5F9BECFB8CEF7EA6F9F8987FFD2C8EB7519FF92DC93FA1B9D77FE57CA32B2FA00FEA8FEF6A2E67AFC9BBAE677EADB7FA9';
    i(49) := 'E36B394C01D565FB561B9394AF96FBD5CF43EEF56BABDE97729FDFAADFDF4A5D98E75824062AE5B993DF7F6D3EFBBC1D7EE4FF92676ECF2519ACF10300000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(50) := '00000000402BFC5F80010084D5786A4A2EC04F0000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'soho_chair.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 7;

  -- Danish Architects (8)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000008A14944415478DAECDD8175DA461C0760919701D8A06482D0094C27';
    i(2) := '089DC0F6046D26883D81DB096C4F106702E3098A27289EA0EE041495D3CBA148208184057CDF7B7A716C40F0F7DDEFEE24819304000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(3) := '000000000000000000000000000000000000000000007ED05382E3364F9251F832FBF72CFE7F4F1B10001C6F07AFD000B40101C0B1767001800038E10E2E0058E7BD121C77078FCCA2ED25FA1A33008EB883CF7A3A3A02E0E03B78990F3A3802E0783BB8';
    i(4) := '353C02E0543BB80040009C700717009C74009C7A0717001C7500E8E00280230E001D5C0070C401A0830B008E3800747001C011B71F1D5C0070DA01305706018000400020004ACD92E2379B3C2AA300E0F003A0AC83AF7D3799198400E0B00360B0CBBBC9';
    i(5) := '048000E0A0DBCF6E0480004000200010000800040002000180004000200038D500D8D440DF2A400EADE394D549002000040008000100024000800010002000040008000100024000800038AA5FA000400008001000020004800000012000400008001000';
    i(6) := '020004800080BD05C0A9769C5D83B1EAE309000480000001200040000800100002000480000001200040000800D867009CEA078208000EC13B2500010008004000000200100080000004002000000100080040000002001000800000BAAAE70F739C7803';
    i(7) := 'F0790202401904000200018000400000000000000000000000000000D029DE09169927497FF1CF70B18D16DB64B14D17057A5599FAB5EB2DEB4771AD86A15649A8D56C0FFB1C857DCE42BB9EADFC307D5B70C1F6F762BBDA728757D9E3D4BC5FB6EFAFF9';
    i(8) := '1710FDECB1C2E33CD6D9FFE246178BED9F821A5C6C2A6C74DBABAA3F6BF017BB6D9D1F0B5E6BFAFA6F4267AEF35837458F55F57987C659E96775EA5FD2AED66DA32DEF7F55B5E3873E95BFFFEF357E47B5F6BD669FB7E9CF377D26E060B17DC96E5CD359';
    i(9) := '2EF1EA1AD76D883B74A271B27C8DFD921A74D9AE758EA5AF3F6D8C5F6BD4EE36296EC0FD84FCA8FF58D29EFA2DED73B0669FFF7FEF7DC10FEE16DBB7C5F629F93EFAA5A3E3536FF9B3AAE2C69826EB749B1048EAED735B37D1D70F8BEDCFF0F5A703685B';
    i(10) := '4DD4F997D0206E42634C47D5716F598B4DC17991ABDD7D476B771D7D7D1E758AF8FB55A6E2697D3FE7BE57E57EF100F31AF63B0DBFBFB265665ACBA728E847511F7DC996106BF6F925DAE734ECF335ECF36CE3342A9D9AC4CB813AC95334DDA8B9045859';
    i(11) := '06B4B504C83DD7BFEBB6AAB75C02EC58E71FEA139641D963DDD45C46DCD67CEE7B5D02ECB23CCCB5CBC71DDBC83FDBCCD4EAD424BA4F3CF52F9CC9BEDB7084F08F28DD06359EF8284ABAFC28D5B565C02037821D92A6EA5CF4FA8715A6977143FC6CA25F';
    i(12) := 'EA3C9E61F7B69BA5EDD2B6A765071ADFD56C14E38A3BFE98BBEF70878E3CD67EF652E7A4E6198F382026CE9654AED5B72E3DB12A01F01C7DFD53CD91E9B9EA88526052909E6D981D70D83451E7261AF5933E5EAD567B3E3D3A8B0686C1B601302B992E57';
    i(13) := '79C1D3E8FEA39A4F3E9B268DE62D1E890F53A378997375800D6B973AC7D3FA6141FD37CD3EF26D84F29AEEBB4E71D8141EA379DFC20B1EE55EF02C04C7C79A0FF56F6E646E3339D3F56B76C0313DED39EB6D77F6E17C1E1F5D6DF1F8458375CE1E2F7DAE';
    i(14) := '5F6A4C55FB0D36ECF43A82D72D069A43D07FC300B80E7D273BB373BB68D797AD06406EBA339B2F4792D19623D324DCEF3C3D20D9D61F30484F77CD97C5CA3AC0ED7CF9FDBA2130D863E36DACCEE1C8767CBF873D4F558707D4A147F9B3075DFDDB0AA15D';
    i(15) := 'FC9A7C3F737111DAF5659B0170969B7E64E72BFBE954BEE6658FDF42C31CB67D36A0B73CCD921EE3B88842E0B557EFCCC024B71E8E1FAFCB758E3BFF756FFFCBA0BBE8F967AF6D94D044BB9ECC971DFE360A81B45D7F6E7B06302D584B0E6B4E83D2CE77';
    i(16) := '132D03DA2ED66588F63804A6353AD3536FF53A8A518B01D0749DC75167DCB7FB78C6118EC3743500D2BADE1F5808DCCD578F03FC1E2EEC7B68F4CF83CF57A7C02F5902158C5A95A73051C33EDBC71A2A4C8F1EA2F5DB6DD77EA14DD739B7DEBF48581B00';
    i(17) := '69C8C7DBA18440B27AAD463AB8F5DF35BC9FB2A3C8B31DD67AF7D10C605F07512EA37DB57A16A20B750E8D233B0857F5B4EBB11EB46B5A67EA142EEC8B07B7719500181434B04A0773C22590A3A808DB4CEBE2273CD853A15E931A57C5BD7100345DE7C1';
    i(18) := 'BCDA72EB5900546A4BD38ED5295EBE7CAC1200F169A5970DB78DA79E8FD1368C1A6BDDD1295E06ECF31D664F1D0E80C6EB9C7C7F0354AACA1B7966356F7FD2CB86E8F7F2D6179BC54BC56195001897DCB9489591679BD1E9FE0D02E02D2FE048F65DE7DE';
    i(19) := 'EAC5441715CEBAAC34A4B9A3F6556BF55B87668FB3B501108EC60EA2831F9335B78D1F383D95D4CBB6C5FF3F94CC28D6F9A9607ADA8A92D1F253C93AFB4DB550E7B259C0B8C2CC2C6E0F37739F015065DA3D9AEFE9406B78B7687F4DBB7E2E3A0D7816DE';
    i(20) := '0A3ACAA5C5758D1167926F2CE14AAF7E8DE9F42077FF698B53F17178EB711A34FF86220DA3E09B76A831355DE7FC71809B68A4BADB70FBEBE8F9A4FB4BDF7E7A97D570F17C7E3EC2CE5C74B9F8DA8F400BE7E22751ADD223F0E76199990E74CFE1005DE3';
    i(21) := 'CF75B17D9D2F7FAF2F61508883FDE17D4903CB4FE7EE2A5C15F771C388995DA9F6FF453D5BBC7BECBEE5B5785AACA24FB6B9EC58036CADCE2140B26B02869B2E280A0DFB8FA86EFD921A1E550024AB974C575D1EA7EDE8AF68191BF7B3EB169F6FBABFA2';
    i(22) := '19473A7B5CBB04988411E0975EB54E308A46CCA246B7EB41B5369701938275FE2CBCF649C71A60DB75FE5667BD1AAE28BB2CA91FAB4BA69F4B66556DD56A56104C699BF99C5DBFE053817F5C5FA789F9DAB169BFFA1D579DE2255AEB9F3C1D5F38E6D39A';
    i(23) := '01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004ED17F020C0049E2D5C2B92B85740000000049454E44AE';
    i(24) := '426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'danish_architects.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 8;

  -- Colorado Outfitters (9)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000018C14944415478DAEC9D3177E3B876C761ED16DBAD5E97E366E92EDD';
    i(2) := 'C8679AED46EED2ADDC2595A526EDD89F60AC2E9DEC2EE735D6549B54D6542FA9CCE9D2F858F3098653B97CDA2E5DC26B5FCED2340102204080D4FF778E8E676C8A2001DC8B7B2F800B210000000000000000000000000000000000000000000000000000';
    i(3) := '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006CEDB7F7D7B9B7F56A889FDE60754C15E0AFF2CFF71997F7E3D';
    i(4) := '7C7BF8EDF1FE718B5AD94F0E50057B27FCE3FCC7D7FC332EFDFAE4FEAFF7296A67FF18A10AF68E9B8AF013E40E4C5035B000C0B047FF69FEE34EF2E75DFE39CA2D811D6A0A160018A6E97FA3B884FE7EC7D701280030303EE49FA4E11A72036E5155FB03';
    i(5) := '6601F6C7F4FF77CDCB93C3B787C9E3FDE327D41C14001886E9FF37F13AF0A7B404722570902B811435081700F49B730DD3BFD665C895C71CD5376C300B30ECD19F7CFA8796B7C11A015800A0A7DC38B807D6084001801E8EFE97E239AADF164C0FC20500';
    i(6) := '7B68FA57D9B23B808542B00040E4F8D8E58735025000A007A33F45FDA79E6E3FCDEF7F835A1E0E5807302CE14FF21FBFE79F9F3C16833502B00040A4D4EDF4F301D6084001803D32FD6B950D2F31063D06B300C331FD1F3A1AFDCBD08C00CD0C20A3102C';
    i(7) := '0010905500E117026B04A00040F0D19FF2FBCD023E02940014000824FC4D493EBA026B04A0004000BA8AFAEB8035023D04EB00FA6DFA5F46F658B446E08FC7FBC7FF410B410100BFA6FF6D44A37F997FC259037001805F74F2FB05754DB085B81F601D40';
    i(8) := 'FF46FFA990A7F68E09AC118002001E4CFF87C847FF3259FE39C61662B800603F4CFF2AF4AC58230005001C8CFEE4539FF7F0D1E9B9313D0805005AD267219A618D409C601AB01FA3FF65FEE39F7BFE1A58230005002C4DFFDF07F23A5823001700EC91E9';
    i(9) := '5FFB3E5823000500F4467F0AFA0D5158EEA004E200EB00C298F4D3FCB3B9FFEB7DA6B82E1161927C7405BD3BD6084001EC95F093307F2D09F526FF7CCA85605D73ED9DE836C5570870D6005C80BDE2AE32A2CFD827FE7BFE591566B183FC7E57F9E72FFC';
    i(10) := '3366B0460016C0DE8CFE94B64B67210F8D8A89A5E94F23E945D9A2E0BD033722EE1584EBFC9917E825DD8369C06E847F9EFFF837CDCBFF41D8E5F527C5719A0BD27F957FF978FF981DBE3DFCC8F7FC35564B006B0460010C55F82735A6BF6B2896B068F2';
    i(11) := 'A55BEE245CE69F779EE3128BBA7808400CA0AFC2DF45E20E32F94F750269F93569FE23B52C27CDBF7F42E5B1ABE103AC1180021814B71E7DEF62BFBD69A02FB32C2F632542E51DB750244D608D0014C02046FF9547739984EF88477453BED814585EB340';
    i(12) := 'FF2E5903AE19B325802DC45000BD15FEB9F0B775F78A84AFC5DCB9CD3AFC54A2140A6BC0F5DAFE89401E0128809E0A3F75DE9527939F7CFD56A3AEA5D5B053DC6F9B7F48092C3D2881157A1414409F84DF57D0AF5831B771783FA76E43FE6C971EAC8139';
    i(13) := 'F2084001085E25D7878EE023E8B716EE936B9ADE2BD3B42E0A6BE0CAB112984354F75401F0DCF5397784F3889F9346C0A9E3DBD214DFC2C35AF92F3E14404911909B7222EC671CAADC4009ECA102A839FB6E156347E0537A3E38BC2509CEB1C5149F170B';
    i(14) := 'C0266EC0DF71690DAC303DB87F16405D16DCA84603EE942EDD939485DF5BD61C4381DEB5286757B206DA5A31C529C45002FBA0004AA6BFCC249C45F08C8585E22AE8B76C39C5E7C30A68AD8858E1B8D8EC833502FBA000348FBD8E61D9283DA38B6728A6';
    i(15) := 'F82E3B7C765DC176E2C7F30C860B77006B04F6C002D0390023A849C841BF9923413C7638C5A78B6E20F09B43D7E342B89926C41A81A12A00C303308228018741BFB5789EE2CB025475672E400517F100026B04066A019836EAD3E29BAE4C428741BFCCD3';
    i(16) := '149F895FDE990B502AF7C9DD7174BBD66B044899C7104F8202F8D3ACB619CD1353BF901B7E6CF87C2E837E49041D6FAB21B0CE672358F9B85A3A6C352B446D997F68E1D62D0F20E75000E14DFF3666B57670883BCCAD300F26AD84DB34DD6781AB3D6BF9';
    i(17) := 'F7364A8094BDABB887D11A019E61A2E4ACB3CA3D6EA000FA63FA4B958081094FFFFEAAD3797884983B7EE719A7FF0EC597500A8059382A432B16C4A3FE4AC83334914BF1B04F330C51288016A67FAD129069F2527AAEBACE336B18317C459DE701ABBE29';
    i(18) := '0EE0F5082FC7F100E51A8152DB3799FA74DDC3BE2C381A4520FC6D4D7F21D1E43735FEBB6CA75E11489CD73C5FC2DFF3454837A049C0BFF97E008E31B8CA085CEB06B2F5F66030C8244D830214405CA6BF52097087B813CD6B0B6ECA8AA3E5F65EDD8E1D';
    i(19) := '2C18C8237016CA02283DC75A3C4F89BA5202AB4279F3012B36D65B31289C4301F81BFD7D9F7D57EC20BC352887BE534C2BB609FA15F9F9757CDC58AD80ACC3E770B548E87B1BF2A83F6D79AF4107070F020A7F22E23EFB6ED7E2D9BE1F74C16E854E073A';
    i(20) := '0AB12088E32F1F2423F341C7CFD2450AF5368A7270C79885B4006E44DC075F8E5B288E8B8A79AB23D8F340EFF94B48F3DF633CC035830C0E0651000ECEBE8B998B9A514267D1CB5980762025378BC0FC2F2B01579B867C4056EBA08283A3009D2E11EEA3';
    i(21) := 'FEB190D69D6CA36905840806CE1496CE75A84A74B869C897653898E060080B2076D3BFD5E8AFF85B8C56C07B450C230D5C97AE360DF96210C1C14E15C0C04DFFA56ADDBCA61530EBB02D12219FE15886AE4CC78B847CD1FB9583A38E3BDC504DFF4CD36F';
    i(22) := '5D46F4CCAAD13F8BE1011D6F1AF245AF83835D5A008336FD350FE7D4B1023A1BBD7AA0A48A4D43DBC8DB9F06B75E06073B51005C314335FD3786D97C820B18B7C758E2C66431552E9BD77D185D7B191C1C75D480435D49F562CE5F73448BC10A3893BC4B';
    i(23) := '8CD36FF39EF509ADE020B90CBC3371F016C0904DFF6BCB11339815C0B19899E45D628CBABFEF61BF5006077977E9D3CEC4D016C3C873679B890E23DB1DB3B5CDE21BD80A98F565F4674149BA72E51C2BE6DAE0202F0D2F2F770E7AD8CD8F30FDBF37FE17';
    i(24) := '8BEFB46119A87EDE4B7CFF1847FFAED645D0BB3FE567CCFBED46B84BF74ECA8B828374EF0DBB067389DBB0F579188C8C038F0AE0B627A3FFB2E37CFCE53AFA5A1DE17C6EC029999E652839E95184A33F0D207FEFA8B893EAC22736CD3F38745FE9FED306';
    i(25) := '2574D4B5221E796ABCBE98FE8B50C21F28167016533CA2C98F3669C716E55CD5AD7AE473198F85BBBC85D386BF1799A9C6BD56001D9BFE9B16BEF4A26EDD7E9774190B906CFCC942D78103F37FCDEF905A94B1E57D07B2F6A1FAA1D588A71DB553E7079E';
    i(26) := 'F8B0005C9A4D4D7C612D6DD2F8C5315CB174FCAE46E0BAB9FF28477F0E9C4D3485BF18FD3FDBF8FD9A8A7A23DC9E74ACB47C384743FF1440C3819EBE46513A81F644B333EFD8DFDBC4D2D93BB402AAC1BF34E2D15F67EA6F5B127E6161012C4D826EA593';
    i(27) := '8E4911F80ED67DE86A6660E450F85D99FEA9CDC8C4BEFCA990EF202B843FC665A55E4762C9881AEBE8AFCA51F05DF8C5F36EC172FB9B28800DFBF8360A9B140F29810BE177B7622787DFBAB400740EF46C12FC131ECD7547E83712536D5BD3618E2315FE';
    i(28) := '2EAC80B39AD13F1571326B70210B45BE93F4211D2E1CB49949907067A970EF7C9F1BE14401B434FDA9E35340EEFB548C81A08E6B1A26630DBD2E8F16B1AD71EFD80A98F761F4D730FF55C2AF8BB3DD8E9520A1EA994ED842359DADF07EEEE5C881F0DB9A';
    i(29) := 'FE3BF6C38E24BE68DAB27116DC30BD48E4E8CB0A605F725C317FA31CFD35827F2E5CB86B0F6D475600ADA5A8732B16C533731B9B2A015787D17AB3006C4C7F1A818E1AE6E0B72E1AA667595C7D8CCCBFB9367F038DFE0B07C29FFA72034B41C29352DF7D';
    i(30) := '35D5CCFF3F368C1FCC7C651F6AA5002C4CFF7521F81A82F945EC199EA2F2631FE6AF87D15F15FC73B56663D9411BA6EC829EC89E99959069CAB3B98F9981B61680AE562A82700B830EA8A3A91301A21280164C447DF06FED48F8B32E5D9FA6B22C95C00D';
    i(31) := '0FBAE115002F56483405D9D877D3BC1E0A409FAB1E0442EB84DFD53901D129BF92123069975B97D383234BE1D73DD0732DDA05E152C8AD137622FEDC7AAF060E87C2BF8B75D1132B0193C545CA5390BBB200744CFF359BFC6D82705BC8AE13AE7B160C7D';
    i(32) := 'B5D0A7EDFBC7FCB2DC362706FDBDEE98FB6E14009BFE4D26C89523EDFD05B2EB64F4BFEAC1734E4BCFEB7AEA36FAF7B751022E66064686C2AF63FA2F543BAC5C5B007DCEC9DE11CB1E8DFE3E847FDD97F72F29015D7765DE36A598A90570A321FC6B8715';
    i(33) := 'A2A30D2790F1D675180B3EF66A2C7BD65E3BB69E75E568D5261DB9B6026830FD0BCDBDF6502729C4782F14D5A507E1DFF470E6A3A80F132560BD71E8474DE14F14A6BFEF5D769F34CC4600EA5CC6EB3EBF0C29815CF69E4CFD864B8B6C42C629C50E3415';
    i(34) := '00451CA7357F22ED7ADA333313805EC12B0075027EC59A1B6D2530D2285C76A067D45B6C0118907B44AE80CEAC9A714AB11F344CFFDFF3CF4F6D350D00C09EC7FBC7EDE1DBC36FA23959CA24BFEE20BF3E756101D49DEAB386F00310CC1268CA3D4068A7';
    i(35) := '143B6830FDABE684CBB5D90000BB9840B112B0690D4CA38B7EA030FD1FC4EBADA4107E00FAA30476AC04325317A06AFA2F20FC0044E50EE86C276E4C2936AAD12CE43B4C2BC2BF46950310A51268DA49A84C29F64345F84953FC4D3C47FD49B3FC4B5EC8';
    i(36) := '7FA0AA018893C7FBC7DDE1DBC3FFCCFFF9AB90E7C7F8C7FC9A717EED7F2B15407ED1EFAC318AD57D29AA1880E895C0FFE69F8FB9FCFEC18AE0A79ACB7EA569449A4E2CFFF2A034FAD3FCE2AD88FB000D0080020E0EAA8E377F31B01F944C7F3AAA3A1398';
    i(37) := 'E30760088AE052D4EFDF7931C01741C01B083F00C38153EED705085FA4141B95F61243F80118961228CE31ACE64498B0BB2F0E7205B07298C1C7C44499F183BC112FD71C902542A9C05AEFE52EE59A4FF2CFBBCA9F49337E332D87EF39915478EAA19E9C';
    i(38) := 'BF03DF776AF1385B5783042F364B5C96C5FEAF4986A8CC75BE80867E5DB4D53680BCD1334DF9B9A65CF7EB83000F72CEBE894E4391402D2C3AF798CB986B9643473B5DE894C38273275100078E05DFCB3BF0FDFFCFF2D1322EEBBA8DF0E4E5DF0AF5C696';
    i(39) := '65C3C95175F7946D5BD7A9BBEB360A9CFBF57BA19F2AFF22E42C5B31908D3A2E94620D2B032D4D8DF96092ED845F8C3AC2B9413933D3723A689C58DF21E1E77A6879524D93A0BEEBB0CAA9EE28A1C69D4D8EC952BF4E34BF32E1F2E6A1FA18A71E4B471D';
    i(40) := '0BBFCD0B17D94E1203C199B428671289F0C7FE0E45306966F18E3AA6FA3440C2D729D7DFB8837E2DB8FEE621FBDBA8A34E3D6B5149DF3B9BC6751F44BB24A1B6271DBBA46FEFB0B2143497D7B9443BA986837EFD547F3A835BAF158050E713241FFF80FD';
    i(41) := 'E753215FD73C5555146BED7385CF755A2AE798FDBEDA0ED026CBAA83D13FF43BACC573D4B8F8AC85FAE8AAC4A2ACDF34AF73E506A486EF34D7144A65BFCE3F7FE1B63A12F2ECC463A13E15D92B3F76D0A95567BE9F960321749C777E3D75F4AFB286C93F';
    i(42) := '978ABFC91AE3B41CB0E228EC695ED683E4D9CE14C2E59318DEE1633538C58A69A578BE8961595389829B78B2003ED705141BCCF70F429186ABA15FD3A0B629B515B5DB65FE9D9F250A9E9E21C8B1ED5D5800B2D1A1F6B456AEAC8DC588201B555447622F';
    i(43) := '0D9FD93751BE4329577DD676A4564C3F2E25968CB73800BF536A597FB2BF6FCBC2AFD95663D7A7FEC6A400649D433562D81C0926ABC0CF0DA6A16947F549ECEF907A52729942687C2BE36B85504E2CFA75AA52A42A1777A80A20B110F2D4A4921AFC35DB';
    i(44) := '06E93430D39377F8E649C96D2B3F7DC40164F5B7B1E8BBAABF7DB654A2BFEC9B02C83A284368AC26DBC5A0007AFE0E5A6DA95845F959A100BA181953456CC3B4BD9ADAEA8F48FADB133F8A38C9849B33DD76AE3A6F40627A87372D5D3699306F4B8A605E';
    i(45) := '150CB28E7A74C4D7AE4FFDCDAB0250F950AA659045D4D4A0A84943C7B2316BDF74DC1651BF03B7A5CC1FD79D0178D7D017B68A3880CF23BE3F4B94D31B8B7EBDB554004116A0F97601BA5AC935EEF1B347FF0E1C4CBC9599CF06A3F34CA5E014C2F34E84';
    i(46) := '613CE0FE16B50B00C2412BD376959169AC3077B5B2452B76FFA535FF9F068803EC25235401A83145A7A58F4CF849508F0D46FFA966FCA02E8A3E8E65A3161400D87768D4A700EDA961604E66C66F1BFE0F2B000A00444491A7E02BE79DD3A5CEFFDFD5F8';
    i(47) := 'FD3205F01BAA1E0A00F867CBE67DF1D9AA14818E12506CFF7D756FB62A325800DD802020A87251B3192811CFB300757E38ED646B520232E1FDAC5042498D2299769C45670705D08ECCF68B8A945575079664313D7B44E539B9278DCA797BD06EB5BA5468';
    i(48) := '630DC194F9FF67F977EBFE9628DC001F0A40B60CF74BDFDA2A2A17401524721CD595953369D1F8DF22510051BC030BF8CE70846FFA7B225ECE38149FC4B21C5B920EFB75B2370AA001DB850F3BC76524226E627A07E36CB6BC88C8D522175FDB83C7AEDE';
    i(49) := '57E35DA3EA6FA3809D2669E83432EDBB3569288D0EE3B2F1BD08570FDEE18DC5E86F8BD3FBA9D2BC378CCA5B4B05F07324FDAD33059059749AC464F4E7DD723B4B13DAA6F17DB84B7D7E87B185FF6F8BEBFBC9F637EC1AD6F5678EDBEA5B0805D0C52CC0';
    i(50) := '6749254F2D1A59D520A9A41C69E04891CB6E17E870D421BC43757495B5F3BAA1D3BF91D405FDCE65FAACF78AB6B0E9D7D4569716F5910E5501D04EB195C49F9B4AA69CE6927B7D5294F349D22094E0517688C507C533DB747813F3B4EEE49BE0EFD095B9';
    i(51) := 'CEE9B8547529DB7DE8647B30F7B3956244FED4A25FCF248946646D958552D6DE5D006E289976BB2D8F60A523CA8545A7DE484CE8714D39133E9946D6F81F2D5FF7CEE03389F41D9A463D17E6FA56A3DF6C1DC601CEF8D08FE2438954BF0A75BECA758B7E';
    i(52) := 'FD94EFBF88DD90B2E10553E71DB655341600B194345AD1B175EEA14A8CF9E443D32829D1B2138372D25047360DE11D340555F7D952C93DDEB10BA14B22CCA2EF0B07FDFA861541D33D48E15F856AA051471D3B6DF992998EDFC7A99FDB98523B83C6F755';
    i(53) := '57BD7F8792BF2BB34E743308A91284F862A1AB3C1DF4EBA2BCDDA0150057D6856565150762E856D28965408594CC4924A9A7627D0793DC83B38691BD8DCBE1637B70C6FD6CDD51BF2E0EC5091AABE974211057D689D00B50656C629D9804483887FD098F';
    i(54) := '825B83728E4347CD7BF00EB2764BF8900D1DFF7F67A0A05CC60164F75FB3201ED90AA361BFDE7199C7A6CAC60707A10A2E9988D59D62D439B6AE3A722913CDB4A6F1B358847EE8EFB02F34F4EB2C92D80C00000000000000000000000000000000000000';
    i(55) := '000060481CA00AEAA1ED9CE239B903ADE6A2E59B9F644B378B1C06BC914776BF69FE2329EED190F7A0CCF79D7D7C8FA9CEB57C3D3DCFF75D94FC4E495381C57B689457502E43E73B2F76762ACE16A07ADF3424E12C0E2A29F606D0AAC8EB1E1D271E149C';
    i(56) := '0B50DFA1EE5850686D37ED5CA3ACBB746826658F39A9D998947027BC54DC9A84A2BC8D752C5EAF979F72072EDF3FABFCFDBD90AF91AF767A7AA6B4F4FB37E2E50EBD849F4395B7B1FC8CC532D7B472DDC6E019ABD717CF597DEFA27CAAF7459DF2E50D41';
    i(57) := '77FCBD624F3D29ED73D9770014401345EEFBA3B2A097F2E2D3E7B86D21BC7EFFA4D2A1E92C848B86F5E25BDE286453E645A53C5258EF64F763015A57AC983B8DF26D9EB1F6BDF33229EB0EEDABAF3B867CC556CF69E97797FC5EB2EF8012381AECB54024';
    i(58) := '75A33CFF9F3A756278261E68A7282F78849FD5B85DA4902E242E4C26E4F9FE0014402D67F96729CB3DC0BF5FF275A03BB6E275E6E184DB2453B81938521C0A407BF49F94FC7ED1E0BF2638AF3E38BB9225506B39D8BA4A5000FB09097463B20AFEFB0EA3';
    i(59) := '4B678AB930F5379576D8B2997F2B5302A01904015F9A94BA89356A4FAFEDEA392531882CA2A8B72A4EA2FD9CA553893792A42714FCA3A0ECD7FCDAE258F38F489002053064EAA60F899F7BF08CAAE7BC9364D05DCBCE102041CFBF73249E038434FD3717';
    i(60) := 'CF538064195C84CEB70705007CB0ED816F6B350D5863813DA5D7CE05FA9B6C91150766D7FC29CE9678CFAEC152B5380B400154CDFA0F9AD7924F7A8D2A73AE34D21A3760C76E809620F3A8BF6117E47DFEF32A64DAEDD84110F0A502683CDFBDF477F899';
    i(61) := '1DC04A615C3D768D4FF85129852BF1E7CA450005D0D8D13216EAA639FE331EADB24A276D3A1B907CE2CFA8692BD29ADFD1A8FE8BA23D31EA430118438B7CCE655600FFFE9CAFABEBA46792EF25EC36A4A862673C9DCE5B9CBF5753E773586A5000A65600';
    i(62) := 'F98F6BF11C91AE9A9CF47F9A725A4BA2CBA414E840C8F31AE1271F36454EF8562495FFAFF9E75D751D00B7D58ADB0A96800204015F2B8105079EEE783A29137F1E2E7955DD5053760368079A78DEBD56EC6E2BEF9E3BDDA36A9CF2C626192786CA90DAE0';
    i(63) := '4DD5C4CFCBA099063A91A85807B02BB51529E90BF46828001B2570C1A7F4CE5888E9ACF88DC62AC175FEBD0D7FAF189516060B534E1A4CD6B5D03B7ECAD7FD5EED6094DC33D5B88FC9732EC5EBBD00C56AC0E34A0E824F6C6DC1F4070000000000000000';
    i(64) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(65) := '0000000000F682FF176000FBDED5ECA5F17C730000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'colorado_outfitters.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 9;

  -- Telex Communications (10)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000EB24944415478DAECDD4D969BC61E86F17F72EEFCEAAEC06405262B';
    i(2) := '305E81E54932343DCAD0EA15985E81EC61466A0F9389E41548BD02B557206505EA1DF4A5D2C5314D0355400185F4FCCEE174224B0215552FC557210200000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(3) := '00000000000000000000000000949F2802B8F2D71F7FC7E99F209D1ED2E9F6F73F7F7BA05408005C46E3DFA77FC2DC4BF7E9F49610F0DBCF14011C6DF9C3C2CBEAFF3F513A0400CE5F50F17A48D110000008000004000002000001008000004000002000';
    i(4) := '00100000080000040000020000010080000040000020000034F31F8AE03CFCF5C7DFB3F4CF329DE6E9744CA76FBFFFF95BD2E0F381FE7CA43F7F937E7E33E0F2ABF97ED2F3DFE8F9DFB366E901C0CE369DE2745241F0EF705C69A34A1A84C7568747F6F9';
    i(5) := '75FAFA7CA0C61FEAF947FA2535DFAD0E251000B0684065C36F7DB0FC0AF5D9B2C6F671A09F501634331D6820006030AB78DD760B1A8DBCFC6F5885040000020000010080000040000020000010000008000004000002000001008000982A75638FBEB907';
    i(6) := 'CDCB2ED0B715C312E30178D4F0D33F6BD137F0A4FFAFEE85BFE29E78EBF25363192CF47F3FA47FAED3B2BBA564E8014CC54A9EDFBDA7026149B15835FE45D6F8357577E48AF1040880C9745DA5FC7E7EBAB376DE55BC1E533404C014B0A5020100800000';
    i(7) := '400000200000100000080000040000020000010080000040000020000010000008000004000002000001001000F0C103450002E042E9917FCB42E048E958A92A274654260026E3DAF23594975331046ED360DD503404C0547A01B7E99F5FD2E9464FBF50';
    i(8) := '81ADCB4EF59E7ED541A0CAEE7DFADA152563C68341FCAAC86A2B965012AD43E03325410F0000010080000040000020000010000008008000004677A4080800B457752FC154AE24BC23180800B4A4AF82BB2E84800A85AB892CFF6DFAE7B6F0F267FD3A08';
    i(9) := '00583622752FC15B35A5FFFFAB0E86A92CFF556EF9D57D10DC083500EE0538BF9EC06EC2CB7FA4DB4F0F000001008000004000002000001000000800000400BCC5F30E08005C80DB8AD7BF523404008611A6D3299D1EF5B44FA7688819EB2BF8DECB8FAB';
    i(10) := 'F8D496FF8661CDFDE7FBA5C0B3748AF55F55B936742B2BAD7539E503612B4FD7D71F0708818D4CE7EE434C2400B6BA226796F274B3088F7C7AB9F50F2AFE2D10AEAFC7047701E242E3CF7A044B565B694F0938AB0078CDEA012E370042560F70B90180E1';
    i(11) := '704C8500C005DB49F981C22F140D018033A7471252E7F1B3D3782A0CAE398F8F31A953808F25D396A27921AA28AB4719E86220D00300400000200000100000080000040000020080177834587BEA0EBC489EEE5978252F6FC75517D77C97A78B6A76C22D';
    i(12) := 'B9A2CB28D4D36B797917A32AA37FE4E9D2E47BCAECFC2DE469E41A356D0B537E749BFC742A796FF173EAFBE63D35FA6C991F1B4E0779BA95B98F9B9C22F1F742A0C04199053D2C573660CAA0A327E93AB4D2BF6DAFCBE622252D2A44D32970D8C0560E97';
    i(13) := '6BEBB8C2F918006ABE6B8765B676189EB38A0D4C3C40B96C85AB5BFF751A2000568ED2BAAFE55B8B9BC13C7C0A8040AA2FE376312D1D94D962A4F25AD6CCF7E23C0E306D3B36AAC300CB7872B0BBE24B00CC070AF643C7DE4062581F7D8CB0141B7E133D';
    i(14) := '809EB6B07DACAC3EA678E201B09C5099C53DD59BBAE30D2743A05D9CBE1BD9A9E55662354245EEBACB3276008C59666D43C0747C22E9F978437E9A8FD508C73C0D782B4FA77A3EEA42FA5EF8F70F1507F18E52FFC08937FA7B6FA4F910E2AB06154A7DB7';
    i(15) := 'BA5FFE4E2FD37D617E915EFE377A05CF2C43F14EAA1FB4E1A3266576CC95D943A1CC66F26374E3770D1AC52A579F9AB8921FA725CB7CD2CBDB755D6C0DEBFEB3309CBAF5D1D23E8F98260DF63F9B6E7566FAFB6D777B9A6E11C6EA01D86EF9B72D7E53D3';
    i(16) := '326BD3DB0B2DBE3FECB17CF634733F02606E59C9BA760B6796FBCA4D775FC6088085E5EFE87A9E3B10BBD3896D0FDECD2DBE37E86117F7200CE7EE4500D8ECA39D1C37249BA3E57B8F0320ECF1184C97C0697BF02EB158173387E5E3BA6C08801EBB697D';
    i(17) := 'AD2C9BEE67E269006C1D37982641D7D701B595A370097C3EE84700D8371C17FB805D43C0B6FB39640098BAB67D6FDD4CEBACED29B599982F574E1C7C474CD3F62700D61EACAC8574EF050C1900A68BA3A201CA6CD9D37AB3D97AC71D7A112B9AB53F0110';
    i(18) := 'C8B01783B4ED529F3C0A80488639776EB3B53E483F47D74DBFB1AA8763731C011E058069CB1B0CF85B4D078DE69E04C04A86BF84B66D430D7BAC1BC523F836BB451CF1F72C00B69E75D5561D9667A8003878B0F5B75D87498FEB235F0FFBBE968000E829';
    i(19) := '007C5B616187035B43048069972918A1CC62E9E746B08CE980DEAAE331038C140091F8796346DD1676367200CC7B6E6C6D9D3A1C3BB139D6D0E5A635EF0FFA5DEA9880758D6937E2726D0C3D8431D5CDFF6EC4E5BAAF59C75DF7BBD57D0A6F3B2CD795EF';
    i(20) := '0DE152C7040C0D5DDDC4C3E5F2D9AB11CB2C309467D740CF1A7293AD7997E020004616899F0FD48C46EE9DBC32EC8B9FB35B79BAABD3F677BE95E677A2B20B00AF0517FEFBAF6A7637DABC8F00C0A41C2FFCF7BB38A64000A0B5DDC8F3FFE7C2436B6DD9';
    i(21) := '0BEA6BE87702E08C1A5353F7135C661FD6B1AB00508D3A6AD053308D0244008CEC616215F9CA93E5980A753AF5BDA3EF52D73F341DD4645221E0ABBEAF04ACBBC0636AA7E322E9FF42A099D45FF4728E95DDE6325F5F6E28A307E0708BF691FC2DED35D5';
    i(22) := '1DDD8ECFECF7660F85A90BB61B4399CCF5EE033CEC01C4723E776F0DD103C8F6852F656C7BD35811D9854181703FC02403C0D4A55D12002F04E2C778007D4BA4D9BDFD913006E0E40240C47CCB67440058AF9773A9E8368D79D6B047C998008E2BDA505B';
    i(23) := 'B4A954E82103C0D440F613AEE836DDF9B0C306654F08B8E9860503F602A6B0D2860C0053384FB5A2BB1AD0D354368C0BE8200062C72BDEE6B9002101D0684BB99769DD3F606AFC4B8741B2A07977ABD48701E7E5FA2057ACBF279A7000D8ECF366C1193B';
    i(24) := '2CB3BE42D876F82F5B36D70FF06C000BA701BB520BCB10D84BBBE7DC2DE4E5883FAEBACA6304804DC3E9F26CC040CA9F0DE8FA0ABB44FA798497CD23C73833D071E5D8DEA0E1BA42672B70AD1B7654A82433FD5A32D03EE15801D0A6CC56156516E4CA6C';
    i(25) := 'A82E74DF8DD4B451E1A0A083FDF37C526F0BD3BCE70AED62EA7B8CC3B2D00A1DAFA3ED04CB6CA86E3A0F0BE939A51F7B5889CB330D803ECF490F199C2EAEB11FF2401D070547AC5C6D9FC8124BB71B416CA7648400E8EBF2D4C54001D075CB6C3A80E97A';
    i(26) := 'AB6CEAC99E68E2FD86405B41CFDD5B57152D1A2978AABAD67BCF03331961BF3CEAA98E725050FA7F265BE43808B68E0FCECDC48F1E40712B7B10B7DDFEC8E1B2B93CE2EFA2FEA2C116A649639C3B9EF7AA65C5DEEA2E72D053B92C070EC526E169F3049D';
    i(27) := 'BAB32CAECBACECE1A2439D962BEBC98E76E3D94F130E824057AED7152B4EDDBFFE55EA1FB6E162FEEAEFAB422555F3FE2E4F4352DDCB70A3C4AA2DDB07C37BD4B2DCC838A322857AAA2BB3ACBC8E3D2F8B0A814F7A79D4BCBE8CB09E8EBA8EEED8AE0300';
    i(28) := '0000000000000000000000000000000000000000000000000000385381BC1C94B26E845935565C22CF078D548368C615EFCF9E425437A0E452BF27FF1D61EEB375CABE3F367CAE6A5E8B9AE55B5ABC969F7F7EE8EF832EB3BA11751752FEB4A6ADC5645A';
    i(29) := 'A636EB6C55F3DBCACA36D4F526AB47D963CE78B497C7B2C73F1DF48A8D7405CC46158E4BC2E2A03F933DBF2E921F23EE96550CD3C8AEF921BB93DCEB9198472ECE3F15291F5889D40F255D37AFA026644CAF89FC18D576952B9F449759DD98FA59B916BF';
    i(30) := '33C94DF9EFCEBF5EB74C5DD659594094956D568FD67A9D447A5E59DD22043C75A8A994599AE7FF6D5FB342C38A86FE98AB80555BBE434DA33C48F5A3AED6B9CFBA0880534583B00D80B8A6E18452FDE08E6CFE8B9A10CABF2F32F486C4C13A3B49F923D2';
    i(31) := 'CACA361B0ABEEAFB27FB68AF9FCFB8F1C7BAA25D4BF910D86A68ECFB5C659CEB157A55F1FE6C38ED4549A5F99AFB8EA28FF234E474952FFA73B3922DDBDCF0D9A6AEF56F6C5B61D530DABB74BAAD289FCFE9F4DF927F5343606FF4BF1F7599B8D0659D7D';
    i(32) := 'D1CB62F374A6C0F0FDF704807FDEE815BCABF877B5D2DEE656DE1BBD927735DFB9C96DA9CAFEED43C9162290FA67136463E0C72595FBE8B8721D75C5FFD4A2DB1AE8E9AB2160AE4B7681D46FFB962BA7D8E13AEEB2CEAE735DFA3A77F2E3A13061498F61';
    i(33) := '4700F82790660F97082D1ADB7DEEBD555BF2A0B0F5DF582CC79792ADA2A9E7D056D260CB572C4F91E60FEC887523DDE47A4B3371F3C4A6AEEB6CA77B25A68379897E5FAC7739F24F2D9AF4FEFF3907C0D0B22DF9BCB015FF66F1D98D6E6061839E431757';
    i(34) := '7AD9E603944BD6FD7F2894D3074FD6DB4D6EF7C6B4FBF4BF747AAF7781027D6CE120C33C528C0068D1DD35AD9824D7FDBBB7787F58D8AAD46DC9B36EEEADE5B26E729FB5ED397409ABCFBA02CF1A94A718CA2892E70701B34781A9B2C83F0B2F28E92DB5';
    i(35) := 'FD1D5DD7D9836EDC0B8BEFCA7A32EAFDBFEAE941AA0FE2120023BAD395BB6AFF6E5E487DD3FB25B7C5DC596CC9DF35DC827FCB7DBF6DCF6166F95A972D5F3E008EFA775559EAFDF2FC6ECC511F6BC94FEF0B21D9D73AB65967D97ADB54EC1645527DAAF6';
    i(36) := '5EEFD20402EFCCA4FEDCF4565E9EDA697B4A29297C6F769D4154F3BEA8F09E6C79B7F2FCF45454F25D75A7DCB2536D61CDBCF28D233B1569731A3091EAD38051C9BF9DA4FAFA887549F9572D67DD32B95867D9318EECBC7EF134E049CCA76AE1A1485E5E';
    i(37) := '08145734D0ACC2982E2A99192A539C6B54D22000449E5F08636A14AB5CE52E2EE7BA41C35A4BF90533551702ADE5E585404B79798D412CF5E7FCE392656A13002ED659313C1F2B96752BCF2F285B8BFB47D0C3B1ECF44DFE12CE75CDFE5E9BCB4AE3C2E7';
    i(38) := 'CB2EBBADBA3CB7B8A5DE966CEDAB2E354EA4FC92DCB232A8FA8E6C799B5C0ABC28CC775F32DF44EACF34949553DD72D62D53D775560CD66DC5C6645D528F229A180000000000000000000000000000000000000000000000000000000000000000000000';
    i(39) := '000000000000000000000000000000000000000000000000000000000000FEF8BF0003007F5ABBB5D20E0A4F0000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'telex-comms.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 10;

  -- A-Frame Aerospace (11)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000D2F4944415478DAECDD4F6EDBD8010760663040511468D5D90CBA1A';
    i(2) := 'CD7E80714E1065D9D5282788B2C936D2096C9FC0F6B2D9C839419C4DBB947202BB40F7F6A08B623613678059BB7C93E78666259194288994BE0F20EC2816453EF2FDDE1F4A54920000000000000000BBE29122D84D7749D2497F1CA44B2F5DFE147F4FE2';
    i(3) := 'CFCE9CA7DDA6CB55FC3DFCFC982ED3F0FBA34FFF8700A0A115BE1B2BFB93F8B35BF34BDCC430781F7E3EFAF46F609B953E5D86E972992E771B5E2EE36B771D09D86CC51FA4CB640B957EDE12B665E0C8C01AC7F4E972942ED70DAAF8F9E53A6E63C71183';
    i(4) := 'FA2A7FA8541F1A5CF1F34BD8D623470E56ABF8FD86B7F8657A047D4712AA55FC6EC3C6F875CC11741D5928AEFCC39675F7AB0C0B868E30CC9FE47BBB83153FBFBC3549080F2BFF41CBC7FACBCC0D1C38F2A8FC9F26FA3EEC51E5CF0E094C10B2D7957FB0';
    i(5) := '87153FBF0C9C09A8FC4200547E21002ABF1060237C1C78B395BF97FE982889859E3EFAF4B16304C04E55FE8358F95D035FEC3686C095A21000BB52F93BB1F2BBF65DCE550C0177215AB32F14C1469CA8FC951CC43283D6B7FE7D937B4B2FDE286408D0FA';
    i(6) := 'AEFFB571FF4AF301DF1A0A1802B4D558E55F492796217A00AD6BFD7B894B7E7571695000B42E0042D7BFDBA0AE74A840E196DE6186FD367F99EDEEF3F705849FF7B7166F4AEFE526DDDE6F9D55B4A5F20F1AF269BBF12A1FBB8D1F531E37E4D38A036716';
    i(7) := 'AD69FDB77D43CE3A6FBA91B923F13683E0DA9985D67FF172B2CEBBEDC42038D10B8066B5FE1BBDC3CE16EF60A41740A32B7F7F4B77DCED6C615F3B5BBA73B13707D1D800D8F44D3DC70DD8E7F1A66F2AEA4CA38995BFB36F957F8B21E0CD55342E00869B';
    i(8) := 'FC66DE06EEFFA5C940F63900261BBCCCD769E0FE77367899D03B2CD9DBEE7FAFC1E5D0330C68171F06AAC7A62AE57993DF131FB7ED7CC7CA5C0050E8C9065E23BC9F7FD482B218259BF9F8EE13A79D00D8A71EC0591B3E171FB7F14C0FA01D7C1AB09EB1';
    i(9) := 'EFDD065EE6CF6DB931461C9F7FD8C0C9EBFCD503D8FAC9BE8996E8BC4D77C589DB7ABE23652F00586813EFC17FD7C27279B723652F005868ED97A3D216F5A28563CB8B5D287B01409175CF464F5B5C36D39697BD0060EBDEDB7604C0FE0E01DAFC155957';
    i(10) := '2D2F7B0140A1754F44B5F99EF8B72D2FFB9DE73AEA8AD6FD1E80B65FEB563E7A0080000004002000000100080040000002001000800000040020000001000800400000020010008000000400200000010008004000800000040020000001000800400000';
    i(11) := '3BE94B45D06C774972D4A6EDFDC7575FFFE5C1033FFFB4D6D7FBFB575FFF2DFBEFBFFEFCD37F36B9BF8F5A767C666C3F2B56D03BA5F0D9BFFEF0C707FFFEEED75F76EAF56654A056D7214300300700080040000002001000800000040020000001000800';
    i(12) := '400000020010008000000400200000010008004000000200D830B7056FBEE3366DECBF7FF7FB07B705FFEED75F5EAEF9F55EE75EEF3F4E99F2DC167C45EBBE2D78DB6F3BAD7C0C0100010008004000000200100080000004002000000100080040000002';
    i(13) := '00100080000004002000000100080040000002001000800000010008004000000200100080000004002000000100080040000002001000800000040020000001000800400000020010008000000400200000010008004000000200100080000004002000';
    i(14) := '0001000800400000020000000000000000000000000000000000000000000000000000007860922E779965B2E5EDB9AB7129DAD765970F715DC374E9ACB8BF6F6B2EFFFCB69EACE9385D96DCEE5ECDC7F44895ADCFBC83D3130095C2E0A041E5BF89E339';
    i(15) := '9CF11A7B1B005FB63800B2ADC371BA1C661E7FBCE56DBB4A975143D71D2AFC0FF1E4EEC4F27ABAC47A0E73E5FF2AAE6F9C2EDFAEB88F37715DF7EB0BC7F3B686B2EBE6B6FB263E56C679BABCA961BFA8C12093AA97F1B1A3CC63832DF700D6311499D4BC';
    i(16) := 'EEEB05BD8D2AE57F5D63F967CB6FB8869673925B675199F674DF9BA7933B797B99C73F644ECA8E005868BC42001495FF8725CB3F5F7ED9B1FAC18AFB3B9C115A7B1F005FB4709B87996EDB342E49EC221E67BA7A4359B9D08F4B3EEF6841F98F32615047';
    i(17) := 'F9BFC805D62A8DC6E19CF5D2B2D6FF432695BB0B5AA7655BA17DE9011C2DD103C897FF4141F9776B28BFA31A5AE1ECD58A930A656A08D030D96EEBB8C4F8742C006A1D029C9428DBDE0AE53FABFCF243BEAAA1D24F1E5EF5E80880CFDA7415A09B7C9E5C';
    i(18) := 'CA7637F3CED3E5793C7883382CB829B1EE2A27D6B4444BD95B615FA71B28CFFBEDBBA950FEC319C3AD59DB3ECD94FF59F2E9CAC5B26E63977D9209AEB2572D3AB9107A912C7F35E19B158FE9ED8AE5B0F72615D2389BDC6F2B768797B9469F6FC1EA7E0F';
    i(19) := 'C02A3D805E6E19562CCB59DDE82AE55F657B173D27DBFB283BBF302E380FAAF400565D26AAF06AAD557606B753F184EDED5000D4B98C9728FFB2732BE3A4FA9B79165596FC55866E0DDB2C005A227B396850A1CBBAE9C2DFC41C409D27E4C112AFBD4CF9';
    i(20) := '5FD6547EFD92659C9F37182ED9ABDAF9398036182C7122CDEA360E7624002E6774EBCB2E835CCB5CA6351F24FF7FFDBCACA38AE55FA6FCB23DBB7E89E33E2951A626011B2A7FFDB653B172654FEEB09EF31D3866B7C96A9384A10CDEC720E8C48A79BAE0';
    i(21) := 'EF0F67549A65CBFF2259FD2DBDA3E4F3DB98C7B12C6E739536DBE2BBE6DF6255C7E6DBFE30469B2E03969907186EB8FCCB965F76BBF2937BD7155E4F0FA0E1ADFFABCCBF8F5758D7F338267D155BBBDB84EC58BD4CEF2B94DBC786947F58C7FD079AFA71';
    i(22) := 'B9481EBE4BF1CAB8BDDDCABCE96799798493356E731B7B009312BDAF3ACB7F5C53F975737313BDA4FAC7884D0236B855CA4E54756B5867F64A4257002CDCD66EAE32756BDCFE45EBAB5A7E47B9F3A46AC857098071B2FCE4EBFDD255B5AB9F2C75256F2F';
    i(23) := 'A9F6E6A07D0E80F19ACB7F5263F9E5EFEE53E593A09B7C1F805EC412274ADD1FE89924EBBD73D02E04C03ACBBFE8CD59CB94DF325D7F0100000000000000000000000000000000000034C8A37DDAD9972F5FF692CFB7BA7EF1FAF5EB9B82BF0F5F9D55E5';
    i(24) := '2EC257E93A474B3C37DC26FB9FE972913EFF2AB70DE1965CE13EF84F92E2DB5D85FD09CF3F4BD7339DB13F83E4D3EDB4BBC9FCAF059BC6751CA7EBB8CD3DF779C9FDB989FB739E5DC79C321EC66DBA4DFFF659C9E3D88DC7F12059FCF5665799F2C8976B';
    i(25) := 'A55BABA5CF7FBA8B75E2CB64BF8C73BF171DD4FBAFF93E4F971F4B9EF8CB3E375482C3F4C47C969E6C1799C7DFC693FC3829FE6E844EACA493743D4FB32190FE3BACA71FB7E72C99FFB5E007B172856D7F9C79BC1B1F2BF3FD0CDFC7F00BA1F5ACA0229F';
    i(26) := 'C4D0E9A7FF3E4AB7F9A8A0F2877DBC8CDBBF683FEEB7395B1ED910E8C5D77DBFCF3D80BD0980D8D27433953E9C14BD592DE50C6F4AFEDD2ACF3D4AB7279CD8E1CB332E32BD8870A2E64361918BCC7AA699F584CA3F4AD7735AF0FC69FAF7A152BD9D553E';
    i(27) := '45153453DE2749F1D7789FC4DECFB3F8B7AFD2E79D16F41A0631E89E16F52EE2768472BB8EE591FF9AB0F765F767577DB12795FFFE5B6EA6E1848E27F53459FD0B2FEA963FA17BB1D25D545CCFBBDC70A193E91297318D4179B5C2BE7C2C311CEBC7EE79';
    i(28) := 'D8EFD34C282CF2241EC752DF2E14FFEE2A714FFEFD0D8058F93BB91620FCDE8D3D83A6EAD4F4DCDB4CF7BE54A58941B9CEAF500B15FDE6BE058EAF15E64F06B1C7525B9984F1FBAE8EE10D01CA4D18854A7E9A9DF40BBF87EE661C77174D563D8F2D5691';
    i(29) := 'F3A289C5825ECA41B2866F300E63DFB08FA1D2A53F9FC716FEE382D6FFAA86CAFF64DEF83C4E281EE4E707D2D73C4FFFEF550C874D54D82761DEA14C8F688521A000D8B2716C01674D5E1DC731E5616C7DE63928D9859CD5550F95AEA832DD57FE69B2DA';
    i(30) := '97A02E0A8117E976BC8BAFF3FD8296F43056D27095E47C46E52D337BDE8B653E9A137427B152CD2AAF519C9FE92F31F4A9AAECB0E066572BC74E07406CB5C3329AD5A285C7D2BF398BBD80B305ADF7688516208C3F8BAE027C93D4FB0D3CF342E0624E48';
    i(31) := 'E52B6808CD71FAFB7446999499353F5ED08B18C67D1DCDD9C63009398D21B1EE0078B3EF9380BBDE03B89FE4FB213DA97E2831267DB6A693AC303CE25025CC56F7D7310CA81012F7A1D88F2DE44DEEFF97AE3099EBF7B7B167B4A847F4DBFC4C89AB1665';
    i(32) := '5EF7246EFBC8A8FFA19D9D04CC5CF63B8DADD6A225FC4DBFE4387F5D15EF6646B7F42A5371AAF826C9CCE08749B5D0752F985CCB57C075B8BFEC7756703CDEC5D6FF30F648F23DAAAAE5D14B5C05D89F1E40EEB2DFA8E473EEDFB9F7B841BB328D1526EC';
    i(33) := 'CB8B0AFBD18F952C3B860D95E055D17AB2AD749D135F99CB7EC7657A11F1185ECF989F09E1300C1389B3E62866ACA71FE73DCE54F7FD19021C2E1A67CE1BE7A7CBE59C136BB2A0BBFAA0C2D679B92976C747B1BBDC4F8AAFCB6727134F73EB7911C7F58B';
    i(34) := 'D6D3CD74FBEB9E853F89EB3DADB0EFC771DFFF373F13E7084EE3BE1C26C5EF04FCAD1738272C0EE33ACA6CCF2301D01EEFE2D8FBAA42650B97CA1ECFE86E56A908B7339E5BE5CD344F678CB9CFE3BBD9EEDF15B84878EED5ACFD2EB99E37F39E1FE72596';
    i(35) := 'EA11C4D63C04D94D95CB8B61FC9F3E77D6BE8CE23C45D16701CEE2FEDCCC296B000000000000000000008036FAAF0003005400368DC85CF8060000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'aframe.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 11;

  -- Marvel Power Systems (12)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000012FB4944415478DAEC9DDF51E44812876B37F67D7B2D18117B6FF730';
    i(2) := 'CD3980B060C082692C18B000B000C6021A0B000BD03870F43CDCDB5D8CD682EDB5604F4967EFF4B04C7749CA9254A5EF8B504004744BAA3FBFCACCAACA720E00000000000000000000000000000000000000000000000000000000000000000000000000';
    i(3) := '0000000000000000000042F143930FFDFB1FFFCCAB1F39C5972CCBEA5AC82FFFFAEF7F0A8A235D7E6AF8B969759D537CE95389FDA6207CAAAEB2BA8A4A184A4A67DC16C023C5376A9E854045E1BE12842545321E01100BE089E2830DC442B85531C03A48';
    i(4) := '59005404FEA4F8E03BDC57D7432504738A225D01B8AB7E1C5184B0C34D10ABE01A176198FCD8E2B30F141FEC2073AB60F1976AC0B8A8AE0945928E052095F9A5BAA854F045AC808F58040958005A811F2942A8C164C32238A53822B60036AC802735F500';
    i(5) := 'EA22330727D560B2A028E28B01ACAD80338A111AF23C9D2CF1018A22420B60C312B8AA7E60D201D6C018054045E0A6FA31A348A12527AC1F8850001001304404E08C9982C8044045405C812B8A160C5C8243442032015011C8AA1F620DE41431B460A922';
    i(6) := '405C202601D810021180F7B80580088C5000368460A2D6804CFB1C50EC832247041000804DF76DF33A50E19E200208008C5718A66A2DBC57414004100018A918883530EB490C100104000666197C70DD067ACBEADA678A10018061C50ECE3B1482452500';
    i(7) := 'FB943C0200C31382AED680CC2B1138A1D41100189E1048BA3859119A05BE157B07100018A8084C540442BA050405631400CE16182C0BED549FF4F7A26DB04DAD01710B42AD25201E10A1004863F89D2A8846145AE5FCD7D902118150D38697D5B35D5055';
    i(8) := '11B9009C2D10AD187C6CE277ABE83F0614817D5C817AFCD8F3FD4BAA203A9E47F2AA334B62CF5ABEBDB8126AAACF033D1BDBD0231380822A88966C43088E6A0AC1492011C8EB8A1202D02F9FA8822484E04E4E8AAA73F047401138E700927804E09E2A48';
    i(9) := '06B1026A59032A02D63EBB0812096A6310009D5E9A530DC930516BA08E2F7E1840043E6005C46101089C2E941EA79220D6A713EA20209680E5C69E0956801F8358094836E164F14EECA9C1BB1BC37BCB3DF7D831387C0B4038331E016018C894E1A3A725';
    i(10) := '20AEA0654C68E238BE3E0E01D83003214D11F01DD9AD5D81738A3F0E0B4044E01E1148962375F3BA1E0832DD73024317800D331011489399CF221D1D080AC3FBBEA7E82311801722404C203DAE3461C82E2C4F9C3E624A302201D810817DC752E1D4785E';
    i(11) := '27E051FF327B3037BC27C1C09804401B41595DB248E41021488AA99E1FB98B4BC37BBEA3D85F279A8C406A3A1E69650EE1A00A688ED71C7D55E7B27538371A50C87E15B300403061CD374CE5F5D16D7907B7BEAE3AE5D98E673BF271193C39D600232000';
    i(12) := 'B0A3E3ADFD669947CF02DE6A6F578621D96E6CF40C3B0587180080FB2B7187A4DCDE736167643E78FC8FD5A89D53B30800D41783B98CD42ECCD6ED99C7149DD566B129B5890040738BE0D8D96FDDDE3945A72E4269E4DA60052000D042084264F1F199A2';
    i(13) := 'C30D4000205111F059A967953AEE0D358800407BCE9C6D46E75D2BF50AA3FB64541D020006310167BB69EBC0E37E1669C370011000301281C27064F689D097943A0200C3E2B24301F86C712366021000B0B502CA8E3A26477E21003040ACA6E876CD042C';
    i(14) := '3BBA0F02005083878EDC806547F74100006AD08969CEA9BF08000C330E40EAB688F98922F88A261DC90C3A4541690202101F3367934B9E3C0B8000C0772D8D0B0BA121CD1510030000046060237CDED17DB211BD6B4ECB4200425344F6BC7942CFB0A08E';
    i(15) := '118054C83A6A8443C8776FF50CCB96650A0840F04668250056F7E9F5D82B75414C56D6794C9D6603AB630420350C579B1D74741FE1B4C722B33A7E7BD1B64C7BA86304002BA0D56865E5067CE82318A8F79C752800D940EA1601481C8B1122F3E8945679';
    i(16) := 'EEC405B8EAA19C2CEFF9E02136D940EA16014000BCC877FCDD32CFBEC402665D1590DECBF2C4DDA265592200088019BF751807280D9FFBA6EA98D30E3AFFD478F4BFF7D8507430B0BA450012C6CA37F71921AD4FDB790C2902FADD8FCE36A9C683515962';
    i(17) := '012000ED318C124F3C56AF7D347EFC898AC051249D7FA9478F6DBBEF91D53DD9A58900746D05BCDFD120CB00568074963BDD7064D5F965AAF1C9D9A7D3F211C07703AB530460045845E88F3A3CFCF225E772B4769B35F4F2D9EA7A74616619C4EFBFDE71';
    i(18) := 'FF9D6707F650A708C008B04C74B9EBF0CB22E0E894A94BF024917BDF5583FABF8F6AF2E7819EEDA347F0CFCCFC77614E378E1EF6937FBF13FC6ED4F8CAAAA1EF79F8D74F1DBA3712E7F8C37D0D8AAD038707AE9B0D46D2F1F77609805830CE68015075AF';
    i(19) := '5F68D57F878420DB478C99C5282CA6F4B60094041EABFF1173B88B65BDB9EB7F17E19947E79F39BBF5FF8CFEB800B57930FC2E9F35F372CA4E3982722D7645FE6B94591F7589008C81AA91DE1B76C87CD7D45C8003378788D73B1A8FFE4BAD4B40007A35';
    i(20) := '1D7746D2D54DB84CB83C4F74EA735BE7B7DEDB30A71923004DB19CA2CB7CE6E6AB0E729168A3BDF61C89C5F49F0CB40E118091B901325A1596B100CFA5BA672EAD65ABF3AA2CCF3C4CFFDCD906428B5D160702005D8F20371EC223BEF2612222209DDFC7';
    i(21) := 'EF9FF8944D4D6E69BE08405B2BC03218284CABC67E351211F0EAFC8A94496678EFD273B60101809D5807E64E7D36EC6C88C07DCA9D5FA3FEB381D75992B012D013C355696B9E3BB7EFEE43B51A4E23292E59E873EDF95EE2F73F1ADF7FE7EA4BC002E87B';
    i(22) := '44596FDDF58A786B10EDD80D3BAF5DA9A2E6DBF925207A17415D6101C073830DB13966A19D66E9F90CEB60D9D1C08A67EE3C96F8BEE8FCD6F9050489FC1FD25AB10062B00284694D4B4056B61D6B6CA01C4099AC05EC64009D9FD11F0B20B81520A3EF2C';
    i(23) := '50473AAE3B6FAD01B473D7FDC939F29C977523ED813B7F9D590740001A098034DC2F811A70ADC0E08BE71297E07D07AE81CC48DC36595FAF01BFBB8065B7E76B850002D046048E5C98E0D5BA219F359DC3D61CFAF27CEF0CE315855BEDA8BB6FBAB24ED3';
    i(24) := '8A853CBFE0984D3F08409722701778B4BD56137BD9F23973158237EA264CB78CC04B7545A4934B0AEDA26D22CD8E8296F71A170104A05357E029B0EF2D9DF124D6F3EC547C6E02979188D53EA63F02D04703EF2A95978935D0B1388AB93FEBE076FB1CF8';
    i(25) := 'D91CA6015BA00DAF8BA8B3F8CF5FBA3CFEAB45E7BF70AB206917CF7A42E7C7021842A3BFE9A8C1AF4DDECBA16D74E9613A92293F0460501D20640AEDEF09C147ED08CB9EDE3953E1FBE0C24CED7D0F56FB210083F47B4504A63DDCFE796E5E3BC6B283F7';
    i(26) := '5C4F33F6B11CB9D6D2694000C622029B62F049C56061F45EB9BE93E5DA023A3F02800874612EBBAFF3FAA5DBBD7F20D36BBD6E201FC87BD0F911004460A4D0F911004480CE0FD6B00E20101BE9BC0A4AA395FB42E7C70288DE1AE8729D402A30CF8F0590';
    i(27) := '8C35200D592E46323F4EE8FC5800295A02EB1C7819A5F12AA55B6DEB65792F164092968034EC7DB7DADC032F4C7EC7C61E2C80115903B90BBF55369651FF8C641E580063B3060AAC81E777DFA7F36301101B58ED9FCF47F2CA858EFA98FB0800BC700BCE';
    i(28) := '13160231F74FDAA61903040021886FC4BFE5B04E0400EA0B81A4FA9E45FA0AE2DB7F64C44700A09D10646EB5F75E126F641198F9929B60DE3485382000F07D3198AA5520D6C174409D7E7D6008813D04003AB40C44080EF467D66187978E2E8947EE19E9';
    i(29) := '1100188E20AC45E1AD5BE5E9CB5B7EADF8EFB287E1B376FA051D1E0180385D07DFC49D4B4C79000000000000000000000000000000000000000000000080E1C1662048865FDF64B2E149AECCADB6483BF7F5B8F34D0AFDF9CD2EC7FFFD569608403C95FD';
    i(30) := '68FC950F5503B8367A36D9757767FC7CB7D5F3CD7B2A9B97AC3BCE6687920EB4ECA11DE46E95204532264D5A7E5DA9EF22655D2000C316803F8DBFB2A82AFDD0B0515A77C2CBEAF92E7A2A9B3A1DE8390F60E8D1B47AC7995B254ECD02BECBA5AFE8C60A';
    i(31) := '07837C251FE877C58474C6D3EAFA5275D09BEACA0274FC4C2D9CD0A72AC977CB3B3C86780F0460B83EA4056F29CDE74CC64F55999E1A8FFA4F1D0B6CAEEF314300D2673AB0EF891DF1C9AFD41A981874FE1B033FBFE97BDCA4280208C0B71C188C5213C7';
    i(32) := '819FAF59038F4D4560A3F3F7CD8DC67710002C00FCFF06657BD5D02DBB1AD07BDCB5B5661080B40500F37F8B25D0202670D593D9BFD5AD410012C5C0C43BA014B772EE3B82AAE93F448B6A96CACC0002603F826301D88DA01F5ADEABAC2E59DC755C5D87';
    i(33) := '1BD7A5FEAD9590A550193FD11EFF46E3293C1D1562F60F2F77944B6624704755599D6D5B39B8B1ACB709F2BD975B567616D575A1EE4853735E561E9E20005800C98CFE3E2B0DD57C3FD5D1B9A9D8C9E7663A3A6FEB604D39ACDE65E1F1BED7D5FBB88622';
    i(34) := '30117731F625C3B80008405D9158AA50ECB9D5269AA6BCDBF1F7A6B1944B9FCEBF2902EEEBE6A0BAE4B1D72702F0FA28D7B46247130054F3FD50CDED109DA7691D34D9D075DBF05E6F108034C9037FAE4C4804CEAC85B64584BD68B823F1BEE1FD320420';
    i(35) := '1EEA98796F1B34E63AE67F32076FEA6EB9A656C0D4B863950DDF6199529D2000ED45606AD8985FE35362E5DA7404B536A17F6BF1D91201481FDF8E973558EE59C76A588CB45C7D4533EFE11D3E2300E9B330689C6DFFBF48B05C87327AB20DBB26635B07';
    i(36) := '50A7F3E50DFE7F8CE6BF6B1103B0A6F134AC4E6D5E6001248C067B7C472BEFD1A4E6B4619160B95ABB344D2D8A2CE5EC3D0840B756409DD1649433001B02980D44008473BA3502606182D7194D7CAD855E32E776C09046DD59AAE9BB10001B420402A701';
    i(37) := 'EE3D5A0130585F7F63998B100148CF5F5DF624009F122DD6A6D1F74540B1BCD28CBE6CCF46001A37AE9D6BFBC71E00549AEEDCFB2D705949DD4846DFBBD472F92100DDC401A69E8DCC87658A474FA9BFDDD405D826C40FC60225D6809C57304B29A71F02';
    i(38) := 'D00CDFD165E211087C6B7CCF983A7F9B849DCB6DBEBEFECD5A30A52E25BBB008C1155386B800165680AF8FF939C1CE2F27F4341D4D7D04F132D0E3AF939A7C51F7E00801181135777F4DB774823A67001489747C991EBD70AB137ADA98D2B71EF534EFA0';
    i(39) := 'DCA4F3DFA97B703A36F760CC29C10ACFD1FBC060F47731A48ED28EFD3D7E76AB78874554BDACCAC37707E18981D8F8BA07E2CE48D66279B6CB311C173E6601F035C9F3867F8B71F4EF6A159DB7692F9DB0EA90872A025DB0CE5728C1C279EA4230E68C40';
    i(40) := 'DE9D72CB5CB26F0AB08583BFCABDEE91DBBA7643527B77BD8A72E6BE060C2708405A7180D2B55F1034F605407559BA86A9B4D565104BA08FD15802864F29AE25187B4E405F2BE0ED2B564156C32FC5025871DCC69C564B60DF35CF40D43646F098DA12E3';
    i(41) := 'B10B409B0541BEA37F39866092C7C87F6C1108D5B4E4C73D5A03CFC79D230069E03B32E72D04A01879194B273DAC11F5F715028925ECA94BD1B5104880F00A01883F0EE0DD395F0904FA06003F8FB88825DABF1F2061C8661DCE55080E3B760D4E535840';
    i(42) := 'C4B900FE2374EE61156001ACCCFD7975ED499AADAEF21FA84520AEC12F6E7556411771979BD86707381B70D5507C3AF3DB2DD6C0B68639860060A942F7606DEA378911B8D5E940D71AA89551FABD0B736CDB7A49F10502102F9FB41277311D81FFEFF3BC';
    i(43) := '22687FE8482FBF0F36C8A9CFB51603A9B30F2A0896A3F60704601C2EC0F4356BC0435CA2A1EA3087A956B25A6227722CB96B7FBAF1375680C402FAB67C8801B43319BD46B08D8520CC00445CDF1BA71B5F1B7D6DB45987080236B30272CFFF6701D0B085';
    i(44) := '40AC811383AF3B4000E2C677AAEE6D8DE5A0A966004E4D08E60622902100E3B100C69E01385511988F51000802AE1AC0A21AD965B49E780840E9F9B56C006A408B3463B7757719BE40162DCDC656DE08C0B723B68F797F54E3FBA03E13D7EC74E05682AB';
    i(45) := '7907162EE2801E2E403B2C47ECE54816008DD5154400A87C1AD2C0F8D9E03BFE4000C6ED0258F199E2EC1C4E0042005AF9804B4311C00218174B04003760534C1080EEC90DBE23C419870840445898EE04FF7A124F83FDF93902800580F9DF3F65C3CFBD';
    i(46) := '6B211E33D77C73D06704208DD1A734F0E75800D49F15356B92B957F306B449F15520005801B80076B43919B8D651E006671C2E624EFA8A00D89A736400B6A1CDDE7AE9C892BEFB665BE6263DE350B2FBCA8943598BFB7D8CB9A0590AFCBA05D0F4882C46';
    i(47) := '7F1B576CA9C772CD5A7CCD4C5D8252630A6BD7EC8DABB7A96B1BCB96FB0F10800136BEA26A34F8FFFD73EB6C36E7647AE5019EF12CF642C605B08D0314149D9D10BB765B7483B791D8477F04C0D89467035090117639D0F6719C4201230076A63CA37F80';
    i(48) := '58805B1DF8B11C58E73F4925DB1302606701E0FF871181C580444044FE30254B0F0178BDD195AEFE6A34CCFFF02250F6F408223E6792363DB53C8F08809D498F0B105E04E468F0CB0EAD81A5DE4F8E39BB4EB15C9906FC3E7516049101B8BB98C0C5AF6F';
    i(49) := '32E98C3317EEC82F111B99869CA75EAF310B40DD536CEA56E4BC8659BF6CD0C0EA3E7F19B06C621482CDF3FF72B7CACDBFFEBD6EBB58E825719C624C62FE03E30AA488C77E00F23602000000000000000000000000000000000000000000000000000000';
    i(50) := '000000000000000000000000000000000000000000000000000000406BFE2FC0008F9FEBF0D4374DD50000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'mps.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 12;

  -- Make Good (13)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000F414944415478DAEC9DBD6F1BC919C647A2FC8D244A9320A9780910';
    i(2) := 'A4098EC05D798037179701ACAB5358AE5C5AFA0B64D529742E5D49F71748EA0D9B4652E660B5B9229171697248620289E40F8954F625674F946C7997E4CEECCCBCBF1F40D36789144FB3EF33CF335F6B0C00000000000000000000000000000000000000';
    i(3) := '000000000000000000000000000000000000000000000000000000000000000000000000CCC21CBF829A597DFC20FF732D824FFA91D9B8B5AFA85D36F23F5782FF9C1BB7BCD6E43C15AB962565FFBF194D8E00C0297714F5FEEDFCCF0E4D8E00C0291D5B';
    i(4) := '18B81D04008801B81D04008801E9D9FF45EC3F02007A6300F61F0100C505729B264600406F0CC0012000A03206AC3EA6F8110050DC4B62FF1100501C0370000800A88C01AB8FB3FCCF459A1601009DBD25F61F018009B889A02100A0D9018C56CDA560FF';
    i(5) := '65E55F9B2645004067AF99D1940800E8CDCD6CFE410040650C60EF3F0200AA6300837F0800288E01376942040034C680D1E7C6012000A0D44653FC0800288E01D87F040014C7001C0002002A8B69B4F79FCD3F0800288D016CFE410040710CC868320400';
    i(6) := '3416159B7F1000506DAB59FB8F0080931880534100402D8BC19FACCBE61F040054C700E6FE1100505C60E47F040054C6006EFC890080EA1880FD47004071A1B1FA0F0100C5310007800080CADE961B7F2200A0BAB7C5FE2300A03806F8FA2C7B080084CC';
    i(7) := 'BEBA5E77B4F9C7C74EC55EFED8450020647614C6803B09FE6E1100988A5DDB53F98A019922FBBF8B00002E20A418E06FEF7FCF6CDCC20140342E404B0CF0E54076345C3808400A8C7A2A5F31A06D7BE1D4F3FF2E0200C480668BF0BCFD17EBEF437C54D8';
    i(8) := '7F048018105B0CC0FE2300A03806F81A80DC4500801810520CF077E34F35F61F012006C414037CFDBC1D4D170C02400C882506F8BAF1E72E0200C480F06200F61F01009531C0DF8D3F77B45D2C08003120861880FD470040710CC0FE2300A03206F8DBFC';
    i(9) := 'B3A3F14241008801A1C700D6FE230010788F9645FADEAAED3F02400C08BB97F6B7F96747EB4582001003EAA0638BB56E38F9070180487A3617C5EA63F38F5AFB8F00A4CF57D1C680D1E61F1FF97F47F3058200A41D03BAC6DFB1E175C700EC3F02008A63';
    i(10) := '00F61F0100C531C08703D8D17E712000E9C780BDE86280BF5B90ED2200400C082F0660FF1100501C03B0FF0800A88C01FE6EFCB9CB8581001003C28B013E36FF60FF11006240A03100FB8F0080CA18E06FEF3FF61F0120063826F3F41AEC3F020001C680';
    i(11) := '69A6F27CE47F8A1F0120067860C96EE8A96AFFDBC6CFDE7FEC3F02400CF02602D87F040088018E2203F61F0180E86380BF1B7F62FF110008300670EE3F02008A63808F3BFF50FC0800041A03B0FF0800A88C017E6EFC89FD470020D01880FD470040710C';
    i(12) := 'C0FE2300A03206F8D9FC83FD470020D018C0DA7F04E02C8FFEF249260F9A26C118F02E3EDA19FB1F9503E8B7368DBF5B4283310FBDFDA4F1D37EFD6CFEC1FEC724008F9E64CB66302F17C652EE0216699EE4C6016E973802ECBF6A07303F58CB1FF23729';
    i(13) := 'FE659AC74B0C9008B0D7400CF0B1F907FB1F8B00E4BD7F36ECFD470220DCA779BCE16B3070711803FCDCF813FB1F9903581BFE397752FC773B8F01B880346300F61F0118EBFDFFF45967D8239C16FFF7A2C058409231C0C7202FF63F1A0770B430B2FBAD';
    i(14) := 'C1F9AFB4F3C70ACD94580CC0FE230063D9BFEC3088FBB90B68D3545866EC7F9A0EA06C37987C6D93A64A2A0660FF1100CBDC49953C98312098540CC0FE230043FBDF36277355F3E0065100EB8CFD4FCB014C321D2451609B26230660FF5311806AF67F9C';
    i(15) := '4EEE02180F200660FF631780E1E8FFC9DC349B4196190FC04263FF637700F38377EDFF71ABEAAB37D9324C0CC0FEC72C0083F959CF82DBCE45A043131203B0FF718E01BCBF073F99ABFA7A19147C8A0860A5B1FF9109C070FAEFA2B3E006137D24448018';
    i(16) := '80FD8FCE01CC0F2ECEEFD51D0022400CC0FE47290083F98F2FFC5ABF35CD3B2202BA2D35C51FD918C0C5853A989BF63D45049E3345A8320660FF2313808B23C0A035EB7BCB14E1039A564D0CC0FEC724007600F062FAB57C243948649BC34454586B8A3F';
    i(17) := '3207D02EFD8E7EAB8E9FB3642301E30269C700EC7F5402F0A119807A05A0109BE74482646300F63F3A01A832CF7FDCAAFBA74A2478CEF2E1A9D8C2FE23007552BE0478E0E463491490A9C24DC606268A01BD800B0DFB1FA1005473097D671F6D397FFC5D';
    i(18) := '6201421075A161FF23158076A5EFEA2FB8FC0C52F86B6342D0E65288CE6A53FC490B40FDE300654220D160894B229A1880FDAF8185603FD9F1C2685FC0BB370B71190DE4B0917D7BB1EFDEFBF4EB2E97C899820B4520B1FFC90B402102978E9A70287233';
    i(19) := '92955C0CA4E713117826CFB920EC29BE56A4E03603FA2C90BC001C352200E723C252D1F3E58260AC20884B7861FFDE53210C1203561FEF04E202B0FF6A1C80DF1850856CECEF6B63C2301487EFFEFBC776EFF087E69BEF7E79E6457FFDE72FDE79A36FDE';
    i(20) := 'F36FC400EC3F02D07C0C985A1C7EF2837F1979FCEAA77F3BF385DFFFA6FCC5E3825008C8B7FFF999393CBA66FEF1327F7E7B8D1880FD5726006F2FC7240033312E1AE7054410011021F8F6E5CF876221CFFF3EF8B1B61880FD572500B220481606CD0FD4';
    i(21) := '37D6F5CBAF86C2208FDFFDFACFC53F6F9A3F7C226311326BB1E3A9009B1200ECBF3A0118BA804BC65C7D436BBD9FB6399DC22CE6EB5D8A41933180E2AF99F9283EE5D1A569CE0AD4C8A21503390BC1CD72E766170561FF550A8014FFF102AD35B9339059';
    i(22) := '8A977695633BF242C4FE272100D34EE9BDB94C6B4D8FB80271041B353982260A91E24F42004EE6BA53BD4E0602250AC02CAC58215889300660FFD5468082B7B8809AC60936EC01299D480A12FB9F5004D89FFAB53225D86FD16AF520C53FCB71693E0B92';
    i(23) := 'E24F2802BC98E9F5AFAFD26AF522C7A53D9D786CC06F0CC0FE27140166DB38D3672CC001991D1BE8045898D8FFC404A037F33B3023E06A6C60D23B2BF9284C8A3F2501B8F779B73BF39BC88C000382AEA87E67253F31A0D4658873E17CC7781CC0EC31A0';
    i(24) := '7001AC0E74392EB05957817AB0FFF2595FDAB18C071CFF5E9D6696D7C94CC0C9DC6C77EC91E21711608F802B646F81B9F7E9D7772B58F4FDA6E2A2EDF98B6B29B38FB5B1C35B9EE5FF0F0F66F80C5BF67D92A4912EF4D1934C16A26CD4F266370E8C69B1';
    i(25) := '53D0215B1544A031EC41AEDB1FF896FDFCF37F4433A616010A5E5FA315DD3B81CD803F5FD98D66BA3461600250CB4060419F01414F22B011E8672B3B9BE019CD179E03907180FA4440C60206F3B4A65B56269C22F461FFDBA6FC3E1338802005E0646EB7';
    i(26) := 'C6F76285A01F36031B612FEBFD25FFEFD36C210A40DDCA2C7712220AF8603BA05BA9DD29F93A8B884215807B9F776520B05E757E7DC5E54D4561844CBB6D0762FFCBA692C9FF013B00370A2DB3022C10724D67865D847571BFE4EB3D4F87A4220033F055';
    i(27) := 'EDEF280E409C00B866ADE1F180B2FC4FF1872E004E628020BB05D931E88346A606EDE29F76C9B7B185380207E04EA9190F48390A60FF131280874EDE55C6015E311EE0A3187DEEC4B3671694458F2D9A251201C863804480AE933797C541AF582AEC9845';
    i(28) := 'CF51E07E85EFF98A6689C701B86D30591FF08A45428E59F6B136C0FE8CE5926FEBAAB85D7B4A0290BB00B16CFBCE7E800C08B24828849E7956D6E8FDD37400EE1B4E0605991970ED029C8D0554ECFD65E92FF93F5201F8D2D4715EE0879028C0B1E22EC7';
    i(29) := '025CDE35B8CA96E4873443A40290C7809E97063CBCC6F4606431C02E38CA4ABE4DAE1F7AFF881D801F1720D38287D7110137741C0D0656EAFD73FBDFA3092216006F2E00117049AD31C02E342A13957DDB7940E40EC08F0B40045C72A7C6E26F578C15EB';
    i(30) := 'F4FE8908807501AB5E7E1822E02A06D4351B20D6BFECBD18F94FCC0114EB02F6108168C96AE8FD572ABECF5D7EDD89098065D5DB4FFA5E049822AC899B3316BFACF7AFB2BC7827EFFDBBFCBA1314007B72F0975E45E0E03A8B856A8A0133147FD51387FC';
    i(31) := '454504A031D68DCB25C2EF43160BB16CB8C90820B9BF5DE5DAE0C0CFC405C00E08FACF78B26C980D44B366F8CE14AF91DC5F651A5136FC30EDA7C001F88F020512050E6E709EC0F42C4E58FC4B15737F339D0202D07814F0BFC55366060E9821701D03AC';
    i(32) := '5BA87AFBB1BB587F6502301605FC2FF69043450E191C9C821F4D50FC4F2B3A862D8EFAD2E9008A03449B19F51D1E2F7675F4201254A553A1F88B11FF2AC5DF5CFB2300C188C0966972C797B800160DD5822D7EE9F9DB1573FF172CF7552E005604240A74';
    i(33) := '1BFB007D1B09982A9CDA018C157FD599822FC8FD08C0990BC2343128381E0964AA508480BB125FC46249E6AF5AFC7759ED87009C77013D2B02CD5A423970F400373081ED9FB4F8D7D9E883005C240262097FDBB808E006CA727EF1F7CC541FED1764C4FF';
    i(34) := '01BF4504E04322B0178408146EE07F378C797385998273E30079F12F4F51FC2CF6F1401257EAA3275967C20BCCB1AC0E8CB9FAC6988563EDD797C4B4DBA6FC345F8A1F01484C048485BE3157722168F5B55E5FBD09DB83E24700121301E1D2512E046F47';
    i(35) := 'CE00287EC600148C098C230B88647C4056123250F83ED6297E1C409D4EA06D464B4C3B417E401CC1387799EA43005C8840B1CE3C0BF643EA1E232896F776294304C0A510C81EF395B083D860E40864D660EE44C375B76758DE8B00781401396CA2CA11D3';
    i(36) := '0DB7C6C948042E1FA5EC0AC4EEAFB2B10701605CA0CC158818C878412BD2B10219F03C1DE7E8D9C227EF23004482E9C4E0387C6720AB2065D6E36DFE98CF1DCDF543F957C9F99CE4830004230299A97EFA6C783141444006105BC761B803E9E9E59E0A47';
    i(37) := '0BC61C2F9CFE7BABDF33370ED739C01301085104643C602D3A37709120B406A78388AEA717A5E0E521FB1FFA0B171D90B237ECF5476B3300010856088ABBD064E9B4EAC94810E606231B2E825088823C5799699002173B2F0FE9DDE52583D6A8D83FBCD9';
    i(38) := '49B2FE7A5EF8F4FA08405442B06C1D419BDFC6D46C1919E81B9DD700084094B1402281DC927A91DF4865BAB6F0B1FB080042A0ACF0D7EDCD5B00014008942067F33FA4F011006D630422041DA5BF829E2DFC757B1C1B20002A8520CB9FEE98D14D2C35B8';
    i(39) := '02C9F50FA5F819DC4300E06C3C1011B86DAADDD13626F6C76C3EBD3D020013884116A933909E7ED7F6F48CE6230030634C90C74D13EE0223E9D9BBF9E3993CD3D32300E0561064F0F063FBEC7B20B1677BF867F6798F820704A05951E8D8A85038849BF6';
    i(40) := '79710A81280ABCE8D95FD8E77D5BEC0CDE010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000038E0FF020C005F512661DFED1F740000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'markegood.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 13;

  -- Synergy Sales SOlutions (14)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000012514944415478DAEC9D7B7054D51DC77FBB402004904045A0E22401';
    i(2) := '45016B98564B2B5623B6F68156ADAD74A67F38D2B153A7F8EA685B66946AAB9D3EB4B4F60FFBD0D2D62AD83222B655A4988AE2A0D68A058BB482293E9A078F80098F04939E73F7EE66F7DEBDC9E67177EFB9E7F371CEECC3CD92DCDDEFE7FCCEB9F79E2B';
    i(3) := '0200000000000000000000000000000000000000000000000000000000000000000000000000000000004525C126B083CF5D58375EDD5CA2DAB9AA55A956ABDA78F77FB7AAB645B506D59E566DCDEA75F5AD6C350400E6075F877D996A57F6F34757A876';
    i(4) := '9B1241035B110180993DBE0EFEF5837CABE5AE08A808100018127E5DDE3FE296FA4381AE022E5512D8C2D6450010FDF0D7678DEF870A5D01D421010400F6851F092000B03CFC48000180E5E1470208002C0F3F1240006079F891000200CBC38F04100058';
    i(5) := '1E7E248000C0F2F02301040096871F092000B03CFC48000180E5E1470208002C0F3F1240006079F891000200CBC38F041000581E7E248000C0F2F02301040096871F092000B03CFC48000180E5E1470208002C0F3F1240006079F891000220FC96871F09';
    i(6) := '2000C2CFD640020880F003124000841F0920010440F89100124000841F0920010440F891002000C28F040001107E24000880F023014000841F09000220FC48001000E147028000083F12000440F891002000C28F040001107E24000880F023014000841F';
    i(7) := '09000220FC48000100E147020800083F12400040F891000200C28F041000E127FC480001107E40020880F003124000843F4A747777C7EB0B9948208122926413D0F35B84FE6CEBDDCF1AA800CC0B7F508FDFED7FA1EF3593461F735A94BF7AAFEE1D4525';
    i(8) := '800008FF4004A0C35D35EEA8541FD72173261E96E3CBA314F8023F8FC76A8A2100248000CC087F60E0DDE775D8EBA6BD2BB3271E71EE1BFF99B802604E0001D0F3F72280F34E7C5716D61C8845E84B2800EB259020FC66F5F80B6B0E3AC137ADB42F94CB';
    i(9) := 'D656E70D3E950002B0A2E70F12C09927B4CB5573F6C636F8251680B5124812FEE8043F3BFCE9C7E5C3DF939BCF6C946F9ED514FBF03B7FB7A715112B771126097F74D1E3FBBBCF7D5B3E3CF99000124000310A7FBA87CFB474AFE73EAE9BD62677A9F0DB';
    i(10) := 'D0EBE72D01900002B0B5E7BF6266AB2C99DB427F8C041040DCC39FE9F0F4F85FB5AFD5B62801ECB7387BEE1671B707124000D6F4FCBAEC3FFFA436FA5F2A010410D7F07BC7FCE99EEEBC69EF52F62301046063CFAF67FB17CFD947D4900002887BCF9FF5';
    i(11) := '84D3BADD717FC5882E622651D8096097049284BFB42C3AB53576C7F353092000C2DFD71C80EAE6F4E9BA7A971FF49090C81F9F1E2B0924097FE9D0C7F6039500028871F87DC7F8BBADEAB8A3F2E1291CE28B041080753DBFE6A29A834408094462C845F8';
    i(12) := '43AE00726FC599F17FE0D3FF0DF5DFDD756084B47726E58DD632E736EADFC0847B67D58ECAD4E36422E70B5A84D3810783B1A71227087FF105B068FE54B962E2A621FD7736BF532E5B5B46CAB63DA39CF09BF2D54BE73A1DF0642269A2008C954082F087';
    i(13) := '1B7CEFE32E75FB8B0756C9A4B51F17393AB861C0D63D2365C37F2B9CF0B7770E33E30B97F03E4EF47E6B8E008C944092F01797EAE93364D20993454EBD7CC0EFA143BFF88929B274E324E77EA44B7CE60422CD70C21F7225E0B9D50270A85D2CF2CAFDFD';
    i(14) := '0EFE83DBC749F3A1E1BE123AA8B48E7E4590C8990348983A36F54BC0884A2049F88B5D019C9CBA33F64491D30AAB0274E0973E334996BF34C10D3F50095820805885DF3D0020530168E62F131939AECF5EFFDA0D27C8D69651A97E3291BFE9C933A72513';
    i(15) := '4E0B7A5DA95AD2D752BF6FCF6BC46D899CF1BEF73112B0440071BD565F8E0074F8CFBA21F0B5BAC7D78D313E9540684330C21F5287EFDBFD97BA7D64FDD3FE17AFFC94C89E7F651EEAC0EB09BED4EE3CEFECB877EC6CE6D8DFFB8B2602E606624264F70E';
    i(16) := '24097F04F8CC2F334381DCF00395804502B0F612DD7A4270C15D797AFE44E018D9D7926E4B18D244725A0CC6FC464A2049F88B47AF4B7CD77C42364FFF1E3D3F95807D02B021FC7A06A0A98F5D780B2E5E240B2EFCB4DBF38BA715D6A34A9EB1B4490D09';
    i(17) := '5826006BCBFE00AEFFC65225814FB1219040FC0540F8832570DDCD4B539580EFBFFC63E7A01E1F90402405606BF89B9B1A0B7A9DAE0296DE7E87548C1943549040BC046073CFDFDCD858F06BE79D7D8EFCF8E7F7C9EC336AC5BB5E6ED0EAB9BED5870109';
    i(18) := 'F4C230C25F1CB24F069A79DAEC827F4E5700BA1AA8183356FEFDDABFA4B3B3335DEBA76E027E8EF2DF28F471DE8B66CDA85EB77D6743636C056073CF9F16C088B23239A76E41BF7F7EE669B3E4C2859F9532F5F36FEC7C5D3A3B3A0A1201624002BD7E1F';
    i(19) := '087F4881F71C02DCE5DE8EAEA89007D7FC6550EFDDDED6267F7AE48F52FFE413D2DCDC8400E245510F1B1E46F88B878E5E87EAB9F5D8BE72C28401BF8FAE02E69C512B0B2FBB5CAAD490A26C449933B9D8D1D1919DF4A21A1EB198590924087F712A80EC';
    i(20) := '4AE0A2CB3E2F5FBE66C990FF9B7A68F0EA3FB738B72D4D4DB24DDD470054022513800ABF0EFDCBAA555937E6EF450093264F965F3EF070D17E175D1DB4340DAC33D9F6CA1667C8D1B0EB75E77E5F67F1218421A541B5B94A02A15D3E2AECE56596D918FE';
    i(21) := '3E03D9D8281BD63D5EB423FEF41A84CE3A840360F6076AF35619F5EBD739F72154AADC0CDD605C05A07A7FFDCBBF61EB2797E9F9D38FBBD21540EA2AC07354B0EEB8FBA7668B4C55157A22D2998C742B8CA09E9F8A605054AB2AA0218C370E6D1270D68C';
    i(22) := 'EA1FAB9B5A3EBBB401D237A93B4D8DFF93D36BE7AAE1C01463FF247D8C427A325257180DAA2238D4DE8E00869EF1DB77363C6A4C05E08EFDF75B9D776F05907EDC953B17F0ABDF3F1CABBF5BEF9E5CF5BB15CEBC41BEE02382015319C65C405887025FC2';
    i(23) := 'E755D85CC0DAD57F88D5DFB4F0D2CBE5DEDFAE94B33E3A9F0FD8804C85320450E5FF7594FF3D2556F65AF7DD597597EE0C776C7F553E567741AC4EFAD1C729CC3FEF7C395E0D0BF484A1737C02730383A5358C6140581540159F5761E852F98E5B97C6F2';
    i(24) := '6F3BFF139F94DB7FB83C7725648854A6C21280F5BDBFEF7C7C77699F7C67F7EBDD69CBBF7F672CB7830EBF23819AE9CE9551BD673172F662693315960058E0A39FE8E302748B237A78432510CD4C71C58922CF05F8D7FAEB693FF9C19DB1974095AA04BA';
    i(25) := 'A904224358026865D30E0C3D1488B304BEA32430D0A3122DA7D524016CE1F3EA632E20B0A52A81B8ED1ECC96C037BFFD5DE7B4E87C950014375361ED063C4F98082C88A02FFF4B2F3CEF1C27A08F16D4BBD5E2843E157A7CE50479E1B9677D973863B760';
    i(26) := '207F336937E0D37C5EF92B81CC71010554024F3DF9B82CBDF15AD9F5FA7F62B73DF42EC2B33E72B6B36740B2C6FECC051437536109600D9FD7D0A0C37FDDD557C943BFB93F767FDBE26B96B0EA71893315CA1040952A47D430A08A61402F15415625D073';
    i(27) := 'E5DFA05B91AD5BB638938363C68C959A1927C7663E40AF6DB8ED9597732A256FE504B262F5BAFA55C608C09D077845DD5CCF673774E8A306376FDA182B11E86303D6FD796D66B5630490974B55A7DA6A9400F42FAC24A00F5E98C7E7E79F0BE87F25D033';
    i(28) := '3770A85D89E0D9679C3D05FBF7ED7326D52A274C34727BE809CE0E157EBD7C59A6DC112605B3581E56EF9FBD9D43C1E625C1FAC23BD1E53B6DD8779BFB4AEF63BDAEC0E967CC755AF58C19465507BAB2F9D2650B73A58700340D12F292602C0A1A511148';
    i(29) := '8000BAA52F21F43CAF25A0C7D9151563062C846AF73DB458C2E49E1F7E4F9E7AF289C02AC842CC5F141409945600438D9648F5F4931D19CC9B7FCE90CEE06FDABC407E74CB310450C4F0174D0048602844902B00EF12639E97070A60E876B1773BD73798';
    i(30) := '37FF63835EDCB4EDD07A79A7E52BB2ECDAF7CBD1C3C3F206DF2211C4EFC2201A7D91037DB103757791A42E7E0086F3D69BBB65F3263D19F9B0B3E887AE100672D462F3BE5BA4F3D85BB27BD748D9D338C266011435FC45150012E8A314F31C09982ECF32';
    i(31) := '8FB38F24F4EC1548E43BAA50D23F27BD1C6D5878CBFDF724E7F9CE8E4E675FFEE38FAD71F6EBF74704878F3C2F7B0FFCC4B9DFA2C2BF6BC7A8F406C929512D1040D1C35F7401208178A3C3BF55896063FD06A9997EB29C50C08AC74D7B6F767AFF74D85F';
    i(32) := '7A6E4CEE1C801D022849F84B220024D0BF8A207BB2A6B78AC0FFBCFFDC82BCAFEB6FF35416BE4A443DD6BBF536ACFB8B737BEAACD981D5801EFBEF3B786FCE94D4B37F1D6B9B004A167E4DC9160471FFE03A61ED80D8A2E706BE75C312E7AC462F5D5D07';
    i(33) := 'A571EF4D39CF55BEEF986D9BA8A4E12FA90090C0C0E706F25504E996745B22E96901AFEB6FF3FD7C32D5F2CD19A4D63BFC8F5C7BF595BE331A75F8B504FCB82B0478CE1224FC31140012B0033D14587AE3928C040EB6AD76CA7F8B8944F84B3607C09CC0';
    i(34) := 'D05504BE1587BC154240A530E0BD01DEBD1179CF6190CCDC40FAB7D11384CFD46F90D9B5E3E4D0B1AF07FE7DFF7C7EA6B4B7B7C5F980A0C8843F12150095803D1C3761BF74C88DBD570BED6DF4FC360A00098453190C7EFF7F4065E159E128DF8A46D96D';
    i(35) := 'EA49C7E49A6FEC95F2D15DBDFE1D6D6AB8D04DF8ED1400128827534FEA54E1DFD367F8E9F911001288786591E705EE158F72E71CD29C79F621B9F1DBCD05857FC4F013093F024002714007FE8AABF6CB158B0BBF4AFC6BAFB6107E048004A2447A95DEC0';
    i(36) := 'D57ADDFDF5E9F5FD75AB9979546E58D62C1F3ABBBD5FFFD6B18E93083F024002A65239F1987CE1AA7DF2959B9A0774545FD35B13097F91196EC2D6D41BF27317D6690918BF9E80E96BDEFBD62970837FC1C507E4431F6D1FD47BEFDC31521284BFA818B5';
    i(37) := 'BDE3B0A8485C04505EFE9ECCAA3D2C1F54A1AF997964D0EFABCBFF6F7DB5CB39BCD8F9629A79209051E1374E00264B2070C51F4F8F1A65A64EEB90EA538E3A819F3DF7F090BEF7E6FA5365F5036D260BC0B8F01B290053259016C005171DC82F80081EFE';
    i(38) := '525EDE2553A6753A33FA5354F8C3E4D62553E5F0A1A4A9023032FCC6CC01983C27E0EDF9175CC45CA697BF6F1AED843FA74F32E7D87F63C3AF499AFAA561EF407CD8B8DED8EB031A1D7EA30510750978F79B73D5DBFC6C7BB95CDED95D26EE5A43FE4309';
    i(39) := '093F02A012882F6B1F3272874E2CC21F0B0144BE12F034E8E1C947C7C9FEBDC3246B01A1C0730A083F02A0128811EFEC1E21EBD68CA5E747009648801220839EF15F797F65CE447F660EC043E05988841F01500998C9A30F1DE75400F4FC0820FE12C8AC';
    i(40) := '6E4B09A059755FA5B3DFDFBFD6A0E45CC588F023002A8198F1E2B3A3E545157E7A7E0480042C43CFF8AF54BD7FBAABF7FF973BEB1F814A20F6E18FBD009040345879DF78D366FCAD08BF1502888A046C9C01D8B76798DCB56C922AFD2B02570BF65F6D98';
    i(41) := 'F023002A01E3D9F68F5172F7B2E399ED47004840C4A443DC07DFEBFFFA9E89B2E26713E5C8E161797A7EFF9586B20F08286125605DF8AD13009540B8C1D7FBF7EFB869B2D3FB1B8695E1174B3AA5BC84BDA848FACC3FEFEDF77FF566ACB6A32EF137AEAF';
    i(42) := '70C6F9A91EBCA7274F7DC112799F97CCFFF73C4FF811401C24106701BCAD42BFF3B532679F7ECF183F61A200AC0EBFF502085302DD59ABE63AB75D6901EC36AEB4DFBF67B8ECDC51E6045F9FBBAF9FEB19B3E70F709000BCC197D209C0FAF02380102510';
    i(43) := '2480EA530EBBCFA72B83686D8BFD2ADCD901EFEB2B63A800083F020857023E01040C097CAB05474C08FE5C26F23E9FF006BB8F129F317F3448B20952B077C00A083F1540712A017FCF9E5BF2F70C01BA0DFBC22472BE39FEC7BDF7F0F4FC5400540240F8';
    i(44) := 'A9002CAF04324FF8EEE47914852F46FE9EBEAF9E3D02C7F7137E2A002A017A7EA002885225E07F41C4BF298982BE38115ACD87F053015009D0F3031540842B01E3BF40D1BB861FE1A702A012A0E7072A8008570240F811001200C28F009000107E048004';
    i(45) := '80F023002400841F01200120FC08000900E147004800083F024002849FF023002440F801012001C20F080009107E40004880F003024002841F10001220FC80009000E107048004083F20002440F801012001C20F080009107E04C0264002841F01001220';
    i(46) := 'FC08009000E147008004083F02002440F811002001C28F000009107E04004880F023004002841F01001220FC08009000E1470060BB04083F02004B2540F81100582A01C28F00C05209107E0400964A80F02300B05402841F0180A51220FC08002C9500E1';
    i(47) := '470060A904083F02004B2540F86348924D102FDC80D6A9D630846FDB40F8E3C9303641FCD8BEB3A171D68CEADFA8BBA3549B37C8B75BAEDA1755F81BD8B20C01C0BC214195BA59A6DA95FDFCD115AADD46F01100C443047A4EE012D5CE554D4BA1366B9E';
    i(48) := '408FEFB7B8A5FED3AAAD51C16F65AB0100000000000000000000000000000000000000000000000000000000000000000000000000000000000C31FF176000417DE44DD6C7A67E0000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'synergy.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 14;

  -- Sakoro Speakers (15)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000014DD4944415478DAEC9D4F522447B287439AD9CC6AD05BBD5D679B0E';
    i(2) := '30B09499CCBA3841C309BA6AF7765027004E009C80E204142720DB4C665A523AC058A7966FA5D2EE2D5F3A784D23ACA94A8F3F999199DF675686FE4056E184FFDC3DC223E27B0700A3E57B4C008000000002000008000020000080000000020000080000';
    i(3) := '200000800000000200000800002000008000000002000008000020000080000000020000080000200000800000000200000800002000008000000002000008000020000080000000020000080000200000F0367FC704F1F9E3E79F8AFA4BA1FF3AF9D6F7';
    i(4) := 'FCF0CBAFE7580A1080FE3BFABEBE3ED4AF3DFDE72620008000F4CCE1F735A27FD0AF7B58051080613BFD51FDE5A33A7C81450001188FD31F11E50101184F3D3FAD5F9F88F480008CC7F127EAF45386032000E372FC33F7C6321D000280E303200003AAF1';
    i(5) := 'CF48F501462600B5F39FD75F4E1C33FA00E311004DF76F5CB7B3FAEBFAB562A80102D09EE3EF69BA7FDAE2DB96EAE8BFEBD7D50FBFFCBA66880102D0AEF3EF6BD4DF4FF8366B75F8CFF2B57674223C20001938BF44FCCB844EBFAC5FF7B5C32F193A8000';
    i(6) := 'E495F28BE34F133C7E81D3030290AFF317F597BBC829BF44FBEBFA75451D0F0840DEF5FE838BB7BC57D5AF8BDAE9170C0D4000F276FE8946FE18CE2F517E8EE30302D00FE7975AFF26D2E32E52A6FA2A541BF63782C59160800074EBFC65FD9AD58E5845';
    i(7) := '2C47C4D9DFB9AFC7846DCB4E100040003A70FEB53AFE32F0B314EEF9C0108E070304A027CE1F14F55F38FD2797B6D108000178955E8736F85CF8D6DD5AC79FA8F30320002D3B7FC8529FA4FCC7B5F3979E5987EC2928182A8000B4EFFC7B9AF6FB3AFF4A';
    i(8) := '53FE158E0FD0BF0C20A4C34F9CFED0B2BCA7A9FE25F53D2000DD477F71C489E78F2FDC7363CFBAE17BA5DC4B008000189D5F26DB7CF7F22F6AC79F19DF2BA4CC00400012D4FD499DBFA343430010800675BF4F345E199CBF70F177103681E3C10001D8E2';
    i(9) := '98A79E75FFD3845FC3F798B8789B88B639F967FDBAF65982046883EF32727E89CA8F1E8E290EF7BEC9845FE44D44AF05E8D6713C1890017873E919950F3B72FE4A9D7E116B4311C0280540D3729F36DB464D3E919D5FD2F96B8E080304201E3ECEB96C72';
    i(10) := '8047E4EDC317D4F38000C48DFEE2A08547FA3D6BC9F9392D0806CB771D3BBFD4FC8F1E0270B82B126B59F110F811975A66703028900124E0D4C3F9AF1A38BF3CF32E30EACFA8F3010148CB8987635E34C82A42D6F96552F198997D4000D2D7FE56276DB2';
    i(11) := 'C147DA7B7D3BFC16CEB089A8293FBE2B36E7037EEB9CC04A5FEB7FFF5ED14300E39803A805E08B31FD97269BC31DCF3C0A48FD4D9B887638FCCBB302AD62546A16725F0B4239B40157DBA6D0BFFB6447A62736A86A1B90890D4D003C1D75EBC49FA6FE5F';
    i(12) := '3C53FF60E757A7FFE8E26E29DEDC4778DDD7EC401D3EE4F0D4CD45ACF7628BDA0E4CC80E4000EE9CADF1A749F4974EC2D3B69DBF1EE053D7CEE941E204177DC80A6A9BECE9DFF7C4C5DF702582785BDB8109DA3E0A80CED07F891CFD65903DFA0CA6FAB9';
    i(13) := 'C70111FFD2B57F6C98D8619E6346A08E7FAA8E9FFA7C854A0571811BFBF37D07EF696DF92D1B74DFF99C18FC745EA0CF20AF5F775AC2141DD84FD2E8C7FA339C67E6FCE72AEC67AE9DC355C4F637F5FB7EA95F135CB93F198075F26FB6AD0BCFB3E167AD';
    i(14) := '59C5CA38C8733B3DE869C9B2CB89325DE1B871DD9FA378A519017304B966009AAA5B9CBF6AD0827BE6F151E61ECE7FEED29E23E0C3BE6603938E9CFF544BAF1C0E513D555B70A06BC6258035FDBFDD212813673F406469EDEBAF07D58DA7D0B48108D283';
    i(15) := '4E46B6E9FC372EFCB296146541EBB640009AF3D1F8FDB1A3FFDA5AF7EB40EFC380BA6963E0EB1CC863C636D96BCB1608802DFD2F8CA9E26A5B3BAE3ECF1AFDAF2D5D7E3D72FE56444067F91F5C3FEE4D400432CB00ACCE7ABBE3FF5BF7115496BB01B5BE';
    i(16) := 'EDE300BA4C5807DFB97E5D9A8208ECA0CDBD001FACB5FA8EFF6FFDC35E189C7F92A0BEADF4F5F9C57FFBA73AD4B7F60884A4C077F5EF701073465CB3A1490FC7B888C08A7D16DD0B8065F0EC4AFF8F8C0E53359DF8D334F72ED2EF2C22D6A885F545CBAC';
    i(17) := '643645E0FBCACF8BC31E4772FEA98BDFE2BC7A2586AF4531A6D8C8C4E07B96083B1200EDD3B70CEA72C7FFB74E265E5B52E808D158C4E6C2B23EAFDF2B6BD9579A819C053AC191F42D84B6CCAA305D46727AB1CB6DD368AC7D179F5CF8B5EC7B31059139';
    i(18) := '003BD6BAF1F3AEC1EDE1904D53FF904827035B52EF5948738EF4FBD72FD9FB3057C709990F0815B3D0C6A7CD190E12814D2DCC225EF54B9CF67DD3BFE10E41643EA02301B046B2724B3661AD97178699FF90B5FEAB7AB01EC4AC35EB67494670E0FC6F13';
    i(19) := '92E8ED7DF59946E0902C64A98E7F1E927E8B988AA8BAE7CB5FAA80CF13431011000FFE65ACFFD711C5E4DE10FD7D07BB44FC790AC36926711820022701833E24F5179B1CC7ACBB7527E4418312715B29C05D901D0880A5FEDF35D04DAB098673FD4E0206';
    i(20) := 'FA22A5F1D4897C45C06BD06BBA5C78BCDFD3674D6513B1859647BECF3F210BC87B0EE0F788CF2A1B0EF6C2F94D342DDADA8EFA42047C22EAA7967E662388650BF698B9DD4BC564015D0B8076ECC5AAFFADAB099F1B7E9F8FF34B6A3E6FF38FA522E03393';
    i(21) := '5D683DDF34FAFB2EC3CD5B3EA863E699157DC2F5DBCB00AC02B08E14FD1B67009E0362D6C5BAB246D72B8F1FFD98D8414A9DB46C5B107D4E7332092202D0223BB6E916C667ED1400AD07F73D067BD9A1992E3C4A014B44F7BAA7B10B43E8AACB85C78F7E';
    i(22) := 'C4FDDB118049C4675904A04AF8F9AEBBFCA369E4B3CE3D144DF608BC38B5D7C2A2E3D37BAF120B2202D012BBA2EA3F13088035FAAF333990D24784F61339460E8268FD0C0587876458024474D6A602F02FE367C8E2345A8DB8D609B026BFAB35FA57996C';
    i(23) := 'B459241E4F0840CFF8BDE1F759D7843F67F43BDE2718F0B1776DF65D10118081634D79AB8C3EBB75C0A7688019BA20220081BC1B92C132BB98A34A30E0FB2C88D6BFCDE83B02DBD80E2C9333B70DBF77D74CEEDCF047AB86FEC793DAFBC77745E79F61E0';
    i(24) := '82880084603D7EBBAD670D8812137C9D07E85A1011808123EBE439DD58AB1B630041440002D2464BD8901A7981D9FE2388FB39950108A20D5601EC75E347EC411D8D000C076BF43AD2765904601C8288000C1C9F75EC1B04F12F8248168000F496D2E367';
    i(25) := '26B95DCF8D200202E0816E24F169673D1BE829B33E82B85FDBE212774200FACAADE7CF0DEEEAA900413CE5D86D04A0AF835E067C152002438B7ED701B6E0BCBD1EF11D267846A357482D2B9367C739350905DAE38BF3BFA26CE19ECF07E42A2E3280DE64';
    i(26) := '010B17D6452633E18F038A8021079E8A983EB03A4006D0B7A82711EFD185EF122B3502AE7A6E8F07177E7496DC9178CEE84200C6520A0C26158E28882BB543C908CB8BBF6182BFF2C79FEBD57FEDED152E4E8BAB3CE37FEAE7FDA37EADEA67FF5FCF6CB1';
    i(27) := 'AE3FF7FFBAF0DB79FF5BCA02B16BFDFA4D9ECB482303C83DFADD4518F82FD91C5C79D5B78C40573962CE6D5CF4D10E08C0B80440D2DE07177FB34B2F85A0B687944553041101189B10C41EF8BD758044B640081080D1A5C0BD750004110118AB08C87C80';
    i(28) := '0CFEBDB10B81F63A5C8EDD0E08C0F844A0501198247C9B5E38406D0BB1C19D4B7BB2EEC23DF711548C3E0420B708789678F0672F043A517AE7D2DFB32742406B310230BA6C602304736D554610290D10800CE706A41E2E12BF95A4C1B35CBBE9341B1041';
    i(29) := '3C4AFC564F42407B3102909B03C8803C71E96F9B59AA10E45A164C5408DA10C4792637352300F09F2878DA821088F3CBE4D855C6B6986A66945A104B15C48A118800E4240432F8A72D0CFEE3CC270911440460B4422069F099D6C529FB078E73DE69D7A2';
    i(30) := '10900D2000A3758079EE11B0253BAC5504981B400046E7008B7AE0CFB0C313B25C3867D421006373805E88008288002004E91CA057033FB110C8694487340F21007D7080B331A7C009856059DBE298918600E4EE00858AC034D2236739B710B72C049403';
    i(31) := '08406F1C60E29EFB08424F2392B4F7A0AFCB6209FA297A298808C07885E03C425950D683FEB0E776D85721988C591053C0C52019A31B5E0E9CFDCAEE974C74C3529FEDB052119BAB13FBB2D9B00408407F067FFD45067F48EA7A39105B5C4512C429238B';
    i(32) := '12A08FA970C8515C8743BA9823F09CC6AAB6C57B461419401F23A0EF4CF6C9C06C310FB045D1F7B2080118AF084829E0D3F37FA4B3EA43B385AF087C623421007D8E7E3E75F064A082788120220063C327F27D18A8209E3BBFABDD270800F475D04B0660';
    i(33) := 'DDF2BA3F6093208808C0E8B8377E7F316041AC104404606CAC1000043184BF8FDD003FBE2B1E8C91269BB65A2903EACF8F0C7EA5440010002B134C301841AC10440420B5831403DF4C8220BEE28F9F7F2A0CD9C2FA875F7E5D6D7996CC3B345D7EACEA67';
    i(34) := '550840FA3ADA32192403210B01D05D729D7F065D91183253D77C57A69421DBB222CBAE4669F84A7AA80B9380F6DD653945486BBEDBA446EEEDC4A29EA33024FE4CFD0608807DC07FCCE8B3A758C7B60A624E4B69290471D02000CEFD661DF07A74570E58';
    i(35) := '37B47C4610BDC4EE1D024006F0BA26CCA1FE2F12FCAE6312C4A6BF6B91783C21005DA1135895F1C74E32D848E2B3BD7795680077BED558B7F7EE25B087550076D5ED1304203FACB5E0E6D4DA2EA3BF350BA99A2C5F7A0AE2B4A78258261080AAC3718900';
    i(36) := '7872EFF133671D2EC3F99C0AB44C38F0C4F9CFBAFAE3E9ECBF35B2AE9A5C16F2C7CF3F599F5B6D7956767B0F1080E7A8B7F454EE9BB6239F1E0BE69346DE2616C4D32E96E1D4FE3709ED6116961D4299A24441002270EBF133FBAEC55366B5CEF589FEA5';
    i(37) := 'A559274010EF3A28052E9D5F2F42D38CC8B2B2209D7BEB5862B2E359084064A4EBCAC7E072B2CC4D0BCE3F09109BDB967E469CFFA12D11D0D37DA73ECE6F68E7B638ED2E917D17F1590840E432409CFFDAF3C765122CD9C0D781FEE0FCAEC9AA3C6FC3F1';
    i(38) := '15C4FD3644406DE22B888DFECE75CD1EBBCFC23207502100FDC9023691E231661D2C4E54BFEE02CB0CAF5EF24041DC884091C8F92F036C521A8E47B73639955BC464CF2800BF2100DD6401219B2F0A1DF83721835F1DFFBCFEC72FCEDEDCF27AB02F037E';
    i(39) := 'FE2A2012EDAB209E46747C693A7A74614BB08D0E105587B594175B77013AFB64628900742302922E2F031F2303E78B446FCBF9F33AC02FD5F1CF5CD8CDB82266B3405B840AE2D3E59E5A1E4D021CBFD079964717B6F7606188FED6B9855D63C6DAA6DCCA';
    i(40) := '1C003703BD1181D50963D6B1A5FE51FF7C6370EC477EBF6837E16A1912E3228D4ACB8A9D9370FA3738D2343CC67B8B98BD6FB2F6AF19C017675B5D38AE3380E596E759C44B5613DE2300DD8AC0BE469C3E22916E16D1167B6A8B9835FD5A05F1B5287ED0';
    i(41) := 'F7893D7FD0F86AB4DA59A7C6390649FF7FD8F2BC42034AE3BF5FFDBC591B03850341DE4E7FE5BCBD99EBDF6DB2654CE7DF9402B52D8E9DFF4AC45BE5C1C4B5D31B3F37DE8B68ED6ADC9569A5D8B5C91C404BF301B31E7D6489A6C7A904D1253E9D266136';
    i(42) := 'D4F82AB53A5A9F7B641FBB564BACD790956D198712A0590A6C4D09BB72FEC3A635EEC06DE1550AE9CCBF75EEA7ACD3F5C388E9FFAA7EDE0119409E99C03AE3817E90DAF97B9615F9CC83DC789438BB9615A7C6E7DDB7692404C036F045E9ABCC3EDA3C76';
    i(43) := 'CD6FB045AE827861B5894EFC596B7589FEBBD2756BFABF4400F2150149B3253DBBCAE0E33C7D164B7D1BD916A5DA22A7137044908EF5B2508BF3CB8A8FCF26AB8B06A262994FA876341321001988C05AAFE7EE2A1B586B843BE8FA386E59CB97CFE1FCAE';
    i(44) := 'E78E8D44CEF7D6CE47ADFB7D52FF14D1FFBA6DA321000111B07EBDD77AB86ACBF175909F67668B73CD06CA0EDEBED2A87FEC390722CEEFD35D38DF212C13675FE25CB66D3C560122A12DBF9F5C9CAEB5D7A9FEA67B6EDD033BC8A03F73E9D7F72BCD8416';
    i(45) := 'BE0FA89D549C7FEAF1A35775F4DF25000F461B2CEB671E2300FD1782972DAC138FD472AD91F4B3B3ED5BCFCD0E12554FD416315B9CC5E16F8D8D3D319DFFA9A578DB611D1AFD1F8CCFDDDA4A8C00F457100AF73C11B4ABD75F067435C47B07352BF8A836';
    i(46) := 'B06606AB8D2006EE6C8CE1FC8D1CD5D8F7FF94CDB4D5FB8F00402ED9C19EFB76CFFF668FC03AF624A74EF85D06387F93D47FEAEC8D52B3FAB90B04002011DA9177E7FCB7133F755AEE48FD7D3A09B76E244A0DAB003006E797798890B304D69AFAEF9A84';
    i(47) := 'F539C3E1BA4BDBB01B1086ECF89B35FED0951971FE6AC77B4D9CFDA4227966A74D6564003054E79FBAF023D536F579D95068AC5CB471F43719008CC9F1272E5E1F42D3C93971FEC21AFDBB9AF8430060A875FE898BD780D4C8F93D37113D3D3F07BBB10A';
    i(48) := '007D767A89BAE2809F5CDC23C49A3ABFEFB1719D74FD9101C0109C7ED34C244E9FE2B2CDA6CEFF740B92C7F3834F6B4600604CF5FCE6428D142727BF76CCE3063BFC5E3ABFCF67E97CE20F01801C9D7D134D533AF95BAC5C83A5BE173C78661FB285F82A';
    i(49) := '27BB2300900B938EDEF7CA1295751F818FF33F6518B9191D0180B1B2D67ABFF106A3C04D44B39C527F0400C6CCA27ECD0D513FC626A2658E864000604CACD4F14B43D4DF0BA8F937757FB6F729200030062AADF317961FD225C71B17B683F03867C32000';
    i(50) := '80E37FDBF927EE79FBB0EF8AC43AD7BA1F0180A123F5F6B525D57FE5FCE7CE7E3FE06BE73F6CFB886F0400C65EDFDFBAE736DBCAD3F10B4DF927819F65DE07E74700A0CFFCE5F0545FA77FE1FC47CEEF7E80D7CC72D8E58700C0D09C7DA5AFDFDCF3059A';
    i(51) := '51226CC4A8DF3BE7470020272E5E39FB13BE757C03C797487F1A58EBF7DAF905B603C3E8D03DFC972ECE9E83C69B88C80000BA777C89F845C4D2E4B02F137E08008CD1E937A9FE898BBBCBD0BA8310010068D1F137D7B34D133C5E6AFD79EE4D3E08008C';
    i(52) := 'D5E963DF47F892796E7BFA110018ABC36F8E07FBE0FC2E62B5A6FCB33ED7FB0800F4D5D10BF7F582D577CEEF92D1104C87862000007627FFD6C69B2E8E077B49E51A5C0C820000847394D16791482F9B89CE876E740400E0AF2C34DDAFC6F0CB220000CF';
    i(53) := '94EAF8E5987E69040070FC113A3E0200A4FACEDD8ED5F11100182352D7CBA1218BB1D4F808008C1D99D19723C2EE733D9A1B0100881FE94B9C1E0180F144797178391EAC1C5ABB2E0200F095953AFC67FDE715F53C0200FDE7E28DFF5E6ED27A1C1D0020';
    i(54) := '22DF6302000400001000004000000001000004000010000040000000010000040000100000400000000100000400001000004000000001000004000010000040000000010000040000100000400000000100000400001000004000000001000004000010';
    i(55) := '000040000000010080B7F97F01060093BC4D13C40B530B0000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'sakoro.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 15;

  -- Bankgraph (16)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000D864944415478DAECDD4B561BC7020660F91E9F4C2F3B88BC02C30A';
    i(2) := '225660B382C00A805186D8438F8015002B305901F20AACACC0CA0E946926BE5DA494DB2E573FAA5B60617FDF393A3620A9BA4A557FF55B93090000000000000000000000000000000000000000000000000000B001CF34C1D3F4D3C5C7CFDBB43C7F9FEC';
    i(3) := 'E94B4FD07F3401080040000002001000800000040020000001000800400000020010008000000400200000010008004000000200100080000004002000000100080040000002001000800000040020000001000800400000020010002000000100FC789E';
    i(4) := 'FFA8157FFBEEF2F3362DCFD96FC7CF7447AC01000200100080000004002000000100080040000002001000800000040020000001000800400080000004002000000100080040000002001000800000040020000001000800400000020010008000000400';
    i(5) := '200000010008004000000FEEB926E05B78FBEEF2F3362DCFD96FC7CFAC0100020010008000000400200000010008004000000200100080000004002000000100080040000002001000800000040020000001000800400000020010008000000400200000';
    i(6) := '0100080040000002001000200034010800400000020010008000000400200000010008004000000200100080000004002000000100080040000002001000800000040020000001000800400000020018E5F90F5CF77DCB6FF90100000000000000000000';
    i(7) := '00009E84675D4F78FBEEF2BCFAE7A47A2CABC7C1D96FC70BCD365ED5AEA14DCFD73F56EDFA46ABFCB87EBAF87858FD73553D56D5E3F4EF93BDEBC728B7CFFD004EE2BFD3EAF1DA47B531C7B5FFFFA2397E7867F1DF9DEAF1EB6315EA8620DFCE5413F0AD';
    i(8) := 'FB8300801F980000010008004000000200F8CE8DBE2DF8DB7797E1B8E5AC7AEC267F0A2734CC1FEAC4A1AADCE92439745295351F598F508745F53EABC72873436D7F38F9E7D8F145D372B7F9E9E2635AA7E5DF277BCB31CB154F6A09EF799D7BAF58E62C';
    i(9) := '2937F493C598B2ABF7DD8D6DF16F1FACDEEF414F5CABCADCA9F7FDAABCF90395338B6D5617DA6A3EA6CD9E8F1C8067B103B63D2F2CDCCDD00E9ABC5768E8E34CE759FF3DFC133E809BAAACEBC281F429769E55F5F35EF5FA65AD9EA1CCD72D65DE568FCB';
    i(10) := 'C70C83AADCB03C57B50EFF73F5382A18F4674DED58FD7D15EB7453DAA1ABD7AE972B38AE7E7E51BDC7AA160C67939663DED573C2807D5BBDE6B6206C5E4D1A4E521B53978E3AFE1ADB6F27F9DB3ACC6E6200AE4686CB49EC7F3B2DCF9BC7362BAE5F9F53';
    i(11) := '813FD77F0CA7ACD64E0F2E1106D4D190411207E8D5A4EC4CC4DEE555EF1F3EC8BBFAAF4260C5CE5A52CF792C7359D8AE614D69BF675B4C635BA4B341E77BC4817F5ED88EF775EA3BCB5465BC99FCFFACB660BD4C5793B2935DF6DA66EF382396BEE76DAC';
    i(12) := 'CB6AE0809CC5F6DBEDF992551C98173DDEFB73D2E69749C0F771519575FA90FB00FE5B75C08F0306FF247E5077D5EBDF0C98F53F4DCA4F435E973764595F568F21F50C1DE46355E6E103CDFA2771B966993FDFF4E8BC1F07B4E3FDEBE2EB87388EE13A2D';
    i(13) := '7C5DDB8C7732F03D43DD3FC54D85D2C17F1ECBDC2DACC379F5DAF77136EF2B94F1BE70F007275539570FB90970D290726175FB43FC7FBD12AF329DF52CAC36F7B9F8250EFEBB4C43AC624AFE51FBDDCFF1034E9F7B1ED6200A2FB679DD321B7E4882225D';
    i(14) := '0DBC5F5B8975BCDED0C06F9AF57BADE9C455D6F70D9F5D9815FFEC51A7BBEA7D8E065CA4926BCB30B3FF1E977D19FBCACBDA26C9223E7275B96AD8EC5CC6BAFC95D4E575665086BAECF7DD3FD051E6A2D60F5FC6BA4C336D308D65AE0686DF3CB6D9A236';
    i(15) := 'BE5E6696EB306C8654E5F4DA1C2CDD04F86A95236E16AC0AB655D7C29585B785837F15578D2E5A76D41DC6D5B4B4BCA3A60199D904E85DCFB879D2B49DB6D7B413B4EF26405C633A6B6AA6AE608BB35DAE1D1BAF38EBD8F6EC5A356F5BDE655C051FB42D';
    i(16) := '1E67FEF392F78C75C96DCAAD625D9603067F57994D9B0AB7D56B0E7A6C029494B51BC7575A56AFB01E7318300CA8D3AE1D7B7190BFC824FA551C3C4DAE329D763F74F8B632E320CF95771E67D28DD633FC3E0EC2FD4C99EFC7ECF08C9B5B670D33E85ECF';
    i(17) := 'B59A745532BC76BFAD738459AA7A34D5E96A60951671C00D1DFCBB99C1DFF99EB12EA7B12EAB744DADC766533AF8AF7B9419F6CCEFC5E77EB1261043AC643F5657598B86B2CEFB6C760C0D808B92D5DB3878D2CEB4D3B48D1D67F1DDCCE05F8C2CEF7CC0';
    i(18) := 'E0BFEE596628EB20E964D321FB03E2ACFFB1617B33CCFA7B7DDA22CEC6D3A41D0FFAAEFAC6E7EDC78EF8EFA65DDCF35E62154367CC51A0DCE0EFFD9E7110A52130EBA84B1A1061601F1594799419986705FB034ACB4AFBFBE14304C032CC88A52F8A83F2';
    i(19) := '28B38328FBF44CA75F0C282F1D90AF0BD6026E4BB7E1E3DEFFD38EBA3CC6ACBFF66BA6432D4BEA143BE0C1D03A9576E496D97F9609B255615DEE0F31F6E98371F64FC3F3A874D9E3C09C970ECCC93F87104BD7964E3B3EFF8D04C0E9D00F320EE2FAA0DA';
    i(20) := '89FB08D26DFF6912381703CB5BC67D067D76F06DA49E313496C95AC06E8FC1DF34EBAF4A66FD960E3CEF7B6CBD61E0D43FB769DCB1D86BD57F68B92D1DF972E8C92FF1905CBA46939B145E6DAACC4CE8F4B9E1C7E580BACDD3BA6D3A00566D3BEE7AFA3D';
    i(21) := 'F9395DC8D9D886C86CB3D5F5B9FBCEBCCFB1FCB6B5878E3A4E32756E9A55779219A4AFB41D6F1EF8736B32B6DC5C59D723DFEFA6475DD2DF5D0C2D6CC8C01C7106E3329908763619009B38AD327D8F97990EBFB132E3405EB5BCFF43D4F343F2F374E4FB';
    i(22) := 'BD1FB003336DD7F9C865980F08D24DF599FA80197DAA72A62EBB1D01BA18B9FFE2AB323BCEAB586D6A7C752DF7A307406666DDE9E8589B0E9D598FE7FF35B2BCD5C88E729009ADF71D474D266DED3A76D06C60008CB1D334C33D924DD4FDCF471A67457D';
    i(23) := 'B73400A68FDDD863AF1F7842EE8FCD87F301E266D66966963A9FC0069506C0CED802E34937939644FFA3E3F943CCB6FC73086DB057DFD9197726A6DB9D87058715D36DC151E13DF6F51B689FC79C8436DEEF339B644F2600161B1E48BB1DAB46CB1EDB67';
    i(24) := '2581B33BD97ECBDC4EC778B835DD5EBDEA59A73F36D98E1B78FDC602600361F4AAB4EE85E7F277B6DF435D36FC1001304F06D4E1C832D3E3AEB76DE54DC6DF23FDF889AFA51D6442F1AEC7FE80F986DBE15BB6637A04626C1F1CF2FD1627430B8B874CA7';
    i(25) := '1BDAC67FF400480F999C15EE8CAA87C79BC9D7C7F817C9ACB74C1A6877E0157DEBD9FF497F9949C3094DF73B05DB5E170F23D5836336F48ABED881BFE566543A491C0F9D91E3A9B843D6200695195F73DE31A6B63700E2009D27DB60570307E35767F835';
    i(26) := '3CFD32133ABB85E5ADCFF5DE993C71F13348770ACEE27D195A9B21F9F97DE9A5B0B58B4DBE997804639E04E05DE9806CB89EA0643FC0DD8010389F7C7D46E1F5535A03C875A4704AED5DDF3581DA957D5FEC5B683AD536FE3E3DAFF9AEEF0EC1B85CA5D7';
    i(27) := '6E6F7B085C673E8793B64DB278C1CF22D389670503E66E4B42347754A4F7808C75BEDBC076FC5D9F7D1061B91AAE247CFB8D0FA9960740BCD63CDD231D1AF4535B070C03B1768A6B7A655FD779D5B9D5DE1002E76DC11397E7D3F734F86B9FC39BCCEAF0';
    i(28) := '79C7DAD151AE1DC30D2E9A064FECBC6FB668F0AF37698E3203F253DB053DB12EE71BAC4B2833DC20E54D4BFB1DC63E9F2ED7759FBB033DA6E7059DEFB47613CA7A67BA8AABA22124EA7B9E7F69D86EEC75655FD81750BDEF7EE6833B89335F28AF7EC65D';
    i(29) := 'D30D41BE3747719572B7BE3F20DEC770951B3855873C987C7D59F07D3BC6FBC985CFE2AF8ECF6D1B42E0BA5ADE97932F77C8DDF7C138C84BFA60493F499FBFBEC7C059BC87E12A991873AEFBDEA4631B3701D683F2A861BB7D270EBEB3DA23D710CB49D9';
    i(30) := '65BDEBCB5173AB4CB3A4BCC3860F35BD1AEBA9AF05AC32B3FAB46DDBB67629ECB2A11D4F3A3EB7F5E5D5DB1002A793FC855A457DB0B0D8CB49F3C561EB2B15672D83FF621B077F7100D4564373378AE812567DF6065CD61B9EFF22B3EADB651ECBBBDED2';
    i(31) := 'B1BC1A1102B99D82D31EABD07B03764085E7BFD896E3D6B12E172D81D6D9074794B9573899DC874DCF1B75AE9E4400ACF70984CB53E34C74DBD100A1E15EF4B97B50DBAC573D0EE2877EDDD258EB7BDCEDC7536AD761F321E904B97D1C8BDA7B8C0A8DCC';
    i(32) := 'FBCD1B6695B5C58032AE936DE29B1E9D781567A217B11D9A06D062FDB995DC00A316BCFFBECF430547BCEBCE8B923E1806626C83F49E83BD6F90523DF66BFD70D9505EF85BB85F4149708EEA0F4DEDDFF5E4679BFA40E28EA82F6E3DF590E7F167BEA463';
    i(33) := 'D5B676B1DE51D6728FBECE2F0619B08CB349FB178DB42E53413BE42EB25AEF8C0A27525DB65D935F3B2AB0EAB8DFDF17F7318C8321F7BCFBCFE6B1D71A325F0CD27A155FAC77F639495DDFC65BA43DC6F2AF36F0C52CBDDBFFD984EF52E6B0D7FE980199';
    i(34) := '79BFE27BD03FB1F67BF40078329B003C4967235F9FEE64FC53930A00B654E62E34B3D22F8DA8CD86E96DA7B7EA6C36040079E92A7AF8D288AB92D3591BCE663BDDA6B3D91000E4D7027237160983F963D7ADBDC30540D5237736DBC5806F07624B3DD704';
    i(35) := 'DF7D085CD4BE1D676D3A693E7B2EF7D560F5C17FAA5505004F2B04C279EB617F40FA9569EBB3E7BA2E996EFD2A316C02B0FD211006EFD03301F70CFEEF93F3007E40F1449130EB875B63A527CF84D97EFDEDBDB71BB805F7536DA3B0B614AE9108F53F18';
    i(36) := '719F7E0000000000000000000000000000000000000000000000000000E0FBF73F0106006AF079B3CFD2AEB10000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'bankgraph.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 16;

  -- Mogul Mashups (17)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000CDB4944415478DAECDD4F6E1C451F87F1368AF42E03077825E704D8';
    i(2) := '2BC42AE313909CC093054B9478C51265C92A8958B2B07D82E40619568895CD0918F41E8061F94AE8E5EDB26B820949ECF15477D79FCF23B5C60AF6305DD5DFA77F55D35DDD75000000000000000000000000000000000000000000000000000000000000';
    i(3) := '0000000000000000000000601B7634C1F57CB5F8F2E3FE65AFDF66FD7637FEBCFEB79B70DE6FAB7E5BF6DBAFFDB608FFF6DDECFB95D60501E417F8DD18F6FBF17577A0FFD532CAE087F0DA0B61A9F54100D385FE41BF1D6E70664F4DA8144EFBED151980';
    i(4) := '00C609FE3C867E96D9470B3278116560A80002483CA67FD26F8FE3583E6756510427AA0210403BC17F1727FDF6940840006D05FF5D15C173430310C0F5E10F137BCFBAE166F2A722540147BD045E398C4100EF3EEB1F779733FB351304F048350002F8FB';
    i(5) := '59FFB882727F9361C123D50036E5A30AC31FCAFD970D85BF8BFBFA32EE3BD05E05104BFED7DD7417F1E442B87EE0C09000CD54007DF843E8CF84FF82D006BFC43601EAAE00E281FEBAB192FFA6F302A11238D714A8B20210FE6BE705CEE2A5CE405D1580';
    i(6) := 'F06F44F886E04433A00A016410FE457739D9F67BFCF943CCBABFD610984DD86CFB8603285E0013857F7D9BEE62DB10C5CF1F44F0C5C842302780B20510BFEA0BB3FDBB23FCEF96DD5FB7E32E07DC9F30461F6B0D8220817BBE22C49A3B857DDED723843F';
    i(7) := '94F4E18EBBC5D03B1383F83C6CBD0C4235F0CDC055C1FA5A897D873E8AAA00E2556E4F6A08FE35FB398608C2DA028F1CFED82924FCE1DAFE970396C547B9CD928F703FC343F70E60A780F08700FC325010B2BE936EE03B1AC33EEF5B5CC41C40EE0C7516';
    i(8) := 'CCFEBBF128A687F1629E6789DB612D9703315001B454FA17F975D8805F7F1A0A1040B6E56FEAAFFCCEE3015F64D93BD01D8FBE1A6C989CEF05783240F80F4A1EF3C6901EC47D49391478220A2A80DCCE742927FEAABA477EA04AE09E094115404E67FF54';
    i(9) := 'E15FC5B2BF9A12F74A259032B0DF88830AA0C6B37FB537C10C3031A80A50015475F67F54F3CD2F71DF8E12BEE563912080A9497510BE6AE11EF8B88FA9F6731E2B3010C02425ED3CD1D9FF6299EC86FAF128D17C4068FB076241005371982A102D7DAF1D';
    i(10) := 'F735D550C030A021B29904ECCFFEBBDDE5E4DFB684453B9ABCBCB56FC33021384BF056560F52018C4EAAD2F369C3FD99AA0A38140D0228B1FC5F4C7D3FFFC4438170D63EC948C620801B97FF29AE6A7BAA4B2FD62EDC96DDD82720805148316E5DB67CF6';
    i(11) := 'BF5205843648317E570510C068DC4FF01E2F7467D2B6B8AF1909A0A40AC03DED69DB62A61909608CF17FB8F864DBF1E6B96BD8FF360C582590C0C7E60108600C524CFE9DEACA7FF043267D030218BCD45CE8CA41860104400083733741C9EBAAB57FB649';
    i(12) := '18126D7B39F4A75A9200721F0238FBBF9F6DC5E8CE4002189C8F273EC8CD0318021040C115C0EFBAF1BD6C3B0450011040F61802A88ED0B000302056082200B43B04300F400028155F8F8200001040A3E377E53B08A061524CE02D352301A051DC654900';
    i(13) := 'B933D38DEFC51000D90B60DB99EABBBA71B021C04A1312C0D06C7B9039CBBD9F6D97F5F23522010CCEB6634C4380E1E4A8022080C1F975DB37F075D73BDB6437C110E0672D490043B348F01EAA8061DAC41080000627C541F685AE1CA44D08A072B27838';
    i(14) := '685FAE868782EE6EF9369FB4F444E06BDA3394FEBF6D3BFEEFDBF313ADA90228651830D79D6F7890499F80006E448A25AC3DD1366D5BFCA01909A0A40A60AF2F7D67CAFF8B6F446699F40908E07AE2F5E629269CBED1A5DDE304EFB1B49600018C4D8AA7';
    i(15) := 'FBCC5AAE02E277FFF3046FE5398B04303AA90EBA96AB80E38C640C0298641810AA80E69E6D1F2B9F14D58FF29F0026E345A2F7396E6935DBB8AFC799F50108E056C3801417F3A40C44098461CF6E82F7096D7F22160430D5306095F00CF4A03F33CE1B38';
    i(16) := 'FB87E1CE935402763525014C4DCA33D0B39AEF148CFB96B2D2792A1204307515B04C28813014785DE37CC095717FAA7D3BB1FE1F01E4C2D32EDD6214D54920EECBEB2EED6A48CEFE049055159072367AAF16090C14FEE7CEFE04901BCFBBB46BD2172F81';
    i(17) := '81C2BF72F627801CAB8070601E257EDB109CB3122706E3674E1DFEC091997F02C85502E1BA80D4D7A5EFC64A605E50F81F0C14FE45DFC62762D02E770AF88C8FBACB4B5C5396EE1733E87DB0EEE77C068C257FB8C8E7C9006FBF8A6D0B1540D655C09007';
    i(18) := 'EA3C0E091E6418FE20BDB381C2BF2EFD9722D0363BA57CD03E10CF060CC345391C43713EF17E8621CA7137EC4AC7E18ABF870E7FEC94F461FB709C75C33F09288C894FFB802C46DEB7B05F8FBB71D6360C55D581BBFE509A00C298F897C4F301EF2384E3';
    i(19) := '4537E0F5F1717FC2F0E3B01BFFD9062480B20470E54CF97A2409BC2999BBCB45325F6D3B6E8E257E08FB175D9AD57B4900ED08E08A04CE260CCD7914C2FAE78B7F5F07297EBEB5A0D63FDFBFF2734E90000114298130563ED6852480060540022480C605';
    i(20) := '30E19C000980004880044000B94860883BE5480004509808C29CC05CD792001A14409440F87E3DE5725924802AF9A8C69D8AB711EF776D3CE032ECE3C32EDD126A57592FA76658A502500D6478763E5ADFCF3FF044A84A400550743570AFAB6BD9ABB05C';
    i(21) := 'DABDAB8B79C4701EA804A002787F35B0DB5D2EB0312F741742E09F7EE87E04950008E0662258DF7A9BFBD02084EED575C1270110C0E62258DF8E1B64905B791BC21E6E473EB9CDEDC8240002D83C30875108BB13863E9CED4F53848B044000B71F220411';
    i(22) := '845B7867030E134288165DA2B506480004309C10F6E2F6690CD326F7F6AFD70D08AF3FC79FCFC75A9493044000C3CF25BC3D87B0CC69D55D1200011015098000488004400024400204A00948800408002440020400122001029898CFBFFDE9E260FCF1EB';
    i(23) := 'CF3CB77E84F62081C1257BD1AE393E857A27A3837CDEBDFB11598B7E3BED0FFE93C6423F6A7B9040F2D07FB0FFAEDECADDB400FA037DB77F79D95D7F334E38781EF607FEB2F2E04FD61E2490A40D37EABFA92F16DBC9E0603FEB36BBA4F6A03FE8CF2B0D';
    i(24) := 'FFA6010CEDB14F02D984FF56FD37A504A65E11E8E58607DAC5CA343128AD877FDD1E2F537E0E2B0B8D2ACEE4FD578C00E21877EFB607514D12B865F8D7ECC5B62481B2C2FFA6FFE27C417315C0E1B607510D12D832FC29DA9204A61F321DB62880598A83';
    i(25) := 'A86409240A7F8AB6248169E74B662D0A20D94154A20412867F504860F0F04F4A0DCB8217278152C24F027587BF1601142581D2C24F02F586BF260114218152C34F027586BF3601642D81D2C3FFB604FEFCDF9F5D4B12A831FC350A204B09D412FEAB12F8';
    i(26) := 'ED3FBF77AD48A0D6F0D72A80AC24505BF8D7FCF1DF3FBA16245073F86B16401612A835FCAD48A0F6F0D72E804925507BF86B97400BE16F41009348A095F0D72A8156C2DF8A004695406BE1AF4D022D85BF25018C228156C35F8B045A0B7F6B02185402AD';
    i(27) := '87BF7409B418FE160530880484BF6C09B41AFE5605905402C25FB6045A0E7FCB02482201E12F5B02AD87BF75016C2581D6C3BFF3D14ED112107E02B8B5049CF9BBEE937FDF2D5602C24F00B79680F05F72E75F778A9480F013C0AD2520FC654B40F8EB12';
    i(28) := 'C06A4C090C1CFE556B12E8465E546484079E10C0C81C8C258111C27FD05A25D08DB8B2D0184F3B228091898F071B5C026384BF86479D6D2A81B19617F3A8B38AE700C69080F0972D01E1AF5800234940F8CB9680F0D72C80112420FC654B40F86B174041';
    i(29) := '12A83EFC954BA0BAC79B57751D40E6126826FC954AA0BAF05727808C25D05CF82B934095E1AF5200194AA0D9F05722816AC35FAD00329240F3E12F5C025587BF6A01642001E12F5B02D587BF7A014C2801E1BF4602376522093411FE260430810484FF06';
    i(30) := '12D8849125D04CF89B11C0881210FE811849024D85BF29018C2001E12F5B02CD85BF39010C2801E12F5B024D86BF49010C2001E12F5B02CD86BF5901249480F0972D81A6C3DFB400124840F8CB9640F3E16F5E005B4840F8CB9680F013C03F24B0DF6F37';
    i(31) := '39202E7E57F8B393C046FD27FC97DCD1046F24B00C07C6E7DFFE34EF5F0FFB6DF6D6AF2CFAEDB4FFBD13AD95A5042EFAEFABC5971FECBFFEF7F41F017C5004E1007190942B02FD6708008000001000000200400000080000010004008000001000000200';
    i(32) := '4000000800000100200000040080000010000002004000000800000100200000040080000010000002004000000800000100200000B5096031D1DFE64A69EDA1FF2A688F2905703AD1DFE64A69EDA1FF2A688F9D295BECF36F7F3AEB5FF636FCB3F31FBF';
    i(33) := 'FE6CBFC672ACB4F6F86AF1E5AD3EEF77B3EFABECBF12DB63EA398087FDB6DAE0F757F16F6AA5B4F6D07F85B7C7A402E8CF5CCBFE25D8EFFC26A60CBF1BFFA64A4A6B8FFECCB5F1E78D7F532525B6C74E2E8DD797BFF3FEE5B0DF666FFDA7451823F507FA';
    i(34) := '49D710A5B5475FFE7EF0F3F6077A53FDA73D00000000000000000000000000000000000000000000000000000000000000000000000000000000006883FF0B3000AC1CCA17694A9B2D0000000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'mogul_mashups.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 17;

  -- Cyphria (18)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000013984944415478DAEC9D4D88645715C76F75265F9364A6C749461409';
    i(2) := '3564A1B8996E10DD996A517097EEB5425781B8D04077AF5D4C37EA4A64A6415D6453D52B11175D6E5C18A46BDC852CA682208286AEA80109C6543E9DC9848CEFD49C8A3D6D7F54D5FD7CEFFE7E5054085D35F5EEBBFFFF3DE7BCFB610C00000000000000';
    i(3) := '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D850A309DCF0C28BCB8DE26D6FC68F2F7DF71BDD5E4EEDF5C6CF9EB16AAF4BCFBFDAA3D7D9334713B8213701C704F1630055A3C1';
    i(4) := '350306000018408919CEF8B967336CAB6703B7316000DEE9CFF8B9850CDB6A21701B0306906C0430FFC28BCBD998C01B3F7B46AE759E080003A81AAF587CB691513B3522B53160005EE9597C7635A3765A8DD4C6800124590318E5C439A4011AFE2F446A';
    i(5) := '63C000FCF1DD6F7487961D742D8366B2B9C6FEA5E75FA506800154360D68165140BDC2A3BF5C5B93F01F03A8323B969FBF56E1B6B916B96DE1102C06F240318AEF176F362379E51607592EFE110645F87F99DE45045006BA969F6F1726325F21F1CBB5B4';
    i(6) := '23B7296000C1D8B6FC7CBD62A940DB322272D1A6800184A108DF07C6BE602505C16605467FB98665CBAFE915E1FF809E850194892D1723A76E3452E6BCBF9D485B020610340AE819378FAD76CB38414827FCEC3AF8AA1E1B8060003947015240DB2B9309';
    i(7) := 'A8F8F7CCEC0B7E18FD3180CA4401DD9C4CC0B1F8BB8CFE1840D9D9306E96B0266F028EC53FD4B6030CA0D451C0C061183B36816682E26F3A14FF28F4A7F2EF1F660206A210AD88A3E1B2BE5098CB6622E297DF71D5E1574AE16F895E830154C9006464DC';
    i(8) := '7738421AAD2FB47415620CE18F67F82D3BFC5AB996CBACFA2305A85A2A201D7AC5F1D78AF06EC6A80B68BE7FD3B1F88515C48F0154D5047AC67D61ABAE26B01950FC9B2AFEBAE3AFDEA0EA4F0A90433A206173D3C357F73525E87B12FE8286FC3E228E4E';
    i(9) := '21FE16BD8308208748A065FCAC6E5BF0150D1C18F57D88BF8BF88900728B02468FF48CBF3301240AD8B0DD5740E7F35FF3FC3B97C8FB31004CC00F1D3582E194C29F57E1373DFE36C44F0A90752A201D7FC9F8DDE95604BC5F98CDFA14E297BFDD47FC44';
    i(10) := '00102E12F03DDA0A038D06BAC7087F597F47DDF3EF184525881F0380FB8DA01DC00404A90B6C8DEB039AE7CB4CBE46807F9B6A3F06002798C0BA09B41DD8FCADFF741AAFFDD504321DA3A3FE75EE320600279B8084E2120D78D918F4EC9D0FCD17DE7CC3';
    i(11) := '3CFDF65BA12E4942FD56217E36F6C400604213703EE92682F085BE8A9F23BD300098D2049C140723097F94EF1B8A7D1800581B41538D60BE24C21FAAF03BDC3D0C00DC98405D538246C2C2177A1AF20FB86B1800B83702794A70F5A86820B2F065D4DFA2';
    i(12) := 'CA8F0140E068E0FCED5BE699B7FE154BF88CFA1800C4E077BFFE6AFB73EF0E9B4F7EF07E947FFFB699337FA99DED7CEDFBAF30B107038050049EB977247FAA3D66FE509B1F998046005B3FFE5EAFC7DDC100C09FF06582D05A4CE1FFA3F6B079A976DEFC';
    i(13) := 'C33C7C5C2AB05D1801137E30007028FCA68EF8F558BF41467A19F165E43F89B38F3F682E5E3A3B987BA0266B0D3ADC3D0C004A2EFC7EED0973B3F6F838DC3F92B9B99AB9F0D4A3E6F1730F1DFCDF03736FD1114680014099843FCEF35FAA9D33EF9833A7';
    i(14) := '8FFA9F3E3B328163C0083000A89AF0CF3C38672E3CF9E8C800260423C0002055E19F52E0BB8F73F30F9BF3171F3969D4C7083000A89AF01F79F4CC28DC97D1DF0118010690A5F0436DBD751ABDDFD62ECA649EC6697F3843B83FAD111CBB551960005511';
    i(15) := '7EC3449EC03316BEB9376F5FDECD0F7ED138F67749887FEE4211EE7FEA9160BFCB762B73C00052137E5D47FCE594847F98C346305FE4F84F14B9FE8C79BE0D5D8D0806F41E0CA0CCC29F5741AD47FE299263EF4C7AEEDE0FDB5F6F5C78EAD1D5871E7EA0';
    i(16) := '19F9775FD788800D453080D289BF6966D8C4C383F0B7665DA5A7AB0EC5C0621AC150A3810EBD0A03284B9EEFF3282DEFC24FD4089C1C7506184055C3FDA10A7FDBD7BA7C358235358258910D690106909CF8BD6EE33D81F0B74518A136DFD4CD4AD7D50C';
    i(17) := '625D738BC78618400AA3BE087F3907E12768045D3502A2010C209B515FC2FB9D98C23FC108564DF8C94D4403184016B9BE087F2BF5ADB6750BF318D39BA90D6000DEC5EFFCB49EAA083F1123E86B34C02944188073F14B870EF95CBF94C24FC008983780';
    i(18) := '013817FFB580217FF4E29EC71A41C862E1F5C20436E8BD18806DBEBF6BC22CDEA99CF01330825EF15AA12E8001CC2AFEBD40F9BE84ABD91CA2E9EAD0D329EA024B980006308DF81754FCBE47A9AE0A7F90633BEBCCC210AB24876A021407318024C4DF57';
    i(19) := 'E1F768F19111348CFFF513980006105DFC1CA079B2111C7BF029268001945DFCA369ABB9E4F996F5019FD3AB31010C20A8F8072A7CC2FDE9D30231823A26E08F39C4FFC9821E1FE297507F11F14F8FAEFB5FD43674CDE89E6BB4410490B901DC34EE8B4F';
    i(20) := '32C2ACA4287CDDB064414570E508E39388E5357DEF17D7107D94D46860D78349F70BA359C400F215BF8F197E49E5FA1AE1348BD77366B6094D43BDA6DF14D7D48D6802BE6A0359CF18AC652CFE651D555CB2914A855F47FA55E376B24D0A7B1088615F73';
    i(21) := 'FCB52BB92E27AE652AFE7AF176D36148994CC8AFD7D6367EA72F4735020F29815CC3628EDB90E75A047459F4931C793111F16F166FFBC6FFDA85F19E08FB1A4905450B844BDAF6AEAEA74D0490C7E8DF7478B347F3CC63E7FB3AEACB88186B2762890482';
    i(22) := 'E7D15A1770B95EA395DB32E25A66E29FD71172BE42E2771D0E97AA3D1C9B80FCF6CB392D1CCA2D0558AF98F89B26CCA2A549184DA652930D990E0C1DA603E3E5CAD4002A38FAD7356FAD92F8B3CC5B3D9BC0555DA58801548C2A895F465B578FC27A075E';
    i(23) := 'FDB2B68D6B13A00640EE7F547EB8147B669C836BE914AF1B22F8E3F621508391DAC2EA84B97512C6A8350117EB3AB2A9059C21F79F98560AD362CD6C8F30A77A6EAFD729AFEB0752A766EAE2D748A05F9840CBD84DF21ACF9EACFCB2ED5C220019316DF2';
    i(24) := 'BA288FB98EB88E59662F3A999AAC4F1B0EAFCE4B4AFC872201DB69DE83C24C2E530328BFF8172CC53FDAC423913466DAA29F4C4D5E7121509DE8B4A88692B4F8952DBD77B352D77402032839AB969F4F65B3CE69D39896EB7509D20E62282AAE94C53F2E';
    i(25) := '0A6E44EE3BA400250FFF6539EC6202D7306DE1AF55F603451CA60236CBBD2B9F06CC555CFC75CBF07F3B914B599E42FC5B88DFD93DAC577D4E40D553009B852A838484B43645C4B289E6EF4B05E41E0E2CBEA2810194972B651FFD358A993484E5282CF7';
    i(26) := 'F7F2590CA0BCD8547153D92062D211A8C7DE835EEEE50206909F01F4133AAD67D211681B9D1F9B06C8BDEC630019198086CEB392D2483A49071CC6DCAFAF24CC7C4FAB5C08AC72046073D35E29990110FAFBBDA71840662411FE4F11C5BCC22D2BC73DC5';
    i(27) := '00D2CFFF8D71B7D75CA8288663AEFCB6D10206503E665EFD57C2F3FB386FF0142C97F6CE6300008001000006006951A709000370941787DED9F604FA18801B2C4F021E6200E5A3F455DF298A91CF2171AFF7B48F011052C7A23749E74E286AE19E620049';
    i(28) := '30B0F8EC9584AE63D2D1A74977F6764F071840C9B05CCCD348E8526E4CF8776B68DCCF3DADF2A9C1554F01665E0166B99828740A300A71F5B42038842EE65908DC873080121B80B09CC2056821B033E19F5FA316E0FC5E620025E686C567530AA97726FC';
    i(29) := '3B11FF2E7A777A2F6F6000E5A567F1D964426ADDE967D23CB451FC6E0E0DFD5FF82FF7B01EA90F6100918533307615DC94A280690E2769FA320149318AD79E1EB852F5D17F50E502600E118060B51F5C42514067CAD1484C60D7654D40452FFBEC378A57';
    i(30) := 'F226A0A37F15F685C40002E4CFC79152616DDA5D7FA5F87553CF14B41DF53755FCF503F586644D40A7FE5E8BDC7730800446CEBE651A201DE96A42D732ED398522D85D0DDB976714FEFE316D90B2095C3576EBF825FCAFFC462BB99C0EBCEE6034584965';
    i(31) := 'E34D11B3997D62CB5043DB1B6A8CFDF19A83032729C9775F31933F3E93CF2F25727CBA8CFEB39CA27C98ADC2003631806A18C0B467EB25DDC9F57AF64C5A5B5525D13E7AA2EF9E837B7DD9721721528084D280F1A867C3E878EE14EA017A3D2B26AD65AA';
    i(32) := 'E374A01E39EF6F1BFB2DBCBA39883F1B031887740EBE63413B790A2620E1FB92496BA65A37D6812A2A7E5751D1562EA2C8C600B46356CD04FA0999C0F5E2F7B4AA20FEAA3FFBCF35021875524761734A2620A7022DEAB5C5CAFDA540BA5101F10F23B623';
    i(33) := '0610287776D551933101BDB60D8D06428E5E5257B91CEBE98863F10B1BB9E4FE636A26432C1FA31DA6AF23E020A1EB6B9A7BCFC1EB9EFE899E84CA314F23D625BEBB0EC5DF2BC4BF949B16723500E93C32ABCDD5E83D0E837B895DA718C19A4391748AD7';
    i(34) := '4EECEB2CC4DF50F1BBBC7F8B39E5FE591B808AC3C56491FF0B210B715C4FF05AC5F0E47A9F5333985438031DED65D250378513930AF1BB98D475989542FC599EAE9CAD01A830A423AD7BC88B5B291F2F7660C65FFD8834A1AF23623FA56B38F08CDFF546';
    i(35) := '2DD70BF16FE4AA81AC0D40C570D3B89F5197644A50563C84FC9F985D21FEC59CDBF60CDD6B5439773DAD763C2B4ED281AD121E369AD2A87FD54394368E7496726FE31ADDEC9375EEB6F3C74FCAA35B4403338DFA6DE3E749C668DD420EABFD3080344CA0';
    i(36) := '14B5818AE7FA88FF083819483930ADD69740A543EFEBD264385AFCD236FB889F08A0CA91C038FFDC202DB82FDC9727323E9737237E0C20291318A7051B29CD220C2CFCBA0ADFF7190C881F0398DA04426EBA91D5D302CFD5FDA3A2ADA5DCE6F86300EE4C';
    i(37) := '409E3F3702FC73D241B7CDBD65B5C30A0B5F44BF1620BA1224C55A41FC1880AD11F89831988D114410FE28AACA79861F06E0DE049A9AAF86EAC0034D0B3A25177FD3F85D99789481CAB2DE0EBD1603706D02520F689BB09B7196D20822087F9CEFB728F6';
    i(38) := '6100BEEB02A10A58A5338248C21F85FCE6DE765EE4FB1840102358366E76A09DC5087652AA111CC8F15723087FA8A37E975E8901C488067C4E5B3DADE3472D16462AEE1DA4ABE267D4C700B28C06A2184102C267D4C700A80D1C63041D5F330B75E65E33';
    i(39) := 'A2F0C9F53180E48DA061FCCF6B3F8D8EB957301C3814FE55157F2C46EB270AE1F7E8651840198C60DDD89F501BD5081211FE5047FCEBF42A0C80B4607623D89EF4E04E3D60732DB2F009F73180CA1841DD8459F5761A3D73C27EFEBA2C570CAB11F97776';
    i(40) := '35DC1FD07B3080AAD5075210D87D469090F07B3AE293E76300953682658D08EAB105F7F2679F36AF3F713EB6F0073AE2F3580F03C8CA089A26CEB4D9FBF8D7D9C7CC9F2F7E7AF41E41F85B2CDCC1003082BC8C00E1630090AA11FCEDFC85C2082E990F1E';
    i(41) := '7C08E1630090B311FCF1D267CC9DB907103E0600391A8188FFD54F3D695EBD7071162340F8180054C108241D90B440A202848F01403C239035F78D58BFE1944261AF78ED207C0C00FC1A41C3449EB873A83ED0334CE0C100202CBFFCF997DA9F371F343F';
    i(42) := '77F776B4FAC0EBE7CE77BEFCED975BDC0D0C0002F1835F34A416D01E47004F993B66E1EEBBE68B77DF8FF59364E46FE57AC211060021C57FEC32E373E623F395BBEFC43282D1B2DDC20458B68B01806B7EF2AB6FD6876FDE6A4F92F7473602A2010C005C';
    i(43) := 'F2C28BCBA33D076FFDE7A3F9B7DFBC658AF7893E17D108866A022CEEC100C042F812E6CBAAC1E6C1FF2F06501223E8987BA71FB3A1070600538AFFD453883EBAF3B179FBDFB7CC7BEF7C98B211F4351AE0B41E0C00A609F9CD84FB0996C0084809300098';
    i(44) := '50FCEB1AF64FCDB446F0A4B9D3FDD6C7FF94FF0CB555D9064F093000385EFC6DE360234E3182F7DFFDD0BCF3D66DF3F1C7778FFA935EF1DAFAF1F77AF21E7A66A19C5BC0C4210C000E08FFC8629F2D22FE7787B70F1AC14046E142F84786E201B72AEB18';
    i(45) := '8A8318007C22FE3DE3F1209142FCC37FFEFDBD1F6D7EE7F73F9DE4EF039D692045C1254C000340FC7E4F111A8DB6D3EEADAF671A388F4A30010C00C288DFC9515A018E3AC304227286268846DBA3A86469EEA68B2FD2B303160B23D8D4B4C035E3F90E2B';
    i(46) := '740922805C467F27D5FE6346533936DBCBA49BC2044E9D9C6493AAF0740003C841FC333FE70F35EA4F6004BEA201E609600095167F43F37E970C247CF635EA9F120DEC1AF78F0C978E3BBB103080328B5F8A7EFBC6EDA3B5AE86FC510A68FAA440520297';
    i(47) := '3309E55A2E53140C0345C070EC3A167FB090FF3854A42B8E5382796DAB25BA8C7FE6688260797FC3E108D98A2DFE434620BFA5A5BFCD050D9D8C04A400A517BFE4C8371D8DFE22B0A5D0F9FE9475813D87D7BAC8CE42440065E76A0EE2D748A0AFA1BB8B';
    i(48) := '4860DEF879D2004400C146FF867153F54F5EFC1E23019E0A1001947AF4CF4AFC1E2201A2000CA0B4A37FC3C157AD9449FC874CC0C5F4DE86AE47000C20BBD1BF55E6E3B634746F25D296400D20D8E85F37F726FDD8D029C45F89B9F1C5082ECFF56D270B';
    i(49) := '5DE6890011405958B3FCBC74F48D0AB5474BAF29669B0206100CDBD12EDAF45E4FA9C0D0412AB04CB7C200CA10FECB23B0BAC55774AB78CCB6D6036CB605AFEBE345C0009266D5F2F31B156E9B8DC86D0B1880771A169F95C2DFA0AA0DA345BC4EA4B605';
    i(50) := '0CC07BF82F33DF6CC2D4ED0C9AC9E61A177409326000496223FE7E1927FCCC1005C835F623B5316000C986FF3B19B5D34EA436060CC02B572C3EDBCBA89D7A91DA183000AFCC9A9F0E7308FF0FA501C3C06D0C1840B235807E866DD50FDCC68001241B01';
    i(51) := 'DCC8B0AD6E046E63C000000003488F1ED70C184089D10D4020006C100200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A9F05F01060055AD606A0614D3D70000';
    i(52) := '000049454E44AE426082';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'cyphria.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 18;

  -- Illumina Biotech (19)
    i := j;
    i(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000138F4944415478DAEC9DD171DBB81686913BFBBE4C0597A9204A05A6';
    i(2) := '2B885C81A5877DDCB15D81A40A2CCF7DBC0F922BB05381980AACADC0BC15445B412E4F046E18991401922041E9FB6638D99995C90310E7C701081C2805000000000000000000000000000000000000000000000000000000000000000000000000000000';
    i(3) := '0000000000000000AE7847159C3E7FC67F04E93FE3F4BA48AF91BE8AD8EAEB6B7A3DFF27FAEF8EDA430060B88E1FA5FF5CA7D7A4E62DD6E9F5980A414C6D2200301CC70FD37F56E915B5744B1180692A0409B58B0080DFCE7F9BFE334BAFA0E55BCB7060';
    i(4) := '918AC0925A4600C04FE75F3508F78D8705A9084CA96D0400FC717CE9ED37AA7C72AF6D64A2F09249C2E1F32FAAE0245875E8FC4A3F6B45B52300D07FEF3F57FB4F7C5D33D6CF068600D093F3473AF4EF934B3E131201407FA13F3600027086BDFF24FD27';
    i(5) := 'F4C09450DB02080074C80C5B000138DFB17FE89149A1B6091000E8806B6C0204E07C89B009DA80CF80C30BFF65D5DF374FCD7BCFEA40220070CB08DB0001385F026C0304800800DB0001000004E09C48B00D10000400DB00014000B00DEAC33A8096F833';
    i(6) := 'FE4326C0A2F4FAB77A3B1926DFC6FF523AED76D3E49AE9B3641D806F33EEBBB45CEF1B962B543FD3967F2C28A3D4DFFFD22B4E9FB5A5D521003E38FD8DDA27E4B0714869BC8F6A9F5F6F57E3B94FAA9F2420C7907304AE6A9445EA6DA2F64B896DBE2248';
    i(7) := 'BD3DA7D70362800074EDF8D2D3CF54F3E5AFD2881FD26B6923047AFBAD6FFBF0256DF8DAD2F16FB580368D6662B5CF581CD33A1100978E1F68C7BF753076BE4B1BF0B3851DAF1E0D0344BC3E988A586ABF442FF7AAFD1D8D4B2D042C4736844940BB707F';
    i(8) := 'E3C0F9957684A7F419F7263FD60DFCC1A3EA79B0707E29E39372B39D59DECD46BF2B40005A777ED70DEB56E7F637EDED7CE8E976DA16937A5C3912D03C2344000170E1FC5D85DB131311D03DEEC2832A320AB93B3AB4242340049803686BCCFFA2FAC9BE';
    i(9) := '2313837706368A38453D55917C8EBB340CFB6F7BB02F49AF4FCC091001D465A5FA4BBD75AB27CBAAB8EA6928B0D3CFAE72FE714FCEAFF4BB236B311140ADDE5F1AEE53CF6618F5603D0C53C49ECBAAEFEF3D4750BF88A4E917162200C8B8F7C086D0A4F7';
    i(10) := 'D48E78A9BA598A9B98387F16C5283F9297DED39C89006C7AFF8947A1A3F13776DDE33E399C1388756F6A6A8B4F6B15AC162A11019C373EE5B91707325AF62B8EA927E5EE5A9E17907BC942259B1381C7CAAFFD0A9C5D800018F5FE23E557CE7DE1C6E6C7';
    i(11) := 'A993CA77F90F6AFF9970D7D0F1173A0259BAB4B98BE1149F0519029808C0DCD3DEE27DCD8D435904F1590F0D0203A79750FF8BDA6FF0A9FB4C1F3317CB9A8539ADFC27BF51056FB8F0D4AE91764C2BB403AFF595453881BE5F90737A99D4DBB5B4B36EC4';
    i(12) := 'BB4500868AAF8D37AA23000582903978ECD856DE2D730083C4D7D4D6BF0FA80E7FE7DD220070BEBD173D2D02303C744A2A0004E01C699AAB0F000100576CB1151000F7F8BA75F4EF01D5E1DFBC5B04809E960800BB3C8775006FF9AAFCFC8E1DB77523BD';
    i(13) := '52EF70A67EDB62E28CD8E3770B39580AFCD639C4315E7CEBB952E7FCD4A04CA1FAB91C38BF02B02844965E325B069C3478E68BF2EF73E027CE1040004C1AAF6C630D3D32A9D65656BDADF9BA4144233DF9638367FB948D2749CBF181D6CD1C80090B8F6C';
    i(14) := 'C94EC0B171BE48F7C0AB86C319F9DB95DC4B1F8662C3B3F26BD26D41B346006C1A6FE2892D0F96A70649F69BB6539867A9B68D33EB78767641622BA20C011806F810C226CA30AB6D07D980F2C3029BAC403EE404241B1002504B04FA4CB9AD9461324BED';
    i(15) := '685D1C5C92F12307A1A108F49D5CD528753943002874C01EC7B14B8B4CB65D3AFF3F4302C3A1809461D9531D1AA52E4700E0D838F6B20711589B1C0AA27BD895EAE773DBC8F418335D96750FCE7FC9A1200C01DA180A7499775F9C7F6A68970F67175C59';
    i(16) := '9C6ADCD5F16046E716001180692490E5DD77DDA096A6CEAFF121DFBDCD97816907C3812DCE8F00B81401170D78A77BD23BD33FD0C94B430FAA26D4B698D6E39D7237B7B2C4F9190274312488D43E7370D482E33FE89E7F6769834FAB15AD57D9E92F1772';
    i(17) := '72D04D0B43AB58ED33FEC6B44E04A0EBB90169C0B68760480FF5A8C7FB75D26EFB30F6AF3D17502004322F204B966D2633B315920FF4F808802F518134E08F253DB3EC444BD4FEBB74D2F0595D4DA6D9B0B69CBF282A57A8A32AF9B72885B7D4DB5F6ABF';
    i(18) := '398ADE1E01385BB1F16DB352AD6100200050AF977CF5D4BCF77C771F167C05181EA1C7B6910E1C0100C704D80608C0F932C23640000000013843B6D80608C0F9B2C336680BD282B7805E1128ABF32E5479D6DDADBE64415093C54089C7559134A8C350ED';
    i(19) := '17016575382A1198AC0E9F5901D81CD601D46FB0D95A7659C21AD6B845ACF6CB58EB2C9FFDA6FC9B71DFA565795FA32C229C37AADEBE0A111C5952BD64FD0102D0A5F3CF553B9B58B2C8E0CE6669EB292C05D64BA7EF553B5F0E765A4CE7B44E04C075A8';
    i(20) := 'FFA4DC2CC691ADAC0BC33C7BE2FC2BCFAAC728F1A68E9C663A7A723104B962688000B870FE2E9CCE26D9A64FC300A3F0BFC3E4A564013684AF00FE38BFD28EF1AA238D2A1E3CAAA207833AFC5136D5CD62A1957E6780000CC6F93302DD80AB7AF7A5F2E3';
    i(21) := 'B3DB4E556449CA9D59D065C482082000AD8CF9FB186B67730DA5E861C29D07D57467306471356F6222022C4F46006A397FA0FACDBA1355E5DAD3E3DC3E8FBC7AAE1A6BEB32443DDAF864104D2100F0865BD5FFD6DB995E20730CF9F4D6C7ACF7563FFB98';
    i(22) := 'F38BEDB39EEB30546EBE38200027DCFBFBD070FF110183A1C065C72260FAB5C29B3A3410520400FEE1C6235B26558DB7631130727E6DF384778A000C918967F65436DE9C08AC1DDAB156E6C76DDDF04E11802186FFB629BEBB606CF223714CBD1C570EDE';
    i(23) := '485A7CBEDC4B56D84D2DD6DC8F3DABC340BF5B40008E72E1A14DA1CD18566F30FAA4F69F0993868E2FF7F864B36949DB1AF26EFD87EDC06FF1F5BB716413DEEB9E5A16E82C75CF77A1EF51553E19E3C7E9F5B5CE4EC59CADBC5B046090F8DA786BF7A8DA';
    i(24) := '919F733D7454F2BBB86F5BCFF4DD220050C9C7B66ED4C1A93A1F795DCC0140BB04D80A08000020000080009C135FB1151000F7249EDA35A4A4973BDEED30E02BC05BE43B78E8A95D8DD09FFFB2B4E51705BDF68FB4DB2D7C25D87AFC6E0101A80C5F7D5B';
    i(25) := '32BAABEB94DAE9AF75998ECDCE47B9BF11219075038F759E2B7FA3EF1178F86E0101388A34FC7BCF6C8A6B38FE5897A34E34238E3B51FB9D881236DFD55815187B28A4CF346FE600AA7AAFC4C386F268E1F8B26F4032EFB695864BEE21597536967BEA1F';
    i(26) := '7D73FE06A731210067864F197713D3DE5787FB2FCACD92D71FF72E5B465C20A46273C23B4500861805C475C26E472C0C9D5F42F68DE371F78FBCFE16D976179ED461DCC1F26704E0C4B8F3A4E1AE0D9DBFCBECC54629B7B5ED31EF1201186214B0EDB907';
    i(27) := '9359F4A981F3F795BADC34E5F654F5BB2E60C15161E5703458B5836D543FDB48AFAAC6FE3ADDF5ABEAEF739B38F60783FC80F235A08F14EB12415DD28A89001A39A2EA7E01C9D470E2EF5EF5FBAD3D50069F4C7559A61DDBB6D5EF0E88001A47015D1D6A';
    i(28) := '9939BFC9B85F6C79F1A48A3E9984D91DCE55181FB24A040026F301B2124F72EC2D1D87D39716A7DACE3CAAA299613D4AD92E1DCF092CE55DE1FC4400AEA281262BECCA78D63DFFCED086508FFD7DE283E9421B1D514924D0E64A4179F65D833C86080058';
    i(29) := '0D09E4B8A9EB864210ABFD2C756CF9FC5BE5DF726571BEA56539221D3D440D1D5FF62CCC699908405F11C16755BDD9263F3E15877FA8BB34B5C72F1347C5ACEE8CBB8E686E9459D6E26CB8243DFD177A7C04C027310875441015F452726DDB189BA6CFF9';
    i(30) := 'EE63F9D3B2BD6BA16C811681B020BA12E14C58D38F009CB3C888B86C3C35EF138B6E86055F01A04DC8068C00806346D8060800BD2CB601027086ECB00D1080F3658B6D8000004063F80C38404E791D001001C030436DC27F04003AE20B36010270BEACB1';
    i(31) := '0910803345AF858F3D3229667D3E0200DDB2C016680AB3B603E6CFF80F49B4D9F7F15B72E20EB9F78800A00724DF7D9FABEF768A9CFB0800F43A1730EDD18429637F8600D0FF5060A2BA3F1C646A91C0141000382111C0F91100F054045C1F1682F32300';
    i(32) := 'E0B108646705B69D9C63AB9D9F25BF08000C40082475F8AC85684066FA17B629BF0101007F860537352202E9E91F08F71100380D21904820D2427051F2B3AFDAF1638ED60200000000000000000000000000000000000000000000000000000000000000';
    i(33) := '385F2451859C70F33D77AD54712A2B3905E735F7BB6FE9357768D7EAC0AE8D6A3FD75E86DCF7C5B01E8E71AFEB25BBC7AB2A3E3D68A4CB93AFCBFB16CA607ACFDB8377F9526267F61EF2657AAAF11EE607F7103BA396DFD98BC3F671B26C0E1A7DFE05E5';
    i(34) := '094B7EF75DB9391EEBBEE459AF8EEAE15BC9F36C9C7252728F6FBAFEF2BC96FC76D5C019CACA302F10F2B277191AB68FEF160E3CB1789E29614979BF35B8E759F2FDC875A8E065BF7BEAD0216D1A9E29D19167D908CE316799183EAF8E088C2AEAEBB00C';
    i(35) := 'AB23BF9D5BB40F53679B5B3CCF94558BF5D71BBE1F0D66EA682EF2E0079ED441D8C37D26168D380BFB038B67872DBEA3A79EDEC9A4A2FE420400868C89089838BF6B463DF4B8B3967E8300C06045C007E7CFDB39F1A4F71F54148000401D11F0C9F9F363';
    i(36) := 'F22E66E0678E7E8B0080D722F0A21DDE47E7CF78726C9769EF3F98280001009BB1F6C663E7CF1CD4E5A4E0ACA3BF4100C05B11083CB73152CD1734B5D1FB0F220A4000E0149155866D2F0E9BF5F4B70800400DDA9C14ACEAFD77FA1A5C148000405983B6';
    i(37) := '65EB5919B23D046D0C59AA7AF0077D0D2E0A4000A0884B4B1158A7D79D87E56863919049EFBFD4D7E0A2000400CA7A73531110E79FF664E79D818D321770EDB8F7CF8600838B021080D322EC5804FA74FECCC63B87F562DAFB670C2E0A400086C1A80501';
    i(38) := 'D8B62C027D3B7FDE8EB5A37B9BF6FE79411854148000F84152F1FF23837B547DF6DAD5B44D44E083EE6917FA9A7AE2FC1953D5FE24A46DEF9F8F02D450A280DFF0BD4108C08D41C3BA3170E4BAEC0C9EDF3712A948DE81B6162AD9F6FEF9BA5A5788C7CC';
    i(39) := '17012502F087B8A2373A369B7D5B1125240D2280A1B0D322D00681AA5EF5776CD8B1184A14702A1140A0EA67E9490C7AE0BA63721B47FF525186ACD13CE6EC0D74CF1FD57CE6A9B1D53D6BD34F7FB706F5195638715CF15EBC8902FAE658CAA77C05CE2B';
    i(40) := '7EDBE42A4AE6F8DDE1755FD2CBBB7A5E5430A7609A8ACD149B7B1E4B5D36AFD93EF2AC2CEA665ED0997C73FCFEB37466BDEFAB6008F0B347BFEFF079B7052166A2DCCC66C7671401643499149C74E4988141A481007448D4F1F32E4AC68E6D8FD5EFCEF4';
    i(41) := '7D5ED5ACCB9B0E6DBC4600CE97B0643EA24D8775F1796C28245A04DA782F2EDB4080001C0F5FFB62D741032D62AD1D77D782F3AF5BB4ABCDB2268EEB30DF7EEE3C7BEF87CF3AF5AF3395B47130481BD7E1F3568E9F5735E408D5F1C9B263E530F94A5176';
    i(42) := '30C8BCC1BB34BD67A49A1F0C62735EC2CAE23DCC95FB09C03A87BE9C2C41C14B2E4B3B353ED2C89A5C45DB468B8EA46AE37A5576996542DD2837AAFC249A8DFE8DCDE7C92E8F062B7A97B7EAED11669392F671F81EEA1CC1352FB8C7D8F0B72EBE00CC71';
    i(43) := '7D000000000000000000000000000000000000000000809344D6BB47275CBEF0C4CBE73DEFA882376C0C7E93A4D7FFD47EAFFD738503671B6C2497DFDAC0212421C558BDDD15B7D3CF5AA8F26DB013D52CC9443EA9E6BDB2DF705375504790B37154523E';
    i(44) := 'A9A7B8C53A3D2CCB254D1C8E5167FB6D59528748996FB33DDC1D57671BE95C35DBA57628844DB754E7195B946FD5529D16950572702E40393B559E4D27CCF5D0916EB0570D9EB552BF6E85DDEADE6D9BEBF53EE7C2E55BED20D382C8243EE23855E52A23';
    i(45) := 'B68800CA2293D5819DF99E3ED4E51BE77E1FD25B439F1140D550607CD06B8D6AF65687F7991C796674D08BCE1D94ABED5E33B4B0F9B07C132200F05500B2B165F6FB718DC61A1834F8A231F0B10C3ABE09C0C6D261F375F68A00B885A4A0CDF8FBC0996D';
    i(46) := '19E7FE4E26C0D6866176FEE49999C7F513E6861E89A1C3C6B9A144A89A1DC2020880537E3F18D7DA929FB15F58FCDDB2606CEF23F9A8E8C1E2EFAEF4F8FF52B949520A1A2601EB33CA85EC89AA97C138DF3BDA4CCCEDD4CFA3A7427DF9E8289F73FFFD6C';
    i(47) := 'F177098E8F00F810BE9685AC1F73BDDB4ED5FB02306A183D7CCD09886B0198D7FC5DD0B08C555C18DA16D29C11803A026032BE5EA87A876F0407E37A9F99D51480514E245D102956123207D033F225E0457970D0A3C7503708C0E09031F6BB23D795FA75';
    i(48) := 'A18E6D4EFD5DC970C047DE195E456379972C0CED8A69CE0840DBC8A4D665CE9127967FBF6D3846BDE8D0D1EA92D41439995FD9E86B425343007C6577D0BBD88E47E39C00D83848A07E5DDAEBAB006C6BD6CD456E7C9FD0CC108053E531F7DF360B7A6E0F';
    i(49) := '22912194CFE6D8ED7189880002E015C141CF6D3BD67CCE0D21C6CA7C29F0EC601CEC2BDB5C0F2E51CEDC50DCC282FA0104C03BE7BF3F68AC758610F91D7D2B55BD196873E0FCBE87C8D38328E798084CD4AF93A90F3433B7B00EE0784FBBA9F8FF41CE91';
    i(50) := 'EBF6C4D91E80494E046489F017F5EB9AF8EB8371F45A7577C2ACE906A2A2842012152D73C396992ECBE176E0C3F22D15B3F7D003758EFB1E1DE9B1BB4C086252AE3ABB01DB48086253BE794514C46E4022006798F63A127A7F55C777F0E5BF125485EA4B';
    i(51) := '1D0D94A5044BF4BDEA86FD71AE9736EDCDEB8CF95D97CFA64E9B94050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A011FF1760002E34943C3D4A29120000000049454E44AE4260';
    i(52) := '82';
    l_blob := varchar2_to_blob(i);   

    update eba_cust_customers
    set logo_blob = l_blob
    ,   logo_name = 'illumina.png'
    ,   logo_mimetype = 'image/png'
    ,   logo_charset = 'utf-8'
    where id = 19;
  commit;

end create_sample_data;


procedure remove_sample_data
is
begin
    delete from eba_cust_customers where id < 100;
    delete from eba_cust_customer_reftype_ref where id < 100;
    delete from eba_cust_impl_partners where id < 100;
    delete from eba_cust_competitors where id < 100;
    delete from eba_cust_contacts where id < 100;
    delete from eba_cust_activities where id < 100;
    delete from eba_cust_notes where id < 100;
    delete from eba_cust_links where id < 100;
    delete from eba_cust_products where id < 100;
exception when others 
  then null;
end remove_sample_data;
    
end eba_cust_sample_data;
/
show errors