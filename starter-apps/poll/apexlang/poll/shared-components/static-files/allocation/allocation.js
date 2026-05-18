$(function() {
    Number.prototype.toFixedDown = function(digits) {
        var re = new RegExp("(\\d+\\.\\d{" + digits + "})(\\d)"),
            m = this.toString().match(re);
        return m ? parseFloat(m[1]) : this.valueOf();
    };
    $("ul").each(function() {
        var ar = function( obj$ , key ) {
            return obj$.attr( "data-allocate-" + key);
        };
        var ul$  = $(this);
        var name = ar(ul$, "name");
        if (!name) {
            return;
        }
        (function() {
            var container$ = $("<div class='p-Allocation-container'></div>");
            var summary$= $("<div class='p-Allocation-summary'></div>");
            var summaryBar$= $("<div class='p-Allocation-summaryBar'></div>");
            var remainingPercentage$ = $("<div class='p-Allocation-summaryRemaining'></div>");
            var input$ = $("<input type='hidden' name='" + name + "'/>");
            container$.insertBefore(ul$);
            ul$.addClass("p-Allocation-sliders");
            container$.prepend(summary$).append(ul$).append(input$);
            var maxAllocation = ar(ul$, "max");
            maxAllocation = maxAllocation ? maxAllocation : 100;
            var minAllocation = ar(ul$, "min");
            var suffix = ar(ul$, "suffix");
            var prefix = ar(ul$, "prefix");
            var inputMode = ar(ul$, "input");
            var restrictMode = ar(ul$, "restrict");
            var editableMode = ar(ul$, "editable") !== "false";
            var allocatedText = ar(ul$, "summary-label");
            if (!allocatedText) {
                allocatedText = "allocated";
            }
            var step = ar(ul$, "step");
            if (step) {
                step = parseInt(step);
            } else {
                step = 1;
            }
            var restrict;
            var allocations = [];
            summary$.stickyWidget({
                stickToBottom: true,
                toggleWidth: true
            });
            summary$.append(remainingPercentage$);
            summary$.append(summaryBar$);
            var displayStats = function( total ) {
                var amountToBeginWith = maxAllocation;
                var amountLeft = maxAllocation - total;
                var remaining = ((maxAllocation - total) / maxAllocation * 100 ).toFixed( 2 );
                if (remaining <= 0 ) {
                    remaining = "";
                } else {
                    remaining += "% remaining";
                }

                //title attributes on it.
                var printSuffix =  (suffix ? suffix + 's ' : " ");
                var printPrefix  =  (prefix ? prefix + " " : " ");
                remaining = printPrefix  + total + " / " + printPrefix + amountToBeginWith + " " + printSuffix + allocatedText + ". " + remaining;
                remainingPercentage$.html( remaining );
            };

            var fungeOnEnd = false;
            var proportion = function ( total, sourceAllocation ) {
                if (restrictMode !== "proportion" || !sourceAllocation || total <= maxAllocation) {
                    return false;
                }
                var containerWidth = ul$.width();
                var sourceValue = sourceAllocation.getValue();
                var fungeMax = 5;
                var funge = function( step ) {
                    fungeMax--;
                    var neededAllocation = maxAllocation - (total - maxAllocation) - 1;
                    if ( sourceValue === maxAllocation) {
                        neededAllocation = 0;
                    }
                    total = sourceValue;
                    var smallAllocations = [];
                    allocations.forEach( function( al ) {
                        if (al === sourceAllocation) {
                            return;
                        }
                        al.previousValue = al.getValue();
                        var preservePercentage = al.previousValue / maxAllocation ; // what percentage is the current slice
                        var round = Math.floor( (preservePercentage * neededAllocation) / step ) * step;
                        al.setValue( round );
                        total += round;
                        al.resize ( containerWidth );
                    });
                    if ( total > maxAllocation) {
                        funge( step * 2); // Double the step value in the next funge to ensure that HUGE numbers can get resized quickly.
                    } else if ( total < maxAllocation) {
                        fungeOnEnd = sourceValue;
                    }
                };
                funge( step );
                return total;
            };
            var updateAllocation = function(  sourceAllocation, finishedSliding ) {
                var total = 0;
                var containerWidth = ul$.width();
                allocations.forEach( function( al ) {
                    total += al.getValue();
                });
                restrict = Math.max(0,  maxAllocation - total);
                allocations.forEach( function( al ) {
                    al.colorSlider();
                });
                if ( sourceAllocation ) {
                    var proportionedTotal = proportion ( total, sourceAllocation );
                    if ( proportionedTotal ) {
                        total = proportionedTotal;
                    } else if ( total > maxAllocation && finishedSliding ) {
                        var value = sourceAllocation.getValue();
                        sourceAllocation.setValue( maxAllocation - (total - value)  );
                        total = maxAllocation;
                    }
                    sourceAllocation.resize( containerWidth );
                    if (finishedSliding && fungeOnEnd && total / maxAllocation >= .95  && restrictMode === "proportion") {
                        var difference = maxAllocation - total;
                        sourceAllocation.setValue( sourceAllocation.getValue() + difference);
                        sourceAllocation.resize();
                        total = maxAllocation;
                        fungeOnEnd = false;
                    }
                }
                displayStats( total );
                return total <= maxAllocation;
            };
            var updateAll = function(  sourceAllocation, finishedSliding ) {
                var result = updateAllocation(  sourceAllocation, finishedSliding );
                var results = [];
                var containerWidth = ul$.width();
                allocations.forEach(function (al) {
                    if ( !sourceAllocation ) {
                        al.resize(containerWidth);
                    }
                    results.push(al.getValue());
                });
                input$.val(results.join(","));
                return result;
            };
            var i = 0;
            ul$.children().each(function() {
                var li$ = $(this);
                var allocationClass =  "js-allocation-" + i++;
                var colorClass = "u-color-" + i;
                var slider$ = $( "<div class='p-Allocation-slider " +  allocationClass  + "'></div>" );
                var summaryAlloc$ = $("<div title='" + this.innerHTML + "' class='p-Allocation-summarySlice " + allocationClass + "'></div>");
                var summaryAllocPercentage$= $("<div class='" + colorClass + "'></div>");
                summaryAlloc$.append(summaryAllocPercentage$);
                var liName =  name + "-data-allocate-" + i;
                var text$ = $("<input type='number' min='0' max='" + maxAllocation  + "' step='" + step + "' id='" + liName + "'  class='p-Allocation-slider--text t-Form-field'/>");
                summaryAlloc$.click(function() {
                    $("html,body").stop(true, false).animate({
                        scrollTop:  li$.offset().top - apex.theme.defaultStickyTop() - summary$.outerHeight()
                    });
                });
                var setReadOnlyContent = function() {
                    if (!span$) return;
                    var printSuffix =  (suffix ? suffix + 's ' : " ");
                    var printPrefix  =  (prefix ? prefix + " " : " ");
                    span$.html(printPrefix + text$.val() + " " + printSuffix);
                };
                var lastPercentage = -1;
                var allocation = {
                    "text$": text$,
                    "slider$": slider$,
                    "getValue": function() {
                        var value  = slider$.slider("value");
                        value = parseInt(value);
                        if (!value || isNaN(value)) {
                            return 0;
                        }
                        return value;
                    },
                    "setValue": function( value ) {
                        slider$.slider("value", value);
                    },
                    "summary$": summaryAlloc$,
                    "colorSlider": function() {
                        if (restrict === 0 ) {
                            slider$.addClass("is-full");
                        } else {
                            slider$.removeClass("is-full")
                        }
                    },
                    "resize": function( containerWidth ) {
                        var value = slider$.slider("value");
                        var percentage = value / maxAllocation;
                        if ( lastPercentage === percentage ) {
                            return;
                        }
                        lastPercentage = percentage;
                        if (percentage < .01) {
                            summaryAlloc$.hide();
                        } else {
                            summaryAlloc$.css("display", "inline-block")
                        }
                        summaryAlloc$.width( percentage * 100 + "%" );
                        summaryAllocPercentage$.html(parseInt(percentage * 100) + "%");
                        text$.val( value );
                        setReadOnlyContent();
                    }
                };
                text$.on('keyup change', function() {
                    var number = parseInt(text$.val(), 10);
                    if (isNaN(number)) {
                        number = 0;
                    }
                    slider$.slider("value", number);
                    updateAll( allocation, true );
                });
                allocations.push( allocation );
                li$.html("<label for='" + liName + "' class='p-Allocation-label'>" + li$.html() + "</label>");
                var textWrap$ = $("<div class='p-Allocation-field'>");
                li$.append( slider$).append(textWrap$);
                slider$.wrap("<div class='p-Allocation-sliderWrap' aria-hidden='true'></div>");
                textWrap$.append( text$ );
                var val = ar(li$, "value");
                if (!val) {
                    val = 0;
                }

                val = parseInt(val, 10);
                slider$.slider({
                    orientation: "horizontal",
                    range: "min",
                    disabled: !editableMode,
                    max: maxAllocation,
                    stop: function() {
                        updateAll ( allocation, true );
                    },
                    step: step,
                    value: val,
                    slide: function() {
                        return updateAllocation ( allocation );
                    }
                });
                if ( !editableMode ) {
                    slider$.find(".ui-slider-handle").remove();
                }
                text$.val(val);
                var span$;
                if (inputMode === "readonly" || !editableMode ) {
                    text$.hide();
                    span$ = $("<span class='p-Allocation-slider--text'></span>");
                    span$.insertAfter(text$);
                }
                if ( inputMode === "hidden" ) {
                    textWrap$.hide();
                }
                window.apex.touchMe.push(slider$.find(".ui-slider-handle")[0]);
                allocation.slider = slider$.slider;
                slider$.find(".ui-slider-range").addClass(colorClass).removeClass("ui-widget-header");
                summaryBar$.append(summaryAlloc$);
            });
            $(window).on("apexwindowresized", function() {
                updateAll(  );
            });
            updateAll( );
        })();
    });
});