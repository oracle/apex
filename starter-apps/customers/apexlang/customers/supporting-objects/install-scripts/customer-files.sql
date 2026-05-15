create table eba_cust_files (
    id                      number         not null,
    row_version_number      number         not null,
    customer_id             number         not null,
    --
    file_name               varchar2(512),
    file_mimetype           varchar2(512),
    file_charset            varchar2(512),
    file_lastupd            date,
    file_blob               blob,
    file_comments           varchar2(4000),
    tags                    varchar2(4000),
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255)
   )
/
alter table eba_cust_files
   add constraint eba_cust_files_pk
       primary key (id)
/
alter table eba_cust_files
   add constraint eba_cust_files_fk
       foreign key (customer_id)
       references eba_cust_customers (id) on delete cascade
/

create index eba_cust_files_01 on eba_cust_files (customer_id);


