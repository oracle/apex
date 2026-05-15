create table sp_release_milestones (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_milestone_pk primary key,
    --
    release_id                     number not null
                                   constraint sp_rel_milestone_to_release_fk 
                                   references SP_RELEASE_TRAINS (id)
                                   on delete cascade,
    milestone_name                 varchar2(255 char) not null,
    upper_milestone_name           varchar2(255 char) not null,
    milestone_type_id              number 
                                   constraint sp_rel_milestones_type_fk 
                                   references sp_release_milestone_types (id),
    milestone_start_date           date,
    milestone_date                 date not null,
    original_milestone_date        date,
    milestone_completed_yn         varchar2(1 char) default on null 'N',
    milestone_description          varchar2(4000 char),
    tags                           varchar2(4000),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create unique index sp_release_milestones_i1 on sp_release_milestones (upper_milestone_name, release_id, milestone_type_id);