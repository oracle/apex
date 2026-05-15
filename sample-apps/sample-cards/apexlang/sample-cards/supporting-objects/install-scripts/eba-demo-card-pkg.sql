create or replace package eba_demo_card_pkg as

    function get_video_duration (
        p_video_id in varchar2 ) return varchar2;

    procedure get_profile_image (
        p_empno in number);

end eba_demo_card_pkg;
/

create or replace package body eba_demo_card_pkg as

    --
    -- Get YouTube video duration using REST Data Source
    -- 
    function get_video_duration (
            p_video_id in varchar2 ) return varchar2
    is
        l_columns    apex_exec.t_columns;
        l_parameters apex_exec.t_parameters;
        l_context    apex_exec.t_context;
    
        type t_column_position is table of pls_integer index by varchar2(32767);
        l_column_position t_column_position;
        l_hour     number;
        l_duration varchar2(255);
    begin
    
        -- specify columns to select from the REST Data Source
        apex_exec.add_column( 
            p_columns       => l_columns,
            p_column_name   => 'DURATION' );

        apex_exec.add_parameter (
            p_parameters => l_parameters,
            p_name       => 'id',
            p_value      => p_video_id );
    
        -- invoke REST Data Source and select data
        l_context := apex_exec.open_rest_source_query(
            p_static_id  => 'APEX_Youtube_Videos',
            p_parameters => l_parameters,
            p_columns    => l_columns );
    
        -- now get result set positions for the selected columns
        l_column_position( 'DURATION' ) := apex_exec.get_column_position( l_context, 'DURATION' );
       
        -- loop through result set and print out contents
        while apex_exec.next_row( l_context ) loop
            l_duration := apex_exec.get_varchar2( l_context, l_column_position( 'DURATION' ) );
        end loop;
        
        -- finally: release all resources
        apex_exec.close( l_context );
        
        -- convert iso-8601 time format to readable format
        l_hour := extract (hour from to_dsinterval( l_duration ));
        l_duration := case when l_hour > 0 then to_char( l_hour, '09' )||':' end ||
                      to_char( extract (minute from to_dsinterval( l_duration )), '09' )||':'||
                      to_char( extract (second from to_dsinterval( l_duration )), '09' );
    
        return l_duration;
    exception
        when others then
            -- IMPORTANT: also release all resources, when an exception occcurs!
            apex_exec.close( l_context );
            raise;
    end get_video_duration;

    --
    -- Get employee profile BLOB image and display inline
    --
    procedure get_profile_image (
        p_empno in number)
    is
        l_export  apex_data_export.t_export;
    begin
        select profile_image, filename, mimetype
          into l_export.content_blob, l_export.file_name, l_export.mime_type
          from eba_demo_card_emp
         where empno = p_empno;

        apex_data_export.download(
            p_export              => l_export,
            p_content_disposition => apex_data_export.c_inline );
    end get_profile_image;

end eba_demo_card_pkg;
/
