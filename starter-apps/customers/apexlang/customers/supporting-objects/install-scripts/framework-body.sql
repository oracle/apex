CREATE OR REPLACE PACKAGE BODY "EBA_CUST_FW" as
    function conv_txt_html (
        p_txt_message in varchar2 )
        return varchar2
    is
        l_html_message   varchar2(32767) default p_txt_message;
        l_temp_url varchar2(32767) := null;
        l_length number;
    begin
        l_html_message := replace(l_html_message, chr(10), '<br />');
        l_html_message := replace(l_html_message, chr(13), null);
        return l_html_message;
    end conv_txt_html;
    function conv_urls_links (
        p_string in varchar2 )
        return varchar2
    is
        l_string   varchar2(32767) default p_string;
        l_endofUrl varchar2(4000) default chr(10) || chr(13) || chr(9) || ' )<>';
        l_url         varchar2(4000);
        l_current_pos number := 1;
        n             number := 1;
        m             number := 1;
        p             number := 1;
    begin
        l_string := p_string || ' ';
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), 'http://', l_current_pos );
            m := instr( lower(l_string), 'https://', l_current_pos );
            p := instr( lower(l_string), 'ftp://', l_current_pos   );
            -- set n to position of first link
            if m > 0 and (n = 0 or m < n) and (p = 0 or m < p) then
               n := m;
            elsif p > 0 and (n = 0 or p < n) then
               n := p;
            end if;
            exit when n = 0 or length(l_string) > 32000;
            for j in 0 .. length( l_string ) - n loop
                if ( instr( l_endofUrl, substr( l_string, n+j, 1 ) ) > 0 ) then
                   l_url := rtrim( substr( l_string, n, j ), '.'||chr(32)||chr(10) );
                   l_url := '<a href="' || l_url || '">' || l_url || '</a>';
                   l_string := substr( l_string, 1, n-1 ) || l_url || substr( l_string, n+j );
                   l_current_pos := n + length(l_url);
                   exit;
                end if;
            end loop;
        end loop;
        return l_string;
    end conv_urls_links;
    function tags_cleaner (
        p_tags  in varchar2,
        p_case  in varchar2 default 'U' )
        return varchar2
    is
        type tags is table of varchar2(255) index by varchar2(255);
        l_tags_a        tags;
        l_tag           varchar2(255);
        l_tags          apex_application_global.vc_arr2;
        l_tags_string   varchar2(32767);
        i               integer;
    begin
        l_tags := apex_util.string_to_table(p_tags,',');
        for i in 1..l_tags.count loop
            --remove all whitespace, including tabs, spaces, line feeds and carraige returns with a single space
            l_tag := substr(trim(regexp_replace(l_tags(i),'[[:space:]]{1,}',' ')),1,255);
            if l_tag is not null and l_tag != ' ' then
                if p_case = 'U' then
                    l_tag := upper(l_tag);
                elsif p_case = 'L' then
                    l_tag := lower(l_tag);
                end if;
                --add it to the associative array, if it is a duplicate, it will just be replaced
                l_tags_a(l_tag) := l_tag;
            end if;
        end loop;
        l_tag := null;
        l_tag := l_tags_a.first;
        while l_tag is not null loop
            l_tags_string := l_tags_string||l_tag;
            if l_tag != l_tags_a.last then
                l_tags_string := l_tags_string || ', ';
            end if;
            l_tag := l_tags_a.next(l_tag);
        end loop;
        return substr(l_tags_string, 1, 4000);
    end tags_cleaner;
    procedure tag_sync (
        p_new_tags          in varchar2,
        p_old_tags          in varchar2,
        p_content_type      in varchar2,
        p_content_id        in number )
    as
        type tags is table of varchar2(255) index by varchar2(255);
        l_new_tags_a    tags;
        l_old_tags_a    tags;
        l_new_tags      apex_application_global.vc_arr2;
        l_old_tags      apex_application_global.vc_arr2;
        l_merge_tags    apex_application_global.vc_arr2;
        l_dummy_tag     varchar2(255);
        i               integer;
    begin
        l_old_tags := apex_util.string_to_table(p_old_tags,', ');
        l_new_tags := apex_util.string_to_table(p_new_tags,', ');
        if l_old_tags.count > 0 then --do inserts and deletes
            --build the associative arrays
            for i in 1..l_old_tags.count loop
                l_old_tags_a(l_old_tags(i)) := l_old_tags(i);
            end loop;
            for i in 1..l_new_tags.count loop
                l_new_tags_a(l_new_tags(i)) := l_new_tags(i);
            end loop;
            --do the inserts
            for i in 1..l_new_tags.count loop
                begin
                    l_dummy_tag := l_old_tags_a(l_new_tags(i));
                exception when no_data_found then
                    insert into eba_cust_tags (tag, content_id, content_type )
                    values (l_new_tags(i), p_content_id, p_content_type );
                    l_merge_tags(l_merge_tags.count + 1) := l_new_tags(i);
                end;
            end loop;
            --do the deletes
            for i in 1..l_old_tags.count loop
                begin
                    l_dummy_tag := l_new_tags_a(l_old_tags(i));
                exception when no_data_found then
                    delete from eba_cust_tags where content_id = p_content_id and tag = l_old_tags(i);
                    l_merge_tags(l_merge_tags.count + 1) := l_old_tags(i);
                end;
            end loop;
        else --just do inserts
            for i in 1..l_new_tags.count loop
                insert into eba_cust_tags (tag, content_id, content_type )
                values (l_new_tags(i), p_content_id, p_content_type );
                l_merge_tags(l_merge_tags.count + 1) := l_new_tags(i);
            end loop;
        end if;
        for i in 1..l_merge_tags.count loop
            merge into eba_cust_tags_type_sum s
            using (select count(*) tag_count
                     from eba_cust_tags
                    where tag = l_merge_tags(i) and content_type = p_content_type ) t
            on (s.tag = l_merge_tags(i) and s.content_type = p_content_type )
            when not matched then insert (tag, content_type, tag_count)
                                  values (l_merge_tags(i), p_content_type, t.tag_count)
            when matched then update set s.tag_count = t.tag_count;
            merge into eba_cust_tags_sum s
            using (select sum(tag_count) tag_count
                     from eba_cust_tags_type_sum
                    where tag = l_merge_tags(i) ) t
            on (s.tag = l_merge_tags(i) )
            when not matched then insert (tag, tag_count)
                                  values (l_merge_tags(i), t.tag_count)
            when matched then update set s.tag_count = t.tag_count;
        end loop;
    end tag_sync;
    function selective_escape (
        p_text  in varchar2,
        p_tags  in varchar2 default '<h2>,</h2>,<p>,</p>,<b>,</b>,<li>,</li>,<ul>,</ul>,<br />,<i>,</i>,<h3>,</h3>'
        ) return varchar2
    is
        t apex_application_global.vc_arr2;
        x varchar2(32767) := p_text;
    begin
        t := apex_util.string_to_table(p_tags, ',');
        for i in 1..t.count loop
            x := replace(x,t(i),'Aa'||i||'aA');
        end loop;
        x := apex_escape.html(x);
        for i in 1..t.count loop
            x := replace(x,'Aa'||i||'aA',t(i));
        end loop;
        return x;
    end selective_escape;
    function get_preference_value (
        p_preference_name varchar2 )
        return varchar2
    is
        l_preference_value varchar2(255);
    begin
        select preference_value
            into l_preference_value
        from eba_cust_preferences
        where preference_name = p_preference_name;
        return l_preference_value;
    exception
        when no_data_found then
            return 'Preference does not exist';
    end get_preference_value;
    procedure set_preference_value (
        p_preference_name  varchar2, 
        p_preference_value varchar2 )
    is
    begin
        merge into eba_cust_preferences dest
        using ( select upper(p_preference_name) preference_name,
                    p_preference_value preference_value
                from dual ) src
        on ( upper(dest.preference_name) = src.preference_name )
        when matched then
            update set dest.preference_value = src.preference_value
        when not matched then
            insert (dest.preference_name, dest.preference_value)
            values (src.preference_name, src.preference_value);
    end set_preference_value;
    function compress_int (
        n in integer )
        return varchar2
    as
        ret varchar2(30);
        quotient integer;
        remainder integer;
        digit char(1);
    begin
        ret := '';
        quotient := n;
        while quotient > 0
        loop
            remainder := mod(quotient, 10 + 26);
            quotient := floor(quotient  / (10 + 26));
            if remainder < 26 then
                digit := chr(ascii('A') + remainder);
            else
                digit := chr(ascii('0') + remainder - 26);
            end if;
            ret := digit || ret;
        end loop ;
        if length(ret) < 5 then
            ret := lpad(ret, 4, 'A');
        end if ;
        return upper(ret);
    end compress_int;
    procedure add_error_log ( 
        p_error in apex_error.t_error )
    is
    pragma autonomous_transaction;
    begin
        -- Remove old errors
        delete from eba_cust_errors where err_time <= current_timestamp - 21;
        -- Log the error.
        insert into eba_cust_errors (
            app_id,
            app_page_id,
            app_user,
            user_agent,
            ip_address,
            ip_address2,
            message,
            page_item_name,
            region_id,
            column_alias,
            row_num,
            apex_error_code,
            ora_sqlcode,
            ora_sqlerrm,
            error_backtrace )
        select v('APP_ID'),
            v('APP_PAGE_ID'),
            v('APP_USER'),
            owa_util.get_cgi_env('HTTP_USER_AGENT'),
            owa_util.get_cgi_env('REMOTE_ADDR'),
            sys_context('USERENV', 'IP_ADDRESS'),
            substr(p_error.message,0,4000),
            p_error.page_item_name,
            p_error.region_id,
            p_error.column_alias,
            p_error.row_num,
            p_error.apex_error_code,
            p_error.ora_sqlcode,
            substr(p_error.ora_sqlerrm,0,4000),
            substr(p_error.error_backtrace,0,4000)
        from dual;
        commit;
    end add_error_log;
    function apex_error_handling (
        p_error in apex_error.t_error )
        return apex_error.t_error_result
    is
        l_result          apex_error.t_error_result;
        l_constraint_name varchar2(255);
    begin
        l_result := apex_error.init_error_result (
                        p_error => p_error );
        -- If it is an internal error raised by APEX, like an invalid statement or
        -- code which can not be executed, the error text might contain security sensitive
        -- information. To avoid this security problem we can rewrite the error to
        -- a generic error message and log the original error message for further
        -- investigation by the help desk.
        if p_error.is_internal_error then
            -- mask all errors that are not common runtime errors (Access Denied
            -- errors raised by application / page authorization and all errors
            -- regarding session and session state)
            if not p_error.is_common_runtime_error then
                add_error_log( p_error );
                -- Change the message to the generic error message which doesn't expose
                -- any sensitive information.
                l_result.message         := 'An unexpected internal application error has occurred.';
                l_result.additional_info := null;
            end if;
        else
            -- Always show the error as inline error
            -- Note: If you have created manual tabular forms (using the package
            --       apex_item/htmldb_item in the SQL statement) you should still
            --       use "On error page" on that pages to avoid loosing entered data
            l_result.display_location := case
                                           when l_result.display_location = apex_error.c_on_error_page then apex_error.c_inline_in_notification
                                           else l_result.display_location
                                         end;
            -- If it's a constraint violation like
            --
            --   -) ORA-00001: unique constraint violated
            --   -) ORA-02091: transaction rolled back (-> can hide a deferred constraint)
            --   -) ORA-02290: check constraint violated
            --   -) ORA-02291: integrity constraint violated - parent key not found
            --   -) ORA-02292: integrity constraint violated - child record found
            --
            -- we try to get a friendly error message from our constraint lookup configuration.
            -- If we don't find the constraint in our lookup table we fallback to
            -- the original ORA error message.
            if p_error.ora_sqlcode in (-1, -2091, -2290, -2291, -2292) then
                l_constraint_name := apex_error.extract_constraint_name (
                                         p_error => p_error );
                begin
                    select message
                      into l_result.message
                      from eba_cust_error_lookup
                     where constraint_name = l_constraint_name;
                exception when no_data_found then null; -- not every constraint has to be in our lookup table
                end;
            end if;
            -- If an ORA error has been raised, for example a raise_application_error(-20xxx, '...')
            -- in a table trigger or in a PL/SQL package called by a process and we
            -- haven't found the error in our lookup table, then we just want to see
            -- the actual error text and not the full error stack with all the ORA error numbers.
            if p_error.ora_sqlcode is not null and l_result.message = p_error.message then
                l_result.message := apex_error.get_first_ora_error_text (
                                        p_error => p_error );
            end if;
            -- If no associated page item/tabular form column has been set, we can use
            -- apex_error.auto_set_associated_item to automatically guess the affected
            -- error field by examine the ORA error for constraint names or column names.
            if l_result.page_item_name is null and l_result.column_alias is null then
                apex_error.auto_set_associated_item (
                    p_error        => p_error,
                    p_error_result => l_result );
            end if;
        end if;
        return l_result;
    end apex_error_handling;
end eba_cust_fw;
/
show errors