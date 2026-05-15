var apxColor = {
    parseIntOrDefault: function ( string ) {
        var result = parseFloat( string );
        return isNaN( result ) ? 0 : result;
    },
    parseFloatOrDefault: function ( string ) {
        var result = parseFloat( string );
        return isNaN( result ) ? 0 : result;
    },
    parseRGBA: function ( string ) {
        var rgba = {
            r: 0,
            g: 0,
            b: 0,
            a: 0
        };
        string = string.replace( /\s/g, "" );
        string = string.replace( "rgba", "" );
        string = string.replace( "rgb", "" );
        string = string.replace( "(", "" );
        string = string.replace( ")", "" );
        var values = string.split( "," );
        rgba.r = this.parseIntOrDefault( values[0], 10 );
        rgba.g = this.parseIntOrDefault( values[1], 10 );
        rgba.b = this.parseIntOrDefault( values[2], 10 );
        rgba.a = this.parseFloatOrDefault( values[3] );
        return rgba;
    },
    parseHexToRgbaOrDefault: function ( hex ) {
        hex = hex || "#000000";
        hex = parseInt( ( ( hex.indexOf( '#' ) > -1 ) ? hex.substring( 1 ) : hex ), 16 );
        return {
            r: hex >> 16,
            g: ( hex & 0x00FF00 ) >> 8,
            b: ( hex & 0x0000FF ),
            a: 1
        };
    },
    getPerceivedLuminance : function( rgbColor ) {
        var luminance = ( rgbColor.r * 299 + rgbColor.g * 587 + rgbColor.b * 114 ) / 1000;
        return luminance;
    },
    getContrastColor: function ( color ){
        var rgb = this.parseRGBA( color );
        return this.getPerceivedLuminance( rgb ) >= 128 ? "#262626" : "white";
    }
};