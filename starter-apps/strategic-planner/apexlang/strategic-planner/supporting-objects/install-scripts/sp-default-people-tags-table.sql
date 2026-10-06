create table sp_default_people_tags (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_default_people_tags_pk primary key,
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

create unique index sp_default_people_tags_u1 on sp_default_people_tags (tag);