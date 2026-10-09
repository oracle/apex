
Rem  Copyright (c) Oracle Corporation 1999 - 2022. All Rights Reserved.
Rem
Rem    NAME
Rem      apex_ebs_env.sql
Rem
Rem    DESCRIPTION
Rem      Set up the EBS environment profiles, functions, menus, and responsibilites.
Rem
Rem    NOTES
Rem      Assumes connected as APPS user.
Rem
Rem    REQUIREMENTS
Rem      - Oracle 12.1.0.2 or later
Rem      - Oracle E*Business Suite 12.2 or later
Rem
Rem    Arguments:
Rem     NONE
Rem
Rem    Example:
Rem
Rem    1)Local
Rem      sqlplus "apps/apps_password" @apex_ebs_env
Rem
Rem    2)With connect string
Rem      sqlplus "apps/apps_password@vision" @apex_ebs_env
Rem
Rem    MODIFIED   (MM/DD/YYYY)
Rem      dpeake    02/14/2019 - Created
Rem      dpeake    04/01/2019 - Modified load_row to use to_char(sysdate, 'YYYY/MM/DD') to ensure it does not rely on NLS settings to work
Rem      shlayel   02/22/2022 - Modified addresp to fix the RESP_KEY value from 'APEX_RESP' to  'XX_APEX_RESP'
Rem      shlayel   07/14/2022 - Modified the minimum REQUIREMENTS and rename Application Express to APEX

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

select 'apex_ebs_env_'||to_char(sysdate,'yyyy-mm-dd_hh24-mi-ss')||'.log' foo3 from dual;

spool ^log1

prompt .
prompt .  << Enter Criteria >> 
prompt .
accept APEX_URL CHAR                     prompt '.   APEX URL {http://<EBS_Hostname>:8080/apex} : ' 
accept APEX_APPID char default '110'     prompt '.   APEX Application Id [110]: '
accept APEX_PAGE_NR char default '2'     prompt '.   APEX Page Number with No Repsonsibility [2]: '
accept APEX_PAGE_R char default '3'      prompt '.   APEX Page Number Using Responsibility [3]: '
accept EBS_USER CHAR default 'APEX'      prompt '.   EBS Username to be associated with Menu [APEX]: ' 
accept EBS_PWD CHAR default 'Welcome0'   prompt '.   EBS Username Password [Welcome0]: ' 
accept EBS_EMAIL CHAR                    prompt '.   EBS Username Email Address: ' 

prompt .
prompt ... Set EBS APEX profile option
prompt .

declare
  profile boolean default false;
begin 
  profile := fnd_profile.save ('FND_APEX_URL','^APEX_URL','SITE');
end;
/
commit;

prompt .
prompt ... Create 2 demo functions for APEX
prompt .
begin
  fnd_form_functions_pkg.load_row(
    X_FUNCTION_NAME            => 'XX_APEX_DEMO_1',
    X_APPLICATION_SHORT_NAME   => null,
    X_FORM_NAME                => null,
    X_PARAMETERS               => null,
    X_TYPE                     => 'JSP',
    X_WEB_HOST_NAME            => null,
    X_WEB_AGENT_NAME           => null,
    X_WEB_HTML_CALL            => 'GWY.jsp?targetAppType=APEX&p=^APEX_APPID:^APEX_PAGE_NR',
    X_WEB_ENCRYPT_PARAMETERS   => 'N',
    X_WEB_SECURED              => 'N',
    X_WEB_ICON                 => null,
    X_OBJECT_NAME              => null,
    X_REGION_APPLICATION_NAME  => null,
    X_REGION_CODE              => null,
    X_USER_FUNCTION_NAME       => 'Update User Email (Without Responsibility)',
    X_DESCRIPTION              => 'Update the current user email without checking the user responsibility.',
    X_OWNER                    => null,
    X_CUSTOM_MODE              => 'FORCE',
    X_LAST_UPDATE_DATE         => to_char(sysdate, 'YYYY/MM/DD'),
    X_MAINTENANCE_MODE_SUPPORT => 'NONE', 
    X_CONTEXT_DEPENDENCE       => 'RESP',
    X_JRAD_REF_PATH            => null 
  ); 

  fnd_form_functions_pkg.load_row(
    X_FUNCTION_NAME            => 'XX_APEX_DEMO_2',
    X_APPLICATION_SHORT_NAME   => null,
    X_FORM_NAME                => null,
    X_PARAMETERS               => null,
    X_TYPE                     => 'JSP',
    X_WEB_HOST_NAME            => null,
    X_WEB_AGENT_NAME           => null,
    X_WEB_HTML_CALL            => 'GWY.jsp?targetAppType=APEX&p=^APEX_APPID:^APEX_PAGE_R:::::EBS_RESP_ID,EBS_APP_ID,EBS_SEC_GROUP:[RESPONSIBILITY_ID],[RESP_APPL_ID],[SECURITY_GROUP_ID]',
    X_WEB_ENCRYPT_PARAMETERS   => 'N',
    X_WEB_SECURED              => 'N',
    X_WEB_ICON                 => null,
    X_OBJECT_NAME              => null,
    X_REGION_APPLICATION_NAME  => null,
    X_REGION_CODE              => null,
    X_USER_FUNCTION_NAME       => 'Update User Email (Using Responsibilities)',
    X_DESCRIPTION              => 'Update the current user email after checking the user responsibility. This option is more secure!',
    X_OWNER                    => null,
    X_CUSTOM_MODE              => 'FORCE',
    X_LAST_UPDATE_DATE         => to_char(sysdate, 'YYYY/MM/DD'),
    X_MAINTENANCE_MODE_SUPPORT => 'NONE', 
    X_CONTEXT_DEPENDENCE       => 'RESP',
    X_JRAD_REF_PATH            => null 
  ); 
end;
/
commit;

prompt .
prompt ... Create Menu and add two menu entries for the functions
prompt .
begin
  -- Create menu
  fnd_menus_pkg.load_row(
    X_MENU_NAME        => 'XX_APEX_MENU',
    X_MENU_TYPE        => 'HOMEPAGE',
    X_USER_MENU_NAME   => 'XX_APEX Demo',
    X_DESCRIPTION      => 'Menu for Oracle APEX Demonstration app.',
    X_OWNER            => null,
    X_CUSTOM_MODE      => 'FORCE',
    X_LAST_UPDATE_DATE => to_char(sysdate, 'YYYY/MM/DD'),
    X_WEB_ICON         => null 
  );
  -- create menu entries
  fnd_menu_entries_pkg.load_row(
    X_MODE             => 'FORCE',
    X_ENT_SEQUENCE     => '1',
    X_MENU_NAME        => 'XX_APEX_MENU',
    X_SUB_MENU_NAME    => null, 
    X_FUNCTION_NAME    => 'XX_APEX_DEMO_1',
    X_GRANT_FLAG       => 'Y',
    X_PROMPT           => 'Update Email',
    X_DESCRIPTION      => 'Update your email without using responsibility.',
    X_OWNER            => null,
    X_CUSTOM_MODE      => 'FORCE',
    X_LAST_UPDATE_DATE => to_char(sysdate, 'YYYY/MM/DD')
  );
  --
  fnd_menu_entries_pkg.load_row(
    X_MODE             => 'FORCE',
    X_ENT_SEQUENCE     => '2',
    X_MENU_NAME        => 'XX_APEX_MENU',
    X_SUB_MENU_NAME    => null,
    X_FUNCTION_NAME    => 'XX_APEX_DEMO_2',
    X_GRANT_FLAG       => 'Y',
    X_PROMPT           => 'Update Email (Using Responsibility)',
    X_DESCRIPTION      => 'Update your email using EBS Responsibility.',
    X_OWNER            => null,
    X_CUSTOM_MODE      => 'FORCE',
    X_LAST_UPDATE_DATE => to_char(sysdate, 'YYYY/MM/DD')
  );
end;
/
commit;

prompt .
prompt ... Submit Concurrent Request to compile menu entries
prompt .
declare
  l_conc_status varchar2(1);
begin
  l_conc_status := fnd_menu_entries_pkg.submit_compile;
end;
/
commit;

prompt .
prompt ... Create Responsibility and User, and then add the responsibility to the user
prompt .
begin
  fnd_responsibility_pkg.load_row(
    X_APP_SHORT_NAME            => 'FND',
    X_RESP_KEY                  => 'XX_APEX_RESP',
    X_RESPONSIBILITY_NAME       => 'XX_APEX_RESP',
    X_OWNER                     => null,
    X_DATA_GROUP_APP_SHORT_NAME => 'FND',
    X_DATA_GROUP_NAME           => 'Standard',
    X_MENU_NAME                 => 'XX_APEX_MENU',
    X_START_DATE                =>  to_char(sysdate, 'YYYY/MM/DD'),
    X_END_DATE                  => null,
    X_DESCRIPTION               => 'Responsibility for APEX Demonstration',
    X_GROUP_APP_SHORT_NAME      => null,
    X_REQUEST_GROUP_NAME        => null,
    X_VERSION                   => 'W',
    X_WEB_HOST_NAME             => null,
    X_WEB_AGENT_NAME            => null,
    X_CUSTOM_MODE               => 'FORCE',
    X_LAST_UPDATE_DATE          => to_char(sysdate, 'YYYY/MM/DD')
  );

  --
  -- Add USER
  --

  fnd_user_pkg.createuser(
    X_USER_NAME                => upper('^EBS_USER'),
    X_OWNER                    => null,
    X_UNENCRYPTED_PASSWORD     => '^EBS_PWD',
    X_START_DATE               => sysdate,
    X_END_DATE                 => null,
    X_PASSWORD_DATE            => sysdate,
    X_PASSWORD_LIFESPAN_DAYS   => 30,
    X_EMPLOYEE_ID              => null,
    X_EMAIL_ADDRESS            => '^EBS_EMAIL'
  );

  --
  -- Add Responsibility to USER
  --

  fnd_user_pkg.addresp(
    USERNAME       => upper('^EBS_USER'),
    RESP_APP       => 'FND',
    RESP_KEY       => 'XX_APEX_RESP',
    SECURITY_GROUP => 'STANDARD',
    DESCRIPTION    => 'Add access to APEX Demo menu options',
    START_DATE     => sysdate,
    END_DATE       => null 
  );
end;
/
commit;

set define on
