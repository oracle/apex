create table eba_cust_views_log (
   id                 number          not null,
   row_version_number NUMBER,
   table_primary_id   number,
   view_type          varchar2(10),
   view_count         NUMBER default 1,
   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_views_log
   add constraint eba_cust_views_log_pk
       primary key (id)
/

create or replace trigger bi_eba_cust_views_log
   before insert on eba_cust_views_log
   for each row
   begin
      if inserting then
         if :NEW.ID is null then
            select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
              into :new.id
              from dual;
         End if;
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



