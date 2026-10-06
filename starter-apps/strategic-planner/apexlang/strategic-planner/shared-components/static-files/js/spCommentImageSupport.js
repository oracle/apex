(function () {
    const { debug, server } = apex;

    class APEXUploadAdapter {
        constructor(loader, options) {
            debug.log('APEXUploadAdapter constructor', arguments);
            this.loader = loader;
            this.options = options;

            debug.log('APEXUploadAdapter constructor this', this);
        }

        // Starts the upload process.
        // 
        // *** Important ***
        // Server must return a JSON object that inclues the 'url' and 'mimetype' object
        upload() {
            const scope = 'APEXUploadAdapter.upload';
        
            debug.log(scope, 'START', arguments);

            return this.loader.file.then(file => new Promise((resolve, reject) => {
                const reader = new FileReader();

                reader.onload = () => {
                    const base64String = reader.result.split(',')[1];

                    debug.log(scope, 'file', file);
                    debug.log(scope, 'Calling server.process');

                    server.process(this.options.uploadApplicationProcess, {
                        x01: JSON.stringify(this.options.data),
                        x02: file.name,
                        x03: file.type,
                        p_clob_01: base64String
                    }).then(response => {
                        debug.log(scope, 'response', response);
                        return response;
                    }).then(data => {
                        debug.log(scope, 'data', data);
                        if (data.url) {
                            resolve({
                                default: data.url,
                                alt: data.alt // optional alt text from server
                            });
                        } else {
                            reject('Upload failed: No URL provided');
                        }
                    }).catch(error => {
                        reject(error);
                    });
                };

                reader.onerror = () => {
                    reject(reader.error);
                };

                reader.readAsDataURL(file);

            }));
        }

        // Aborts the upload process.
        abort() {
            const scope = 'APEXUploadAdapter.abort';
            debug.log(scope, 'START', arguments);

            if ( this.xhr ) {
                this.xhr.abort();
            }

            debug.log(scope, 'END');
        }
    }

    function APEXUploadAdapterPlugin(editor) {
        editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
            return new APEXUploadAdapter(loader, editor.config.get('apexUpload') || {});
        }
    }

    function DocumentMentionLinkPlugin(editor) {
        editor.conversion.for('downcast').attributeToElement({
            model: 'mention',
            view: (modelAttributeValue, { writer, options }) => {
                if (!modelAttributeValue || !modelAttributeValue.docLink || !modelAttributeValue.link) {
                    return;
                }

                return writer.createAttributeElement('a', {
                    class: 'mention',
                    'data-mention': modelAttributeValue.id,
                    'href': modelAttributeValue.link,
                    ...(!options.isClipboardPipeline && {'data-mention-uid': modelAttributeValue.uid})
                }, {
                    priority: 20,
                    id: modelAttributeValue.uid
                });
            },
            converterPriority: 'high'
        });
    }

    window.spCommentImageSupport = {
        markdown: {
            configEditor: function (options, customOptions) {
                /**
                 * Appends a feed definition to the CKEditor
                 * Use this instead of setting options.editorOptions.mention.feeds directly so can append if needed to allow for multiple optional feeds
                 *
                 * @param feed Feed object as defined by: https://ckeditor.com/docs/ckeditor5/latest/features/mentions.html#providing-the-feed
                 */
                function appendFeedToMentions(feed){
                    if (!options.editorOptions.mention) {
                        options.editorOptions.mention = {feeds: []};
                    }

                    options.editorOptions.mention.feeds.push(feed);
                }// appendFeedToMentions

                const scope = 'spCommentImageSupport.markdown.configEditor';
                debug.log(scope, 'START', arguments);

                // add the image upload toolbar after a separator
                options.editorOptions.toolbar.push( "|", "imageUpload" );

                options.editorOptions.extraPlugins.push(APEXUploadAdapterPlugin);

                // apexUpload configurations
                // will be read in "editor.config.get('apexUpload')" above
                options.editorOptions.apexUpload = customOptions.apexUpload || {}; 

                // this is the default list
                options.editorOptions.image = {
                    upload: {
                        types: ['jpeg', 'jpg', 'gif', 'png', 'webp']
                    },
                    toolbar: [
                        'imageTextAlternative'
                    ]
                };


                if (customOptions.mentions) {
                    debug.log(scope, 'setting up mentions', customOptions.mentions);

                    var getFeedMentionItems = function (queryText) {
                        // If in a code block (3 ticks) don't even search for mentions
                        if (this.model.document.selection.getFirstPosition().parent.name === 'codeBlock'){
                            // Returning a null array so nothing will be processed as we're in a codeBlock
                            return [];
                        }

                        return new Promise(resolve => {
                            apex.server.process('get_mentions', {
                                x01: queryText,
                                x02: customOptions.mentions.scope,
                                x03: customOptions.mentions.objectId,
                            }).then(res => {
                                resolve(res.mentions);
                            }).catch(e => {
                                debug.warn('Could not fetch mentions', queryText, e);
                            });
                        });
                    };

                    /**
                     * Customizes the way the list of user suggestions is displayed.
                     * Each user has an @id, a name and an avatar.
                     */
                    var mentionItemRenderer = function (item) {
                        if (item) {
                            const itemElement = document.createElement('span');
                            itemElement.classList.add( 'mention__item' );

                            itemElement.innerHTML = `
    <span style="background-image: url(${item.avatarUrl});" class="mention__item__avatar"></span>
    <span class="mention__item__details">
        <span class="mention__item__user-name">${item.id}</span>
        <span class="mention__item__full-name"> - ${item.name} </span>
        ${item.email ? `<span class="mention__item__email"><span class="oj-ux-ico-email" aria-hidden="true"></span><span class="mention__item__user-name"> (${item.email})</span></span>` : ''}
    </span>
                            `.trim();

                            return itemElement;
                        }
                    }; // mentionItemRenderer

                    appendFeedToMentions(
                        {
                            marker: '@',
                            feed: getFeedMentionItems,
                            itemRenderer: mentionItemRenderer,
                            minimumCharacters: 0
                        }
                    );
                } // customOptions.mentions

                if (customOptions.docs) {
                    debug.log(scope, 'setting up docs', customOptions.docs);

                    options.editorOptions.extraPlugins.push(DocumentMentionLinkPlugin);

                    var getFeedDocsItems = async function (queryText) {
                        const position = this?.model?.document?.selection?.getFirstPosition?.();

                        // If in a code block, return an empty array consistently
                        if (position?.parent?.name === 'codeBlock') {
                            return [];
                        }

                        try {
                            const res = await apex.server.process('get_doc_links', {
                                x01: queryText,
                                x02: customOptions.docs.scope,
                                x03: customOptions.docs.objectId,
                            });

                            const docs = Array.isArray(res?.docs) ? res.docs : [];

                            return docs
                                .filter(Boolean)
                                .map(item => ({
                                    ...item,
                                    text: item.filename ?? '',
                                    link: item.url ?? '',
                                    docLink: true
                                }));
                            } catch (e) {
                                debug.warn('Could not fetch docs', queryText, e);
                                return [];
                            }
                        };

                    var docItemRenderer = function (item) {
                        const itemElement = document.createElement('span');
                        itemElement.classList.add('js-open-doc-modal');

                        itemElement.innerHTML = `
                            <span class="mention__item__details">
                                <span class="mention__item__user-name">${item?.filename ?? ''}</span>
                                <span class="mention__item__full-name">
                                    ${item?.addedby ? ` - ${item.addedby}` : ''}
                                    ${item?.addedon ? ` (${item.addedon})` : ''}
                                </span>
                            </span>
                        `.trim();

                        return itemElement;
                    };

                    appendFeedToMentions({
                        marker: '~',
                        feed: getFeedDocsItems,
                        itemRenderer: docItemRenderer,
                        minimumCharacters: 0
                    });
                }

                return options;
            }
        }
    };
})();