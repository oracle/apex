create table sp_activity_comments (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint sp_activity_comments_pk primary key,
    activity_id                    number
                                   constraint sp_activity_comments_act_fk
                                   references sp_activities on delete cascade,
    --
    comment_nbr                    number,
    body                           clob,
    body_html                      clob,
    body_no_images                 clob,
    image_ref_id                   number, 
    author_id                      number,
    PRIVATE_YN                     varchar2(1 char),
    --
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
);

create index sp_activity_comments_i1 on sp_activity_comments (activity_id);
create index sp_activity_comments_i2 on sp_activity_comments (author_id);
create index sp_activity_comments_i3 on sp_activity_comments (image_ref_id);

create or replace trigger sp_activity_comments_biu
    before insert or update
    on sp_activity_comments
    for each row
begin
    if inserting then
        :new.created    := nvl(:new.created,sysdate);
        :new.created_by := nvl(:new.created_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
        :new.updated    := nvl(:new.updated,sysdate);
        :new.updated_by := nvl(:new.updated_by, coalesce(sys_context('APEX$SESSION','APP_USER'),user));
    elsif updating then
        :new.updated    := sysdate;
        :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    --
    if :new.private_yn is null then 
       :new.private_yn := 'N';
    end if;
    --
    if inserting then
        for c1 in (select nvl(max(comment_nbr),0) cnbr from sp_activity_comments where activity_id = :new.activity_id)
        loop :new.comment_nbr := c1.cnbr+1; end loop;
    end if;
    --
    -- touch parent table
    --
    if sp_globals.g_audit_this then
        update sp_activities set updated = sysdate, updated_by = :new.updated_by where id = :new.activity_id;
    end if;
end sp_activity_comments_biu;
/