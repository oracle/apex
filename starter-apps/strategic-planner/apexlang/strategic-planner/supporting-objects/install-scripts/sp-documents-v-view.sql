create or replace view sp_documents_v as
select 'Project' doc_type,
       apex_page.get_url (
           p_page   => 30,
           p_items  => 'P30_ID,P30_PREV_PAGE',
           p_values => d.ID||',156') link,
       p.project name,
       p.project project,
       d.DOCUMENT_FILENAME,
       d.UPDATED,
       d.created,
       substr(d.doc_description,1,200)||case when length(d.doc_description) > 200 then '...' end doc_description,
       lower(d.created_by) added_by,
       dbms_lob.getlength(document_BLOB) filesize,
       lower(substr(DOCUMENT_FILENAME,instr(DOCUMENT_FILENAME,'.',-1)+1,length(DOCUMENT_FILENAME)-instr(DOCUMENT_FILENAME,'.',-1))) file_extension,
       d.tags,
       nvl((select release_train||' '||release from sp_release_trains
             where id = p.release_id),'Not Targeted') release,
       decode(d.important_yn,'Y', 'Yes','No') important,
       -- for download
       d.id document_id,
       d.document_BLOB,
       d.document_mimetype,
       d.document_lastupd,
       d.document_charset,
       p.id project_id,
       null release_id,
       null task_id,
       null initiative_id,
       null initiative_focus_area_id
  from SP_PROJECT_DOCUMENTS d,
       sp_projects p
 where project_id = p.id and
       p.ARCHIVED_YN = 'N' and 
       p.DUPLICATE_OF_PROJECT_ID is null
union all
select 'Release' doc_type,
       apex_page.get_url (
           p_page   => 42,
           p_items  => 'P42_ID,P42_PREV_PAGE',
           p_values => d.ID||',156') link,
       r.release_train ||' ' ||r.release name,
       null project,
       d.DOCUMENT_FILENAME,
       d.UPDATED,
       d.created,
       substr(d.doc_description,1,200)||case when length(d.doc_description) > 200 then '...' end doc_description,
       lower(d.created_by) added_by,
       dbms_lob.getlength(document_BLOB) filesize,
       lower(substr(DOCUMENT_FILENAME,instr(DOCUMENT_FILENAME,'.',-1)+1,length(DOCUMENT_FILENAME)-instr(DOCUMENT_FILENAME,'.',-1))) file_extension,
       d.tags,
       release_train||' '||release release,
       decode(d.important_yn,'Y', 'Yes','No') important,
       -- for download
       d.id document_id,
       d.document_BLOB,
       d.document_mimetype,
       d.document_lastupd,
       d.document_charset,
       null project_id,
       r.id release_id,
       null task_id,
       null initiative_id,
       null initiative_focus_area_id
  from SP_RELEASE_DOCUMENTS d,
       sp_release_trains r
 where r.id = d.release_id
union all
select 'Initiative' doc_type,
       apex_page.get_url (
           p_page   => 53,
           p_items  => 'P53_ID,P53_PREV_PAGE',
           p_values => d.ID||',156') link,
       a.area || ' / ' ||initiative name,
       null project,
       d.DOCUMENT_FILENAME,
       d.UPDATED,
       d.created,
       substr(d.doc_description,1,200)||case when length(d.doc_description) > 200 then '...' end doc_description,
       lower(d.created_by) added_by,
       dbms_lob.getlength(document_BLOB) filesize,
       lower(substr(DOCUMENT_FILENAME,instr(DOCUMENT_FILENAME,'.',-1)+1,length(DOCUMENT_FILENAME)-instr(DOCUMENT_FILENAME,'.',-1))) file_extension,
       d.tags,
       null release,
       decode(d.important_yn,'Y', 'Yes','No') important,
       -- for download
       d.id document_id,
       d.document_BLOB,
       d.document_mimetype,
       d.document_lastupd,
       d.document_charset,
       null project_id,
       null release_id,
       null task_id,
       i.id initiative_id,
       null initiative_focus_area_id
  from SP_INITIATIVE_DOCUMENTS d,
       sp_initiatives i,
       sp_areas a
 where d.initiative_id = i.id
   and i.area_id = a.id
union all
select 'Initiative Focus Area' doc_type,
       apex_page.get_url (
           p_page   => 59,
           p_items  => 'P59_ID,P59_PREV_PAGE',
           p_values => d.ID||',156') link,
       i.initiative ||' - '|| f.focus_area name,
       null project,
       d.DOCUMENT_FILENAME,
       d.UPDATED,
       d.created,
       substr(d.doc_description,1,200)||case when length(d.doc_description) > 200 then '...' end doc_description,
       lower(d.created_by) added_by,
       dbms_lob.getlength(document_BLOB) filesize,
       lower(substr(DOCUMENT_FILENAME,instr(DOCUMENT_FILENAME,'.',-1)+1,length(DOCUMENT_FILENAME)-instr(DOCUMENT_FILENAME,'.',-1))) file_extension,
       d.tags,
       null release,
       decode(d.important_yn,'Y', 'Yes','No') important,
       -- for download
       d.id document_id,
       d.document_BLOB,
       d.document_mimetype,
       d.document_lastupd,
       d.document_charset,
       null project_id,
       null release_id,
       null task_id,
       i.id initiative_id,
       f.id initiative_focus_area_id
  from SP_INIT_FOCUS_AREA_DOCUMENTS d,
       sp_initiative_focus_areas f,
       sp_initiatives i
 where d.init_focus_area_id = f.id
   and f.initiative_id = i.id
union all
select 'Task' doc_type,
       apex_page.get_url (
           p_page   => 505,
           p_items  => 'P505_ID,P505_PREV_PAGE',
           p_values => d.ID||',156') link,
       case when t.task_sub_type_id is not null
            then (select task_type from sp_task_types
                   where id = t.task_type_id)||': '
            end || tt.task_type || case when t.task is not null then ' - '||t.task end name,
       p.project,
       d.DOCUMENT_FILENAME,
       d.UPDATED,
       d.created,
       substr(d.doc_description,1,200)||case when length(d.doc_description) > 200 then '...' end doc_description,
       lower(d.created_by) added_by,
       dbms_lob.getlength(document_BLOB) filesize,
       lower(substr(DOCUMENT_FILENAME,instr(DOCUMENT_FILENAME,'.',-1)+1,length(DOCUMENT_FILENAME)-instr(DOCUMENT_FILENAME,'.',-1))) file_extension,
       d.tags,
       nvl((select release_train||' '||release from sp_release_trains
             where id = p.release_id),'Not Targeted') release,
       decode(d.important_yn,'Y', 'Yes','No') important,
       -- for download
       d.id document_id,
       d.document_BLOB,
       d.document_mimetype,
       d.document_lastupd,
       d.document_charset,
       p.id project_id,
       null release_id,
       t.id task_id,
       null initiative_id,
       null initiative_focus_area_id
  from SP_TASK_DOCUMENTS d,
       sp_tasks t,
       sp_task_types tt,
       sp_projects p
 where d.task_id = t.id
   and nvl(t.task_sub_type_id,t.task_type_id) = tt.id
   and t.project_id = p.id;