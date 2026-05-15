create table eba_sales_terms
(
    id          number not null primary key,
    name        varchar2(255),
    month_equiv number,
    created_by  varchar2(255),
    created     timestamp (6) with time zone,
    updated_by  varchar2(255),
    updated     timestamp (6) with time zone
);