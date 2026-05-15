create table eba_qpoll_email_opt_out
(
    id            number not null,
    respondent_id number not null enable,
    created       timestamp (6) with time zone,
    created_by    varchar2(255),
    constraint eba_qpoll_email_opt_out_pk primary key (id) enable,
    constraint eba_qpoll_email_opt_out_fk foreign key (respondent_id) references eba_qpoll_respondents (id) on delete cascade enable
);
/
create index eba_qpoll_email_opt_out_i1 on eba_qpoll_email_opt_out( respondent_id );

create or replace trigger eba_qpoll_email_opt_out_biu
   before insert on eba_qpoll_email_opt_out
   for each row
begin
    if :new.id is null then
       :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end;
/

alter trigger eba_qpoll_email_opt_out_biu enable;
