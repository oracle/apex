begin
    insert into eba_cust_preferences (id, preference_name, preference_value) values (3, 'USERNAME_FORMAT', 'EMAIL');
exception when others then null;
end;
/
