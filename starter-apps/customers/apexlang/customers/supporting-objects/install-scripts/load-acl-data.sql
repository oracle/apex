/* Checklist access levels */
insert into eba_cust_access_levels (id, access_level) values (1, 'Reader');
insert into eba_cust_access_levels (id, access_level) values (2, 'Contributor');
insert into eba_cust_access_levels (id, access_level) values (3, 'Administrator');

/* Checklist preferences */
insert into eba_cust_preferences (id, preference_name, preference_value) values (1, 'ACCESS_CONTROL_ENABLED', 'N');
insert into eba_cust_preferences (id, preference_name, preference_value) values (2, 'ACCESS_CONTROL_SCOPE', 'ACL_ONLY');
insert into eba_cust_preferences (id, preference_name, preference_value) values (3, 'USERNAME_FORMAT', 'EMAIL');

/* Constraint error lookups */
insert into eba_cust_error_lookup (constraint_name, message, language_code) values ('EBA_CUST_USERS_UK', 'Username must be unique.', 'en');


commit;
/
show errors