create or replace package body eba_qpoll as 
    ------------------------------------------------------------------------- 
    -- Gets the current user's authorization level. Depends on the following: 
    --  * If access control is currently disabled, returns highest role of ADMINISTRATOR. 
    --  * If access control is enabled, but user is not in list, returns NONE. 
    --  * If access control is enabled and user is in list, returns their 
    --    access level. 
    ------------------------------------------------------------------------- 
    function get_access_role ( 
        p_app_id               number, 
        p_username             varchar2 ) 
        return varchar2 
    is 
    begin 
        -- If the user isn't authenticated, they have no privilege. 
        if not apex_authentication.is_authenticated then 
            return 'NONE'; 
        end if; 
        -- If access control is disabled, default to highest privilege 
        if eba_qpoll_fw.get_preference_value('ACCESS_CONTROL_ENABLED') = 'N' then 
            return 'ADMINISTRATOR'; 
        elsif 
            APEX_ACL.HAS_USER_ROLE ( 
                p_application_id  => p_app_id, 
                p_user_name       => p_username, 
                p_role_static_id  => 'ADMINISTRATOR' )  
            then return 'ADMINISTRATOR'; 
        elsif eba_qpoll_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_CONTRIBUTE' then 
            return 'CONTRIBUTOR';  
        elsif 
            APEX_ACL.HAS_USER_ROLE ( 
                p_application_id  => p_app_id, 
                p_user_name       => p_username, 
                p_role_static_id  => 'CONTRIBUTOR' )  
            then return 'CONTRIBUTOR'; 
        elsif eba_qpoll_fw.get_preference_value('ACCESS_CONTROL_SCOPE') = 'PUBLIC_READONLY' then 
            return 'READER';  
        elsif 
            APEX_ACL.HAS_USER_ROLE ( 
                p_application_id  => p_app_id, 
                p_user_name       => p_username, 
                p_role_static_id  => 'READER' )  
            then return 'READER'; 
        else 
            return 'NONE'; 
        end if;          
    end get_access_role; 
 
 
-- returns error if mandatory questions are not answered 
function validate_submission 
   return varchar2 
as 
   x              varchar2(32767); 
   l_error_text   varchar2(4000); 
begin 
for i in 1..20 loop 
    begin x := apex_application.g_f01(i); exception when others then apex_application.g_f01(i) := ''; end; 
    begin x := apex_application.g_f02(i); exception when others then apex_application.g_f02(i) := ''; end; 
    begin x := apex_application.g_f03(i); exception when others then apex_application.g_f03(i) := ''; end; 
    begin x := apex_application.g_f04(i); exception when others then apex_application.g_f04(i) := ''; end; 
    begin x := apex_application.g_f05(i); exception when others then apex_application.g_f05(i) := ''; end; 
    begin x := apex_application.g_f06(i); exception when others then apex_application.g_f06(i) := ''; end; 
    begin x := apex_application.g_f07(i); exception when others then apex_application.g_f07(i) := ''; end; 
    begin x := apex_application.g_f08(i); exception when others then apex_application.g_f08(i) := ''; end; 
    begin x := apex_application.g_f09(i); exception when others then apex_application.g_f09(i) := ''; end; 
    begin x := apex_application.g_f10(i); exception when others then apex_application.g_f10(i) := ''; end; 
    begin x := apex_application.g_f11(i); exception when others then apex_application.g_f11(i) := ''; end; 
    begin x := apex_application.g_f12(i); exception when others then apex_application.g_f12(i) := ''; end; 
    begin x := apex_application.g_f13(i); exception when others then apex_application.g_f13(i) := ''; end; 
    begin x := apex_application.g_f14(i); exception when others then apex_application.g_f14(i) := ''; end; 
    begin x := apex_application.g_f15(i); exception when others then apex_application.g_f15(i) := ''; end; 
    begin x := apex_application.g_f16(i); exception when others then apex_application.g_f16(i) := ''; end; 
    begin x := apex_application.g_f17(i); exception when others then apex_application.g_f17(i) := ''; end; 
    begin x := apex_application.g_f18(i); exception when others then apex_application.g_f18(i) := ''; end; 
    begin x := apex_application.g_f19(i); exception when others then apex_application.g_f19(i) := ''; end; 
    begin x := apex_application.g_f20(i); exception when others then apex_application.g_f20(i) := ''; end; 
    -- 
    begin x := apex_application.g_f50(i); exception when others then apex_application.g_f50(i) := ''; end; 
end loop; 
for j in 1..20 loop 
    if length(apex_application.g_f50(j)) > 0 then 
       for c1 in ( 
           select mandatory_yn 
             from EBA_QPOLL_QUESTIONS 
            where id = apex_application.g_f50(j) 
       ) loop 
          if c1.mandatory_yn = 'Y' then 
             if j = 1 then 
                if apex_application.g_f01(1) is null and 
                   apex_application.g_f01(2) is null and 
                   apex_application.g_f01(3) is null and 
                   apex_application.g_f01(4) is null and 
                   apex_application.g_f01(5) is null and 
                   apex_application.g_f01(6) is null and 
                   apex_application.g_f01(7) is null and 
                   apex_application.g_f01(8) is null and 
                   apex_application.g_f01(9) is null and 
                   apex_application.g_f01(10) is null 
                 then 
                   l_error_text := 'Question 1 is mandatory.  '; 
                 end if; 
             elsif j = 2 then 
                if apex_application.g_f02(1) is null and 
                   apex_application.g_f02(2) is null and 
                   apex_application.g_f02(3) is null and 
                   apex_application.g_f02(4) is null and 
                   apex_application.g_f02(5) is null and 
                   apex_application.g_f02(6) is null and 
                   apex_application.g_f02(7) is null and 
                   apex_application.g_f02(8) is null and 
                   apex_application.g_f02(9) is null and 
                   apex_application.g_f02(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 2 is mandatory.  '; 
                 end if; 
             elsif j = 3 then 
                if apex_application.g_f03(1) is null and 
                   apex_application.g_f03(2) is null and 
                   apex_application.g_f03(3) is null and 
                   apex_application.g_f03(4) is null and 
                   apex_application.g_f03(5) is null and 
                   apex_application.g_f03(6) is null and 
                   apex_application.g_f03(7) is null and 
                   apex_application.g_f03(8) is null and 
                   apex_application.g_f03(9) is null and 
                   apex_application.g_f03(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 3 is mandatory.  '; 
                 end if; 
             elsif j = 4 then 
                if apex_application.g_f04(1) is null and 
                   apex_application.g_f04(2) is null and 
                   apex_application.g_f04(3) is null and 
                   apex_application.g_f04(4) is null and 
                   apex_application.g_f04(5) is null and 
                   apex_application.g_f04(6) is null and 
                   apex_application.g_f04(7) is null and 
                   apex_application.g_f04(8) is null and 
                   apex_application.g_f04(9) is null and 
                   apex_application.g_f04(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 4 is mandatory.  '; 
                 end if; 
             elsif j = 5 then 
                if apex_application.g_f05(1) is null and 
                   apex_application.g_f05(2) is null and 
                   apex_application.g_f05(3) is null and 
                   apex_application.g_f05(4) is null and 
                   apex_application.g_f05(5) is null and 
                   apex_application.g_f05(6) is null and 
                   apex_application.g_f05(7) is null and 
                   apex_application.g_f05(8) is null and 
                   apex_application.g_f05(9) is null and 
                   apex_application.g_f05(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 5 is mandatory.  '; 
                 end if; 
             elsif j = 6 then 
                if apex_application.g_f06(1) is null and 
                   apex_application.g_f06(2) is null and 
                   apex_application.g_f06(3) is null and 
                   apex_application.g_f06(4) is null and 
                   apex_application.g_f06(5) is null and 
                   apex_application.g_f06(6) is null and 
                   apex_application.g_f06(7) is null and 
                   apex_application.g_f06(8) is null and 
                   apex_application.g_f06(9) is null and 
                   apex_application.g_f06(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 6 is mandatory.  '; 
                 end if; 
             elsif j = 7 then 
                if apex_application.g_f07(1) is null and 
                   apex_application.g_f07(2) is null and 
                   apex_application.g_f07(3) is null and 
                   apex_application.g_f07(4) is null and 
                   apex_application.g_f07(5) is null and 
                   apex_application.g_f07(6) is null and 
                   apex_application.g_f07(7) is null and 
                   apex_application.g_f07(8) is null and 
                   apex_application.g_f07(9) is null and 
                   apex_application.g_f07(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 7 is mandatory.  '; 
                 end if; 
             elsif j = 8 then 
                if apex_application.g_f08(1) is null and 
                   apex_application.g_f08(2) is null and 
                   apex_application.g_f08(3) is null and 
                   apex_application.g_f08(4) is null and 
                   apex_application.g_f08(5) is null and 
                   apex_application.g_f08(6) is null and 
                   apex_application.g_f08(7) is null and 
                   apex_application.g_f08(8) is null and 
                   apex_application.g_f08(9) is null and 
                   apex_application.g_f08(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 8 is mandatory.  '; 
                 end if; 
             elsif j = 9 then 
                if apex_application.g_f09(1) is null and 
                   apex_application.g_f09(2) is null and 
                   apex_application.g_f09(3) is null and 
                   apex_application.g_f09(4) is null and 
                   apex_application.g_f09(5) is null and 
                   apex_application.g_f09(6) is null and 
                   apex_application.g_f09(7) is null and 
                   apex_application.g_f09(8) is null and 
                   apex_application.g_f09(9) is null and 
                   apex_application.g_f09(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 9 is mandatory.  '; 
                 end if; 
             elsif j = 10 then 
                if apex_application.g_f10(1) is null and 
                   apex_application.g_f10(2) is null and 
                   apex_application.g_f10(3) is null and 
                   apex_application.g_f10(4) is null and 
                   apex_application.g_f10(5) is null and 
                   apex_application.g_f10(6) is null and 
                   apex_application.g_f10(7) is null and 
                   apex_application.g_f10(8) is null and 
                   apex_application.g_f10(9) is null and 
                   apex_application.g_f10(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 10 is mandatory.  '; 
                 end if; 
             elsif j = 11 then 
                if apex_application.g_f11(1) is null and 
                   apex_application.g_f11(2) is null and 
                   apex_application.g_f11(3) is null and 
                   apex_application.g_f11(4) is null and 
                   apex_application.g_f11(5) is null and 
                   apex_application.g_f11(6) is null and 
                   apex_application.g_f11(7) is null and 
                   apex_application.g_f11(8) is null and 
                   apex_application.g_f11(9) is null and 
                   apex_application.g_f11(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 11 is mandatory.  '; 
                 end if; 
             elsif j = 12 then 
                if apex_application.g_f12(1) is null and 
                   apex_application.g_f12(2) is null and 
                   apex_application.g_f12(3) is null and 
                   apex_application.g_f12(4) is null and 
                   apex_application.g_f12(5) is null and 
                   apex_application.g_f12(6) is null and 
                   apex_application.g_f12(7) is null and 
                   apex_application.g_f12(8) is null and 
                   apex_application.g_f12(9) is null and 
                   apex_application.g_f12(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 12 is mandatory.  '; 
                 end if; 
             elsif j = 13 then 
                if apex_application.g_f13(1) is null and 
                   apex_application.g_f13(2) is null and 
                   apex_application.g_f13(3) is null and 
                   apex_application.g_f13(4) is null and 
                   apex_application.g_f13(5) is null and 
                   apex_application.g_f13(6) is null and 
                   apex_application.g_f13(7) is null and 
                   apex_application.g_f13(8) is null and 
                   apex_application.g_f13(9) is null and 
                   apex_application.g_f13(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 13 is mandatory.  '; 
                 end if; 
             elsif j = 14 then 
                if apex_application.g_f14(1) is null and 
                   apex_application.g_f14(2) is null and 
                   apex_application.g_f14(3) is null and 
                   apex_application.g_f14(4) is null and 
                   apex_application.g_f14(5) is null and 
                   apex_application.g_f14(6) is null and 
                   apex_application.g_f14(7) is null and 
                   apex_application.g_f14(8) is null and 
                   apex_application.g_f14(9) is null and 
                   apex_application.g_f14(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 14 is mandatory.  '; 
                 end if; 
             elsif j = 15 then 
                if apex_application.g_f15(1) is null and 
                   apex_application.g_f15(2) is null and 
                   apex_application.g_f15(3) is null and 
                   apex_application.g_f15(4) is null and 
                   apex_application.g_f15(5) is null and 
                   apex_application.g_f15(6) is null and 
                   apex_application.g_f15(7) is null and 
                   apex_application.g_f15(8) is null and 
                   apex_application.g_f15(9) is null and 
                   apex_application.g_f15(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 15 is mandatory.  '; 
                 end if; 
             elsif j = 16 then 
                if apex_application.g_f16(1) is null and 
                   apex_application.g_f16(2) is null and 
                   apex_application.g_f16(3) is null and 
                   apex_application.g_f16(4) is null and 
                   apex_application.g_f16(5) is null and 
                   apex_application.g_f16(6) is null and 
                   apex_application.g_f16(7) is null and 
                   apex_application.g_f16(8) is null and 
                   apex_application.g_f16(9) is null and 
                   apex_application.g_f16(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 16 is mandatory.  '; 
                 end if; 
             elsif j = 17 then 
                if apex_application.g_f17(1) is null and 
                   apex_application.g_f17(2) is null and 
                   apex_application.g_f17(3) is null and 
                   apex_application.g_f17(4) is null and 
                   apex_application.g_f17(5) is null and 
                   apex_application.g_f17(6) is null and 
                   apex_application.g_f17(7) is null and 
                   apex_application.g_f17(8) is null and 
                   apex_application.g_f17(9) is null and 
                   apex_application.g_f17(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 17 is mandatory.  '; 
                 end if; 
             elsif j = 18 then 
                if apex_application.g_f18(1) is null and 
                   apex_application.g_f18(2) is null and 
                   apex_application.g_f18(3) is null and 
                   apex_application.g_f18(4) is null and 
                   apex_application.g_f18(5) is null and 
                   apex_application.g_f18(6) is null and 
                   apex_application.g_f18(7) is null and 
                   apex_application.g_f18(8) is null and 
                   apex_application.g_f18(9) is null and 
                   apex_application.g_f18(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 18 is mandatory.  '; 
                 end if; 
             elsif j = 19 then 
                if apex_application.g_f19(1) is null and 
                   apex_application.g_f19(2) is null and 
                   apex_application.g_f19(3) is null and 
                   apex_application.g_f19(4) is null and 
                   apex_application.g_f19(5) is null and 
                   apex_application.g_f19(6) is null and 
                   apex_application.g_f19(7) is null and 
                   apex_application.g_f19(8) is null and 
                   apex_application.g_f19(9) is null and 
                   apex_application.g_f19(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 19 is mandatory.  '; 
                 end if; 
             elsif j = 20 then 
                if apex_application.g_f20(1) is null and 
                   apex_application.g_f20(2) is null and 
                   apex_application.g_f20(3) is null and 
                   apex_application.g_f20(4) is null and 
                   apex_application.g_f20(5) is null and 
                   apex_application.g_f20(6) is null and 
                   apex_application.g_f20(7) is null and 
                   apex_application.g_f20(8) is null and 
                   apex_application.g_f20(9) is null and 
                   apex_application.g_f20(10) is null 
                 then 
                   l_error_text := l_error_text || 'Question 20 is mandatory.  '; 
                 end if; 
             end if; 
          end if; 
       end loop; -- c1 
    end if; 
end loop; --j 
if l_error_text is not null then 
   l_error_text := 'Error: ' || l_error_text; 
end if; 
return l_error_text; 
end validate_submission; 
 
procedure remove_preactive_results ( 
    p_poll_id   in  number ) 
is 
begin 
    delete from eba_qpoll_results 
     where poll_id = p_poll_id 
       and preactive_yn = 'Y'; 
    commit; 
end remove_preactive_results; 
 
function poll_take_status ( 
   p_app_id       in  number, 
   p_poll_id      in  number, 
   p_app_user     in  varchar2, 
   p_app_session  in  number ) 
   return varchar2 
is 
   l_take_status  varchar2(30) := 'OTHER'; -- CAN_TAKE_IT, HAS_ERRORS, CAN_UPDATE, OTHER 
begin 
   for c1 in ( 
      select 'CAN_TAKE_IT' take_status 
        from eba_qpoll_polls p 
       where p.id = p_poll_id 
         and (p.status_id = 3 or 
              (p.status_id = 2 and  
               get_access_role ( 
                  p_app_id   => p_app_id, 
                  p_username => p_app_user) in ('CONTRIBUTOR','ADMINISTRATOR')))  
         and not exists (select 1 
                           from eba_qpoll_results 
                          where poll_id = p.id 
                            and ((p.anonymous_yn = 'Y' and  
                                  APEX_SESSION_ID = p_app_session and 
                                  is_valid_yn = 'N') or 
                                 apex_user = p_app_user) ) 
         and ( invite_only_yn = 'N' or  
              (p.status_id = 2 and  
               get_access_role ( 
                  p_app_id   => p_app_id, 
                  p_username => p_app_user) in ('CONTRIBUTOR','ADMINISTRATOR')) or 
               exists (select 1  
                         from eba_qpoll_comm_invites c, eba_qpoll_invites i 
                        where c.poll_id = p_poll_id and c.id = i.comm_invite_id 
                          and upper(respondent_email) = p_app_user)) 
   ) loop 
      l_take_status := c1.take_status; 
   end loop; 
   if l_take_status = 'OTHER' then 
      for c2 in ( 
         select 'CAN_UPDATE' take_status 
           from eba_qpoll_polls p, 
                eba_qpoll_results r 
         where p.id = p_poll_id 
           and p.id = r.poll_id 
           and (p.status_id = 3 or 
                (p.status_id = 2 and  
                 get_access_role ( 
                    p_app_id   => p_app_id, 
                    p_username => p_app_user) in ('CONTRIBUTOR','ADMINISTRATOR')))   
           and r.apex_user = p_app_user 
           and p.can_update_answers_yn = 'Y' 
           and nvl(r.is_valid_yn,'Y') = 'Y' 
      ) loop 
         l_take_status := c2.take_status; 
      end loop; 
   end if; 
   if l_take_status = 'OTHER' then 
      for c3 in ( 
         select 'HAS_ERRORS' take_status 
           from eba_qpoll_polls p, 
                eba_qpoll_results r 
         where p.id = p_poll_id 
           and p.id = r.poll_id 
           and (p.status_id = 3 or 
                (p.status_id = 2 and  
                 get_access_role ( 
                    p_app_id   => p_app_id, 
                    p_username => p_app_user) in ('CONTRIBUTOR','ADMINISTRATOR')))  
           and ((p.anonymous_yn = 'Y' and  
                 r.APEX_SESSION_ID = p_app_session and 
                 is_valid_yn = 'N') or 
                r.apex_user = p_app_user)  
           and nvl(r.is_valid_yn,'Y') = 'N' 
      ) loop 
         l_take_status := c3.take_status; 
      end loop; 
   end if; 
   return l_take_status; 
     
end poll_take_status; 
 
procedure write_clob (  
       p_clob    in out clob, 
       p_content in     varchar2 
     )  
    is 
    begin 
       if p_content is not null then 
          sys.dbms_lob.writeappend( p_clob, length( p_content ), p_content ); 
       end if; 
    end write_clob; 
    procedure write_clob (  
       p_clob    in out clob, 
       p_content in     clob  
    )  
    is 
       l_length  integer := sys.dbms_lob.getlength(p_content); 
    begin 
--       sys.dbms_lob.append( p_clob, p_content ); 
       if p_content is not null then 
          for i in 1 .. ceil(l_length/4000) loop 
             write_clob( p_clob, sys.dbms_lob.substr(p_content, least(4000,l_length-((i-1)*4000)), 1+((i-1)*4000)) ); 
          end loop; 
       end if; 
    end write_clob; 
 
-- used for emailing results 
function prepare_poll_results ( 
   p_poll_id  number 
) 
return clob 
is 
   l_found              boolean := false; 
   c                    integer := 0; 
   a                    integer := 0; 
   l_max                number; 
   l_Pct2               number; 
   l_label              wwv_flow_global.vc_arr2; 
   l_answer             wwv_flow_global.vc_arr2; 
   l_count              wwv_flow_global.n_arr; 
   l_respondents        integer := 0; 
   l_correct_answer_yn  varchar2(1) := 'N'; 
   l_section_id         number; 
   l_html_body          clob; 
   
   procedure paint_answer ( 
      p_count           in number    default null,  
      p_pct             in number    default null,  
      p_label           in varchar2  default null, 
      p_correct_answer  in varchar2  default null)  
   is 
   begin 
      if p_label is not null then 
        l_pct2 := round(100 * (p_count/l_respondents)); 
        write_clob(l_html_body, '<tr>'); 
        write_clob(l_html_body, '  <td class="ch-heading" style="font-weight: bold;font-size: 14px;line-height: 16px;text-align: left;">'); 
        if p_correct_answer = 'Y' then 
           write_clob(l_html_body, '* '); 
        end if; 
        write_clob(l_html_body, apex_escape.html(p_label)||'</td>'); 
        write_clob(l_html_body, '  <td class="ch-chart" style="width: 50%;">'); 
        write_clob(l_html_body, '    <table class="ch-pct" width="'||apex_escape.html(l_pct2)||'%" style="background-color: #B8B8B8;height: 16px;">'); 
        write_clob(l_html_body, '      <tr>'); 
        write_clob(l_html_body, '        <td></td>'); 
        write_clob(l_html_body, '      </tr>'); 
        write_clob(l_html_body, '    </table>'); 
        write_clob(l_html_body, '  </td>'); 
        write_clob(l_html_body, '  <td class="ch-value" style="font-size: 14px;line-height: 16px;color: #707070;" nowrap="nowrap">'||p_count||' ('||l_pct2||'%)</td>'); 
        write_clob(l_html_body, '</tr>'); 
      end if; 
   end; 
begin 
   sys.dbms_lob.createtemporary( l_html_body, false ); 
   for c0 in ( 
      select p.poll_name, p.poll_details, p.enable_score_yn, 
             p.poll_or_quiz, p.score_type, p.use_sections_yn, 
             nvl((select max(display_sequence)+10 from eba_qpoll_questions q 
                   where q.poll_id = p.id 
                     and p.use_sections_yn = 'Y'),10) max_question_seq 
        from eba_qpoll_polls p 
       where p.id = p_poll_id 
   ) loop 
      write_clob(l_html_body, '<table cellpadding="4">'); 
      if c0.poll_details is not null  then 
         write_clob(l_html_body, '<tr><td><strong>Details</strong></td><td>' || apex_escape.html(c0.poll_details) ||'</td></tr>'); 
      end if; 
      -- RESPONSE RATE 
      for c1 in ( 
         select 1 
           from eba_qpoll_comm_invites  
          where poll_id = p_poll_id 
      ) loop 
         for c2 in ( 
            select 
                 (select count (unique r.respondent_id) 
                    from eba_qpoll_results r, 
                         eba_qpoll_comm_invites c, 
                         eba_qpoll_invites i 
                   where r.poll_id = p_poll_id 
                     and r.IS_VALID_YN = 'Y' 
                     and c.poll_id = p_poll_id 
                     and c.id = i.comm_invite_id  
                     and r.respondent_id = i.respondent_id ) num_responses, 
                 (select count (unique respondent_id) 
                   from eba_qpoll_comm_invites c, 
                        eba_qpoll_invites i 
                  where c.poll_id = p_poll_id 
                    and c.id = i.comm_invite_id) num_requests 
             from dual 
         ) loop 
            if c2.num_requests > 0 then 
               write_clob(l_html_body, '<tr><td><strong>Response Rate</strong></td><td>' || round((c2.num_responses/c2.num_requests) * 100) ||' %</td></tr>'); 
            end if; 
         end loop; 
         exit; 
      end loop; 
      if c0.poll_or_quiz = 'Q' then 
         write_clob(l_html_body, '<tr><td><strong>Type</strong></td><td>Quiz</td></tr>'); 
      else 
         write_clob(l_html_body, '<tr><td><strong>Type</strong></td><td>Poll</td></tr>'); 
      end if; 
      -- RESPONDENTS 
      for c1 in ( 
         select count(*) c ,  
                count(distinct APEX_USER) respondents,  
                min(created) first_submission, 
                max(created) last_submission 
           from eba_qpoll_results 
          where poll_id = p_poll_id 
            and nvl(is_valid_yn,'Y') = 'Y' 
      ) loop 
         l_respondents := c1.c; 
         write_clob(l_html_body, '<tr><td><strong>Respondents</strong></td><td>' || to_char(c1.c,'999G999G999G999G999G999G990') ||'</td></tr>'); 
         write_clob(l_html_body, '<tr><td><strong>First Submission</strong></td><td>' || to_char(c1.first_submission,'DD-Mon-YYYY') ||'</td></tr>'); 
         write_clob(l_html_body, '<tr><td><strong>Last Submission</strong></td><td>' || to_char(c1.last_submission,'DD-Mon-YYYY') ||'</td></tr>'); 
      end loop; 
      if l_respondents = 0 then 
         write_clob(l_html_body, '<tr><td><strong>Respondents</strong></td><td>0</td></tr>'); 
         write_clob(l_html_body, '</table>'); 
      else 
         -- GRADE 
         if c0.poll_or_quiz = 'Q' then 
            for c1 in ( 
               select round(avg(grade),1) c  
                 from eba_qpoll_results r 
                where poll_id = p_poll_id 
                  and nvl(r.is_valid_yn,'Y') = 'Y' 
            ) loop 
               write_clob(l_html_body, '<tr><td><strong>Average Grade</strong></td><td>' || c1.c || ' %</td></tr>'); 
            end loop; 
         else 
            for c1 in ( 
               select decode(p.score_type,'A','Average','C','Cumulative',p.score_type) st 
                 from eba_qpoll_questions q, 
                      eba_qpoll_polls p 
                 where q.poll_id = p.id and 
                       p.id = p_poll_id and 
                       p.score_type in ('A','C') and  
                       p.enable_score_yn = 'Y' and 
                       q.enable_score_yn = 'Y' 
            ) loop 
               for c2 in ( 
                  select round(avg(score),1) c  
                    from eba_qpoll_results r 
                   where poll_id = p_poll_id 
                     and nvl(r.is_valid_yn,'Y') = 'Y' 
                     and score is not null 
               ) loop 
                  write_clob(l_html_body, '<tr><td><strong>Average Grade</strong></td><td>' || c2.c || ' %</td></tr>'); 
                  write_clob(l_html_body, '<tr><td><strong>Score Type</strong></td><td>' || apex_escape.html(c1.st) || '</td></tr>'); 
               end loop; 
               exit; 
            end loop; 
         end if; 
         write_clob(l_html_body, '</table>'); 
         -- QUESTIONS 
         for c2 in ( 
            select 
               q.ID question_id, 
               case when c0.use_sections_yn = 'Y' then s.id end section_id, 
               case when c0.use_sections_yn = 'Y' then s.title end section_title, 
               s.section_text, 
               q.QUESTION, 
               q.CREATED, 
               q.UPDATED, 
               q.display_sequence,  
               q.QUESTION_TYPE, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_01,q.answer_01) answer_01, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_02,q.answer_02) answer_02, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_03,q.answer_03) answer_03, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_04,q.answer_04) answer_04, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_05,q.answer_05) answer_05, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_06,q.answer_06) answer_06, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_07,q.answer_07) answer_07, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_08,q.answer_08) answer_08, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_09,q.answer_09) answer_09, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_10,q.answer_10) answer_10, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_11,q.answer_11) answer_11, 
               decode(USE_CUSTOM_ANSWERS_YN,'N',a.answer_12,q.answer_12) answer_12, 
               q.correct_answer, 
               q.use_custom_answers_yn, 
               q.enable_score_yn q_enable_score 
            from eba_qpoll_questions q, 
                 eba_qpoll_canned_answers a, 
                 eba_qpoll_sections s 
            where q.poll_id = p_poll_id and 
                  q.question_type = a.code(+) and 
                  q.section_id = s.id (+) 
            order by nvl(s.display_sequence,c0.max_question_seq), case when c0.use_sections_yn = 'Y' then s.title end nulls last, q.display_sequence 
         ) loop 
            c := c + 1; 
            if c > 1 then 
               write_clob(l_html_body, '<br/>'); 
            end if; 
           if c0.use_sections_yn = 'Y' then 
              if nvl(c2.section_id,-1) != nvl(l_section_id,0) then 
                 write_clob(l_html_body, '<p class="lp-Question-questionText"><strong>'); 
                 write_clob(l_html_body, nvl(c2.section_title,'Additional Questions')); 
                 write_clob(l_html_body, '</strong>'); 
                 if c2.section_text is not null then 
                    write_clob(l_html_body, '<br/>'); 
                    write_clob(l_html_body, apex_escape.html(c2.section_text)); 
                 end if; 
                 write_clob(l_html_body, '</p>'); 
              end if; 
              l_section_id := c2.section_id; 
           end if; 
            write_clob(l_html_body, '<p class="lp-Question-questionText">Q'||c||': <strong>'||apex_escape.html(c2.question)||'</strong></p>'); 
            -- if quiz, show average per question 
            if c0.poll_or_quiz = 'Q' then 
               for c4 in ( 
                  select count(*) total_cnt, sum(decode(d.answer_correct_yn,'Y',1,0)) total_right 
                    from eba_qpoll_result_details d, 
                         eba_qpoll_results r 
                   where d.question_id = c2.question_id 
                     and r.id = d.result_id 
                     and r.poll_id = p_poll_id 
               ) loop 
                  write_clob(l_html_body, '<p>Average Score: '|| round(((c4.total_right/c4.total_cnt)*100),1) || ' %</p>'); 
               end loop; 
            end if; 
            -- if scored poll, show average per question 
            if c0.score_type in ('A','C') and c0.enable_score_yn = 'Y' and c2.q_enable_score = 'Y' then 
               for c4 in ( 
                  select round(avg(d.score),1) avg_score 
                    from eba_qpoll_result_details d, 
                         eba_qpoll_results r 
                   where d.question_id = c2.question_id 
                     and r.id = d.result_id 
                     and r.poll_id = p_poll_id 
                     and d.score is not null 
               ) loop 
                  write_clob(l_html_body, '<p>Average Score: '|| c4.avg_score || '</p>'); 
               end loop; 
            end if; 
            -- if quiz and textarea, show correct answer 
            if c0.poll_or_quiz = 'Q' and c2.QUESTION_TYPE in ('TEXT','TEXTAREA') then 
               write_clob(l_html_body, '<p>Correct Answer: '|| apex_escape.html(c2.correct_answer) || '</p>'); 
            end if; 
            -- ANSWERS AND RESPONSES  
            if c2.QUESTION_TYPE = 'TEXT' then 
                -- show each answer 
                write_clob(l_html_body, '<ul class="a-TextResponse">'); 
                for c3 in ( 
                   select d.ANSWER_01 answer, 
                          count(*) cnt 
                     from eba_qpoll_result_details d,  
                          eba_qpoll_results r 
                    where d.result_id = r.id and  
                          d.question_id = c2.question_id and 
                          r.poll_id = p_poll_id and 
                          nvl(r.is_valid_yn,'Y') = 'Y' and 
                          d.answer_01 is not null 
                    group by d.ANSWER_01 
                    order by d.ANSWER_01 
                ) loop 
                   write_clob(l_html_body, '<li>'); 
                   if lower(trim(c3.answer)) = lower(c2.correct_answer) then 
                      write_clob(l_html_body, '* '); 
                   end if; 
                   write_clob(l_html_body, apex_escape.html(c3.answer)||' ('|| c3.cnt ||')'); 
                   write_clob(l_html_body, '</li>'); 
                end loop; -- c3 
                write_clob(l_html_body, '</ul>'); 
            elsif c2.question_type != 'TEXTAREA' then 
                -- show chart of aggregated answers 
                a := 0; 
                l_max := 0; 
                for c3 in ( 
                   select answer, count(*) c 
                    from  
                   ( 
                    select d.ANSWER_01 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_01 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_02 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_02 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_03 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_03 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_04 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_04 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_05 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_05 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_06 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_06 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_07 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_07 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_08 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_08 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_09 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_09 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_10 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_10 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_11 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_11 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                    union all 
                    select d.ANSWER_12 answer 
                      from eba_qpoll_result_details d, eba_qpoll_results r 
                     where d.result_id = r.id and d.question_id = c2.question_id and 
                           r.poll_id = p_poll_id and d.answer_12 is not null and 
                           nvl(r.is_valid_yn,'Y') = 'Y' 
                   ) x 
                   group by answer 
                   order by 2 desc 
                ) loop 
                   a := a + 1; 
                   l_label(a) := c3.answer; 
                   l_count(a) := c3.c; 
                   if c3.c > l_max then  
                      l_max := c3.c;  
                   end if; 
                end loop;  
    
                write_clob(l_html_body, '<table class="ch" cellpadding="4" style="width: 100%;font-size: 12px;line-height: 16px;">'); 
     
                l_answer(1) := c2.answer_01; 
                l_answer(2) := c2.answer_02; 
                l_answer(3) := c2.answer_03; 
                l_answer(4) := c2.answer_04; 
                l_answer(5) := c2.answer_05; 
                l_answer(6) := c2.answer_06; 
                l_answer(7) := c2.answer_07; 
                l_answer(8) := c2.answer_08; 
                l_answer(9) := c2.answer_09; 
                l_answer(10) := c2.answer_10; 
                l_answer(11) := c2.answer_11; 
                l_answer(12) := c2.answer_12; 
     
                for m in 1..12 loop 
                    if l_answer(m) is null then exit; end if; 
                    l_found := false; 
                    for j in 1..a loop 
                        if l_answer(m) = l_label(j) then 
                           if c0.poll_or_quiz = 'Q' then 
                              l_correct_answer_yn := 'N'; 
                              if c2.question_type = 'CHECKBOX' then 
                                 if instr(c2.correct_answer,  
                                    substr(c2.correct_answer,1,1)||l_label(j)||substr(c2.correct_answer,1,1)) > 0 then 
                                    l_correct_answer_yn := 'Y'; 
                                 end if; 
                              elsif c2.use_custom_answers_yn = 'Y' then 
                                 if lower(l_label(j)) = lower(c2.correct_answer) then 
                                    l_correct_answer_yn := 'Y'; 
                                 end if; 
                              else 
                                 if l_label(j) = c2.correct_answer then 
                                    l_correct_answer_yn := 'Y'; 
                                 end if; 
                              end if; 
                            end if; 
                            paint_answer ( 
                               p_count => l_count(j),  
                               p_pct   => l_pct2,  
                               p_label => l_label(j), 
                               p_correct_answer => l_correct_answer_yn ); 
                            l_found := true; 
                            exit; 
                        end if; 
                    end loop;  
                    if not l_found then  
                       if c0.poll_or_quiz = 'Q' then 
                          l_correct_answer_yn := 'N'; 
                          if c2.question_type = 'CHECKBOX' then 
                             if instr(c2.correct_answer,  
                                substr(c2.correct_answer,1,1)||l_answer(m)||substr(c2.correct_answer,1,1)) > 0 then 
                                l_correct_answer_yn := 'Y'; 
                             end if; 
                          elsif c2.use_custom_answers_yn = 'Y' then 
                             if lower(l_answer(m)) = lower(c2.correct_answer) then 
                                l_correct_answer_yn := 'Y'; 
                             end if; 
                          else 
                              if l_answer(m) = c2.correct_answer then 
                                 l_correct_answer_yn := 'Y'; 
                              end if; 
                          end if; 
                        end if; 
                        paint_answer ( 
                          p_count => 0,  
                          p_pct   => 0,  
                          p_label => l_answer(m), 
                          p_correct_answer => l_correct_answer_yn ); 
                    end if; 
                end loop; 
                write_clob(l_html_body, '</table>'); 
            end if; 
            -- DETAILED RESPONSES 
            write_clob(l_html_body, '<table cellpadding="4" border="1" bordercolor="#B8B8B8" cellspacing="0" style="width: 100%;border-collapse:collapse;font-size: 14px;">'); 
            write_clob(l_html_body, '<tr><th>Respondent</th><th>Answer</th><th>Submitted</th>'); 
            if c0.poll_or_quiz = 'Q' then 
               write_clob(l_html_body, '<td>Correct</td>'); 
            end if; 
            write_clob(l_html_body, '</tr>'); 
            for c3 in ( 
               select 1 seq, d.ANSWER_01 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_01 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 2 seq, d.ANSWER_02 answer,lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_02 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 3 seq, d.ANSWER_03 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_03 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 4 seq, d.ANSWER_04 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_04 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 5 seq, d.ANSWER_05 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_05 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 6 seq, d.ANSWER_06 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_06 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 7 seq, d.ANSWER_07 answer,lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_07 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 8 seq, d.ANSWER_08 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_08 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 9 seq, d.ANSWER_09 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_09 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 10 seq, d.ANSWER_10 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_10 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 11 seq, d.ANSWER_09 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_11 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               union all 
               select 12 seq, d.ANSWER_10 answer, lower(r.apex_user) apex_user, r.created, 
                      decode(answer_correct_yn,'Y',apex_lang.message('YES'),apex_lang.message('NO')) CORRECT 
                 from eba_qpoll_result_details d, eba_qpoll_results r 
                where d.result_id = r.id and d.question_id = c2.question_id and 
                      r.poll_id = p_poll_id and d.answer_12 is not null and 
                      nvl(r.is_valid_yn,'Y') = 'Y' 
               order by 3 
            ) loop 
               write_clob(l_html_body, '<tr><td valign="top">'||apex_escape.html(c3.apex_user)||'</td><td valign="top">'||apex_escape.html(c3.answer)||'</td><td valign="top">'||apex_util.get_since(c3.created)||'</td>'); 
               if c0.poll_or_quiz = 'Q' then 
                  write_clob(l_html_body, '<td valign="top">'||c3.correct||'</td>'); 
               end if; 
               write_clob(l_html_body, '</tr>'); 
            end loop; -- c3 
            write_clob(l_html_body, '</table>'); 
            if c = 20 then 
               exit; 
            end if; 
         end loop; -- c2 
      end if; 
      return l_html_body; 
      sys.dbms_lob.freetemporary( l_html_body ); 
   end loop; -- c0 
exception 
   when others then 
      if l_html_body is not null then 
         sys.dbms_lob.freetemporary( l_html_body ); 
      end if; 
      raise; 
end prepare_poll_results; 


procedure eba_qpoll_data_load 
as
begin
    insert into eba_qpoll_polls
    (id,poll_name,poll_details,intro_text,thank_you_text,status_id,anonymous_yn,can_update_answers_yn,all_view_results_yn,enable_score_yn,
     POLL_OR_QUIZ, score_type, start_time,stop_time,invite_only_yn)
    values
    (1,'Sports','Sample poll that comes installed with the application sample data','Please take this sample poll.','Thanks for taking the sample poll.',3,
    'N','N','Y','Y','P', 'N', current_timestamp,null,'N');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN,
              answer_01,answer_02,answer_03,answer_04,answer_05,answer_06,answer_07,answer_08,answer_09,answer_10,answer_11)
      values
         (1,1,10,'What is your favorite sport to watch others play?','RADIO_GROUP','Y','Y','Y',
             'Americas Cup Yacht Racing',
             'American Football',
             'Baseball',
             'Basketball',
             'Cricket',
             'Golf',
             'Rugby',
             'Soccer',
             'Tennis',
             'Volleyball',
             'Other');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (2,1,20,'I like to play sports more than watch','RANGE_AGREE_DISAGREE','Y','Y','N');
        
    insert into eba_qpoll_polls
    (id,poll_name,poll_details,intro_text,thank_you_text,status_id,anonymous_yn,can_update_answers_yn,all_view_results_yn,enable_score_yn,
     POLL_OR_QUIZ, score_type, start_time,stop_time,invite_only_yn)
    values
    (2,'Lecture','Sample poll that comes installed with the application sample data','Please take this sample poll.','Thanks for taking the sample poll.',3,
    'N','N','Y','Y','P', 'A',current_timestamp,null,'N');
     
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN,
              answer_01,answer_02,answer_03,answer_04,answer_05)
      values
         (3,2,10,'How good was the lecture overall?','RADIO_GROUP','Y','Y','N',
             'Terrible',
             'Seen better',
             'Average',
             'Pretty good',
             'Excellent');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN,
              answer_01,answer_02,answer_03,answer_04,answer_05)
      values
         (4,2,20,'What aspects of the lecture did you like?','CHECKBOX','N','Y','Y',
             'Presentation',
             'Examples',
             'Demonstration',
             'Questions and Answers',
             'Other');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (5,2,30,'Did you fall asleep during the lecture?','YES_NO','N','Y','N');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (6,2,40,'How easily could you follow the demonstrations?','RANGE_HARD_TO_EASY','Y','Y','N');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (7,2,50,'How valuable was the subject matter covered to your current work?','RANGE_VALUE','Y','Y','N');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (8,2,60,'How likely are to use what you learnt today outside of the classroom?','RANGE_TIMEFRAME','Y','Y','N');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (9,2,70,'Please outline positive attributes about the lecture','TEXTAREA','N','Y','N');
     insert into eba_qpoll_questions
          (id, poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, USE_CUSTOM_ANSWERS_YN)
      values
          (10,2,80,'Please outline areas for improvement for the lecture','TEXT','N','Y','N');
        
commit;
end eba_qpoll_data_load;


procedure eba_qpoll_remove_data
as
begin
    delete from eba_qpoll_polls where id < 5;
    delete from eba_qpoll_questions where id < 5;
end eba_qpoll_remove_data;

      
end eba_qpoll; 
/