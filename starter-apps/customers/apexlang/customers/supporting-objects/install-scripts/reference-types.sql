create table eba_cust_reference_types (
    id                    number       not null,
    row_version_number    number,
    reference_type        varchar2(60) not null,
    is_active             varchar2(1)  default 'Y',
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255),
    --
    constraint eba_cust_reference_types_pk primary key (id)
)
/
create unique index eba_cust_reference_types_uk on eba_cust_reference_types(reference_type)
/
alter table eba_cust_reference_types
    add constraint eba_cust_reference_types_uk
        unique (reference_type)
        using index eba_cust_reference_types_uk
/

create table eba_cust_customer_reftype_ref (
    id                 number not null,
    customer_id        number not null,
    reference_type_id  number not null,
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255),
    --
    constraint eba_cust_customer_reftype_pk primary key (id),
    constraint eba_cust_customer_reftype_fk1
        foreign key ( customer_id ) references eba_cust_customers(id) on delete cascade,
    constraint eba_cust_customer_reftype_fk2
        foreign key ( reference_type_id ) references eba_cust_reference_types(id) on delete cascade
)
/
create unique index eba_cust_customer_reftype_uk on eba_cust_customer_reftype_ref(customer_id,reference_type_id)
/
alter table eba_cust_customer_reftype_ref
   add constraint eba_cust_customer_reftype_uk
       unique (customer_id,reference_type_id)
       using index eba_cust_customer_reftype_uk
/

-- Triggers
create or replace trigger biu_eba_cust_reference_types
    before insert or update on eba_cust_reference_types
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end;
/

create or replace trigger biu_eba_cust_cust_reftype_ref
    before insert or update on eba_cust_customer_reftype_ref
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
    end if;
    
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end;
/

begin
    -- Load in the default reference types.
    insert into eba_cust_reference_types (id, reference_type, is_active) values (1, 'Analyst Interview', 'Y');
    insert into eba_cust_reference_types (id, reference_type, is_active) values (2, 'Available for Calls', 'Y');
    insert into eba_cust_reference_types (id, reference_type, is_active) values (3, 'Logo', 'Y');
    insert into eba_cust_reference_types (id, reference_type, is_active) values (4, 'Success Story', 'Y');
    insert into eba_cust_reference_types (id, reference_type, is_active) values (5, 'Quote', 'Y');
    commit;
end;
/