drop table eba_sample_map_airports purge
/

drop table eba_sample_map_states purge
/

drop table eba_sample_map_simple_states purge
/


--
-- remove tables from Spatial Registry (USER_SDO_GEOM_METADATA)
--
begin
    apex_spatial.delete_geom_metadata(
        p_table_name  => 'EBA_SAMPLE_MAP_STATES',
        p_column_name => 'GEOMETRY' );
end;
/

begin
    apex_spatial.delete_geom_metadata(
        p_table_name  => 'EBA_SAMPLE_MAP_SIMPLE_STATES',
        p_column_name => 'GEOMETRY' );
end;
/

begin
    apex_spatial.delete_geom_metadata(
        p_table_name  => 'EBA_SAMPLE_MAP_AIRPORTS',
        p_column_name => 'GEOMETRY' );
end;
/

drop procedure eba_sample_map_load_data
/