apex.jQuery( document ).ready( function() {

    // Action to open search dialog
    apex.actions.add( {
        name: 'open-search',
        label: 'Open Search',
        action: function( event, focusElement, args ) {
            const category = args?.category;
            apex.items.P0_SEARCH.setValue( category );
            apex.theme.openRegion( 'SearchDialog' );
            apex.regions.SearchRestaurants.refresh();
            apex.jQuery( '.t-DialogRegion-bodyWrapperOut' ).scrollTop( 0 );
            
            setTimeout( () => {
                apex.items.P0_SEARCH.setFocus();
            }, 100 );
        }
    } );

    // Action to update cart
    apex.actions.add( {
        name: 'cart',
        label: 'Cart',
        action: function( event, focusElement, args ) {
            const quantity = parseInt( args.quantity );
            const action = args.action;
            const total = parseInt( apex.items.P8_SHOPPING_CART_ITEMS.value );

            if ( action === 'add' ) {
                updateCart( quantity + 1, total + 1, args );
            } else if ( action === 'minus' && quantity > 1 ) {
                updateCart( quantity - 1, total - 1, args );
            }

            function updateCart( newQuantity, newTotal, args ) {
                apex.server.process( 'edit_cart', {
                    x01: args.id,
                    x02: newQuantity,
                    x03: args.utensils,
                    x04: args.note
                }, {
                    dataType: 'text',
                    success: function( data ) {
                        apex.regions.CartRegion.refresh();
                        apex.region( 'CartTotal' ).refresh();
                        apex.items.P8_SHOPPING_CART_ITEMS.setValue( newTotal );
                        apex.jQuery( '.js-shopping-cart-item .t-Button-badge' ).text( newTotal );
                    }
                } );
            }
        }
    } );
} );