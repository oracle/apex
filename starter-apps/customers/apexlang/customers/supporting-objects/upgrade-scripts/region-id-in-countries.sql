alter table eba_cust_countries add region_id number
/
alter table eba_cust_countries
   add constraint eba_countries_region_fk
       foreign key (region_id)
       references eba_cust_geographies (id) on delete cascade
/