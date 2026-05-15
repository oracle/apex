declare
    l_tables apex_t_varchar2 := apex_t_varchar2('eba_util_farest_catalog',
                                                'eba_util_farest_cat_baseurl',
                                                'eba_util_farest_endpoint_attrs',
                                                'eba_util_farest_endpoint_chobj',
                                                'eba_util_farest_endpoints',
                                                'eba_util_facat_pillars',
                                                'eba_util_facat_releases',
                                                'eba_util_facat_catalogs',
                                                'eba_util_facat_endpoints',
                                                'eba_util_facat_endpoint_attrs',
                                                'eba_util_facat_server_prefixes');
begin
    --
    -- Quietly drop all tables in the list
    --
    for j in 1..l_tables.count loop
        begin
            execute immediate 'drop table '||l_tables(j)||' cascade constraints';
        exception
            when others then
                if sqlcode != -942 then
                    raise;
                end if;
        end;
    end loop;
end;
/