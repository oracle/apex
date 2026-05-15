create table eba_qpoll_resp_comm_ref (
    id            number primary key,
    respondent_id number not null,
    community_id  number not null,
    created       timestamp with time zone,
    created_by    varchar2(255),
    constraint eba_qpoll_rep_comm_ref_fk1
        foreign key ( respondent_id )
        references eba_qpoll_respondents( id )
        on delete cascade,
    constraint eba_qpoll_rep_comm_ref_fk2
        foreign key ( community_id )
        references eba_qpoll_RESP_COMMUNITIES( id )
        on delete cascade
)
/

create unique index eba_qpoll_resp_comm_ref_UK on eba_qpoll_resp_comm_ref ( respondent_id,community_id )
/
create index eba_qpoll_resp_comm_ref_I1 on eba_qpoll_resp_comm_ref( community_id )
/

create or replace trigger eba_qpoll_resp_comm_ref_bi
   before insert on eba_qpoll_resp_comm_ref
   for each row
begin
   if :NEW.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end;
/

ALTER TRIGGER eba_qpoll_resp_comm_ref_bi ENABLE;