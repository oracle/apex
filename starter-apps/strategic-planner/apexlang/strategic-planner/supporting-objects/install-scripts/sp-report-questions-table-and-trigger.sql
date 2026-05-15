create table sp_report_questions (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint sp_report_questions_pk primary key,
    --
    page_id                        number  not null, -- fk to apex_application_pages.page_id
    question                       varchar2(4000)  not null,
    --
    created                        date            not null,
    created_by                     varchar2(255)   not null,
    updated                        date            not null,
    updated_by                     varchar2(255)   not null
);

create or replace trigger sp_report_questions_biu
    before insert or update 
    on sp_report_questions
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated    := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end sp_report_questions_biu;
/