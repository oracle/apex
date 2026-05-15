create or replace package eba_demo_ir_pkg as
    -------------------------------------------------------------------------
    -- This package is used to demonstrate the power of PL/SQL pipelined
    -- funcitons. While functional, it is not complete.
    -- DEMONSTRATION PURPOSES ONLY
    -------------------------------------------------------------------------

    -------------------------------------------------------------------------
    -- Helper functions for parsing links out of breadcrumbs
    -------------------------------------------------------------------------
    type page_refs_t is record( source_page_id number, source_id number, target_page_id number );
    type page_refs_tbl is table of page_refs_t;
    function getPageIDNum ( p_app_id in number, p_link in varchar2 ) return number;
    -- Breadcrumb references need to be accessed through hierarchical SQL; creating a
    -- separate function helps with performance.
    function getBreadPageRefsTable ( p_app_id in number ) return page_refs_tbl PIPELINED;

    -------------------------------------------------------------------------
    -- The row definition for the piped result set.
    -------------------------------------------------------------------------
    type page_refs_rep_t is record(
        page_id number,
        list_link_count number,
        branch_count number,
        button_count number,
        breadcrumb_count number,
        reportcol_count number,
        irepcol_count number,
        ireplink_count number,
        tab_count number,
        total number
        );
    -- The table definition for the piped result set.
    type page_refs_rep_tbl is table of page_refs_rep_t;

    -------------------------------------------------------------------------
    -- The pipelined function itself; returns a table of the pages within
    -- the current application and counts of the various ways those pages
    -- can be accessed from other pages.
    -------------------------------------------------------------------------
    function incomingPageRefsReport return page_refs_rep_tbl PIPELINED;
end eba_demo_ir_pkg;
/

create or replace package body eba_demo_ir_pkg as
    -------------------------------------------------------------------------
    -- This package is used to demonstrate the power of PL/SQL pipelined
    -- funcitons. While functional, it is not complete.
    -- DEMONSTRATION PURPOSES ONLY
    -------------------------------------------------------------------------

    -------------------------------------------------------------------------
    -- Function: getPageID
    -- Helper function to get the page number or alias out of a link.
    -------------------------------------------------------------------------
    function getPageID ( p_app_id in number, p_link in varchar2 ) return varchar2 is
        PREFIX constant varchar2(20) := 'F?P=#APP_ID#:';
        l_link varchar2(32767) := upper(p_link);
        l_start binary_integer;
    begin
        ------------------------------------------------------------------------
        -- APEX generates different versions for a page link...
        ------------------------------------------------------------------------
        l_link  := replace(l_link, ' ',  ''); -- if link like 'f?p='||:APP_ID||...
        l_link  := replace(l_link, '''', '');
        l_link  := replace(l_link, '|',  '');
        l_link  := replace(l_link, chr(38)||'FLOW_ID.',      '#APP_ID#'  );
        l_link  := replace(l_link, chr(38)||'APP_ID.',       '#APP_ID#'  );
        l_link  := replace(l_link, ':APP_ID',                '#APP_ID#'  );
        l_link  := replace(l_link, '='||p_app_id||':',      '=#APP_ID#:');
        --
        l_start := INSTR(l_link, PREFIX);
        ------------------------------------------------------------------------
        -- Try to extract the page id, if it fails because a substitution
        -- variables is used for page id we will get a VALUE_ERROR => dynamic call.
        ------------------------------------------------------------------------
        if l_start > 0 then
            return substr(l_link, l_start+13, instr(l_link, ':', l_start+13)-l_start-13);
        else
            return null;
        end if;
    exception when value_error then
        return null;
    end getPageID;
 
    -------------------------------------------------------------------------
    -- Function: getPageIDNum
    -- Helper function to get the page number out of a link, even if the link
    --  uses the page alias.
    -------------------------------------------------------------------------
    function getPageIDNum( p_app_id in number, p_link in varchar2 ) return number is
        l_page varchar2(255) := getPageID( p_app_id, p_link );
        l_pageid number;
    begin
        select page_id into l_pageid
        from apex_application_pages
        where application_id = p_app_id
            and (to_char(page_id) = l_page
                or upper(page_alias) = upper(l_page));
        return l_pageid;
    end getPageIDNum;
 
    -------------------------------------------------------------------------
    -- Function: getBreadRefsTable
    -- Pipelined function to get all breadcrumbs in an application, the page(s)
    --  they're visible on, and the page they link to.
    -------------------------------------------------------------------------
    function getBreadPageRefsTable( p_app_id in number ) return page_refs_tbl PIPELINED is
        cursor bc_csr is
            with data as (  select breadcrumb_id, parent_breadcrumb_id, breadcrumb_entry_id, defined_for_page
                            from apex_application_bc_entries
                            where application_id = p_app_id )
            select defined_for_page,
                breadcrumb_entry_id,
                substr(sys_connect_by_path(defined_for_page,':'),1,instr(sys_connect_by_path(defined_for_page,':'),':',-1)-1) parent_pages
            from data
            start with parent_breadcrumb_id = 0
            connect by prior breadcrumb_id = breadcrumb_id
                and prior breadcrumb_entry_id = parent_breadcrumb_id;
 
        bc_rec bc_csr%ROWTYPE;
        l_pages APEX_APPLICATION_GLOBAL.VC_ARR2;
        l_pageref page_refs_t;
        type ref_tbl_t is table of number index by binary_integer;
        l_bc ref_tbl_t;
    begin
        for bc_rec in bc_csr loop
            l_pages := APEX_UTIL.STRING_TO_TABLE( bc_rec.parent_pages );
            for x in 1..l_pages.count loop
                if l_pages(x) is not null then
                    select bc_rec.defined_for_page, bc_rec.breadcrumb_entry_id, pg.page_id into l_pageref
                    from apex_application_pages pg
                    where pg.application_id = p_app_id
                        and ( to_char(pg.page_id) = l_pages(x) or pg.page_alias = l_pages(x) );
                    pipe row (l_pageref);
                end if;
            end loop;
        end loop;
    end getBreadPageRefsTable;
 
    -------------------------------------------------------------------------
    -- Function: incomingPageRefsReport
    -- Pipelined function to get all pages in an application and a count of
    --  the different ways each page is linked to from other pages.
    -------------------------------------------------------------------------
    function incomingPageRefsReport return page_refs_rep_tbl PIPELINED is
        l_app constant number := v('APP_ID');

        l_report page_refs_rep_t;
        --
        cursor pg_csr is
            select page_id,
                nvl2(page_alias,'('||to_char(page_id)||'|'||page_alias||')',to_char(page_id)) page_alias,
                page_name
            from apex_application_pages
            where application_id = l_app
            order by page_id;
        pg_rec pg_csr%ROWTYPE;
        l_regexp varchar2(2000);
        --
        cursor bc_csr is
            select target_page_id, count(*) c
            from table(getBreadPageRefsTable( l_app )) refs
            group by target_page_id;
        bc_rec bc_csr%ROWTYPE;
        l_bc_arr apex_application_global.vc_arr2;
        type ref_tbl_t is table of number index by binary_integer;
        l_bc ref_tbl_t;
    begin
        for bc_rec in bc_csr loop
            l_bc(bc_rec.target_page_id) := bc_rec.c;
        end loop;
        --
        for pg_rec in pg_csr loop
            l_regexp := 'f?p=('||l_app||'|[&]APP_ID.):'||pg_rec.page_alias||'(:|$)';
            l_report.page_id := pg_rec.page_id;
            -- List Entries
            select count(*) into l_report.list_link_count
            from apex_application_list_entries lst
            where lst.application_id = l_app
                and regexp_like(lst.entry_target, l_regexp);
            -- Branches
            select count(*) into l_report.branch_count
            from apex_application_page_branches brn
            where brn.application_id = l_app
                and brn.page_id <> pg_rec.page_id
                and regexp_like(brn.branch_action, l_regexp);
            -- Buttons
            select count(*) into l_report.button_count
            from apex_application_page_buttons btn
            where btn.application_id = l_app
                and btn.page_id <> pg_rec.page_id
                and regexp_like(btn.redirect_url, l_regexp);
            -- Breadcrumbs
            if l_bc.EXISTS( pg_rec.page_id ) then
                l_report.breadcrumb_count := l_bc(pg_rec.page_id);
            else
                l_report.breadcrumb_count := 0;
            end if;
            -- Report Columns (standard)
            select count(*) into l_report.reportcol_count
            from apex_application_page_rpt_cols rc
            where rc.application_id = l_app
                and rc.page_id <> pg_rec.page_id
                and regexp_like(rc.column_link_url, l_regexp);
            -- Report Columns (interactive)
            select count(*) into l_report.irepcol_count
            from apex_application_page_ir_col rc
            where rc.application_id = l_app
                and rc.page_id <> pg_rec.page_id
                and regexp_like(rc.column_link, l_regexp);
            -- Interactive Report detail links
            select count(*) into l_report.ireplink_count
            from apex_application_page_ir api
            where api.application_id = l_app
                and api.page_id <> pg_rec.page_id
                and pg_rec.page_id = getPageIDNum( api.application_id, api.detail_link_target );
            -- Tabs
            select count(*) into l_report.tab_count
            from apex_application_tabs tb
            where tb.application_id = l_app
                and tb.tab_page = pg_rec.page_id;
            --
            l_report.total := l_report.list_link_count
                + l_report.branch_count
                + l_report.button_count
                + l_report.breadcrumb_count
                + l_report.reportcol_count
                + l_report.irepcol_count
                + l_report.ireplink_count
                + l_report.tab_count
                ;
            pipe row( l_report );
        end loop;
    end incomingPageRefsReport;

end eba_demo_ir_pkg;
/