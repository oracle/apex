create or replace trigger eba_qpoll_questions_au
    after insert or update or delete on eba_qpoll_questions
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- QUESTION (default)
    if nvl(:old.question, '0') != nvl(:new.question,'0') then 
        insert into eba_qpoll_history (table_name, component_rowkey, component_id, poll_id, column_name, old_value, new_value) values 
            ('QUESTIONS', :new.row_key, :new.id, nvl(:new.poll_id,:old.poll_id), 'QUESTION', substr(:old.question,0,4000), substr(:new.question,0,4000) ); 
    end if;
    if UPDATING then
        -- POLL_ID (foreign key)
        if nvl(:old.poll_id,-999) != nvl(:new.poll_id,-999) then
            ov := null; nv := null;
            for c1 in (select row_key val from eba_qpoll_polls t where t.id = :old.poll_id) loop
                ov := c1.val;
            end loop;
            for c1 in (select row_key val from eba_qpoll_polls t where t.id = :new.poll_id) loop
                nv := c1.val;
            end loop;
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values
                ('QUESTIONS', :new.row_key, :new.id, 'POLL_ID', ov, nv);
        end if;
        -- DISPLAY_SEQUENCE (default)
        if nvl(:old.display_sequence, '0') != nvl(:new.display_sequence,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'DISPLAY_SEQUENCE', substr(:old.display_sequence,0,4000), substr(:new.display_sequence,0,4000) ); 
        end if;
        -- QUESTION (default)
        if nvl(:old.question, '0') != nvl(:new.question,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'QUESTION', substr(:old.question,0,4000), substr(:new.question,0,4000) ); 
        end if;
        -- QUESTION_TYPE (default)
        if nvl(:old.question_type, '0') != nvl(:new.question_type,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'QUESTION_TYPE', substr(:old.question_type,0,4000), substr(:new.question_type,0,4000) ); 
        end if;
        -- MANDATORY_YN (default)
        if nvl(:old.mandatory_yn, '0') != nvl(:new.mandatory_yn,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'MANDATORY_YN', substr(:old.mandatory_yn,0,4000), substr(:new.mandatory_yn,0,4000) ); 
        end if;
        -- PUBLISH_YN (default)
        if nvl(:old.publish_yn, '0') != nvl(:new.publish_yn,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'PUBLISH_YN', substr(:old.publish_yn,0,4000), substr(:new.publish_yn,0,4000) ); 
        end if;
        -- ALLOW_COMMENTS_YN (default)
        if nvl(:old.allow_comments_yn, '0') != nvl(:new.allow_comments_yn,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ALLOW_COMMENTS_YN', substr(:old.allow_comments_yn,0,4000), substr(:new.allow_comments_yn,0,4000) ); 
        end if;
        -- USE_CUSTOM_ANSWERS_YN (default)
        if nvl(:old.use_custom_answers_yn, '0') != nvl(:new.use_custom_answers_yn,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'USE_CUSTOM_ANSWERS_YN', substr(:old.use_custom_answers_yn,0,4000), substr(:new.use_custom_answers_yn,0,4000) ); 
        end if;
        -- ANSWER_01 (default)
        if nvl(:old.answer_01, '0') != nvl(:new.answer_01,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_01', substr(:old.answer_01,0,4000), substr(:new.answer_01,0,4000) ); 
        end if;
        -- ANSWER_02 (default)
        if nvl(:old.answer_02, '0') != nvl(:new.answer_02,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_02', substr(:old.answer_02,0,4000), substr(:new.answer_02,0,4000) ); 
        end if;
        -- ANSWER_03 (default)
        if nvl(:old.answer_03, '0') != nvl(:new.answer_03,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_03', substr(:old.answer_03,0,4000), substr(:new.answer_03,0,4000) ); 
        end if;
        -- ANSWER_04 (default)
        if nvl(:old.answer_04, '0') != nvl(:new.answer_04,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_04', substr(:old.answer_04,0,4000), substr(:new.answer_04,0,4000) ); 
        end if;
        -- ANSWER_05 (default)
        if nvl(:old.answer_05, '0') != nvl(:new.answer_05,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_05', substr(:old.answer_05,0,4000), substr(:new.answer_05,0,4000) ); 
        end if;
        -- ANSWER_06 (default)
        if nvl(:old.answer_06, '0') != nvl(:new.answer_06,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_06', substr(:old.answer_06,0,4000), substr(:new.answer_06,0,4000) ); 
        end if;
        -- ANSWER_07 (default)
        if nvl(:old.answer_07, '0') != nvl(:new.answer_07,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_07', substr(:old.answer_07,0,4000), substr(:new.answer_07,0,4000) ); 
        end if;
        -- ANSWER_08 (default)
        if nvl(:old.answer_08, '0') != nvl(:new.answer_08,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_08', substr(:old.answer_08,0,4000), substr(:new.answer_08,0,4000) ); 
        end if;
        -- ANSWER_09 (default)
        if nvl(:old.answer_09, '0') != nvl(:new.answer_09,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_09', substr(:old.answer_09,0,4000), substr(:new.answer_09,0,4000) ); 
        end if;
        -- ANSWER_10 (default)
        if nvl(:old.answer_10, '0') != nvl(:new.answer_10,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_10', substr(:old.answer_10,0,4000), substr(:new.answer_10,0,4000) ); 
        end if;
        -- CORRECT_ANSWER (default)
        if nvl(:old.correct_answer, '0') != nvl(:new.correct_answer,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'CORRECT_ANSWER', substr(:old.correct_answer,0,4000), substr(:new.correct_answer,0,4000) ); 
        end if;
        -- ENABLE_SCORE_YN (default)
        if nvl(:old.enable_score_yn, '0') != nvl(:new.enable_score_yn,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ENABLE_SCORE_YN', substr(:old.enable_score_yn,0,4000), substr(:new.enable_score_yn,0,4000) ); 
        end if;
        -- ANSWER_01_SCORE (default)
        if nvl(:old.answer_01_score, '0') != nvl(:new.answer_01_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_01_SCORE', substr(:old.answer_01_score,0,4000), substr(:new.answer_01_score,0,4000) ); 
        end if;
        -- ANSWER_02_SCORE (default)
        if nvl(:old.answer_02_score, '0') != nvl(:new.answer_02_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_02_SCORE', substr(:old.answer_02_score,0,4000), substr(:new.answer_02_score,0,4000) ); 
        end if;
        -- ANSWER_03_SCORE (default)
        if nvl(:old.answer_03_score, '0') != nvl(:new.answer_03_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_03_SCORE', substr(:old.answer_03_score,0,4000), substr(:new.answer_03_score,0,4000) ); 
        end if;
        -- ANSWER_04_SCORE (default)
        if nvl(:old.answer_04_score, '0') != nvl(:new.answer_04_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_04_SCORE', substr(:old.answer_04_score,0,4000), substr(:new.answer_04_score,0,4000) ); 
        end if;
        -- ANSWER_05_SCORE (default)
        if nvl(:old.answer_05_score, '0') != nvl(:new.answer_05_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_05_SCORE', substr(:old.answer_05_score,0,4000), substr(:new.answer_05_score,0,4000) ); 
        end if;
        -- ANSWER_06_SCORE (default)
        if nvl(:old.answer_06_score, '0') != nvl(:new.answer_06_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_06_SCORE', substr(:old.answer_06_score,0,4000), substr(:new.answer_06_score,0,4000) ); 
        end if;
        -- ANSWER_07_SCORE (default)
        if nvl(:old.answer_07_score, '0') != nvl(:new.answer_07_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_07_SCORE', substr(:old.answer_07_score,0,4000), substr(:new.answer_07_score,0,4000) ); 
        end if;
        -- ANSWER_08_SCORE (default)
        if nvl(:old.answer_08_score, '0') != nvl(:new.answer_08_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_08_SCORE', substr(:old.answer_08_score,0,4000), substr(:new.answer_08_score,0,4000) ); 
        end if;
        -- ANSWER_09_SCORE (default)
        if nvl(:old.answer_09_score, '0') != nvl(:new.answer_09_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_09_SCORE', substr(:old.answer_09_score,0,4000), substr(:new.answer_09_score,0,4000) ); 
        end if;
        -- ANSWER_10_SCORE (default)
        if nvl(:old.answer_10_score, '0') != nvl(:new.answer_10_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_10_SCORE', substr(:old.answer_10_score,0,4000), substr(:new.answer_10_score,0,4000) ); 
        end if;
        -- ANSWER_11 (default)
        if nvl(:old.answer_11, '0') != nvl(:new.answer_11,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_11', substr(:old.answer_11,0,4000), substr(:new.answer_11,0,4000) ); 
        end if;
        -- ANSWER_12 (default)
        if nvl(:old.answer_12, '0') != nvl(:new.answer_12,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_12', substr(:old.answer_12,0,4000), substr(:new.answer_12,0,4000) ); 
        end if;
        -- ANSWER_11_SCORE (default)
        if nvl(:old.answer_11_score, '0') != nvl(:new.answer_11_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_11_SCORE', substr(:old.answer_11_score,0,4000), substr(:new.answer_11_score,0,4000) ); 
        end if;
        -- ANSWER_12_SCORE (default)
        if nvl(:old.answer_12_score, '0') != nvl(:new.answer_12_score,'0') then 
            insert into eba_qpoll_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
                ('QUESTIONS', :new.row_key, :new.id, 'ANSWER_12_SCORE', substr(:old.answer_12_score,0,4000), substr(:new.answer_12_score,0,4000) ); 
        end if;
    end if;
    commit;
end au_eba_qpoll_questions;