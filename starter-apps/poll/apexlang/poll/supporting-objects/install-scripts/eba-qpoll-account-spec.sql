CREATE OR REPLACE PACKAGE "EBA_QPOLL_ACCOUNT" as
    procedure add_application_log (
       p_activity  in  varchar2,
       p_details   in  varchar2  default null );
    procedure add_user_log (
       p_username       in  varchar2,
       p_email_address  in  varchar2,
       p_activity       in  varchar2,
       p_details        in  varchar2  default null );
    procedure add_user (
       p_email_address     in  varchar2,
       p_email_user_yn     in  varchar2,
       p_username          in  varchar2,
       p_app_id            in  number    default null,
       p_app_title         in  varchar2  default null,
       p_app_link          in  varchar2  default null,
       p_apex_password     out varchar2 );
    procedure approve_access_request (
       p_app_id           in  number,
       p_app_title        in  varchar2,
       p_app_link         in  varchar2,
       p_request_id       in  number,
       p_actioned_reason  in  varchar2  default null );
    procedure decline_access_request (
       p_app_id           in  number,
       p_app_title        in  varchar2,
       p_request_id       in  number,
       p_actioned_reason  in  varchar2 );
end eba_qpoll_account;
/