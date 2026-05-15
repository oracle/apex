create or replace TRIGGER "BD_EBA_SALES_COMPETITORS" 
    before delete on eba_sales_competitors
    for each row
begin
    eba_sales_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'COMPETITOR',
        p_content_id    => :old.id );
end;
/
create or replace TRIGGER "BD_EBA_SALES_CUST" 
  before delete on eba_sales_customers
  for each row
begin

  eba_sales_fw.tag_sync(
    p_new_tags     => null,
    p_old_tags     => :old.tags,
    p_content_type => 'ACCOUNT',
    p_content_id   => :old.id
  );

end;
/
create or replace TRIGGER "BD_EBA_SALES_CUST_CONTACTS" 
  before delete on eba_sales_customer_contacts
  for each row
begin

  eba_sales_fw.tag_sync(
    p_new_tags     => null,
    p_old_tags     => :old.tags,
    p_content_type => 'CONTACT',
    p_content_id   => :old.id
  );

end;
/
create or replace TRIGGER "BD_EBA_SALES_DEALS" 
    before delete on eba_sales_deals
    for each row
begin
    delete from EBA_SALES_DEAL_products where deal_id = :new.id;
    eba_sales_fw.tag_sync(
        p_new_tags      => null,
        p_old_tags      => :old.tags,
        p_content_type  => 'DEAL',
        p_content_id    => :old.id );
end;
/
create or replace TRIGGER "BD_EBA_SALES_LEADS" 
  before delete on eba_sales_leads
  for each row
begin

  eba_sales_fw.tag_sync(
    p_new_tags     => null,
    p_old_tags     => :old.tags,
    p_content_type => 'LEAD',
    p_content_id   => :old.id
  );

end;
/
create or replace TRIGGER "BD_EBA_SALES_PRODUCTS" 
  before delete on eba_sales_products
  for each row
begin

  eba_sales_fw.tag_sync(
    p_new_tags     => null,
    p_old_tags     => :old.tags,
    p_content_type => 'PRODUCT',
    p_content_id   => :old.id
  );

end;
/
create or replace TRIGGER "BD_EBA_SALES_TERR" 
  before delete on eba_sales_territories
  for each row
begin

  eba_sales_fw.tag_sync(
    p_new_tags     => null,
    p_old_tags     => :old.tags,
    p_content_type => 'TERRITORY',
    p_content_id   => :old.id
  );

end;
/
create or replace TRIGGER "BIU_EBA_EBA_SALES_ACT_COMPET" 
   before insert or update on eba_sales_act_competition
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_EBA_SALES_DEAL_COMPET" 
   before insert or update on eba_sales_deal_competition
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_ACCOUNT_STANDING" 
   before insert or update on eba_sales_account_standing
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_COMMENTS" before insert or update on "EBA_SALES_COMMENTS"
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_COMPETITORS" 
   before insert or update on eba_sales_competitors
   for each row
   begin
    if :new.tags is not null then
        :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
    end if;
      if inserting then
         if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
         end if;
         :NEW.CREATED := current_timestamp;
         :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
    eba_sales_fw.tag_sync(
        p_new_tags      => :new.tags,
        p_old_tags      => :old.tags,
        p_content_type  => 'COMPETITOR',
        p_content_id    => :new.id );
end;
/
create or replace TRIGGER "BIU_EBA_SALES_COMP_THREATS" 
   before insert or update on eba_sales_competitor_threats
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_COUNTRIES" 
before insert or update on eba_sales_countries
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_CURRENCIES" 
before insert or update on EBA_SALES_CURRENCIES 
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
    :new.CURRENCY_CODE := upper(:new.CURRENCY_CODE);
end;
/
create or replace TRIGGER "BIU_EBA_SALES_CUST" 
  before insert or update on eba_sales_customers
  for each row
begin

  if inserting 
  then
    if :new.id is null 
    then
      :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    :new.row_version_number := 1;
    :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);

    :new.created_by := nvl(apex_application.g_user, user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
    :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
  end if;

  if :new.tags is not null 
  then
    :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
  end if;

  eba_sales_fw.tag_sync(
    p_new_tags     => :new.tags,
    p_old_tags     => :old.tags,
    p_content_type => 'ACCOUNT',
    p_content_id   => :new.id
  );

end;
/
create or replace TRIGGER "BIU_EBA_SALES_CUSTOMERS_LOCS" 
before insert or update on eba_sales_customer_locations
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_CUST_CONTACTS" 
  before insert or update on eba_sales_customer_contacts
  for each row
begin

  if inserting 
  then
    if :new.id is null 
    then
      :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    :new.row_version_number := 1;
    :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);

    :new.created_by := nvl(apex_application.g_user, user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
    :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
  end if;

  if :new.tags is not null 
  then
    :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
  end if;

  eba_sales_fw.tag_sync(
    p_new_tags     => :new.tags,
    p_old_tags     => :old.tags,
    p_content_type => 'CONTACT',
    p_content_id   => :new.id
  );

end;
/
create or replace TRIGGER "BIU_EBA_SALES_DEALS" 
before insert or update on EBA_SALES_DEALS
    for each row
declare
    ov varchar2(4000);
    nv varchar2(4000);
begin
    if :new.tags is not null then
        :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
    end if;
    if :new.deal_close_date is null then
       :new.deal_close_date := add_months(sysdate,2);
    end if;
    for c1 in (select period_name from eba_sales_sales_periods where :new.DEAL_CLOSE_DATE between first_day and last_day) loop
        :new.qtr := c1.period_name;
    end loop;
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
    if inserting and :new.DEAL_STATUS_CODE_ID is not null then
       if :new.deal_probability is null then
          for c1 in (select corresponding_prob_pct from EBA_SALES_DEAL_STATUS_CODES where id=:new.DEAL_STATUS_CODE_ID) loop
              :new.deal_probability := c1.corresponding_prob_pct;
          end loop;
       end if;
    elsif updating and (nvl(:new.DEAL_STATUS_CODE_ID,3.1) != nvl(:old.DEAL_STATUS_CODE_ID,3.1) or :new.deal_probability is null ) then
        if :new.deal_probability is null then
           for c1 in (select corresponding_prob_pct from EBA_SALES_DEAL_STATUS_CODES where id=:new.DEAL_STATUS_CODE_ID) loop
               :new.deal_probability := c1.corresponding_prob_pct;
           end loop;
        end if;
    end if;
    --
    -- history
    --
    if updating and nvl(:old.TAGS,'x0') !=  nvl(:new.TAGS,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('tags'),:old.TAGS,:new.TAGS);
    end if;
    --
    if updating and nvl(:old.DEAL_CURRENCY,'x0') !=  nvl(:new.DEAL_CURRENCY,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('CURRENCY'),:old.DEAL_CURRENCY,:new.DEAL_CURRENCY);
    end if;
    --
    if updating and nvl(:old.DEAL_NAME,'x0') !=  nvl(:new.DEAL_NAME,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('opportunity_name'),:old.DEAL_NAME,:new.DEAL_NAME);
    end if;
    --
    if updating and nvl(:old.STRATEGY,'x0') !=  nvl(:new.STRATEGY,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('STRATEGY'),:old.STRATEGY,:new.STRATEGY);
    end if;
    --
    if updating and nvl(:old.DEAL_SUMMARY,'x0') !=  nvl(:new.DEAL_SUMMARY,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('summary'),:old.DEAL_SUMMARY,:new.DEAL_SUMMARY);
    end if;
    --
    if updating and nvl(:old.NATIONAL_TOP_25_YN,'x0') !=  nvl(:new.NATIONAL_TOP_25_YN,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('NATIONAL_TOP_25'),:old.NATIONAL_TOP_25_YN,:new.NATIONAL_TOP_25_YN);
    end if;
    --
    if updating and nvl(:old.PARTNER,'x0') !=  nvl(:new.PARTNER,'x0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('PARTNER'),:old.PARTNER,:new.PARTNER);
    end if;
    --
    if updating and nvl(:old.QTR,'0') !=  nvl(:new.QTR,'0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('QTR'),:old.QTR,:new.QTR);
    end if;
    --
    if updating and nvl(:old.PRO_RE_ACTIVE,'0') !=  nvl(:new.PRO_RE_ACTIVE,'0') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('PRO_RE_ACTIVE'),:old.PRO_RE_ACTIVE,:new.PRO_RE_ACTIVE);
    end if;
    --
    -- date history
    --
    if updating and to_char(:old.DEAL_CLOSE_DATE,'DD-MM-YYYY') !=  to_char(:new.DEAL_CLOSE_DATE,'DD-MM-YYYY') then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('close_date'),to_char(:old.DEAL_CLOSE_DATE,'DD-MM-YYYY'),to_char(:new.DEAL_CLOSE_DATE,'DD-MM-YYYY'));
    end if;
    --
    -- numeric history
    --
    if updating and nvl(:old.DEAL_PROBABILITY,0) !=  nvl(:new.DEAL_PROBABILITY,0) then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('probability'),:old.DEAL_PROBABILITY,:new.DEAL_PROBABILITY);
    end if;
    --
    if updating and nvl(:old.DEAL_AMOUNT,0) !=  nvl(:new.DEAL_AMOUNT,0) then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('amount'),:old.DEAL_AMOUNT,:new.DEAL_AMOUNT);
    end if;
    --
    if updating and nvl(:old.DEAL_LICENSE,0) !=  nvl(:new.DEAL_LICENSE,0) then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('license'),:old.DEAL_LICENSE,:new.DEAL_LICENSE);
    end if;
    --
    if updating and nvl(:old.DEAL_SUPPORT,0) !=  nvl(:new.DEAL_SUPPORT,0) then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('support'),:old.DEAL_SUPPORT,:new.DEAL_SUPPORT);
    end if;
    --
    if updating and nvl(:old.DEAL_EDUCATION,0) !=  nvl(:new.DEAL_EDUCATION,0) then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('education'),:old.DEAL_EDUCATION,:new.DEAL_EDUCATION);
    end if;
    --
    if updating and nvl(:old.DEAL_CONSULTING,0) !=  nvl(:new.DEAL_CONSULTING,0) then
          insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('consulting'),:old.DEAL_CONSULTING,:new.DEAL_CONSULTING);
    end if;
    --
    if updating and nvl(:old.DEAL_STATUS_CODE_ID,0) != nvl(:new.DEAL_STATUS_CODE_ID,0) then
      ov := null; nv := null;
      for c1 in (select STATUS_CODE from EBA_SALES_LEAD_STATUS_CODES c where c.id = :old.DEAL_STATUS_CODE_ID) loop
          ov := c1.STATUS_CODE;
      end loop;
      for c1 in (select STATUS_CODE from EBA_SALES_LEAD_STATUS_CODES c where c.id = :new.DEAL_STATUS_CODE_ID) loop
          nv := c1.STATUS_CODE;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('status code'),ov,nv);
    end if;
    --
    if updating and nvl(:old.CUSTOMER_ID,0) != nvl(:new.CUSTOMER_ID,0) then
      ov := null; nv := null;
      for c1 in (select CUSTOMER_NAME from EBA_SALES_CUSTOMERS c where c.id = :old.CUSTOMER_ID) loop
          ov := c1.CUSTOMER_NAME;
      end loop;
      for c1 in (select CUSTOMER_NAME from EBA_SALES_CUSTOMERS c where c.id = :new.CUSTOMER_ID) loop
          nv := c1.CUSTOMER_NAME;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('account'),ov,nv);
    end if;
    --
    if updating and nvl(:old.SALESREP_ID_01,0) != nvl(:new.SALESREP_ID_01,0) then
      ov := null; nv := null;
      for c1 in (select REP_EBA_SALES_USERNAME,REP_EMAIL,REP_LAST_NAME,REP_FIRST_NAME from EBA_SALES_SALESREPS c where c.id = :old.SALESREP_ID_01) loop
          ov := nvl(nvl(c1.REP_EMAIL,c1.REP_FIRST_NAME||' '||c1.REP_LAST_NAME),c1.REP_EBA_SALES_USERNAME);
      end loop;
      for c1 in (select REP_EBA_SALES_USERNAME,REP_EMAIL,REP_LAST_NAME,REP_FIRST_NAME from EBA_SALES_SALESREPS c where c.id = :new.SALESREP_ID_01) loop
          nv := nvl(nvl(c1.REP_EMAIL,c1.REP_FIRST_NAME||' '||c1.REP_LAST_NAME),c1.REP_EBA_SALES_USERNAME);
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('SALESREP_01'),ov,nv);
    end if;
    --
    if updating and nvl(:old.FINANCIAL_ASSESSMENT_ID,0) != nvl(:new.FINANCIAL_ASSESSMENT_ID,0) then
      ov := null; nv := null;
      for c1 in (select ASSESSMENT_TEXT from EBA_SALES_FIN_ASSESSMENTS c where c.id = :old.FINANCIAL_ASSESSMENT_ID) loop
          ov := c1.ASSESSMENT_TEXT;
      end loop;
      for c1 in (select ASSESSMENT_TEXT from EBA_SALES_FIN_ASSESSMENTS c where c.id = :new.FINANCIAL_ASSESSMENT_ID) loop
          nv := c1.ASSESSMENT_TEXT;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('financial_assessment'),ov,nv);
    end if;
    --
    if updating and nvl(:old.STATUS_ASSESSMENT_ID,0) != nvl(:new.STATUS_ASSESSMENT_ID,0) then
      ov := null; nv := null;
      for c1 in (select ASSESSMENT_TEXT from EBA_SALES_STATUS_ASSESSMENTS c where c.id = :old.STATUS_ASSESSMENT_ID) loop
          ov := c1.ASSESSMENT_TEXT;
      end loop;
      for c1 in (select ASSESSMENT_TEXT from EBA_SALES_STATUS_ASSESSMENTS c where c.id = :new.STATUS_ASSESSMENT_ID) loop
          nv := c1.ASSESSMENT_TEXT;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('status_assessment'),ov,nv);
    end if;
    --
    if updating and nvl(:old.RISK_ASSESSMENT_ID,0) != nvl(:new.RISK_ASSESSMENT_ID,0) then
      ov := null; nv := null;
      for c1 in (select ASSESSMENT_TEXT from EBA_SALES_RISK_ASSESSMENTS c where c.id = :old.RISK_ASSESSMENT_ID) loop
          ov := c1.ASSESSMENT_TEXT;
      end loop;
      for c1 in (select ASSESSMENT_TEXT from EBA_SALES_RISK_ASSESSMENTS c where c.id = :new.RISK_ASSESSMENT_ID) loop
          nv := c1.ASSESSMENT_TEXT;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('risk_assessment'),ov,nv);
    end if;
    --
    if updating and nvl(:old.ACCOUNT_STANDING_ID,0) != nvl(:new.ACCOUNT_STANDING_ID,0) then
      ov := null; nv := null;
      for c1 in (select STANDING_TEXT from EBA_SALES_ACCOUNT_STANDING c where c.id = :old.ACCOUNT_STANDING_ID) loop
          ov := c1.STANDING_TEXT;
      end loop;
      for c1 in (select STANDING_TEXT from EBA_SALES_ACCOUNT_STANDING c where c.id = :new.ACCOUNT_STANDING_ID) loop
          nv := c1.STANDING_TEXT;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('account_standing'),ov,nv);
    end if;
    --
    if updating and nvl(:old.SVP_ID,0) != nvl(:new.SVP_ID,0) then
      ov := null; nv := null;
      for c1 in (select SVP_NAME from EBA_SALES_SVPS c where c.id = :old.SVP_ID) loop
          ov := c1.SVP_NAME;
      end loop;
      for c1 in (select SVP_NAME from EBA_SALES_SVPS c where c.id = :new.SVP_ID) loop
          nv := c1.SVP_NAME;
      end loop;   
      insert into EBA_SALES_HISTORY (deal_rowkey, deal_id, column_name, old_value, new_value) values
          (:new.row_key, :new.id, upper('SVP'),ov,nv);
    end if;
    --
    -- tags
    --
    eba_sales_fw.tag_sync(
        p_new_tags      => :new.tags,
        p_old_tags      => :old.tags,
        p_content_type  => 'DEAL',
        p_content_id    => :new.id );
end;
/
create or replace TRIGGER "BIU_EBA_SALES_DEAL_PRODUCTS" 
before insert or update on EBA_SALES_DEAL_products
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    for c1 in (select period_name from eba_sales_sales_periods where :new.close_date between first_day and last_day)
    loop 
        :new.qtr := c1.period_name; 
    end loop;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_DEAL_STAGES" 
   before insert or update on EBA_SALES_deal_stages
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_DEAL_STAT_CODES" 
before insert or update on EBA_SALES_DEAL_status_codes
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_DEAL_TEAM" 
   before insert or update on eba_sales_deal_team
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_FILES" 
   before insert or update on EBA_SALES_files
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_FIN_ASSESSMENTS" 
   before insert or update on eba_sales_fin_assessments
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_HISTORY" 
   before insert or update on EBA_SALES_history
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.change_date := current_timestamp;
       :new.changed_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := :new.row_version_number + 1;
   end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_INDUSTRIES" 
before insert or update on eba_sales_industries
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_LEADS" 
  before insert or update on eba_sales_leads
  for each row
begin

  if inserting 
  then
    if :new.id is null 
    then
      :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    :new.row_version_number := 1;
    :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);

    :new.created_by := nvl(apex_application.g_user, user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
    :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
  end if;

  if :new.tags is not null 
  then
    :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
  end if;

  eba_sales_fw.tag_sync(
    p_new_tags     => :new.tags,
    p_old_tags     => :old.tags,
    p_content_type => 'LEAD',
    p_content_id   => :new.id
  );

end;
/
create or replace TRIGGER "BIU_EBA_SALES_LEAD_SOURCES" 
   before insert or update on eba_sales_lead_sources
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
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_LEAD_ST_CDS" 
before insert or update on eba_sales_lead_status_codes
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_LINKS" 
   before insert or update on EBA_SALES_links
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_PRODUCTS" 
  before insert or update on eba_sales_products
  for each row
begin

  if inserting 
  then
    if :new.id is null 
    then
      :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    :new.row_version_number := 1;
    :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);

    :new.created_by := nvl(apex_application.g_user, user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
    :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
  end if;

  if :new.tags is not null 
  then
    :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
  end if;

  eba_sales_fw.tag_sync(
    p_new_tags     => :new.tags,
    p_old_tags     => :old.tags,
    p_content_type => 'PRODUCT',
    p_content_id   => :new.id
  );
end;
/
create or replace TRIGGER "BIU_EBA_SALES_RISK_ASSESSMENTS" 
   before insert or update on eba_sales_risk_assessments
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_SALESREPS" 
before insert or update on eba_sales_salesreps
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_SALESREP_ROLES" 
before insert or update on eba_sales_salesrep_roles
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
    if :new.is_sales_rep is null then
        :new.is_sales_rep := 'Y';
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_SALES_PERIODS" 
before insert or update on eba_sales_sales_periods
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_STATES" 
   before insert or update on EBA_SALES_STATES
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_STATUS_ASSESS" 
   before insert or update on eba_sales_status_assessments
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
         :new.updated_by := nvl(v('APP_USER'),USER);
         :new.updated := current_timestamp;
         :new.row_version_number := 1;
      end if;
      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_SVPS" 
   before insert or update on eba_sales_svps
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
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_TAGS" 
   before insert or update on eba_sales_tags
   for each row
   begin
        :new.tag := upper(:new.tag);
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
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_TERR" 
  before insert or update on eba_sales_territories
  for each row
begin

  if inserting 
  then
    if :new.id is null 
    then
      :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    :new.row_version_number := 1;
    :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);

    :new.created_by := nvl(apex_application.g_user, user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(apex_application.g_user, user);
    :new.updated := current_timestamp;
    :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
  end if;

  if :new.tags is not null 
  then
    :new.tags := eba_sales_fw.tags_cleaner(:new.tags);
  end if;

  eba_sales_fw.tag_sync(
    p_new_tags     => :new.tags,
    p_old_tags     => :old.tags,
    p_content_type => 'TERRITORY',
    p_content_id   => :new.id
  );
end;
/
create or replace TRIGGER "BIU_EBA_SALES_TERRITORY_ACL" 
   before insert or update on eba_sales_territory_acl
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
         :new.row_version_number := nvl(:old.row_version_number,1) + 1;
      end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_TERR_MAP" 
   before insert or update on EBA_SALES_TERR_MAP
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end;
/
create or replace TRIGGER "BIU_EBA_SALES_TZ_PREF" 
   before insert or update on eba_sales_tz_pref
   for each row
begin
   if :new."ID" is null then
     select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   if :new.TIMEZONE_PREFERENCE is null then
       :new.timezone_preference := 'UTC';
   end if;
end;
/
create or replace TRIGGER "EBA_SALES_CLICKS_BIU" 
    before insert on eba_sales_clicks
    for each row
begin
    if :new.id is null then
        :new.id := eba_sales_acl_api.gen_id();
    end if;

    :new.view_timestamp := current_timestamp;
    :new.app_session := v('APP_SESSION');
    :new.app_username := lower(:new.app_username);
end;
/
create or replace TRIGGER "EBA_SALES_ERRORS_BI" 
    before insert or update on eba_sales_errors
    for each row
begin
    if :new.id is null then
       :new.id := eba_sales_acl_api.gen_id();
    end if;
end;
/
create or replace TRIGGER "EBA_SALES_NOTE_BIU" 
before insert or update on eba_sales_notifications
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated    := current_timestamp;
    end if;
    if :new.notification_type is null then
       :new.notification_type := 'MANUAL';
    end if;
end;
/
create or replace TRIGGER "EBA_SALES_PREFERENCES_BIU" 
before insert or update on eba_sales_preferences
    for each row
begin
    if inserting and :new.id is null then
        :new.id := eba_sales_acl_api.gen_id();
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
create or replace TRIGGER "EBA_SALES_USERS_BD" 
    before delete on eba_sales_users
    for each row
declare
    pragma autonomous_transaction;
begin
    -- Disallow deletes to a user's own record unless last one.
    if v('APP_USER') = upper(:old.username) then
       for c1 in (
          select count(*) cnt
            from eba_sales_users
           where id != :old.id )
       loop
          if c1.cnt > 0 then
             raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
          end if;
       end loop;
    end if;    
end;
/
create or replace TRIGGER "EBA_SALES_USERS_BIU" 
    before insert or update on eba_sales_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_sales_acl_api.gen_id();
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
create or replace TRIGGER "EBA_SALES_VERIFY_BIU_FER" 
   before insert or update on eba_sales_verifications
   for each row
begin
   if :new.id is null then
     :new.id := eba_sales_acl_api.gen_id();
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(apex_application.g_user,user);
   end if;
   :new.verified_by := lower(:new.verified_by);
   :new.updated := current_timestamp;
   :new.updated_by := nvl(apex_application.g_user,user);
end;
/
create or replace TRIGGER "biu_eba_sales_product_families" 
   before insert or update on eba_sales_product_families
   for each row
begin
   if :new.id is null then
     :new.id := eba_sales_acl_api.gen_id();
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(apex_application.g_user,user);
   end if;
   :new.updated := current_timestamp;
   :new.updated_by := nvl(apex_application.g_user,user);
end;
/ 