(function(theme42demo, $) {
  "use strict";
  var timeout,
    contentContainer$ = $('#icons'),
    searchResultsHTML = '',
    apexIconKeys = Object.keys(apexIcons); // var apexIcons is defined in icons.js file

  // apexIcons contains duplicates under different categories
  // thus we need to clean it up.
  var cleanIcons = (function() {
    var set = [];
    apexIconKeys.forEach(function(iconCategory) {
      $.merge(set, apexIcons[iconCategory]);
    });

    var removeDuplicates = function(originalArray, prop) {
      var newArray = [],
        item,
        lookupObject = {},
        localProp;

      for (let i in originalArray) {
        if (originalArray[i]) {
          item = originalArray[i];
          localProp = item[prop];
          lookupObject[localProp] = item;
        }
      }

      for (let i in lookupObject) {
        if (lookupObject[i]) {
          newArray.push(lookupObject[i]);
        }
      }
      return newArray;
    };

    return removeDuplicates(set, 'name');
  })();

  var highlight = function(txt, str) {
    return txt.replace(new RegExp("(" + str + ")", "gi"), '<span class="highlight">$1</span>');
  };

  theme42demo.renderIcons = function(opts) {
    clearTimeout(timeout);
    var debounce = opts.debounce || 50,
      key = opts.filterString || '',
      keyLength = key.length;

    key = key.toUpperCase().trim();

    var assembleHTML = function(resultSet, iconCategory) {

      if (iconCategory) { // keywords is not provided, show everything
        searchResultsHTML = searchResultsHTML + '<div class="dm-Search-category">';
        searchResultsHTML = searchResultsHTML + '<h2 class="dm-Search-title">' + iconCategory.replace(/_/g, ' ').toLowerCase() + ' Icons</h2>';
        searchResultsHTML = searchResultsHTML + '<ul class="dm-Search-list">';
        resultSet.forEach(function(iconClass) {
          var cl = iconClass.name;
          searchResultsHTML = searchResultsHTML + '<li><a href="javascript:returnIcon(\'' + cl + '\');" class="dm-Search-result">' +
            '<div class="dm-Search-icon"><span class="t-Icon fa ' + cl + '" aria-hidden="true"></span></div>' +
            '<div class="dm-Search-info">' +
            '<span class="dm-Search-class">' + cl + '</span>' +
            '</div></a></li>';
        });
        searchResultsHTML = searchResultsHTML + '</ul>';
        searchResultsHTML = searchResultsHTML + '</div>';
      } else {
        if (resultSet.length > 0) {
          resultSet.forEach(function(iconClass) {
            var cl = iconClass.name;
            searchResultsHTML = searchResultsHTML + '<li><a href="javascript:returnIcon(\'' + cl + '\');" class="dm-Search-result">' +
              '<div class="dm-Search-icon"><span class="t-Icon fa ' + cl + '" aria-hidden="true"></span></div>' +
              '<div class="dm-Search-info">' +
              '<span class="dm-Search-class">' + highlight(cl, key) + ' </span>' +
              '</div></a></li>';
          });
        }
      }
    };

    var search = function() {
      if (key.length === 1) {
        return;
      }

      var resultSet = [],
        resultsTitle = '';

      contentContainer$.empty();
      searchResultsHTML = '';

      if (key === '') { // no keywords provided, display all icons.
        apexIconKeys.forEach(function(iconCategory) {
          resultSet = apexIcons[iconCategory].sort(function(a, b) {
            if (a.name < b.name) {
              return -1;
            } else if (a.name > b.name) {
              return 1;
            } else {
              return 0;
            }
          }); // no keywords, no search. Just sort.
          assembleHTML(resultSet, iconCategory);
        });
      } else {
        resultSet = cleanIcons.filter(function(curVal) {
          var name = curVal.name.toUpperCase().slice(3), // remove the prefix 'fa-'
            nameArr,
            filters = curVal.filters ? curVal.filters.toUpperCase() : '',
            filtersArr,
            firstXletters,
            rank = 0,
            i, filterArrLen, j, nameArrLen;

          if (key.indexOf(' ') > 0) {
            key = key.replace(' ', '-');
          }

          if (name.indexOf(key) >= 0) {
            // convert names to array for ranking
            nameArr = name.split('-');
            nameArrLen = nameArr.length;
            // rank: doesn't have "-"
            if (name.indexOf('-') < 0) {
              rank += 1000;
            }
            // rank: matches the whole name
            if (name.length === keyLength) {
              rank += 1000;
            }
            // rank: matches partial beginning
            firstXletters = nameArr[0].slice(0, keyLength);
            if (firstXletters.indexOf(key) >= 0) {
              rank += 1000;
            }
            for (j = 0; j < nameArrLen; j++) {
              if (nameArr[j]) {
                if (nameArr[j].indexOf(key) >= 0) {
                  rank += 100;
                }
              }
            }
            curVal.rank = rank;
            return true;
          }

          // convert words in filters to array
          filtersArr = filters.split(',');
          filterArrLen = filtersArr.length;
          // keywords matches in filters field.
          for (i = 0; i < filterArrLen; i++) {
            firstXletters = filtersArr[i].slice(0, keyLength);
            if (firstXletters.indexOf(key) >= 0) {
              curVal.rank = 1;
              return true;
            }
          }
        });

        resultSet.sort(function(a, b) {
          var ar = a.rank,
            br = b.rank;
          if (ar > br) {
            return -1;
          } else if (ar < br) {
            return 1;
          } else {
            return 0;
          }
        });

        assembleHTML(resultSet);

        // search results UI doesn't require category title
        resultsTitle = resultSet.length === 0 ? 'No results' : resultSet.length + ' Results';
        searchResultsHTML = '<div class="dm-Search-category">' +
          '<h2 class="dm-Search-title">' + resultsTitle + '</h2>' +
          '<ul class="dm-Search-list">' +
          searchResultsHTML +
          '</ul>';
        searchResultsHTML = searchResultsHTML + '</div>';
      }

      // finally append HTML to page
      contentContainer$.append(searchResultsHTML);
    };

    timeout = setTimeout(function() {
      search();
    }, debounce);
  };

  theme42demo.renderIconPreview = function() {
    var iconClass = $v('P4000_ICONCLASS'),
      iconSize = $v('P4000_SIZE') === 'LARGE' ? 'fa-lg' : '',
      iconScale = $v('P4000_ICON_SIZE') !== 'null' ? $v('P4000_ICON_SIZE') : '',
      iconModStatus = $v('P4000_MODIFIER') ? $v('P4000_MODIFIER_STATUS') : '';


    var iconModifiers = iconScale + ' ' + $v('P4000_ANIMATION') + ' ' + $v('P4000_ROTATE') + ' ' + $v('P4000_MODIFIER') + ' ' + iconModStatus + ' ' + iconSize;
    $("#icon_preview span").removeAttr("class").addClass("fa " + iconClass + ' ' + iconModifiers).attr("aria-hidden", "true");
    $("#icon_code").text($("#icon_preview").html());
    $("#icon_classes").text($("#icon_preview span").attr("class").substr(3));
  };
})(apex.theme42demo, apex.jQuery);
