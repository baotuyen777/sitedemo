<?php
// Add custom Theme Functions here
// 
// Thay chữ trong trang danh mục sản phẩm
  
add_filter( 'woocommerce_product_add_to_cart_text', 'woo_archive_custom_cart_button_text' ); // 2.1 +
function woo_archive_custom_cart_button_text() {
return __( 'Mua ngay', 'woocommerce' );
}
  
//Thay chữ trong trang chi tiết của bài viết
  
add_filter( 'woocommerce_product_single_add_to_cart_text', 'woo_custom_cart_button_text' ); // 2.1 +
function woo_custom_cart_button_text() {
return __( 'Mua ngay', 'woocommerce' );
}

add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );
function custom_override_checkout_fields( $fields ) {
     unset($fields['billing']['billing_postcode']);
	unset($fields['billing']['billing_state']);
     unset($fields['billing']['billing_address_2']);
	unset($fields['billing']['billing_company']);
	unset($fields['billing']['billing_country']);
	unset($fields['billing']['billing_first_name']);
	unset($fields['billing']['billing_city']);
	
	
	
     return $fields;
}

function woocommerce_template_product_reviews() {
woocommerce_get_template( 'single-product-reviews.php' );
}
add_action( 'woocommerce_after_single_product_summary', 'woocommerce_template_product_reviews', 50 );


