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

    window.spCommentImageSupport = {
        markdown: {
            configEditor: function (options, customOptions) {
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

                return options;
            }
        }
    };
})();