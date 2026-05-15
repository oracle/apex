create table eba_cust_competitors (
    id                  number       not null,
    row_version_number  number,
    name                varchar2(250) not null,
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