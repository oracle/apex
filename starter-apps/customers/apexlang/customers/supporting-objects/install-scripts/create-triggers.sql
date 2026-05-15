create or replace trigger eba_cust_users_biu
    before insert or update on eba_cust_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_cust.gen_id();
        end if;
        :new.created_by         := nvl(v('APP_USER'), USER);
        :new.created            := current_timestamp;
        :new.row_version        := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';    
        end if;
    end if;
    if updating then
            :new.updated_by         := nvl(v('APP_USER'), USER);
            :new.updated            := current_timestamp;
            :new.row_version        := nvl(:old.row_version,1) + 1;                                
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;
/
show errors


create or replace trigger eba_cust_users_bd
    before delete on eba_cust_users
    for each row
begin
    -- Disallow deletes to a user's own record.
    if v('APP_USER') = upper(:old.username) then
        raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
    end if;    
end;
/
show errors


create or replace trigger eba_cust_preferences_biu
before insert or update on eba_cust_preferences
    for each row
begin
    if inserting and :new.id is null then
        :new.id := eba_cust.gen_id();
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created_on := current_timestamp;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated_on := current_timestamp;
    end if;
    :new.preference_name := upper(:new.preference_name);
end;
/
show errors


create or replace trigger biu_eba_cust_industries
   before insert or update on eba_cust_industries
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors


create or replace trigger biu_eba_cust_geographies
   before insert or update on eba_cust_geographies
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors


create or replace trigger biu_eba_cust_categories
   before insert or update on eba_cust_categories
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors


create or replace trigger biu_eba_cust_status
   before insert or update on eba_cust_status
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors

create or replace trigger biu_eba_cust_type
   before insert or update on eba_cust_type
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors

create or replace trigger biu_eba_cust_use_case
   before insert or update on eba_cust_use_case
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors

create or replace trigger biu_eba_cust_products
   before insert or update on eba_cust_products
   for each row
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
        eba_cust_fw.tag_sync(
            p_new_tags      => :new.tags,
            p_old_tags      => null,
            p_content_type  => 'PRODUCT',
            p_content_id    => :new.id );

      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
        eba_cust_fw.tag_sync(
            p_new_tags      => :new.tags,
            p_old_tags      => :old.tags,
            p_content_type  => 'PRODUCT',
            p_content_id    => :new.id );

      end if;
   end;
/
show errors

create or replace trigger bd_eba_cust_products
    before delete on eba_cust_products
    for each row
begin

    eba_cust_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'PRODUCT',
        p_content_id    => :old.id );

end;
/
show errors

create or replace trigger biu_eba_cust_product_uses
   before insert or update on eba_cust_product_uses
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors


create or replace trigger biu_eba_cust_contacts
   before insert or update on eba_cust_contacts
   for each row
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
        eba_cust_fw.tag_sync(
            p_new_tags      => :new.tags,
            p_old_tags      => null,
            p_content_type  => 'CONTACT',
            p_content_id    => :new.id );
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
        eba_cust_fw.tag_sync(
            p_new_tags      => :new.tags,
            p_old_tags      => :old.tags,
            p_content_type  => 'CONTACT',
            p_content_id    => :new.id );
      end if;
   end;
/
show errors


create or replace trigger biu_eba_cust_contact_types
   before insert or update on eba_cust_contact_types
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/


create or replace trigger bd_eba_cust_contacts
    before delete on eba_cust_contacts
    for each row
begin

    eba_cust_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'CONTACT',
        p_content_id    => :old.id );

end;
/
show errors


create or replace
trigger biu_eba_cust_files
  before insert or update on eba_cust_files
  for each row
begin
  if (inserting or updating) and nvl(dbms_lob.getlength(:new.file_blob),0) > 15728640 then
    raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller file.');
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
  end if;

  if updating then
    :NEW.UPDATED := current_timestamp;
    :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    :new.row_version_number := nvl(:new.row_version_number,0) + 1;
  end if;

  eba_cust_fw.tag_sync(
    p_new_tags      => :new.tags,
    p_old_tags      => :old.tags,
    p_content_type  => 'FILE',
    p_content_id    => :new.id );
end;
/
show errors

create or replace trigger bd_eba_cust_files
    before delete on eba_cust_files
    for each row
begin
    eba_cust_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'FILE',
        p_content_id    => :old.id );
end;
/
show errors

create or replace trigger biu_eba_cust_links
   before insert or update on eba_cust_links
   for each row
   begin
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
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors


create or replace trigger biu_eba_cust_administrators
   before insert or update on eba_cust_administrators
   for each row
   begin
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
      end if;
    
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors


create or replace trigger  eba_cust_tags_biu
   before insert or update on eba_cust_tags
   for each row
begin
    :new.tag := upper(:new.tag);

    if inserting then
       if :NEW.TAG_ID is null then
          select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.tag_id
            from dual;
       end if;
       :NEW.CREATED := current_timestamp;
       :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
       :NEW.UPDATED := current_timestamp;
       :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    end if;
  
    if updating then
       :NEW.UPDATED := current_timestamp;
       :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    end if;
end;
/
show errors

-- HISTORY TRIGGERS
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

create or replace trigger au_eba_cust_activities
    after update on eba_cust_activities
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- TYPE_ID (foreign key)
    if nvl(:old.type_id,-999) != nvl(:new.type_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_activity_types t where t.id = :old.type_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_activity_types t where t.id = :new.type_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITIES', null, :new.id, 'TYPE_ID', ov, nv);
    end if;
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- DESCRIPTION (default)
    if nvl(:old.description, '0') != nvl(:new.description,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'DESCRIPTION', substr(:old.description,0,4000), substr(:new.description,0,4000) ); 
    end if;
    -- ACTIVITY_DATE (date/timestamp)
    if (:old.activity_date is null and :new.activity_date is not null) or 
        (:old.activity_date is not null and :new.activity_date is null) or 
        (:old.activity_date != :new.activity_date) then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'ACTIVITY_DATE', to_char(:old.activity_date, 'DD-MON-YYYY'), to_char(:new.activity_date, 'DD-MON-YYYY') );
    end if;
    -- OWNER (default)
    if nvl(:old.owner, '0') != nvl(:new.owner,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'OWNER', substr(:old.owner,0,4000), substr(:new.owner,0,4000) ); 
    end if;
    -- LOCATION (default)
    if nvl(:old.location, '0') != nvl(:new.location,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'LOCATION', substr(:old.location,0,4000), substr(:new.location,0,4000) ); 
    end if;
    commit;
end au_eba_cust_activities;
/
alter trigger au_eba_cust_activities enable
/

create or replace trigger au_eba_cust_competitors
    after update on eba_cust_competitors
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('COMPETITORS', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- DESCRIPTION (default)
    if nvl(:old.description, '0') != nvl(:new.description,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('COMPETITORS', null, :new.id, 'DESCRIPTION', substr(:old.description,0,4000), substr(:new.description,0,4000) ); 
    end if;
    -- WEBSITE (default)
    if nvl(:old.website, '0') != nvl(:new.website,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('COMPETITORS', null, :new.id, 'WEBSITE', substr(:old.website,0,4000), substr(:new.website,0,4000) ); 
    end if;
    commit;
end au_eba_cust_competitors;
/
alter trigger au_eba_cust_competitors enable
/

create or replace trigger  eba_cust_product_statuses_biu
   before insert or update on eba_cust_product_statuses
   for each row
begin
    if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
    end if;

    if inserting then
       :NEW.CREATED := current_timestamp;
       :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
       :NEW.UPDATED := current_timestamp;
       :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    end if;
  
    if updating then
       :NEW.UPDATED := current_timestamp;
       :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
    end if;
end;
/

create or replace trigger au_eba_cust_cust_partner_ref
    after insert or update or delete on eba_cust_cust_partner_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select name val from eba_cust_impl_partners t where t.id = :old.partner_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select name val from eba_cust_impl_partners t where t.id = :new.partner_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'PARTNER_ID', ov, nv);
    commit;
end au_eba_cust_cust_partner_ref;
/
alter trigger au_eba_cust_cust_partner_ref enable
/

create or replace trigger au_eba_cust_cust_competitor_re
    after insert or update or delete on eba_cust_cust_competitor_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select name val from eba_cust_competitors t where t.id = :old.competitor_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select name val from eba_cust_competitors t where t.id = :new.competitor_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'COMPETITOR_ID', ov, nv);
    commit;
end au_eba_cust_cust_competitor_re;
/
alter trigger au_eba_cust_cust_competitor_re enable
/

create or replace trigger au_eba_cust_customer_reftype_r
    after insert or update or delete on eba_cust_customer_reftype_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select reference_type val from eba_cust_reference_types t where t.id = :old.reference_type_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select reference_type val from eba_cust_reference_types t where t.id = :new.reference_type_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'REFERENCE_TYPE_ID', ov, nv);
    commit;
end au_eba_cust_customer_reftype_r;
/
alter trigger au_eba_cust_customer_reftype_r enable
/

create or replace trigger au_eba_cust_activity_ref
    after update on eba_cust_activity_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- ACTIVITY_ID (foreign key)
    if nvl(:old.activity_id,-999) != nvl(:new.activity_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_activities t where t.id = :old.activity_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_activities t where t.id = :new.activity_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'ACTIVITY_ID', ov, nv);
    end if;
    -- CUSTOMER_ID (foreign key)
    if nvl(:old.customer_id,-999) != nvl(:new.customer_id,-999) then
        ov := null; nv := null;
        for c1 in (select row_key val from eba_cust_customers t where t.id = :old.customer_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select row_key val from eba_cust_customers t where t.id = :new.customer_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'CUSTOMER_ID', ov, nv);
    end if;
    -- CONTACT_ID (foreign key)
    if nvl(:old.contact_id,-999) != nvl(:new.contact_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_contacts t where t.id = :old.contact_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_contacts t where t.id = :new.contact_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'CONTACT_ID', ov, nv);
    end if;
    -- ACTIVITY_DATE (date/timestamp)
    if (:old.activity_date is null and :new.activity_date is not null) or 
        (:old.activity_date is not null and :new.activity_date is null) or 
        (:old.activity_date != :new.activity_date) then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'ACTIVITY_DATE', to_char(:old.activity_date, 'DD-MON-YYYY'), to_char(:new.activity_date, 'DD-MON-YYYY') );
    end if;
    -- OWNER (default)
    if nvl(:old.owner, '0') != nvl(:new.owner,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'OWNER', substr(:old.owner,0,4000), substr(:new.owner,0,4000) ); 
    end if;
    -- LOCATION (default)
    if nvl(:old.location, '0') != nvl(:new.location,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'LOCATION', substr(:old.location,0,4000), substr(:new.location,0,4000) ); 
    end if;
    -- NOTES (default)
    if nvl(:old.notes, '0') != nvl(:new.notes,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'NOTES', substr(:old.notes,0,4000), substr(:new.notes,0,4000) ); 
    end if;
    commit;
end au_eba_cust_activity_ref;
/
alter trigger au_eba_cust_activity_ref enable
/

show errors
