CREATE TABLE EBA_QPOLL_COMM_INVITES
   (
    id                    number  not null,  
    --
    poll_id               number  not null,
    community_id          number,  
    community_name        varchar2(4000), -- if community_name is null, then individual invite
    invite_method         varchar2(30),
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE,
    --
    constraint eba_qpoll_comm_invites_pk 
      primary key (id),
    constraint eba_qpoll_comm_invites_fk1
      foreign key (poll_id)
      references eba_qpoll_polls (id)
      on delete cascade,
    constraint eba_qpoll_comm_invites_fk2
      foreign key (community_id)
      references eba_qpoll_resp_communities (id)
      on delete set null
   );
/

create index eba_qpoll_comm_invites_i1 on eba_qpoll_comm_invites( community_id );

create or replace TRIGGER eba_qpoll_comm_invites_bi
   before insert on eba_qpoll_comm_invites
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end;
/

ALTER TRIGGER eba_qpoll_comm_invites_bi ENABLE;


CREATE TABLE EBA_QPOLL_INVITES
   (
    id                    number  not null,  
    --
    comm_invite_id        number  not null,
    respondent_id         number  not null,
    respondent_email      varchar2(4000) not null, -- at time of invitation
    email_sent            varchar2(30)   not null, -- YES, OPTED_OUT or PREVIOUSLY_SENT
    email_id              number, 
    --
    CREATED_BY            VARCHAR2(255), 
    CREATED               TIMESTAMP WITH TIME ZONE,
    --
    constraint EBA_QPOLL_INVITES_PK 
      primary key (id),
    constraint eba_qpoll_invites_fk1
      foreign key (comm_invite_id)
      references eba_qpoll_comm_invites (id)
      on delete cascade,
    constraint eba_qpoll_invites_fk2
      foreign key (respondent_id)
      references eba_qpoll_respondents (id),
    constraint eba_qpoll_invites_fk3
      foreign key (email_id)
      references eba_qpoll_emails (id)
      on delete set null
   );
/

create index eba_qpoll_invites_i1 on eba_qpoll_invites( comm_invite_id );
create index eba_qpoll_invites_i2 on eba_qpoll_invites( respondent_id );
create index eba_qpoll_invites_i3 on eba_qpoll_invites( email_id );

CREATE OR REPLACE TRIGGER eba_qpoll_invites_bi
   before insert on eba_qpoll_invites
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end;
/

ALTER TRIGGER eba_qpoll_invites_bi ENABLE;