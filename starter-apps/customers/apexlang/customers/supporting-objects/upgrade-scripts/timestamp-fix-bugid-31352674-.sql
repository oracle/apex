-- This script fixes BUG 31352674, replacing all columns of type TIMESTAMP(6) WITH LOCAL TIME ZONE to TIMESTAMP WITH TIME ZONE
-- it also updates all application triggers where columns where updated with LOCALTIMESTAMP to CURRENT_TIMESTAMP
-- 
-- This upgrade script will only run if there are tables that start with 'EBA_INTRACK%' with columns of data type
-- TIMESTAMP(6) WITH LOCAL TIME ZONE

-- Start of Script
-- 1. Disable All Triggers
alter trigger "BIU_EBA_CUST_TYPE" DISABLE;
/
alter trigger "EBA_CUST_FEEDBACK_TYPES_BIU" DISABLE;
/
alter trigger "BIU_EBA_CUST_SALES_CHANNEL" DISABLE;
/
alter trigger "BIU_EBA_CUST_FILES" DISABLE;
/
alter trigger "BD_EBA_CUST_FILES" DISABLE;
/
alter trigger "AU_EBA_CUST_PRODUCT_USES" DISABLE;
/
alter trigger "BIU_EBA_CUST_PRODUCT_USES" DISABLE;
/
alter trigger "BIU_EBA_CUST_CATEGORIES" DISABLE;
/
alter trigger "AU_EBA_CUST_ACTIVITIES" DISABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITIES" DISABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITY_FILES" DISABLE;
/
alter trigger "BIU_EBA_CUST_CUST_REFTYPE_REF" DISABLE;
/
alter trigger "AU_EBA_CUST_CUSTOMER_REFTYPE_R" DISABLE;
/
alter trigger "EBA_CUST_USERS_BD" DISABLE;
/
alter trigger "EBA_CUST_USERS_BIU" DISABLE;
/
alter trigger "BIU_EBA_CUST_REFERENCE_TYPES" DISABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITY_REF" DISABLE;
/
alter trigger "AU_EBA_CUST_ACTIVITY_REF" DISABLE;
/
alter trigger "BIU_EBA_CUST_STATUS" DISABLE;
/
alter trigger "BIU_EBA_CUST_USE_CASE" DISABLE;
/
alter trigger "EBA_CUST_PRODUCT_STATUSES_BIU" DISABLE;
/
alter trigger "BIU_EBA_CUST_PRODUCT_FAMILIES" DISABLE;
/
alter trigger "BIU_EBA_CUST_TZ_PREF" DISABLE;
/
alter trigger "EBA_CUST_PREFERENCES_BIU" DISABLE;
/
alter trigger "BIU_EBA_CUST_IMPL_PARTNERS" DISABLE;
/
alter trigger "BIU_EBA_CUST_EMAIL_LOG" DISABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITY_TYPES" DISABLE;
/
alter trigger "BIU_EBA_CUST_CUST_PARTNER_REF" DISABLE;
/
alter trigger "AU_EBA_CUST_CUST_PARTNER_REF" DISABLE;
/
alter trigger "BIU_EBA_CUST_ISSUES" DISABLE;
/
alter trigger "BIU_EBA_CUST_ADMINISTRATORS" DISABLE;
/
alter trigger "EBA_CUST_VERIFY_BIU_FER" DISABLE;
/
alter trigger "BD_EBA_CUST_CONTACTS" DISABLE;
/
alter trigger "BIU_EBA_CUST_CONTACTS" DISABLE;
/
alter trigger "AU_EBA_CUST_CONTACTS" DISABLE;
/
alter trigger "EBA_CUST_NOTIF_BIU" DISABLE;
/
alter trigger "BIU_EBA_CUST_ISSUE_STATUSES" DISABLE;
/
alter trigger "EBA_CUST_ACL_FEATURES_BIU" DISABLE;
/
alter trigger "EBA_CUST_CLICKS_BIU" DISABLE;
/
alter trigger "EBA_CUST_FEEDBACK_BIU" DISABLE;
/
alter trigger "BI_EBA_CUST_VIEWS_LOG" DISABLE;
/
alter trigger "BIU_EBA_CUST_LINKS" DISABLE;
/
alter trigger "BIU_EBA_CUST_GEOGRAPHIES" DISABLE;
/
alter trigger "BIU_EBA_CUST_REF_PHASE" DISABLE;
/
alter trigger "BIU_EBA_CUST_INDUSTRIES" DISABLE;
/
alter trigger "EBA_CUST_TAGS_BIU" DISABLE;
/
alter trigger "BIU_EBA_CUST_COMPETITORS" DISABLE;
/
alter trigger "AU_EBA_CUST_COMPETITORS" DISABLE;
/
alter trigger "AU_EBA_CUST_CUSTOMERS" DISABLE;
/
alter trigger "AD_EBA_CUST_CUSTOMERS" DISABLE;
/
alter trigger "BIU_EBA_CUST_CUSTOMERS" DISABLE;
/
alter trigger "BIU_EBA_CUST_NOTES" DISABLE;
/
alter trigger "BIU_EBA_CUST_COUNTRIES" DISABLE;
/
alter trigger "BIU_EBA_CUST_CONTACT_TYPES" DISABLE;
/
alter trigger "BIU_EBA_CUST_HISTORY" DISABLE;
/
alter trigger "BI_EBA_CUST_ERRORS" DISABLE;
/
alter trigger "AU_EBA_CUST_CUST_COMPETITOR_RE" DISABLE;
/
alter trigger "BIU_EBA_CUST_CUST_COMP_REF" DISABLE;
/
alter trigger "BIU_EBA_CUST_PRODUCTS" DISABLE;
/
alter trigger "BD_EBA_CUST_PRODUCTS" DISABLE;
/
-- Drop views:
drop view eba_cust_customers_v;

-- 2. Add temporary timestamp columns
alter table EBA_CUST_TYPE add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_FEEDBACK_TYPES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_SALES_CHANNEL add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_FILES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_PRODUCT_USES add (VALID_FROM1 timestamp with time zone,VALID_TO1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CATEGORIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ACTIVITIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ACTIVITY_FILES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CUSTOMER_REFTYPE_REF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_USERS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_REFERENCE_TYPES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ACTIVITY_REF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_STATUS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_USE_CASE add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_PRODUCT_STATUSES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_PRODUCT_FAMILIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_TZ_PREF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_PREFERENCES add (CREATED_ON1 timestamp with time zone,UPDATED_ON1 timestamp with time zone)
/
alter table EBA_CUST_IMPL_PARTNERS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_EMAIL_LOG add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ACTIVITY_TYPES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CUST_PARTNER_REF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ISSUES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ADMINISTRATORS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_VERIFICATIONS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CONTACTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_NOTIFICATIONS add (DISPLAY_FROM1 timestamp with time zone,DISPLAY_UNTIL1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ISSUE_STATUSES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_ACL_FEATURES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CLICKS add (VIEW_TIMESTAMP1 timestamp with time zone)
/
alter table EBA_CUST_FEEDBACK add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_VIEWS_LOG add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_LINKS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_GEOGRAPHIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_REF_PHASE add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_INDUSTRIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_TAGS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_COMPETITORS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CUSTOMERS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_NOTES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_COUNTRIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_CONTACT_TYPES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_HISTORY add (CHANGE_DATE1 timestamp with time zone)
/
alter table EBA_CUST_ERRORS add (ERR_TIME1 timestamp with time zone)
/
alter table EBA_CUST_CUST_COMPETITOR_REF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_CUST_PRODUCTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/

-- 3. Copy original column values into temporary column values
update EBA_CUST_TYPE set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_FEEDBACK_TYPES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_SALES_CHANNEL set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_FILES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_PRODUCT_USES set VALID_FROM1 = VALID_FROM,VALID_TO1 = VALID_TO,CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CATEGORIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ACTIVITIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ACTIVITY_FILES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CUSTOMER_REFTYPE_REF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_USERS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_REFERENCE_TYPES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ACTIVITY_REF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_STATUS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_USE_CASE set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_PRODUCT_STATUSES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_PRODUCT_FAMILIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_TZ_PREF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_PREFERENCES set CREATED_ON1 = CREATED_ON,UPDATED_ON1 = UPDATED_ON;
update EBA_CUST_IMPL_PARTNERS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_EMAIL_LOG set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ACTIVITY_TYPES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CUST_PARTNER_REF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ISSUES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ADMINISTRATORS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_VERIFICATIONS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CONTACTS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_NOTIFICATIONS set DISPLAY_FROM1 = DISPLAY_FROM,DISPLAY_UNTIL1 = DISPLAY_UNTIL,CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ISSUE_STATUSES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_ACL_FEATURES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CLICKS set VIEW_TIMESTAMP1 = VIEW_TIMESTAMP;
update EBA_CUST_FEEDBACK set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_VIEWS_LOG set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_LINKS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_GEOGRAPHIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_REF_PHASE set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_INDUSTRIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_TAGS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_COMPETITORS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CUSTOMERS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_NOTES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_COUNTRIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_CONTACT_TYPES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_HISTORY set CHANGE_DATE1 = CHANGE_DATE;
update EBA_CUST_ERRORS set ERR_TIME1 = ERR_TIME;
update EBA_CUST_CUST_COMPETITOR_REF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_CUST_PRODUCTS set CREATED1 = CREATED,UPDATED1 = UPDATED;

-- 4. Drop original timestamp with local time zone columns
alter table EBA_CUST_TYPE drop (CREATED,UPDATED)
/
alter table EBA_CUST_FEEDBACK_TYPES drop (CREATED,UPDATED)
/
alter table EBA_CUST_SALES_CHANNEL drop (CREATED,UPDATED)
/
alter table EBA_CUST_FILES drop (CREATED,UPDATED)
/
alter table EBA_CUST_PRODUCT_USES drop (VALID_FROM,VALID_TO,CREATED,UPDATED)
/
alter table EBA_CUST_CATEGORIES drop (CREATED,UPDATED)
/
alter table EBA_CUST_ACTIVITIES drop (CREATED,UPDATED)
/
alter table EBA_CUST_ACTIVITY_FILES drop (CREATED,UPDATED)
/
alter table EBA_CUST_CUSTOMER_REFTYPE_REF drop (CREATED,UPDATED)
/
alter table EBA_CUST_USERS drop (CREATED,UPDATED)
/
alter table EBA_CUST_REFERENCE_TYPES drop (CREATED,UPDATED)
/
alter table EBA_CUST_ACTIVITY_REF drop (CREATED,UPDATED)
/
alter table EBA_CUST_STATUS drop (CREATED,UPDATED)
/
alter table EBA_CUST_USE_CASE drop (CREATED,UPDATED)
/
alter table EBA_CUST_PRODUCT_STATUSES drop (CREATED,UPDATED)
/
alter table EBA_CUST_PRODUCT_FAMILIES drop (CREATED,UPDATED)
/
alter table EBA_CUST_TZ_PREF drop (CREATED,UPDATED)
/
alter table EBA_CUST_PREFERENCES drop (CREATED_ON,UPDATED_ON)
/
alter table EBA_CUST_IMPL_PARTNERS drop (CREATED,UPDATED)
/
alter table EBA_CUST_EMAIL_LOG drop (CREATED,UPDATED)
/
alter table EBA_CUST_ACTIVITY_TYPES drop (CREATED,UPDATED)
/
alter table EBA_CUST_CUST_PARTNER_REF drop (CREATED,UPDATED)
/
alter table EBA_CUST_ISSUES drop (CREATED,UPDATED)
/
alter table EBA_CUST_ADMINISTRATORS drop (CREATED,UPDATED)
/
alter table EBA_CUST_VERIFICATIONS drop (CREATED,UPDATED)
/
alter table EBA_CUST_CONTACTS drop (CREATED,UPDATED)
/
alter table EBA_CUST_NOTIFICATIONS drop (DISPLAY_FROM,DISPLAY_UNTIL,CREATED,UPDATED)
/
alter table EBA_CUST_ISSUE_STATUSES drop (CREATED,UPDATED)
/
alter table EBA_CUST_ACL_FEATURES drop (CREATED,UPDATED)
/
alter table EBA_CUST_CLICKS drop (VIEW_TIMESTAMP)
/
alter table EBA_CUST_FEEDBACK drop (CREATED,UPDATED)
/
alter table EBA_CUST_VIEWS_LOG drop (CREATED,UPDATED)
/
alter table EBA_CUST_LINKS drop (CREATED,UPDATED)
/
alter table EBA_CUST_GEOGRAPHIES drop (CREATED,UPDATED)
/
alter table EBA_CUST_REF_PHASE drop (CREATED,UPDATED)
/
alter table EBA_CUST_INDUSTRIES drop (CREATED,UPDATED)
/
alter table EBA_CUST_TAGS drop (CREATED,UPDATED)
/
alter table EBA_CUST_COMPETITORS drop (CREATED,UPDATED)
/
alter table EBA_CUST_CUSTOMERS drop (CREATED,UPDATED)
/
alter table EBA_CUST_NOTES drop (CREATED,UPDATED)
/
alter table EBA_CUST_COUNTRIES drop (CREATED,UPDATED)
/
alter table EBA_CUST_CONTACT_TYPES drop (CREATED,UPDATED)
/
alter table EBA_CUST_HISTORY drop (CHANGE_DATE)
/
alter table EBA_CUST_ERRORS drop (ERR_TIME)
/
alter table EBA_CUST_CUST_COMPETITOR_REF drop (CREATED,UPDATED)
/
alter table EBA_CUST_PRODUCTS drop (CREATED,UPDATED)
/

-- 5. Rename temporary columns back to original column names
alter table EBA_CUST_TYPE rename column CREATED1 to CREATED
/
alter table EBA_CUST_TYPE rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_FEEDBACK_TYPES rename column CREATED1 to CREATED
/
alter table EBA_CUST_FEEDBACK_TYPES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_SALES_CHANNEL rename column CREATED1 to CREATED
/
alter table EBA_CUST_SALES_CHANNEL rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_FILES rename column CREATED1 to CREATED
/
alter table EBA_CUST_FILES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_PRODUCT_USES rename column VALID_FROM1 to VALID_FROM
/
alter table EBA_CUST_PRODUCT_USES rename column VALID_TO1 to VALID_TO
/
alter table EBA_CUST_PRODUCT_USES rename column CREATED1 to CREATED
/
alter table EBA_CUST_PRODUCT_USES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CATEGORIES rename column CREATED1 to CREATED
/
alter table EBA_CUST_CATEGORIES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ACTIVITIES rename column CREATED1 to CREATED
/
alter table EBA_CUST_ACTIVITIES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ACTIVITY_FILES rename column CREATED1 to CREATED
/
alter table EBA_CUST_ACTIVITY_FILES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CUSTOMER_REFTYPE_REF rename column CREATED1 to CREATED
/
alter table EBA_CUST_CUSTOMER_REFTYPE_REF rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_USERS rename column CREATED1 to CREATED
/
alter table EBA_CUST_USERS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_REFERENCE_TYPES rename column CREATED1 to CREATED
/
alter table EBA_CUST_REFERENCE_TYPES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ACTIVITY_REF rename column CREATED1 to CREATED
/
alter table EBA_CUST_ACTIVITY_REF rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_STATUS rename column CREATED1 to CREATED
/
alter table EBA_CUST_STATUS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_USE_CASE rename column CREATED1 to CREATED
/
alter table EBA_CUST_USE_CASE rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_PRODUCT_STATUSES rename column CREATED1 to CREATED
/
alter table EBA_CUST_PRODUCT_STATUSES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_PRODUCT_FAMILIES rename column CREATED1 to CREATED
/
alter table EBA_CUST_PRODUCT_FAMILIES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_TZ_PREF rename column CREATED1 to CREATED
/
alter table EBA_CUST_TZ_PREF rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_PREFERENCES rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_CUST_PREFERENCES rename column UPDATED_ON1 to UPDATED_ON
/
alter table EBA_CUST_IMPL_PARTNERS rename column CREATED1 to CREATED
/
alter table EBA_CUST_IMPL_PARTNERS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_EMAIL_LOG rename column CREATED1 to CREATED
/
alter table EBA_CUST_EMAIL_LOG rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ACTIVITY_TYPES rename column CREATED1 to CREATED
/
alter table EBA_CUST_ACTIVITY_TYPES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CUST_PARTNER_REF rename column CREATED1 to CREATED
/
alter table EBA_CUST_CUST_PARTNER_REF rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ISSUES rename column CREATED1 to CREATED
/
alter table EBA_CUST_ISSUES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ADMINISTRATORS rename column CREATED1 to CREATED
/
alter table EBA_CUST_ADMINISTRATORS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_VERIFICATIONS rename column CREATED1 to CREATED
/
alter table EBA_CUST_VERIFICATIONS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CONTACTS rename column CREATED1 to CREATED
/
alter table EBA_CUST_CONTACTS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_NOTIFICATIONS rename column DISPLAY_FROM1 to DISPLAY_FROM
/
alter table EBA_CUST_NOTIFICATIONS rename column DISPLAY_UNTIL1 to DISPLAY_UNTIL
/
alter table EBA_CUST_NOTIFICATIONS rename column CREATED1 to CREATED
/
alter table EBA_CUST_NOTIFICATIONS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ISSUE_STATUSES rename column CREATED1 to CREATED
/
alter table EBA_CUST_ISSUE_STATUSES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_ACL_FEATURES rename column CREATED1 to CREATED
/
alter table EBA_CUST_ACL_FEATURES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CLICKS rename column VIEW_TIMESTAMP1 to VIEW_TIMESTAMP
/
alter table EBA_CUST_FEEDBACK rename column CREATED1 to CREATED
/
alter table EBA_CUST_FEEDBACK rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_VIEWS_LOG rename column CREATED1 to CREATED
/
alter table EBA_CUST_VIEWS_LOG rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_LINKS rename column CREATED1 to CREATED
/
alter table EBA_CUST_LINKS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_GEOGRAPHIES rename column CREATED1 to CREATED
/
alter table EBA_CUST_GEOGRAPHIES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_REF_PHASE rename column CREATED1 to CREATED
/
alter table EBA_CUST_REF_PHASE rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_INDUSTRIES rename column CREATED1 to CREATED
/
alter table EBA_CUST_INDUSTRIES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_TAGS rename column CREATED1 to CREATED
/
alter table EBA_CUST_TAGS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_COMPETITORS rename column CREATED1 to CREATED
/
alter table EBA_CUST_COMPETITORS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CUSTOMERS rename column CREATED1 to CREATED
/
alter table EBA_CUST_CUSTOMERS rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_NOTES rename column CREATED1 to CREATED
/
alter table EBA_CUST_NOTES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_COUNTRIES rename column CREATED1 to CREATED
/
alter table EBA_CUST_COUNTRIES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_CONTACT_TYPES rename column CREATED1 to CREATED
/
alter table EBA_CUST_CONTACT_TYPES rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_HISTORY rename column CHANGE_DATE1 to CHANGE_DATE
/
alter table EBA_CUST_ERRORS rename column ERR_TIME1 to ERR_TIME
/
alter table EBA_CUST_CUST_COMPETITOR_REF rename column CREATED1 to CREATED
/
alter table EBA_CUST_CUST_COMPETITOR_REF rename column UPDATED1 to UPDATED
/
alter table EBA_CUST_PRODUCTS rename column CREATED1 to CREATED
/
alter table EBA_CUST_PRODUCTS rename column UPDATED1 to UPDATED
/

-- 6. Re-create all triggers and enable them.
create or replace TRIGGER biu_eba_cust_type
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

create or replace TRIGGER eba_cust_feedback_types_biu
    before insert or update 
    on eba_cust_feedback_types
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := NVL(V('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := NVL(V('APP_USER'),user);
end;
/

create or replace TRIGGER biu_eba_cust_sales_channel
   before insert or update on eba_cust_sales_channel
   for each row
begin
   if inserting then
      if :NEW.ID is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      end if;
      :NEW.CREATED := current_timestamp;
      :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
   end if;
   :NEW.UPDATED := current_timestamp;
   :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
end;
/

create or replace TRIGGER biu_eba_cust_files
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

create or replace TRIGGER bd_eba_cust_files
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

create or replace TRIGGER au_eba_cust_product_uses
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

create or replace TRIGGER biu_eba_cust_product_uses
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

create or replace TRIGGER biu_eba_cust_categories
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

create or replace TRIGGER au_eba_cust_activities
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

create or replace TRIGGER biu_eba_cust_activities
    before insert or update on eba_cust_activities
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_activities;
/

create or replace TRIGGER biu_eba_cust_cust_reftype_ref
    before insert or update on eba_cust_customer_reftype_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
    end if;
    
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end;
/

create or replace TRIGGER au_eba_cust_customer_reftype_r
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

create or replace TRIGGER eba_cust_users_bd
    before delete on eba_cust_users
    for each row
begin
    -- Disallow deletes to a user's own record.
    if v('APP_USER') = upper(:old.username) then
        raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
    end if;    
end;
/

create or replace TRIGGER eba_cust_users_biu
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

create or replace TRIGGER biu_eba_cust_reference_types
    before insert or update on eba_cust_reference_types
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end;
/

create or replace TRIGGER biu_eba_cust_activity_ref
    before insert or update on eba_cust_activity_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1; 
    else 
        :new.row_version_number := nvl(:new.row_version_number,0) + 1; 
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_activity_ref;
/

create or replace TRIGGER au_eba_cust_activity_ref
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

create or replace TRIGGER biu_eba_cust_status
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

create or replace TRIGGER biu_eba_cust_use_case
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

create or replace TRIGGER eba_cust_product_statuses_biu
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

create or replace TRIGGER biu_eba_cust_product_families
    before insert or update on eba_cust_product_families
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_product_families;
/

create or replace TRIGGER biu_eba_cust_tz_pref
    before insert or update on eba_cust_tz_pref
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

create or replace TRIGGER eba_cust_preferences_biu
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

create or replace TRIGGER biu_eba_cust_impl_partners
    before insert or update on eba_cust_impl_partners
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_impl_partners;
/

create or replace TRIGGER biu_eba_cust_email_log
    before insert or update on eba_cust_email_log
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
    :new.email_first_to := lower(:new.email_first_to);
    :new.email_from := lower(:new.email_from);
end;
/

create or replace TRIGGER biu_eba_cust_activity_types
    before insert or update on eba_cust_activity_types
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_activity_types;
/

create or replace TRIGGER biu_eba_cust_cust_partner_ref
    before insert or update on eba_cust_cust_partner_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_cust_partner_ref;
/

create or replace TRIGGER au_eba_cust_cust_partner_ref
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

create or replace TRIGGER "BIU_EBA_CUST_ISSUES" 
    before insert or update 
    on eba_cust_issues
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),USER);
    end if;
    if inserting or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
    end if;
end;
/

create or replace TRIGGER biu_eba_cust_administrators
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

create or replace TRIGGER eba_cust_verify_biu_fer
    before insert or update on eba_cust_verifications
    for each row
begin
   if :new.id is null then
        :new.id := eba_cust_seq.nextval;
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(apex_application.g_user,user);
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(apex_application.g_user,user);
   end if;
end;
/

create or replace TRIGGER bd_eba_cust_contacts
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

create or replace TRIGGER biu_eba_cust_contacts
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

create or replace TRIGGER au_eba_cust_contacts
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

create or replace TRIGGER eba_cust_notif_biu
before insert or update on eba_cust_notifications
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

create or replace TRIGGER "BIU_EBA_CUST_ISSUE_STATUSES" 
    before insert or update 
    on eba_cust_issue_statuses
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),USER);
    end if;
    if inserting or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
    end if;
end;
/

create or replace TRIGGER eba_cust_acl_features_biu
    before insert or update on eba_cust_acl_features
    for each row
begin
  -- Always store authorization_name as upper case
  :new.authorization_name := upper(:new.authorization_name);
  if inserting then
    if :new.id is null then
      :new.id := eba_cust.gen_id();
    end if;
    :new.created_by         := nvl(v('APP_USER'), USER);
    :new.created            := current_timestamp;
    :new.row_version        := 1;
  elsif updating then
    :new.row_version        := nvl(:old.row_version,1) + 1;                                
  end if;
  :new.updated_by         := nvl(v('APP_USER'), USER);
  :new.updated            := current_timestamp;
end;
/

create or replace TRIGGER eba_cust_clicks_biu
    before insert on eba_cust_clicks
    for each row
begin
     if :new.id is null then
         :new.id := eba_cust_seq.nextval;
     end if;
     :new.view_timestamp := current_timestamp;
     :new.app_username := nvl(v('APP_USER'),user);
     :new.app_session := v('APP_SESSION');
end;
/

create or replace TRIGGER eba_cust_feedback_biu
    before insert or update 
    on eba_cust_feedback
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := NVL(V('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := NVL(V('APP_USER'),user);
end;
/

create or replace TRIGGER bi_eba_cust_views_log
    before insert on eba_cust_views_log
    for each row
begin
    if inserting then
        if :NEW.ID is null then
            select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
              into :new.id
              from dual;
        End if;
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

create or replace TRIGGER biu_eba_cust_links
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

create or replace TRIGGER biu_eba_cust_geographies
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

create or replace TRIGGER biu_eba_cust_ref_phase
    before insert or update on eba_cust_ref_phase
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
   end if;
   if updating then
      :NEW.UPDATED := current_timestamp;
      :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
   end if;
end;
/

create or replace TRIGGER biu_eba_cust_industries
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

create or replace TRIGGER eba_cust_tags_biu
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

create or replace TRIGGER biu_eba_cust_competitors
    before insert or update on eba_cust_competitors
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_competitors;
/

create or replace TRIGGER au_eba_cust_competitors
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

create or replace TRIGGER au_eba_cust_customers
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

create or replace TRIGGER ad_eba_cust_customers
    after delete on eba_cust_customers
    for each row
begin
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value)
    values 
    ('CUSTOMERS', :old.row_key, :old.id, 'CUSTOMER_REMOVED', substr(:old.customer_name,0,4000), null ); 
end ad_eba_cust_customers;
/

create or replace TRIGGER biu_eba_cust_customers
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

create or replace TRIGGER BIU_EBA_CUST_NOTES 
    before insert or update on EBA_CUST_NOTES
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

create or replace TRIGGER biu_eba_cust_countries
    before insert or update on eba_cust_countries
    for each row
begin
   if :new.ID is null then
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
   if :new.display_yn is null then 
      :new.display_yn := 'Y';
   end if;
end;
/

create or replace TRIGGER biu_eba_cust_contact_types
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

create or replace TRIGGER BIU_EBA_CUST_HISTORY
   before insert or update on EBA_CUST_HISTORY
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

create or replace TRIGGER bi_eba_cust_errors
    before insert or update on eba_cust_errors
    for each row
begin
    if :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
end;
/

create or replace TRIGGER au_eba_cust_cust_competitor_re
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

create or replace TRIGGER biu_eba_cust_cust_comp_ref
    before insert or update on eba_cust_cust_competitor_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_cust_comp_ref;
/

create or replace TRIGGER biu_eba_cust_products
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

create or replace TRIGGER bd_eba_cust_products
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

alter trigger "BIU_EBA_CUST_TYPE" ENABLE;
/
alter trigger "EBA_CUST_FEEDBACK_TYPES_BIU" ENABLE;
/
alter trigger "BIU_EBA_CUST_SALES_CHANNEL" ENABLE;
/
alter trigger "BIU_EBA_CUST_FILES" ENABLE;
/
alter trigger "BD_EBA_CUST_FILES" ENABLE;
/
alter trigger "AU_EBA_CUST_PRODUCT_USES" ENABLE;
/
alter trigger "BIU_EBA_CUST_PRODUCT_USES" ENABLE;
/
alter trigger "BIU_EBA_CUST_CATEGORIES" ENABLE;
/
alter trigger "AU_EBA_CUST_ACTIVITIES" ENABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITIES" ENABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITY_FILES" ENABLE;
/
alter trigger "BIU_EBA_CUST_CUST_REFTYPE_REF" ENABLE;
/
alter trigger "AU_EBA_CUST_CUSTOMER_REFTYPE_R" ENABLE;
/
alter trigger "EBA_CUST_USERS_BD" ENABLE;
/
alter trigger "EBA_CUST_USERS_BIU" ENABLE;
/
alter trigger "BIU_EBA_CUST_REFERENCE_TYPES" ENABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITY_REF" ENABLE;
/
alter trigger "AU_EBA_CUST_ACTIVITY_REF" ENABLE;
/
alter trigger "BIU_EBA_CUST_STATUS" ENABLE;
/
alter trigger "BIU_EBA_CUST_USE_CASE" ENABLE;
/
alter trigger "EBA_CUST_PRODUCT_STATUSES_BIU" ENABLE;
/
alter trigger "BIU_EBA_CUST_PRODUCT_FAMILIES" ENABLE;
/
alter trigger "BIU_EBA_CUST_TZ_PREF" ENABLE;
/
alter trigger "EBA_CUST_PREFERENCES_BIU" ENABLE;
/
alter trigger "BIU_EBA_CUST_IMPL_PARTNERS" ENABLE;
/
alter trigger "BIU_EBA_CUST_EMAIL_LOG" ENABLE;
/
alter trigger "BIU_EBA_CUST_ACTIVITY_TYPES" ENABLE;
/
alter trigger "BIU_EBA_CUST_CUST_PARTNER_REF" ENABLE;
/
alter trigger "AU_EBA_CUST_CUST_PARTNER_REF" ENABLE;
/
alter trigger "BIU_EBA_CUST_ISSUES" ENABLE;
/
alter trigger "BIU_EBA_CUST_ADMINISTRATORS" ENABLE;
/
alter trigger "EBA_CUST_VERIFY_BIU_FER" ENABLE;
/
alter trigger "BD_EBA_CUST_CONTACTS" ENABLE;
/
alter trigger "BIU_EBA_CUST_CONTACTS" ENABLE;
/
alter trigger "AU_EBA_CUST_CONTACTS" ENABLE;
/
alter trigger "EBA_CUST_NOTIF_BIU" ENABLE;
/
alter trigger "BIU_EBA_CUST_ISSUE_STATUSES" ENABLE;
/
alter trigger "EBA_CUST_ACL_FEATURES_BIU" ENABLE;
/
alter trigger "EBA_CUST_CLICKS_BIU" ENABLE;
/
alter trigger "EBA_CUST_FEEDBACK_BIU" ENABLE;
/
alter trigger "BI_EBA_CUST_VIEWS_LOG" ENABLE;
/
alter trigger "BIU_EBA_CUST_LINKS" ENABLE;
/
alter trigger "BIU_EBA_CUST_GEOGRAPHIES" ENABLE;
/
alter trigger "BIU_EBA_CUST_REF_PHASE" ENABLE;
/
alter trigger "BIU_EBA_CUST_INDUSTRIES" ENABLE;
/
alter trigger "EBA_CUST_TAGS_BIU" ENABLE;
/
alter trigger "BIU_EBA_CUST_COMPETITORS" ENABLE;
/
alter trigger "AU_EBA_CUST_COMPETITORS" ENABLE;
/
alter trigger "AU_EBA_CUST_CUSTOMERS" ENABLE;
/
alter trigger "AD_EBA_CUST_CUSTOMERS" ENABLE;
/
alter trigger "BIU_EBA_CUST_CUSTOMERS" ENABLE;
/
alter trigger "BIU_EBA_CUST_NOTES" ENABLE;
/
alter trigger "BIU_EBA_CUST_COUNTRIES" ENABLE;
/
alter trigger "BIU_EBA_CUST_CONTACT_TYPES" ENABLE;
/
alter trigger "BIU_EBA_CUST_HISTORY" ENABLE;
/
alter trigger "BI_EBA_CUST_ERRORS" ENABLE;
/
alter trigger "AU_EBA_CUST_CUST_COMPETITOR_RE" ENABLE;
/
alter trigger "BIU_EBA_CUST_CUST_COMP_REF" ENABLE;
/
alter trigger "BIU_EBA_CUST_PRODUCTS" ENABLE;
/
alter trigger "BD_EBA_CUST_PRODUCTS" ENABLE;
/

-- Re-create views:
create or replace view eba_cust_customers_v as
select 
   a.row_key, 
   a.id,
   customer_name,
   status,
   a.status_id,
   category,
   geography_name,
   referencable,
   number_of_users,
   summary,
   web_site,
   (select listagg(p.product_name, ', ') within group (order by p.product_name) product_uses
    from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p
    where c.id = u.customer_id
    and u.product_id = p.id
    and c.id = a.id
    group by c.customer_name
   ) product_uses,
   nvl((select industry_name from eba_cust_industries i where i.id = a.industry_id),'Not Defined') industry,
   tags,
   a.created,
   a.created_by,
   a.updated,
   a.updated_by
from   
   eba_cust_customers a, 
   eba_cust_categories b, 
   eba_cust_status c, 
   eba_cust_geographies d
where 
   a.category_id = b.id (+) and 
   a.status_id = c.id (+) and 
   a.geography_id = d.id (+)
;

-- Tables Changed: 49
-- Columns Changed: 111
-- Triggers Changed: 63