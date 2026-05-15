create table eba_cust_product_statuses (
    id            number         not NULL,
    status        varchar2(255),
    description   varchar2(512),
    is_current_yn varchar2(1),
    --
    created     timestamp with time zone not null,
    created_by  varchar2(255) not null,
    updated     timestamp with time zone,
    updated_by  varchar2(255)
   )
/
alter table eba_cust_product_statuses
   add constraint eba_cust_product_statuses_pk
       primary key (id)
/

