create table eba_ema_log (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint eba_ema_log_pk primary key,
   --
   page_id                         number,
   procedure_name                  varchar2(1000),
   log_type                        varchar2(30)    not null
                                       constraint eba_ema_log_type check (log_type in ('error','info')),
   error                           varchar2(4000)  not null,
   --
   arg1_name                       varchar2(255),
   arg1_val                        varchar2(4000),
   arg2_name                       varchar2(255),
   arg2_val                        varchar2(4000),
   arg3_name                       varchar2(255),
   arg3_val                        varchar2(4000),
   arg4_name                       varchar2(255),
   arg4_val                        varchar2(4000),
   arg5_name                       varchar2(255),
   arg5_val                        varchar2(4000),
   --
   created_on                      date  not null,
   created_trunc                   date  not null,
   created_by                      varchar2(255)  not null
);
create index eba_ema_error_log_i1 on eba_ema_log (created_trunc);

create or replace trigger eba_ema_log_bi
    before insert
    on eba_ema_log
    for each row
begin
    :new.created_on    := sysdate;
    :new.created_trunc := trunc(sysdate);
    :new.created_by    := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end eba_ema_log_bi;
/


create table eba_ema_settings (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint eba_ema_settings_pk primary key,
    --
    display_order                  number,
    name                           varchar2(255)  not null
                                      constraint eba_ema_settings_uk unique,
    description                    varchar2(4000) not null,
    value                          varchar2(4000),
    is_numeric_yn                  varchar2(1)    not null    -- used in validation
                                      constraint eba_ema_settings_is_numeric_cc
                                      check (is_numeric_yn in ('Y','N')),
    is_yn                          varchar2(1)    not null    -- used in validation
                                      constraint eba_ema_settings_is_yn_cc
                                      check (is_yn in ('Y','N')),
    --
    row_version                    integer         not null,
    created_on                     date            not null,
    created_by                     varchar2(255)   not null,
    updated_on                     date            not null,
    updated_by                     varchar2(255)   not null
);

create or replace trigger eba_ema_settings_biu
    before insert or update 
    on eba_ema_settings
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end eba_ema_settings_biu;
/


create table eba_ema_verify_tokens (
    id                             number 
                                      default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                      constraint eba_ema_verify_tokens_pk primary key,
    --
    username                       varchar2(255) not null,
    token                          varchar2(30)  not null,
    verified_yn                    varchar2(1)   default 'N' not null  
                                      constraint eba_ema_verify_tokens_verified_cc
                                      check (verified_yn in ('Y','N')),
    expired_yn                     varchar2(1)   default 'N' not null  
                                      constraint eba_ema_verify_tokens_expired_cc
                                      check (expired_yn in ('Y','N')),
    expire_on                      date  not null,
    accessed_on                    date,
    access_attempts                number  default 0  not null,
    reset_on                       date,
    reset_by                       varchar2(255),
    --
    row_version                    integer       not null,
    created_on                     date          not null,
    created_by                     varchar2(255) not null,
    updated_on                     date          not null,
    updated_by                     varchar2(255) not null
);

create index eba_ema_verify_tokens_i1 on eba_ema_verify_tokens (username, token);

create or replace trigger eba_ema_verify_tokens_biu
    before insert or update 
    on eba_ema_verify_tokens
    for each row
begin
    if inserting then
        :new.row_version := 1;
    elsif updating then
        :new.row_version := nvl(:old.row_version,0) + 1;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
    end if;
    :new.updated_on := sysdate;
    :new.updated_by := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user)); 
end eba_ema_verify_tokens_biu;
/