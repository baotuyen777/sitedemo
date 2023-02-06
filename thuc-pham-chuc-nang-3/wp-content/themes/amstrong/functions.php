<?php
// Add custom Theme Functions here
// 
// 
// 
function my_wpdiscuz_shortcode() {
   if(file_exists(ABSPATH . 'wp-content/plugins/wpdiscuz/templates/comment/comment-form.php')){
      include_once ABSPATH . 'wp-content/plugins/wpdiscuz/templates/comment/comment-form.php';
   }
}
add_shortcode( 'wpdiscuz_comments', 'my_wpdiscuz_shortcode' );