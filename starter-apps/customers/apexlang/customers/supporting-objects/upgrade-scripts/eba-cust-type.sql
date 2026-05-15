create table eba_cust_type (
   id                      number       not null,
   row_version_number      number,
   type                  varchar2(60) not null,
   description             varchar2(4000) ,
   is_active               varchar2(1)  default 'Y',

   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_type
   add constraint eba_cust_type_pk
       primary key (id)
/
create unique index eba_cust_type_uk on eba_cust_type(type)
/
alter table eba_cust_type
   add constraint eba_cust_type_uk
       unique (type)
       using index eba_cust_type_uk
/


create or replace trigger biu_eba_cust_type
   before insert or update on eba_cust_type
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
         :new.row_version_number := 1;
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
         :new.row_version_number := nvl(:new.row_version_number,0) + 1;
      end if;
   end;
/
show errors

insert into eba_cust_type (id, type, Description ) values (1,'Production / Closed', 'Production / Closed');
insert into eba_cust_type (id, type, Description ) values (2,'Evaluation / Testing', 'Evaluation / Testing');
insert into eba_cust_type (id, type, Description ) values (3,'Proof of Concept (PoC)', 'Proof of Concept (PoC)');
insert into eba_cust_type (id, type, Description ) values (4,'Planning / Prospecting', 'Planning / Prospecting');
commit;