-- This script fixes BUG 31631691/31352674, replacing all columns of type TIMESTAMP(6) WITH LOCAL TIME ZONE to TIMESTAMP WITH TIME ZONE
-- it also updates all application triggers where columns where updated with LOCALTIMESTAMP to CURRENT_TIMESTAMP
-- 
-- This upgrade script will only run if there are tables that start with 'EBA_QPOLL_%' with columns of data type
-- TIMESTAMP(6) WITH LOCAL TIME ZONE

-- Disable all affected triggers
alter trigger eba_qpoll_preferences_biu disable;
/
alter trigger eba_qpoll_notifications_biu disable;
/
alter trigger eba_qpoll_polls_biu disable;
/
alter trigger eba_qpoll_sections_biu disable;
/
alter trigger eba_qpoll_questions_biu disable;
/
alter trigger eba_qpoll_resp_comm_biu disable;
/
alter trigger eba_qpoll_respondents_biu disable;
/
alter trigger eba_qpoll_resp_comm_ref_bi disable;
/
alter trigger eba_qpoll_emails_bi disable;
/
alter trigger eba_qpoll_comm_invites_bi disable;
/
alter trigger eba_qpoll_invites_bi disable;
/
alter trigger eba_qpoll_canned_answ_biu disable;
/
alter trigger eba_qpoll_results_biu disable;
/
alter trigger eba_qpoll_result_dets_biu disable;
/
alter trigger eba_qpoll_error_log_bi disable;
/
alter trigger eba_qpoll_app_log_bi disable;
/
alter trigger eba_qpoll_user_log_bi disable;
/
alter trigger eba_qpoll_access_req_biu disable;
/
alter trigger eba_qpoll_email_opt_out_biu disable;
/
alter trigger eba_qpoll_history_biu disable;
/

-- Add temporary timestamp columns
alter table eba_qpoll_preferences add (created_on1 timestamp with time zone,updated_on1 timestamp with time zone)
/
alter table eba_qpoll_errors add (err_time1 timestamp with time zone)
/
alter table eba_qpoll_notifications add (created1 timestamp with time zone,updated1 timestamp with time zone,display_from1 timestamp with time zone,display_until1 timestamp with time zone)
/
alter table eba_qpoll_polls add (created1 timestamp with time zone,updated1 timestamp with time zone,start_time1 timestamp with time zone,stop_time1 timestamp with time zone)
/
alter table eba_qpoll_sections add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_questions add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_resp_communities add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_respondents add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_resp_comm_ref add (created1 timestamp with time zone)
/
alter table eba_qpoll_emails add (sent_time1 timestamp with time zone)
/
alter table eba_qpoll_comm_invites add (created1 timestamp with time zone)
/
alter table eba_qpoll_invites add (created1 timestamp with time zone)
/
alter table eba_qpoll_canned_answers add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_results add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_result_details add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_error_log add (created1 timestamp with time zone)
/
alter table eba_qpoll_application_log add (created1 timestamp with time zone)
/
alter table eba_qpoll_user_log add (created1 timestamp with time zone)
/
alter table eba_qpoll_access_requests add (created1 timestamp with time zone,updated1 timestamp with time zone)
/
alter table eba_qpoll_email_opt_out add (created1 timestamp with time zone)
/
alter table eba_qpoll_history add (change_date1 timestamp with time zone)
/

-- Copy original column values into temporary column values
update eba_qpoll_preferences set created_on1 = created_on,updated_on1 = updated_on;
update eba_qpoll_errors set err_time1 = err_time;
update eba_qpoll_notifications set created1 = created,updated1 = updated,display_from1 = display_from,display_until1 = display_until;
update eba_qpoll_polls set created1 = created,updated1 = updated,start_time1 = start_time,stop_time1 = stop_time;
update eba_qpoll_sections set created1 = created,updated1 = updated;
update eba_qpoll_questions set created1 = created,updated1 = updated;
update eba_qpoll_resp_communities set created1 = created,updated1 = updated;
update eba_qpoll_respondents set created1 = created,updated1 = updated;
update eba_qpoll_resp_comm_ref set created1 = created;
update eba_qpoll_emails set sent_time1 = sent_time;
update eba_qpoll_comm_invites set created1 = created;
update eba_qpoll_invites set created1 = created;
update eba_qpoll_canned_answers set created1 = created,updated1 = updated;
update eba_qpoll_results set created1 = created,updated1 = updated;
update eba_qpoll_result_details set created1 = created,updated1 = updated;
update eba_qpoll_error_log set created1 = created;
update eba_qpoll_application_log set created1 = created;
update eba_qpoll_user_log set created1 = created;
update eba_qpoll_access_requests set created1 = created,updated1 = updated;
update eba_qpoll_email_opt_out set created1 = created;
update eba_qpoll_history set change_date1 = change_date;

-- Drop original timestamp with local time zone columns
alter table eba_qpoll_preferences drop (created_on,updated_on)
/
alter table eba_qpoll_errors drop (err_time)
/
alter table eba_qpoll_notifications drop (created,updated,display_from,display_until)
/
alter table eba_qpoll_polls drop (created,updated,start_time,stop_time)
/
alter table eba_qpoll_sections drop (created,updated)
/
alter table eba_qpoll_questions drop (created,updated)
/
alter table eba_qpoll_resp_communities drop (created,updated)
/
alter table eba_qpoll_respondents drop (created,updated)
/
alter table eba_qpoll_resp_comm_ref drop (created)
/
alter table eba_qpoll_emails drop (sent_time)
/
alter table eba_qpoll_comm_invites drop (created)
/
alter table eba_qpoll_invites drop (created)
/
alter table eba_qpoll_canned_answers drop (created,updated)
/
alter table eba_qpoll_results drop (created,updated)
/
alter table eba_qpoll_result_details drop (created,updated)
/
alter table eba_qpoll_error_log drop (created)
/
alter table eba_qpoll_application_log drop (created)
/
alter table eba_qpoll_user_log drop (created)
/
alter table eba_qpoll_access_requests drop (created,updated)
/
alter table eba_qpoll_email_opt_out drop (created)
/
alter table eba_qpoll_history drop (change_date)
/

-- Rename temporary columns back to original column names
alter table eba_qpoll_preferences rename column created_on1 to created_on
/
alter table eba_qpoll_preferences rename column updated_on1 to updated_on
/
alter table eba_qpoll_errors rename column err_time1 to err_time
/
alter table eba_qpoll_notifications rename column created1 to created
/
alter table eba_qpoll_notifications rename column updated1 to updated
/
alter table eba_qpoll_notifications rename column display_from1 to display_from
/
alter table eba_qpoll_notifications rename column display_until1 to display_until
/
alter table eba_qpoll_polls rename column created1 to created
/
alter table eba_qpoll_polls rename column updated1 to updated
/
alter table eba_qpoll_polls rename column start_time1 to start_time
/
alter table eba_qpoll_polls rename column stop_time1 to stop_time
/
alter table eba_qpoll_sections rename column created1 to created
/
alter table eba_qpoll_sections rename column updated1 to updated
/
alter table eba_qpoll_questions rename column created1 to created
/
alter table eba_qpoll_questions rename column updated1 to updated
/
alter table eba_qpoll_resp_communities rename column created1 to created
/
alter table eba_qpoll_resp_communities rename column updated1 to updated
/
alter table eba_qpoll_respondents rename column created1 to created
/
alter table eba_qpoll_respondents rename column updated1 to updated
/
alter table eba_qpoll_resp_comm_ref rename column created1 to created
/
alter table eba_qpoll_emails rename column sent_time1 to sent_time
/
alter table eba_qpoll_comm_invites rename column created1 to created
/
alter table eba_qpoll_invites rename column created1 to created
/
alter table eba_qpoll_canned_answers rename column created1 to created
/
alter table eba_qpoll_canned_answers rename column updated1 to updated
/
alter table eba_qpoll_results rename column created1 to created
/
alter table eba_qpoll_results rename column updated1 to updated
/
alter table eba_qpoll_result_details rename column created1 to created
/
alter table eba_qpoll_result_details rename column updated1 to updated
/
alter table eba_qpoll_error_log rename column created1 to created
/
alter table eba_qpoll_application_log rename column created1 to created
/
alter table eba_qpoll_user_log rename column created1 to created
/
alter table eba_qpoll_access_requests rename column created1 to created
/
alter table eba_qpoll_access_requests rename column updated1 to updated
/
alter table eba_qpoll_email_opt_out rename column created1 to created
/
alter table eba_qpoll_history rename column change_date1 to change_date
/

-- Recreate Triggers using current_timestamp
create or replace trigger eba_qpoll_preferences_biu
before insert or update on eba_qpoll_preferences
    for each row
begin
    if inserting and :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.created_by := nvl(v('APP_USER'),USER);
        :new.created_on := current_timestamp;
    end if;
    if updating then
        :new.updated_by := nvl(v('APP_USER'),USER);
        :new.updated_on := current_timestamp;
    end if;
    :new.preference_name := upper(:new.preference_name);
end eba_qpoll_preferences_biu;
/
create or replace trigger eba_qpoll_notifications_biu
before insert or update on eba_qpoll_notifications
    for each row
begin
    if inserting and :new.id is null then
       :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
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
    if :new.notification_type is null then
       :new.notification_type := 'MANUAL';
    end if;
    if :new.display_sequence is null then
       :new.display_sequence := 10;
    end if;
end eba_qpoll_notifications_biu;
/
create or replace trigger eba_qpoll_polls_biu
   before insert or update on eba_qpoll_polls
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if :new.row_key is null then
      :new.row_key := EBA_QPOLL_FW.compress_int(eba_qpoll_seq.nextval);
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;

   if :new.poll_or_quiz = 'Q' then
      :new.score_type := 'N';
   end if;

   if :new.status_id = 3 and nvl(:old.status_id,0) != 3 then
      :new.start_time := current_timestamp;
   elsif :new.status_id = 4 and nvl(:old.status_id,0) != 4 then
      :new.stop_time := current_timestamp;
   end if;
end eba_qpoll_polls_biu;
/
create or replace trigger eba_qpoll_sections_biu
   before insert or update on eba_qpoll_sections
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if; 
end eba_qpoll_sections_biu;
/
create or replace trigger eba_qpoll_questions_biu
   before insert or update on eba_qpoll_questions
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if :new.row_key is null then
      :new.row_key := EBA_QPOLL_FW.compress_int(eba_qpoll_seq.nextval);
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   :new.mandatory_yn := nvl(upper(:new.mandatory_yn),'Y');
   :new.publish_yn := nvl(upper(:new.publish_yn),'Y');
   :new.allow_comments_yn := nvl(upper(:new.allow_comments_yn),'N');
   if :new.question_type in ('PICK_TWO','CHECKBOX','TEXTAREA','RADIO_GROUP','STACK','ALLOCATION') then
       :new.use_custom_answers_yn := 'Y';
   else
       :new.use_custom_answers_yn := 'N';
   end if;
end eba_qpoll_questions_biu;
/
create or replace trigger eba_qpoll_resp_comm_biu
   before insert or update on eba_qpoll_resp_communities
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if :new.publish_yn is null then
      :new.publish_yn := 'Y';
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end eba_qpoll_resp_comm_biu;
/
create or replace trigger eba_qpoll_respondents_biu
   before insert or update on eba_qpoll_respondents
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   :new.email := lower(:new.email);
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end eba_qpoll_respondents_biu;
/
create or replace trigger eba_qpoll_resp_comm_ref_bi
   before insert on eba_qpoll_resp_comm_ref
   for each row
begin
   if :NEW.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end eba_qpoll_resp_comm_ref_bi;
/
create or replace trigger eba_qpoll_emails_bi
    before insert on eba_qpoll_emails
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    :new.sent_to := lower(:new.sent_to);
    :new.sent_time := current_timestamp;
end eba_qpoll_emails_bi;
/
create or replace trigger eba_qpoll_comm_invites_bi
   before insert on eba_qpoll_comm_invites
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end eba_qpoll_comm_invites_bi;
/
create or replace trigger eba_qpoll_invites_bi
   before insert on eba_qpoll_invites
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end eba_qpoll_invites_bi;
/
create or replace trigger eba_qpoll_canned_answ_biu
   before insert or update on eba_qpoll_canned_answers
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
   :new.code := replace(:new.code,' ','');
   :new.code := upper(:new.code);
end eba_qpoll_canned_answ_biu;
/
create or replace trigger eba_qpoll_results_biu
   before insert or update on eba_qpoll_results
   for each row
begin
   if :new.ID is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
    if :new.row_key is null then
       :new.row_key := eba_qpoll_fw.compress_int(eba_qpoll_seq.nextval);
    end if;
   if inserting then
       if :new.apex_user is null then
          :new.apex_user := nvl(v('APP_USER'),user);
       end if;
       if :new.apex_session_id is null then
          :new.apex_session_id := nvl(v('SESSION_ID'),'unknown');
       end if;
       :new.created := current_timestamp;
       if :new.created_by is null then
          :new.created_by := nvl(wwv_flow.g_user,user);
       end if;
       :new.updated := current_timestamp;
       if :new.updated_by is null then
          :new.updated_by := nvl(wwv_flow.g_user,user);
       end if;
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if :new.preactive_yn is null
      then :new.preactive_yn := 'N';
   end if;
   :new.email := lower(:new.email);
   if updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end eba_qpoll_results_biu;
/
create or replace trigger eba_qpoll_result_dets_biu
   before insert or update on eba_qpoll_result_details
   for each row
begin
   if :new.ID is null then
      :new.ID := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   if inserting then
       :new.created := current_timestamp;
       :new.created_by := nvl(wwv_flow.g_user,user);
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
       :new.row_version_number := 1;
   elsif updating then
       :new.row_version_number := nvl(:old.row_version_number,1) + 1;
   end if;
   if inserting or updating then
       :new.updated := current_timestamp;
       :new.updated_by := nvl(wwv_flow.g_user,user);
   end if;
end eba_qpoll_result_dets_biu;
/
create or replace trigger eba_qpoll_error_log_bi 
   before insert on eba_qpoll_error_log
   for each row
begin
   if :new.id is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created       := current_timestamp;
   :new.created_trunc := trunc(current_timestamp);
   :new.created_by    := lower(nvl(wwv_flow.g_user, user));
end eba_qpoll_error_log_bi;
/
create or replace trigger eba_qpoll_app_log_bi 
   before insert on eba_qpoll_application_log
   for each row
begin
   if :new.id is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.created       := current_timestamp;
   :new.created_trunc := trunc(current_timestamp);
   :new.created_by    := lower(nvl(wwv_flow.g_user,user));
end eba_qpoll_app_log_bi;
/
create or replace trigger eba_qpoll_user_log_bi 
   before insert on eba_qpoll_user_log
   for each row
begin
   if :new.id is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.email_address := lower(:new.email_address);
   :new.created       := current_timestamp;
   :new.created_trunc := trunc(current_timestamp);
   :new.created_by    := lower(nvl(wwv_flow.g_user,user));
end eba_qpoll_user_log_bi;
/
create or replace  trigger  eba_qpoll_access_req_biu 
   before insert or update on eba_qpoll_access_requests 
   for each row
begin
   if :new.id is null then
      :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
   end if;
   :new.email_address := lower(:new.email_address);
   if inserting then
      :new.created    := current_timestamp;
      :new.created_by := lower(nvl(v('APP_USER'),user));
      :new.created_trunc := trunc(current_timestamp);
   end if;
   :new.row_version_number := nvl(:old.row_version_number,0) + 1;

   :new.updated     := current_timestamp;
   :new.updated_by  := lower(nvl(v('APP_USER'),user));

   if updating and :old.status != :new.status then
      :new.actioned_by := lower(nvl(v('APP_USER'),user));
   end if;
end eba_qpoll_access_req_biu;
/
create or replace trigger eba_qpoll_email_opt_out_biu
   before insert on eba_qpoll_email_opt_out
   for each row
begin
    if :new.id is null then
       :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
   :new.created := current_timestamp;
   :new.created_by := nvl(wwv_flow.g_user,user);
end eba_qpoll_email_opt_out_biu;
/
create or replace trigger eba_qpoll_history_biu
    before insert or update on eba_qpoll_history
    for each row
begin
    if :new.id is null then
       :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.change_date := current_timestamp;
        :new.changed_by := nvl(wwv_flow.g_user,user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := :new.row_version_number + 1;
    end if;
end eba_qpoll_history_biu;
/

-- Enable all affected triggers
alter trigger eba_qpoll_preferences_biu enable;
/
alter trigger eba_qpoll_notifications_biu enable;
/
alter trigger eba_qpoll_polls_biu enable;
/
alter trigger eba_qpoll_sections_biu enable;
/
alter trigger eba_qpoll_questions_biu enable;
/
alter trigger eba_qpoll_resp_comm_biu enable;
/
alter trigger eba_qpoll_respondents_biu enable;
/
alter trigger eba_qpoll_resp_comm_ref_bi enable;
/
alter trigger eba_qpoll_emails_bi enable;
/
alter trigger eba_qpoll_comm_invites_bi enable;
/
alter trigger eba_qpoll_invites_bi enable;
/
alter trigger eba_qpoll_canned_answ_biu enable;
/
alter trigger eba_qpoll_results_biu enable;
/
alter trigger eba_qpoll_result_dets_biu enable;
/
alter trigger eba_qpoll_error_log_bi enable;
/
alter trigger eba_qpoll_app_log_bi enable;
/
alter trigger eba_qpoll_user_log_bi enable;
/
alter trigger eba_qpoll_access_req_biu enable;
/
alter trigger eba_qpoll_email_opt_out_biu enable;
/
alter trigger eba_qpoll_history_biu enable;
/