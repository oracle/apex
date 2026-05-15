create table  sp_countries (
   id                 number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                      constraint sp_countries_pk primary key,
   country_code       varchar2(2   char) not null enable, 
   COUNTRY_CODE3      varchar2(3   char),
   country_name       varchar2(255 char) not null enable, 
   region             varchar2(30  char) not null enable, 
   display_yn         varchar2(1   char) not null enable, 
   quick_pick_yn      varchar2(1   char) not null enable, 
   lat                number,
   lon                number,
   --
   created            date,
   created_by         varchar2(255 char), 
   updated            date, 
   updated_by         varchar2(255 char)
   )
/

create unique index  sp_countries_i1 on  sp_countries (country_code)
/

create unique index  sp_countries_i2 on  sp_countries (country_name)
/

CREATE OR REPLACE EDITIONABLE TRIGGER  sp_countries_biu
   before insert or update on sp_countries 
   for each row 
begin 
   if inserting then 
       :new.created := localtimestamp; 
       :new.created_by := nvl(wwv_flow.g_user,user); 
       :new.updated := localtimestamp; 
       :new.updated_by := nvl(wwv_flow.g_user,user); 
   end if; 
   if inserting or updating then 
       :new.updated := localtimestamp; 
       :new.updated_by := nvl(wwv_flow.g_user,user); 
   end if; 
   if :new.display_yn is null then  
      :new.display_yn := 'Y'; 
   end if; 
   if :new.quick_pick_yn is null then  
      :new.quick_pick_yn := 'N'; 
   end if; 
end sp_countries_biu; 
/
