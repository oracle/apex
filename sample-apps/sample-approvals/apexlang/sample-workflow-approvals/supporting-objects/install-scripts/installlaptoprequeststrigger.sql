create or replace trigger "EBA_DEMO_APPR_LAPTOP_REQUESTS_T"
before
update on "EBA_DEMO_APPR_LAPTOP_REQUESTS"
for each row
begin
    if :old.delivered_date is null and :new.delivered_date is not null then
        eba_demo_appr.laptop_delivered(:new.id);
    end if;
end;
/ 