create table sp_initiative_documents (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_initiative_documents_pk primary key,
    initiative_id                     number
                                   constraint sp_initiative_doc_ini_id_fk
                                   references sp_initiatives on delete cascade,
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
)
;

create index sp_initiative_documents_i1 on sp_initiative_documents (initiative_id);
create index sp_initiative_documents_i2 on sp_initiative_documents (updated);

	
create or replace trigger sp_initiative_documents_biu
    before insert or update
    on sp_initiative_documents
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
    update sp_initiatives set updated = sysdate, updated_by = :new.updated_by where id = :new.initiative_id;
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
end sp_initiative_documents_biu;
/