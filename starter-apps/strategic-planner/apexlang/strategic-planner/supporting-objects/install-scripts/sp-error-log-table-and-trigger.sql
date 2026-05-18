create table sp_error_log (
   id                     number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                              constraint sp_error_log_pk primary key,
   --
   package_name           varchar2(255 char),
   procedure_name         varchar2(500 char),
   error                  varchar2(4000 char)  not null,
   --
   arg1_name              varchar2(255 char),
   arg1_val               varchar2(4000 char),
   arg2_name              varchar2(255 char),
   arg2_val               varchar2(4000 char),
   arg3_name              varchar2(255 char),
   arg3_val               varchar2(4000 char),
   arg4_name              varchar2(255 char),
   arg4_val               varchar2(4000 char),
   arg5_name              varchar2(255 char),
   arg5_val               varchar2(4000 char),
   --
   created                date,
   created_trunc          date,
   created_by             varchar2(255 char)
);
create index sp_error_log_i1 on sp_error_log (created_trunc);

create or replace trigger sp_error_log_bi
    before insert
    on sp_error_log
    for each row
begin
    :new.created       := sysdate;
    :new.created_trunc := trunc(sysdate);
    :new.created_by    := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
end sp_error_log_bi;
/