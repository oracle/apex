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
        p_static_id     => 'SUMMARY_AI_SERVICE',   
        p_description   => 'Name of AI Service used for generating summaries. Must be configured under Generative AI Services of the application.', 
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

begin
    sp_util.add_ai_prompt (  
        p_static_id     => 'FULL_PROJECT_SUMMARY',   
        p_description   => 'Used for generating a full project summary.', 
        p_prompt        => 'You are given details for a software development project, in markdown format, including the most recent comments from the last 90 days. Please return the following:

Concise Summary: Extract key points to create a brief but accurate summary of the overall progress, tasks completed, any issues or blockers, and any milestones achieved or reviews completed.  Also include any concerns, such as having no Contributors or Milestones defined or dates being past due.  This can be 1 or 2 paragraphs depending on the size of the input.

Risk Assessment: Analyze for signs of potential project risks (e.g., delays, unaddressed issues, lack of progress, etc.). Based on this analysis, assign a risk level to the project as follows:

None: No risk, assign to all projects with percent complete of 100% (and only those).

Low: No immediate concerns; project is progressing smoothly with no major issues.

Moderate: Some concerns or blockers are present but can be addressed; risk to the timeline or scope is possible.

High: Major issues or blockers that significantly affect the progress; there is a real danger to the timeline, scope, or quality.

Additionally, list any project highlight achievements, percent complete or status changes, completed reviews, approvals received, or anything significant about the project in the highlights section of the JSON.  Always include them in a JSON array.  If there are no highlights, simply add a single element called "No Highlights".

Return using a JSON document with the following structure:

{
  "summary": "Concise summary of the project progress and key highlights.",
  "highlights" : "List project highlights",
  "risk": "None | Low | Moderate | High"
}

Make sure to accurately assess the project risk and provide a clear, easy-to-understand summary.  Do not include any prefix or suffix characters - only a JSON document.' );
end;
/


begin
    sp_util.add_ai_prompt (  
        p_static_id     => 'UPDATE_PROJECT_SUMMARY',   
        p_description   => 'Used for generating an updated project summary.', 
        p_prompt        => 'You are given details for a software development project, in markdown format, and the last summary generated along with any data that has changed since the last summary. Please return the following:

Concise Summary: Extract key points to create a brief but accurate summary of the overall progress since the last summary, tasks completed, any issues or blockers, and any milestones achieved or reviews completed.  Also include any concerns, such as having no Contributors or Milestones defined or dates being past due.  This can be 1 or 2 paragraphs depending on the size of the input.

Risk Assessment: Analyze for signs of potential project risks (e.g., delays, unaddressed issues, lack of progress, etc.). Based on this analysis, assign a risk level to the project as follows:

None: No risk, assign to all projects with percent complete of 100% (and only those).

Low: No immediate concerns; project is progressing smoothly with no major issues.

Moderate: Some concerns or blockers are present but can be addressed; risk to the timeline or scope is possible.

High: Major issues or blockers that significantly affect the progress; there is a real danger to the timeline, scope, or quality.

Additionally, list any project highlight achievements, percent complete or status changes, completed reviews, approvals received, or anything significant about the project in the highlights section of the JSON.  Always include them in a JSON array.  If there are no highlights, simply add a single element called "No Highlights".

Return using a JSON document with the following structure:

{
  "summary": "Concise summary of the project progress and key highlights.",
  "highlights" : "List project highlights",
  "risk": "None | Low | Moderate | High"
}

Make sure to accurately assess the project risk and provide a clear, easy-to-understand summary.  Do not include any prefix or suffix characters - only a JSON document.' );
end;
/


begin
    sp_util.add_ai_prompt (  
        p_static_id     => 'RELEASE_SUMMARY',   
        p_description   => 'Used for generating a release summary.', 
        p_prompt        => 'You are given details for a software development product release, in markdown format.  This includes basic release details along with all the features included in the release, grouped by focus area. Please return a JSON document with the following structure:

{
  "summary": "Concise summary of the release",
  "highlights": "List release highlights"
}

Make sure to provide a clear, easy-to-understand summary.  Do not include any prefix or suffix characters - only a JSON document.

Summary: Extract key points to create a brief but accurate summary of the release.  This can be 1 or 2 paragraphs depending on the size of the input.

Highlights: List any release highlights, such as important features in the highlights section of the JSON.  Always include them in a JSON array.  If there are no highlights, simply add a single element called "No Highlights".' );
end;
/