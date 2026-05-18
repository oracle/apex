create or replace package excm_util  
as  

-- used in EXCM_CONTENT_V to replace the session placeholder, if it exists, with the current user's session id
function replace_session_on_display (
    p_body        in  clob,
    p_session_id  in  number )
    return clob;
 
-- used by the application-level POST_IMAGE process to upload the image and return (via apex_json.write) a url to display it
procedure upload_rte_image (  
    p_file_base64      in  clob,  
    p_filename         in  varchar2,  
    p_mimetype         in  varchar2,  
    p_image_ref_id     in  number ) ;  
  
procedure add_content (  
    p_content          in  clob,  
    p_image_ref_id     in  number );  
  
procedure update_content (  
    p_content_id       in  number,  
    p_content          in  clob,  
    p_image_ref_id     in  number );  
  
procedure delete_content (  
    p_content_id       in  number );    
 
end excm_util;
/