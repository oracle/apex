create or replace package body eba_ca_api 
as 
function create_series_l ( 
   p_start_date  timestamp with time zone, 
   p_end_date    timestamp with time zone, 
   p_recur_freq  varchar2 ) 
   return number 
is 
   l_series_id       number; 
begin 
     
   insert into EBA_ca_series 
      (start_date, end_date, recur_freq) 
   values 
      (p_start_date, p_end_date, p_recur_freq) 
   returning series_id into l_series_id; 
   return l_series_id; 
end create_series_l; 
procedure create_event_l ( 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   p_series_id        number   default null, 
   p_tags             varchar2 default null ) 
is 
begin 
   insert into EBA_ca_events 
      (event_name, type_id, calendar_id, 
       event_date_time, duration, 
       event_desc, contact_person,  
       contact_email, display_time, location, 
       link_name_1, link_url_1, 
       link_name_2, link_url_2, 
       link_name_3, link_url_3, 
       series_id, tags) 
   values 
      (p_event_name, p_type_id, p_calendar_id, 
       p_event_date_time, p_duration, 
       p_event_desc, p_contact_person,  
       p_contact_email, p_display_time, p_location, 
       p_link_name_1, p_link_url_1, 
       p_link_name_2, p_link_url_2, 
       p_link_name_3, p_link_url_3, 
       p_series_id, p_tags ); 
end create_event_l; 
procedure create_recur_events_l ( 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   p_series_id        number, 
   p_tags             varchar2 default null ) 
is 
   l_cnt              number; 
begin 
   for c1 in ( 
      select start_date, end_date, recur_freq 
        from EBA_ca_series 
       where series_id = p_series_id ) 
   loop 
      if c1.recur_freq = 'D' then 
--         l_cnt := c1.end_date - c1.start_date; 
         l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))); 
         for i in 0..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_event_date_time + i, 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = 'WD' then 
--         l_cnt := c1.end_date - c1.start_date; 
         l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))); 
         for i in 0..l_cnt loop 
            if to_char(p_event_date_time + i,'DY') not in ('SAT','SUN') then 
               create_event_l ( 
                  p_event_name      => p_event_name, 
                  p_type_id         => p_type_id, 
                  p_calendar_id     => p_calendar_id, 
                  p_event_date_time => p_event_date_time + i, 
                  p_duration        => p_duration, 
                  p_event_desc      => p_event_desc, 
                  p_contact_person  => p_contact_person, 
                  p_contact_email   => p_contact_email, 
                  p_display_time    => p_display_time, 
                  p_location        => p_location, 
                  p_link_name_1     => p_link_name_1, 
                  p_link_url_1      => p_link_url_1, 
                  p_link_name_2     => p_link_name_2, 
                  p_link_url_2      => p_link_url_2, 
                  p_link_name_3     => p_link_name_3, 
                  p_link_url_3      => p_link_url_3, 
                  p_series_id       => p_series_id, 
                  p_tags            => p_tags ); 
            end if; 
         end loop; 
      elsif c1.recur_freq = 'W' then 
--         l_cnt := trunc((c1.end_date - c1.start_date)/7); 
         l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))/7); 
         for i in 0..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_event_date_time + (i*7), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = '2W' then 
--         l_cnt := trunc((c1.end_date - c1.start_date)/14); 
         l_cnt := trunc(to_number(substr((c1.end_date-c1.start_date),1,instr(c1.end_date-c1.start_date,' ')))/14); 
         for i in 0..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_event_date_time + (i*14), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = 'M' then 
         l_cnt := trunc(months_between(to_date(to_char(c1.end_date,'DD-MON-RRRR'),'DD-MON-RRRR'),  
                                       to_date(to_char(c1.start_date,'DD-MON-RRRR'),'DD-MON-RRRR'))); 
         for i in 0..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => add_months(p_event_date_time,i), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = 'Q' then 
         l_cnt := trunc(months_between(to_date(to_char(c1.end_date,'DD-MON-RRRR'),'DD-MON-RRRR'),  
                                       to_date(to_char(c1.start_date,'DD-MON-RRRR'),'DD-MON-RRRR'))/3); 
         for i in 0..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => add_months(p_event_date_time,i*3), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      end if; 
   end loop; 
end create_recur_events_l; 
procedure create_more_recur_events_l ( 
   p_event_name            varchar2, 
   p_type_id               number, 
   p_calendar_id           number, 
   p_last_event_date_time  timestamp with time zone, 
   p_duration              number, 
   p_event_desc            varchar2, 
   p_contact_person        varchar2, 
   p_contact_email         varchar2, 
   p_display_time          varchar2, 
   p_location              varchar2, 
   p_link_name_1           varchar2, 
   p_link_url_1            varchar2, 
   p_link_name_2           varchar2, 
   p_link_url_2            varchar2, 
   p_link_name_3           varchar2, 
   p_link_url_3            varchar2, 
   p_series_id             number, 
   p_tags                  varchar2 default null ) 
is 
   l_begin_date            timestamp with time zone; 
   l_cnt                   number; 
begin 
   l_begin_date := to_date(to_char(p_last_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')+1; 
   for c1 in ( 
      select end_date, recur_freq 
        from EBA_ca_series 
       where series_id = p_series_id ) 
   loop 
      if c1.recur_freq = 'D' then 
         l_cnt := trunc(to_number(substr((c1.end_date-l_begin_date),1,instr(c1.end_date-l_begin_date,' ')))); 
         for i in 1..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_last_event_date_time + i, 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = 'WD' then 
         l_cnt := trunc(to_number(substr((c1.end_date-l_begin_date),1,instr(c1.end_date-l_begin_date,' ')))); 
         for i in 1..l_cnt loop 
            if to_char(p_last_event_date_time + i,'DY') not in ('SAT','SUN') then 
               create_event_l ( 
                  p_event_name      => p_event_name, 
                  p_type_id         => p_type_id, 
                  p_calendar_id     => p_calendar_id, 
                  p_event_date_time => p_last_event_date_time + i, 
                  p_duration        => p_duration, 
                  p_event_desc      => p_event_desc, 
                  p_contact_person  => p_contact_person, 
                  p_contact_email   => p_contact_email, 
                  p_display_time    => p_display_time, 
                  p_location        => p_location, 
                  p_link_name_1     => p_link_name_1, 
                  p_link_url_1      => p_link_url_1, 
                  p_link_name_2     => p_link_name_2, 
                  p_link_url_2      => p_link_url_2, 
                  p_link_name_3     => p_link_name_3, 
                  p_link_url_3      => p_link_url_3, 
                  p_series_id       => p_series_id, 
                  p_tags            => p_tags); 
            end if; 
         end loop; 
      elsif c1.recur_freq = 'W' then 
         l_cnt := trunc(to_number(substr((c1.end_date-l_begin_date),1,instr(c1.end_date-l_begin_date,' ')))/7); 
         for i in 1..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_last_event_date_time + (i*7), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = '2W' then 
         l_cnt := trunc(to_number(substr((c1.end_date-l_begin_date),1,instr(c1.end_date-l_begin_date,' ')))/14); 
         for i in 1..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_last_event_date_time + (i*14), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = 'M' then 
         l_cnt := trunc(months_between(to_date(to_char(c1.end_date,'DD-MON-RRRR'),'DD-MON-RRRR'),  
                                       to_date(to_char(l_begin_date,'DD-MON-RRRR'),'DD-MON-RRRR'))); 
         for i in 1..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => add_months(p_last_event_date_time,i), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      elsif c1.recur_freq = 'Q' then 
         l_cnt := trunc(months_between(to_date(to_char(c1.end_date,'DD-MON-RRRR'),'DD-MON-RRRR'),  
                                       to_date(to_char(l_begin_date,'DD-MON-RRRR'),'DD-MON-RRRR'))/3); 
         for i in 1..l_cnt loop 
            create_event_l ( 
               p_event_name      => p_event_name, 
               p_type_id         => p_type_id, 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => add_months(p_last_event_date_time,i*3), 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => p_series_id, 
               p_tags            => p_tags ); 
         end loop; 
      end if; 
   end loop; 
end create_more_recur_events_l; 
procedure delete_event_l ( 
   p_event_id  number ) 
is 
begin 
   delete from EBA_ca_events 
    where event_id = p_event_id; 
end delete_event_l; 
procedure delete_series_l ( 
   p_series_id  number ) 
is  
begin 
   delete from EBA_ca_series 
    where series_id = p_series_id; 
end delete_series_l; 
procedure clear_series_l ( 
   p_series_id  number ) 
is 
begin 
   update EBA_ca_events 
      set series_id = null 
    where series_id = p_series_id; 
end clear_series_l; 
procedure update_series_end_date_l ( 
   p_series_id  number, 
   p_end_date   timestamp with time zone ) 
is 
begin 
   update EBA_ca_series 
      set end_date = p_end_date 
    where series_id = p_series_id; 
end update_series_end_date_l; 
procedure update_event_l ( 
   p_event_id         number, 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   p_series_id        number  default null, 
   p_tags             varchar2  default null  ) 
is 
begin 
   for c1 in ( 
      select event_name, type_id, calendar_id, 
             event_date_time, duration, 
             event_desc, contact_person,  
             contact_email, display_time, location, 
             link_name_1, link_url_1, 
             link_name_2, link_url_2, 
             link_name_3, link_url_3, 
             series_id, 
             tags 
        from EBA_ca_events 
       where event_id = p_event_id ) 
   loop 
      if c1.event_name != p_event_name then 
         update EBA_ca_events 
            set event_name = p_event_name 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.type_id,0) != nvl(p_type_id,0) then 
         update eba_ca_events 
            set type_id = p_type_id 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.calendar_id,0) != nvl(p_calendar_id,0) then 
         update eba_ca_events 
            set calendar_id = p_calendar_id 
          where event_id = p_event_id; 
      end if; 
      -- only for non-recurring events, recur pass in db value (update of recurring date/time handled elsewhere) 
      if to_char(c1.event_date_time,'DD-MON-RRRR HH:MIam') != to_char(p_event_date_time,'DD-MON-RRRR HH:MIam') then 
         update EBA_ca_events 
            set event_date_time = p_event_date_time 
          where event_id = p_event_id; 
      end if; 
      if c1.duration != p_duration then 
         update EBA_ca_events 
            set duration = p_duration 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.event_desc,'0') != nvl(p_event_desc,'0') then 
         update EBA_ca_events 
            set event_desc = p_event_desc 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.contact_person,'0') != nvl(p_contact_person,'0') then 
         update EBA_ca_events 
            set contact_person = p_contact_person 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.contact_email,'0') != nvl(p_contact_email,'0') then 
         update EBA_ca_events 
            set contact_email = p_contact_email 
          where event_id = p_event_id; 
      end if; 
      if c1.display_time != p_display_time then 
         update EBA_ca_events 
            set display_time = p_display_time 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.location,'0') != nvl(p_location,'0') then 
         update EBA_ca_events 
            set location = p_location 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.link_name_1,'0') != nvl(p_link_name_1,'0') then 
         update EBA_ca_events 
            set link_name_1 = p_link_name_1 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.link_url_1,'0') != nvl(p_link_url_1,'0') then 
         update EBA_ca_events 
            set link_url_1 = p_link_url_1 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.link_name_2,'0') != nvl(p_link_name_2,'0') then 
         update EBA_ca_events 
            set link_name_2 = p_link_name_2 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.link_url_2,'0') != nvl(p_link_url_2,'0') then 
         update EBA_ca_events 
            set link_url_2 = p_link_url_2 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.link_name_3,'0') != nvl(p_link_name_3,'0') then 
         update EBA_ca_events 
            set link_name_3 = p_link_name_3 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.link_url_3,'0') != nvl(p_link_url_3,'0') then 
         update EBA_ca_events 
            set link_url_3 = p_link_url_3 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.series_id,0) != nvl(p_series_id,0) then 
         update EBA_ca_events 
            set series_id = p_series_id 
          where event_id = p_event_id; 
      end if; 
      if nvl(c1.tags,'0m0') != nvl(p_tags,'0m0') then 
         update EBA_ca_events 
            set tags = p_tags 
          where event_id = p_event_id; 
      end if; 
   end loop; 
end update_event_l; 
procedure update_start_time_l ( 
   p_event_id         number, 
   p_event_date_time  timestamp with time zone ) 
is 
begin 
   update EBA_ca_events 
      set event_date_time = to_date(to_char(event_date_time,'DD-MON-RRRR')||to_char(p_event_date_time,'HH:MIam'), 
                                    'DD-MON-RRRRHH:MIam') 
    where event_id = p_event_id; 
end update_start_time_l; 
-- **************************** 
function gen_id  
   return number 
is 
   l_id  number; 
begin 
   select to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
     into l_id 
     from dual; 
   return l_id; 
end gen_id; 
function create_event_type ( 
   p_event_type    varchar2,
   p_color_pref_id number,
   p_internal_yn   varchar2
  ) 
   return number 
is 
   l_type_id  number  default null; 
   l_display_color varchar2(30);
   l_border_color varchar2(30);
begin 
   for c1 in ( 
      select type_id 
        from EBA_ca_event_types 
       where upper(p_event_type) = upper(type_name) ) 
   loop 
      l_type_id := c1.type_id; 
      return l_type_id; 
   end loop; 
   if l_type_id is null then 
     for c1 in (select BG_COLOR
                ,      TEXT_COLOR
                from EBA_CA_COLOR_PREFS
                where id = p_color_pref_id
               ) loop
       l_display_color := c1.TEXT_COLOR;
       l_border_color := c1.BG_COLOR;
     end loop;
     
     insert into EBA_ca_event_types (  type_name
                                     , display_color
                                     , border_color
                                     , internal_yn
                                     , color_pref_id
                                    ) 
      values (  p_event_type
              , l_display_color
              , l_border_color
              , p_internal_yn
              , p_color_pref_id
             ) 
      returning type_id into l_type_id; 
   end if; 
   return l_type_id; 
end create_event_type; 
procedure create_event ( 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_new_event_type   varchar2,
   p_new_color_pref_id number,
   p_new_internal_yn   varchar2,
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   p_tags             varchar2 default null, 
   -- 
   p_recur_flag       varchar2, 
   p_recur_freq       varchar2, 
   p_recur_end_date   timestamp with time zone ) 
is 
   l_event_type_id    number  default null; 
   l_series_id        number; 
begin 
   if p_new_event_type is not null then 
      l_event_type_id := create_event_type (  p_event_type => p_new_event_type
                                            , p_color_pref_id => p_new_color_pref_id
                                            , p_internal_yn => p_new_internal_yn
                                           ); 
   end if; 
        
   if p_recur_flag = 'Y' then 
      l_series_id := create_series_l ( 
                        p_start_date  => cast(trunc(to_date(to_char(p_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp), 
                        p_end_date    => p_recur_end_date, 
                        p_recur_freq  => p_recur_freq ); 
      create_recur_events_l ( 
         p_event_name      => p_event_name, 
         p_type_id         => nvl(p_type_id,l_event_type_id), 
         p_calendar_id     => p_calendar_id, 
         p_event_date_time => p_event_date_time, 
         p_duration        => p_duration, 
         p_event_desc      => p_event_desc, 
         p_contact_person  => p_contact_person, 
         p_contact_email   => p_contact_email, 
         p_display_time    => p_display_time, 
         p_location        => p_location, 
         p_link_name_1     => p_link_name_1, 
         p_link_url_1      => p_link_url_1, 
         p_link_name_2     => p_link_name_2, 
         p_link_url_2      => p_link_url_2, 
         p_link_name_3     => p_link_name_3, 
         p_link_url_3      => p_link_url_3, 
         p_series_id       => l_series_id, 
         p_tags            => p_tags ); 
   else 
      create_event_l ( 
         p_event_name      => p_event_name, 
         p_type_id         => nvl(p_type_id,l_event_type_id), 
         p_calendar_id     => p_calendar_id, 
         p_event_date_time => p_event_date_time, 
         p_duration        => p_duration, 
         p_event_desc      => p_event_desc, 
         p_contact_person  => p_contact_person, 
         p_contact_email   => p_contact_email, 
         p_display_time    => p_display_time, 
         p_location        => p_location, 
         p_link_name_1     => p_link_name_1, 
         p_link_url_1      => p_link_url_1, 
         p_link_name_2     => p_link_name_2, 
         p_link_url_2      => p_link_url_2, 
         p_link_name_3     => p_link_name_3, 
         p_link_url_3      => p_link_url_3, 
         p_tags            => p_tags ); 
   end if; 
   commit; 
end create_event; 
procedure delete_event ( 
   p_event_id           number, 
   -- 
   p_delete_request     varchar2  default null) 
is 
   l_event_cnt  number  default 0; 
begin 
   for c1 in ( 
      select series_id, event_date_time 
        from EBA_ca_events 
       where event_id = p_event_id ) 
   loop 
      -- simple delete 
      if c1.series_id is null then 
         delete_event_l ( 
            p_event_id => p_event_id ); 
      -- recurring 
      else 
         if p_delete_request = 'O' then 
            delete_event_l ( 
               p_event_id => p_event_id ); 
            -- if no more events in the series, delete the series 
            select count(*) 
              into l_event_cnt 
              from EBA_ca_events 
             where series_id = c1.series_id; 
            if l_event_cnt = 0 then 
               delete_series_l ( 
                  p_series_id => c1.series_id ); 
            elsif l_event_cnt = 1 then 
            -- only one event left, update event to remove series and delete series 
               clear_series_l ( 
                  p_series_id => c1.series_id ); 
               delete_series_l ( 
                  p_series_id => c1.series_id ); 
            else 
            -- update series end date, if last event was deleted 
               for c3 in ( 
                  select max(event_date_time) last_date 
                    from EBA_ca_events 
                   where series_id = c1.series_id ) 
               loop 
                  update_series_end_date_l ( 
                     p_series_id => c1.series_id, 
                     p_end_date  => cast(trunc(to_date(to_char(c3.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
               end loop; 
            end if; 
         else  
            for c2 in ( 
               select event_id, event_date_time 
                 from EBA_ca_events 
                where series_id = c1.series_id  ) 
            loop 
               if p_delete_request = 'A' then 
                  delete_event_l ( 
                     p_event_id => c2.event_id ); 
               elsif p_delete_request = 'F' then 
                  -- delete future 
--                  if c2.event_date_time >= c1.event_date_time then 
                  if trunc(to_date(to_char(c2.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) >=  
                     trunc(to_date(to_char(c1.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) then 
                     delete_event_l ( 
                        p_event_id => c2.event_id ); 
                  end if; 
               end if; 
            end loop; 
            -- if no more events in the series, delete the series 
            select count(*) 
              into l_event_cnt 
              from EBA_ca_events 
             where series_id = c1.series_id; 
            if l_event_cnt = 0 then 
               delete_series_l ( 
                  p_series_id => c1.series_id ); 
            else 
            -- update series end date 
               for c2 in ( 
                  select max(event_date_time) last_date 
                    from EBA_ca_events 
                   where series_id = c1.series_id ) 
               loop 
                  update_series_end_date_l ( 
                     p_series_id => c1.series_id, 
                     p_end_date  => cast(trunc(to_date(to_char(c2.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
               end loop; 
            end if; 
         end if; 
      end if; 
   end loop; 
end delete_event; 
procedure update_event ( 
   p_event_id         number, 
   p_event_name       varchar2, 
   p_type_id          number, 
   p_calendar_id      number, 
   p_new_event_type   varchar2, 
   p_new_color_pref_id number,
   p_new_internal_yn   varchar2,
   p_event_date_time  timestamp with time zone, 
   p_duration         number, 
   p_event_desc       varchar2, 
   p_contact_person   varchar2, 
   p_contact_email    varchar2, 
   p_display_time     varchar2, 
   p_location         varchar2, 
   p_link_name_1      varchar2, 
   p_link_url_1       varchar2, 
   p_link_name_2      varchar2, 
   p_link_url_2       varchar2, 
   p_link_name_3      varchar2, 
   p_link_url_3       varchar2, 
   -- 
   p_recur_flag       varchar2, 
   p_recur_freq       varchar2, 
   p_recur_end_date   timestamp with time zone, 
   -- 
   p_update_request   varchar2  default null, 
   p_tags             varchar2  default null  ) 
is 
   l_event_type_id    number  default null; 
   l_series_id        number; 
   l_event_cnt        number; 
begin 
   if p_new_event_type is not null then 
      l_event_type_id := create_event_type (  p_event_type => p_new_event_type
                                            , p_color_pref_id => p_new_color_pref_id
                                            , p_internal_yn => p_new_internal_yn
                                           ); 
   end if; 
   for c1 in ( 
      select event_name, type_id, calendar_id, 
             event_date_time, duration, 
             event_desc, contact_person,  
             contact_email, display_time, location, 
             link_name_1, link_url_1, 
             link_name_2, link_url_2, 
             link_name_3, link_url_3, 
             series_id, 
             tags 
        from EBA_ca_events 
       where event_id = p_event_id ) 
   loop 
      -- simple update 
      if nvl(p_recur_flag,'N') != 'Y' and c1.series_id is null then 
         update_event_l ( 
            p_event_id        => p_event_id, 
            p_event_name      => p_event_name, 
            p_type_id         => nvl(p_type_id,l_event_type_id), 
            p_calendar_id     => p_calendar_id, 
            p_event_date_time => p_event_date_time, 
            p_duration        => p_duration, 
            p_event_desc      => p_event_desc, 
            p_contact_person  => p_contact_person, 
            p_contact_email   => p_contact_email, 
            p_display_time    => p_display_time, 
            p_location        => p_location, 
            p_link_name_1     => p_link_name_1, 
            p_link_url_1      => p_link_url_1, 
            p_link_name_2     => p_link_name_2, 
            p_link_url_2      => p_link_url_2, 
            p_link_name_3     => p_link_name_3, 
            p_link_url_3      => p_link_url_3, 
            p_tags            => p_tags ); 
      -- adding recurrence (remove event and recreate as series) 
      elsif p_recur_flag = 'Y' and c1.series_id is null then 
         delete_event_l ( 
            p_event_id => p_event_id ); 
         l_series_id := create_series_l ( 
                           p_start_date  => cast(trunc(to_date(to_char(p_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp), 
                           p_end_date    => p_recur_end_date, 
                           p_recur_freq  => p_recur_freq ); 
         create_recur_events_l ( 
            p_event_name      => p_event_name, 
            p_type_id         => nvl(p_type_id,l_event_type_id), 
            p_calendar_id     => p_calendar_id, 
            p_event_date_time => p_event_date_time, 
            p_duration        => p_duration, 
            p_event_desc      => p_event_desc, 
            p_contact_person  => p_contact_person, 
            p_contact_email   => p_contact_email, 
            p_display_time    => p_display_time, 
            p_location        => p_location, 
            p_link_name_1     => p_link_name_1, 
            p_link_url_1      => p_link_url_1, 
            p_link_name_2     => p_link_name_2, 
            p_link_url_2      => p_link_url_2, 
            p_link_name_3     => p_link_name_3, 
            p_link_url_3      => p_link_url_3, 
            p_series_id       => l_series_id, 
            p_tags            => p_tags ); 
      -- removing recurrence 
      elsif p_recur_flag is null and c1.series_id is not null then 
         if p_update_request = 'A' then 
            -- update event, delete rest of events and series 
            update_event_l ( 
               p_event_id        => p_event_id, 
               p_event_name      => p_event_name, 
               p_type_id         => nvl(p_type_id,l_event_type_id), 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_event_date_time, 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => null, 
               p_tags            => p_tags ); 
            -- delete rest by series_id and then delete series 
            for c2 in ( 
               select event_id 
                 from EBA_ca_events 
                where series_id = c1.series_id) 
            loop 
               delete_event_l ( 
                  p_event_id => c2.event_id ); 
            end loop; 
            delete_series_l ( 
               p_series_id => c1.series_id ); 
         elsif p_update_request = 'F' then 
            -- update event, delete future events, update series to show new end date 
            update_event_l ( 
               p_event_id        => p_event_id, 
               p_event_name      => p_event_name, 
               p_type_id         => nvl(p_type_id,l_event_type_id), 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_event_date_time, 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => null, 
               p_tags            => p_tags ); 
            -- delete future events by series_id 
            for c2 in ( 
               select event_id, event_date_time 
                 from EBA_ca_events 
                where series_id = c1.series_id) 
            loop 
               if c2.event_date_time > c1.event_date_time then 
                  delete_event_l ( 
                     p_event_id => c2.event_id ); 
               end if; 
            end loop; 
            select count(*) 
              into l_event_cnt 
              from EBA_ca_events 
             where series_id = c1.series_id; 
            -- if no more events in the series, delete the series 
            if l_event_cnt = 0 then 
               delete_series_l ( 
                  p_series_id => c1.series_id ); 
            else 
            -- update series end date 
               for c2 in ( 
                  select max(event_date_time) last_date 
                    from EBA_ca_events 
                   where series_id = c1.series_id ) 
               loop 
                  update_series_end_date_l ( 
                     p_series_id => c1.series_id, 
                     p_end_date  => cast(trunc(to_date(to_char(c2.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
               end loop; 
            end if; 
         elsif p_update_request = 'O' then 
            -- update event, removing series 
            update_event_l ( 
               p_event_id        => p_event_id, 
               p_event_name      => p_event_name, 
               p_type_id         => nvl(p_type_id,l_event_type_id), 
               p_calendar_id     => p_calendar_id, 
               p_event_date_time => p_event_date_time, 
               p_duration        => p_duration, 
               p_event_desc      => p_event_desc, 
               p_contact_person  => p_contact_person, 
               p_contact_email   => p_contact_email, 
               p_display_time    => p_display_time, 
               p_location        => p_location, 
               p_link_name_1     => p_link_name_1, 
               p_link_url_1      => p_link_url_1, 
               p_link_name_2     => p_link_name_2, 
               p_link_url_2      => p_link_url_2, 
               p_link_name_3     => p_link_name_3, 
               p_link_url_3      => p_link_url_3, 
               p_series_id       => null, 
               p_tags            => p_tags ); 
            select count(*) 
              into l_event_cnt 
              from EBA_ca_events 
             where series_id = c1.series_id; 
            -- if no more events in the series, delete the series 
            if l_event_cnt = 0 then 
               delete_series_l ( 
                  p_series_id => c1.series_id ); 
            else 
            -- update series end date 
               for c2 in ( 
                  select max(event_date_time) last_date 
                    from EBA_ca_events 
                   where series_id = c1.series_id ) 
               loop 
                  update_series_end_date_l ( 
                     p_series_id => c1.series_id, 
                     p_end_date  => cast(trunc(to_date(to_char(c2.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
               end loop; 
            end if; 
         end if; 
      -- updating recurring event 
      elsif p_recur_flag = 'Y' and c1.series_id is not null then 
         -- updating standard columns 
         if p_event_name              != c1.event_name or 
            (nvl(p_type_id,0)         != nvl(c1.type_id,0) or p_new_event_type is not null) or 
            nvl(p_calendar_id,0)      != nvl(c1.calendar_id,0) or 
            nvl(p_event_desc,'0')     != nvl(c1.event_desc,'0') or 
            nvl(p_contact_person,'0') != nvl(c1.contact_person,'0') or 
            nvl(p_contact_email,'0')  != nvl(c1.contact_email,'0') or 
            p_display_time            != c1.display_time or 
            nvl(p_location,'0')       != nvl(c1.location,'0') or 
            nvl(p_link_name_1,'0')    != nvl(c1.link_name_1,'0') or 
            nvl(p_link_url_1,'0')     != nvl(c1.link_url_1,'0') or 
            nvl(p_link_name_2,'0')    != nvl(c1.link_name_2,'0') or 
            nvl(p_link_url_2,'0')     != nvl(c1.link_url_2,'0') or 
            nvl(p_link_name_3,'0')    != nvl(c1.link_name_3,'0') or 
            nvl(p_link_url_3,'0')     != nvl(c1.link_url_3,'0') or 
            nvl(p_tags,'0')           != nvl(c1.tags,'0') or 
            p_duration                != c1.duration  
         then 
            if p_update_request = 'O' then 
               update_event_l ( 
                  p_event_id        => p_event_id, 
                  p_event_name      => p_event_name, 
                  p_type_id         => nvl(p_type_id,l_event_type_id), 
                  p_calendar_id     => p_calendar_id, 
                  p_event_date_time => c1.event_date_time, -- passing base value so no update 
                  p_duration        => p_duration, 
                  p_event_desc      => p_event_desc, 
                  p_contact_person  => p_contact_person, 
                  p_contact_email   => p_contact_email, 
                  p_display_time    => p_display_time, 
                  p_location        => p_location, 
                  p_link_name_1     => p_link_name_1, 
                  p_link_url_1      => p_link_url_1, 
                  p_link_name_2     => p_link_name_2, 
                  p_link_url_2      => p_link_url_2, 
                  p_link_name_3     => p_link_name_3, 
                  p_link_url_3      => p_link_url_3, 
                  p_series_id       => c1.series_id, 
                  p_tags            => p_tags ); 
            else 
               for c2 in ( 
                  select event_id, event_date_time 
                    from EBA_ca_events 
                   where series_id = c1.series_id ) 
               loop 
                  if p_update_request = 'A' then 
                     update_event_l ( 
                        p_event_id        => c2.event_id, 
                        p_event_name      => p_event_name, 
                        p_type_id         => nvl(p_type_id,l_event_type_id), 
                        p_calendar_id     => p_calendar_id, 
                        p_event_date_time => c2.event_date_time, -- passing base value so no update 
                        p_duration        => p_duration, 
                        p_event_desc      => p_event_desc, 
                        p_contact_person  => p_contact_person, 
                        p_contact_email   => p_contact_email, 
                        p_display_time    => p_display_time, 
                        p_location        => p_location, 
                        p_link_name_1     => p_link_name_1, 
                        p_link_url_1      => p_link_url_1, 
                        p_link_name_2     => p_link_name_2, 
                        p_link_url_2      => p_link_url_2, 
                        p_link_name_3     => p_link_name_3, 
                        p_link_url_3      => p_link_url_3, 
                        p_series_id       => c1.series_id, 
                        p_tags            => p_tags ); 
                  elsif p_update_request = 'F' then 
                     if c2.event_date_time >= c1.event_date_time then 
                        update_event_l ( 
                           p_event_id        => c2.event_id, 
                           p_event_name      => p_event_name, 
                           p_type_id         => nvl(p_type_id,l_event_type_id), 
                           p_calendar_id     => p_calendar_id, 
                           p_event_date_time => c2.event_date_time, -- passing base value so no update 
                           p_duration        => p_duration, 
                           p_event_desc      => p_event_desc, 
                           p_contact_person  => p_contact_person, 
                           p_contact_email   => p_contact_email, 
                           p_display_time    => p_display_time, 
                           p_location        => p_location, 
                           p_link_name_1     => p_link_name_1, 
                           p_link_url_1      => p_link_url_1, 
                           p_link_name_2     => p_link_name_2, 
                           p_link_url_2      => p_link_url_2, 
                           p_link_name_3     => p_link_name_3, 
                           p_link_url_3      => p_link_url_3, 
                           p_series_id       => c1.series_id, 
                           p_tags            => p_tags ); 
                     end if; 
                  end if; 
               end loop; 
            end if; 
         end if; 
         -- update non-standard columns 
         for c2 in ( 
            select recur_freq, end_date 
              from EBA_ca_series 
             where series_id = c1.series_id ) 
         loop 
            if p_recur_freq != c2.recur_freq then 
               if p_update_request = 'A' then 
                  for c3 in ( 
                     select event_id 
                       from EBA_ca_events 
                      where series_id = c1.series_id  ) 
                  loop 
                     delete_event_l ( 
                        p_event_id => c3.event_id ); 
                  end loop; 
                  delete_series_l ( 
                     p_series_id => c1.series_id ); 
                  l_series_id := create_series_l ( 
                     p_start_date  => cast(trunc(to_date(to_char(p_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp), 
                     p_end_date    => p_recur_end_date, 
                     p_recur_freq  => p_recur_freq ); 
                  create_recur_events_l ( 
                     p_event_name      => p_event_name, 
                     p_type_id         => nvl(p_type_id,l_event_type_id), 
                     p_calendar_id     => p_calendar_id, 
                     p_event_date_time => p_event_date_time, 
                     p_duration        => p_duration, 
                     p_event_desc      => p_event_desc, 
                     p_contact_person  => p_contact_person, 
                     p_contact_email   => p_contact_email, 
                     p_display_time    => p_display_time, 
                     p_location        => p_location, 
                     p_link_name_1     => p_link_name_1, 
                     p_link_url_1      => p_link_url_1, 
                     p_link_name_2     => p_link_name_2, 
                     p_link_url_2      => p_link_url_2, 
                     p_link_name_3     => p_link_name_3, 
                     p_link_url_3      => p_link_url_3, 
                     p_series_id       => l_series_id, 
                     p_tags            => p_tags ); 
               elsif p_update_request = 'F' then 
                  -- drop and recreate future only as new series 
                  for c3 in ( 
                     select event_id, event_date_time 
                       from EBA_ca_events 
                      where series_id = c1.series_id  ) 
                  loop 
                     if trunc(to_date(to_char(c3.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) >=  
                        trunc(to_date(to_char(c1.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) then 
                        delete_event_l ( 
                           p_event_id => c3.event_id ); 
                     end if; 
                  end loop; 
                  select count(*) 
                    into l_event_cnt 
                    from EBA_ca_events 
                   where series_id = c1.series_id; 
                  -- if no more events in the series, delete the series 
                  if l_event_cnt = 0 then 
                     delete_series_l ( 
                        p_series_id => c1.series_id ); 
                  else 
                  -- update series end date 
                     for c3 in ( 
                        select max(event_date_time) last_date 
                          from EBA_ca_events 
                         where series_id = c1.series_id ) 
                     loop 
                        update_series_end_date_l ( 
                           p_series_id => c1.series_id, 
                           p_end_date  => cast(trunc(to_date(to_char(c3.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
                     end loop; 
                  end if; 
                  l_series_id := create_series_l ( 
                     p_start_date  => cast(trunc(to_date(to_char(p_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp), 
                     p_end_date    => p_recur_end_date, 
                     p_recur_freq  => p_recur_freq ); 
                  create_recur_events_l ( 
                     p_event_name      => p_event_name, 
                     p_type_id         => nvl(p_type_id,l_event_type_id), 
                     p_calendar_id     => p_calendar_id, 
                     p_event_date_time => p_event_date_time, 
                     p_duration        => p_duration, 
                     p_event_desc      => p_event_desc, 
                     p_contact_person  => p_contact_person, 
                     p_contact_email   => p_contact_email, 
                     p_display_time    => p_display_time, 
                     p_location        => p_location, 
                     p_link_name_1     => p_link_name_1, 
                     p_link_url_1      => p_link_url_1, 
                     p_link_name_2     => p_link_name_2, 
                     p_link_url_2      => p_link_url_2, 
                     p_link_name_3     => p_link_name_3, 
                     p_link_url_3      => p_link_url_3, 
                     p_series_id       => l_series_id, 
                     p_tags            => p_tags ); 
               end if; 
            else -- no freq change, date change 
               if to_char(p_event_date_time,'DD-MON-RRRR') != to_char(c1.event_date_time,'DD-MON-RRRR') then 
                  if p_update_request = 'O' then 
                     update_event_l ( 
                        p_event_id        => p_event_id, 
                        p_event_name      => p_event_name, 
                        p_type_id         => nvl(p_type_id,l_event_type_id), 
                        p_calendar_id     => p_calendar_id, 
                        p_event_date_time => p_event_date_time, 
                        p_duration        => p_duration, 
                        p_event_desc      => p_event_desc, 
                        p_contact_person  => p_contact_person, 
                        p_contact_email   => p_contact_email, 
                        p_display_time    => p_display_time, 
                        p_location        => p_location, 
                        p_link_name_1     => p_link_name_1, 
                        p_link_url_1      => p_link_url_1, 
                        p_link_name_2     => p_link_name_2, 
                        p_link_url_2      => p_link_url_2, 
                        p_link_name_3     => p_link_name_3, 
                        p_link_url_3      => p_link_url_3, 
                        p_series_id       => c1.series_id, 
                        p_tags            => p_tags ); 
                  elsif p_update_request = 'A' then 
                  -- drop and recreate 
                     for c3 in ( 
                        select event_id, event_date_time 
                          from EBA_ca_events 
                         where series_id = c1.series_id ) 
                     loop 
                        delete_event_l ( 
                           p_event_id => c3.event_id ); 
                     end loop; 
                     delete_series_l ( 
                        p_series_id => c1.series_id ); 
                     l_series_id := create_series_l ( 
                        p_start_date  => cast(trunc(to_date(to_char(p_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp), 
                        p_end_date    => p_recur_end_date, 
                        p_recur_freq  => p_recur_freq ); 
                     create_recur_events_l ( 
                        p_event_name      => p_event_name, 
                        p_type_id         => nvl(p_type_id,l_event_type_id), 
                        p_calendar_id     => p_calendar_id, 
                        p_event_date_time => p_event_date_time, 
                        p_duration        => p_duration, 
                        p_event_desc      => p_event_desc, 
                        p_contact_person  => p_contact_person, 
                        p_contact_email   => p_contact_email, 
                        p_display_time    => p_display_time, 
                        p_location        => p_location, 
                        p_link_name_1     => p_link_name_1, 
                        p_link_url_1      => p_link_url_1, 
                        p_link_name_2     => p_link_name_2, 
                        p_link_url_2      => p_link_url_2, 
                        p_link_name_3     => p_link_name_3, 
                        p_link_url_3      => p_link_url_3, 
                        p_series_id       => l_series_id, 
                        p_tags            => p_tags ); 
                  elsif p_update_request = 'F' then 
                  -- drop and recreate future only as new series 
                     for c3 in ( 
                        select event_id, event_date_time 
                          from EBA_ca_events 
                         where series_id = c1.series_id  ) 
                     loop 
                        if trunc(to_date(to_char(c3.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) >=  
                           trunc(to_date(to_char(c1.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) then 
                           delete_event_l ( 
                              p_event_id => c3.event_id ); 
                        end if; 
                     end loop; 
                     select count(*) 
                       into l_event_cnt 
                       from EBA_ca_events 
                      where series_id = c1.series_id; 
                     -- if no more events in the series, delete the series 
                     if l_event_cnt = 0 then 
                        delete_series_l ( 
                           p_series_id => c1.series_id ); 
                     else 
                     -- update series end date 
                        for c3 in ( 
                           select max(event_date_time) last_date 
                             from EBA_ca_events 
                            where series_id = c1.series_id ) 
                        loop 
                           update_series_end_date_l ( 
                              p_series_id => c1.series_id, 
                              p_end_date  => cast(trunc(to_date(to_char(c3.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
                        end loop; 
                     end if; 
                     l_series_id := create_series_l ( 
                        p_start_date  => cast(trunc(to_date(to_char(p_event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp), 
                        p_end_date    => p_recur_end_date, 
                        p_recur_freq  => p_recur_freq ); 
                     create_recur_events_l ( 
                        p_event_name      => p_event_name, 
                        p_type_id         => nvl(p_type_id,l_event_type_id), 
                        p_calendar_id     => p_calendar_id, 
                        p_event_date_time => p_event_date_time, 
                        p_duration        => p_duration, 
                        p_event_desc      => p_event_desc, 
                        p_contact_person  => p_contact_person, 
                        p_contact_email   => p_contact_email, 
                        p_display_time    => p_display_time, 
                        p_location        => p_location, 
                        p_link_name_1     => p_link_name_1, 
                        p_link_url_1      => p_link_url_1, 
                        p_link_name_2     => p_link_name_2, 
                        p_link_url_2      => p_link_url_2, 
                        p_link_name_3     => p_link_name_3, 
                        p_link_url_3      => p_link_url_3, 
                        p_series_id       => l_series_id, 
                        p_tags            => p_tags ); 
                  end if; 
               -- start time change but no date change 
               elsif to_char(p_event_date_time,'HH:MIam')    != to_char(c1.event_date_time,'HH:MIam') and 
                     to_char(p_event_date_time,'DD-MON-RRRR') = to_char(c1.event_date_time,'DD-MON-RRRR') then 
                     if p_update_request = 'O' then 
                        update_start_time_l ( 
                           p_event_id        => p_event_id, 
                           p_event_date_time => p_event_date_time ); 
                     else 
                        for c3 in ( 
                           select event_id, event_date_time 
                             from EBA_ca_events 
                            where series_id = c1.series_id ) 
                        loop 
                           if p_update_request = 'A' then 
                              update_start_time_l ( 
                                 p_event_id        => c3.event_id, 
                                 p_event_date_time => p_event_date_time ); 
                           elsif p_update_request = 'F' then 
                              if c3.event_date_time >= c1.event_date_time then 
                                 update_start_time_l ( 
                                    p_event_id        => c3.event_id, 
                                    p_event_date_time => p_event_date_time ); 
                              end if; 
                           end if; 
                        end loop; 
                     end if; 
               end if; 
               -- recur_end_date change, remove or add events 
               if p_recur_end_date != c2.end_date then 
                  -- when new end date earlier 
                  if p_recur_end_date < c2.end_date then 
                     -- remove future events 
                     for c3 in ( 
                        select event_id, event_date_time 
                          from EBA_ca_events 
                         where series_id = c1.series_id  ) 
                     loop 
                        if trunc(to_date(to_char(c3.event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) >  
                           trunc(to_date(to_char(p_recur_end_date,'DD-MON-RRRR'),'DD-MON-RRRR')) then 
                           delete_event_l ( 
                              p_event_id => c3.event_id ); 
                        end if; 
                     end loop; 
                     -- update series end date 
                     for c3 in ( 
                        select max(event_date_time) last_date 
                          from EBA_ca_events 
                         where series_id = c1.series_id ) 
                     loop 
                        update_series_end_date_l ( 
                           p_series_id => c1.series_id, 
                           p_end_date  => cast(trunc(to_date(to_char(c3.last_date,'DD-MON-RRRR'),'DD-MON-RRRR')) as timestamp)); 
                     end loop; 
                  -- new end date after, update series and add events 
                  else 
                     update_series_end_date_l ( 
                        p_series_id => c1.series_id, 
                        p_end_date  => p_recur_end_date); 
                     for c3 in ( 
                        select max(event_date_time) last_date 
                          from EBA_ca_events 
                         where series_id = c1.series_id ) 
                     loop 
                        create_more_recur_events_l ( 
                           p_event_name           => p_event_name, 
                           p_type_id              => nvl(p_type_id,l_event_type_id), 
                           p_calendar_id          => p_calendar_id, 
                           p_last_event_date_time => c3.last_date, 
                           p_duration             => p_duration, 
                           p_event_desc           => p_event_desc, 
                           p_contact_person       => p_contact_person, 
                           p_contact_email        => p_contact_email, 
                           p_display_time         => p_display_time, 
                           p_location             => p_location, 
                           p_link_name_1          => p_link_name_1, 
                           p_link_url_1           => p_link_url_1, 
                           p_link_name_2          => p_link_name_2, 
                           p_link_url_2           => p_link_url_2, 
                           p_link_name_3          => p_link_name_3, 
                           p_link_url_3           => p_link_url_3, 
                           p_series_id            => c1.series_id, 
                           p_tags            => p_tags ); 
                     end loop; 
                  end if; 
               end if; 
            end if; 
         end loop; 
      end if; 
   end loop; 
end update_event; 
procedure create_mbrs_collection ( 
    p_users     in varchar2, 
    p_group_id  in number ) 
is 
    l_line      varchar2(32767); 
    l_emails    wwv_flow_global.vc_arr2; 
    l_email     varchar2(4000); 
    l_at        number; 
    l_dot       number; 
    l_user_id   number; 
    l_valid     boolean := true; 
    l_domain    varchar2(4000); 
begin 
    --------------------- 
    -- create collections 
    -- 
    wwv_flow_collection.CREATE_OR_TRUNCATE_COLLECTION ('BULK_MBRS_INVALID'); 
    wwv_flow_collection.CREATE_OR_TRUNCATE_COLLECTION ('BULK_MBRS_CREATE'); 
     
    -------------------------------------------- 
    -- replace delimiting characters with commas 
    -- 
    l_line := p_users; 
    l_line := replace(l_line,chr(10),' '); 
    l_line := replace(l_line,chr(13),' '); 
    l_line := replace(l_line,chr(9),' '); 
    l_line := replace(l_line,'<',' '); 
    l_line := replace(l_line,'>',' '); 
    l_line := replace(l_line,';',' '); 
    l_line := replace(l_line,':',' '); 
    l_line := replace(l_line,' ',','); 
     
    ----------------------------------------- 
    -- get one comma separated line of emails 
    -- 
    for j in 1..1000 loop 
        if instr(l_line,',,') > 0 then 
           l_line := replace(l_line,',,',','); 
        else 
           exit; 
        end if; 
    end loop; 
    ------------------------- 
    -- get an array of emails 
    -- 
    l_emails := wwv_flow_utilities.string_to_table(l_line,','); 
     
    ----------------------------- 
    -- add emails to a collection 
    -- 
    l_email := null; 
    l_domain := null; 
    l_at := 0; 
    l_dot := 0; 
    for j in 1..l_emails.count loop 
        l_valid := true; 
        l_email := trim(l_emails(j)); 
         
        if l_email is not null then 
            ----------- 
            -- Validate 
            -- 
            l_at := instr(nvl(l_email,'x'),'@'); 
            l_domain := substr(l_email,l_at+1); 
            l_dot := instr(l_domain,'.'); 
            if l_at < 2 then 
                -- invalid email 
                wwv_flow_collection.add_member( 
                    p_collection_name => 'BULK_MBRS_INVALID', 
                    p_c001            => l_email, 
                    p_c002            => 'missing @'); 
                commit; 
                l_valid := false; 
            end if; 
             
            if l_dot = 0 and l_valid then 
                wwv_flow_collection.add_member( 
                    p_collection_name => 'BULK_MBRS_INVALID', 
                    p_c001            => l_email, 
                    p_c002            => 'missing dot'); 
                commit; 
                l_valid := false; 
            end if; 
            if l_valid and length(l_email) > 255 then 
                wwv_flow_collection.add_member( 
                    p_collection_name => 'BULK_MBRS_INVALID', 
                    p_c001            => l_email, 
                    p_c002            => 'too long'); 
                commit; 
                l_valid := false; 
            end if; 
             
            if l_valid then 
                for c1 in ( 
                   select email_address  
                     from EBA_ca_email_group_mbrs  
                    where group_id = p_group_id  
                     and upper(email_address) = upper(l_email) )  
                loop 
                    wwv_flow_collection.add_member( 
                        p_collection_name => 'BULK_MBRS_INVALID', 
                        p_c001            => l_email, 
                        p_c002            => 'member exists'); 
                    commit; 
                    l_valid := false; 
                    exit; 
                end loop; 
            end if; 
             
            if l_valid then 
                for c1 in ( 
                   select c001  
                     from wwv_flow_collections 
                    where collection_name = 'BULK_MBRS_CREATE' 
                      and upper(c001) = trim(upper(l_email)) )  
                loop 
                    wwv_flow_collection.add_member( 
                        p_collection_name => 'BULK_MBRS_INVALID', 
                        p_c001            => l_email, 
                        p_c002            => 'duplicate member'); 
                        commit; 
                    l_valid := false; 
                    exit; 
                end loop; 
            end if; 
             
            if l_valid then 
               wwv_flow_collection.add_member( 
                   p_collection_name => 'BULK_MBRS_CREATE', 
                   p_c001            => lower(l_email)); 
               commit; 
            end if; 
        end if; 
        l_email := null; 
    end loop; 
end create_mbrs_collection; 
procedure create_mbrs_from_collection ( 
    p_group_id  in number ) 
is 
    l_email  varchar2(255); 
begin 
    for c1 in ( 
       select c001 
         from wwv_flow_collections 
        where collection_name = 'BULK_MBRS_CREATE' )  
    loop 
        l_email := c1.c001; 
        insert into EBA_ca_email_group_mbrs 
           (group_id, email_address) 
        values 
           (p_group_id, lower(l_email)); 
    end loop; 
    commit; 
end create_mbrs_from_collection; 
function get_timeframes ( 
   p_event_id  in  number ) 
   return varchar2 
is 
   l_event_date  date; 
   l_timeframes  varchar2(4000); 
begin 
   for c1 in ( 
      select trunc(to_date(to_char(event_date_time,'DD-MON-RRRR'),'DD-MON-RRRR')) event_date 
        from EBA_ca_events 
       where event_id = p_event_id ) 
   loop 
      l_event_date := c1.event_date; 
   end loop; 
   for c1 in ( 
      select tf_name 
        from EBA_ca_timeframes 
       where l_event_date >= start_date 
         and l_event_date <= end_date  
        order by start_date asc) 
   loop 
      l_timeframes := l_timeframes ||', '|| c1.tf_name; 
   end loop; 
   l_timeframes := ltrim(l_timeframes,', '); 
   return l_timeframes; 
end get_timeframes; 
end eba_ca_api; 
/
