/* varchar2_to_blob function */
create or replace function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table)
    return blob
is
  l_blob blob;
  l_raw  raw(500);
  l_size number;
begin
  dbms_lob.createtemporary(l_blob, true, dbms_lob.session);
  for i in 1 .. p_varchar2_tab.count loop
    l_size := length(p_varchar2_tab(i)) / 2;
    dbms_lob.writeappend(l_blob, l_size, hextoraw(p_varchar2_tab(i)));
  end loop;
  return l_blob;
exception
  when others then
    dbms_lob.close(l_blob);
end;  
/

