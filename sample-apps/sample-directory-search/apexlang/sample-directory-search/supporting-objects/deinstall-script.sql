begin
    eba_search_text_helper.drop_text_index( p_index_name => 'EBA_SRCH_TXT_EMPS_FTIDX' );
end;
/    

drop table eba_srch_txt_cost_centers cascade constraints
/

drop table eba_srch_txt_groups cascade constraints
/

drop table eba_srch_txt_employees  cascade constraints
/

drop view eba_srch_txt_employee_org_v
/

drop table eba_srch_txt_countries
/

drop package eba_search_text_data
/

drop package eba_search_text_helper
/
