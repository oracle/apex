/**
 *
 * Sortable widget (with swipe/touch support for mobile).
 * Designed for livepoll as requested by mike for stack ranking questions.
 */
$(function() {
    var touchMe = window.apex.touchMe = [];

    //Code borrowed from tutorial to make jqueryUI draggable work with touch screens.
    function touchHandler(event) {
        if (touchMe.indexOf(event.target) === -1) {
            return;
        }
        var touches = event.changedTouches,
            first = touches[0],
            type = "";
        switch(event.type)
        {
            case "touchstart": type = "mousedown"; break;
            case "touchmove":  type="mousemove"; break;
            case "touchend":   type="mouseup"; break;
            default: return;
        }

        var simulatedEvent = document.createEvent("MouseEvent");
        simulatedEvent.initMouseEvent(type, true, true, window, 1,
            first.screenX, first.screenY,
            first.clientX, first.clientY, false,
            false, false, false, 0/*left*/, null);
        first.target.dispatchEvent(simulatedEvent);
        event.preventDefault();
    }

    function init() {
        document.addEventListener("touchstart", touchHandler, true);
        document.addEventListener("touchmove", touchHandler, true);
        document.addEventListener("touchend", touchHandler, true);
        document.addEventListener("touchcancel", touchHandler, true);
    }
    init();

    var sortables = 0;
    var sortWidget = function( select$ ) {
        var firstSelect$ = select$;
        var name = select$.attr("data-sortable-name");
        if ( !name ) {
            return;
        }

        select$.wrap('<div class="p-SortableList-container"></div>');
        var useSecond = select$.attr("data-sortable-second");
        var selectListener$ = select$;
        var input$ = $( "<input type='hidden' name='" +  name + "'>");
        var sortUpdate = function( event, ui ) {
            var val = selectListener$.sortable( "toArray", { attribute: "data-value" } );
            var output = val.join(",");
            input$.val(output);
        };
        select$.after(input$);
        if ( useSecond ) {
            var secondSelect$ = $('<ul aria-label="Ranked Items" role="listbox">');
            select$.after( secondSelect$ );
            selectListener$ = secondSelect$;
            select$ = select$.add(secondSelect$);
            firstSelect$.addClass("p-SortableList--options");
            secondSelect$.addClass("p-SortableList--selections")
        } else {
            firstSelect$.addClass("p-SortableList--singular");
        }
        var keys = $.ui.keyCode;
        var lastLi$;
        var focusOnLi = function( currentLi$) {
            lastLi$.attr( "tabindex", "-1" );
            currentLi$.attr("tabindex", 0).focus();
            lastLi$ = currentLi$;
        };
        var reorderLi = [];
        select$.find("li").addClass("ui-state-default").each(function() {
            var li$ = $(this);
            touchMe.push(this);
            if (!lastLi$) {
                lastLi$ = li$;
                li$.attr("tabindex", 0);
            } else {
                li$.attr("tabindex", -1);
            }
            var index = parseInt(li$.attr("data-sortable-index"));
            if (!isNaN(index)) {
                reorderLi.push({
                    index: index,
                    li$: li$
                });
            }
            li$.mousedown(function() {
                focusOnLi( li$ );
            });
            li$.on("keydown", function (event) {
                var kc = event.which;
                var getNodeBetween = function(firstSelect$, secondSelect$) {
                    if (useSecond) {
                        if ( secondSelect$.find(li$).length <= 0 ) {
                            var index = firstSelect$.find('li').index( li$ );
                            var secondSelectListItems$ = secondSelect$.find('li');
                            index = Math.min(index, secondSelectListItems$.length - 1);
                            return secondSelectListItems$.eq(index);
                        }
                    }
                    return $();
                };
                var switchBetween = function(firstSelect$, secondSelect$) {
                    focusOnLi(getNodeBetween(firstSelect$, secondSelect$));
                };
                var moveBetween = function(firstSelect$, secondSelect$) {
                    var node$ = getNodeBetween(firstSelect$, secondSelect$);
                    if (node$.length <= 0) {
                        secondSelect$.append(li$);
                    } else {
                        li$.insertAfter(node$);
                    }
                };

                var getFirstInList = function() {
                    return li$.parent().children().last();
                };
                var getLastInList = function() {
                    return li$.parent().children().first();
                };
                if ( !event.shiftKey ) {
                    if (kc === keys.UP) {
                        var prev$ = li$.prev();
                        if (prev$.length <= 0) {
                            focusOnLi( getFirstInList() );
                        } else {
                            focusOnLi(prev$);
                        }
                    } else if (kc === keys.DOWN) {
                        var next$ = li$.next();
                        if (next$.length <= 0) {
                            focusOnLi( getLastInList() )
                        } else {
                            focusOnLi(next$);
                        }
                    } else if (kc === keys.RIGHT) {
                        switchBetween(firstSelect$, secondSelect$)
                    } else if (kc === keys.LEFT) {
                        switchBetween(secondSelect$, firstSelect$);
                    } else if (kc === keys.SPACE) {
                        if (li$.parent()[0] === firstSelect$[0]) {
                            moveBetween(firstSelect$, secondSelect$)
                        } else {
                            moveBetween(secondSelect$, firstSelect$);
                        }
                        focusOnLi(li$);
                    } else if (kc === keys.HOME ) {
                        focusOnLi(getFirstInList());
                    }  else if (kc == keys.END) {
                        focusOnLi(getLastInList());
                    } else if (kc === keys.TAB ) {
                        return;
                    }
                    event.preventDefault();
                    return;
                }
                //Moving next for down and up is useful when jumpNav is active.
                if (kc === keys.UP) {
                    var prev$ = li$.prev();
                    if (prev$.length <= 0) {
                        li$.parent().append(li$);
                    } else {
                        li$.insertBefore(prev$);
                    }
                } else if (kc === keys.DOWN) {
                    var next$ = li$.next();
                    if (next$.length <= 0) {
                        li$.parent().prepend(li$);
                    } else {
                        li$.insertAfter(next$);
                    }
                } else if (kc === keys.RIGHT) {
                    moveBetween(firstSelect$, secondSelect$);
                } else if (kc === keys.LEFT) {
                    moveBetween(secondSelect$, firstSelect$);
                } else if (kc === keys.TAB ) {
                    return;
                }
                focusOnLi(li$);
                select$.sortable( "refresh" );
                sortUpdate();
            });
        });
        reorderLi.sort(function(a, b) {
            return a.index < b.index;
        });

        select$.addClass("p-SortableList").addClass("js-connected-sortable-" + sortables).sortable({
            placeholder: "ui-state-highlight",
            connectWith: ".js-connected-sortable-" + sortables++,
            scroll: false
        }).disableSelection();
        var moveLisOver = function( moveLi ) {
            while ( reorderLi.length > 0 ) {
                var li$ = reorderLi.pop().li$;
                moveLi (li$);
            }
        };
        if ( useSecond ) {
            var resize = function() {
                var minHeight = 40;
                select$.find("li").each(function() {
                    minHeight += $(this).outerHeight();
                });
                firstSelect$.css("min-height", minHeight);
                secondSelect$.css("min-height", minHeight);
            };
            $(window).on("apexwindowresized", resize);
            resize();
            moveLisOver( function(li$) {
                secondSelect$.append(li$);
            });
        } else {
            moveLisOver( function(li$) {
                firstSelect$.prepend(li$);
            });
        }
        sortUpdate();
        select$.on("sortupdate", function( event, ui ) {
            focusOnLi( ui.item );
        });
        select$.on("sortstart", function( event, ui ) {
            select$.find(".ui-state-highlight").height(ui.item.height());
        });
        (function() {

        })();
        selectListener$.on("sortupdate", sortUpdate);
    };

    $("ul").each(function() {
        sortWidget($(this));
    });

});