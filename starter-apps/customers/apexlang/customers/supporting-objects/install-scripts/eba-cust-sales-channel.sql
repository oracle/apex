create table eba_cust_sales_channel (
   id                      number       not null,
   channel                 varchar2(60) not null,
   description             varchar2(4000),
   --
   created               timestamp with time zone not null,
   created_by            varchar2(255) not null,
   updated               timestamp with time zone,
   updated_by            varchar2(255)
  )
/
alter table eba_cust_sales_channel add 
constraint eba_cust_sales_channel_pk primary key (id)
/

create unique index eba_cust_sales_channel_uk on eba_cust_sales_channel(channel)
/

alter table eba_cust_sales_channel
   add constraint eba_cust_sales_channel_uk
       unique (channel)
       using index eba_cust_sales_channel_uk
/


create or replace trigger biu_eba_cust_sales_channel
   before insert or update on eba_cust_sales_channel
   for each row
begin
   if inserting then
      if :NEW.ID is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      end if;
      :NEW.CREATED := current_timestamp;
      :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
   end if;
   :NEW.UPDATED := current_timestamp;
   :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
end;
/
show errors

insert into eba_cust_sales_channel (id, channel) values (1, 'Direct');
insert into eba_cust_sales_channel (id, channel) values (2, 'Field');
insert into eba_cust_sales_channel (id, channel) values (3, 'Store');
insert into eba_cust_sales_channel (id, channel) values (4, 'Partner');
commit;