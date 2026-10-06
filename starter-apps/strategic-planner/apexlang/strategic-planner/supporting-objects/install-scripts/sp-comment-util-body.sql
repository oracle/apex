create or replace package body sp_comment_util as

g_session_placeholder constant varchar2(20) := '~RTE*SESS~';

-- this removes images from abandoned comments (ie. comments never created but images uploaded)
--   this is executed each time a comment is scanned to avoid the need for a job to do the cleanup
procedure cleanup_old_images
is
begin
    delete from sp_comment_images
     where image_ref_id not in 
           (select image_ref_id 
              from sp_initiative_comments
             where image_ref_id is not null
             union all
            select image_ref_id 
              from sp_project_comments
             where image_ref_id is not null
             union all
            select image_ref_id 
              from sp_task_comments
             where image_ref_id is not null
             union all
            select image_ref_id 
              from sp_release_comments
             where image_ref_id is not null
             union all
            select image_ref_id 
              from sp_init_focus_area_comments
             where image_ref_id is not null
             union all
            select image_ref_id 
              from sp_activity_comments
             where image_ref_id is not null )
       and created < sysdate-1;
end cleanup_old_images;


-- this finds all the names of images within a clob
function find_images (
    p_clob  in  clob )
    return varchar2 
is
    l_clob                clob;
    l_clob_length         integer;
    l_image_prefix        varchar2(255)  := ']('||sp_util.get_setting(p_static_id => 'GET_COMMENT_IMAGE_PREFIX')||'get-image?x01=';
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
    -- Get the length of the input clob
    l_clob_length := sys.dbms_lob.getlength(l_clob);
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
        l_start := l_start + l_match + l_prefix_length + 22;
        l_loop_count := l_loop_count + 1;
    end loop;
    
    return l_image_list;
end find_images;


-- this finds all the image links in a clob and replaces with [image], for use in IRs and emails
function replace_images (
    p_clob  in  clob )
    return clob 
is
    l_clob_length         integer;
    l_image_prefix        varchar2(255);
    l_prefix_length       number;
    l_image_list          varchar2(4000) := null;
    l_start               integer        := 1;
    l_match               integer;
    l_begin               integer;
    l_image_name          varchar2(255);
    l_alt_text            varchar2(4000);
    l_filename            varchar2(255);
    l_loop_count          integer        := 0;
    l_max_loops           integer        := 100;
    l_clob                clob           := p_clob;
begin
    -- Get the length of the input clob
    l_clob_length := sys.dbms_lob.getlength(p_clob);

-- first check without session - if needed, a second loop using session
    for i in 1..2 loop
        if i = 1 then
           l_image_prefix   := ']('||sp_util.get_setting(p_static_id => 'GET_COMMENT_IMAGE_PREFIX')||'get-image?x01=';
           l_prefix_length  := length(l_image_prefix);
           l_start          := 1;
           l_loop_count     := 0;    
        else
           -- Search again including session
           l_image_prefix   := ']('||sp_util.get_setting(p_static_id => 'GET_COMMENT_IMAGE_PREFIX')||'get-image?session='||g_session_placeholder||'&x01=';
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
                     from sp_comment_images
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
    l_body  clob := p_body;
begin
    l_body := regexp_replace(l_body, '(\?|&)(session=)([[:digit:]]+)', '\1\2' || g_session_placeholder);

    l_body := regexp_replace(l_body, '(%26session%3D)[0-9]+(%26)', '\1'||g_session_placeholder||'\2');

    return l_body;
end replace_session_on_save;


function replace_session_on_display (
    p_body        in  clob,
    p_session_id  in  number )
    return clob
is
    l_body  clob := p_body;
begin
    l_body := replace(l_body, 'session='||g_session_placeholder, 'session=' || p_session_id);

    l_body := replace(l_body, '%26session%3D'||g_session_placeholder, '%26session%3D' || p_session_id);

    return l_body;
end replace_session_on_display;


-- images can be removed during edit or pasted in and then removed before create
--   this ensures those are removed
procedure remove_orphan_images (
    p_comment_id    in  number,
    p_comment_type  in  varchar2 )
is
    l_image_ref_id  number;
    l_body          clob;
    l_image_list    varchar2(4000);
begin
    if p_comment_type = 'INITIATIVE' then
        select image_ref_id, body
          into l_image_ref_id, l_body
          from sp_initiative_comments
         where id = p_comment_id;
    elsif p_comment_type = 'PROJECT' then
        select image_ref_id, body
          into l_image_ref_id, l_body
          from sp_project_comments
         where id = p_comment_id;
    elsif p_comment_type = 'TASK' then
        select image_ref_id, body
          into l_image_ref_id, l_body
          from sp_task_comments
         where id = p_comment_id;
    elsif p_comment_type = 'RELEASE' then
        select image_ref_id, body
          into l_image_ref_id, l_body
          from sp_release_comments
         where id = p_comment_id;
    elsif p_comment_type = 'INIT_FOCUS_AREA' then
        select image_ref_id, body
          into l_image_ref_id, l_body
          from sp_init_focus_area_comments
         where id = p_comment_id;
    elsif p_comment_type = 'ACTIVITY' then
        select image_ref_id, body
          into l_image_ref_id, l_body
          from sp_activity_comments
         where id = p_comment_id;
    end if;

    if l_image_ref_id is not null and l_body is not null then
        l_image_list := ':'||find_images(l_body)||':';

        delete from sp_comment_images
         where image_ref_id = l_image_ref_id 
           and instr(l_image_list,':'||unique_filename||':') = 0;
    end if;
end remove_orphan_images;

-------------------------------

procedure set_comment_email_references (
    p_comment_id in number)
is 
    l_results  apex_t_varchar2 := apex_t_varchar2();  
    l_string   clob;
begin
    -- remove emails associated with this project comment
    delete from sp_project_comments_emails where comment_id = p_comment_id;

    -- add emails associated with this project comment
    for c1 in (select body from sp_project_comments where id = p_comment_id) loop
        l_string := c1.body;
        l_results := apex_string_util.find_email_addresses(l_string);
        for i in 1..l_results.count loop
            insert into sp_project_comments_emails (
                comment_id, email) 
            values (
                p_comment_id, lower(l_results(i))
            );
        end loop; 
    end loop; 
end set_comment_email_references;

----------------------------------

procedure add_initiative_comment (
    p_app_user_id     in  number,
    p_app_user        in  varchar2,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_initiative_id   in  number,
    p_app_id          in  number,
    p_link            in  varchar2,
    p_nomen_sp        in  varchar2,
    p_image_ref_id    in  number   default null )
is
    l_comment_id         number;
    l_comment            clob;
    l_comment_no_images  clob;
    l_email_comment      clob;
    l_mentions           varchar2(4000);
begin 

    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    insert into sp_initiative_comments (
        initiative_id, 
        author_id, 
        body,
        body_html, 
        body_no_images,
        private_yn,
        image_ref_id ) 
    values (
        p_initiative_id,
        p_app_user_id,
        l_comment,
        apex_markdown.to_html(l_comment),
        regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
        p_private_yn,
        p_image_ref_id )
    returning id into l_comment_id;
    commit;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => l_comment_id,
        p_comment_type => 'INITIATIVE' );

    if p_private_yn = 'N' and
       apex_util.get_build_option_status (p_application_id => p_app_id, p_build_option_name => 'Comment Tagging') = 'INCLUDE' 
    then

        l_email_comment := apex_markdown.to_html(substr(l_comment_no_images,1,2500)||case when length(l_comment_no_images) > 2500 then ' ...' end);

        for c1 in (
            select apex_escape.html(initiative) init_esc,
                   (select apex_escape.html(comment_nbr) from sp_initiative_comments where id = l_comment_id) comment_nbr,
                   apex_escape.html(sp_util.get_nomenclature (p_static_id => 'INITIATIVE')) init_word
              from sp_initiatives
             where id = p_initiative_id 
        ) loop
            l_mentions := sp_util.find_mentions(l_comment_no_images);
            -- mentions (not current user)
            if l_mentions is not null then
                for c2 in (
                    select id, first_name
                      from sp_team_members
                     where instr(':'||l_mentions||':',':'||screen_name||':') > 0
                       and id != p_app_user_id 
                       and screen_name is not null
                ) loop
                    sp_util.comment_notification (
                        p_team_member_id => c2.id, 
                        p_app_name       => p_nomen_sp, 
                        p_app_id         => p_app_id,
                        p_title          => 'You were mentioned in a comment added to '||c1.init_word||' '||c1.init_esc,
                        p_initiative_id  => p_initiative_id, 
                        p_link           => p_link, 
                        p_view_what      => c1.init_word,
                        p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                            'You were mentioned in a new comment added to <a  style="font-weight:bold" href="'||p_link||'">'||c1.init_esc||'</a><br/>'||
                                            'Comment: '||c1.comment_nbr||'<br/>'||
                                            'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                            l_email_comment,
                        p_notification_type => 'MENTION' );
                end loop;
            end if;
        end loop;
    end if;

end add_initiative_comment;


procedure update_initiative_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_image_ref_id       number;
    l_image_list         varchar2(4000);

begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    -- for existing content, there may be no image_ref_id, so need to add one
    update sp_initiative_comments
       set body           = l_comment,
           body_html      = apex_markdown.to_html(l_comment),
           body_no_images = regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
           private_yn     = p_private_yn,
           image_ref_id   = nvl(image_ref_id,to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'))
     where id = p_comment_id
    returning image_ref_id into l_image_ref_id;

    l_image_list := find_images(l_comment);

    -- if no images found, no need to update references
    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update sp_comment_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => p_comment_id,
        p_comment_type => 'INITIATIVE');

    -- cleaning up old images, only on update
    cleanup_old_images;
    
end update_initiative_comment;


procedure delete_initiative_comment (
    p_comment_id      in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from sp_initiative_comments
     where id = p_comment_id;

    if l_image_ref_id is not null then
        delete from sp_comment_images
         where image_ref_id = l_image_ref_id;
    end if;

    delete from sp_initiative_comments
     where id = p_comment_id;
end delete_initiative_comment;

---------------------------------------

procedure add_project_comment (
    p_app_user_id     in  number,
    p_app_user        in  varchar2,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_project_id      in  number,
    p_system_gen_yn   in  varchar2 default 'N',
    p_app_id          in  number   default null,
    p_permalink_pre   in  varchar2 default null,
    p_nomen_sp        in  varchar2 default null,
    p_nomen_project   in  varchar2 default null,
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_comment_id         number;
    l_email_comment      clob;
    l_link               varchar2(4000);
    l_mentions           varchar2(4000);
begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    insert into SP_PROJECT_COMMENTS (
        project_id, 
        author_id, 
        body,
        body_html, 
        body_no_images, 
        private_yn,
        image_ref_id) 
    values (
        p_project_id,
        p_app_user_id,
        l_comment,
        apex_markdown.to_html(l_comment),
        regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs
        p_private_yn,
        p_image_ref_id)
    returning id into l_comment_id;
    commit;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => l_comment_id,
        p_comment_type => 'PROJECT' );

    if p_private_yn = 'N' and p_system_gen_yn = 'N' then

        set_comment_email_references(l_comment_id);

        l_email_comment := apex_markdown.to_html(substr(l_comment_no_images,1,2500)||case when length(l_comment_no_images) > 2500 then ' ...' end);

        for c1 in (
            select p.project,
                   apex_escape.html(p.project) project_esc, 
                   p.friendly_identifier fi, apex_escape.html(p.project_url_name) project_url_name, 
                   p.owner_id, apex_escape.html(t.first_name) first_name, t.screen_name,
                   (select apex_escape.html(comment_nbr) from sp_project_comments where id = l_comment_id) comment_nbr
              from sp_projects p, 
                   sp_team_members t
             where p.id = p_project_id 
               and p.owner_id = t.id (+)
        ) loop
            l_link := p_permalink_pre||c1.fi||'&pn='||c1.project_url_name;

            l_mentions := sp_util.find_mentions(l_comment_no_images);

            if apex_util.get_build_option_status (p_application_id => p_app_id, p_build_option_name => 'Comment Tagging') = 'INCLUDE' then
                -- mentions (not current user)
                if l_mentions is not null then
                    for c2 in (
                        select id, apex_escape.html(first_name) first_name
                          from sp_team_members
                         where instr(':'||l_mentions||':',':'||screen_name||':') > 0
                           and id != p_app_user_id and screen_name is not null
                    ) loop
                        sp_util.comment_notification (
                            p_team_member_id => c2.id, 
                            p_app_name       => p_nomen_sp, 
                            p_app_id         => p_app_id,
                            p_title          => 'You were mentioned in a comment added to '||c1.project_esc,
                            p_project_id     => p_project_id, 
                            p_link           => l_link, 
                            p_view_what      => p_nomen_project,
                            p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                                'You were mentioned in a new comment added to <a  style="font-weight:bold" href="'||l_link||'">'||c1.project_esc||'</a><br/>'||
                                                'Comment: '||c1.comment_nbr||'<br/>'||
                                                'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                                l_email_comment,
                            p_notification_type => 'MENTION' );
                    end loop;
                end if;
            end if;

            -- owner (not current user and not tagged in comment)
            if c1.owner_id is not null and 
               c1.owner_id != p_app_user_id and 
               instr(':'||l_mentions||':',':'||c1.screen_name||':') = 0 
            then
               sp_util.comment_notification (
                    p_team_member_id => c1.owner_id, 
                    p_app_name       => p_nomen_sp,
                    p_app_id         => p_app_id,
                    p_title          => 'New comment added to '||c1.project_esc,
                    p_project_id     => p_project_id, 
                    p_link           => l_link, 
                    p_view_what      => p_nomen_project,
                    p_email_contents => 'Hi '||c1.first_name||'<br/><br/>'||
                                        'A new comment was just added to <a  style="font-weight:bold" href="'||l_link||'">'||c1.project_esc||'</a><br/>'||
                                        'Comment: '||c1.comment_nbr||'<br/>'||
                                        'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                        l_email_comment,
                    p_notification_type => 'COMMENT' );
            end if;

            -- favorited (not owner, not current user and not tagged in comment)
            for c2 in (
                select f.team_member_id, apex_escape.html(t.first_name) first_name
                  from sp_favorites f,
                       sp_team_members t
                 where f.project_id = p_project_id
                   and f.team_member_id = t.id
                   and f.team_member_id != p_app_user_id
                   and f.team_member_id != c1.owner_id
                   and t.screen_name is not null
                   and instr(':'||l_mentions||':',':'||t.screen_name||':') = 0
            ) loop
                sp_util.comment_notification (
                    p_team_member_id => c2.team_member_id, 
                    p_app_name       => p_nomen_sp,
                    p_app_id         => p_app_id,
                    p_title          => 'New comment added to '||c1.project_esc,
                    p_project_id     => p_project_id, 
                    p_link           => l_link, 
                    p_view_what      => p_nomen_project,
                    p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                        'A new comment was just added to <a  style="font-weight:bold" href="'||l_link||'">'||c1.project_esc||'</a><br/>'||
                                        'Comment: '||c1.comment_nbr||'<br/>'||
                                        'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                        l_email_comment,
                    p_notification_type => 'COMMENT' );
            end loop;
        end loop;
    end if;
end add_project_comment;


procedure update_project_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_image_ref_id       number;
    l_image_list         varchar2(4000);
begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    -- for existing content, there may be no image_ref_id, so need to add one
    update sp_project_comments
       set body           = l_comment,
           body_html      = apex_markdown.to_html(l_comment),
           body_no_images = regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs
           private_yn     = p_private_yn,
           image_ref_id   = nvl(image_ref_id,to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'))
     where id = p_comment_id
    returning image_ref_id into l_image_ref_id;

    l_image_list := find_images(l_comment);

    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update sp_comment_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => p_comment_id,
        p_comment_type => 'PROJECT');

    -- cleaning up old images, only on update
    cleanup_old_images;

    if p_private_yn = 'N' then
        set_comment_email_references(p_comment_id);
    end if;
end update_project_comment;


procedure delete_project_comment (
    p_comment_id      in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from sp_project_comments
     where id = p_comment_id;

    if l_image_ref_id is not null then
        delete from sp_comment_images
         where image_ref_id = l_image_ref_id;
    end if;

    delete from sp_project_comments
     where id = p_comment_id;
end delete_project_comment;

-----------------------

procedure add_task_comment (
    p_app_user_id     in  number,
    p_app_user        in  varchar2,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_project_id      in  number,
    p_task_id         in  number,
    p_app_id          in  number,
    p_link            in  varchar2,
    p_nomen_sp        in  varchar2,
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_comment_id         number;
    l_email_comment      clob;
    l_mentions           varchar2(4000);
begin 
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    insert into sp_task_comments (
        task_id, 
        author_id, 
        body,
        body_html, 
        body_no_images,
        private_yn,
        image_ref_id ) 
    values (
        p_task_id,
        p_app_user_id,
        l_comment,
        apex_markdown.to_html(l_comment),
        regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
        p_private_yn,
        p_image_ref_id )
    returning id into l_comment_id;
    commit;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => l_comment_id,
        p_comment_type => 'TASK' );

    if p_private_yn = 'N' then

        l_email_comment := apex_markdown.to_html(substr(l_comment_no_images,1,2500)||case when length(l_comment_no_images) > 2500 then ' ...' end);

        for c1 in (
            select p.project, 
                   apex_escape.html(p.project) project_esc,
                   apex_escape.html((select task_type from sp_task_types rt where rt.id = a.task_type_id)||
                                     case when a.task_sub_type_id is not null then ': ' end ||
                                     (select task_type from sp_task_types rt where rt.id = a.task_sub_type_id) ||
                                     case when a.task is not null then ' - '||a.task end) task_name,
                   apex_escape.html((select rt.task_type
                                       from sp_task_types rt
                                      where a.id = p_task_id
                                        and rt.id = a.task_type_id)) parent_task_type,
                   p.owner_id, apex_escape.html(t.first_name) first_name, t.screen_name,
                   (select apex_escape.html(comment_nbr) from sp_task_comments where id = l_comment_id) comment_nbr
              from sp_projects p, 
                   sp_tasks a,
                   sp_team_members t
             where p.id = p_project_id 
               and a.id = p_task_id
               and p.owner_id = t.id (+)
        ) loop
            if apex_util.get_build_option_status (p_application_id => p_app_id, p_build_option_name => 'Comment Tagging') = 'INCLUDE' then
                l_mentions := sp_util.find_mentions(l_comment_no_images);
                -- mentions (not current user)
                if l_mentions is not null then
                    for c2 in (
                        select id, first_name
                          from sp_team_members
                         where instr(':'||l_mentions||':',':'||screen_name||':') > 0
                           and id != p_app_user_id 
                           and screen_name is not null
                    ) loop
                        sp_util.comment_notification (
                            p_team_member_id => c2.id, 
                            p_app_name       => p_nomen_sp, 
                            p_app_id         => p_app_id,
                            p_title          => 'You were mentioned in a comment added to '||c1.project_esc||' - '||c1.task_name,
                            p_project_id     => p_project_id, 
                            p_task_id        => p_task_id,
                            p_link           => p_link, 
                            p_view_what      => c1.parent_task_type,
                            p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                                'You were mentioned in a new comment added to '||c1.project_esc||' - <a  style="font-weight:bold" href="'||p_link||'">'||apex_escape.html(c1.task_name)||'</a><br/>'||
                                                'Comment: '||c1.comment_nbr||'<br/>'||
                                                'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                                l_email_comment,
                            p_notification_type => 'MENTION' );
                    end loop;
                end if;
            end if;

            -- owner (not current user and not tagged in comment)
            if c1.owner_id is not null and 
               c1.owner_id != p_app_user_id and 
               instr(':'||l_mentions||':',':'||c1.screen_name||':') = 0 
            then
               sp_util.comment_notification (
                    p_team_member_id => c1.owner_id, 
                    p_app_name       => p_nomen_sp,
                    p_app_id         => p_app_id,
                    p_title          => 'New comment added to '||c1.project_esc||' - '||c1.task_name,
                    p_project_id     => p_project_id, 
                    p_task_id        => p_task_id,
                    p_link           => p_link, 
                    p_view_what      => c1.parent_task_type,
                    p_email_contents => 'Hi '||c1.first_name||'<br/><br/>'||
                                        'A new comment was just added to '||c1.project_esc||' - <a  style="font-weight:bold" href="'||p_link||'">'||apex_escape.html(c1.task_name)||'</a><br/>'||
                                        'Comment: '||c1.comment_nbr||'<br/>'||
                                        'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                        l_email_comment,
                    p_notification_type => 'COMMENT' );
            end if;

            -- task owner (not project owner, current user and not tagged in comment)
            for c2 in (
                select a.owner_id team_member_id, apex_escape.html(t.first_name) first_name
                  from sp_tasks a,
                       sp_team_members t
                 where a.id = p_task_id
                   and a.owner_id = t.id
                   and a.owner_id != p_app_user_id
                   and a.owner_id != c1.owner_id
                   and instr(':'||l_mentions||':',':'||t.screen_name||':') = 0
            ) loop
                sp_util.comment_notification (
                    p_team_member_id => c2.team_member_id, 
                    p_app_name       => p_nomen_sp,
                    p_app_id         => p_app_id,
                    p_title          => 'New comment added to '||c1.project_esc||' - '||c1.task_name,
                    p_project_id     => p_project_id, 
                    p_task_id        => p_task_id,
                    p_link           => p_link, 
                    p_view_what      => c1.parent_task_type,
                    p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                        'A new comment was just added to '||c1.project_esc||' - <a  style="font-weight:bold" href="'||p_link||'">'||apex_escape.html(c1.task_name)||'</a><br/>'||
                                        'Comment: '||c1.comment_nbr||'<br/>'||
                                        'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                        l_email_comment,
                    p_notification_type => 'COMMENT' );
            end loop;

            -- favorited (not owner, not current user and not tagged in comment)
            for c2 in (
                select f.team_member_id, apex_escape.html(t.first_name) first_name
                  from sp_favorites f,
                       sp_team_members t
                 where f.project_id = p_project_id
                   and f.team_member_id = t.id
                   and f.team_member_id != p_app_user_id
                   and f.team_member_id != c1.owner_id
                   and t.screen_name is not null
                   and instr(':'||l_mentions||':',':'||t.screen_name||':') = 0
            ) loop
                sp_util.comment_notification (
                    p_team_member_id => c2.team_member_id, 
                    p_app_name       => p_nomen_sp,
                    p_app_id         => p_app_id,
                    p_title          => 'New comment added to '||c1.project_esc||' - '||c1.task_name,
                    p_project_id     => p_project_id, 
                    p_task_id        => p_task_id,
                    p_link           => p_link, 
                    p_view_what      => c1.parent_task_type,
                    p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                        'A new comment was just added to '||c1.project_esc||' - <a  style="font-weight:bold" href="'||p_link||'">'||apex_escape.html(c1.task_name)||'</a><br/>'||
                                        'Comment: '||c1.comment_nbr||'<br/>'||
                                        'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                        l_email_comment,
                    p_notification_type => 'COMMENT' );
            end loop;
        end loop;
    end if;
end add_task_comment;


procedure update_task_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_image_ref_id       number;
    l_image_list         varchar2(4000);
begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    -- for existing content, there may be no image_ref_id, so need to add one
    update sp_task_comments
       set body           = l_comment,
           body_html      = apex_markdown.to_html(l_comment),
           body_no_images = regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
           private_yn     = p_private_yn,
           image_ref_id   = nvl(image_ref_id,to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'))
     where id = p_comment_id
    returning image_ref_id into l_image_ref_id;

    l_image_list := find_images(l_comment);

    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update sp_comment_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => p_comment_id,
        p_comment_type => 'TASK');

    -- cleaning up old images, only on update
    cleanup_old_images;
    
end update_task_comment;


procedure delete_task_comment (
    p_comment_id      in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from sp_task_comments
     where id = p_comment_id;

    if l_image_ref_id is not null then
        delete from sp_comment_images
         where image_ref_id = l_image_ref_id;
    end if;

    delete from sp_task_comments
     where id = p_comment_id;
end delete_task_comment;

-------------------------

procedure add_release_comment (
    p_app_user_id     in  number,
    p_app_user        in  varchar2,
    p_comment         in  varchar2,
    p_release_id      in  number,
    p_private_yn      in  varchar2 default 'N',
    p_app_id          in  number,
    p_link            in  varchar2,
    p_nomen_sp        in  varchar2,
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_comment_id         number;
    l_email_comment      clob;
    l_mentions           varchar2(4000);
begin 
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    insert into sp_release_comments (
        release_id, 
        author_id, 
        body,
        body_html, 
        body_no_images,
        private_yn,
        image_ref_id ) 
    values (
        p_release_id,
        p_app_user_id,
        l_comment,
        apex_markdown.to_html(l_comment),
        regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
        p_private_yn,
        p_image_ref_id )
    returning id into l_comment_id;
    commit;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => l_comment_id,
        p_comment_type => 'RELEASE' );

    if p_private_yn = 'N' and
       apex_util.get_build_option_status (p_application_id => p_app_id, p_build_option_name => 'Comment Tagging') = 'INCLUDE' 
    then
        l_email_comment := apex_markdown.to_html(substr(l_comment_no_images,1,2500)||case when length(l_comment_no_images) > 2500 then ' ...' end);

        for c1 in (
            select apex_escape.html(r.release_train||' '||r.release) release_esc,
                   (select apex_escape.html(comment_nbr) from sp_release_comments where id = l_comment_id) comment_nbr
              from sp_release_trains r
             where r.id = p_release_id 
        ) loop
            l_mentions := sp_util.find_mentions(l_comment_no_images);
            -- mentions (not current user)
            if l_mentions is not null then
                for c2 in (
                    select id, first_name
                      from sp_team_members
                     where instr(':'||l_mentions||':',':'||screen_name||':') > 0
                       and id != p_app_user_id 
                       and screen_name is not null
                ) loop
                    sp_util.comment_notification (
                        p_team_member_id => c2.id, 
                        p_app_name       => p_nomen_sp, 
                        p_app_id         => p_app_id,
                        p_title          => 'You were mentioned in a comment added to Release '||c1.release_esc,
                        p_release_id     => p_release_id, 
                        p_link           => p_link, 
                        p_view_what      => 'Release',
                        p_email_contents => 'Hi '||c2.first_name||'<br/><br/>'||
                                            'You were mentioned in a new comment added to <a  style="font-weight:bold" href="'||p_link||'">'||c1.release_esc||'</a><br/>'||
                                            'Comment: '||c1.comment_nbr||'<br/>'||
                                            'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                            l_email_comment,
                        p_notification_type => 'MENTION' );
                end loop;
            end if;
        end loop;
    end if;

end add_release_comment;


procedure update_release_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_image_ref_id       number;
    l_image_list         varchar2(4000);
begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    -- for existing content, there may be no image_ref_id, so need to add one
    update sp_release_comments
       set body           = l_comment,
           body_html      = apex_markdown.to_html(l_comment),
           body_no_images = regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
           private_yn     = p_private_yn,
           image_ref_id   = nvl(image_ref_id,to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'))
     where id = p_comment_id
    returning image_ref_id into l_image_ref_id;

    l_image_list := find_images(l_comment);

    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update sp_comment_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => p_comment_id,
        p_comment_type => 'RELEASE');

    -- cleaning up old images, only on update
    cleanup_old_images;
    
end update_release_comment;


procedure delete_release_comment (
    p_comment_id      in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from sp_release_comments
     where id = p_comment_id;

    if l_image_ref_id is not null then
        delete from sp_comment_images
         where image_ref_id = l_image_ref_id;
    end if;

    delete from sp_release_comments
     where id = p_comment_id;
end delete_release_comment;

-------------------------

procedure add_init_focus_area_comment (
    p_app_user_id         in  number,
    p_app_user            in  varchar2,
    p_comment             in  varchar2,
    p_init_focus_area_id  in  number,
    p_private_yn          in  varchar2 default 'N',
    p_app_id              in  number,
    p_link                in  varchar2,
    p_nomen_sp            in  varchar2, 
    p_image_ref_id        in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_comment_id         number;
    l_email_comment      clob;
    l_mentions           varchar2(4000);
begin 
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    insert into sp_init_focus_area_comments (
        init_focus_area_id, 
        author_id, 
        body,
        body_html, 
        body_no_images,
        private_yn,
        image_ref_id ) 
    values (
        p_init_focus_area_id,
        p_app_user_id,
        l_comment,
        apex_markdown.to_html(l_comment),
        regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
        p_private_yn,
        p_image_ref_id )
    returning id into l_comment_id;
    commit;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => l_comment_id,
        p_comment_type => 'INIT_FOCUS_AREA' );

    if p_private_yn = 'N' and
       apex_util.get_build_option_status (p_application_id => p_app_id, p_build_option_name => 'Comment Tagging') = 'INCLUDE' 
    then
        l_email_comment := apex_markdown.to_html(substr(l_comment_no_images,1,2500)||case when length(l_comment_no_images) > 2500 then ' ...' end);

        for c1 in (
            select apex_escape.html(focus_area) fa_esc,
                   (select apex_escape.html(comment_nbr) from sp_init_focus_area_comments where id = l_comment_id) comment_nbr,
                   apex_escape.html(sp_util.get_nomenclature (p_static_id => 'INITIATIVE'))|| ' Focus Area' init_fa_word,
                   (select apex_escape.html(initiative) from sp_initiatives where id = fa.initiative_id) initiative_esc
              from sp_initiative_focus_areas fa
             where id = p_init_focus_area_id 
        ) loop
            l_mentions := sp_util.find_mentions(l_comment_no_images);
            -- mentions (not current user)
            if l_mentions is not null then
                for c2 in (
                    select id, first_name
                      from sp_team_members
                     where instr(':'||l_mentions||':',':'||screen_name||':') > 0
                       and id != p_app_user_id 
                       and screen_name is not null
                ) loop
                    sp_util.comment_notification (
                        p_team_member_id     => c2.id, 
                        p_app_name           => p_nomen_sp, 
                        p_app_id             => p_app_id,
                        p_title              => 'You were mentioned in a comment added to '||c1.init_fa_word||' '||c1.initiative_esc||' - '||c1.fa_esc,
                        p_init_focus_area_id => p_init_focus_area_id, 
                        p_link               => p_link, 
                        p_view_what          => c1.init_fa_word,
                        p_email_contents     => 'Hi '||c2.first_name||'<br/><br/>'||
                                                'You were mentioned in a new comment added to <a  style="font-weight:bold" href="'||p_link||'">'||c1.initiative_esc||' - '||c1.fa_esc||'</a><br/>'||
                                                'Comment: '||c1.comment_nbr||'<br/>'||
                                                'Comment by: '||apex_escape.html(lower(p_app_user))||'<br/>'||
                                                l_email_comment,
                        p_notification_type     => 'MENTION' );
                end loop;
            end if;
        end loop;
    end if;

end add_init_focus_area_comment;


procedure update_init_focus_area_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_image_ref_id       number;
    l_image_list         varchar2(4000);
begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    -- for existing content, there may be no image_ref_id, so need to add one
    update sp_init_focus_area_comments
       set body           = l_comment,
           body_html      = apex_markdown.to_html(l_comment),
           body_no_images = regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
           private_yn     = p_private_yn,
           image_ref_id   = nvl(image_ref_id,to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'))
     where id = p_comment_id
    returning image_ref_id into l_image_ref_id;

    l_image_list := find_images(l_comment);

    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update sp_comment_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => p_comment_id,
        p_comment_type => 'INIT_FOCUS_AREA');

    -- cleaning up old images, only on update
    cleanup_old_images;
    
end update_init_focus_area_comment;


procedure delete_init_focus_area_comment (
    p_comment_id      in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from sp_init_focus_area_comments
     where id = p_comment_id;

    if l_image_ref_id is not null then
        delete from sp_comment_images
         where image_ref_id = l_image_ref_id;
    end if;

    delete from sp_init_focus_area_comments
     where id = p_comment_id;
end delete_init_focus_area_comment;

----------------------

procedure add_activity_comment (
    p_app_user_id     in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_activity_id     in  number,
    p_image_ref_id    in  number   default null )
is
    l_comment_id         number;
    l_comment            clob;
    l_comment_no_images  clob;
begin 

    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    insert into sp_activity_comments (
        activity_id, 
        author_id, 
        body,
        body_html, 
        body_no_images,
        private_yn,
        image_ref_id ) 
    values (
        p_activity_id,
        p_app_user_id,
        l_comment,
        apex_markdown.to_html(l_comment),
        l_comment_no_images,
        p_private_yn,
        p_image_ref_id )
    returning id into l_comment_id;
    commit;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => l_comment_id,
        p_comment_type => 'ACTIVITY' );

    -- no mention support
end add_activity_comment;


procedure update_activity_comment (
    p_comment_id      in  number,
    p_comment         in  varchar2,
    p_private_yn      in  varchar2 default 'N',
    p_image_ref_id    in  number   default null )
is
    l_comment            clob;
    l_comment_no_images  clob;
    l_image_ref_id       number;
    l_image_list         varchar2(4000);

begin
    l_comment           := replace_session_on_save(p_comment);
    l_comment_no_images := replace_images(l_comment);

    -- for existing content, there may be no image_ref_id, so need to add one
    update sp_activity_comments
       set body           = l_comment,
           body_html      = apex_markdown.to_html(l_comment),
           body_no_images = regexp_replace(l_comment_no_images, '\([^)]*/[^/?]*document-details\?p([0-9]+)_id=[^&]+&clear=\1[^)]*\)', ''), -- removes link for docs,
           private_yn     = p_private_yn,
           image_ref_id   = nvl(image_ref_id,to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'))
     where id = p_comment_id
    returning image_ref_id into l_image_ref_id;

    l_image_list := find_images(l_comment);

    -- if no images found, no need to update references
    if l_image_list is not null then
        -- updating image_ref_id to match that of the existing content
        update sp_comment_images
           set image_ref_id = l_image_ref_id 
         where instr(':'||l_image_list||':',':'||unique_filename||':') > 0
           and image_ref_id = p_image_ref_id;
    end if;

    -- doing image cleanup
    remove_orphan_images (
        p_comment_id   => p_comment_id,
        p_comment_type => 'ACTIVITY');

    -- cleaning up old images, only on update
    cleanup_old_images;
    
end update_activity_comment;


procedure delete_activity_comment (
    p_comment_id      in  number )
is
    l_image_ref_id  number;
begin
    select image_ref_id
      into l_image_ref_id
      from sp_activity_comments
     where id = p_comment_id;

    if l_image_ref_id is not null then
        delete from sp_comment_images
         where image_ref_id = l_image_ref_id;
    end if;

    delete from sp_activity_comments
     where id = p_comment_id;
end delete_activity_comment;

---------------------------

procedure upload_image (
    p_file_base64           in  clob,
    p_filename              in  varchar2,
    p_mimetype              in  varchar2,
    p_image_ref_id          in  number ) 
as

    l_rte_file_types     varchar2(255) := 'jpeg|image/jpeg,jpg|image/jpg,gif|image/gif,png|image/png,webp|image/webp';
    l_unique_filename    sp_comment_images.unique_filename%type;
    l_max_file_size_mb   pls_integer := 3;
    l_file               blob;

    -- Exceptions
    e_image_too_large    exception;
    e_invalid_mime_type  exception;

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
    if sys.dbms_lob.getlength(l_file) / ( power(1024, 3) / 1024 ) > l_max_file_size_mb then
        raise e_image_too_large;
    end if;

    -- Valid mimetype
    if instr(l_rte_file_types, '|' || lower(p_mimetype), 1) = 0 then
        raise e_invalid_mime_type;
    end if;

    l_unique_filename := sys.dbms_random.string('a',8) || '-' || substr(sys.dbms_random.normal,-4) || '-' || sys.dbms_random.string('a',8);

    insert into sp_comment_images
        (file_blob, unique_filename, filename, mimetype, blob_size, 
         created, created_by, image_ref_id)
    values
        (l_file, l_unique_filename, p_filename, p_mimetype, sys.dbms_lob.getlength(l_file), 
         sysdate, apex_application.g_user, p_image_ref_id);

    apex_json.open_object;

    -- P9000: Rejoin Sessions: Enabled for all sessions (where supported)
    apex_json.write('url', 
        apex_page.get_url (
            p_page => 9000,
            p_plain_url => true,
            p_x01  => l_unique_filename
        )
    );
 
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
end upload_image;


procedure display_image (
    p_unique_filename  in  varchar2 )
is
    l_file_blob  sp_comment_images.file_blob%type;
    l_mimetype   sp_comment_images.mimetype%type;
begin

    select file_blob, mimetype
      into l_file_blob, l_mimetype
      from sp_comment_images
     where unique_filename = apex_application.g_x01;

    apex_http.download (
        p_blob         => l_file_blob,
        p_content_type => l_mimetype,
        p_is_inline    => true );

end display_image;

-----------------------

function get_mentions (
    p_search     in  varchar2,
    p_scope      in  varchar2, -- PROJECT, TASK, RELEASE, INITIATIVE, FOCUS_AREA
    p_object_id  in  number
) return clob
as
    c_json_mentions_key  constant varchar2(10)   := 'mentions';
    c_search             constant varchar2(1000) := lower(p_search);
    c_search_length      constant number         := nvl(length(c_search),0);
    c_rows_returned      constant number         := 20;
    l_return             clob;
begin

    if instr(c_search, ' ') > 0 then-- in CK Editor if you start an "@" followed by spaces and then more words it keeps sending over (bug in CK Editor)
        return json_object(c_json_mentions_key value null);
    end if;

    select
        json_object(
                c_json_mentions_key value json_arrayagg(
                    json_object(
                        'name'        value name,
                        'email'       value email,
                        'id'          value '@' || screen_name, -- Must start with '@' and be called id
                        'avatarUrl'   value photo_url
                    )
                    returning clob
                )
                returning clob
        )
    into l_return
    from 
    (
    select * from 
    (
        with assoc_users as 
        (
        select owner_id tm_id
          from sp_projects
         where id = p_object_id
           and owner_id is not null
           and p_scope = 'PROJECT'
        union
        select c.team_member_id tm_id
          from sp_projects p,
               sp_project_contributors c
         where p.id = p_object_id
           and p.id = c.project_id
           and p_scope = 'PROJECT'
        union
        select t.owner_id tm_id
          from sp_projects p,
               sp_tasks t
         where p.id = p_object_id
           and p.id = t.project_id
           and t.owner_id is not null
           and p_scope = 'PROJECT'
        union
        select c.author_id tm_id
          from sp_projects p,
               sp_project_comments c
         where p.id = p_object_id
           and p.id = c.project_id
           and p_scope = 'PROJECT'
        union all

        select t.owner_id tm_id
          from sp_tasks t
         where t.id = p_object_id
           and t.owner_id is not null
           and p_scope = 'TASK'
        union
        select c.author_id tm_id
          from sp_tasks t,
               sp_task_comments c
         where t.id = p_object_id
           and t.id = c.task_id
           and p_scope = 'TASK'
        union
        select p.owner_id tm_id
          from sp_projects p,
               sp_tasks t
         where t.id = p_object_id
           and t.project_id = p.id
           and p.owner_id is not null
           and p_scope = 'TASK'
        union
        select c.team_member_id tm_id
          from sp_tasks t,
               sp_projects p,
               sp_project_contributors c
         where t.id = p_object_id
           and t.project_id = p.id
           and p.id = c.project_id
           and p_scope = 'TASK'
        union all

        select t.release_owner_id tm_id
          from sp_release_trains t
         where t.id = p_object_id
           and t.release_owner_id is not null
           and p_scope = 'RELEASE'
        union
        select c.author_id tm_id
          from sp_release_trains t,
               sp_release_comments c
         where t.id = p_object_id
           and t.id = c.release_id
           and p_scope = 'RELEASE'
        union
        select p.owner_id tm_id
          from sp_release_trains t,
               sp_projects p
         where t.id = p_object_id
           and t.id = p.release_id
           and p.owner_id is not null
           and p_scope = 'RELEASE'
        union all

        select a.owner_id tm_id
          from sp_areas a, sp_initiatives i
         where a.id = i.area_id
           and i.id = p_object_id
           and a.owner_id is not null
           and p_scope = 'INITIATIVE'
        union
        select i.sponsor_id tm_id
          from sp_areas a, sp_initiatives i
         where a.id = i.area_id
           and i.id = p_object_id
           and i.sponsor_id is not null
           and p_scope = 'INITIATIVE'
        union
        select c.author_id tm_id
          from sp_areas a, sp_initiatives i,
               sp_initiative_comments c
         where a.id = i.area_id
           and i.id = p_object_id
           and i.id = c.initiative_id
           and p_scope = 'INITIATIVE'
        union
        select f.development_owner_id tm_id
          from sp_areas a, sp_initiatives i,
               sp_initiative_focus_areas f
         where a.id = i.area_id
           and i.id = p_object_id
           and i.id = f.initiative_id
           and f.development_owner_id is not null
           and p_scope = 'INITIATIVE'
        union all

        select f.development_owner_id tm_id
          from sp_initiatives i,
               sp_initiative_focus_areas f
         where i.id = f.initiative_id
           and f.id = p_object_id
           and f.development_owner_id is not null
           and p_scope = 'FOCUS_AREA'
        union
        select i.sponsor_id tm_id
          from sp_initiatives i,
               sp_initiative_focus_areas f
         where i.id = f.initiative_id
           and f.id = p_object_id
           and i.sponsor_id is not null
           and p_scope = 'FOCUS_AREA'
        union
        select p.owner_id tm_id
          from sp_initiative_focus_areas f,
               sp_projects p
         where f.id = p.focus_area_id
           and f.id = p_object_id
           and p.owner_id is not null
           and p_scope = 'FOCUS_AREA'
        )
        select tm.first_name||' '||tm.last_name name,
               tm.email,
               tm.screen_name,
               case when tm.photo is not null
                    then apex_page.get_url (
                             p_page   => 160,
                             p_items  => 'P160_TM_ID',
                             p_values => tm.id )
                    end photo_url,
               instr(tm.screen_name,c_search) screen_name_instr,
               instr(tm.email,c_search) email_instr, 
               instr(lower(tm.first_name||' '||tm.last_name),c_search) name_instr,
               case when au.tm_id is not null then 1 else 2 end rank
          from sp_team_members tm,
               assoc_users au
         where tm.is_current_yn = 'Y'
           and tm.id = au.tm_id (+)
           and tm.screen_name is not null
           -- restrict mentions to associated users when only a few chars provided
           and tm.id = case when c_search_length <=2 then au.tm_id else tm.id end
    )
     where screen_name_instr > 0
        or email_instr > 0 
        or name_instr > 0
     order by rank, 
              nullif(screen_name_instr,0) nulls last, 
              nullif(email_instr,0) nulls last, 
              nullif(name_instr,0) nulls last,
              email
    ) where rownum <= c_rows_returned;

    return l_return;

end get_mentions;


function get_doc_links (
    p_search           in  varchar2,
    p_scope            in  varchar2, -- PROJECT, TASK, RELEASE, INITIATIVE, FOCUS_AREA,
    p_object_id        in  number
) return clob
as
    c_json_docs_key  constant varchar2(10)   := 'docs';
    c_search         constant varchar2(1000) := lower(p_search);
    c_search_length  constant number         := nvl(length(c_search),0);
    c_rows_returned  constant number         := 20;
    l_return         clob;
begin

    select
        json_object(
                c_json_docs_key value json_arrayagg(
                    json_object(
                        'id'          value '~' || filename, -- Must start with '~' and be called id
                        'filename'    value filename,
                        'addedby'     value addedby,
                        'addedon'     value addedon,
                        'url'         value doclink
                    )
                    returning clob
                )
                returning clob
        )
    into l_return
    from 
    (
    select document_id,
           apex_escape.html(document_filename) filename,
           case when (p_scope = 'PROJECT' and doc_type = 'Task') or
                     (p_scope = 'INITIATIVE' and doc_type = 'Initiative Focus Area')
                then '('||name||') '
                when (p_scope = 'TASK' and doc_type = 'Project') or
                     (p_scope = 'FOCUS_AREA' and doc_type = 'Initiative')
                then '('||doc_type||') '
                end || lower(added_by) addedby,
           apex_util.get_since(created) addedon,
           case when doc_type = 'Project'
                then apex_page.get_url (
                         p_page   => '30',
                         p_items  => 'P30_ID',
                         p_values => document_id,
                         p_clear_cache => '30',
                         p_plain_url => true ) 
                when doc_type = 'Task'
                then apex_page.get_url (
                         p_page   => '505',
                         p_items  => 'P505_ID',
                         p_values => document_id,
                         p_clear_cache => '505',
                         p_plain_url => true ) 
                when doc_type = 'Release'
                then apex_page.get_url (
                         p_page   => '42',
                         p_items  => 'P42_ID',
                         p_values => document_id,
                         p_clear_cache => '42',
                         p_plain_url => true )  
                when doc_type = 'Initiative'
                then apex_page.get_url (
                         p_page   => '53',
                         p_items  => 'P53_ID',
                         p_values => document_id,
                         p_clear_cache => '53',
                         p_plain_url => true )  
                when doc_type = 'Initiative Focus Area'
                then apex_page.get_url (
                         p_page   => '59',
                         p_items  => 'P59_ID',
                         p_values => document_id,
                         p_clear_cache => '59',
                         p_plain_url => true )  
           end doclink
      from SP_DOCUMENTS_V
     where ( (p_scope = 'PROJECT' and project_id = p_object_id) or
             (p_scope = 'TASK' and 
              (task_id = p_object_id or 
               (task_id is null and project_id in (select project_id from sp_tasks where id = p_object_id)))) or
             (p_scope = 'RELEASE' and release_id = p_object_id) or
             (p_scope = 'INITIATIVE' and initiative_id = p_object_id) or
             (p_scope = 'FOCUS_AREA' and 
              (initiative_focus_area_id = p_object_id or 
               (initiative_focus_area_id is null and initiative_id in (select initiative_id from sp_initiative_focus_areas where id = p_object_id)))) )
       and ( (doc_type in ('Project','Task') and p_scope in ('PROJECT','TASK')) or
             (doc_type in ('Initiative','Initiative Focus Area') and p_scope in ('INITIATIVE','FOCUS_AREA')) or
             upper(doc_type) = p_scope ) -- RELEASE
       and ( instr(lower(document_filename),c_search) > 0 or
             instr(lower(added_by),c_search) > 0 or
             c_search is null)
     order by document_filename nulls last, created desc
    ) where rownum <= c_rows_returned;

    return nvl(l_return,'[]');

end get_doc_links;


end sp_comment_util;
/