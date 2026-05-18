create or replace package eba_sample_vector_search_pkg authid current_user
as
--
-- using the AUTHID CURRENT_USER clause, as the package code references
-- the CTX_DDL package, which is often only available through the CTXAPP *role*.
--

--------------------------------------------------------------------------------
-- returns TRUE, if Oracle TEXT and the EBA_VECTOR_MOVIEDATA table is 
-- available, false otherwise.
--------------------------------------------------------------------------------
function has_moviedata_and_oracle_text return boolean;

--------------------------------------------------------------------------------
-- returns TRUE, if Oracle TEXT and the EBA_VECTOR_DATATABLE table is 
-- available, false otherwise.
--------------------------------------------------------------------------------
function has_datatable_and_oracle_text return boolean;

--------------------------------------------------------------------------------
 -- deletes rows where mandatory fields are null 
--------------------------------------------------------------------------------
procedure delete_invalid_movie_data;

end eba_sample_vector_search_pkg;
/

create or replace package body eba_sample_vector_search_pkg 
as

--------------------------------------------------------------------------------
function has_moviedata_and_oracle_text return boolean 
is
    l_count  number;
begin
    select count(*)
      into l_count
      from (
        select 1 
          from eba_vector_moviedata
         where embedding_vector is not null
           and rownum            = 1
        union all
        select 1 
          from sys.all_objects
         where owner       = 'CTXSYS' 
           and object_name = 'CTX_DDL' 
           and rownum      = 1 );

    return l_count = 2;

end has_moviedata_and_oracle_text;

--------------------------------------------------------------------------------
function has_datatable_and_oracle_text return boolean 
is
    l_count  number;
begin
    select count(*)
      into l_count
      from (
        select 1 
          from eba_vector_datatable
         where embedding_vector is not null
           and rownum            = 1
        union all
        select 1 
          from sys.all_objects
         where owner       = 'CTXSYS' 
           and object_name = 'CTX_DDL' 
           and rownum      = 1 );

    return l_count = 2;

end has_datatable_and_oracle_text;

--------------------------------------------------------------------------------
procedure delete_invalid_movie_data
is
begin
    delete from eba_vector_moviedata
     where (    title            is null
             or moviedescription is null
             or actors           is null
             or genre            is null
             or release_date     is null
             or rating           is null );

end delete_invalid_movie_data;

end eba_sample_vector_search_pkg;

/