// A dynamic action plug-in function can access it's current context with the "this" object.
// It contains for example "action" which stores the dynamic attributes attribute01 - attribute10 and
// the ajaxIdentifier used for the AJAX call. Inside the function you can use
// "this.affectedElements" to get a jQuery object which contains all the affected
// DOM elements our dynamic action should be performed on.
//
// For dynamic action plug-in functions you should use a function name which is
// unique, so it doesn't get in conflict with existing functions. Best practise
// is to use the same name as used for the plug-in internal name.

function com_oracle_apex_highlight() {
  // It's better to have named variables instead of using
  // the generic ones, makes the code more readable
  var lColor = (this.action.attribute01==null?"#ffd700":this.action.attribute01);
  var lSpeed = (this.action.attribute02==null?"normal":this.action.attribute02);

  // Only highlight if we are not called during initialization of the page!
  if (this.browserEvent !== "load") {
    // "this.affectedElements" equals a jQuery object which contains all
    // the affected DOM elements our action should be performed on.
    // We just have to loop over it by using the jQuery each function.
    this.affectedElements.each(
      function(){
        var $Instance = jQuery(this); // this is the current DOM object
        // store original background color
        var lCurrentColor = $Instance.css("background-color");
        // 1) do the animation to the new color
        // 2) animate back to the original color
        $Instance
          .animate( { backgroundColor: lColor }, lSpeed)
          .animate( { backgroundColor: lCurrentColor }, lSpeed);
      });
  }
};