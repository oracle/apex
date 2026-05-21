Rem  Copyright (c) Oracle Corporation 1999 - 2022. All Rights Reserved.
Rem
Rem    NAME
Rem      apex_ebs_setup.sql
Rem
Rem    DESCRIPTION
Rem      Installs packages and views and grants rights for integrating APEX Demonstration application.
Rem
Rem    NOTES
Rem      Assumes connected as SYS as SYSDAB user.
Rem
Rem    REQUIREMENTS
Rem      - Oracle 12.1.0.2 or later
Rem      - Oracle E*Business Suite 12.2 or later
Rem      - Oracle APEX 22.1 or later
Rem
Rem    Arguments:
Rem     NONE
Rem
Rem    Example:
Rem
Rem    1)Local
Rem      sqlplus "sys/sys_password" as sysdba
Rem      SQL> @apex_ebs_setup
Rem
Rem    2)With connect string
Rem      sqlplus "sys/sys_password@vision" as sysdba
Rem      SQL> @apex_ebs_setup
Rem
Rem    MODIFIED   (MM/DD/YYYY)
Rem      dpeake    02/14/2019 - Created
Rem      shlayel   02/21/2022 - Modified, allowing complex password by using "" in the connect statement
Rem      shlayel   07/14/2022 - Modified the minimum REQUIREMENTS and rename Application Express to APEX
Rem      shlayel   07/14/2022 - Added XX_EMPS and XX_CUSTOMER_LOCATIONS Views

prompt .  ____   ____           ____        ____
prompt . /    \ |    \   /\    /     |     /
prompt .|      ||    /  /  \  |      |    |
prompt .|      ||---    ----  |      |    |---

prompt .|      ||   \  /    \ |      |    |
prompt . \____/ |    \/      \ \____ |____ \____
prompt .
prompt .
prompt . APEX E*Business Suite Integration Example Setup.
prompt .................................................................
prompt .

set define '^'
set concat on
set concat .
set verify off
set termout off
spool off
set termout on


column foo3 new_val log1

select 'apex_ebs_setup_'||to_char(sysdate,'yyyy-mm-dd_hh24-mi-ss')||'.log' foo3 from dual;

spool ^log1

prompt .
prompt .  << Enter Criteria >>
prompt .
accept EBSVERSION CHAR default '12.2'             prompt '.   Version of EBS [12.2]: '
accept APPS char default 'APPS'                   prompt '.   EBS APPS Username [APPS]: '
accept APPSPWD char                               prompt '.   Password for EBS APPS Username: ' HIDE
accept APEX char default 'XX_APEX'                prompt '.   APEX Schema Name [XX_APEX]: '
accept APEXPWD char                               prompt '.   Password for APEX Schema: ' HIDE
prompt .

whenever sqlerror continue

prompt .
prompt ... Enable editions in APEX Schema
prompt .

declare
  l_stmt varchar2(4000);
begin
  if '^EBSVERSION' = '12.2' then
    l_stmt := 'alter user '|| '^APEX' ||' enable editions';
    execute immediate l_stmt;
  end if;
exception
  when others then null;
end;
/

prompt .
prompt ... Connect to the ^APPS Schema using ^APPSPWD Password
prompt .

connect ^APPS/"^APPSPWD"

prompt .
prompt ... Create views for use in APEX Applications
prompt .

create or replace view xx_apex_ebs_user
    (  user_id
     , user_name
     , start_date
     , end_date
     , description
     , email_address
     , user_guid
     , person_party_id
     , constraint xx_apex_ebs_user_pk
        primary key (user_id)
        rely disable novalidate
    )
  as
    select user_id
    ,      user_name
    ,      start_date
    ,      end_date
    ,      description
    ,      email_address
    ,      user_guid        /* Used for Single-Sign On */
    ,      person_party_id  /* FK to party information */
    from fnd_user;

grant select on xx_apex_ebs_user to ^APEX;
grant select on fnd_responsibility_vl to ^APEX;

prompt .
prompt ... Create Sample APIs to be called from APEX applications
prompt .

create or replace package xx_apex_sample_apis as
function apex_validate_login (  p_username   in  varchar2
                              , p_password   in  varchar2
                             ) return boolean;

procedure apex_update_email (  p_username        in varchar2
                             , p_owner           in varchar2
                             , p_email_address   in varchar2
                            );

end;
/

create or replace package body xx_apex_sample_apis as
function apex_validate_login (  p_username   in  varchar2
                              , p_password   in  varchar2
                             ) return boolean
is
begin
    return fnd_user_pkg.validatelogin(p_username, p_password);
end apex_validate_login;

procedure apex_update_email (  p_username        in varchar2
                             , p_owner           in varchar2
                             , p_email_address   in varchar2
                            )
is
begin
    wf_event.setdispatchmode('async');
    fnd_user_pkg.updateuser(x_user_name=>p_username, x_owner=>p_owner, x_email_address=>p_email_address);
end apex_update_email;

end xx_apex_sample_apis;
/
show errors

grant execute on xx_apex_sample_apis to ^APEX;

prompt .
prompt ... Create APEX Global package for use with EBS Responsibilities
prompt .

create or replace package xx_apex_global authid definer as
  procedure apps_initialize(
     user_id in number,
     resp_id in number,
     resp_appl_id in number,
     security_group_id in number default 0,
     server_id in number default -1);

  function function_test(function_name in varchar2) return boolean;
end;
/

create or replace package body xx_apex_global as
  procedure apps_initialize(
    user_id in number,
    resp_id in number,
    resp_appl_id in number,
    security_group_id in number default 0,
    server_id in number default -1) is
  begin
    fnd_global.apps_initialize(user_id, resp_id, resp_appl_id,
                               security_group_id, server_id);
  end;

  function function_test(function_name in varchar2) return boolean is
  begin
    return fnd_function.test(function_name);
  end;
end;
/
show errors

grant execute on xx_apex_global to ^APEX;


prompt .
prompt ... Create View for Employee Directory
prompt .


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "APPS"."XX_EMPS" ("BUSINESS_GROUP", "PERSON_ID", "IMAGE", "EMPLOYEE_NUMBER", "FIRST_NAME", "LAST_NAME", "FULL_NAME", "GENDER", "EFFECTIVE_START_DATE", "EFFECTIVE_END_DATE", "EMAIL_ADDRESS", "EMPLOYEE_LOCATION", "SUPERVISOR_EMPLOYEE_NUMBER", "SUPERVISOR_NAME", "WORK_TELEPHONE_NUMBER", "JOB_NAME", "POSITION_NAME", "DEFAULT_CHARGE_ACCOUNT", "LEDGER_NAME") AS 
  SELECT 
(SELECT name
          FROM hr_all_organization_units 
         WHERE organization_id = paaf.business_group_id
       ) business_group,
       papf1.person_id, 
       i.image,
       papf1.employee_number,
       papf1.first_name,
       papf1.last_name,
       papf1.full_name,
       papf1.sex gender,
       papf1.effective_start_date,
       papf1.effective_end_date,
       papf1.email_address,
       (SELECT hloc.location_code
          FROM hr_locations_all hloc
         WHERE hloc.location_id = paaf.location_id
       ) employee_location,
       papf2.employee_number supervisor_employee_number,
       papf2.full_name supervisor_name,
      (
       SELECT pp.phone_number
         FROM per_phones pp
        WHERE rownum = 1 and papf1.person_id  = pp.parent_id
          AND pp.parent_table  = 'PER_ALL_PEOPLE_F'
          AND pp.date_from     = papf1.effective_start_date
          AND NVL(pp.date_to,
                  papf1.effective_end_date
                  ) = papf1.effective_end_date
      ) work_telephone_number,
      (SELECT name 
         FROM per_jobs 
        WHERE job_id = paaf.job_id
      ) job_name,
      (SELECT name 
         FROM per_all_positions
        WHERE position_id = paaf.position_id
      ) position_name,
      (SELECT concatenated_segments
         FROM gl_code_combinations_kfv 
        WHERE code_combination_id = paaf.default_code_comb_id
      ) default_charge_account,
      (SELECT name 
         FROM gl_ledgers 
        WHERE ledger_id = paaf.set_of_books_id
      ) ledger_name
 FROM per_all_people_f papf1,
      per_all_people_f papf2,
      per_all_assignments_f paaf,
      per_images i
WHERE papf1.person_id = paaf.person_id
  AND papf2.person_id = paaf.supervisor_id
  AND paaf.primary_flag  = 'Y'
  AND papf1.current_employee_flag = 'Y'
  AND papf2.current_employee_flag = 'Y'
  and papf1.person_id = i.parent_id
  and paaf.effective_start_date = (select max(ia.effective_start_date) from per_all_assignments_f ia where ia.person_id = papf1.person_id )
  and papf1.effective_start_date = (select max(ia.effective_start_date) from per_all_people_f ia where ia.person_id = papf1.person_id )
   and papf2.effective_start_date = (select max(ia.effective_start_date) from per_all_people_f ia where ia.person_id = papf2.person_id );

grant select on xx_emps to ^APEX;

prompt .
prompt ... Create View for Customer Locations
prompt .


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "APPS"."XX_CUSTOMER_LOCATIONS" ("CUSTOMER_NUMBER", "CUSTOMER_NAME", "SITE_NUMBER", "ADDRESS1", "ADDRESS2", "ADDRESS3", "ADDRESS4", "CITY", "POSTAL_CODE", "STATE", "COUNTRY", "BILL_TO_LOCATION", "SHIP_TO_LOCATION", "GEOMETRY") AS 
  SELECT  hca.account_number customer_number,
                hp.party_name customer_name,
                hps.party_site_number site_number,
                hl.address1 address1,
                hl.address2 address2, hl.address3 address3,
                hl.address4 address4, hl.city city,
                hl.postal_code postal_code, hl.state state,
                ftt.territory_short_name country,
                hcsua1.LOCATION bill_to_location,
                hcsua2.LOCATION ship_to_location,
                hl.geometry
           FROM hz_parties hp,
                hz_party_sites hps,
                hz_cust_accounts hca,
                hz_cust_acct_sites_all hcasa1,
                hz_cust_site_uses_all hcsua1,
                hz_locations hl,
                fnd_territories_tl ftt,
                hz_cust_acct_sites_all hcasa2,
                hz_cust_site_uses_all hcsua2
          WHERE 
            hp.party_id = hps.party_id(+)
            AND hp.party_id = hca.party_id(+)
            AND hcasa1.party_site_id(+) = hps.party_site_id
            AND hcasa2.party_site_id(+) = hps.party_site_id
            AND hcsua1.cust_acct_site_id(+) = hcasa1.cust_acct_site_id
            AND hcsua2.cust_acct_site_id(+) = hcasa2.cust_acct_site_id
            AND hcsua1.site_use_code(+) = 'bill_to'
            AND hcsua2.site_use_code(+) = 'ship_to'
            AND hcasa1.org_id(+) = fnd_profile.VALUE ('org_id')
            AND hcasa2.org_id(+) = fnd_profile.VALUE ('org_id')
            AND hps.location_id = hl.location_id
            AND hl.country = ftt.territory_code
            AND ftt.LANGUAGE = USERENV ('lang')
            and hl.geometry is not null;

grant select on xx_customer_locations to ^APEX;

spool off
exit;
