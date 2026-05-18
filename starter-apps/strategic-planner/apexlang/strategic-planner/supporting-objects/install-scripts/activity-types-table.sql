create table sp_activity_types (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_activity_types_pk primary key,
    --
    display_sequence               number not null,
    activity_type                  varchar2(50 char) not null,
    activity_type_description      varchar2(4000 char),
    is_project_yn                  varchar2(1 char),
    static_id                      varchar2(30 char),
    is_default_yn                  varchar2(1 char),
    is_active_yn                   varchar2(1 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;