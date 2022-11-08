create or replace package body plg_odata_metadata as

-------------------------------------------------------------------------------
-- Name: plg_odata_metadata.pkb
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- Constants
--=============================================================================
c_scope constant varchar2(129) := $$plsql_unit || '.';

--==============================================================================
-- Type and global variable to use during Discovery
--==============================================================================
g_metadata         clob;
g_enum_type_names  apex_t_varchar2;
g_key_name         apex_t_varchar2;

type t_property     is record(
    type_name   varchar2(100),
    base_type   varchar2(100),
    prop_name   varchar2(100),
    prop_type   varchar2(100),
    nullable    varchar2(100),
    maxlength   varchar2(100) );


--==============================================================================
-- Remove namespace of an entity type or a complextype
--==============================================================================
function split_name_space(
    p_type_with_namespace in varchar2 )
    return varchar2
as
begin

    return substr( p_type_with_namespace, instr( p_type_with_namespace, '.', - 1 ) + 1 );

end split_name_space;

--==============================================================================
-- get the forbidden params
--==============================================================================
function get_forbidden_params return apex_t_varchar2
is
begin

    return apex_t_varchar2( '$expand','$select','$orderby','$count','$filter','$skip','$top','$skiptoken','$nextlink','$search' );

end get_forbidden_params;

--==============================================================================
-- Get the cursor that will be used to be looped through in order to get
-- information of properties of an entity type or a complex type
--==============================================================================
function get_type_cursor(
    p_entity_type in varchar2)
    return sys_refcursor
as
    l_temp_cursor sys_refcursor;
begin
    open l_temp_cursor for with qry_complex_type as(
       select
           xt1.name                                         as type_name,
           xt1.base_type                                    as base_type,
           xt2.name                                         as prop_name,
           xt2.type                                         as prop_type,
           xt2.nullable                                     as nullable,
           case when xt2.maxlength = 'max'
               then 32767 else to_number( xt2.maxlength )
           end                                              as maxlength
       from
           xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '/edmx:Edmx/edmx:DataServices/Schema/ComplexType'
               passing sys.xmltype( g_metadata )
               columns
                   tag_name     varchar2( 4000 ) path 'name()',
                   name         varchar2( 4000 ) path '@Name',
                   base_type    varchar2( 4000 ) path '@BaseType',
                   all_stuff    sys.xmltype      path '*'
           ) xt1,
           xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '*'
               passing xt1.all_stuff
               columns
                   name      varchar2( 4000 ) path '@Name',
                   type      varchar2( 4000 ) path '@Type',
                   nullable  varchar2( 100 )  path '@Nullable',
                   maxlength varchar2( 100 )  path '@MaxLength',
                   all_stuff sys.xmltype      path '*'
           ) xt2
    ), qry_entity_type as(
       select
           xt1.name                                         as type_name,
           null                                             as base_type,
           xt2.name                                         as prop_name,
           xt2.type                                         as prop_type,
           xt2.nullable                                     as nullable,
           case when xt2.maxlength = 'max'
                then 32767
                else to_number( xt2.maxlength )
           end                                              as maxlength
       from
           xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '/edmx:Edmx/edmx:DataServices/Schema/EntityType'
               passing sys.xmltype( g_metadata )
               columns
                   tag_name  varchar2( 4000 ) path 'name()',
                   name      varchar2( 4000 ) path '@Name',
                   all_stuff sys.xmltype      path '*'
           ) xt1,
           xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '/Property'
               passing xt1.all_stuff
               columns
                   name      varchar2( 4000 ) path '@Name',
                   type      varchar2( 4000 ) path '@Type',
                   nullable  varchar2( 100 )  path '@Nullable',
                   maxlength varchar2( 100 )  path '@MaxLength',
                   all_stuff sys.xmltype      path '*'
           ) xt2
    ), qry_all_types as(
       select *
         from qry_complex_type
       union all
       select *
         from qry_entity_type )
    select *
      from qry_all_types
     where type_name = p_entity_type;

    return l_temp_cursor;
end get_type_cursor;

--==============================================================================
-- Navigation property is defined with a property path and a target.
-- This function is used to get the target of a navigation property by comparing
-- the resource path with the path of Navigation Property
--==============================================================================
function get_entityset_by_prop_path (
    p_url in varchar2 )
    return varchar2
as
    l_entity_set varchar2( 4000 );
begin

    select
        xt1.entity_set
    into
        l_entity_set
    from xmltable(
            xmlnamespaces(
               'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
               default 'http://docs.oasis-open.org/odata/ns/edm' ),
           '/edmx:Edmx/edmx:DataServices/Schema//Singleton//NavigationPropertyBinding'
           passing sys.xmltype( g_metadata )
           columns
               path       varchar2( 4000 ) path '@Path',
               entity_set varchar2( 4000 ) path '@Target'
       ) xt1
       where p_url like '%' || xt1.path;

    return l_entity_set;

    exception
    when no_data_found then
        l_entity_set := null;
        return l_entity_set;

end get_entityset_by_prop_path;

--==============================================================================
-- This function is used to get the type of endpoint by checking the resource
-- path in the metadata to see if it is a entity set, a singleton or a navigation
-- property or function or complex property
--==============================================================================
procedure check_type_endpoint (
    p_endpoint      in              varchar2,
    p_endpoint_type in              varchar2,
    p_found         in  out nocopy  boolean,
    p_entity_type   in  out nocopy  varchar2 )
as
begin

    p_found := false;

    case p_endpoint_type
        when 'EntitySet' then

            begin

                select
                    xt1.entity_type as entity_type
                into
                    p_entity_type
                from xmltable(
                        xmlnamespaces(
                            'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                            default 'http://docs.oasis-open.org/odata/ns/edm' ),
                        '/edmx:Edmx/edmx:DataServices/Schema//EntitySet'
                        passing sys.xmltype( g_metadata )
                        columns
                            entity_set  varchar2( 4000 ) path '@Name',
                            entity_type varchar2( 4000 ) path '@EntityType'
                    ) xt1
                where
                    lower( entity_set ) = lower( p_endpoint );

            exception
              when no_data_found then

                return;

            end;

        when 'Property' then

            begin

                select
                    xt1.name as entity_type
                into
                    p_entity_type
                from xmltable(
                        xmlnamespaces(
                            'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                            default 'http://docs.oasis-open.org/odata/ns/edm' ),
                        '/edmx:Edmx/edmx:DataServices/Schema//Property'
                        passing sys.xmltype( g_metadata )
                        columns
                            name  varchar2( 4000 ) path '@Name',
                            type  varchar2( 4000 ) path '@Type'
                    ) xt1
                where
                    lower( name ) = lower( p_endpoint ) and xt1.type not like '%Edm%';

            exception
              when no_data_found then

                return;

            end;

        when 'Function' then

            begin

                select
                    xt1.entity_type as entity_type
                into
                    p_entity_type
                from xmltable(
                        xmlnamespaces(
                            'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                            default 'http://docs.oasis-open.org/odata/ns/edm' ),
                        '/edmx:Edmx/edmx:DataServices/Schema//Function'
                        passing sys.xmltype( g_metadata )
                        columns
                            func_name   varchar2( 4000 ) path '@Name',
                            entity_type varchar2( 4000 ) path '/*/ReturnType/@Type'
                    ) xt1
                where
                    lower( func_name ) = lower( p_endpoint );

            exception
              when no_data_found then

                return;

            end;

        when 'NavigationProperty' then

            begin

                select
                    xt1.entity_type as entity_type
                into
                    p_entity_type
                from xmltable(
                        xmlnamespaces(
                            'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                            default 'http://docs.oasis-open.org/odata/ns/edm' ),
                        '/edmx:Edmx/edmx:DataServices/Schema//NavigationProperty'
                        passing sys.xmltype( g_metadata )
                        columns
                            navi_name   varchar2( 4000 ) path '@Name',
                            entity_type varchar2( 4000 ) path '@Type'
                    ) xt1
                where
                    lower( navi_name ) = lower( p_endpoint );

            exception
              when no_data_found then

                return;

            end;

        when 'Singleton' then

            begin

                select
                    xt1.name as entity_type
                into
                    p_entity_type
                from xmltable(
                        xmlnamespaces(
                            'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                            default 'http://docs.oasis-open.org/odata/ns/edm' ),
                        '/edmx:Edmx/edmx:DataServices/Schema//Singleton'
                        passing sys.xmltype( g_metadata )
                        columns
                            name  varchar2( 4000 ) path '@Name',
                            type  varchar2( 4000 ) path '@Type'
                ) xt1
                where
                    lower( name ) = lower( p_endpoint );

            exception
                when no_data_found then

                    return;

            end;
        else

            return;

    end case;

    p_found := true;

end;


--==============================================================================
-- This function is used to find the entity type by using entity set
--==============================================================================
function get_entity_type_name(
    p_endpoint in varchar2 )
    return varchar2
as
    l_entity_type       varchar2( 4000 );
    l_found             boolean := false;
    l_endpoint_types    apex_t_varchar2;
begin

    l_endpoint_types := apex_t_varchar2( 'EntitySet', 'Property' , 'NavigationProperty' ,'Function' ,'Singleton' );

    for i in 1 .. l_endpoint_types.count loop

        check_type_endpoint (
            p_endpoint      => p_endpoint,
            p_endpoint_type => l_endpoint_types( i ),
            p_found         => l_found,
            p_entity_type   => l_entity_type );

        if l_found then

            exit;

        end if;

    end loop;

    l_entity_type := replace( substr( l_entity_type, instr( l_entity_type, '.', - 1 ) + 1 ), ')' );

    return l_entity_type;

    exception
    when no_data_found then
        return null;

end get_entity_type_name;

--==============================================================================
-- This functions is used to get all the enum type in the metadata
--==============================================================================
function get_enum_type_name
    return apex_t_varchar2
as
    l_arr_enum_type apex_t_varchar2;
begin

    select xt1.name
      bulk collect into l_arr_enum_type
      from xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '/edmx:Edmx/edmx:DataServices/Schema/EnumType'
               passing sys.xmltype( g_metadata )
               columns
                   name varchar2( 4000 ) path '@Name'
           ) xt1;

    return l_arr_enum_type;

end get_enum_type_name;

--==============================================================================
-- This function is used to get a key of a entity type
--==============================================================================
function get_key(
    p_entity_type in varchar2 )
    return apex_t_varchar2
as
    l_key_name apex_t_varchar2;
begin

    select upper(xt2.key_name)
      bulk collect into l_key_name
      from xmltable(
              xmlnamespaces(
                  'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                  default 'http://docs.oasis-open.org/odata/ns/edm' ),
              '/edmx:Edmx/edmx:DataServices/Schema/EntityType'
              passing sys.xmltype( g_metadata )
              columns
                  entity_name varchar( 4000 ) path '@Name',
                  all_stuff   sys.xmltype     path '*'
           ) xt1,
           xmltable(
              xmlnamespaces(
                  'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                  default 'http://docs.oasis-open.org/odata/ns/edm' ),
              '/Key/PropertyRef'
              passing xt1.all_stuff
              columns
                  key_name    varchar( 4000 ) path '@Name'
           ) xt2
     where xt1.entity_name = p_entity_type;

    return l_key_name;

    exception
    when no_data_found then
        return null;

end get_key;

--==============================================================================
-- This procedure is used to build the collection of parameters which
-- are used to the resource path
--==============================================================================
procedure get_params(
    p_resource_path in varchar2,
    p_default_value in varchar2,
    p_parameters    out apex_plugin.t_web_source_parameters,
    p_error         out boolean)
as
    l_arr_url_parts   apex_t_varchar2;
    l_url_part        varchar2( 32767 );
    l_params          varchar2( 32767 );
    l_arr_params      apex_t_varchar2;
    l_temp_param_part varchar2( 100 );
    l_param_name      varchar2( 100 );
    l_value           varchar2( 100 );
    l_source_param    apex_plugin.t_web_source_parameter;
begin

    apex_debug.enter( p_routine_name => c_scope || 'get_params' );

    if p_default_value is null then
        return;
    end if;

    l_arr_url_parts := apex_string.split(
                          p_str => p_resource_path,
                          p_sep => '/' );

    for i in 1..l_arr_url_parts.count
    loop
        l_url_part   := l_arr_url_parts( i );

        if regexp_count( l_url_part, '\(.*?\)' ) > 1 then

            p_error := true;
            apex_error.add_error(
                p_message => 'Syntax Error: ' || l_url_part || ' is not a valid resource path',
                p_additional_info => SQLERRM,
                p_display_location  => apex_error.c_inline_with_field_and_notif
            );

            return;

        end if;

        l_params     := regexp_substr( l_url_part, '\(.*?\)' );
        l_arr_params := apex_string.split(
                            p_str => l_params,
                            p_sep => ',' );

        for j in 1..l_arr_params.count
        loop
            l_temp_param_part := l_arr_params( j );
            l_param_name := regexp_substr( l_temp_param_part, ':' || plg_odata_connector.c_regex_all_charnum || '*' );
            l_param_name := substr( l_param_name, 2 );

            if l_param_name is null then
                continue;
            end if;

            l_value      := regexp_substr( p_default_value, ':' || l_param_name || '{[^\}]*}' );
            l_value      := regexp_substr( l_value, '{[^\}]*}' );
            l_value      := regexp_replace( l_value, '[{}]' );

            apex_debug.info(
                p_message => 'parameter name: %s%n'||
                             'value: %s',
                p0        => l_param_name,
                p1        => l_value );


            if l_value is null then

                p_error := true;
                apex_error.add_error(
                    p_message => 'Error: Default value for parameter ' || l_param_name || 'is not found',
                    p_additional_info => SQLERRM,
                    p_display_location  => apex_error.c_inline_with_field_and_notif
                );
                return;

            end if;

            l_source_param.name       := l_param_name;
            l_source_param.value      := l_value;
            l_source_param.param_type := apex_plugin.c_web_src_param_url_pattern;
            l_source_param.direction  := apex_plugin.c_direction_in;
            p_parameters( p_parameters.count +1 ) := l_source_param;

        end loop;

    end loop;

    p_error := false;

    apex_debug.trace(
        p_message => 'Exit get_params.' );

end get_params;

--==============================================================================
-- this function is used to pass the value of paramters to resource path
--==============================================================================
function replace_params_resource_path(
    p_resource_path         in varchar2,
    p_web_source_parameters in apex_plugin.t_web_source_parameters )
    return varchar2
as
    l_resource_path     varchar2( 32767 );
    l_parameter         apex_plugin.t_web_source_parameter;
begin

    l_resource_path := p_resource_path;

    for i in 1..p_web_source_parameters.count
    loop

        l_parameter := p_web_source_parameters( i );
        l_resource_path := replace( l_resource_path, ':' || l_parameter.name, l_parameter.value );

    end loop;

    return l_resource_path;

end replace_params_resource_path;

--==============================================================================
-- This function is useed to build data profile by using the metadata of an
-- entity type
--==============================================================================
function extract_from_entity_type(
    p_entity_type   in varchar2,
    p_root_selector in varchar2 )
    return apex_plugin.t_web_source_columns
as
    l_temp_col          apex_plugin.t_web_source_column;
    l_data_profile_cols apex_plugin.t_web_source_columns;
    l_temp_cols         apex_plugin.t_web_source_columns;
    l_property          t_property;
    l_prop              sys_refcursor;
begin
    apex_debug.enter( p_routine_name => c_scope || 'extract_from_entity_type' );

    apex_debug.info(
        p_message => 'entity type: %s%n'||
                     'root selector: %s',
        p0        => p_entity_type,
        p1        => p_root_selector );


    l_prop := get_type_cursor( p_entity_type );
    loop
        l_temp_col := null;
        fetch l_prop into l_property;
        exit when l_prop%notfound;

        l_temp_col.name := upper(l_property.prop_name);

        if l_temp_col.name member of g_key_name then
            l_temp_col.is_primary_key := true;
        end if;

        apex_debug.info(
            p_message => 'Column Name: %s',
            p0        => l_temp_col.name  );

        if l_property.base_type is not null then

            apex_debug.info(
                p_message => '%s has base type',
                p0        => l_temp_col.name  );

            l_temp_cols := extract_from_entity_type(
                               p_entity_type   => split_name_space( l_property.base_type ),
                               p_root_selector => p_root_selector );

            for i in 1 .. l_temp_cols.count loop
                l_data_profile_cols( l_data_profile_cols.count + 1 ) := l_temp_cols( i );
            end loop;

        end if;

        if p_root_selector is not null then
            l_temp_col.selector := p_root_selector
                                   || '.'
                                   || l_property.prop_name;

            l_temp_col.name := upper(replace( l_temp_col.selector , '.', '_' ));
        else
            l_temp_col.selector := l_property.prop_name;
        end if;

        apex_debug.info(
            p_message => 'Selector:  %s',
            p0        => l_temp_col.selector  );

        if split_name_space( l_property.prop_type ) member of g_enum_type_names then

            apex_debug.info(
                p_message => '%s is EnumType',
                p0        => l_temp_col.name );

            l_temp_col.data_type        := apex_exec.c_data_type_varchar2;
            l_temp_col.remote_data_type := l_property.prop_type;
            l_data_profile_cols( l_data_profile_cols.count + 1 ):= l_temp_col;
            continue;

        end if;

        if not is_primitive_datatype( l_property.prop_type )then

            l_temp_cols := extract_from_entity_type(
                               p_entity_type   => split_name_space( l_property.prop_type ),
                               p_root_selector => l_temp_col.selector );

            for i in 1..l_temp_cols.count loop

                l_data_profile_cols( l_data_profile_cols.count + 1 ) := l_temp_cols( i );

            end loop;

            continue;

        end if;

        datatype_converter(
            p_odata_datatype  => l_property.prop_type,
            p_oracle_datatype => l_temp_col.data_type,
            p_remote_datatype => l_temp_col.remote_data_type );

        apex_debug.info(
            p_message => 'Datatype: %s',
            p0        => l_temp_col.data_type );

        l_temp_col.selector_type := apex_plugin.c_selector_name;

        if l_property.maxlength is not null then
            l_temp_col.max_length := l_property.maxlength;
        end if;

        if l_temp_col.data_type = apex_exec.c_data_type_timestamp_tz then
            l_temp_col.has_time_zone := true;
        end if;

        l_data_profile_cols( l_data_profile_cols.count + 1 ) := l_temp_col;
    end loop;

    apex_debug.trace(
        p_message => 'Exit extract_from_entity_type.' );

    return l_data_profile_cols;
end extract_from_entity_type;

--==============================================================================
-- this function is used to get a row selector by checking whether the attribute
-- "value" exists in the response.
--==============================================================================
function get_row_selector(
    p_sample_response in clob )
    return varchar2
as
    l_value                     number;
    l_row_selector              varchar( 5 );
begin

    select
        1
    into
        l_value
    from
        sys.dual
    where json_exists( p_sample_response, '$.value' );

    return 'value';

    exception
    when no_data_found then
        return '';

end get_row_selector;

--==============================================================================
-- this function is used to check whether a REST Request retrieve raw value
--==============================================================================
function is_raw_value_call(
    p_resource_path in varchar2 )
    return boolean
as
begin

    return lower(p_resource_path) like '%$value';

end is_raw_value_call;

--==============================================================================
-- this function is used to check whether a REST Request retrieve property value
--==============================================================================
function is_property_call(
    p_end_point in varchar2 )
    return boolean
as
    l_value number;
begin

    select
        count( name )
    into
        l_value
    from
        xmltable(
           xmlnamespaces(
               'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
               default 'http://docs.oasis-open.org/odata/ns/edm' ),
           '/edmx:Edmx/edmx:DataServices/Schema//Property'
           passing sys.xmltype( g_metadata )
           columns
               name      varchar2( 4000 ) path '@Name'
    )   xt1
    where lower( xt1.name ) = lower( p_end_point );

    return l_value > 0;

end is_property_call;

--==============================================================================
-- this function is used to extract the attributes of a property
--==============================================================================
function extract_from_single_property(
    p_end_point in varchar2 )
    return apex_plugin.t_web_source_column
as
    l_col_profile       apex_plugin.t_web_source_column;
    l_name              varchar(100);
    l_type              varchar(100);
    l_max_length        number;
begin

    with qry_property as (
        select distinct
            xt1.name                                        as prop_name,
            xt1.type                                        as prop_type,
            xt1.nullable                                    as nullable,
            case when xt1.maxlength = 'max'
               then 32767 else to_number( xt1.maxlength )
           end                                              as maxlength
        from
            xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '/edmx:Edmx/edmx:DataServices/Schema//Property'
               passing sys.xmltype( g_metadata )
               columns
                   name      varchar2( 4000 ) path '@Name',
                   type      varchar2( 4000 ) path '@Type',
                   nullable  varchar2( 100 )  path '@Nullable',
                   maxlength varchar2( 100 )  path '@MaxLength'
        )   xt1
    ) , qry_enum as (
        select distinct
            xt1.name                                        as prop_name,
            xt1.type                                        as prop_type,
            xt1.nullable                                    as nullable,
            case when xt1.maxlength = 'max'
               then 32767 else to_number( xt1.maxlength )
           end                                              as maxlength
        from
           xmltable(
               xmlnamespaces(
                   'http://docs.oasis-open.org/odata/ns/edmx' as "edmx",
                   default 'http://docs.oasis-open.org/odata/ns/edm' ),
               '/edmx:Edmx/edmx:DataServices/Schema//EnumType'
               passing sys.xmltype( g_metadata )
               columns
                   name      varchar2( 4000 ) path '@Name',
                   type      varchar2( 4000 ) path '@Type',
                   nullable  varchar2( 100 )  path '@Nullable',
                   maxlength varchar2( 100 )  path '@MaxLength'
        ) xt1
    ), qry_all as
    (
        select
            *
        from
            qry_property
        union all
        select
            *
        from
            qry_enum
    )
    select
        prop_name,
        prop_type,
        maxlength
    into
        l_name,
        l_type,
        l_max_length
    from
        qry_all
    where
        lower( prop_name ) = lower( p_end_point );

    l_col_profile.name      := upper(l_name);
    l_col_profile.selector  := 'value';

    datatype_converter(
        p_odata_datatype  => l_type,
        p_oracle_datatype => l_col_profile.data_type,
        p_remote_datatype => l_col_profile.remote_data_type
    );

    return l_col_profile;

end extract_from_single_property;

--==============================================================================
-- this function is used to get the end point of a RESTful Request
--==============================================================================
function get_end_point(
    p_service_url in varchar2 )
    return varchar2
as
    l_last_part                    varchar2( 32767 );
    l_end_point_without_filter     varchar2( 32767 );
    l_end_point                    varchar2( 32767 );
begin

    l_last_part :=  case when p_service_url like '%/%'
                         then substr( p_service_url, instr( p_service_url, '/', -1 ) + 1 )
                         else p_service_url
                    end;

    l_end_point_without_filter  :=  case when l_last_part like '%?%'
                                         then substr( l_last_part, 1, instr( l_last_part, '?' ) - 1 )
                                         else l_last_part
                                    end;

    l_end_point :=  case when l_end_point_without_filter like '%(%'
                         then substr( l_end_point_without_filter, 1, instr( l_end_point_without_filter, '(' ) - 1 )
                         else l_end_point_without_filter
                    end;

    return l_end_point;

end get_end_point;

--==============================================================================
-- This function is used to check whether an ODATA's datatype is primitive
-- datatype.
--==============================================================================
function is_primitive_datatype(
    p_data_type in varchar2 )
    return boolean
as
begin

    --
    -- LIKE is slightly more efficient than INSTR; so if the position is not needed,
    -- LIKE is typically the better choice.
    --
    return p_data_type like '%Edm%' or p_data_type like '%Collection%';

end is_primitive_datatype;

--==============================================================================
-- This function is used to check whether illegal parameter are used
--==============================================================================
function illegal_params_check(
    p_resource_path in varchar2 )
    return boolean
as
    l_forbidden_params_list         apex_t_varchar2;
begin

    apex_debug.enter( p_routine_name => c_scope || 'illegal_params_check' );

    l_forbidden_params_list := get_forbidden_params();

    for i in 1 .. l_forbidden_params_list.count
    loop

        if p_resource_path like '%' || l_forbidden_params_list( i ) || '%' then

            apex_error.add_error(
                p_message => 'Error: At least 1 illegal ODATA Parameter was found in URL. Please don''t use any of these Parameters when adding an ODATA Source: ' || plg_odata_connector.c_forbidden_param_list,
                p_additional_info => SQLERRM,
                p_display_location  => apex_error.c_inline_with_field_and_notif
            );

            return false;

        end if;

    end loop;

    apex_debug.trace(
        p_message => 'Exit illegal_params_check. ' );

    return true;

end illegal_params_check;

--==============================================================================
-- This function is used to map the ODATA's datatypes to Oracle's Datatypes
--==============================================================================
procedure datatype_converter(
    p_odata_datatype  in  varchar2,
    p_oracle_datatype out apex_exec.t_data_type,
    p_remote_datatype out varchar2
)as
begin

    if p_odata_datatype like '%Collection%' then

        p_oracle_datatype := apex_exec.c_data_type_user_defined;
        p_remote_datatype := p_odata_datatype;
        return;

    end if;

    p_oracle_datatype:=
            case p_odata_datatype
                when 'Edm.Int32' then apex_exec.c_data_type_number
                when 'Edm.Int64' then apex_exec.c_data_type_number
                when 'Edm.Decimal' then apex_exec.c_data_type_number
                when 'Edm.Byte' then apex_exec.c_data_type_number
                when 'Edm.SByte' then apex_exec.c_data_type_number
                when 'Edm.Double' then apex_exec.c_data_type_number
                when 'Edm.Int16' then apex_exec.c_data_type_number
                when 'Edm.Single' then apex_exec.c_data_type_number
                when 'Edm.Date' then apex_exec.c_data_type_date
                when 'Edm.DateTimeOffset' then apex_exec.c_data_type_timestamp_tz
                when 'Edm.Binary' then apex_exec.c_data_type_blob
                when 'Edm.Geography' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyPoint' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyLineString' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyPolygon' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyMultiPoint' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyMultiLineString' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyMultiPolygon' then apex_exec.c_data_type_user_defined
                when 'Edm.GeographyCollection' then apex_exec.c_data_type_user_defined
                when 'Edm.Geometry' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryPoint' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryLineString' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryPolygon' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryMultiPoint' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryMultiLineString' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryMultiPolygon' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.GeometryCollection' then apex_exec.c_data_type_sdo_geometry
                when 'Edm.String' then apex_exec.c_data_type_varchar2
            end;

    if p_oracle_datatype is null then

        p_oracle_datatype    := apex_exec.c_data_type_varchar2;
        p_remote_datatype   := p_odata_datatype;

    end if;

end datatype_converter;

--==============================================================================
-- This function is used to extract all metadata and build data profile for the
-- RESTful Request.
--==============================================================================
procedure odata_extract_metadata(
    p_web_source_operation      in  apex_plugin.t_web_source_operation,
    p_resource_path             in  varchar2,
    p_data_profile_cols         out apex_plugin.t_web_source_columns,
    p_is_single_property_call   out boolean )
as
    l_res                           clob;
    l_entity_set                    varchar2( 32767 );
    l_entity_type                   varchar2( 100 );
    l_dummy_parameters              apex_plugin.t_web_source_parameters;
begin

    apex_debug.enter( p_routine_name => c_scope || 'odata_extract_metadata' );
    --
    -- this should use APEX_PLUGIN_UTIL.MAKE_REST_REQUEST in order to make sure
    -- that the configured REST Source Parameters *and* the chosen Web Credential is also
    -- takem into account.
    --

    apex_plugin_util.make_rest_request(
        p_web_source_operation => p_web_source_operation,
        p_response => l_res,
        p_response_parameters => l_dummy_parameters );

    g_metadata        :=  l_res;

    if g_metadata is null then

        return;

    end if;

    l_entity_set := get_entityset_by_prop_path( p_resource_path );

    if l_entity_set is null then

        l_entity_set    :=  get_end_point( p_resource_path );

    end if;

    l_entity_type              := get_entity_type_name( l_entity_set );

    p_is_single_property_call := l_entity_type is null and is_property_call( l_entity_set );

    if p_is_single_property_call then

        p_data_profile_cols( p_data_profile_cols.count + 1 ) := extract_from_single_property( l_entity_set );
        return;

    end if;

    g_key_name        := get_key( l_entity_type );
    g_enum_type_names := get_enum_type_name();

    apex_debug.info(
        p_message => 'Entity Type: %s',
        p0        => l_entity_type  );

    p_data_profile_cols        := extract_from_entity_type(
                                        p_entity_type => l_entity_type,
                                        p_root_selector => ''
                                    );

    if sys.dbms_lob.istemporary( l_res ) = 1 then
        sys.dbms_lob.freetemporary( l_res );
    end if;

    apex_debug.trace(
        p_message => 'Exit odata_extract_metadata.');

end odata_extract_metadata;

end plg_odata_metadata;
/
