begin
    apex_spatial.insert_geom_metadata_lonlat(
        p_table_name => 'EBA_SAMPLE_MAP_STATES',
        p_column_name => 'GEOMETRY',
        p_tolerance => 0.05 );
end;
/

begin
    apex_spatial.insert_geom_metadata_lonlat(
        p_table_name => 'EBA_SAMPLE_MAP_SIMPLE_STATES',
        p_column_name => 'GEOMETRY',
        p_tolerance => 0.05 );
end;
/

begin
    apex_spatial.insert_geom_metadata_lonlat(
        p_table_name => 'EBA_SAMPLE_MAP_AIRPORTS',
        p_column_name => 'GEOMETRY',
        p_tolerance => 0.05 );
end;
/

create index eba_sample_map_airports_sx on eba_sample_map_airports(geometry)
indextype is mdsys.spatial_index_v2
parameters( 'layer_gtype=POINT')
/

create index eba_sample_map_simplestates_sx on eba_sample_map_simple_states(geometry)
indextype is mdsys.spatial_index_v2
/

create index eba_sample_map_states_sx on eba_sample_map_states(geometry)
indextype is mdsys.spatial_index_v2
/
