create or replace package body excm_util
as

g_session_placeholder constant varchar2(20) := '~RTE*SESS~';

-- this removes images from abandoned content (ie. content never created but images uploaded)
--   this is executed each time content is scanned to avoid the need for a job to do the cleanup
procedure cleanup_old_images
is
begin
    delete from excm_rte_images
     where image_ref_id not in (select image_ref_id from excm_content)
       and created < sysdate-1;
end cleanup_old_images;


-- this returns a colon separated list of all the names of images within a clob
function find_images (
    p_clob  in  clob )
    return varchar2 
is
    l_clob                clob;
    l_clob_length         integer;
    l_image_prefix        varchar2(255)  := ']('||apex_app_setting.get_value (p_name => 'GET_IMAGE_PREFIX')||'get-image?x01=';
    l_prefix_length       number         := length(l_image_prefix);
    l_image_list          varchar2(4000) := null;
    l_start               integer        := 1;
    l_match               integer;
    l_image_name          varchar2(255);
    l_loop_count          integer        := 0;
    l_max_loops           integer        := 100;
begin
    -- remove session placeholder (if it exists)
    l_clob := replace(p_clob,'session='||g_session_placeholder||'&','');
    -- Get the length of the clob
    l_clob_length := dbms_lob.getlength(l_clob);
    -- Loop through the clob to extract image names
    while l_start <= l_clob_length loop
        if l_loop_count > l_max_loops then
            exit; -- prevent infinite loop
        end if;
        l_match := null;
        -- will find the beginning of the image string
        l_match := instr(l_clob, l_image_prefix, l_start, 1);
        exit when l_match = 0;
        -- extract the image name
        l_image_name := substr(l_clob, l_match + l_prefix_length, 22);
        -- Append to the image list
        if l_image_list is not null then
            l_image_list := l_image_list || ':' || l_image_name;
        else
            l_image_list := l_image_name;
        end if;
        -- Move position forward to continue searching
        l_start := l_match + l_prefix_length + 22;
        l_loop_count := l_loop_count + 1;
    end loop;

    return l_image_list;
end find_images;


-- this finds all the image links in a clob and replaces with [image], for use in IRs and emails
--   called by insert and update procedures (store the resulting clob for reuse as created one and displayed multiple times)
function replace_images (
    p_clob  in  clob )
    return clob 
is
    l_clob_length         integer;
    l_image_prefix        varchar2(255);
    l_prefix_length       number;
    l_image_list          varchar2(4000) := null;
    l_start               integer;
    l_match               integer;
    l_begin               integer;
    l_image_name          varchar2(255);
    l_alt_text            varchar2(4000);
    l_filename            varchar2(255);
    l_loop_count          integer;
    l_max_loops           integer        := 100;
    l_clob                clob           := p_clob;
begin
    -- Get the length of the input clob
    l_clob_length := dbms_lob.getlength(p_clob);

    -- first check without session - if needed, a second loop using session
    for i in 1..2 loop
        if i = 1 then
           l_image_prefix   := ']('||apex_app_setting.get_value (p_name => 'GET_IMAGE_PREFIX')||'get-image?x01=';
           l_prefix_length  := length(l_image_prefix);
           l_start          := 1;
           l_loop_count     := 0;    
        else
           -- Search again including session
           l_image_prefix   := ']('||apex_app_setting.get_value (p_name => 'GET_IMAGE_PREFIX')||'get-image?session='||g_session_placeholder||'&x01=';
           l_prefix_length  := length(l_image_prefix);
           l_start          := 1;
           l_loop_count     := 0;
        end if;

        -- Loop through the clob to find and replace image names
        while l_start <= l_clob_length loop
            if l_loop_count > l_max_loops then
                exit; -- prevent infinite loop
            end if;
            l_match := null;
            -- will find the beginning of the image string
            l_match := instr(p_clob, l_image_prefix, l_start, 1);
            exit when l_match = 0;
            -- extract the image name
            l_image_name := substr(p_clob, l_match + l_prefix_length, 22);
            -- if no alt text added, find image name
            if substr(p_clob,l_match-2,2) = '![' then
               -- find filename of image, if was file and not screensnap
               -- if image gets delete from images table, editing the content will fail to save
               --    wrapping this allows l_filename to be null, which is handled during replacement
               begin
                   select filename
                     into l_filename
                     from excm_rte_images
                    where unique_filename = l_image_name;
               exception
                   when no_data_found then null;
               end;
               -- replace image link
               if nvl(l_filename,'image.png') != 'image.png' then
                   -- if link was added to image, there will be extra square brackets
                   l_clob := replace(l_clob,'[!['||l_image_prefix||l_image_name||')]','['||l_filename||']');
                   l_clob := replace(l_clob,'!['||l_image_prefix||l_image_name||')','['||l_filename||']');
               else
                   -- if link was added to image, there will be extra square brackets
                   l_clob := replace(l_clob,'[!['||l_image_prefix||l_image_name||')]','[image]');
                   l_clob := replace(l_clob,'!['||l_image_prefix||l_image_name||')','[image]');
               end if;
               l_filename := null;
            else
                l_begin     := instr(p_clob, '![', -(l_clob_length-l_match), 1);
                l_alt_text  := substr(p_clob, l_begin+2, l_match-l_begin-2);
                -- if link was added to image, there will be extra square brackets
                l_clob      := replace(l_clob,'[!['||l_alt_text||l_image_prefix||l_image_name||')]','['||l_alt_text||']');
                l_clob      := replace(l_clob,'!['||l_alt_text||l_image_prefix||l_image_name||')','['||l_alt_text||']');
            end if;

            -- Move position forward to continue searching
            l_start := l_match + l_prefix_length + 22;
            l_loop_count := l_loop_count + 1;
        end loop;

        -- if any images replace then no need to check using session
        if l_image_name is not null then
           return l_clob;
        end if;

    end loop;

    return l_clob;

end replace_images;


function replace_session_on_save (
    p_body        in  clob )
    return clob
is
begin
    return regexp_replace(p_body, '(\?|&)(session=)([[:digit:]]+)', '\1\2' || g_session_placeholder);
end replace_session_on_save;


function replace_session_on_display (
    p_body        in  clob,
    p_session_id  in  number )
    return clob
is
begin
    return replace(p_body, 'session='||g_session_placeholder, 'session=' || p_session_id);
end replace_session_on_display;



-- images can be removed during edit or pasted in and then removed before create
--   this ensures those are removed
procedure remove_orphan_images (
    p_content_id  in  number )
is
    l_image_list  varchar2(4000);
begin
    for c1 in (
        select image_ref_id, body
          from excm_content 
         where id = p_content_id
    ) loop
        l_image_list := ':'||find_images(c1.body)||':';

        delete from excm_rte_images
         where image_ref_id = c1.image_ref_id 
           and instr(l_image_list,':'||unique_filename||':') = 0;
    end loop;

    cleanup_old_images;
end remove_orphan_images;

----------------------------------------------------

procedure upload_rte_image (
    p_file_base64           in  clob,
    p_filename              in  varchar2,
    p_mimetype              in  varchar2,
    p_image_ref_id          in  number ) 
as

    l_rte_file_types     varchar2(255) := 'jpeg|image/jpeg,jpg|image/jpg,gif|image/gif,png|image/png,webp|image/webp';
    l_unique_filename    excm_rte_images.unique_filename%type;
    l_max_file_size_mb   pls_integer := 3;
    l_file               blob;
    l_url                varchar2(4000);

    -- Exceptions
    e_image_too_large    exception;
    e_invalid_mime_type  exception;

    function remove_debug (
        p_url        in  varchar2 )
        return varchar2
    is
        l_url  varchar2(4000);
    begin
        l_url := regexp_replace(p_url, '&debug=(YES|LEVEL[1-9])', '');
        l_url := regexp_replace(l_url, 'debug=(YES|LEVEL[1-9])&', '');

        return l_url;
    end remove_debug;

    -- Handles JSON message error handling
    procedure send_error (
        p_message in varchar2 )
    as
    begin
        apex_json.open_object;
        apex_json.open_object('error');
        apex_json.write('message', p_message);
        apex_json.close_object;
        apex_json.close_object;
    end send_error;

begin
    l_file := apex_web_service.clobbase642blob(p_file_base64);

    -- Validations

    -- File not too big
    if dbms_lob.getlength(l_file) / ( power(1024, 3) / 1024 ) > l_max_file_size_mb then
        raise e_image_too_large;
    end if;

    -- Valid mimetype
    if instr(l_rte_file_types, '|' || lower(p_mimetype), 1) = 0 then
        raise e_invalid_mime_type;
    end if;

    l_unique_filename := dbms_random.string('a',8) || '-' || substr(dbms_random.normal,-4) || '-' || dbms_random.string('a',8);

    insert into excm_rte_images
        (file_blob, unique_filename, filename, mimetype, blob_size, 
         created, created_by, image_ref_id)
    values
        (l_file, l_unique_filename, p_filename, p_mimetype, dbms_lob.getlength(l_file), 
         sysdate, apex_application.g_user, p_image_ref_id);

    apex_json.open_object;

    -- P9000: Rejoin Sessions: Enabled for all sessions (where supported)
    l_url := apex_page.get_url (
                 p_page => 9000,
                 p_plain_url => true,
                 p_x01  => l_unique_filename );

    l_url := remove_debug(l_url);

    apex_json.write('url', l_url);
 
    apex_json.write('mimetype', p_mimetype);
    apex_json.close_object;

exception
        when e_image_too_large then
            send_error (
                p_message => apex_string.format(
                    p_message  => 'File too large must be less than %0MB',
                    p0         => l_max_file_size_mb
                )
            );
        when e_invalid_mime_type then
            send_error(p_message => 'Invalid mimetype');
        when others then
            send_error(p_message => 'Could not upload file: ' || sqlerrm );
end upload_rte_image;


procedure add_content (
    p_content       in  clob,
    p_image_ref_id  in  number )
is
    l_content_id      number;
    l_clob            clob;
    l_clob_no_images  clob;
begin
    l_clob := replace_session_on_save(p_content);
    l_clob_no_images := replace_images(l_clob);

    insert into excm_content 
        (body, body_no_images, image_ref_id)
    values 
        (l_clob, l_clob_no_images, p_image_ref_id)
    returning id into l_content_id;

    commit;

    -- doing cleanup
    remove_orphan_images (p_content_id => l_content_id);
end add_content;


procedure update_content (
    p_content_id     in  number,
    p_content        in  clob,
    p_image_ref_id   in  number )
is
    l_image_ref_id      number;
    l_image_list        varchar2(4000);
    l_clob              clob;
    l_clob_no_images    clob;
begin
    l_clob := replace_session_on_save(p_content);
    l_clob_no_images := replace_images(l_clob);

    -- returns the existing image_ref_id
    update excm_content 
       set body = l_clob,
           body_no_images = l_clob_no_images
     where id = p_content_id
    returning image_ref_id into l_image_ref_id;

    commit;

    l_image_list := find_images(l_clob);

    -- if no images found, no need to update references
    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update excm_rte_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing cleanup
    remove_orphan_images (p_content_id => p_content_id);
end update_content;


procedure delete_content (
    p_content_id    in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from excm_content
     where id = p_content_id;

    delete from excm_rte_images
     where image_ref_id = l_image_ref_id;

    delete from excm_content
     where id = p_content_id;
end delete_content;


end excm_util;
/