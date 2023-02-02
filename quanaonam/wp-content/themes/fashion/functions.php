<?php
// Add custom Theme Functions here
add_filter('woocommerce_currency_symbol', 'change_existing_currency_symbol', 10, 2);
 
function change_existing_currency_symbol( $currency_symbol, $currency ) {
 switch( $currency ) {
 case 'VND': $currency_symbol = 'VNĐ'; break;
 }
 return $currency_symbol;
}
function woo_remove_product_tab($tabs) {
 
 
    unset( $tabs['reviews'] );                                  // Remove the reviews tab

 
        return $tabs;
 
}
add_filter( 'woocommerce_product_tabs', 'woo_remove_product_tab', 98);