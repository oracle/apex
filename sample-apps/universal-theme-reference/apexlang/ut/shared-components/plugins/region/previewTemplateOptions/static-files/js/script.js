window.apex.theme42demo = apex.theme42demo || {};

apex.theme42demo.initPreviewTemplateOptions = ({
    previewId,
    componentType,
    componentStaticId,
    templateOptions
}) => {

    templateOptions = JSON.parse(templateOptions);

    let element$ = $(`#${componentStaticId}`);

    if ( componentType === 'ITEM' ) {
        element$ = $(`#${componentStaticId}_CONTAINER`);
    }

    if ( element$.find(".dm-TemplateOption-previewTarget").length > 0 ) {
        element$ = $(`#${componentStaticId} .dm-TemplateOption-previewTarget`);
    }

    // console.log({
    //     previewId,
    //     componentType,
    //     componentStaticId,
    //     templateOptions,
    //     element$
    // });

    const getTemplateOptions = ({
        collapsibleTarget,
        isAdvanced
    }) => {
        // Single checkboxes
        if ( !isAdvanced ) {
            templateOptions.options.forEach((option) => {
                let optionHtml = `
                    <div class="col-12">
                        <div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--single-checkbox" id="${previewId}_option_${option.r}_CONTAINER">
                            <div class="t-Form-labelContainer"></div>
                            <div class="t-Form-inputContainer">
                                <div class="t-Form-itemWrapper">
                                    <div class="apex-item-single-checkbox">
                                        <input type="checkbox" id="${previewId}_option_${option.r}" value="${option.r}" ${element$.hasClass(option.r) ? 'checked' : '' }>
                                        <label for="${previewId}_option_${option.r}" id="${previewId}_option_${option.r}_LABEL" class="u-checkbox">${option.d}</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;

                $(`#${previewId}_${collapsibleTarget} .t-Region-body`).append(optionHtml);

                $(`#${previewId}_option_${option.r}` ).change(function() {
                    if ( document.querySelector(`#${previewId}_option_${option.r}`).checked ) {
                        element$.addClass(option.r);
                    } else {
                        element$.removeClass(option.r);
                    }
                    apex.event.trigger(document, 'templateOptionChanged', { componentStaticId });
                });
            });
        }

        // Groups (radio)
        templateOptions.groups.filter( ( group ) => group.isAdvanced === isAdvanced).forEach((group) => {
            let hasDefault = !group.options.map( el => el.r).some(r=> templateOptions.presetValues.includes(r));
            let groupHtml = `
            <div class="col-4 col-md-6">
                <div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--radiogroup">
                    <div class="t-Form-labelContainer">
                        <label for="${previewId}_group_${group.groupId}" id="${previewId}_group_${group.groupId}_LABEL" class="t-Form-label u-bold">${group.title}</label>
                    </div>
                    <div class="t-Form-inputContainer">
                        <div class="t-Form-itemWrapper">
                            <div tabindex="-1" id="${previewId}_group_${group.groupId}" aria-labelledby="${previewId}_group_${group.groupId}_LABEL" class="apex-item-group apex-item-group--rc apex-item-radio" role="group">
                                ${group.nullText && hasDefault ? `<div class="apex-item-option to-preview-option">
                                                    <input type="radio" id="${previewId}_group_${group.groupId}_null" name="${previewId}_group_${group.groupId}" data-display="${group.nullText}" value="" ${element$.is(group.options.map((el) => "."+el.r).join(",")) ? '' : 'checked' } >
                                                    <label class="u-radio" for="${previewId}_group_${group.groupId}_null">${group.nullText}</label>
                                                    </div>` : ''}
                            </div>
                        </div>
                    </div>
                </div>
            </div>`;

            $(`#${previewId}_${collapsibleTarget} .t-Region-body`).append(groupHtml);

            group.options.forEach((option) => {
                let optionHtml = `
                    <div class="apex-item-option to-preview-option">
                    <input type="radio" id="${previewId}_group_${group.groupId}_${option.r}" name="${previewId}_group_${group.groupId}" data-display="${option.d}" value="${option.r}" ${element$.hasClass(option.r) ? 'checked' : '' } >
                    <label class="u-radio" for="${previewId}_group_${group.groupId}_${option.r}">${option.d}</label>
                    </div>`;

                $(`#${previewId}_group_${group.groupId}`).append(optionHtml);
            });

            $(`input[type=radio][name="${previewId}_group_${group.groupId}"]` ).change(function() {
                element$.removeClass(group.options.map((el) => el.r).join(" "));
                element$.addClass(document.querySelector(`input[type=radio][name="${previewId}_group_${group.groupId}"]:checked` ).value );
                apex.event.trigger(document, 'templateOptionChanged', { componentStaticId });
            });
        });
    };

    const emitCollapsible = ({
        isAdvanced
    }) => {
        if ( isAdvanced && templateOptions.groups.filter( ( group ) => group.isAdvanced === isAdvanced ).length === 0 ) {
            return;
        }

        const title = isAdvanced ? "Advanced" : "Common";

        $(`#${previewId}`).append( `<div role="region" aria-label="${title}" class="t-Region t-Form--noPadding t-Region--hideShow t-Region--scrollBody t-Region--noPadding t-Region--noUI ${ isAdvanced ? 'is-collapsed' : 'is-expanded' }" id="${previewId}_${title}">
            <div class="t-Region-header">
                <div class="t-Region-headerItems t-Region-headerItems--controls">
                    <span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span>
                </div>
                <div class="t-Region-headerItems t-Region-headerItems--title">
                    <h2 class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">${title}</button></h2>
                </div>
            </div>
            <div class="t-Region-bodyWrap">
                <div class="t-Region-body u-flex margin-left-md margin-right-md" style="flex-wrap: wrap;"></div>
            </div>
        </div>` );

        getTemplateOptions({
            collapsibleTarget: title,
            isAdvanced
        });
    };

    emitCollapsible({ isAdvanced: false });
    emitCollapsible({ isAdvanced: true });

    // Init collapsibles
    $(`#${previewId} .t-Region--hideShow`).each(function () {
        var collapsible$ = $(this);

        collapsible$.collapsible({
            content: $(this).find(".t-Region-body").first(),
            collapsed: collapsible$.hasClass("is-collapsed"),
            renderIcon: false
        });

        // Inject icon class into faux toggle button
        var hideShowToggle$ = collapsible$.find(".t-Button--hideShow .a-Icon").addClass("a-Collapsible-icon");

        // Triggering accessible collapsible button with faux button
        hideShowToggle$.click(function () {
            $(this).closest('.t-Region-header').find('.t-Region-titleButton').click();
        });
    });

};
