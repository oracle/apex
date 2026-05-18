! function (jet, $, server ) {
    "use strict";

    jet.legend = {
        init: function (pRegionId, pApexAjaxIdentifier) {
            require(["ojs/ojcore", "ojs/ojlegend", "ojs/ojchart"], function (oj) {
                server.plugin(pApexAjaxIdentifier, {}, {
                    success: function (pData) {

                        // Set Colour of Legend Items - to match default colouring of each series
                        var attrGroups = new oj.ColorAttributeGroupHandler();

                        var legendItems = pData.sections[0].items;
                        for(var i = 0; i < legendItems.length; i++) {
                            legendItems[i] = { text: legendItems[i].text, color : attrGroups.getValue( legendItems[i].text ), shortDesc: legendItems[i].shortDesc };
                        }
                        pData.sections[0].items = legendItems;

                        // Define optionChange function, to handle updating chart regions based on legend item selection
                        pData.optionChange = function (event, data) {

                            // Define array of select legend items
                            var hiddenCategories = data['value'];
                            // Update each chart to reflect legend selection
                            $(".oj-chart").ojChart({hiddenCategories: hiddenCategories});
                        };


                        $(pRegionId)
                            .ojLegend(pData);
                    }
                });
            });
        }
    };

} ( window.jet = window.jet || {}, apex.jQuery, apex.server );
