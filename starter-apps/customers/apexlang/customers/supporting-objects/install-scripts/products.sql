create table eba_cust_products (
    id                      number       not NULL,
    row_version_number      number,
    product_family_id       number,
    product_name            varchar2(255) not null,
    description             varchar2(4000) ,
    tags                    varchar2(4000),
    is_active               varchar2(1) default 'Y',
    price_list_part_number  varchar2(255),
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255),
    constraint eba_cust_products_pk primary key (id),
    constraint eba_cust_prod_fam_fk foreign key (product_family_id) references eba_cust_product_families(id) on delete cascade
)
/
create unique index eba_cust_products_uk on eba_cust_products(product_name)
/
alter table eba_cust_products
    add constraint eba_cust_products_uk
       unique (product_name)
       using index eba_cust_products_uk
/