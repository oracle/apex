create table sp_project_scales (
    scale_letter                   varchar2(1 char) not null
                                   constraint sp_project_scales_pk primary key,
    scale_name                     varchar2(50 char) not null,
    is_active_yn                   varchar2(1 char) not null
                                      constraint sp_project_scales_active_yn_ck
                                      check (is_active_yn in ('Y','N')),
    min_pc_for_status              number,
    pc0_label                      varchar2(60 char),
    pc0_desc                       varchar2(4000 char),
    pc10_label                     varchar2(60 char),
    pc10_desc                      varchar2(4000 char),
    pc20_label                     varchar2(60 char),
    pc20_desc                      varchar2(4000 char),
    pc30_label                     varchar2(60 char),
    pc30_desc                      varchar2(4000 char),
    pc40_label                     varchar2(60 char),
    pc40_desc                      varchar2(4000 char),
    pc50_label                     varchar2(60 char),
    pc50_desc                      varchar2(4000 char),
    pc60_label                     varchar2(60 char),
    pc60_desc                      varchar2(4000 char),
    pc70_label                     varchar2(60 char),
    pc70_desc                      varchar2(4000 char),
    pc80_label                     varchar2(60 char),
    pc80_desc                      varchar2(4000 char),
    pc90_label                     varchar2(60 char),
    pc90_desc                      varchar2(4000 char),
    pc100_label                    varchar2(60 char),
    pc100_desc                     varchar2(4000 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

alter table sp_project_scales add constraint sp_project_scale_ck
      check (scale_letter in ('A','B','C','D','E'));
create unique index sp_project_scale_uk on sp_project_scales (scale_name);