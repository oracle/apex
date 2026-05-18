CREATE TABLE eba_ca_tags (
    id                      number primary key,
    tag                     varchar2(255) not null,
    content_id              number,
    content_type            varchar2(30)
                            constraint eba_ca_tags_ck check
                            (content_type in ('EVENT','NOTES','FILE')),
    --
    created                 timestamp with time zone,
    created_by              varchar2(255),
    updated                 timestamp with time zone,
    updated_by              varchar2(255)
    )
/

create or replace trigger biu_eba_ca_tags
   before insert or update on eba_ca_tags
   for each row
   begin
      if inserting then
         if :NEW.ID is null then
           select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
           into :new.id
           from dual;
         end if;
         :NEW.CREATED := current_timestamp;
         :NEW.CREATED_BY := nvl(v('APP_USER'),USER);
      end if;

      if updating then
         :NEW.UPDATED := current_timestamp;
         :NEW.UPDATED_BY := nvl(v('APP_USER'),USER);
      end if;
end;
/
show errors

create table eba_ca_tags_type_sum (
    tag                             varchar2(255),
    content_type                    varchar2(30),
    tag_count                       number,
    constraint eba_ca_tags_type_sum_pk primary key (tag,content_type)
    )
/

create table eba_ca_tags_sum (
    tag                             varchar2(255),
    tag_count                       number,
    constraint eba_ca_tags_sum_pk   primary key (tag)
    )
/
