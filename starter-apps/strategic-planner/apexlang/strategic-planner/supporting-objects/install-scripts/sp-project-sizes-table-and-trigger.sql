create table sp_project_sizes (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_project_size_id_pk primary key,
    --
    project_size                   varchar2(30 char) not null,
    size_description               varchar2(100 char) not null,
    effort_days                    number not null,
    include_yn                     varchar2(1 char) not null,
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create unique index sp_project_sizes_u1 on sp_project_sizes (project_size);
create unique index sp_project_sizes_u2 on sp_project_sizes(EFFORT_DAYS);

create or replace trigger sp_project_sizes_biu
    before insert or update
    on sp_project_sizes
    for each row
begin
    if inserting then
        :new.created    := nvl(:new.created,sysdate);
        :new.created_by := nvl(:new.created_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
        :new.updated    := nvl(:new.updated,sysdate);
        :new.updated_by := nvl(:new.updated_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
    elsif updating then
        :new.updated    := sysdate;
        :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    --
    if :new.include_yn is null then
       :new.include_yn := 'Y';
    end if;
end sp_project_sizes_biu;
/