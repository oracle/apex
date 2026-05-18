create or replace trigger biu_eba_cust_customers
   before insert or update on eba_cust_customers
   for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
   if :new.tags is not null then
         :new.tags := eba_cust_fw.tags_cleaner(:new.tags);
   end if;
   if inserting then
      if :NEW.ID is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
      end if;
      :NEW.CREATED := current_timestamp;
      :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
      :NEW.UPDATED := current_timestamp;
      :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
      :new.row_version_number := 1;
      :new.customer_name_upper := trim(upper(:new.customer_name));
      eba_cust_fw.tag_sync(
         p_new_tags      => :new.tags,
         p_old_tags      => null,
         p_content_type  => 'CUSTOMER',
         p_content_id    => :new.id );
      -- Add new column values into history table
      -- CUSTOMER_NAME (default)
      if nvl(:old.customer_name, '0') != nvl(:new.customer_name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_NAME', null, substr(:new.customer_name,0,4000) ); 
      end if;
      -- CUSTOMER_NAME_UPPER (default)
      if nvl(:old.customer_name_upper, '0') != nvl(:new.customer_name_upper,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_NAME_UPPER', null, substr(:new.customer_name_upper,0,4000) ); 
      end if;
      -- INDUSTRY_ID (foreign key)
      if nvl(:old.industry_id,-999) != nvl(:new.industry_id,-999) then
        ov := null; nv := null;
        for c1 in (select industry_name val from eba_cust_industries t where t.id = :new.industry_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'INDUSTRY_ID', ov, nv);
      end if;
      -- CATEGORY_ID (foreign key)
      if nvl(:old.category_id,-999) != nvl(:new.category_id,-999) then
        ov := null; nv := null;
        for c1 in (select category val from eba_cust_categories t where t.id = :new.category_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'CATEGORY_ID', ov, nv);
      end if;
      -- STATUS_ID (foreign key)
      if nvl(:old.status_id,-999) != nvl(:new.status_id,-999) then
        ov := null; nv := null;
        for c1 in (select status val from eba_cust_status t where t.id = :new.status_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'STATUS_ID', ov, nv);
      end if;
      -- GEOGRAPHY_ID (foreign key)
      if nvl(:old.geography_id,-999) != nvl(:new.geography_id,-999) then
        ov := null; nv := null;
        for c1 in (select geography_name val from eba_cust_geographies t where t.id = :new.geography_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('CUSTOMERS', :new.row_key, :new.id, 'GEOGRAPHY_ID', ov, nv);
      end if;
      -- REFERENCABLE (default)
      if nvl(:old.referencable, '0') != nvl(:new.referencable,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'REFERENCABLE', null, substr(:new.referencable,0,4000) ); 
      end if;
      -- MARQUEE_CUSTOMER_YN (default)
      if nvl(:old.marquee_customer_yn, '0') != nvl(:new.marquee_customer_yn,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'MARQUEE_CUSTOMER', null, substr(:new.marquee_customer_yn,0,4000) ); 
      end if;
      -- TAGS (default)
      if nvl(:old.tags, '0') != nvl(:new.tags,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'TAGS', null, substr(:new.tags,0,4000) ); 
      end if;
      -- CUSTOMER_PRODUCTS (default)
      if nvl(:old.customer_products, '0') != nvl(:new.customer_products,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_PRODUCTS', null, substr(:new.customer_products,0,4000) ); 
      end if;
      -- NUMBER_OF_USERS (default)
      if nvl(:old.number_of_users, '0') != nvl(:new.number_of_users,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'NUMBER_OF_USERS', null, substr(:new.number_of_users,0,4000) ); 
      end if;
      -- SUMMARY (default)
      if nvl(:old.summary, '0') != nvl(:new.summary,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'SUMMARY', null, substr(:new.summary,0,4000) ); 
      end if;
      -- CUSTOMER_PROFILE (default)
      if nvl(:old.customer_profile, '0') != nvl(:new.customer_profile,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'CUSTOMER_PROFILE', null, substr(:new.customer_profile,0,4000) ); 
      end if;
      -- APPLICATIONS (default)
      if nvl(:old.applications, '0') != nvl(:new.applications,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'APPLICATIONS', null, substr(:new.applications,0,4000) ); 
      end if;
      -- WEB_SITE (default)
      if nvl(:old.web_site, '0') != nvl(:new.web_site,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'WEB_SITE', null, substr(:new.web_site,0,4000) ); 
      end if;
      -- LINKEDIN (default)
      if nvl(:old.linkedin, '0') != nvl(:new.linkedin,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'LINKEDIN', null, substr(:new.linkedin,0,4000) ); 
      end if;
      -- FACEBOOK (default)
      if nvl(:old.facebook, '0') != nvl(:new.facebook,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'FACEBOOK', null, substr(:new.facebook,0,4000) ); 
      end if;
      -- TWITTER (default)
      if nvl(:old.twitter, '0') != nvl(:new.twitter,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'TWITTER', null, substr(:new.twitter,0,4000) ); 
     end if;
      -- STOCK_SYMBOL (default)
      if nvl(:old.stock_symbol, '0') != nvl(:new.stock_symbol,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'STOCK_SYMBOL', null, substr(:new.stock_symbol,0,4000) ); 
      end if;
      -- SIC (default)
      if nvl(:old.sic, '0') != nvl(:new.sic,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'SIC', null, substr(:new.sic,0,4000) ); 
      end if;
      -- DUNS (default)
      if nvl(:old.duns, '0') != nvl(:new.duns,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('CUSTOMERS', :new.row_key, :new.id, 'DUNS', null, substr(:new.duns,0,4000) ); 
      end if;
   end if;
   if :new.row_key is null then
      select eba_cust_fw.compress_int(eba_cust_seq.nextval) into :new.row_key from dual;
   end if;
   if updating then
      :NEW.UPDATED := current_timestamp;
      :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
      :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      :new.customer_name_upper := trim(upper(:new.customer_name));
     eba_cust_fw.tag_sync(
         p_new_tags      => :new.tags,
         p_old_tags      => :old.tags,
         p_content_type  => 'CUSTOMER',
         p_content_id    => :new.id );
   end if;
end;
/
show errors