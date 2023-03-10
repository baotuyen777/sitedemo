SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w9`
--




CREATE TABLE `gdd_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_comments VALUES
("1","1","M???t ng?????i b??nh lu???n WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-01-16 12:51:20","2019-01-16 12:51:20","Xin ch??o, ????y l?? m???t b??nh lu???n\n????? b???t ?????u v???i qu???n tr??? b??nh lu???n, ch???nh s???a ho???c x??a b??nh lu???n, vui l??ng truy c???p v??o khu v???c B??nh lu???n trong trang qu???n tr???.\nAvatar c???a ng?????i b??nh lu???n s??? d???ng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `gdd_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO gdd_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/suadienthoai\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1547700940,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960705,\"initial_activation_timestamp\":1547700950,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557026038,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}");




CREATE TABLE `gdd_duplicator_pro_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `gdd_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2912 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/suadienthoai","yes"),
("2","home","https://bizhostvn.com/w/suadienthoai","yes"),
("3","blogname","suadienthoai","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","demo@gmail.com","yes"),
("7","start_of_week","1","yes"),
("8","use_balanceTags","0","yes"),
("9","use_smilies","1","yes"),
("10","require_name_email","1","yes"),
("11","comments_notify","1","yes"),
("12","posts_per_rss","10","yes"),
("13","rss_use_excerpt","0","yes"),
("14","mailserver_url","mail.example.com","yes"),
("15","mailserver_login","login@example.com","yes"),
("16","mailserver_pass","password","yes"),
("17","mailserver_port","110","yes"),
("18","default_category","1","yes"),
("19","default_comment_status","open","yes"),
("20","default_ping_status","open","yes"),
("21","default_pingback_flag","1","yes"),
("22","posts_per_page","30","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:5:{i:0;s:43:\"better-font-awesome/better-font-awesome.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:5;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","/bai-viet","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","","no"),
("40","template","flatsome","yes"),
("41","stylesheet","sua-dien-thoai","yes"),
("42","comment_whitelist","1","yes"),
("43","blacklist_keys","","no"),
("44","comment_registration","0","yes"),
("45","html_type","text/html","yes"),
("46","use_trackback","0","yes"),
("47","default_role","subscriber","yes"),
("48","db_version","44719","yes"),
("49","uploads_use_yearmonth_folders","1","yes"),
("50","upload_path","","yes"),
("51","blog_public","1","yes"),
("52","default_link_category","2","yes"),
("53","show_on_front","page","yes"),
("54","tag_base","","yes"),
("55","show_avatars","1","yes"),
("56","avatar_rating","G","yes"),
("57","upload_url_path","","yes"),
("58","thumbnail_size_w","150","yes"),
("59","thumbnail_size_h","150","yes"),
("60","thumbnail_crop","1","yes"),
("61","medium_size_w","300","yes"),
("62","medium_size_h","300","yes"),
("63","avatar_default","mystery","yes"),
("64","large_size_w","1024","yes"),
("65","large_size_h","1024","yes"),
("66","image_default_link_type","none","yes"),
("67","image_default_size","","yes"),
("68","image_default_align","","yes"),
("69","close_comments_for_old_posts","0","yes"),
("70","close_comments_days_old","14","yes"),
("71","thread_comments","1","yes"),
("72","thread_comments_depth","5","yes"),
("73","page_comments","0","yes"),
("74","comments_per_page","50","yes"),
("75","default_comments_page","newest","yes"),
("76","comment_order","asc","yes"),
("77","sticky_posts","a:0:{}","yes"),
("78","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:5:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:16:\"Fanpage Facebook\";s:4:\"text\";s:405:\"<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:729:\"<div class=\"sh-title\">H??? TH???NG SHOWROOM</div>\n<div class=\"sh\">\n\n<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Showroom Nguy???n Tr??i, H?? N???i\n\n290 Nguy???n Tr??i, Thanh Xu??n, H?? N???i\n\nHotline:  - \n\n</div>\n<div class=\"sh\">\n\n<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Showroom Tp. H??? Ch?? Minh\n\n311 T??n K??? T??n Qu??, T??n Ph??, Tp. HCM\n\nHotline: 1900666655 - 01245 256 589\n\n</div>\n<div class=\"sh\">\n\n<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Showroom Tp. Ninh B??nh\n\n12 Kim Giang, Gia Vi???n, Ninh B??nh\n\nHotline: 1900565658 - 0985 698 547\n\n</div>\n<div class=\"note-sidebar\">\n\nG???i ngay <b></b> ????? ?????t h??ng tr???c ti???p v?? nh???n h??ng sau 24h\n\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:729:\"<div class=\"sh-title\">H??? TH???NG SHOWROOM</div>\n<div class=\"sh\">\n\n<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Showroom Nguy???n Tr??i, H?? N???i\n\n290 Nguy???n Tr??i, Thanh Xu??n, H?? N???i\n\nHotline:  - \n\n</div>\n<div class=\"sh\">\n\n<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Showroom Tp. H??? Ch?? Minh\n\n311 T??n K??? T??n Qu??, T??n Ph??, Tp. HCM\n\nHotline: 1900666655 - 01245 256 589\n\n</div>\n<div class=\"sh\">\n\n<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i> Showroom Tp. Ninh B??nh\n\n12 Kim Giang, Gia Vi???n, Ninh B??nh\n\nHotline: 1900565658 - 0985 698 547\n\n</div>\n<div class=\"note-sidebar\">\n\nG???i ngay <b></b> ????? ?????t h??ng tr???c ti???p v?? nh???n h??ng sau 24h\n\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:0:{}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","2","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","gdd_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:13:\"media_image-3\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:6:\"text-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:2:{i:0;s:13:\"media_image-5\";i:1;s:6:\"text-4\";}s:15:\"product-sidebar\";a:1:{i:0;s:6:\"text-3\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:3:{i:3;a:15:{s:13:\"attachment_id\";i:349;s:3:\"url\";s:83:\"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/01/banner-sua-chua.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:360;s:6:\"height\";i:500;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:5;a:15:{s:13:\"attachment_id\";i:320;s:3:\"url\";s:104:\"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/01/3806148_Oukitel-K4000-Pro-01-300x197.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:800;s:6:\"height\";i:525;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:16:{i:1558039378;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1558039880;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558042544;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1558054280;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558058454;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558058464;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558063061;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558068553;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558069254;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558080054;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558082764;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558097493;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558098105;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558112400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("113","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547643209;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("145","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1556960740;}","no"),
("149","new_admin_email","webdemo@gmail.com","yes"),
("156","recently_activated","a:4:{s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557028321;s:23:\"wp-rocket/wp-rocket.php\";i:1557028192;s:30:\"db-prefix-change/db_prefix.php\";i:1557026726;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557026050;}","yes"),
("157","current_theme","S???a ??i???n tho???i","yes"),
("158","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 16 Jan 2019 12:53:30 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547643230;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("159","theme_switched","","yes"),
("160","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:24:\"B??i vi???t m???i nh???t\";s:6:\"number\";i:6;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("161","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("163","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("164","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("165","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("166","flatsome_wup_buyer","trannguyen886","yes"),
("167","allowedthemes","a:1:{s:14:\"sua-dien-thoai\";b:1;}","no"),
("168","fl_has_child_theme","sua-dien-thoai","yes"),
("170","theme_mods_sua-dien-thoai","a:157:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:1:{i:0;s:7:\"block-1\";}s:21:\"header_elements_right\";a:0:{}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:20;s:14:\"primary_mobile\";i:20;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Wed, 16 Jan 2019 12:53:52 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:15:\"html_custom_css\";s:9112:\".nav-spacing-xlarge>li {\n    margin: 0 22px;line-height: 50px;\n}.nav-uppercase>li>a {\n	letter-spacing: 0;}\n.nav-line-bottom>li>a:before, .nav-line-grow>li>a:before, .nav-line>li>a:before{height:2px}\n.nav-dropdown-default {\n    padding: 0px;\n}\n.nav-dropdown.nav-dropdown-default>li>a{margin: 0;\n    padding: 10px;\n    font-size: 14px;\n    color: #353535;border-bottom: 0px}\n.nav-dropdown.nav-dropdown-default>li>a:hover{background:#f44336; color:white}\n.nav-dropdown{    border: 1px solid #ddd;}\n.header-block {padding-top:30px}\n.nav-dark .form-flat input:not([type=\"submit\"]){background-color: #0c0c0c00 !important;\n    border-radius: 4px;\n    border: 1px solid white;\n    font-size: 14px;\n    height: 41px;}\n.searchform .button.icon i {\n\n    color: #f74437;\n}\n.tieu-chi .icon-box .icon-box-text h4{margin-bottom:3px;     font-size: 16px;}\n.tieu-chi .icon-box .icon-box-text p{line-height:10px;     line-height: 20px;}\n.tieu-chi .row-dashed .col-inner{padding:0 5px}\n.dich-vu .badge-inner{font-weight:normal}\n.dich-vu .post-item .post-title, .blog-archive .post-item .post-title{    font-size: 20px;\n    color: black;\n    font-weight: 500;}\n.section-title-normal span {\n    \n    text-transform: none;\n    \n    border-bottom: 2px solid rgb(247, 68, 55);\n  \n}\n.row-dashed .col-inner{padding:4px}\n.section-title-container {\n    margin-bottom: 10px;\n}\n.lich-khai-giang .icon-box .icon-box-text{background: white;\n    margin-left: 16px;}\n.lich-khai-giang .icon-box p{font-style: italic;\n    color: red;\n    font-size: 15px;}\n.tin-tuc .post-item .box-text{padding:20px; background-image: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.94));}\n.tin-tuc .post-item .post-title{font-size:19px; font-weight:normal}\n.tin-tuc .post-item .box-blog-post .is-divider{display:none}\n.tin-tuc .post-item .overlay{background-image: linear-gradient(rgba(0, 0, 0, 0), rgba(0,0,0,0.6));}\n.tin-tuc .xem-them{display:none}\n.lich-khai-giang .icon-box .icon-box-text h4:hover{color:#f84436}\n.lich-khai-giang .icon-box .icon-box-text h4{margin-bottom: 0;\n    padding-top: 9px;\n    font-size: 16px;\n    line-height: 19px;\n    color: black;\n    font-weight: normal;}\n.icon-box-img img{padding-top:0}\n.lich-khai-giang .row.row-collapse {\n  \n    background: white;\n}\nul.links li a{\n    color: #f64437;border: 1px solid #f44336;\n}\n.page-right-sidebar .large-9{border-right:0}\n.page-right-sidebar .large-3{padding-left:0}\n.form-tu-van .form-chinh{border: 1px solid #f44336;\n    padding: 20px;}\n.form-tu-van input[type=\'tel\'], .form-tu-van input[type=\'text\'], .form-tu-van textarea{box-shadow:0px 0px 0px; border-radius:4px; font-size:14px}\n.form-tu-van textarea{min-height:80px}\n.page-right-sidebar h1{margin-bottom: 15px;\n    margin-top: 15px;}\n.form-tu-van input[type=\'submit\']:not(.is-form){margin:0; border-radius:4px; font-weight:normal; text-transform:none}\n.form-tu-van .title{background: #f44336;\n    padding: 10px 15px;\n    color: white;\n    text-transform: uppercase;\n    font-size: 17px;}\nh1.entry-title.mb {\n    margin-bottom: 20px;\n    margin-top: 10px;\n    letter-spacing: 0;\n    font-size: 19px;\n}\n\n.header:not(.transparent) .header-bottom-nav.nav > li.active > a{color:black}\n.blog-archive .post-item .post-title:hover{color:#f44336}\n#breadcrumbs a, .blog-single .entry-meta .danh-muc a, .blog-single .navigation-post a:hover, #comments .logged-in-as a{color: #20a9ec;\n}\n\n.blog-archive .post-item .box-text{padding-bottom:0}\n.odd{background:#f5f5f5}\nth, td {\n	padding: 10px;}\n.cell-timeline .timeline .date, .cell-timeline .timeline .price{width:50%; float:left}\n.tablesorter-header-inner, .odd td, .even td, .cell-timeline .timeline{padding-left:10px}\n.tablesorter-headerRow{    background: #f84436;\n    height: 50px;\n    color: white;}\n.lich-khai-giang .post-item .box-text{padding-bottom:5px}\n.lich-khai-giang .xem-them, .blog-archive .post-item .from_the_blog_comments, .widget .is-divider{display:none}\n\n.dich-vu button, .blog-archive .post-item button{border-radius:4px; margin: 0;\n    padding: 0;\n    text-transform: none;\n    font-weight: normal;\n    background: #f74437;\n    padding: 0px 19px;\n    color: white;\n    margin-top: 10px;\n    font-size: 13px;}\n.dich-vu .post-item .col-inner{border-radius:4px; background: #f9f9f9;\n    padding: 10px;}\n.dich-vu .post-item .box-text{padding-bottom:0}\n.footer-section .col{padding-bottom:0}\n.copyright-footer img{width:250px}\n.copyright-footer{    font-size: 13px;\n    color: #5f5f5f;}\n.footer-secondary {\n    padding: 18.5px 0;\n    text-align: right;\n	font-size: 15px;}\n.button.back-to-top{background:#f64437; color:white; border:0}\n.tin-tuc .large-12{padding-bottom:0}\n.blog-single .entry-header-text-bottom{padding-top:10px; padding-bottom:0px}\n.blog-single .entry-content h3{font-size: 17px;\n    color: black;}\n.blog-archive .large-10{flex-basis:100%; max-width:100%}\n.blog-archive .archive-page-header .large-12{text-align:left; padding-bottom:15px}\n.blog-archive .page-title{    margin-top: 10px;\n    letter-spacing: 0;\n    font-size: 20px;}\n.page-wrapper {\n    padding-top: 15px;\n    padding-bottom: 15px;\n}\n.blog-single .entry-content h2{font-size: 19px;\n    color: black;}\n.blog-single .entry-content{padding:10px 0}\n.blog-single .entry-category, .blog-single .is-divider {display:none}\n.blog-single .entry-title{color: black;\n    font-weight: normal;}\n#breadcrumbs{margin-bottom: 0px;\n    font-size: 15px;\n    color: black;}\n.blog-single .navigation-post a{color:black;}\n.widget-title span{display: block;\n    width: 100%;\n    background: #f84436;\n    padding: 15px 15px;\n    color: white;\n    letter-spacing: 0;\n    text-align: center;}\n.flatsome_recent_posts ul{    border: 1px solid #ececec;\n    padding: 0 10px;}\n.blog-archive .post-sidebar, .blog-single .post-sidebar{padding-left:0}\n.blog-archive .post-item .col-inner{border-radius:4px; background: #f9f9f9;\n    padding: 10px;}\n.blog-single .navigation-post a:hover{color:#f44336}\n.blog-single .navigation-post{    background: whitesmoke;\n    padding-left: 10px;\n    padding-right: 10px;}\n.blog-single .social-icons a{border:0}\n.footer-section ul li.bullet-arrow{padding: 0px 0 1px 20px;}\n.blog-single .blog-share{text-align:left}\n.blog-single .entry-meta .the-tim-kiem a:hover{background:#f64437;}\n.blog-single .entry-meta .the-tim-kiem a{background: gray;\n    padding: 5px 15px;\n    border-radius: 5px;\n    color: white;}\n.blog-single .entry-meta .danh-muc{display:block; margin-bottom:10px}\nfooter.entry-meta{font-size:15px}\n.dich-vu .product-small .price del span{font-size:13px}\n.dich-vu .product-small .price ins span{color:red;}\n.shop-container .price-wrapper ins span{color:red; font-size:17px; font-weight:normal}\n.shop-container .product-small .product-title a{font-size:15px;  margin-bottom:5px; color:black !important; font-weight:bold}\n.related .badge-container .badge-inner,  .shop-container .products .product-small .badge-container .badge-inner{border-radius:99%; font-weight:normal; font-size:14px; background: red}\n.related .badge-container,  .shop-container .products .product-small .badge-container {margin:10px;}\n.dich-vu .product-small .product-title a{font-size: 15px;\n    margin-bottom: 5px; color:black; font-weight:bold}\n.dich-vu .col{padding-bottom:0}\n.dich-vu .badge-container{margin: 10px;\n}\n.product-short-description p{    margin-bottom: 3px;\n    font-size: 14px;}\n.product_meta>span{font-size:15px}\n.product-main .badge-container .badge-inner{border-radius:99%; font-weight:normal; background:red; font-size:15px !important}\n.product-tabs li a{font-size:14px}\n.product-short-description ul {margin-bottom:0}\n.product-short-description ul li{font-size:14px; margin-bottom:4px}\n.related .product-section-title{margin:0; letter-spacing:0}\n.tab-panels h2 strong{font-size:17px}\n.product-section{border-top:0}\n.product-main .badge-container{margin:10px}\n.cart{margin-bottom:0px}\n.single_add_to_cart_button{background-color: #f44336 !important;\n    text-transform: none;\n    letter-spacing: 0;\n    border-radius: 5px;}\n.product-short-description{    background: whitesmoke;\n    padding: 15px;\n    border-radius: 5px;\n    margin-bottom: 15px;}\n.product-main .price-wrapper del span{color:gray; font-size:16px}\n.product-main .price-wrapper ins span{color:red; font-weight:normal}\n.textwidget .sh{margin-bottom: 10px;\n    border-bottom: 1px dashed #e2e2e2;\n    padding-bottom: 10px;}\n.textwidget p{    font-size: 14px;\n    margin-bottom: 0px;}\n.textwidget span{font-weight:bold}\n .textwidget .sh-title{font-weight: bold;\n    margin-bottom: 10px;\n    color: #e20000;}\n#product-sidebar .widget_text{background: whitesmoke;\n    padding: 15px;\n    border-radius: 5px;}\n#product-sidebar .next-prev-thumbs{margin-bottom:5px}\n.product-main .product-info{border-right:0}\n.product-main #product-sidebar{padding-left:0}\n.dich-vu .badge-container .badge-inner{border-radius:99%; background:red}\na.devvn_buy_now_style, a.devvn_buy_now_style:hover, a.devvn_buy_now_style:focus, .devvn-popup-title, .popup-customer-info-group .devvn-order-btn{max-width:100%; background: -webkit-gradient(linear,0% 0%,0% 100%,from(#f44336),to(#ff1100));\n    background: -webkit-linear-gradient(top,#f44336,#ff0000);}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:0:\"\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:14:\"T??m ki???m...\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:12:\"fl_portfolio\";s:1:\"0\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.7.2\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:9:\"404_block\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:11:\"preset_demo\";s:20:\"header-wide-nav-dark\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"286\";s:11:\"topbar_show\";b:0;s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:19:\"rgba(94,94,94,0.42)\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"120\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:18:\"rgba(10,10,10,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"48\";s:15:\"nav_position_bg\";s:7:\"#f5f5f5\";s:16:\"nav_style_bottom\";s:11:\"line-bottom\";s:15:\"nav_size_bottom\";s:6:\"medium\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:7:\"#2b2b2b\";s:27:\"type_nav_bottom_color_hover\";s:7:\"#f44336\";s:17:\"header_top_height\";s:2:\"30\";s:14:\"header_divider\";b:0;s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:13:\"color_primary\";s:7:\"#f44336\";s:15:\"color_secondary\";s:7:\"#38c2f4\";s:9:\"type_size\";s:2:\"95\";s:16:\"type_size_mobile\";s:3:\"100\";s:9:\"site_logo\";s:80:\"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/05/suadienthoai.png\";s:12:\"logo_padding\";s:1:\"1\";s:14:\"header-block-1\";s:12:\"header-block\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_posts_depth\";s:1:\"0\";s:23:\"blog_posts_header_style\";s:6:\"bottom\";s:16:\"blog_badge_style\";s:13:\"circle-inside\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:20:\"header_height_sticky\";s:2:\"45\";s:17:\"nav_height_sticky\";s:2:\"24\";s:13:\"header_sticky\";b:0;s:16:\"bottombar_sticky\";b:1;s:12:\"footer_block\";s:12:\"footer-block\";s:19:\"footer_bottom_color\";s:7:\"#0a0a0a\";s:16:\"footer_left_text\";s:270:\"<img src=\"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/05/suadienthoai.png\"/></br>Copyright [ux_current_year] ?? <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>. Thi???t k??? b???i <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>\";s:17:\"footer_right_text\";s:132:\"THI???T K??? ????? H???A V?? WEBSITE CHUY??N NGHI???P</br>\nS??? 29 ng?? 18 L????ng Ng???c Quy???n, V??n Qu??n, H?? ????ng, H?? N???i\";s:11:\"blog_layout\";s:10:\"no-sidebar\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:5:\"3-col\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:23:\"blog_single_header_meta\";b:0;s:11:\"color_texts\";s:7:\"#282828\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#f44336\";s:18:\"color_widget_links\";s:7:\"#0a0a0a\";s:24:\"color_widget_links_hover\";s:7:\"#f44336\";s:13:\"default_title\";b:1;s:16:\"category_sidebar\";s:10:\"off-canvas\";s:27:\"category_force_image_height\";b:1;s:21:\"category_image_height\";s:3:\"111\";s:16:\"products_pr_page\";s:2:\"50\";s:18:\"category_row_count\";s:1:\"5\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:20:\"category_title_style\";s:8:\"featured\";s:19:\"category_show_title\";b:1;s:23:\"header_shop_bg_featured\";b:1;s:20:\"header_shop_bg_image\";s:75:\"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/01/slider3.jpg\";s:20:\"header_shop_bg_color\";s:19:\"rgba(10,10,10,0.81)\";s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:6:\"normal\";s:15:\"category_shadow\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:7:\"disable\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:21:\"product_next_prev_nav\";b:1;s:21:\"product_title_divider\";b:0;s:19:\"product_image_width\";s:1:\"4\";s:15:\"product_display\";s:11:\"tabs_normal\";s:18:\"product_tabs_align\";s:6:\"center\";s:9:\"tab_title\";s:27:\"Th??ng tin chuy???n kho???n\";s:16:\"related_products\";s:4:\"grid\";s:23:\"related_products_pr_row\";s:1:\"6\";s:20:\"max_related_products\";s:2:\"12\";s:25:\"category_row_count_mobile\";s:1:\"2\";}","yes"),
("172","envato_setup_complete","1547643237","yes"),
("198","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("217","category_children","a:2:{i:1;a:8:{i:0;i:5;i:1;i:6;i:2;i:7;i:3;i:8;i:4;i:9;i:5;i:10;i:6;i:11;i:7;i:12;}i:2;a:7:{i:0;i:13;i:1;i:14;i:2;i:15;i:3;i:16;i:4;i:17;i:5;i:18;i:6;i:19;}}","yes"),
("254","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1547695061;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("255","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:0;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"L???i 404: kh??ng x??c ?????nh\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"L??u tr??? cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang ch???\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"T??m ki???m v???i\";s:15:\"breadcrumbs-sep\";s:2:\"??\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:7:\"Webdemo\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:6:\"person\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:1;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:0;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("256","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("257","wpseo_flush_rewrite","1","yes"),
("258","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("264","wpseo_current_version","16","no"),
("265","wpseo_premium_version","8.4","yes"),
("270","wpseo_tracking_last_request","1556960716","yes"),
("275","wpseo_sitemap_cache_validator_global","RN2u","no"),
("282","rewrite_rules","a:173:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"bai-viet/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"bai-viet/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"bai-viet/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"bai-viet/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"bai-viet/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"bai-viet/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("283","wpseo_sitemap_1_cache_validator","3nhKm","no"),
("284","wpseo_sitemap_customize_changeset_cache_validator","Kx9I","no"),
("291","wpseo_sitemap_post_tag_cache_validator","Voph","no"),
("292","wpseo_sitemap_post_cache_validator","3nhKx","no"),
("293","wpseo_sitemap_category_cache_validator","78mf","no"),
("302","wpseo_sitemap_page_cache_validator","3bYVb","no"),
("307","wpseo_sitemap_blocks_cache_validator","XCS9","no"),
("310","wpseo_sitemap_author_cache_validator","XY6m","no"),
("329","wpseo_sitemap_nav_menu_item_cache_validator","2a1tL","no"),
("330","wpseo_sitemap_29_cache_validator","2a1tQ","no"),
("335","wpseo_license_server_version","2","yes"),
("344","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1547724508;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("345","wpseo_sitemap_wpcf7_contact_form_cache_validator","2d7EX","no"),
("410","ai1wm_updater","a:0:{}","yes"),
("427","duplicator_pro_package_active","{\"Created\":\"2019-02-15 05:00:49\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.9\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.33\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190215_mauwebsuadienthoaithietke\",\"Hash\":\"46fbfa157447158a4242_20190215050049\",\"NameHash\":\"20190215_mauwebsuadienthoaithietke_46fbfa157447158a4242_20190215050049\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/suadienthoai\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190215_mauwebsuadienthoaithietke_46fbfa157447158a4242_20190215050049_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\",\"Size\":120082073,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/suadienthoai\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web55\",\"tablesBaseCount\":32,\"tablesFinalCount\":32,\"tablesRowCount\":2151,\"tablesSizeOnDisk\":4423680,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("428","duplicator_pro_ui_view_state","a:1:{s:28:\"dup-settings-diag-opts-panel\";s:1:\"1\";}","yes"),
("1446","woocommerce_store_address","T???ng 2, S??? 29 ng?? 18 L????ng Ng???c Quy???n, V??n Qu??n, H?? ????ng, T???p th??? ?????i h???c S?? ph???m Ngh??? thu???t Trung ????ng","yes"),
("1447","woocommerce_store_address_2","","yes"),
("1448","woocommerce_store_city","Ha Noi","yes"),
("1449","woocommerce_default_country","VN","yes"),
("1450","woocommerce_store_postcode","100000","yes"),
("1451","woocommerce_allowed_countries","all","yes"),
("1452","woocommerce_all_except_countries","a:0:{}","yes"),
("1453","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("1454","woocommerce_ship_to_countries","","yes"),
("1455","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("1456","woocommerce_default_customer_address","geolocation","yes"),
("1457","woocommerce_calc_taxes","no","yes"),
("1458","woocommerce_enable_coupons","yes","yes"),
("1459","woocommerce_calc_discounts_sequentially","no","no"),
("1460","woocommerce_currency","VND","yes"),
("1461","woocommerce_currency_pos","right","yes"),
("1462","woocommerce_price_thousand_sep",".","yes"),
("1463","woocommerce_price_decimal_sep",".","yes"),
("1464","woocommerce_price_num_decimals","0","yes"),
("1465","woocommerce_shop_page_id","424","yes"),
("1466","woocommerce_cart_redirect_after_add","no","yes"),
("1467","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("1468","woocommerce_placeholder_image","540","yes"),
("1469","woocommerce_weight_unit","kg","yes"),
("1470","woocommerce_dimension_unit","cm","yes"),
("1471","woocommerce_enable_reviews","yes","yes"),
("1472","woocommerce_review_rating_verification_label","yes","no"),
("1473","woocommerce_review_rating_verification_required","no","no"),
("1474","woocommerce_enable_review_rating","yes","yes"),
("1475","woocommerce_review_rating_required","yes","no"),
("1476","woocommerce_manage_stock","yes","yes"),
("1477","woocommerce_hold_stock_minutes","60","no"),
("1478","woocommerce_notify_low_stock","yes","no"),
("1479","woocommerce_notify_no_stock","yes","no"),
("1480","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("1481","woocommerce_notify_low_stock_amount","2","no"),
("1482","woocommerce_notify_no_stock_amount","0","yes"),
("1483","woocommerce_hide_out_of_stock_items","no","yes"),
("1484","woocommerce_stock_format","","yes"),
("1485","woocommerce_file_download_method","force","no"),
("1486","woocommerce_downloads_require_login","no","no"),
("1487","woocommerce_downloads_grant_access_after_payment","yes","no"),
("1488","woocommerce_prices_include_tax","no","yes"),
("1489","woocommerce_tax_based_on","shipping","yes");
INSERT INTO gdd_options VALUES
("1490","woocommerce_shipping_tax_class","inherit","yes"),
("1491","woocommerce_tax_round_at_subtotal","no","yes"),
("1492","woocommerce_tax_classes","Gi???m t??? l???\nT??? l??? r???ng","yes"),
("1493","woocommerce_tax_display_shop","excl","yes"),
("1494","woocommerce_tax_display_cart","excl","yes"),
("1495","woocommerce_price_display_suffix","","yes"),
("1496","woocommerce_tax_total_display","itemized","no"),
("1497","woocommerce_enable_shipping_calc","yes","no"),
("1498","woocommerce_shipping_cost_requires_address","no","yes"),
("1499","woocommerce_ship_to_destination","billing","no"),
("1500","woocommerce_shipping_debug_mode","no","yes"),
("1501","woocommerce_enable_guest_checkout","yes","no"),
("1502","woocommerce_enable_checkout_login_reminder","no","no"),
("1503","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("1504","woocommerce_enable_myaccount_registration","no","no"),
("1505","woocommerce_registration_generate_username","yes","no"),
("1506","woocommerce_registration_generate_password","yes","no"),
("1507","woocommerce_erasure_request_removes_order_data","no","no"),
("1508","woocommerce_erasure_request_removes_download_data","no","no"),
("1509","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("1510","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("1511","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("1512","woocommerce_trash_pending_orders","","no"),
("1513","woocommerce_trash_failed_orders","","no"),
("1514","woocommerce_trash_cancelled_orders","","no"),
("1515","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("1516","woocommerce_email_from_name","M???u web s???a ??i???n tho???i &#8211; Thi???t k??? web Webdemo","no"),
("1517","woocommerce_email_from_address","webdemo@gmail.com","no"),
("1518","woocommerce_email_header_image","","no"),
("1519","woocommerce_email_footer_text","{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("1520","woocommerce_email_base_color","#96588a","no"),
("1521","woocommerce_email_background_color","#f7f7f7","no"),
("1522","woocommerce_email_body_background_color","#ffffff","no"),
("1523","woocommerce_email_text_color","#3c3c3c","no"),
("1524","woocommerce_cart_page_id","425","yes"),
("1525","woocommerce_checkout_page_id","426","yes"),
("1526","woocommerce_myaccount_page_id","427","yes"),
("1527","woocommerce_terms_page_id","","no"),
("1528","woocommerce_force_ssl_checkout","no","yes"),
("1529","woocommerce_unforce_ssl_checkout","no","yes"),
("1530","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("1531","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("1532","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("1533","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("1534","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("1535","woocommerce_myaccount_orders_endpoint","orders","yes"),
("1536","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("1537","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("1538","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("1539","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("1540","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("1541","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("1542","woocommerce_logout_endpoint","customer-logout","yes"),
("1543","woocommerce_api_enabled","no","yes"),
("1544","woocommerce_single_image_width","300","yes"),
("1545","woocommerce_thumbnail_image_width","300","yes"),
("1546","woocommerce_checkout_highlight_required_fields","yes","yes"),
("1547","woocommerce_demo_store","no","no"),
("1548","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("1549","current_theme_supports_woocommerce","yes","yes"),
("1550","woocommerce_queue_flush_rewrite_rules","no","yes"),
("1553","default_product_cat","48","yes"),
("1557","woocommerce_db_version","3.5.4","yes"),
("1558","wpseo_sitemap_product_cat_cache_validator","eytV","no"),
("1559","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("1561","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1562","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1563","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1564","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1565","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1566","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1567","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1568","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1569","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1570","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1571","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1572","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1573","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("1578","woocommerce_meta_box_errors","a:0:{}","yes"),
("1584","woocommerce_product_type","physical","yes"),
("1585","woocommerce_allow_tracking","no","yes"),
("1586","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("1587","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("1588","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("1611","wpseo_sitemap_product_cache_validator","eytY","no"),
("1675","product_cat_children","a:0:{}","yes"),
("1688","woocommerce_maybe_regenerate_images_hash","fba4e88858352f84e19344f73fb44ff6","yes"),
("1777","better-font-awesome_options","a:4:{s:7:\"version\";s:6:\"latest\";s:8:\"minified\";i:1;s:18:\"remove_existing_fa\";s:0:\"\";s:18:\"hide_admin_notices\";s:0:\"\";}","yes"),
("1798","woocommerce_thumbnail_cropping","1:1","yes"),
("1799","woocommerce_thumbnail_cropping_custom_width","2","yes"),
("2146","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:17:\"?????t h??ng ngay\";s:12:\"button_text2\";s:51:\"G???i ??i???n x??c nh???n v?? giao h??ng t???n n??i\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"?????t mua %s\";s:10:\"popup_mess\";s:143:\"B???n vui l??ng nh???p ????ng s??? ??i???n tho???i ????? ch??ng t??i s??? g???i x??c nh???n ????n h??ng tr?????c khi giao h??ng. Xin c???m ??n!\";s:12:\"popup_sucess\";s:631:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">?????t h??ng th??nh c??ng!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">M?? ????n h??ng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">Webdemo s??? li??n h??? v???i b???n trong 12h t???i. C??m ??n b???n ???? cho ch??ng t??i c?? h???i ???????c ph???c v???.\n<strong>Hotline:</strong> </p>\n<p class=\"clearfix\"><strong>Ghi ch??: </strong>????n h??ng ch??? c?? hi???u l???c trong v??ng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"?????t h??ng th???t b???i. Vui l??ng ?????t h??ng l???i. Xin c???m ??n!\";s:17:\"out_of_stock_mess\";s:12:\"H???t h??ng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("2235","_transient_timeout_wpseo_link_table_inaccessible","1588496708","no"),
("2236","_transient_wpseo_link_table_inaccessible","0","no"),
("2237","_transient_timeout_wpseo_meta_table_inaccessible","1588496708","no"),
("2238","_transient_wpseo_meta_table_inaccessible","0","no"),
("2239","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("2242","_transient_timeout_bfa-css","1559552709","no"),
("2243","_transient_bfa-css","a:1:{s:5:\"4.7.0\";s:31000:\"/*!\n *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:\'FontAwesome\';src:url(\'../fonts/fontawesome-webfont.eot?v=4.7.0\');src:url(\'../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0\') format(\'embedded-opentype\'),url(\'../fonts/fontawesome-webfont.woff2?v=4.7.0\') format(\'woff2\'),url(\'../fonts/fontawesome-webfont.woff?v=4.7.0\') format(\'woff\'),url(\'../fonts/fontawesome-webfont.ttf?v=4.7.0\') format(\'truetype\'),url(\'../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular\') format(\'svg\');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)\";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)\";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)\";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)\";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)\";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:\"\\f000\"}.fa-music:before{content:\"\\f001\"}.fa-search:before{content:\"\\f002\"}.fa-envelope-o:before{content:\"\\f003\"}.fa-heart:before{content:\"\\f004\"}.fa-star:before{content:\"\\f005\"}.fa-star-o:before{content:\"\\f006\"}.fa-user:before{content:\"\\f007\"}.fa-film:before{content:\"\\f008\"}.fa-th-large:before{content:\"\\f009\"}.fa-th:before{content:\"\\f00a\"}.fa-th-list:before{content:\"\\f00b\"}.fa-check:before{content:\"\\f00c\"}.fa-remove:before,.fa-close:before,.fa-times:before{content:\"\\f00d\"}.fa-search-plus:before{content:\"\\f00e\"}.fa-search-minus:before{content:\"\\f010\"}.fa-power-off:before{content:\"\\f011\"}.fa-signal:before{content:\"\\f012\"}.fa-gear:before,.fa-cog:before{content:\"\\f013\"}.fa-trash-o:before{content:\"\\f014\"}.fa-home:before{content:\"\\f015\"}.fa-file-o:before{content:\"\\f016\"}.fa-clock-o:before{content:\"\\f017\"}.fa-road:before{content:\"\\f018\"}.fa-download:before{content:\"\\f019\"}.fa-arrow-circle-o-down:before{content:\"\\f01a\"}.fa-arrow-circle-o-up:before{content:\"\\f01b\"}.fa-inbox:before{content:\"\\f01c\"}.fa-play-circle-o:before{content:\"\\f01d\"}.fa-rotate-right:before,.fa-repeat:before{content:\"\\f01e\"}.fa-refresh:before{content:\"\\f021\"}.fa-list-alt:before{content:\"\\f022\"}.fa-lock:before{content:\"\\f023\"}.fa-flag:before{content:\"\\f024\"}.fa-headphones:before{content:\"\\f025\"}.fa-volume-off:before{content:\"\\f026\"}.fa-volume-down:before{content:\"\\f027\"}.fa-volume-up:before{content:\"\\f028\"}.fa-qrcode:before{content:\"\\f029\"}.fa-barcode:before{content:\"\\f02a\"}.fa-tag:before{content:\"\\f02b\"}.fa-tags:before{content:\"\\f02c\"}.fa-book:before{content:\"\\f02d\"}.fa-bookmark:before{content:\"\\f02e\"}.fa-print:before{content:\"\\f02f\"}.fa-camera:before{content:\"\\f030\"}.fa-font:before{content:\"\\f031\"}.fa-bold:before{content:\"\\f032\"}.fa-italic:before{content:\"\\f033\"}.fa-text-height:before{content:\"\\f034\"}.fa-text-width:before{content:\"\\f035\"}.fa-align-left:before{content:\"\\f036\"}.fa-align-center:before{content:\"\\f037\"}.fa-align-right:before{content:\"\\f038\"}.fa-align-justify:before{content:\"\\f039\"}.fa-list:before{content:\"\\f03a\"}.fa-dedent:before,.fa-outdent:before{content:\"\\f03b\"}.fa-indent:before{content:\"\\f03c\"}.fa-video-camera:before{content:\"\\f03d\"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:\"\\f03e\"}.fa-pencil:before{content:\"\\f040\"}.fa-map-marker:before{content:\"\\f041\"}.fa-adjust:before{content:\"\\f042\"}.fa-tint:before{content:\"\\f043\"}.fa-edit:before,.fa-pencil-square-o:before{content:\"\\f044\"}.fa-share-square-o:before{content:\"\\f045\"}.fa-check-square-o:before{content:\"\\f046\"}.fa-arrows:before{content:\"\\f047\"}.fa-step-backward:before{content:\"\\f048\"}.fa-fast-backward:before{content:\"\\f049\"}.fa-backward:before{content:\"\\f04a\"}.fa-play:before{content:\"\\f04b\"}.fa-pause:before{content:\"\\f04c\"}.fa-stop:before{content:\"\\f04d\"}.fa-forward:before{content:\"\\f04e\"}.fa-fast-forward:before{content:\"\\f050\"}.fa-step-forward:before{content:\"\\f051\"}.fa-eject:before{content:\"\\f052\"}.fa-chevron-left:before{content:\"\\f053\"}.fa-chevron-right:before{content:\"\\f054\"}.fa-plus-circle:before{content:\"\\f055\"}.fa-minus-circle:before{content:\"\\f056\"}.fa-times-circle:before{content:\"\\f057\"}.fa-check-circle:before{content:\"\\f058\"}.fa-question-circle:before{content:\"\\f059\"}.fa-info-circle:before{content:\"\\f05a\"}.fa-crosshairs:before{content:\"\\f05b\"}.fa-times-circle-o:before{content:\"\\f05c\"}.fa-check-circle-o:before{content:\"\\f05d\"}.fa-ban:before{content:\"\\f05e\"}.fa-arrow-left:before{content:\"\\f060\"}.fa-arrow-right:before{content:\"\\f061\"}.fa-arrow-up:before{content:\"\\f062\"}.fa-arrow-down:before{content:\"\\f063\"}.fa-mail-forward:before,.fa-share:before{content:\"\\f064\"}.fa-expand:before{content:\"\\f065\"}.fa-compress:before{content:\"\\f066\"}.fa-plus:before{content:\"\\f067\"}.fa-minus:before{content:\"\\f068\"}.fa-asterisk:before{content:\"\\f069\"}.fa-exclamation-circle:before{content:\"\\f06a\"}.fa-gift:before{content:\"\\f06b\"}.fa-leaf:before{content:\"\\f06c\"}.fa-fire:before{content:\"\\f06d\"}.fa-eye:before{content:\"\\f06e\"}.fa-eye-slash:before{content:\"\\f070\"}.fa-warning:before,.fa-exclamation-triangle:before{content:\"\\f071\"}.fa-plane:before{content:\"\\f072\"}.fa-calendar:before{content:\"\\f073\"}.fa-random:before{content:\"\\f074\"}.fa-comment:before{content:\"\\f075\"}.fa-magnet:before{content:\"\\f076\"}.fa-chevron-up:before{content:\"\\f077\"}.fa-chevron-down:before{content:\"\\f078\"}.fa-retweet:before{content:\"\\f079\"}.fa-shopping-cart:before{content:\"\\f07a\"}.fa-folder:before{content:\"\\f07b\"}.fa-folder-open:before{content:\"\\f07c\"}.fa-arrows-v:before{content:\"\\f07d\"}.fa-arrows-h:before{content:\"\\f07e\"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:\"\\f080\"}.fa-twitter-square:before{content:\"\\f081\"}.fa-facebook-square:before{content:\"\\f082\"}.fa-camera-retro:before{content:\"\\f083\"}.fa-key:before{content:\"\\f084\"}.fa-gears:before,.fa-cogs:before{content:\"\\f085\"}.fa-comments:before{content:\"\\f086\"}.fa-thumbs-o-up:before{content:\"\\f087\"}.fa-thumbs-o-down:before{content:\"\\f088\"}.fa-star-half:before{content:\"\\f089\"}.fa-heart-o:before{content:\"\\f08a\"}.fa-sign-out:before{content:\"\\f08b\"}.fa-linkedin-square:before{content:\"\\f08c\"}.fa-thumb-tack:before{content:\"\\f08d\"}.fa-external-link:before{content:\"\\f08e\"}.fa-sign-in:before{content:\"\\f090\"}.fa-trophy:before{content:\"\\f091\"}.fa-github-square:before{content:\"\\f092\"}.fa-upload:before{content:\"\\f093\"}.fa-lemon-o:before{content:\"\\f094\"}.fa-phone:before{content:\"\\f095\"}.fa-square-o:before{content:\"\\f096\"}.fa-bookmark-o:before{content:\"\\f097\"}.fa-phone-square:before{content:\"\\f098\"}.fa-twitter:before{content:\"\\f099\"}.fa-facebook-f:before,.fa-facebook:before{content:\"\\f09a\"}.fa-github:before{content:\"\\f09b\"}.fa-unlock:before{content:\"\\f09c\"}.fa-credit-card:before{content:\"\\f09d\"}.fa-feed:before,.fa-rss:before{content:\"\\f09e\"}.fa-hdd-o:before{content:\"\\f0a0\"}.fa-bullhorn:before{content:\"\\f0a1\"}.fa-bell:before{content:\"\\f0f3\"}.fa-certificate:before{content:\"\\f0a3\"}.fa-hand-o-right:before{content:\"\\f0a4\"}.fa-hand-o-left:before{content:\"\\f0a5\"}.fa-hand-o-up:before{content:\"\\f0a6\"}.fa-hand-o-down:before{content:\"\\f0a7\"}.fa-arrow-circle-left:before{content:\"\\f0a8\"}.fa-arrow-circle-right:before{content:\"\\f0a9\"}.fa-arrow-circle-up:before{content:\"\\f0aa\"}.fa-arrow-circle-down:before{content:\"\\f0ab\"}.fa-globe:before{content:\"\\f0ac\"}.fa-wrench:before{content:\"\\f0ad\"}.fa-tasks:before{content:\"\\f0ae\"}.fa-filter:before{content:\"\\f0b0\"}.fa-briefcase:before{content:\"\\f0b1\"}.fa-arrows-alt:before{content:\"\\f0b2\"}.fa-group:before,.fa-users:before{content:\"\\f0c0\"}.fa-chain:before,.fa-link:before{content:\"\\f0c1\"}.fa-cloud:before{content:\"\\f0c2\"}.fa-flask:before{content:\"\\f0c3\"}.fa-cut:before,.fa-scissors:before{content:\"\\f0c4\"}.fa-copy:before,.fa-files-o:before{content:\"\\f0c5\"}.fa-paperclip:before{content:\"\\f0c6\"}.fa-save:before,.fa-floppy-o:before{content:\"\\f0c7\"}.fa-square:before{content:\"\\f0c8\"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:\"\\f0c9\"}.fa-list-ul:before{content:\"\\f0ca\"}.fa-list-ol:before{content:\"\\f0cb\"}.fa-strikethrough:before{content:\"\\f0cc\"}.fa-underline:before{content:\"\\f0cd\"}.fa-table:before{content:\"\\f0ce\"}.fa-magic:before{content:\"\\f0d0\"}.fa-truck:before{content:\"\\f0d1\"}.fa-pinterest:before{content:\"\\f0d2\"}.fa-pinterest-square:before{content:\"\\f0d3\"}.fa-google-plus-square:before{content:\"\\f0d4\"}.fa-google-plus:before{content:\"\\f0d5\"}.fa-money:before{content:\"\\f0d6\"}.fa-caret-down:before{content:\"\\f0d7\"}.fa-caret-up:before{content:\"\\f0d8\"}.fa-caret-left:before{content:\"\\f0d9\"}.fa-caret-right:before{content:\"\\f0da\"}.fa-columns:before{content:\"\\f0db\"}.fa-unsorted:before,.fa-sort:before{content:\"\\f0dc\"}.fa-sort-down:before,.fa-sort-desc:before{content:\"\\f0dd\"}.fa-sort-up:before,.fa-sort-asc:before{content:\"\\f0de\"}.fa-envelope:before{content:\"\\f0e0\"}.fa-linkedin:before{content:\"\\f0e1\"}.fa-rotate-left:before,.fa-undo:before{content:\"\\f0e2\"}.fa-legal:before,.fa-gavel:before{content:\"\\f0e3\"}.fa-dashboard:before,.fa-tachometer:before{content:\"\\f0e4\"}.fa-comment-o:before{content:\"\\f0e5\"}.fa-comments-o:before{content:\"\\f0e6\"}.fa-flash:before,.fa-bolt:before{content:\"\\f0e7\"}.fa-sitemap:before{content:\"\\f0e8\"}.fa-umbrella:before{content:\"\\f0e9\"}.fa-paste:before,.fa-clipboard:before{content:\"\\f0ea\"}.fa-lightbulb-o:before{content:\"\\f0eb\"}.fa-exchange:before{content:\"\\f0ec\"}.fa-cloud-download:before{content:\"\\f0ed\"}.fa-cloud-upload:before{content:\"\\f0ee\"}.fa-user-md:before{content:\"\\f0f0\"}.fa-stethoscope:before{content:\"\\f0f1\"}.fa-suitcase:before{content:\"\\f0f2\"}.fa-bell-o:before{content:\"\\f0a2\"}.fa-coffee:before{content:\"\\f0f4\"}.fa-cutlery:before{content:\"\\f0f5\"}.fa-file-text-o:before{content:\"\\f0f6\"}.fa-building-o:before{content:\"\\f0f7\"}.fa-hospital-o:before{content:\"\\f0f8\"}.fa-ambulance:before{content:\"\\f0f9\"}.fa-medkit:before{content:\"\\f0fa\"}.fa-fighter-jet:before{content:\"\\f0fb\"}.fa-beer:before{content:\"\\f0fc\"}.fa-h-square:before{content:\"\\f0fd\"}.fa-plus-square:before{content:\"\\f0fe\"}.fa-angle-double-left:before{content:\"\\f100\"}.fa-angle-double-right:before{content:\"\\f101\"}.fa-angle-double-up:before{content:\"\\f102\"}.fa-angle-double-down:before{content:\"\\f103\"}.fa-angle-left:before{content:\"\\f104\"}.fa-angle-right:before{content:\"\\f105\"}.fa-angle-up:before{content:\"\\f106\"}.fa-angle-down:before{content:\"\\f107\"}.fa-desktop:before{content:\"\\f108\"}.fa-laptop:before{content:\"\\f109\"}.fa-tablet:before{content:\"\\f10a\"}.fa-mobile-phone:before,.fa-mobile:before{content:\"\\f10b\"}.fa-circle-o:before{content:\"\\f10c\"}.fa-quote-left:before{content:\"\\f10d\"}.fa-quote-right:before{content:\"\\f10e\"}.fa-spinner:before{content:\"\\f110\"}.fa-circle:before{content:\"\\f111\"}.fa-mail-reply:before,.fa-reply:before{content:\"\\f112\"}.fa-github-alt:before{content:\"\\f113\"}.fa-folder-o:before{content:\"\\f114\"}.fa-folder-open-o:before{content:\"\\f115\"}.fa-smile-o:before{content:\"\\f118\"}.fa-frown-o:before{content:\"\\f119\"}.fa-meh-o:before{content:\"\\f11a\"}.fa-gamepad:before{content:\"\\f11b\"}.fa-keyboard-o:before{content:\"\\f11c\"}.fa-flag-o:before{content:\"\\f11d\"}.fa-flag-checkered:before{content:\"\\f11e\"}.fa-terminal:before{content:\"\\f120\"}.fa-code:before{content:\"\\f121\"}.fa-mail-reply-all:before,.fa-reply-all:before{content:\"\\f122\"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:\"\\f123\"}.fa-location-arrow:before{content:\"\\f124\"}.fa-crop:before{content:\"\\f125\"}.fa-code-fork:before{content:\"\\f126\"}.fa-unlink:before,.fa-chain-broken:before{content:\"\\f127\"}.fa-question:before{content:\"\\f128\"}.fa-info:before{content:\"\\f129\"}.fa-exclamation:before{content:\"\\f12a\"}.fa-superscript:before{content:\"\\f12b\"}.fa-subscript:before{content:\"\\f12c\"}.fa-eraser:before{content:\"\\f12d\"}.fa-puzzle-piece:before{content:\"\\f12e\"}.fa-microphone:before{content:\"\\f130\"}.fa-microphone-slash:before{content:\"\\f131\"}.fa-shield:before{content:\"\\f132\"}.fa-calendar-o:before{content:\"\\f133\"}.fa-fire-extinguisher:before{content:\"\\f134\"}.fa-rocket:before{content:\"\\f135\"}.fa-maxcdn:before{content:\"\\f136\"}.fa-chevron-circle-left:before{content:\"\\f137\"}.fa-chevron-circle-right:before{content:\"\\f138\"}.fa-chevron-circle-up:before{content:\"\\f139\"}.fa-chevron-circle-down:before{content:\"\\f13a\"}.fa-html5:before{content:\"\\f13b\"}.fa-css3:before{content:\"\\f13c\"}.fa-anchor:before{content:\"\\f13d\"}.fa-unlock-alt:before{content:\"\\f13e\"}.fa-bullseye:before{content:\"\\f140\"}.fa-ellipsis-h:before{content:\"\\f141\"}.fa-ellipsis-v:before{content:\"\\f142\"}.fa-rss-square:before{content:\"\\f143\"}.fa-play-circle:before{content:\"\\f144\"}.fa-ticket:before{content:\"\\f145\"}.fa-minus-square:before{content:\"\\f146\"}.fa-minus-square-o:before{content:\"\\f147\"}.fa-level-up:before{content:\"\\f148\"}.fa-level-down:before{content:\"\\f149\"}.fa-check-square:before{content:\"\\f14a\"}.fa-pencil-square:before{content:\"\\f14b\"}.fa-external-link-square:before{content:\"\\f14c\"}.fa-share-square:before{content:\"\\f14d\"}.fa-compass:before{content:\"\\f14e\"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:\"\\f150\"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:\"\\f151\"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:\"\\f152\"}.fa-euro:before,.fa-eur:before{content:\"\\f153\"}.fa-gbp:before{content:\"\\f154\"}.fa-dollar:before,.fa-usd:before{content:\"\\f155\"}.fa-rupee:before,.fa-inr:before{content:\"\\f156\"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:\"\\f157\"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:\"\\f158\"}.fa-won:before,.fa-krw:before{content:\"\\f159\"}.fa-bitcoin:before,.fa-btc:before{content:\"\\f15a\"}.fa-file:before{content:\"\\f15b\"}.fa-file-text:before{content:\"\\f15c\"}.fa-sort-alpha-asc:before{content:\"\\f15d\"}.fa-sort-alpha-desc:before{content:\"\\f15e\"}.fa-sort-amount-asc:before{content:\"\\f160\"}.fa-sort-amount-desc:before{content:\"\\f161\"}.fa-sort-numeric-asc:before{content:\"\\f162\"}.fa-sort-numeric-desc:before{content:\"\\f163\"}.fa-thumbs-up:before{content:\"\\f164\"}.fa-thumbs-down:before{content:\"\\f165\"}.fa-youtube-square:before{content:\"\\f166\"}.fa-youtube:before{content:\"\\f167\"}.fa-xing:before{content:\"\\f168\"}.fa-xing-square:before{content:\"\\f169\"}.fa-youtube-play:before{content:\"\\f16a\"}.fa-dropbox:before{content:\"\\f16b\"}.fa-stack-overflow:before{content:\"\\f16c\"}.fa-instagram:before{content:\"\\f16d\"}.fa-flickr:before{content:\"\\f16e\"}.fa-adn:before{content:\"\\f170\"}.fa-bitbucket:before{content:\"\\f171\"}.fa-bitbucket-square:before{content:\"\\f172\"}.fa-tumblr:before{content:\"\\f173\"}.fa-tumblr-square:before{content:\"\\f174\"}.fa-long-arrow-down:before{content:\"\\f175\"}.fa-long-arrow-up:before{content:\"\\f176\"}.fa-long-arrow-left:before{content:\"\\f177\"}.fa-long-arrow-right:before{content:\"\\f178\"}.fa-apple:before{content:\"\\f179\"}.fa-windows:before{content:\"\\f17a\"}.fa-android:before{content:\"\\f17b\"}.fa-linux:before{content:\"\\f17c\"}.fa-dribbble:before{content:\"\\f17d\"}.fa-skype:before{content:\"\\f17e\"}.fa-foursquare:before{content:\"\\f180\"}.fa-trello:before{content:\"\\f181\"}.fa-female:before{content:\"\\f182\"}.fa-male:before{content:\"\\f183\"}.fa-gittip:before,.fa-gratipay:before{content:\"\\f184\"}.fa-sun-o:before{content:\"\\f185\"}.fa-moon-o:before{content:\"\\f186\"}.fa-archive:before{content:\"\\f187\"}.fa-bug:before{content:\"\\f188\"}.fa-vk:before{content:\"\\f189\"}.fa-weibo:before{content:\"\\f18a\"}.fa-renren:before{content:\"\\f18b\"}.fa-pagelines:before{content:\"\\f18c\"}.fa-stack-exchange:before{content:\"\\f18d\"}.fa-arrow-circle-o-right:before{content:\"\\f18e\"}.fa-arrow-circle-o-left:before{content:\"\\f190\"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:\"\\f191\"}.fa-dot-circle-o:before{content:\"\\f192\"}.fa-wheelchair:before{content:\"\\f193\"}.fa-vimeo-square:before{content:\"\\f194\"}.fa-turkish-lira:before,.fa-try:before{content:\"\\f195\"}.fa-plus-square-o:before{content:\"\\f196\"}.fa-space-shuttle:before{content:\"\\f197\"}.fa-slack:before{content:\"\\f198\"}.fa-envelope-square:before{content:\"\\f199\"}.fa-wordpress:before{content:\"\\f19a\"}.fa-openid:before{content:\"\\f19b\"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:\"\\f19c\"}.fa-mortar-board:before,.fa-graduation-cap:before{content:\"\\f19d\"}.fa-yahoo:before{content:\"\\f19e\"}.fa-google:before{content:\"\\f1a0\"}.fa-reddit:before{content:\"\\f1a1\"}.fa-reddit-square:before{content:\"\\f1a2\"}.fa-stumbleupon-circle:before{content:\"\\f1a3\"}.fa-stumbleupon:before{content:\"\\f1a4\"}.fa-delicious:before{content:\"\\f1a5\"}.fa-digg:before{content:\"\\f1a6\"}.fa-pied-piper-pp:before{content:\"\\f1a7\"}.fa-pied-piper-alt:before{content:\"\\f1a8\"}.fa-drupal:before{content:\"\\f1a9\"}.fa-joomla:before{content:\"\\f1aa\"}.fa-language:before{content:\"\\f1ab\"}.fa-fax:before{content:\"\\f1ac\"}.fa-building:before{content:\"\\f1ad\"}.fa-child:before{content:\"\\f1ae\"}.fa-paw:before{content:\"\\f1b0\"}.fa-spoon:before{content:\"\\f1b1\"}.fa-cube:before{content:\"\\f1b2\"}.fa-cubes:before{content:\"\\f1b3\"}.fa-behance:before{content:\"\\f1b4\"}.fa-behance-square:before{content:\"\\f1b5\"}.fa-steam:before{content:\"\\f1b6\"}.fa-steam-square:before{content:\"\\f1b7\"}.fa-recycle:before{content:\"\\f1b8\"}.fa-automobile:before,.fa-car:before{content:\"\\f1b9\"}.fa-cab:before,.fa-taxi:before{content:\"\\f1ba\"}.fa-tree:before{content:\"\\f1bb\"}.fa-spotify:before{content:\"\\f1bc\"}.fa-deviantart:before{content:\"\\f1bd\"}.fa-soundcloud:before{content:\"\\f1be\"}.fa-database:before{content:\"\\f1c0\"}.fa-file-pdf-o:before{content:\"\\f1c1\"}.fa-file-word-o:before{content:\"\\f1c2\"}.fa-file-excel-o:before{content:\"\\f1c3\"}.fa-file-powerpoint-o:before{content:\"\\f1c4\"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:\"\\f1c5\"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:\"\\f1c6\"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:\"\\f1c7\"}.fa-file-movie-o:before,.fa-file-video-o:before{content:\"\\f1c8\"}.fa-file-code-o:before{content:\"\\f1c9\"}.fa-vine:before{content:\"\\f1ca\"}.fa-codepen:before{content:\"\\f1cb\"}.fa-jsfiddle:before{content:\"\\f1cc\"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:\"\\f1cd\"}.fa-circle-o-notch:before{content:\"\\f1ce\"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:\"\\f1d0\"}.fa-ge:before,.fa-empire:before{content:\"\\f1d1\"}.fa-git-square:before{content:\"\\f1d2\"}.fa-git:before{content:\"\\f1d3\"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:\"\\f1d4\"}.fa-tencent-weibo:before{content:\"\\f1d5\"}.fa-qq:before{content:\"\\f1d6\"}.fa-wechat:before,.fa-weixin:before{content:\"\\f1d7\"}.fa-send:before,.fa-paper-plane:before{content:\"\\f1d8\"}.fa-send-o:before,.fa-paper-plane-o:before{content:\"\\f1d9\"}.fa-history:before{content:\"\\f1da\"}.fa-circle-thin:before{content:\"\\f1db\"}.fa-header:before{content:\"\\f1dc\"}.fa-paragraph:before{content:\"\\f1dd\"}.fa-sliders:before{content:\"\\f1de\"}.fa-share-alt:before{content:\"\\f1e0\"}.fa-share-alt-square:before{content:\"\\f1e1\"}.fa-bomb:before{content:\"\\f1e2\"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:\"\\f1e3\"}.fa-tty:before{content:\"\\f1e4\"}.fa-binoculars:before{content:\"\\f1e5\"}.fa-plug:before{content:\"\\f1e6\"}.fa-slideshare:before{content:\"\\f1e7\"}.fa-twitch:before{content:\"\\f1e8\"}.fa-yelp:before{content:\"\\f1e9\"}.fa-newspaper-o:before{content:\"\\f1ea\"}.fa-wifi:before{content:\"\\f1eb\"}.fa-calculator:before{content:\"\\f1ec\"}.fa-paypal:before{content:\"\\f1ed\"}.fa-google-wallet:before{content:\"\\f1ee\"}.fa-cc-visa:before{content:\"\\f1f0\"}.fa-cc-mastercard:before{content:\"\\f1f1\"}.fa-cc-discover:before{content:\"\\f1f2\"}.fa-cc-amex:before{content:\"\\f1f3\"}.fa-cc-paypal:before{content:\"\\f1f4\"}.fa-cc-stripe:before{content:\"\\f1f5\"}.fa-bell-slash:before{content:\"\\f1f6\"}.fa-bell-slash-o:before{content:\"\\f1f7\"}.fa-trash:before{content:\"\\f1f8\"}.fa-copyright:before{content:\"\\f1f9\"}.fa-at:before{content:\"\\f1fa\"}.fa-eyedropper:before{content:\"\\f1fb\"}.fa-paint-brush:before{content:\"\\f1fc\"}.fa-birthday-cake:before{content:\"\\f1fd\"}.fa-area-chart:before{content:\"\\f1fe\"}.fa-pie-chart:before{content:\"\\f200\"}.fa-line-chart:before{content:\"\\f201\"}.fa-lastfm:before{content:\"\\f202\"}.fa-lastfm-square:before{content:\"\\f203\"}.fa-toggle-off:before{content:\"\\f204\"}.fa-toggle-on:before{content:\"\\f205\"}.fa-bicycle:before{content:\"\\f206\"}.fa-bus:before{content:\"\\f207\"}.fa-ioxhost:before{content:\"\\f208\"}.fa-angellist:before{content:\"\\f209\"}.fa-cc:before{content:\"\\f20a\"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:\"\\f20b\"}.fa-meanpath:before{content:\"\\f20c\"}.fa-buysellads:before{content:\"\\f20d\"}.fa-connectdevelop:before{content:\"\\f20e\"}.fa-dashcube:before{content:\"\\f210\"}.fa-forumbee:before{content:\"\\f211\"}.fa-leanpub:before{content:\"\\f212\"}.fa-sellsy:before{content:\"\\f213\"}.fa-shirtsinbulk:before{content:\"\\f214\"}.fa-simplybuilt:before{content:\"\\f215\"}.fa-skyatlas:before{content:\"\\f216\"}.fa-cart-plus:before{content:\"\\f217\"}.fa-cart-arrow-down:before{content:\"\\f218\"}.fa-diamond:before{content:\"\\f219\"}.fa-ship:before{content:\"\\f21a\"}.fa-user-secret:before{content:\"\\f21b\"}.fa-motorcycle:before{content:\"\\f21c\"}.fa-street-view:before{content:\"\\f21d\"}.fa-heartbeat:before{content:\"\\f21e\"}.fa-venus:before{content:\"\\f221\"}.fa-mars:before{content:\"\\f222\"}.fa-mercury:before{content:\"\\f223\"}.fa-intersex:before,.fa-transgender:before{content:\"\\f224\"}.fa-transgender-alt:before{content:\"\\f225\"}.fa-venus-double:before{content:\"\\f226\"}.fa-mars-double:before{content:\"\\f227\"}.fa-venus-mars:before{content:\"\\f228\"}.fa-mars-stroke:before{content:\"\\f229\"}.fa-mars-stroke-v:before{content:\"\\f22a\"}.fa-mars-stroke-h:before{content:\"\\f22b\"}.fa-neuter:before{content:\"\\f22c\"}.fa-genderless:before{content:\"\\f22d\"}.fa-facebook-official:before{content:\"\\f230\"}.fa-pinterest-p:before{content:\"\\f231\"}.fa-whatsapp:before{content:\"\\f232\"}.fa-server:before{content:\"\\f233\"}.fa-user-plus:before{content:\"\\f234\"}.fa-user-times:before{content:\"\\f235\"}.fa-hotel:before,.fa-bed:before{content:\"\\f236\"}.fa-viacoin:before{content:\"\\f237\"}.fa-train:before{content:\"\\f238\"}.fa-subway:before{content:\"\\f239\"}.fa-medium:before{content:\"\\f23a\"}.fa-yc:before,.fa-y-combinator:before{content:\"\\f23b\"}.fa-optin-monster:before{content:\"\\f23c\"}.fa-opencart:before{content:\"\\f23d\"}.fa-expeditedssl:before{content:\"\\f23e\"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:\"\\f240\"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:\"\\f241\"}.fa-battery-2:before,.fa-battery-half:before{content:\"\\f242\"}.fa-battery-1:before,.fa-battery-quarter:before{content:\"\\f243\"}.fa-battery-0:before,.fa-battery-empty:before{content:\"\\f244\"}.fa-mouse-pointer:before{content:\"\\f245\"}.fa-i-cursor:before{content:\"\\f246\"}.fa-object-group:before{content:\"\\f247\"}.fa-object-ungroup:before{content:\"\\f248\"}.fa-sticky-note:before{content:\"\\f249\"}.fa-sticky-note-o:before{content:\"\\f24a\"}.fa-cc-jcb:before{content:\"\\f24b\"}.fa-cc-diners-club:before{content:\"\\f24c\"}.fa-clone:before{content:\"\\f24d\"}.fa-balance-scale:before{content:\"\\f24e\"}.fa-hourglass-o:before{content:\"\\f250\"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:\"\\f251\"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:\"\\f252\"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:\"\\f253\"}.fa-hourglass:before{content:\"\\f254\"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:\"\\f255\"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:\"\\f256\"}.fa-hand-scissors-o:before{content:\"\\f257\"}.fa-hand-lizard-o:before{content:\"\\f258\"}.fa-hand-spock-o:before{content:\"\\f259\"}.fa-hand-pointer-o:before{content:\"\\f25a\"}.fa-hand-peace-o:before{content:\"\\f25b\"}.fa-trademark:before{content:\"\\f25c\"}.fa-registered:before{content:\"\\f25d\"}.fa-creative-commons:before{content:\"\\f25e\"}.fa-gg:before{content:\"\\f260\"}.fa-gg-circle:before{content:\"\\f261\"}.fa-tripadvisor:before{content:\"\\f262\"}.fa-odnoklassniki:before{content:\"\\f263\"}.fa-odnoklassniki-square:before{content:\"\\f264\"}.fa-get-pocket:before{content:\"\\f265\"}.fa-wikipedia-w:before{content:\"\\f266\"}.fa-safari:before{content:\"\\f267\"}.fa-chrome:before{content:\"\\f268\"}.fa-firefox:before{content:\"\\f269\"}.fa-opera:before{content:\"\\f26a\"}.fa-internet-explorer:before{content:\"\\f26b\"}.fa-tv:before,.fa-television:before{content:\"\\f26c\"}.fa-contao:before{content:\"\\f26d\"}.fa-500px:before{content:\"\\f26e\"}.fa-amazon:before{content:\"\\f270\"}.fa-calendar-plus-o:before{content:\"\\f271\"}.fa-calendar-minus-o:before{content:\"\\f272\"}.fa-calendar-times-o:before{content:\"\\f273\"}.fa-calendar-check-o:before{content:\"\\f274\"}.fa-industry:before{content:\"\\f275\"}.fa-map-pin:before{content:\"\\f276\"}.fa-map-signs:before{content:\"\\f277\"}.fa-map-o:before{content:\"\\f278\"}.fa-map:before{content:\"\\f279\"}.fa-commenting:before{content:\"\\f27a\"}.fa-commenting-o:before{content:\"\\f27b\"}.fa-houzz:before{content:\"\\f27c\"}.fa-vimeo:before{content:\"\\f27d\"}.fa-black-tie:before{content:\"\\f27e\"}.fa-fonticons:before{content:\"\\f280\"}.fa-reddit-alien:before{content:\"\\f281\"}.fa-edge:before{content:\"\\f282\"}.fa-credit-card-alt:before{content:\"\\f283\"}.fa-codiepie:before{content:\"\\f284\"}.fa-modx:before{content:\"\\f285\"}.fa-fort-awesome:before{content:\"\\f286\"}.fa-usb:before{content:\"\\f287\"}.fa-product-hunt:before{content:\"\\f288\"}.fa-mixcloud:before{content:\"\\f289\"}.fa-scribd:before{content:\"\\f28a\"}.fa-pause-circle:before{content:\"\\f28b\"}.fa-pause-circle-o:before{content:\"\\f28c\"}.fa-stop-circle:before{content:\"\\f28d\"}.fa-stop-circle-o:before{content:\"\\f28e\"}.fa-shopping-bag:before{content:\"\\f290\"}.fa-shopping-basket:before{content:\"\\f291\"}.fa-hashtag:before{content:\"\\f292\"}.fa-bluetooth:before{content:\"\\f293\"}.fa-bluetooth-b:before{content:\"\\f294\"}.fa-percent:before{content:\"\\f295\"}.fa-gitlab:before{content:\"\\f296\"}.fa-wpbeginner:before{content:\"\\f297\"}.fa-wpforms:before{content:\"\\f298\"}.fa-envira:before{content:\"\\f299\"}.fa-universal-access:before{content:\"\\f29a\"}.fa-wheelchair-alt:before{content:\"\\f29b\"}.fa-question-circle-o:before{content:\"\\f29c\"}.fa-blind:before{content:\"\\f29d\"}.fa-audio-description:before{content:\"\\f29e\"}.fa-volume-control-phone:before{content:\"\\f2a0\"}.fa-braille:before{content:\"\\f2a1\"}.fa-assistive-listening-systems:before{content:\"\\f2a2\"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:\"\\f2a3\"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:\"\\f2a4\"}.fa-glide:before{content:\"\\f2a5\"}.fa-glide-g:before{content:\"\\f2a6\"}.fa-signing:before,.fa-sign-language:before{content:\"\\f2a7\"}.fa-low-vision:before{content:\"\\f2a8\"}.fa-viadeo:before{content:\"\\f2a9\"}.fa-viadeo-square:before{content:\"\\f2aa\"}.fa-snapchat:before{content:\"\\f2ab\"}.fa-snapchat-ghost:before{content:\"\\f2ac\"}.fa-snapchat-square:before{content:\"\\f2ad\"}.fa-pied-piper:before{content:\"\\f2ae\"}.fa-first-order:before{content:\"\\f2b0\"}.fa-yoast:before{content:\"\\f2b1\"}.fa-themeisle:before{content:\"\\f2b2\"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:\"\\f2b3\"}.fa-fa:before,.fa-font-awesome:before{content:\"\\f2b4\"}.fa-handshake-o:before{content:\"\\f2b5\"}.fa-envelope-open:before{content:\"\\f2b6\"}.fa-envelope-open-o:before{content:\"\\f2b7\"}.fa-linode:before{content:\"\\f2b8\"}.fa-address-book:before{content:\"\\f2b9\"}.fa-address-book-o:before{content:\"\\f2ba\"}.fa-vcard:before,.fa-address-card:before{content:\"\\f2bb\"}.fa-vcard-o:before,.fa-address-card-o:before{content:\"\\f2bc\"}.fa-user-circle:before{content:\"\\f2bd\"}.fa-user-circle-o:before{content:\"\\f2be\"}.fa-user-o:before{content:\"\\f2c0\"}.fa-id-badge:before{content:\"\\f2c1\"}.fa-drivers-license:before,.fa-id-card:before{content:\"\\f2c2\"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:\"\\f2c3\"}.fa-quora:before{content:\"\\f2c4\"}.fa-free-code-camp:before{content:\"\\f2c5\"}.fa-telegram:before{content:\"\\f2c6\"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:\"\\f2c7\"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:\"\\f2c8\"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:\"\\f2c9\"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:\"\\f2ca\"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:\"\\f2cb\"}.fa-shower:before{content:\"\\f2cc\"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:\"\\f2cd\"}.fa-podcast:before{content:\"\\f2ce\"}.fa-window-maximize:before{content:\"\\f2d0\"}.fa-window-minimize:before{content:\"\\f2d1\"}.fa-window-restore:before{content:\"\\f2d2\"}.fa-times-rectangle:before,.fa-window-close:before{content:\"\\f2d3\"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:\"\\f2d4\"}.fa-bandcamp:before{content:\"\\f2d5\"}.fa-grav:before{content:\"\\f2d6\"}.fa-etsy:before{content:\"\\f2d7\"}.fa-imdb:before{content:\"\\f2d8\"}.fa-ravelry:before{content:\"\\f2d9\"}.fa-eercast:before{content:\"\\f2da\"}.fa-microchip:before{content:\"\\f2db\"}.fa-snowflake-o:before{content:\"\\f2dc\"}.fa-superpowers:before{content:\"\\f2dd\"}.fa-wpexplorer:before{content:\"\\f2de\"}.fa-meetup:before{content:\"\\f2e0\"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}\n\";}","no"),
("2273","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("2274","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes");
INSERT INTO gdd_options VALUES
("2401","db_upgraded","","yes"),
("2419","can_compress_scripts","0","no"),
("2429","dbprefix_old_dbprefix","sd_","yes"),
("2430","dbprefix_new","gdd_","yes"),
("2479","_transient_timeout_wc_low_stock_count","1559620692","no"),
("2480","_transient_wc_low_stock_count","0","no"),
("2481","_transient_timeout_wc_outofstock_count","1559620692","no"),
("2482","_transient_wc_outofstock_count","0","no"),
("2551","_transient_shipping-transient-version","1557133962","yes"),
("2556","_transient_timeout_wc_shipping_method_count_1_1557133962","1559730410","no"),
("2557","_transient_wc_shipping_method_count_1_1557133962","0","no"),
("2573","recovery_keys","a:0:{}","yes"),
("2595","_transient_timeout_wc_term_counts","1560476260","no"),
("2596","_transient_wc_term_counts","a:6:{i:50;s:1:\"1\";i:53;s:1:\"2\";i:51;s:1:\"1\";i:48;s:1:\"2\";i:49;s:1:\"4\";i:52;s:1:\"2\";}","no"),
("2688","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("2691","woocommerce_allow_bulk_remove_personal_data","no","no"),
("2692","woocommerce_show_marketplace_suggestions","yes","no"),
("2693","woocommerce_version","3.6.2","yes"),
("2695","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("2700","_transient_timeout_wc_shipping_method_count_legacy","1560046466","no"),
("2701","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557133962\";s:5:\"value\";i:0;}","no"),
("2778","_transient_timeout_wc_related_464","1558014841","no"),
("2779","_transient_wc_related_464","a:1:{s:52:\"limit=12&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=464\";a:1:{i:0;s:3:\"444\";}}","no"),
("2844","_transient_timeout_wc_related_438","1558015027","no"),
("2845","_transient_wc_related_438","a:1:{s:52:\"limit=12&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=438\";a:0:{}}","no"),
("2884","_transient_timeout_wc_related_436","1558090658","no"),
("2885","_transient_wc_related_436","a:1:{s:52:\"limit=12&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=436\";a:3:{i:0;s:3:\"428\";i:1;s:3:\"430\";i:2;s:3:\"432\";}}","no"),
("2890","_transient_timeout_wc_related_430","1558096531","no"),
("2891","_transient_wc_related_430","a:1:{s:52:\"limit=12&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=430\";a:3:{i:0;s:3:\"428\";i:1;s:3:\"432\";i:2;s:3:\"436\";}}","no"),
("2894","_site_transient_timeout_theme_roots","1558016139","no"),
("2895","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:14:\"sua-dien-thoai\";s:7:\"/themes\";}","no"),
("2896","_transient_timeout_wc_related_442","1558100749","no"),
("2897","_transient_wc_related_442","a:1:{s:52:\"limit=12&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=442\";a:1:{i:0;s:3:\"462\";}}","no"),
("2898","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558014352;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("2899","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558014353;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.1\";s:14:\"sua-dien-thoai\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("2900","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558014354;s:7:\"checked\";a:5:{s:43:\"better-font-awesome/better-font-awesome.php\";s:5:\"1.7.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:43:\"better-font-awesome/better-font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/better-font-awesome\";s:4:\"slug\";s:19:\"better-font-awesome\";s:6:\"plugin\";s:43:\"better-font-awesome/better-font-awesome.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/better-font-awesome/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/better-font-awesome.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/better-font-awesome/assets/icon-256x256.png?rev=1186438\";s:2:\"1x\";s:72:\"https://ps.w.org/better-font-awesome/assets/icon-128x128.png?rev=1207071\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/better-font-awesome/assets/banner-1544x500.jpg?rev=887838\";s:2:\"1x\";s:73:\"https://ps.w.org/better-font-awesome/assets/banner-772x250.jpg?rev=887838\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("2902","_transient_timeout_wc_related_428","1558108598","no"),
("2903","_transient_wc_related_428","a:1:{s:52:\"limit=12&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=428\";a:3:{i:0;s:3:\"430\";i:1;s:3:\"432\";i:2;s:3:\"436\";}}","no"),
("2905","_transient_timeout_bfa-api-versions","1558077067","no"),
("2906","_transient_bfa-api-versions","O:8:\"stdClass\":2:{s:8:\"versions\";a:20:{i:0;s:5:\"4.7.0\";i:1;s:5:\"4.6.3\";i:2;s:5:\"4.6.2\";i:3;s:5:\"4.6.1\";i:4;s:5:\"4.6.0\";i:5;s:5:\"4.5.0\";i:6;s:5:\"4.4.0\";i:7;s:5:\"4.3.0\";i:8;s:5:\"4.2.0\";i:9;s:5:\"4.1.0\";i:10;s:5:\"4.0.3\";i:11;s:5:\"4.0.1\";i:12;s:5:\"4.0.0\";i:13;s:5:\"3.2.1\";i:14;s:5:\"3.2.0\";i:15;s:5:\"3.1.1\";i:16;s:5:\"3.0.2\";i:17;s:3:\"3.0\";i:18;s:3:\"2.0\";i:19;s:5:\"1.0.0\";}s:11:\"lastversion\";s:5:\"4.7.0\";}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1467 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("19","2","_edit_lock","1547643556:1"),
("20","2","_edit_last","1"),
("21","2","_footer","normal"),
("22","14","_edit_last","1"),
("23","14","_footer","normal"),
("24","14","_wp_page_template","page-right-sidebar.php"),
("25","14","_edit_lock","1547699858:1"),
("26","16","_edit_last","1"),
("27","16","_footer","normal"),
("28","16","_wp_page_template","page-blank.php"),
("29","16","_edit_lock","1547699001:1"),
("30","18","_menu_item_type","post_type"),
("31","18","_menu_item_menu_item_parent","0"),
("32","18","_menu_item_object_id","16"),
("33","18","_menu_item_object","page"),
("34","18","_menu_item_target",""),
("35","18","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("36","18","_menu_item_xfn",""),
("37","18","_menu_item_url",""),
("39","19","_menu_item_type","post_type"),
("40","19","_menu_item_menu_item_parent","0"),
("41","19","_menu_item_object_id","14"),
("42","19","_menu_item_object","page"),
("43","19","_menu_item_target",""),
("44","19","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("45","19","_menu_item_xfn",""),
("46","19","_menu_item_url",""),
("48","20","_menu_item_type","post_type"),
("49","20","_menu_item_menu_item_parent","0"),
("50","20","_menu_item_object_id","2"),
("51","20","_menu_item_object","page"),
("52","20","_menu_item_target",""),
("53","20","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("54","20","_menu_item_xfn",""),
("55","20","_menu_item_url",""),
("57","21","_menu_item_type","taxonomy"),
("58","21","_menu_item_menu_item_parent","0"),
("59","21","_menu_item_object_id","2"),
("60","21","_menu_item_object","category"),
("61","21","_menu_item_target",""),
("62","21","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("63","21","_menu_item_xfn",""),
("64","21","_menu_item_url",""),
("66","22","_menu_item_type","taxonomy"),
("67","22","_menu_item_menu_item_parent","21"),
("68","22","_menu_item_object_id","14"),
("69","22","_menu_item_object","category"),
("70","22","_menu_item_target",""),
("71","22","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("72","22","_menu_item_xfn",""),
("73","22","_menu_item_url",""),
("75","23","_menu_item_type","taxonomy"),
("76","23","_menu_item_menu_item_parent","21"),
("77","23","_menu_item_object_id","15"),
("78","23","_menu_item_object","category"),
("79","23","_menu_item_target",""),
("80","23","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("81","23","_menu_item_xfn",""),
("82","23","_menu_item_url",""),
("84","24","_menu_item_type","taxonomy"),
("85","24","_menu_item_menu_item_parent","21"),
("86","24","_menu_item_object_id","19"),
("87","24","_menu_item_object","category"),
("88","24","_menu_item_target",""),
("89","24","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("90","24","_menu_item_xfn",""),
("91","24","_menu_item_url",""),
("93","25","_menu_item_type","taxonomy"),
("94","25","_menu_item_menu_item_parent","21"),
("95","25","_menu_item_object_id","17"),
("96","25","_menu_item_object","category"),
("97","25","_menu_item_target",""),
("98","25","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("99","25","_menu_item_xfn",""),
("100","25","_menu_item_url",""),
("102","26","_menu_item_type","taxonomy"),
("103","26","_menu_item_menu_item_parent","21"),
("104","26","_menu_item_object_id","16"),
("105","26","_menu_item_object","category"),
("106","26","_menu_item_target",""),
("107","26","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("108","26","_menu_item_xfn",""),
("109","26","_menu_item_url",""),
("111","27","_menu_item_type","taxonomy"),
("112","27","_menu_item_menu_item_parent","21"),
("113","27","_menu_item_object_id","18"),
("114","27","_menu_item_object","category"),
("115","27","_menu_item_target",""),
("116","27","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("117","27","_menu_item_xfn",""),
("118","27","_menu_item_url",""),
("120","28","_menu_item_type","taxonomy"),
("121","28","_menu_item_menu_item_parent","21"),
("122","28","_menu_item_object_id","13"),
("123","28","_menu_item_object","category"),
("124","28","_menu_item_target",""),
("125","28","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("126","28","_menu_item_xfn","");
INSERT INTO gdd_postmeta VALUES
("127","28","_menu_item_url",""),
("138","30","_menu_item_type","taxonomy"),
("139","30","_menu_item_menu_item_parent","0"),
("140","30","_menu_item_object_id","1"),
("141","30","_menu_item_object","category"),
("142","30","_menu_item_target",""),
("143","30","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("144","30","_menu_item_xfn",""),
("145","30","_menu_item_url",""),
("147","31","_menu_item_type","taxonomy"),
("148","31","_menu_item_menu_item_parent","30"),
("149","31","_menu_item_object_id","12"),
("150","31","_menu_item_object","category"),
("151","31","_menu_item_target",""),
("152","31","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("153","31","_menu_item_xfn",""),
("154","31","_menu_item_url",""),
("156","32","_menu_item_type","taxonomy"),
("157","32","_menu_item_menu_item_parent","30"),
("158","32","_menu_item_object_id","6"),
("159","32","_menu_item_object","category"),
("160","32","_menu_item_target",""),
("161","32","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("162","32","_menu_item_xfn",""),
("163","32","_menu_item_url",""),
("165","33","_menu_item_type","taxonomy"),
("166","33","_menu_item_menu_item_parent","30"),
("167","33","_menu_item_object_id","5"),
("168","33","_menu_item_object","category"),
("169","33","_menu_item_target",""),
("170","33","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("171","33","_menu_item_xfn",""),
("172","33","_menu_item_url",""),
("174","34","_menu_item_type","taxonomy"),
("175","34","_menu_item_menu_item_parent","30"),
("176","34","_menu_item_object_id","11"),
("177","34","_menu_item_object","category"),
("178","34","_menu_item_target",""),
("179","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("180","34","_menu_item_xfn",""),
("181","34","_menu_item_url",""),
("183","35","_menu_item_type","taxonomy"),
("184","35","_menu_item_menu_item_parent","30"),
("185","35","_menu_item_object_id","8"),
("186","35","_menu_item_object","category"),
("187","35","_menu_item_target",""),
("188","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("189","35","_menu_item_xfn",""),
("190","35","_menu_item_url",""),
("192","36","_menu_item_type","taxonomy"),
("193","36","_menu_item_menu_item_parent","30"),
("194","36","_menu_item_object_id","7"),
("195","36","_menu_item_object","category"),
("196","36","_menu_item_target",""),
("197","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("198","36","_menu_item_xfn",""),
("199","36","_menu_item_url",""),
("201","37","_menu_item_type","taxonomy"),
("202","37","_menu_item_menu_item_parent","30"),
("203","37","_menu_item_object_id","9"),
("204","37","_menu_item_object","category"),
("205","37","_menu_item_target",""),
("206","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("207","37","_menu_item_xfn",""),
("208","37","_menu_item_url",""),
("210","38","_menu_item_type","taxonomy"),
("211","38","_menu_item_menu_item_parent","30"),
("212","38","_menu_item_object_id","10"),
("213","38","_menu_item_object","category"),
("214","38","_menu_item_target",""),
("215","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("216","38","_menu_item_xfn",""),
("217","38","_menu_item_url",""),
("219","39","_menu_item_type","taxonomy"),
("220","39","_menu_item_menu_item_parent","0"),
("221","39","_menu_item_object_id","4"),
("222","39","_menu_item_object","category"),
("223","39","_menu_item_target",""),
("224","39","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("225","39","_menu_item_xfn",""),
("226","39","_menu_item_url",""),
("266","2","_thumbnail_id",""),
("269","61","_wp_attached_file","2019/01/slider1.jpg"),
("270","61","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1980;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2019/01/slider1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slider1-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider1-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x233.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x310.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("273","66","_wp_attached_file","2019/01/slider3.jpg"),
("274","66","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1980;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2019/01/slider3.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slider3-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider3-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x233.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x310.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("285","74","_wp_attached_file","2019/01/logo-giuseart.png"),
("286","74","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:83;s:4:\"file\";s:25:\"2019/01/logo-giuseart.png\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"logo-giuseart-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-100x83.png\";s:5:\"width\";i:100;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-150x83.png\";s:5:\"width\";i:150;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("291","77","_edit_last","1"),
("292","77","_edit_lock","1547645988:1"),
("294","87","_wp_attached_file","2019/01/icon-1.png"),
("295","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:31;s:6:\"height\";i:31;s:4:\"file\";s:18:\"2019/01/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("296","88","_wp_attached_file","2019/01/icon-2.png"),
("297","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:18:\"2019/01/icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("298","89","_wp_attached_file","2019/01/icon-3.png"),
("299","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:31;s:6:\"height\";i:31;s:4:\"file\";s:18:\"2019/01/icon-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("304","77","_thumbnail_id",""),
("327","113","_wp_attached_file","2019/01/icon-11.png"),
("328","113","_wp_attachment_metadata","a:5:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:19:\"2019/01/icon-11.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("329","114","_wp_attached_file","2019/01/icon-22.png");
INSERT INTO gdd_postmeta VALUES
("330","114","_wp_attachment_metadata","a:5:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:19:\"2019/01/icon-22.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("331","115","_wp_attached_file","2019/01/icon-33.png"),
("332","115","_wp_attachment_metadata","a:5:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:19:\"2019/01/icon-33.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("333","116","_wp_attached_file","2019/01/icon-44.png"),
("334","116","_wp_attachment_metadata","a:5:{s:5:\"width\";i:56;s:6:\"height\";i:56;s:4:\"file\";s:19:\"2019/01/icon-44.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("348","138","_wp_attached_file","2019/01/cropped-logo-giuseart.png"),
("349","138","_wp_attachment_context","site-icon"),
("350","138","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2019/01/cropped-logo-giuseart.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo-giuseart-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo-giuseart-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("358","142","_edit_last","1"),
("359","142","_edit_lock","1547649045:1"),
("360","143","_wp_attached_file","2019/01/thay-pin-iphone-viendidong-1-370x194.jpg"),
("361","143","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:194;s:4:\"file\";s:48:\"2019/01/thay-pin-iphone-viendidong-1-370x194.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"thay-pin-iphone-viendidong-1-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"thay-pin-iphone-viendidong-1-370x194-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"thay-pin-iphone-viendidong-1-370x194-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"thay-pin-iphone-viendidong-1-370x194-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"thay-pin-iphone-viendidong-1-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("362","142","_thumbnail_id","143"),
("365","145","_edit_last","1"),
("366","145","_edit_lock","1547649097:1"),
("367","146","_wp_attached_file","2019/01/thay-man-hinh-dien-thoai-iphone-viendidong-370x194.jpg"),
("368","146","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:194;s:4:\"file\";s:62:\"2019/01/thay-man-hinh-dien-thoai-iphone-viendidong-370x194.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:62:\"thay-man-hinh-dien-thoai-iphone-viendidong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:62:\"thay-man-hinh-dien-thoai-iphone-viendidong-370x194-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:62:\"thay-man-hinh-dien-thoai-iphone-viendidong-370x194-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"thay-man-hinh-dien-thoai-iphone-viendidong-370x194-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"thay-man-hinh-dien-thoai-iphone-viendidong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("369","145","_thumbnail_id","146"),
("372","148","_edit_last","1"),
("373","148","_edit_lock","1547649148:1"),
("374","149","_wp_attached_file","2019/01/thay-man-hinh-dien-thoai-samsung-viendidong-370x194.jpg"),
("375","149","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:194;s:4:\"file\";s:63:\"2019/01/thay-man-hinh-dien-thoai-samsung-viendidong-370x194.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:63:\"thay-man-hinh-dien-thoai-samsung-viendidong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:63:\"thay-man-hinh-dien-thoai-samsung-viendidong-370x194-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:63:\"thay-man-hinh-dien-thoai-samsung-viendidong-370x194-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"thay-man-hinh-dien-thoai-samsung-viendidong-370x194-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"thay-man-hinh-dien-thoai-samsung-viendidong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("376","148","_thumbnail_id","149"),
("379","151","_edit_last","1"),
("380","151","_edit_lock","1547649203:1"),
("381","152","_wp_attached_file","2019/01/thay-man-hinh-lg-vien-di-dong-370x194.jpg"),
("382","152","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:194;s:4:\"file\";s:49:\"2019/01/thay-man-hinh-lg-vien-di-dong-370x194.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"thay-man-hinh-lg-vien-di-dong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"thay-man-hinh-lg-vien-di-dong-370x194-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"thay-man-hinh-lg-vien-di-dong-370x194-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"thay-man-hinh-lg-vien-di-dong-370x194-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"thay-man-hinh-lg-vien-di-dong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("383","151","_thumbnail_id","152"),
("386","154","_edit_last","1"),
("387","154","_edit_lock","1547649258:1"),
("388","155","_wp_attached_file","2019/01/thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194.jpg"),
("389","155","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:194;s:4:\"file\";s:66:\"2019/01/thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:66:\"thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:66:\"thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:66:\"thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("390","154","_thumbnail_id","155"),
("393","157","_edit_last","1"),
("394","157","_edit_lock","1547649296:1"),
("395","158","_wp_attached_file","2019/01/thay-mat-kinh-tai-vien-didong-370x194.jpg"),
("396","158","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:194;s:4:\"file\";s:49:\"2019/01/thay-mat-kinh-tai-vien-didong-370x194.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"thay-mat-kinh-tai-vien-didong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"thay-mat-kinh-tai-vien-didong-370x194-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"thay-mat-kinh-tai-vien-didong-370x194-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"thay-mat-kinh-tai-vien-didong-370x194-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"thay-mat-kinh-tai-vien-didong-370x194-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("397","157","_thumbnail_id","158"),
("424","177","_edit_last","1"),
("425","177","_edit_lock","1547650216:1"),
("426","178","_wp_attached_file","2019/01/chuong-trinh-dao-tao-ep-co-smartphone-viendidong.jpg"),
("427","178","_wp_attachment_metadata","a:5:{s:5:\"width\";i:780;s:6:\"height\";i:520;s:4:\"file\";s:60:\"2019/01/chuong-trinh-dao-tao-ep-co-smartphone-viendidong.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:60:\"chuong-trinh-dao-tao-ep-co-smartphone-viendidong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:60:\"chuong-trinh-dao-tao-ep-co-smartphone-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:60:\"chuong-trinh-dao-tao-ep-co-smartphone-viendidong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"chuong-trinh-dao-tao-ep-co-smartphone-viendidong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"chuong-trinh-dao-tao-ep-co-smartphone-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"chuong-trinh-dao-tao-ep-co-smartphone-viendidong-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("428","177","_thumbnail_id","178"),
("431","180","_edit_last","1"),
("432","180","_edit_lock","1547650266:1"),
("433","181","_wp_attached_file","2019/01/gio-thu-hanh-ep-kinh-smartphone-viendidong.jpg"),
("434","181","_wp_attachment_metadata","a:5:{s:5:\"width\";i:780;s:6:\"height\";i:520;s:4:\"file\";s:54:\"2019/01/gio-thu-hanh-ep-kinh-smartphone-viendidong.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:54:\"gio-thu-hanh-ep-kinh-smartphone-viendidong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:54:\"gio-thu-hanh-ep-kinh-smartphone-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:54:\"gio-thu-hanh-ep-kinh-smartphone-viendidong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"gio-thu-hanh-ep-kinh-smartphone-viendidong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"gio-thu-hanh-ep-kinh-smartphone-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:54:\"gio-thu-hanh-ep-kinh-smartphone-viendidong-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("435","180","_thumbnail_id","181"),
("438","183","_edit_last","1"),
("439","183","_edit_lock","1547650304:1"),
("440","184","_wp_attached_file","2019/01/ktv-phan-mem-chuyen-nguyep-viendidong.jpg"),
("441","184","_wp_attachment_metadata","a:5:{s:5:\"width\";i:780;s:6:\"height\";i:520;s:4:\"file\";s:49:\"2019/01/ktv-phan-mem-chuyen-nguyep-viendidong.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"ktv-phan-mem-chuyen-nguyep-viendidong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"ktv-phan-mem-chuyen-nguyep-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"ktv-phan-mem-chuyen-nguyep-viendidong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"ktv-phan-mem-chuyen-nguyep-viendidong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"ktv-phan-mem-chuyen-nguyep-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"ktv-phan-mem-chuyen-nguyep-viendidong-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("442","183","_thumbnail_id","184"),
("445","186","_edit_last","1"),
("446","186","_edit_lock","1547650340:1"),
("447","187","_wp_attached_file","2019/01/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong.jpg"),
("448","187","_wp_attachment_metadata","a:5:{s:5:\"width\";i:780;s:6:\"height\";i:520;s:4:\"file\";s:62:\"2019/01/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:62:\"lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:62:\"lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:62:\"lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:62:\"lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("449","186","_thumbnail_id","187"),
("452","189","_edit_last","1"),
("453","189","_edit_lock","1547650379:1"),
("454","190","_wp_attached_file","2019/01/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong.jpg"),
("455","190","_wp_attachment_metadata","a:5:{s:5:\"width\";i:780;s:6:\"height\";i:520;s:4:\"file\";s:58:\"2019/01/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:58:\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:58:\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("456","189","_thumbnail_id","190"),
("463","202","_wp_attached_file","2019/01/picture1.jpg"),
("464","202","_wp_attachment_metadata","a:5:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:20:\"2019/01/picture1.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"picture1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"picture1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("471","207","_wp_attached_file","2019/01/picture2.jpg"),
("472","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:20:\"2019/01/picture2.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"picture2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"picture2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("473","210","_wp_attached_file","2019/01/picture3.jpg"),
("474","210","_wp_attachment_metadata","a:5:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:20:\"2019/01/picture3.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"picture3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"picture3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("475","212","_wp_attached_file","2019/01/picture4.jpg"),
("476","212","_wp_attachment_metadata","a:5:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:20:\"2019/01/picture4.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"picture4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"picture4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("477","214","_wp_attached_file","2019/01/picture5.jpg"),
("478","214","_wp_attachment_metadata","a:5:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:20:\"2019/01/picture5.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"picture5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"picture5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("479","216","_wp_attached_file","2019/01/picture6.jpg"),
("480","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:181;s:6:\"height\";i:181;s:4:\"file\";s:20:\"2019/01/picture6.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"picture6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"picture6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("486","226","_wp_attached_file","2019/01/2.jpg"),
("487","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:13:\"2019/01/2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("488","227","_wp_attached_file","2019/01/3.jpg"),
("489","227","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:13:\"2019/01/3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("490","228","_wp_attached_file","2019/01/4.jpg"),
("491","228","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:13:\"2019/01/4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("492","229","_wp_attached_file","2019/01/5.jpg"),
("493","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:13:\"2019/01/5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("494","230","_wp_attached_file","2019/01/1.jpg"),
("495","230","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:13:\"2019/01/1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("513","258","_edit_last","1"),
("514","258","_edit_lock","1547694645:1"),
("522","261","_edit_last","1"),
("523","261","_edit_lock","1547694542:1"),
("529","264","_edit_last","1"),
("530","264","_edit_lock","1547695856:1"),
("536","267","_edit_last","1"),
("537","267","_edit_lock","1547694492:1"),
("543","270","_edit_last","1"),
("544","270","_edit_lock","1547694415:1"),
("569","291","_edit_last","1"),
("570","291","_edit_lock","1547693600:1"),
("579","291","_thumbnail_id",""),
("599","318","_wp_attached_file","2019/01/Iphone5sIphone5cApple910_18.jpg"),
("600","318","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:39:\"2019/01/Iphone5sIphone5cApple910_18.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"Iphone5sIphone5cApple910_18-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"Iphone5sIphone5cApple910_18-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"Iphone5sIphone5cApple910_18-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"Iphone5sIphone5cApple910_18-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"Iphone5sIphone5cApple910_18-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:9:\"Sarah Tew\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1378814216\";s:9:\"copyright\";s:27:\"Sarah Tew / CBS Interactive\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO gdd_postmeta VALUES
("601","270","_thumbnail_id","318"),
("604","319","_wp_attached_file","2019/01/nghe-sua-chua-dien-thoai-3-1529905134.jpg"),
("605","319","_wp_attachment_metadata","a:5:{s:5:\"width\";i:730;s:6:\"height\";i:487;s:4:\"file\";s:49:\"2019/01/nghe-sua-chua-dien-thoai-3-1529905134.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"nghe-sua-chua-dien-thoai-3-1529905134-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"nghe-sua-chua-dien-thoai-3-1529905134-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"nghe-sua-chua-dien-thoai-3-1529905134-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"nghe-sua-chua-dien-thoai-3-1529905134-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"nghe-sua-chua-dien-thoai-3-1529905134-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("606","267","_thumbnail_id","319"),
("609","320","_wp_attached_file","2019/01/3806148_Oukitel-K4000-Pro-01.jpg"),
("610","320","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:525;s:4:\"file\";s:40:\"2019/01/3806148_Oukitel-K4000-Pro-01.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"3806148_Oukitel-K4000-Pro-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"3806148_Oukitel-K4000-Pro-01-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"3806148_Oukitel-K4000-Pro-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"3806148_Oukitel-K4000-Pro-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"3806148_Oukitel-K4000-Pro-01-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"3806148_Oukitel-K4000-Pro-01-768x504.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("611","264","_thumbnail_id","320"),
("614","321","_wp_attached_file","2019/01/sua-dien-thoai-xiaomi-6.jpg"),
("615","321","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:35:\"2019/01/sua-dien-thoai-xiaomi-6.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"sua-dien-thoai-xiaomi-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"sua-dien-thoai-xiaomi-6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"sua-dien-thoai-xiaomi-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"sua-dien-thoai-xiaomi-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"sua-dien-thoai-xiaomi-6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("616","261","_thumbnail_id","321"),
("621","322","_wp_attached_file","2019/01/cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi.jpg"),
("622","322","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:64:\"2019/01/cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:64:\"cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:64:\"cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:64:\"cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("623","258","_thumbnail_id","322"),
("668","264","_yoast_wpseo_primary_category",""),
("669","264","_yoast_wpseo_content_score","90"),
("670","264","_yoast_wpseo_focuskeywords",""),
("671","264","_yoast_wpseo_keywordsynonyms",""),
("687","349","_wp_attached_file","2019/01/banner-sua-chua.jpg"),
("688","349","_wp_attachment_metadata","a:5:{s:5:\"width\";i:360;s:6:\"height\";i:500;s:4:\"file\";s:27:\"2019/01/banner-sua-chua.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"banner-sua-chua-300x417.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"banner-sua-chua-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"banner-sua-chua-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"banner-sua-chua-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"banner-sua-chua-216x300.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("725","1","_edit_lock","1547696951:1"),
("726","367","_wp_attached_file","2019/01/20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430.jpg"),
("727","367","_wp_attachment_metadata","a:5:{s:5:\"width\";i:730;s:6:\"height\";i:430;s:4:\"file\";s:89:\"2019/01/20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430.jpg\";s:5:\"sizes\";a:5:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:89:\"20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:89:\"20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:89:\"20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:89:\"20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:89:\"20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("728","1","_edit_last","1"),
("729","1","_thumbnail_id","367"),
("732","1","_yoast_wpseo_content_score","90"),
("733","1","_yoast_wpseo_focuskeywords",""),
("734","1","_yoast_wpseo_keywordsynonyms",""),
("735","1","_yoast_wpseo_primary_category",""),
("773","386","_edit_last","1"),
("774","386","_edit_lock","1547698190:1"),
("775","386","_footer","normal"),
("776","386","_wp_page_template","page-right-sidebar.php"),
("777","386","_yoast_wpseo_content_score","90"),
("778","386","_yoast_wpseo_focuskeywords",""),
("779","386","_yoast_wpseo_keywordsynonyms",""),
("822","408","_menu_item_type","post_type"),
("823","408","_menu_item_menu_item_parent","0"),
("824","408","_menu_item_object_id","386"),
("825","408","_menu_item_object","page"),
("826","408","_menu_item_target",""),
("827","408","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("828","408","_menu_item_xfn",""),
("829","408","_menu_item_url",""),
("831","16","_yoast_wpseo_content_score","90"),
("832","16","_yoast_wpseo_focuskeywords",""),
("833","16","_yoast_wpseo_keywordsynonyms",""),
("834","410","_form","<div class=\"form-tu-van\">\n<div class=\"title\">Li??n h??? t?? v???n mua h??ng</div>\n<div class=\"form-chinh\">\n[text* text-858 placeholder \"H??? t??n c???a b???n..\"]\n[tel* tel-939 placeholder \"S??? ??i???n tho???i...\"]\n[textarea textarea-5 placeholder \"N???i dung c???n t?? v???n...\"]\n[submit \"G???i li??n h???\"]\n</div>\n</div>"),
("835","410","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:58:\"M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo\";s:6:\"sender\";s:36:\"<wordpress@suadienthoai.webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:290:\"C?? ng?????i li??n h??? s???a m??y:\n- H??? t??n: [text-858]\n- S??? ??i???n tho???i: [tel-939]\n- N???i dung: [textarea-5]\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo (https://bizhostvn.com/w/suadienthoai)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("836","410","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:75:\"M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo \"[your-subject]\"\";s:6:\"sender\";s:95:\"M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo <wordpress@suadienthoai.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:212:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo (https://bizhostvn.com/w/suadienthoai)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("837","410","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("838","410","_additional_settings",""),
("839","410","_locale","vi"),
("841","16","_thumbnail_id",""),
("854","14","_yoast_wpseo_content_score","60"),
("855","14","_yoast_wpseo_focuskeywords",""),
("856","14","_yoast_wpseo_keywordsynonyms",""),
("864","428","_wc_review_count","0"),
("865","428","_wc_rating_count","a:0:{}"),
("866","428","_wc_average_rating","0"),
("867","428","_edit_last","1"),
("868","428","_edit_lock","1550131912:1"),
("869","429","_wp_attached_file","2019/02/gher_1.jpg"),
("870","429","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2019/02/gher_1.jpg\";s:5:\"sizes\";a:9:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"gher_1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"gher_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"gher_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"gher_1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"gher_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"gher_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"gher_1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"gher_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"gher_1-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("871","428","_thumbnail_id","429"),
("872","428","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("873","428","_sku",""),
("874","428","_regular_price","4520000"),
("875","428","_sale_price","3500000"),
("876","428","_sale_price_dates_from",""),
("877","428","_sale_price_dates_to",""),
("878","428","total_sales","0"),
("879","428","_tax_status","taxable"),
("880","428","_tax_class",""),
("881","428","_manage_stock","no"),
("882","428","_backorders","no"),
("883","428","_low_stock_amount",""),
("884","428","_sold_individually","no"),
("885","428","_weight",""),
("886","428","_length",""),
("887","428","_width",""),
("888","428","_height",""),
("889","428","_upsell_ids","a:0:{}"),
("890","428","_crosssell_ids","a:0:{}"),
("891","428","_purchase_note",""),
("892","428","_default_attributes","a:0:{}"),
("893","428","_virtual","no"),
("894","428","_downloadable","no"),
("895","428","_product_image_gallery",""),
("896","428","_download_limit","-1"),
("897","428","_download_expiry","-1"),
("898","428","_stock",""),
("899","428","_stock_status","instock"),
("900","428","_product_version","3.5.4"),
("901","428","_price","3500000"),
("902","428","_yoast_wpseo_primary_product_cat",""),
("903","428","_yoast_wpseo_content_score","60"),
("904","428","_yoast_wpseo_focuskeywords",""),
("905","428","_yoast_wpseo_keywordsynonyms",""),
("906","430","_wc_review_count","0"),
("907","430","_wc_rating_count","a:0:{}");
INSERT INTO gdd_postmeta VALUES
("908","430","_wc_average_rating","0"),
("909","431","_wp_attached_file","2019/02/ph_pic-400x400.jpg"),
("910","431","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2019/02/ph_pic-400x400.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"ph_pic-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"ph_pic-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ph_pic-400x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"ph_pic-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"ph_pic-400x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"ph_pic-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"ph_pic-400x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:26:\"ph_pic-400x400-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("911","430","_edit_last","1"),
("912","430","_thumbnail_id","431"),
("913","430","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("914","430","_sku",""),
("915","430","_regular_price","3600000"),
("916","430","_sale_price","2500000"),
("917","430","_sale_price_dates_from",""),
("918","430","_sale_price_dates_to",""),
("919","430","total_sales","0"),
("920","430","_tax_status","taxable"),
("921","430","_tax_class",""),
("922","430","_manage_stock","no"),
("923","430","_backorders","no"),
("924","430","_low_stock_amount",""),
("925","430","_sold_individually","no"),
("926","430","_weight",""),
("927","430","_length",""),
("928","430","_width",""),
("929","430","_height",""),
("930","430","_upsell_ids","a:0:{}"),
("931","430","_crosssell_ids","a:0:{}"),
("932","430","_purchase_note",""),
("933","430","_default_attributes","a:0:{}"),
("934","430","_virtual","no"),
("935","430","_downloadable","no"),
("936","430","_product_image_gallery",""),
("937","430","_download_limit","-1"),
("938","430","_download_expiry","-1"),
("939","430","_stock",""),
("940","430","_stock_status","instock"),
("941","430","_product_version","3.5.4"),
("942","430","_price","2500000"),
("943","430","_yoast_wpseo_primary_product_cat",""),
("944","430","_yoast_wpseo_content_score","60"),
("945","430","_yoast_wpseo_focuskeywords",""),
("946","430","_yoast_wpseo_keywordsynonyms",""),
("947","430","_edit_lock","1550131907:1"),
("948","432","_wc_review_count","0"),
("949","432","_wc_rating_count","a:0:{}"),
("950","432","_wc_average_rating","0"),
("951","432","_edit_last","1"),
("952","432","_edit_lock","1550131711:1"),
("957","435","_wp_attached_file","2019/02/blackberry-z301-1.jpg"),
("958","435","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:29:\"2019/02/blackberry-z301-1.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"blackberry-z301-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"blackberry-z301-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"blackberry-z301-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"blackberry-z301-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"blackberry-z301-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"blackberry-z301-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"blackberry-z301-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:29:\"blackberry-z301-1-300x333.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("959","432","_thumbnail_id","435"),
("960","432","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("961","432","_sku",""),
("962","432","_regular_price","1600000"),
("963","432","_sale_price","1200000"),
("964","432","_sale_price_dates_from",""),
("965","432","_sale_price_dates_to",""),
("966","432","total_sales","0"),
("967","432","_tax_status","taxable"),
("968","432","_tax_class",""),
("969","432","_manage_stock","no"),
("970","432","_backorders","no"),
("971","432","_low_stock_amount",""),
("972","432","_sold_individually","no"),
("973","432","_weight",""),
("974","432","_length",""),
("975","432","_width",""),
("976","432","_height",""),
("977","432","_upsell_ids","a:0:{}"),
("978","432","_crosssell_ids","a:0:{}"),
("979","432","_purchase_note",""),
("980","432","_default_attributes","a:0:{}"),
("981","432","_virtual","no"),
("982","432","_downloadable","no"),
("983","432","_product_image_gallery",""),
("984","432","_download_limit","-1"),
("985","432","_download_expiry","-1"),
("986","432","_stock",""),
("987","432","_stock_status","instock"),
("988","432","_product_version","3.5.4"),
("989","432","_price","1200000"),
("990","432","_yoast_wpseo_primary_product_cat","49"),
("991","432","_yoast_wpseo_content_score","60"),
("992","432","_yoast_wpseo_focuskeywords",""),
("993","432","_yoast_wpseo_keywordsynonyms",""),
("994","436","_wc_review_count","0"),
("995","436","_wc_rating_count","a:0:{}"),
("996","436","_wc_average_rating","0"),
("997","436","_edit_last","1"),
("998","436","_edit_lock","1550131756:1"),
("999","437","_wp_attached_file","2019/02/BlackBerry-Z10-2-400x400.jpg"),
("1000","437","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:36:\"2019/02/BlackBerry-Z10-2-400x400.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:36:\"BlackBerry-Z10-2-400x400-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1001","436","_thumbnail_id","437"),
("1002","436","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1003","436","_sku",""),
("1004","436","_regular_price","1200000"),
("1005","436","_sale_price","800000"),
("1006","436","_sale_price_dates_from",""),
("1007","436","_sale_price_dates_to",""),
("1008","436","total_sales","0"),
("1009","436","_tax_status","taxable"),
("1010","436","_tax_class",""),
("1011","436","_manage_stock","no");
INSERT INTO gdd_postmeta VALUES
("1012","436","_backorders","no"),
("1013","436","_low_stock_amount",""),
("1014","436","_sold_individually","no"),
("1015","436","_weight",""),
("1016","436","_length",""),
("1017","436","_width",""),
("1018","436","_height",""),
("1019","436","_upsell_ids","a:0:{}"),
("1020","436","_crosssell_ids","a:0:{}"),
("1021","436","_purchase_note",""),
("1022","436","_default_attributes","a:0:{}"),
("1023","436","_virtual","no"),
("1024","436","_downloadable","no"),
("1025","436","_product_image_gallery",""),
("1026","436","_download_limit","-1"),
("1027","436","_download_expiry","-1"),
("1028","436","_stock",""),
("1029","436","_stock_status","instock"),
("1030","436","_product_version","3.5.4"),
("1031","436","_price","800000"),
("1032","436","_yoast_wpseo_primary_product_cat","49"),
("1033","436","_yoast_wpseo_content_score","60"),
("1034","436","_yoast_wpseo_focuskeywords",""),
("1035","436","_yoast_wpseo_keywordsynonyms",""),
("1036","438","_wc_review_count","0"),
("1037","438","_wc_rating_count","a:0:{}"),
("1038","438","_wc_average_rating","0"),
("1039","438","_edit_last","1"),
("1040","438","_edit_lock","1550131880:1"),
("1041","439","_wp_attached_file","2019/02/1187845-400x400.jpg"),
("1042","439","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2019/02/1187845-400x400.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"1187845-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"1187845-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"1187845-400x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"1187845-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"1187845-400x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"1187845-400x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"1187845-400x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:27:\"1187845-400x400-300x400.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:11:\"VnReview.vn\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1404314475\";s:9:\"copyright\";s:8:\"vnreview\";s:12:\"focal_length\";s:2:\"60\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1043","438","_thumbnail_id","439"),
("1044","438","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1045","438","_sku",""),
("1046","438","_regular_price","2600000"),
("1047","438","_sale_price","2300000"),
("1048","438","_sale_price_dates_from",""),
("1049","438","_sale_price_dates_to",""),
("1050","438","total_sales","0"),
("1051","438","_tax_status","taxable"),
("1052","438","_tax_class",""),
("1053","438","_manage_stock","no"),
("1054","438","_backorders","no"),
("1055","438","_low_stock_amount",""),
("1056","438","_sold_individually","no"),
("1057","438","_weight",""),
("1058","438","_length",""),
("1059","438","_width",""),
("1060","438","_height",""),
("1061","438","_upsell_ids","a:0:{}"),
("1062","438","_crosssell_ids","a:0:{}"),
("1063","438","_purchase_note",""),
("1064","438","_default_attributes","a:0:{}"),
("1065","438","_virtual","no"),
("1066","438","_downloadable","no"),
("1067","438","_product_image_gallery",""),
("1068","438","_download_limit","-1"),
("1069","438","_download_expiry","-1"),
("1070","438","_stock",""),
("1071","438","_stock_status","instock"),
("1072","438","_product_version","3.5.4"),
("1073","438","_price","2300000"),
("1074","438","_yoast_wpseo_primary_product_cat","50"),
("1075","438","_yoast_wpseo_content_score","60"),
("1076","438","_yoast_wpseo_focuskeywords",""),
("1077","438","_yoast_wpseo_keywordsynonyms",""),
("1078","440","_wc_review_count","0"),
("1079","440","_wc_rating_count","a:0:{}"),
("1080","440","_wc_average_rating","0"),
("1081","441","_wp_attached_file","2019/02/oppo-a71-400x460.png"),
("1082","441","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:28:\"2019/02/oppo-a71-400x460.png\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"oppo-a71-400x460-300x345.png\";s:5:\"width\";i:300;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"oppo-a71-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"oppo-a71-400x460-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"oppo-a71-400x460-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"oppo-a71-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"oppo-a71-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"oppo-a71-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:28:\"oppo-a71-400x460-300x450.png\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1083","440","_edit_last","1"),
("1084","440","_thumbnail_id","441"),
("1085","440","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1086","440","_sku",""),
("1087","440","_regular_price","5600000"),
("1088","440","_sale_price","4500000"),
("1089","440","_sale_price_dates_from",""),
("1090","440","_sale_price_dates_to",""),
("1091","440","total_sales","0"),
("1092","440","_tax_status","taxable"),
("1093","440","_tax_class",""),
("1094","440","_manage_stock","no"),
("1095","440","_backorders","no"),
("1096","440","_low_stock_amount",""),
("1097","440","_sold_individually","no"),
("1098","440","_weight",""),
("1099","440","_length",""),
("1100","440","_width",""),
("1101","440","_height",""),
("1102","440","_upsell_ids","a:0:{}"),
("1103","440","_crosssell_ids","a:0:{}"),
("1104","440","_purchase_note",""),
("1105","440","_default_attributes","a:0:{}"),
("1106","440","_virtual","no"),
("1107","440","_downloadable","no"),
("1108","440","_product_image_gallery",""),
("1109","440","_download_limit","-1"),
("1110","440","_download_expiry","-1"),
("1111","440","_stock","");
INSERT INTO gdd_postmeta VALUES
("1112","440","_stock_status","instock"),
("1113","440","_product_version","3.5.4"),
("1114","440","_price","4500000"),
("1115","440","_yoast_wpseo_primary_product_cat","51"),
("1116","440","_yoast_wpseo_content_score","60"),
("1117","440","_yoast_wpseo_focuskeywords",""),
("1118","440","_yoast_wpseo_keywordsynonyms",""),
("1119","440","_edit_lock","1550132500:1"),
("1120","442","_wc_review_count","0"),
("1121","442","_wc_rating_count","a:0:{}"),
("1122","442","_wc_average_rating","0"),
("1123","442","_edit_last","1"),
("1124","442","_edit_lock","1550132044:1"),
("1125","443","_wp_attached_file","2019/02/iphone-7-8-400x460.png"),
("1126","443","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:30:\"2019/02/iphone-7-8-400x460.png\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"iphone-7-8-400x460-300x345.png\";s:5:\"width\";i:300;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"iphone-7-8-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"iphone-7-8-400x460-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"iphone-7-8-400x460-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"iphone-7-8-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"iphone-7-8-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"iphone-7-8-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"iphone-7-8-400x460-300x450.png\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1127","442","_thumbnail_id","443"),
("1128","442","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1129","442","_sku",""),
("1130","442","_regular_price","5600000"),
("1131","442","_sale_price","5500000"),
("1132","442","_sale_price_dates_from",""),
("1133","442","_sale_price_dates_to",""),
("1134","442","total_sales","0"),
("1135","442","_tax_status","taxable"),
("1136","442","_tax_class",""),
("1137","442","_manage_stock","no"),
("1138","442","_backorders","no"),
("1139","442","_low_stock_amount",""),
("1140","442","_sold_individually","no"),
("1141","442","_weight",""),
("1142","442","_length",""),
("1143","442","_width",""),
("1144","442","_height",""),
("1145","442","_upsell_ids","a:0:{}"),
("1146","442","_crosssell_ids","a:0:{}"),
("1147","442","_purchase_note",""),
("1148","442","_default_attributes","a:0:{}"),
("1149","442","_virtual","no"),
("1150","442","_downloadable","no"),
("1151","442","_product_image_gallery",""),
("1152","442","_download_limit","-1"),
("1153","442","_download_expiry","-1"),
("1154","442","_stock",""),
("1155","442","_stock_status","instock"),
("1156","442","_product_version","3.5.4"),
("1157","442","_price","5500000"),
("1158","442","_yoast_wpseo_primary_product_cat","52"),
("1159","442","_yoast_wpseo_content_score","60"),
("1160","442","_yoast_wpseo_focuskeywords",""),
("1161","442","_yoast_wpseo_keywordsynonyms",""),
("1162","444","_wc_review_count","0"),
("1163","444","_wc_rating_count","a:0:{}"),
("1164","444","_wc_average_rating","0"),
("1165","444","_edit_last","1"),
("1166","444","_edit_lock","1550132114:1"),
("1167","445","_wp_attached_file","2019/02/samsung-galaxy-s8-plus-tim-khoi-400-400x460.png"),
("1168","445","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:55:\"2019/02/samsung-galaxy-s8-plus-tim-khoi-400-400x460.png\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-300x345.png\";s:5:\"width\";i:300;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:55:\"samsung-galaxy-s8-plus-tim-khoi-400-400x460-300x450.png\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1169","444","_thumbnail_id","445"),
("1170","444","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1171","444","_sku",""),
("1172","444","_regular_price","8900000"),
("1173","444","_sale_price","7800000"),
("1174","444","_sale_price_dates_from",""),
("1175","444","_sale_price_dates_to",""),
("1176","444","total_sales","0"),
("1177","444","_tax_status","taxable"),
("1178","444","_tax_class",""),
("1179","444","_manage_stock","no"),
("1180","444","_backorders","no"),
("1181","444","_low_stock_amount",""),
("1182","444","_sold_individually","no"),
("1183","444","_weight",""),
("1184","444","_length",""),
("1185","444","_width",""),
("1186","444","_height",""),
("1187","444","_upsell_ids","a:0:{}"),
("1188","444","_crosssell_ids","a:0:{}"),
("1189","444","_purchase_note",""),
("1190","444","_default_attributes","a:0:{}"),
("1191","444","_virtual","no"),
("1192","444","_downloadable","no"),
("1193","444","_product_image_gallery",""),
("1194","444","_download_limit","-1"),
("1195","444","_download_expiry","-1"),
("1196","444","_stock",""),
("1197","444","_stock_status","instock"),
("1198","444","_product_version","3.5.4"),
("1199","444","_price","7800000"),
("1200","444","_yoast_wpseo_primary_product_cat","53"),
("1201","444","_yoast_wpseo_content_score","30"),
("1202","444","_yoast_wpseo_focuskeywords",""),
("1203","444","_yoast_wpseo_keywordsynonyms",""),
("1228","462","_wc_review_count","0"),
("1229","462","_wc_rating_count","a:0:{}"),
("1230","462","_wc_average_rating","0"),
("1231","462","_edit_last","1"),
("1232","462","_edit_lock","1550132963:1"),
("1233","463","_wp_attached_file","2019/02/iphone-6s-plus-32gb-400x450-400x450.png"),
("1234","463","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:450;s:4:\"file\";s:47:\"2019/02/iphone-6s-plus-32gb-400x450-400x450.png\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-300x338.png\";s:5:\"width\";i:300;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-267x300.png\";s:5:\"width\";i:267;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:47:\"iphone-6s-plus-32gb-400x450-400x450-300x450.png\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1235","462","_thumbnail_id","463");
INSERT INTO gdd_postmeta VALUES
("1236","462","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1237","462","_sku",""),
("1238","462","_regular_price","8900000"),
("1239","462","_sale_price","8800000"),
("1240","462","_sale_price_dates_from",""),
("1241","462","_sale_price_dates_to",""),
("1242","462","total_sales","0"),
("1243","462","_tax_status","taxable"),
("1244","462","_tax_class",""),
("1245","462","_manage_stock","no"),
("1246","462","_backorders","no"),
("1247","462","_low_stock_amount",""),
("1248","462","_sold_individually","no"),
("1249","462","_weight",""),
("1250","462","_length",""),
("1251","462","_width",""),
("1252","462","_height",""),
("1253","462","_upsell_ids","a:0:{}"),
("1254","462","_crosssell_ids","a:0:{}"),
("1255","462","_purchase_note",""),
("1256","462","_default_attributes","a:0:{}"),
("1257","462","_virtual","no"),
("1258","462","_downloadable","no"),
("1259","462","_product_image_gallery",""),
("1260","462","_download_limit","-1"),
("1261","462","_download_expiry","-1"),
("1262","462","_stock",""),
("1263","462","_stock_status","instock"),
("1264","462","_product_version","3.5.4"),
("1265","462","_price","8800000"),
("1266","462","_yoast_wpseo_primary_product_cat","52"),
("1267","462","_yoast_wpseo_content_score","60"),
("1268","462","_yoast_wpseo_focuskeywords",""),
("1269","462","_yoast_wpseo_keywordsynonyms",""),
("1270","464","_wc_review_count","0"),
("1271","464","_wc_rating_count","a:0:{}"),
("1272","464","_wc_average_rating","0"),
("1273","464","_edit_last","1"),
("1274","464","_edit_lock","1550133014:1"),
("1275","465","_wp_attached_file","2019/02/samsung-galaxy-note8-1-400x460.png"),
("1276","465","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:460;s:4:\"file\";s:42:\"2019/02/samsung-galaxy-note8-1-400x460.png\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-300x345.png\";s:5:\"width\";i:300;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:42:\"samsung-galaxy-note8-1-400x460-300x450.png\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1277","464","_thumbnail_id","465"),
("1278","464","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1279","464","_sku",""),
("1280","464","_regular_price","5600000"),
("1281","464","_sale_price","5200000"),
("1282","464","_sale_price_dates_from",""),
("1283","464","_sale_price_dates_to",""),
("1284","464","total_sales","0"),
("1285","464","_tax_status","taxable"),
("1286","464","_tax_class",""),
("1287","464","_manage_stock","no"),
("1288","464","_backorders","no"),
("1289","464","_low_stock_amount",""),
("1290","464","_sold_individually","no"),
("1291","464","_weight",""),
("1292","464","_length",""),
("1293","464","_width",""),
("1294","464","_height",""),
("1295","464","_upsell_ids","a:0:{}"),
("1296","464","_crosssell_ids","a:0:{}"),
("1297","464","_purchase_note",""),
("1298","464","_default_attributes","a:0:{}"),
("1299","464","_virtual","no"),
("1300","464","_downloadable","no"),
("1301","464","_product_image_gallery",""),
("1302","464","_download_limit","-1"),
("1303","464","_download_expiry","-1"),
("1304","464","_stock",""),
("1305","464","_stock_status","instock"),
("1306","464","_product_version","3.5.4"),
("1307","464","_price","5200000"),
("1308","464","_yoast_wpseo_primary_product_cat","53"),
("1309","464","_yoast_wpseo_content_score","60"),
("1310","464","_yoast_wpseo_focuskeywords",""),
("1311","464","_yoast_wpseo_keywordsynonyms",""),
("1455","536","_wp_trash_meta_status","publish"),
("1456","536","_wp_trash_meta_time","1557133967"),
("1457","537","_wp_attached_file","2019/05/suadienthoai.png"),
("1458","537","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:83;s:4:\"file\";s:24:\"2019/05/suadienthoai.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"suadienthoai-150x83.png\";s:5:\"width\";i:150;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"suadienthoai-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"suadienthoai-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"suadienthoai-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"suadienthoai-100x83.png\";s:5:\"width\";i:100;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"suadienthoai-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"suadienthoai-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"suadienthoai-100x83.png\";s:5:\"width\";i:100;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1459","538","_edit_lock","1557138525:1"),
("1460","538","_wp_trash_meta_status","publish"),
("1461","538","_wp_trash_meta_time","1557138543"),
("1462","539","_edit_lock","1557387674:1"),
("1463","539","_wp_trash_meta_status","publish"),
("1464","539","_wp_trash_meta_time","1557387686"),
("1465","540","_wp_attached_file","woocommerce-placeholder.png"),
("1466","540","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




CREATE TABLE `gdd_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_posts VALUES
("1","1","2019-01-16 12:51:20","2019-01-16 12:51:20","Ch??c m???ng ?????n v???i WordPress. ????y l?? b??i vi???t ?????u ti??n c???a b???n. H??y ch???nh s???a hay x??a b??i vi???t n??y, v?? b???t ?????u vi???t blog!","Ch??o t???t c??? m???i ng?????i!","","publish","open","open","","chao-moi-nguoi","","","2019-01-17 10:51:31","2019-01-17 03:51:31","","0","https://tppone.com/demo/suadienthoai/?p=1","0","post","","1"),
("2","1","2019-01-16 12:51:20","2019-01-16 12:51:20","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"dashes-spaced\"]\n\n[ux_image id=\"66\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"61\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[section class=\"tieu-chi\" bg_color=\"rgb(245, 245, 245)\" padding=\"25px\"]\n\n[row style=\"small\" col_style=\"dashed\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"113\" pos=\"right\"]\n\n<h4><span style=\"color: #282828;\">CH??M S??C NHANH</span></h4>\n<p><span style=\"font-size: 90%; color: #282828;\">Ti???p nh???n x??? l?? nhanh m???i tr?????ng h???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"114\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">B???O H??NH</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Tr???n ?????i d??nh cho iPhone - iPad sau s???a ch???a</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"115\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">THAY L???Y NGAY</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Th???i gian thay nhanh ch??? 40 - 90 ph??t</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"116\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">LINH KI???N CH??NH H??NG</span></h4>\n<p style=\"text-align: right;\"><span style=\"color: #282828; font-size: 90%;\">Cam k???t ch???t l?????ng linh ki???n thay th???.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"??i???n tho???i b??n ch???y\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???n tho???i b??n ch???y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" products=\"10\" image_height=\"120%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.4)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"D???ch v??? c???a ch??ng t??i\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"D???ch v??? c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"L???ch khai giang\" class=\"lich-khai-giang\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"L???ch khai gi???ng\" color=\"rgb(0, 0, 0)\"]\n\n[featured_box img=\"230\" pos=\"left\" link=\"/ktv-ep-kinh-co-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p c??? Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"226\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-iphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Iphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"227\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-android/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Android</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"228\" pos=\"left\" link=\"/ktv-phan-mem-dien-thoai-chuyen-nghiep/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ph???n m???m ??i???n tho???i chuy??n nghi???p</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"229\" pos=\"left\" link=\"/ktv-ep-kinh-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p k??nh Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"5 L?? do b???n ph???i h???c ngh??? t???i Vi???n Di ?????ng\" color=\"rgb(0, 0, 0)\"]\n\n[row_inner style=\"collapse\" col_style=\"dashed\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"202\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"207\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"210\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"212\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"214\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"216\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN T???C - KI???N TH???C\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"2\" columns__md=\"1\" cat=\"32\" posts=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"3\" columns__md=\"1\" cat=\"32\" posts=\"3\" offset=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","publish","closed","open","","trang-chu","","","2019-02-14 15:23:04","2019-02-14 08:23:04","","0","https://tppone.com/demo/suadienthoai/?page_id=2","0","page","","0"),
("3","1","2019-01-16 12:51:20","2019-01-16 12:51:20","<h2>Ch??ng t??i l?? ai</h2><p>?????a ch??? website l??: https://bizhostvn.com/w/suadienthoai.</p><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><h3>B??nh lu???n</h3><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><h3>Th?? vi???n</h3><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><h3>Th??ng tin li??n h???</h3><h3>Cookies</h3><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><h3>N???i dung nh??ng t??? website kh??c</h3><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><h3>Ph??n t??ch</h3><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><h2>Th??ng tin li??n h??? c???a b???n</h2><h2>Th??ng tin b??? sung</h2><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3>","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-01-16 12:51:20","2019-01-16 12:51:20","","0","https://tppone.com/demo/suadienthoai/?page_id=3","0","page","","0"),
("14","1","2019-01-16 20:01:49","2019-01-16 13:01:49","Xin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin\n\n<strong>Xem th??m d???ch v??? kh??c c???a ch??ng t??i:</strong>\n\n+??<a href=\"http://www.inhinhlenao.net/\" target=\"blank\">D???ch v?????In ??o nhanh-r???-?????p</a>\n\n+??<a href=\"http://www.aoconggiao.com/\" target=\"blank\">??o C??ng Gi??o</a>,??<a href=\"http://www.aoconggiao.com/\" target=\"blank\">??o ?????ng ph???c C??ng Gi??o</a>\n\n+??<a href=\"http://www.sites.google.com/site/xuongthanhgiuse/\" target=\"blank\">????? h???a C??ng gi??o</a>\n\n<strong>Xem th??m c??c s???n ph???m c???a ch??ng t??i:</strong>\n\n+??<a href=\"https://Webdemo.com/category/goc-chia-se/\" target=\"blank\">G??c chia s??? file thi???t k???</a>\n\n+??<a href=\"https://Webdemo.com/hoc-html-truc-tuyen-mien-phi/\" target=\"blank\">H???c HTML c?? b???n</a>\n\n+??<a href=\"https://Webdemo.com/category/kien-thuc/hoc-thiet-ke-web-wordpress/\" target=\"blank\">H???c thi???t k??? website n???n t???ng WordPress c???c nhanh ch??ng</a>\n\n+??<a href=\"https://Webdemo.com/category/kien-thuc/kien-thuc-do-hoa/\" target=\"blank\">Ki???n th???c thi???t k??? ????? h???a</a>\n\n<strong>Trang web ch??nh th???c l??u tr??? c??c m???u web:??<a href=\"https://Webdemo.com/\">www.demoweb.com</a></strong>\n\n<strong>M???t s??? d??? ??n ???? th???c hi???n:</strong>\n\n+ C??ng ty Ch???ng th???m x??y d???ng Nam ????:??<a href=\"http://chongthamnamdo.com/\">www.chongthamnamdo.com</a>\n\n+ X?????ng ch??? bi???n g??? th??? c??ng:??<a href=\"http://noithatmocstyle.vn/\">www.noithatmocstyle.vn</a>\n\n+ C??ng ty thi???t k??? ??? in ???n:??<a href=\"http://print2.ninhbinhweb.cm/\">www.print2.demoweb.com</a>\n\n+ C??ng ty in phun kh??? l???n Ph??t T??n:??<a href=\"http://inphattin.com/\">www.inphattin.com</a>\n\n+ C??ng ty xu???t kh???u H???t ??i???u, H???t Ti??u:??<a href=\"http://nongsan24h.com/\">www.nongsan24h.com</a>\n\n+ C??ng ty Ong V??ng Food:??<a href=\"http://ongvangfood.com.vn/\">www.ongvangfood.com.vn</a>\n\n+ S???n ph???m D?????c ph???m x??ch tay:??<a href=\"http://www.suckhoexanhvn.com/\">www.suckhoexanhvn.com</a>\n\n+ Gi???i thi???u ph??ng kh??m ????ng y, b???m huy???t b??n ch??n:??<a href=\"http://www.bamhuyetbanchan.com/\">www.bamhuyetbanchan.com</a>\n\n+ Gi???i thi???u Trung t??m d???ch v??? xe Oto, moto:<a href=\"http://www.tacomotocare.com.vn/\">??www.tacomotocare.com.vn</a>\n\n+ X?????ng s???n xu???t T?????ng th???ch Cao:??<a href=\"http://www.tuongbachothachcao.com/\">www.tuongbachothachcao.com</a>\n\n+ C??ng ty C??? ph???n Qu???c t??? S???c M??u:<a href=\"http://www.sacmauquocte.vn/\">??www.sacmauquocte.vn</a>\n\n+ Website c??ng ty qu???ng c??o:??<a href=\"http://www.hoacat.net/\">www.hoacat.net</a>\n\n+ Website H??? th???ng ph??n ph???i Midea:??<a href=\"http://www.mideawater.vn/\">www.mideawater.vn</a>\n\n+ Website Ban Gi??o l?? &amp; M???c v??? Thi???u Nhi Ph??t Di???m:??<a href=\"http://www.bangiaolyphatdiem.com/\">www.bangiaolyphatdiem.com</a>\n\n+ C???ng th??ng tin Gi??o x??? C???n Thoi:??<a href=\"http://www.gxconthoi.org/\">www.gxconthoi.org</a>\n\n+ Website Linh m???c Nh???c s??? Phaol?? Nguy???n V??n ?????nh:??<a href=\"http://www.loinguyentram.com/\">www.loinguyentram.com</a>\n\n+ Website S??n T??y Camera:??<a href=\"http://www.sontaycamera.com/\">www.sontaycamera.com</a>\n\n+ Website c???a h??ng b??n ??i???n tho???i Iphone:??<a href=\"http://www.golife.store/\">www.golife.store</a>\n\n+ Website Trung t??m tin h???c PST:??<a href=\"http://www.tinhocpst.edu.vn/\">www.tinhocpst.edu.vn</a>\n\n+ Website Th????ng hi???u th???i trang C??ng s??? n???:??<a href=\"http://www.tk3.com.vn/\">www.tk3.com.vn</a>\n\n+ Website C???a h??ng G???ch ???p l??t, ???? trang tr??:??<a href=\"http://www.gachdatrangtrithuyoanh.com/\">www.gachdatrangtrithuyoanh.com</a>\n\n+ Websiet Trung t??m M??? thu???t Thi???u Nhi Vi???t Nh??:??<a href=\"http://www.vietnhi.vn/\">www.vietnhi.vn</a>\n\n+ Website ??o C??ng Gi??o:??<a href=\"http://www.aoconggiao.com/\">www.aoconggiao.com</a>\n\n+ Website b??nh tr??ng m?? T??y Ninh:??<a href=\"http://www.banhtrangmetayninh.com/\">www.banhtrangmetayninh.com</a>\n\n+ Website N??ng s???n Vi???t H??n:??<a href=\"http://www.nongsanviethan.com/\">www.nongsanviethan.com</a>\n\n+ Website b??n h??ng c???c ?????p:??<a href=\"http://www.shopconggiao.com/\">www.shopconggiao.com</a>\n\n+ Qu???ng c??o An Gia ?????t:??<a href=\"http://www.angiadat.com/\">www.angiadat.com</a>\n\n+ ??o C??ng Gi??o:??<a href=\"http://www.aoconggiao.com/\">www.aoconggiao.com</a>\n\n+ Th????ng hi???u B??nh m??? que S??i g??n:??<a href=\"http://www.banhmyquesaigon.com/\">www.banhmyquesaigon.com</a>\n\n+ Qu?? v???t S??n La:??<a href=\"http://www.sonlaquavat.com/\">www.sonlaquavat.com</a>\n\n+ C?? Koi ???? N???ng:??<a href=\"http://www.hoanghuykoifarm.com/\">www.hoanghuykoifarm.com</a>\n\n+ Qu???ng c??o V?? Gia:??<a href=\"http://www.quangcaovugia.com/\">www.quangcaovugia.com</a>\n\n+ Nh??m k??nh Ti??n phong:??<a href=\"http://www.lamcuanhomgiare.com/\">www.lamcuanhomgiare.com</a>\n\nv?? r???t nhi???u m???u website kh??c,??? xem th??m t???i??<a href=\"http://www.demoweb.com/\">www.demoweb.com</a>\n\n<strong>C??c d??? ??n website ch??ng t??i tham gia ch???nh s???a v?? thi???t k??? giao di???n:</strong>\n\n+ Website b??n s??ch To??n t??i n??ng:??<a href=\"http://www.book.ihoc.me/\">www.book.ihoc.me</a>\n\n+ Website Kh??ch s???n Dreamhouse:??<a href=\"http://www.dreamhousehotels.com/\">www.dreamhousehotels.com</a>\n\n+ Website trang tr???i C?? H???i, C?? T???m:??<a href=\"http://www.cahoicatam.com/\">www.cahoicatam.com</a>\n\nXem th??m t???i??<a href=\"http://www.demoweb.com/\">www.demoweb.com</a>\n\n<strong>Chia s??? file thi???t k??? mi???n ph??</strong>\n\nNh???ng file thi???t k??? ch??ng t??i ???? l??m n???u c????th??? share th?? ch??ng t??i s??? g???n link download ph??a d?????i m???i b??i vi???t. C??n l???i, nh???ng file thi???t k??? ???? ???????c kh??ch h??ng tr??? ti???n, ch??ng t??i xin ph??p kh??ng share mi???n ph??.\n\nDo ????, trong tr?????ng h???p b???n r???t ??ng ?? m???t s???n ph???m thi???t k??? n??o ???? c???a ch??ng t??i nh??ng kh??ng th???y link download th?? vui l??ng li??n h??? v???i admin. Admin s??? s???p x???p xin ?? ki???n c???a kh??ch h??ng tr?????c ????? b??n l???i file cho b???n.\n\n<strong>Li??n h???:</strong>\n\n??i???n tho???i cho m??nh: 0972939830\n\nMail cho m??nh:??giuselelthien@gmail.com\n\nK???t b???n v???i m??nh:??<a href=\"http://www.facebook.com/demo\">www.facebook.com/demo</a>","Gi???i thi???u","","publish","closed","closed","","gioi-thieu","","","2019-01-17 11:39:59","2019-01-17 04:39:59","","0","https://tppone.com/demo/suadienthoai/?page_id=14","0","page","","0"),
("16","1","2019-01-16 20:01:54","2019-01-16 13:01:54","<p><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5674167766047!2d106.71231654807266!3d10.800983621029532!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe8dea9b1d490c34e!2zQ8O0bmcgVHkgVE5ISCBUTURWIMSQaeG7h24gTcOheSBOZ3V54buFbiBLaW0!5e0!3m2!1sen!2s!4v1557472655858!5m2!1sen!2s\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></p>\n[gap height=\"22px\"]\n\n[row class=\"lien-he\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h3><span style=\"color: #4f3716;\">LI??N H??? V???I CH??NG T??I</span></h3>\n<p><span style=\"font-size: 100%;\"><strong>C??ng ty TNHH GiuseBee - Chi nh??nh H?? N???i</strong></span></p>\n<ul>\n<li><span style=\"font-size: 100%;\"><strong>Tr??? s??? ch??nh:</strong>??180 ??? 182 L?? Ch??nh Th???ng, Ph?????ng 9, Qu???n 3, TP H??? Ch?? Minh??</span></li>\n<li><span style=\"font-size: 100%;\"><strong style=\"color: #555555;\">Chi nh??nh:</strong><span style=\"color: #555555;\">??T???ng 4, s??? 01 ng?? 120 Tr?????ng Chinh, Thanh Xu??n , H?? N???i</span></span></li>\n<li class=\"gap-element\"><span style=\"font-size: 100%;\"><strong style=\"color: #555555;\">Hotline:</strong><span style=\"color: #555555;\">??039.465.8880.</span></span></li>\n<li><span style=\"font-size: 100%;\"><strong>Email:</strong> webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 100%;\"><strong>Website:</strong> www.demoweb.com</span></li>\n</ul>\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" linkedin=\"#\" email=\"#\" phone=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"410\"]\n\n\n[/col]\n\n[/row]","Li??n h???","","publish","closed","closed","","lien-he","","","2019-05-10 14:17:28","2019-05-10 07:17:28","","0","https://tppone.com/demo/suadienthoai/?page_id=16","0","page","","0"),
("18","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","18","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=18","22","nav_menu_item","","0"),
("19","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","19","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=19","2","nav_menu_item","","0"),
("20","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","20","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=20","1","nav_menu_item","","0"),
("21","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","21","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=21","12","nav_menu_item","","0"),
("22","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","22","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=22","13","nav_menu_item","","0"),
("23","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","23","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=23","14","nav_menu_item","","0"),
("24","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","24","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=24","15","nav_menu_item","","0"),
("25","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","25","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=25","16","nav_menu_item","","0"),
("26","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","26","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=26","17","nav_menu_item","","0"),
("27","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","27","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=27","18","nav_menu_item","","0"),
("28","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","28","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","2","https://tppone.com/demo/suadienthoai/?p=28","19","nav_menu_item","","0"),
("30","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","30","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=30","3","nav_menu_item","","0"),
("31","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","31","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=31","4","nav_menu_item","","0"),
("32","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","32","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=32","5","nav_menu_item","","0"),
("33","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","33","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=33","6","nav_menu_item","","0"),
("34","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","34","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=34","7","nav_menu_item","","0"),
("35","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","35","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=35","8","nav_menu_item","","0"),
("36","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","36","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=36","9","nav_menu_item","","0"),
("37","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","37","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=37","10","nav_menu_item","","0"),
("38","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","38","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","1","https://tppone.com/demo/suadienthoai/?p=38","11","nav_menu_item","","0"),
("39","1","2019-01-16 20:02:37","2019-01-16 13:02:37"," ","","","publish","closed","closed","","39","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=39","21","nav_menu_item","","0"),
("61","1","2019-01-16 20:23:33","2019-01-16 13:23:33","","slider1","","inherit","open","closed","","slider1","","","2019-01-16 20:23:33","2019-01-16 13:23:33","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/slider1.jpg","0","attachment","image/jpeg","0"),
("66","1","2019-01-16 20:30:27","2019-01-16 13:30:27","","slider3","","inherit","open","closed","","slider3","","","2019-01-16 20:30:27","2019-01-16 13:30:27","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/slider3.jpg","0","attachment","image/jpeg","0"),
("74","1","2019-01-16 20:36:10","2019-01-16 13:36:10","","logo-giuseart","","inherit","open","closed","","logo-giuseart","","","2019-01-16 20:36:10","2019-01-16 13:36:10","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/logo-giuseart.png","0","attachment","image/png","0"),
("77","1","2019-01-16 20:37:10","2019-01-16 13:37:10","[row style=\"collapse\" class=\"header-block\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"87\" img_width=\"27\" pos=\"left\"]\n\n<p><span style=\"color: #ffffff;\">H???i ????p</span><br />\n<span style=\"color: #f44336;\">T?? v???n tr???c tuy???n</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"88\" img_width=\"27\" pos=\"left\"]\n\n<p><span style=\"color: #ffffff;\">T???ng ????i</span><br />\n<span style=\"color: #f44336;\"></span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"89\" img_width=\"27\" pos=\"left\"]\n\n<p><span style=\"color: #ffffff;\">GI??? l??m vi???c</span><br />\n<span style=\"color: #f44336;\">8:30-21:00</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[search style=\"flat\"]\n\n\n[/col]\n\n[/row]","Header block","","publish","closed","closed","","header-block","","","2019-01-16 20:43:16","2019-01-16 13:43:16","","0","https://tppone.com/demo/suadienthoai/?post_type=blocks&#038;p=77","0","blocks","","0"),
("87","1","2019-01-16 20:39:39","2019-01-16 13:39:39","","icon-1","","inherit","open","closed","","icon-1","","","2019-01-16 20:39:39","2019-01-16 13:39:39","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-1.png","0","attachment","image/png","0"),
("88","1","2019-01-16 20:39:39","2019-01-16 13:39:39","","icon-2","","inherit","open","closed","","icon-2","","","2019-01-16 20:39:39","2019-01-16 13:39:39","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-2.png","0","attachment","image/png","0"),
("89","1","2019-01-16 20:39:39","2019-01-16 13:39:39","","icon-3","","inherit","open","closed","","icon-3","","","2019-01-16 20:39:39","2019-01-16 13:39:39","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-3.png","0","attachment","image/png","0"),
("113","1","2019-01-16 20:54:57","2019-01-16 13:54:57","","icon-11","","inherit","open","closed","","icon-11","","","2019-01-16 20:54:57","2019-01-16 13:54:57","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-11.png","0","attachment","image/png","0"),
("114","1","2019-01-16 20:54:58","2019-01-16 13:54:58","","icon-22","","inherit","open","closed","","icon-22","","","2019-01-16 20:54:58","2019-01-16 13:54:58","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-22.png","0","attachment","image/png","0"),
("115","1","2019-01-16 20:54:58","2019-01-16 13:54:58","","icon-33","","inherit","open","closed","","icon-33","","","2019-01-16 20:54:58","2019-01-16 13:54:58","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-33.png","0","attachment","image/png","0"),
("116","1","2019-01-16 20:54:58","2019-01-16 13:54:58","","icon-44","","inherit","open","closed","","icon-44","","","2019-01-16 20:54:58","2019-01-16 13:54:58","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/icon-44.png","0","attachment","image/png","0"),
("138","1","2019-01-16 21:02:01","2019-01-16 14:02:01","https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/01/cropped-logo-giuseart.png","cropped-logo-giuseart.png","","inherit","open","closed","","cropped-logo-giuseart-png","","","2019-01-16 21:02:01","2019-01-16 14:02:01","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/cropped-logo-giuseart.png","0","attachment","image/png","0"),
("142","1","2019-01-16 21:33:05","2019-01-16 14:33:05","<h2>Sau m???t th???i gian d??i s??? d???ng c??ng v???i th??i quen s???c pin kh??ng ????ng c??ch th?? t??nh tr???ng iPhone c???a b???n b??? chai pin hay h???ng l?? ??i???u kh?? tr??nh kh???i. L??c n??y??thay pin iPhone??l?? l???a ch???n t???i ??u cho ng?????i d??ng.</h2>\nSau th???i gian d??i s??? d???ng b???n c???m th???y pin iPhone c???a m??nh ???? xu???ng c???p r???t nhi???u, s???c nhanh ?????y v?? s??? d???ng c??ng c???c nhanh h???t th?? b???n c???n thay pin cho iPhone. Vi???n Di ?????ng cung c???p d???ch v??? thay pin uy t??n, ch???t l?????ng t???i TPHCM.\n<h3>Nh???ng d???u hi???u cho bi???t khi n??o chi???c iPhone c???a b???n c???n thay pin</h3>\n<ul>\n 	<li>M??y kh??ng l??n ngu???n do pin h?? kh??ng cung c???p ??i???n n??ng cho m??y</li>\n 	<li>Th???i gian s??? d???ng gi???m xu???ng th???p h??n b??nh th?????ng</li>\n 	<li>Pin b??o ???o, khi s???c ho???c s??? d???ng ph???n tr??m pin t??ng gi???m kh??ng ?????u</li>\n 	<li>S???c pin kh??ng v??o, ph???n tr??m pin gi??? nguy??n</li>\n 	<li>Pin ph?? ?????i m??n h??nh l??n, r???t nguy hi???m n???u kh??ng thay pin k???p th???i s??? d???n t???i h?? h???ng m??n h??nh v?? r?? r??? h??a ch???t ?????c h???i trong pin</li>\n</ul>\n<img class=\"size-full wp-image-368 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/dau-hieu-hu-pin-iphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/dau-hieu-hu-pin-iphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/dau-hieu-hu-pin-iphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/dau-hieu-hu-pin-iphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/dau-hieu-hu-pin-iphone-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>N???u ??i???n tho???i c???a b???n t???t pin m???t c??ch nhanh ch??ng t???c l?? pin ???? b??? chai</em>\n<h3>Nguy??n nh??n g??y ra t??nh tr???ng h?? pin tr??n iPhone</h3>\n<ul>\n 	<li>??Pin ???? ???????c s??? d???ng trong th???i gian d??i</li>\n 	<li>V???a c???m s???c v???a s??? d???ng trong th???i gian d??i khi???n pin v???a n???p v???a x??? v???i c??ng su???t l???n l??m gi???m tu???i th??? c???a pin</li>\n 	<li>N?????c, h??a ch???t v??o l??m ch???p ch???m h?? h???ng pin</li>\n</ul>\n<img class=\"size-full wp-image-366 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/nguyen-nhan-hu-pin-iphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/nguyen-nhan-hu-pin-iphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/nguyen-nhan-hu-pin-iphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/nguyen-nhan-hu-pin-iphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/nguyen-nhan-hu-pin-iphone-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>V???a s???c v???a d??ng ??i???n tho???i l?? m???t trong nh???ng nguy??n nh??n g??y chai pin iPhone</em>\n<h3>V?? sao n??n ch???n thay pin ??i???n tho???i iPhone gi?? r??? t???i Vi???n Di ?????ng?</h3>\nV???i s??? t??n t??m, chuy??n nghi???p, h???t l??ng v?? kh??ch h??ng, t???t c??? c??c d???ch v??? t???i Vi???n Di ?????ng n??i chung v?? ?????c bi???t l?? d???ch v?????thay pin ??i???n tho???i iPhone gi?? r?????n??i ri??ng ?????u h?????ng t???i ti??u ch?? ch???t l?????ng t???t nh???t, s??? h??i l??ng tuy???t ?????i nh???t cho kh??ch h??ng.\n\nD???ch v??? thay pin ??i???n tho???i iPhone t???i Vi???n Di ?????ng s???:\n<ul>\n 	<li>Cam k???t pin iPhone nguy??n zin 100%, ch???t l?????ng t???t</li>\n 	<li>?????m b???o kh??ng c?? hi???n t?????ng tr??o ?????i linh ki???n c???a kh??ch h??ng</li>\n 	<li>Mang ?????n ch???t l?????ng d???ch v??? thay pin ??i???n tho???i iPhone T???T NH???T trong m???c gi?? R??? NH???T</li>\n 	<li>Th???i gian thay pin iPhone nhanh nh???t c?? th???, ????? kh??ch h??ng c?? th??? L???Y NGAY khi c???n</li>\n 	<li>Th??i ????? ph???c v??? th??n thi???n, chuy??n nghi???p, t???n t??m</li>\n</ul>\nT???t c??? c??c th??ng tin kh??c v??? d???ch v??? thay pin ??i???n tho???i iPhone, kh??ch h??ng c?? th??? li??n h??? v???i trung t??m ????? ???????c t?? v???n, gi???i ????p th???c m???c.","Thay pin ??i???n tho???i","","publish","open","open","","thay-pin-dien-thoai","","","2019-01-16 21:33:05","2019-01-16 14:33:05","","0","https://tppone.com/demo/suadienthoai/?p=142","0","post","","0"),
("143","1","2019-01-16 21:32:44","2019-01-16 14:32:44","","thay-pin-iphone-viendidong-1-370x194","","inherit","open","closed","","thay-pin-iphone-viendidong-1-370x194","","","2019-01-16 21:32:44","2019-01-16 14:32:44","","142","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/thay-pin-iphone-viendidong-1-370x194.jpg","0","attachment","image/jpeg","0"),
("145","1","2019-01-16 21:33:53","2019-01-16 14:33:53","<h2>Thay m??n h??nh ??i???n tho???i iPhone??l?? bi???n ph??p ti???t ki???m chi ph?? duy nh???t gi??p kh???c ph???c ho??n to??n t??nh tr???ng ???d??? c??ng??? b??? v??? m???t k??nh do va ?????p ho???c n???ng h??n l?? li???t c???m ???ng th???m ch?? l?? kh??ng th??? hi???n th??? th??ng tin tr??n m??n h??nh.</h2>\nTr?????c khi ??i ?????n quy???t ?????nh ch???n l???a ?????a ch??? uy t??n nh?? Vi???n Di ?????ng ????? thay m??n h??nh iPhone, b???n c???n n???m ???????c t??nh tr???ng thi???t b??? c???a m??nh th??? n??o, d???ch v??? n??o ph?? h???p v?? gi?? c??? ra sao.\n\n<img class=\"aligncenter wp-image-169 size-full\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-dien-thoai-iphone-viendidongcom.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-dien-thoai-iphone-viendidongcom.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-dien-thoai-iphone-viendidongcom-336x252.jpg 336w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-dien-thoai-iphone-viendidongcom-768x576.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-dien-thoai-iphone-viendidongcom-399x299.jpg 399w\" alt=\"thay-man-hinh-dien-thoai-iphone-viendidongcom\" width=\"780\" height=\"585\" />\n\n<em>B???n c?? th??? thay m??n h??nh iPhone t??? d??ng iPhone 4 ?????n iPhone X m???i nh???t c???a Apple t???i Vi???n Di ?????ng</em>\n<h3>D???u hi???u b???n c???n thay m??n h??nh, m???t k??nh c???m ???ng iPhone</h3>\niPhone b??? v??? m???t k??nh c???m ???ng v?? iPhone b??? v??? m??n h??nh l?? hai t??nh tr???ng ho??n to??n kh??c nhau, ph????ng ph??p s???a ch???a kh??c nhau v?? m???c chi ph?? c??ng kh??c nhau. Do ????, tr?????c khi mu???n thay m??n h??nh iPhone gi?? r???, b???n c???n ph??n bi???t r?? t??nh tr???ng thi???t b??? ??ang g???p ph???i d???a v??o c??c d???u hi???u:\n\n<strong>D???u hi???u b???n c???n thay m???t k??nh c???m ???ng iPhone</strong>\n\nTrong nh???ng tr?????ng h???p va ?????p v???a ph???i, iPhone c?? th??? ch??? b??? v??? m??n h??nh c???m ???ng ph??a ngo??i.\n\nT???c l?? l??c n??y, iPhone c???a b???n v???n c?? th??? thao t??c ???????c, vu???t ch???m, c???m ???ng b??nh th?????ng, hi???n th??? t???t. Khi ????, b???n ch??? c???n ??i thay m???t k??nh c???m ???ng ho???c ??p m???t k??nh iPhone v???i m???t m???c chi ph?? r??? h??n thay m??n h??nh.\n\n<img class=\"size-full wp-image-170 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-mat-hinh-iphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-hinh-iphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-hinh-iphone-viendidong-364x252.jpg 364w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-hinh-iphone-viendidong-768x532.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-hinh-iphone-viendidong-432x299.jpg 432w\" alt=\"thay-mat-hinh-iphone-viendidong\" width=\"780\" height=\"540\" />\n\n<em>B???n c???n ph??n bi???t ???????c, khi n??o c???n thay m???t k??nh c???m ???ng iPhone v?? khi n??o c???n thay m??n h??nh iPhone</em>\n\n<strong>D???u hi???u b???n c???n thay m??n h??nh iPhone</strong>\n<ul>\n 	<li>M??n h??nh iPhone (?????i v???i c??? iPhone 4 ?????n iPhone 8 Plus) g???p t??nh tr???ng b??? nh??e m???c ??? m???t ??i???m hay nhi???u ??i???m ??i???m. T???c l?? l??c n??y t???i ??i???m ???? th?? s??? kh??ng nh??n th???y g?? ngo??i m???t m??u ??en</li>\n 	<li>M??n h??nh iPhone g???p t??nh tr???ng b??? x???c, b??? nh??e</li>\n 	<li>C???m ???ng tr??n m??n h??nh b??? li???t, ????, l???i kh??ng c???m ???ng ???????c</li>\n 	<li>Kh??ng hi???n th??? ???????c tr??n m??n h??nh (m??n ch??? to??n m???u ??en)</li>\n</ul>\n<h3>V?? sao n??n ch???n thay m??n h??nh ??i???n tho???i iPhone gi?? r??? t???i Vi???n Di ?????ng?</h3>\nV???i s??? t??n t??m, chuy??n nghi???p, h???t l??ng v?? kh??ch h??ng, t???t c??? c??c d???ch v??? t???i Vi???n Di ?????ng n??i chung v?? ?????c bi???t l?? d???ch v?????thay m??n h??nh iPhone gi?? r?????n??i ri??ng ?????u h?????ng t???i ti??u ch?? ch???t l?????ng t???t nh???t, s??? h??i l??ng tuy???t ?????i nh???t cho kh??ch h??ng.\n\nD???ch v??? thay m??n h??nh ??i???n tho???i iPhone t???i Vi???n Di ?????ng s???:\n<ul>\n 	<li>Cam k???t linh ki???n m??n h??nh, m???t k??nh ??i???n tho???i iPhone nguy??n zin 100%, ch???t l?????ng t???t</li>\n 	<li>?????m b???o kh??ng c?? hi???n t?????ng tr??o ?????i linh ki???n c???a kh??ch h??ng</li>\n 	<li>Mang ?????n ch???t l?????ng d???ch v??? thay m??n h??nh ??i???n tho???i iPhone T???T NH???T trong m???c gi?? R??? NH???T</li>\n 	<li>Th???i gian thay m??n h??nh iPhone nhanh nh???t c?? th???, ????? kh??ch h??ng c?? th??? L???Y NGAY khi c???n</li>\n 	<li>Th??i ????? ph???c v??? th??n thi???n, chuy??n nghi???p, t???n t??m</li>\n</ul>\nT???t c??? c??c th??ng tin kh??c v??? d???ch v??? thay m??n h??nh ??i???n tho???i iPhone 5, 5C, 5S, 6, 6S, 7, 7 Plus, 8, 8 Plus, iPhone X kh??ch h??ng c?? th??? li??n h??? v???i trung t??m ????? ???????c t?? v???n, gi???i ????p th???c m???c.","Thay m??n h??nh iphone","","publish","open","open","","thay-man-hinh-iphone","","","2019-01-16 21:33:53","2019-01-16 14:33:53","","0","https://tppone.com/demo/suadienthoai/?p=145","0","post","","0"),
("146","1","2019-01-16 21:33:51","2019-01-16 14:33:51","","thay-man-hinh-dien-thoai-iphone-viendidong-370x194","","inherit","open","closed","","thay-man-hinh-dien-thoai-iphone-viendidong-370x194","","","2019-01-16 21:33:51","2019-01-16 14:33:51","","145","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/thay-man-hinh-dien-thoai-iphone-viendidong-370x194.jpg","0","attachment","image/jpeg","0"),
("148","1","2019-01-16 21:34:47","2019-01-16 14:34:47","<h2>Khi d??ng ??i???n tho???i Samsung, r???t c?? th??? b???n s??? ph???i ?????i m???t v???i t??nh tr???ng m??n h??nh b??? v??? do va ch???m ho???c r??i. B???n c???n ?????n ngay trung t??m s???a ch???a ???????thay m??n h??nh c???m ???ng Samsung, gi??p m??y tr??? v??? tr???ng th??i t???t nh???t.</h2>\nB???n ??ang g???p r???c r???i v???i m??n h??nh b??? h?? h???ng c???a chi???c ??i???n tho???i Samsung. B???n mu???n kh???c ph???c s??? c??? n??y? H??y ?????n ngay v???i trung t??m??<strong>Vi???n Di ?????ng</strong>??????? c?? ???????c d???ch v?????thay m??n h??nh Samsung??t???t nh???t t???i TP.HCM.\n<h3>D???u hi???u b???n c???n thay m??n h??nh, m???t k??nh c???m ???ng Samsung</h3>\nH???ng m???t k??nh c???m ???ng v?? h???ng m??n h??nh c???m ???ng l?? 2 t??nh tr???ng kh??c nhau. Tr?????c khi s???a ch???a, b???n c???n ph??n bi???t r?? t??nh tr???ng c???a m??y ????? c?? bi???n ph??p s???a ch???a th??ch h???p.\n\n<strong>D???u hi???u b???n c???n thay m???t k??nh c???m ???ng Samsung</strong>\n\nKhi m??n h??nh b??? v???, b???n c?? th??? d??ng ng??n tay di chuy???n tr??n kh???p c??c v??? tr?? c???a ??i???n tho???i ????? ki???m tra l???i kh??? n??ng c???m ???ng c???a m??y. N???u c???m ???ng kh??ng c?? b???t c??? h?? h???ng n??o, b???n ch??? c???n m???t m???t kho???n ti???n nh??? ????? thay k??nh.\n\n<img class=\"size-full wp-image-274 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-samsung-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-samsung-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-samsung-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-samsung-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-samsung-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>Khi m???t k??nh c???m ???ng LG b??? b??? nh??ng m??n h??nh b??n trong hi???n th??? t???t th?? b???n ch??? c???n thay m??n h??nh c???m ???ng</em>\n\n<strong>D???u hi???u b???n c???n thay m??n h??nh Samsung</strong>\n\nKhi b???n kh??ng c??n d??ng ???????c ch???c n??ng c???m ???ng c???a m??y n???a, ngh??a l?? m??n c???m ???ng ??i???n tho???i ???? b??? h???ng, v?? v???y, b???n h??y t??m cho m??nh m???t ?????a ??i???m s???a ch???a m??n h??nh uy t??n ????? c?? th??? thay l???i. Nh???ng d???u hi???u c???a vi???c m??n h??nh c???m ???ng c???a m??y ???? b??? h?? l??:\n<ul>\n 	<li>H??nh ???nh hi???n th??? b??? nh??e m??u</li>\n 	<li>M??n h??nh kh??ng hi???n th??? h???t to??n b??? n???i dung m?? ch??? m???t ph???n</li>\n 	<li>Xu???t hi???n ??i???m ch???t t???c l?? ??i???m m??u kh??c tr??n ph???n m??n h??nh</li>\n 	<li>M??n h??nh hi???n th??? b??? rung, gi???t, nh???p nh??y, c?? ???????ng v??n d???ng g???n s??ng</li>\n 	<li>M??n h??nh hi???n th??? kh??ng kh???p v???i t??c v??? (Vd: M??y c?? cu???c g???i ?????n, c?? chu??ng nh??ng m??n h??nh to??n m??u ??en, m???t l??c sau m???i chuy???n sang giao di???n nghe g???i)</li>\n</ul>\n<img class=\"size-full wp-image-362 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/man-hinh-samsung-bi-hu-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/man-hinh-samsung-bi-hu-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/man-hinh-samsung-bi-hu-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/man-hinh-samsung-bi-hu-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/man-hinh-samsung-bi-hu-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>N???u m??n h??nh hi???n th??? b??? s???c, nh??e, b???n c???n thay lu??n m??n h??nh c???m ???ng</em>\n<h3>V?? sao n??n ch???n thay m??n h??nh ??i???n tho???i iPhone gi?? r??? t???i Vi???n Di ?????ng?</h3>\nB???ng nh???ng linh ki???n zin m???i 100%, m??y m??c trang thi???t b??? h???t s???c hi???n ?????i v?? ?????i ng?? k??? thu???t vi??n v???i tay ngh??? cao,??<b>Vi???n Di ?????ng</b>??lu??n mang t???i cho kh??ch h??ng s??? h??i l??ng v?? th???a m??n nh???t v???i??d???ch v?????thay m??n h??nh Samsung gi?? r?????c???a ch??ng t??i.\n<ul>\n 	<li>?????i ng?? k??? thu???t vi??n nhi???u n??m kinh nghi???m v???i chuy??n m??n cao s??? nhanh ch??ng t??m ra b??? ph???n g??y ra nh???ng bi???u hi???n h?? h???ng c???a m??n h??nh ??i???n tho???i Samsung ????? c?? h?????ng gi???i quy???t tri???t ?????</li>\n 	<li>Tr?????ng h???p c???n thay m??n h??nh th?? ch??ng t??i cam k???t r???ng m??n h??nh Samsung thay m???i l?? h??ng nh???p kh???u ch??nh h??ng c???a nh?? s???n xu???t v???i ch???t l?????ng ???????c ?????m b???o</li>\n 	<li>????? gi??p kh??ch h??ng y??n t??m kh??ng b??? ????nh tr??o linh ki???n, nh??n vi??n s??? ch??? ?????ng y??u c???u kh??ch k?? t??n x??c nh???n v??o t???ng linh ki???n ????? d??? d??ng ki???m tra khi nh???n l???i m??y</li>\n 	<li>M???i b?????c trong to??n b??? quy tr??nh s???a ch???a thay th??? s??? ???????c th???c hi???n tr???c ti???p ngay tr?????c m???t kh??ch h??ng</li>\n 	<li>C??ng khai gi?? c???, th???i gian th???c hi???n t???ng d???ch v??? gi??p kh??ch h??ng so s??nh v?? c??n nh???c l???c ch???n</li>\n</ul>","Thay m??n h??nh Samsung","","publish","open","open","","thay-man-hinh-samsung","","","2019-01-16 21:34:47","2019-01-16 14:34:47","","0","https://tppone.com/demo/suadienthoai/?p=148","0","post","","0"),
("149","1","2019-01-16 21:34:45","2019-01-16 14:34:45","","thay-man-hinh-dien-thoai-samsung-viendidong-370x194","","inherit","open","closed","","thay-man-hinh-dien-thoai-samsung-viendidong-370x194","","","2019-01-16 21:34:45","2019-01-16 14:34:45","","148","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/thay-man-hinh-dien-thoai-samsung-viendidong-370x194.jpg","0","attachment","image/jpeg","0"),
("151","1","2019-01-16 21:35:41","2019-01-16 14:35:41","<h2>Qu?? tr??nh s??? d???ng ??i???n tho???i kh?? tr??nh kh???i nh???ng l??c b???n l??m r??i m??y d???n ?????n t??nh tr???ng v???, b??? m???t k??nh LG.??Thay m??n h??nh LG??ch??nh h??ng gi??p b???n gi???i quy???t tri???t ????? v???n ????? tr??n v?? ????a m??y tr??? v??? ho???t ?????ng ??? tr???ng th??i t???t nh???t.</h2>\nTh???u hi???u kh??ch h??ng, ch??ng t??i ???? v?? ??ang mang ?????n cho qu?? kh??ch d???ch v?????thay m??n h??nh LG??uy t??n nh???t TPHCM.??Vi???n Di ?????ng??mang ?????n cho kh??ch h??ng m???t phong c??ch ph???c v??? t???n t??nh, tho???i m??i m?? kh??ng n??i n??o c?? ???????c.\n<h3>D???u hi???u b???n c???n thay m??n h??nh, m???t k??nh c???m ???ng LG</h3>\nH???ng m???t k??nh c???m ???ng v?? h???ng m??n h??nh c???m ???ng l?? 2 t??nh tr???ng kh??c nhau. Tr?????c khi s???a ch???a, b???n c???n ph??n bi???t r?? t??nh tr???ng c???a m??y ????? c?? bi???n ph??p s???a ch???a th??ch h???p.\n\n<strong>D???u hi???u b???n c???n thay m???t k??nh c???m ???ng LG</strong>\n\nKhi ??i???n tho???i LG c???a b???n b??? r??i v??? b??? m???t k??nh nh??ng mainboard v???n ho???t ?????ng v?? m??n h??nh LCD b??n trong v???n hi???n th??? t???t, b???n mu???n h??nh th???c m??y ?????p th?? c???n thay m???t k??nh ??i???n tho???i LG.\n\n<img class=\"size-full wp-image-2297 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-lg-chinh-hang-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-lg-chinh-hang-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-lg-chinh-hang-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-lg-chinh-hang-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-man-hinh-lg-chinh-hang-viendidong-449x299.jpg 449w\" alt=\"thay-man-hinh-lg-chinh-hang-viendidong\" width=\"780\" height=\"520\" />\n\n<em>Khi m???t k??nh c???m ???ng LG b??? b??? nh??ng m??n h??nh b??n trong hi???n th??? t???t th?? b???n ch??? c???n thay m??n h??nh c???m ???ng</em>\n\n<strong>D???u hi???u b???n c???n thay m??n h??nh LG</strong>\n<ul>\n 	<li>H??nh ???nh hi???n th??? b??? nh??e m??u</li>\n 	<li>M??n h??nh kh??ng hi???n th??? h???t to??n b??? n???i dung m?? ch??? m???t ph???n</li>\n 	<li>Xu???t hi???n ??i???m ch???t t???c l?? ??i???m m??u kh??c tr??n ph???n m??n h??nh</li>\n 	<li>M??n h??nh hi???n th??? b??? rung, gi???t, nh???p nh??y, c?? ???????ng v??n d???ng g???n s??ng</li>\n 	<li>M??n h??nh hi???n th??? kh??ng kh???p v???i t??c v??? (Vd: M??y c?? cu???c g???i ?????n, c?? chu??ng nh??ng m??n h??nh to??n m??u ??en, m???t l??c sau m???i chuy???n sang giao di???n nghe g???i)</li>\n</ul>\n<img class=\"size-full wp-image-214 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/hu-man-hinh-lg-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/hu-man-hinh-lg-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/hu-man-hinh-lg-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/hu-man-hinh-lg-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/hu-man-hinh-lg-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>N???u m??n h??nh hi???n th??? b??? s???c, nh??e, b???n c???n thay lu??n m??n h??nh c???m ???ng</em>\n<h3>V?? sao n??n ch???n thay m??n h??nh ??i???n tho???i iPhone gi?? r??? t???i Vi???n Di ?????ng?</h3>\nV???i ?????i ng?? nh??n vi??n c?? tay ngh??? cao, s??? h??? tr??? c???a h??? th???ng m??y m??c hi???n ?????i t??? ?????ng,??<b>Vi???n Di ?????ng</b>??lu??n mang t???i cho kh??ch h??ng s??? h??i l??ng v?? th???a m??n nh???t v???i d???ch v?????thay m??n h??nh LG gi?? r?????c???a ch??ng t??i.\n<ul>\n 	<li>?????i ng?? k??? thu???t vi??n nhi???u n??m kinh nghi???m v???i chuy??n m??n cao s??? nhanh ch??ng t??m ra b??? ph???n g??y ra nh???ng bi???u hi???n h?? h???ng c???a m??n h??nh ??i???n tho???i LG ????? c?? h?????ng gi???i quy???t tri???t ?????</li>\n 	<li>Tr?????ng h???p c???n thay m??n h??nh th?? ch??ng t??i cam k???t r???ng m??n h??nh LG thay m???i l?? h??ng nh???p kh???u ch??nh h??ng c???a nh?? s???n xu???t v???i ch???t l?????ng ???????c ?????m b???o</li>\n 	<li>????? gi??p kh??ch h??ng y??n t??m kh??ng b??? ????nh tr??o linh ki???n, nh??n vi??n s??? ch??? ?????ng y??u c???u kh??ch k?? t??n x??c nh???n v??o t???ng linh ki???n ????? d??? d??ng ki???m tra khi nh???n l???i m??y</li>\n 	<li>M???i b?????c trong to??n b??? quy tr??nh s???a ch???a thay th??? s??? ???????c th???c hi???n tr???c ti???p ngay tr?????c m???t kh??ch h??ng</li>\n 	<li>H??? th???ng m??y m??c, trang thi???t b??? hi???n ?????i, ph???c v??? t???t nh???t cho vi???c s???a ch???a</li>\n 	<li>C??ng khai gi?? c???, th???i gian th???c hi???n t???ng d???ch v??? gi??p kh??ch h??ng so s??nh v?? c??n nh???c l???c ch???n</li>\n</ul>","Thay m??n h??nh LG","","publish","open","open","","thay-man-hinh-lg","","","2019-01-16 21:35:41","2019-01-16 14:35:41","","0","https://tppone.com/demo/suadienthoai/?p=151","0","post","","0"),
("152","1","2019-01-16 21:35:32","2019-01-16 14:35:32","","thay-man-hinh-lg-vien-di-dong-370x194","","inherit","open","closed","","thay-man-hinh-lg-vien-di-dong-370x194","","","2019-01-16 21:35:32","2019-01-16 14:35:32","","151","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/thay-man-hinh-lg-vien-di-dong-370x194.jpg","0","attachment","image/jpeg","0"),
("154","1","2019-01-16 21:36:35","2019-01-16 14:36:35","<h2>Thay m???t k??nh c???m iPhone??l?? bi???n ph??p ti???t ki???m nh???t khi m???t k??nh m??n h??nh ??i???n tho???i b??? v??? nh??ng c???m ???ng v???n ho???t ?????ng b??nh th?????ng. Vi???n Di ?????ng l?? ?????a ch??? thay m???t k??nh ??i???n tho???i iPhone uy t??n v?? ch???t l?????ng t???t.</h2>\nThay m???t k??nh c???m ???ng iPhone l?? d???ch v??? thay m???i t???m c???m ???ng gi??p b???n thao t??c d??? d??ng h??n. Khi c?? nhu c???u thay m???i, s???a ch???a b???n n??n l???a ch???n nh???ng trung t??m b???o h??nh v?? s???a ch???a uy t??n nh?? Vi???n Di ?????ng.\n<h3>D???u hi???u b???n c???n thay m???t k??nh c???m ???ng iPhone</h3>\n<ul>\n 	<li>M???t k??nh iPhone b??? b???, v???, tuy nhi??n m??n h??nh LCD b??n trong v???n c??n hi???n th??? b??nh th?????ng tuy nhi??n kh??ng th??? thao t??c.</li>\n 	<li>M??n h??nh iPhone b??? ??li???t, lo???n c???m ???ng, c???m ???ng kh??ng ???????c ho???c ?????t c???m ???ng m???t s??? ??i???m nh??ng m??n h??nh LCD b??n trong v???n hi???n th??? b??nh th?????ng.</li>\n</ul>\n<img class=\"size-full wp-image-674 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-chinh-hang-gia-re-viendidong-2.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-chinh-hang-gia-re-viendidong-2.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-chinh-hang-gia-re-viendidong-2-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-chinh-hang-gia-re-viendidong-2-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-chinh-hang-gia-re-viendidong-2-449x299.jpg 449w\" alt=\"thay-mat-kinh-cam-ung-iphone-chinh-hang-gia-re-viendidong\" width=\"780\" height=\"520\" />\n\n<em>N??n thay m???t k??nh c???m ???ng iPhone t???i trung t??m b???o h??nh uy t??n nh?? Vi???n Di ?????ng</em>\n<h3>Nguy??n nh??n khi???n m???t k??nh c???m ???ng iPhone b??? h??</h3>\nC?? r???t nhi???u nguy??n nh??n khi???n t???m k??nh c???m ???ng iPhone b??? h?? nh?? ??i???n tho???i b??? r??i, va ?????p. Ho???c c?? th??? do b???n ????? ??i???n tho???i trong m??i tr?????ng ???m ?????t, ??i???n tho???i b??? v??o n?????c. ??i???n tho???i c???a b???n ???? s??? d???ng qu?? l??u hay b???n ???? t???ng thay ph???i h??ng l??, h??ng k??m ch??t l?????ng.\n\n<img class=\"size-full wp-image-675 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-viendidong-2.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-viendidong-2.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-viendidong-2-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-viendidong-2-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-iphone-viendidong-2-449x299.jpg 449w\" alt=\"thay-mat-kinh-cam-ung-iphone-viendidong\" width=\"780\" height=\"520\" />\n\n<em>Thay m???t k??nh c???m ???ng iPhone ????? m??y thao t??c t???t nh???t</em>\n<h3>V?? sao n??n ch???n thay m???t k??nh c???m ???ng iPhone gi?? r??? t???i Vi???n Di ?????ng?</h3>\nV???i s??? t??n t??m, chuy??n nghi???p, h???t l??ng v?? kh??ch h??ng, c??ng h??? th???ng m??y m??c hi???n ?????i, t???t c??? c??c d???ch v??? t???i Vi???n Di ?????ng n??i chung v?? ?????c bi???t l????d???ch v?????thay m???t k??nh c???m ???ng iPhone gi?? r?????n??i ri??ng ?????u h?????ng t???i ti??u ch?? ch???t l?????ng t???t nh???t, s??? h??i l??ng tuy???t ?????i nh???t cho kh??ch h??ng.\n\nD???ch v??? thay m???t k??nh c???m ???ng iPhone t???i Vi???n Di ?????ng s???:\n<ul>\n 	<li>Cam k???t linh ki???n m???t k??nh c???m ???ng ??i???n tho???i iPhone nguy??n zin 100%, ch???t l?????ng t???t.</li>\n 	<li>?????m b???o kh??ng c?? hi???n t?????ng tr??o ?????i linh ki???n ??i???n tho???i c???a kh??ch h??ng.</li>\n 	<li>?????m b???o s??? l??m h??i l??ng kh??ch h??ng b???i ch???t l?????ng d???ch v??? t???t nh???t .</li>\n 	<li>C??ng khai gi?? c??? c??c d???ch v???, kh??ng c?? t??nh tr???ng ch???t ch??m kh??ch h??ng.</li>\n 	<li>Th???i gian thay m???t k??nh c???m ???ng iPhone nhanh nh???t c?? th???, ????? kh??ch h??ng c?? th??? l???y ngay khi c???n.</li>\n 	<li>H??? th???ng m??y m??c hi???n ?????i, th??i ????? ph???c v??? th??n thi???n, chuy??n nghi???p, t???n t??m.</li>\n</ul>\nT???t c??? c??c th??ng tin kh??c v??? d???ch v??? thay m???t k??nh c???m ???ng ??i???n tho???i iPhone 5, 5C, 5S, 6, 6S, 7, 7 Plus, 8, 8 Plus, iPhone X kh??ch h??ng c?? th??? li??n h??? v???i trung t??m ????? ???????c t?? v???n, gi???i ????p th???c m???c.","Thay k??nh c???m ???ng Iphone","","publish","open","open","","thay-kinh-cam-ung-iphone","","","2019-01-16 21:36:35","2019-01-16 14:36:35","","0","https://tppone.com/demo/suadienthoai/?p=154","0","post","","0"),
("155","1","2019-01-16 21:36:21","2019-01-16 14:36:21","","thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194","","inherit","open","closed","","thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194","","","2019-01-16 21:36:21","2019-01-16 14:36:21","","154","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/thay-mat-kinh-cam-ung-iphone-gia-re-viendidong-370x194.jpg","0","attachment","image/jpeg","0"),
("157","1","2019-01-16 21:37:18","2019-01-16 14:37:18","<h2>M???c d?? m??n h??nh ??i???n tho???i Samsung ???????c trang b??? m???t k??nh c?????ng l???c ch???ng ch???u va ?????p v?? ch???ng tr???y x?????c r???t t???t, nh??ng trong qu?? tr??nh s??? d???ng ng?????i d??ng kh??ng th??? tr??nh ???????c nh???ng r???i ro nh?? r??i v???, h???ng h??c l??m v??? m???t k??nh c???m ???ng.??Thay m???t k??nh c???m ???ng Samsung??t???i Vi???n Di ?????ng ?????m b???o ch???t l?????ng v?? gi?? c??? h???p l??.</h2>\nTr?????c khi mang ??? d??? iu??? c???a m??nh ??i s???a ch???a ng?????i d??ng n??n hi???u r?? t??nh tr???ng c???a m??y c??ng nh?? tham kh???o gi?? c???, ch??nh s??ch c???a c??c trung t??m s???a ch???a uy t??n hi???n nay ????? ra quy???t ?????nh ????ng ?????n.\n\n<img class=\"size-full wp-image-664 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/mat-kinh-cam-ung-samsung-bi-vo.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/mat-kinh-cam-ung-samsung-bi-vo.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/mat-kinh-cam-ung-samsung-bi-vo-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/01/mat-kinh-cam-ung-samsung-bi-vo-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/mat-kinh-cam-ung-samsung-bi-vo-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>M???t k??nh c???m ???ng Samsung b??? v??? g??y t?? li???t c???m ???ng</em>\n\n<strong>D???u hi???u m???t k??nh c???m ???ng Samsung b??? h??</strong>\n<ul>\n 	<li>M??n h??nh c???m ???ng b??? lo???n</li>\n 	<li>M??n h??nh b??? li???t c???m ???ng</li>\n</ul>\n<strong>Nguy??n nh??n g??y ra l???i h?? tr??n m???t k??nh c???m ???ng Samsung</strong>\n<ul>\n 	<li>Thay m???t k??nh c???m ???ng k??m ch???t l?????ng</li>\n 	<li>Do va ?????p m???nh v??o v???t c???ng, s???t nh???n</li>\n 	<li>Th???i gian s??? d???ng d??i nh??ng kh??ng v??? sinh m??y</li>\n</ul>\n<strong><img class=\"size-full wp-image-666 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-vien-di-dong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-vien-di-dong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-vien-di-dong-328x252.jpg 328w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-vien-di-dong-768x591.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/01/thay-mat-kinh-cam-ung-vien-di-dong-389x299.jpg 389w\" alt=\"\" width=\"780\" height=\"600\" /></strong>\n\n<em>Thay m??n h??nh c???m ???ng Samsung ch???t l?????ng gi?? r??? t???i Vi???n Di ?????ng</em>\n\n<strong>V?? sao s??? d???ng d???ch v??? thay m???t k??nh c???m ???ng Samsung t???i Vi???n Di ?????ng</strong>\n\nTr??n th??? tr?????ng s???a ch???a ??i???n tho???i ng??y nay c?? r???t nhi???u c???a h??ng, trung t??m s???a ch???a thay nhau m??? d???ch v??? nh??ng ch???t l?????ng s???a ch???a c??ng nh?? linh ki???n thay th??? l?? m???t c??u h???i l???n ?????t ra cho ng?????i d??ng. N???u ??ang t??m ki???m m???t trung t??m s???a ch???a uy t??n, ch???t l?????ng th?? Vi???n Di ?????ng ch??nh l?? s??? l???a ch???n ????ng ?????n d??nh cho b???n.\n<ul>\n 	<li>Cam k???t ch??? d??ng linh ki???n thay m??n h??nh c???m ???ng Samsung ch??nh hang t??? nh?? s???n xu???t nh???m ?????m b???o ch???t l?????ng cao d??nh cho kh??ch h??ng</li>\n 	<li>?????m b???o m???c gi?? thay m??n h??nh c???m ???ng t???t nh???t tr??n th??? tr?????ng hi???n nay</li>\n 	<li>?????i ng?? k??? thu???t vi??n c?? tay ngh??? cao v?? ???????c trang b??? m??y m??c, thi???t b??? t???i t??n nh???t ?????m b???o kh???c ph???c ho??n to??n l???i t??? m??n h??nh c???m ???ng</li>\n 	<li>Quy tr??nh s???a ch???a nhanh ch??ng, c??ng khai tr?????c m???t kh??ch h??ng</li>\n 	<li>Ch??? ????? ph???c v??? chuy??n nghi???p, th??n thi???n v?? chu ????o ?????m b???o mang ?????n s??? h??i l??ng d??nh cho kh??ch h??ng</li>\n</ul>","Thay k??nh c???m ???ng Samsung","","publish","open","open","","thay-kinh-cam-ung-samsung","","","2019-01-16 21:37:18","2019-01-16 14:37:18","","0","https://tppone.com/demo/suadienthoai/?p=157","0","post","","0"),
("158","1","2019-01-16 21:37:15","2019-01-16 14:37:15","","thay-mat-kinh-tai-vien-didong-370x194","","inherit","open","closed","","thay-mat-kinh-tai-vien-didong-370x194","","","2019-01-16 21:37:15","2019-01-16 14:37:15","","157","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/thay-mat-kinh-tai-vien-didong-370x194.jpg","0","attachment","image/jpeg","0"),
("177","1","2019-01-16 21:52:37","2019-01-16 14:52:37","C??ng v???i ng??nh ngh?????s???a ch???a ??i???n tho???i, ??p c??? Smartphone??hi???n nay ???? tr??? th??nh m???t ng??nh ngh??? ph??? bi???n v?? quen thu???c v???i c??c k??? thu???t vi??n trong l??nh v???c mobile hi???n nay, t??? n??m 2012 ??p c??? Smartphone ???? ph??t tri???n v?????t b???c t???i th??? tr?????ng Vi???t Nam cho ?????n nay tr??? th??nh 1 ng??nh ngh??? ri??ng , ???????c ????ng ?????o s??? quan t??m c???a ng?????i h???c.??Trung t??m Vi???n Di ?????ng hi???n ??ang nh???n??????o t???o KTV ??p c??? Smartphone??tr??nh ????? chuy??n m??n cao ????? gi??p c??c b???n c?? th??? l??m ngh??? v???ng ch???c .\n\n<img class=\"size-full wp-image-2285 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/02/ep-co-smartphone-vien-didong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/02/ep-co-smartphone-vien-didong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/02/ep-co-smartphone-vien-didong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/02/ep-co-smartphone-vien-didong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/02/ep-co-smartphone-vien-didong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>??p c??? Smartphone tr??? th??nh 1 ngh??? hot ???????c nhi???u b???n tr??? y??u th??ch</em>\n<h3>I. Ch????ng tr??nh ????o t???o KTV ??p c??? Smartphone t???i Vi???n Di ?????ng</h3>\nV???i kh??a h???c KTV ??p c??? Smartphone t???i Vi???n Di ?????ng, b???n s??? c?? ???????c nh???ng ki???n th???c c?? b???n v?? ?????y ????? nh???t v??? ph???n ??p c??? Smartphone, b??n c???nh ???? trung t??m ????o t???o cho k??? thu???t vi??n c??c k??? n??ng m???m, ?????nh h?????ng ngh??? nghi???p ph??t tri???n c?????v??? tay ngh??? v?? ki???n th???c x?? h???i.\n\n<img class=\"size-full wp-image-4157 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/hoc-vien-ep-co-smartphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/hoc-vien-ep-co-smartphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/hoc-vien-ep-co-smartphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/hoc-vien-ep-co-smartphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/hoc-vien-ep-co-smartphone-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>C??c h???c vi??n c???a ch????ng??tr??nh ????o t???o KTV ??p c??? Smartphone??</em>\n\nD?????i ????y l?? ????? c????ng chi ti???t c???a ch????ng tr??nh ????o t???o KTV ??p c??? Smartphone t???i Vi???n Di ?????ng:\n<ol>\n 	<li>????o t???o k??? thu???t vi??n ??p c??? test m??y khi nh???n v??o : Cam k???t hi???u r?? v?? test m??y ??? kh??ng s??t b??? ph???n n??o ??? H???n ch??? r???i ro khi nh???n v??o ??? K??? n??ng nh???n m??y c???a kh??ch .</li>\n 	<li>C??ch th??o r??p t???t c??? c??c d??ng m??y smartphone ??? 1 s??? b?? quy???t h???n ch??? r???i ro khi th??o r??p ??i???n tho???i</li>\n 	<li>Ph????ng ph??p c???o keo chuy??n nghi???p : h???n ch??? t???i ??a kh??? n??ng l??m h?? ,tr???y m??n h??nh</li>\n 	<li>Ph????ng ph??p v??? sinh m??n h??nh tr?????c khi ??p : B?? quy???t ti???t ki???m dung d???ch Falcon 530 m?? m??n h??nh v???n s???c v?? ?????p</li>\n 	<li>Quy tr??nh ??p c??? : Chuy??n nghi???p ch??nh x??c ??? ??p t???t c??? c??c lo???i smartphone hi???n gi??? tr??n th??? tr?????ng</li>\n 	<li>Ph????ng ph??p h??t b???t ??? h???p : Gi??p chi???c m??n h??nh sau khi ho??n t???t tr??? n??n ?????p nh?? m???i</li>\n 	<li>V?? nh???ng tuy???t chi??u , gi???i ph??p HOT ????? gi??p c??c b???n sau khi ra ngh??? c?? ?????y ????? k??? n??ng c???n thi???t nh???t .</li>\n 	<li>Cam k???t khi h???c xong ho??n thi???n k??? n??ng ??p k??nh 100% ??? ???????c h???p ti???p ho???c h???c l???i mi???n ph?? ?????n khi ra ngh??? th?? th??i .</li>\n</ol>\n<h3>II. ??u ????i khi ????ng k?? kh??a h???c KTV ??p c??? Smartphone t???i Vi???n Di ?????ng</h3>\n<ol>\n 	<li><strong>Ch???ng nh???n</strong>: Ch???ng nh???n t???t nghi???p ho??n th??nh kh??a ????o t???o nghi???p v??? c???a Vi???n Di ?????ng. C?? hi???u l???c s??? d???ng tr??n to??n h??? th???ng c??ng ty Vi???n Di ?????ng</li>\n 	<li><strong>??u ????i khuy???n h???c:</strong></li>\n</ol>\n<ul>\n 	<li>Gi???m 10% cho 3 h???c vi??n ????ng k?? ?????u ti??n</li>\n 	<li>Gi???m 20% cho h???c vi??n c?? cha, m??? l?? th????ng binh, li???t s??</li>\n 	<li>Gi???m 10% h???c ph?? cho b??? ????? xu???t ng?? trong 6 th??ng k??? t??? ng??y xu???t ng??</li>\n 	<li>Gi???m 30% h???c ph?? cho h???c vi??n c?? s??? h??? ngh??o &amp; Gi???m 20% h???c ph?? cho h???c vi??n c?? s??? c???n ngh??o</li>\n 	<li>?????c bi???t: H???c vi??n t???t nghi???p lo???i Kh??, Gi???i s??? ???????c nh???n l???i l??m vi???c t???i h??? th???ng c??c trung t??m c???a Vi???n Di ?????ng, Di ?????ng Vi???t tr??n to??n qu???c</li>\n</ul>\n<h3>III. V?? sao n??n ch???n h???c KTV ??p c??? Smartphone t???i Vi???n Di ?????ng</h3>\n<img class=\"size-full wp-image-4158 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinh-dao-tao-ep-co-smartphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinh-dao-tao-ep-co-smartphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinh-dao-tao-ep-co-smartphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinh-dao-tao-ep-co-smartphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinh-dao-tao-ep-co-smartphone-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>L???p h???c ch????ng tr??nh ????o t???o KTV ??p c??? Smartphone??</em>\n<ol>\n 	<li>????o t???o ki???n th???c, k??? n??ng t??? c?? b???n ?????n chuy??n s??u, kh??ng g??y b??? ng??? cho ng?????i m???i v?? n??ng cao tay ngh??? cho ng?????i ???? c?? kinh nghi???m.</li>\n 	<li>Ch????ng tr??nh ???????c thi???t k??? ????? c????ng, b??i gi???ng theo t???ng h???ng m???c chuy??n bi???t, gi??p h???c vi??n d??? d??ng h??? th???ng ki???n th???c.</li>\n 	<li>H???c l?? thuy???t xen l???n th???c h??nh, mang t???i m???t chu tr??nh h???c t???ng qu??t, khoa h???c, gi??p h???c vi??n d??? d??ng l??m quen v???i c??ng vi???c sau khi k???t th??c kh??a h???c.</li>\n 	<li>H???c vi??n c?? c?? h???i tr??? th??nh th???c t???p sinh t???i h??? th???ng s???a ch???a ??a chi nh??nh Vi???n Di ?????ng, c?? c?? h???i ???????c tr???i nghi???m nh???ng d???ch v??? s???a ch???a chuy??n nghi???p, h???c h???i v?? n??ng cao tay ngh???.</li>\n 	<li>Nhi???u ch????ng tr??nh ??u ????i, khuy???n m??i th?????ng xuy??n di???n ra. Chi ph?? v???a ph???i, ph?? h???p v???i c??c ?????i t?????ng mu???n tr??? th??nh nh???ng K??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p.</li>\n</ol>","KTV ??p k??nh c??? Smartphone","","publish","open","open","","ktv-ep-kinh-co-smartphone","","","2019-01-16 21:52:37","2019-01-16 14:52:37","","0","https://tppone.com/demo/suadienthoai/?p=177","0","post","","0"),
("178","1","2019-01-16 21:52:25","2019-01-16 14:52:25","","chuong-trinh-dao-tao-ep-co-smartphone-viendidong","","inherit","open","closed","","chuong-trinh-dao-tao-ep-co-smartphone-viendidong","","","2019-01-16 21:52:25","2019-01-16 14:52:25","","177","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/chuong-trinh-dao-tao-ep-co-smartphone-viendidong.jpg","0","attachment","image/jpeg","0"),
("180","1","2019-01-16 21:53:25","2019-01-16 14:53:25","<h2>Nhu c???u ??p k??nh Smartphone ng??y c??ng t??ng v?? v???y kh??a h???c??KTV ??p k??nh Smartphone??t???i Vi???n Di ?????ng ??ang ???????c ????ng ?????o c??c b???n tr??? quan t??m. Khi tham gia c??c kh??a h???c t???i trung t??m b???n s??? ???????c h???c l?? thuy???t v?? th???c h??nh.</h2>\nThay m???t k??nh ??i???n tho???i ??ang r???t ph??? bi???n v?? nhu c???u s??? d???ng ng??y c??ng t??ng l??n. V?? v???y, m?? c??ng vi???c ??p k??nh c??ng ???????c nhi???u ng?????i quan t??m. T??? ????, Vi???n Di ?????ng m??? ra nh???ng kh??a ????o t???o KTV ??p k??nh Smartphone v???i mong mu???n ????o t???o ra nh???ng KTV c?? k?? thu???t chu???n, ch???t l?????ng ????o t???o t???t nh???t.\n\n<img class=\"size-full wp-image-2283 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/02/ktv-ep-kinh-smartphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/02/ktv-ep-kinh-smartphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/02/ktv-ep-kinh-smartphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/02/ktv-ep-kinh-smartphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/02/ktv-ep-kinh-smartphone-viendidong-449x299.jpg 449w\" alt=\"ktv-ep-kinh-smartphone-viendidong\" width=\"780\" height=\"520\" />\n\n<em>Vi???n Di ?????ng l?? trung t??m ????o t???o ngh??? uy t??n</em>\n<h3>I. Ch????ng tr??nh ????o t???o KTV ??p k??nh Smartphone t???i Vi???n Di ?????ng</h3>\n<ol>\n 	<li>????o t???o test m??y: Hi???u r?? c??ch test m??y, kh??ng s??t b??? ph???n n??o khi nh???n m??y t??? kh??ch h??ng.</li>\n 	<li>????o t???o c??ch th??o r??p t???t c??? c??c d??ng m??y Smartphone.</li>\n 	<li>Quy tr??nh t??ch k??nh c???a t???t c??? c??c lo???i k??nh iPhone , Samsung ,HTC, LG, Sony, Nokia.</li>\n 	<li>Ph????ng ph??p t??ch k??nh Samsung kh??ng c???n dung d???ch benzen v?? h???n ch??? b??? h?? h???ng.</li>\n 	<li>Ph????ng ph??p c???o keo chuy??n nghi???p : h???n ch??? t???i ??a kh??? n??ng l??m h?? ,tr???y x?????c m??n h??nh.</li>\n 	<li>H???c vi??n ???????c ????o t???o ph????ng ph??p v??? sinh m??n h??nh tr?????c khi ??p.</li>\n 	<li>Quy tr??nh ??p k??nh : M???t c??ch ch??nh x??c v?? chuy??n nghi???p nh???t.</li>\n 	<li>Ph????ng ph??p h??t b???t h???p: M??n h??nh sau khi ho??n t???t tr??? n??n ?????p nh?? m???i</li>\n</ol>\n<img class=\"size-full wp-image-4161 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ep-kinh-smartphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ep-kinh-smartphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ep-kinh-smartphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ep-kinh-smartphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ep-kinh-smartphone-viendidong-449x299.jpg 449w\" alt=\"lop-hoc-ep-kinh-smartphone-viendidong\" width=\"780\" height=\"520\" />\n\n<em>L???p h???c??KTV ??p k??nh Smartphone</em>\n<h3>II. ??u ????i khi ????ng k?? kh??a h???c KTV s???a ch???a ??i???n tho???i ph??? th??ng t???i Vi???n Di ?????ng</h3>\n<ol>\n 	<li><strong>Ch???ng nh???n:</strong>??Ch???ng nh???n t???t nghi???p ho??n th??nh kh??a ????o t???o nghi???p v??? c???a Vi???n Di ?????ng. C?? hi???u l???c s??? d???ng tr??n to??n h??? th???ng c??ng ty Vi???n Di ?????ng</li>\n 	<li><strong>??u ????i khuy???n h???c:</strong></li>\n</ol>\n<ul>\n 	<li>Gi???m 20% cho h???c vi??n c?? cha, m??? l?? th????ng binh, li???t s??</li>\n 	<li>Gi???m 10% h???c ph?? cho b??? ????? xu???t ng?? trong 6 th??ng k??? t??? ng??y xu???t ng??</li>\n 	<li>Gi???m 30% h???c ph?? cho h???c vi??n c?? s??? h??? ngh??o &amp; Gi???m 20% h???c ph?? cho h???c vi??n c?? s??? c???n ngh??o</li>\n 	<li>?????c bi???t: H???c vi??n t???t nghi???p lo???i Kh??, Gi???i s??? ???????c nh???n l???i l??m vi???c t???i h??? th???ng c??c trung t??m c???a Vi???n Di ?????ng, Di ?????ng Vi???t tr??n to??n qu???c</li>\n</ul>\n<h3>III. V?? sao n??n ch???n h???c KTV????p k??nh Smartphone t???i Vi???n Di ?????ng</h3>\n<img class=\"size-full wp-image-4160 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/gio-thu-hanh-ep-kinh-smartphone-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/gio-thu-hanh-ep-kinh-smartphone-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thu-hanh-ep-kinh-smartphone-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thu-hanh-ep-kinh-smartphone-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thu-hanh-ep-kinh-smartphone-viendidong-449x299.jpg 449w\" alt=\"gio-thu-hanh-ep-kinh-smartphone-viendidong\" width=\"780\" height=\"520\" />\n\n<em>Gi??? th???c h??nh??KTV ??p k??nh Smartphone</em>\n<ol>\n 	<li>????o t???o ki???n th???c, k??? n??ng t??? c?? b???n ?????n chuy??n s??u, kh??ng g??y b??? ng??? cho ng?????i m???i v?? n??ng cao tay ngh??? cho ng?????i ???? c?? kinh nghi???m.</li>\n 	<li>Ch????ng tr??nh ???????c thi???t k??? ????? c????ng, b??i gi???ng theo t???ng h???ng m???c chuy??n bi???t, gi??p h???c vi??n d??? d??ng h??? th???ng ki???n th???c.</li>\n 	<li>H???c l?? thuy???t xen l???n th???c h??nh, mang t???i m???t chu tr??nh h???c t???ng qu??t, khoa h???c, gi??p h???c vi??n d??? d??ng l??m quen v???i c??ng vi???c sau khi k???t th??c kh??a h???c.</li>\n 	<li>H???c vi??n c?? c?? h???i tr??? th??nh th???c t???p sinh t???i h??? th???ng s???a ch???a ??a chi nh??nh Vi???n Di ?????ng, c?? c?? h???i ???????c tr???i nghi???m nh???ng d???ch v??? s???a ch???a chuy??n nghi???p, h???c h???i v?? n??ng cao tay ngh???.</li>\n 	<li>Nhi???u ch????ng tr??nh ??u ????i, khuy???n m??i th?????ng xuy??n di???n ra. Chi ph?? v???a ph???i, ph?? h???p v???i c??c ?????i t?????ng mu???n tr??? th??nh nh???ng K??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p.</li>\n</ol>","KTV ??p k??nh Smartphone","","publish","open","open","","ktv-ep-kinh-smartphone","","","2019-01-16 21:53:25","2019-01-16 14:53:25","","0","https://tppone.com/demo/suadienthoai/?p=180","0","post","","0"),
("181","1","2019-01-16 21:53:22","2019-01-16 14:53:22","","gio-thu-hanh-ep-kinh-smartphone-viendidong","","inherit","open","closed","","gio-thu-hanh-ep-kinh-smartphone-viendidong","","","2019-01-16 21:53:22","2019-01-16 14:53:22","","180","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/gio-thu-hanh-ep-kinh-smartphone-viendidong.jpg","0","attachment","image/jpeg","0"),
("183","1","2019-01-16 21:54:04","2019-01-16 14:54:04","???????c xem l?? m???t chuy??n ????? c?? t??? r???t s???m, kh??a h???c??KTV ph???n m???m ??i???n tho???i chuy??n nghi???p??l?? m???t ch????ng tr??nh ????o t???o h???c vi??n v??? ph????ng ph??p c??i ?????t v?? s??? d???ng c??c thi???t b??? Box ph???c v??? cho nhu c???u ng?????i d??ng tr??n c??c h??ng ??i???n tho???i th??ng d???ng nh???t: Nokia, SAMSUNG, LG, Sony???\nCh????ng tr??nh ???????c x??y d???ng c???i bi??n li??n t???c, b??m s??t y??u c???u th???c t??? v?? c???p nh???t nh???ng thay ?????i theo s??? ph??t tri???n c???a c??c h??ng th??ng d???ng??? T???o cho h???c vi??n kh??? n??ng ph??t tri???n ph?? h???p nh???t trong l??nh v???c ???? c?? t??? r???t s???m n??y.\n\n<img class=\"size-full wp-image-2282 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/02/phan-mem-dien-thoai-samsung-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/02/phan-mem-dien-thoai-samsung-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/02/phan-mem-dien-thoai-samsung-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/02/phan-mem-dien-thoai-samsung-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/02/phan-mem-dien-thoai-samsung-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>Kh??a h???c CTV Ph???n m???m ??i???n tho???i chuy??n nghi???p m??? ra c?? h???i ngh??? nghi???p r???t l???n cho h???c vi??n</em>\n<h3>I. Ch????ng tr??nh ????o t???o KTV Ph???n m???m ??i???n tho???i chuy??n nghi???p t???i Vi???n Di ?????ng</h3>\nV???i kh??a h???c KTV Ph???n m???m ??i???n tho???i chuy??n nghi???p t???i Vi???n Di ?????ng b???n s??? kh??ng c???n h???c th??m b???t c??? kh??a h???c n??o v??? ph???n m???m ??i???n tho???i n???a. V?? kh??a h???c s??? cung c???p cho b???n nh???ng ki???n th???c c?? b???n v?? ?????y ????? nh???t, b??n c???nh ???? trung t??m ????o t???o cho k??? thu???t vi??n c??c k??? n??ng m???m, ?????nh h?????ng ngh??? nghi???p ph??t tri???n c?????v??? tay ngh??? v?? ki???n th???c x?? h???i.\n\n<img class=\"size-full wp-image-4162 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinhktv-phan-mem-chuyen-nguyep-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinhktv-phan-mem-chuyen-nguyep-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinhktv-phan-mem-chuyen-nguyep-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinhktv-phan-mem-chuyen-nguyep-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/chuong-trinhktv-phan-mem-chuyen-nguyep-viendidong-449x299.jpg 449w\" alt=\"chuong-trinhktv-phan-mem-chuyen-nguyep-viendidong\" width=\"780\" height=\"520\" />\n\n<em>L???p h???c??CTV Ph???n m???m ??i???n tho???i chuy??n nghi???p</em>\n\nD?????i ????y l?? ????? c????ng chi ti???t c???a ch????ng tr??nh ????o t???o KTV Ph???n m???m ??i???n tho???i chuy??n nghi???p t???i Vi???n Di ?????ng:\n\n<strong><em>?????nh h?????ng ngh??? nghi???p</em></strong>\n<ol>\n 	<li><em>T???ng quan ph???n m???m ??i???n tho???i di ?????ng</em></li>\n 	<li><em>M???c ????ch c???a ph???n m???m l?? g???</em></li>\n 	<li><em>H???c s???a ch???a ph???n m???m l?? h???c nh???ng g???</em></li>\n 	<li><em>H???c ph???n m???m c???n trang b??? nh???ng k??? n??ng g???</em></li>\n 	<li><em>Kh??? n??ng h??? tr??? c???a trung t??m</em></li>\n</ol>\n<em><strong>PH???N M???M C??N B???N</strong></em>\n<ol>\n 	<li><strong>Chuy??n ????? ANDROID</strong></li>\n</ol>\n<ul>\n 	<li>L??m quen nh???ng Kh??i ni???m, Thu???t ng??? c?? b???n v??? h??? ??i???u h??nh</li>\n 	<li>L??m quen v???i Tool d??nh ri??ng cho t???ng d??ng m??y. VD: Odin???.</li>\n 	<li>H?????ng d???n Backup Danh b???, H??nh ???nh, C??i ?????t ???ng d???ng</li>\n 	<li>H?????ng d???n Flash Firmwares g???c ( Stock Rom ) cho t???ng d??ng m??y</li>\n 	<li>H?????ng d???n Root m??y, Reset, Format???</li>\n 	<li>L??m quen v???i c??c lo???i Box h??? tr???</li>\n</ul>\n<ol start=\"2\">\n 	<li><strong>Chuy??n ????? APPLE</strong></li>\n</ol>\n<ul>\n 	<li>L??m quen nh???ng Kh??i ni???m, Thu???t ng??? c?? b???n v??? h??? ??i???u h??nh iOS</li>\n 	<li>L??m quen v???i Tool d??nh cho iOS</li>\n 	<li>H?????ng d???n t???o T??i kho???n Apple ID, Backup Danh b???, H??nh ???nh, C??i ?????t ???ng d???ng</li>\n 	<li>H?????ng d???n Restore/ Update iPhone/ iPad</li>\n</ul>\n<em><strong>PH???N M???M N??NG CAO</strong></em>\n<ol>\n 	<li><strong>Chuy??n ????? ANDROID</strong></li>\n</ol>\n<ul>\n 	<li>H?????ng d???n Flash Rom qua Recovery</li>\n 	<li>H?????ng d???n S??? d???ng c??c l???nh c?? b???n qua ADB, Fastboot</li>\n 	<li>H H?????ng d???n Fix c??c l???i th?????ng g???p tr??n c??c d??ng m??y X??ch tay</li>\n 	<li>H?????ng d???n s??? d???ng th??nh t???o c??c lo???i Box: XTC2CLIP, Z3X, Easy Jtag, Octopus, Riff</li>\n 	<li>H?????ng d???n Vi???t h??a</li>\n 	<li>H?????ng d???n build file th??nh Rom ho??n ch???nh</li>\n 	<li>H?????ng d???n Repair Boot, Unbrick Ph???n m???m, Ph???n c???ng</li>\n 	<li>H?????ng d???n Repair EMMC ( ??? c???ng )</li>\n</ul>\n<ol start=\"2\">\n 	<li><strong>Chuy??n ????? APPLE</strong></li>\n</ol>\n<ul>\n 	<li>H?????ng d???n Jailbreak</li>\n 	<li>H?????ng d???n Fix l???i ?????i v???i c??c d??ng m??y Lock</li>\n</ul>\n<h3>II. ??u ????i khi ????ng k?? kh??a h???c KTV s???a ch???a ??i???n tho???i ph??? th??ng t???i Vi???n Di ?????ng</h3>\n<ol>\n 	<li><strong>Ch???ng nh???n</strong>: Ch???ng nh???n t???t nghi???p ho??n th??nh kh??a ????o t???o nghi???p v??? c???a Vi???n Di ?????ng. C?? hi???u l???c s??? d???ng tr??n to??n h??? th???ng c??ng ty Vi???n Di ?????ng</li>\n 	<li><strong>??u ????i khuy???n h???c:</strong></li>\n</ol>\n<ul>\n 	<li>Gi???m 10% cho 3 h???c vi??n ????ng k?? ?????u ti??n</li>\n 	<li>Gi???m 20% cho h???c vi??n c?? cha, m??? l?? th????ng binh, li???t s??</li>\n 	<li>Gi???m 10% h???c ph?? cho b??? ????? xu???t ng?? trong 6 th??ng k??? t??? ng??y xu???t ng??</li>\n 	<li>Gi???m 30% h???c ph?? cho h???c vi??n c?? s??? h??? ngh??o &amp; Gi???m 20% h???c ph?? cho h???c vi??n c?? s??? c???n ngh??o</li>\n 	<li>?????c bi???t: H???c vi??n t???t nghi???p lo???i Kh??, Gi???i s??? ???????c nh???n l???i l??m vi???c t???i h??? th???ng c??c trung t??m c???a Vi???n Di ?????ng, Di ?????ng Vi???t tr??n to??n qu???c</li>\n</ul>\n<h3>III. V?? sao n??n ch???n h???c KTV Ph???n m???m ??i???n tho???i chuy??n nghi???p t???i Vi???n Di ?????ng</h3>\n<img class=\"size-full wp-image-4163 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/ktv-phan-mem-chuyen-nguyep-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/ktv-phan-mem-chuyen-nguyep-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/ktv-phan-mem-chuyen-nguyep-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/ktv-phan-mem-chuyen-nguyep-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/ktv-phan-mem-chuyen-nguyep-viendidong-449x299.jpg 449w\" alt=\"ktv-phan-mem-chuyen-nguyep-viendidong\" width=\"780\" height=\"520\" />\n\n<em>Gi??? th???c h??nh??CTV Ph???n m???m ??i???n tho???i chuy??n nghi???p</em>\n<ol>\n 	<li>????o t???o ki???n th???c, k??? n??ng t??? c?? b???n ?????n chuy??n s??u, kh??ng g??y b??? ng??? cho ng?????i m???i v?? n??ng cao tay ngh??? cho ng?????i ???? c?? kinh nghi???m.</li>\n 	<li>Ch????ng tr??nh ???????c thi???t k??? ????? c????ng, b??i gi???ng theo t???ng h???ng m???c chuy??n bi???t, gi??p h???c vi??n d??? d??ng h??? th???ng ki???n th???c.</li>\n 	<li>H???c l?? thuy???t xen l???n th???c h??nh, mang t???i m???t chu tr??nh h???c t???ng qu??t, khoa h???c, gi??p h???c vi??n d??? d??ng l??m quen v???i c??ng vi???c sau khi k???t th??c kh??a h???c.</li>\n 	<li>H???c vi??n c?? c?? h???i tr??? th??nh th???c t???p sinh t???i h??? th???ng s???a ch???a ??a chi nh??nh Vi???n Di ?????ng, c?? c?? h???i ???????c tr???i nghi???m nh???ng d???ch v??? s???a ch???a chuy??n nghi???p, h???c h???i v?? n??ng cao tay ngh???.</li>\n 	<li>Nhi???u ch????ng tr??nh ??u ????i, khuy???n m??i th?????ng xuy??n di???n ra. Chi ph?? v???a ph???i, ph?? h???p v???i c??c ?????i t?????ng mu???n tr??? th??nh nh???ng K??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p.</li>\n</ol>","KTV ph???n m???m ??i???n tho???i chuy??n nghi???p","","publish","open","open","","ktv-phan-mem-dien-thoai-chuyen-nghiep","","","2019-01-16 21:54:04","2019-01-16 14:54:04","","0","https://tppone.com/demo/suadienthoai/?p=183","0","post","","0"),
("184","1","2019-01-16 21:54:00","2019-01-16 14:54:00","","ktv-phan-mem-chuyen-nguyep-viendidong","","inherit","open","closed","","ktv-phan-mem-chuyen-nguyep-viendidong","","","2019-01-16 21:54:00","2019-01-16 14:54:00","","183","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/ktv-phan-mem-chuyen-nguyep-viendidong.jpg","0","attachment","image/jpeg","0"),
("186","1","2019-01-16 21:54:41","2019-01-16 14:54:41","<h2>D??ng ??i???n tho???i Android ng??y c??ng ph??t tri???n m???nh b???i m???c gi?? ??a d???ng, thi???t k??? ?????p do ???? kh??a h???c??KTV s???a ch???a ??i???n tho???i Android??l?? m???t chuy??n ng??nh quan tr???ng??kh??ng th??? thi???u ?????i v???i c??c b???n tr??? n??ng ?????ng v?? khao kh??t l??m gi??u trong ng??nh????i???n t??? vi???n th??ng.</h2>\n<img class=\"size-full wp-image-2271 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/02/khoa-hoc-sua-chua-dien-thoai-android-vien-di-dong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-sua-chua-dien-thoai-android-vien-di-dong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-sua-chua-dien-thoai-android-vien-di-dong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-sua-chua-dien-thoai-android-vien-di-dong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-sua-chua-dien-thoai-android-vien-di-dong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>Kh??a h???c KTV s???a ch???a ??i???n tho???i Android chuy??n nghi???p t???i Vi???n Di ?????ng</em>\n<h3>I. Ch????ng tr??nh ????o t???o KTV s???a ch???a ??i???n tho???i Android t???i Vi???n Di ?????ng</h3>\n?????n v???i ch????ng tr??nh ????o t???o KTV s???a ch???a ??i???n tho???i Android t???i Vi???n Di ?????ng b???n s??? n???m ???????c t???t c??? c??c nguy??n t???c, k??? thu???t s???a ch???a chuy??n nghi???p c???a c??c d??ng ??i???n tho???i th??ng d???ng nh?? Samsung, LG, Sony, HTC. V???i gi??o tr??nh v?? ph????ng ph??p d???y ????n gi???n v?? s??? t???n t??m c???a c??c gi??o vi??n s??? khi???n b???n ti???p thu m???t c??ch nhanh ch??ng.\n\n<img class=\"size-full wp-image-4166 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-android-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-android-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-android-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-android-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-android-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>Gi??? th???c h??nh l???p??KTV s???a ch???a ??i???n tho???i Android t???i Vi???n Di ?????ng</em>\n\n<em>D?????i ????y l?? ????? c????ng chi ti???t c???a ch????ng tr??nh ????o t???o KTV s???a ch???a ??i???n tho???i Android t???i Vi???n Di ?????ng</em>\n\n1. Gi????i thi????u t????ng qua??t v???? H??H Android\n\n2. H?????ng d???n s??? d???ng c??c d??ng m??y H??H Android v?? c??c ph??m ch???c n??ng.\n\n3. K??? thu???t s???a ch???a Smartphone LG G3, G4, G5\n\n4. K??? thu???t s???a ch???a Smartphone Samsung S5, S6\n\n5. K??? thu???t s???a ch???a Smartphone Sony Z1, Z2, Z3\n\n6. K??? thu???t s???a ch???a Smartphone HTC M8, M9\n\n<strong><u>N???i dung ????o t???o c??? th??? trong t???ng model nh?? sau:</u></strong>\n<ol>\n 	<li>05 nguy??n t???c c??n b???n c???n nh??? khi s???a ch???a ??i???n tho???i di ?????ng Smartphone.(1 ti???t)</li>\n 	<li>Gi???i thi???u t???ng quan v?? ph??n t??ch s?? ????? m???ch</li>\n 	<li>Ph????ng ph??p s???a ch???a kh???i ngu???n</li>\n 	<li>Ph????ng ph??p s???a ch???a kh???i ??i???u khi???n</li>\n 	<li>Ph????ng ph??p s???a ch???a kh???i giao ti???p ngo???i vi (h?????ng d???n s???a c??c pan th?????ng g???p nh??: Wifi, loa chu??ng, mic???.).</li>\n</ol>\n<h3>II. ??u ????i khi ????ng k?? kh??a h???c KTV s???a ch???a ??i???n tho???i Android t???i Vi???n Di ?????ng</h3>\n1.??<strong>L???p k??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p</strong>:\n<ul>\n 	<li>T???ng b??? d???ng c??? s???a ch???a, th??o l???p Smartphone</li>\n 	<li>Gi???m 10% h???c ph?? cho 3 h???c vi??n ????ng k?? ?????u ti??n</li>\n</ul>\n<strong>2. Ch???ng nh???n:</strong>??Ch???ng nh???n t???t nghi???p ho??n th??nh kh??a ????o t???o nghi???p v??? c???a Vi???n Di ?????ng. C?? hi???u l???c s??? d???ng tr??n to??n h??? th???ng c??ng ty Vi???n Di ?????ng\n\n<strong>3. ??u ????i khuy???n h???c:</strong>\n<ul>\n 	<li>Gi???m 20% cho h???c vi??n c?? cha, m??? l?? th????ng binh, li???t s??</li>\n 	<li>Gi???m 10% h???c ph?? cho b??? ????? xu???t ng?? trong 6 th??ng k??? t??? ng??y xu???t ng??</li>\n 	<li>Gi???m 30% h???c ph?? cho h???c vi??n c?? s??? h??? ngh??o &amp; Gi???m 20% h???c ph?? cho h???c vi??n c?? s??? c???n ngh??o</li>\n 	<li>?????c bi???t: H???c vi??n t???t nghi???p lo???i Kh??, Gi???i s??? ???????c nh???n l???i l??m vi???c t???i h??? th???ng c??c trung t??m c???a Vi???n Di ?????ng, Di ?????ng Vi???t tr??n to??n qu???c</li>\n</ul>\n<h3>III. V?? sao n??n ch???n h???c KTV s???a ch???a ??i???n tho???i ph??? th??ng t???i Vi???n Di ?????ng</h3>\n<img class=\"size-full wp-image-4165 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>H??nh ???nh l???p??KTV s???a ch???a ??i???n tho???i Android t???i Vi???n Di ?????ng</em>\n<ol>\n 	<li>????o t???o ki???n th???c, k??? n??ng t??? c?? b???n ?????n chuy??n s??u, kh??ng g??y b??? ng??? cho ng?????i m???i v?? n??ng cao tay ngh??? cho ng?????i ???? c?? kinh nghi???m.</li>\n 	<li>Ch????ng tr??nh ???????c thi???t k??? ????? c????ng, b??i gi???ng theo t???ng h???ng m???c chuy??n bi???t, gi??p h???c vi??n d??? d??ng h??? th???ng ki???n th???c.</li>\n 	<li>H???c l?? thuy???t xen l???n th???c h??nh, mang t???i m???t chu tr??nh h???c t???ng qu??t, khoa h???c, gi??p h???c vi??n d??? d??ng l??m quen v???i c??ng vi???c sau khi k???t th??c kh??a h???c.</li>\n 	<li>H???c vi??n c?? c?? h???i tr??? th??nh th???c t???p sinh t???i h??? th???ng s???a ch???a ??a chi nh??nh Vi???n Di ?????ng, c?? c?? h???i ???????c tr???i nghi???m nh???ng d???ch v??? s???a ch???a chuy??n nghi???p, h???c h???i v?? n??ng cao tay ngh???.</li>\n 	<li>Nhi???u ch????ng tr??nh ??u ????i, khuy???n m??i th?????ng xuy??n di???n ra. Chi ph?? v???a ph???i, ph?? h???p v???i c??c ?????i t?????ng mu???n tr??? th??nh nh???ng K??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p.</li>\n</ol>","KTV s???a ch???a ??i???n tho???i Android","","publish","open","open","","ktv-sua-chua-dien-thoai-android","","","2019-01-16 21:54:41","2019-01-16 14:54:41","","0","https://tppone.com/demo/suadienthoai/?p=186","0","post","","0"),
("187","1","2019-01-16 21:54:36","2019-01-16 14:54:36","","lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong","","inherit","open","closed","","lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong","","","2019-01-16 21:54:36","2019-01-16 14:54:36","","186","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/lop-hoc-ktv-sua-chua-dien-thoai-android-viendidong.jpg","0","attachment","image/jpeg","0"),
("189","1","2019-01-16 21:55:17","2019-01-16 14:55:17","<h2>iPhone l?? d??ng ??i???n tho???i ???????c r???t nhi???u ng?????i y??u chu???ng nh??? thi???t k??? ?????ng c???p, c???u h??nh m???nh m??? v?? ????? b???o m???t cao. Song song v???i s??? ph??t tri???n ???? th?? d???ch v??? s???a ch???a ??i???n tho???i c??ng t??ng theo v?? ng??y c??ng khan hi???m ngu???n l???c. Ch??nh v?? v???y Vi???n Di ?????ng cho ra ?????i kh??a h???c??KTV s???a ch???a ??i???n tho???i iOS??v???i ?????i ng?? gi??o vi??n chuy??n nghi???p, gi??u kinh nghi???m.</h2>\n<img class=\"size-full wp-image-2280 aligncenter\" src=\"https://viendidong.com/wp-content/uploads/2018/02/khoa-hoc-ktv-sua-chua-dien-thoai-ios-vien-di-dong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-ktv-sua-chua-dien-thoai-ios-vien-di-dong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-ktv-sua-chua-dien-thoai-ios-vien-di-dong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-ktv-sua-chua-dien-thoai-ios-vien-di-dong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/02/khoa-hoc-ktv-sua-chua-dien-thoai-ios-vien-di-dong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>Kh??a h???c KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</em>\n<h3>I. Ch????ng tr??nh ????o t???o KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</h3>\nKh??a h???c KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng s??? cung c???p to??n b??? nh???ng ki???n th???c c??n b???n v?? n??ng cao khi s???a ch???a ??i???n tho???i iPhone. V???i s??? k???t h???p gi???a l?? thuy???t v?? th???c h??nh gi??p h???c vi??n nhanh ch??ng n???m b???t b??i h???c d??? d??ng nh???t.\n\n<img class=\"size-full wp-image-4169 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-ios-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-ios-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-ios-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-ios-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/gio-thuc-hanh-ktv-sua-chua-dien-thoai-ios-viendidong-449x299.jpg 449w\" alt=\"\" width=\"780\" height=\"520\" />\n\n<em>Gi??? th???c h??nh l???p ????o t???o??KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</em>\n\n<em>D?????i ????y l?? ????? c????ng chi ti???t c???a ch????ng tr??nh ????o t???o KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</em>\n\n<strong><em>1- Chuy??n ????? H??? ??i???u h??nh IOS ??? Apple iPhone 4/4S/5/5S ( L?? thuy???t + th???c h??nh: 20 bu???i, th???c t???p: 10 bu???i)</em></strong>\n\n<strong>1.1. Gi???i thi???u h??? ??i???u h??nh iOS c???a Apple.</strong>\n\n<strong>1.2. H?????ng d???n s??? d???ng iPhone v?? c??c ph??m ch???c n??ng.</strong>\n\n<strong>1.3. H?????ng d???n th??o ??? r??p m??y v?? thay th??? linh ki???n cho iPhone.</strong>\n\n<strong>1.4. Nh???n di???n IC v?? ch???c n??ng t???ng lo???i IC d??ng trong iPhone.</strong>\n\n??? Kh???i x??? l?? ngu???n: Power supply control IC, USB power supply/Charger,\n\n??? Kh???i x??? l?? trung t??m: Amplication processor embedded, NOR flash memory, Base band Processing LSI,\n\n??? Kh???i x??? l?? s??ng: GSM Power Amplifier, Antenna Switch, W-CDMA and GSM transmission LSI,\n\n??? Kh???i x??? l?? ??m thanh: Audio codec LSI.\n\n??? Kh???i thi???t b??? ngo???i vi kh??c: Wireless LAN and Bluetooth transmission\n\n<strong>1.5. H?????ng d???n &amp; Th???c h??nh x??? l?? pan/b???nh th???c t???</strong>\n<h3>II. ??u ????i khi ????ng k?? kh??a h???c KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</h3>\n1.??<strong>L???p k??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p</strong>:\n<ul>\n 	<li>T???ng b??? d???ng c??? s???a ch???a, th??o l???p Smartphone</li>\n 	<li>Gi???m 10% h???c ph?? cho 3 h???c vi??n ????ng k?? ?????u ti??n</li>\n</ul>\n<strong>2. Ch???ng nh???n:</strong>??Ch???ng nh???n t???t nghi???p ho??n th??nh kh??a ????o t???o nghi???p v??? c???a Vi???n Di ?????ng. C?? hi???u l???c s??? d???ng tr??n to??n h??? th???ng c??ng ty Vi???n Di ?????ng\n\n<strong>3. ??u ????i khuy???n h???c:</strong>\n<ul>\n 	<li>Gi???m 20% cho h???c vi??n c?? cha, m??? l?? th????ng binh, li???t s??</li>\n 	<li>Gi???m 10% h???c ph?? cho b??? ????? xu???t ng?? trong 6 th??ng k??? t??? ng??y xu???t ng??</li>\n 	<li>Gi???m 30% h???c ph?? cho h???c vi??n c?? s??? h??? ngh??o &amp; Gi???m 20% h???c ph?? cho h???c vi??n c?? s??? c???n ngh??o</li>\n 	<li>?????c bi???t: H???c vi??n t???t nghi???p lo???i Kh??, Gi???i s??? ???????c nh???n l???i l??m vi???c t???i h??? th???ng c??c trung t??m c???a Vi???n Di ?????ng, Di ?????ng Vi???t tr??n to??n qu???c</li>\n</ul>\n<h3>III. V?? sao n??n ch???n h???c KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</h3>\n<img class=\"size-full wp-image-4170 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/06/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong-449x299.jpg 449w\" alt=\"lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong\" width=\"780\" height=\"520\" />\n\n<em>Nh???ng h???c vi??n??KTV s???a ch???a ??i???n tho???i iOS t???i Vi???n Di ?????ng</em>\n<ol>\n 	<li>????o t???o ki???n th???c, k??? n??ng t??? c?? b???n ?????n chuy??n s??u, kh??ng g??y b??? ng??? cho ng?????i m???i v?? n??ng cao tay ngh??? cho ng?????i ???? c?? kinh nghi???m.</li>\n 	<li>Ch????ng tr??nh ???????c thi???t k??? ????? c????ng, b??i gi???ng theo t???ng h???ng m???c chuy??n bi???t, gi??p h???c vi??n d??? d??ng h??? th???ng ki???n th???c.</li>\n 	<li>H???c l?? thuy???t xen l???n th???c h??nh, mang t???i m???t chu tr??nh h???c t???ng qu??t, khoa h???c, gi??p h???c vi??n d??? d??ng l??m quen v???i c??ng vi???c sau khi k???t th??c kh??a h???c.</li>\n 	<li>H???c vi??n c?? c?? h???i tr??? th??nh th???c t???p sinh t???i h??? th???ng s???a ch???a ??a chi nh??nh Vi???n Di ?????ng, c?? c?? h???i ???????c tr???i nghi???m nh???ng d???ch v??? s???a ch???a chuy??n nghi???p, h???c h???i v?? n??ng cao tay ngh???.</li>\n 	<li>Nhi???u ch????ng tr??nh ??u ????i, khuy???n m??i th?????ng xuy??n di???n ra. Chi ph?? v???a ph???i, ph?? h???p v???i c??c ?????i t?????ng mu???n tr??? th??nh nh???ng K??? thu???t vi??n s???a ch???a ??i???n tho???i chuy??n nghi???p.</li>\n</ol>","KTV s???a ch???a ??i???n tho???i Iphone","","publish","open","open","","ktv-sua-chua-dien-thoai-iphone","","","2019-01-16 21:55:17","2019-01-16 14:55:17","","0","https://tppone.com/demo/suadienthoai/?p=189","0","post","","0"),
("190","1","2019-01-16 21:55:12","2019-01-16 14:55:12","","lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong","","inherit","open","closed","","lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong","","","2019-01-16 21:55:12","2019-01-16 14:55:12","","189","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/lop-hoc-ktv-sua-chua-dien-thoai-ios-viendidong.jpg","0","attachment","image/jpeg","0"),
("202","1","2019-01-16 22:07:05","2019-01-16 15:07:05","","picture1","","inherit","open","closed","","picture1","","","2019-01-16 22:07:05","2019-01-16 15:07:05","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/picture1.jpg","0","attachment","image/jpeg","0"),
("207","1","2019-01-16 22:12:47","2019-01-16 15:12:47","","picture2","","inherit","open","closed","","picture2","","","2019-01-16 22:12:47","2019-01-16 15:12:47","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/picture2.jpg","0","attachment","image/jpeg","0"),
("210","1","2019-01-16 22:16:25","2019-01-16 15:16:25","","picture3","","inherit","open","closed","","picture3","","","2019-01-16 22:16:25","2019-01-16 15:16:25","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/picture3.jpg","0","attachment","image/jpeg","0"),
("212","1","2019-01-16 22:17:40","2019-01-16 15:17:40","","picture4","","inherit","open","closed","","picture4","","","2019-01-16 22:17:40","2019-01-16 15:17:40","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/picture4.jpg","0","attachment","image/jpeg","0"),
("214","1","2019-01-16 22:19:17","2019-01-16 15:19:17","","picture5","","inherit","open","closed","","picture5","","","2019-01-16 22:19:17","2019-01-16 15:19:17","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/picture5.jpg","0","attachment","image/jpeg","0"),
("216","1","2019-01-16 22:20:10","2019-01-16 15:20:10","","picture6","","inherit","open","closed","","picture6","","","2019-01-16 22:20:10","2019-01-16 15:20:10","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/picture6.jpg","0","attachment","image/jpeg","0"),
("226","1","2019-01-16 22:30:16","2019-01-16 15:30:16","","2","","inherit","open","closed","","2","","","2019-01-16 22:30:16","2019-01-16 15:30:16","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/2.jpg","0","attachment","image/jpeg","0"),
("227","1","2019-01-16 22:30:17","2019-01-16 15:30:17","","3","","inherit","open","closed","","3","","","2019-01-16 22:30:17","2019-01-16 15:30:17","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/3.jpg","0","attachment","image/jpeg","0"),
("228","1","2019-01-16 22:30:17","2019-01-16 15:30:17","","4","","inherit","open","closed","","4","","","2019-01-16 22:30:17","2019-01-16 15:30:17","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/4.jpg","0","attachment","image/jpeg","0"),
("229","1","2019-01-16 22:30:17","2019-01-16 15:30:17","","5","","inherit","open","closed","","5","","","2019-01-16 22:30:17","2019-01-16 15:30:17","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/5.jpg","0","attachment","image/jpeg","0"),
("230","1","2019-01-16 22:30:17","2019-01-16 15:30:17","","1","","inherit","open","closed","","1","","","2019-01-16 22:30:17","2019-01-16 15:30:17","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/1.jpg","0","attachment","image/jpeg","0"),
("258","1","2019-01-16 22:46:32","2019-01-16 15:46:32","<h2>Ch????ng tr??nh khuy???n m??i ?????u n??m si??u h???p d???n ??ang di???n ra t???i Vi???n Di ?????ng, t??n trang ??i???n tho???i gi?? si??u r???, l???i c??n gi???m gi?? ?????n 19%.</h2>\n<img class=\"size-full wp-image-5415 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2019/01/53-12-banner-ch%C6%B0%C6%A1ng-tr%C3%ACnh-th%C3%A1ng-1-VDD-3-780x520.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2019/01/53-12-banner-ch????ng-tr??nh-th??ng-1-VDD-3-780x520.jpg 780w, https://www.viendidong.com/wp-content/uploads/2019/01/53-12-banner-ch????ng-tr??nh-th??ng-1-VDD-3-780x520-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2019/01/53-12-banner-ch????ng-tr??nh-th??ng-1-VDD-3-780x520-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2019/01/53-12-banner-ch????ng-tr??nh-th??ng-1-VDD-3-780x520-449x299.jpg 449w\" alt=\"53-12-banner-ch????ng-tr??nh-th??ng-1-VDD-3-780x520\" width=\"780\" height=\"520\" />\n<h3>1. N???i dung ch????ng tr??nh:</h3>\n<ul>\n 	<li>??p k??nh c???m ???ng Android gi???m 19% (Xem chi ti???t)</li>\n 	<li>??p k??nh Android gi???m 19%??(Xem chi ti???t)</li>\n 	<li>Thay v??? ??? ????? v??? iPhone gi???m 19%??(Xem chi ti???t)</li>\n 	<li>??p k??nh iPhone gi???m gi?? 19%??(Xem chi ti???t)</li>\n 	<li>Thay pin iPhone gi???m 19%??(Xem chi ti???t)</li>\n 	<li>Thay m??n h??nh iPhone, t???ng D??n m??n h??nh??(Xem chi ti???t)</li>\n</ul>\n<h3>2. Th???i gian ??p d???ng:</h3>\nCh????ng tr??nh khuy???n m??i di???n ra t??? ng??y??<strong>01 ??? 31/01/2019</strong>","Khuy???n m??i ch??o 2019: T??t l???i smartphone gi???m gi?? ?????n 19%","","publish","open","open","","khuyen-mai-chao-2019-tut-lai-smartphone-giam-gia-den-19","","","2019-01-17 10:13:08","2019-01-17 03:13:08","","0","https://tppone.com/demo/suadienthoai/?p=258","0","post","","0"),
("261","1","2019-01-16 22:47:31","2019-01-16 15:47:31","<h2>Vi???n Di ?????ng ??em ?????n ch????ng tr??nh khuy???n m??i ?????u n??m v?? c??ng h???p d???n, gi???m gi?? ?????n 19% d??nh cho kh??ch h??ng ??p k??nh c??c d??ng ??i???n tho???i iPhone.</h2>\n<img class=\"size-full wp-image-5386 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-iphone-giam-19-780x520-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-iphone-giam-19-780x520-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-iphone-giam-19-780x520-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-iphone-giam-19-780x520-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-iphone-giam-19-780x520-viendidong-449x299.jpg 449w\" alt=\"ep-kinh-iphone-giam-19-780x520-viendidong\" width=\"780\" height=\"520\" />\n<h3>1. B???ng gi?? khuy???n m??i 19% ??p k??nh iPhone:</h3>\n<h3>2. Th???i gian ??p d???ng:</h3>\nCh????ng tr??nh khuy???n m??i di???n ra t??? ng??y<strong>??01/01 ??? 31/01/2019.</strong>\n<h3>3. ?????i t?????ng ??p d???ng</h3>\nT???t c??? kh??ch h??ng ?????n????p k??nh iPhone t???i??Vi???n Di ?????ng??trong th???i gian khuy???n m??i.\n<h3>4. ?????a ??i???m ??p d???ng:??H??? th???ng c???a h??ng Vi???n Di ?????ng</h3>\n<ul>\n 	<li>51 L?? V??n Vi???t, P. Hi???p Ph?? , Q.9 , TP.HCM</li>\n 	<li>250 ???????ng 3/2, P.12, Q.10, TP.HCM</li>\n 	<li>241 Ho??ng V??n Th???, P.8, Q.Ph?? Nhu???n, TP.HCM</li>\n 	<li>??62A Tr???n Quang Kh???i, P.T??n ?????nh, Q.1, TP.HCM</li>\n 	<li>621 ??u C??, P.T??n Qu??, Q.T??n Ph??, TP.HCM</li>\n 	<li>367 Quang Trung, P.10, Q.G?? V???p, TP.HCM</li>\n</ul>\nTh??ng tin chi ti???t v??? ch????ng tr??nh khuy???n m??i, Qu?? kh??ch h??ng vui l??ng li??n h??? hotline??1900.2057??ho???c t???i showroom g???n nh???t ????? ???????c nh??n vi??n t?? v???n chi ti???t.","Khuy???n m??i ch??o n??m m???i 2019: ??p k??nh iPhone gi???m gi?? 19%","","publish","open","open","","khuyen-mai-chao-nam-moi-2019-ep-kinh-iphone-giam-gia-19","","","2019-01-17 10:11:24","2019-01-17 03:11:24","","0","https://tppone.com/demo/suadienthoai/?p=261","0","post","","0"),
("264","1","2019-01-16 22:48:23","2019-01-16 15:48:23","<h2>Vi???n Di ?????ng ??em ?????n ch????ng tr??nh khuy???n m??i ?????u n??m v?? c??ng h???p d???n, gi???m gi?? ?????n 19% d??nh cho kh??ch h??ng ??p k??nh c???m ???ng c??c d??ng Android.</h2>\n<img class=\"size-full wp-image-5382 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/12/ep-cam-ung-android-giam-19-780x520-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/12/ep-cam-ung-android-giam-19-780x520-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-cam-ung-android-giam-19-780x520-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-cam-ung-android-giam-19-780x520-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-cam-ung-android-giam-19-780x520-viendidong-449x299.jpg 449w\" alt=\"ep-cam-ung-android-giam-19-780x520-viendidong\" width=\"780\" height=\"520\" />\n<h3>1. B???ng gi?? khuy???n m??i 19% ??p k??nh c???m ???ng c??c d??ng ??i???n tho???i Android</h3>\n<h3>2. Th???i gian ??p d???ng:</h3>\nCh????ng tr??nh khuy???n m??i di???n ra t??? ng??y??<strong>01 ??? 31/01/2019.</strong>\n<h3>3. ?????i t?????ng ??p d???ng</h3>\nT???t c??? kh??ch h??ng ?????n????p k??nh c???m ???ng Android t???i??Vi???n Di ?????ng??trong th???i gian khuy???n m??i.\n<h3>4. ?????a ??i???m ??p d???ng:??H??? th???ng c???a h??ng Vi???n Di ?????ng</h3>\n<ul>\n 	<li>51 L?? V??n Vi???t, P. Hi???p Ph?? , Q.9 , TP.HCM</li>\n 	<li>250 ???????ng 3/2, P.12, Q.10, TP.HCM</li>\n 	<li>241 Ho??ng V??n Th???, P.8, Q.Ph?? Nhu???n, TP.HCM</li>\n 	<li>??62A Tr???n Quang Kh???i, P.T??n ?????nh, Q.1, TP.HCM</li>\n 	<li>621 ??u C??, P.T??n Qu??, Q.T??n Ph??, TP.HCM</li>\n 	<li>367 Quang Trung, P.10, Q.G?? V???p, TP.HCM</li>\n</ul>\nTh??ng tin chi ti???t v??? ch????ng tr??nh khuy???n m??i, Qu?? kh??ch h??ng vui l??ng li??n h??? hotline??<strong>1900.2057</strong>??ho???c t???i showroom g???n nh???t ????? ???????c nh??n vi??n t?? v???n chi ti???t.","Khuy???n m??i ch??o n??m m???i 2019: ??p k??nh c???m ???ng Android gi???m 19%","","publish","open","open","","khuyen-mai-chao-nam-moi-2019-ep-kinh-cam-ung-android-giam-19","","","2019-01-17 10:33:17","2019-01-17 03:33:17","","0","https://tppone.com/demo/suadienthoai/?p=264","0","post","","0"),
("267","1","2019-01-16 22:49:16","2019-01-16 15:49:16","<h2>Vi???n Di ?????ng ??em ?????n ch????ng tr??nh khuy???n m??i ?????u n??m v?? c??ng h???p d???n, gi???m gi?? ?????n 19% d??nh cho kh??ch h??ng ??p k??nh c??c d??ng Android.</h2>\n<img class=\"size-full wp-image-5390 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-android-giam-19-780x520-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-android-giam-19-780x520-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-android-giam-19-780x520-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-android-giam-19-780x520-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/12/ep-kinh-android-giam-19-780x520-viendidong-449x299.jpg 449w\" alt=\"ep-kinh-android-giam-19-780x520-viendidong\" width=\"780\" height=\"520\" />\n<h3>1. B???ng gi?? khuy???n m??i 19% ??p k??nh Android</h3>\n<h3>2. Th???i gian ??p d???ng:</h3>\nCh????ng tr??nh khuy???n m??i di???n ra t??? ng??y??<strong>01 ??? 31/01/2019.</strong>\n<h3>3. ?????i t?????ng ??p d???ng</h3>\nT???t c??? kh??ch h??ng ?????n????p k??nh Android t???i??Vi???n Di ?????ng??trong th???i gian khuy???n m??i.\n<h3>4. ?????a ??i???m ??p d???ng:??H??? th???ng c???a h??ng Vi???n Di ?????ng</h3>\n<ul>\n 	<li>51 L?? V??n Vi???t, P. Hi???p Ph?? , Q.9 , TP.HCM</li>\n 	<li>250 ???????ng 3/2, P.12, Q.10, TP.HCM</li>\n 	<li>241 Ho??ng V??n Th???, P.8, Q.Ph?? Nhu???n, TP.HCM</li>\n 	<li>??62A Tr???n Quang Kh???i, P.T??n ?????nh, Q.1, TP.HCM</li>\n 	<li>621 ??u C??, P.T??n Qu??, Q.T??n Ph??, TP.HCM</li>\n 	<li>367 Quang Trung, P.10, Q.G?? V???p, TP.HCM</li>\n</ul>\nTh??ng tin chi ti???t v??? ch????ng tr??nh khuy???n m??i, Qu?? kh??ch h??ng vui l??ng li??n h??? hotline??<strong>1900.2057</strong>??ho???c t???i showroom g???n nh???t ????? ???????c nh??n vi??n t?? v???n chi ti???t.","Khuy???n m??i ch??o n??m m???i 2019: ??p k??nh Android gi???m 19%","","publish","open","open","","khuyen-mai-chao-nam-moi-2019-ep-kinh-android-giam-19","","","2019-01-17 10:10:34","2019-01-17 03:10:34","","0","https://tppone.com/demo/suadienthoai/?p=267","0","post","","0"),
("270","1","2019-01-16 22:49:56","2019-01-16 15:49:56","<h2>Vi???n Di ?????ng ??em ?????n ch????ng tr??nh khuy???n m??i ?????u n??m v?? c??ng h???p d???n, gi???m gi?? ?????n 19% d??nh cho kh??ch h??ng Thay v??? ??? ????? v??? iPhone, ch??? t??? 284k.</h2>\n<img class=\"size-full wp-image-5394 aligncenter\" src=\"https://www.viendidong.com/wp-content/uploads/2018/12/thay-vo-do-vo-iphone-giam-19-780x520-viendidong.jpg\" sizes=\"(max-width: 780px) 100vw, 780px\" srcset=\"https://www.viendidong.com/wp-content/uploads/2018/12/thay-vo-do-vo-iphone-giam-19-780x520-viendidong.jpg 780w, https://www.viendidong.com/wp-content/uploads/2018/12/thay-vo-do-vo-iphone-giam-19-780x520-viendidong-378x252.jpg 378w, https://www.viendidong.com/wp-content/uploads/2018/12/thay-vo-do-vo-iphone-giam-19-780x520-viendidong-768x512.jpg 768w, https://www.viendidong.com/wp-content/uploads/2018/12/thay-vo-do-vo-iphone-giam-19-780x520-viendidong-449x299.jpg 449w\" alt=\"thay-vo-do-vo-iphone-giam-19-780x520-viendidong\" width=\"780\" height=\"520\" />\n<h3>1. B???ng gi?? khuy???n m??i 19% Thay v??? ??? ????? v??? iPhone</h3>\n<h3>2. Th???i gian ??p d???ng:</h3>\nCh????ng tr??nh khuy???n m??i di???n ra t??? ng??y??<strong>01 ??? 31/01/2019.</strong>\n<h3>3. ?????i t?????ng ??p d???ng</h3>\nT???t c??? kh??ch h??ng ?????n??Thay v??? ??? ????? v??? t???i??Vi???n Di ?????ng??trong th???i gian khuy???n m??i.\n<h3>4. ?????a ??i???m ??p d???ng:??H??? th???ng c???a h??ng Vi???n Di ?????ng</h3>\n<ul>\n 	<li>51 L?? V??n Vi???t, P. Hi???p Ph?? , Q.9 , TP.HCM</li>\n 	<li>250 ???????ng 3/2, P.12, Q.10, TP.HCM</li>\n 	<li>241 Ho??ng V??n Th???, P.8, Q.Ph?? Nhu???n, TP.HCM</li>\n 	<li>??62A Tr???n Quang Kh???i, P.T??n ?????nh, Q.1, TP.HCM</li>\n 	<li>621 ??u C??, P.T??n Qu??, Q.T??n Ph??, TP.HCM</li>\n 	<li>367 Quang Trung, P.10, Q.G?? V???p, TP.HCM</li>\n</ul>\nTh??ng tin chi ti???t v??? ch????ng tr??nh khuy???n m??i, Qu?? kh??ch h??ng vui l??ng li??n h??? hotline??<strong>1900.2057</strong>??ho???c t???i showroom g???n nh???t ????? ???????c nh??n vi??n t?? v???n chi ti???t.","Khuy???n m??i ch??o n??m m???i 2019: Thay v??? ??? ????? v??? iPhone gi???m 19%","","publish","open","open","","khuyen-mai-chao-nam-moi-2019-thay-vo-do-vo-iphone-giam-19","","","2019-01-17 10:09:18","2019-01-17 03:09:18","","0","https://tppone.com/demo/suadienthoai/?p=270","0","post","","0"),
("291","1","2019-01-17 09:30:53","2019-01-17 02:30:53","[section label=\"Footer\" class=\"footer-section\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[title text=\"V??? ch??ng t??i\" tag_name=\"h4\" color=\"rgb(0, 0, 0)\" size=\"90\"]\n\n<div class=\"menu-footer-1-container\">\n<ul id=\"menu-footer-1\" class=\"menu\">\n<li id=\"menu-item-29\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-29 bullet-arrow\"><span style=\"font-size: 90%; color: #282828;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/gioi-thieu\">Gi???i thi???u</a></span></li>\n<li id=\"menu-item-40\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-40 bullet-arrow\"><span style=\"font-size: 90%; color: #282828;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/hop-tac\">H???p t??c</a></span></li>\n<li id=\"menu-item-30\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-30 bullet-arrow\"><span style=\"font-size: 90%; color: #282828;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/tuyen-dung\">Tuy???n d???ng</a></span></li>\n<li id=\"menu-item-2399\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-2399 bullet-arrow\"><span style=\"font-size: 90%; color: #282828;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/diem-sua-chua\">??i???m s???a ch???a</a></span></li>\n<li id=\"menu-item-4002\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-4002 bullet-arrow\"><span style=\"font-size: 90%; color: #282828;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/chinh-sach-bao-hanh\">Ch??nh s??ch b???o h??nh</a></span></li>\n</ul>\n</div>\n[follow style=\"fill\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[title text=\"D???ch v??? - Gi???i ????p\" tag_name=\"h4\" color=\"rgb(0, 0, 0)\" size=\"90\"]\n\n<ul id=\"menu-footer-2\" class=\"menu\">\n<li id=\"menu-item-48\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-48 bullet-arrow\"><span style=\"color: #282828; font-size: 90%;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/bao-hanh-sua-chua\">B???o h??nh s???a ch???a</a></span></li>\n<li id=\"menu-item-50\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-50 bullet-arrow\"><span style=\"color: #282828; font-size: 90%;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/dao-tao-day-nghe\">????o t???o d???y ngh???</a></span></li>\n<li id=\"menu-item-2400\" class=\"menu-item menu-item-type-post_type menu-item-object-services menu-item-2400 bullet-arrow\"><span style=\"color: #282828; font-size: 90%;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/dich-vu/sim-ghep-4g\">Sim gh??p 4G</a></span></li>\n<li id=\"menu-item-2401\" class=\"menu-item menu-item-type-post_type menu-item-object-services menu-item-2401 bullet-arrow\"><span style=\"color: #282828; font-size: 90%;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/dich-vu/sua-chua-macbook\">S???a ch???a Macbook</a></span></li>\n<li id=\"menu-item-4488\" class=\"triggerModal menu-item menu-item-type-custom menu-item-object-custom menu-item-4488 bullet-arrow\"><span style=\"color: #282828; font-size: 90%;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/#modal_baohanh\">Tra c???u b???o h??nh</a></span></li>\n<li id=\"menu-item-4489\" class=\"triggerModal menu-item menu-item-type-custom menu-item-object-custom menu-item-4489 bullet-arrow\"><span style=\"color: #282828; font-size: 90%;\"><a style=\"color: #282828;\" href=\"https://www.viendidong.com/#modal_tiendobaohanh\">Tra c???u b???o h??nh ??? s???a ch???a</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[title text=\"Th??ng tin li??n h???\" tag_name=\"h4\" color=\"rgb(0, 0, 0)\" size=\"90\"]\n\n<p><span style=\"font-size: 90%; color: #282828;\">Webdemo.com l?? blog c?? nh??n chia s??? nh???ng ki???n th???c ????? h???a v?? kinh nghi???m l??m website Wordpress cho t???t c??? m???i ng?????i. M??nh r???t y??u th??ch Ngh??? thu???t Th??nh v?? ????? h???a C??ng gi??o. R???t mong ???????c k???t b???n v???i ????ng ?????o anh em Designer g???n xa.</span></p>\n<p><span style=\"font-size: 90%; color: #282828;\">Hotline: <br /></span><span style=\"font-size: 90%; color: #282828;\">Email: webdemo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[title text=\"M???ng x?? h???i\" tag_name=\"h4\" color=\"rgb(0, 0, 0)\" size=\"90\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=300&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Block","","publish","closed","closed","","footer-block","","","2019-01-17 10:03:09","2019-01-17 03:03:09","","0","https://tppone.com/demo/suadienthoai/?post_type=blocks&#038;p=291","0","blocks","","0"),
("318","1","2019-01-17 10:09:02","2019-01-17 03:09:02","","Iphone5sIphone5cApple910_18","","inherit","open","closed","","iphone5siphone5capple910_18","","","2019-01-17 10:09:02","2019-01-17 03:09:02","","270","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/Iphone5sIphone5cApple910_18.jpg","0","attachment","image/jpeg","0"),
("319","1","2019-01-17 10:10:32","2019-01-17 03:10:32","","nghe-sua-chua-dien-thoai-3-1529905134","","inherit","open","closed","","nghe-sua-chua-dien-thoai-3-1529905134","","","2019-01-17 10:10:32","2019-01-17 03:10:32","","267","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/nghe-sua-chua-dien-thoai-3-1529905134.jpg","0","attachment","image/jpeg","0"),
("320","1","2019-01-17 10:10:57","2019-01-17 03:10:57","","3806148_Oukitel-K4000-Pro-01","","inherit","open","closed","","3806148_oukitel-k4000-pro-01","","","2019-01-17 10:10:57","2019-01-17 03:10:57","","264","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/3806148_Oukitel-K4000-Pro-01.jpg","0","attachment","image/jpeg","0"),
("321","1","2019-01-17 10:11:22","2019-01-17 03:11:22","","sua-dien-thoai-xiaomi-6","","inherit","open","closed","","sua-dien-thoai-xiaomi-6","","","2019-01-17 10:11:22","2019-01-17 03:11:22","","261","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/sua-dien-thoai-xiaomi-6.jpg","0","attachment","image/jpeg","0"),
("322","1","2019-01-17 10:13:05","2019-01-17 03:13:05","","cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi","","inherit","open","closed","","cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi","","","2019-01-17 10:13:05","2019-01-17 03:13:05","","258","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/cach-sua-dien-thoai-iphone-bi-liet-cam-ung-phan-duoi.jpg","0","attachment","image/jpeg","0"),
("349","1","2019-01-17 10:38:34","2019-01-17 03:38:34","","banner sua chua","","inherit","open","closed","","banner-sua-chua","","","2019-01-17 10:38:34","2019-01-17 03:38:34","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/banner-sua-chua.jpg","0","attachment","image/jpeg","0"),
("367","1","2019-01-17 10:51:28","2019-01-17 03:51:28","","20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430","","inherit","open","closed","","20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430","","","2019-01-17 10:51:28","2019-01-17 03:51:28","","1","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/01/20161219-062318-sua-chua-bao-hanh-dien-thoai-duc-tuong-mobile_600x314-730x430.jpg","0","attachment","image/jpeg","0"),
("386","1","2019-01-17 11:11:49","2019-01-17 04:11:49","<div class=\"table-normal hidden-xs hidden-sm\">	\n\n									 <table class=\"table-training tablesorter tablesorter-blue tablesorter1bf9acf4e1dc6 ui-table-reflow\" role=\"grid\">\n									 	<thead>\n									 		<tr role=\"row\" class=\"tablesorter-headerRow\">\n									 			<th data-column=\"0\" class=\"tablesorter-header sorter-false tablesorter-headerUnSorted\" scope=\"col\" role=\"columnheader\" aria-disabled=\"true\" unselectable=\"on\" aria-sort=\"none\" aria-label=\"Ch????ng tr??nh ????o t???o: No sort applied, sorting is disabled\" style=\"user-select: none;\"><div class=\"tablesorter-header-inner\">Ch????ng tr??nh ????o t???o<i class=\"tablesorter-icon\"></i></div></th>\n									 			<th data-column=\"1\" class=\"tablesorter-header sorter-false tablesorter-headerUnSorted\" scope=\"col\" role=\"columnheader\" aria-disabled=\"true\" unselectable=\"on\" aria-sort=\"none\" aria-label=\"Khai gi???ng: No sort applied, sorting is disabled\" style=\"user-select: none;\"><div class=\"tablesorter-header-inner\">Khai gi???ng<i class=\"tablesorter-icon\"></i></div></th>\n									 			<th data-column=\"2\" class=\"tablesorter-header sorter-false tablesorter-headerUnSorted\" scope=\"col\" role=\"columnheader\" aria-disabled=\"true\" unselectable=\"on\" aria-sort=\"none\" aria-label=\"H???c ph?? (VND): No sort applied, sorting is disabled\" style=\"user-select: none;\"><div class=\"tablesorter-header-inner\">H???c ph?? <span>(VND)</span><i class=\"tablesorter-icon\"></i></div></th>\n									 			<th data-column=\"3\" class=\"tablesorter-header sorter-false tablesorter-headerUnSorted\" scope=\"col\" role=\"columnheader\" aria-disabled=\"true\" unselectable=\"on\" aria-sort=\"none\" aria-label=\"Th???i gian: No sort applied, sorting is disabled\" style=\"user-select: none;\"><div class=\"tablesorter-header-inner\">Th???i gian<i class=\"tablesorter-icon\"></i></div></th>\n									 		</tr>\n									 	</thead>\n									\n\n								 <tbody aria-live=\"polite\" aria-relevant=\"all\">\n																 \n										 \n\n																 \n										 \n\n																 \n										 \n\n																 \n										 \n\n																 \n										 \n\n																 \n										 \n\n																 \n										 \n\n																<tr role=\"row\" class=\"odd\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-phan-mem-dien-thoai-chuyen-nghiep\" title=\"KTV Ph???n m???m ??i???n tho???i chuy??n nghi???p\">KTV Ph???n m???m ??i???n tho???i chuy??n nghi???p \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 4.5 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 120 ti???t (30 bu???i)</span></td>\n\n								 </tr><tr role=\"row\" class=\"even\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-sua-chua-dien-thoai-android\" title=\"KTV S???a ch???a ??i???n tho???i Android\">KTV S???a ch???a ??i???n tho???i Android \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 15 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 120 ti???t (20 bu???i d???y, 10 bu???i th???c h??nh)</span></td>\n\n								 </tr><tr role=\"row\" class=\"odd\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-sua-chua-dien-thoai-ios\" title=\"KTV S???a ch???a ??i???n tho???i iOS\">KTV S???a ch???a ??i???n tho???i iOS \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 15 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 120 ti???t (20 bu???i d???y, 10 bu???i th???c h??nh)</span></td>\n\n								 </tr><tr role=\"row\" class=\"even\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-sua-chua-dien-thoai-pho-thong\" title=\"KTV S???a ch???a ??i???n tho???i ph??? th??ng\">KTV S???a ch???a ??i???n tho???i ph??? th??ng \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 4.5 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 36 ti???t (8 bu???i)</span></td>\n\n								 </tr><tr role=\"row\" class=\"odd\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-sua-chua-dien-tu-can-ban-32-tiet\" title=\"KTV S???a ch???a ??i???n t??? c??n b???n\">KTV S???a ch???a ??i???n t??? c??n b???n \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 4.5 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 32 ti???t (8 bu???i)</span></td>\n\n								 </tr><tr role=\"row\" class=\"even\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-ep-co-smartphone\" title=\"KTV ??p c??? Smartphone\">KTV ??p c??? Smartphone \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 15 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 80 ti???t (20 bu???i)</span></td>\n\n								 </tr><tr role=\"row\" class=\"odd\">\n								 	<td data-title=\"Ch????ng tr??nh ????o t???o\"><a href=\"https://www.viendidong.com/training/ktv-ep-kinh-smartphone\" title=\"KTV ??p k??nh Smartphone\">KTV ??p k??nh Smartphone \n											</a></td>\n										<td colspan=\"2\" class=\"cell-timeline\" data-title=\"Khai gi???ng\">	\n																							 \n																									 	<div class=\"timeline\">\n												 	<div class=\"date\"><span> 30-01-2019</span></div>\n												 	<div class=\"price\"><span> 18 tri???u</span></div>\n												   </div>\n																							\n										 	\n\n								 	</td>\n								 	<td data-title=\"H???c ph?? (VND)\"><span> 208 ti???t (52 bu???i)</span></td>\n\n								 </tr></tbody>\n								 </table>\n								</div>","????o t???o d???y ngh???","","publish","closed","closed","","dao-tao-day-nghe","","","2019-01-17 11:12:13","2019-01-17 04:12:13","","0","https://tppone.com/demo/suadienthoai/?page_id=386","0","page","","0"),
("408","1","2019-01-17 11:24:50","2019-01-17 04:24:50"," ","","","publish","closed","closed","","408","","","2019-01-17 11:24:50","2019-01-17 04:24:50","","0","https://tppone.com/demo/suadienthoai/?p=408","20","nav_menu_item","","0"),
("410","1","2019-01-17 11:28:28","2019-01-17 04:28:28","<div class=\"form-tu-van\">\n<div class=\"title\">Li??n h??? t?? v???n mua h??ng</div>\n<div class=\"form-chinh\">\n[text* text-858 placeholder \"H??? t??n c???a b???n..\"]\n[tel* tel-939 placeholder \"S??? ??i???n tho???i...\"]\n[textarea textarea-5 placeholder \"N???i dung c???n t?? v???n...\"]\n[submit \"G???i li??n h???\"]\n</div>\n</div>\n1\nM???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo\n<wordpress@suadienthoai.webdemo.com>\nwebdemo@gmail.com\nC?? ng?????i li??n h??? s???a m??y:\n- H??? t??n: [text-858]\n- S??? ??i???n tho???i: [tel-939]\n- N???i dung: [textarea-5]\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo (https://bizhostvn.com/w/suadienthoai)\n\n\n\n\n\nM???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo \"[your-subject]\"\nM???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo <wordpress@suadienthoai.webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web s???a ??i???n tho???i - Thi???t k??? web Webdemo (https://bizhostvn.com/w/suadienthoai)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","Form li??n h??? s???a m??y","","publish","closed","closed","","form-lien-he-1","","","2019-01-17 11:36:34","2019-01-17 04:36:34","","0","https://tppone.com/demo/suadienthoai/?post_type=wpcf7_contact_form&#038;p=410","0","wpcf7_contact_form","","0"),
("424","1","2019-02-14 15:01:12","2019-02-14 08:01:12","","C???a h??ng","","publish","closed","closed","","cua-hang","","","2019-02-14 15:01:12","2019-02-14 08:01:12","","0","https://tppone.com/demo/suadienthoai/cua-hang/","0","page","","0"),
("425","1","2019-02-14 15:01:12","2019-02-14 08:01:12","[woocommerce_cart]","Gi??? h??ng","","publish","closed","closed","","gio-hang","","","2019-02-14 15:01:12","2019-02-14 08:01:12","","0","https://tppone.com/demo/suadienthoai/gio-hang/","0","page","","0"),
("426","1","2019-02-14 15:01:12","2019-02-14 08:01:12","[woocommerce_checkout]","Thanh to??n","","publish","closed","closed","","thanh-toan","","","2019-02-14 15:01:12","2019-02-14 08:01:12","","0","https://tppone.com/demo/suadienthoai/thanh-toan/","0","page","","0"),
("427","1","2019-02-14 15:01:12","2019-02-14 08:01:12","[woocommerce_my_account]","T??i kho???n","","publish","closed","closed","","tai-khoan","","","2019-02-14 15:01:12","2019-02-14 08:01:12","","0","https://tppone.com/demo/suadienthoai/tai-khoan/","0","page","","0"),
("428","1","2019-02-14 15:05:38","2019-02-14 08:05:38","Blackberry Bold 9930 2 n??m tr?????c ???????c ph??n ph???i ??? Vi???t Nam v???i gi?? g???n 1.000 USD. Khi d??ng thu???n c???m ???ng l??n ng??i v?? kh??ng ai ph??? nh???n ???????c s??? ti???n l???i c???a h??? ??i???u h??nh Android hay iOS, c???c di???n thay ?????i. Tuy nhi??n,??Blackberry v???n ???????c x???p v??o ph??n kh??c cao c???p, b???i nhi???u l?? do.\n\nBlackberry Bold 9930 c?? vi???n ???????c l??m b???ng inox r???t d??y, gi??p m??y tr??ng sang tr???ng. ????y c??ng l?? khung ch???u l???c c???a m??y trong tr?????ng h???p x???y ra va ?????p. M??n h??nh c???m ???ng k??ch th?????c kh?? l???n chi???m 50% di???n t??ch, 50% c??n l???i ???????c bao ph??? b???i b??n ph??m full qwerty.\n\nBlackberry Bold 9930 2 n??m tr?????c ???????c ph??n ph???i ??? Vi???t Nam v???i gi?? g???n 1.000 USD. Khi d??ng thu???n c???m ???ng l??n ng??i v?? kh??ng ai ph??? nh???n ???????c s??? ti???n l???i c???a h??? ??i???u h??nh Android hay iOS, c???c di???n thay ?????i. Tuy nhi??n,??Blackberry v???n ???????c x???p v??o ph??n kh??c cao c???p, b???i nhi???u l?? do.\n\nBlackberry Bold 9930 c?? vi???n ???????c l??m b???ng inox r???t d??y, gi??p m??y tr??ng sang tr???ng. ????y c??ng l?? khung ch???u l???c c???a m??y trong tr?????ng h???p x???y ra va ?????p. M??n h??nh c???m ???ng k??ch th?????c kh?? l???n chi???m 50% di???n t??ch, 50% c??n l???i ???????c bao ph??? b???i b??n ph??m full qwerty.","BLACKBERRY BOLD 9930","Blackberry Bold 9930 2 n??m tr?????c ???????c ph??n ph???i ??? Vi???t Nam v???i gi?? g???n 1.000 USD. Khi d??ng thu???n c???m ???ng l??n ng??i v?? kh??ng ai ph??? nh???n ???????c s??? ti???n l???i c???a h??? ??i???u h??nh Android hay iOS, c???c di???n thay ?????i. Tuy nhi??n,??Blackberry v???n ???????c x???p v??o ph??n kh??c cao c???p, b???i nhi???u l?? do.","publish","open","closed","","blackberry-bold-9930","","","2019-02-14 15:11:52","2019-02-14 08:11:52","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=428","0","product","","0"),
("429","1","2019-02-14 15:05:30","2019-02-14 08:05:30","","gher_1","","inherit","open","closed","","gher_1","","","2019-02-14 15:05:30","2019-02-14 08:05:30","","428","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/gher_1.jpg","0","attachment","image/jpeg","0"),
("430","1","2019-02-14 15:06:57","2019-02-14 08:06:57","Trong lo???t 3 m??y Blackberry cao c???p v???a ra m???t g???n ????y th?? c?? l??? 9810 l?? s???n ph???m th???m l???ng nh???t, kh??ng ph???i s??? n??ng c???p tr??n??<a class=\"Tinhte_XenTag_TagLink\" title=\"\" href=\"https://tinhte.vn/tags/9810/\">9810</a>ch??a ????ng gi?? m?? v?? 9860 qu?? m???i l??? c??n 9900 l???i l?? m???t tr???i nghi???m m?? ng?????i d??ng Blackberry ???? mong ?????i t??? 3 n??m nay. Blackberry 9810 s??? l?? 1 s???n ph???m ph?? h???p v???i nh???ng ai mu???n s??? d???ng m??n h??nh l???n v?? b??n ph??m QWERTY nh??ng kh??ng th??ch ki???u thi???t k??? tr?????t ngang c???a c??c h??ng kh??c. Hi???n nh???ng chi???c m??y 9810 ?????u ti??n v??? Vi???t Nam ??ang ???????c b??n v???i gi?? kho???ng 16 tri???u ?????ng cho b???n c???a AT&amp;T, c?? c??? m??u tr???ng v?? m??u b???c.\n\nThay ?????i b??n ngo??i:\nN???u b???n mong 9810 c?? thay ?????i g?? ???? v??? thi???t k??? so v???i 9800 th?? c?? l??? b???n s??? ph???i th???t v???ng. Blackberry 9810 kh??ng c?? b???t c??? s??? kh??c bi???t n??o so v???i ????n anh ??i tr?????c, v???n l?? b??n ph??m tr?????t c??ng m??n h??nh c???m ???ng 3,2 inch. Trong m???t s??? ?????t h??ng ?????u c???a 9800, m??nh th???y ????i khi c?? tr?????t kh??ng th???t ???n ?????nh, kh??c nhau t??y m??y nh??ng 9810 th?? 2 m??y m??nh c???m ?????u gi???ng nhau, kh??ng h??? l???ng l???o. ????? ph??n bi???t 2 m??y th?? b???n ch??? c??n c??ch nh??n v??o m???t sau, 9800 c?? hoa v??n theo chi???u ngang c??n 9810 l?? hoa v??n ??an ch??o theo h??nh l?????i.","BLACBERRY 9810","Trong m???t s??? ?????t h??ng ?????u c???a 9800, m??nh th???y ????i khi c?? tr?????t kh??ng th???t ???n ?????nh, kh??c nhau t??y m??y nh??ng 9810 th?? 2 m??y m??nh c???m ?????u gi???ng nhau, kh??ng h??? l???ng l???o. ????? ph??n bi???t 2 m??y th?? b???n ch??? c??n c??ch nh??n v??o m???t sau, 9800 c?? hoa v??n theo chi???u ngang c??n 9810 l?? hoa v??n ??an ch??o theo h??nh l?????i.","publish","open","closed","","blacberry-9810","","","2019-02-14 15:11:47","2019-02-14 08:11:47","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=430","0","product","","0"),
("431","1","2019-02-14 15:06:52","2019-02-14 08:06:52","","ph_pic-400x400","","inherit","open","closed","","ph_pic-400x400","","","2019-02-14 15:06:52","2019-02-14 08:06:52","","430","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/ph_pic-400x400.jpg","0","attachment","image/jpeg","0"),
("432","1","2019-02-14 15:10:33","2019-02-14 08:10:33","<h2>Thi???t k??? cao c???p</h2>\nBlackberry Z30 c?? ph???n m???t tr?????c gi???ng v???i Blackberry Z10 nh??ng ???????c ho??n thi???n ?????ng b??? v?? li???n m???ch h??n. Tuy nhi??n ph???n di???n t??ch ph??a d?????i m??n h??nh v???n ???????c l??m tr???ng kh?? nhi???u. M???t sau c???a m??y s??? d???ng ch???t li???u s???i th???y tinh v???i hoa v??n x???p ch??o nhau, t????ng t??? nh?? Blackberry Q10, b??? m???t n??y cho c???m gi??c tay kh?? tho???i m??i, d??? d??ng lau ch??i.\n\nTh??n m??y c?? tr???ng l?????ng 170 g, m???ng 9.4mm, tuy h??i n???ng nh??ng c???m ch???c tay v?? kh??ng c???m gi??c m???ng manh nh?? ch???t li???u nh???a.\n<h2>M??n h??nh 5 inch s???c n??t</h2>\nBlackberry Z30 ???????c trang b??? m??n h??nh k??ch th?????c 5.0 inch v???i ????? ph??n gi???i HD 720 x 1280 px, m??y s??? d???ng c??ng ngh??? Super AMOLED do ???? g??c nh??n t???i m??n h??nh kh?? tho???i m??i, m??u s???c ?????m ????, n???i b???t.\n\n??? m???c gi?? n??y m??n h??nh n??n c?? ????? ph??n gi???i Full HD th?? s??? thuy???t ph???c ng?????i d??ng h??n, tuy nhi??n ????? ph??n gi???i 720p hi???n th??? c??ng r???t t???t, c??c ??i???m ???nh r???t kh?? ????? nh???n ra, nh???ng tr???i nghi???m nh?? xem phim, l?????t web, ch??i game r???t tuy???t v???i.","BLACKBERRY Z30","Blackberry Z30 c?? ph???n m???t tr?????c gi???ng v???i Blackberry Z10 nh??ng ???????c ho??n thi???n ?????ng b??? v?? li???n m???ch h??n. Tuy nhi??n ph???n di???n t??ch ph??a d?????i m??n h??nh v???n ???????c l??m tr???ng kh?? nhi???u. M???t sau c???a m??y s??? d???ng ch???t li???u s???i th???y tinh v???i hoa v??n x???p ch??o nhau, t????ng t??? nh?? Blackberry Q10, b??? m???t n??y cho c???m gi??c tay kh?? tho???i m??i, d??? d??ng lau ch??i.","publish","open","closed","","blackberry-z30","","","2019-02-14 15:10:44","2019-02-14 08:10:44","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=432","0","product","","0"),
("435","1","2019-02-14 15:10:23","2019-02-14 08:10:23","","blackberry-z301","","inherit","open","closed","","blackberry-z301-2","","","2019-02-14 15:10:23","2019-02-14 08:10:23","","432","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/blackberry-z301-1.jpg","0","attachment","image/jpeg","0"),
("436","1","2019-02-14 15:11:30","2019-02-14 08:11:30","<h2>V??? thi???t k???</h2>\n????nh gi?? v??? thi???t k???, m??nh cho r???ng m??y ?????p, ch???c ch???n d?? kh??ng ph???i thi???t k??? nguy??n kh???i. B??? v??? nh???a, m???t l??ng c?? logo c???a h??ng c??ng nh???ng ???????ng ho??? ti???t ??an ch??o nhau gi??p b???n c?? c???m gi??c tay t???t khi c???m, kh??ng tr??n tr?????t. ?????ng th???i, thi???t k??? n??y gi??p m??y nh??? nh??ng h??n, g???n g??ng h??n.\n\nD?? kh??ng mang m??u s???c ?????c tr??ng c???a BB truy???n th???ng, nh??ng v??? ngo??i c???a Z10 c??ng kh??ng ph???i kh??ng t???o ???????c ???n t?????ng. C??ng v???i ???? l?? ????? ho??n thi???n cao, gi??p m??y th??m cao c???p, sang tr???ng v?? l??m h??i l??ng nh???ng ng?????i d??ng kh?? t??nh.\n<h2>V??? m??n h??nh</h2>\nC?? th??? n??i m??y kh?? nh???y, c???m ???ng t???t. B???n c?? th??? tr?????t, l?????t nhanh, tr??n m??n h??nh n??y, kh??ng c???m nh???n th???y ????? tr??? r?? r???t khi s??? d???ng. M???t ??i???m s??ng th???t s??? v???i c??ng ngh??? m??n h??nh, c???m ???ng tr??n Z10, c?? l??? kh?? t??m. Nh??ng n???u ?????t v???n ?????, m??n h??nh n??y c?? l??m b???n ph???i ?????n ??o v??? ch???t l?????ng, tr???i nghi???m hay kh??ng, th?? c??u tr??? l???i l?? kh??ng.","BLACKBERRY Z10","<ul class=\"parameter\">\n 	<li class=\"g6459_79_77\">M??n h??nh:LCD, 4.2???,??HD</li>\n 	<li class=\"g72\">H??? ??i???u h??nh:BlackBerry 10.2</li>\n 	<li class=\"g27\">Camera sau:8 MP</li>\n 	<li class=\"g29\">Camera tr?????c:2 MP</li>\n 	<li class=\"g6059\">CPU:Qualcomm MSM8960</li>\n 	<li class=\"g49\">B??? nh??? trong:16 GB</li>\n 	<li class=\"g6339\">Th??? SIM:1 Micro SIM</li>\n 	<li class=\"g84\">Dung l?????ng pin:1800 mAh</li>\n</ul>","publish","open","closed","","blackberry-z10","","","2019-02-14 15:11:38","2019-02-14 08:11:38","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=436","0","product","","0"),
("437","1","2019-02-14 15:11:21","2019-02-14 08:11:21","","BlackBerry-Z10-2-400x400","","inherit","open","closed","","blackberry-z10-2-400x400","","","2019-02-14 15:11:21","2019-02-14 08:11:21","","436","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/BlackBerry-Z10-2-400x400.jpg","0","attachment","image/jpeg","0"),
("438","1","2019-02-14 15:13:14","2019-02-14 08:13:14","Nh???ng y???u t??? h??nh ???nh kh??ng c???n thi???t s??? b??? lo???i b??? ????? c?? ???????c giao di???n ng?????i d??ng th???t s??? ????n gi???n nh??ng v???n c???i thi???n. Giao di???n ng?????i d??ng m???i\n\nNh???ng y???u t??? h??nh ???nh kh??ng c???n thi???t s??? b??? lo???i b??? ????? c?? ???????c giao di???n ng?????i d??ng th???t s??? ????n gi???n nh??ng v???n c???i thi???n. Giao di???n ng?????i d??ng m???i\n\nThis was one of the best phone I had even though I didn\'t bought it at the time of its launch. The only real flaw I experienced with this phone was the frame bending-wear where it would cause the touchscreen to be haywired or just not functioning. ...\n\n&nbsp;","??i???n tho???i LG G3","<ul>\n 	<li>N???i th??nh H?? N???i??25k</li>\n 	<li>Ngo???i th??nh H?? N???i??30k</li>\n 	<li>Tp. H??? Ch?? Minh??20k ?????n 30kShip</li>\n 	<li>C??c t???nh??to??n qu???c 25k/1kg (Kh??ch??chuy???n kho???n lu??n)</li>\n 	<li>C??c t???nh??to??n qu???c 25k/1kg + 15k ph?? thu h??? (Kh??ch nh???n h??ng thanh to??n)</li>\n</ul>","publish","open","closed","","dien-thoai-lg-g3","","","2019-02-14 15:13:14","2019-02-14 08:13:14","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=438","0","product","","0");
INSERT INTO gdd_posts VALUES
("439","1","2019-02-14 15:12:21","2019-02-14 08:12:21","","1187845-400x400","","inherit","open","closed","","1187845-400x400","","","2019-02-14 15:12:21","2019-02-14 08:12:21","","438","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/1187845-400x400.jpg","0","attachment","image/jpeg","0"),
("440","1","2019-02-14 15:15:02","2019-02-14 08:15:02","<div class=\"content showContent\">\n<h2>OPPO??A71 l?? b???n n??ng c???p m???nh m??? c???a chi???c OPPO A39?????? ra m???t tr?????c ???? v?? h???a h???n s??? l???i l?? m???t s???n ph???m mang v??? nhi???u th??nh c??ng cho OPPO trong n??m 2017.</h2>\n<h3><strong>Thi???t k??? ?????p m???t</strong></h3>\nM???c d?? v???n ch??? ???????c l??m t??? ch???t li???u nh???a nh??ng??OPPO A71 ???????c ho??n thi???n kh?? ch???c ch???n v?? li???n m???ch.\n\n<img class=\"lazy aligncenter\" title=\"OPPO A71\" src=\"https://cdn4.tgdd.vn/Products/Images/42/113259/oppo-a714-1.jpg\" alt=\"OPPO A71\" data-original=\"https://cdn4.tgdd.vn/Products/Images/42/113259/oppo-a714-1.jpg\" />\n\n<i>Thi???t k??? th???i trang, phong c??ch tr??? trung</i>\n\nC??c g??c c???nh ???????c bo cong m???m m???i cho c???m gi??c c???m n???m tho???i m??i.\n\n<img class=\"lazy aligncenter\" title=\"OPPO A71\" src=\"https://cdn1.tgdd.vn/Products/Images/42/113259/oppo-a712-1.jpg\" alt=\"OPPO A71\" data-original=\"https://cdn1.tgdd.vn/Products/Images/42/113259/oppo-a712-1.jpg\" />\n\nC???m gi??c c???m n???m kh?? tho???i m??i\n\nPh???n m???t k??nh ??? ph??a tr?????c ???????c l??m cong 2.5D mang l???i m???t tr???i nghi???m m?????t m?? khi vu???t t??? c???nh m??n h??nh.\n<h3><strong>M??n h??nh ????? d??ng</strong></h3>\nOPPO A71 s??? h???u cho m??nh m???t m??n h??nh c?? k??ch th?????c 5.2 inch ????? ph??n gi???i HD cho ch???t l?????ng hi???n th??? ??? m???c kh??.\n\n<img class=\"lazy aligncenter\" title=\"OPPO A71\" src=\"https://cdn3.tgdd.vn/Products/Images/42/113259/oppo-a711-1.jpg\" alt=\"OPPO A71\" data-original=\"https://cdn3.tgdd.vn/Products/Images/42/113259/oppo-a711-1.jpg\" />\n\n<i>M??n h??nh hi???n th??? t???t n???i dung, s??? h??i r??? nh??? n???u b???n nh??n ??? kho???ng c??ch g???n</i>\n\nM??y s??? d???ng??t???m n???n??IPS LCD????em l???i kh??? n??ng t??i t???o m??u s???c ch??n th???c c??ng g??c nh??n r???ng.\n<h3><strong>C???u h??nh n??ng c???p m???nh m???</strong></h3>\nSo v???i ng?????i ti???n nhi???m th????OPPO A71 ???? mang l???i m???t s???c m???nh v?????t tr???i h??n kh?? nhi???u.\n\n<img class=\"lazy aligncenter\" title=\"OPPO A71\" src=\"https://cdn.tgdd.vn/Products/Images/42/113259/oppo-a719-2.jpg\" alt=\"OPPO A71\" data-original=\"https://cdn.tgdd.vn/Products/Images/42/113259/oppo-a719-2.jpg\" />\n\n<i>Hi???u n??ng ???? t???t h??n so v???i nh???ng th??? h??? c??</i>\n\nM??y s??? d???ng con chip??MT6750 8 nh??n xung nh???p 1.5GHz c??ng v???i ???? l?? 3 RAM cho b???n s??? d???ng tho???i m??i nhi???u ???ng d???ng c??ng l??c m?? kh??ng x???y ra hi???n t?????ng gi???t lag.\n\n??i???m ????ng khen l?? m??y ???? ???????c c??i s???n h??? ??i???u h??nh??Color 3.1 d??? tr??n Andriod 7.1 ?????n t??? Google. M??y c??ng h??? tr??? 2 SIM 2 s??ng, k???t n???i 4G t???c ????? cao v?? khe c???m??th??? nh?????m??? r???ng v???i dung l?????ng t???i ??a l??n t???i 256 GB.\n<h3><strong>Camera selfie ?????p</strong></h3>\nCamera lu??n l?? m???t trong nh???ng th??? m???nh c???a OPPO v?? tr??n chi???c A71 l???n n??y c??ng kh??ng ph???i l?? m???t ngo???i l???.\n\n<img class=\"lazy aligncenter\" title=\"OPPO A71\" src=\"https://cdn2.tgdd.vn/Products/Images/42/113259/oppo-a715-1.jpg\" alt=\"OPPO A71\" data-original=\"https://cdn2.tgdd.vn/Products/Images/42/113259/oppo-a715-1.jpg\" />\n\n<i>Camera ch??nh v???i ????? ph??n gi???i cao h??n cho h??nh ???nh s???c n??t h??n</i>\n\nM??y ???????c n??ng c???p camera ch??nh l??n ????? ph??n gi???i 13 MP, kh???u ????? F/2.2 c??ng kh??? n??ng ch???p v?? l??u ???nh nhanh ch??ng.\n\n<img class=\"lazy aligncenter\" title=\"Giao di???n camera quen thu???c, nhi???u ch??? ????? ch???p cao c???p\" src=\"https://cdn4.tgdd.vn/Products/Images/42/113259/oppo-a713.jpg\" alt=\"Giao di???n camera quen thu???c, nhi???u ch??? ????? ch???p cao c???p\" data-original=\"https://cdn4.tgdd.vn/Products/Images/42/113259/oppo-a713.jpg\" />\n\n<i>Giao di???n camera quen thu???c, nhi???u ch??? ????? ch???p cao c???p</i>\n\nCamera tr?????c c??ng c?? ????? ph??n gi???i l???n 5 MP v?? ???????c trang b??? s???n ch??? ????? l??m ?????p v???i 6 c???p ????? l??m ?????p kh??c nhau cho b???n th???a th??ch selfie v???i b???n b?? v?? ng?????i th??n.\n\n<img class=\"lazy aligncenter\" title=\"Camera selfie cho h??nh ???nh ?????p t??? nhi??n, c?? th??? chia s??? l??n m???ng x?? h???i ngay sau khi ch???p\" src=\"https://cdn1.tgdd.vn/Products/Images/42/113259/oppo-a714.jpg\" alt=\"Camera selfie cho h??nh ???nh ?????p t??? nhi??n, c?? th??? chia s??? l??n m???ng x?? h???i ngay sau khi ch???p\" data-original=\"https://cdn1.tgdd.vn/Products/Images/42/113259/oppo-a714.jpg\" />\n\n<i>Camera selfie cho h??nh ???nh ?????p t??? nhi??n, c?? th??? chia s??? l??n m???ng x?? h???i ngay sau khi ch???p</i>\n<h3><strong>Dung l?????ng pin l???n</strong></h3>\nVi??n pin dung l?????ng 3000 mAh cho b???n s??? d???ng kh?? tho???i m??i trong kho???ng h??n 1 ng??y l??m vi???c v?? gi???i tr??.??Theo c??ng b??? t??? nh?? s???n xu???t th?? b???n c?? th??? ?????t ???????c 11 gi??? xem phim offline v?? nghe nh???c li??n t???c trong h??n 43 gi???.\n\n</div>","??i???n tho???i Nokia X6","T???ng ngay phi???u gi???m gi????<strong>100.000??</strong>??khi mua h??ng\n\nH??? tr??? mua??<strong>d??n??c</strong><strong>?????ng l???c 5D full m??n</strong>??v???i gi????<strong>90.000??</strong>\n\nH??? tr??? mua \"<strong>C?????ng l???c 5D full m??n + ???p L??ng + Tai nghe cao c???p</strong>\" v???i??<strong>200.000??</strong>\n\nH??? tr??? mua??<strong>th??? nh??? 16GB</strong>??class 10 gi????<strong>250.000??</strong>","publish","open","closed","","dien-thoai-nokia-x6-nokia-6-1-plus","","","2019-02-14 15:24:02","2019-02-14 08:24:02","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=440","0","product","","0"),
("441","1","2019-02-14 15:14:39","2019-02-14 08:14:39","","oppo-a71-400x460","","inherit","open","closed","","oppo-a71-400x460","","","2019-02-14 15:14:39","2019-02-14 08:14:39","","440","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/oppo-a71-400x460.png","0","attachment","image/png","0"),
("442","1","2019-02-14 15:16:11","2019-02-14 08:16:11","<div class=\"content showContent\">\n<h2><b>iPhone 7??32 GB v???n mang tr??n m??nh thi???t k??? quen thu???c c???a t??? th???i iPhone 6 nh??ng c?? nhi???u thay ?????i l???n v??? ph???n c???ng nh?? trang b??? kh??? n??ng ch???ng n?????c, d??n loa stereo v?? c???u h??nh c???c m???nh.</b></h2>\n<h2><img class=\"lazy aligncenter\" title=\"iPhone 7 v???i nhi???u m??u s???c\" src=\"https://cdn3.tgdd.vn/Products/Images/42/87838/iphone-7-256gb6-1.jpg\" alt=\"iPhone 7 v???i nhi???u m??u s???c\" data-original=\"https://cdn3.tgdd.vn/Products/Images/42/87838/iphone-7-256gb6-1.jpg\" /></h2>\n<h3><strong>Camera tr?????c t??ng l??n 7 MP</strong></h3>\nM???t s??? c???i thi???n ????ng k??? so v???i iPhone 6s tr?????c ????, nh???ng t???m ???nh ch???p selfie c???a b???n c??ng th??m ????? chi ti???t v?? s???c n??t, b??? nh??? l???n 32 GB c??ng gi??p b???n tho???i m??i ch???p v?? l??u tr??? ???nh m?? kh??ng lo h???t dung l?????ng ????? l??u.\n\n<img class=\"lazy\" title=\"Camera Selfie 7 MP\" src=\"https://cdn.tgdd.vn/Products/Images/42/87838/iphone-7-256gb-19.jpg\" alt=\"Camera Selfie 7 MP\" data-original=\"https://cdn.tgdd.vn/Products/Images/42/87838/iphone-7-256gb-19.jpg\" />\n\nC??ng v???i ???? l?? t??nh n??ng ch???p Retina Flash gi??p b???n ch???p ???nh t???t h??n ??? ??i???u ki???n thi???u s??ng.\n\nNgo??i ra, camera ph??a sau ???? ???????c thi???t k??? g???n g??ng v???i ???????ng bo m???m m???i h??n, h???n ch??? t???i ??a tr???y x?????c cho ???ng k??nh.\n\n<img class=\"lazy aligncenter\" title=\"iPhone 7 128 GB - Camera\" src=\"https://cdn2.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-3.jpg\" alt=\"iPhone 7 128 GB - Camera\" data-original=\"https://cdn2.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-3.jpg\" />\n<h3><strong>Chu???n ch???ng n?????c m???i</strong></h3>\nCu???i c??ng th????iPhone??7 c??ng ???????c trang b??? chu???n ch???ng n?????c cao c???p, mang t???i s??? an t??m l???n cho ng?????i d??ng khi v?? t??nh ????? m??y d??nh n?????c m??a hay l??m ????? n?????c.\n\n<img class=\"lazy aligncenter\" title=\"Trang b??? chu???n ch???ng n?????c \" src=\"https://cdn4.tgdd.vn/Products/Images/42/87838/iphone-7-256gb5-1.jpg\" alt=\"Trang b??? chu???n ch???ng n?????c \" data-original=\"https://cdn4.tgdd.vn/Products/Images/42/87838/iphone-7-256gb5-1.jpg\" />\n\n<i>Tuy nhi??n, b???n l??u ?? kh??ng mang m??y xu???ng b??? b??i, h??? n?????c???</i>\n<h3><strong>??m thanh stereo ph??t ra t??? 2 ph??a</strong></h3>\nKh??ng c??n kh?? ch???u khi b???n c???m m??y ch??i game nh??ng b??? b??t loa nh?? ??? nh???ng phi??n b???n tr?????c ????.\n\niPhone 7 32 GB ???????c trang b??? d??n loa tr??n d?????i cho ??m thanh ph??t ra hay h??n.\n\n<img class=\"lazy aligncenter\" title=\"D??n loa stereo\" src=\"https://cdn1.tgdd.vn/Products/Images/42/87838/iphone-7-256gb-loa.jpg\" alt=\"D??n loa stereo\" data-original=\"https://cdn1.tgdd.vn/Products/Images/42/87838/iphone-7-256gb-loa.jpg\" />\n<h3><strong>C???m bi???n v??n tay nhanh nh???y h??n</strong></h3>\nGi??p b???n m??? kh??a m??y ch??? trong v??i n???t nh???c, gi??p ti???t ki???m th???i gian c??ng nh?? b???o m???t cao d??? li???u trong m??y.\n\nH?????ng d???n b???n c??ch c??i ?????t v??n tay iPhone 7.\n\n<img class=\"lazy aligncenter\" title=\"C???m bi???n v??n tay\" src=\"https://cdn3.tgdd.vn/Products/Images/42/87838/iphone-7-256gb3-1.jpg\" alt=\"C???m bi???n v??n tay\" data-original=\"https://cdn3.tgdd.vn/Products/Images/42/87838/iphone-7-256gb3-1.jpg\" />\n<h3><strong>M??n h??nh 4.7 inch c??ng th??m s???c n??t</strong></h3>\nC??ng v???i ???? l?? kh??? n??ng hi???n th??? t???t h??n d?????i tr???i n???ng, g??c nh??n nghi??ng kh??ng b??? m???t m??u.\n\n<img class=\"lazy aligncenter\" title=\"M??n h??nh hi???n th??? t???t\" src=\"https://cdn.tgdd.vn/Products/Images/42/87838/iphone-7-256gb4-1.jpg\" alt=\"M??n h??nh hi???n th??? t???t\" data-original=\"https://cdn.tgdd.vn/Products/Images/42/87838/iphone-7-256gb4-1.jpg\" />\n<h3><strong>C???u h??nh m???nh m??? tho???i m??i chi???n game</strong></h3>\nM??y t??ch h???p??chip x??? l?? A10??m???i nh???t, RAM 2 GB c??ng h??? ??i???u h??nh iOS 10 m???i gi??p m??y v???n h??nh nh??? nh??ng v?? nhanh nh???y.\n<div class=\"video\"></div>\n<h3><strong>N??t home th??nh d???ng c???ng v?? nh???n bi???t c???m ???ng l???c</strong></h3>\nN??t home tr??n tr??n iPhone 7 ch??nh th???c l?? d???ng c???ng, t???c b???n s??? kh??ng nh???n xu???ng ???????c n???a, ????? thao t??c tr??n n??t n??y b???n s??? nh???n 1 l???c v???a ph???i ?????n khi n??t home run nh??? l??n.\n\n<img class=\"lazy aligncenter\" title=\"N??t home c???m ???ng\" src=\"https://cdn2.tgdd.vn/Products/Images/42/74110/iphone-7-home-button.jpg\" alt=\"N??t home c???m ???ng\" data-original=\"https://cdn2.tgdd.vn/Products/Images/42/74110/iphone-7-home-button.jpg\" />\n\n??i???u d??? nh???n th???y nh???t v??? iPhone 7 ti???p theo ch??nh l?? m???t sau v???i d??y ??ng-ten ???????c gi???u ??i, c??n l???i ngo???i h??nh m??y kh??ng thay ?????i nhi???u so v???i??iPhone 6s??tr?????c ????.\n\n</div>\n<div class=\"show-more\"><a class=\"read-more\">Thu g???n n???i dun</a></div>","IPhone 7 32GB","C?? h???i tr??ng xe Honda SH150i\n\nMua combo S???c d??? ph??ng ??? C??p lightning 20 cm ??? B??? mi???ng d??n iPhone gi???m??<strong>20%</strong>","publish","open","closed","","iphone-7-32gb","","","2019-02-14 15:16:22","2019-02-14 08:16:22","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=442","0","product","","0"),
("443","1","2019-02-14 15:15:54","2019-02-14 08:15:54","","iphone-7-8-400x460","","inherit","open","closed","","iphone-7-8-400x460","","","2019-02-14 15:15:54","2019-02-14 08:15:54","","442","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/iphone-7-8-400x460.png","0","attachment","image/png","0"),
("444","1","2019-02-14 15:17:33","2019-02-14 08:17:33","<div class=\"content showContent\">\n<h2><strong>Galaxy S8 v?? S8 Plus hi???n ??ang l?? chu???n m???c smartphone v??? thi???t k??? trong t????ng lai. Sau nhi???u ng??y ???????c s??? d???ng, m??nh xin chia s??? nh???ng c???m nh???n chi ti???t nh???t v??? chi???c??Galaxy S8 Plus????? thi???t b??? ??ang c?? doanh s??? ?????t h??ng kh???ng nh???t hi???n t???i.</strong></h2>\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 Plus\" src=\"https://cdn4.tgdd.vn/Files/2017/05/01/978135/galaxys8plus_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 Plus\" data-original=\"https://cdn4.tgdd.vn/Files/2017/05/01/978135/galaxys8plus_1280x720-800-resize.jpg\" />\n\n<b>Tr???i nghi???m m??n h??nh l???n, ch??? kh??ng ph???i l?? m???t thi???t b??? k??ch th?????c l???n</b>\n\nN??m nay, c??c nh?? s???n xu???t H??n Qu???c nh?? LG v?? Samsung ???? ??i ti??n phong v???i m??n h??nh t??? l??? 18:9 hay 18,5:9, t???i ??u h???t m???c vi???n m??n h??nh. V?? Galaxy S8 Plus c??ng v???y, ng?????i d??ng s??? c?? m???t tr???i nghi???m m??n h??nh l???n ch??? kh??ng ph???i l?? m???t thi???t b??? k??ch th?????c l???n.\n\n<img class=\"lazy\" title=\"M??n h??nh\" src=\"https://cdn1.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus-man-hinh.jpg\" alt=\"M??n h??nh\" data-original=\"https://cdn1.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus-man-hinh.jpg\" />\n\nKh??ng nh???ng m???t tr?????c bo cong m?? m???t k??nh sau c??ng m???m m???i, ??m g???n trong b??n tay. C???m gi??c c???m n???m S8 Plus th???t s??? r???t d??? ch???u, d?????ng nh?? kh??ng th???y ch??t c???n n??o ngay c??? v???i chi ti???t nh??? nh???t. Tuy nhi??n, k??ch th?????c 6.2 inch khi???n cho vi???c d??ng v??n tay c???a m??nh kh?? l?? kh?? kh??n.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 plus\" src=\"https://cdn3.tgdd.vn/Files/2017/05/01/978135/img_0203_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 plus\" data-original=\"https://cdn3.tgdd.vn/Files/2017/05/01/978135/img_0203_1280x720-800-resize.jpg\" />\n\nTrong qu?? tr??nh s??? d???ng, ????i khi m??nh hay ???n nh???m n??t volume v?? Bixby trong nh???ng ng??y ?????u, do Samsung thi???t k??? v??? tr?? kh?? g???n nhau.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 Plus\" src=\"https://cdn.tgdd.vn/Files/2017/05/01/978135/img_1839_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 Plus\" data-original=\"https://cdn.tgdd.vn/Files/2017/05/01/978135/img_1839_1280x720-800-resize.jpg\" />\n<div class=\"ratingbox owl-carousel owl-theme\">\n<div class=\"owl-wrapper-outer autoHeight\">\n<div class=\"owl-wrapper\">\n<div class=\"owl-item\">\n<div class=\"item\">\n\n<b>???</b>Tuy???t v???i qu?? Samsung ??i!!! Mua m??y n??y v??? l?? b???n tr???m tr??? qu?? tr???i. M??y ?????p, sang ch???nh, camera qu?? ngon, b???o m???t m???ng m???t r???t nh???y, c?? ??i???u h??i d??? tu???t kh???i tay nh??ng m??nh ???? mua th??m ???p nh???a d???o n??n ch???ng sao c???.<b>???</b>\n\n<label class=\"line\"></label><span class=\"info\"><b>Ng???c D??n</b>????? Q1, Tp HCM<label class=\"sttB\"><i class=\"iconcom-checkbuy\"></i>???? mua t???i Th??? gi???i di ?????ng</label></span>\n\n</div>\n</div>\n</div>\n</div>\n</div>\n<strong>M??n h??nh v?? c???c, tr???i nghi???m th???t ????</strong>\n\nGalaxy S8 Plus ???????c trang b??? m??n h??nh 6.2 inch ????? ph??n gi???i 2K+, t??? l??? 18,5:9 tr??n t???m n???n Super AMOLED. V???i nhi???u c??ng ngh??? ??i k??m ?????c bi???t l?? HDR10 khi???n cho g??c nh??n r???ng, ????? s??ng cao, m??u ??en s??u c??ng t????ng ph???n m??u s???c ?????nh, kh??ng c?? g?? ????? ph??n n??n v??? m??n h??nh tr??n S8 Plus.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 plus\" src=\"https://cdn2.tgdd.vn/Files/2017/05/01/978135/img_0206_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 plus\" data-original=\"https://cdn2.tgdd.vn/Files/2017/05/01/978135/img_0206_1280x720-800-resize.jpg\" />\n\nVi???c thay th??? n??t home v???t l?? b???ng ph??m ??i???u h?????ng m??n h??nh tr??n S8 Plus m??nh th???y b??nh th?????ng kh??ng g??y kh?? ??kh??n g?? trong qu?? tr??nh s??? d???ng.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 plus\" src=\"https://cdn4.tgdd.vn/Files/2017/05/01/978135/img_0207_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 plus\" data-original=\"https://cdn4.tgdd.vn/Files/2017/05/01/978135/img_0207_1280x720-800-resize.jpg\" />\n\nN???u ng???i m??n h??nh to kh?? thao t??c ngo??i ???????ng, kh??ng sao, Galaxy S8 Plus v???n h??? tr??? t??nh n??ng m??n h??nh nh??? ????? thao t??c m???t tay.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 plus\" src=\"https://cdn1.tgdd.vn/Files/2017/05/01/978135/img_0214_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 plus\" data-original=\"https://cdn1.tgdd.vn/Files/2017/05/01/978135/img_0214_1280x720-800-resize.jpg\" />\n\nNgo??i ra, Samsung c??ng cho ph??p t??y bi???n thanh ??i???u h?????ng v???i vi???c thay ?????i v??? tr??, m??u s???c c??ng nh?? t???c ????? ph???n h???i n??t home.\n<div class=\"ratingbox owl-carousel owl-theme\">\n<div class=\"owl-wrapper-outer autoHeight\">\n<div class=\"owl-wrapper\">\n<div class=\"owl-item\">\n<div class=\"item\">\n\n<b>???</b>M??y ?????p, l???n ?????u ti??n m??nh b??? s??? ti???n l???n ra mua ??i???n tho???i, c??ng ?????n ??o l???m ch???. Nh??ng Galaxy S8 Plus kh??ng l??m m??nh th???t v???ng. Thi???t k??? m??n h??nh h???u nh?? kh??ng vi???n, v?? m??n h??nh nh??n nh?? th???t. B??? qu?? t???ng th?? kh???i ch????? ?????p v?? chuy??n nghi???p k??m theo nh???ng ?????c quy???n c???a Samsung. N??o l?? coi phim CGV m???i th??? 7, u???ng cafe Highland m???i tu???n c??ng v??o th??? 7, ph??ng ch??? h???ng th????ng gia ??? s??n bay. N??i chung m??nh r???t h??i l??ng. C???m ??n TGDD ???? mang l???i cho m??nh c?? h???i ????? tr???i nghi???m m???t ki???t t??c.<b>???</b>\n\n<label class=\"line\"></label><span class=\"info\"><b>Th???nh</b>????? H???i D????ng<label class=\"sttB\"><i class=\"iconcom-checkbuy\"></i>???? mua t???i Th??? gi???i di ?????ng</label></span>\n\n</div>\n</div>\n</div>\n</div>\n</div>\n<h3><strong>Camera c???i thi???n, nh??ng Samsung kh??ng h??? n??i ra</strong></h3>\nN???u nh??n s?? qua, Galaxy S8 hay S8 Plus ?????u kh??ng qu?? kh??c bi???t v???i ng?????i ti???n nhi???m S7. V???n l?? ????? ph??n gi???i 12 MP, kh???u ????? F/1.7, c??ng ngh??? l???y n??t Dual-pixel qu?? nhanh qu?? nguy hi???m c??ng k??ch th?????c c???m bi???n l???n 1.4 micromet.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 plus\" src=\"https://cdn3.tgdd.vn/Files/2017/05/01/978135/img_0218_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 plus\" data-original=\"https://cdn3.tgdd.vn/Files/2017/05/01/978135/img_0218_1280x720-800-resize.jpg\" />\n\nTuy nhi??n, s??? n??ng c???p c???a Samsung kh?? ??m th???m v?? ch??? y???u l?? ch???t l?????ng th???u k??nh. M??nh r???t h??i l??ng v??? camera tr??n Galaxy S8 Plus, v???i m??nh n?? x???ng ????ng l?? m???t chi???c camera-phone auto x???p h??ng top cao.\n\nC??c b???n c?? th??? xem m???t v??i h??nh ???nh m??nh ch???p t??? Galaxy S8 Plus:\n\n<img class=\"lazy\" title=\"???nh ch???p c???n c???nh trong nh??\" src=\"https://cdn.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus2-1.jpg\" alt=\"???nh ch???p c???n c???nh trong nh??\" data-original=\"https://cdn.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus2-1.jpg\" />\n<i>???nh c???n c???nh trong ph??ng</i>\n\n<img class=\"lazy\" title=\"M??u s???c g???n s??t v???i th???c t???\" src=\"https://cdn2.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus3-1.jpg\" alt=\"M??u s???c g???n s??t v???i th???c t???\" data-original=\"https://cdn2.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus3-1.jpg\" />\n<i>M??u s???c g???n s??t v???i th???c t???</i>\n\n<img class=\"lazy\" title=\"???nh ch???p thi???u s??ng\" src=\"https://cdn4.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus1-2.jpg\" alt=\"???nh ch???p thi???u s??ng\" data-original=\"https://cdn4.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus1-2.jpg\" />\n\nThu???t to??n x??? l?? trong nhi???u t??nh hu???ng ?????u t????ng ?????ng ng?????i ti???n nhi???m Galaxy S7, tuy nhi??n s??? kh??c nhau ?????n t??? ch??? ????? HDR mang l???i m???t b???c ???nh c?? d???i nh???y s??ng tuy???t v???i. Ch??a k??? vi???c flare t??m hay th???y khi ch???p c?? tia ????n tr??n camera Galaxy S7 hay d??ng A 2017, ???? ho??n to??n ???????c kh???c ph???c tr??n c???m bi???n S5K2L2 c???a Galaxy S8 Plus.\n\n<strong>Tr???i nghi???m ng?????i d??ng c??ng Samsung Experience 8.1</strong>\n\nM??nh s??? kh??ng n??i qu?? nhi???u v??? hi???u n??ng n???a, do Galaxy S8 Plus ch???y tr??n con chip Exynos 8895 c??ng 4 GB RAM, 64 GB b??? nh??? trong n??n m???i t??c v??? ?????u r???t m?????t m??.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 Plus\" src=\"https://cdn1.tgdd.vn/Files/2017/05/01/978135/img_0223_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 Plus\" data-original=\"https://cdn1.tgdd.vn/Files/2017/05/01/978135/img_0223_1280x720-800-resize.jpg\" />\n\nM??y ??ang ???????c ch???y tr??n n???n Android 7.0 c??ng giao di???n Samsung Experience 8.1 tuy l??? m?? quen. M???i t??nh n??ng t??? Grace UX tr??n S7 Edge ?????u gi???ng h???t.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 Plus\" src=\"https://cdn3.tgdd.vn/Files/2017/05/01/978135/img_0202_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 Plus\" data-original=\"https://cdn3.tgdd.vn/Files/2017/05/01/978135/img_0202_1280x720-800-resize.jpg\" />\n\nNgo??i ra, v???n ????? vi???c t???i ??u m??n h??nh 18,5:9 tr??n S8 Plus c??ng kh??ng ???n ?????nh nh?? k?? v???ng. Nhi???u ???ng d???ng d?? ???? cho ph??p ph??ng t??? l??? nh??ng v???n tr?? ra, v?? d??? nh?? game Dota truy???n k?? m??nh ??ang ch??i.\n\n<img class=\"lazy\" title=\"????nh gi?? chi ti???t Galaxy S8 Plus\" src=\"https://cdn.tgdd.vn/Files/2017/05/01/978135/img_0204_1280x720-800-resize.jpg\" alt=\"????nh gi?? chi ti???t Galaxy S8 Plus\" data-original=\"https://cdn.tgdd.vn/Files/2017/05/01/978135/img_0204_1280x720-800-resize.jpg\" />\n\nM???t ??i???m m???i tr??n Galaxy S8 v?? S8 Plus ch??nh l?? c?? tr??? l?? ???o Bixby, nghe c?? v??? hay nh??ng th???c ch???t kh??ng h???u ??ch l???m ??? Vi???t Nam.\n\n</div>\n<div class=\"show-more\"><a class=\"read-more\">Thu g???n n???i dung</a></div>","Samsung Galaxy S8 Plus","C?? h???i tr??ng xe Honda SH150i\n\nBao da Clear View ch??nh h??ng\n\nGi???m ngay 2 tri???u khi KH l?? ch??? s??? h???u Galaxy A, J, Note, S (l???y m?? ??u ????i tr??n Qu?? t???ng Galaxy)\n\nS???c d??? ph??ng ch??nh h??ng\n\nVali ??? Size 20??? c?? kh??a","publish","open","closed","","samsung-galaxy-s8-plus","","","2019-02-14 15:17:33","2019-02-14 08:17:33","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=444","0","product","","0"),
("445","1","2019-02-14 15:17:14","2019-02-14 08:17:14","","samsung-galaxy-s8-plus-tim-khoi-400-400x460","","inherit","open","closed","","samsung-galaxy-s8-plus-tim-khoi-400-400x460","","","2019-02-14 15:17:14","2019-02-14 08:17:14","","444","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/samsung-galaxy-s8-plus-tim-khoi-400-400x460.png","0","attachment","image/png","0"),
("446","1","2019-02-14 15:18:23","2019-02-14 08:18:23","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"dashes-spaced\"]\n\n[ux_image id=\"66\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"61\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[section class=\"tieu-chi\" bg_color=\"rgb(245, 245, 245)\" padding=\"25px\"]\n\n[row style=\"small\" col_style=\"dashed\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"113\" pos=\"right\"]\n\n<h4><span style=\"color: #282828;\">CH??M S??C NHANH</span></h4>\n<p><span style=\"font-size: 90%; color: #282828;\">Ti???p nh???n x??? l?? nhanh m???i tr?????ng h???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"114\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">B???O H??NH</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Tr???n ?????i d??nh cho iPhone - iPad sau s???a ch???a</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"115\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">THAY L???Y NGAY</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Th???i gian thay nhanh ch??? 40 - 90 ph??t</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"116\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">LINH KI???N CH??NH H??NG</span></h4>\n<p style=\"text-align: right;\"><span style=\"color: #282828; font-size: 90%;\">Cam k???t ch???t l?????ng linh ki???n thay th???.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"D???ch v??? c???a ch??ng t??i\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"D???ch v??? c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"??i???n tho???i b??n ch???y\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???n tho???i b??n ch???y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"L???ch khai giang\" class=\"lich-khai-giang\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"L???ch khai gi???ng\" color=\"rgb(0, 0, 0)\"]\n\n[featured_box img=\"230\" pos=\"left\" link=\"/ktv-ep-kinh-co-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p c??? Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"226\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-iphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Iphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"227\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-android/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Android</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"228\" pos=\"left\" link=\"/ktv-phan-mem-dien-thoai-chuyen-nghiep/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ph???n m???m ??i???n tho???i chuy??n nghi???p</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"229\" pos=\"left\" link=\"/ktv-ep-kinh-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p k??nh Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"5 L?? do b???n ph???i h???c ngh??? t???i Vi???n Di ?????ng\" color=\"rgb(0, 0, 0)\"]\n\n[row_inner style=\"collapse\" col_style=\"dashed\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"202\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"207\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"210\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"212\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"214\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"216\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN T???C - KI???N TH???C\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"2\" columns__md=\"1\" cat=\"32\" posts=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"3\" columns__md=\"1\" cat=\"32\" posts=\"3\" offset=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","2-revision-v1","","","2019-02-14 15:18:23","2019-02-14 08:18:23","","2","https://tppone.com/demo/suadienthoai/2-revision-v1/","0","revision","","0"),
("447","1","2019-02-14 15:20:24","2019-02-14 08:20:24","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"dashes-spaced\"]\n\n[ux_image id=\"66\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"61\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[section class=\"tieu-chi\" bg_color=\"rgb(245, 245, 245)\" padding=\"25px\"]\n\n[row style=\"small\" col_style=\"dashed\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"113\" pos=\"right\"]\n\n<h4><span style=\"color: #282828;\">CH??M S??C NHANH</span></h4>\n<p><span style=\"font-size: 90%; color: #282828;\">Ti???p nh???n x??? l?? nhanh m???i tr?????ng h???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"114\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">B???O H??NH</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Tr???n ?????i d??nh cho iPhone - iPad sau s???a ch???a</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"115\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">THAY L???Y NGAY</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Th???i gian thay nhanh ch??? 40 - 90 ph??t</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"116\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">LINH KI???N CH??NH H??NG</span></h4>\n<p style=\"text-align: right;\"><span style=\"color: #282828; font-size: 90%;\">Cam k???t ch???t l?????ng linh ki???n thay th???.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"D???ch v??? c???a ch??ng t??i\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"D???ch v??? c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"??i???n tho???i b??n ch???y\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???n tho???i b??n ch???y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[ux_products style=\"normal\" type=\"row\" image_height=\"120%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.4)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"L???ch khai giang\" class=\"lich-khai-giang\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"L???ch khai gi???ng\" color=\"rgb(0, 0, 0)\"]\n\n[featured_box img=\"230\" pos=\"left\" link=\"/ktv-ep-kinh-co-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p c??? Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"226\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-iphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Iphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"227\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-android/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Android</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"228\" pos=\"left\" link=\"/ktv-phan-mem-dien-thoai-chuyen-nghiep/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ph???n m???m ??i???n tho???i chuy??n nghi???p</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"229\" pos=\"left\" link=\"/ktv-ep-kinh-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p k??nh Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"5 L?? do b???n ph???i h???c ngh??? t???i Vi???n Di ?????ng\" color=\"rgb(0, 0, 0)\"]\n\n[row_inner style=\"collapse\" col_style=\"dashed\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"202\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"207\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"210\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"212\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"214\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"216\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN T???C - KI???N TH???C\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"2\" columns__md=\"1\" cat=\"32\" posts=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"3\" columns__md=\"1\" cat=\"32\" posts=\"3\" offset=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","2-revision-v1","","","2019-02-14 15:20:24","2019-02-14 08:20:24","","2","https://tppone.com/demo/suadienthoai/2-revision-v1/","0","revision","","0"),
("448","1","2019-02-14 15:21:07","2019-02-14 08:21:07","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"dashes-spaced\"]\n\n[ux_image id=\"66\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"61\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[section class=\"tieu-chi\" bg_color=\"rgb(245, 245, 245)\" padding=\"25px\"]\n\n[row style=\"small\" col_style=\"dashed\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"113\" pos=\"right\"]\n\n<h4><span style=\"color: #282828;\">CH??M S??C NHANH</span></h4>\n<p><span style=\"font-size: 90%; color: #282828;\">Ti???p nh???n x??? l?? nhanh m???i tr?????ng h???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"114\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">B???O H??NH</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Tr???n ?????i d??nh cho iPhone - iPad sau s???a ch???a</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"115\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">THAY L???Y NGAY</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Th???i gian thay nhanh ch??? 40 - 90 ph??t</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"116\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">LINH KI???N CH??NH H??NG</span></h4>\n<p style=\"text-align: right;\"><span style=\"color: #282828; font-size: 90%;\">Cam k???t ch???t l?????ng linh ki???n thay th???.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"D???ch v??? c???a ch??ng t??i\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"D???ch v??? c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"??i???n tho???i b??n ch???y\" class=\"dich-vu\" bg_color=\"rgb(246, 246, 246)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???n tho???i b??n ch???y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[ux_products style=\"normal\" type=\"row\" image_height=\"120%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.4)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"L???ch khai giang\" class=\"lich-khai-giang\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"L???ch khai gi???ng\" color=\"rgb(0, 0, 0)\"]\n\n[featured_box img=\"230\" pos=\"left\" link=\"/ktv-ep-kinh-co-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p c??? Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"226\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-iphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Iphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"227\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-android/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Android</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"228\" pos=\"left\" link=\"/ktv-phan-mem-dien-thoai-chuyen-nghiep/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ph???n m???m ??i???n tho???i chuy??n nghi???p</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"229\" pos=\"left\" link=\"/ktv-ep-kinh-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p k??nh Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"5 L?? do b???n ph???i h???c ngh??? t???i Vi???n Di ?????ng\" color=\"rgb(0, 0, 0)\"]\n\n[row_inner style=\"collapse\" col_style=\"dashed\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"202\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"207\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"210\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"212\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"214\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"216\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN T???C - KI???N TH???C\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"2\" columns__md=\"1\" cat=\"32\" posts=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"3\" columns__md=\"1\" cat=\"32\" posts=\"3\" offset=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","2-revision-v1","","","2019-02-14 15:21:07","2019-02-14 08:21:07","","2","https://tppone.com/demo/suadienthoai/2-revision-v1/","0","revision","","0"),
("449","1","2019-02-14 15:21:33","2019-02-14 08:21:33","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"dashes-spaced\"]\n\n[ux_image id=\"66\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"61\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[section class=\"tieu-chi\" bg_color=\"rgb(245, 245, 245)\" padding=\"25px\"]\n\n[row style=\"small\" col_style=\"dashed\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"113\" pos=\"right\"]\n\n<h4><span style=\"color: #282828;\">CH??M S??C NHANH</span></h4>\n<p><span style=\"font-size: 90%; color: #282828;\">Ti???p nh???n x??? l?? nhanh m???i tr?????ng h???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"114\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">B???O H??NH</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Tr???n ?????i d??nh cho iPhone - iPad sau s???a ch???a</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"115\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">THAY L???Y NGAY</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Th???i gian thay nhanh ch??? 40 - 90 ph??t</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"116\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">LINH KI???N CH??NH H??NG</span></h4>\n<p style=\"text-align: right;\"><span style=\"color: #282828; font-size: 90%;\">Cam k???t ch???t l?????ng linh ki???n thay th???.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"??i???n tho???i b??n ch???y\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???n tho???i b??n ch???y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[ux_products style=\"normal\" type=\"row\" image_height=\"120%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.4)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"D???ch v??? c???a ch??ng t??i\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"D???ch v??? c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"L???ch khai giang\" class=\"lich-khai-giang\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"L???ch khai gi???ng\" color=\"rgb(0, 0, 0)\"]\n\n[featured_box img=\"230\" pos=\"left\" link=\"/ktv-ep-kinh-co-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p c??? Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"226\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-iphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Iphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"227\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-android/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Android</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"228\" pos=\"left\" link=\"/ktv-phan-mem-dien-thoai-chuyen-nghiep/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ph???n m???m ??i???n tho???i chuy??n nghi???p</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"229\" pos=\"left\" link=\"/ktv-ep-kinh-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p k??nh Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"5 L?? do b???n ph???i h???c ngh??? t???i Vi???n Di ?????ng\" color=\"rgb(0, 0, 0)\"]\n\n[row_inner style=\"collapse\" col_style=\"dashed\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"202\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"207\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"210\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"212\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"214\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"216\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN T???C - KI???N TH???C\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"2\" columns__md=\"1\" cat=\"32\" posts=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"3\" columns__md=\"1\" cat=\"32\" posts=\"3\" offset=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","2-revision-v1","","","2019-02-14 15:21:33","2019-02-14 08:21:33","","2","https://tppone.com/demo/suadienthoai/2-revision-v1/","0","revision","","0"),
("451","1","2019-02-14 15:23:04","2019-02-14 08:23:04","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"dashes-spaced\"]\n\n[ux_image id=\"66\" image_size=\"original\" height=\"30%\"]\n\n[ux_image id=\"61\" image_size=\"original\" height=\"30%\"]\n\n\n[/ux_slider]\n[section class=\"tieu-chi\" bg_color=\"rgb(245, 245, 245)\" padding=\"25px\"]\n\n[row style=\"small\" col_style=\"dashed\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"113\" pos=\"right\"]\n\n<h4><span style=\"color: #282828;\">CH??M S??C NHANH</span></h4>\n<p><span style=\"font-size: 90%; color: #282828;\">Ti???p nh???n x??? l?? nhanh m???i tr?????ng h???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"114\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">B???O H??NH</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Tr???n ?????i d??nh cho iPhone - iPad sau s???a ch???a</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"115\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">THAY L???Y NGAY</span></h4>\n<p style=\"text-align: right;\"><span style=\"font-size: 90%; color: #282828;\">Th???i gian thay nhanh ch??? 40 - 90 ph??t</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"116\" pos=\"right\"]\n\n<h4 style=\"text-align: right;\"><span style=\"color: #282828;\">LINH KI???N CH??NH H??NG</span></h4>\n<p style=\"text-align: right;\"><span style=\"color: #282828; font-size: 90%;\">Cam k???t ch???t l?????ng linh ki???n thay th???.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"??i???n tho???i b??n ch???y\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???n tho???i b??n ch???y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" products=\"10\" image_height=\"120%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.4)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"D???ch v??? c???a ch??ng t??i\" class=\"dich-vu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"D???ch v??? c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" ids=\"157,154,151,148,145,142\" title_size=\"large\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"L???ch khai giang\" class=\"lich-khai-giang\" bg_color=\"rgb(245, 245, 245)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"L???ch khai gi???ng\" color=\"rgb(0, 0, 0)\"]\n\n[featured_box img=\"230\" pos=\"left\" link=\"/ktv-ep-kinh-co-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p c??? Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"226\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-iphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Iphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"227\" pos=\"left\" link=\"/ktv-sua-chua-dien-thoai-android/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n s???a ch???a ??i???n tho???i Android</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"228\" pos=\"left\" link=\"/ktv-phan-mem-dien-thoai-chuyen-nghiep/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ph???n m???m ??i???n tho???i chuy??n nghi???p</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n[gap height=\"17px\"]\n\n[featured_box img=\"229\" pos=\"left\" link=\"/ktv-ep-kinh-smartphone/\" target=\"_blank\"]\n\n<h4>K??? thu???t vi??n ??p k??nh Smartphone</h4>\n<p>H???c ph??: 15 tri???u</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"5 L?? do b???n ph???i h???c ngh??? t???i Vi???n Di ?????ng\" color=\"rgb(0, 0, 0)\"]\n\n[row_inner style=\"collapse\" col_style=\"dashed\"]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"202\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"207\" image_size=\"original\" caption=\"true\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"210\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"212\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"214\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"216\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" class=\"tin-tuc\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"TIN T???C - KI???N TH???C\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"2\" columns__md=\"1\" cat=\"32\" posts=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n[blog_posts style=\"overlay\" type=\"row\" columns=\"3\" columns__md=\"1\" cat=\"32\" posts=\"3\" offset=\"2\" excerpt=\"false\" comments=\"false\" image_height=\"50%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.3)\" image_hover=\"overlay-add\" text_align=\"left\" text_size=\"large\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","2-revision-v1","","","2019-02-14 15:23:04","2019-02-14 08:23:04","","2","https://tppone.com/demo/suadienthoai/2-revision-v1/","0","revision","","0"),
("462","1","2019-02-14 15:31:40","2019-02-14 08:31:40","<div class=\"content showContent\">\n<h2>iPhone 6s Plus 32 GB l????phi??n b???n??n??ng c???p ho??n h???o t??? iPhone 6 Plus v???i nhi???u t??nh n??ng m???i h???p d???n.</h2>\n<h3><strong>Camera ???????c c???i ti???n</strong></h3>\niPhone 6s Plus 32 GB ???????c n??ng c???p ????? ph??n gi???i camera sau l??n 12 MP (thay v?? 8 MP nh?? tr??n??iPhone 6 Plus), camera cho t???c ????? l???y n??t v?? ch???p nhanh, thao t??c ch???m ????? ch???p nh??? nh??ng. Ch???t l?????ng ???nh trong c??c ??i???u ki???n ch???p kh??c nhau t???t.\n\nCamera tr?????c v???i ????? ph??n gi???i 5 MP cho h??nh ???nh v???i ????? chi ti???t r?? n??t, ?????c bi???t m??y c??n c?? t??nh n??ng Retina Flash, s??? gi??p m??n h??nh s??ng l??n nh?? ????n Flash ????? b???c ???nh khi b???n ch???p trong tr???i t???i ???????c t???t h??n.\n<h3><strong>Th??ch th?? h??n v???i m??n h??nh r???ng</strong></h3>\nM??n h??nh l???n c??ng??m??u s???c t????i t???n, ????? n??t cao??s??? mang ?????n nhi???u??th??ch th?? khi l?????t web, xem phim hay l??m vi???c.\n<div id=\"attachment_150\" class=\"wp-caption aligncenter\"><img class=\"wp-image-150 size-full\" src=\"http://mobile.demoweb.com/wp-content/uploads/2017/10/iphone-6s-plus4-1.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"http://mobile.demoweb.com/wp-content/uploads/2017/10/iphone-6s-plus4-1.jpg 640w, http://mobile.demoweb.com/wp-content/uploads/2017/10/iphone-6s-plus4-1-300x172.jpg 300w\" alt=\"\" width=\"640\" height=\"367\" />\n<p class=\"wp-caption-text\">M??n h??nh l???n 5.5 inch tho???i m??i ????? l??m vi???c v?? gi???i tr??</p>\n\n</div>\n<h3><strong>C???m ???ng 3D Touch ?????c ????o</strong></h3>\n3D Touch l?? t??nh n??ng ho??n to??n m???i tr??n iPhone 6s Plus 32 GB, cho ph??p ng?????i d??ng xem tr?????c ???????c c??c t??y ch???n nhanh d???a v??o l???c nh???n m???nh hay nh??? m?? kh??ng c???n ph???i nh???p v??o ???ng d???ng.\n\n????? s??? d???ng, b???n ch??? c???n nh???n v??o m??n h??nh ho???c ???ng d???ng 1 l???c m???nh ?????n khi m??y rung nh??? l?? c?? th??? xem ???????c.\n\n????ng ti???c t??nh n??ng 3D Touch n??y ch??? m???i ???????c ??p d???ng tr??n c??c?????ng d???ng c???a Apple??nh??: danh b???, camera, mail, m??y ???nh ???\n\nB???n c?? th??? t??m hi???u th??m t??nh n??ng 3D Touch t???i??<strong>????y</strong>.\n<h3><strong>S???c m???nh c???a b??? vi x??? l?? A9 m???i nh???t</strong></h3>\niPhone 6s Plus 32 GB s??? d???ng??vi x??? l?? A9??t???c ????? 1.8 GHz (iPhone 6 Plus ch??? v???i 1.4 GHz), gi??p m??y ch???y c??ng l??c nhi???u ???ng d???ng m?????t m??.\n\nVi??n pin ch??? c?? dung l?????ng 2750 mAh kh?? th???p, tuy nhi??n b???n v???n c?? th??? an t??m s??? d???ng m??y trong m???t ng??y.\n\nM???t chi???c ??i???n tho???i v???a th??? hi???n ?????ng c???p c???a b???n v???a mang l???i nh???ng n??ng c???p t???t h??n nh?? camera, hi???u n??ng ho???t ?????ng m???nh m??? h??n, t??nh n??ng 3D Touch ?????c ????o, t???t c??? s??? l?? tr???i nghi???m m???i m??? cho b???n khi ch???n mua iPhone 6s Plus 32 GB.\n\n</div>\n<div class=\"show-more\"><a class=\"read-more\">Thu g???n n???i dung</a></div>","IPhone 6s Plus 32GB","C?? h???i tr??ng xe Honda SH150i ch??? ??p d???ng 1 s??? t???nh\n\nMua combo S???c d??? ph??ng ??? C??p lightning 20 cm ??? B??? mi???ng d??n iPhone gi???m??<strong>20%</strong>","publish","open","closed","","iphone-6s-plus-32gb","","","2019-02-14 15:31:40","2019-02-14 08:31:40","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=462","0","product","","0"),
("463","1","2019-02-14 15:31:23","2019-02-14 08:31:23","","iphone-6s-plus-32gb-400x450-400x450","","inherit","open","closed","","iphone-6s-plus-32gb-400x450-400x450","","","2019-02-14 15:31:23","2019-02-14 08:31:23","","462","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/iphone-6s-plus-32gb-400x450-400x450.png","0","attachment","image/png","0"),
("464","1","2019-02-14 15:32:32","2019-02-14 08:32:32","<div class=\"content showContent\">\n<h2><strong>Galaxy Note 8 l?? ni???m hy v???ng v???c l???i d??ng Note danh ti???ng c???a Samsung v???i di???n m???o nam t??nh, sang tr???ng. Trang b??? camera k??p x??a ph??ng th???i th?????ng, m??n h??nh v?? c???c nh?? tr??n??S8 Plus, b??t Spen v???i nhi???u t??nh n??ng m???i v?? nhi???u c??ng ngh??? ???????c Samsung ??u ??i ??em l??n Note 8.</strong></h2>\n<img class=\"lazy\" title=\"1\" src=\"https://cdn1.tgdd.vn/Files/2017/09/09/1020228/z764741777150_ea3f044fdfc5223e3e5b0c82a4a331f0-_2560x1920-800-resize.jpg\" alt=\"1\" data-original=\"https://cdn1.tgdd.vn/Files/2017/09/09/1020228/z764741777150_ea3f044fdfc5223e3e5b0c82a4a331f0-_2560x1920-800-resize.jpg\" />\n\nD?? ???????c gi???i thi???u l?? m??n h??nh l??n t???i 6.3 inch nh??ng th???c s??? m??y khi c???m tr??n tay r???t nh??? g???n nh??? v??o c??ng ngh??? ???m??n h??nh v?? c???c??? ti??n ti???n nh???t hi???n nay c???a Samsung.\n\n<img class=\"lazy\" title=\"2\" src=\"https://cdn3.tgdd.vn/Files/2017/09/09/1020228/z764741903200_347a0ee08cf7acf973047629cf2c29ac-_2560x1920-800-resize.jpg\" alt=\"2\" data-original=\"https://cdn3.tgdd.vn/Files/2017/09/09/1020228/z764741903200_347a0ee08cf7acf973047629cf2c29ac-_2560x1920-800-resize.jpg\" />\n\nC??c c???nh b??n m??y ???????c l??m cong ?????u khi???n m??nh khi c???m c?? c???m gi??c ??m tay r???t tho???i m??i v?? kh??ng h??? b??? c???n.\n\n<img class=\"lazy\" title=\"3\" src=\"https://cdn.tgdd.vn/Files/2017/09/09/1020228/z764741534567_c7686e1d5bdbcd1a1a365182240bd1fd-_2560x1920-800-resize.jpg\" alt=\"3\" data-original=\"https://cdn.tgdd.vn/Files/2017/09/09/1020228/z764741534567_c7686e1d5bdbcd1a1a365182240bd1fd-_2560x1920-800-resize.jpg\" />\n\nC??? m???t tr?????c v?? m???t sau m??y ?????u ???????c ph??? k??n b???ng l???p k??nh ph???n chi???u r???t ?????p nh?? ???? t???ng xu???t hi???n ??? b??? ????i S8/S8+.\n\n<img class=\"lazy\" title=\"4\" src=\"https://cdn2.tgdd.vn/Files/2017/09/09/1020228/z764741713755_8ea6cef957ab32285c205ed57a066367-_2560x1920-800-resize.jpg\" alt=\"4\" data-original=\"https://cdn2.tgdd.vn/Files/2017/09/09/1020228/z764741713755_8ea6cef957ab32285c205ed57a066367-_2560x1920-800-resize.jpg\" />\n\nV?? m??n h??nh 2K tr??n Note 8 ho???t ?????ng t???t, g??c nh??n s???c n??t.\n\n<img class=\"lazy\" title=\"5\" src=\"https://cdn4.tgdd.vn/Files/2017/09/09/1020228/z764740566215_8c972c312d8bddcc08180c8590a87824-_2560x1920-800-resize.jpg\" alt=\"5\" data-original=\"https://cdn4.tgdd.vn/Files/2017/09/09/1020228/z764740566215_8c972c312d8bddcc08180c8590a87824-_2560x1920-800-resize.jpg\" />\n\nGalaxy Note 8 ???????c c??i s???n h??? ??i???u h??nh Android Nougat ??i k??m v???i giao di???n Samsung Experience m???i nh???t. Theo nhi???u ng?????i d??ng ????nh gi?? th?? ????y c?? th??? n??i l?? b??? giao di???n ?????p v?? hi???u qu??? nh???t c???a Samsung t???i t???n b??y gi???.\n\n<img class=\"lazy\" title=\"6\" src=\"https://cdn1.tgdd.vn/Files/2017/09/09/1020228/z764696952365_76c2667ff0451a11b42b27a3f0531a11-_2560x1920-800-resize.jpg\" alt=\"6\" data-original=\"https://cdn1.tgdd.vn/Files/2017/09/09/1020228/z764696952365_76c2667ff0451a11b42b27a3f0531a11-_2560x1920-800-resize.jpg\" />\n\nV???i c???u h??nh kh???ng long Exynos 8895 8 nh??n v?? RAM 6 GB, Note 8 h??? tr??? ch???y ??a nhi???m r???t t???t, ????p ???ng h???u h???t c??c nhu c???u ch??i game 3D n???ng.\n\n<img class=\"lazy\" title=\"7\" src=\"https://cdn3.tgdd.vn/Files/2017/09/09/1020228/z764696983446_7e0761bbf40b186fa86ff390e04920d4-_2560x1920-800-resize.jpg\" alt=\"7\" data-original=\"https://cdn3.tgdd.vn/Files/2017/09/09/1020228/z764696983446_7e0761bbf40b186fa86ff390e04920d4-_2560x1920-800-resize.jpg\" />\n\nCamera k??p x??a ph??ng tr??n Note 8 c?? th??? n??i l?? ??? c???m gi??c nh?? m??nh ??ang s??? d???ng m???t chi???c m??y ???nh th???c th??? v???y.\n\n</div>","Samsung Galaxy Note 8","??o kho??c (N???u kh??ng c?? qu?? s??? ho??n 100,000??)\n\nC?? h???i tr??ng xe Honda SH150i\n\nTr??? g??p 0% qua th??? t??n d???ng\n\n1 ?????i 1 trong 1 th??ng??v???i s???n ph???m l???i.","publish","open","closed","","samsung-galaxy-note-8","","","2019-02-14 15:32:32","2019-02-14 08:32:32","","0","https://tppone.com/demo/suadienthoai/?post_type=product&#038;p=464","0","product","","0"),
("465","1","2019-02-14 15:32:26","2019-02-14 08:32:26","","samsung-galaxy-note8-1-400x460","","inherit","open","closed","","samsung-galaxy-note8-1-400x460","","","2019-02-14 15:32:26","2019-02-14 08:32:26","","464","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/02/samsung-galaxy-note8-1-400x460.png","0","attachment","image/png","0"),
("536","1","2019-05-06 16:12:47","2019-05-06 09:12:47","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:12:47\"\n    }\n}","","","trash","closed","closed","","fb78c89e-7bc1-494f-9129-422f2efafca1","","","2019-05-06 16:12:47","2019-05-06 09:12:47","","0","https://tppone.com/demo/suadienthoai/fb78c89e-7bc1-494f-9129-422f2efafca1/","0","customize_changeset","","0"),
("537","1","2019-05-06 17:28:05","2019-05-06 10:28:05","","suadienthoai","","inherit","open","closed","","suadienthoai","","","2019-05-06 17:28:05","2019-05-06 10:28:05","","0","https://tppone.com/demo/suadienthoai/wp-content/uploads/2019/05/suadienthoai.png","0","attachment","image/png","0"),
("538","1","2019-05-06 17:29:03","2019-05-06 10:29:03","{\n    \"sua-dien-thoai::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/05/suadienthoai.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:28:33\"\n    }\n}","","","trash","closed","closed","","07e9666d-9cf9-4a10-8610-81c563638edd","","","2019-05-06 17:29:03","2019-05-06 10:29:03","","0","https://tppone.com/demo/suadienthoai/?p=538","0","customize_changeset","","0"),
("539","1","2019-05-09 14:41:26","2019-05-09 07:41:26","{\n    \"sua-dien-thoai::footer_left_text\": {\n        \"value\": \"<img src=\\\"https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/05/suadienthoai.png\\\"/></br>Copyright [ux_current_year] \\u00a9 <a href=\\\"https://Webdemo.com\\\" target=\\\"blank\\\">Webdemo.com</a>. Thi\\u1ebft k\\u1ebf b\\u1edfi <a href=\\\"https://Webdemo.com\\\" target=\\\"blank\\\">Webdemo.com</a>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-09 07:41:26\"\n    }\n}","","","trash","closed","closed","","6c1581ef-d2a0-41d8-9b19-c2150a3e52ab","","","2019-05-09 14:41:26","2019-05-09 07:41:26","","0","https://bizhostvn.com/w/suadienthoai/?p=539","0","customize_changeset","","0"),
("540","1","2019-05-10 09:00:54","2019-05-10 02:00:54","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-10 09:00:54","2019-05-10 02:00:54","","0","https://bizhostvn.com/w/suadienthoai/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0"),
("541","1","2019-05-10 14:17:24","2019-05-10 07:17:24","<p><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5674167766047!2d106.71231654807266!3d10.800983621029532!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe8dea9b1d490c34e!2zQ8O0bmcgVHkgVE5ISCBUTURWIMSQaeG7h24gTcOheSBOZ3V54buFbiBLaW0!5e0!3m2!1sen!2s!4v1557472655858!5m2!1sen!2s\" width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></p>\n[gap height=\"22px\"]\n\n[row class=\"lien-he\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h3><span style=\"color: #4f3716;\">LI??N H??? V???I CH??NG T??I</span></h3>\n<p><span style=\"font-size: 100%;\"><strong>C??ng ty TNHH GiuseBee - Chi nh??nh H?? N???i</strong></span></p>\n<ul>\n<li><span style=\"font-size: 100%;\"><strong>Tr??? s??? ch??nh:</strong>??180 ??? 182 L?? Ch??nh Th???ng, Ph?????ng 9, Qu???n 3, TP H??? Ch?? Minh??</span></li>\n<li><span style=\"font-size: 100%;\"><strong style=\"color: #555555;\">Chi nh??nh:</strong><span style=\"color: #555555;\">??T???ng 4, s??? 01 ng?? 120 Tr?????ng Chinh, Thanh Xu??n , H?? N???i</span></span></li>\n<li class=\"gap-element\"><span style=\"font-size: 100%;\"><strong style=\"color: #555555;\">Hotline:</strong><span style=\"color: #555555;\">??039.465.8880.</span></span></li>\n<li><span style=\"font-size: 100%;\"><strong>Email:</strong> webdemo@gmail.com</span></li>\n<li><span style=\"font-size: 100%;\"><strong>Website:</strong> www.demoweb.com</span></li>\n</ul>\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" linkedin=\"#\" email=\"#\" phone=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"410\"]\n\n\n[/col]\n\n[/row]","Li??n h???","","inherit","closed","closed","","16-revision-v1","","","2019-05-10 14:17:24","2019-05-10 07:17:24","","16","https://bizhostvn.com/w/suadienthoai/16-revision-v1/","0","revision","","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("1","1","0"),
("18","20","0"),
("19","20","0"),
("20","20","0"),
("21","20","0"),
("22","20","0"),
("23","20","0"),
("24","20","0"),
("25","20","0"),
("26","20","0"),
("27","20","0"),
("28","20","0"),
("30","20","0"),
("31","20","0"),
("32","20","0"),
("33","20","0"),
("34","20","0"),
("35","20","0"),
("36","20","0"),
("37","20","0"),
("38","20","0"),
("39","20","0"),
("142","2","0"),
("142","16","0"),
("142","21","0"),
("142","22","0"),
("145","2","0"),
("145","17","0"),
("145","21","0"),
("145","23","0"),
("148","1","0"),
("148","2","0"),
("148","7","0"),
("148","24","0"),
("148","25","0"),
("151","1","0"),
("151","2","0"),
("151","17","0"),
("151","24","0"),
("151","26","0"),
("151","27","0"),
("154","2","0"),
("154","17","0"),
("154","21","0"),
("154","28","0"),
("157","2","0"),
("157","17","0"),
("157","29","0"),
("157","30","0"),
("177","31","0"),
("180","31","0"),
("183","31","0"),
("186","31","0"),
("189","31","0"),
("258","32","0"),
("258","33","0"),
("261","4","0"),
("261","21","0"),
("261","32","0"),
("264","4","0"),
("264","21","0"),
("264","32","0"),
("264","34","0"),
("267","4","0"),
("267","32","0"),
("270","4","0"),
("270","32","0"),
("408","20","0"),
("428","35","0"),
("428","48","0"),
("428","49","0"),
("430","35","0"),
("430","48","0"),
("430","49","0"),
("432","35","0"),
("432","49","0"),
("436","35","0"),
("436","49","0"),
("438","35","0"),
("438","50","0"),
("440","35","0"),
("440","51","0"),
("442","35","0"),
("442","52","0"),
("444","35","0"),
("444","53","0"),
("462","35","0"),
("462","52","0"),
("464","35","0"),
("464","53","0");




CREATE TABLE `gdd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_taxonomy VALUES
("1","1","category","","0","3"),
("2","2","category","","0","6"),
("3","3","category","","0","0"),
("4","4","category","","0","4"),
("5","5","category","","1","0"),
("6","6","category","","1","0"),
("7","7","category","","1","1"),
("8","8","category","","1","0"),
("9","9","category","","1","0"),
("10","10","category","","1","0"),
("11","11","category","","1","0"),
("12","12","category","","1","0"),
("13","13","category","","2","0"),
("14","14","category","","2","0"),
("15","15","category","","2","0"),
("16","16","category","","2","1"),
("17","17","category","","2","4"),
("18","18","category","","2","0"),
("19","19","category","","2","0"),
("20","20","nav_menu","","0","22"),
("21","21","post_tag","","0","5"),
("22","22","post_tag","","0","1"),
("23","23","post_tag","","0","1"),
("24","24","post_tag","","0","2"),
("25","25","post_tag","","0","1"),
("26","26","category","","0","1"),
("27","27","post_tag","","0","1"),
("28","28","post_tag","","0","1"),
("29","29","post_tag","","0","1"),
("30","30","post_tag","","0","1"),
("31","31","category","","0","5"),
("32","32","category","","0","5"),
("33","33","post_tag","","0","1"),
("34","34","post_tag","","0","1"),
("35","35","product_type","","0","10"),
("36","36","product_type","","0","0"),
("37","37","product_type","","0","0"),
("38","38","product_type","","0","0"),
("39","39","product_visibility","","0","0"),
("40","40","product_visibility","","0","0"),
("41","41","product_visibility","","0","0"),
("42","42","product_visibility","","0","0"),
("43","43","product_visibility","","0","0"),
("44","44","product_visibility","","0","0"),
("45","45","product_visibility","","0","0"),
("46","46","product_visibility","","0","0"),
("47","47","product_visibility","","0","0"),
("48","48","product_cat","","0","2"),
("49","49","product_cat","","0","4"),
("50","50","product_cat","","0","1"),
("51","51","product_cat","","0","1"),
("52","52","product_cat","","0","2"),
("53","53","product_cat","","0","2");




CREATE TABLE `gdd_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_termmeta VALUES
("1","48","product_count_product_cat","2"),
("2","49","order","0"),
("3","49","product_count_product_cat","4"),
("4","50","order","0"),
("5","50","product_count_product_cat","1"),
("6","51","order","0"),
("7","51","product_count_product_cat","1"),
("8","52","order","0"),
("9","52","product_count_product_cat","2"),
("10","53","order","0"),
("11","53","product_count_product_cat","2");




CREATE TABLE `gdd_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_terms VALUES
("1","Thay m??n h??nh","thay-man-hinh","0"),
("2","D???ch v??? s???a ch???a","dich-vu-sua-chua","0"),
("3","????o t???o d???y ngh???","dao-tao-day-nghe","0"),
("4","Tin t???c - Ki???n th???c","tin-tuc-kien-thuc","0"),
("5","Thay m??n h??nh Iphone","thay-man-hinh-iphone","0"),
("6","Thay m??n h??nh iPad","thay-man-hinh-ipad","0"),
("7","Thay m??n h??nh Samsung","thay-man-hinh-samsung","0"),
("8","Thay m??n h??nh Oppo","thay-man-hinh-oppo","0"),
("9","Thay m??n h??nh Sony","thay-man-hinh-sony","0"),
("10","Thay m??n h??nh Xiaomi","thay-man-hinh-xiaomi","0"),
("11","Thay m??n h??nh Nokia","thay-man-hinh-nokia","0"),
("12","Thay m??n h??nh Blackberry","thay-man-hinh-blackberry","0"),
("13","Thay v??? iphone","thay-vo-iphone","0"),
("14","????? v??? iphone","do-vo-iphone","0"),
("15","Sim gh??p 4G","sim-ghep-4g","0"),
("16","Thay pin ??i???n tho???i","thay-pin-dien-thoai","0"),
("17","Thay k??nh c???m ???ng","thay-kinh-cam-ung","0"),
("18","Thay th??? linh ki???n","thay-the-linh-kien","0"),
("19","S???a ch???a Macbook","sua-chua-macbook","0"),
("20","Main menu","main-menu","0"),
("21","s???a ??i???n tho???i","sua-dien-thoai","0"),
("22","thay pin iphone","thay-pin-iphone","0"),
("23","Thay k??nh iphone","thay-kinh-iphone","0"),
("24","thay m??n h??nh","thay-man-hinh","0"),
("25","thay m??n samsung","thay-man-samsung","0"),
("26","Thay m??n h??nh LG","thay-man-hinh-lg","0"),
("27","thay m??n LG","thay-man-lg","0"),
("28","thay k??nh iphoen","thay-kinh-iphoen","0"),
("29","thay k??nh c???m ???ng","thay-kinh-cam-ung","0"),
("30","s???a ??i???n tho???i samsung","sua-dien-thoai-samsung","0"),
("31","????o t???o","dao-tao","0"),
("32","Tin t???c","tin-tuc","0"),
("33","Tin t???c s???a ??i???n tho???i","tin-tuc-sua-dien-thoai","0"),
("34","s???a ch???a m??n h??nh","sua-chua-man-hinh","0"),
("35","simple","simple","0"),
("36","grouped","grouped","0"),
("37","variable","variable","0"),
("38","external","external","0"),
("39","exclude-from-search","exclude-from-search","0"),
("40","exclude-from-catalog","exclude-from-catalog","0"),
("41","featured","featured","0"),
("42","outofstock","outofstock","0"),
("43","rated-1","rated-1","0"),
("44","rated-2","rated-2","0"),
("45","rated-3","rated-3","0"),
("46","rated-4","rated-4","0"),
("47","rated-5","rated-5","0"),
("48","Ch??a ph??n lo???i","chua-phan-loai","0"),
("49","Blackberry","blackberry","0"),
("50","??i???n tho???i LG","dien-thoai-lg","0"),
("51","??i???n tho???i OPPO","dien-thoai-oppo","0"),
("52","??i???n tho???i iPhone","dien-thoai-iphone","0"),
("53","??i???n tho???i Samsung","dien-thoai-samsung","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_usermeta VALUES
("1","1","nickname","webdemo.com"),
("2","1","first_name",""),
("3","1","last_name",""),
("4","1","description",""),
("5","1","rich_editing","true"),
("6","1","syntax_highlighting","true"),
("7","1","comment_shortcuts","false"),
("8","1","admin_color","fresh"),
("9","1","use_ssl","0"),
("10","1","show_admin_bar_front","true"),
("11","1","locale",""),
("12","1","gdd_capabilities","a:1:{s:13:\"administrator\";b:1;}"),
("13","1","gdd_user_level","10"),
("14","1","dismissed_wp_pointers","wp496_privacy,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:8:{s:64:\"1a45efb80ce4f5127bbb612c57522a38789739ef4ff959a166fde49cf9a48699\";a:4:{s:10:\"expiration\";i:1557485986;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557313186;}s:64:\"15c3faff80366914f889a1eb85823ca0c7465bf13f37dc4d5ec4b2ce9c40bea2\";a:4:{s:10:\"expiration\";i:1557560394;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557387594;}s:64:\"fe3b7e6efe1f05ef516bd396aec5f15f6dfdd3c342458c1fbf82db7773d03717\";a:4:{s:10:\"expiration\";i:1557616673;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443873;}s:64:\"dc7ea4847501b706dca2354197f1b0656ff4998084a6ed605e8dee6671b046d8\";a:4:{s:10:\"expiration\";i:1557625835;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453035;}s:64:\"1c99d55279970f3a4385893c6e766cf2db43cca0bd2ec2ca776d9deb8f40df83\";a:4:{s:10:\"expiration\";i:1557628412;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455612;}s:64:\"6b536e0838d8b232830c48328ce75b7624734b79079338daa50a13a2de187463\";a:4:{s:10:\"expiration\";i:1557638260;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557465460;}s:64:\"5fa2cd554833b7f1d3fb5b6c517d4db27929b0bc9415a687126523cf10253a77\";a:4:{s:10:\"expiration\";i:1557645245;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557472445;}s:64:\"ee91452ec82cd0352aa08ba2e1b77f1adbbb228cf9ef080a9a92fd8c7875e230\";a:4:{s:10:\"expiration\";i:1557658586;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557485786;}}"),
("17","1","gdd_dashboard_quick_press_last_post_id","535"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","show_try_gutenberg_panel","0"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("22","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("23","1","nav_menu_recently_edited","20"),
("24","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("25","1","gdd_user-settings-time","1557387591"),
("26","1","sd_yoast_notifications","a:4:{i:0;a:2:{s:7:\"message\";s:569:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 94%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:899:\"Ch??ng t??i nh???n th???y b???n ???? s??? d???ng Yoast SEO ???????c m???t th???i gian; ch??ng t??i mong b???n y??u th??ch n??! Ch??ng t??i s??? v?? c??ng c???m ?????ng n???u b???n c?? th??? <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=108\">cho ch??ng t??i m???t ????nh gi?? 5 sao tr??n WordPress.org</a>!\n\nN???u b???n g???p ph???i s??? c???, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=108\">vui l??ng g???i b??o c??o l???i</a> v?? ch??ng t??i s??? c??? h???t s???c ????? gi??p b???n.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/suadienthoai/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Kh??ng hi???n th??? nh???ng th??ng b??o n??y n???a</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:247:\"?????ng b??? qua l???i m??y t??m ki???m thu th???p th??ng tin trang web c???a b???n:  <a href=\"https://bizhostvn.com/w/suadienthoai/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> k???t n???i v???i Google Search Console ??? ????y </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:138:\"Yoast SEO x??c ?????nh b???n ??ang s??? d???ng phi??n b???n 9.1 c???a Yoast SEO Premium, h??y c???p nh???t l??n phi??n b???n m???i nh???t.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
("27","1","sd_i18nModuleTranslationAssistance","seen"),
("28","1","sd_wpseo-dismiss-gsc","seen"),
("29","1","_yoast_wpseo_profile_updated","1547696308"),
("31","1","duplicator_pro_created_format","1"),
("32","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("33","1","dismissed_no_secure_connection_notice","1"),
("34","1","dismissed_no_shipping_methods_notice","1"),
("35","1","wc_last_active","1557446400"),
("36","1","dismissed_regenerating_thumbnails_notice","1"),
("54","1","_woocommerce_tracks_anon_id","woo:9KY99sTmUFSbHRkFENCYaTUg"),
("57","1","_woocommerce_load_saved_cart_after_login","1");




CREATE TABLE `gdd_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_users VALUES
("1","admin","$P$Bi8zdDt5LoGJjNgCbWrPdBTsmADXko1","admin","demobz@gmail.com","","2019-01-16 12:51:20","","0","admin");




CREATE TABLE `gdd_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_gdd_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `gdd_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_links VALUES
("1","https://www.viendidong.com/training/ktv-phan-mem-dien-thoai-chuyen-nghiep","386","0","external"),
("2","https://www.viendidong.com/training/ktv-sua-chua-dien-thoai-android","386","0","external"),
("3","https://www.viendidong.com/training/ktv-sua-chua-dien-thoai-ios","386","0","external"),
("4","https://www.viendidong.com/training/ktv-sua-chua-dien-thoai-pho-thong","386","0","external"),
("5","https://www.viendidong.com/training/ktv-sua-chua-dien-tu-can-ban-32-tiet","386","0","external"),
("6","https://www.viendidong.com/training/ktv-ep-co-smartphone","386","0","external"),
("7","https://www.viendidong.com/training/ktv-ep-kinh-smartphone","386","0","external"),
("13","#","16","0","internal"),
("14","#","16","0","internal"),
("15","mailto:#","16","0","external"),
("16","tel:#","16","0","external"),
("17","#","16","0","internal"),
("18","https://Webdemo.com/","14","0","external"),
("19","http://Webdemo.com/","14","0","external"),
("20","http://www.inhinhlenao.net/","14","0","external"),
("21","http://www.aoconggiao.com/","14","0","external"),
("22","http://www.aoconggiao.com/","14","0","external"),
("23","http://www.sites.google.com/site/xuongthanhgiuse/","14","0","external"),
("24","https://Webdemo.com/category/goc-chia-se/","14","0","external"),
("25","https://Webdemo.com/hoc-html-truc-tuyen-mien-phi/","14","0","external"),
("26","https://Webdemo.com/category/kien-thuc/hoc-thiet-ke-web-wordpress/","14","0","external"),
("27","https://Webdemo.com/category/kien-thuc/kien-thuc-do-hoa/","14","0","external"),
("28","https://Webdemo.com/","14","0","external"),
("29","http://chongthamnamdo.com/","14","0","external"),
("30","http://noithatmocstyle.vn/","14","0","external"),
("31","http://print2.ninhbinhweb.cm/","14","0","external"),
("32","http://inphattin.com/","14","0","external"),
("33","http://nongsan24h.com/","14","0","external"),
("34","http://ongvangfood.com.vn/","14","0","external"),
("35","http://www.suckhoexanhvn.com/","14","0","external"),
("36","http://www.bamhuyetbanchan.com/","14","0","external"),
("37","http://www.tacomotocare.com.vn/","14","0","external"),
("38","http://www.tuongbachothachcao.com/","14","0","external"),
("39","http://www.sacmauquocte.vn/","14","0","external"),
("40","http://www.hoacat.net/","14","0","external"),
("41","http://www.mideawater.vn/","14","0","external"),
("42","http://www.bangiaolyphatdiem.com/","14","0","external"),
("43","http://www.gxconthoi.org/","14","0","external"),
("44","http://www.loinguyentram.com/","14","0","external"),
("45","http://www.sontaycamera.com/","14","0","external"),
("46","http://www.golife.store/","14","0","external"),
("47","http://www.tinhocpst.edu.vn/","14","0","external"),
("48","http://www.tk3.com.vn/","14","0","external"),
("49","http://www.gachdatrangtrithuyoanh.com/","14","0","external"),
("50","http://www.vietnhi.vn/","14","0","external"),
("51","http://www.aoconggiao.com/","14","0","external"),
("52","http://www.banhtrangmetayninh.com/","14","0","external"),
("53","http://www.nongsanviethan.com/","14","0","external"),
("54","http://www.shopconggiao.com/","14","0","external"),
("55","http://www.angiadat.com/","14","0","external"),
("56","http://www.aoconggiao.com/","14","0","external"),
("57","http://www.banhmyquesaigon.com/","14","0","external"),
("58","http://www.sonlaquavat.com/","14","0","external"),
("59","http://www.hoanghuykoifarm.com/","14","0","external"),
("60","http://www.quangcaovugia.com/","14","0","external"),
("61","http://www.lamcuanhomgiare.com/","14","0","external"),
("62","http://www.demoweb.com/","14","0","external"),
("63","http://www.book.ihoc.me/","14","0","external"),
("64","http://www.dreamhousehotels.com/","14","0","external"),
("65","http://www.cahoicatam.com/","14","0","external"),
("66","http://www.demoweb.com/","14","0","external"),
("67","http://www.facebook.com/demo","14","0","external"),
("69","https://tinhte.vn/tags/9810/","430","0","external"),
("188","https://bizhostvn.com/w/suadienthoai/san-pham/samsung-galaxy-s8-plus/","2","444","internal"),
("189","https://bizhostvn.com/w/suadienthoai/san-pham/samsung-galaxy-s8-plus/","2","444","internal"),
("190","https://bizhostvn.com/w/suadienthoai/san-pham/iphone-7-32gb/","2","442","internal"),
("191","https://bizhostvn.com/w/suadienthoai/san-pham/iphone-7-32gb/","2","442","internal"),
("192","https://bizhostvn.com/w/suadienthoai/san-pham/dien-thoai-nokia-x6-nokia-6-1-plus/","2","440","internal"),
("193","https://bizhostvn.com/w/suadienthoai/san-pham/dien-thoai-nokia-x6-nokia-6-1-plus/","2","440","internal"),
("194","https://bizhostvn.com/w/suadienthoai/san-pham/dien-thoai-lg-g3/","2","438","internal"),
("195","https://bizhostvn.com/w/suadienthoai/san-pham/dien-thoai-lg-g3/","2","438","internal"),
("196","https://bizhostvn.com/w/suadienthoai/san-pham/blackberry-z10/","2","436","internal"),
("197","https://bizhostvn.com/w/suadienthoai/san-pham/blackberry-z10/","2","436","internal"),
("198","https://bizhostvn.com/w/suadienthoai/san-pham/blackberry-z30/","2","432","internal"),
("199","https://bizhostvn.com/w/suadienthoai/san-pham/blackberry-z30/","2","432","internal"),
("200","https://bizhostvn.com/w/suadienthoai/san-pham/blacberry-9810/","2","430","internal"),
("201","https://bizhostvn.com/w/suadienthoai/san-pham/blacberry-9810/","2","430","internal"),
("202","https://bizhostvn.com/w/suadienthoai/san-pham/blackberry-bold-9930/","2","428","internal"),
("203","https://bizhostvn.com/w/suadienthoai/san-pham/blackberry-bold-9930/","2","428","internal"),
("204","https://bizhostvn.com/w/suadienthoai/thay-kinh-cam-ung-samsung/","2","157","internal"),
("205","https://bizhostvn.com/w/suadienthoai/thay-kinh-cam-ung-iphone/","2","154","internal"),
("206","https://bizhostvn.com/w/suadienthoai/thay-man-hinh-lg/","2","151","internal"),
("207","https://bizhostvn.com/w/suadienthoai/thay-man-hinh-samsung/","2","148","internal"),
("208","https://bizhostvn.com/w/suadienthoai/thay-man-hinh-iphone/","2","145","internal"),
("209","https://bizhostvn.com/w/suadienthoai/thay-pin-dien-thoai/","2","142","internal"),
("210","/ktv-ep-kinh-co-smartphone/","2","177","internal"),
("211","/ktv-sua-chua-dien-thoai-iphone/","2","189","internal"),
("212","/ktv-sua-chua-dien-thoai-android/","2","186","internal"),
("213","/ktv-phan-mem-dien-thoai-chuyen-nghiep/","2","183","internal"),
("214","/ktv-ep-kinh-smartphone/","2","180","internal"),
("215","https://bizhostvn.com/w/suadienthoai/khuyen-mai-chao-nam-moi-2019-thay-vo-do-vo-iphone-giam-19/","2","270","internal"),
("216","https://bizhostvn.com/w/suadienthoai/khuyen-mai-chao-nam-moi-2019-ep-kinh-android-giam-19/","2","267","internal"),
("217","https://bizhostvn.com/w/suadienthoai/khuyen-mai-chao-nam-moi-2019-ep-kinh-cam-ung-android-giam-19/","2","264","internal"),
("218","https://bizhostvn.com/w/suadienthoai/khuyen-mai-chao-nam-moi-2019-ep-kinh-iphone-giam-gia-19/","2","261","internal"),
("219","https://bizhostvn.com/w/suadienthoai/khuyen-mai-chao-2019-tut-lai-smartphone-giam-gia-den-19/","2","258","internal");




CREATE TABLE `gdd_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_meta VALUES
("1","0","0"),
("2","32","0"),
("4","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("9","0","0"),
("10","0","0"),
("11","0","0"),
("12","0","0"),
("13","0","0"),
("14","0","0"),
("15","0","0"),
("16","3","0"),
("17","0","0"),
("29","0","0"),
("40","0","0"),
("41","0","0"),
("42","0","0"),
("43","0","0"),
("44","0","0"),
("45","0","0"),
("46","0","0"),
("47","0","0"),
("48","0","0"),
("49","0","0"),
("50","0","0"),
("51","0","0"),
("52","0","0"),
("53","0","0"),
("54","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
("58","0","0"),
("59","0","0"),
("62","0","0"),
("64","0","0"),
("65","0","0"),
("67","0","0"),
("68","0","0"),
("70","0","0"),
("72","0","0"),
("73","0","0"),
("75","0","0"),
("76","0","0"),
("78","0","0"),
("79","0","0"),
("80","0","0"),
("81","0","0"),
("82","0","0"),
("83","0","0"),
("84","0","0"),
("85","0","0"),
("86","0","0"),
("90","0","0"),
("91","0","0"),
("92","0","0"),
("93","0","0"),
("94","0","0"),
("95","0","0"),
("96","0","0"),
("97","0","0"),
("98","0","0"),
("99","0","0"),
("100","0","0"),
("101","0","0"),
("102","0","0"),
("103","0","0"),
("104","0","0"),
("105","0","0"),
("106","0","0"),
("107","0","0"),
("108","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("112","0","0"),
("117","0","0"),
("118","0","0"),
("119","0","0"),
("120","0","0"),
("121","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0"),
("126","0","0"),
("127","0","0"),
("128","0","0"),
("129","0","0"),
("130","0","0"),
("131","0","0"),
("132","0","0"),
("133","0","0"),
("134","0","0"),
("135","0","0"),
("136","0","0"),
("137","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("139","0","0"),
("140","0","0"),
("141","0","0"),
("142","0","1"),
("144","0","0"),
("145","0","1"),
("147","0","0"),
("148","0","1"),
("150","0","0"),
("151","0","1"),
("153","0","0"),
("154","0","1"),
("156","0","0"),
("157","0","1"),
("159","0","0"),
("160","0","0"),
("161","0","0"),
("162","0","0"),
("163","0","0"),
("164","0","0"),
("165","0","0"),
("166","0","0"),
("167","0","0"),
("168","0","0"),
("169","0","0"),
("170","0","0"),
("171","0","0"),
("172","0","0"),
("173","0","0"),
("174","0","0"),
("175","0","0"),
("176","0","0"),
("177","0","1"),
("179","0","0"),
("180","0","1"),
("182","0","0"),
("183","0","1"),
("185","0","0"),
("186","0","1"),
("188","0","0"),
("189","0","1"),
("191","0","0"),
("192","0","0"),
("193","0","0"),
("194","0","0"),
("195","0","0"),
("196","0","0"),
("197","0","0"),
("198","0","0"),
("199","0","0"),
("201","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("206","0","0"),
("208","0","0"),
("209","0","0"),
("211","0","0"),
("213","0","0"),
("215","0","0"),
("217","0","0"),
("218","0","0"),
("219","0","0"),
("220","0","0"),
("221","0","0"),
("222","0","0"),
("223","0","0"),
("224","0","0"),
("225","0","0"),
("231","0","0"),
("232","0","0"),
("233","0","0"),
("234","0","0"),
("235","0","0"),
("236","0","0"),
("237","0","0"),
("238","0","0"),
("239","0","0"),
("240","0","0"),
("241","0","0"),
("242","0","0"),
("243","0","0"),
("244","0","0"),
("245","0","0"),
("246","0","0"),
("247","0","0"),
("248","0","0"),
("249","0","0"),
("250","0","0"),
("251","0","0"),
("252","0","0"),
("253","0","0"),
("254","0","0"),
("255","0","0"),
("256","0","0"),
("257","0","0"),
("258","0","1"),
("260","0","0"),
("261","0","1"),
("263","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("264","0","1"),
("266","0","0"),
("267","0","1"),
("269","0","0"),
("270","0","1"),
("272","0","0"),
("273","0","0"),
("274","0","0"),
("275","0","0"),
("276","0","0"),
("277","0","0"),
("278","0","0"),
("279","0","0"),
("280","0","0"),
("281","0","0"),
("282","0","0"),
("283","0","0"),
("284","0","0"),
("285","0","0"),
("286","0","0"),
("287","0","0"),
("288","0","0"),
("289","0","0"),
("290","0","0"),
("292","0","0"),
("293","0","0"),
("294","0","0"),
("295","0","0"),
("296","0","0"),
("297","0","0"),
("298","0","0"),
("299","0","0"),
("300","0","0"),
("301","0","0"),
("302","0","0"),
("303","0","0"),
("304","0","0"),
("305","0","0"),
("306","0","0"),
("307","0","0"),
("308","0","0"),
("309","0","0"),
("310","0","0"),
("311","0","0"),
("312","0","0"),
("313","0","0"),
("314","0","0"),
("315","0","0"),
("316","0","0"),
("317","0","0"),
("323","0","0"),
("325","0","0"),
("326","0","0"),
("327","0","0"),
("328","0","0"),
("329","0","0"),
("330","0","0"),
("331","0","0"),
("332","0","0"),
("333","0","0"),
("334","0","0"),
("335","0","0"),
("336","0","0"),
("337","0","0"),
("338","0","0"),
("339","0","0"),
("340","0","0"),
("341","0","0"),
("342","0","0"),
("343","0","0"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("348","0","0"),
("350","0","0"),
("351","0","0"),
("352","0","0"),
("353","0","0"),
("354","0","0"),
("355","0","0"),
("356","0","0"),
("357","0","0"),
("358","0","0"),
("359","0","0"),
("360","0","0"),
("361","0","0"),
("362","0","0"),
("363","0","0"),
("364","0","0"),
("365","0","0"),
("366","0","0"),
("368","0","0"),
("369","0","0"),
("370","0","0"),
("371","0","0"),
("372","0","0"),
("373","0","0"),
("374","0","0"),
("375","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("376","0","0"),
("377","0","0"),
("378","0","0"),
("379","0","0"),
("380","0","0"),
("381","0","0"),
("382","0","0"),
("383","0","0"),
("384","0","0"),
("385","0","0"),
("386","0","0"),
("387","0","0"),
("388","0","0"),
("389","0","0"),
("390","0","0"),
("391","0","0"),
("392","0","0"),
("393","0","0"),
("394","0","0"),
("395","0","0"),
("396","0","0"),
("397","0","0"),
("398","0","0"),
("399","0","0"),
("400","0","0"),
("401","0","0"),
("402","0","0"),
("403","0","0"),
("404","0","0"),
("405","0","0"),
("406","0","0"),
("407","0","0"),
("409","0","0"),
("411","0","0"),
("412","0","0"),
("413","0","0"),
("414","0","0"),
("415","0","0"),
("416","0","0"),
("417","0","0"),
("418","0","0"),
("419","0","0"),
("420","0","0"),
("421","0","0"),
("422","0","0"),
("423","0","0"),
("424","0","0"),
("425","0","0"),
("426","0","0"),
("427","0","0"),
("428","0","2"),
("430","0","2"),
("432","0","2"),
("433","0","0"),
("434","0","0"),
("436","0","2"),
("438","0","2"),
("440","0","2"),
("442","0","2"),
("444","0","2"),
("450","0","0"),
("452","0","0"),
("453","0","0"),
("454","0","0"),
("455","0","0"),
("456","0","0"),
("457","0","0"),
("458","0","0"),
("459","0","0"),
("460","0","0"),
("461","0","0"),
("462","0","0"),
("464","0","0"),
("466","0","0"),
("467","0","0"),
("468","0","0"),
("469","0","0"),
("470","0","0"),
("471","0","0"),
("472","0","0"),
("473","0","0"),
("474","0","0"),
("475","0","0"),
("476","0","0"),
("477","0","0"),
("478","0","0"),
("479","0","0"),
("480","0","0"),
("481","0","0"),
("482","0","0"),
("483","0","0"),
("484","0","0"),
("485","0","0"),
("486","0","0"),
("487","0","0"),
("488","0","0"),
("489","0","0"),
("490","0","0"),
("491","0","0"),
("492","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("493","0","0"),
("494","0","0"),
("495","0","0"),
("496","0","0"),
("497","0","0"),
("498","0","0"),
("499","0","0"),
("500","0","0"),
("501","0","0"),
("502","0","0"),
("503","0","0"),
("504","0","0"),
("505","0","0"),
("506","0","0"),
("507","0","0"),
("508","0","0"),
("509","0","0"),
("510","0","0"),
("511","0","0"),
("512","0","0"),
("513","0","0"),
("514","0","0"),
("515","0","0"),
("516","0","0"),
("517","0","0"),
("518","0","0"),
("519","0","0"),
("520","0","0"),
("521","0","0"),
("522","0","0"),
("523","0","0"),
("524","0","0"),
("525","0","0"),
("526","0","0"),
("527","0","0"),
("528","0","0"),
("529","0","0"),
("530","0","0"),
("531","0","0"),
("532","0","0"),
("533","0","0"),
("534","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;