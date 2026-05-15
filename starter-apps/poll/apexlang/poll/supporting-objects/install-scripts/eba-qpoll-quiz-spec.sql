create or replace package eba_qpoll_quiz is


function delim_answers (
   p_answer_01  in  varchar2,
   p_answer_02  in  varchar2,
   p_answer_03  in  varchar2,
   p_answer_04  in  varchar2,
   p_answer_05  in  varchar2,
   p_answer_06  in  varchar2,
   p_answer_07  in  varchar2,
   p_answer_08  in  varchar2,
   p_answer_09  in  varchar2,
   p_answer_10  in  varchar2,
   p_answer_11  in  varchar2,
   p_answer_12  in  varchar2
   )
   return varchar2;


function delim_answers_disp (
   p_correct_answer  in  varchar2
   )
   return varchar2;


end eba_qpoll_quiz;
/