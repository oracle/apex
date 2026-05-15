--
-- create table
--
create table eba_sample_map_states (
   	id                     number not null primary key,
	name                   varchar2(255),
	state_code             varchar2(2),
    land_area              number,
    water_area             number,
    geometry               sdo_geometry )
/

create table eba_sample_map_simple_states(
   	id                     number not null primary key,
	name                   varchar2(255),
	state_code             varchar2(2),
    land_area              number,
    water_area             number,
    geometry               sdo_geometry )
/
