create table eba_qpoll_application_log 
(
   id             number not null enable, 
   activity       varchar2(255) not null enable, 
   details        varchar2(4000), 
   created        timestamp (6) with time zone not null enable, 
   created_trunc  date not null enable, 
   created_by    varchar2(255) not null enable, 
   constraint eba_qpoll_app_log_pk primary key (id)
   using index  enable
);

create index eba_qpoll_app_log_i1 on eba_qpoll_application_log (created_trunc);

create or replace trigger eba_qpoll_app_log_bi 
   before insert on eba_qpoll_application_log
   for each row
begin
   if :new.id is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created       := current_timestamp;
   :new.created_trunc := trunc(current_timestamp);
   :new.created_by    := lower(nvl(wwv_flow.g_user,user));
end;
/

alter trigger eba_qpoll_app_log_bi enable;