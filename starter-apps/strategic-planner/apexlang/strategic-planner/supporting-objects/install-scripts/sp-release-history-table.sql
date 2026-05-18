create table sp_release_history (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_history_pk primary key,
    release_id                     number,
    --
    attribute_column               varchar2(255 char) not null, 
    change_type                    varchar2(30 char)  not null
                                   constraint sp_release_history_type_cc 
                                   check (change_type in ('CREATE','UPDATE','DELETE')),
    old_value                      varchar2(4000 char),
    new_value                      varchar2(4000 char),
    old_value_clob                 clob,
    new_value_clob                 clob,
    --
    changed_on                     date  not null,
    changed_by                     varchar2(255 char)
);

create index sp_release_history_i1 on sp_release_history (release_id);
create index sp_release_history_i2 on sp_release_history (changed_by);