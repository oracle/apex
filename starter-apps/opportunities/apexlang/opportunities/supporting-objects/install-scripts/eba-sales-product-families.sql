create table eba_sales_product_families( /* NAS, NAA, GBU */
    id              number,
    product_family  varchar2(100),
    description     varchar2(4000),
    lob_id          NUMBER references eba_sales_product_lobs,
    created         timestamp(6) with time zone,
    created_by      varchar2(255),
    updated         timestamp(6) with time zone,
    updated_by      varchar2(255),
    constraint eba_sales_product_families_pk primary key ( id )
)
/