create or replace package eba_qpoll_email as

procedure send (
   p_app_id              in   number,
   p_template_static_id  in   varchar2,
   p_placeholders        in   clob,
   p_to                  in   varchar2,
   p_from                in   varchar2,
   p_cc                  in   varchar2  default null,
   p_poll_id             in   number    default null,
   p_community_id        in   number    default null,
   p_respondent_id       in   number    default null,
   p_email_id            out  number );
   
end eba_qpoll_email;
/