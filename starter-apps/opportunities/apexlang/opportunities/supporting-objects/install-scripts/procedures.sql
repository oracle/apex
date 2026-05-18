CREATE OR REPLACE PROCEDURE "EBA_SALES_TZ_INIT" 
as
  c integer := 0;
  l_app_user varchar2(255);
begin
l_app_user := nvl(v('APP_USER'),user);
for c1 in (
   select TIMEZONE_PREFERENCE
   from   eba_sales_tz_pref
   where  USERID = l_app_user) loop
   --
   if c1.TIMEZONE_PREFERENCE is not null then
       c := c + 1;
       APEX_UTIL.SET_SESSION_TIME_ZONE (P_TIME_ZONE => c1.TIMEZONE_PREFERENCE ); 
   end if;
   exit;
end loop;
if c = 0 then
    if apex_util.get_session_time_zone is null then
        APEX_UTIL.SET_SESSION_TIME_ZONE (P_TIME_ZONE => 'US/Pacific'); 
    end if;
end if;
end;
/

