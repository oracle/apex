create or replace function sp_date_range_pct_comp (
    p_start_date in date,
    p_end_date   in date)
    return number
is
    l_pct_complete number := 0;
    l_days         number := null;
    l_days_elapsed number := null;
    l_sysdate      date   := trunc(sysdate);
begin
    --
    -- this function return 0, 10, 20 .. 100 based days elapsed between two dates
    --
    if p_start_date is null or p_end_date is null then
       l_pct_complete := 0; -- required both dates be not null
    else
       if p_start_date > p_end_date then 
           l_pct_complete := 0; -- invalid condition
       elsif p_start_date > l_sysdate then 
           l_pct_complete := 0; 
       elsif p_start_date = p_end_date then 
           l_pct_complete := 100;
       elsif l_sysdate > p_end_date then
           l_pct_complete := 100;
       else 
           l_days := p_end_date - p_start_date; 
           if l_days > 0 then 
               l_days_elapsed := p_end_date - l_sysdate;
               l_pct_complete := 100 * l_days_elapsed / l_days;
               l_pct_complete := round(l_pct_complete,-1);
               l_pct_complete := 100 - l_pct_complete;
           end if;
       end if;
    end if;
    return l_pct_complete;
end sp_date_range_pct_comp;
/