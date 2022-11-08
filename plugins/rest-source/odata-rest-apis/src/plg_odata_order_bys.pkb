create or replace package body plg_odata_order_bys as

-------------------------------------------------------------------------------
-- Name: plg_odata_order_bys.pkb
-- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
-------------------------------------------------------------------------------

--=============================================================================
-- Constants
--=============================================================================
c_scope constant varchar2(129) := $$plsql_unit || '.';

--=============================================================================
-- Transform the supplied orderby parameters to an format
-- that odata understands and can read
--=============================================================================
function odata_orderby_format (
    p_profile_columns         in apex_plugin.t_web_source_columns,
    p_order_bys               in apex_exec.t_order_bys,
    p_external_order_bys      in varchar2  )
    return varchar2
as
    l_return_value        varchar2( 32767 ); -- Return value containtin the odata orderby string
    --
    l_direction           varchar2( 50 ); -- Direction of the orderby (asc/desc)
    l_orderby_dir         apex_exec.t_order_direction; -- Direction
    --
    l_ext_order_bys       apex_exec.t_order_bys; -- Array of external orderbys Orderbys
    --
    l_arr_orderbys        apex_t_varchar2; -- Temp. Array for parsing external order_bys
    l_arr_temp            apex_t_varchar2; -- Temp. Array for parsing external order_bys directions
    --
    l_orderby_lookup      varchar2( 255 ); --Selector for the orderby
    l_ext_orderby_lookup  varchar2( 255 ); -- Selector for the external orderby
    --
    l_separator           varchar2( 1 CHAR ) := ','; -- Separator for the orderby string
    l_separator_direction varchar2( 1 CHAR ) := ' '; -- Separator for splitting the column and direction
begin

    apex_debug.enter( p_routine_name => c_scope || 'odata_orderby_format' );

    apex_debug.info(
        p_message => 'OrderBys Count: %s%n' ||
                     'External OrderBys: %s',
        p0        => p_order_bys.count,
        p1        => p_external_order_bys );

    --
    -- Process p_external_order_bys
    -- As a result a t_order_bys array will be filled with all external orderbys ( l_ext_order_bys )
    --
    <<import_external_orderbys>>
    if p_external_order_bys is not null then

        l_arr_orderbys := apex_string.split(
                              p_str => p_external_order_bys,
                              p_sep => l_separator );

        -- Go trough all external orderbys
        for i in 1..l_arr_orderbys.count
        loop

            --
            -- Remove Leading whitespaces and split any other
            -- This needs to be done to get the direction
            -- e.x External Orderby: EmpID ASC, DeptID DESC
            --
            l_arr_temp := apex_string.split(
                              p_str => trim( LEADING from l_arr_orderbys( i ) ),
                              p_sep => l_separator_direction );

            --Check if a direction was supplied if not asc will be used by default
            if l_arr_temp.count > 1 then

                --
                -- Transform the supplied direction to the odata direction format
                -- the second element in the array is the direction
                -- e.x. ASC -> asc
                --
                l_orderby_dir := case lower( l_arr_temp( 2 ) )
                                     when 'asc'  then apex_exec.c_order_asc
                                     when 'desc' then apex_exec.c_order_desc
                                     else apex_exec.c_order_asc
                                 end;

            end if;

            -- Debug for Orderby Column & Direction
            apex_debug.info(
                p_message => 'OrderBy Column Name: %s%n' ||
                             'OrderBy Direction: %s',
                p0        => l_arr_temp( 1 ),
                p1        => l_orderby_dir );

            -- Fill l_ext_order_bys (type t_order_bys) with external orderbys
            apex_exec.add_order_by(
                p_order_bys   => l_ext_order_bys,
                p_column_name => l_arr_temp( 1 ),
                p_direction   => l_orderby_dir,
                p_order_nulls => null );

        end loop;

        apex_debug.info(
            p_message => 'External_orderby_cnt: %s',
            p0        => l_ext_order_bys.count );

    end if;

    -- Process all supplied OrderBy Conditions
    <<orderbys_selector_loop>>
    for i in 1..p_order_bys.count
    loop

        apex_debug.info(
            p_message => 'OrderBy: %s',
            p0        => p_order_bys( i ).column_name );

        -- Get Selector for Column
        for j in 1..p_profile_columns.count
        loop

            if p_profile_columns( j ).name = p_order_bys( i ).column_name then

                --
                -- Check if the remote_data_type is a Primitive Data Type
                -- Non Primitive Data Types have set a remote_data_type
                -- Since Enumeration type's do not support Ordering
                --
                if  p_profile_columns( j ).remote_data_type is null then

                    --
                    -- a data profile also has the "remote attribute_name" property, which allows to specify
                    -- a JSON or column name which is different from the JSON selector. If a remote attribute
                    -- name is present, it should take precendence over the selector.
                    --
                    l_orderby_lookup := coalesce(
                                            p_profile_columns( j ).remote_attribute_name,
                                            p_profile_columns( j ).selector );
                    exit;

                else

                apex_debug.warn(
                    p_message => '%s is not a primitive Datatype, ignoring OrderBy',
                    p0        => p_profile_columns( j ).name );

                end if;

            end if;

        end loop;

        l_direction := case when p_order_bys( i ).direction = apex_exec.c_order_asc
                            then 'asc'
                            else 'desc'
                       end;

        --Filter and prioritise the orderbys that are comming from the user
        for j in 1..l_ext_order_bys.count
        loop

            --Check if the external orderby is already present in the user orderby list
            --If yes, then the user orderby will be used
            if l_ext_order_bys( j ).column_name = p_order_bys( i ).column_name then

                -- Remove the orderby value from the external orderbys array
                l_ext_order_bys( j ) := null;
                exit;

            end if;

        end loop;

        --
        -- Construct a return string
        -- Comma need to be places if multiple values are returned
        -- But only if the selector for the column could be found, in the profile!
        --
        if l_orderby_lookup is not null then

            l_return_value := case when l_return_value is null
                                   then l_orderby_lookup
                                         || ' '
                                         || l_direction

                                   else l_return_value
                                         || ', '
                                         || l_orderby_lookup
                                         || ' '
                                         || l_direction
                              end;

        end if;

    end loop;


    --Loop through external orderbys
    <<external_orderbys_loop>>
    for i in 1..l_ext_order_bys.count
    loop

        -- Get Selector for ColumnEnglischkomma
        for j in 1..p_profile_columns.count
        loop

            if p_profile_columns( j ).name = l_ext_order_bys( i ).column_name then

                if p_profile_columns( j ).remote_data_type is null  then

                    --
                    -- a data profile also has the "remote attribute_name" property, which allows to specify
                    -- a JSON or column name which is different from the JSON selector. If a remote attribute
                    -- name is present, it should take precendence over the selector.
                    --
                    l_ext_orderby_lookup := coalesce(
                                                p_profile_columns( j ).remote_attribute_name,
                                                p_profile_columns( j ).selector );
                    exit;

                else

                    apex_debug.warn(
                        p_message => '%s is not a primitive Datatype, ignoring External OrderBy ',
                        p0        => p_profile_columns( j ).name );
                end if;

            end if;

        end loop;

        apex_debug.info(
            p_message => 'External OrderBy: %s%n' ||
                         'External OrderBy-Loopup: %s',
            p0        => l_ext_order_bys( i ).column_name,
            p1        => l_ext_orderby_lookup );

        -- Transform the supplied direction to the odata direction format
        l_direction := case when l_ext_order_bys( i ).direction = apex_exec.c_order_asc
                            then 'asc'
                            else 'desc'
                       end;

        --
        -- Construct a return string
        -- Comma need to be places if multiple values are returned
        --
        if l_ext_orderby_lookup is not null then

            l_return_value := case when l_return_value is null
                                   then l_ext_orderby_lookup
                                       || ' '
                                       || l_direction

                                   else l_return_value
                                       || ', '
                                       || l_ext_orderby_lookup
                                       || ' '
                                       || l_direction
                              end;

        else

            apex_debug.warn(
                p_message => 'Cannot Proccess OrderBy %s for Selector %s because no valid selector/profile column could be found in the REST Source Profile',
                p0        => l_ext_order_bys( i ).column_name,
                p1        => l_ext_orderby_lookup );

        end if;

    end loop external_orderbys_loop;


    apex_debug.trace(
        p_message => 'Exit fc_odata_orderby_format. return=%s ',
        p0 => l_return_value );

    return l_return_value;

end odata_orderby_format;

end plg_odata_order_bys;
/
