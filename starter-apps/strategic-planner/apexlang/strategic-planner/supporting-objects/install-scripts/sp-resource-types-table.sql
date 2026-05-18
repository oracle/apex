create table sp_resource_types (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_resource_types_id_pk primary key,
    resource_type                  varchar2(50 char) not null,
    upper_resource_type            varchar2(50 char) not null,
    resource_description           varchar2(4000 char),
    is_default_yn                  varchar2(1 char)
                                   constraint sp_res_t_is_default_ck 
                                   check (is_default_yn in ('Y','N')),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index sp_resource_types_u1 on sp_resource_types (resource_type);
create unique index sp_resource_types_u2 on sp_resource_types (upper_resource_type);