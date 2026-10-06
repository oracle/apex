create or replace package body sp_event_util
as 

function create_series_l ( 
    p_start_date  timestamp with time zone, 
    p_end_date    timestamp with time zone, 
    p_recur_freq  varchar2 ) 
    return number 
is 
    l_series_id       number; 
begin 
    insert into sp_event_series 
        (start_date, end_date, recur_freq) 
    values 
        (p_start_date, p_end_date, p_recur_freq) 
    returning id into l_series_id; 
    return l_series_id; 
end create_series_l; 


procedure create_event_l ( 
    p_event_type_id    number, 
    p_event_date       timestamp with time zone, 
    p_event_name       varchar2, 
    p_for_user_id      number,
    p_event_details    varchar2 default null,
    p_series_id        number   default null ) 
is 
begin 
    insert into sp_events
        (event_type_id, event_date, event_name,  
         for_user_id, event_details,
         series_id) 
    values 
        (p_event_type_id, p_event_date, p_event_name,  
         p_for_user_id, p_event_details,
         p_series_id); 
end create_event_l; 


procedure create_recur_events_l ( 
    p_series_id        number,
    p_event_type_id    number, 
    p_event_name       varchar2, 
    p_for_user_id      number,
    p_event_details    varchar2 default null ) 
is 
    l_cnt              number; 
begin 
    for c1 in ( 
        select start_date, end_date, recur_freq 
          from sp_event_series 
         where id = p_series_id
    ) loop 
        if c1.recur_freq = 'D' then 
            l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))); 
            for i in 0..l_cnt loop 
                create_event_l ( 
                    p_series_id     => p_series_id,
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => c1.start_date + i, 
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id,
                    p_event_details => p_event_details ); 
            end loop; 
        elsif c1.recur_freq = 'WD' then 
            l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' '))));
            for i in 0..l_cnt loop 
                if to_char(c1.start_date + i,'DY') not in ('SAT','SUN') then 
                    create_event_l ( 
                        p_series_id     => p_series_id,
                        p_event_type_id => p_event_type_id, 
                        p_event_date    => c1.start_date + i, 
                        p_event_name    => p_event_name, 
                        p_for_user_id   => p_for_user_id,
                        p_event_details => p_event_details ); 
                end if; 
            end loop; 
        elsif c1.recur_freq = 'W' then 
            l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))/7);  
            for i in 0..l_cnt loop 
                create_event_l ( 
                    p_series_id     => p_series_id,
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => c1.start_date + (i*7),
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id,
                    p_event_details => p_event_details ); 

            end loop; 
        elsif c1.recur_freq = '2W' then 
            l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))/14); 
            for i in 0..l_cnt loop 
                create_event_l ( 
                    p_series_id     => p_series_id,
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => c1.start_date + (i*14),
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id,
                    p_event_details => p_event_details ); 
            end loop; 
        elsif c1.recur_freq = 'M' then 
            l_cnt := trunc(months_between(to_date(to_char(c1.end_date,'DD-MON-RRRR'),'DD-MON-RRRR'),  
                                          to_date(to_char(c1.start_date,'DD-MON-RRRR'),'DD-MON-RRRR'))); 
            for i in 0..l_cnt loop 
                create_event_l ( 
                    p_series_id     => p_series_id,
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => add_months(c1.start_date,i), 
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id,
                    p_event_details => p_event_details ); 
            end loop; 
        end if; 
    end loop; 
end create_recur_events_l; 


procedure create_more_recur_events_l ( 
    p_event_type_id         number, 
    p_event_name            varchar2, 
    p_last_event_date       timestamp with time zone, 
    p_for_user_id           number, 
    p_event_details         varchar2, 
    p_series_id             number ) 
is 
    l_cnt                   number; 
begin 
    for c1 in ( 
        select end_date, recur_freq 
          from sp_event_series 
         where id = p_series_id
    ) loop 
        if c1.recur_freq = 'D' then 
            l_cnt := trunc(to_number(substr((c1.end_date-p_last_event_date),1,instr(c1.end_date-p_last_event_date,' ')))); 
--            l_cnt := trunc(c1.end_date-p_last_event_date);
            for i in 1..l_cnt loop 
                create_event_l ( 
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => p_last_event_date + i, 
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id, 
                    p_event_details => p_event_details, 
                    p_series_id     => p_series_id ); 
            end loop; 
        elsif c1.recur_freq = 'WD' then 
            l_cnt := trunc(to_number(substr((c1.end_date-p_last_event_date),1,instr(c1.end_date-p_last_event_date,' ')))); 
--            l_cnt := trunc(c1.end_date-p_last_event_date); 
            for i in 1..l_cnt loop 
                if to_char(p_last_event_date + i,'DY') not in ('SAT','SUN') then 
                    create_event_l ( 
                        p_event_type_id => p_event_type_id, 
                        p_event_date    => p_last_event_date + i, 
                        p_event_name    => p_event_name, 
                        p_for_user_id   => p_for_user_id, 
                        p_event_details => p_event_details, 
                        p_series_id     => p_series_id ); 
                end if; 
            end loop; 
        elsif c1.recur_freq = 'W' then  
            l_cnt := trunc(to_number(substr((c1.end_date-p_last_event_date),1,instr(c1.end_date-p_last_event_date,' ')))/7); 
--            l_cnt := trunc((c1.end_date-p_last_event_date)/7);
             for i in 1..l_cnt loop 
                 create_event_l ( 
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => p_last_event_date + (i*7), 
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id, 
                    p_event_details => p_event_details, 
                    p_series_id     => p_series_id ); 
             end loop; 
        elsif c1.recur_freq = '2W' then 
            l_cnt := trunc(to_number(substr((c1.end_date-p_last_event_date),1,instr(c1.end_date-p_last_event_date,' ')))/14); 
--            l_cnt := trunc((c1.end_date-p_last_event_date)/14);
            for i in 1..l_cnt loop 
                create_event_l ( 
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => p_last_event_date + (i*14), 
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id, 
                    p_event_details => p_event_details, 
                    p_series_id     => p_series_id ); 
            end loop; 
        elsif c1.recur_freq = 'M' then 
            l_cnt := trunc(months_between(to_date(to_char(c1.end_date,'DD-MON-RRRR'),'DD-MON-RRRR'),  
                                          to_date(to_char(p_last_event_date,'DD-MON-RRRR'),'DD-MON-RRRR'))); 
--            l_cnt := trunc(months_between(c1.end_date, p_last_event_date)); 
            for i in 1..l_cnt loop 
                create_event_l ( 
                    p_event_type_id => p_event_type_id, 
                    p_event_date    => add_months(p_last_event_date,i), 
                    p_event_name    => p_event_name, 
                    p_for_user_id   => p_for_user_id, 
                    p_event_details => p_event_details, 
                    p_series_id     => p_series_id ); 
            end loop; 
        end if; 
    end loop; 
end create_more_recur_events_l; 


procedure delete_event_l ( 
    p_event_id  number ) 
is 
begin 
    delete from sp_events
     where id = p_event_id; 
end delete_event_l; 


procedure delete_series_l ( 
    p_series_id  number ) 
is  
begin 
    delete from sp_event_series 
     where id = p_series_id; 
end delete_series_l; 


procedure clear_series_l ( 
    p_series_id  number ) 
is 
begin 
    update sp_events
       set series_id = null 
     where series_id = p_series_id; 
end clear_series_l; 


procedure update_series_end_date_l ( 
    p_series_id  number, 
    p_end_date   timestamp with time zone ) 
is 
begin 
    update sp_event_series
       set end_date = p_end_date 
     where id = p_series_id; 
end update_series_end_date_l; 


procedure update_event_l ( 
    p_event_id         number, 
    p_event_name       varchar2, 
    p_event_type_id    number, 
    p_event_date       timestamp with time zone, 
    p_event_details    varchar2,
    p_for_user_id      number  default null,
    p_series_id        number  default null ) 
is 
begin 
    for c1 in ( 
        select event_type_id, event_date, event_name, 
               for_user_id, event_details,
               series_id
          from sp_events 
         where id = p_event_id
    ) loop 
        if c1.event_type_id != p_event_type_id then 
            update sp_events 
               set event_type_id = p_event_type_id 
             where id = p_event_id; 
        end if; 
        -- only for non-recurring events, recur pass in db value (update of recurring date handled elsewhere) 
        if to_char(c1.event_date,'DD-MON-YYYY') != to_char(p_event_date,'DD-MON-YYYY') then 
            update sp_events
               set event_date = p_event_date 
             where id = p_event_id; 
        end if;
        if nvl(c1.event_name,'~') != nvl(p_event_name,'~') then 
            update sp_events 
               set event_name = p_event_name 
             where id = p_event_id; 
        end if; 
        if nvl(c1.for_user_id,-1) != nvl(p_for_user_id,-1) then 
            update sp_events
               set for_user_id = p_for_user_id 
             where id = p_event_id; 
        end if; 
        if nvl(c1.event_details,'~') != nvl(p_event_details,'~') then 
            update sp_events 
               set event_details = p_event_details 
             where id = p_event_id; 
        end if; 
        if nvl(c1.series_id,0) != nvl(p_series_id,0) then 
            update sp_events 
               set series_id = p_series_id 
             where id = p_event_id; 
        end if; 
    end loop; 
end update_event_l; 

-------------------------------------

procedure create_event ( 
    p_event_type_id    number, 
    p_event_date       timestamp with time zone, 
    p_event_name       varchar2, 
    p_for_user_id      number, 
    p_event_details    varchar2, 
    p_recur_freq       varchar2, 
    p_recur_end_date   timestamp with time zone ) 
is 
    l_series_id        number; 
begin 

    if p_recur_freq is not null then 
        l_series_id := create_series_l ( 
                           p_start_date  => p_event_date, 
                           p_end_date    => p_recur_end_date, 
                           p_recur_freq  => p_recur_freq ); 
        create_recur_events_l ( 
            p_series_id     => l_series_id,
            p_event_type_id => p_event_type_id, 
            p_event_name    => p_event_name, 
            p_for_user_id   => p_for_user_id, 
            p_event_details => p_event_details ); 
    else 
        create_event_l ( 
            p_event_type_id => p_event_type_id, 
            p_event_date    => p_event_date, 
            p_event_name    => p_event_name, 
            p_for_user_id   => p_for_user_id, 
            p_event_details => p_event_details ); 
   end if; 
   commit; 
end create_event; 


procedure delete_event ( 
    p_event_id        number, 
    p_delete_type     varchar2 ) -- ONLY, ALL, FUTURE (usually ONLY if not series)
is 
    l_event_cnt  number  default 0; 
begin 
    for c1 in ( 
        select series_id, event_date 
          from sp_events 
         where id = p_event_id
    ) loop 
        -- simple delete 
        if c1.series_id is null then 
            delete_event_l ( 
                p_event_id => p_event_id ); 
        -- recurring 
        else 
            if p_delete_type = 'ONLY' then 
                delete_event_l (p_event_id => p_event_id); 
                -- if no more events in the series, delete the series 
                select count(*) 
                  into l_event_cnt 
                  from sp_events 
                 where series_id = c1.series_id; 
                if l_event_cnt = 0 then 
                    delete_series_l (p_series_id => c1.series_id); 
                elsif l_event_cnt = 1 then 
                    -- only one event left, update event to remove series and delete series 
                    clear_series_l (p_series_id => c1.series_id); 
                    delete_series_l (p_series_id => c1.series_id); 
                else 
                    -- update series end date, if last event was deleted 
                    for c3 in ( 
                        select max(event_date) last_date 
                          from sp_events 
                         where series_id = c1.series_id
                    ) loop 
                        update_series_end_date_l ( 
                            p_series_id => c1.series_id, 
                            p_end_date  => c3.last_date ); 
                    end loop; 
                end if; 
            else  
                for c2 in ( 
                   select id event_id, event_date
                     from sp_events 
                    where series_id = c1.series_id
                ) loop 
                    if p_delete_type = 'ALL' then 
                        delete_event_l (p_event_id => c2.event_id); 
                    elsif p_delete_type = 'FUTURE' then 
                        -- delete future 
                        if c2.event_date >= c1.event_date then 
                            delete_event_l (p_event_id => c2.event_id); 
                        end if; 
                    end if; 
                end loop; 
                -- if no more events in the series, delete the series 
                select count(*) 
                  into l_event_cnt 
                  from sp_events 
                 where series_id = c1.series_id; 
                if l_event_cnt = 0 then 
                    delete_series_l (p_series_id => c1.series_id); 
                else 
                    -- update series end date 
                    for c2 in ( 
                        select max(event_date) last_date 
                          from sp_events 
                         where series_id = c1.series_id
                    ) loop 
                        update_series_end_date_l ( 
                            p_series_id => c1.series_id, 
                            p_end_date  => c2.last_date ); 
                    end loop; 
                end if; 
            end if; 
        end if; 
    end loop; 
end delete_event; 


procedure update_event ( 
    p_event_id         number, 
    p_event_type_id    number, 
    p_event_date       timestamp with time zone, 
    p_event_name       varchar2, 
    p_for_user_id      number,
    p_event_details    varchar2, 
    -- 
    p_recur_freq       varchar2, 
    p_recur_end_date   timestamp with time zone, 
    -- 
    p_update_type      varchar2 ) -- ONLY, ALL, FUTURE (usually ONLY if not series)
is 
    l_series_id        number; 
    l_event_cnt        number; 
begin 

    for c1 in ( 
        select event_type_id, event_date, event_name, 
               for_user_id, event_details,
               series_id 
          from sp_events 
         where id = p_event_id
    ) loop 
        -- simple update 
        if p_recur_freq is null and c1.series_id is null then 
            update_event_l ( 
                p_event_id      => p_event_id, 
                p_event_type_id => p_event_type_id, 
                p_event_name    => p_event_name, 
                p_event_date    => p_event_date, 
                p_for_user_id   => p_for_user_id,
                p_event_details => p_event_details ); 
        -- adding recurrence (remove event and recreate as series) 
        elsif p_recur_freq is not null and c1.series_id is null then 
            delete_event_l (p_event_id => p_event_id); 
            l_series_id := create_series_l ( 
                               p_start_date  => p_event_date, 
                               p_end_date    => p_recur_end_date, 
                               p_recur_freq  => p_recur_freq ); 
            create_recur_events_l ( 
                p_series_id     => l_series_id,
                p_event_type_id => p_event_type_id, 
                p_event_name    => p_event_name, 
                p_for_user_id   => p_for_user_id,
                p_event_details => p_event_details );
        -- removing recurrence 
        elsif p_recur_freq is null and c1.series_id is not null then 
            -- update event, delete rest of events and series 
            update_event_l ( 
                p_event_id      => p_event_id, 
                p_event_type_id => p_event_type_id, 
                p_event_name    => p_event_name, 
                p_event_date    => p_event_date, 
                p_for_user_id   => p_for_user_id,
                p_event_details => p_event_details,
                p_series_id     => null ); 
            -- delete rest by series_id and then delete series 
            for c2 in ( 
                select id event_id 
                  from sp_events 
                 where series_id = c1.series_id
            ) loop 
                delete_event_l (p_event_id => c2.event_id); 
            end loop; 
            delete_series_l (p_series_id => c1.series_id); 
        -- updating recurring event 
        elsif p_recur_freq is not null and c1.series_id is not null then 
            -- updating standard columns 
            if p_event_type_id != c1.event_type_id or
               nvl(p_event_name,'~') != nvl(c1.event_name,'~') or 
               nvl(p_for_user_id,-1) != nvl(c1.for_user_id,-1) or
               nvl(p_event_details,'~') != nvl(c1.event_details,'~')
            then 
                if p_update_type = 'ONLY' then 
                    update_event_l ( 
                        p_event_id      => p_event_id, 
                        p_event_type_id => p_event_type_id, 
                        p_event_name    => p_event_name, 
                        p_event_date    => c1.event_date, -- passing base value so no update 
                        p_for_user_id   => p_for_user_id, 
                        p_event_details => p_event_details, 
                        p_series_id     => c1.series_id ); 
                else 
                    for c2 in ( 
                        select id event_id, event_date
                          from sp_events 
                         where series_id = c1.series_id
                    ) loop 
                        if p_update_type = 'ALL' then 
                            update_event_l ( 
                                p_event_id      => c2.event_id, 
                                p_event_type_id => p_event_type_id, 
                                p_event_name    => p_event_name, 
                                p_event_date    => c2.event_date, -- passing base value so no update 
                                p_for_user_id   => p_for_user_id, 
                                p_event_details => p_event_details, 
                                p_series_id     => c1.series_id ); 
                        elsif p_update_type = 'FUTURE' then 
                            if c2.event_date >= c1.event_date then 
                                update_event_l ( 
                                    p_event_id      => c2.event_id, 
                                    p_event_type_id => p_event_type_id, 
                                    p_event_name    => p_event_name, 
                                    p_event_date    => c2.event_date, -- passing base value so no update 
                                    p_for_user_id   => p_for_user_id, 
                                    p_event_details => p_event_details, 
                                    p_series_id     => c1.series_id ); 
                            end if; 
                        end if; 
                    end loop; 
                end if; 
            end if; 

            -- update non-standard columns 
            for c2 in ( 
                select recur_freq, end_date 
                  from sp_event_series 
                 where id = c1.series_id
            ) loop 
                 if p_recur_freq != c2.recur_freq then 
                     if p_update_type = 'ALL' then 
                         for c3 in ( 
                             select id event_id 
                               from sp_events 
                              where series_id = c1.series_id
                         ) loop 
                             delete_event_l (p_event_id => c3.event_id); 
                         end loop; 
                         delete_series_l (p_series_id => c1.series_id); 
                         l_series_id := create_series_l ( 
                                            p_start_date  => p_event_date, 
                                            p_end_date    => p_recur_end_date, 
                                            p_recur_freq  => p_recur_freq ); 
                         create_recur_events_l ( 
                             p_series_id     => l_series_id,
                             p_event_type_id => p_event_type_id, 
                             p_event_name    => p_event_name, 
                             p_for_user_id   => p_for_user_id, 
                             p_event_details => p_event_details ); 
                     elsif p_update_type = 'FUTURE' then 
                         -- drop and recreate future only as new series 
                         for c3 in ( 
                             select id event_id, event_date
                               from sp_events 
                              where series_id = c1.series_id
                         ) loop 
                             if c3.event_date >= c1.event_date then 
                                 delete_event_l (p_event_id => c3.event_id); 
                             end if; 
                         end loop; 
                         select count(*) 
                           into l_event_cnt 
                           from sp_events 
                          where series_id = c1.series_id; 
                         -- if no more events in the series, delete the series 
                         if l_event_cnt = 0 then 
                            delete_series_l (p_series_id => c1.series_id); 
                         else 
                             -- update series end date 
                             for c3 in ( 
                                 select max(event_date) last_date 
                                   from sp_events 
                                  where series_id = c1.series_id
                             ) loop 
                                 update_series_end_date_l ( 
                                     p_series_id => c1.series_id, 
                                     p_end_date  => c3.last_date ); 
                             end loop; 
                         end if; 
                         l_series_id := create_series_l ( 
                                            p_start_date  => p_event_date, 
                                            p_end_date    => p_recur_end_date, 
                                            p_recur_freq  => p_recur_freq ); 
                         create_recur_events_l ( 
                             p_series_id     => l_series_id,
                             p_event_type_id => p_event_type_id,
                             p_event_name    => p_event_name, 
                             p_for_user_id   => p_for_user_id, 
                             p_event_details => p_event_details ); 
                     end if; 
                 else -- no freq change, date change 
                     if p_event_date != c1.event_date then 
                         if p_update_type = 'ONLY' then 
                             update_event_l ( 
                                 p_event_id      => p_event_id, 
                                 p_event_type_id => p_event_type_id,
                                 p_event_date    => p_event_date,
                                 p_event_name    => p_event_name, 
                                 p_for_user_id   => p_for_user_id, 
                                 p_event_details => p_event_details, 
                                 p_series_id     => c1.series_id ); 
                         elsif p_update_type = 'ALL' then 
                             -- drop and recreate 
                             for c3 in ( 
                                 select id event_id
                                   from sp_events 
                                  where series_id = c1.series_id
                             ) loop 
                                 delete_event_l (p_event_id => c3.event_id); 
                             end loop; 
                             delete_series_l (p_series_id => c1.series_id); 
                             l_series_id := create_series_l ( 
                                                p_start_date  => p_event_date, 
                                                p_end_date    => p_recur_end_date, 
                                                p_recur_freq  => p_recur_freq ); 
                             create_recur_events_l ( 
                                 p_series_id     => l_series_id,
                                 p_event_type_id => p_event_type_id,
                                 p_event_name    => p_event_name,  
                                 p_for_user_id   => p_for_user_id, 
                                 p_event_details => p_event_details ); 
                         elsif p_update_type = 'FUTURE' then 
                             -- drop and recreate future only as new series 
                             for c3 in ( 
                                 select id event_id, event_date 
                                   from sp_events 
                                  where series_id = c1.series_id
                             ) loop 
                                 if c3.event_date >= c1.event_date then 
                                     delete_event_l (p_event_id => c3.event_id); 
                                 end if; 
                             end loop; 
                             select count(*) 
                               into l_event_cnt 
                               from sp_events 
                              where series_id = c1.series_id; 
                             -- if no more events in the series, delete the series 
                             if l_event_cnt = 0 then 
                                 delete_series_l (p_series_id => c1.series_id); 
                             else 
                                 -- update series end date 
                                 for c3 in ( 
                                     select max(event_date) last_date 
                                       from sp_events 
                                      where series_id = c1.series_id
                                 ) loop 
                                     update_series_end_date_l ( 
                                         p_series_id => c1.series_id, 
                                         p_end_date  => c3.last_date ); 
                                 end loop; 
                             end if; 
                             l_series_id := create_series_l ( 
                                                p_start_date  => p_event_date, 
                                                p_end_date    => p_recur_end_date, 
                                                p_recur_freq  => p_recur_freq ); 
                             create_recur_events_l ( 
                                 p_series_id     => l_series_id,
                                 p_event_type_id => p_event_type_id,
                                 p_event_name    => p_event_name,  
                                 p_for_user_id   => p_for_user_id, 
                                 p_event_details => p_event_details ); 
                         end if; 
                     end if; 
                     -- recur_end_date change, remove or add events 
                     if p_recur_end_date != c2.end_date then 
                         -- when new end date earlier 
                         if p_recur_end_date < c2.end_date then 
                             -- remove future events 
                             for c3 in ( 
                                 select id event_id, event_date
                                   from sp_events 
                                  where series_id = c1.series_id
                             ) loop 
                                 if c3.event_date > p_recur_end_date then 
                                     delete_event_l (p_event_id => c3.event_id); 
                                 end if; 
                             end loop; 
                             -- update series end date 
                             for c3 in ( 
                                 select max(event_date) last_date 
                                   from sp_events 
                                  where series_id = c1.series_id
                             ) loop 
                                 update_series_end_date_l ( 
                                     p_series_id => c1.series_id, 
                                     p_end_date  => c3.last_date ); 
                             end loop; 
                         -- new end date after, update series and add events 
                         else 
                             update_series_end_date_l ( 
                                 p_series_id => c1.series_id, 
                                 p_end_date  => p_recur_end_date); 
                             for c3 in ( 
                                 select max(event_date) last_date 
                                   from sp_events 
                                  where series_id = c1.series_id
                             ) loop 
                                 create_more_recur_events_l ( 
                                     p_event_type_id   => p_event_type_id,
                                     p_last_event_date => c3.last_date, 
                                     p_event_name      => p_event_name,  
                                     p_for_user_id     => p_for_user_id, 
                                     p_event_details   => p_event_details, 
                                     p_series_id       => c1.series_id ); 
                             end loop; 
                         end if; 
                     end if; 
                 end if; 
             end loop; 
         end if; 
     end loop; 
end update_event; 


------------------------------

function days_out_summary (
    p_user_id      in  number
) return varchar2
is
    l_systimestamp       timestamp with time zone := systimestamp at time zone 'UTC';
    l_days               number := 14;
    l_days_out_cnt       number := 0;
    l_ooo_events         varchar2(4000);
    l_general_event_cnt  number := 0;
    l_general_events     varchar2(4000);
    l_return             varchar2(4000);
begin

    for c1 in (
        select systimestamp at time zone timezone user_sysdate
          from sp_team_members
         where id = p_user_id
           and timezone is not null
    ) loop
        l_systimestamp := c1.user_sysdate;
    end loop;

    l_systimestamp := trunc(l_systimestamp);

    select count(unique(event_date)) days_out
      into l_days_out_cnt
      from sp_events
     where for_user_id = p_user_id
       and event_date >= l_systimestamp
       and event_date <= l_systimestamp + l_days
       and to_char(event_date,'DY') not in ('SAT','SUN');

    if l_days_out_cnt > 0 then
        select listagg(distinct t.event_type || case when e.event_name is not null
                                                     then ' - '||e.event_name
                                                     end, ', ' on overflow truncate with count)
               within group (order by t.event_type)
          into l_ooo_events
          from sp_events e,
               sp_event_types t
         where e.event_type_id = t.id
           and e.for_user_id = p_user_id
           and e.event_date >= l_systimestamp
           and e.event_date <= l_systimestamp + l_days
           and to_char(e.event_date,'DY') not in ('SAT','SUN');
    end if;

    select count(unique(event_date)) gen_events
      into l_general_event_cnt
      from sp_events
     where for_user_id is null
       and event_date >= l_systimestamp
       and event_date <= l_systimestamp + l_days
       and to_char(event_date,'DY') not in ('SAT','SUN');

    if l_general_event_cnt > 0 then
        select listagg(distinct t.event_type||' - '||e.event_name, ', ' on overflow truncate with count)
               within group (order by t.event_type)
          into l_general_events
          from sp_events e,
               sp_event_types t
         where e.event_type_id = t.id
           and e.for_user_id is null
           and e.event_date >= l_systimestamp
           and e.event_date <= l_systimestamp + l_days
           and to_char(e.event_date,'DY') not in ('SAT','SUN');
    end if;

    if l_days_out_cnt = 0 then
        l_return := 'No Out of Office for next 2 weeks.';
    else
        l_return := 'Out of Office '|| l_days_out_cnt || 
                     case when l_days_out_cnt = 1 then ' weekday' else ' weekdays' end||' over the next 2 weeks ('||l_ooo_events||').';
    end if;

    if l_general_event_cnt > 0 then
        l_return := l_return|| ' May be affected by '|| l_general_event_cnt || 
                     case when l_general_event_cnt = 1 then ' weekday' else ' weekdays' end||' with general events ('||l_general_events||').';
    end if;

    return l_return;

end days_out_summary;


function days_out (
    p_user_id      in  number
) return varchar2
is
    l_systimestamp       timestamp with time zone := systimestamp at time zone 'UTC';
    l_days               number := 14;
    l_days_out_cnt       number := 0;
    l_return             varchar2(4000);
begin

    for c1 in (
        select systimestamp at time zone timezone user_sysdate
          from sp_team_members
         where id = p_user_id
           and timezone is not null
    ) loop
        l_systimestamp := c1.user_sysdate;
    end loop;

    l_systimestamp := trunc(l_systimestamp);

    select count(unique(event_date)) days_out
      into l_days_out_cnt
      from sp_events
     where for_user_id = p_user_id
       and event_date >= l_systimestamp
       and event_date <= l_systimestamp + l_days
       and to_char(event_date,'DY') not in ('SAT','SUN');

    if l_days_out_cnt = 0 then
        l_return := null;
    else
        l_return := 'Out of Office '|| l_days_out_cnt || 
                     ' of next 10 work days';
    end if;

    return l_return;

end days_out;


procedure load_one_ooo (
    p_team_member_id  in   number,
    p_updated_yn      out  varchar2 )
is
    l_ooo_summary  varchar2(4000);
begin

    p_updated_yn := 'N';

    for c1 in (
        select id, ooo_summary
          from sp_team_members
         where id = p_team_member_id
    ) loop
        l_ooo_summary := days_out (p_user_id     => c1.id);

        if nvl(l_ooo_summary,'~') != nvl(c1.ooo_summary,'~') then
            update sp_team_members
               set ooo_summary = l_ooo_summary
             where id = c1.id;
            commit;
            p_updated_yn := 'Y';
        end if;
    end loop;

end load_one_ooo;


procedure load_all_ooo
is
    l_app_id         number;
    l_count_sent     number := 0;
    l_count_updated  number := 0;
    l_updated_yn     varchar2(1);
begin

    l_app_id := sp_util.get_setting (p_static_id => 'APP_ID');

    -- when run from a job, need a session
    for c1 in (
        select workspace, workspace_id
          from apex_applications
         where application_id = l_app_id
    ) loop
        apex_util.set_workspace (p_workspace => c1.workspace );
        apex_util.set_security_group_id(p_security_group_id => c1.workspace_id );
    end loop;

    -- if build not not enabled, nothing will be run (careful to not update build option names)
    if apex_util.get_build_option_status (
           p_application_id    => l_app_id, 
           p_build_option_name => 'Team Calendar') = 'INCLUDE'
    then

        for c1 in (
            select id
              from sp_team_members
             where is_current_yn = 'Y'
        ) loop
            l_count_sent := l_count_sent + 1;
            load_one_ooo (
                p_team_member_id => c1.id,
                p_updated_yn     => l_updated_yn );
            if l_updated_yn = 'Y' then
                l_count_updated := l_count_updated + 1;
            end if;
        end loop;

        sp_util.add_app_log ( 
            p_activity => 'sp_event_util.load_all_ooo',
            p_details  => l_count_updated||' of '||l_count_sent||' required update.' );
    end if;

end load_all_ooo;

end sp_event_util;
/