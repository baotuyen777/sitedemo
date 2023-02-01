<?php
add_filter('woocommerce_empty_price_html', 'custom_call_for_price');
 
function custom_call_for_price() {
return 'Liên hệ';
}
?>