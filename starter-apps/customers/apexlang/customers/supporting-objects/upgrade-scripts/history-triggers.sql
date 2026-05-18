create or replace trigger au_eba_cust_product_uses
    after update on eba_cust_product_uses
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- PRODUCT_ID (foreign key)
    if nvl(:old.product_id,-999) != nvl(:new.product_id,-999) then
        ov := null; nv := null;
        for c1 in (select product_name val from eba_cust_products t where t.id = :old.product_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select product_name val from eba_cust_products t where t.id = :new.product_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('PRODUCT_USES', null, :new.customer_id, 'PRODUCT_ID', ov, nv);
    end if;
end au_eba_cust_product_uses;
/
alter trigger au_eba_cust_product_uses enable
/

create or replace trigger au_eba_cust_customers
    after update on eba_cust_customers
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- CUSTOMER_NAME (default)
    if nvl(:old.customer_name, '0') != nvl(:new.customer_name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_NAME', substr(:old.customer_name,0,4000), substr(:new.customer_name,0,4000) ); 
    end if;
    -- CUSTOMER_NAME_UPPER (default)
    if nvl(:old.customer_name_upper, '0') != nvl(:new.customer_name_upper,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_NAME_UPPER', substr(:old.customer_name_upper,0,4000), substr(:new.customer_name_upper,0,4000) ); 
    end if;
    -- INDUSTRY_ID (foreign key)
    if nvl(:old.industry_id,-999) != nvl(:new.industry_id,-999) then
        ov := null; nv := null;
        for c1 in (select industry_name val from eba_cust_industries t where t.id = :old.industry_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select industry_name val from eba_cust_industries t where t.id = :new.industry_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'INDUSTRY_ID', ov, nv);
    end if;
    -- CATEGORY_ID (foreign key)
    if nvl(:old.category_id,-999) != nvl(:new.category_id,-999) then
        ov := null; nv := null;
        for c1 in (select category val from eba_cust_categories t where t.id = :old.category_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select category val from eba_cust_categories t where t.id = :new.category_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'CATEGORY_ID', ov, nv);
    end if;
    -- STATUS_ID (foreign key)
    if nvl(:old.status_id,-999) != nvl(:new.status_id,-999) then
        ov := null; nv := null;
        for c1 in (select status val from eba_cust_status t where t.id = :old.status_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select status val from eba_cust_status t where t.id = :new.status_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'STATUS_ID', ov, nv);
    end if;
    -- GEOGRAPHY_ID (foreign key)
    if nvl(:old.geography_id,-999) != nvl(:new.geography_id,-999) then
        ov := null; nv := null;
        for c1 in (select geography_name val from eba_cust_geographies t where t.id = :old.geography_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select geography_name val from eba_cust_geographies t where t.id = :new.geography_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'GEOGRAPHY_ID', ov, nv);
    end if;
    -- REFERENCABLE (default)
    if nvl(:old.referencable, '0') != nvl(:new.referencable,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'REFERENCABLE', substr(:old.referencable,0,4000), substr(:new.referencable,0,4000) ); 
    end if;
    -- MARQUEE_CUSTOMER_YN (default)
    if nvl(:old.marquee_customer_yn, '0') != nvl(:new.marquee_customer_yn,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'MARQUEE_CUSTOMER', substr(:old.marquee_customer_yn,0,4000), substr(:new.marquee_customer_yn,0,4000) ); 
    end if;
    -- TAGS (default)
    if nvl(:old.tags, '0') != nvl(:new.tags,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'TAGS', substr(:old.tags,0,4000), substr(:new.tags,0,4000) ); 
    end if;
    -- CUSTOMER_PRODUCTS (default)
    if nvl(:old.customer_products, '0') != nvl(:new.customer_products,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_PRODUCTS', substr(:old.customer_products,0,4000), substr(:new.customer_products,0,4000) ); 
    end if;
    -- NUMBER_OF_USERS (default)
    if nvl(:old.number_of_users, '0') != nvl(:new.number_of_users,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'NUMBER_OF_USERS', substr(:old.number_of_users,0,4000), substr(:new.number_of_users,0,4000) ); 
    end if;
    -- SUMMARY (default)
    if nvl(:old.summary, '0') != nvl(:new.summary,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'SUMMARY', substr(:old.summary,0,4000), substr(:new.summary,0,4000) ); 
    end if;
    -- CUSTOMER_PROFILE (default)
    if nvl(:old.customer_profile, '0') != nvl(:new.customer_profile,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_PROFILE', substr(:old.customer_profile,0,4000), substr(:new.customer_profile,0,4000) ); 
    end if;
    -- APPLICATIONS (default)
    if nvl(:old.applications, '0') != nvl(:new.applications,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'APPLICATIONS', substr(:old.applications,0,4000), substr(:new.applications,0,4000) ); 
    end if;
    -- WEB_SITE (default)
    if nvl(:old.web_site, '0') != nvl(:new.web_site,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'WEB_SITE', substr(:old.web_site,0,4000), substr(:new.web_site,0,4000) ); 
    end if;
    -- LINKEDIN (default)
    if nvl(:old.linkedin, '0') != nvl(:new.linkedin,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'LINKEDIN', substr(:old.linkedin,0,4000), substr(:new.linkedin,0,4000) ); 
    end if;
    -- FACEBOOK (default)
    if nvl(:old.facebook, '0') != nvl(:new.facebook,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'FACEBOOK', substr(:old.facebook,0,4000), substr(:new.facebook,0,4000) ); 
    end if;
    -- TWITTER (default)
    if nvl(:old.twitter, '0') != nvl(:new.twitter,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'TWITTER', substr(:old.twitter,0,4000), substr(:new.twitter,0,4000) ); 
    end if;
    -- STOCK_SYMBOL (default)
    if nvl(:old.stock_symbol, '0') != nvl(:new.stock_symbol,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'STOCK_SYMBOL', substr(:old.stock_symbol,0,4000), substr(:new.stock_symbol,0,4000) ); 
    end if;
    -- SIC (default)
    if nvl(:old.sic, '0') != nvl(:new.sic,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'SIC', substr(:old.sic,0,4000), substr(:new.sic,0,4000) ); 
    end if;
    -- DUNS (default)
    if nvl(:old.duns, '0') != nvl(:new.duns,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'DUNS', substr(:old.duns,0,4000), substr(:new.duns,0,4000) ); 
    end if;
end au_eba_cust_customers;
/
alter trigger au_eba_cust_customers enable
/

create or replace trigger au_eba_cust_contacts
    after update on eba_cust_contacts
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- CUSTOMER_ID (foreign key)
    if nvl(:old.customer_id,-999) != nvl(:new.customer_id,-999) then
        ov := null; nv := null;
        for c1 in (select customer_name val from eba_cust_customers t where t.id = :old.customer_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select customer_name val from eba_cust_customers t where t.id = :new.customer_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CONTACTS', null, :new.id, 'CUSTOMER_ID', ov, nv);
    end if;
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- TITLE (default)
    if nvl(:old.title, '0') != nvl(:new.title,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'TITLE', substr(:old.title,0,4000), substr(:new.title,0,4000) ); 
    end if;
    -- COMPANY (default)
    if nvl(:old.company, '0') != nvl(:new.company,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'COMPANY', substr(:old.company,0,4000), substr(:new.company,0,4000) ); 
    end if;
    -- ADDRESS_LINE1 (default)
    if nvl(:old.address_line1, '0') != nvl(:new.address_line1,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'ADDRESS_LINE1', substr(:old.address_line1,0,4000), substr(:new.address_line1,0,4000) ); 
    end if;
    -- ADDRESS_LINE2 (default)
    if nvl(:old.address_line2, '0') != nvl(:new.address_line2,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'ADDRESS_LINE2', substr(:old.address_line2,0,4000), substr(:new.address_line2,0,4000) ); 
    end if;
    -- CITY (default)
    if nvl(:old.city, '0') != nvl(:new.city,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'CITY', substr(:old.city,0,4000), substr(:new.city,0,4000) ); 
    end if;
    -- STATE (default)
    if nvl(:old.state, '0') != nvl(:new.state,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'STATE', substr(:old.state,0,4000), substr(:new.state,0,4000) ); 
    end if;
    -- COUNTRY (default)
    if nvl(:old.country, '0') != nvl(:new.country,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'COUNTRY', substr(:old.country,0,4000), substr(:new.country,0,4000) ); 
    end if;
    -- ZIP (default)
    if nvl(:old.zip, '0') != nvl(:new.zip,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'ZIP', substr(:old.zip,0,4000), substr(:new.zip,0,4000) ); 
    end if;
    -- EMAIL (default)
    if nvl(:old.email, '0') != nvl(:new.email,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'EMAIL', substr(:old.email,0,4000), substr(:new.email,0,4000) ); 
    end if;
    -- PHONE (default)
    if nvl(:old.phone, '0') != nvl(:new.phone,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'PHONE', substr(:old.phone,0,4000), substr(:new.phone,0,4000) ); 
    end if;
    -- CELL_PHONE (default)
    if nvl(:old.cell_phone, '0') != nvl(:new.cell_phone,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'CELL_PHONE', substr(:old.cell_phone,0,4000), substr(:new.cell_phone,0,4000) ); 
    end if;
    -- FAX (default)
    if nvl(:old.fax, '0') != nvl(:new.fax,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'FAX', substr(:old.fax,0,4000), substr(:new.fax,0,4000) ); 
    end if;
    -- CONTACT_TYPE_ID (foreign key)
    if nvl(:old.contact_type_id,-999) != nvl(:new.contact_type_id,-999) then
        ov := null; nv := null;
        for c1 in (select contact_type val from eba_cust_contact_types t where t.id = :old.contact_type_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select contact_type val from eba_cust_contact_types t where t.id = :new.contact_type_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CONTACTS', null, :new.id, 'CONTACT_TYPE_ID', ov, nv);
    end if;
    -- NOTES (default)
    if nvl(:old.notes, '0') != nvl(:new.notes,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'NOTES', substr(:old.notes,0,4000), substr(:new.notes,0,4000) ); 
    end if;
    -- TAGS (default)
    if nvl(:old.tags, '0') != nvl(:new.tags,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CONTACTS', null, :new.id, 'TAGS', substr(:old.tags,0,4000), substr(:new.tags,0,4000) ); 
    end if;
end au_eba_cust_contacts;
/
alter trigger au_eba_cust_contacts enable
/
?

