create table SP_DEFAULT_PEOPLE_TAGS (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint SP_DEFAULT_PEOPLE_TAGS_pk primary key,
    display_sequence               number             not null,
    tag                            varchar2(30 char)  not null,
    description                    varchar2(512 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index SP_DEFAULT_PEOPLE_TAGS_u1 on SP_DEFAULT_PEOPLE_TAGS (tag);