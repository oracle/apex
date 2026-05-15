create table oow_demo_event_log (
    id            number
                  constraint oow_demo_event_log_pk
                  primary key,
    log_seq       number not null,
    event_type    varchar2(255) not null
                  constraint oow_demo_event_event_type_ck
                  check (event_type in (
                  'MESSAGE',
                  'WARNING',
                  'ERROR')),
    event_name    varchar2(255),
    event_detail  varchar2(4000),
    error_message varchar2(4000),
    error_trace   clob,
    created_by    varchar2(255),
    created_on    timestamp with local time zone,
    a1            varchar2(4000),
    a2            varchar2(4000)
);

create or replace trigger biu_oow_demo_event_log
before insert or update on oow_demo_event_log
for each row
begin
   if :new.id is null then
       select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
  end if;
  if :new.event_type is null then
     if :new.error_message is not null then
        :new.event_type := 'ERROR';
     else
        :new.event_type := 'MESSAGE';
     end if;
  end if;
  if inserting then 
      :new.log_seq := oow_demo_seq.nextval;
      :new.created_on := localtimestamp;
      :new.created_by := nvl(v('APP_USER'),user);
  end if;
end;
/
show errors

   
