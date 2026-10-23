create or replace package eba_search_text_helper authid current_user is 
 
type t_config_column is record( 
    expression              varchar2(4000), 
    --          
    alias                   varchar2(255), 
    pattern                 varchar2(255), 
    priority                pls_integer    default 1, 
    --          
    visible                 boolean        default false, 
    field_search            boolean        default true, 
    two_char_terms_enabled  boolean        default false,         
    ndata_search            boolean        default false, 
    sdata_search            boolean        default false, 
    sdata_op                varchar2(255)  default '=', 
    sdata_datatype          varchar2(128)  default null, 
    --          
    score_expr              varchar2(4000) ); 
 
type t_config_table is table of t_config_column index by varchar2(255); 
 
--============================================================================== 
-- creates the Oracle Text Index with all its preferences based on the 
-- passed configuration records. 
--============================================================================== 
procedure create_text_index( 
    p_table_name      in varchar2, 
    p_index_name      in varchar2, 
    p_index_column    in varchar2, 
    -- 
    p_config          in t_config_table ); 
 
--============================================================================== 
-- drops the Oracle Text Index with all its preferences. 
--============================================================================== 
procedure drop_text_index( 
    p_index_name      in varchar2 ); 
 
--============================================================================== 
-- creates the Oracle Text Index with all its preferences based on the 
-- passed configuration records. 
--============================================================================== 
function search_query( 
    p_table_name        in varchar2, 
    p_index_column      in varchar2, 
    -- 
    p_config            in t_config_table, 
    -- 
    p_search_expression in varchar2 ) 
    return varchar2; 
 
--============================================================================== 
function get_config return eba_search_text_helper.t_config_table; 
 
--============================================================================== 
-- Returns a NAME search query on the EBA_DEMO_IG_PEOPLE table, with the 
-- following configuration. 
-- 
-- eba_search_text_helper.search_query( 
--     p_table_name        => 'EBA_DEMO_IG_PEOPLE', 
--     p_index_column      => 'NAME', 
--     p_search_expression => p_search_expression, 
--     p_config            => eba_search_text_helper.t_config_table( 
--                                'NAME'    => eba_search_text_helper.t_config_column( 
--                                                  field_search => true, 
--                                                  ndata_search => true, 
--                                                  priority     => 1 ), 
--                                'COUNTRY'  => eba_search_text_helper.t_config_column( 
--                                                  priority     => 2, 
--                                                  score_expr   => '*0'), 
--                                'CATEGORY' => eba_search_text_helper.t_config_column( 
--                                                  priority     => 2, 
--                                                  score_expr   => '*0') ) ) ) 
--============================================================================== 
function get_name_search_query( 
    p_search_expression in varchar2 ) 
    return varchar2; 
 
end eba_search_text_helper;
/