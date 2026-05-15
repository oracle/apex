
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "EBA_UTIL_FACAT_MANIFEST" ("MANIFEST_JSON") AS 
  select nvl(c.clob001,'{"releases":[]}') as manifest_json
from dual
left join apex_collections c 
       on c.collection_name = 'EBA_UTIL_FACAT_MANIFEST'
fetch first row only;