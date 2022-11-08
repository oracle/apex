create or replace package plg_odata_metadata as

-------------------------------------------------------------------------------
-- Name: plg_odata_metadata.pks
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--==============================================================================
-- Remove namespace of an entity type or a complextype
--==============================================================================
function split_name_space (
    p_type_with_namespace in varchar2 )
    return varchar2;

--==============================================================================
-- This functions is used to get all the enum type in the metadata
--==============================================================================
function get_enum_type_name return apex_t_varchar2;

--==============================================================================
-- This function is used to find the entity type by using entity set
--==============================================================================
function get_entity_type_name (
    p_endpoint in varchar2 )
    return varchar2;

--==============================================================================
-- this function is used to get the end point of a RESTful Request
--==============================================================================
function get_end_point(
    p_service_url in varchar2 )
    return varchar2;

--==============================================================================
-- this function is used to check whether a REST Request retrieve raw value
--==============================================================================
function is_raw_value_call(
    p_resource_path in varchar2 )
    return boolean;

--==============================================================================
-- this function is used to check whether a REST Request retrieve property value
--==============================================================================
function is_property_call(
    p_end_point in varchar2 )
    return boolean;

--==============================================================================
-- This function is useed to build data profile by using the metadata of an
-- entity type
--==============================================================================
function extract_from_entity_type (
    p_entity_type   in varchar2,
    p_root_selector in varchar2 )
    return apex_plugin.t_web_source_columns;

--==============================================================================
-- This function is used to check whether an ODATA's datatype is primitive
-- datatype.
--==============================================================================
function is_primitive_datatype (
    p_data_type in varchar2 )
    return boolean;

--==============================================================================
-- This procedure is used to build the collection of parameters which
-- are used to the resource path
--==============================================================================
procedure get_params(
    p_resource_path in varchar2,
    p_default_value in varchar2,
    p_parameters    out apex_plugin.t_web_source_parameters,
    p_error         out boolean);

--==============================================================================
-- this function is used to pass the value of paramters to resource path
--==============================================================================
function replace_params_resource_path(
    p_resource_path         in varchar2,
    p_web_source_parameters in apex_plugin.t_web_source_parameters)
    return varchar2;

--==============================================================================
-- this function is used to get a row selector by checking whether the attribute
-- "value" exists in the response.
--==============================================================================
function get_row_selector (
    p_sample_response in clob )
    return varchar2;
--==============================================================================
-- This function is used to check whether illegal parameter are used
--==============================================================================
function illegal_params_check(
    p_resource_path in varchar2 )
    return boolean;

--==============================================================================
-- This function is used to map the ODATA's datatypes to Oracle's Datatypes
--==============================================================================
procedure datatype_converter (
    p_odata_datatype  in  varchar2,
    p_oracle_datatype out apex_exec.t_data_type,
    p_remote_datatype out varchar2 );

--==============================================================================
-- This function is used to extract all metadata and build data profile for the
-- RESTful Request.
--==============================================================================
procedure odata_extract_metadata (
    p_web_source_operation      in  apex_plugin.t_web_source_operation,
    p_resource_path             in  varchar2,
    p_data_profile_cols         out apex_plugin.t_web_source_columns,
    p_is_single_property_call   out boolean );

--==============================================================================
-- This function is used to get a key of a entity type
--==============================================================================
function get_key (
    p_entity_type in varchar2 )
    return apex_t_varchar2;

--==============================================================================
-- Get the cursor that will be used to be looped through in order to get
-- information of properties of an entity type or a complex type
--==============================================================================
function get_type_cursor (
    p_entity_type in varchar2 )
    return sys_refcursor;

--==============================================================================
-- Navigation property is defined with a property path and a target.
-- This function is used to get the target of a navigation property by comparing
-- the resource path with the path of Navigation Property
--==============================================================================
function get_entityset_by_prop_path (
    p_url in varchar2 )
    return varchar2;

end plg_odata_metadata;
/
