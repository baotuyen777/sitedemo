<?php
// Add custom Theme Functions here
// 
/** Hide advanced custom field */
add_filter('acf/settings/show_admin', '__return_false');

function vnkings_admin_menus() {
	//remove_menu_page( 'wpseo_dashboard' ); // Menu Yoast SEO
	remove_menu_page( 'wpcf7' ); // Menu Contact Form
   remove_menu_page( 'index.php' ); // Menu Bảng tin
   //remove_menu_page( 'edit.php' ); // Menu Bài viết
   remove_menu_page( 'upload.php' ); // Menu Media
   //remove_menu_page( 'edit.php?post_type=page' ); // Menu Trang
   remove_menu_page( 'edit-comments.php' ); // Menu Bình luận
   //remove_menu_page( 'themes.php' ); // Menu Giao diện
   //remove_menu_page( 'plugins.php' ); // Menu Plugins
   remove_menu_page( 'users.php' ); // Menu Thành viên
   remove_menu_page( 'tools.php' ); // Menu Công cụ
   //remove_menu_page( 'options-general.php' ); // Menu cài đặt
}
add_action( 'admin_menu', 'vnkings_admin_menus' );
