create table eba_cust_product_statuses (
    id          number         not NULL,
    status      varchar2(255),
    description varchar2(512),
    is_current_yn varchar2(1),
    --
    created     timestamp with time zone not null,
    created_by  varchar2(255) not null,
    updated     timestamp with time zone,
    updated_by  varchar2(255)
   )
/
alter table eba_cust_product_statuses
   add constraint eba_cust_product_statuses_pk
       primary key (id)
/

create or replace trigger  eba_cust_product_statuses_biu
   before insert or update on eba_cust_product_statuses
   for each row
begin
    if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
    end if;

    if inserting then
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


insert into eba_cust_product_statuses (status, description, is_current_yn) values ('Phase 1', 'Candidates and Discovery', 'N');
insert into eba_cust_product_statuses (status, description, is_current_yn) values ('Phase 2', 'Active Discussions', 'N');
insert into eba_cust_product_statuses (status, description, is_current_yn) values ('Phase 3', 'Engaged With Customer', 'N');
insert into eba_cust_product_statuses (status, description, is_current_yn) values ('Phase 4', 'Reference Available and Published', 'Y');
commit;