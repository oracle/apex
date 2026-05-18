create or replace package body eba_cust_email as

    c_fb_subject constant varchar2(500) := eba_cust_fw.get_preference_value('APPLICATION_TITLE') || ': Feedback Submission';
    c_base_url   constant varchar2(500) := eba_cust_fw.get_preference_value('HOST_URL');
    c_top_tmpl   constant clob := '<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>#APP_NAME#</title>
<style>
    body { background-color: #ffffff; color: #707070; margin: 0; padding: 0; min-width: 100%; -webkit-text-size-adjust: none; -ms-text-size-adjust: none; text-size-adjust: none; font-family: Helvetica, Arial, sans-serif; mso-line-height-rule: exactly; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }
    table { border: 0; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; }
    table td { padding: 0; vertical-align: top; border-collapse: collapse; }
    p { margin: 0 0 16px 0; }
    table.container { margin-right: auto; margin-left: auto; width: 580px; }
    a { color: #2C7ABF; }
    body, th, td { line-height: 1.5; }
    @media only screen and (max-width: 580px) {
      .mobile-hide { display: none !important; }
      .stack { display: block !important; width: 100% !important; }
      table.container { width: 100% !important; }
      .header { height: auto !important; }
      .category-content td,
      .sub-category-title,
      .category-title { padding-left: 10px !important; padding-right: 10px !important; }
    }
</style>
</head>
<body bgcolor="#ffffff" style="font-family: Helvetica, Arial, sans-serif; background-color: #ffffff; color: #707070; margin: 0; padding: 0;">
<table class="body" border="0" width="100%" style="font-family: Helvetica, Arial, sans-serif">
<tr>
<td align="center" valign="top" style="background-color: #ffffff; color: #707070;">
<center>

<!-- Header Wrapper -->
<table width="100%" border="0" bgcolor="#fd2a1b" style="background-color: #fd2a1b; color: #ffffff;">
<tr>
<td>

<table align="center" border="0" class="container" width="600">
<tr>
<td class="header" style="font-size: 14px; line-height: 1.3; text-align: left; padding: 10px; height: 140px; vertical-align: middle; color: #ffffff;" valign="middle" align="left">
<font style="font-size: 28px;">#SUBJECT#</font>#RECIPIENT_EMAIL#
</td>
</tr>
</table>

</td>
</tr>
</table>
<!-- // Header Wrapper -->
<br>

<!-- Content Wrapper -->
<table align="center" border="0" class="container" width="600">
<tr>
<td class="container-inner" style="text-align: left; padding-left: 10px; padding-right: 10px;" align="left">
'; -- Email Top

    c_btm_tmpl   constant clob := '
</td>
</tr>
</table>
<!-- // Content Wrapper -->
<br>
'; -- Email Bottom

    procedure set_apex_session( p_app_id in number ) is
    begin
        for c1 in ( select workspace_id
                    from apex_applications
                    where application_id = p_app_id ) loop
            apex_util.set_security_group_id(
                p_security_group_id => c1.workspace_id);
        end loop;
    end set_apex_session;

    procedure log_sent_email
    (
        p_email_to    in varchar2,
        p_email_from  in varchar2,
        p_body_size   in number,
        p_type        in varchar2,
        p_customer_id in number    default null
    )
    is
    begin
        insert into eba_cust_email_log
        (email_first_to, email_to, email_from, body_size, created_by,
         created, email_type, customer_id)
        values
        (p_email_to, p_email_to, p_email_from, p_body_size, nvl( nvl( wwv_flow.g_user, v('APP_USER') ), user),
         current_timestamp, p_type, p_customer_id);
    end log_sent_email;

    function get_build_option_status
    (
        p_app_id  in number,
        p_bo_name in varchar2
    ) return varchar2
    is
        l_retval varchar2(10) := 'EXCLUDE';
    begin
        for c1 in
        (
            select upper(build_option_status) as bo_value
              from apex_application_build_options
             where upper(build_option_name) = upper(p_bo_name)
               and application_id = p_app_id
        )
        loop
            l_retval := c1.bo_value;
        end loop;
        return l_retval;
    end get_build_option_status;

    function get_feedback_email_body (
        p_app_id        in number,
        p_page_id       in number,
        p_submitter     in varchar2,
        p_feedback_type in varchar2,
        p_feedback      in varchar2,
        p_fb_rpt_page   in number
    ) return clob
    is
       l_clob clob;
       l_body clob;
       m      clob;
       
       l_submitter        varchar2(32000)    :=    apex_escape.html(p_submitter);
       l_feedback_type    varchar2(32000)    :=    apex_escape.html(p_feedback_type);
       l_feedback        varchar2(32000)     :=    apex_escape.html(p_feedback);
    begin
        l_clob := m;
        m := m || replace(replace(replace(c_top_tmpl, '#APP_NAME#', eba_cust_fw.get_preference_value('APPLICATION_TITLE')), '#SUBJECT#', c_fb_subject), '#RECIPIENT_EMAIL#', null);
        l_clob := l_clob || m;
        m := null;

        -- Construct html body
        l_body := '<p>' || l_submitter || ' has submitted the following <strong><a href="' || c_base_url || apex_util.prepare_url(
                  'f?p=' || p_app_id || ':' || p_fb_rpt_page || ':0:::' || p_fb_rpt_page || ',RIR:IREQ_PAGE_ID,IREQ_TYPE_ID,IREQ_CREATED_BY:' || p_page_id || ',' ||
                  l_feedback_type || ',' || upper(l_submitter)) || '">' || l_feedback_type || '</a></strong> from page ' || p_page_id || ':</p>' ||
                  '<p>' || l_feedback || '</p>';

        -- Add body to current clob
        l_clob := l_clob || l_body;

        m := m || c_btm_tmpl || c_btm_tmpl;

        l_clob := l_clob || m;

        return l_clob;
    end get_feedback_email_body;

    procedure send_feedback_email
    (
        p_app_id        in number,
        p_page_id       in number,
        p_submitter     in varchar2,
        p_feedback_type in varchar2,
        p_feedback      in varchar2
    )
    is
        l_subject       varchar2(500) := c_fb_subject;
        l_body          clob := ' ';
        l_body_html     clob;
        l_email_type    varchar2(30) := 'FEEDBACK_SUBMISSION';
        l_from          varchar2(255);
    begin
        if eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS') = 'Preference does not exist' or
           get_build_option_status(p_app_id => p_app_id, p_bo_name => 'Feedback') = 'EXCLUDE' then
            return; -- No Feedback Recipients Defined or the Feedback build option has been disabled so exit
        end if;

        set_apex_session( p_app_id );

        -- Determine Sender
        if instr(p_submitter,'@') > 0 then
            l_from := lower(p_submitter);
        else
            for c1 in (select username from eba_cust_users where upper(username) = upper(p_submitter) and username is not null and instr(username,'@') > 0)
            loop
                l_from := lower(c1.username);
            end loop;
        end if;
        if l_from is null then
            if instr(eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS'),',') > 0 then
                l_from := lower( substr( eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS'), 1, instr(eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS'),',') - 1) );
            else
                l_from := lower( eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS') );
            end if;
        end if;

        -- Assign local variables
        l_body_html     := get_feedback_email_body (
                               p_app_id        => p_app_id,
                               p_page_id       => p_page_id,
                               p_submitter     => p_submitter,
                               p_feedback_type => p_feedback_type,
                               p_feedback      => p_feedback,
                               p_fb_rpt_page   => 119
                           );

        -- Send email
        apex_mail.send(
            p_to        => eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS'),
            p_from      => l_from,
            p_body      => l_body,
            p_body_html => '<html><body>' || l_body_html || '</body></html>',
            p_subj      => l_subject,
            p_cc        => null,
            p_bcc       => null,
            p_replyto   => null);

        -- Log sent email
        log_sent_email(
            p_email_to => eba_cust_fw.get_preference_value(p_preference_name  => 'FEEDBACK_RECIPIENTS'),

            p_email_from => l_from,
            p_body_size => 26 + length(l_body_html),
            p_type => l_email_type);

        apex_mail.push_queue;
    end send_feedback_email;

end eba_cust_email;
/
show errors