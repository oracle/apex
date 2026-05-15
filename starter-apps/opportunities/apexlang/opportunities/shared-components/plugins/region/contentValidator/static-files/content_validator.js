(function($){
  $.widget("apex.content_validator", {
    options: {
        ajaxIdentifier: null,
        expiryDays: null
    },
    _create: function() {
        var self = this;

        self._jqMap = {};
        self._jqMap.wrapper = self.element.find('.t-Validation');
        self._jqMap.user = self.element.find('.t-Validation-user');
        self._jqMap.date = self.element.find('.t-Validation-date');
        self._jqMap.icon = self.element.find('.t-Validation-icon').find('.a-Icon');

        self.element.on('apexrefresh', function() {
          self._refresh.call(self, this);
        });
    },
    _refresh: function(event) {
      var self = this;

      self.element.trigger('apexbeforerefresh');

      apex.server.plugin(
        self.options.ajaxIdentifier,
        {},
        {
          success: function(data) {
            self._jqMap.user.text(data.validatedBy);

            if (data.validated) {
              self._jqMap.date.text(data.validated);

              if (data.expired) {
                self._jqMap.icon
                  .removeClass('u-success u-danger')
                  .addClass('u-warning');
                self._jqMap.icon
                  .removeClass('icon-check icon-remove')
                  .addClass('icon-warning');
              } else {
                self._jqMap.icon
                  .removeClass('u-warning u-danger')
                  .addClass('u-success');

                self._jqMap.icon
                  .removeClass('icon-warning icon-remove')
                  .addClass('icon-check');
              }
            } else {
              self._jqMap.date.text('');

              self._jqMap.icon
                .removeClass('u-success u-warning')
                .addClass('u-danger');

              self._jqMap.icon
                .removeClass('icon-check icon-warning')
                .addClass('icon-remove');
            }

            self.element.trigger('apexafterrefresh');
          }
        }
      );
    }
  });
})(apex.jQuery);
