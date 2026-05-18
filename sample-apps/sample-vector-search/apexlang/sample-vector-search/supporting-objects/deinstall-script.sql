----------------------------------------------------------------
-- Remove Tables
---------------------------------------------------------------
drop table eba_vector_datatable purge;
drop table eba_vector_moviedata purge;

drop table eba_vector_ai_helper purge;

----------------------------------------------------------------
-- Remove Package
----------------------------------------------------------------
drop package eba_sample_vector_search_pkg;