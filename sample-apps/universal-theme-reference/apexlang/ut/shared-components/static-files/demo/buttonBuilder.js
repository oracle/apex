(function(theme42demo, $) {
  "use strict";
  var TEXT_ONLY$ = $('#TEXT_ONLY'),
    ICON_ONLY$ = $('#ICON_ONLY'),
    TEXT_W_ICON$ = $('#TEXT_W_ICON'),
    detached; // keeps detached span node with left/right icon

  // Stores the original class attributes of the three buttons.
  var cachedClass = {
    TEXT_ONLY: TEXT_ONLY$.attr('class'),
    ICON_ONLY: ICON_ONLY$.attr('class'),
    TEXT_W_ICON: TEXT_W_ICON$.attr('class').replace('t-Button--iconLeft', ''),
    ICON_SPAN: ICON_ONLY$.children().attr('class') + 'fa ',
    ICON_LEFT_INSIDE: $('#TEXT_W_ICON span:first').attr('class') + 'fa ',
    ICON_RIGHT_INSIDE: $('#TEXT_W_ICON span:last').attr('class') + 'fa '
  };

  var getModifiers = function(type) {
    var options = ['P6100_HOT', 'P6100_SIZE', 'P6100_TYPE', 'P6100_STYLE', 'P6100_BUTTON_SET', 'P6100_WIDTH', 'P6100_SPACING_LEFT', 'P6100_SPACING_RIGHT', 'P6100_SPACING_TOP', 'P6100_SPACING_BOTTOM'],
      m = '',
      i,
      len;

    (function() {
      var found = 0;
      // add/remove icon position item based on selected button type.
      if (type === 'TEXT_W_ICON') {
        options.push('P6100_ICON_POSITION');
      } else {
        while ((found = $.inArray('P6100_ICON_POSITION', options)) !== -1) {
          options.splice(found, 1);
        }
      }
      len = options.length;
    })();

    var getVal = function(item) {
      return $v(item) === 'default' ? '' : $v(item);
    };

    for (i = 0; i < len; i++) {
      m += getVal(options[i]) + ' ';
    }
    return m.replace(/\s+/g, " ");
  };

  theme42demo.renderButtons = function() {
    var BUTTONS = ['TEXT_ONLY', 'ICON_ONLY', 'TEXT_W_ICON'],
      ICON_CLASS_CONTAINER$ = $('#P6100_ICON_CLASS_CONTAINER'),
      ICON_PICKER$ = $('#open_dialog'),
      ICON_POS_CONTAINER$ = $('#P6100_ICON_POSITION_CONTAINER'),
      selectedType = $v('P6100_BUTTON_TEMPLATE'),
      selectedB$ = $('#' + selectedType);

    var displayCurrentButton = function() {
      BUTTONS.splice($.inArray(selectedType, BUTTONS), 1);
      selectedB$.removeClass('is-hidden');
      for (var i = 0; i < BUTTONS.length; i++) {
        var h$ = $('#' + BUTTONS[i]);
        if (!h$.hasClass('is-hidden')) {
          h$.addClass('is-hidden');
        }
      }
    };

    var prepareUI = function() {
      var iconClass = $v('P6100_ICON_CLASS'),
        iconPos = $v('P6100_ICON_POSITION'),
        buttonLabel = $v('P6100_BUTTON_LABEL'),
        buttonTitle = 'title="' + buttonLabel + '" ',
        iSpan = cachedClass.ICON_SPAN,
        lc = cachedClass.ICON_LEFT_INSIDE,
        rc = cachedClass.ICON_RIGHT_INSIDE,
        linkText$ = $('#button_code_link_text'),
        linkAttr = 'class="t-Button',
        modifiers = getModifiers(selectedType).trim();
      // Remove the left/right modifier for displaying purpose only.
      // User won't need it as the span is physically on the left/right when displayed on the page.
      //modifiers_to_display = modifiers.trim();
      //replace('t-Button--iconRight', '').replace('t-Button--iconLeft', '').

      selectedB$
        .removeAttr("class")
        .addClass(cachedClass[selectedType] + ' ' + modifiers);

      if (selectedType === 'ICON_ONLY') {
        ICON_CLASS_CONTAINER$.show();
        ICON_PICKER$.show();
        ICON_POS_CONTAINER$.hide();
        ICON_ONLY$.children()
          .removeAttr("class")
          .addClass(iSpan + iconClass);
        linkText$.text(ICON_ONLY$.html());
        linkAttr = buttonTitle + linkAttr + ' t-Button--noLabel t-Button--icon';
        ICON_ONLY$
          .attr('aria-label', buttonLabel)
          .attr('title', buttonLabel);

      } else if (selectedType === 'TEXT_ONLY') {
        ICON_POS_CONTAINER$.hide();
        ICON_CLASS_CONTAINER$.hide();
        ICON_PICKER$.hide();
        linkText$.text('<span class="t-Button-label">' + buttonLabel + '</span>');

      } else if (selectedType === 'TEXT_W_ICON') {
        linkAttr += ' t-Button--icon';
        ICON_CLASS_CONTAINER$.show();
        ICON_POS_CONTAINER$.show();
        ICON_PICKER$.show();

        if (iconPos === 't-Button--iconLeft') {
          if (detached) {
            detached.prependTo(TEXT_W_ICON$);
          }
          detached = $('#TEXT_W_ICON .t-Icon--right').detach();

          $('#TEXT_W_ICON .t-Icon--left')
            .removeAttr("class")
            .addClass(lc + iconClass);
          linkText$.text('<span class="' + iSpan + iconClass + '" aria-hidden="true"></span><span class="t-Button-label">' + buttonLabel + '</span>');

        } else if (iconPos === 't-Button--iconRight') {
          if (detached) {
            detached.appendTo(TEXT_W_ICON$);
          }
          detached = $('#TEXT_W_ICON .t-Icon--left').detach();

          $('#TEXT_W_ICON .t-Icon--right')
            .removeAttr("class")
            .addClass(rc + iconClass);
          linkText$.text('<span class="t-Button-label">' + buttonLabel + '</span><span class="' + iSpan + iconClass + '" aria-hidden="true"></span>');
        }
      }

      // Display code on page
      if (modifiers.length > 0) {
        linkAttr += ' ' + modifiers + '"';
      } else {
        linkAttr += '"';
      }

      $("#button_code_link_attr").text(linkAttr);

      // show the entire code without ID
      $("#button_code_whole").text($("<div />").append(selectedB$.clone().removeAttr("id")).html());
    };

    displayCurrentButton();
    prepareUI();
  };

})(apex.theme42demo, apex.jQuery);
