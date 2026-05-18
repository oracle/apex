-- Activity Types
create table eba_cust_activity_types (
    id                 number not null,
    row_version_number number not null,
    name               varchar2(255),
    --
    created            timestamp with time zone not null,
    created_by         varchar2(255) not null,
    updated            timestamp with time zone,
    updated_by         varchar2(255),
    --
    constraint eba_cust_activity_types_pk primary key ( id ) using index
)
/
create unique index eba_cust_activity_types_uk on eba_cust_activity_types( name );
/

create or replace trigger biu_eba_cust_activity_types
    before insert or update on eba_cust_activity_types
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
end biu_eba_cust_activity_types;
/
alter trigger biu_eba_cust_activity_types enable;
/

-- Activities
create table eba_cust_activities (
    id                 number not null,
    row_version_number number not null,
    --
    type_id            number not null,
    name               varchar2(255),
    description        varchar2(4000),
    activity_date      date,
    owner              varchar2(255),
    location           varchar2(4000),
    --
    created            timestamp with time zone not null,
    created_by         varchar2(255) not null,
    updated            timestamp with time zone,
    updated_by         varchar2(255),
    --
    constraint eba_cust_activities_pk primary key ( id ) using index,
    constraint eba_cust_activities_fk foreign key ( type_id )
        references eba_cust_activity_types( id )
)
/
create index eba_cust_activities_idx1 on eba_cust_activities( type_id )
/
create or replace trigger biu_eba_cust_activities
    before insert or update on eba_cust_activities
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
end biu_eba_cust_activities;
/
alter trigger biu_eba_cust_activities enable;
/

create or replace trigger au_eba_cust_activities
    after update on eba_cust_activities
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- TYPE_ID (foreign key)
    if nvl(:old.type_id,-999) != nvl(:new.type_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_activity_types t where t.id = :old.type_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_activity_types t where t.id = :new.type_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITIES', null, :new.id, 'TYPE_ID', ov, nv);
    end if;
    -- NAME (default)
    if nvl(:old.name, '0') != nvl(:new.name,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'NAME', substr(:old.name,0,4000), substr(:new.name,0,4000) ); 
    end if;
    -- DESCRIPTION (default)
    if nvl(:old.description, '0') != nvl(:new.description,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'DESCRIPTION', substr(:old.description,0,4000), substr(:new.description,0,4000) ); 
    end if;
    -- ACTIVITY_DATE (date/timestamp)
    if (:old.activity_date is null and :new.activity_date is not null) or 
        (:old.activity_date is not null and :new.activity_date is null) or 
        (:old.activity_date != :new.activity_date) then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'ACTIVITY_DATE', to_char(:old.activity_date, 'DD-MON-YYYY'), to_char(:new.activity_date, 'DD-MON-YYYY') );
    end if;
    -- OWNER (default)
    if nvl(:old.owner, '0') != nvl(:new.owner,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'OWNER', substr(:old.owner,0,4000), substr(:new.owner,0,4000) ); 
    end if;
    -- LOCATION (default)
    if nvl(:old.location, '0') != nvl(:new.location,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITIES', null, :new.id, 'LOCATION', substr(:old.location,0,4000), substr(:new.location,0,4000) ); 
    end if;
    commit;
end au_eba_cust_activities;
/
alter trigger au_eba_cust_activities enable;
/

-- Activity Files
create table eba_cust_activity_files (
    id                 number not null,
    row_version_number number not null,
    --
    activity_id        number not null,
    file_name          varchar2(512),
    file_mimetype      varchar2(512),
    file_charset       varchar2(512),
    file_last_update   date,
    file_blob          blob,
    file_comments      varchar2(4000),
    --
    created            timestamp (6) with time zone not null,
    created_by         varchar2(255) not null,
    updated            timestamp (6) with time zone,
    updated_by         varchar2(255),
    --
    constraint eba_cust_activity_files_pk primary key ( id ) using index,
    constraint eba_cust_activity_files_fk foreign key ( activity_id )
        references eba_cust_activities ( id ) on delete cascade
)
/
create index eba_cust_activity_files_idx1 on eba_cust_activity_files( activity_id )
/
create or replace trigger biu_eba_cust_activity_files
    before insert or update on eba_cust_activity_files
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
end biu_eba_cust_activity_files;
/
alter trigger biu_eba_cust_activity_files enable;
/

-- Activity References
create table eba_cust_activity_ref (
    id            number not null,
    --
    activity_id   number not null,
    customer_id   number not null,
    contact_id    number,
    activity_date date,
    owner         varchar2(255),
    location      varchar2(4000),
    notes         varchar2(4000),
    --
    row_version_number number default 1 not null,
    created            timestamp (6) with time zone not null,
    created_by         varchar2(255) not null,
    updated            timestamp (6) with time zone,
    updated_by         varchar2(255),
    --
    constraint eba_cust_activity_ref_pk primary key ( id ) using index,
    constraint eba_cust_activity_ref_fk1 foreign key ( activity_id )
        references eba_cust_activities ( id ) on delete cascade,
    constraint eba_cust_activity_ref_fk2 foreign key ( customer_id )
        references eba_cust_customers ( id ) on delete cascade,
    constraint eba_cust_activity_ref_fk3 foreign key ( contact_id )
        references eba_cust_contacts ( id ) on delete set null
)
/
create index eba_cust_activity_ref_idx1 on eba_cust_activity_ref ( activity_id )
/
create index eba_cust_activity_ref_idx2 on eba_cust_activity_ref ( customer_id )
/
create index eba_cust_activity_ref_idx3 on eba_cust_activity_ref ( contact_id )
/
create or replace trigger biu_eba_cust_activity_ref
    before insert or update on eba_cust_activity_ref
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
end biu_eba_cust_activity_ref;
/
alter trigger biu_eba_cust_activity_ref enable;
/

create or replace trigger au_eba_cust_activity_ref
    after update on eba_cust_activity_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- ACTIVITY_ID (foreign key)
    if nvl(:old.activity_id,-999) != nvl(:new.activity_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_activities t where t.id = :old.activity_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_activities t where t.id = :new.activity_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'ACTIVITY_ID', ov, nv);
    end if;
    -- CUSTOMER_ID (foreign key)
    if nvl(:old.customer_id,-999) != nvl(:new.customer_id,-999) then
        ov := null; nv := null;
        for c1 in (select row_key val from eba_cust_customers t where t.id = :old.customer_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select row_key val from eba_cust_customers t where t.id = :new.customer_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'CUSTOMER_ID', ov, nv);
    end if;
    -- CONTACT_ID (foreign key)
    if nvl(:old.contact_id,-999) != nvl(:new.contact_id,-999) then
        ov := null; nv := null;
        for c1 in (select name val from eba_cust_contacts t where t.id = :old.contact_id) loop
            ov := c1.val;
        end loop;
        for c1 in (select name val from eba_cust_contacts t where t.id = :new.contact_id) loop
            nv := c1.val;
        end loop;
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
            ('ACTIVITY_REF', null, :new.id, 'CONTACT_ID', ov, nv);
    end if;
    -- ACTIVITY_DATE (date/timestamp)
    if (:old.activity_date is null and :new.activity_date is not null) or 
        (:old.activity_date is not null and :new.activity_date is null) or 
        (:old.activity_date != :new.activity_date) then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'ACTIVITY_DATE', to_char(:old.activity_date, 'DD-MON-YYYY'), to_char(:new.activity_date, 'DD-MON-YYYY') );
    end if;
    -- OWNER (default)
    if nvl(:old.owner, '0') != nvl(:new.owner,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'OWNER', substr(:old.owner,0,4000), substr(:new.owner,0,4000) ); 
    end if;
    -- LOCATION (default)
    if nvl(:old.location, '0') != nvl(:new.location,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'LOCATION', substr(:old.location,0,4000), substr(:new.location,0,4000) ); 
    end if;
    -- NOTES (default)
    if nvl(:old.notes, '0') != nvl(:new.notes,'0') then 
        insert into eba_cust_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('ACTIVITY_REF', null, :new.id, 'NOTES', substr(:old.notes,0,4000), substr(:new.notes,0,4000) ); 
    end if;
    commit;
end au_eba_cust_activity_ref;
/
alter trigger au_eba_cust_activity_ref enable
/