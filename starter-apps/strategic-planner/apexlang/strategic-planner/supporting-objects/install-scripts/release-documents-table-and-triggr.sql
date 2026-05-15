create table sp_release_documents (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_release_documents_pk primary key,
    release_id                     number
                                   constraint sp_release_doc_ini_id_fk
                                   references sp_release_trains on delete cascade,
    --
    document_blob                  blob,
    document_filename              varchar2(512 char),
    document_mimetype              varchar2(512 char),
    document_charset               varchar2(512 char),
    document_lastupd               date,
    --
    important_yn                   varchar2(1 char),
    doc_description                varchar2(4000 char),
    --
    tags                           varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_release_documents_i1 on sp_release_documents (release_id);
create index sp_release_documents_i2 on sp_release_documents (updated);

	
create or replace trigger sp_release_documents_biu
    before insert or update
    on sp_release_documents
    for each row
declare
    l_tags varchar2(4000) := null;
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    --
    --
    --
    :new.tags := upper(:new.tags);
    --
    -- touch parent table
    --
    update sp_release_trains set updated = sysdate, updated_by = :new.updated_by where id = :new.release_id;
    --
    -- adjust tag data
    --
    if :new.tags is not null then
        l_tags := trim(upper(:new.tags));
        -- remove multiple spaces
        if instr(l_tags,'  ') > 0 then
            for j in 1..10 loop 
                l_tags := replace(l_tags,'  ',' '); 
                if instr(l_tags,'  ') = 0 then
                   exit;
                end if;
            end loop; 
        end if;
        for i in 1..length(l_tags) loop
            if i > 2 and substr(l_tags,i,1) = ' ' and substr(l_tags,i-1,1) != ',' then
               l_tags := substr(l_tags,1,i-1)||'-'||substr(l_tags,i+1);
            end if;
        end loop;
        :new.tags := l_tags;
   end if;
    --
    -- history
    --
    if inserting then
        insert into sp_release_history
            (release_id, attribute_column, change_type, new_value, changed_on, changed_by)
        values
            (:new.release_id, 'DOCUMENT', 'CREATE', :new.DOCUMENT_FILENAME, sysdate, lower(:new.created_by));
    elsif updating then 
        insert into sp_release_history
            (release_id, attribute_column, change_type, old_value, new_value, changed_on, changed_by)
        values
            (:new.release_id, 'DOCUMENT', 'UPDATE', :old.DOCUMENT_FILENAME, :new.DOCUMENT_FILENAME, sysdate, lower(:new.updated_by));
    end if;
end sp_release_documents_biu;
/

create or replace trigger sp_release_documents_bd
    before delete
    on sp_release_documents
    for each row
begin
    insert into sp_release_history
        (release_id, attribute_column, change_type, old_value, changed_on, changed_by)
    values
        (:old.release_id, 'DOCUMENT', 'DELETE', :old.document_filename, sysdate, lower(coalesce(sys_context('APEX$SESSION','APP_USER'),user)));
end sp_release_documents_bd;
/