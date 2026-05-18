alter table EBA_CA_COLOR_PREFS add constraint
   EBA_CA_COLOR_PREFS_UK unique (COLOR_NAME)
/ 

insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (6,'Black',  '#303030', '#303030');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (7,'Darkblue',  '#1F5F97', '#1F5F97');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (8,'Bluesky',  '#6BB9F0', '#6BB9F0');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (9,'Brown',  '#D88935', '#D88935');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (10,'Cyan',  '#1ABC9C', '#1ABC9C');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (11,'Lime',  '#28A346', '#28A346');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (12,'Silver',  '#BDC3C7', '#BDC3C7');
insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (13,'Yellow',  '#F1C40F', '#F1C40F');
commit;