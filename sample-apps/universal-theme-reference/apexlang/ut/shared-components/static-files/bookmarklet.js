
/*!
    Copyright (c) 2014, Oracle and/or its affiliates. All rights reserved.
 */
(function() {
    if (window.$ === undefined) {
        alert("To use this bookmarklet, you need to, first, drag it into your bookmark bars and then click on it on page 386 of the theme switch wizard!");
        return;
    }



    var WRITE_MODE = true;


    var theme21AndTheme22Mapping = {
        "Breadcrumb": {
            "Breadcrumb Menu": "Breadcrumb"
        },
        "Button": {
            "Hot Button (Red)": "Text",
            "Hot Button (Black)": "Text",
            "Hot Button (Red Outline)": "Text",
            "Small Button": "Text",
            "Button": "Text",
            "HTML button (legacy - APEX 5 migration)": "Text",
            "HTML image (legacy - APEX 5 migration)": "Text",
            "Small Hot Button (Red)": "Text"
        },
        "Label": {
            "Required": "Required",
            "Required with help": "Required",
            "Optional": "Optional",
            "No Label": "Hidden",
            "Optional with help": "Optional"
        },
        "Legacy Calendar": {
            "Calendar": "Calendar",
            "Calendar, Alternative 1": "Calendar",
            "Small Calendar": "Calendar"
        },
        "List": {
            "Horizontal Tabs Rounded List (Full Width)": "Tabs",
            "Hierarchical Expanding": "Links List",
            "Horizontal Images with Label List": "Media List",
            "Vertical Images List": "Media List",
            "Tabbed Navigation List": "Tabs",
            "DHTML Tree": "Links List",
            "Wizard Progress List, Horizontal Train": "Wizard Progress",
            "Wizard Progress List": "Wizard Progress",
            "Vertical Unordered List with Bullets, Alternative": "Links List",
            "Pull Down Menu with Image": "Links List",
            "Button List": "Links List",
            "Horizontal Tabs Rounded List": "Tabs",
            "Vertical Ordered List": "Links List",
            "Vertical Unordered List without Bullets": "Links List",
            "Vertical Unordered List with Bullets": "Links List",
            "Pull Down Menu": "Links List",
            "Horizontal Links List": "Media List",
            "Page Level Tabs List": "Top Navigation Menu",
            "Vertical Sidebar List": "Links List",
            "Centered Tab Set": "Tabs"
        },
        "Page": {
            "One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)": "Left and Right Side Columns",
            "No Tabs - Right Sidebar (optional / table-based)": "Standard",
            "Printer Friendly": "Minimal (No Navigation)",
            "Login": "Login",
            "Two Level Tabs - Left Sidebar (fixed-width / DIV based)": "Left Side Column",
            "No Tabs - Right Sidebar (fixed-width / DIV based)": "Right Side Column",
            "Two Level Tabs - Right Sidebar (fixed-width / DIV based)": "Right Side Column",
            "No Tabs - Left Sidebar (fixed-width / DIV based)": "Left Side Column",
            "One Level Tabs - Left Sidebar (fixed-width / DIV based)": "Left Side Column",
            "Popup": "Minimal (No Navigation)"
        },
        "Region": {
            "IRR Region Template": "Interactive Report",
            "Breadcrumb Region": "Title Bar",
            "Reports Region": "Standard",
            "Wizard Region": "Standard",
            "Sidebar Region, Bordered": "Standard",
            "Bracketed Region": "Standard",
            "Centered Tab Set Region": "Standard",
            "Sidebar Region": "Standard",
            "Reports Region No Title, Alternative 1": "Standard",
            "Navigation Region": "Standard",
            "Form Region": "Standard",
            "Sidebar Region, Bordered Alternative": "Standard",
            "Button Region with Title": "Buttons Container",
            "Sidebar Region, Alternative 1": "Standard",
            "Nested Region": "Standard",
            "Reports Region No Title": "Standard",
            "Button Region without Title": "Buttons Container",
            "Reports Region, Alternative 1": "Standard",
            "Hide and Show Region": "Collapsible",
            "Chart List": "Standard",
            "Region without Title": "Standard",
            "Region without Buttons and Titles": "Standard",
            "Borderless Region - No Title": "Blank with Attributes",
            "Reports Region 100% Width": "Standard",
            "Chart Region": "Standard",
            "Borderless Region": "Standard",
            "Navigation Region, Alternative 1": "Standard",
            "Wizard Region with Icon": "Standard"
        },
        "Report": {
            "Standard": "Standard",
            "Value Attribute Pairs - Div": "Value Attribute Pairs - Column",
            "Standard, Alternating Row Colors": "Standard",
            "Fixed Headers": "Standard",
            "Borderless Report": "Search Results",
            "Two Column Portlet": "Value Attribute Pairs - Row",
            "Horizontal Border": "Standard",
            "Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)": "Search Results"
        }
    };

    /**
     * Make any JSON changes to the object below.
     */
    var supportedThemes = {
        26: {
            image: "https://apex.oracle.com/pls/apex/apex_pm/r/42/files/static/v84//i/theme26.png",
            text: "Theme 26 - Productivity Applications",
            mappings: {
                "Breadcrumb": {
                    "Breadcrumb Menu": "Breadcrumb",
                    "Hierarchical Menu": "Breadcrumb"
                },
                "Button": {
                    "[ + ] Add Button": "Icon",
                    "[ > ] Go To Button": "Icon",
                    "[ Text ] Button": "Text",
                    "Button": "Text",
                    "HTML button (legacy - APEX 5 migration)": "Text",
                    "Interactive Report Button (Next)": "Text with Icon",
                    "Interactive Report Button": "Text",
                    "Large Button (Next)": "Text with Icon",
                    "Large Button (Previous)": "Text with Icon",
                    "Large Button": "Text",
                    "Small Button": "Text"
                },
                "Label": {
                    "Hidden label, read by screen reader": "Hidden",
                    "No Label": "Hidden",
                    "Optional with help": "Optional",
                    "Optional": "Optional",
                    "Required with help": "Required",
                    "Required": "Required"
                },
                "Legacy Calendar": {
                    "Calendar - Alternative": "Calendar",
                    "Calendar": "Calendar",
                    "Small Calendar": "Calendar"
                },
                "List": {
                    "Button List": "Links List",
                    "DHTML Tree": "Links List",
                    "Featured List with Subtext": "Media list",
                    "Hierarchical Expanding": "Links List",
                    "Horizontal Images with Label List": "Media List",
                    "Horizontal Links List": "Media List",
                    "Horizontal Wizard Progress List": "Wizard Progress",
                    "Page Level Tabs List": "Top Navigation Menu",
                    "Pull Down Menu with Image": "Links List",
                    "Pull Down Menu": "Links List",
                    "Search Filter Tabs": "Tabs",
                    "Tabbed Navigation List": "Tabs",
                    "Vertical Images List": "Media List",
                    "Vertical List with Subtext and Icon": "Media List",
                    "Vertical Ordered List": "Links List",
                    "Vertical Sidebar List": "Links List",
                    "Vertical Unordered List with Bullets": "Links List",
                    "Vertical Unordered List without Bullets": "Links List",
                    "Wizard Progress List - Vertical": "Wizard Progress"
                },
                "Page": {
                    "Dialog": "Modal Dialog",
                    "Login": "Login",
                    "Minimal Page": "Minimal (No Navigation)",
                    "No Tabs - Left and Right Sidebar": "Left and Right Side Columns",
                    "No Tabs - Left Sidebar": "Left Side Column",
                    "No Tabs - No Sidebar": "Standard",
                    "No Tabs - Right Sidebar": "Right Side Column",
                    "One Level Tabs - Content Frame": "Master Detail",
                    "One Level Tabs - Left and Right Sidebar": "Left and Right Side Column",
                    "One Level Tabs - Left Sidebar": "Left Side Column",
                    "One Level Tabs - No Sidebar": "Standard",
                    "One Level Tabs - Right Sidebar": "Right Side Column",
                    "One Level Tabs - Search Filter Bar": "Left Side Column",
                    "One Level Tabs - Wizard Page": "Standard",
                    "Popup": "Minimal (No Navigation)",
                    "Printer Friendly": "Minimal (No Navigation)",
                    "Two Level Tabs - Left and Right Sidebar": "Left and Right Side Columns",
                    "Two Level Tabs - Left Sidebar": "Left Side Column",
                    "Two Level Tabs - No Sidebar": "Standard",
                    "Two Level Tabs - Right Sidebar": "Right Side Column"
                },
                "Region": {
                    "IRR Region Template": "Interactive Report",
                    "Accessible Region with Heading": "Standard",
                    "Alert Region": "Alert",
                    "Borderless Region (no heading)": "Standard",
                    "Borderless Region": "Standard",
                    "Bracketed Region": "Standard",
                    "Breadcrumb Region": "Title Bar",
                    "Button Region with Title": "Buttons Container",
                    "Button Region without Title": "Buttons Container",
                    "Chart List": "Standard",
                    "Chart Region": "Standard",
                    "Content Frame Body Container": "Blank with Attributes",
                    "DIV Region with ID": "Blank with Attributes",
                    "Form Region": "Standard",
                    "Hide and Show Region (Hidden First) - Borderless": "Collapsible",
                    "Hide and Show Region - Borderless": "Collapsible",
                    "Hide and Show Region": "Collapsible",
                    "Interactive Report Region": "Interactive Report",
                    "jQuery Modal Region Template": "Inline Dialog",
                    "Login Region": "Login",
                    "Modal Region": "Inline Dialog",
                    "Navigation Region - Heading Inside": "Standard",
                    "Navigation Region": "Standard",
                    "Region without Buttons and Titles": "Standard",
                    "Region without Title": "Standard",
                    "Report Filter - Single Row": "Standard",
                    "Report List": "Standard",
                    "Reports Region - 100% Width": "Standard",
                    "Reports Region - Heading Inside": "Standard",
                    "Reports Region": "Standard",
                    "Scrollable Content Region": "Standard",
                    "Search Filter Region": "Standard",
                    "Sidebar Region - Heading Inside": "Standard",
                    "Sidebar Region": "Standard",
                    "Wizard Buttons": "Buttons Container",
                    "Wizard Region with Icon": "Standard",
                    "Wizard Region": "Standard"
                },
                "Report": {
                    "Borderless Report": "Standard",
                    "Comment Bubbles": "Comments",
                    "Fixed Headers": "Standard",
                    "Horizontal Border": "Standard",
                    "One Column Unordered List": "Links List",
                    "Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)": "Search Results",
                    "Standard - Alternative": "Standard",
                    "Standard": "Standard",
                    "Two Column Portlet": "Value Attribute Pairs - Row",
                    "Value Attribute Pairs - Left Aligned": "Value Attribute Pairs - Column",
                    "Value Attribute Pairs": "Value Attribute Pairs - Column"
                }
            }
        },
        25: {
            text: "Theme 25 - Blue Responsive",
            image: "https://apex.oracle.com/pls/apex/apex_pm/r/42/files/static/v84//i/theme25.png",
            mappings: {
                "Breadcrumb": {
                    "Breadcrumb Menu": "Breadcrumb"
                },
                "Button": {
                    "Button - Icon Only":"Icon",
                    "Button - Icon":"Text with Icon",
                    "Button": "Text",
                    "HTML button (legacy - APEX 5 migration)": "Text",
                    "Large Button - Icon Only": "Text",
                    "Large Button - Icon": "Icon",
                    "Large Button": "Icon"
                },
                "Label": {
                    "Hidden Label (Read by Screen Readers)": "Hidden",
                    "Optional (Horizontal - Left Aligned)": "Optional",
                    "Optional (Horizontal - Right Aligned)": "Optional",
                    "Optional (Label Above)": "Optional",
                    "Required (Horizontal - Left Aligned)": "Optional",
                    "Required (Horizontal - Right Aligned)": "Optional",
                    "Required (Label Above)": "Optional"
                },
                "Legacy Calendar": {
                    "Calendar": "Calendar"
                },
                "List": {
                    "Button List": "Links List",
                    "Featured List with Subtext":"Media List",
                    "Horizontal Images with Label List": "Media List",
                    "Horizontal Links List": "Media List",
                    "Horizontal Wizard Progress List": "Wizard Progress",
                    "Page Level Tabs List": "Top Navigation Menu",
                    "Tabbed Navigation List":"Tabs",
                    "Vertical Images List": "Media List",
                    "Vertical List with Subtext and Icon":"Media List",
                    "Vertical Ordered List": "Links List",
                    "Vertical Sidebar List": "Links List",
                    "Vertical Unordered List with Bullets": "Links List",
                    "Vertical Unordered List without Bullets": "Links List",
                    "Wizard Progress List - Vertical": "Wizard Progress"
                },
                "Page": {
                    "Dialog":"Modal Dialog",
                    "Login": "Login",
                    "No Tabs - Left and Right Sidebar":"Left and Right Side Column",
                    "No Tabs - Left Sidebar": "Left Side Column",
                    "No Tabs - No Sidebar": "Standard",
                    "No Tabs - Right Sidebar":"Right Side Column",
                    "One Level Tabs - Content Frame": "Master Detail",
                    "One Level Tabs - Left and Right Sidebar": "Left and Right Side Column",
                    "One Level Tabs - Left Sidebar": "Left Side Column",
                    "One Level Tabs - No Sidebar": "Standard",
                    "One Level Tabs - Right Sidebar": "Right Side Column",
                    "One Level Tabs - Wizard Page": "Standard",
                    "Popup": "Minimal (No Navigation)",
                    "Printer Friendly": "Minimal (No Navigation)",
                    "Two Level Tabs - Left and Right Sidebar": "Left and Right Side Column",
                    "Two Level Tabs - Left Sidebar": "Left Side Column",
                    "Two Level Tabs - No Sidebar": "Standard",
                    "Two Level Tabs - Right Sidebar": "Right Side Column"
                },
                "Region": {
                    "IRR Region Template": "Interactive Report",
                    "Accessible Region with Heading": "Standard",
                    "Alert Region":"Alert",
                    "Borderless Region": "Standard",
                    "Breadcrumb Region": "Title Bar",
                    "Button Region with Title": "Buttons Container",
                    "Button Region without Title": "Buttons Container",
                    "Content Frame Body Container": "Blank with Attributes",
                    "DIV Region with ID": "Blank with Attributes",
                    "Form Region": "Standard",
                    "Hide and Show Region (Expanded)": "Collapsible",
                    "Hide and Show Region (Hidden)": "Collapsible",
                    "Interactive Report Region": "Interactive Report",
                    "Modal Region":"Inline Dialog",
                    "Region without Buttons and Titles": "Standard",
                    "Sidebar Region": "Standard",
                    "Standard Region - No Padding": "Standard",
                    "Standard Region": "Standard",
                    "Wizard Buttons": "Buttons Container"
                },
                "Report": {
                    "Borderless Report": "Standard",
                    "Comment Bubbles": "Comments",
                    "Fixed Headers": "Standard",
                    "Horizontal Border": "Standard",
                    "One Column Unordered List":"Links List",
                    "Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)": "Search Results",
                    "Standard - Alternative": "Standard",
                    "Standard": "Standard",
                    "Two Column Portlet": "Value Attribute Pairs - Row",
                    "Value Attribute Pairs - Left Aligned": "Value Attribute Pairs - Column",
                    "Value Attribute Pairs": "Value Attribute Pairs - Column"
                }
            }
        },
        24: {
            text: "Theme 24- Cloudy",
            image: "https://apex.oracle.com/pls/apex/apex_pm/r/42/files/static/v84//i/theme24.png",
            mappings: {
                "Breadcrumb": {
                    "Breadcrumb Menu": "Breadcrumb",
                    "Hierarchical Menu":"Breadcrumb"
                },
                "Button": {
                    "[ + ] Add Button":"Icon",
                    "[ Text ] Button":"Text",
                    "Button": "Text",
                    "HTML button (legacy - APEX 5 migration)": "Text",
                    "Interactive Report Button": "Text",
                    "Large Button": "Text",
                    "Small Button": "Text"
                },
                "Label": {
                    "Label Hidden label, read by screen reader":"Hidden",
                    "No Label": "Hidden",
                    "Optional with help": "Optional",
                    "Optional": "Optional",
                    "Required with help": "Required",
                    "Required": "Required"
                },
                "Legacy Calendar": {
                    "Calendar - Alternative": "Calendar",
                    "Calendar": "Calendar",
                    "Small Calendar": "Calendar"
                },
                "List": {
                    "Button List": "Links List",
                    "DHTML Tree": "Links List",
                    "Hierarchical Expanding": "Links List",
                    "Horizontal Images with Label List": "Media List",
                    "Horizontal Links List": "Links List",
                    "Horizontal Wizard Progress List": "Wizard Progress",
                    "Page Level Tabs List":"Top Navigation Menu",
                    "Pull Down Menu with Image": "Links List",
                    "Pull Down Menu": "Links List",
                    "Tabbed Navigation List": "Tabs",
                    "Vertical Images List": "Links List",
                    "Vertical List with Subtext and Icon":"Media List",
                    "Vertical Ordered List": "Links List",
                    "Vertical Sidebar List": "Links List",
                    "Vertical Unordered List with Bullets": "Links List",
                    "Vertical Unordered List without Bullets": "Links List",
                    "Wizard Progress List - Vertical": "Wizard Progress"
                },
                "Page": {
                    "Dialog":"Modal Dialog",
                    "Login": "Login",
                    "No Tabs - Left and Right Sidebar":"Left and Right Side Columns",
                    "No Tabs - Left Sidebar": "Left Side Column",
                    "No Tabs - No Sidebar": "Standard",
                    "No Tabs - Right Sidebar": "Right Side Column",
                    "One Level Tabs - Content Frame":"Master Detail",
                    "One Level Tabs - Left and Right Sidebar": "Left and Right Side Columns",
                    "One Level Tabs - Left Sidebar": "Left Side Column",
                    "One Level Tabs - Right Sidebar": "Right Side Column",
                    "One Level Tabs - Wizard Page":"Standard",
                    "Popup": "Minimal (No Navigation)",
                    "Printer Friendly": "Minimal (No Navigation)",
                    "Two Level Tabs - Left and Right Sidebar":"Left and Right Side Columns",
                    "Two Level Tabs - Left Sidebar": "Left Side Column",
                    "Two Level Tabs - No Sidebar": "Standard",
                    "Two Level Tabs - Right Sidebar": "Right Side Column"
                },
                "Region": {
                    "IRR Region Template": "Interactive Report",
                    "Alert Region":"Alert",
                    "Borderless Region": "Standard",
                    "Bracketed Region": "Standard",
                    "Breadcrumb Region": "Title Bar",
                    "Button Region with Title": "Buttons Container",
                    "Button Region without Title": "Buttons Container",
                    "Chart List": "Standard",
                    "Chart Region": "Standard",
                    "Content Frame Body Container":"Blank with Attributes",
                    "DIV Region with ID":"Blank with Attributes",
                    "Form Region": "Standard",
                    "Hide and Show Region (Hidden First) - Borderless":"Collapsible",
                    "Hide and Show Region - Borderless": "Collapsible",
                    "Hide and Show Region": "Collapsible",
                    "jQuery Modal Region Template":"Inline Dialog",
                    "Login Region":"Login",
                    "Modal Region":"Inline Dialog",
                    "Navigation Region - Heading Inside": "Standard",
                    "Navigation Region": "Standard",
                    "Region without Buttons and Titles": "Standard",
                    "Region without Title": "Standard",
                    "Report Filter - Single Row": "Standard",
                    "Report List":"Standard",
                    "Reports Region - 100% Width": "Standard",
                    "Reports Region - Heading Inside": "Standard",
                    "Reports Region": "Standard",
                    "Scrollable Content Region":"Standard",
                    "Search Filter Region":"Standard",
                    "Sidebar Region - Heading Inside": "Standard",
                    "Sidebar Region": "Standard",
                    "Wizard Buttons":"Buttons Container",
                    "Wizard Region with Icon": "Standard",
                    "Wizard Region": "Standard"
                },
                "Report": {
                    "Borderless Report": "Standard",
                    "Comment Bubbles":"Comments",
                    "Fixed Headers": "Standard",
                    "Horizontal Border": "Standard",
                    "One Column Unordered List":"Links List",
                    "Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)": "Search Results",
                    "Standard - Alternative": "Standard",
                    "Standard": "Standard",
                    "Two Column Portlet": "Value Attribute Pairs - Row",
                    "Value Attribute Pairs - Left Aligned":"Value Attribute Pairs - Column",
                    "Value Attribute Pairs": "Value Attribute Pairs - Column"
                }
            }
        },
        23: {
            text: "Theme 23 - Crimson",
            image: "https://apex.oracle.com/pls/apex/apex_pm/r/42/files/static/v84//i/theme23.png",
            mappings: {
                "Breadcrumb": {
                    "Breadcrumb Menu": "Breadcrumb"
                },
                "Button": {
                    "Large Button": "Text",
                    "Small Button": "Text",
                    "Button": "Text",
                    "Interactive Report Button": "Text",
                    "HTML button (legacy - APEX 5 migration)": "Text"
                },
                "Label": {
                    "Optional with help": "Optional",
                    "Optional": "Optional",
                    "Required": "Required",
                    "No Label": "Hidden",
                    "Required with help": "Required"
                },
                "Legacy Calendar": {
                    "Calendar": "Calendar",
                    "Small Calendar": "Calendar",
                    "Calendar - Alternative": "Calendar"
                },
                "List": {
                    "Horizontal Wizard Progress List": "Wizard Progress",
                    "Vertical Ordered List": "Links List",
                    "Vertical Sidebar List": "Links List",
                    "Wizard Progress List - Vertical": "Wizard Progress",
                    "Vertical Unordered List with Bullets": "Links List",
                    "DHTML Tree": "Links List",
                    "Hierarchical Expanding": "Links List",
                    "Pull Down Menu with Image": "Links List",
                    "Button List": "Links List",
                    "Page Level Tabs List": "Top Navigation Menu",
                    "Tabbed Navigation List": "Tabs",
                    "Vertical Unordered List without Bullets": "Links List",
                    "Horizontal Links List": "Links List",
                    "Pull Down Menu": "Links List",
                    "Vertical Images List": "Links List",
                    "Horizontal Images with Label List": "Media List"
                },
                "Page": {
                    "Two Level Tabs - Left Sidebar": "Left Side Column",
                    "No Tabs - No Sidebar": "Standard",
                    "Printer Friendly": "Minimal (No Navigation)",
                    "Login": "Login",
                    "Popup": "Minimal (No Navigation)",
                    "Two Level Tabs - Right Sidebar": "Right Side Column",
                    "No Tabs - Right Sidebar": "Right Side Column",
                    "No Tabs - Left Sidebar": "Left Side Column",
                    "One Level Tabs - Left Sidebar": "Left Side Column",
                    "One Level Tabs - Left and Right Sidebar": "Left and Right Side Columns"
                },
                "Region": {
                    "IRR Region Template": "Interactive Report",
                    "Button Region with Title": "Buttons Container",
                    "Reports Region - Heading Inside": "Standard",
                    "Navigation Region": "Standard",
                    "Report Filter - Single Row": "Standard",
                    "Bracketed Region": "Standard",
                    "Chart Region": "Standard",
                    "Navigation Region - Heading Inside": "Standard",
                    "Form Region": "Standard",
                    "Region without Title": "Standard",
                    "Region without Buttons and Titles": "Standard",
                    "Wizard Region with Icon": "Standard",
                    "Sidebar Region - Heading Inside": "Standard",
                    "Reports Region": "Standard",
                    "Hide and Show Region (Hidden First)": "Collapsible",
                    "Borderless Region": "Standard",
                    "Chart List": "Standard",
                    "Hide and Show Region - Borderless": "Collapsible",
                    "Breadcrumb Region": "Title Bar",
                    "Wizard Region": "Wizard Container",
                    "Sidebar Region": "Standard",
                    "Hide and Show Region": "Collapsible",
                    "Button Region without Title": "Buttons Container",
                    "Reports Region - 100% Width": "Standard"
                },
                "Report": {
                    "Two Column Portlet": "Value Attribute Pairs - Row",
                    "Fixed Headers": "Standard",
                    "Horizontal Border": "Standard",
                    "Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)": "Search Results",
                    "Value Attribute Pairs": "Value Attribute Pairs - Column",
                    "Standard": "Standard",
                    "Standard - Alternative": "Standard",
                    "Borderless Report": "Standard"
                }
            }
        },
        22: {
            image: "https://apex.oracle.com/pls/apex/apex_pm/r/42/files/static/v84//i/theme22.png",
            text: "Theme 22- Blue Jay",
            mappings: theme21AndTheme22Mapping
        },
        21: {
            text: "Theme 21 - Scarlet",
            image: "https://apex.oracle.com/pls/apex/apex_pm/r/42/files/static/v84//i/theme21.png",
            mappings: theme21AndTheme22Mapping
        }
    };


    /**
     * Bookmarklet code starts here.
     */
    var dialogDiv$;
    var dialog = function( title, message, extraContent$, buttons ) {
        if (!buttons) {
            buttons =  {
                "Cancel": function() {
                    $( this ).dialog( "close" );
                }
            }
        }

        var okButton$ = $('<button class="a-Button a-Button a-Button--padLeft">Okay</button>');
        dialogDiv$.dialog("option", "title", title).dialog("option", "buttons", buttons);
        dialogDiv$.html("<div style='padding:20px;'>" + message +  "</div>");
        dialogDiv$.children().first().append( extraContent$ );
        dialogDiv$.dialog("open");
    };

    var chooseThemeToWrite = function( themeNumber ) {
        var list$ = $('<ul class="a-IconList--wizard a-IconList" role="listbox"></ul>');
        for (var key in supportedThemes) {
            (function() {
                var themeToWriteKey = key;
                var item$ =  $('<li class="wizard-selection a-IconList-item ut-migration-helper" role="option" tabindex="0"></li>');
                var themeToWrite = getThemeToWrite( themeToWriteKey );
                item$.append('<div><img src="' + themeToWrite.image + '" /></div>');
                item$.append('<span class="a-IconList-iconName">' + themeToWrite.text +'</span>');
                item$.click(function() {
                    dialogDiv$.dialog("close");
                    apexTemplateHelper.write( themeToWrite );
                });
                list$.append(item$);
            })();
        }
        dialog(
            "Select the base theme number",
            "The bookmarklet is compatible with a few 'base' themes. " +
            "Select the one that best matches yours below to apply the correct theme mapping ",
            list$,
                {});
    };

    if (!window.utMigrationScriptActive) {
        $("head").append("<style>" +
            ".theme-migration--is-updated { background-color: #CAF7C7; } " +
            ".theme-migration--is-error { background-color: #FDE5A4; }" +
            ".ut-migration-helper div { width: 90px; height: 60px; overflow:hidden; margin: auto; }" +
            ".ut-migration-helper img { width: 280px; height: 120px; margin-top: -10px; }" +
            ".ut-migration-helper { text-align:center; border: 1px whitesmoke solid; border-radius: 2px; } " +
            ".ut-migration-helper .a-IconList-iconName { height: 50px; display:inline-block; margin-top:5px; }" +
        "</style>");
        window.utMigrationDiv$ = dialogDiv$ = $("<div>");
        $("body").append(dialogDiv$);
        apex.theme.initResponsiveDialogs();
        dialogDiv$.dialog(
            {
                autoOpen: false,
                minWidth: 500,
                //minHeight: 300,
                closeText: "Ok"
            });
    } else {
        dialogDiv$ = window.utMigrationDiv$;
    }
    window.utMigrationScriptActive = true;

    var apexTemplateHelper = (function() {
        var buildPageRepresentation = function() {
            var pageRepresentation = {};
            var currentTemplateType;
            $(".a-Report-report").find("tbody").find("tr").each(function() {
                var tableRow$ = $(this);
                var templateType$ = tableRow$.find("td[headers='TEMP_TYPE']");
                var fromTemplate$ = tableRow$.find("td[headers='FROM_TEMPLATE']");
                var selectMapping$ = tableRow$.find("td[headers='LOV']").find("select");
                var templateType = templateType$.text().trim();
                var fromTemplate = fromTemplate$.text().trim();
                if (templateType && templateType.trim() !== "") {
                    currentTemplateType = templateType;
                }
                if (!pageRepresentation[currentTemplateType]) {
                    pageRepresentation[currentTemplateType] = {
                    };
                }
                pageRepresentation[currentTemplateType][fromTemplate] = {
                    "select$": selectMapping$,
                    "row$": tableRow$,
                    "selected": selectMapping$.find(":selected").text()
                };
            });
            return pageRepresentation;
        };

        var iterateThroughRepresentation = function ( pageRepresentation, callback ) {
            for (var templateType in pageRepresentation) {
                var templateTypes = pageRepresentation[templateType];
                for (var fromTemplate in templateTypes) {
                    callback( templateTypes[fromTemplate], templateType, fromTemplate);
                }
            }
        };

        var getTemplateJson = function() {
            var pageRepresentation = buildPageRepresentation();
            iterateThroughRepresentation(pageRepresentation, function( option, templateType, fromTemplate ) {
                pageRepresentation[templateType][fromTemplate] =  option.selected;
            });
            return JSON.stringify(pageRepresentation);
        };

        var selectResetColor = function() {
            $(this).removeClass("theme-migration--is-error").removeClass("theme-migration--is-updated");
        };

        var selectOptionByText = function( select$, row$,  text ) {
            select$.off('change', selectResetColor);
            var option$ = select$.find("option:contains('" + text +  "')")
                .filter(function(i){
                    return $(this).text() === text;
                });
            select$.on("change", selectResetColor);
            select$.removeClass("theme-migration--is-error").removeClass("theme-migration--is-updated");
            if (option$.length <= 0) {
                select$.addClass("theme-migration--is-error");
                return -1;
            }
            if (select$.val() === option$.val()) {
                return 0;
            }
            select$.val(option$.val());
            select$.addClass("theme-migration--is-updated");
            return 1;
        };


        var write = function ( theme ) {
            var newPageRepresentation = theme.mappings;
            if ( typeof newPageRepresentation === "string" ) {
                newPageRepresentation = JSON.parse(newPageRepresentation);
            }
            var pageRepresentation = buildPageRepresentation();
            var touched = 0;
            var parsed = 0;
            var changed = 0;
            var errors = {};
            iterateThroughRepresentation(pageRepresentation, function ( option, templateType, fromTemplate ) {
                if (!newPageRepresentation[templateType]) {
                    if (!errors[templateType]) {
                        errors[templateType] = true;
                    }
                } else if (!newPageRepresentation[templateType][fromTemplate]) {
                    if (!errors[templateType]) {
                        errors[templateType] = {}
                    }
                    errors[templateType][fromTemplate] = 0;
                } else {
                    var optionChanged =
                        selectOptionByText( option.select$, option.row$,  newPageRepresentation[templateType][fromTemplate] );
                    if (optionChanged === 1) {
                        changed++;
                    } else if ( optionChanged === -1) {
                        if (!errors[templateType]) {
                            errors[templateType] = {}
                        }
                        errors[templateType][fromTemplate] = 1;
                    }
                    touched++;
                }
                parsed++;
            });
            var errorMessage = "<ul>";
            var fromTemplateNotInMapping = [];
            var fromTemplateInMappingButNotInSelectList = 0;
            for (var key in errors) {
                if (errors[key]) {
                    if (errors[key] !== true) {
                        for (var fromTemplate in errors[key]) {
                            if (errors[key][fromTemplate] === 0 && fromTemplate !== "IRR Region Template") {
                                fromTemplateNotInMapping.push(fromTemplate);
                            } else {
                                fromTemplateInMappingButNotInSelectList++;
                            }
                        }
                    } else {
                        errorMessage += "<li><b>" + key + "</b> template type is not in the mapping</li>";
                    }
                }
            }
            errorMessage += "</ul>";
            var fromTemplateError = fromTemplateNotInMapping.length > 0 ?
                    ('<b>' + fromTemplateNotInMapping.length + '</b> "from templates" could not be found in the mapping. <br/>(' + fromTemplateNotInMapping.join(", ")  + ')')
                    : "";
            var notInSelectListError = fromTemplateInMappingButNotInSelectList > 0 ?
                    ('<b>' + fromTemplateInMappingButNotInSelectList +  '</b> template mappings could not be set' +
                ' because the select list did not have the specified values.<strong>Did you set "Match Template Classes" to "No" in the previous step?</strong>'
                    ) : "";
            errorMessage = fromTemplateError + notInSelectListError + errorMessage;
            var summaryMessage = "<b>" + touched + "</b> out of <b>" + parsed + "</b> template mapping(s) were recognized by this bookmarklet.<br/> Of these, <b>" + changed + "</b> template mapping(s) were altered.<br/>";
            var header = "Success";
            var dialogMessage = "";
            var buttons =  [
                { text: "Close", click: function () {  $( this ).dialog( "close" );  }, class:"a-Button--hot"}
            ];
            if ( errorMessage !== "<ul></ul>" ) {
                header = "Warning";
                dialogMessage = errorMessage;
                buttons = [
                    { text: "Map to a Different Theme", click: function () { $( this ).dialog( "close" ); chooseThemeToWrite(); }, class:""},
                    { text: "Close", click: function () {  $( this ).dialog( "close" );  }, class:"a-Button--hot"}
                ]
            }
            summaryMessage =
                '<div class="a-Alert a-Alert--defaultIcons a-Alert--colorBG a-Alert--' + header.toLowerCase() +  ' a-Alert--horizontal">' +
                    '<div class="a-Alert-wrap">' +
                        '<div class="a-Alert-icon"><span class="a-Icon "></span></div>' +
                        '<div class="a-Alert-content">' +
                            '<div class="a-Alert-header"><h2 class="a-Alert-title">'+  header +'</h2></div>' +
                            '<div class="a-Alert-body">' +  dialogMessage + '</div>' +
                        '</div>' +
                    '</div>' +
                '</div>' +
                summaryMessage;
            dialog( "Applied \"" + theme.text + "\" mappings", summaryMessage, "", buttons);
        };

        var toTable = function() {
            var table = "<table><tr><th>Theme</trth><th>Template Type</th><th>From Template</th><th>Value</th></tr>";
            for (var key in supportedThemes) {
                var printTheme = true;
                var previousTemplateType = null;
                iterateThroughRepresentation(supportedThemes[key].mappings, function(option, templateType, fromTemplate) {
                    var printTemplateType = false;
                    if (templateType !== previousTemplateType) {
                        printTemplateType = true;
                    }
                    previousTemplateType = templateType;
                    var tr =
                        "<tr>" +
                        "<td>" +
                        (printTheme ? key : "" )  +
                        "</td>" +
                        "<td>" +
                        (printTemplateType ? templateType : "") +
                        "</td>" +
                        "<td>" +
                        fromTemplate +
                        "</td>" +
                        "<td>" +
                        supportedThemes[key].mappings[templateType][fromTemplate] +
                         "</td>" +
                         "</tr>";
                     table += tr;
                     //printTheme = false;
                 });
             }
             table += "</table>";
             $("body").html(table);
         };

         return {
             toJSON: getTemplateJson,
             write: write,
             toTable: toTable
         };
     }());


     var getThemeToWrite = function(themeNumber) {
         if (!themeNumber) {
             return undefined;
         }
         return supportedThemes[themeNumber];
     };

     if (WRITE_MODE) {
         (function() {
             var themeNumberString = $("#P386_ACTIVE_THEME").text();
             var themeNumberArray = /(\d+)\./.exec(themeNumberString);
             var themeToWrite;
             if (!themeNumberArray || themeNumberArray.length <= 1 || !themeNumberArray[1]) {
                 dialog("Error", "This is not the Theme Switch Page (386). Please try using the mapping bookmarklet on the correct page.");
                 return;
             }
             try {
                 var themeNumber = parseInt(themeNumberArray[1]);
                 themeToWrite = getThemeToWrite( themeNumber );
                 if (!themeToWrite) {
                    chooseThemeToWrite( themeNumber );
                    return;
                 }
             } catch (e) {
                 dialog("Error parsing theme number",  e + ". Please go to http://apex.oracle.com for more information.");
                 return;
             }
             apexTemplateHelper.write( themeToWrite );
         }());
     } else {
         console.log(apexTemplateHelper.toJSON());
         apexTemplateHelper.toTable();

     }
 }());
