create table sp_ai_prompts (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint sp_ai_prompts_pk primary key,
    --
    static_id                      varchar2(255)  not null
                                      constraint sp_ai_prompts_uk unique,
    description                    varchar2(4000) not null,
    prompt                         clob,
    --
    created                        date            not null,
    created_by                     varchar2(255)   not null,
    updated                        date            not null,
    updated_by                     varchar2(255)   not null
);

create or replace trigger sp_ai_prompts_biu
    before insert or update 
    on sp_ai_prompts
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated    := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    :new.static_id  := upper(:new.static_id);
end sp_ai_prompts_biu;
/