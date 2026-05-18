create table SP_GROUPS (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint SP_GROUPS_pk primary key,
    --
    group_name                     varchar2(100  char) not null,
    group_name_upper               varchar2(100  char) not null,
    description                    varchar2(4000 char),
    group_tag                      varchar2(100 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index SP_GROUPS_i1 on SP_GROUPS (group_name_upper);