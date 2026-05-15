create or replace package eba_ca_sample_data as
    procedure load;
    procedure remove;
    function is_loaded return boolean;
end eba_ca_sample_data;
/

create or replace package body eba_ca_sample_data as
    procedure load is
    begin
        merge into eba_ca_event_types dest using (
            select 1 type_id, 'External Meeting' type_name, '#00FF00' display_color, '#00FF00' border_color, 'Y' is_active_yn, 'N' internal_yn, 2 color_pref_id from dual
            union all
            select 2 type_id, 'Team Meeting' type_name, '#FF0000' display_color, '#FF0000' border_color,  'Y' is_active_yn, 'Y' internal_yn, 1 color_pref_id from dual
            union all
            select 3 type_id, 'Recurring Meeting' type_name, '#F1C40F' display_color, '#F1C40F' border_color,  'Y' is_active_yn, 'Y' internal_yn, 13 color_pref_id from dual
            ) src
        on (dest.type_id = src.type_id)
        when not matched then
            insert ( type_id, type_name, display_color, border_color, is_active_yn, color_pref_id )
            values ( src.type_id, src.type_name, src.display_color, src.border_color, src.is_active_yn, src.color_pref_id );

        merge into eba_ca_series dest using (
            select 1 series_id, trunc(current_timestamp+1,'HH') start_date, trunc(current_timestamp+50,'HH') end_date, 8 recur_freq from dual
            ) src
        on (dest.series_id = src.series_id)
        when not matched then
            insert ( series_id, start_date, end_date, recur_freq )
            values ( src.series_id, src.start_date, src.end_date, src.recur_freq );

        merge into eba_ca_events dest using (
            select 1 event_id,
                'All Hands Meeting' event_name,
                2 type_id,
                trunc(current_timestamp+5,'HH') event_date_time,
                2 duration,
                'Mandatory event' event_desc,
                'Larry' contact_person,
                'Y' display_time,
                'HQ Conference Room 1' location,
                'Acme' link_name_1,
                'http://acme.com' link_url_1,
                null series_id
            from dual
            union all
            select 2,
                'Sales Event',
                1,
                trunc(current_timestamp+7,'DD'),
                24,
                'An all-day event.',
                'Moe',
                'N',
                'Pasadena, CA',
                null,
                null,
                null
            from dual
            union all
            select 3,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+1,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 4,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+8,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 5,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+15,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 6,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+22,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 7,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+29,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 8,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+36,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 9,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+43,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            union all
            select 10,
                'Weekly Sales Update',
                3,
                trunc(current_timestamp+50,'HH'),
                1,
                'Review pipeline and discuss wins/losses.',
                'Carolyn',
                'Y',
                'Denver, CO',
                null,
                null,
                1
            from dual
            ) src
        on (dest.event_id = src.event_id)
        when not matched then
            insert (event_id, event_name, type_id, event_date_time,
                duration, event_desc, contact_person, display_time,
                location, link_name_1, link_url_1 )
            values (src.event_id, src.event_name, src.type_id, src.event_date_time,
                src.duration, src.event_desc, src.contact_person, src.display_time,
                src.location, src.link_name_1, src.link_url_1 );
    end load;

    procedure remove is
    begin
        delete from eba_ca_events where event_id < 100;
        delete from eba_ca_event_types where type_id < 100 and type_id not in (select distinct type_id from eba_ca_events);
        delete from eba_ca_series where series_id < 100 and series_id not in (select distinct series_id from eba_ca_events);
    end remove;

    function is_loaded return boolean is
        l_cnt number := 0;
    begin
        select count(*) into l_cnt from eba_ca_events where event_id < 100;
        if l_cnt > 0 then return true; end if;
        select count(*) into l_cnt from eba_ca_event_types where type_id < 100 and type_id not in (select distinct type_id from eba_ca_events);
        if l_cnt > 0 then return true; end if;
        return false;
    end is_loaded;
end eba_ca_sample_data;
/