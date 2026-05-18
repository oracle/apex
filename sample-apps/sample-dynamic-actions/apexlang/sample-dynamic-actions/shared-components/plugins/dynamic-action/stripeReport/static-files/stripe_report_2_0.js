// A dynamic action plug-in function can access it's current context with the "this" object.
// It contains for example "action" which stores the dynamic attributes attribute01 - attribute10 and
// the ajaxIdentifier used for the AJAX call. Inside the function you can use
// "this.affectedElements" to get a jQuery object which contains all the affected
// DOM elements our dynamic action should be performed on. You can also refer to
// "this.triggeringElement" to get a DOM element of the triggering element.
//
// For dynamic action plug-in functions you should use a function name which is
// unique, so it doesn't get in conflict with existing functions. Best practice
// is to use the same name as used for the plug-in internal name.

function com_oracle_apex_stripe_report() {
    // Declare variables. In dealing with attribute values, it's better to have 
    // named variables instead of using the generic ones, that makes the code more 
    // readable.
    var lStripeColor;

    // Initialise all the variables, based on their attribute definitions.
    lStripeColor = this.action.attribute01;
    
    // 'this.triggeringElement' is the DOM element of the region containing
    // the Interactive Report specified as the 'When' triggering element. This
    // is useful in this striping report example, where we don't really need the
    // user to have to define the interactive report again in the 'Affected Elements'
    // of the dynamic action. We just use the 'When' triggering element directly and
    // do a jQuery statement that stripes the report, with the color defined by the 
    // plug-in user in the 'Stripe Color' attribute.
    //
    apex.jQuery('#' + this.triggeringElement.id + ' .a-IRR-content tr:odd td').css('background-color', lStripeColor);
}
