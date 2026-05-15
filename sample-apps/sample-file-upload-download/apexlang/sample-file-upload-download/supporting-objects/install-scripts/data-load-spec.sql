create or replace package  EBA_DEMO_FILE_DATA
as
procedure remove_data;
procedure load_data;
end;
/
show errors