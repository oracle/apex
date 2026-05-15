create table sp_app_log (
    id                     number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                           constraint sp_app_log_pk primary key,
    --
    activity               varchar2(255 char)  not null,
    details                varchar2(4000 char),
    --
    created                date not null,
    created_trunc          date not null,
    created_by             varchar2(255 char) not null
   )
/
create index sp_app_log_i1
   on sp_app_log (created_trunc);

create or replace trigger sp_app_log_bi
   before insert on sp_app_log
   for each row
begin
   :new.created       := sysdate;
   :new.created_trunc := trunc(sysdate);
   :new.created_by    := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_app_log_bi;
/