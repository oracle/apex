-- Add tags and sold_as to products
alter table eba_sales_products
add (tags varchar2(4000), sold_as varchar2(50) check (sold_as in ('SUBSCRIPTION','PURCHASE')))
/

-- Add Close date, deal type id, and qtr to deal products
alter table eba_sales_deal_products
add (close_date timestamp (6) with time zone,
     tcv number,
     term number,
     qtr varchar2(8));
/

-- Add ability to do verifications on other entities
alter table eba_sales_verifications
add (entity_type varchar2(20))
/

update eba_sales_verifications
set entity_type = 
  case
    when opp_id is not null then 'OPPORTUNITY'
    when cust_id is not null then 'ACCOUNT'
    when lead_id is not null then 'LEAD'
  end;
 
alter table eba_sales_verifications 
modify (entity_type varchar2(20) not null)
/

alter table eba_sales_verifications 
add constraint eba_sales_verif_ent_type_ck 
check (entity_type in ('OPPORTUNITY','LEAD','TERRITORY','ACCOUNT', 'CONTACT', 'PRODUCT'))
/

alter table  eba_sales_verifications 
add foreign key (opp_id)
references  eba_sales_deals (id) on delete cascade
/

alter table eba_sales_verifications 
add (territory_id number)
/   

alter table  eba_sales_verifications 
add constraint eba_sales_verif_terr_fk foreign key (territory_id)
references  eba_sales_territories (id) on delete cascade
/

create index  eba_sales_verify_idx4 on eba_sales_verifications (territory_id)
/

alter table eba_sales_verifications 
add (contact_id number)
/   

alter table  eba_sales_verifications 
add constraint eba_sales_verif_contact_fk foreign key (contact_id)
references  eba_sales_customer_contacts (id) on delete cascade
/

create index  eba_sales_verify_idx5 on eba_sales_verifications (contact_id)
/

alter table eba_sales_verifications 
add (product_id number)
/   

alter table  eba_sales_verifications 
add constraint eba_sales_verif_product_fk foreign key (product_id)
references  eba_sales_products (id) on delete cascade
/

create index  eba_sales_verify_idx6 on eba_sales_verifications (product_id)
/

alter table eba_sales_verifications 
add constraint eba_sales_verif_ent_fk_ck 
check (
  entity_type = 'OPPORTUNITY' and opp_id is not null
    or entity_type = 'LEAD' and lead_id is not null
    or entity_type = 'TERRITORY' and territory_id is not null
    or entity_type = 'ACCOUNT' and cust_id is not null
    or entity_type = 'CONTACT' and contact_id is not null
    or entity_type = 'PRODUCT' and product_id is not null
)
/

create or replace trigger eba_sales_verify_biu_fer
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
-- Add ability to do views on other entities
alter table eba_sales_clicks
add (entity_type varchar2(20))
/

update eba_sales_clicks
set entity_type = 
  case
    when opp_id is not null then 'OPPORTUNITY'
    when cust_id is not null then 'ACCOUNT'
    when lead_id is not null then 'LEAD'
  end;
 
alter table eba_sales_clicks 
modify (entity_type varchar2(20) not null)
/

alter table eba_sales_clicks 
add constraint eba_sales_clicks_ent_type_ck 
check (entity_type in ('OPPORTUNITY','LEAD','TERRITORY','ACCOUNT', 'CONTACT', 'PRODUCT'))
/

delete from eba_sales_clicks
where opp_id is not null
  and opp_id not in (
    select id
    from eba_sales_deals
  );

alter table eba_sales_clicks
add constraint eba_sales_clicks_opps_fk foreign key (opp_id)
references eba_sales_deals (id) on delete cascade
/

alter table eba_sales_clicks 
add (territory_id number)
/   

alter table  eba_sales_clicks 
add constraint eba_sales_clicks_terr_fk foreign key (territory_id)
references  eba_sales_territories (id) on delete cascade
/

create index eba_sales_clicks_idx5 on eba_sales_clicks (territory_id)
/

alter table eba_sales_clicks 
add (contact_id number)
/   

alter table eba_sales_clicks 
add constraint eba_sales_clicks_contact_fk foreign key (contact_id)
references  eba_sales_customer_contacts (id) on delete cascade
/

create index eba_sales_clicks_idx6 on eba_sales_clicks (contact_id)
/

alter table eba_sales_clicks 
add (product_id number)
/   

alter table  eba_sales_clicks 
add constraint eba_sales_clicks_product_fk foreign key (product_id)
references  eba_sales_products (id) on delete cascade
/

create index  eba_sales_clicks_idx7 on eba_sales_clicks (product_id)
/

alter table eba_sales_clicks 
add constraint eba_sales_clicks_ent_fk_ck 
check (
  entity_type = 'OPPORTUNITY' and opp_id is not null
    or entity_type = 'LEAD' and lead_id is not null
    or entity_type = 'TERRITORY' and territory_id is not null
    or entity_type = 'ACCOUNT' and cust_id is not null
    or entity_type = 'CONTACT' and contact_id is not null
    or entity_type = 'PRODUCT' and product_id is not null
)
/

create or replace trigger eba_sales_clicks_biu
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

-- Migrate "LEAD_SOURCE" to "LEAD_SOURCE_ID"
declare

  l_lead_source_id eba_sales_lead_sources.id%type;

begin

  for lead_rec in (
    select distinct lead_source
    from eba_sales_leads
    where lead_source is not null
  )
  loop
    insert into eba_sales_lead_sources (
      lead_source
    ) values (
      lead_rec.lead_source
    )
    returning id
    into l_lead_source_id;

    update eba_sales_leads
    set lead_source_id = l_lead_source_id
    where lead_source = lead_rec.lead_source;
  end loop;

  execute immediate 'alter table eba_sales_leads drop column lead_source';

end;
/



-- Add a fk constraint for eba_sales_customers.customer_territory_id (index already exists)
alter table  eba_sales_customers
add constraint eba_sales_cust_terr_fk foreign key (customer_territory_id)
references  eba_sales_territories (id)
/

insert into eba_sales_error_lookup (
  constraint_name,
  message,
  language_code
) values (
  'EBA_SALES_CUST_TERR_FK',
  'There are Accounts associated with this territory',
  'en'
);



-- Migrates existing references to "Unknown" source type to use null instead
declare

  l_unknown_exists number := 0;

begin

  begin
    select 1
    into l_unknown_exists
    from eba_sales_lead_sources
    where id = 4
      and lead_source = 'Unknown';
  exception
    when no_data_found
    then
      null;
  end;

  if l_unknown_exists = 1
  then
    update eba_sales_leads
    set lead_source_id = null
    where lead_source_id = 4;

    delete from eba_sales_lead_sources
    where id = 4;
  end if;

end;
/



-- Make eba_sales_customers.customer_is_key_account_yn not null
update eba_sales_customers
set customer_is_key_account_yn = 'N'
where customer_is_key_account_yn is null;

alter table eba_sales_customers
modify (customer_is_key_account_yn varchar2(1) not null);



-- Migrates eba_sales_leads.account_name to eba_sales_leads.account_id
declare

  l_lead_account_id eba_sales_customers.id%type;

begin

  for lead_rec in (
    select distinct account_name
    from eba_sales_leads
    where account_name is not null
  )
  loop
    insert into eba_sales_customers (
      customer_name
    ) values (
      lead_rec.account_name
    )
    returning id
    into l_lead_account_id;

    update eba_sales_leads
    set account_id = l_lead_account_id
    where account_name = lead_rec.account_name;
  end loop;

  execute immediate 'alter table eba_sales_leads drop column account_name';

end;
/



-- Add foreign key for EBA_SALES_CUSTOMERS.DEFAULT_REP_ID to EBA_SALES_SALESREPS.ID
alter table  eba_sales_customers 
add constraint eba_sales_cust_reps_fk foreign key (default_rep_id)
references  eba_sales_salesreps (id) on delete set null
/

create index  eba_sales_customers_i5 on eba_sales_customers (default_rep_id)
/



-- Change eba_sales_territories.match_words to eba_sales_territories.tags
alter table eba_sales_territories 
rename column match_words to tags
/   



-- Update territory trigger for tag sync
create or replace trigger biu_eba_sales_terr
before insert or update on eba_sales_territories
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

    --
    -- tags
    --
    eba_sales_fw.tag_sync(
        p_new_tags      => :new.tags,
        p_old_tags      => :old.tags,
        p_content_type  => 'TERRITORY',
        p_content_id    => :new.id );
end;
/



-- Update tag constraint to handle additional types
alter table eba_sales_tags 
drop constraint eba_sales_tags_ck
/   

alter table eba_sales_tags 
add constraint eba_sales_tags_ck 
check (content_type in ('ACCOUNT','CONTACT','DEAL','COMPETITOR', 'TERRITORY', 'PRODUCT', 'LEAD'))
/   



-- Make eba_sales_customer_contacts.customer_id required
alter table eba_sales_customer_contacts 
modify (customer_id number not null)
/



-- Update eba_sales_links to work with multiple entities
alter table eba_sales_links 
modify (link_target varchar2(4000) not null)
/

alter table eba_sales_links 
add (entity_type varchar2(20))
/

update eba_sales_links
set entity_type = 'OPPORTUNITY';

alter table eba_sales_links 
modify (entity_type varchar2(20) not null)
/

alter table eba_sales_links 
add constraint eba_sales_links_ent_type_ck 
check (entity_type in ('OPPORTUNITY','LEAD','TERRITORY','ACCOUNT', 'CONTACT', 'PRODUCT'))
/

alter index eba_sales_links_i1 rename to eba_sales_links_idx1
/

alter table eba_sales_links 
add (lead_id number)
/

alter table eba_sales_links
add constraint eba_sales_links_leads_fk foreign key (lead_id)
references  eba_sales_leads (id) on delete cascade
/

create index eba_sales_links_idx2 on eba_sales_links (lead_id)
/

alter table eba_sales_links 
add (territory_id number)
/

alter table eba_sales_links
add constraint eba_sales_links_terr_fk foreign key (territory_id)
references  eba_sales_territories (id) on delete cascade
/

create index eba_sales_links_idx3 on eba_sales_links (territory_id)
/

alter table eba_sales_links 
add (account_id number)
/

alter table eba_sales_links
add constraint eba_sales_links_acct_fk foreign key (account_id)
references  eba_sales_customers (id) on delete cascade
/

create index eba_sales_links_idx4 on eba_sales_links (account_id)
/

alter table eba_sales_links 
add (contact_id number)
/

alter table eba_sales_links
add constraint eba_sales_links_cont_fk foreign key (contact_id)
references  eba_sales_customer_contacts (id) on delete cascade
/

create index eba_sales_links_idx5 on eba_sales_links (contact_id)
/

alter table eba_sales_links 
add (product_id number)
/

alter table eba_sales_links
add constraint eba_sales_links_prod_fk foreign key (product_id)
references  eba_sales_products (id) on delete cascade
/

create index eba_sales_links_idx6 on eba_sales_links (product_id)
/

alter table eba_sales_links 
add constraint eba_sales_links_ent_fk_ck 
check (
  entity_type = 'OPPORTUNITY' and deal_id is not null
    or entity_type = 'LEAD' and lead_id is not null
    or entity_type = 'TERRITORY' and territory_id is not null
    or entity_type = 'ACCOUNT' and account_id is not null
    or entity_type = 'CONTACT' and contact_id is not null
    or entity_type = 'PRODUCT' and product_id is not null
)
/

alter trigger biu_eba_sales_links disable
/

begin

  insert into eba_sales_links (
    id,
    row_version_number,
    entity_type,
    account_id,
    link_target,
    link_text,
    link_comments,
    tags,
    created,
    created_by,
    updated,
    updated_by
  )
  select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
    row_version_number,
    'ACCOUNT',
    account_id,
    link_target,
    link_text,
    link_comments,
    tags,
    created,
    created_by,
    updated,
    updated_by
  from eba_sales_act_links;

  execute immediate 'drop table eba_sales_act_links';

end;
/

alter trigger biu_eba_sales_links enable
/

update eba_sales_links
set link_text = link_target
where link_text is null;

alter table eba_sales_links 
modify (link_text varchar2(255) not null)
/



-- Update eba_sales_files to work with multiple entities
alter table eba_sales_files
add (entity_type varchar2(20))
/

update eba_sales_files
set entity_type = 'OPPORTUNITY';

alter table eba_sales_files 
modify (entity_type varchar2(20) not null)
/

alter table eba_sales_files 
add constraint eba_sales_files_ent_type_ck 
check (entity_type in ('OPPORTUNITY','LEAD','TERRITORY','ACCOUNT', 'CONTACT', 'PRODUCT'))
/

alter index eba_sales_files_i1 rename to eba_sales_files_idx1
/

alter table eba_sales_files 
add (lead_id number)
/

alter table eba_sales_files
add constraint eba_sales_files_leads_fk foreign key (lead_id)
references  eba_sales_leads (id)  on delete cascade
/

create index eba_sales_files_idx2 on eba_sales_files (lead_id)
/

alter table eba_sales_files 
add (territory_id number)
/

alter table eba_sales_files
add constraint eba_sales_files_terr_fk foreign key (territory_id)
references  eba_sales_territories (id) on delete cascade
/

create index eba_sales_files_idx3 on eba_sales_files (territory_id)
/

alter table eba_sales_files 
add (account_id number)
/

alter table eba_sales_files
add constraint eba_sales_files_acct_fk foreign key (account_id)
references  eba_sales_customers (id) on delete cascade
/

create index eba_sales_files_idx4 on eba_sales_files (account_id)
/

alter table eba_sales_files 
add (contact_id number)
/

alter table eba_sales_files
add constraint eba_sales_files_cont_fk foreign key (contact_id)
references  eba_sales_customer_contacts (id) on delete cascade
/

create index eba_sales_files_idx5 on eba_sales_files (contact_id)
/

alter table eba_sales_files 
add (product_id number)
/

alter table eba_sales_files
add constraint eba_sales_files_prod_fk foreign key (product_id)
references  eba_sales_products (id) on delete cascade
/

create index eba_sales_files_idx6 on eba_sales_files (product_id)
/

alter table eba_sales_files 
add constraint eba_sales_files_ent_fk_ck 
check (
  entity_type = 'OPPORTUNITY' and deal_id is not null
    or entity_type = 'LEAD' and lead_id is not null
    or entity_type = 'TERRITORY' and territory_id is not null
    or entity_type = 'ACCOUNT' and account_id is not null
    or entity_type = 'CONTACT' and contact_id is not null
    or entity_type = 'PRODUCT' and product_id is not null
)
/

alter trigger biu_eba_sales_files disable
/

begin

  insert into eba_sales_files (
    id,
    row_version_number,
    entity_type,
    account_id,
    filename,
    file_mimetype,
    file_charset,
    file_blob,
    file_comments,
    tags,
    created,
    created_by,
    updated,
    updated_by
  )
  select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
    row_version_number,
    'ACCOUNT',
    account_id,
    filename,
    file_mimetype,
    file_charset,
    file_blob,
    file_comments,
    tags,
    created,
    created_by,
    updated,
    updated_by
  from eba_sales_act_files;

  execute immediate 'drop table eba_sales_act_files';

end;
/

alter trigger biu_eba_sales_files enable
/



-- Update eba_sales_deal_notes to work with multiple entities
alter table eba_sales_deal_notes
rename to eba_sales_comments
/

alter table eba_sales_comments
modify (deal_id number null)
/

alter table eba_sales_comments
add (entity_type varchar2(20))
/

update eba_sales_comments
set entity_type = 'OPPORTUNITY';

alter table eba_sales_comments 
modify (entity_type varchar2(20) not null)
/

alter table eba_sales_comments 
add constraint eba_sales_comments_ent_type_ck 
check (entity_type in ('OPPORTUNITY','LEAD','TERRITORY','ACCOUNT', 'CONTACT', 'PRODUCT'))
/

alter index eba_sales_deal_notes_i1 rename to eba_sales_comments_idx1
/

alter table eba_sales_comments
rename constraint eba_sales_deal_note_fk to eba_sales_comments_opps_fk
/

alter table eba_sales_comments 
add (lead_id number)
/

alter table eba_sales_comments
add constraint eba_sales_comments_leads_fk foreign key (lead_id)
references  eba_sales_leads (id)  on delete cascade
/

create index eba_sales_comments_idx2 on eba_sales_comments (lead_id)
/

alter table eba_sales_comments 
add (territory_id number)
/

alter table eba_sales_comments
add constraint eba_sales_comments_terrs_fk foreign key (territory_id)
references  eba_sales_territories (id) on delete cascade
/

create index eba_sales_comments_idx3 on eba_sales_comments (territory_id)
/

alter table eba_sales_comments 
add (account_id number)
/

alter table eba_sales_comments
add constraint eba_sales_comments_acnts_fk foreign key (account_id)
references  eba_sales_customers (id) on delete cascade
/

create index eba_sales_comments_idx4 on eba_sales_comments (account_id)
/

alter table eba_sales_comments 
add (contact_id number)
/

alter table eba_sales_comments
add constraint eba_sales_comments_cnts_fk foreign key (contact_id)
references  eba_sales_customer_contacts (id) on delete cascade
/

create index eba_sales_comments_idx5 on eba_sales_comments (contact_id)
/

alter table eba_sales_comments 
add (product_id number)
/

alter table eba_sales_comments
add constraint eba_sales_comments_prods_fk foreign key (product_id)
references  eba_sales_products (id) on delete cascade
/

create index eba_sales_comments_idx6 on eba_sales_comments (product_id)
/

alter table eba_sales_comments 
add constraint eba_sales_comments_ent_fk_ck 
check (
  entity_type = 'OPPORTUNITY' and deal_id is not null
    or entity_type = 'LEAD' and lead_id is not null
    or entity_type = 'TERRITORY' and territory_id is not null
    or entity_type = 'ACCOUNT' and account_id is not null
    or entity_type = 'CONTACT' and contact_id is not null
    or entity_type = 'PRODUCT' and product_id is not null
)
/

alter trigger biu_eba_sales_deal_notes
rename to biu_eba_sales_comments
/

alter trigger biu_eba_sales_comments disable
/

begin

  insert into eba_sales_comments (
    id,
    row_version_number,
    entity_type,
    account_id,
    note,
    created,
    created_by,
    updated,
    updated_by
  )
  select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
    row_version_number,
    'ACCOUNT',
    account_id,
    note,
    created,
    created_by,
    updated,
    updated_by
  from eba_sales_actnotes
  where note is not null;

  execute immediate 'drop table eba_sales_actnotes';

end;
/

alter trigger biu_eba_sales_comments enable
/


-- Drop redundant or unused columns
alter table eba_sales_deals
drop column territory_id
/

alter table eba_sales_leads
drop column territory_id
/

alter table eba_sales_terr_map 
drop column account_id
/

alter table eba_sales_customers
drop column customer_address1
/

alter table eba_sales_customers
drop column customer_address2
/

alter table eba_sales_customers
drop column customer_city
/

alter table eba_sales_customers
drop column customer_state
/

alter table eba_sales_customers
drop column customer_country
/

alter table eba_sales_customers
drop column customer_postal_code
/

alter table eba_sales_customer_contacts
drop column customer_location_id
/



-- Drop unused objects
drop table eba_sales_account_activity
/

drop table eba_sales_prefs
/

drop table eba_sales_favorites
/

drop function eba_sales_id
/

drop function eba_sales_format_note
/

drop procedure eba_sales_disp_notifications
/



-- Update eba_sales_opportunities_v to match updated objects
create or replace view eba_sales_opportunities_v
as
  select d.id, 
    d.row_key,
    c.id customer_id,
    c.customer_name,
    s.rep_last_name || ', ' || s.rep_first_name as rep_name,
    d.deal_name,
    d.deal_close_date,
    d.deal_close_date_alt,
    d.deal_amount,
    d.deal_probability,
    sc.status_code,
    case
      when d.deal_probability is null 
        or d.deal_probability in (0, 100)
      then 'No'
      else 'Yes'
    end is_open,
    case 
      when d.deal_probability in (0, 100)
      then 'No'
      when greatest(sysdate, d.deal_close_date) = sysdate
      then 'Yes'
      else 'No'
    end is_overdue,
    d.deal_amount * d.deal_probability / 100 weighted_forecast,
    (
      select count(*) 
      from eba_sales_comments 
      where deal_id = d.id
    ) notes,
    (
      select count(*) 
      from eba_sales_deal_products 
      where deal_id = d.id
    ) products,
    nvl(d.updated, d.created) last_changed,
    (
      select svp_name 
      from eba_sales_svps svp 
      where svp.id = d.svp_id
    ) svp,
    t.territory_name,
    d.qtr,
    d.tags,
    c.tags customer_tags
  from eba_sales_deals d
  join eba_sales_customers c
    on c.id = d.customer_id 
  left join eba_sales_salesreps s
    on s.id = d.salesrep_id_01
  left join eba_sales_deal_status_codes sc
    on sc.id = d.deal_status_code_id
  left join eba_sales_territories t
    on t.id = c.customer_territory_id
/



-- Update eba_sales_opp_v to match updated objects
create or replace view eba_sales_opp_v
as 
  select c.id customer_id,
    d.id deal_id,
    c.customer_name,
    c.customer_stock_symb,
    sr.rep_first_name,
    sr.rep_last_name,
    sr.rep_email,
    d.deal_name,
    d.deal_close_date,
    case when exists (select null
                        from APEX_APPLICATION_BUILD_OPTIONS
                       where application_id = v('APP_ID')
                         and BUILD_OPTION_NAME = 'Opportunity Amount Set at Product Level'
                         and BUILD_OPTION_STATUS = 'Exclude') then
        d.deal_amount
    else
        (select sum(nvl(quote_price, 0.00)) from EBA_SALES_DEAL_PRODUCTS dp where dp.deal_id = d.id)
    end as deal_amount,
    d.deal_probability,
    dsc.status_code 
  from  eba_sales_deals d
  join eba_sales_deal_status_codes dsc
    on dsc.id = d.deal_status_code_id
  join eba_sales_salesreps sr
    on sr.id = d.salesrep_id_01
  join eba_sales_customers c
    on c.id = d.customer_id
/



-- Add tag sync to biu_eba_sales_leads and bd_eba_sales_leads
create or replace trigger biu_eba_sales_leads
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

    :new.created_by := nvl(v('APP_USER'), user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'), user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(v('APP_USER'), user);
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

create or replace trigger bd_eba_sales_leads
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



-- Fix tag sync for eba_sales_terr
create or replace trigger biu_eba_sales_terr
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

    :new.created_by := nvl(v('APP_USER'), user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'), user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(v('APP_USER'), user);
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

create or replace trigger bd_eba_sales_terr
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



-- Fix tag sync for eba_sales_cust
create or replace trigger biu_eba_sales_cust
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

    :new.created_by := nvl(v('APP_USER'), user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'), user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(v('APP_USER'), user);
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

create or replace trigger bd_eba_sales_cust
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



-- Fix tag sync for eba_sales_cust_contacts
create or replace trigger biu_eba_sales_cust_contacts
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

    :new.created_by := nvl(v('APP_USER'), user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'), user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(v('APP_USER'), user);
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

create or replace trigger bd_eba_sales_cust_contacts
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



-- Fix tag sync fo eba_sales_products
create or replace trigger biu_eba_sales_products
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

    :new.created_by := nvl(v('APP_USER'), user);
    :new.created := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'), user);
    :new.updated := current_timestamp;
  elsif updating 
  then
    :new.updated_by := nvl(v('APP_USER'), user);
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

create or replace trigger bd_eba_sales_products
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



-- Repoplate tags tables
begin

  delete from eba_sales_tags;
  delete from eba_sales_tags_sum;
  delete from eba_sales_tags_type_sum;

  for entity_rec in (
    select 'LEAD' entity_type, id entity_id, tags from eba_sales_leads where tags is not null
    union
    select 'DEAL' entity_type, id entity_id, tags from eba_sales_deals where tags is not null
    union
    select 'TERRITORY' entity_type, id entity_id, tags from eba_sales_territories where tags is not null
    union
    select 'ACCOUNT' entity_type, id entity_id, tags from eba_sales_customers where tags is not null
    union
    select 'CONTACT' entity_type, id entity_id, tags from eba_sales_customer_contacts where tags is not null
    union
    select 'PRODUCT' entity_type, id entity_id, tags from eba_sales_products where tags is not null
  )
  loop
    entity_rec.tags := eba_sales_fw.tags_cleaner(entity_rec.tags);

    eba_sales_fw.tag_sync(
      p_new_tags     => entity_rec.tags,
      p_old_tags     => null,
      p_content_type => entity_rec.entity_type,
      p_content_id   => entity_rec.entity_id
    );
  end loop;
end;
/

-- add eba_sales_product_families table
create table eba_sales_product_families( /* NAS, NAA, GBU */
    id              number,
    product_family  varchar2(100),
    description     varchar2(4000),
    created         timestamp(6) with time zone,
    created_by      varchar2(255),
    updated         timestamp(6) with time zone,
    updated_by      varchar2(255),
    constraint eba_sales_product_families_pk primary key ( id )
)
/

create or replace trigger "biu_eba_sales_product_families" 
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

alter trigger "biu_eba_sales_product_families" enable;

insert into eba_sales_product_families (id, product_family, description) values (1, 'NAA','North America Applications (App Sales)');
insert into eba_sales_product_families (id, product_family, description) values (2, 'NAS','North America Sales (Tech & Hardware Sales)');
insert into eba_sales_product_families (id, product_family, description) values (3, 'GBU','Global Business Unit');

create table eba_sales_terms
(
    id          number not null primary key,
    name        varchar2(255),
    month_equiv number,
    created_by  varchar2(255),
    created     timestamp (6) with time zone,
    updated_by  varchar2(255),
    updated     timestamp (6) with time zone
);

create or replace trigger biu_eba_sales_terms
before insert or update on eba_sales_terms
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
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
    end if;
end;
/

alter trigger biu_eba_sales_terms enable;

insert into eba_sales_terms (id, name, month_equiv) values (1, '1 Month', 1);
insert into eba_sales_terms (id, name, month_equiv) values (2, '1 Year', 12);
insert into eba_sales_terms (id, name, month_equiv) values (3, '2 Years', 24);
insert into eba_sales_terms (id, name, month_equiv) values (4, '3 Years', 36);

-- Set the initial Representative Title preference value
begin
    eba_sales_fw.set_preference_value('REP_TITLE', 'Sales Rep');
end;
/

-- add product_family_id to products table
alter table eba_sales_products add product_family_id number;
alter table eba_sales_products add constraint eba_sales_products_families_fk foreign key (product_family_id)
    references eba_sales_product_families (id) on delete set null enable;

-- Recreate deal_products biu trigger
CREATE OR REPLACE TRIGGER "BIU_EBA_SALES_DEAL_PRODUCTS" 
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

ALTER TRIGGER "BIU_EBA_SALES_DEAL_PRODUCTS" ENABLE;