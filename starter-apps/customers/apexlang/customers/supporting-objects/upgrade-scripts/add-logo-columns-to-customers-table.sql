alter table eba_cust_customers add (
    logo_blob     blob,
    logo_name     varchar2(512),
    logo_mimetype varchar2(512),
    logo_charset  varchar2(512),
    logo_lastupd  date
);