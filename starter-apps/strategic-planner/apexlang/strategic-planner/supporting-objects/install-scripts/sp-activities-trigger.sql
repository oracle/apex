create or replace trigger sp_activities_biu
    before insert or update
    on sp_activities
    for each row
declare
    l_tags varchar2(4000) := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    -- validations
    --
    if :new.end_date < :new.start_date then
        raise_application_error(-20111,'End date must be greater than start date');
    end if;
    --
    -- adjust tags
    --
    if :new.tags is not null then
        l_tags := trim(upper(:new.tags));
        -- remove multiple spaces
        if instr(l_tags,'  ') > 0 then
            for j in 1..10 loop 
                l_tags := replace(l_tags,'  ',' '); 
                if instr(l_tags,'  ') = 0 then
                   exit;
                end if;
            end loop; 
        end if;
        for i in 1..length(l_tags) loop
            if i > 2 and substr(l_tags,i,1) = ' ' and substr(l_tags,i-1,1) != ',' then
               l_tags := substr(l_tags,1,i-1)||'-'||substr(l_tags,i+1);
            end if;
        end loop;
        :new.tags := l_tags;
    end if;
    --
    -- touch parent
    --
    update sp_projects set updated = sysdate, updated_by = :new.updated_by where id = :new.project_id;
end sp_activities_biu;
/