// Export just a single global symbol "app" to keep code clean
const app = (function($) {
    // app namespace members
    return {
        //----------------------------------------------------
        // Wire up copy to clipboard handlers for buttons with
        // data-text attribute.
        //----------------------------------------------------
        setupCopyHandlersForInteractiveReport: function(regionName) {
            const ir$ = apex.region( regionName ).element;

            // Add a clipboard handler to the IR widget so that on Ctrl+C or copy command
            // some text will be added to the clipboard
            apex.clipboard.addHandler( ir$[0], function( dataTransfer ) {
                // Could get whatever text you want to copy by any means. 
                // This example takes it from a button data-text attribute in the same 
                // row that has focus
                const text = $( document.activeElement )
                    .closest( "tr" )
                    .find( "button[data-text]" ).attr( "data-text" );

                if ( text ) {
                    dataTransfer.setData( "text/plain", text );
                    return true;
                }
            } );

            // Create a delegated event handler on all the copy buttons identifed by data-text
            // text attribute. Could use a class selector if desired.
            // This could be done with a dynamic scope DA click handler
            ir$.on( "click", "button[data-text]", function( event ) {
                const btn$ = $( event.target ).closest( "button" );

                apex.clipboard.copy( {
                    tooltipElement: btn$[0]
                } );
            } );
        }
    };
    // Ensure $ in app namespace resolves to correct jQuery
})(apex.jQuery);