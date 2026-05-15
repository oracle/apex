create table eba_cust_impl_partners (
    id                  number       not null,
    row_version_number  number,
    name                varchar2(60) not null,
    description         varchar2(4000) ,
    website             varchar2(512),
    --
    created             timestamp with time zone not null,
    created_by          varchar2(255) not null,
    updated             timestamp with time zone,
    updated_by          varchar2(255),
    --
    constraint eba_cust_impl_partners_pk primary key (id)
)
/
create unique index eba_cust_impl_partners_uk on eba_cust_impl_partners(name)
/

create or replace trigger biu_eba_cust_impl_partners
    before insert or update on eba_cust_impl_partners
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_impl_partners;
/
alter trigger biu_eba_cust_impl_partners enable;
/

create table eba_cust_cust_partner_ref (
    id          number not null,
    customer_id number not null,
    partner_id  number not null,
    --
    created     timestamp with time zone not null,
    created_by  varchar2(255) not null,
    updated     timestamp with time zone,
    updated_by  varchar2(255),
    --
    constraint eba_cust_cust_part_pk  primary key (id),
    constraint eba_cust_cust_part_fk  foreign key (customer_id) references eba_cust_customers(id) on delete cascade,
    constraint eba_cust_cust_part_fk2 foreign key (partner_id) references eba_cust_impl_partners(id) on delete cascade
)
/
create unique index eba_cust_cust_partner_ref_u1 on eba_cust_cust_partner_ref( customer_id, partner_id )
/

create or replace trigger biu_eba_cust_cust_partner_ref
    before insert or update on eba_cust_cust_partner_ref
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
end biu_eba_cust_cust_partner_ref;
/
alter trigger biu_eba_cust_cust_partner_ref enable;
/

create or replace trigger au_eba_cust_cust_partner_ref
    after insert or update or delete on eba_cust_cust_partner_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select name val from eba_cust_impl_partners t where t.id = :old.partner_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select name val from eba_cust_impl_partners t where t.id = :new.partner_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'PARTNER_ID', ov, nv);
    commit;
end au_eba_cust_cust_partner_ref;
/
alter trigger au_eba_cust_cust_partner_ref enable
/

-- Competitors
create table eba_cust_competitors (
    id                  number       not null,
    row_version_number  number,
    name                varchar2(60) not null,
    description         varchar2(4000) ,
    website             varchar2(512),
    --
    created             timestamp with time zone not null,
    created_by          varchar2(255) not null,
    updated             timestamp with time zone,
    updated_by          varchar2(255),
    --
    constraint eba_cust_competitors_pk primary key (id)
)
/
create unique index eba_cust_competitors_uk on eba_cust_competitors(name)
/

create or replace trigger biu_eba_cust_competitors
    before insert or update on eba_cust_competitors
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;
        :new.created := current_timestamp;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,0) + 1;
    end if;
    :new.updated := current_timestamp;
    :new.updated_by := nvl(v('APP_USER'),user);
end biu_eba_cust_competitors;
/
alter trigger biu_eba_cust_competitors enable;
/

create table eba_cust_cust_competitor_ref (
    id            number not null,
    customer_id   number not null,
    competitor_id number not null,
    --
    created     timestamp with time zone not null,
    created_by  varchar2(255) not null,
    updated     timestamp with time zone,
    updated_by  varchar2(255),
    --
    constraint eba_cust_cust_competitor_pk  primary key (id),
    constraint eba_cust_cust_competitor_fk  foreign key (customer_id) references eba_cust_customers(id) on delete cascade,
    constraint eba_cust_cust_competitor_fk2 foreign key (competitor_id) references eba_cust_competitors(id) on delete cascade
)
/
create unique index eba_cust_cust_compe_ref_u1 on eba_cust_cust_competitor_ref( customer_id, competitor_id )
/

create or replace trigger biu_eba_cust_cust_comp_ref
    before insert or update on eba_cust_cust_competitor_ref
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
end biu_eba_cust_cust_comp_ref;
/
alter trigger biu_eba_cust_cust_comp_ref enable;
/

create or replace trigger au_eba_cust_cust_competitor_re
    after insert or update or delete on eba_cust_cust_competitor_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null; nv := null;
    for c1 in (select name val from eba_cust_competitors t where t.id = :old.competitor_id) loop
        ov := c1.val;
    end loop;
    for c1 in (select name val from eba_cust_competitors t where t.id = :new.competitor_id) loop
        nv := c1.val;
    end loop;
    insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
        ('CUSTOMERS', null, nvl(:new.customer_id,:old.customer_id), 'COMPETITOR_ID', ov, nv);
    commit;
end au_eba_cust_cust_competitor_re;
/
alter trigger au_eba_cust_cust_competitor_re enable
/