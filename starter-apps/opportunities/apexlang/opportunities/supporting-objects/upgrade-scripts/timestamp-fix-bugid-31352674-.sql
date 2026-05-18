-- This script fixes BUG 31352674, replacing all columns of type TIMESTAMP(6) WITH LOCAL TIME ZONE to TIMESTAMP WITH TIME ZONE
-- it also updates all application triggers where columns where updated with LOCALTIMESTAMP to CURRENT_TIMESTAMP
-- 
-- This upgrade script will only run if there are tables that start with 'EBA_INTRACK%' with columns of data type
-- TIMESTAMP(6) WITH LOCAL TIME ZONE

-- Start of Script
-- 1. Disable All Triggers
alter trigger "EBA_SALES_NOTE_BIU" DISABLE;
/
alter trigger "BIU_EBA_SALES_AGREEMENT_TYPES" DISABLE;
/
alter trigger "BIU_EBA_SALES_HISTORY" DISABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_STAGES" DISABLE;
/
alter trigger "BIU_EBA_SALES_AGREEMENTS" DISABLE;
/
alter trigger "EBA_SALES_PREFERENCES_BIU" DISABLE;
/
alter trigger "BIU_EBA_SALES_PRODUCT_LOBS" DISABLE;
/
alter trigger "BIU_EBA_SALES_DEALS" DISABLE;
/
alter trigger "BD_EBA_SALES_DEALS" DISABLE;
/
alter trigger "BIU_EBA_EBA_SALES_DEAL_COMPET" DISABLE;
/
alter trigger "EBA_SALES_VERIFY_BIU_FER" DISABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_PRODUCTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_STAT_CODES" DISABLE;
/
alter trigger "BIU_EBA_SALES_SALESREP_ROLES" DISABLE;
/
alter trigger "BIU_EBA_SALES_SVPS" DISABLE;
/
alter trigger "BIU_EBA_SALES_CUST" DISABLE;
/
alter trigger "BD_EBA_SALES_CUST" DISABLE;
/
alter trigger "BIU_EBA_SALES_COMMENTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_RISK_ASSESSMENTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_STATUS_ASSESS" DISABLE;
/
alter trigger "BIU_EBA_SALES_COMPETITORS" DISABLE;
/
alter trigger "BD_EBA_SALES_COMPETITORS" DISABLE;
/
alter trigger "BIU_EBA_SALES_TERRITORY_ACL" DISABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_TEAM" DISABLE;
/
alter trigger "EBA_SALES_USERS_BD" DISABLE;
/
alter trigger "EBA_SALES_USERS_BIU" DISABLE;
/
alter trigger "BIU_EBA_SALES_COUNTRIES" DISABLE;
/
alter trigger "BIU_EBA_SALES_INDUSTRIES" DISABLE;
/
alter trigger "BIU_EBA_SALES_TERMS" DISABLE;
/
alter trigger "BD_EBA_SALES_TERR" DISABLE;
/
alter trigger "BIU_EBA_SALES_TERR" DISABLE;
/
alter trigger "BIU_EBA_SALES_SUPPORT_AMTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_CURRENCIES" DISABLE;
/
alter trigger "BIU_EBA_SALES_CUST_AGRMNT_MAP" DISABLE;
/
alter trigger "BIU_EBA_SALES_SALES_PERIODS" DISABLE;
/
alter trigger "EBA_SALES_ERRORS_BI" DISABLE;
/
alter trigger "BIU_EBA_SALES_TAGS" DISABLE;
/
alter trigger "BD_EBA_SALES_PRODUCTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_PRODUCTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_FILES" DISABLE;
/
alter trigger "BIU_EBA_SALES_CUSTOMERS_LOCS" DISABLE;
/
alter trigger "BIU_EBA_SALES_COMP_THREATS" DISABLE;
/
alter trigger "BD_EBA_SALES_LEADS" DISABLE;
/
alter trigger "BIU_EBA_SALES_LEADS" DISABLE;
/
alter trigger "biu_eba_sales_product_families" DISABLE;
/
alter trigger "BIU_EBA_SALES_TERR_MAP" DISABLE;
/
alter trigger "BIU_EBA_SALES_SALESREPS" DISABLE;
/
alter trigger "BIU_EBA_SALES_LEAD_SOURCES" DISABLE;
/
alter trigger "BIU_EBA_SALES_FIN_ASSESSMENTS" DISABLE;
/
alter trigger "EBA_SALES_CLICKS_BIU" DISABLE;
/
alter trigger "BD_EBA_SALES_CUST_CONTACTS" DISABLE;
/
alter trigger "BIU_EBA_SALES_CUST_CONTACTS" DISABLE;
/
alter trigger "BIU_EBA_EBA_SALES_ACT_COMPET" DISABLE;
/
alter trigger "BIU_EBA_SALES_SUPRT_AMT_TYPES" DISABLE;
/
alter trigger "BIU_EBA_SALES_TZ_PREF" DISABLE;
/
alter trigger "BIU_EBA_SALES_CUST_SPT_AMT_MAP" DISABLE;
/
alter trigger "BIU_EBA_SALES_ACCOUNT_STANDING" DISABLE;
/
alter trigger "BIU_EBA_SALES_LINKS" DISABLE;
/
alter trigger "BIU_EBA_SALES_STATES" DISABLE;
/

-- 2. Add temporary timestamp columns
alter table EBA_SALES_NOTIFICATIONS add (DISPLAY_FROM1 timestamp with time zone,DISPLAY_UNTIL1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_AGREEMENT_TYPES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_HISTORY add (CHANGE_DATE1 timestamp with time zone)
/
alter table EBA_SALES_DEAL_STAGES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_AGREEMENTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_PREFERENCES add (CREATED_ON1 timestamp with time zone,UPDATED_ON1 timestamp with time zone)
/
alter table EBA_SALES_PRODUCT_LOBS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_DEALS add (DEAL_CLOSE_DATE1 timestamp with time zone,DEAL_CLOSE_DATE_ALT1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_DEAL_COMPETITION add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_VERIFICATIONS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_DEAL_PRODUCTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone,FLEX_D051 timestamp with time zone)
/
alter table EBA_SALES_DEAL_STATUS_CODES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_SALESREP_ROLES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_SVPS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_CUSTOMERS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_COMMENTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_RISK_ASSESSMENTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_STATUS_ASSESSMENTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_COMPETITORS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_TERRITORY_ACL add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_DEAL_TEAM add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_USERS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_COUNTRIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_INDUSTRIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_TERMS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_TERRITORIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_SUPPORT_AMTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_CURRENCIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_CUST_AGRMNT_MAP add (CLOSE_DATE1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_SALES_PERIODS add (FIRST_DAY1 timestamp with time zone,LAST_DAY1 timestamp with time zone)
/
alter table EBA_SALES_ERRORS add (ERR_TIME1 timestamp with time zone)
/
alter table EBA_SALES_TAGS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_PRODUCTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_FILES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_CUSTOMER_LOCATIONS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_COMPETITOR_THREATS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_LEADS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_PRODUCT_FAMILIES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_TERR_MAP add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_SALESREPS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_LEAD_SOURCES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_FIN_ASSESSMENTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_CLICKS add (VIEW_TIMESTAMP1 timestamp with time zone)
/
alter table EBA_SALES_CUSTOMER_CONTACTS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/
alter table EBA_SALES_ACT_COMPETITION add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_SUPRT_AMT_TYPES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_TZ_PREF add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_CUST_SPT_AMT_MAP add (CLOSE_DATE1 timestamp with time zone,CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_ACCOUNT_STANDING add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_LINKS add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone)
/
alter table EBA_SALES_STATES add (CREATED1 timestamp with time zone,UPDATED1 timestamp with time zone,FLEX_D011 timestamp with time zone,FLEX_D021 timestamp with time zone,FLEX_D031 timestamp with time zone,FLEX_D041 timestamp with time zone)
/

-- 3. Copy original column values into temporary column values
update EBA_SALES_NOTIFICATIONS set DISPLAY_FROM1 = DISPLAY_FROM,DISPLAY_UNTIL1 = DISPLAY_UNTIL,CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_AGREEMENT_TYPES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_HISTORY set CHANGE_DATE1 = CHANGE_DATE;
update EBA_SALES_DEAL_STAGES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_AGREEMENTS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_PREFERENCES set CREATED_ON1 = CREATED_ON,UPDATED_ON1 = UPDATED_ON;
update EBA_SALES_PRODUCT_LOBS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_DEALS set DEAL_CLOSE_DATE1 = DEAL_CLOSE_DATE,DEAL_CLOSE_DATE_ALT1 = DEAL_CLOSE_DATE_ALT,CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_DEAL_COMPETITION set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_VERIFICATIONS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_DEAL_PRODUCTS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04,FLEX_D051 = FLEX_D05;
update EBA_SALES_DEAL_STATUS_CODES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_SALESREP_ROLES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_SVPS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_CUSTOMERS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_COMMENTS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_RISK_ASSESSMENTS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_STATUS_ASSESSMENTS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_COMPETITORS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_TERRITORY_ACL set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_DEAL_TEAM set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_USERS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_COUNTRIES set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_INDUSTRIES set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_TERMS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_TERRITORIES set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_SUPPORT_AMTS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_CURRENCIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_CUST_AGRMNT_MAP set CLOSE_DATE1 = CLOSE_DATE,CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_SALES_PERIODS set FIRST_DAY1 = FIRST_DAY,LAST_DAY1 = LAST_DAY;
update EBA_SALES_ERRORS set ERR_TIME1 = ERR_TIME;
update EBA_SALES_TAGS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_PRODUCTS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_FILES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_CUSTOMER_LOCATIONS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_COMPETITOR_THREATS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_LEADS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_PRODUCT_FAMILIES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_TERR_MAP set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_SALESREPS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_LEAD_SOURCES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_FIN_ASSESSMENTS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_CLICKS set VIEW_TIMESTAMP1 = VIEW_TIMESTAMP;
update EBA_SALES_CUSTOMER_CONTACTS set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;
update EBA_SALES_ACT_COMPETITION set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_SUPRT_AMT_TYPES set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_TZ_PREF set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_CUST_SPT_AMT_MAP set CLOSE_DATE1 = CLOSE_DATE,CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_ACCOUNT_STANDING set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_LINKS set CREATED1 = CREATED,UPDATED1 = UPDATED;
update EBA_SALES_STATES set CREATED1 = CREATED,UPDATED1 = UPDATED,FLEX_D011 = FLEX_D01,FLEX_D021 = FLEX_D02,FLEX_D031 = FLEX_D03,FLEX_D041 = FLEX_D04;

-- 4. Drop original timestamp with local time zone columns
alter table EBA_SALES_NOTIFICATIONS drop (DISPLAY_FROM,DISPLAY_UNTIL,CREATED,UPDATED)
/
alter table EBA_SALES_AGREEMENT_TYPES drop (CREATED,UPDATED)
/
alter table EBA_SALES_HISTORY drop (CHANGE_DATE)
/
alter table EBA_SALES_DEAL_STAGES drop (CREATED,UPDATED)
/
alter table EBA_SALES_AGREEMENTS drop (CREATED,UPDATED)
/
alter table EBA_SALES_PREFERENCES drop (CREATED_ON,UPDATED_ON)
/
alter table EBA_SALES_PRODUCT_LOBS drop (CREATED,UPDATED)
/
alter table EBA_SALES_DEALS drop (DEAL_CLOSE_DATE,DEAL_CLOSE_DATE_ALT,CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_DEAL_COMPETITION drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_VERIFICATIONS drop (CREATED,UPDATED)
/
alter table EBA_SALES_DEAL_PRODUCTS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04,FLEX_D05)
/
alter table EBA_SALES_DEAL_STATUS_CODES drop (CREATED,UPDATED)
/
alter table EBA_SALES_SALESREP_ROLES drop (CREATED,UPDATED)
/
alter table EBA_SALES_SVPS drop (CREATED,UPDATED)
/
alter table EBA_SALES_CUSTOMERS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_COMMENTS drop (CREATED,UPDATED)
/
alter table EBA_SALES_RISK_ASSESSMENTS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_STATUS_ASSESSMENTS drop (CREATED,UPDATED)
/
alter table EBA_SALES_COMPETITORS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_TERRITORY_ACL drop (CREATED,UPDATED)
/
alter table EBA_SALES_DEAL_TEAM drop (CREATED,UPDATED)
/
alter table EBA_SALES_USERS drop (CREATED,UPDATED)
/
alter table EBA_SALES_COUNTRIES drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_INDUSTRIES drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_TERMS drop (CREATED,UPDATED)
/
alter table EBA_SALES_TERRITORIES drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_SUPPORT_AMTS drop (CREATED,UPDATED)
/
alter table EBA_SALES_CURRENCIES drop (CREATED,UPDATED)
/
alter table EBA_SALES_CUST_AGRMNT_MAP drop (CLOSE_DATE,CREATED,UPDATED)
/
alter table EBA_SALES_SALES_PERIODS drop (FIRST_DAY,LAST_DAY)
/
alter table EBA_SALES_ERRORS drop (ERR_TIME)
/
alter table EBA_SALES_TAGS drop (CREATED,UPDATED)
/
alter table EBA_SALES_PRODUCTS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_FILES drop (CREATED,UPDATED)
/
alter table EBA_SALES_CUSTOMER_LOCATIONS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_COMPETITOR_THREATS drop (CREATED,UPDATED)
/
alter table EBA_SALES_LEADS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_PRODUCT_FAMILIES drop (CREATED,UPDATED)
/
alter table EBA_SALES_TERR_MAP drop (CREATED,UPDATED)
/
alter table EBA_SALES_SALESREPS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_LEAD_SOURCES drop (CREATED,UPDATED)
/
alter table EBA_SALES_FIN_ASSESSMENTS drop (CREATED,UPDATED)
/
alter table EBA_SALES_CLICKS drop (VIEW_TIMESTAMP)
/
alter table EBA_SALES_CUSTOMER_CONTACTS drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/
alter table EBA_SALES_ACT_COMPETITION drop (CREATED,UPDATED)
/
alter table EBA_SALES_SUPRT_AMT_TYPES drop (CREATED,UPDATED)
/
alter table EBA_SALES_TZ_PREF drop (CREATED,UPDATED)
/
alter table EBA_SALES_CUST_SPT_AMT_MAP drop (CLOSE_DATE,CREATED,UPDATED)
/
alter table EBA_SALES_ACCOUNT_STANDING drop (CREATED,UPDATED)
/
alter table EBA_SALES_LINKS drop (CREATED,UPDATED)
/
alter table EBA_SALES_STATES drop (CREATED,UPDATED,FLEX_D01,FLEX_D02,FLEX_D03,FLEX_D04)
/

-- 5. Rename temporary columns back to original column names
alter table EBA_SALES_NOTIFICATIONS rename column DISPLAY_FROM1 to DISPLAY_FROM
/
alter table EBA_SALES_NOTIFICATIONS rename column DISPLAY_UNTIL1 to DISPLAY_UNTIL
/
alter table EBA_SALES_NOTIFICATIONS rename column CREATED1 to CREATED
/
alter table EBA_SALES_NOTIFICATIONS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_AGREEMENT_TYPES rename column CREATED1 to CREATED
/
alter table EBA_SALES_AGREEMENT_TYPES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_HISTORY rename column CHANGE_DATE1 to CHANGE_DATE
/
alter table EBA_SALES_DEAL_STAGES rename column CREATED1 to CREATED
/
alter table EBA_SALES_DEAL_STAGES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_AGREEMENTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_AGREEMENTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_PREFERENCES rename column CREATED_ON1 to CREATED_ON
/
alter table EBA_SALES_PREFERENCES rename column UPDATED_ON1 to UPDATED_ON
/
alter table EBA_SALES_PRODUCT_LOBS rename column CREATED1 to CREATED
/
alter table EBA_SALES_PRODUCT_LOBS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_DEALS rename column DEAL_CLOSE_DATE1 to DEAL_CLOSE_DATE
/
alter table EBA_SALES_DEALS rename column DEAL_CLOSE_DATE_ALT1 to DEAL_CLOSE_DATE_ALT
/
alter table EBA_SALES_DEALS rename column CREATED1 to CREATED
/
alter table EBA_SALES_DEALS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_DEALS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_DEALS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_DEALS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_DEALS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_DEAL_COMPETITION rename column CREATED1 to CREATED
/
alter table EBA_SALES_DEAL_COMPETITION rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_DEAL_COMPETITION rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_DEAL_COMPETITION rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_DEAL_COMPETITION rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_DEAL_COMPETITION rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_VERIFICATIONS rename column CREATED1 to CREATED
/
alter table EBA_SALES_VERIFICATIONS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_DEAL_PRODUCTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_DEAL_PRODUCTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_DEAL_PRODUCTS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_DEAL_PRODUCTS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_DEAL_PRODUCTS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_DEAL_PRODUCTS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_DEAL_PRODUCTS rename column FLEX_D051 to FLEX_D05
/
alter table EBA_SALES_DEAL_STATUS_CODES rename column CREATED1 to CREATED
/
alter table EBA_SALES_DEAL_STATUS_CODES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_SALESREP_ROLES rename column CREATED1 to CREATED
/
alter table EBA_SALES_SALESREP_ROLES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_SVPS rename column CREATED1 to CREATED
/
alter table EBA_SALES_SVPS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUSTOMERS rename column CREATED1 to CREATED
/
alter table EBA_SALES_CUSTOMERS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUSTOMERS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_CUSTOMERS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_CUSTOMERS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_CUSTOMERS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_COMMENTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_COMMENTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_RISK_ASSESSMENTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_RISK_ASSESSMENTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_RISK_ASSESSMENTS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_RISK_ASSESSMENTS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_RISK_ASSESSMENTS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_RISK_ASSESSMENTS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_STATUS_ASSESSMENTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_STATUS_ASSESSMENTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_COMPETITORS rename column CREATED1 to CREATED
/
alter table EBA_SALES_COMPETITORS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_COMPETITORS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_COMPETITORS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_COMPETITORS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_COMPETITORS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_TERRITORY_ACL rename column CREATED1 to CREATED
/
alter table EBA_SALES_TERRITORY_ACL rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_DEAL_TEAM rename column CREATED1 to CREATED
/
alter table EBA_SALES_DEAL_TEAM rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_USERS rename column CREATED1 to CREATED
/
alter table EBA_SALES_USERS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_COUNTRIES rename column CREATED1 to CREATED
/
alter table EBA_SALES_COUNTRIES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_COUNTRIES rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_COUNTRIES rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_COUNTRIES rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_COUNTRIES rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_INDUSTRIES rename column CREATED1 to CREATED
/
alter table EBA_SALES_INDUSTRIES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_INDUSTRIES rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_INDUSTRIES rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_INDUSTRIES rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_INDUSTRIES rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_TERMS rename column CREATED1 to CREATED
/
alter table EBA_SALES_TERMS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_TERRITORIES rename column CREATED1 to CREATED
/
alter table EBA_SALES_TERRITORIES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_TERRITORIES rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_TERRITORIES rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_TERRITORIES rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_TERRITORIES rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_SUPPORT_AMTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_SUPPORT_AMTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CURRENCIES rename column CREATED1 to CREATED
/
alter table EBA_SALES_CURRENCIES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUST_AGRMNT_MAP rename column CLOSE_DATE1 to CLOSE_DATE
/
alter table EBA_SALES_CUST_AGRMNT_MAP rename column CREATED1 to CREATED
/
alter table EBA_SALES_CUST_AGRMNT_MAP rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_SALES_PERIODS rename column FIRST_DAY1 to FIRST_DAY
/
alter table EBA_SALES_SALES_PERIODS rename column LAST_DAY1 to LAST_DAY
/
alter table EBA_SALES_ERRORS rename column ERR_TIME1 to ERR_TIME
/
alter table EBA_SALES_TAGS rename column CREATED1 to CREATED
/
alter table EBA_SALES_TAGS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_PRODUCTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_PRODUCTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_PRODUCTS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_PRODUCTS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_PRODUCTS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_PRODUCTS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_FILES rename column CREATED1 to CREATED
/
alter table EBA_SALES_FILES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUSTOMER_LOCATIONS rename column CREATED1 to CREATED
/
alter table EBA_SALES_CUSTOMER_LOCATIONS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUSTOMER_LOCATIONS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_CUSTOMER_LOCATIONS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_CUSTOMER_LOCATIONS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_CUSTOMER_LOCATIONS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_COMPETITOR_THREATS rename column CREATED1 to CREATED
/
alter table EBA_SALES_COMPETITOR_THREATS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_LEADS rename column CREATED1 to CREATED
/
alter table EBA_SALES_LEADS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_LEADS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_LEADS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_LEADS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_LEADS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_PRODUCT_FAMILIES rename column CREATED1 to CREATED
/
alter table EBA_SALES_PRODUCT_FAMILIES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_TERR_MAP rename column CREATED1 to CREATED
/
alter table EBA_SALES_TERR_MAP rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_SALESREPS rename column CREATED1 to CREATED
/
alter table EBA_SALES_SALESREPS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_SALESREPS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_SALESREPS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_SALESREPS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_SALESREPS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_LEAD_SOURCES rename column CREATED1 to CREATED
/
alter table EBA_SALES_LEAD_SOURCES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_FIN_ASSESSMENTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_FIN_ASSESSMENTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CLICKS rename column VIEW_TIMESTAMP1 to VIEW_TIMESTAMP
/
alter table EBA_SALES_CUSTOMER_CONTACTS rename column CREATED1 to CREATED
/
alter table EBA_SALES_CUSTOMER_CONTACTS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUSTOMER_CONTACTS rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_CUSTOMER_CONTACTS rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_CUSTOMER_CONTACTS rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_CUSTOMER_CONTACTS rename column FLEX_D041 to FLEX_D04
/
alter table EBA_SALES_ACT_COMPETITION rename column CREATED1 to CREATED
/
alter table EBA_SALES_ACT_COMPETITION rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_SUPRT_AMT_TYPES rename column CREATED1 to CREATED
/
alter table EBA_SALES_SUPRT_AMT_TYPES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_TZ_PREF rename column CREATED1 to CREATED
/
alter table EBA_SALES_TZ_PREF rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_CUST_SPT_AMT_MAP rename column CLOSE_DATE1 to CLOSE_DATE
/
alter table EBA_SALES_CUST_SPT_AMT_MAP rename column CREATED1 to CREATED
/
alter table EBA_SALES_CUST_SPT_AMT_MAP rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_ACCOUNT_STANDING rename column CREATED1 to CREATED
/
alter table EBA_SALES_ACCOUNT_STANDING rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_LINKS rename column CREATED1 to CREATED
/
alter table EBA_SALES_LINKS rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_STATES rename column CREATED1 to CREATED
/
alter table EBA_SALES_STATES rename column UPDATED1 to UPDATED
/
alter table EBA_SALES_STATES rename column FLEX_D011 to FLEX_D01
/
alter table EBA_SALES_STATES rename column FLEX_D021 to FLEX_D02
/
alter table EBA_SALES_STATES rename column FLEX_D031 to FLEX_D03
/
alter table EBA_SALES_STATES rename column FLEX_D041 to FLEX_D04
/

-- 6. Re-create all triggers and enable them.
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

create or replace TRIGGER "BIU_EBA_SALES_AGREEMENT_TYPES" 
   before insert or update on EBA_SALES_AGREEMENT_TYPES
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

create or replace TRIGGER "BIU_EBA_SALES_AGREEMENTS" 
    before insert or update on EBA_SALES_AGREEMENTS
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

create or replace TRIGGER "BIU_EBA_SALES_PRODUCT_LOBS" 
    before insert or update on EBA_SALES_PRODUCT_LOBS
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

create or replace TRIGGER "BIU_EBA_SALES_TERMS"
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

create or replace TRIGGER "BIU_EBA_SALES_TERR" 
    before insert or update on eba_sales_territories
    for each row
begin
    if inserting 
    then
        if :new.id is null then
            :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.row_version_number := 1;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.created_by := nvl(apex_application.g_user, user);
        :new.created := current_timestamp;
        :new.updated_by := nvl(apex_application.g_user, user);
        :new.updated := current_timestamp;
    elsif updating then
        :new.updated_by := nvl(apex_application.g_user, user);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
    end if;
    if :new.tags is not null then
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

create or replace TRIGGER "BIU_EBA_SALES_SUPPORT_AMTS" 
    before insert or update on EBA_SALES_SUPPORT_AMTS
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

create or replace TRIGGER "BIU_EBA_SALES_CUST_AGRMNT_MAP" 
    before insert or update on EBA_SALES_CUST_AGRMNT_MAP
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

create or replace TRIGGER "EBA_SALES_ERRORS_BI" 
    before insert or update on eba_sales_errors
    for each row
begin
    if :new.id is null then
       :new.id := eba_sales_acl_api.gen_id();
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

create or replace TRIGGER "BIU_EBA_SALES_CUST_CONTACTS" 
    before insert or update on eba_sales_customer_contacts
    for each row
begin
    if inserting 
    then
        if :new.id is null then
            :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.row_version_number := 1;
        :new.row_key := eba_sales_fw.compress_int(eba_sales_rowkey_seq.nextval);
        :new.created_by := nvl(apex_application.g_user, user);
        :new.created := current_timestamp;
        :new.updated_by := nvl(apex_application.g_user, user);
        :new.updated := current_timestamp;
    elsif updating then
        :new.updated_by := nvl(apex_application.g_user, user);
        :new.updated := current_timestamp;
        :new.row_version_number := nvl(:old.row_version_number, 1) + 1;
    end if;
    if :new.tags is not null then
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

create or replace TRIGGER "BIU_EBA_SALES_SUPRT_AMT_TYPES" 
    before insert or update on EBA_SALES_SUPRT_AMT_TYPES
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

create or replace TRIGGER "BIU_EBA_SALES_CUST_SPT_AMT_MAP" 
    before insert or update on EBA_SALES_CUST_SPT_AMT_MAP
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

alter trigger "EBA_SALES_NOTE_BIU" ENABLE;
/
alter trigger "BIU_EBA_SALES_AGREEMENT_TYPES" ENABLE;
/
alter trigger "BIU_EBA_SALES_HISTORY" ENABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_STAGES" ENABLE;
/
alter trigger "BIU_EBA_SALES_AGREEMENTS" ENABLE;
/
alter trigger "EBA_SALES_PREFERENCES_BIU" ENABLE;
/
alter trigger "BIU_EBA_SALES_PRODUCT_LOBS" ENABLE;
/
alter trigger "BIU_EBA_SALES_DEALS" ENABLE;
/
alter trigger "BD_EBA_SALES_DEALS" ENABLE;
/
alter trigger "BIU_EBA_EBA_SALES_DEAL_COMPET" ENABLE;
/
alter trigger "EBA_SALES_VERIFY_BIU_FER" ENABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_PRODUCTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_STAT_CODES" ENABLE;
/
alter trigger "BIU_EBA_SALES_SALESREP_ROLES" ENABLE;
/
alter trigger "BIU_EBA_SALES_SVPS" ENABLE;
/
alter trigger "BIU_EBA_SALES_CUST" ENABLE;
/
alter trigger "BD_EBA_SALES_CUST" ENABLE;
/
alter trigger "BIU_EBA_SALES_COMMENTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_RISK_ASSESSMENTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_STATUS_ASSESS" ENABLE;
/
alter trigger "BIU_EBA_SALES_COMPETITORS" ENABLE;
/
alter trigger "BD_EBA_SALES_COMPETITORS" ENABLE;
/
alter trigger "BIU_EBA_SALES_TERRITORY_ACL" ENABLE;
/
alter trigger "BIU_EBA_SALES_DEAL_TEAM" ENABLE;
/
alter trigger "EBA_SALES_USERS_BD" ENABLE;
/
alter trigger "EBA_SALES_USERS_BIU" ENABLE;
/
alter trigger "BIU_EBA_SALES_COUNTRIES" ENABLE;
/
alter trigger "BIU_EBA_SALES_INDUSTRIES" ENABLE;
/
alter trigger "BIU_EBA_SALES_TERMS" ENABLE;
/
alter trigger "BD_EBA_SALES_TERR" ENABLE;
/
alter trigger "BIU_EBA_SALES_TERR" ENABLE;
/
alter trigger "BIU_EBA_SALES_SUPPORT_AMTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_CURRENCIES" ENABLE;
/
alter trigger "BIU_EBA_SALES_CUST_AGRMNT_MAP" ENABLE;
/
alter trigger "BIU_EBA_SALES_SALES_PERIODS" ENABLE;
/
alter trigger "EBA_SALES_ERRORS_BI" ENABLE;
/
alter trigger "BIU_EBA_SALES_TAGS" ENABLE;
/
alter trigger "BD_EBA_SALES_PRODUCTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_PRODUCTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_FILES" ENABLE;
/
alter trigger "BIU_EBA_SALES_CUSTOMERS_LOCS" ENABLE;
/
alter trigger "BIU_EBA_SALES_COMP_THREATS" ENABLE;
/
alter trigger "BD_EBA_SALES_LEADS" ENABLE;
/
alter trigger "BIU_EBA_SALES_LEADS" ENABLE;
/
alter trigger "biu_eba_sales_product_families" ENABLE;
/
alter trigger "BIU_EBA_SALES_TERR_MAP" ENABLE;
/
alter trigger "BIU_EBA_SALES_SALESREPS" ENABLE;
/
alter trigger "BIU_EBA_SALES_LEAD_SOURCES" ENABLE;
/
alter trigger "BIU_EBA_SALES_FIN_ASSESSMENTS" ENABLE;
/
alter trigger "EBA_SALES_CLICKS_BIU" ENABLE;
/
alter trigger "BD_EBA_SALES_CUST_CONTACTS" ENABLE;
/
alter trigger "BIU_EBA_SALES_CUST_CONTACTS" ENABLE;
/
alter trigger "BIU_EBA_EBA_SALES_ACT_COMPET" ENABLE;
/
alter trigger "BIU_EBA_SALES_SUPRT_AMT_TYPES" ENABLE;
/
alter trigger "BIU_EBA_SALES_TZ_PREF" ENABLE;
/
alter trigger "BIU_EBA_SALES_CUST_SPT_AMT_MAP" ENABLE;
/
alter trigger "BIU_EBA_SALES_ACCOUNT_STANDING" ENABLE;
/
alter trigger "BIU_EBA_SALES_LINKS" ENABLE;
/
alter trigger "BIU_EBA_SALES_STATES" ENABLE;
/

-- Recreate views
CREATE OR REPLACE FORCE VIEW "EBA_SALES_OPPORTUNITIES_V" ("ID", "ROW_KEY", "CUSTOMER_ID", "CUSTOMER_NAME", "REP_NAME", "DEAL_NAME", "DEAL_CLOSE_DATE", "DEAL_CLOSE_DATE_ALT", "DEAL_AMOUNT", "DEAL_PROBABILITY", "STATUS_CODE", "IS_OPEN", "IS_OVERDUE", "WEIGHTED_FORECAST", "NOTES", "PRODUCTS", "LAST_CHANGED", "SVP", "TERRITORY_NAME", "QTR", "TAGS", "CUSTOMER_TAGS") AS 
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

CREATE OR REPLACE FORCE VIEW "EBA_SALES_OPP_V" ("CUSTOMER_ID", "DEAL_ID", "CUSTOMER_NAME", "CUSTOMER_STOCK_SYMB", "REP_FIRST_NAME", "REP_LAST_NAME", "REP_EMAIL", "DEAL_NAME", "DEAL_CLOSE_DATE", "DEAL_AMOUNT", "DEAL_PROBABILITY", "STATUS_CODE") AS 
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


-- Tables Changed: 51
-- Columns Changed: 166
-- Triggers Changed: 59
