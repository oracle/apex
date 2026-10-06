begin
    sp_util.add_ai_prompt (  
        p_static_id     => 'FULL_PROJECT_SUMMARY',   
        p_description   => 'Used for generating a full project summary.', 
        p_prompt        => 'You are given details for a software development project, in json format, including the most recent comments from the last 90 days. Please return the following:

Concise Summary: Extract key points to create a brief but accurate summary of the overall progress, tasks completed, any issues or blockers, and any milestones achieved or reviews completed.  Also include any concerns, such as having no Contributors or Milestones defined or dates being past due.  This can be 1 or 2 paragraphs depending on the size of the input.

Risk Assessment: Analyze for signs of potential project risks (e.g., delays, unaddressed issues, lack of progress, etc.). Based on this analysis, assign a risk level to the project as follows:

None: No risk, assign to all projects with percent complete of 100% (and only those).

Low: No immediate concerns; project is progressing smoothly with no major issues.

Moderate: Some concerns or blockers are present but can be addressed; risk to the timeline or scope is possible.

High: Major issues or blockers that significantly affect the progress; there is a real danger to the timeline, scope, or quality.

Additionally, list any project highlight achievements, percent complete, tags or status changes, completed reviews, approvals received, or anything significant about the project in the highlights section of the JSON.  Always include them in a JSON array.  If there are no highlights, simply add a single element called "No Highlights".

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
        p_prompt        => 'You are given details for a software development project, in json format, and the last summary generated along with any data that has changed since the last summary. Please return the following:

Concise Summary: Extract key points to create a brief but accurate summary of the overall progress since the last summary, tasks completed, any issues or blockers, and any milestones achieved or reviews completed.  Also include any concerns, such as having no Contributors or Milestones defined or dates being past due.  This can be 1 or 2 paragraphs depending on the size of the input.

Risk Assessment: Analyze for signs of potential project risks (e.g., delays, unaddressed issues, lack of progress, etc.). Based on this analysis, assign a risk level to the project as follows:

None: No risk, assign to all projects with percent complete of 100% (and only those).

Low: No immediate concerns; project is progressing smoothly with no major issues.

Moderate: Some concerns or blockers are present but can be addressed; risk to the timeline or scope is possible.

High: Major issues or blockers that significantly affect the progress; there is a real danger to the timeline, scope, or quality.

Additionally, list any project highlight achievements, percent complete, tags or status changes, completed reviews, approvals received, or anything significant about the project in the highlights section of the JSON.  Always include them in a JSON array.  If there are no highlights, simply add a single element called "No Highlights".

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