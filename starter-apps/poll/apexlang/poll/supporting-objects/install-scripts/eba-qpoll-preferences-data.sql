insert into eba_qpoll_preferences (id, preference_name, preference_value) values (1, 'ACCESS_CONTROL_ENABLED', 'N');
insert into eba_qpoll_preferences (id, preference_name, preference_value) values (2, 'ACCESS_CONTROL_SCOPE', 'ACL_ONLY');
insert into eba_qpoll_preferences (id, preference_name, preference_value) values (3, 'USERNAME_FORMAT', 'EMAIL');
insert into eba_qpoll_preferences (id, preference_name, preference_value) values (4, 'NOTIFICATION_EMAIL_FROM', 'N/A');
insert into eba_qpoll_preferences (id, preference_name, preference_value) values (5, 'HOST_URL', 'http://' || owa_util.get_cgi_env('HTTP_HOST') || owa_util.get_cgi_env('SCRIPT_NAME') || '/');
insert into eba_qpoll_preferences (id, preference_name, preference_value) values (6, 'NOTIFICATION_EMAIL_REPLY_TO', 'N/A');
insert into eba_qpoll_preferences (id, preference_name, preference_value) values (11, 'APPLICATION_TITLE', 'Poll');
commit;
/
show errors