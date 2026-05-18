create or replace procedure eba_sample_map_load_data(
    p_load_from          in varchar2,
    p_states_file_name   in varchar2,
    p_airports_file_name in varchar2,
    p_proxy_override     in varchar2 default null )
is
    l_states_json   blob;
    l_airports_json blob;
begin
    if p_load_from = 'FILE' then
        if p_states_file_name is not null then
            select blob_content
              into l_states_json
              from apex_application_temp_files
             where name = p_states_file_name;
        end if;
        if p_airports_file_name is not null then
            select blob_content
              into l_airports_json
              from apex_application_temp_files
             where name = p_airports_file_name;
        end if;
    else
        apex_web_service.set_request_headers(
            p_name_01  => 'User-Agent',
            p_value_01 => 'APEX' );

        l_states_json := apex_web_service.make_rest_request_b(
                             p_url            => 'https://raw.githubusercontent.com/oracle/apex/22.1/sample-apps/sample-maps/states-full.json',
                             p_http_method    => 'GET',
                             p_proxy_override => p_proxy_override );
        
        l_airports_json := apex_web_service.make_rest_request_b(
                               p_url            => 'https://raw.githubusercontent.com/oracle/apex/22.1/sample-apps/sample-maps/airports-full.json',
                               p_http_method    => 'GET',
                               p_proxy_override => p_proxy_override );
    end if;

    if l_states_json is not null then
        delete from eba_sample_map_states;
        delete from eba_sample_map_simple_states;

        insert into eba_sample_map_states (id, name, state_code, land_area, water_area, geometry )
        ( 
            select id, name, state_code, land_area, water_area, geometry
              from json_table(
                       l_states_json format json,
                       '$[*]'
                       columns (
                                 id          number             path '$.id',
                                 name        varchar2(255)      path '$.name',
                                 state_code  varchar2(255)      path '$.state_code',
                                 land_area   number             path '$.land_area',
                                 water_area  number             path '$.water_area',
                                 geometry    mdsys.sdo_geometry path '$.geometry' ) ) );

        insert into eba_sample_map_simple_states (id, name, state_code, land_area, water_area, geometry )
        ( select id, name, state_code, land_area, water_area, mdsys.sdo_util.simplify( geometry, 75 ) 
            from eba_sample_map_states);
    end if;

    if l_airports_json is not null then
        delete from eba_sample_map_airports;

        insert into eba_sample_map_airports (id, iata_code, airport_type, airport_name, city, state_name, activation_date, activation_date_dt, elevation, dist_city_to_airport, land_area_covered, commercial_ops, air_taxi_ops, geometry )
            (select rownum, iata_code, airport_type, airport_name, city, state_name, to_char(to_date(activation_date, 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'MON-RR'),to_date(activation_date, 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), elevation, dist_city_to_airport, land_area_covered, commercial_ops, air_taxi_ops, geometry
               from json_table(
                        l_airports_json format json,
                        '$[*]'
                        columns(
                                 iata_code             varchar2(255)      path '$.iata',
                                 airport_type          varchar2(255)      path '$.airport_type',
                                 airport_name          varchar2(255)      path '$.airport_name',
                                 city                  varchar2(255)      path '$.city',
                                 state_name            varchar2(255)      path '$.state_name',
                                 activation_date       varchar2(50)       path '$.act_date_dt',
                                 elevation             number             path '$.elevation',
                                 dist_city_to_airport  number             path '$.dist_city_to_airport',
                                 land_area_covered     number             path '$.land_area',
                                 commercial_ops        number             path '$.commercial_ops',
                                 air_taxi_ops          number             path '$.air_taxi_ops',
                                 geometry              sdo_geometry       path '$.geometry' ) ) );
    end if;
end;
/