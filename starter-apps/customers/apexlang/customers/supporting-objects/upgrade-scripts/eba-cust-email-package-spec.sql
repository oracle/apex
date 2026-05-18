create or replace package eba_cust_email as

    procedure send_feedback_email
    (
        p_app_id        in number,
        p_page_id       in number,
        p_submitter     in varchar2,
        p_feedback_type in varchar2,
        p_feedback      in varchar2
    );

end eba_cust_email;
/
show errors