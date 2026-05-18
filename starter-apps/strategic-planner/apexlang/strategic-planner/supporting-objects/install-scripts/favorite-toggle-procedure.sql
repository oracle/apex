create or replace procedure sp_favorite_toggle (
   p_project_id  in number,
   p_app_user_id in number)
is  
   is_favorite  boolean := false;
   l_count      int;
begin
    if p_project_id is null then 
        raise_application_error(-20001,'p_project_id is null');
    elsif p_app_user_id is null then
        raise_application_error(-20001,'p_app_user_id is null');
    else
        select count (*) into l_count from sp_projects where id = p_project_id;
        if l_count = 0 then
           raise_application_error(-20001,'p_project_id '||p_project_id||' not found');
        end if;
    end if;

    --
    -- If a row is returned then this project is a favorate of the user identified
    --
    for c1 in (select 1 from SP_FAVORITES where team_member_id = p_app_user_id and project_id = p_project_id) loop
        is_favorite := true;
    end loop;

    --
    -- toggle current setting
    -- if is currently favorite then unfavorite by deleting row
    -- if not currently a favorite then favorate by inserting a row
    --

    if is_favorite then
        delete from SP_FAVORITES where team_member_id = p_app_user_id and project_id = p_project_id;
    else
        insert into SP_FAVORITES (team_member_id, PROJECT_ID) values (p_app_user_id, p_project_id);
    end if;

end sp_favorite_toggle;
/


