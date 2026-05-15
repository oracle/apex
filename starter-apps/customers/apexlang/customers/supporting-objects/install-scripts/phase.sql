create table eba_cust_ref_phase (
   id                      number       not null,
   status                  varchar2(60) not null,
   description             varchar2(4000),
   is_an_active_reference  varchar2(1) not null,
   display_sequence        number,
   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_ref_phase add 
constraint eba_cust_ref_phase_pk primary key (id)
/

create unique index eba_cust_ref_phase_uk on eba_cust_ref_phase(status)
/

alter table eba_cust_ref_phase
   add constraint eba_cust_ref_phase_uk
       unique (status)
       using index eba_cust_ref_phase_uk
/


create or replace trigger biu_eba_cust_ref_phase
   before insert or update on eba_cust_ref_phase
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
   end if;
   if updating then
      :NEW.UPDATED := current_timestamp;
      :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
   end if;
end;
/
show errors

insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (1, 'Phase 1','Candidates and Discovery','N',1);
insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (2, 'Phase 2','Active Discussions','N',2);
insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (3, 'Phase 3','Engaged With Customer','N',3);
insert into eba_cust_ref_phase (id, status, description, is_an_active_reference, display_sequence) values (4, 'Phase 4','Reference Available and Published','Y',4);
commit;