begin
    eba_search_text_data.seed_data;
end;
/

begin
    eba_search_text_helper.create_text_index(
        p_table_name   => 'EBA_SRCH_TXT_EMPLOYEES',
        p_index_name   => 'EBA_SRCH_TXT_EMPS_FTIDX',
        p_index_column => 'LAST_NAME',
        p_config       =>  eba_search_text_helper.get_config );
end;
/
sho err