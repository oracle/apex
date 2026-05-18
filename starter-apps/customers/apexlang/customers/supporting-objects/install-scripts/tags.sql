create table  eba_cust_tags (
    tag_id                      number not null,
    tag                         varchar2(255) not null enable,
    content_id                  number,
    content_type                varchar2(30),
    --
    created               timestamp with time zone not null,
    created_by            varchar2(255) not null,
    updated               timestamp with time zone,
    updated_by            varchar2(255)
   )
/
alter table eba_cust_tags
   add constraint eba_cust_tags_pk
       primary key (tag_id)
/
alter table eba_cust_tags
   add constraint eba_cust_tags_ck check
       (content_type in ('CUSTOMER','CONTACT','PRODUCT','FILE'))
/

create table eba_cust_tags_type_sum (
    tag                             varchar2(255),
    content_type                    varchar2(30),
    tag_count                       number,
    constraint eba_cust_tags_type_sum_pk primary key (tag,content_type)
    )
/

create table eba_cust_tags_sum (
    tag                             varchar2(255),
    tag_count                       number,
    constraint eba_cust_tags_sum_pk primary key (tag)
    )
/
