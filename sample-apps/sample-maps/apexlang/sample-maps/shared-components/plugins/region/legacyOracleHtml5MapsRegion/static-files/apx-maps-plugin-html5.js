/*
 * JavaScript code for APEX 5.x Oracle MAPS plugin
 *
 * Public JavaScript functions
 * ------------------------------------------------
 * function getOramaps(pRegionId) 
 * function getOramaps_mapview(pRegionId) 
 * function getOramaps_mapfootprint(pRegionId, pType) 
 * function getOramaps_redlinegeom(pRegionId, pType) 
 * function getOramaps_clearRedLine(pRegionId) 
 * function getOramaps_setCenter(pRegionId, pX, pY, pSrid) 
 * function getOramaps_setZoomLevel(pRegionId, pZoom) 
 * function getOramaps_setCustomMarker(pRegionId, pX, pY, pSrid, pStyle, pText ) 
 * function getOramaps_removeCustomMarker(pRegionId) 
 *
 * VERSION 5.0.1
 *
 */

var gPluginObjects = [];
var getOramaps_gDecimalChar;

var ORAMAPS_CONST_ICONPATH        = '/jslib/v19.1/images/tbicons/';
var ORAMAPS_CONST_TOOLSTYLE       = 'font-family: Tahoma, Sans-Serif; font-weight: bold; font-size: 12pt; line-height: 16pt; color: black; border-radius: 3px; padding: 2px;';
var ORAMAPS_CONST_TILEBUTTONSTYLE = {
    "cssstyle": 'background-color: #eeeeff; opacity: 0.85; text-align: center; border: 1px solid black; border-radius: 2px; font-size: 8pt; padding-left: 2px; padding-right: 2px; font-weight: bold; font-family: Tahoma, Sans-Serif; white-space: nowrap; width: 120px; overflow: hidden;'
};
var ORAMAPS_CONST_HEATSTYLE       = {
    colorStops       : [ "#0000ff", "#002bff", "#0056ff", "#007fff", "#00abff", "#00d5ff", "#00ffff", "#00ff7f", "#00ff00", "#7fff00", "#ffff00", "#ffd500", "#ffab00", "#ff7f00", "#ff5600", "#ff2b00", "#ff0000" ]
    , spotlightRadius: 75
    , lengthUnit     : "pixel"
    , opacity        : 0.5
};

var ORAMAPS_CONST_BTSIZE = 24;

function createPluginMap( pRegionId,
                          pPluginName,
                          pFilePrefix,
                          pMapServerHost,
                          pMapTileLayers,
                          pMapCenterLon,
                          pMapCenterLat,
                          pInitZoom,
                          pNavPanel,
                          pNavPanelOpts,
                          pMapWidth,
                          pMapHeight,
                          pAdditional,
                          pSqlFoiInfoW,
                          pSqlFoiInfoH,
                          pApexURL,
                          pEscapeHTML,
                          pPageItemsSubmit,
                          pShowSqlFoi,
                          pUseCookie,
                          pCopyright,
                          pSqlFoiLazy,
                          pSizeType,
                          pUnitSystem,
                          pLanguage,
                          pUseEloc,
                          pDecimalChar ) {
    if ( apex.jQuery.mobile ) {
        apex.jQuery( '#P' + $v( "pFlowStepId" ) ).live( 'pageshow', function ( event ) {
            apex.jQuery.getScript( pMapServerHost + '/jslib/v19.1/oraclemapsv2.js', function () {
                gPluginObjects[ pRegionId ] = new ApexOracleMapsPlugin(
                    pRegionId,
                    pPluginName,
                    pFilePrefix,
                    pMapServerHost,
                    pMapTileLayers,
                    pMapCenterLon,
                    pMapCenterLat,
                    pInitZoom,
                    pNavPanel,
                    pNavPanelOpts,
                    pMapWidth,
                    pMapHeight,
                    pAdditional,
                    pSqlFoiInfoW,
                    pSqlFoiInfoH,
                    pApexURL,
                    pEscapeHTML,
                    pPageItemsSubmit,
                    pShowSqlFoi,
                    pUseCookie,
                    pCopyright,
                    pSqlFoiLazy,
                    pSizeType,
                    pUnitSystem,
                    pLanguage,
                    pUseEloc,
                    pDecimalChar
                );
                getMapPlugin( pRegionId ).mapview.init();
            } );
        } );
    } else {
        gPluginObjects[ pRegionId ] = new ApexOracleMapsPlugin(
            pRegionId,
            pPluginName,
            pFilePrefix,
            pMapServerHost,
            pMapTileLayers,
            pMapCenterLon,
            pMapCenterLat,
            pInitZoom,
            pNavPanel,
            pNavPanelOpts,
            pMapWidth,
            pMapHeight,
            pAdditional,
            pSqlFoiInfoW,
            pSqlFoiInfoH,
            pApexURL,
            pEscapeHTML,
            pPageItemsSubmit,
            pShowSqlFoi,
            pUseCookie,
            pCopyright,
            pSqlFoiLazy,
            pSizeType,
            pUnitSystem,
            pLanguage,
            pUseEloc,
            pDecimalChar
        );
        getMapPlugin( pRegionId ).mapview.init();
    }
}

function ApexOracleMapsPlugin( pRegionId,
                               pPluginName,
                               pFilePrefix,
                               pMapServerHost,
                               pMapTileLayers,
                               pMapCenterLon,
                               pMapCenterLat,
                               pInitZoom,
                               pNavPanel,
                               pNavPanelOpts,
                               pMapWidth,
                               pMapHeight,
                               pAdditional,
                               pSqlFoiInfoW,
                               pSqlFoiInfoH,
                               pApexURL,
                               pEscapeHTML,
                               pPageItemsSubmit,
                               pShowSqlFoi,
                               pUseCookie,
                               pCopyright,
                               pSqlFoiLazy,
                               pSizeType,
                               pUnitSystem,
                               pLanguage,
                               pUseEloc,
                               pDecimalChar ) {
    getOramaps_gDecimalChar = pDecimalChar;

    this.mapview  = false;

    this.customMarker = new OM.layer.VectorLayer( 'CUSTFOI', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } );

    this.foiLayers = [
        new OM.layer.VectorLayer( 'SQLFOI0', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI1', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI2', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI3', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI4', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI5', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI6', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI7', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI8', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } ),
        new OM.layer.VectorLayer( 'SQLFOI9', { def: { type: OM.layer.VectorLayer.TYPE_LOCAL } } )
    ];

    this.gMapToolBar;
    this.gMapHasTools = false;
    this.gPluginName  = pPluginName;
    this.gRegionFOI   = false;

    this.gSqlFoiInfoW     = pSqlFoiInfoW;
    this.gSqlFoiInfoH     = pSqlFoiInfoH;
    this.gSqlFoiLazy      = pSqlFoiLazy;
    this.gEscapeHTML      = pEscapeHTML;
    this.gPageItemsSubmit = pPageItemsSubmit;
    this.gShowSqlFoi      = pShowSqlFoi;
    this.gUseCookie       = pUseCookie;
    this.gSizeType        = pSizeType;
    this.gMapWidth        = pMapWidth;
    this.gMapHeight       = pMapHeight;
    this.gUnitSystem      = pUnitSystem;
    this.gLanguage        = pLanguage;
    if ( !this.gLanguage || this.gLanguage == "" ) {
        this.gLanguage = "en";
    }

    if ( pAdditional.search( /FOICLUSTERS/ ) != -1 ) {
        this.foiClusters = true;
    } else {
        this.foiClusters = false;
    }

    this.heatmap = false;

    this.redline;
    this.distancetool;
    this.scalebar;
    this.marqueezoomtool;
    this.redlinetool;
    this.circletool;

    this.firstMapLayerInternal = true;

    this.gRegionId   = pRegionId;
    this.gFilePrefix = pFilePrefix;

    this.maplayer    = [];
    this.layerSwitch = [];

    var lInitZoom      = pInitZoom;
    var lMapCenterLon  = parseFloat( pMapCenterLon );
    var lMapCenterLat  = parseFloat( pMapCenterLat );
    var lMapCenterSRID = 4326;
    this.googleInit    = false;

    OM.gv._baseURL = pMapServerHost;
    OM.gv.setResourcePath( pMapServerHost + "/jslib/v19.1" );
    OM.gv._resPath    = pMapServerHost + "/jslib/v19.1/images/";
    OM.gv._cssResPath = pMapServerHost + "/jslib/v19.1/css/";
    OM.gv.messagePath = pMapServerHost + "/jslib/v19.1/messages/";
    OM.gv.loadingIcon = "transparent.gif";
    OM.Map.setLocale( this.gLanguage.substring( 0, 2 ) );

    // create local styles
    this.gStyles = [];

    this.gStyles[ "blue" ]   = new OM.style.Color( {
        "name"       : "blue",
        "stroke"     : "#0000ff",
        "fill"       : "#8080ff",
        "fillOpacity": 0.7
    } );
    this.gStyles[ "red" ]    = new OM.style.Color( {
        "name"       : "red",
        "stroke"     : "#ff0000",
        "fill"       : "#ff8080",
        "fillOpacity": 0.7
    } );
    this.gStyles[ "green" ]  = new OM.style.Color( {
        "name"       : "green",
        "stroke"     : "#00c000",
        "fill"       : "#60c060",
        "fillOpacity": 0.7
    } );
    this.gStyles[ "gray" ]   = new OM.style.Color( {
        "name"       : "gray",
        "stroke"     : "#cccccc",
        "fill"       : "#808080",
        "fillOpacity": 0.7
    } );
    this.gStyles[ "yellow" ] = new OM.style.Color( {
        "name"       : "yellow",
        "stroke"     : "#ffff00",
        "fill"       : "#eeee80",
        "fillOpacity": 0.7
    } );
    this.gStyles[ "purple" ] = new OM.style.Color( {
        "name"       : "purple",
        "stroke"     : "#ff00ff",
        "fill"       : "#ff80ff",
        "fillOpacity": 0.7
    } );
    this.gStyles[ "orange" ] = new OM.style.Color( {
        "name"       : "orange",
        "stroke"     : "#ff8000",
        "fill"       : "#ffc080",
        "fillOpacity": 0.7
    } );

    // initialize the map handle
    this.mapview = new OM.Map(
        apex.jQuery( "#" + this.gRegionId + "_map" ),
        { mapviewerURL: pMapServerHost, disableOverviewMap: (pAdditional.search( /OVER/ ) == -1) }
    );

    // Switch Mouse Wheel zoom off
    if ( pAdditional.search( /MOUSEWHEEL/ ) != -1 ) {
        this.mapview.enableMouseWheelZooming( true );
    } else {
        this.mapview.enableMouseWheelZooming( false );
    }

    // Add external Mal Tile Layers, if requested
    var lTileLayers = 0;
    if ( pUseEloc != "NONE" ) {
        if ( pUseEloc == "ELOCATION" ) {
            this.maplayer[ lTileLayers ] = new OM.layer.ElocationTileLayer( "TileLayer_" + lTileLayers );
        }
        if ( pUseEloc == "BING" ) {
            this.maplayer[ lTileLayers ] = new OM.layer.BingTileLayer( "TileLayer_" + lTileLayers, { mapType: OM.layer.BingTileLayer.TYPE_ROAD } );
        }
        if ( pUseEloc == "BING_AERIAL" ) {
            this.maplayer[ lTileLayers ] = new OM.layer.BingTileLayer( "TileLayer_" + lTileLayers, { mapType: OM.layer.BingTileLayer.TYPE_AERIAL } );
        }
        if ( pUseEloc == "BING_AUTO" ) {
            this.maplayer[ lTileLayers ] = new OM.layer.BingTileLayer( "TileLayer_" + lTileLayers, { mapType: OM.layer.BingTileLayer.TYPE_AUTO } );
        }
        if ( pUseEloc.substr( 0, 3 ) === "OSM" ) {
            this.maplayer[ lTileLayers ] = new OM.layer.TileLayer(
                "TileLayer_" + lTileLayers,
                {
                    dataSource   : "elocation_mercator",
                    tileLayer    : ( pUseEloc === "OSM" ? "OSM_POSITRON" : ( pUseEloc === "OSM_DARK" ? "OSM_DARKMATTER" : pUseEloc ) ),
                    tileServerURL: pMapServerHost + "/mcserver"
                }
            );
        }

        this.maplayer[ lTileLayers ].setVisible( true );
        this.mapview.addLayer( this.maplayer[ lTileLayers ] );
        lTileLayers++;
    } else {
        if ( pMapTileLayers != "" ) {
            var lMapArray = pMapTileLayers.split( ":" );

            for ( var i = 0; i < lMapArray.length; i++ ) {
                var lMapDetails              = lMapArray[ i ].split( "," );
                var lMapLayerSpec            = lMapDetails[ 0 ].split( "." );
                this.maplayer[ lTileLayers ] = new OM.layer.TileLayer(
                    "TileLayer_" + lTileLayers,
                    {
                        dataSource   : lMapLayerSpec[ 0 ],
                        tileLayer    : lMapLayerSpec[ 1 ],
                        tileServerURL: pMapServerHost + "/mcserver"
                    }
                );
                this.maplayer[ lTileLayers ].setVisible( true );
                this.mapview.addLayer( this.maplayer[ lTileLayers ] );

                this.layerSwitch[ lTileLayers ] = new OM.control.MapDecoration(
                    '<div style="' + ORAMAPS_CONST_TILEBUTTONSTYLE.cssstyle +
                    '" onClick="getMapPlugin(\'' + pRegionId + '\').toggleMapLayer(' + lTileLayers +
                    ');">' + lMapDetails[ 1 ] + '</div>'
                );
                this.layerSwitch[ lTileLayers ].setPosition( this.mapview.getMapContext().getDeviceWidth() - 50 - (150 * (lTileLayers + 1)), 20 );
                lTileLayers++;
            }

            // add buttons to switch the map tile layers
            if ( lTileLayers > 1 ) {
                for ( var t = 0; t < lTileLayers; t++ ) {
                    this.mapview.addMapDecoration( this.layerSwitch[ t ] );
                }
            }
        }
    }

    // get Map Position and Zoom level cookie, if exists and parse contents

    if ( this.gUseCookie == "Y" ) {
        try {
            var lCookie = apex.storage.getCookie( 'OracleMapsPlugin_' + this.gRegionId + "_" + $v( "pInstance" ) );
            if ( lCookie ) {
                var cookieValues = lCookie.split( "#" );
                lInitZoom        = parseInt( cookieValues[ 0 ] );
                lMapCenterLon    = parseFloat( cookieValues[ 1 ] ) / 1000000000;
                lMapCenterLat    = parseFloat( cookieValues[ 2 ] ) / 1000000000;
                lMapCenterSRID   = parseInt( cookieValues[ 3 ] );
            }
        } catch ( e ) {
            if ( $v( "pdebug" ) == "YES" ) {
                console.log( e );
            }
        }
        if ( isNaN( lMapCenterLon ) || isNaN( lMapCenterLat ) ) {
            lMapCenterLon  = parseFloat( pMapCenterLon );
            lMapCenterLat  = parseFloat( pMapCenterLat );
            lMapCenterSRID = 4326;
        }
    }

    if ( pNavPanel != "NONE" ) {
        var pos;
        if ( pNavPanel == "WEST" ) {
            pos = 1;
        }
        else if ( pNavPanel == "EAST" ) {
            pos = 3;
        }
        else {
            pos = 3;
        }

        var lNavPanel = new OM.control.NavigationPanelBar(
            { "orientation": 1, "style": pNavPanelOpts, "anchorPosition": pos }
        );
        this.mapview.addMapDecoration( lNavPanel );
    }

    // create the map tools
    this.distancetool = new OM.tool.DistanceTool( this.mapview );
    if ( this.gUnitSystem == "IMPERIAL" ) {
        this.distancetool.unit = "mile";
    } else {
        this.distancetool.unit = "kilometer";
    }
    this.distancetool.addListener(
        OM.event.ToolEvent.TOOL_END,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_distancefinish"
            );
        }
    );
    this.distancetool.addListener(
        OM.event.ToolEvent.TOOL_START,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_distancestart"
            );
        }
    );
    this.distancetool.addListener(
        OM.event.ToolEvent.TOOL_CLEAR,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_distanceclear"
            );
        }
    );

    this.marqueezoomtool = new OM.tool.MarqueeZoomTool( this.mapview, OM.tool.MarqueeZoomTool.ONE_TIME );

    this.circletool = new OM.tool.CircleTool( this.mapview );
    this.circletool.addListener(
        OM.event.ToolEvent.TOOL_END,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_circlefinish"
            );
        }
    );
    this.circletool.addListener(
        OM.event.ToolEvent.TOOL_CLEAR,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_circleclear"
            );
        }
    );

    this.redlinetool = new OM.tool.RedlineTool( this.mapview, OM.tool.RedlineTool.TYPE_POLYGON );
    this.redlinetool.addListener(
        OM.event.ToolEvent.TOOL_END,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_redlinefinish"
            );
        }
    );
    this.redlinetool.addListener(
        OM.event.ToolEvent.TOOL_CLEAR,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_redlineclear"
            );
        }
    );

    this.redlinetool.addListener(
        OM.event.ToolEvent.REDLINE_POINT_CREATE,
        function ( e ) {
            apex.event.trigger(
                apex.jQuery( "#" + pRegionId ),
                "com_oracle_oramapshtml5_redlinepoint"
            );
        }
    );

    // build the map toolbar
    this.gMapToolBar = new OM.control.ToolBar(
        "apx-maps-toolbar_" + this.gRegionId,
        {
            builtInButtons: [],
            orientation   : OM.control.ToolBar.HORIZONTAL
        }
    );

    if ( pAdditional.search( /REDLINE/ ) != -1 || pAdditional.search( /DISTANCE/ ) != -1 || pAdditional.search( /CIRCLE/ ) != -1 ) {
        var lBtClear = new OM.control.ToolButton(
            this.gRegionId + "_clear",
            OM.control.ToolButton.COMMAND,
            {
                buttonIcon: pMapServerHost + ORAMAPS_CONST_ICONPATH + "clear.gif",
                width     : ORAMAPS_CONST_BTSIZE,
                height    : ORAMAPS_CONST_BTSIZE
            }
        );
        lBtClear.addListener(
            OM.event.ToolbarEvent.BUTTON_DOWN,
            function ( e ) {
                getMapPlugin( pRegionId ).clearAllTools();
            }
        );
        this.gMapToolBar.addButton( lBtClear );
        this.gMapHasTools = true;
    }
    if ( pAdditional.search( /DISTANCE/ ) != -1 ) {
        var lBtDistance = new OM.control.ToolButton(
            this.gRegionId + "_distancetool",
            OM.control.ToolButton.COMMAND,
            {
                buttonIcon: pMapServerHost + ORAMAPS_CONST_ICONPATH + "distance.gif",
                width     : ORAMAPS_CONST_BTSIZE,
                height    : ORAMAPS_CONST_BTSIZE
            }
        );
        lBtDistance.addListener(
            OM.event.ToolbarEvent.BUTTON_DOWN,
            function ( e ) {
                getMapPlugin( pRegionId ).clearAllTools();
                getMapPlugin( pRegionId ).distancetool.start();
            }
        );
        this.gMapToolBar.addButton( lBtDistance );
        this.gMapHasTools = true;
    }

    if ( pAdditional.search( /MARQUEE/ ) != -1 ) {
        var lBtZoom = new OM.control.ToolButton(
            this.gRegionId + "_marqueezoomtool",
            OM.control.ToolButton.COMMAND,
            {
                buttonIcon: pMapServerHost + ORAMAPS_CONST_ICONPATH + "zoom.gif",
                width     : ORAMAPS_CONST_BTSIZE,
                height    : ORAMAPS_CONST_BTSIZE
            }
        );
        lBtZoom.addListener(
            OM.event.ToolbarEvent.BUTTON_DOWN,
            function ( e ) {
                getOramaps_startRectZoom( pRegionId );
            }
        );
        this.gMapToolBar.addButton( lBtZoom );
        this.gMapHasTools = true;
    }

    if ( pAdditional.search( /CIRCLE/ ) != -1 ) {
        var lBtCircle = new OM.control.ToolButton(
            this.gRegionId + "_circletool",
            OM.control.ToolButton.COMMAND,
            {
                buttonIcon: pMapServerHost + ORAMAPS_CONST_ICONPATH + "circle.gif",
                width     : ORAMAPS_CONST_BTSIZE,
                height    : ORAMAPS_CONST_BTSIZE
            }
        );
        lBtCircle.addListener(
            OM.event.ToolbarEvent.BUTTON_DOWN,
            function ( e ) {
                getOramaps_startCircle( pRegionId );
            }
        );
        this.gMapToolBar.addButton( lBtCircle );
        this.gMapHasTools = true;
    }


    if ( pAdditional.search( /REDLINE/ ) != -1 ) {
        var lBtRedline = new OM.control.ToolButton(
            this.gRegionId + "_redlinetool",
            OM.control.ToolButton.COMMAND,
            {
                buttonIcon: pMapServerHost + ORAMAPS_CONST_ICONPATH + "redline.gif",
                width     : ORAMAPS_CONST_BTSIZE,
                height    : ORAMAPS_CONST_BTSIZE
            }
        );
        lBtRedline.addListener(
            OM.event.ToolbarEvent.BUTTON_DOWN,
            function ( e ) {
                getOramaps_startRedLine( pRegionId );
            }
        );
        this.gMapToolBar.addButton( lBtRedline );
        this.gMapHasTools = true;
    }

    if ( pAdditional.search( /SCALE/ ) != -1 ) {
        this.scalebar = new OM.control.ScaleBar(
            { format: this.gUnitSystem, anchorPosition: 4 }
        );
        this.mapview.addMapDecoration( this.scalebar );
    }

    this.gMapToolBar.setPosition( 0.15, 0.10 );
    if ( this.gMapHasTools ) {
        this.gMapToolBar.setVisible( true );
    } else {
        this.gMapToolBar.setVisible( false );
    }
    this.mapview.addToolBar( this.gMapToolBar );

    this.mapview.addMapDecoration( new OM.control.CopyRight( { "textValue": pCopyright, "anchorPosition": 6 } ) );

    // set map center and zoom level
    var lMapCenter = new OM.geometry.Point( lMapCenterLon, lMapCenterLat, getOramaps_adjustSRID( lMapCenterSRID ) );

    if ( !lInitZoom || lInitZoom == "" ) {
        lInitZoom = 0;
    }
    this.mapview.setMapCenterAndZoomLevel( lMapCenter, parseInt( lInitZoom ), false );

    // bind APEX Refresh event: Refresh the map
    apex.jQuery( "#" + this.gRegionId ).bind(
        "apexrefresh",
        function () {getMapPlugin( pRegionId ).refreshSQLFoi();}
    );

    // attach event listeners
    this.mapview.addListener(
        OM.event.MouseEvent.MOUSE_CLICK,
        function ( e ) { apex.event.trigger( apex.jQuery( "#" + pRegionId ), "com_oracle_oramapshtml5_mouseleftclick" ); }
    );
    this.mapview.addListener(
        OM.event.MouseEvent.MOUSE_DOUBLE_CLICK,
        function ( e ) { apex.event.trigger( apex.jQuery( "#" + pRegionId ), "com_oracle_oramapshtml5_mousedblclick" ); }
    );
    this.mapview.addListener(
        OM.event.MouseEvent.MOUSE_RIGHT_CLICK,
        function ( e ) { apex.event.trigger( apex.jQuery( "#" + pRegionId ), "com_oracle_oramapshtml5_mouserightclick" ); }
    );

    this.mapview.addListener(
        OM.event.MapEvent.MAP_RECENTERED,
        function ( e ) {getMapPlugin( pRegionId ).fireApexEventRECENTER();}
    );

    this.mapview.addListener(
        OM.event.MapEvent.MAP_AFTER_ZOOM,
        function ( e ) {getMapPlugin( pRegionId ).fireApexEventZOOMCHANGE();}
    );

    this.mapview.addListener(
        OM.event.MapEvent.MAP_INITIALIZED,
        function ( e ) {window.setTimeout( function () {getMapPlugin( pRegionId ).fireApexEventINITIALIZE();}, 200 )}
    );

    for ( var fl = 0; fl < this.foiLayers.length; fl++ ) {
        this.mapview.addLayer( this.foiLayers[ fl ] );
        this.foiLayers[ fl ].setVisible( true );
        this.foiLayers[ fl ].enableInfoWindow( false );
    }

    this.mapview.addLayer( this.customMarker );
    this.customMarker.setVisible( true );
}

// toggle map tile layer, if multiple exist and button has been clicked
ApexOracleMapsPlugin.prototype.toggleMapLayer = function ( pLayer ) {
    for ( var i = 0; i < this.maplayer.length; i++ ) {
        this.maplayer[ i ].setVisible( false );
    }
    this.maplayer[ pLayer ].setVisible( true );
}

// SQL FOI Layer functions: Refresh, remove, get
ApexOracleMapsPlugin.prototype.refreshSQLFoi = function () {
    if ( this.gShowSqlFoi ) {
        this.removeSQLFoi();
        this.getSQLFoi();
    }
}

ApexOracleMapsPlugin.prototype.removeSQLFoi = function () {
    for ( var fl = 0; fl < this.foiLayers.length; fl++ ) {
        if ( this.foiLayers[ fl ] ) {
            try {
                this.foiLayers[ fl ].removeAllFeatures();
            } catch ( e ) {
                if ( $v( "pdebug" ) == "YES" ) {
                    console.log( e );
                }
            }
        }
    }
}

ApexOracleMapsPlugin.prototype.getSQLFoi = function () {
    this.removeSQLFoi();
    for ( var fl = 0; fl < this.foiLayers.length; fl++ ) {
        this.foiLayers[ fl ].enableClustering( false );
    }
    var lPlg = this;

    apex.server.plugin(
        this.gPluginName,
        {
            x01      : this.mapview.getUniverse().getSRID(),
            x02      : Math.round( this.mapview.getMapWindowBoundingBox().getMinX() * 1000000000 ),
            x03      : Math.round( this.mapview.getMapWindowBoundingBox().getMinY() * 1000000000 ),
            x04      : Math.round( this.mapview.getMapWindowBoundingBox().getMaxX() * 1000000000 ),
            x05      : Math.round( this.mapview.getMapWindowBoundingBox().getMaxY() * 1000000000 ),
            x06      : this.gSqlFoiLazy,
            x07      : this.mapview.getMapZoomLevel(),
            x10      : 'FOIDATA',
            p_debug  : $v( 'pdebug' ),
            pageItems: ( this.gPageItemsSubmit && this.gPageItemsSubmit !== "" ? this.gPageItemsSubmit.split( "," ) : false )        },
        {
            error  : function ( e ) {
                if ( $v( "pdebug" ) == "YES" ) {
                    console.log( e );
                }
            },
            success: function ( pData ) {
                var foi;
                var l_html;
                var lMaxValue  = 0;
                var lBarHeight = 25;
                var lBarWidth  = 6;
                var lJsonGeom;
                var lFoiLayer;
                var lGeom;
                var lMarkerStyle;
                var lImageCode = lPlg.gFilePrefix + "transp.png";
                var lShowFOI   = false;

                for ( var i = 0; i < pData.row.length; i++ ) {
                    foi      = [];
                    lGeom    = [];
                    lShowFOI = true;

                    // check whether the FOI is being displayed in the current Zoom Level ...
                    if ( lPlg.gSqlFoiLazy == 'Y' ) {
                        if ( pData.row[ i ].MINZOOM ) {
                            if ( lPlg.mapview.getMapZoomLevel() < parseInt( pData.row[ i ].MINZOOM ) ) {
                                lShowFOI = false;
                            }
                        }
                        if ( pData.row[ i ].MAXZOOM ) {
                            if ( lPlg.mapview.getMapZoomLevel() > parseInt( pData.row[ i ].MAXZOOM ) ) {
                                lShowFOI = false;
                            }
                        }
                    }

                    if ( lShowFOI ) {
                        if ( pData.row[ i ].LAYER ) {
                            if ( pData.row[ i ].LAYER.toUpperCase() == "HEAT" ) {
                                lFoiLayer    = 0;
                                lPlg.heatmap = true;
                            } else {
                                lFoiLayer = parseInt( pData.row[ i ].LAYER );
                                if ( isNaN( lFoiLayer ) ) {
                                    lFoiLayer = 1;
                                }
                            }
                        } else {
                            lFoiLayer = 1;
                        }

                        // Build the geometries
                        lJsonGeom = pData.row[ i ].GEOMETRY;
                        if ( lJsonGeom != null ) {
                            if ( lJsonGeom.sdo_gtype == 2001 ) {
                                lGeom[ 0 ] = new OM.geometry.Point(
                                    parseFloat( lJsonGeom.sdo_point.x ),
                                    parseFloat( lJsonGeom.sdo_point.y ),
                                    parseInt( lJsonGeom.sdo_srid )
                                );
                            }
                            if ( lJsonGeom.sdo_gtype == 2002 ) {
                                lGeom[ 0 ] = new OM.geometry.LineString(
                                    lJsonGeom.sdo_ordinates,
                                    lJsonGeom.sdo_srid
                                );
                            }
                            if ( lJsonGeom.sdo_gtype == 2003 ) {
                                if ( lJsonGeom.sdo_elem_info.length == 3 ) {
                                    if ( lJsonGeom.sdo_elem_info[ 2 ] == 3 ) {
                                        lGeom[ 0 ] = new OM.geometry.Rectangle(
                                            lJsonGeom.sdo_ordinates[ 0 ],
                                            lJsonGeom.sdo_ordinates[ 1 ],
                                            lJsonGeom.sdo_ordinates[ 2 ],
                                            lJsonGeom.sdo_ordinates[ 3 ],
                                            lJsonGeom.sdo_srid
                                        );
                                    } else {
                                        lGeom[ 0 ] = new OM.geometry.Polygon(
                                            [ lJsonGeom.sdo_ordinates ],
                                            lJsonGeom.sdo_srid
                                        );
                                    }
                                } else {
                                    var lRings  = [];
                                    lRings[ 0 ] = lJsonGeom.sdo_ordinates.slice( 0, lJsonGeom.sdo_elem_info[ 3 ] );
                                    for ( var r = 3; r < lJsonGeom.sdo_elem_info.length; r = r + 3 ) {
                                        if ( (r + 3) <= lJsonGeom.sdo_elem_info.length ) {
                                            lRings[ lRings.length ] = lJsonGeom.sdo_ordinates.slice(
                                                lJsonGeom.sdo_elem_info[ r ] - 1,
                                                lJsonGeom.sdo_elem_info[ r + 3 ] - 1
                                            );
                                        } else {
                                            lRings[ lRings.length ] = lJsonGeom.sdo_ordinates.slice( lJsonGeom.sdo_elem_info[ r ] - 1 );
                                        }
                                    }
                                    lGeom[ 0 ] = new OM.geometry.Polygon(
                                        lRings,
                                        lJsonGeom.sdo_srid
                                    );
                                }
                            }
                            if ( lJsonGeom.sdo_gtype == 2007 ) {
                                var lRings = [];

                                for ( var r = 0; r < lJsonGeom.sdo_elem_info.length; r = r + 3 ) {
                                    if ( lJsonGeom.sdo_elem_info[ r + 1 ] == 1003 ) {
                                        // new Polygon starts
                                        if ( r > 0 ) {
                                            lGeom[ lGeom.length ] = new OM.geometry.Polygon( lRings, lJsonGeom.sdo_srid );
                                        }
                                        lRings = [];
                                    }
                                    if ( (r + 3) < lJsonGeom.sdo_elem_info.length ) {
                                        lRings[ lRings.length ] = lJsonGeom.sdo_ordinates.slice(
                                            lJsonGeom.sdo_elem_info[ r ] - 1,
                                            lJsonGeom.sdo_elem_info[ r + 3 ] - 1
                                        );
                                    } else {
                                        lRings[ lRings.length ] = lJsonGeom.sdo_ordinates.slice( lJsonGeom.sdo_elem_info[ r ] - 1 );
                                    }
                                }
                                lGeom[ lGeom.length ] = new OM.geometry.Polygon( lRings, lJsonGeom.sdo_srid );
                            }

                            // Start building the Features
                            if ( lJsonGeom.sdo_gtype == 2002 || lJsonGeom.sdo_gtype == 2003 ) {
                                foi[ 0 ] = new OM.Feature(
                                    "REGIONFOI_" + pData.row[ i ].ID,
                                    lGeom[ 0 ],
                                    { renderingStyle: lPlg.gStyles[ pData.row[ i ].STYLE ] }
                                );
                            }
                            if ( lJsonGeom.sdo_gtype == 2007 ) {
                                for ( var g = 0; g < lGeom.length; g++ ) {
                                    foi[ g ] = new OM.Feature(
                                        "REGIONFOI_" + pData.row[ i ].ID + "_" + g,
                                        lGeom[ g ],
                                        { renderingStyle: lPlg.gStyles[ pData.row[ i ].STYLE ] }
                                    );
                                }
                            }

                            if ( lJsonGeom.sdo_gtype == 2001 ) {
                                if ( pData.row[ i ].STYLE.toUpperCase() == "IMAGE" ) {
                                    foi[ 0 ] = new OM.Feature(
                                        "REGIONFOI_" + pData.row[ i ].ID,
                                        lGeom[ 0 ],
                                        {
                                            renderingStyle: new OM.style.Marker(
                                                {
                                                    src      : pData.row[ i ].IMAGEURL,
                                                    textStyle: {
                                                        fill: "black",
                                                        fontSize: 12,
                                                        fontWeight: OM.Text.FONTWEIGHT_BOLD
                                                    }
                                                }
                                            )
                                        }
                                    );
                                } else {

                                    if ( pData.row[ i ].MARKERSIZE && pData.row[ i ].MARKERSIZE !== "" ) {
                                        if ( pData.row[ i ].MARKERSIZE.substr( 0, 1 ).toUpperCase() === "C" ) {
                                            lMarkerStyle = new OM.style.Marker(
                                                                  {
                                                                      vectorDef : [{
                                                                                     shape : {
                                                                                               type       : "circle",
                                                                                               cx         : 0,
                                                                                               cy         : 0,
                                                                                               width      : parseInt( pData.row[ i ].MARKERSIZE.substr( 1 ) ),
                                                                                               height     : parseInt( pData.row[ i ].MARKERSIZE.substr( 1 ) ) },
                                                                                     style : lPlg.gStyles[pData.row[ i ].STYLE.toLowerCase()] }],
                                                                      textOffset: { x: -0, y: -18 },
                                                                      textStyle : {
                                                                          fill: "black",
                                                                          fontSize: 12,
                                                                          fontWeight: OM.Text.FONTWEIGHT_BOLD } });
                                        } else {
                                            lMarkerStyle = new OM.style.Marker(
                                                                  {
                                                                      vectorDef : [{
                                                                                     shape : {
                                                                                               type       : "rectangle",
                                                                                               x          : 0,
                                                                                               y          : 0,
                                                                                               width      : parseInt( pData.row[ i ].MARKERSIZE.substr( 1 ) ),
                                                                                               height     : parseInt( pData.row[ i ].MARKERSIZE.substr( 1 ) ) },
                                                                                     style : lPlg.gStyles[pData.row[ i ].STYLE.toLowerCase()] }],
                                                                      textOffset: { x: -0, y: -18 },
                                                                      textStyle : {
                                                                          fill: "black",
                                                                          fontSize: 12,
                                                                          fontWeight: OM.Text.FONTWEIGHT_BOLD } });
                                        }
                                    } else {
                                        lMarkerStyle = new OM.style.Marker(
                                                              {
                                                                  src       : lPlg.gFilePrefix + "m-" + pData.row[ i ].STYLE.toLowerCase() + ".png",
                                                                  xOffset   : 0,
                                                                  yOffset   : 0,
                                                                  textOffset: { x: -0, y: -18 },
                                                                  textStyle : {
                                                                      fill: "black",
                                                                      fontSize: 12,
                                                                      fontWeight: OM.Text.FONTWEIGHT_BOLD } });
                                    }

                                    foi[ 0 ] = new OM.Feature(
                                        "REGIONFOI_" + pData.row[ i ].ID,
                                        lGeom[ 0 ],
                                        {
                                            renderingStyle: lMarkerStyle
                                        }
                                    );
                                }
                            }
                            for ( var f = 0; f < foi.length; f++ ) {
                                if ( pData.row[ i ].MARKERTEXT ) {
                                    foi[ f ].setMarkerText( pData.row[ i ].MARKERTEXT );
                                }
                                if ( pData.row[ i ].INFOTIP ) {
                                    foi[ f ].label = getOramaps_escapeHTML( pData.row[ i ].INFOTIP, lPlg.gEscapeHTML );
                                }
                                if ( pData.row[ i ].INFOTEXT ) {
                                    foi[ f ].customContent = {
                                        htmlString: getOramaps_escapeHTML( pData.row[ i ].INFOTEXT, lPlg.gEscapeHTML ),
                                        mapRegion : lPlg.gRegionId
                                    };
                                    foi[ f ].addListener(
                                        OM.event.MouseEvent.MOUSE_CLICK,
                                        function ( e ) {
                                            getMapPlugin( e.target.customContent.mapRegion ).mapview.displayInfoWindow(
                                                getMapPlugin( e.target.customContent.mapRegion ).mapview.getCursorLocation(),
                                                e.target.customContent.htmlString,
                                                {
                                                    width : getMapPlugin( e.target.customContent.mapRegion ).gSqlFoiInfoW,
                                                    height: getMapPlugin( e.target.customContent.mapRegion ).gSqlFoiInfoH
                                                }
                                            );
                                            apex.event.trigger(
                                                apex.jQuery( "#" + lPlg.gRegionId ),
                                                "com_oracle_oramapshtml5_foiclick",
                                                e.target
                                            );
                                        }
                                    );
                                }
                                try {
                                    if ( lPlg.foiLayers[ lFoiLayer ].getFeature( "REGIONFOI_" + pData.row[ i ].ID ) == null ) {
                                        if ( lPlg.heatmap && lFoiLayer == 0 && foi[ f ].getGeometry().getType() != "Point" ) {
                                        } else {
                                            lPlg.foiLayers[ lFoiLayer ].addFeature( foi[ f ] );
                                        }
                                    } else {
                                        if ( $v( "pdebug" ) == "YES" ) {
                                            console.log( "Feature with ID " + "REGIONFOI_" + pData.row[ i ].ID + " could not be added - duplicate ID!" );
                                            console.log( foi[ f ] );
                                        }
                                    }
                                } catch ( e ) {
                                    if ( $v( "pdebug" ) == "YES" ) {
                                        console.log( e );
                                    }
                                }
                            }
                        }
                    }
                }

                if ( lPlg.heatmap ) {
                    lPlg.foiLayers[ 0 ].setRenderingStyle( new OM.style.HeatMap( ORAMAPS_CONST_HEATSTYLE ) );
                    lPlg.foiLayers[ 0 ].redraw();
                }

                if ( $v( "pdebug" ) == "YES" ) {
                    for ( var i = 0; i < lPlg.foiLayers.length; i++ ) {
                        console.log( "Layer " + i + ": " + lPlg.foiLayers[ i ].getAllFeatures().length );
                    }
                }

                // FOI Clustering Code
                if ( lPlg.foiClusters ) {
                    for ( var fl = 0; fl < lPlg.foiLayers.length; fl++ ) {
                        lPlg.foiLayers[ fl ].enableClustering(
                            true,
                            {
                                threshold         : 50,
                                clusterStyle      : new OM.style.Marker(
                                    {
                                        src       : lPlg.gFilePrefix + "m-cluster.png",
                                        xOffset   : 0,
                                        yOffset   : 0,
                                        textOffset: { x: -0, y: 18 },
                                        textStyle : { fill: "black", fontSize: 14, fontWeight: OM.Text.FONTWEIGHT_BOLD }
                                    }
                                ),
                                minPointCloud     : 5,
                                maxClusteringLevel: 14
                            }
                        );
                        lPlg.foiLayers[ fl ].redraw();
                    }
                }
            }
        }
    );
}

ApexOracleMapsPlugin.prototype.clearAllTools = function () {
    try {
        this.redlinetool.clear();
    } catch ( ex ) {
    }
    try {
        this.distancetool.clear();
    } catch ( ex ) {
    }
    try {
        this.circletool.clear();
    } catch ( ex ) {
    }
    try {
        this.marqueezoomtool.clear();
    } catch ( ex ) {
    }
}


// Circle functions: start, finish, clear
ApexOracleMapsPlugin.prototype.clearCircle = function () {
    try {
        this.circletool.clear();
    } catch ( e ) {
    }
}

ApexOracleMapsPlugin.prototype.finishCircle = function () {
    try {
        this.circletool.finish();
    } catch ( e ) {
        if ( $v( "pdebug" ) == "YES" ) {
            console.log( e );
        }
    }
}

ApexOracleMapsPlugin.prototype.startCircle = function () {
    this.clearAllTools();
    this.circletool.start();
    apex.event.trigger(
        apex.jQuery( "#" + this.gRegionId ),
        "com_oracle_oramapshtml5_circlestart"
    );
    /*
     if (OM.version == "11.1.1.7.1" || OM.version == "11.1.1.7.2" || OM.version == "11.1.1.7.0") {
     alert("You need Oracle Maps HTML5 API version 11.1.1.7.3 or higher in order to use the circle tool. Currently, you are using \u0022" + OM.version + "\u0022 Oracle Elocation Server will be upgraded soon.");
     } else {
     this.circletool.start();
     apex.event.trigger(
     apex.jQuery("#"+this.gRegionId),
     "com_oracle_oramapshtml5_circlestart"
     );
     }
     */
}

// Redlining functions: start, finish, clear
ApexOracleMapsPlugin.prototype.clearRedline = function () {
    try {
        this.redlinetool.clear();
    } catch ( e ) {
    }
}

ApexOracleMapsPlugin.prototype.finishRedlining = function () {
    try {
        this.redlinetool.finish();
    } catch ( e ) {
        if ( $v( "pdebug" ) == "YES" ) {
            console.log( e );
        }
    }
}

ApexOracleMapsPlugin.prototype.startRedlining = function () {
    this.clearAllTools();

    this.redlinetool.start();
    apex.event.trigger(
        apex.jQuery( "#" + this.gRegionId ),
        "com_oracle_oramapshtml5_redlinestart"
    );
}


ApexOracleMapsPlugin.prototype.removeCustomMarkers = function () {
    this.customMarker.removeAllFeatures();
}

ApexOracleMapsPlugin.prototype.addCustomMarker = function ( pX, pY, pSrid, pStyle, pText ) {
    var lMarker   = new OM.Feature(
        "CUSTOMFOI_" + this.customMarker.getAllFeatures().length,
        new OM.geometry.Point( pX, pY, getOramaps_adjustSRID( pSrid ) ),
        {
            renderingStyle: new OM.style.Marker( {
                src: this.gFilePrefix + "m-" + pStyle.toLowerCase() + ".png",
                xOffset: 0,
                yOffset: 0
            } )
        }
    );
    lMarker.label = pText;
    this.customMarker.addFeature( lMarker );
}

// event handler functions
ApexOracleMapsPlugin.prototype.fireApexEventRECENTER = function () {
    this.setCookie();
    apex.event.trigger(
        apex.jQuery( "#" + this.gRegionId ),
        "com_oracle_oramapshtml5_maprecenter"
    );
    apex.event.trigger(
        apex.jQuery( "#" + this.gRegionId ),
        "com_oracle_oramapshtml5_mapchanged"
    );

    if ( this.gShowSQLFoi && this.gSqlFoiLazy == 'Y' ) {
        this.getSQLFoi();
    }
}

ApexOracleMapsPlugin.prototype.fireApexEventINITIALIZE = function () {
    if ( this.gShowSqlFoi == 'Y' ) {
        this.getSQLFoi();
    }
    apex.event.trigger( "#" + this.gRegionId, "com_oracle_oramapshtml5_mapinitialized" );
    if ( $v( "pdebug" ) == "YES" ) {
        console.log( "MAP init event sent for jQuery selector \"#" + this.gRegionId + "\"" );
    }
}

ApexOracleMapsPlugin.prototype.fireApexEventZOOMCHANGE = function ( p_old, p_new ) {
    this.setCookie();
    apex.event.trigger(
        apex.jQuery( "#" + this.gRegionId ),
        "com_oracle_oramapshtml5_mapzoomchanged"
    );
    apex.event.trigger(
        apex.jQuery( "#" + this.gRegionId ),
        "com_oracle_oramapshtml5_mapchanged"
    );
    if ( this.gShowSqlFoi && this.gSqlFoiLazy == 'Y' ) {
        this.getSQLFoi();
    }
}

// helper instance functions

ApexOracleMapsPlugin.prototype.setCookie = function () {
    if ( this.gUseCookie == "Y" ) {
        apex.storage.setCookie(
            "OracleMapsPlugin_" + this.gRegionId + "_" + $v( "pInstance" ),
            String( this.mapview.getMapZoomLevel() ) + "#" +
            String( Math.round( this.mapview.getMapCenter().getX() * 1000000000 ) ) + "#" +
            String( Math.round( this.mapview.getMapCenter().getY() * 1000000000 ) ) + "#" +
            String( this.mapview.getUniverse().getSRID() )
        );
    }
}
/*
 * Global Functions
 */

function getOramaps( pRegionId ) {
    return getMapPlugin( pRegionId );
}

function getOramaps_mapview( pRegionId ) {
    return getMapPlugin( pRegionId ).mapview;
}

function prepareData( pRegionId, pType, pSrid, pBBox, pMouseLoc, pMapCenter ) {
    var lData;
    var lmapview = getOramaps( pRegionId ).mapview;

    if ( pType == "XML" ) {
        lData = "<MAPDATA>";
        lData = lData + "<BBOX>" +
                "<XMIN>" + Math.min( pBBox.getMinX(), pBBox.getMaxX() ) + "</XMIN>" +
                "<YMIN>" + Math.max( pBBox.getMinX(), pBBox.getMaxX() ) + "</YMIN>" +
                "<XMAX>" + Math.min( pBBox.getMinY(), pBBox.getMaxY() ) + "</XMAX>" +
                "<YMAX>" + Math.max( pBBox.getMinY(), pBBox.getMaxY() ) + "</YMAX>" +
                "</BBOX>";
        lData = lData + "<CENTER>" +
                "<X>" + pMapCenter.getX() + "</X>" +
                "<Y>" + pMapCenter.getY() + "</Y>" +
                "</CENTER>";
        lData = lData + "<SRID>" + (pSrid == "WGS84" ? "4326" : lmapview.getUniverse().getSRID()) + "</SRID>";
        lData = lData + "<ZOOMLEVEL>" +
                "<CURRENT>" + lmapview.getMapZoomLevel() + "</CURRENT>" +
                "<MAX>" + (lmapview.getUniverse().getZoomLevelNumber() - 1) + "</MAX>" +
                "</ZOOMLEVEL>";
        lData = lData + "<MOUSE_LOCATION>" +
                "<X>" + pMouseLoc.getX() + "</X>" +
                "<Y>" + pMouseLoc.getY() + "</Y>" +
                "</MOUSE_LOCATION>";
        lData = lData + "</MAPDATA>";
    } else {
        lData = JSON.stringify( {
                                    mapdata: {
                                        bbox          : {
                                            xmin: Math.min( pBBox.getMinX(), pBBox.getMaxX() ),
                                            xmax: Math.max( pBBox.getMinX(), pBBox.getMaxX() ),
                                            ymin: Math.min( pBBox.getMinY(), pBBox.getMaxY() ),
                                            ymax: Math.max( pBBox.getMinY(), pBBox.getMaxY() )
                                        },
                                        center        : {
                                            x: pMouseLoc.getX(),
                                            y: pMouseLoc.getY()
                                        },
                                        srid          : (pSrid == "WGS84" ? "4326" : lmapview.getUniverse().getSRID()),
                                        zoomlevel     : {
                                            current: lmapview.getMapZoomLevel(),
                                            max    : (lmapview.getUniverse().getZoomLevelNumber() - 1)
                                        },
                                        mouse_location: {
                                            x: pMouseLoc.getX(),
                                            y: pMouseLoc.getY()
                                        }
                                    }
                                } );
    }
    return lData;
}

function getOramaps_mapdata( pRegionId, pType, pSrid, pCallback ) {
    var lmapview = getOramaps( pRegionId ).mapview;
    var lbbox;
    var lmcenter;
    var lmloc;
    var xCoords;
    var yCoords;

    lbbox    = lmapview.getMapWindowBoundingBox();
    lmcenter = lmapview.getMapCenter();
    lmloc    = lmapview.getCursorLocation();

    if ( pSrid == "WGS84" && lmapview.getUniverse().getSRID() != 8307 && lmapview.getUniverse().getSRID() != 4326 ) {
        // Construct the Strings
        xCoords = Math.round( lbbox.getMinX() * 1000000000 ).toString() + ":" +
                  Math.round( lbbox.getMaxX() * 1000000000 ).toString() + ":" +
                  Math.round( lmcenter.getX() * 1000000000 ).toString() + ":" +
                  Math.round( lmloc.getX() * 1000000000 ).toString();
        yCoords = Math.round( lbbox.getMinY() * 1000000000 ).toString() + ":" +
                  Math.round( lbbox.getMaxY() * 1000000000 ).toString() + ":" +
                  Math.round( lmcenter.getY() * 1000000000 ).toString() + ":" +
                  Math.round( lmloc.getY() * 1000000000 ).toString();
        // AJAX Request ...

        apex.server.plugin(
            getOramaps( pRegionId ).gPluginName,
            {
                x01    : xCoords,
                x02    : yCoords,
                x03    : lmapview.getUniverse().getSRID(),
                x04    : 4326,
                x10    : 'TRANSFORM',
                p_debug: $v( 'pdebug' ),

            },
            {
                success: function ( data ) {
                    lbbox    = new OM.geometry.Rectangle(
                        data[ 0 ].x,
                        data[ 0 ].y,
                        data[ 1 ].x,
                        data[ 1 ].y,
                        4326
                    );
                    lmcenter = new OM.geometry.Point( parseFloat( data[ 2 ].x ), parseFloat( data[ 2 ].y ), 4326 );
                    lmloc    = new OM.geometry.Point( parseFloat( data[ 3 ].x ), parseFloat( data[ 3 ].y ), 4326 );
                    pCallback( prepareData( pRegionId, pType, pSrid, lbbox, lmloc, lmcenter ) );
                }
            }
        );
    } else {
        pCallback( prepareData( pRegionId, pType, pSrid, lbbox, lmloc, lmcenter ) );
    }
}

function getOramaps_mapfootprint( pRegionId, pType, pSrid ) {
    var lmapview = getOramaps( pRegionId ).mapview;
    var lbbox;
    var lmcenter;
    var lmloc;
    var lData;
    var lAjaxRequest;
    var lAjaxResult;
    var lResultPoints;
    var xCoords;
    var yCoords;

    lbbox    = lmapview.getMapWindowBoundingBox();
    lmcenter = lmapview.getMapCenter();
    lmloc    = lmapview.getCursorLocation();

    if ( pSrid == "WGS84" && lmapview.getUniverse().getSRID() != 8307 && lmapview.getUniverse().getSRID() != 4326 ) {
        // Construct the Strings
        xCoords = Math.round( lbbox.getMinX() * 1000000000 ).toString() + ":" +
                  Math.round( lbbox.getMaxX() * 1000000000 ).toString() + ":" +
                  Math.round( lmcenter.getX() * 1000000000 ).toString() + ":" +
                  Math.round( lmloc.getX() * 1000000000 ).toString();
        yCoords = Math.round( lbbox.getMinY() * 1000000000 ).toString() + ":" +
                  Math.round( lbbox.getMaxY() * 1000000000 ).toString() + ":" +
                  Math.round( lmcenter.getY() * 1000000000 ).toString() + ":" +
                  Math.round( lmloc.getY() * 1000000000 ).toString();
        // AJAX Request ...

        lResultPoints = JSON.parse(
            apex.server.plugin(
                getOramaps( pRegionId ).gPluginName,
                {
                    x01    : xCoords,
                    x02    : yCoords,
                    x03    : lmapview.getUniverse().getSRID(),
                    x04    : 4326,
                    x10    : 'TRANSFORM',
                    p_debug: $v( 'pdebug' ),

                },
                {
                    async: false // new method written!
                }
            ).responseText );
        // console.log(lResultPoints);
        lbbox    = new OM.geometry.Rectangle(
            lResultPoints[ 0 ].x,
            lResultPoints[ 0 ].y,
            lResultPoints[ 1 ].x,
            lResultPoints[ 1 ].y,
            4326
        );
        lmcenter = new OM.geometry.Point( parseFloat( lResultPoints[ 2 ].x ), parseFloat( lResultPoints[ 2 ].y ), 4326 );
        lmloc    = new OM.geometry.Point( parseFloat( lResultPoints[ 3 ].x ), parseFloat( lResultPoints[ 3 ].y ), 4326 );
    }

    if ( pType == "XML" ) {
        lData = "<MAPDATA>";
        lData = lData + "<BBOX>" +
                "<XMIN>" + Math.min( lbbox.getMinX(), lbbox.getMaxX() ) + "</XMIN>" +
                "<YMIN>" + Math.max( lbbox.getMinX(), lbbox.getMaxX() ) + "</YMIN>" +
                "<XMAX>" + Math.min( lbbox.getMinY(), lbbox.getMaxY() ) + "</XMAX>" +
                "<YMAX>" + Math.max( lbbox.getMinY(), lbbox.getMaxY() ) + "</YMAX>" +
                "</BBOX>";
        lData = lData + "<CENTER>" +
                "<X>" + lmcenter.getX() + "</X>" +
                "<Y>" + lmcenter.getY() + "</Y>" +
                "</CENTER>";
        lData = lData + "<SRID>" + (pSrid == "WGS84" ? "4326" : lmapview.getUniverse().getSRID()) + "</SRID>";
        lData = lData + "<ZOOMLEVEL>" +
                "<CURRENT>" + lmapview.getMapZoomLevel() + "</CURRENT>" +
                "<MAX>" + (lmapview.getUniverse().getZoomLevelNumber() - 1) + "</MAX>" +
                "</ZOOMLEVEL>";
        lData = lData + "<MOUSE_LOCATION>" +
                "<X>" + lmloc.getX() + "</X>" +
                "<Y>" + lmloc.getY() + "</Y>" +
                "</MOUSE_LOCATION>";
        lData = lData + "</MAPDATA>";
    } else {
        lData = JSON.stringify( {
                                    mapdata: {
                                        bbox          : {
                                            xmin: Math.min( lbbox.getMinX(), lbbox.getMaxX() ),
                                            xmax: Math.max( lbbox.getMinX(), lbbox.getMaxX() ),
                                            ymin: Math.min( lbbox.getMinY(), lbbox.getMaxY() ),
                                            ymax: Math.max( lbbox.getMinY(), lbbox.getMaxY() )
                                        },
                                        center        : {
                                            x: lmcenter.getX(),
                                            y: lmcenter.getY()
                                        },
                                        srid          : (pSrid == "WGS84" ? "4326" : lmapview.getUniverse().getSRID()),
                                        zoomlevel     : {
                                            current: lmapview.getMapZoomLevel(),
                                            max    : (lmapview.getUniverse().getZoomLevelNumber() - 1)
                                        },
                                        mouse_location: {
                                            x: lmloc.getX(),
                                            y: lmloc.getY()
                                        }
                                    }
                                } );
    }
    return lData;
}

function getOramaps_circledata( pRegionId, pSrid, pCallback ) {
    var lmapview = getMapPlugin( pRegionId ).mapview;
    var lTool    = getMapPlugin( pRegionId ).circletool;
    var lGeomObj;

    if ( pSrid == "WGS84" && lmapview.getUniverse().getSRID() != 8307 && lmapview.getUniverse().getSRID() != 4326 ) {
        // Construct the Strings
        xCoords = Math.round( lTool.getGeometry().getCenterX() * 1000000000 ).toString();
        yCoords = Math.round( lTool.getGeometry().getCenterY() * 1000000000 ).toString();

        apex.server.plugin(
            getOramaps( pRegionId ).gPluginName,
            {
                x01    : xCoords,
                x02    : yCoords,
                x03    : lmapview.getUniverse().getSRID(),
                x04    : 4326,
                x10    : 'TRANSFORM',
                p_debug: $v( 'pdebug' ),
            },
            {
                success: function ( pData ) {
                    pCallback(
                        {
                            "center": {
                                "x": getOramaps_numOraToJs( pData[ 0 ].x ),
                                "y": getOramaps_numOraToJs( pData[ 0 ].y )
                            },
                            "radius": lTool.getRadius( "meter" ),
                            "srid"  : 4326
                        }
                    );
                }
            }
        );
    } else {
        pCallback(
        {
            "center": {
                "x": lTool.getGeometry().getCenterX(),
                "y": lTool.getGeometry().getCenterY()
            },
            "radius": lTool.getRadius( "meter" ),
            "srid"  : lmapview.getUniverse().getSRID()
        }
        );
    }
}

function getOramaps_redlinegeom( pRegionId, pType ) {
    var lRedlineGeom = getMapPlugin( pRegionId ).redlinetool.getGeometry();

    var lGeomType;
    var lData;

    if ( lRedlineGeom.getType() == OM.GeomTypes.POLYGON ) {
        lGeomType = 2003;
    }
    if ( lRedlineGeom.getType() == OM.GeomTypes.POINT ) {
        lGeomType = 2001;
    }
    if ( lRedlineGeom.getType() == OM.GeomTypes.LINESTRING ) {
        lGeomType = 2002;
    }

    if ( pType == "JSON" ) {
        lData = JSON.stringify( {
                                    sdo_gtype    : 2003,
                                    sdo_srid     : lRedlineGeom.getSRID(),
                                    sdo_point    : null,
                                    sdo_elem_info: [ 1, 1003, 1 ],
                                    sdo_ordinates: lRedlineGeom.getOrdinates()
                                } );
    } else if ( pType == "WKT" ) {
        if ( lGeomType == 2001 ) {
            lData = "POINT (" + lRedlineGeom.getX() + " " + lRedlineGeom.getY() + ")";
        }
        if ( lGeomType == 2002 ) {
            lData = "LINESTRING ((";
            for ( var i = 0; i < lRedlineGeom.getOrdinates()[ 0 ].length; i = i + 2 ) {
                lData = lData + lRedlineGeom.getOrdinates()[ 0 ][ i ] + " " +
                        lRedlineGeom.getOrdinates()[ 0 ][ i + 1 ];
                if ( i < lRedlineGeom.getOrdinates()[ 0 ].length - 1 ) {
                    lData = lData + ",";
                }
            }
            lData = lData + "))";
        }
        if ( lGeomType == 2003 ) {
            lData = "POLYGON ((";
            for ( var i = 0; i < lRedlineGeom.getOrdinates()[ 0 ].length; i = i + 2 ) {
                lData = lData + Math.round( lRedlineGeom.getOrdinates()[ 0 ][ i ] * 100000 ) / 100000 + " " +
                        Math.round( lRedlineGeom.getOrdinates()[ 0 ][ i + 1 ] * 100000 ) / 100000;
                if ( i < (lRedlineGeom.getOrdinates()[ 0 ].length - 2) ) {
                    lData = lData + ",";
                }
            }
            lData = lData + "))";
        }
    } else {
        lData = "<SDO_GEOMETRY>" +
                "<SDO_GTYPE>" + lGeomType + "</SDO_GTYPE>" +
                "<SDO_SRID>" + lRedlineGeom.getSRID() + "</SDO_SRID>";
        if ( lRedlineGeom.getType() == OM.GeomTypes.POINT ) {
            lData = lData + "<SDO_POINT>" +
                    "<X>" + lRedlineGeom.getX() + "</X>" +
                    "<Y>" + lRedlineGeom.getY() + "</Y>" +
                    "</SDO_POINT>";
        }
        if ( lRedlineGeom.getType() == OM.GeomTypes.POLYGON ) {
            lData = lData + "<SDO_ELEM_INFO>";
            lData = lData + "<N>1</N>";
            lData = lData + "<N>1003</N>";
            lData = lData + "<N>1</N>";
            lData = lData + "</SDO_ELEM_INFO>";
        }
        if ( lRedlineGeom.getType() == OM.GeomTypes.LINESTRING ) {
            lData = lData + "<SDO_ELEM_INFO>";
            lData = lData + "<N>1</N>";
            lData = lData + "<N>2</N>";
            lData = lData + "<N>1</N>";
            lData = lData + "</SDO_ELEM_INFO>";
        }
        if ( lRedlineGeom.getType() == OM.GeomTypes.LINESTRING ||
             lRedlineGeom.getType() == OM.GeomTypes.POLYGON ) {
            lData = lData + "<SDO_ORDINATES>";
            for ( var i = 0; i < lRedlineGeom.getOrdinates()[ 0 ].length; i++ ) {
                lData = lData + "<N>" + Math.round( lRedlineGeom.getOrdinates()[ 0 ][ i ] * 100000 ) / 100000 + "</N>";
            }
            lData = lData + "</SDO_ORDINATES>";
        }
        lData = lData + "</SDO_GEOMETRY>";
    }
    return lData;
}

function getOramaps_clearCircle( pRegionId ) {
    getMapPlugin( pRegionId ).clearCircle();
}

function getOramaps_startCircle( pRegionId ) {
    getMapPlugin( pRegionId ).startCircle();
}

function getOramaps_finishCircle( pRegionId ) {
    getMapPlugin( pRegionId ).finishCircle();
}

function getOramaps_clearRedLine( pRegionId ) {
    getMapPlugin( pRegionId ).clearRedline();
}

function getOramaps_startRedLine( pRegionId ) {
    getMapPlugin( pRegionId ).startRedlining();
}

function getOramaps_finishRedLine( pRegionId ) {
    getMapPlugin( pRegionId ).finishRedlining();
}

function getOramaps_startRectZoom( pRegionId ) {
    getMapPlugin( pRegionId ).clearAllTools();
    getMapPlugin( pRegionId ).marqueezoomtool.start();
}

function getOramaps_adjustSRID( pSrid ) {
    var lSrid;
    if ( pSrid == "" ) {
        lSrid = getMapPlugin( pRegionId ).mapview.getUniverse().getSRID();
    } else if ( pSrid == 4326 ) {
        lSrid = 8307;
    } else {
        lSrid = pSrid;
    }
    return lSrid;
}

function getOramaps_setCenter( pRegionId, pX, pY, pSrid ) {
    if ( !isNaN( getOramaps_numOraToJs( pX ) ) && !isNaN( getOramaps_numOraToJs( pY ) ) ) {
        getMapPlugin( pRegionId ).mapview.setMapCenter(
            new OM.geometry.Point(
                getOramaps_numOraToJs( pX ),
                getOramaps_numOraToJs( pY ),
                getOramaps_adjustSRID( pSrid )
            )
        );
    }
}

function getOramaps_setCenterZoom( pRegionId, pX, pY, pSrid, pZoom ) {
    if ( !isNaN( getOramaps_numOraToJs( pX ) ) && !isNaN( getOramaps_numOraToJs( pY ) ) && !isNaN( parseInt( pSrid ) ) && !isNaN( parseInt( pZoom ) )
    ) {
        getMapPlugin( pRegionId ).mapview.setMapCenterAndZoomLevel(
            new OM.geometry.Point(
                getOramaps_numOraToJs( pX ),
                getOramaps_numOraToJs( pY ),
                getOramaps_adjustSRID( pSrid )
            ),
            parseInt( pZoom )
        );
    }
}

function getOramaps_setZoomLevel( pRegionId, pZoom ) {
    if ( !isNaN( parseInt( pZoom ) ) ) {
        getMapPlugin( pRegionId ).mapview.setMapZoomLevel( parseInt( pZoom ) );
    }
}

function getOramaps_setCustomMarker( pRegionId, pX, pY, pSrid, pStyle, pText ) {
    if ( !isNaN( getOramaps_numOraToJs( pX ) ) && !isNaN( getOramaps_numOraToJs( pY ) ) && !isNaN( parseInt( pSrid ) )
    ) {
        getOramaps( pRegionId ).addCustomMarker(
            getOramaps_numOraToJs( pX ),
            getOramaps_numOraToJs( pY ),
            pSrid,
            pStyle,
            pText
        );
    }
}

function getOramaps_removeCustomMarker( pRegionId ) {
    getOramaps( pRegionId ).removeCustomMarkers();
}

function getOramaps_refreshSqlFOI( pRegionId ) {
    getMapPlugin( pRegionId ).refreshSQLFoi();
}


function getMapPlugin( pRegionId ) {
    var lPlugin = gPluginObjects[ pRegionId ];
    if ( !lPlugin ) {
        handleDeveloperError( "There is no Oracle Maps Region with Region ID \"" + pRegionId + "\". Check the \"Static Region ID\" of your Map region." );
    }
    return lPlugin;
}

function handleDeveloperError( pMessage ) {
    console.log( "ERROR: " + pMessage );
    alert( pMessage );
}

function getOramaps_numOraToJs( pInNumber ) {
    return parseFloat( String( pInNumber ).replace( ",", "." ) );
}

function getOramaps_escapeHTML( string, doit ) {
    var entityMap = {
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': '&quot;',
        "'": '&#39;',
        "/": '&#x2F;'
    };

    if ( doit == "Y" ) {
        return String( string ).replace( /[&<>"'\/]/g, function ( s ) {return entityMap[ s ];} );
    } else {
        return string;
    }
}
