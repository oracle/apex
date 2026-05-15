create table eba_cust_error_lookup (
    constraint_name         varchar2(30)        not null
                                                constraint eba_cust_error_lookup_pk
                                                primary key,
    message                 varchar2(4000)      not null,
    language_code           varchar2(30)        not null
)
/
create unique index eba_cust_error_lookup_uk on eba_cust_error_lookup (constraint_name,language_code);


