create or replace package plg_odata_order_bys as

-------------------------------------------------------------------------------
-- Name: plg_odata_order_bys.pks
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- convert APEX_EXEC orderbys to an ODATA orderby expression (string)
--=============================================================================
function odata_orderby_format (
    p_profile_columns         in apex_plugin.t_web_source_columns,
    p_order_bys               in apex_exec.t_order_bys,
    p_external_order_bys      in varchar2 )
    return varchar2;

end plg_odata_order_bys;
/
