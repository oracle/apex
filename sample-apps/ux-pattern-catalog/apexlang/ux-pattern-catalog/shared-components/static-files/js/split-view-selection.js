/*
 * split-view-selection.js
 *
 * Reusable selection behavior for Oracle APEX split-view pages with:
 * - A single-selection Content Row region
 * - A UI selection item maintained by the region
 * - A canonical selected-item page item
 * - Detail regions that depend on the selected item
 * - An optional page-level empty state
 *
 * Page-specific Dynamic Actions remain responsible for:
 * - Copying the UI selection item into the canonical item
 * - Refreshing dependent detail regions
 * - Calling reconcile() after the list model changes
 */

(function (apex, $) {
    "use strict";

    var config;

    function getRows() {
        return $("#" + config.regionId + " " + config.rowSelector);
    }

    function setContentState(hasSelection) {
        $(config.contentSelector)
            .toggleClass("u-hidden", !hasSelection);

        $(config.emptySelector)
            .toggleClass("u-hidden", hasSelection);
    }

    function selectRow(row$, notify) {
        if (!row$ || !row$.length) {
            return;
        }

        /*
         * Do not move keyboard focus.
         * Suppress notification only when restoring the existing selection.
         */
        apex.region(config.regionId).setSelection(
            row$.first(),
            false,
            !notify
        );

        row$[0].scrollIntoView({
            block: "nearest"
        });
    }

    function findMatchingRow(rows$, contextId) {
        return rows$.filter(function () {
            return String($(this).attr("data-id")) === String(contextId);
        }).first();
    }

    /*
     * Reconcile the canonical selected item with the currently rendered rows.
     *
     * - Preserve the current item when it remains in the result set.
     * - Otherwise select the first available row.
     * - Clear selection and show the empty state when no rows remain.
     */
    function reconcile() {
        var rows$ = getRows();
        var uiItem = apex.item(config.uiItem);
        var contextItem = apex.item(config.contextItem);
        var contextId = contextItem.getValue();

        if (!rows$.length) {
            uiItem.setValue("", null, true);
            contextItem.setValue("", null, true);

            setContentState(false);
            return;
        }

        if (contextId) {
            var matchingRow$ = findMatchingRow(rows$, contextId);

            if (matchingRow$.length) {
                /*
                 * Restore silently because the canonical item has not changed
                 * and the existing detail content is still valid.
                 */
                selectRow(matchingRow$, false);
                uiItem.setValue(contextId, null, true);

                setContentState(true);
                return;
            }
        }

        /*
         * Notify selection handlers so page-specific Dynamic Actions can
         * update the canonical item and refresh dependent detail regions.
         */
        selectRow(rows$.first(), true);
        setContentState(true);
    }

    function initialize(options) {
        config = $.extend(
            {
                rowSelector: ".t-ContentRow-item",
                contentSelector: ".js-selected-item-content",
                emptySelector: ".js-selected-item-empty"
            },
            options
        );

        if (!config.regionId) {
            throw new Error(
                "appSplitViewSelection requires regionId."
            );
        }

        if (!config.uiItem) {
            throw new Error(
                "appSplitViewSelection requires uiItem."
            );
        }

        if (!config.contextItem) {
            throw new Error(
                "appSplitViewSelection requires contextItem."
            );
        }

        reconcile();
    }

    window.appSplitViewSelection = {
        initialize: initialize,
        reconcile: reconcile,
        setContentState: setContentState
    };

})(apex, apex.jQuery);