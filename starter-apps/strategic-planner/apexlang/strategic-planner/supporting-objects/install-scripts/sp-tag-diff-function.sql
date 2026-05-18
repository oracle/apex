create or replace function sp_tag_diff (
    p_old_tags in varchar2,
    p_new_tags in varchar2)
    return varchar2 
is
    --
    -- Example:
    --
    -- begin dbms_output.put_line(sp_tag_diff (p_old_tags => 'A,C',p_new_tags => 'B,C,D')); end;
    --
    l_return        varchar2(32767);
    l_vc_arr_old    APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_vc_arr_new    APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_plus_string   varchar2(32767);
    l_minus_string  varchar2(32767);
    l_old_tags      varchar2(32767) := upper(','||replace(p_old_tags,' ','')||',');
    l_new_tags      varchar2(32767) := upper(','||replace(p_new_tags,' ','')||',');
begin
    l_vc_arr_old := APEX_UTIL.STRING_TO_TABLE(upper(replace(p_old_tags,' ',null)),',');
    l_vc_arr_new := APEX_UTIL.STRING_TO_TABLE(upper(replace(p_new_tags,' ',null)),',');
    --
    -- look for removed tags
    --
    for i in 1..l_vc_arr_old.count loop
        if instr(l_new_tags,','||l_vc_arr_old(i)||',') = 0 then
            l_return := l_return||'<span class="t-Badge u-danger">'||apex_escape.html(l_vc_arr_old(i))||'</span> ';
        end if;
    end loop;
    --
    -- look for new tags
    --
    for i in 1..l_vc_arr_new.count loop
        if instr(l_old_tags,','||l_vc_arr_new(i)||',') = 0 then
            l_return := l_return||'<span class="t-Badge u-success">'||apex_escape.html(l_vc_arr_new(i))||'</span> ';
        end if;
    end loop;
    --
    --
    --
    return l_return;
end;
/