<?php
// Add custom Theme Functions here
add_filter( 'add_to_cart_text', 'woo_custom_cart_button_text' );                        // < 2.1
add_filter( 'woocommerce_product_add_to_cart_text', 'woo_custom_cart_button_text' );    // 2.1 +
  
function woo_custom_cart_button_text() {
  
        return __( 'Mua ngay', 'woocommerce' );

}
add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );
function custom_override_checkout_fields( $fields ) {
     unset($fields['billing']['billing_postcode']);   
unset($fields['billing']['billing_country']);
unset($fields['billing']['billing_company']);
     unset($fields['billing']['billing_state']);
     unset($fields['billing']['billing_address_2']);   unset($fields['billing']['billing_city']);    return $fields;
}