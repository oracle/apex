/* Bug tracker access levels */
insert into eba_ca_access_levels (id, access_level) values (1, 'Reader');
insert into eba_ca_access_levels (id, access_level) values (2, 'Contributor');
insert into eba_ca_access_levels (id, access_level) values (3, 'Administrator');

/* Bug Tracker preferences */
insert into eba_ca_preferences (id, preference_name, preference_value) values (1, 'ACCESS_CONTROL_ENABLED', 'N');
insert into eba_ca_preferences (id, preference_name, preference_value) values (2, 'ACCESS_CONTROL_SCOPE', 'ACL_ONLY');
insert into eba_ca_preferences (id, preference_name, preference_value) values (3, 'USERNAME_FORMAT', 'EMAIL');

/* Constraint error lookups */
insert into eba_ca_error_lookup (constraint_name, message, language_code) values ('EBA_CA_USERS_UK', 'Username must be unique.', 'en');
insert into eba_ca_error_lookup (constraint_name, message, language_code) values ('EBA_CA_CALENDAR_UK1', 'Calendar Short Name must be unique.', 'en');
insert into eba_ca_error_lookup (constraint_name, message, language_code) values ('EBA_CA_CALENDAR_UK2', 'Calendar Name must be unique.', 'en');

commit;
/
show errors