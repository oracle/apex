create table eba_ca_color_prefs (
    id                        number            not null
                                                constraint eba_ca_colorpref_pk
                                                primary key,
    row_version_number        number,
    color_name                varchar2(255)     not null,
    bg_color                  varchar2(255),
    text_color                varchar2(255),
    attr_01                   varchar2(255),
    attr_02                   varchar2(255),    
    --
    display_sequence          number,
    --
    created_by                varchar2(255)       not null,
    created                   timestamp with time zone,
    updated_by                varchar2(255)       not null,
    updated                   timestamp with time zone )
/

alter table eba_ca_color_prefs add constraint
   eba_ca_color_prefs_uk unique (COLOR_NAME)
/ 

create or replace trigger biu_eba_ca_color_prefs
before insert or update on eba_ca_color_prefs
    for each row
begin
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from dual;
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created := current_timestamp;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;
    if updating then
        :new.row_version_number := nvl(:old.row_version_number,1) + 1;
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated    := current_timestamp;
    end if;
    if :new.display_sequence is null then
       :new.display_sequence := 10;
    end if;
end;
/
show errors

alter trigger biu_eba_ca_color_prefs enable;
/
    
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (1,'Red',  '#FF0000', '#FF0000');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (2,'Green',  '#00FF00', '#00FF00');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (3,'Orange',  '#FF9900', '#FF9900');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (4,'Gray',  '#CCCCCC', '#CCCCCC');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (5,'Blue',  '#0066FF', '#0066FF');

insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (6,'Black',  '#303030', '#303030');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (7,'Darkblue',  '#1F5F97', '#1F5F97');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (8,'Bluesky',  '#6BB9F0', '#6BB9F0');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (9,'Brown',  '#D88935', '#D88935');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (10,'Cyan',  '#1ABC9C', '#1ABC9C');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (11,'Lime',  '#28A346', '#28A346');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (12,'Silver',  '#BDC3C7', '#BDC3C7');
insert into eba_ca_color_prefs (id, color_name, bg_color, text_color) values (13,'Yellow',  '#F1C40F', '#F1C40F');
commit;
