CREATE OR REPLACE PACKAGE BODY "EBA_SALES_DATA" as 
    procedure load_sales_periods is 
        y   pls_integer; 
        q   pls_integer; 
        yy  pls_integer; 
        d   date; 
    begin 
        yy := to_char(sysdate-365,'RR');
        d := to_date(to_char(sysdate-365,'YYYY')||'.01.01','YYYY.MM.DD');
 
        for y in 1..20 loop 
            for q in 1..4 loop 
                insert into eba_sales_sales_periods( period_name, first_day, last_day, fiscal_year )
                values ( 
                    'Q'||q||'FY'||lpad(to_char(yy-1+y),2,'0'), 
                    add_months(d,(12*(y-1))+ ((q-1)*3)), 
                    add_months(d,(12*(y-1))+ ((q)*3))-1, 
                    yy+y-1
                ); 
            end loop; 
        end loop;  
    end load_sales_periods; 
 
    procedure load_codes is
    begin
 
        /* sales periods */
        load_sales_periods;
 
        /* currencies */
        insert into eba_sales_currencies (id, currency_code, usd_ex_rate, currency_symbol, currency_description) values (1,'USD',1,'$','US Dollar');
 
        /* countries */
        insert into eba_sales_countries (id,country_code,country_name) values (1,'US','United States'); 
        insert into eba_sales_countries (id,country_code,country_name) values (2,'MEX','Mexico'); 
        insert into eba_sales_countries (id,country_code,country_name) values (3,'CAN','Canada'); 
        insert into eba_sales_countries (id,country_code,country_name) values (4,'UK','United Kingdom'); 
        insert into eba_sales_countries (id,country_code,country_name) values (5,'IN','India'); 
        insert into eba_sales_countries (id,country_code,country_name) values (6,'IE','Ireland'); 
        insert into eba_sales_countries (id,country_code,country_name) values (7,'DE','Germany'); 
        insert into eba_sales_countries (id,country_code,country_name) values (8,'ES','Spain'); 
        insert into eba_sales_countries (id,country_code,country_name) values (9,'AQ','Antarctica'); 
        insert into eba_sales_countries (id,country_code,country_name) values (10,'BE','Beljium'); 
        insert into eba_sales_countries (id,country_code,country_name) values (11,'BM','Bermuda'); 
        insert into eba_sales_countries (id,country_code,country_name) values (12,'BR','Brazil'); 
        insert into eba_sales_countries (id,country_code,country_name) values (13,'BI','Brundi'); 
        insert into eba_sales_countries (id,country_code,country_name) values (14,'JP','Japan'); 
        insert into eba_sales_countries (id,country_code,country_name) values (15,'KO','Korea'); 
 
        /* states */
        insert into eba_sales_states (state, code, country) values ('Alabama', 'AL', 'United States');
        insert into eba_sales_states (state, code, country) values ('Alaska', 'AK', 'United States');
        insert into eba_sales_states (state, code, country) values ('American Samoa', 'AS', 'United States');
        insert into eba_sales_states (state, code, country) values ('Arizona', 'AZ', 'United States');
        insert into eba_sales_states (state, code, country) values ('Arkansas', 'AR', 'United States');
        insert into eba_sales_states (state, code, country) values ('California', 'CA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Colorado', 'CO', 'United States');
        insert into eba_sales_states (state, code, country) values ('Connecticut', 'CT', 'United States');
        insert into eba_sales_states (state, code, country) values ('Delaware', 'DE', 'United States');
        insert into eba_sales_states (state, code, country) values ('Dist. of Columbia', 'DC', 'United States');
        insert into eba_sales_states (state, code, country) values ('Florida', 'FL', 'United States');
        insert into eba_sales_states (state, code, country) values ('Georgia', 'GA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Guam', 'GU', 'United States');
        insert into eba_sales_states (state, code, country) values ('Hawaii', 'HI', 'United States');
        insert into eba_sales_states (state, code, country) values ('Idaho', 'ID', 'United States');
        insert into eba_sales_states (state, code, country) values ('Illinois', 'IL', 'United States');
        insert into eba_sales_states (state, code, country) values ('Indiana', 'IN', 'United States');
        insert into eba_sales_states (state, code, country) values ('Iowa', 'IA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Kansas', 'KS', 'United States');
        insert into eba_sales_states (state, code, country) values ('Kentucky', 'KY', 'United States');
        insert into eba_sales_states (state, code, country) values ('Louisiana', 'LA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Maine', 'ME', 'United States');
        insert into eba_sales_states (state, code, country) values ('Maryland', 'MD', 'United States');
        insert into eba_sales_states (state, code, country) values ('Marshall Islands', 'MH', 'United States');
        insert into eba_sales_states (state, code, country) values ('Massachusetts', 'MA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Michigan', 'MI', 'United States');
        insert into eba_sales_states (state, code, country) values ('Micronesia', 'FM', 'United States');
        insert into eba_sales_states (state, code, country) values ('Minnesota', 'MN', 'United States');
        insert into eba_sales_states (state, code, country) values ('Mississippi', 'MS', 'United States');
        insert into eba_sales_states (state, code, country) values ('Missouri', 'MO', 'United States');
        insert into eba_sales_states (state, code, country) values ('Montana', 'MT', 'United States');
        insert into eba_sales_states (state, code, country) values ('Nebraska', 'NE', 'United States');
        insert into eba_sales_states (state, code, country) values ('Nevada', 'NV', 'United States');
        insert into eba_sales_states (state, code, country) values ('New Hampshire', 'NH', 'United States');
        insert into eba_sales_states (state, code, country) values ('New Jersey', 'NJ', 'United States');
        insert into eba_sales_states (state, code, country) values ('New Mexico', 'NM', 'United States');
        insert into eba_sales_states (state, code, country) values ('New York', 'NY', 'United States');
        insert into eba_sales_states (state, code, country) values ('North Carolina', 'NC', 'United States');
        insert into eba_sales_states (state, code, country) values ('North Dakota', 'ND', 'United States');
        insert into eba_sales_states (state, code, country) values ('Northern Marianas', 'MP', 'United States');
        insert into eba_sales_states (state, code, country) values ('Ohio', 'OH', 'United States');
        insert into eba_sales_states (state, code, country) values ('Oklahoma', 'OK', 'United States');
        insert into eba_sales_states (state, code, country) values ('Oregon', 'OR', 'United States');
        insert into eba_sales_states (state, code, country) values ('Palau', 'PW', 'United States');
        insert into eba_sales_states (state, code, country) values ('Pennsylvania', 'PA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Puerto Rico', 'PR', 'United States');
        insert into eba_sales_states (state, code, country) values ('Rhode Island', 'RI', 'United States');
        insert into eba_sales_states (state, code, country) values ('South Carolina', 'SC', 'United States');
        insert into eba_sales_states (state, code, country) values ('South Dakota', 'SD', 'United States');
        insert into eba_sales_states (state, code, country) values ('Tennessee', 'TN', 'United States');
        insert into eba_sales_states (state, code, country) values ('Texas', 'TX', 'United States');
        insert into eba_sales_states (state, code, country) values ('Utah', 'UT', 'United States');
        insert into eba_sales_states (state, code, country) values ('Vermont', 'VT', 'United States');
        insert into eba_sales_states (state, code, country) values ('Virginia', 'VA', 'United States');
        insert into eba_sales_states (state, code, country) values ('Virgin Islands', 'VI', 'United States');
        insert into eba_sales_states (state, code, country) values ('Washington', 'WA', 'United States');
        insert into eba_sales_states (state, code, country) values ('West Virginia', 'WV', 'United States');
        insert into eba_sales_states (state, code, country) values ('Wisconsin', 'WI', 'United States');
        insert into eba_sales_states (state, code, country) values ('Wyoming', 'WY', 'United States');
 
        update eba_sales_states set state_region = 'North East' where code in ('CT','NH','VT','MA','NY','NJ','PN','ME','RI','MD','DC');
        update eba_sales_states set state_region = 'South East' where code in ('FL','GA','SC','NC','VA','TN','MI','AL');
        update eba_sales_states set state_region = 'Western' where code in ('CA','WA','OR','NM','UT','AZ');
 
        insert into eba_sales_states (state, code, country) values ('Alberta','AB', 'Canada');
        insert into eba_sales_states (state, code, country) values ('British Columbia','BC', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Manitoba','MB', 'Canada');
        insert into eba_sales_states (state, code, country) values ('New Brunswick','NB', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Newfoundland and Labrador','NL', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Northwest Territories','NT', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Nova Scotia','NS', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Nunavut','NU', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Ontario','ON', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Prince Edward Island','PE', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Quebec','QC', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Saskatchewan','SK', 'Canada');
        insert into eba_sales_states (state, code, country) values ('Yukon','YT', 'Canada');
 
        insert into eba_sales_states (state, code, country) values ('Aguascalientes','AG', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Baja California','BJ', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Baja California Sur','BS', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Campeche','CP', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Chiapas','CH', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Chihuahua','CI', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Coahuila','CU', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Colima','CL', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Distrito Federal','DF', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('MS Durango','DG', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Guanajuato','GJ', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Guerrero','GR', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Hidalgo','HG', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Jalisco','JA', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Mexico','EM', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Michoacan','MH', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Morelos','MR', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Nayarit','NA', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Nuevo Leon','NL', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Oaxaca','OA', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Puebla','PU', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Queretaro','QA', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Quintana Roo','QR', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Potosi','SL', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Sinaloa','SI', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Sonora','SO', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Tabasco','TA', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Tamaulipas','TM', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Tlaxcala','TL', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('V eracruz','VZ', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Yucatan','YC', 'Mexico');
        insert into eba_sales_states (state, code, country) values ('Zacatecas','ZT', 'Mexico');
 
        /* deal status codes */
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (1,1,'Product Presentation Performed',20,'At least one product presentation was performed'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (2,2,'Customer Identified',10,'A legitimate prospect has been identified, you have a contact'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (3,3,'Products Identified',30,'Customer has selected the products they are intersted in'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (4,4,'Opportunity Closed / Lost',0,'No customer interest at this point in time'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (5,5,'Payment Method Identified',40,'A contracting vehicle or some payment method has been idenfieid'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (6,6,'Price Proposal Made',50,'Customer has been given a price'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (7,7,'Customer Informally Agrees to Buy',60,'Customer has informally agreed to the price'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (8,8,'Customer Presented Terms',70,'Customer has been presented Terms and Conditions'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (9,9,'Legal Approval of Contract',80,'Legal Departments Approve Contract'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (10,10,'Customer Signs Contract',90,'Customer Signs Contract'); 
        insert into eba_sales_deal_status_codes (id,display_order,status_code,corresponding_prob_pct,code_description) values (11,11,'Payment Received',100,'Payment Received'); 
 
        /* salesrep roles */
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (1,'Sales Representative','Y'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (2,'Sales Consultant','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (3,'Legal','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (4,'Business Development','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (5,'Consulting Services Sales','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (6,'Education Services Sales','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (7,'Tele-Sales','Y'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (8,'Support','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (9,'Evangelist','N'); 
        insert into eba_sales_salesrep_roles (id,role_name,is_sales_rep) values (10,'Sales Manager','Y'); 
 
        /* lead status codes */
        insert into eba_sales_lead_status_codes (id,display_order,status_code) values (1,4,'Dead'); 
        insert into eba_sales_lead_status_codes (id,display_order,status_code) values (2,3,'Hot'); 
        insert into eba_sales_lead_status_codes (id,display_order,status_code) values (3,2,'Qualified'); 
        insert into eba_sales_lead_status_codes (id,display_order,status_code) values (4,1,'Unqualified'); 
        insert into eba_sales_lead_status_codes (id,display_order,status_code) values (5,5,'Converted to Opportunity'); 
 
        /* lead sources */
        insert into eba_sales_lead_sources (id,lead_source) values (1,'Internet'); 
        insert into eba_sales_lead_sources (id,lead_source) values (2,'Direct Mail'); 
        insert into eba_sales_lead_sources (id,lead_source) values (3,'Email'); 
        insert into eba_sales_lead_sources (id,lead_source) values (4,'Unknown'); 
 
        /* competitor threats */
        insert into eba_sales_competitor_threats (id,display_order, competitor_threat) values (1,1, 'Perceived Front Runner');
        insert into eba_sales_competitor_threats (id,display_order, competitor_threat) values (2,2, 'Strong and worthy advisory');
        insert into eba_sales_competitor_threats (id,display_order, competitor_threat) values (3,3, 'Moderate threat');
        insert into eba_sales_competitor_threats (id,display_order, competitor_threat) values (4,4, 'Low threat level');
        insert into eba_sales_competitor_threats (id,display_order, competitor_threat) values (5,5, 'Not a threat at this time');
 
        /* competitors */
        insert into eba_sales_competitors (id,competitor_name) values (1,'Competitor A');
        insert into eba_sales_competitors (id,competitor_name) values (2,'Competitor B');
        insert into eba_sales_competitors (id,competitor_name) values (3,'Competitor C');
        insert into eba_sales_competitors (id,competitor_name) values (4,'Competitor D');
        insert into eba_sales_competitors (id,competitor_name) values (5,'Competitor E');
        insert into eba_sales_competitors (id,competitor_name) values (6,'Competitor F');
        insert into eba_sales_competitors (id,competitor_name) values (7,'Competitor G');
 
        /* financial assessments */
        insert into eba_sales_fin_assessments (display_order, assessment_text) values (1, 'No Dollars at Stake, Customer Education');
        insert into eba_sales_fin_assessments (display_order, assessment_text) values (2, 'No Dollars at Stake, Defending Existing Products');
        insert into eba_sales_fin_assessments (display_order, assessment_text) values (3, 'New Dollars, Green Field Opportunity');
        insert into eba_sales_fin_assessments (display_order, assessment_text) values (4, 'New Dollars, Replacement Opportunity');
 
        /* status assessments */
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (1,1, 'In Process - Looking Bad');
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (2,2, 'In Process - Looking Good');
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (3,3, 'In Process - Looking Neutral');
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (4,4, 'Lost - Declared moving to competitor');
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (5,5, 'Lost - Staying with current vendor');
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (6,6, 'Staying with our product - Never a Threat');
        insert into eba_sales_status_assessments (id,display_order, assessment_text) values (7,7, 'Successful Defend Ongoing');
 
        /* risk assessments */
        insert into eba_sales_risk_assessments (display_order, assessment_text) values (1, 'High');
        insert into eba_sales_risk_assessments (display_order, assessment_text) values (2, 'Moderate');
        insert into eba_sales_risk_assessments (display_order, assessment_text) values (3, 'Low');
        insert into eba_sales_risk_assessments (display_order, assessment_text) values (4, 'Undetermined');
        insert into eba_sales_risk_assessments (display_order, assessment_text) values (5, 'No known risk');
 
        /* standings */
        insert into eba_sales_account_standing (display_order, standing_text) values (1, 'Exclusive to us');
        insert into eba_sales_account_standing (display_order, standing_text) values (2, 'Mostly Us');
        insert into eba_sales_account_standing (display_order, standing_text) values (3, 'Mixed');
        insert into eba_sales_account_standing (display_order, standing_text) values (4, 'Primarily competitors');
        insert into eba_sales_account_standing (display_order, standing_text) values (5, 'No account presence');
 
        /* industries */
        insert into eba_sales_industries (id, industry_name) values (1, 'Financial Services');
        insert into eba_sales_industries (id, industry_name) values (2, 'Aerospace');
        insert into eba_sales_industries (id, industry_name) values (3, 'Military');
        insert into eba_sales_industries (id, industry_name) values (4, 'Telco');
        insert into eba_sales_industries (id, industry_name) values (5, 'Power');
        insert into eba_sales_industries (id, industry_name) values (6, 'Retail');
        commit;
 
        /* app access levels */
        insert into eba_sales_access_levels (id, access_level) values (-99, 'No Access');
        insert into eba_sales_access_levels (id, access_level) values (0, 'Approval Pending');
        insert into eba_sales_access_levels (id, access_level) values (1, 'Reader');
        insert into eba_sales_access_levels (id, access_level) values (2, 'Contributor');
        insert into eba_sales_access_levels (id, access_level) values (3, 'Administrator');
 
        /* app preferences */
        insert into eba_sales_preferences (id, preference_name, preference_value) values (1, 'ACCESS_CONTROL_ENABLED', 'N');
        insert into eba_sales_preferences (id, preference_name, preference_value) values (2, 'ACCESS_CONTROL_SCOPE', 'ACL_ONLY');
        insert into eba_sales_preferences (id, preference_name, preference_value) values (3, 'USERNAME_FORMAT', 'EMAIL');
 
        /* Constraint error lookups */
        insert into eba_sales_error_lookup (constraint_name, message, language_code) values ('EBA_SALES_USERS_UK', 'Username must be unique.', 'en');
        insert into eba_sales_error_lookup (constraint_name, message, language_code) values ('EBA_SALES_CUST_TERR_FK','There are Accounts associated with this territory','en');
 
       /* product family lookups */
       insert into eba_sales_product_families (id, product_family, description) values (1, 'NAA','North America Applications (App Sales)');
       insert into eba_sales_product_families (id, product_family, description) values (2, 'NAS','North America Sales (Tech & Hardware Sales)');
       insert into eba_sales_product_families (id, product_family, description) values (3, 'GBU','Global Business Unit');

       /* product LOBs lookups */
       insert into eba_sales_product_lobs (id, name, description) values (1, 'NAA','North America Applications (App Sales)');
       insert into eba_sales_product_lobs (id, name, description) values (2, 'NAS','North America Sales (Tech & Hardware Sales)');
       insert into eba_sales_product_lobs (id, name, description) values (3, 'GBU','Global Business Unit');
       insert into eba_sales_product_lobs (id, name, description) values (4, 'OTHER','Other Business Units');

       /* Agreement Types */
       insert into EBA_SALES_AGREEMENT_TYPES (name, description) values ('ELA','End-User License Agreement');
       insert into EBA_SALES_AGREEMENT_TYPES (name, description) values ('ULA','Universal License Agreement');
 
    end load_codes; 
 
    procedure load_sample is 
    begin
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (1,'US Commercial East', 'United States Commercial'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (2,'US Fed', 'United States Federal Government'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (3,'US Commercial West','United States Commercial West'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (4,'US VAR','United States Value Added Resellers'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (5,'EMEA Commercial','Europe Middle East and Africa Commercial'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (6,'EMEA Govt','Europe Middle East and Africa Government'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (7,'LA Commercial','Latin America Commercial'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (8,'LA Government','Latin America Government'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (9,'APAC Commercial','Asia Pacific Commerical'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (10,'APAC Govt','Asia Pacific Government'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (11,'Mexico','Mexico Sales'); 
        Insert into EBA_SALES_TERRITORIES (ID,TERRITORY_NAME, TERRITORY_DESCRIPTION) values (12,'Canada','Candada Sales'); 
         
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (1,'Lexington Exports',3,'Y'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (2,'Madison Materials',1,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (3,'Connecticut Composites',1,'Y'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (4,'Department of Labor',2,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (5,'Asymmetrical Antibiotics Inc',3,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (6,'Seminal Semiconductor',3,'Y'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (7,'Aeronautical and Space Agency',2,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (8,'Army',12,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (9,'Department of Energy',10,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (10,'Department of the Interior',2,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (11,'Integration Magic',4,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (12,'Acme Department of State',1,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (13,'Department of State',2,'Y'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (14,'Acme Department of Corrections',1,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (15,'Department of Natural Resources',8,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (16,'State Department of Education',3,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (17,'Acme Department of Transportation',1,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (18,'State Department of Revenue',1,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (19,'Acme Department of Taxation',6,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (20,'Turbo Charged Migration Systems',3,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (21,'Malta Bold Design Studios Inc',3,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (22,'Understated Web Design of Boston',3,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (23,'Research and Development Council',6,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (24,'Employment and Social Affairs',6,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (25,'South East Asian Economic and Development Labs',10,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (26,'Mt Fuji Research Systems',9,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (27,'National Department of Beach Preservation',8,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (28,'Swiss Mountain Java Solutions',5,'Y'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (29,'Resource Planning and Conservation Inc',5,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (30,'Deep Cut Tier and Rim Services',9,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (31,'Grand Canyon Adventure Travel Services',3,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (32,'ACME Guardians',11,'N'); 
        insert into eba_sales_customers (id, customer_name, customer_territory_id, customer_is_key_account_yn) values (33,'J4HT Inc',12,'Y'); 
         
         
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (1,'Davidson','David','david.davidson@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (2,'Robertson','Robert','robert.robertson@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (3,'Albertson','Amy','amy.albertson@fastmail.com',2); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (4,'Summerson','Sam','sam.sommerson@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (5,'Dewy','Dunbarton','dewy.dunbarton@fastmail.com',3); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (6,'Samantha','Dundealski','dewy.dunbarton@fastmail.com',3); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (7,'Martha','May','martha.may@fastmail.com',3); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (8,'Marvin','Nimitz','marvin.nimitz@fastmail.com',3); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (9,'Raj','Gupta','raj.gupta@fastmail.com',3); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (10,'Sanjay','Sim','sanjay.sim@fastmail.com',3); 
         
         
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (11,'Sally','Simm','sally.simm@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (12,'Jing','Lu','jing.lu@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (13,'Cynthia','Cheng','cynthia.cheng@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (14,'Hasan','Patel','hasan.patel@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (15,'Roger','Nelson','roger.nelson@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (16,'Sam','Smith','sam.smith@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (17,'Peter','Gorski','peter.gorski@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (18,'Larry','Heart','larry.heart@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (19,'Chip','Chadworth','chip.chadworth@fastmail.com',1); 
        insert into eba_sales_SALESREPS (id,REP_LAST_NAME, REP_FIRST_NAME, REP_EMAIL, REP_ROLE) 
        values (20,'Sharon','Sweed','sharon.sweed@fastmail.com',1); 
         
        -- Products 
         
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (1,'Peregrine Enterprise Edition','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (2,'Peregrine Standard Edition','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (3,'Osprey Enterprise Edition','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (4,'System Sanity Check','consulting service'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (5,'Symmetric 1000','hardware'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (6,'Symmetric 2000','hardware'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (7,'Symmetric 2100','hardware'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (8,'Liquid Designer','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (9,'CRUD Code Generator','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (10,'SQL Statement Synthesizer','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (11,'HDRS Enterprise Edition','software'); 
        insert into eba_sales_PRODUCTS (id,product_name,product_description) values (12,'JGFW Standard Edition','software'); 
         
        -- Opportunities 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (1,1,1,'Enterprise Lic Deal',sysdate+60,12345,10,1); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (1,1,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (2,1,2, 5000); 
        insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (1,1,2,1); 
              
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (2,2,1,'Marketing Dept Site Lic',sysdate+85,100542,10,1); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id,QUOTE_PRICE) values (3,2,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id,QUOTE_PRICE) values (4,2,2, 5000); 
        insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (2,2,1,1); 
         
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (3,2,1,'Upgrade',sysdate+90,65432,10,1); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (5,3,5, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (6,3,6, 5000); 
        insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (3,3,3,2); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (4,5,3,'Modernization Program',sysdate+90,212890,10,1); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (7,4,5, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (8,4,6, 5000); 
        insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (4,4,4,4); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (5,5,3,'Refactoring of Application',sysdate-5,6145,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (9,5,5, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (10,5,6,5000); 
        insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (5,5,5,5); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (6,5,1,'Special Project',sysdate-15,15250,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (11,6,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (12,6,2, 5000); 
        --insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (6,6,1,1); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (7,2,2,'Network Installation 2',sysdate-90,7500,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (13,7,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (14,7,2, 5000); 
        --insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (7,7,2,2); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (8,2,2,'Network Installation 1',sysdate-120,17500,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (15,8,3, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (16,8,2, 5000); 
        --insert into EBA_SALES_DEAL_COMPETITION (id, deal_id, COMPETITOR_THREAT_ID, competitor_id) values (8,8,3,3); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (9,2,2,'Network Installation 3',sysdate-10,7500,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (17,9,3, 5000); 
         
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (10,5,6,'Web HR Project',sysdate-30,12000,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (18,10,3, 50010); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (19,10,4, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (20,10,5, 50200); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (11,14,2,'Network Upgrade 1',sysdate-200,7200,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (21,11,6, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (22,11,7, 300); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (23,11,8, 5000); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (12,15,3,'Network Upgrade 2',sysdate-110,5500,100,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (24,12,7, 25000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (25,12,8, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (26,12,9, 5000); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (13,16,4,'Network Upgrade 3',sysdate-10,2500,50,11); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (27,13,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (28,13,8, 53000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (29,13,11, 4000); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (14,17,5,'Modernization Program',sysdate-10,25500,50,4); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (30,14,10, 5000); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (15,18,6,'Legacy System Migration Program',sysdate-4,13500,50,5); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (31,15,10, 5000); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (16,19,7,'Open Systems Web Design Project',sysdate-5,14580,50,5); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (32,16,8, 5000); 
         
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (17,20,8,'TPS Reporting Solution',sysdate-5,18500,50,5); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (33,17,4, 12000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (34,17,5, 12000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (35,17,6, 12000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (36,17,7, 12000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (37,17,8, 12000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (38,17,9, 12000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (39,17,10, 5000); 
             
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (18,20,9,'Bianual Upgrade',sysdate-8,10000,50,5); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (40,18,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (41,18,2, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (42,18,5, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (43,18,7, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (44,18,8, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (45,18,9, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (46,18,10, 5000); 
             
             
        insert into EBA_SALES_DEALS (id,customer_id,salesrep_id_01,deal_name,deal_close_date,deal_amount,DEAL_PROBABILITY,DEAL_STATUS_CODE_ID) 
        values (19,20,10,'Sales team mobile modernization program',sysdate-8,10000,50,5); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (50,19,1, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (51,19,2, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (52,19,3, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (53,19,7, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (54,19,8, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (55,19,9, 5000); 
        insert into EBA_SALES_DEAL_PRODUCTS (id,deal_id,product_id, QUOTE_PRICE) values (56,19,10, 5000); 
         
        insert into eba_sales_users (id, username, access_level_id, account_locked) values (1, 'SAMPLE_USER', -99, 'N');
         
        insert into eba_sales_comments (id, created_by, entity_type, deal_id, note) values  
          (1, 'SAMPLE_USER', 'OPPORTUNITY', 1, 'Called customer they seem very interested, got lead from a buddy whos knows someone who plays tennis with the customer.'); 
        insert into eba_sales_comments (id, created_by, entity_type, deal_id, note) values  
          (2, 'SAMPLE_USER', 'OPPORTUNITY', 2, 'Met someone on a flight who said they had an interest in our products.'); 
        insert into eba_sales_comments (id, created_by, entity_type, deal_id, note) values  
          (3, 'SAMPLE_USER', 'OPPORTUNITY', 3, 'Call to main switchboard indicates that Adrian of New Haven Ct wants to buy something'); 
         
        -- Leads 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (1,'Server',5,1,'someone at dept of obfuscation wants some servers, call Jenny at 867-5309',2,null); 
 
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (2,'Printer',5,1,'This account needs color printers, we should pay a sales call',3,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (3,'Software',5,1,'Expressed interest in a sales tracking application, Call Bill',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (4,'Software',15,1,'Likes easy of install and cloud design, could be ready to buy',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (5,'Software',18,2,'Very much into extensibility, and our open architecture may be exactly what they are looking for',2,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (6,'Software',16,2,'White board session at conference was very interesting, may be ready to take the leap',3,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (7,'Software',17,1,'Cold called, and appeared to be a great opportunity, are are exactly the type of customer that likes our products',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (8,'Software',17,1,'Not sure if they have any money in their budget but would very much like to see a demo',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (9,'Software',19,2,'Running 20 year old COBOL system and want to modernize, need to talk to sales rep and technical contact.  Highligh Java and open source.',2,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (10,'Software',20,1,'Want to extend their ERP system, need interactive reporting solution for adhoc report requests.',2,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (11,'Software',20,3,'Plan to extend their existing CRM system using custom software, very interested in web services both REST and SOAP.',3,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (12,'Software',21,2,'Attended our demo, didn''t say a word but looked real interested, and took huge amount of notes.  I think this person is a competitor or very interested',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (13,'Software',null,null,'Jim Southworth signed up for online web demo for our new web tool',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (14,'Software',null,null,'Frank Detrick signed up for online web demo for our new web tool',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (15,'Software',null,null,'Jill Turner signed up for online web demo for our new web tool',4,null); 
         
        insert into eba_sales_leads (id,lead_name_01,account_id,lead_source_id,lead_details,lead_status_id,opportunity_id) values  
        (16,'Software',null,null,'Naresh Nara signed up for online web demo for our new web tool', 4,null); 
         
    end load_sample; 
     
    procedure remove_sample is 
    begin 
        delete from eba_sales_comments where id <= 20; 
        delete from eba_sales_deal_products where id <= 100; 
        delete from eba_sales_deal_competition where id < 100; 
        delete from eba_sales_deals where id < 100; 
        delete from eba_sales_products where id < 100; 
        delete from eba_sales_salesreps where id < 100; 
        delete from eba_sales_customers where id < 100; 
        delete from eba_sales_leads where id < 100; 
        delete from eba_sales_users where id = 1;
        delete from eba_sales_territories where id < 20;
    end remove_sample; 
 
end eba_sales_data;
/