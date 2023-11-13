( function () {
    "use strict";

    const stuck = "is-stuck",
          headerContainer = document.querySelector( ".m-HeaderContainer" ),
          apexVersionElement = document.getElementById( "apex_version" ),
          apexVersionText = document.querySelector( ".m-VersionSwitcher-version" );

    let isAnchorShown = false;

    function getURLParamValue( pParamName ) {
        const queryString = window.location.search,
              urlParams = new URLSearchParams( queryString );
        return urlParams.get( pParamName );
    }

    function loadAPEXVersions() {
        const apiURL = "https://api.github.com/repos/oracle/apex/branches",
              versionURL = getURLParamValue( "version" ),
              excludeBranches = ["main"];

        const applyVersions = function ( pData ) {
            const data = pData || [],
                  filteredData = data.filter( ( row ) =>  !excludeBranches.includes( row.name ) );
            let option;

            // reverse loop, thus branches api is sorted by name, and we want the most current version to be first & default
            for ( let i = filteredData.length - 1; i >= 0; i-- ) {
                if ( i === 0 ) {
                    option = new Option( "APEX " + filteredData[i].name, filteredData[i].name, true, false );
                } else {
                    option = new Option( "APEX " + filteredData[i].name, filteredData[i].name, false, false );
                }
                apexVersionElement.add( option );
            }

            if ( versionURL && apexVersionElement.querySelector( '[value="' + versionURL + '"]' ) ) {
                apexVersionElement.value = versionURL;
            }
            apexVersionElement.dispatchEvent( new Event( "change" ) );
        };
        fetch( apiURL )
            .then( ( response ) => response.json() )
            .then( ( data ) => applyVersions( data ) );
    }

    function loadContent() {
        const apexVersion = apexVersionElement.value,
              manifestURL = "https://raw.githubusercontent.com/oracle/apex/" + apexVersion + "/docs/json/manifest.json";

        const applyTemplate = function ( pData ) {
            const data = pData || {};

            const prepareListData = function ( pList ) {
                let list = pList || [],
                    lang = "en";

                for ( let i = 0; i < list.length; i++ ) {
                    let entry = list[i],
                        newEntry = {};

                    newEntry.name = entry.name ? entry.name : entry.i18n[lang] ? entry.i18n[lang].name : "";
                    newEntry.description = entry.description ? entry.description : entry.i18n[lang] ? entry.i18n[lang].description : "";
                    newEntry.icon = entry.icon;
                    newEntry.url = entry.url;
                    newEntry.zip = entry.zip;
                    newEntry.source = entry.source;

                    list[i] = newEntry;
                }

                return list;
            };

            const getTemplate = function ( pList, pButtonLabel ) {
                const list = pList || [],
                      buttonLabel = pButtonLabel || "Download App";

                return list
                    .map(
                        ( entry ) => `<div class="u-Grid-row">
                                    <div class="m-App">
                                        <div class="m-App-icon" style="background-image: url(${entry.icon});"></div>
                                        <div class="m-App-details">
                                            <h3 class="m-App-title"><a class="m-App-link" target="_blank" rel="noopener" href="${entry.url}">${entry.name}</a></h3>
                                            <p class="m-App-category">${entry.description}</p>
                                        </div>
                                        <div class="m-App-actions">
                                            <a class="m-App-cta" href="${entry.zip || entry.source}" target="_blank" rel="noopener" download >${buttonLabel}</a>
                                        </div>
                                    </div>
                                </div>`
                    )
                    .join( "" );
            };

            document.getElementById( "samples" ).innerHTML = getTemplate( prepareListData( data.sampleApps ) );
            document.getElementById( "apps" ).innerHTML = getTemplate( prepareListData( data.starterApps ) );
            document.getElementById( "plug-ins" ).innerHTML = getTemplate( prepareListData( data.plugins ), "Download Plug-In" );

            document.dispatchEvent( new Event( "remoteContentLoaded" ) );
        };

        fetch( manifestURL )
            .then( ( response ) => response.json() )
            .then( ( data ) => applyTemplate( data ) );
    }

    function toggleStuck() {
        if ( window.pageYOffset > 0 ) {
            if ( !headerContainer.classList.contains( stuck ) ) {
                headerContainer.classList.add( stuck );
            }
        } else {
            if ( headerContainer.classList.contains( stuck ) ) {
                headerContainer.classList.remove( stuck );
            }
        }
    }

    function updateVersionText() {
        apexVersionText.textContent = apexVersionElement.value;
    }

    function scrollToAnchor() {
        let anchorElement;
        if ( location.hash ) {
            anchorElement = document.querySelector( location.hash );
            anchorElement.scrollIntoView();
        }
    }

    apexVersionElement.addEventListener( "change", function () {
        updateVersionText();
        loadContent();
    } );

    window.addEventListener( "scroll", function () {
        toggleStuck();
    } );

    document.addEventListener( "DOMContentLoaded", function () {
        toggleStuck();
    } );

    document.addEventListener( "remoteContentLoaded", function () {
        if ( !isAnchorShown ) {
            scrollToAnchor();
            isAnchorShown = true;
        }
    } );

    // load versions, which initiates loading content
    loadAPEXVersions();
} )();
