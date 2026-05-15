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

begin
    insert into eba_cust_activity_types ( id, name ) values ( 1, 'Presentation' );
    insert into eba_cust_activity_types ( id, name ) values ( 2, 'Phone Call' );
    insert into eba_cust_activity_types ( id, name ) values ( 3, 'Conference' );
    insert into eba_cust_activity_types ( id, name ) values ( 4, 'Meeting' );
end;
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