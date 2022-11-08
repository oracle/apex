create or replace package plg_odata_filters as

-------------------------------------------------------------------------------
-- Name: plg_odata_filters.pks
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- convert APEX_EXEC filters to an ODATA filter expression (string)
--=============================================================================
function odata_filter_format (
    p_filters               in            apex_exec.t_filters,
    p_local_filters         in out nocopy apex_exec.t_filters,
    p_external_filters      in            varchar2,
    --
    p_web_source            in            apex_plugin.t_web_source,
    p_profile_columns       in            apex_plugin.t_web_source_columns,
    --
    p_plugin_attributes     in            plg_odata_connector.t_plugin_attributes,
    --
    p_row_search_query      out           varchar2 )
    return varchar2;

end plg_odata_filters;
/
