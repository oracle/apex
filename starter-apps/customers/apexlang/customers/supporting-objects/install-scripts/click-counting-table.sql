create table eba_cust_clicks (    
    id                number primary key,
    cust_id           number,
    app_username      varchar2(255),
    view_timestamp    timestamp(6) with time zone,
    app_session       varchar2(255)
);
/


create index eba_cust_clicks_idx1 on eba_cust_clicks (cust_id);
create index eba_cust_clicks_idx2 on eba_cust_clicks (view_timestamp);

create or replace trigger eba_cust_clicks_biu
    before insert on eba_cust_clicks
    for each row
begin
     if :new.id is null then
         :new.id := eba_cust_seq.nextval;
     end if;
     :new.view_timestamp := current_timestamp;
     :new.app_username := nvl(v('APP_USER'),user);
     :new.app_session := v('APP_SESSION');
end;
/

alter trigger eba_cust_clicks_biu enable;
