begin
    sp_util.add_setting (  
        p_static_id     => 'APP_ID',   
        p_description   => 'Application ID of the application.  Used by summary jobs.', 
        p_setting_value => null, 
        p_is_numeric_yn => 'Y', 
        p_is_yn         => 'N' );
    sp_util.add_setting (  
        p_static_id     => 'APP_PREFIX_URL',   
        p_description   => 'Prefix URL of the application.  Used for link creation in summary jobs.', 
        p_setting_value => null, 
        p_is_numeric_yn => 'N', 
        p_is_yn         => 'N' );
    sp_util.add_setting (  
        p_static_id     => 'APP_HOME_URL',   
        p_description   => 'Full URL to the home page of the application.  Used for home link in summary emails.', 
        p_setting_value => null, 
        p_is_numeric_yn => 'N', 
        p_is_yn         => 'N' );
    sp_util.add_setting (  
        p_static_id     => 'GET_COMMENT_IMAGE_PREFIX',   
        p_description   => 'Path to displacy images within comments, set by process, do not edit', 
        p_setting_value => null, 
        p_is_numeric_yn => 'N', 
        p_is_yn         => 'N');
    sp_util.add_setting (  
        p_static_id     => 'AI_SERVICE',   
        p_description   => 'Name of AI Service used (for generating summaries). Must be configured under Generative AI Services of the application.', 
        p_setting_value => null, 
        p_is_numeric_yn => 'N', 
        p_is_yn         => 'N' );

    -- most recent install of Strategic Planner
    --
    for a in (
        select application_id
          from apex_applications
         where application_name = 'Strategic Planner'
         order by last_updated_on desc
    ) loop
        sp_util.set_setting (p_static_id     => 'APP_ID',   
                             p_setting_value => a.application_id); 
    end loop;

    sp_util.set_setting (p_static_id     => 'APP_PREFIX_URL',   
                         p_setting_value => APEX_UTIL.HOST_URL); 
end;
/