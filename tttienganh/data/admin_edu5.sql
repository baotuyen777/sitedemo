SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w34`
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
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_comments VALUES
("1","1","M???t ng?????i b??nh lu???n WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-03-16 03:19:13","2019-03-16 03:19:13","Xin ch??o, ????y l?? m???t b??nh lu???n\n????? b???t ?????u v???i qu???n tr??? b??nh lu???n, ch???nh s???a ho???c x??a b??nh lu???n, vui l??ng truy c???p v??o khu v???c B??nh lu???n trong trang qu???n tr???.\nAvatar c???a ng?????i b??nh lu???n s??? d???ng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `gdd_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/edu5\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1552895881,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960488,\"initial_activation_timestamp\":1552895892,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025916,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}");




CREATE TABLE `gdd_duplicator_pro_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/edu5","yes"),
("2","home","https://bizhostvn.com/w/edu5","yes"),
("3","blogname","edu5","yes"),
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
("21","default_pingback_flag","0","yes"),
("22","posts_per_page","10","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%category%/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","/danh-muc","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:2:{i:0;s:85:\"/home/tppone/domains/tppone.com/public_html/demo/edu5/wp-content/themes/edu/style.css\";i:1;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","edu","yes"),
("42","comment_whitelist","1","yes"),
("43","blacklist_keys","","no"),
("44","comment_registration","0","yes"),
("45","html_type","text/html","yes"),
("46","use_trackback","0","yes"),
("47","default_role","subscriber","yes"),
("48","db_version","44719","yes"),
("49","uploads_use_yearmonth_folders","1","yes"),
("50","upload_path","","yes"),
("51","blog_public","0","yes"),
("52","default_link_category","2","yes"),
("53","show_on_front","page","yes"),
("54","tag_base","/tag","yes"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:34:\"Danh m???c b??i vi???t - tin t???c\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
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
("94","gdd_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:4:{i:0;s:23:\"flatsome_recent_posts-2\";i:1;s:13:\"media_video-2\";i:2;s:13:\"media_video-3\";i:3;s:12:\"categories-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:3:{i:2;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:28:\"https://youtu.be/ZYnoR8dPLaw\";s:5:\"title\";s:32:\"Ph????ng ph??p h???c ti???ng anh\";s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";}i:3;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:28:\"https://youtu.be/WCvgNz2jI4g\";s:5:\"title\";s:33:\"B?? quy???t nghe n??i ti???ng anh\";s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1558023554;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558063154;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558063162;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558071131;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558083105;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558088535;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("143","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1552706374;}","no"),
("145","new_admin_email","webdemo@gmail.com","yes"),
("152","recently_activated","a:4:{s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557028340;s:23:\"wp-rocket/wp-rocket.php\";i:1557028106;s:30:\"db-prefix-change/db_prefix.php\";i:1557026692;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025923;}","yes"),
("153","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552706395;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("154","current_theme","Edu","yes"),
("155","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 16 Mar 2019 03:19:55 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552706409;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("156","theme_switched","","yes"),
("157","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:36:\"Tin t???c - s??? ki???n m???i nh???t\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("158","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("160","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("161","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("162","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("163","flatsome_wup_buyer","trannguyen886","yes"),
("164","allowedthemes","a:1:{s:3:\"edu\";b:1;}","no"),
("165","fl_has_child_theme","edu","yes"),
("167","theme_mods_edu","a:136:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:7:\"contact\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:6:\"search\";i:1;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:1:{i:0;s:3:\"nav\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:14:\"primary_mobile\";i:2;s:11:\"top_bar_nav\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 16 Mar 2019 03:20:11 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:3:\"600\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:600;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:2963:\"<style>\n.bottom-contact{display:none}\n.box_fixRight {\n    position: fixed;\n    top: 150px;\n    right: -140px;\n    width: auto;\n    transition: all 0.2s ease-in-out 0s;\n    z-index: 999;\n}\n.box_fixRight .box_content {\n    background: #fff;\n    padding: 10px;\n    box-shadow: 10px 0px 30px #0000008c;\n    border-radius: 10px 0 0 10px;\n}\n.box_fixRight .box_content .item {\n    display: block;\n    padding: 13px 10px 13px 47px;\n    color: #111;\n}\n.box_fixRight .box_content .item:hover{color:#184b9b}\n.box_fixRight .box_content .item.item_1 {\n    background: url(/wp-content/uploads/2019/03/iconfix-1.png) no-repeat left;\n}\n.box_fixRight .box_content .item.item_2 {\n    background: url(/wp-content/uploads/2019/03/iconfix-2.png) no-repeat left;\n}\n.box_fixRight .box_content .item.item_3 {\n    background: url(/wp-content/uploads/2019/03/iconfix-3.png) no-repeat left;\n}\n.box_fixRight:hover {\n    right: 0;\n    transition: all 0.2s ease-in-out 0s;\n}\n@media (max-width: 549px){\n.bottom-contact{display: block;\n    position: fixed;\n    bottom: 0;\n    background: white;\n    width: 100%;\n    z-index: 99;\n    box-shadow: 2px 1px 9px #dedede;\n    border-top: 1px solid #eaeaea;}\n.bottom-contact ul li{width: 25%;\n    float: left;\n    list-style: none;\n    text-align: center; font-size:13.5px;}\n.bottom-contact ul li span{color:black}\n.bottom-contact ul li img{    width: 35px;\n    margin-top: 10px;\n    margin-bottom: 0px;}\n.box_fixRight{display:none}\n \n}\n\n</style>\n<div class=\"box_fixRight\">\n<div class=\"box_content\">\n<a href=\"/khoa-hoc/\" class=\"item item_1\">L???ch khai gi???ng</a>\n<a href=\"/lien-he/\" class=\"item item_2\">Li??n h???</a>\n<a href=\"#dang-ky\" class=\"item item_3\">????ng k?? h???c th???</a>\n</div>\n</div>\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n <SCRIPT LANGUAGE = \"Javascript\">\n$(document).ready(function() {\n  $(\"a[href*=\'#\']:not([href=\'#])\").click(function() {\n    let target = $(this).attr(\"href\");\n    $(\'html,body\').stop().animate({\n      scrollTop: $(target).offset().top\n    }, 1000);\n    event.preventDefault();\n  });\n});</SCRIPT>\n\n<div class=\"bottom-contact\">\n<ul>\n<li>\n<a id=\"goidien\" href=\"tel:0972939830\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-phone2.png\"/>\n<br>\n<span>G???i ??i???n</span>\n</a>\n</li>\n<li>\n<a id=\"nhantin\" href=\"sms:0972939830\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-sms2.png\"/>\n<br>\n<span>Nh???n tin</span>\n</a>\n</li>\n<li>\n<a id=\"chatzalo\" href=\"http://zaloapp.com/qr/p/3ur778onb9ak\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-zalo2.png\"/>\n<br>\n<span>Chat zalo</span>\n</a>\n</li>\n<li>\n<a id=\"chatfb\" href=\"https://www.messenger.com/t/demo\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-mesenger2.png\"/>\n<br>\n<span>Chat Facebook</span>\n</a>\n</li>\n</ul>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:8464:\".header-top {\n    border-bottom: 1px solid #f2f2f2;\n}\n.header-contact li a span, .top-bar-nav li a{text-transform: none;\n    font-size: 15px;\n    color: #6c6c6c;\n    letter-spacing: 0;}\n.header-contact li a span, .top-bar-nav li a:hover{color:#1176b9}\n.gioi-thieu .icon-box .icon-box-img img{border:2px solid white; border-radius:99%}\n.header-nav li a{color:black}\n.header-nav li a:hover, .header-nav li.active>a{color:#119bf7}\n.header-main {\n    box-shadow: 1px 0px 20px #0000001f;\n}.section-title-container {\n    margin-bottom: 0;\n}\n.gioi-thieu .icon-box:hover{background:#119bf7; padding:15px 10px; border-radius:10px; color:white}\n.gioi-thieu .icon-box:hover h3{color:white}\n.gioi-thieu .icon-box h3{color:\n#f80002}\n.gioi-thieu .button span, .mo-hinh-hoc .row-mo-hinh-hoc .button span{    padding: 11px 20px;\n    font-weight: normal;\n    text-transform: uppercase;}\n\n.gioi-thieu .icon-box{background:white; padding:15px 10px; border-radius:10px; }\n.mo-hinh-hoc{background: url(/wp-content/uploads/2019/03/bg-2.jpg); background-repeat:no-repeat}\n.button span {\n    font-weight: normal;\n	font-size: 14px;}\n.mo-hinh-hoc .row-mo-hinh-hoc h3.tieu-de:after{content: \"\";\n    position: absolute;\n    bottom: -8px;\n    left: 0;\n    width: 90px;\n    height: 3px;\n    background-color: #db2428;}\n.mo-hinh-hoc .row-mo-hinh-hoc h3.tieu-de{font-size:25px; color:black;}\n.mo-hinh-hoc .item {\n    border: 3px solid #1b5393;\n    border-radius: 5px;\n    background-color: #FFF;\n    overflow: hidden;\n    margin-bottom: 20px;\n    min-height: 180px;\n    display: table;\n    cursor: pointer;\n    transition: all 0.15s ease-in-out 0s;\n}.mo-hinh-hoc .item .item_content {\n    display: table-cell;\n    vertical-align: middle;\n}.mo-hinh-hoc .item .item_info {\n    margin: 0px 20px;\n    padding: 0 0 0 20px;\n    border-left: 2px solid #db2428;\n}.mo-hinh-hoc .item .title {    font-family: \"barlow\", sans-serif;\n    text-transform: uppercase;\n    color: #db2428;\n    font-size: 22px;\n    font-weight: 700;\n    margin-bottom: 5px;\n    padding-left: 70px;\n    height: 36px;\n    line-height: 36px;\n}.mo-hinh-hoc .item .desc {\n    color: #111;\n    font-size: 14px;\n}.mo-hinh-hoc .item.item_1 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-1-1.png) no-repeat 0 0;\n}.mo-hinh-hoc .item:hover {\n    background-color: #119bf7;\n    transition: all 0.15s ease-in-out 0s;\n}\n.mo-hinh-hoc .item.item_2 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-2.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .item.item_3 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-3.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .item.item_5 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-5.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .row-mo-hinh-hoc .col{    padding-bottom: 10px;}\n.mo-hinh-hoc .item:hover>.item_content .item_info .desc{color:white}\n.mo-hinh-hoc .item.item_4 .title {\n    background: url(/wp-content/uploads/2019/03/4ce-4.png) no-repeat 0 0;\n}\n.mo-hinh-hoc .item:hover>.item_content .item_info{border-left-color:white}\n.mo-hinh-hoc .item_2:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-2.png) no-repeat; background-position-y: bottom;}\n.item:hover>.item_content .item_info .title{color:white}\n.mo-hinh-hoc .item_1:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-1-1.png) no-repeat; background-position-y: bottom;}\n.mo-hinh-hoc .item_3:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-3.png) no-repeat; background-position-y: bottom;}\n.mo-hinh-hoc .item_4:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-4.png) no-repeat; background-position-y: bottom;}\n.mo-hinh-hoc .item_5:hover>.item_content .item_info .title{background: url(/wp-content/uploads/2019/03/4ce-5.png) no-repeat; background-position-y: bottom;}\n.cam-nhan .large-12{padding-bottom:10px}\n.giang-vien .box.box-bounce:hover{border:2px solid #119bf7}\n.giang-vien .box.box-bounce{background: white;\n    padding-top: 20px;\n    border-radius: 10px;    border: 2px solid #f0f0f0;}\n.su-kien .post-item .box-image .image-cover{border-radius:7px}\n.su-kien .post-item .post-title{color:#154a98}\n.section-title a {\n    font-size: 15px;\n \n    font-weight: normal;\n}\n.su-kien .post-item .post-title:hover{color:#ed2a3b}\n.su-kien .col{padding-bottom:0}\n.form-lien-he {text-align:center; display:inline-block; width:75%}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea{border-radius:4px; box-shadow:none}\n.form-lien-he .left{width:50%; float:left; padding-right:10px; display:inline-block}\n.form-lien-he .right{width:50%; float:right; text-align:left; padding-left:10px; display:inline-block}\n.dang-ky-hoc .col{padding-bottom:0}\ninput[type=\'submit\']{margin:0; border-radius:4px; font-weight:normal}\n.footer-section1 .section-title-normal {\n    border-bottom: 2px solid #111e37;\n}\n.page-right-sidebar .form-lien-he{width:100%; }\n.footer-section1 .form-lien-he{width:100%; margin-top:20px}\n.absolute-footer.dark {\n    font-size: 13px;\n}\n.blog-single .entry-header-text {\n    padding: 0;\n}\n.blog-single .entry-category, .blog-single .is-divider{display:none}\n.footer-section2{    border-top: 1px solid #111e37;}\n.footer-section1 .col, .footer-section2 .col{padding-bottom:0}\n.page-right-sidebar, .blog-single, .blog-archive {background:url(/wp-content/uploads/2019/03/bg.png); padding-top: 0px;\n    padding-bottom: 10px;}\n.blog-archive .post-item .post-title:hover{color:red}\n.blog-archive .post-item .post-title{font-size: 20px;\n        color: #164899;}\n.blog-archive .large-9 .badge .badge-inner {font-weight:normal; border-radius:99%}\n.blog-archive .post-item .col-inner:hover{box-shadow:0px 0px 20px #d4d4d4}\n.cam-nhan-2 .col{padding-bottom:0}\n.blog-archive .post-item{    padding-bottom: 20px;}\n.blog-archive .large-9 .badge{margin:10px}\n.blog-archive .post-item .col-inner{background:white; border-radius:4px}\n.page-right-sidebar .large-9, .blog-single .large-9, .blog-archive .large-9{padding-right:20px; border-right:0 !important}\n.blog-archive{padding-top:0}\n.page-right-sidebar .large-3, .blog-single .large-3, .blog-archive .large-3{border-left:0 !important; padding-left:0px; padding-top:48px }\n.page-right-sidebar .gallery-col  .gallery-box .box-text{display:none; padding-bottom:0; padding-top:0}\n#breadcrumbs{ padding-top:10px; margin-bottom:15px;    text-transform: none;\n    font-weight: normal;\n    font-size: 15px;}\n.blog-single .entry-meta .danh-muc{margin-bottom:7px}\n.blog-single .entry-meta .the-tim-kiem a{background: #f1f0f6;\n    padding: 4px 10px;\n    color: #626262;}\n.page-right-sidebar .page-inner, .blog-single .article-inner{margin-bottom:20px; font-size:16px; background: white;\n    padding: 20px;\n    border-radius: 4px;}\nh1.entry-title.mb {\n    margin-bottom: 10px;\n    text-transform: none;\n    letter-spacing: 0;\n    font-size: 20px;\n    color: #1a4b95;\n}\nspan.widget-title{border: 1px solid #ececec; background: #119bf7;\n    padding: 15px;\n    color: white;\n \n    font-family: \"barlow\", sans-serif;\n    letter-spacing: 0;\n    display: block;\n    font-size: 17px;\n    text-align: center;\n    font-weight: bold;}\n.widget .is-divider{display:none}\n.flatsome_recent_posts ul, .widget_categories ul{    border: 1px solid #ececec;\n    background: white;}\n.flatsome_recent_posts .badge-inner{border-radius:99%}\n.recent-blog-posts a, .widget_categories ul li a{color: #1d498f;\n    text-transform: none;\n    font-size: 14px;}\n.recent-blog-posts a:hover, .widget_categories ul li a:hover{color:#119bf7}\n.widget_categories ul li{font-size:13px}\n.flatsome_recent_posts ul li, .widget_categories ul li{padding:0 10px}\n\n.fb-comments{background:white; padding:10px}\n.fb_iframe_widget_fluid_desktop iframe{width:100%}\n.fb-comments, .fb-comments span, .fb-comments span iframe{\nwidth:100% !important;\ndisplay:inline-block !important;\nmax-width:100% !important\n}\n.blog-single .blog-share{text-align:left}\n.blog-single .entry-content {\n    padding-top: 1.5em;\n    padding-bottom: 0;\n}\n.avatar-page img{background-size: cover;\nwidth: 100%;}\n.avatar-page{text-align:center}\nfooter.entry-meta{font-size:15px}\n.blog-single .entry-meta .the-tim-kiem a:hover{background:#119bf7; color:white}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:745:\".header-top{display:none}\n.off-canvas-left.dark .mfp-content{background-color: rgb(2, 103, 170);}\n.gioi-thieu .medium-3, .giang-vien .medium-3{flex-basis:50%; max-width:50%; padding:0}\n.gioi-thieu .large-12{padding-bottom:0}.mo-hinh-hoc .item{margin-bottom:10px}\n.form-lien-he{width:100%}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea{font-size:14px}\n.giang-vien .box.box-bounce .box-text p{font-size:12px}\n.giang-vien .box-bounce .box-text {	padding: 10px}\n.su-kien .post-item .post-title{font-size:18px}\n.page-right-sidebar .large-3, .blog-single .large-3, .blog-archive .large-3{padding-left:15px}\n.blog-archive .post-item .box-text{padding:10px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:11:\"preset_demo\";s:14:\"header-default\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"249\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#ffffff\";s:13:\"nav_style_top\";s:0:\"\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:5:\"large\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"55\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:13:\"contact_phone\";s:0:\"\";s:13:\"contact_email\";s:17:\"webdemo@gmail.com\";s:19:\"contact_email_label\";s:17:\"webdemo@gmail.com\";s:13:\"contact_hours\";s:0:\"\";s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:13:\"color_primary\";s:7:\"#119bf7\";s:15:\"color_secondary\";s:7:\"#0267aa\";s:11:\"color_texts\";s:7:\"#353535\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#119bf7\";s:17:\"color_links_hover\";s:7:\"#025287\";s:18:\"color_widget_links\";s:7:\"#119bf7\";s:9:\"site_logo\";s:64:\"https://bizhostvn.com/w/edu5/wp-content/uploads/2019/05/edu5.jpg\";s:12:\"logo_padding\";s:1:\"2\";s:14:\"header_divider\";b:0;s:11:\"nav_spacing\";s:5:\"large\";s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:19:\"blog_excerpt_suffix\";s:3:\"...\";s:12:\"footer_block\";s:14:\"footer-section\";s:19:\"footer_bottom_align\";s:6:\"center\";s:16:\"footer_left_text\";s:169:\"Copyright [ux_current_year] ?? <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | Thi???t k??? b???i <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a>\";s:19:\"footer_bottom_color\";s:7:\"#040a1e\";s:14:\"pages_template\";s:13:\"right-sidebar\";s:13:\"default_title\";b:1;s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:26:\"blog_single_featured_image\";b:0;s:10:\"blog_share\";b:1;s:23:\"blog_single_footer_meta\";b:1;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:18:\"blog_archive_title\";b:0;s:20:\"header_height_sticky\";s:2:\"51\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:1:\"6\";s:13:\"header_sticky\";b:1;s:16:\"bottombar_sticky\";b:0;s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#0267aa\";s:18:\"wpseo_primary_term\";s:1:\"0\";s:16:\"wpseo_breadcrumb\";s:1:\"0\";s:28:\"wpseo_breadcrumb_remove_last\";s:1:\"1\";}","yes"),
("169","envato_setup_complete","1552706415","yes"),
("177","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("205","category_children","a:0:{}","yes"),
("215","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1552840770;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("223","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1552818133;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("224","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"L???i 404: kh??ng x??c ?????nh\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"L??u tr??? cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang ch???\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"T??m ki???m v???i\";s:15:\"breadcrumbs-sep\";s:2:\"??\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("225","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("226","wpseo_flush_rewrite","1","yes"),
("227","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("233","wpseo_current_version","16","no"),
("234","wpseo_premium_version","8.4","yes"),
("239","wpseo_tracking_last_request","1556963517","yes"),
("246","wpseo_sitemap_cache_validator_global","46QtA","no"),
("250","wpseo_sitemap_1_cache_validator","3mdR9","no"),
("251","wpseo_sitemap_attachment_cache_validator","35oi6","no"),
("252","wpseo_sitemap_customize_changeset_cache_validator","4t1Al","no"),
("257","wpseo_sitemap_page_cache_validator","4sOVT","no"),
("259","wpseo_sitemap_post_cache_validator","3mdRf","no"),
("260","wpseo_sitemap_category_cache_validator","3NcEE","no"),
("261","wpseo_sitemap_post_tag_cache_validator","3NcEG","no"),
("280","wpseo_sitemap_wpcf7_contact_form_cache_validator","iSkM","no"),
("295","rewrite_rules","a:117:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:36:\"yst_prominent_words/([^/]+)/embed/?$\";s:52:\"index.php?yst_prominent_words=$matches[1]&embed=true\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}","yes"),
("303","wpseo_sitemap_oembed_cache_cache_validator","4fMPq","no"),
("312","wpseo_license_server_version","2","yes"),
("373","wpseo_sitemap_blocks_cache_validator","4LNSQ","no"),
("432","duplicator_pro_package_active","{\"Created\":\"2019-03-18 07:58:20\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.10\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190318_mauwebsitetraihetienganht\",\"Hash\":\"661421fd69b8b6808253_20190318075820\",\"NameHash\":\"20190318_mauwebsitetraihetienganht_661421fd69b8b6808253_20190318075820\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190318_mauwebsitetraihetienganht_661421fd69b8b6808253_20190318075820_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\",\"Size\":90432434,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/edu5\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web04\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":1300,\"tablesSizeOnDisk\":5095424,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("434","_transient_timeout_wpseo_link_table_inaccessible","1588496489","no"),
("435","_transient_wpseo_link_table_inaccessible","0","no"),
("436","_transient_timeout_wpseo_meta_table_inaccessible","1588496489","no"),
("437","_transient_wpseo_meta_table_inaccessible","0","no"),
("472","db_upgraded","","yes"),
("482","can_compress_scripts","0","no"),
("486","dbprefix_old_dbprefix","ed_","yes"),
("487","dbprefix_new","gdd_","yes"),
("536","recovery_keys","a:0:{}","yes"),
("623","_site_transient_timeout_theme_roots","1558021429","no"),
("624","_site_transient_theme_roots","a:2:{s:3:\"edu\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("626","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558021156;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("627","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558019639;s:7:\"checked\";a:2:{s:3:\"edu\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("628","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558021153;s:7:\"checked\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("33","19","_wp_attached_file","2019/03/123445-01.jpg"),
("34","19","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1962;s:6:\"height\";i:665;s:4:\"file\";s:21:\"2019/03/123445-01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"123445-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"123445-01-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"123445-01-768x260.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"123445-01-1024x347.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("37","21","_wp_attached_file","2019/03/cropped-123445-01.jpg"),
("38","21","_wp_attachment_context","site-icon"),
("39","21","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/03/cropped-123445-01.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-123445-01-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-123445-01-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("46","25","_edit_last","1"),
("47","25","_footer","normal"),
("48","25","_wp_page_template","page-right-sidebar.php"),
("49","25","_edit_lock","1552818428:1"),
("50","27","_edit_last","1"),
("51","27","_footer","normal"),
("52","27","_wp_page_template","page-right-sidebar.php"),
("53","27","_edit_lock","1552821129:1"),
("54","29","_edit_last","1"),
("55","29","_footer","normal"),
("56","29","_wp_page_template","page-blank.php"),
("57","29","_edit_lock","1552823661:1"),
("58","31","_edit_last","1"),
("59","31","_footer","normal"),
("60","31","_wp_page_template","page-right-sidebar.php"),
("61","31","_edit_lock","1552825579:1"),
("62","33","_edit_last","1"),
("63","33","_footer","normal"),
("64","33","_wp_page_template","page-right-sidebar.php"),
("65","33","_edit_lock","1552825683:1"),
("66","35","_edit_last","1"),
("67","35","_footer","normal"),
("68","35","_wp_page_template","page-right-sidebar.php"),
("69","35","_edit_lock","1552826105:1"),
("70","37","_edit_last","1"),
("71","37","_footer","normal"),
("72","37","_wp_page_template","page-blank.php"),
("73","37","_edit_lock","1552826516:1"),
("74","39","_edit_last","1"),
("75","39","_footer","normal"),
("76","39","_wp_page_template","page-right-sidebar.php"),
("77","39","_edit_lock","1552821367:1"),
("78","41","_edit_last","1"),
("79","41","_footer","normal"),
("80","41","_wp_page_template","page-right-sidebar.php"),
("81","41","_edit_lock","1552821478:1"),
("82","2","_edit_lock","1552825571:1"),
("83","2","_edit_last","1"),
("84","2","_footer","normal"),
("103","46","_menu_item_type","post_type"),
("104","46","_menu_item_menu_item_parent","0"),
("105","46","_menu_item_object_id","37"),
("106","46","_menu_item_object","page"),
("107","46","_menu_item_target",""),
("108","46","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("109","46","_menu_item_xfn",""),
("110","46","_menu_item_url",""),
("112","47","_menu_item_type","post_type"),
("113","47","_menu_item_menu_item_parent","0"),
("114","47","_menu_item_object_id","35"),
("115","47","_menu_item_object","page"),
("116","47","_menu_item_target",""),
("117","47","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("118","47","_menu_item_xfn",""),
("119","47","_menu_item_url",""),
("121","48","_menu_item_type","post_type"),
("122","48","_menu_item_menu_item_parent","0"),
("123","48","_menu_item_object_id","33"),
("124","48","_menu_item_object","page"),
("125","48","_menu_item_target",""),
("126","48","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("127","48","_menu_item_xfn",""),
("128","48","_menu_item_url",""),
("130","49","_menu_item_type","post_type"),
("131","49","_menu_item_menu_item_parent","0"),
("132","49","_menu_item_object_id","31"),
("133","49","_menu_item_object","page"),
("134","49","_menu_item_target",""),
("135","49","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("136","49","_menu_item_xfn",""),
("137","49","_menu_item_url",""),
("139","50","_menu_item_type","post_type"),
("140","50","_menu_item_menu_item_parent","0"),
("141","50","_menu_item_object_id","29"),
("142","50","_menu_item_object","page"),
("143","50","_menu_item_target",""),
("144","50","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("145","50","_menu_item_xfn",""),
("146","50","_menu_item_url",""),
("166","53","_menu_item_type","post_type"),
("167","53","_menu_item_menu_item_parent","0"),
("168","53","_menu_item_object_id","2"),
("169","53","_menu_item_object","page"),
("170","53","_menu_item_target",""),
("171","53","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("172","53","_menu_item_xfn",""),
("173","53","_menu_item_url",""),
("183","58","_menu_item_type","post_type"),
("184","58","_menu_item_menu_item_parent","0"),
("185","58","_menu_item_object_id","41"),
("186","58","_menu_item_object","page"),
("187","58","_menu_item_target",""),
("188","58","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO gdd_postmeta VALUES
("189","58","_menu_item_xfn",""),
("190","58","_menu_item_url",""),
("192","59","_menu_item_type","post_type"),
("193","59","_menu_item_menu_item_parent","0"),
("194","59","_menu_item_object_id","27"),
("195","59","_menu_item_object","page"),
("196","59","_menu_item_target",""),
("197","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("198","59","_menu_item_xfn",""),
("199","59","_menu_item_url",""),
("201","60","_menu_item_type","post_type"),
("202","60","_menu_item_menu_item_parent","0"),
("203","60","_menu_item_object_id","25"),
("204","60","_menu_item_object","page"),
("205","60","_menu_item_target",""),
("206","60","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("207","60","_menu_item_xfn",""),
("208","60","_menu_item_url",""),
("232","2","_thumbnail_id",""),
("233","74","_wp_attached_file","2019/03/slider02.jpg"),
("234","74","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:569;s:4:\"file\";s:20:\"2019/03/slider02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider02-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider02-768x228.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider02-1024x303.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("237","77","_wp_attached_file","2019/03/slider03.jpg"),
("238","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:569;s:4:\"file\";s:20:\"2019/03/slider03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider03-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider03-768x228.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider03-1024x303.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("241","87","_wp_attached_file","2019/03/icon1.png"),
("242","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon1-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("243","88","_wp_attached_file","2019/03/icon2.png"),
("244","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon2-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("245","89","_wp_attached_file","2019/03/icon3.png"),
("246","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon3-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("247","90","_wp_attached_file","2019/03/icon4.png"),
("248","90","_wp_attachment_metadata","a:5:{s:5:\"width\";i:150;s:6:\"height\";i:149;s:4:\"file\";s:17:\"2019/03/icon4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon4-150x149.png\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("287","2","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("288","2","_oembed_time_97120786a5d618011442f73be26e093f","1552809427"),
("289","2","_oembed_f581454e02fadf689573da144df9ba4b","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/XYU4zkUP7Cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("290","2","_oembed_time_f581454e02fadf689573da144df9ba4b","1552809428"),
("291","121","_wp_attached_file","2019/03/bg-2.jpg"),
("292","121","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:401;s:4:\"file\";s:16:\"2019/03/bg-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg-2-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-2-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-2-1024x214.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("293","121","_edit_lock","1552809376:1"),
("314","148","_wp_attached_file","2019/03/4ce-1-1.png"),
("315","148","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:72;s:4:\"file\";s:19:\"2019/03/4ce-1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("316","148","_edit_lock","1552810686:1"),
("327","154","_wp_attached_file","2019/03/4ce-2.png"),
("328","154","_wp_attachment_metadata","a:5:{s:5:\"width\";i:60;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("329","154","_edit_lock","1552810875:1"),
("331","156","_wp_attached_file","2019/03/4ce-3.png"),
("332","156","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("333","156","_edit_lock","1552810927:1"),
("337","158","_wp_attached_file","2019/03/4ce-5.png"),
("338","158","_wp_attachment_metadata","a:5:{s:5:\"width\";i:39;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("339","158","_edit_lock","1552810927:1"),
("352","166","_wp_attached_file","2019/03/4ce-4.png"),
("353","166","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:72;s:4:\"file\";s:17:\"2019/03/4ce-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("354","166","_edit_lock","1552811265:1"),
("394","2","_oembed_24c976c5f70342643104b2a90132a542","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("395","2","_oembed_time_24c976c5f70342643104b2a90132a542","1552812376"),
("396","2","_oembed_2c11178e3dd97a3223c0d52dfad0f032","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("397","2","_oembed_time_2c11178e3dd97a3223c0d52dfad0f032","1552812395"),
("398","2","_oembed_2330698939e0f9f99f0379d674fd8ac6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("399","2","_oembed_time_2330698939e0f9f99f0379d674fd8ac6","1552812408"),
("400","2","_oembed_e033a564b4086ebbccb671b8e50aaa14","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/UqnGvBrlyB4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("401","2","_oembed_time_e033a564b4086ebbccb671b8e50aaa14","1552812552"),
("402","2","_oembed_fc442f25a7d52e6f596a212e4b93d035","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/t5gZ9DJu42c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("403","2","_oembed_time_fc442f25a7d52e6f596a212e4b93d035","1552812566"),
("406","201","_wp_attached_file","2019/03/giangvien-bg.jpg"),
("407","201","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:689;s:4:\"file\";s:24:\"2019/03/giangvien-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"giangvien-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"giangvien-bg-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"giangvien-bg-768x276.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"giangvien-bg-1024x367.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("410","207","_wp_attached_file","2019/03/pic1.jpg"),
("411","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:200;s:6:\"height\";i:236;s:4:\"file\";s:16:\"2019/03/pic1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("419","216","_wp_attached_file","2019/03/giangvien-3.jpg"),
("420","216","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:330;s:4:\"file\";s:23:\"2019/03/giangvien-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"giangvien-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"giangvien-3-255x300.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("421","218","_wp_attached_file","2019/03/giangvien-5.jpg"),
("422","218","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:330;s:4:\"file\";s:23:\"2019/03/giangvien-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"giangvien-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"giangvien-5-255x300.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("423","222","_wp_attached_file","2019/03/giangvien-13.jpg"),
("424","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:280;s:6:\"height\";i:330;s:4:\"file\";s:24:\"2019/03/giangvien-13.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"giangvien-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"giangvien-13-255x300.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("425","225","_edit_last","1"),
("426","225","_edit_lock","1552819286:1"),
("427","226","_wp_attached_file","2019/03/DSC-3797-compressed.jpg"),
("428","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:31:\"2019/03/DSC-3797-compressed.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"DSC-3797-compressed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"DSC-3797-compressed-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("429","225","_thumbnail_id","226"),
("431","228","_edit_last","1"),
("432","228","_edit_lock","1552819238:1"),
("433","229","_wp_attached_file","2019/03/DSC-2759.jpg"),
("434","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:20:\"2019/03/DSC-2759.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC-2759-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC-2759-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1545767830\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"20\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("435","228","_thumbnail_id","229"),
("437","231","_edit_last","1"),
("438","231","_edit_lock","1552819215:1"),
("439","232","_wp_attached_file","2019/03/Bell_Cambridge_Classroom-copia-2.jpg"),
("440","232","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:300;s:4:\"file\";s:44:\"2019/03/Bell_Cambridge_Classroom-copia-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Bell_Cambridge_Classroom-copia-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Bell_Cambridge_Classroom-copia-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:9:\"JASONDODD\";s:6:\"camera\";s:20:\"Canon EOS-1D Mark IV\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1342519511\";s:9:\"copyright\";s:20:\"JASONDODDPHOTOGRAPHY\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("441","231","_thumbnail_id","232"),
("443","234","_edit_last","1"),
("444","234","_edit_lock","1552819181:1"),
("445","235","_wp_attached_file","2019/03/IMG-7949.jpg"),
("446","235","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:253;s:4:\"file\";s:20:\"2019/03/IMG-7949.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG-7949-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG-7949-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("447","234","_thumbnail_id","235"),
("449","237","_edit_last","1"),
("450","237","_edit_lock","1552819152:1"),
("451","238","_wp_attached_file","2019/03/5-SN-Lang-2018.jpg"),
("452","238","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1043;s:6:\"height\";i:696;s:4:\"file\";s:26:\"2019/03/5-SN-Lang-2018.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"5-SN-Lang-2018-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"5-SN-Lang-2018-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"5-SN-Lang-2018-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"5-SN-Lang-2018-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("453","237","_thumbnail_id","238"),
("455","240","_edit_last","1"),
("456","240","_edit_lock","1552818930:1");
INSERT INTO gdd_postmeta VALUES
("457","241","_wp_attached_file","2019/03/IMG-1403.jpg"),
("458","241","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:299;s:4:\"file\";s:20:\"2019/03/IMG-1403.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG-1403-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG-1403-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("459","240","_thumbnail_id","241"),
("482","268","_wp_attached_file","2019/03/doitac-1.png"),
("483","268","_wp_attachment_metadata","a:5:{s:5:\"width\";i:143;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2019/03/doitac-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("484","269","_wp_attached_file","2019/03/doitac-2.png"),
("485","269","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2019/03/doitac-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("486","270","_wp_attached_file","2019/03/doitac-8.png"),
("487","270","_wp_attachment_metadata","a:5:{s:5:\"width\";i:58;s:6:\"height\";i:60;s:4:\"file\";s:20:\"2019/03/doitac-8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("488","271","_wp_attached_file","2019/03/doitac-4.png"),
("489","271","_wp_attachment_metadata","a:5:{s:5:\"width\";i:158;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2019/03/doitac-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-4-150x52.png\";s:5:\"width\";i:150;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("490","272","_wp_attached_file","2019/03/doitac-5.png"),
("491","272","_wp_attachment_metadata","a:5:{s:5:\"width\";i:96;s:6:\"height\";i:56;s:4:\"file\";s:20:\"2019/03/doitac-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("492","274","_wp_attached_file","2019/03/doitac-6.png"),
("493","274","_wp_attachment_metadata","a:5:{s:5:\"width\";i:172;s:6:\"height\";i:61;s:4:\"file\";s:20:\"2019/03/doitac-6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-6-150x61.png\";s:5:\"width\";i:150;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("494","275","_wp_attached_file","2019/03/doitac-7.png"),
("495","275","_wp_attachment_metadata","a:5:{s:5:\"width\";i:162;s:6:\"height\";i:55;s:4:\"file\";s:20:\"2019/03/doitac-7.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-7-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("496","276","_wp_attached_file","2019/03/doitac-3.png"),
("497","276","_wp_attachment_metadata","a:5:{s:5:\"width\";i:219;s:6:\"height\";i:56;s:4:\"file\";s:20:\"2019/03/doitac-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doitac-3-150x56.png\";s:5:\"width\";i:150;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("498","279","_wp_attached_file","2019/03/bg3.jpg"),
("499","279","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:401;s:4:\"file\";s:15:\"2019/03/bg3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg3-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg3-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg3-1024x214.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("500","284","_form","<div class=\"form-lien-he\">\n<div class=\"left\">\n[text text-502 placeholder \"H??? t??n c???a b???n...\"]\n[tel tel-862 placeholder \"S??? ??i???n tho???i c???a b???n...\"]\n[text text-5356 placeholder \"?????a ch??? c???a ban...\"]\n</div>\n<div class=\"right\">\n[text text-504 placeholder \"H??? t??n ng?????i tham d???...\"]\n[text text-534 placeholder \"S??? ng?????i ????ng k?? tham d???...\"]\n[text text-55432434 placeholder \"Ghi ch?? th??m...\"]\n</div>\n[submit \"????ng k?? h???c th???\"]\n</div>"),
("501","284","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:71:\"M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com\";s:6:\"sender\";s:28:\"<wordpress@edu5.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:394:\"- H??? t??n ng?????i li??n h???: [text-502]\n- H??? t??n ng?????i tham gia: [text-504]\n- ?????a ch???: [text-5356]\n- S??? ??i???n tho???i: [tel-862]\n- S??? ng?????i tham gia: [text-534]\n- Ghi ch?? th??m: [text-55432434]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/edu5)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("502","284","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:88:\"M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:100:\"M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com <wordpress@edu5.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:217:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/edu5)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("503","284","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("504","284","_additional_settings",""),
("505","284","_locale","vi"),
("531","301","_edit_last","1"),
("532","301","_edit_lock","1552816794:1"),
("534","309","_wp_attached_file","2019/03/logo-3.png"),
("535","309","_wp_attachment_metadata","a:5:{s:5:\"width\";i:80;s:6:\"height\";i:49;s:4:\"file\";s:18:\"2019/03/logo-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("551","301","_thumbnail_id",""),
("559","337","_wp_attached_file","2019/03/LOGO.jpg"),
("560","337","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:71;s:4:\"file\";s:16:\"2019/03/LOGO.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"LOGO-150x71.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"LOGO-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("563","339","_menu_item_type","post_type"),
("564","339","_menu_item_menu_item_parent","0"),
("565","339","_menu_item_object_id","39"),
("566","339","_menu_item_object","page"),
("567","339","_menu_item_target",""),
("568","339","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("569","339","_menu_item_xfn",""),
("570","339","_menu_item_url",""),
("576","342","_wp_attached_file","2019/03/bg.png"),
("577","342","_wp_attachment_metadata","a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:14:\"2019/03/bg.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("579","342","_edit_lock","1552818161:1"),
("591","25","_yoast_wpseo_content_score","30"),
("592","25","_yoast_wpseo_focuskeywords",""),
("593","25","_yoast_wpseo_keywordsynonyms",""),
("624","240","_yoast_wpseo_content_score","30"),
("625","240","_yoast_wpseo_focuskeywords",""),
("626","240","_yoast_wpseo_keywordsynonyms",""),
("627","240","_yoast_wpseo_primary_category",""),
("639","237","_yoast_wpseo_content_score","30"),
("640","237","_yoast_wpseo_focuskeywords",""),
("641","237","_yoast_wpseo_keywordsynonyms",""),
("642","237","_yoast_wpseo_primary_category",""),
("644","234","_yoast_wpseo_content_score","30"),
("645","234","_yoast_wpseo_focuskeywords",""),
("646","234","_yoast_wpseo_keywordsynonyms",""),
("647","234","_yoast_wpseo_primary_category",""),
("649","231","_yoast_wpseo_content_score","30"),
("650","231","_yoast_wpseo_focuskeywords",""),
("651","231","_yoast_wpseo_keywordsynonyms",""),
("652","231","_yoast_wpseo_primary_category",""),
("654","228","_yoast_wpseo_content_score","30"),
("655","228","_yoast_wpseo_focuskeywords",""),
("656","228","_yoast_wpseo_keywordsynonyms",""),
("657","228","_yoast_wpseo_primary_category",""),
("659","225","_yoast_wpseo_content_score","30"),
("660","225","_yoast_wpseo_focuskeywords",""),
("661","225","_yoast_wpseo_keywordsynonyms",""),
("662","225","_yoast_wpseo_primary_category",""),
("680","27","_yoast_wpseo_content_score","60"),
("681","27","_yoast_wpseo_focuskeywords",""),
("682","27","_yoast_wpseo_keywordsynonyms",""),
("684","27","_thumbnail_id",""),
("687","39","_yoast_wpseo_content_score","30"),
("688","39","_yoast_wpseo_focuskeywords",""),
("689","39","_yoast_wpseo_keywordsynonyms",""),
("692","41","_yoast_wpseo_content_score","30"),
("693","41","_yoast_wpseo_focuskeywords",""),
("694","41","_yoast_wpseo_keywordsynonyms",""),
("707","41","_thumbnail_id",""),
("755","424","_wp_attached_file","2019/03/bg_cover.jpg"),
("756","424","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1583;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2019/03/bg_cover.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg_cover-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg_cover-300x38.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:38;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg_cover-768x97.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bg_cover-1024x129.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("757","424","_edit_lock","1552822872:1"),
("796","29","_yoast_wpseo_content_score","30"),
("797","29","_yoast_wpseo_focuskeywords",""),
("798","29","_yoast_wpseo_keywordsynonyms",""),
("799","444","_wp_attached_file","2019/03/phuong-phap-hoc-tieng-anh.jpg"),
("800","444","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:569;s:4:\"file\";s:37:\"2019/03/phuong-phap-hoc-tieng-anh.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"phuong-phap-hoc-tieng-anh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"phuong-phap-hoc-tieng-anh-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"phuong-phap-hoc-tieng-anh-768x228.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"phuong-phap-hoc-tieng-anh-1024x303.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("801","29","_thumbnail_id",""),
("802","450","_wp_attached_file","2019/03/ketqua-1.jpg"),
("803","450","_wp_attachment_metadata","a:5:{s:5:\"width\";i:532;s:6:\"height\";i:474;s:4:\"file\";s:20:\"2019/03/ketqua-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ketqua-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ketqua-1-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("804","461","_wp_attached_file","2019/03/phuong-phap-2.jpg"),
("805","461","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:507;s:4:\"file\";s:25:\"2019/03/phuong-phap-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"phuong-phap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"phuong-phap-2-300x254.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("806","463","_wp_attached_file","2019/03/phuong-phap-02.jpg"),
("807","463","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:26:\"2019/03/phuong-phap-02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"phuong-phap-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"phuong-phap-02-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"phuong-phap-02-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"phuong-phap-02-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("808","470","_wp_attached_file","2019/03/vande-1.png"),
("809","470","_wp_attachment_metadata","a:5:{s:5:\"width\";i:26;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2019/03/vande-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO gdd_postmeta VALUES
("810","474","_wp_attached_file","2019/03/vande-2.png"),
("811","474","_wp_attachment_metadata","a:5:{s:5:\"width\";i:31;s:6:\"height\";i:30;s:4:\"file\";s:19:\"2019/03/vande-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("812","478","_wp_attached_file","2019/03/vande-3.png"),
("813","478","_wp_attachment_metadata","a:5:{s:5:\"width\";i:29;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2019/03/vande-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("814","480","_wp_attached_file","2019/03/vande-4.png"),
("815","480","_wp_attachment_metadata","a:5:{s:5:\"width\";i:36;s:6:\"height\";i:31;s:4:\"file\";s:19:\"2019/03/vande-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("816","485","_wp_attached_file","2019/03/bg54.jpg"),
("817","485","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:16:\"2019/03/bg54.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg54-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg54-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg54-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg54-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("818","490","_wp_attached_file","2019/03/lagi-1.jpg"),
("819","490","_wp_attachment_metadata","a:5:{s:5:\"width\";i:601;s:6:\"height\";i:493;s:4:\"file\";s:18:\"2019/03/lagi-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lagi-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"lagi-1-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("820","498","_wp_attached_file","2019/03/dia-diem-1.png"),
("821","498","_wp_attachment_metadata","a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:22:\"2019/03/dia-diem-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dia-diem-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("822","502","_wp_attached_file","2019/03/dia-diem-2.png"),
("823","502","_wp_attachment_metadata","a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:22:\"2019/03/dia-diem-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dia-diem-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("824","506","_wp_attached_file","2019/03/dia-diem-3.png"),
("825","506","_wp_attachment_metadata","a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:22:\"2019/03/dia-diem-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"dia-diem-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("826","514","_wp_attached_file","2019/03/lydo-1.png"),
("827","514","_wp_attachment_metadata","a:5:{s:5:\"width\";i:44;s:6:\"height\";i:44;s:4:\"file\";s:18:\"2019/03/lydo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("828","519","_wp_attached_file","2019/03/lydo-3.png"),
("829","519","_wp_attachment_metadata","a:5:{s:5:\"width\";i:56;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2019/03/lydo-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("830","523","_wp_attached_file","2019/03/lydo-5.png"),
("831","523","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:48;s:4:\"file\";s:18:\"2019/03/lydo-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("832","527","_wp_attached_file","2019/03/lydo-2.png"),
("833","527","_wp_attachment_metadata","a:5:{s:5:\"width\";i:62;s:6:\"height\";i:43;s:4:\"file\";s:18:\"2019/03/lydo-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("834","529","_wp_attached_file","2019/03/lydo-4.png"),
("835","529","_wp_attachment_metadata","a:5:{s:5:\"width\";i:51;s:6:\"height\";i:47;s:4:\"file\";s:18:\"2019/03/lydo-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("836","531","_wp_attached_file","2019/03/lydo-6.png"),
("837","531","_wp_attachment_metadata","a:5:{s:5:\"width\";i:48;s:6:\"height\";i:46;s:4:\"file\";s:18:\"2019/03/lydo-6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("838","31","_yoast_wpseo_content_score","90"),
("839","31","_yoast_wpseo_focuskeywords",""),
("840","31","_yoast_wpseo_keywordsynonyms",""),
("842","237","_oembed_f581454e02fadf689573da144df9ba4b","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/XYU4zkUP7Cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("843","237","_oembed_time_f581454e02fadf689573da144df9ba4b","1552825716"),
("844","237","_oembed_24c976c5f70342643104b2a90132a542","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("845","237","_oembed_time_24c976c5f70342643104b2a90132a542","1552825716"),
("846","237","_oembed_2c11178e3dd97a3223c0d52dfad0f032","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("847","237","_oembed_time_2c11178e3dd97a3223c0d52dfad0f032","1552825717"),
("848","237","_oembed_2330698939e0f9f99f0379d674fd8ac6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("849","237","_oembed_time_2330698939e0f9f99f0379d674fd8ac6","1552825717"),
("850","237","_oembed_e033a564b4086ebbccb671b8e50aaa14","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/UqnGvBrlyB4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("851","237","_oembed_time_e033a564b4086ebbccb671b8e50aaa14","1552825717"),
("852","237","_oembed_fc442f25a7d52e6f596a212e4b93d035","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/t5gZ9DJu42c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("853","237","_oembed_time_fc442f25a7d52e6f596a212e4b93d035","1552825717"),
("854","31","_thumbnail_id",""),
("855","33","_yoast_wpseo_content_score","30"),
("856","33","_yoast_wpseo_focuskeywords",""),
("857","33","_yoast_wpseo_keywordsynonyms",""),
("858","33","_thumbnail_id",""),
("859","35","_yoast_wpseo_content_score","60"),
("860","35","_yoast_wpseo_focuskeywords",""),
("861","35","_yoast_wpseo_keywordsynonyms",""),
("862","559","_wp_attached_file","2019/03/banner-tieng-anh-he.jpg"),
("863","559","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:509;s:4:\"file\";s:31:\"2019/03/banner-tieng-anh-he.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"banner-tieng-anh-he-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"banner-tieng-anh-he-300x80.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"banner-tieng-anh-he-768x204.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"banner-tieng-anh-he-1024x271.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("865","563","_wp_attached_file","2019/03/icon.png"),
("866","563","_wp_attachment_metadata","a:5:{s:5:\"width\";i:237;s:6:\"height\";i:237;s:4:\"file\";s:16:\"2019/03/icon.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("867","35","_thumbnail_id",""),
("868","37","_yoast_wpseo_content_score","30"),
("869","37","_yoast_wpseo_focuskeywords",""),
("870","37","_yoast_wpseo_keywordsynonyms",""),
("874","589","_wp_attached_file","2019/03/ratte.png"),
("875","589","_wp_attachment_metadata","a:5:{s:5:\"width\";i:539;s:6:\"height\";i:534;s:4:\"file\";s:17:\"2019/03/ratte.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ratte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ratte-300x297.png\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("876","593","_wp_attached_file","2019/03/ratte-1.png"),
("877","593","_wp_attachment_metadata","a:5:{s:5:\"width\";i:539;s:6:\"height\";i:534;s:4:\"file\";s:19:\"2019/03/ratte-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ratte-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ratte-1-300x297.png\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("878","37","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("879","37","_oembed_time_97120786a5d618011442f73be26e093f","1552826592"),
("880","37","_oembed_24c976c5f70342643104b2a90132a542","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("881","37","_oembed_time_24c976c5f70342643104b2a90132a542","1552826594"),
("882","37","_oembed_2c11178e3dd97a3223c0d52dfad0f032","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("883","37","_oembed_time_2c11178e3dd97a3223c0d52dfad0f032","1552826608"),
("884","37","_oembed_2330698939e0f9f99f0379d674fd8ac6","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("885","37","_oembed_time_2330698939e0f9f99f0379d674fd8ac6","1552826621"),
("940","629","_wp_attached_file","2019/03/iconfix-1.png"),
("941","629","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:21:\"2019/03/iconfix-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("942","629","_edit_lock","1552832507:1"),
("943","630","_wp_attached_file","2019/03/iconfix-2.png"),
("944","630","_wp_attachment_metadata","a:5:{s:5:\"width\";i:35;s:6:\"height\";i:36;s:4:\"file\";s:21:\"2019/03/iconfix-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("945","630","_edit_lock","1552832507:1"),
("946","631","_wp_attached_file","2019/03/iconfix-3.png"),
("947","631","_wp_attachment_metadata","a:5:{s:5:\"width\";i:37;s:6:\"height\";i:37;s:4:\"file\";s:21:\"2019/03/iconfix-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("948","631","_edit_lock","1552832507:1"),
("951","636","_wp_trash_meta_status","publish"),
("952","636","_wp_trash_meta_time","1557133646"),
("953","637","_wp_attached_file","2019/05/edu5.jpg"),
("954","637","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:71;s:4:\"file\";s:16:\"2019/05/edu5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"edu5-150x71.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"edu5-300x71.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:5:\"Print\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("955","638","_wp_trash_meta_status","publish"),
("956","638","_wp_trash_meta_time","1557137496");




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
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_posts VALUES
("1","1","2019-03-16 03:19:13","2019-03-16 03:19:13","Ch??c m???ng ?????n v???i WordPress. ????y l?? b??i vi???t ?????u ti??n c???a b???n. H??y ch???nh s???a hay x??a b??i vi???t n??y, v?? b???t ?????u vi???t blog!","Ch??o t???t c??? m???i ng?????i!","","publish","open","open","","chao-moi-nguoi","","","2019-03-16 03:19:13","2019-03-16 03:19:13","","0","https://tppone.com/demo/edu5/?p=1","0","post","","1"),
("2","1","2019-03-16 03:19:13","2019-03-16 03:19:13","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"77\" image_size=\"original\" height=\"28%\"]\n\n[ux_image id=\"74\" image_size=\"original\" height=\"28%\"]\n\n\n[/ux_slider]\n[section label=\"Gi???i thi???u\" class=\"gioi-thieu\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"LANGMASTER LEARNING SYSTEM\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" size=\"110\"]\n\n<p class=\"title\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">H??? th???ng h???c ti???ng Anh giao ti???p to??n di???n cho ng?????i b???t ?????u</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"87\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Kh??a Starter</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 90%;\">Kh??a h???c d??nh cho ng?????i m???i b???t ?????u gi??p c???i thi???n ng??? ??m, h??nh th??nh ch??? ????? giao ti???p c??n b???n nh???t</span></div>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"89\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Kh??a Foundation</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Kh??a h???c gi??p b???n x??y d???ng n???n t???ng giao ti???p tr??i ch???y t??? nh???ng ch??? ????? th??ng d???ng trong cu???c s???ng</span></div>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"88\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Kh??a Confidence</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Kh??a h???c giao ti???p chuy??n s??u gi??p b???n t??? tin n??i ti???ng Anh t??? nh???ng ch??? ????? m???i l??? m???t c??ch ch??? ?????ng</span></div>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"90\" img_width=\"150\" pos=\"center\"]\n\n<h3 class=\"title\" style=\"text-align: center;\">Kh??a h???c Online</h3>\n<div class=\"desc\" style=\"text-align: center;\"><span style=\"font-size: 95%;\">Ch????ng tr??nh h???c online hi???u qu??? cho ng?????i m???i b???t ?????u gi??p b???n l???y l???i ???????c ki???n th???c n???n t???ng</span></div>\n\n[/featured_box]\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n[button text=\"????ng k?? h???c th??? mi???n ph??\" letter_case=\"lowercase\" radius=\"5\" link=\"#dang-ky-hoc-thu\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"M?? h??nh h???c\" class=\"mo-hinh-hoc\"]\n\n[row style=\"small\"]\n\n[col span=\"6\" span__sm=\"12\" color=\"light\"]\n\n[title style=\"center\" text=\"M?? h??nh h???c kh??c bi???t\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n<p>M?? h??nh h???c ho??n to??n kh??c bi???t ???????c mua b???n quy???n t??? ch????ng tr??nh English for Children of Australia.</p>\n<p>Ch??ng t??i mong mu???n ?????t n???n m??ng v?? ph??t tri???n m?? h??nh h???c l?? t?????ng n??y ra t???i Vi???t Nam, v???i s??? tr??? gi??p c???a c??c gi??o vi??n b???n ng??? r???t nhi???t t??nh, n??ng ?????ng v?? y??u tr???.</p>\n<p>M?? h??nh h???c l???n ?????u ti??n ???????c ??p d???ng v?? gi??p c??c em thi???u nhi t??? tin h???c ti???ng anh m???t c??ch t??? nhi??n, v?? ch???c ch???n s??? ph??t tri???n r???t t???t trong kh??? n??ng h???c ti???ng anh c???a m??nh.</p>\n[button text=\"+ Xem chi ti???t\" letter_case=\"lowercase\" radius=\"5\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=XYU4zkUP7Cg\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row class=\"row-mo-hinh-hoc\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n<h3 class=\"tieu-de\" style=\"text-align: left;\">M?? H??NH H???C<br />TR???I H??<br />TI???NG ANH</h3>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_1\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Club</div>\n<div class=\"desc\">M??i tr?????ng luy???n t???p ti???ng Anh h??ng tu???n v?? t???o c?? h???i ph??t tri???n m???i quan h???</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_2\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Conference</div>\n<div class=\"desc\">H???i th???o chuy??n s??u h?????ng nghi???p v?? n??ng cao nh???ng n??ng l???c t??? nh???ng chuy??n gia trong v?? ngo??i n?????c</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n\n[/row]\n[row class=\"row-mo-hinh-hoc\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_3\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Class</div>\n<div class=\"desc\">R??n luy???n kh??? n??ng ???ng d???ng t??? h???c t??? v???ng. Linh ho???t x??? l?? c??c ch??? ????? giao ti???p m???t c??ch r?? r??ng, ch??? ?????ng, s??ng t???o</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_4\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">E-learning</div>\n<div class=\"desc\">???ng d???ng ??i???n tho???i: Langmaster ??? h???c ti???ng Anh 30 ph??t m???i ng??y<br />H??? th???ng h???c online eStudy: H??? th???ng t??? theo d??i v?? ????nh gi?? ho???t ?????ng h???c t???p</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<div class=\"item item_5\">\n<div class=\"item_content\">\n<div class=\"item_info\">\n<div class=\"title\">Community</div>\n<div class=\"desc\">H???c vi??n s??? c?? c?? h???i ???????c tham gia t??? ch???c ho???c tham d??? c??c ch????ng tr??nh nh??: ho???t ?????ng t??? thi???n, c??c cu???c thi ti???ng Anh, c??c ho???t ?????ng v??n h??a, ngh??? thu???t,...</div>\n</p>\n</div>\n</div>\n</div>\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n[button text=\"????ng k?? h???c th??? mi???n ph??\" letter_case=\"lowercase\" radius=\"5\" link=\"#dang-ky-hoc-thu\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???m nh???n h???c vi??n\" bg_color=\"rgb(249, 249, 249)\" class=\"cam-nhan\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"C???m nh???n h???c vi??n\" tag_name=\"h2\" color=\"rgb(21, 74, 152)\" size=\"110\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/M9iJ2HG6br4\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/KgoLWsb3VzI\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/yrsSw9txBC4\" height=\"50%\"]\n\n\n[/col]\n\n[/row]\n[gap height=\"15px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"?????i t??c gi??o d???c\" tag_name=\"h2\" color=\"rgb(21, 74, 152)\" size=\"110\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=UqnGvBrlyB4\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=t5gZ9DJu42c\" height=\"50%\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://www.youtube.com/watch?v=XYU4zkUP7Cg\" height=\"50%\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Gi???ng vi??n\" bg=\"201\" bg_size=\"original\" bg_color=\"rgb(255, 255, 255)\" bg_overlay=\"rgba(219, 219, 219, 0.8)\" class=\"giang-vien\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"?????i ng?? gi???ng vi??n\" tag_name=\"h2\" color=\"rgb(21, 74, 152)\" size=\"110\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"207\" style=\"bounce\" name=\"B??i Th???o Nguy??n\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>T???t nghi???p 2 tr?????ng ?????i h???c: University of Bradford v?? University of Birmingham</p>\n\n[/team_member]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"216\" style=\"bounce\" name=\"LIESEL RETIEF\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Chuy??n gia ch????ng tr??nh - Crack \'em up, game show ph??t ??m ti???ng Anh tr??n VTV7</p>\n\n[/team_member]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"218\" style=\"bounce\" name=\"V?? Trung Thanh Ng???c\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Master of Tesol, Victoria University, Australia. Teacher of Langmaster of English since 2018</p>\n\n[/team_member]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[team_member img=\"222\" style=\"bounce\" name=\"Nguy???n Th??? Loan\" title=\"Manager of Center\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>T???t nghi???p 2 tr?????ng ?????i h???c: University of Bradford v?? University of Birmingham</p>\n\n[/team_member]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"S??? ki???n - tin t???c\" class=\"su-kien\"]\n\n[row style=\"large\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"S??? ki???n\" tag_name=\"h2\" color=\"rgb(27, 83, 147)\" link_text=\"+ Xem t???t c???\" link=\"/category/su-kien/\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"4\" posts=\"1\" show_date=\"text\" excerpt_length=\"34\" comments=\"false\" image_height=\"75%\" image_width=\"43\" image_size=\"original\" image_overlay=\"rgba(255, 246, 246, 0.28)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_pos=\"middle\" text_align=\"left\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.19)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[title text=\"Tin t???c\" tag_name=\"h2\" color=\"rgb(27, 83, 147)\" link_text=\"+ Xem t???t c???\" link=\"/category/tin-tuc/\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"2\" columns__md=\"1\" cat=\"7\" posts=\"4\" show_date=\"text\" excerpt_length=\"30\" comments=\"false\" image_height=\"70%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.22)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Truy???n th??ng n??i g?? v??? ch??ng t??i\" class=\"truyen-thong\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Truy???n th??ng n??i g?? v??? ch??ng t??i\" tag_name=\"h2\" color=\"rgb(27, 83, 147)\" size=\"110\"]\n\n[row_inner]\n\n[col_inner span__sm=\"12\"]\n\n[ux_slider freescroll=\"true\" hide_nav=\"true\" nav_pos=\"outside\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\"]\n\n[logo img=\"268\"]\n\n[logo img=\"269\"]\n\n[logo img=\"270\"]\n\n[logo img=\"271\"]\n\n[logo img=\"272\"]\n\n[logo img=\"274\"]\n\n[logo img=\"275\"]\n\n[logo img=\"276\"]\n\n\n[/ux_slider]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????ng k?? h???c\" bg=\"279\" bg_size=\"original\" padding=\"45px\" class=\"dang-ky-hoc\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"????ng k?? h???c th??? mi???n ph??\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #f0f0f0; font-size: 95%;\">(????ng k?? ngay ????? tr???i nghi???m h??? th???ng h???c ti???ng Anh giao ti???p ???? gi??p h??n 100.000 h???c vi??n th??nh c??ng tr??n con ???????ng chinh ph???c ti???ng Anh. V?? gi???, ?????n l?????t b???n ... )</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","publish","closed","open","","trang-chu","","","2019-03-17 16:50:58","2019-03-17 09:50:58","","0","https://tppone.com/demo/edu5/?page_id=2","0","page","","0"),
("3","1","2019-03-16 03:19:13","2019-03-16 03:19:13","<h2>Ch??ng t??i l?? ai</h2><p>?????a ch??? website l??: https://bizhostvn.com/w/edu5.</p><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><h3>B??nh lu???n</h3><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><h3>Th?? vi???n</h3><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><h3>Th??ng tin li??n h???</h3><h3>Cookies</h3><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><h3>N???i dung nh??ng t??? website kh??c</h3><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><h3>Ph??n t??ch</h3><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><h2>Th??ng tin li??n h??? c???a b???n</h2><h2>Th??ng tin b??? sung</h2><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3>","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-16 03:19:13","2019-03-16 03:19:13","","0","https://tppone.com/demo/edu5/?page_id=3","0","page","","0"),
("19","1","2019-03-16 12:30:54","2019-03-16 05:30:54","","123445-01","","inherit","open","closed","","123445-01","","","2019-03-16 12:30:54","2019-03-16 05:30:54","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/123445-01.jpg","0","attachment","image/jpeg","0"),
("21","1","2019-03-16 12:31:33","2019-03-16 05:31:33","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/cropped-123445-01.jpg","cropped-123445-01.jpg","","inherit","open","closed","","cropped-123445-01-jpg","","","2019-03-16 12:31:33","2019-03-16 05:31:33","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/cropped-123445-01.jpg","0","attachment","image/jpeg","0"),
("25","1","2019-03-16 12:32:15","2019-03-16 05:32:15","Xu th??? h???i nh???p v?? to??n c???u h??a, ti???ng Anh ???? tr??? th??nh ng??n ng??? chung c???a m???i qu???c gia. T??? vi???c giao ti???p ?????n nh???ng c?? h???i h???c t???p v?? l??m vi???c. Tuy nhi??n, 90% sinh vi??n Vi???t Nam ??ang g???p kh?? kh??n trong vi???c giao ti???p b???ng ti???ng Anh\n\nTrong b???i c???nh ????, ng??y 11/11/2011, T??? ch???c gi??o d???c qu???c t??? Langmaster ???????c th??nh l???p nh???m gi??p th??? h??? tr??? Vi???t Nam b???t nh???p v???i xu h?????ng h???i nh???p qu???c t??? v?? nhu c???u s??? d???ng ti???ng Anh s??u r???ng. Ch??ng t??i lu??n n??? l???c tr??? th??nh t??? ch???c gi??o d???c v?? ????o t???o ti???ng Anh hi???u qu??? nh???t b???ng c??ch cung c???p c??c ch????ng tr??nh ????o t???o ti???ng Anh k???t h???p v???i hu???n luy???n v??? t?? duy, truy???n c???m h???ng v?? t???o ?????ng l???c gi??p ng?????i h???c ph??t tri???n b???n th??n.\n\nNLP l?? vi???t t???t c???a Neuro-Linguistic Programming (L???p Tr??nh Ng??n Ng??? T?? Duy). N?? ch???a ?????ng ba th??nh t??? c?? ???nh h?????ng l???n nh???t ?????n vi???c h??nh th??nh nh???ng kinh nghi???m c?? nh??n c???a m???i ch??ng ta: th???n kinh h???c, ng??n ng??? h???c, v?? c??c m?? th???c ???????c l???p tr??nh s???n.\nNLP nghi??n c???u t??? m??? v??? c??ch m???i c?? nh??n h??nh x??? theo th??i quen nh?? th??? n??o. V???i NLP, ch??ng ta c?? th??? h???c h???i t??? ng?????i kh??c nh???ng m?? th???c n??o c?? ??ch v?? ph???c v??? ch??ng ta. Sau ???? ch??ng ta c?? th??? luy???n t???p nh???ng m?? th???c m???i cho h??nh vi c???a m??nh (gi???ng nh?? t??i l???p tr??nh n??o b???) nh???m ti???n b??? h??n trong nh???ng tr?????ng h???p m?? tr?????c kia ch??ng ta ???? ???ng x??? kh??ng hi???u qu???.\n\nNLP nh???m v??o vi???c thay ?????i t???n g???c c???a h??nh vi, t???c thay ?????i l???i t?? duy d???n ?????n h??nh vi. Cu???c s???ng, n??ng l???c c??ng nh?? tr??nh ????? ?????u l?? h??? qu??? c???a c??ch ch??ng ta suy ngh??. Vi???c thay ?????i t???n g???c v?? v???y l?? ??i???u b???t bu???c n???u m???t ng?????i mu???n n??ng cao b???t c??? k??? n??ng n??o, ho???c thay ?????i c??c th??i quen ???? b??m r???. Trong nhi???u tr?????ng h???p, vi???c thay ?????i n??y kh?? d??? d??ng v?? mang l???i hi???u qu??? cao.\nMr Vas - M???t trong 4 b???c th???y v??? ????o t???o NLP t???i ch??u ??: t???t nghi???p 2 tr?????ng ?????i h???c NLP, ???????c ????o t???o tr???c ti???p b???i GS. Richard Bandler v?? GS. John Grinder 2 nh?? s??ng l???p ng??nh l???p tr??nh ng??n ng??? t?? duy. Hi???n nay ??ng ???????c xem l?? m???t trong nh???ng Guru v??? ????o t???o ???ng d???ng L???p tr??nh Ng??n ng??? T?? duy ??? NLP h??ng ?????u t???i Ch??u ??, ki??m S??ng l???p &amp; CEO Leading Performance Singapore -?? ??ng c?? h??n 10 n??m kinh nghi???m ????o t???o v??? NLP. Cho ?????n th???i ??i???m hi???n t???i, ??ng ???? gi??p h??ng ng??n ng?????i ??? Singapore, Myanma, ???n ?????, Vi???t Nam...th??nh c??ng ?????t ph?? trong cu???c s???ng b???ng c??ch ???ng d???ng NLP ????? khai ph?? n??ng l???c ti???m ???n c???a h??? .\n\nB???ng vi???c ???ng vi???c ???ng d???ng NLP v??o c??c ch????ng tr??nh ????o t???o c???a m??nh Langmaster ???? t???o ra s??? thay ?????i ?????t ph?? trong cu???c s???ng c??ng nh?? h???c ngo???i ng??? nhanh h??n g???p 5 - 10 l???n so v???i c??ch h???c truy???n th???ng.\nT??nh ?????n th??ng 10/2015, sau 4 n??m li??n t???c nghi??n c???u v?? ???ng d???ng c??c ph????ng ph??p h???c t???p hi???n ?????i, Langmaster ???? ????o t???o tr??n 40.000 h???c vi??n, t??? ch???c g???n 200 H???i th???o Ti???ng Anh, t?? duy, k??? n??ng s???ng, ?????nh h?????ng ngh??? nghi???p cho ?????i t?????ng sinh vi??n c??c tr?????ng ?????i h???c, cao ?????ng tr??n ?????a b??n H?? N???i","Gi???i thi???u","","publish","closed","closed","","gioi-thieu","","","2019-03-17 17:29:30","2019-03-17 10:29:30","","0","https://tppone.com/demo/edu5/?page_id=25","0","page","","0"),
("27","1","2019-03-16 12:32:20","2019-03-16 05:32:20","<p>Xin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,</p>\n<p>L???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.</p>\n<p><a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.</p>\n<p>T??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.</p>\n<p>Xin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.</p>\n<p>Tr??n tr???ng./.</p>\n<p>Admin</p>\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"????NG K?? H???C TH??? MI???N PH??\" tag_name=\"h2\" color=\"rgb(24, 75, 140)\"]\n\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]","Li??n h???","","publish","closed","closed","","lien-he","","","2019-03-17 18:15:34","2019-03-17 11:15:34","","0","https://tppone.com/demo/edu5/?page_id=27","0","page","","0"),
("29","1","2019-03-16 12:32:26","2019-03-16 05:32:26","[ux_image id=\"444\" image_size=\"original\" height=\"27%\"]\n\n[section label=\"Ph????ng ph??p 1\" class=\"phuong-phap1\"]\n\n[row]\n\n[col span=\"7\" span__sm=\"12\"]\n\n[title text=\"K???t qu??? nghi??n c???u\" color=\"rgb(20, 74, 155)\" size=\"110\"]\n\n<p><span style=\"font-size: 95%;\">T??nh ?????n h???t n??m 2016, Langmaster ???? ????o t???o ???????c h??n 100.000 h???c vi??n. K???t qu??? kh???o s??t tr??nh ????? ?????u v??o cho th???y:</span></p>\n<p><span style=\"font-size: 95%;\">Trung b??nh m???t ng?????i Vi???t Nam m???t kho???ng 7 - 12 n??m (t??? b???c ti???u h???c ?????n ?????i h???c) ????? h???c ti???ng Anh, trong ???? ch??? 8.77% c?? kh??? n??ng s??? d???ng ti???ng Anh l??u lo??t, c??n l???i 92.22% kh??ng th??? giao ti???p ???????c b???ng ti???ng Anh.</span></p>\n<p><span style=\"font-size: 95%;\">????? kh???c ph???c t??nh tr???ng n??y, Langmaster ???? nghi??n c???u v?? ???ng d???ng ph????ng ph??p h???c b???ng tr???i nghi???m Experiential Learning Cycle (vi???t t???t l?? ELC) c???a TS David A.</span></p>\n<p><span style=\"font-size: 95%;\">Kolb thu???c ??H Hardvard ????? gi??p ng?????i h???c ti???ng Anh thay ?????i nh???n th???c, th??i quen v?? t??m ra ph????ng ph??p h???c ti???ng Anh hi???u qu??? nh???t.</span></p>\n[button text=\"????ng k?? h???c th??? mi???n ph??\" link=\"/lien-he\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"450\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Ph????ng ph??p 2\" bg=\"485\" bg_size=\"original\" padding=\"35px\" class=\"phuong-phap2\"]\n\n[row style=\"large\"]\n\n[col span=\"3\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title text=\"B???n c?? ??ang g???p ph???i c??c v???n ????? sau\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\"]\n\n[gap height=\"22px\"]\n\n[featured_box img=\"470\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"color: #ffffff; font-size: 90%;\">H???n ch??? v???n t???, c??ch di???n ?????t: b???n lu??n c?? xu h?????ng t???p trung suy ngh?? b???ng ti???ng Vi???t sau ???? d???ch sang ti???ng Anh. ??i???u n??y d???n ?????n ph???n x??? ch???m khi giao ti???p.</span></p>\n\n[/featured_box]\n[gap height=\"22px\"]\n\n[featured_box img=\"474\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #ffffff;\">Thi???u t??? tin khi s??? d???ng ti???ng Anh: h???c vi??n lu??n s??? sai khi n??i n??n c?? xu h?????ng nghe gi???ng vi??n n??i nhi???u h??n.</span></p>\n\n[/featured_box]\n[gap height=\"22px\"]\n\n[featured_box img=\"478\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #ffffff;\">H???c m?? kh??ng ??p d???ng ???????c: H???c nhi???u l?? thuy???t nh??ng kh??ng ??p d???ng v??o th???c t??? hay ph???n x??? ???????c khi c???n thi???t.</span></p>\n\n[/featured_box]\n[gap height=\"22px\"]\n\n[featured_box img=\"480\" img_width=\"30\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #ffffff;\">?????ng l???c h???c ch??a cao: Theo ph????ng ph??p c??c b??i ki???m tra, kh??ng c?? h???ng th?? h???c ti???ng Anh.</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[gap]\n\n<h2 class=\"title\" style=\"text-align: right;\">Ph????ng ph??p ELC l?? g???</h2>\n<p style=\"text-align: right;\"><span style=\"font-size: 95%;\">Experiential Learning Cycle (ELC), l?? ph????ng ph??p h???c b???ng tr???i nghi???m ???????c ph??t tri???n d???a tr??n ph??t minh v??? ph????ng ph??p h???c c???a ti???n s?? t??m l?? x?? h???i h???c ?????i H???c Hardvard David A. Kolb v??o n??m 1984.</span></p>\n<p style=\"text-align: right;\"><span style=\"font-size: 95%;\">Ph????ng ph??p n??y d???a tr??n m?? h??nh Kim T??? Th??p h???c t???p, trong ???? th??? hi???n ph???n tr??m hi???u qu??? ghi nh??? ki???n th???c v?? ???ng d???ng c???a ng?????i h???c c???a c??c h??nh th???c ????o t???o kh??c nhau.</span></p>\n<p style=\"text-align: right;\"><span style=\"font-size: 95%;\">V???i s??? hi???u bi???t n??y, ELC k???t h???p t???t c??? nh???ng h??nh th???c h???c t???p n??u tr??n ????? t???i ??a h??a kh??? n??ng ???ng d???ng ti???ng Anh c???a h???c vi??n.</span></p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"490\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"121\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"??i???m n???i b???t c???a ph????ng ph??p ELC\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"498\" img_width=\"122\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"color: #ffffff;\">H??? th???ng b??i h???c</span></h3>\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 90%;\">H??? th???ng b??i h???c ???????c thi???t k??? c??ng phu, khoa h???c v?? h???p d???n, gi??p h???c vi??n h???c s??u qua c??c ch??? ????? giao ti???p th??ng d???ng: travel, shopping, family, job ...</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"502\" img_width=\"122\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"color: #ffffff;\">Tr???i nghi???m th???c t???</span></h3>\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 90%;\">???ng d???ng khoa h???c NLP trong nghi??n c???u t?? duy v?? ti???m th???c con ng?????i, ph????ng ph??p ELC gi??p h???c vi??n ghi nh??? l??u nh???ng ki???n th???c ???????c h???c th??ng qua tr???i nghi???m tr???c ti???p v?? qu?? tr??nh l???p ??i l???p l???i nhi???u l???n.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"506\" img_width=\"122\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\"><span style=\"color: #ffffff;\">Ph????ng ph??p gi??o d???c ?????c bi???t</span></h3>\n<p style=\"text-align: center;\"><span style=\"color: #ffffff; font-size: 90%;\">???ng d???ng ph????ng ph??p TPR: b???ng vi???c ???ng d???ng h??nh ???nh, ??m thanh, h??nh ?????ng v?? c???m x??c v??o vi???c h???c t??? v???ng, h???c vi??n s??? ghi nh??? t??? v???ng l??u h??n, hi???u qu??? h??n v?? c?? h???ng th?? h??n khi h???c..</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section padding=\"35px\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"6 l?? do n??n ch???n ph????ng ph??p h???c b???ng tr???i nghi???m ELC\" tag_name=\"h2\" color=\"rgb(20, 75, 156)\" size=\"110\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"514\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 95%;\">01. L??m gi??u v???n t??? v???ng</span></h3>\n<p><span style=\"font-size: 90%;\">H???c vi??n chia s??? v???i nhau nh???ng t??? v???ng ???? bi???t, v?? s??? nhanh ch??ng ti???p thu ???????c t??? v???ng m???i d???a v??o tr???i nghi???m c??c t??nh hu???ng giao ti???p th???c t???.</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"519\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 90%;\">03. H???c ng??? ph??p m???t c??ch th?? v???</span></h3>\n<p><span style=\"font-size: 90%;\">C??c b??i h???c ??p d???ng ELC kh??ng ch??? d???ng ??? vi???c h???c t??? v???ng m?? c??n cung c???p ki???n th???c ng??? ph??p qua nh???ng t??nh hu???ng c??? th??? m?? h???c vi??n c?? th??? g???p trong cu???c s???ng th?????ng ng??y. Kh??c v???i vi???c nghe v?? ghi ch??p ng??? ph??p m???t c??ch kh?? khan tr?????c ????y, h???c vi??n s??? c???m nh???n vi???c h???c th?? v??? h??n bao gi??? h???t.</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"523\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 90%;\">05. R??n luy???n t?? duy v?? ph???n x??? b???ng ti???ng Anh</span></h3>\n<p><span style=\"font-size: 90%;\">Qu?? tr??nh tr???i nghi???m, ????c k???t kinh nghi???m v?? th???c h??nh s??? d???n h??nh th??nh l???i t?? duy b???ng ti???ng Anh c???a h???c vi??n. ?????c bi???t, ph???n x??? trong giao ti???p c??ng s??? ???????c c???i thi???n. R??t ng???n h??nh th???c d???ch sang ti???ng Anh t??? ti???ng Vi???t khi t?? duy trong qu?? tr??nh giao ti???p.</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"527\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"font-size: 90%;\"><strong><span style=\"color: #ed1c24;\">02. L??m ch??? c??c t??nh hu???ng giao ti???p th??ng d???ng</span></strong></span></h3>\n<p><span style=\"font-size: 90%;\">???????c thi???t k??? d???a tr??n c??c video, t??i li???u th???c v??? c??c t??nh hu???ng giao ti???p th??ng d???ng nh???t theo ti??u chu???n c???a ?????i h???c Cambridge v?? Oxford. Ph????ng ph??p ELC s??? gi??p h???c vi??n ???????c tr???c ti???p tr???i nghi???m v?? th???c h??nh nh???ng t??nh hu???ng giao ti???p m???t c??ch t??? nhi??n, g???n g??i nh???t</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"529\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"font-size: 90%; color: #ed1c24;\">04. Ng??? ??m v?? ng??? ??i???u c???a ng?????i b???n ng???</span></h3>\n<p><span style=\"font-size: 90%;\">H??? th???ng b??i h???c c???a ELC ???????c thi???t k??? t??? t??i li???u th???c, c???ng v???i s??? t???i ??a th???c h??nh giao ti???p ti???ng Anh, h???c vi??n s??? n???m b???t ???????c c??ch ph??t ??m v?? ng??? ??i???u trong giao ti???p c???a ng?????i b???n ?????a.</span></p>\n\n[/featured_box]\n[gap height=\"24px\"]\n\n[featured_box img=\"531\" img_width=\"50\" pos=\"left\"]\n\n<h3><span style=\"color: #ed1c24; font-size: 90%;\">06. Thay ?????i th??i ?????, th??i quen h???c ngo???i ng???</span></h3>\n<p><span style=\"font-size: 90%;\">V?? quan tr???ng h??n c???, ph????ng ph??p ELC cung c???p cho h???c vi??n nh???ng c??ng c??? gi??p thay ?????i tinh th???n, th??i ????? v?? th??i quen trong vi???c h???c ti???ng Anh</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"279\" bg_size=\"original\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"????ng k?? h???c th??? mi???n ph??\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 90%; color: #ffffff;\">(????ng k?? ngay ????? tr???i nghi???m h??? th???ng h???c ti???ng Anh giao ti???p ???? gi??p h??n 100.000 h???c vi??n th??nh c??ng tr??n con ???????ng chinh ph???c ti???ng Anh. V?? gi???, ?????n l?????t b???n ??? )</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Ph????ng ph??p","","publish","closed","closed","","phuong-phap","","","2019-03-17 19:24:24","2019-03-17 12:24:24","","0","https://tppone.com/demo/edu5/?page_id=29","0","page","","0"),
("31","1","2019-03-16 12:32:50","2019-03-16 05:32:50","[section label=\"Gi???ng vi??n\" bg_color=\"rgb(255, 255, 255)\" padding=\"11px\" class=\"giang-vien\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[team_member img=\"207\" style=\"bounce\" name=\"B??i Th???o Nguy??n\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>T???t nghi???p 2 tr?????ng ?????i h???c: University of Bradford v?? University of Birmingham</p>\n\n[/team_member]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[team_member img=\"216\" style=\"bounce\" name=\"LIESEL RETIEF\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Chuy??n gia ch????ng tr??nh - Crack \'em up, game show ph??t ??m ti???ng Anh tr??n VTV7</p>\n\n[/team_member]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[team_member img=\"218\" style=\"bounce\" name=\"V?? Trung Thanh Ng???c\" title=\"Teacher\" icon_style=\"fill\" facebook=\"#\" instagram=\"#\" googleplus=\"#\" youtube=\"#\" image_height=\"100%\" image_width=\"80\" image_radius=\"100\" text_bg=\"rgba(255, 253, 253, 0)\"]\n\n<p>Master of Tesol, Victoria University, Australia. Teacher of Langmaster of English since 2018</p>\n\n[/team_member]\n\n[/col]\n\n[/row]\n\n[/section]","?????i ng?? ????o t???o","","publish","closed","closed","","doi-ngu-dao-tao","","","2019-03-17 19:29:54","2019-03-17 12:29:54","","0","https://tppone.com/demo/edu5/?page_id=31","0","page","","0"),
("33","1","2019-03-16 12:32:56","2019-03-16 05:32:56","<p><span style=\"font-size: 95%;\">Xin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,</span></p>\n<p><span style=\"font-size: 95%;\">L???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.</span></p>\n<p><span style=\"font-size: 95%;\"><a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.</span></p>\n<p><span style=\"font-size: 95%;\">Sau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.</span></p>\n<p><span style=\"font-size: 95%;\">T??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.</span></p>\n<p><span style=\"font-size: 95%;\">Xin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.</span></p>\n<p><span style=\"font-size: 95%;\">Tr??n tr???ng./.</span></p>\n<p><span style=\"font-size: 95%;\">Admin</span></p>","Kh??a h???c","","publish","closed","closed","","khoa-hoc","","","2019-03-17 19:31:17","2019-03-17 12:31:17","","0","https://tppone.com/demo/edu5/?page_id=33","0","page","","0"),
("35","1","2019-03-16 12:33:03","2019-03-16 05:33:03","[ux_image id=\"559\" image_size=\"original\"]\n\n[section bg=\"121\" bg_size=\"original\" class=\"mo-hinh-hoc-2\"]\n\n[row]\n\n[col span__sm=\"12\" color=\"light\"]\n\n[title style=\"center\" text=\"M?? h??nh h???c kh??c bi???t\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n\n<div class=\"box_content\">\n<p class=\"detail\"><span style=\"font-size: 100%;\">Th???u hi???u nh???ng kh?? kh??n tr??n con ???????ng b???t ?????u chinh ph???c kh??? n??ng ti???ng Anh c???a c??c b???n h???c vi??n t???i Vi???t Nam, Langmaster ???? x??y d???ng l??? tr??nh kh???i ?????u n???n t???ng. V???i l??? tr??nh n??y, c??c b???n s??? ???????c b???t ?????u ho??n thi???n kh??? n??ng ph??t ??m v?? t??? ???? x??y d???ng n???n t???ng giao ti???p nh???ng ch??? ????? c??n b???n trong ti???ng Anh.</span></p>\n<p class=\"detail\"><span style=\"font-size: 100%;\">Song song v???i con ???????ng n??ng cao n??ng l???c ti???ng Anh, Langmaster mong mu???n gi??p c??c b???n c?? th??? t??? tin h???i nh???p trong th???i k??? ?????i m???i b???ng c??ch n??ng cao 6 nh??m n??ng l???c l??m vi???c thi???t y???u ????? th??ch nghi v???i s??? bi???n ?????i c???a th??? gi???i.</span></p>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]","L??? tr??nh h???c","","publish","closed","closed","","lo-trinh-hoc","","","2019-03-17 19:38:54","2019-03-17 12:38:54","","0","https://tppone.com/demo/edu5/?page_id=35","0","page","","0"),
("37","1","2019-03-16 12:33:10","2019-03-16 05:33:10","[section bg=\"279\" class=\"cam-nhan-2\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"C???m nh???n h???c vi??n\" tag_name=\"h2\" color=\"rgb(255, 255, 255)\" size=\"110\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%; color: #ffffff;\">M???i c??c b???n c??ng theo d??i m???t s??? ????nh gi??, c???m nh???n c???a h???c vi??n ???? v?? ??ang theo h???c t???i trung t??m ch??ng t??i:</span></p>\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"593\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"593\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"589\" image_size=\"original\" lightbox=\"true\" image_overlay=\"rgba(0, 0, 0, 0.48)\" image_hover=\"overlay-add\"]\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(244, 244, 244)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Video c???m nh???n c???a h???c vi??n\" tag_name=\"h2\" color=\"rgb(2, 54, 141)\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/M9iJ2HG6br4\" height=\"50%\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/KgoLWsb3VzI\" height=\"50%\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_video url=\"https://youtu.be/yrsSw9txBC4\" height=\"50%\"]\n\n[/col]\n\n[/row]\n\n[/section]","C???m nh???n h???c vi??n","","publish","closed","closed","","cam-nhan-hoc-vien","","","2019-03-17 19:44:19","2019-03-17 12:44:19","","0","https://tppone.com/demo/edu5/?page_id=37","0","page","","0"),
("39","1","2019-03-16 12:33:16","2019-03-16 05:33:16","?????? ch??u ?? c?? 3 qu???c gia??<strong>h???c ti???ng Anh giao ti???p</strong>?????????c gi???ng d???y ch??nh th???c t???i tr?????ng h???c t??? l???p 1 ?????n l???p 12: Singapore, Philippin v?? ???n ?????, lao ?????ng c???a c??c n?????c n??y l???i th??? h??n h???n c??c n?????c c??n l???i.\nV?? nh?? Philippin, nh???ng v??ng n??ng th??n xa x??i v?? kh?? kh??n, tr??? em ??? ????y ngh??? h???c t??? l???p 3 nh??ng nh???ng c??u ti???ng Anh ????n gi???n nh?? gi???t ?????, n???u c??m, lau nh?? ??? h??? ???? ???????c h???c t??? 3 n??m tr?????c n??n h??? ??i xu???t kh???u lao ?????ng. Ng?????i Philippin ra n?????c ngo??i, sang Vi???t Nam l??m??<em>gi??o vi??n ti???ng Anh</em>, ca s??, y t?? c??ng r???t nhi???u. Theo th???ng k?? n??m 2012, ri??ng l?????ng ngo???i t??? ng?????i Philippin chuy???n v??? ????? x??y d???ng ?????t n?????c l?? 26 t??? ???? la M???.Trong cu???n s??ch n???i ti???ng c???a Thomas L Friedman ??? The world is Flat (Th??? gi???i ph???ng) k??? nhi???u v??? h??nh tr??nh c???a t??c gi??? tr??n ?????t ???n, c?? ??o???n k??? l???i ???T???i m???t t??a nh?? IMB, nh???ng c?? c???u t??? x??ng m??nh l?? Mike, Robert, Emily ??? ??ang t?? v???n cho kh??ch h??ng ??? n???a kia c???a tr??i ?????t b???ng gi???ng Anh M??? r???t chuy??n nghi???p. Lao ?????ng M??? ??ang m???t vi???c l??m ngay tr??n ?????t n?????c c???a m??nh???. ???? l?? nh???ng g?? ??ang x???y ra ??? ?????t n?????c ???n ?????.\n\n3 th??ng g???n ????y b???n ???? tham gia bao nhi??u h???i th???o qu???c t??? m?? chuy??n gia l?? ng?????i Singapore n??i ti???ng Anh?N???u b??? m??? b???n kh??ng??h???c ti???ng Anh, b???n kh??ng h???c ti???ng Anh, r???i ??t n???a con c???a b???n kh??ng h???c ti???ng Anh ??? th?? c??i vi???n c???nh ???Lao ?????ng Vi???t Nam ??ang m???t vi???c ngay tr??n ?????t n?????c m??nh??? c??ng kh??ng c??n xa x??i g?? n???a.B??c H??? c?? th??? n??i tr??i ch???y 12 ng??n ng???, c?? nh???ng ngu???n tin ????a ra con s??? l???n h??n. Th???i ???? B??c h???c ti???ng Anh nh?? th??? n??o hay v???y?Ng?????i ta ch???y ra ch??? mua v??i t??? Vietnam News hay Saigon News, d???ch h???t qua ti???ng Vi???t, r???i l???y ti???ng Vi???t d???ch l???i ti???ng Anh, so s??nh v???i b???n g???c.?????n khi c?? Internet, ch??? c???n ng???i ??? nh??, v???i v??i c?? nh???p chu???t tr??n Google l?? b???n c?? ngay m???t ???B?? k??p n??i ti???ng Anh??? hay ???Th???n k??p h???c t??? v???ng???. V??i c???m t??? ???Free English lesson??? hay ???Learning English??? tr??n Youtube th?? c?? ?????n h??ng ng??n Video gi???ng b???n x??? ???????c search ra.\n\nB???n th??n m???n, n??i ti???ng Anh c??ng l?? m???t k??? n??ng, mu???n c?? n?? b???n ph???i d??nh th???i gian luy???n t???p. C??ng luy???n t???p nhi???u b???n c??ng gi???i. Th???i x??a c??c ??ng c??c b??c xin v??o m???y kh??ch s???n l???n l??m nh??n vi??n m??? c???a, m???y t??u l???n l??m ph??? b???p, d???n c??m. Th???i nay c?? ??i???u ki???n h??n ng?????i ta ??i m???y trung t??m, c??u l???c b??? hay c??c ??i???m du l???ch c?? nhi???u T??y ????? luy???n t???p.\n\nD?? l?? th???i n??o, ???b?? k??p??? c?? th???n k??? ?????n m???y th?? b???n v???n PH???I D??NH TH???I GIAN LUY???N T???P, vi???c BI???T ph????ng ph??p ch??? gi??p b???n ?????nh h?????ng v?? r??t ng???n th???i gian sai l???m c???a b???n ??i m?? th??i. Kh??ng c??n c??ch n??o kh??c ????u!","C??u l???c b???","","publish","closed","closed","","cau-lac-bo","","","2019-03-17 18:18:30","2019-03-17 11:18:30","","0","https://tppone.com/demo/edu5/?page_id=39","0","page","","0"),
("41","1","2019-03-16 12:33:24","2019-03-16 05:33:24","[ux_gallery ids=\"241,238,235,232,229,226,222,218,216,207\" col_spacing=\"xsmall\" columns=\"3\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]","Th?? vi???n","","publish","closed","closed","","thu-vien","","","2019-03-17 18:23:21","2019-03-17 11:23:21","","0","https://tppone.com/demo/edu5/?page_id=41","0","page","","0"),
("46","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","46","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=46","6","nav_menu_item","","0"),
("47","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","47","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=47","5","nav_menu_item","","0"),
("48","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","48","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=48","4","nav_menu_item","","0"),
("49","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","49","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=49","3","nav_menu_item","","0"),
("50","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","50","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=50","2","nav_menu_item","","0"),
("53","1","2019-03-16 12:34:36","2019-03-16 05:34:36"," ","","","publish","closed","closed","","53","","","2019-03-17 17:16:01","2019-03-17 10:16:01","","0","https://tppone.com/demo/edu5/?p=53","1","nav_menu_item","","0"),
("58","1","2019-03-16 12:36:00","2019-03-16 05:36:00"," ","","","publish","closed","closed","","58","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=58","3","nav_menu_item","","0"),
("59","1","2019-03-16 12:36:00","2019-03-16 05:36:00"," ","","","publish","closed","closed","","59","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=59","4","nav_menu_item","","0"),
("60","1","2019-03-16 12:36:00","2019-03-16 05:36:00"," ","","","publish","closed","closed","","60","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=60","1","nav_menu_item","","0"),
("74","1","2019-03-16 12:46:37","2019-03-16 05:46:37","","slider02","","inherit","open","closed","","slider02","","","2019-03-16 12:46:37","2019-03-16 05:46:37","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/slider02.jpg","0","attachment","image/jpeg","0"),
("77","1","2019-03-16 12:52:30","2019-03-16 05:52:30","","slider03","","inherit","open","closed","","slider03","","","2019-03-16 12:52:30","2019-03-16 05:52:30","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/slider03.jpg","0","attachment","image/jpeg","0"),
("87","1","2019-03-16 12:55:50","2019-03-16 05:55:50","","icon1","","inherit","open","closed","","icon1","","","2019-03-16 12:55:50","2019-03-16 05:55:50","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon1.png","0","attachment","image/png","0"),
("88","1","2019-03-16 12:55:51","2019-03-16 05:55:51","","icon2","","inherit","open","closed","","icon2","","","2019-03-16 12:55:51","2019-03-16 05:55:51","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon2.png","0","attachment","image/png","0"),
("89","1","2019-03-16 12:55:51","2019-03-16 05:55:51","","icon3","","inherit","open","closed","","icon3","","","2019-03-16 12:55:51","2019-03-16 05:55:51","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon3.png","0","attachment","image/png","0"),
("90","1","2019-03-16 12:55:52","2019-03-16 05:55:52","","icon4","","inherit","open","closed","","icon4","","","2019-03-16 12:55:52","2019-03-16 05:55:52","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon4.png","0","attachment","image/png","0"),
("121","1","2019-03-17 14:58:36","2019-03-17 07:58:36","","bg-2","","inherit","open","closed","","bg-2","","","2019-03-17 14:58:36","2019-03-17 07:58:36","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg-2.jpg","0","attachment","image/jpeg","0"),
("148","1","2019-03-17 15:19:43","2019-03-17 08:19:43","","4ce-1 (1)","","inherit","open","closed","","4ce-1-1","","","2019-03-17 15:19:43","2019-03-17 08:19:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-1-1.png","0","attachment","image/png","0"),
("154","1","2019-03-17 15:22:42","2019-03-17 08:22:42","","4ce-2","","inherit","open","closed","","4ce-2","","","2019-03-17 15:22:42","2019-03-17 08:22:42","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-2.png","0","attachment","image/png","0"),
("156","1","2019-03-17 15:23:29","2019-03-17 08:23:29","","4ce-3","","inherit","open","closed","","4ce-3","","","2019-03-17 15:23:29","2019-03-17 08:23:29","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-3.png","0","attachment","image/png","0"),
("158","1","2019-03-17 15:24:15","2019-03-17 08:24:15","","4ce-5","","inherit","open","closed","","4ce-5","","","2019-03-17 15:24:15","2019-03-17 08:24:15","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-5.png","0","attachment","image/png","0"),
("166","1","2019-03-17 15:29:59","2019-03-17 08:29:59","","4ce-4","","inherit","open","closed","","4ce-4","","","2019-03-17 15:29:59","2019-03-17 08:29:59","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/4ce-4.png","0","attachment","image/png","0"),
("201","1","2019-03-17 15:54:28","2019-03-17 08:54:28","","giangvien-bg","","inherit","open","closed","","giangvien-bg","","","2019-03-17 15:54:28","2019-03-17 08:54:28","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-bg.jpg","0","attachment","image/jpeg","0"),
("207","1","2019-03-17 15:57:35","2019-03-17 08:57:35","","pic1","","inherit","open","closed","","pic1","","","2019-03-17 15:57:35","2019-03-17 08:57:35","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/pic1.jpg","0","attachment","image/jpeg","0"),
("216","1","2019-03-17 16:03:39","2019-03-17 09:03:39","","giangvien-3","","inherit","open","closed","","giangvien-3","","","2019-03-17 16:03:39","2019-03-17 09:03:39","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-3.jpg","0","attachment","image/jpeg","0"),
("218","1","2019-03-17 16:04:22","2019-03-17 09:04:22","","giangvien-5","","inherit","open","closed","","giangvien-5","","","2019-03-17 16:04:22","2019-03-17 09:04:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-5.jpg","0","attachment","image/jpeg","0"),
("222","1","2019-03-17 16:05:09","2019-03-17 09:05:09","","giangvien-13","","inherit","open","closed","","giangvien-13","","","2019-03-17 16:05:09","2019-03-17 09:05:09","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/giangvien-13.jpg","0","attachment","image/jpeg","0"),
("225","1","2019-03-17 16:07:29","2019-03-17 09:07:29","<div><strong>Tu???n cu???i c??ng tr?????c khi T???t ?????n v???i t???ng nh??, trong khi m???i ng?????i tranh th??? ??i may m???t chi???c ??o d??i m???i ????n t???t hay s???m ????? T???t cho gia ????nh th?? ch??ng t??i- 20 con ng?????i, quy???t ?????nh d??nh m???t ng??y ch??? nh???t cho c??c em nh??? m??? c??i ??? ch??a Th???nh ?????i, H?? Nam.</strong></div>\n<div></div>\n<div>????n ch??ng t??i l?? s??? r???t r??, l?? nh???ng ??nh m???t mang n???i bu???n kh?? c?? th??? di???n t??? ???????c, l?? nh???ng s??? h??o h???c mong ch??? c???a nh???ng em b?? mang m???nh ?????i kh??ng ???????c may m???n nh?? bao nhi??u ng?????i kh??c. S??? b??? ng??? ban ?????u nh?????ng cho kh??ng kh?? kh???n tr????ng v???n chuy???n ????? quy??n g??p.</div>\n<div>S??? r???t r?? c???a c??c em l??c ?????u ???????c d???n thay th??? b???ng s??? t?? m?? khi c?? c??c anh ch??? c??ng c??c em tham gia c??c ch????ng tr??nh ????? vui c?? th?????ng, c??ng x?? d??n theo nh??m v?? nh???y t???p th???. Nh???ng g????ng m???t ng??y th??, nh???ng n??? c?????i h???n nhi??n, kh??ng v?????ng b???n gieo v??o l??ng ch??ng t??i m???t n???i bu???n th????ng v?? s??? bi???t ??n v???i s?? th???y tr??? tr?? r???t l???n.</div>\n<div>Ngo??i s??? h??? tr??? h??ng h??a, ????? d??ng thi???t y???u cho cu???c s???ng th???y tr?? c??c b??. Langmaster c??ng ???ng h??? qu??? ti???n m???t 40 tri???u ?????ng ???????c quy??n g??p t??? r???t nhi???u h???c vi??n v?? nh??n vi??n trong su???t chi???n d???ch k??o d??i 21 ng??y ????m</div>\n<div>\n<div>L??c n??y kh??ng c??n ph??n bi???t ?????i di???n c??ng ty, gi???ng vi??n, tr??? gi???ng, h???c vi??n n???a m?? l?? nh???ng t???m l??ng mong mu???n mang l???i n??? c?????i tr??n m??i c??c em, cho c??c e ???????c ????? ?????y d?? ch??? m???t ch??t v??? v???t ch???t v?? r???t r???t nhi???u t??nh y??u th????ng.</div>\n<div></div>\n<div>Khi ch??ng t??i chu???n b??? quay l??ng ??i v??? th?? b???t g???p nh???ng ??nh m???t ???y- ??nh m???t n???a nh?? mong mu???n c??c anh ch??? ??? l???i th??m m???t ch??t n???a, n???a kh??ng d??m gi??? v?? th???y b???o mu???n r???i c??ng n??n ????? c??c anh ch??? v???. Ch??ng t??i c??? suy ngh?? m??i v??? nh???ng n??? c?????i ???y, ??nh m???t ???y, s??? ng??y th?? c???a c??c em khi???n c??? ??o??n khi ra v??? kh??ng ai n??i g?? v???i ai m?? ?????u theo ??u???i nh???ng suy ngh?? v?? t??m t?? cho ri??ng m??nh. Nh??ng ch???c ch???n m???t ??i???u, l?? sau chuy???n ??i n??y, ch??ng t??i s??? tr??n tr???ng cu???c s???ng, gia ????nh v?? c??? g???ng h??n n???a ????? nh???ng chuy???n t??nh nguy???n k??o d??i m??i.</div>\n<div></div>\n<div>???Ch??ng ta s??? quy??n 300 tri???u cho x??y tr?????ng tr??n v??ng cao cho c??c em b?? d??n t???c n???u ch??ng ta c??ng nhau c??? g???ng trong n??m nay.???</div>\n<div></div>\n<div>Nh???ng l???i ???y khi???n ch??ng t??i c?? ?????ng l???c h??n v?? tr??n ?????y quy???t t??m ????? bi???n mong ?????c thi???n nguy???n ???????c th??nh hi???n th???c.</div>\n<div></div>\n<div>M???t chuy???n ??i mang nh???ng b??i h???c c???a c??? m???t tu???i tr??? !!!</div>\n</div>","Ch????ng tr??nh t??? thi???n v??ng cao c???a Langmaster ng??y 12 th??ng 3","","publish","open","open","","chuong-trinh-tu-thien-ngay-27-1-2019-cung-langmaster","","","2019-03-17 17:43:50","2019-03-17 10:43:50","","0","https://tppone.com/demo/edu5/?p=225","0","post","","0"),
("226","1","2019-03-17 16:07:25","2019-03-17 09:07:25","","DSC-3797-compressed","","inherit","open","closed","","dsc-3797-compressed","","","2019-03-17 16:07:25","2019-03-17 09:07:25","","225","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/DSC-3797-compressed.jpg","0","attachment","image/jpeg","0"),
("228","1","2019-03-17 16:08:17","2019-03-17 09:08:17","<strong>?????n h???n l???i l??n, kh??ng kh?? Gi??ng sinh ???m ??p, an l??nh ???? lan t???a ?????n m???i c?? s???, m???i l???p h???c c???a Langmaster ngay trong ????m 25/12 m?? trong ????, ch??ng m??nh ???? c??ng v???i c??c b???n h???c vi??n y??u m???n t??? ch???c nhi???u ho???t ?????ng th?? v???.</strong>\n\nCh??? c???n b?????c ch??n v??o m???t c?? s??? Langmaster b???t k??, b???n s??? c???m nh???n ngay b???u kh??ng kh?? Gi??ng sinh ng???p tr??n xung quanh m??nh, ????u ????u c??ng l?? ??ng gi?? tuy???t, c??y th??ng noel, nh???ng b??ng tuy???t v?? b??ng bay ng??? ngh??nh b??o hi???u m???t m??a Gi??ng sinh an l??nh l???i v??? v???i Lang. Th???t v???y, Langer ch??ng m??nh c??ng h??o h???c mong ch??? nh???ng ??i???u t???t ?????p v?? s??? ki???n t??ng b???ng ????? c??ng c??? l???p vui ch??i, t???o n??n nh???ng k??? ni???m m??u s???c, ????ng nh???.\n\n?????i v???i ch??ng m??nh, thanh xu??n l?? c??ng nhau h???c t???p, c??ng nhau vui ch??i h???t m??nh. Ngo??i kia, Gi??ng sinh an l??nh ???? len l???i ?????n m???i ng??c ng??ch c???a t???ng con ph???. Nh??ng trong nh???ng l???p h???c ti???ng Anh giao ti???p Langmaster, ch??ng m??nh kh??ng g???i ???? l?? t??? ???an l??nh??? m?? l?? ???b??ng n??????!!!\n\n2018 l?? m???t n??m ?????c bi???t d??nh cho Langmaster ????nh d???u ch???ng ???????ng 7 n??m v???i ?????y ????? nh???ng n???t th??ng, n???t tr???m. C??ng nhau, ch??ng m??nh ???? tr???i qua bi???t bao nhi??u k??? ni???m ????ng nh??? t??? chu???i h???i th???o H??nh trang t??n sinh vi??n v???i b??c L?? Th???m D????ng gi??p ch??ng m??nh tr?????ng th??nh h??n trong cu???c s???ng, chu???i h???i th???o To??n c???u h??a v???i b??c Alok gi??p ?????nh h?????ng s??? nghi???p ?????n h???i tr???i Langmaster International Fair ????? trau d???i kh??? n??ng th???c h??nh v?? l??m ch??? ti???ng Anh.\n\n&nbsp;\n\nCu???i c??ng, Gi??ng sinh c??ng Langmaster l?? ch????ng tr??nh kh??p l???i m???t n??m 2018 ?????y m??u s???c, ch??c c??c b???n m???t m??a Gi??ng sinh v?? n??m m???i an l??nh, h???nh ph??c v?? tr??n ng???p ni???m vui!!! Merry Christmas and Happy New Year !!!","R???o r???c ????n m???ng Gi??ng sinh c??ng Langmaster","","publish","open","open","","rao-ruc-don-giang-sinh-cung-langmaster","","","2019-03-17 17:42:57","2019-03-17 10:42:57","","0","https://tppone.com/demo/edu5/?p=228","0","post","","0"),
("229","1","2019-03-17 16:08:15","2019-03-17 09:08:15","","DSC-2759","","inherit","open","closed","","dsc-2759","","","2019-03-17 16:08:15","2019-03-17 09:08:15","","228","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/DSC-2759.jpg","0","attachment","image/jpeg","0"),
("231","1","2019-03-17 16:09:26","2019-03-17 09:09:26","<p style=\"font-weight: 400;\">H??NH TRANG T??N SINH VI??N - NH???NG B??I H???C ?? NGH??A</p>\n<p style=\"font-weight: 400;\">Chu???i ch????ng tr??nh H??nh trang t??n sinh vi??n ???? k???t th??c, trong su???t 2 th??ng ?????ng h??nh c??ng c??c b???n t??n sinh vi??n, t???i 4 tr?????ng ?????i h???c l???n c???a th??? ????. Langmaster v?? B??o Sinh Vi??n Vi???t Nam g???i l???i c???m ??n s??u s???c ?????n c??c b???n sinh vi??n lu??n ?????ng h??nh c??ng v???i ch??ng t??i ????? ??em ?????n s??? thay ?????i cho ch??nh m??nh, trang b??? ki???n th???c ????? b?????c ch??n v??o gi???ng ???????ng kh??ng c??n b??? ng???, m??ng lung tr?????c nh???ng ?????nh h?????ng c???a t????ng lai.</p>\n<p style=\"font-weight: 400;\">???N???u Tu???i tr??? nh?? m???t t???m g??? lim, th?? giai ??o???n 18-25 ch??nh l?? giai ??o???n t???o ra b???n l???. C??nh c???a g??? lim d?? c?? ch???c nh??ng c??i b???n l??? h?? th?? c??nh c???a cu???c ?????i c??ng kh??ng th??? ????ng ???????c.??? ????y l?? c??u n??i n???i ti???ng c???a TS L?? Th???m D????ng, g???i ?????n c??c b???n tr???. Nh?? m???t l???i nh???c nh??? v??? nh???ng ?????nh h?????ng trong t????ng lai c???a c??c b???n ra sao ?????u ph??? thu???c v??o qu??ng th???i gian thanh xu??n ????i m????i n??y.</p>\n<p style=\"font-weight: 400;\">Tham gia chu???i ch????ng tr??nh H??nh trang t??n sinh vi??n TS L?? Th???m D????ng g???i ?????n c??c b???n nh???ng b??i gi???ng: ?????nh v??? v?? ph??t tri???n b???n th??n, T?? duy ?????t ph?? trong th???i ?????i 4.0, Ngh??? thu???t giao ti???p v?? ???ng x??? th??ng minh, Th??i ????? hay tr??nh ?????. Qua ????y gi??p c??c b???n t??n sinh vi??n hi???u ???????c ch??nh m??nh, x??c ?????nh ????ng m???c ti??u v?? c?? ?????nh h?????ng ph??t tri???n c??c k??? n??ng, ki???n th???c nh??:ti???ng Anh, k??? n??ng giao ti???p, k?? n??ng x??? l?? t??nh hu???ng, th??i ????? l??m vi???c.</p>\n<p style=\"font-weight: 400;\">N??i v??? ch????ng tr??nh H??nh trang T??n sinh vi??n, Langmaster c??ng c??c nh?? ?????ng h??nh ch????ng tr??nh ???? trao h??n 50 su???t h???c b???ng v?? h??ng tr??m qu?? t???ng d??nh t???ng c??c b???n sinh vi??n ?????n tham d??? ch????ng tr??nh. ????y c??ng l?? ph???n qu?? kh??ch l??? c??c b???n v???ng tin h???c t???p, tr???i nghi???m c??c kh??a h???c ti???ng Anh v?? k??? n??ng t???i Langmaster.</p>\n<p style=\"font-weight: 400;\">Cu???c s???ng l?? chu???i nh???ng ng??y d??i n???i ti???p nhau, ch??ng ta ??i t??m b???n th??n m??nh c???t ????? ???????c l??m vi???c, c???ng hi???n, th??nh c??ng v?? h???nh ph??c. Ch??c c??c b???n lu??n ????? l???a ????? th???p s??ng ??am m??, bi???n n?? th??nh hi???n th???c.</p>\n<p style=\"font-weight: 400;\">???n g???p l???i c??c b???n, trong c??c ch????ng tr??nh ?????ng h??nh c??ng sinh vi??n c???a Langmaster.</p>","H??nh trang t??n sinh vi??n - nh???ng b??i h???c ?? ngh??a","","publish","open","open","","anh-trang-tan-sinh-vien-nhung-bai-hoc-y-nghia","","","2019-03-17 17:42:38","2019-03-17 10:42:38","","0","https://tppone.com/demo/edu5/?p=231","0","post","","0"),
("232","1","2019-03-17 16:09:23","2019-03-17 09:09:23","","Bell_Cambridge_Classroom-copia-2","","inherit","open","closed","","bell_cambridge_classroom-copia-2","","","2019-03-17 16:09:23","2019-03-17 09:09:23","","231","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/Bell_Cambridge_Classroom-copia-2.jpg","0","attachment","image/jpeg","0"),
("234","1","2019-03-17 16:10:33","2019-03-17 09:10:33","<p style=\"font-weight: 400;\">Nh??ng ch??ng ta lu??n s???ng trong hai n???i s??? l???n l??: S??? nh???ng g?? m??nh kh??ng bi???t t???c lu??n lo ??u vi???c m??nh kh??ng ho??n h???o v?? s??? vi???c b??? l??? t????ng lai. ??i???u n??y chi ph???i ?????n suy ngh?? v?? nh???ng g?? b???n l??m trong s??? nghi???p.</p>\n<p style=\"font-weight: 400;\">Ch???c h???n b???n bi???t ?????n M?? h??nh chi???n l?????c con nh??m, ???? l?? s??? k???t h???p c???a 3 y???u t???: Th??? b???n th??ch + th??? b???n gi???i + kh??? n??ng ki???m ???????c ti???n, th??? x?? h???i c???n. Tr??n l?? thuy???t l?? b???n c???n hi???u r?? ch??nh m??nh th??ng qua vi???c ph??n t??ch ba y???u t??? ????. Nh??ng th???c t??? th?? y??u c???u b???n l??m chi ti???t h??n.</p>\n<p style=\"font-weight: 400;\">T???i bu???i h???i th???o: To??n c???u h??a d???n ?????u hay b??? b??? l???i, TS Alok ???? chia s??? 5 qu??? ?????o tr??n con ???????ng s??? nghi???p c???a b???n</p>\n?????u ti??n, Q??y ?????o kh??m ph??: Kh??ng ai hi???u m??nh b???ng ch??nh m??nh c???. Ch??? c?? hi???u b???n th??n mu???n g??, ??ang nh?? th??? n??o th?? m???i x??c ?????nh ?????????c ?????nh h?????ng c??ng vi???c c??ng nh?? hi???u ????? thay ?????i ??i???m y???u v?? ph??t huy ??i???m m???nh. TS Alok ???? chia s??? c??ch b???n t??m ki???m ch??nh m??nh v???i m?? h??nh ???Mi - VIPD??? ???????c hi???u l??: T?? duy (Mindset), Gi?? tr??? (Values), Quan t??m (Interests), T??nh c??ch (Personality), ?????ng c?? (Drivers).\n<p style=\"font-weight: 400;\">Q??y ?????o s??? 3 l?? Q??y ?????o N??NG L???C: T??i s???n gi?? tr??? nh???t c???a m???t ?????i ng?????i kh??ng ph???i l?? b???n c?? nhi???u ?????t ??ai, nh?? c???a, xe c???, m?? t??i s???n l???n nh???t ???? l?? trong nh???ng n??m th??ng tu???i tr??? b???n trang b??? cho m??nh ???????c Kinh nghi???m + Ki???n th???c + K??? n??ng. ????? c?? ???????c nh???ng c??i ???? ????i h???i b???n c???n ?????u t?? l???n cho c??ng cu???c x??y d???ng, n??ng cao n??ng l???c b???n th??n</p>\n<p style=\"font-weight: 400;\">B?????c sang qu??? ?????o th??? 4 ????i h???i ki???ng ba ch??n ???? v???ng v??ng, ????y l?? qu??? ?????o s??? T??N NHI???M. T???c l?? th???i ??i???m b???n b?????c ch??n v??o qu??? ?????o n??y, ch??nh b???n ???? c?? ???????c s??? tin t?????ng, t??n nhi???m t??? l??nh ?????o, ?????ng nghi???p. B??y gi??? l?? l??c b???n kh??ng ch??? ch?? tr???ng v??o k???t qu???, hi???u qu??? c??ng vi???c m??nh l??m ra m?? c??n l?? ng?????i d???n d???t, ?????nh h?????ng, l?? c??nh tay ph???i gi??p CEO c???a m??nh c??ng ph??t tri???n doanh nghi???p</p>\n<p style=\"font-weight: 400;\">??i???m ????ch cu???i c??ng v?? c??ng gian nan v?? kh?? kh??n, qu??? ?????o ???NH H?????NG TO L???N: Th??? t?????ng t?????ng b???n tr??o l??n m???t ng???n n??i, khi b?????c l??n ?????nh c???m gi??c th???t tuy???t, th???t ????ng t??? h??o ????ng kh??ng? B??y gi??? khi ai ???? h???i v??? cu???c h??nh tr??nh leo n??i c???a b???n th?? b???n ?????u k??? v???i s??? tr???i nghi???m, nh???ng kh?? kh??n b???n tr???i qua, c??ng nh???ng b??i h???c trong su???t h??nh tr??nh. M???i ng?????i ?????u l???ng nghe b???n v???i s??? tin t?????ng, s??? ng?????ng m???, s??? th???n t?????ng??? ???? l?? qu??? ?????o c???a s??? ???nh h?????ng l???n.</p>\n<p style=\"font-weight: 400;\">??i qua 5 qu??? ?????o trong qu?? tr??nh g??y d???ng s??? nghi???p b???n s??? nh???n ra r???ng t???c ????? v?? ????? cao th??ng ti???n v?? c??ng kh??c nhau. B???n c?? th??? lao nhanh nh?? t??n l???a ????? ?????n ????ch, nh??ng c??ng c?? th??? ??i nh?? m???t ch?? r??a v???ng t???ng b?????c qua t???ng giai ??o???n, ???? l?? chi???n l?????c ch???m m?? ch???c. H??y nh??? r???ng b???n ??ang ch???y ???????ng d??i ch??? kh??ng ph???i ch???y ti???p s???c, v??? n?????c r??t nh??.</p>","H???i th???o to??n c???u h??a: d???n ?????u hay b??? lo???i b????","","publish","open","open","","hoi-thao-toan-cau-hoa-dan-dau-hay-bi-bo-lai","","","2019-03-17 17:41:57","2019-03-17 10:41:57","","0","https://tppone.com/demo/edu5/?p=234","0","post","","0"),
("235","1","2019-03-17 16:10:27","2019-03-17 09:10:27","","IMG-7949","","inherit","open","closed","","img-7949","","","2019-03-17 16:10:27","2019-03-17 09:10:27","","234","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/IMG-7949.jpg","0","attachment","image/jpeg","0"),
("237","1","2019-03-17 16:11:08","2019-03-17 09:11:08","<div><strong>Ch???ng ???????ng 7 n??m ???? ??i qua c???a Langmaster EduTech Group ghi d???u nh???ng m???c ph??t tri???n v?? tr?????ng th??nh trong s??ng gi??. Ch??ng t??i t??? h??o v??? nh???ng gi?? tr??? ???? mang ?????n cho c???ng ?????ng v?? b???n l??nh ??i qua v?? v??n th??? th??ch.</strong></div>\n<div></div>\n<div>L??? k??? ni???m 7 n??m th??nh l???p Langmaster EduTech Group: Proud &amp; Brave ng??y 24/11 l?? d???p ????? ch??ng t??i c??ng nh??n l???i ch???ng ???????ng ???? qua, nh???ng ????ng g??p ???????c c???ng ?????ng ghi nh???n v?? h?????ng ?????n ?? th??nh c??ng m???i trong t????ng lai. Ch????ng tr??nh ???? mang ?????n nh???ng cung b???c c???m x??c v?? vinh h???nh nh???n ???????c s??? tham gia, ch??c m???ng c???a c??c kh??ch m???i.</div>\n<div></div>\n<div>Xin c???m ??n c??c ?????ng ?????i ???? lu??n ?????ng h??nh, g???n b?? c??ng nhau trong su???t th???i gian qua. Xin c???m ??n c??c kh??ch h??ng, ?????i t??c v?? nh???ng ng?????i b???n v?? ???? lu??n tin y??u v?? ???ng h??? ch??ng t??i.</div>\n<div></div>\n<div>Ch??ng ta t??? h??o v??? nh???ng gi?? tr??? ???? c??ng nhau ki???n t???o v?? tin t?????ng v??o con ???????ng ph??a tr?????c.</div>\n<div>H??y m???t l???n n???a c??ng nh??n l???i nh???ng d???u ???n, kho???nh kh???c ???n t?????ng v???a qua!</div>\n<div>\n<div>\n\nTr?????c 16h00 nh???ng kh??u t??? ch???c chu???n b??? cu???i c??ng ???? ???????c ho??n thi???n ????? mang ?????n??cho m???i ng?????i tham nh???ng ???n t?????ng ?????c bi???t nh???t\n\n</div>\n&nbsp;\n\n<img src=\"https://langmaster.edu.vn/public/files/post-upload/images/Sinh-nhat-Lang-24-11-2018/1---SN-Lang-2018.jpg\" alt=\"\" />\n<div>\n\n<em>Nh???ng h??nh ???nh ??i k??m v???i t??m nh?? c???a th??? h??? Langer hi???n t???i v??? ?????c m??</em>\n\n<em>m?? ch??ng m??nh mu???n c??ng Langmaster th???c hi???n trong n??m t???i</em>\n\nB?????c sang ph???n 2 c???a Ch????ng tr??nh n???i b???, t???t c??? m???i ng?????i ???? c?? c?? h???i c??ng nhau nh??n l???i h??nh tr??nh 7 n??m ???? qua. Nh???ng ni???m vui, nh???ng n???i bu???n, c??? nh???ng n??? l???c, c??? g???ng c???a t???t c??? ch??ng ta ?????u ???????c t??i hi???n l???i qua nh???ng video ?? ngh??a.\n\n</div>\n</div>","Proud & Brave: h??nh tr??nh 7 n??m t??? h??o v?? b???n l??nh","","publish","open","open","","proud-brave-hanh-trinh-7-nam-tu-hao-va-ban-linh","","","2019-03-17 17:41:34","2019-03-17 10:41:34","","0","https://tppone.com/demo/edu5/?p=237","0","post","","0"),
("238","1","2019-03-17 16:11:05","2019-03-17 09:11:05","","5---SN-Lang-2018","","inherit","open","closed","","5-sn-lang-2018","","","2019-03-17 16:11:05","2019-03-17 09:11:05","","237","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/5-SN-Lang-2018.jpg","0","attachment","image/jpeg","0"),
("240","1","2019-03-17 16:12:05","2019-03-17 09:12:05","<strong>T???i h???i tr???i Langmaster International Fair 2018, sinh vi??n ???? ???????c tham gia ho???t ?????ng giao l??u, t??m hi???u v??n h??a ????? trau d???i kh??? n??ng th???c h??nh ti???ng Anh.</strong>\n\nNh???m gi??p h???c vi??n l??m ch??? ti???ng Anh nh?? ng??n ng??? th??? 2, Langmaster lu??n tham kh???o c??c m?? h??nh ????o t???o v?? s??ng t???o th??m nhi???u ph????ng th???c hi???u qu???. H??? sinh th??i h???c ti???ng Anh to??n di???n 4CE c???a Langmaster g???m: class (l???p h???c), club (c??u l???c b???), e-study (c???ng h???c vi??n), community (ho???t ?????ng c???ng ?????ng), conference (h???i th???o v???i chuy??n gia). Trong ????, Langmaster International Fair 2018 l?? c?? h???i ????? h???c vi??n r??n luy???n kh??? n??ng th???c h??nh Anh ng???, ?????ng th???i t??m hi???u v??? n???n v??n h??a c???a c??c n?????c tr??n th??? gi???i.\n\nV???i m?? h??nh thi???t k??? nh?? m???t ng??y h???i l???n, s??? ki???n n??y c??ng l?? c?? h???i giao l??u, k???t n???i gi???ng vi??n, tr??? gi???ng v???i c??c h???c vi??n c??ng nhi???u ho???t ?????ng th?? v??? nh?? h???i tr???i, ch??? t??? thi???n, c??c gameshow v?? ho???t ?????ng bi???u di???n v??n ngh???. ????y c??ng l?? ho???t ?????ng tri ??n ????nh d???u ch???ng ???????ng 7 n??m ph??t tri???n c???a trung t??m. S??? ti???n thu ???????c t??? ho???t ?????ng mua b??n, kinh doanh trong h???i ch??? s??? ???????c chuy???n t???i c??c em nh??? v??ng cao kh?? kh??n trong T???t 2019.\n<div>V???i s??? tham d??? c???a g???n 600 h???c vi??n, 24 gian tr???i ?????i di???n cho 24 qu???c gia. C??c h???c vi??n c??ng chu???n b??? b??i thuy???t tr??nh ng???n v??? v??n h??a c??ng nh?? ?????c tr??ng c???a qu???c gia m??nh ch???n.</div>\nV?? ?????c Trung (??H B??ch khoa H?? N???i) chia s???: ???????y l?? d???p ????? sinh vi??n b???n m??nh giao l??u, trao ?????i b???ng ti???ng Anh, t??m hi???u v??? c??c n???n v??n h??a kh??c nhau tr??n th??? gi???i nh?? M???, Ai C???p, Canada, Nh???t B???n??? ????y c??n l?? cu???c thi n??n m???i ng?????i r???t h??o h???ng tham gia???.","Langmaster International Fair - ng??y h???i s??i ?????ng c???a gi???i tr???","","publish","open","open","","langmaster-international-fair-ngay-hoi-soi-dong-cua-gioi-tre","","","2019-03-17 17:37:53","2019-03-17 10:37:53","","0","https://tppone.com/demo/edu5/?p=240","0","post","","0"),
("241","1","2019-03-17 16:11:55","2019-03-17 09:11:55","","IMG-1403","","inherit","open","closed","","img-1403","","","2019-03-17 16:11:55","2019-03-17 09:11:55","","240","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/IMG-1403.jpg","0","attachment","image/jpeg","0"),
("268","1","2019-03-17 16:24:43","2019-03-17 09:24:43","","doitac-1","","inherit","open","closed","","doitac-1","","","2019-03-17 16:24:43","2019-03-17 09:24:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-1.png","0","attachment","image/png","0"),
("269","1","2019-03-17 16:25:00","2019-03-17 09:25:00","","doitac-2","","inherit","open","closed","","doitac-2","","","2019-03-17 16:25:00","2019-03-17 09:25:00","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-2.png","0","attachment","image/png","0"),
("270","1","2019-03-17 16:25:12","2019-03-17 09:25:12","","doitac-8","","inherit","open","closed","","doitac-8","","","2019-03-17 16:25:12","2019-03-17 09:25:12","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-8.png","0","attachment","image/png","0"),
("271","1","2019-03-17 16:25:22","2019-03-17 09:25:22","","doitac-4","","inherit","open","closed","","doitac-4","","","2019-03-17 16:25:22","2019-03-17 09:25:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-4.png","0","attachment","image/png","0"),
("272","1","2019-03-17 16:25:33","2019-03-17 09:25:33","","doitac-5","","inherit","open","closed","","doitac-5","","","2019-03-17 16:25:33","2019-03-17 09:25:33","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-5.png","0","attachment","image/png","0"),
("274","1","2019-03-17 16:25:44","2019-03-17 09:25:44","","doitac-6","","inherit","open","closed","","doitac-6","","","2019-03-17 16:25:44","2019-03-17 09:25:44","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-6.png","0","attachment","image/png","0"),
("275","1","2019-03-17 16:25:56","2019-03-17 09:25:56","","doitac-7","","inherit","open","closed","","doitac-7","","","2019-03-17 16:25:56","2019-03-17 09:25:56","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-7.png","0","attachment","image/png","0"),
("276","1","2019-03-17 16:26:07","2019-03-17 09:26:07","","doitac-3","","inherit","open","closed","","doitac-3","","","2019-03-17 16:26:07","2019-03-17 09:26:07","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/doitac-3.png","0","attachment","image/png","0"),
("279","1","2019-03-17 16:35:43","2019-03-17 09:35:43","","bg3","","inherit","open","closed","","bg3","","","2019-03-17 16:35:43","2019-03-17 09:35:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg3.jpg","0","attachment","image/jpeg","0"),
("284","1","2019-03-17 16:39:30","2019-03-17 09:39:30","<div class=\"form-lien-he\">\n<div class=\"left\">\n[text text-502 placeholder \"H??? t??n c???a b???n...\"]\n[tel tel-862 placeholder \"S??? ??i???n tho???i c???a b???n...\"]\n[text text-5356 placeholder \"?????a ch??? c???a ban...\"]\n</div>\n<div class=\"right\">\n[text text-504 placeholder \"H??? t??n ng?????i tham d???...\"]\n[text text-534 placeholder \"S??? ng?????i ????ng k?? tham d???...\"]\n[text text-55432434 placeholder \"Ghi ch?? th??m...\"]\n</div>\n[submit \"????ng k?? h???c th???\"]\n</div>\n1\nM???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com\n<wordpress@edu5.Webdemo.com>\nwebdemo@gmail.com\n- H??? t??n ng?????i li??n h???: [text-502]\n- H??? t??n ng?????i tham gia: [text-504]\n- ?????a ch???: [text-5356]\n- S??? ??i???n tho???i: [tel-862]\n- S??? ng?????i tham gia: [text-534]\n- Ghi ch?? th??m: [text-55432434]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/edu5)\n\n\n\n\n\nM???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com <wordpress@edu5.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website Tr???i h?? Ti???ng Anh - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/edu5)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","????ng k?? h???c th??? mi???n ph??","","publish","closed","closed","","form-lien-he-1","","","2019-03-17 18:16:10","2019-03-17 11:16:10","","0","https://tppone.com/demo/edu5/?post_type=wpcf7_contact_form&#038;p=284","0","wpcf7_contact_form","","0"),
("301","1","2019-03-17 16:55:18","2019-03-17 09:55:18","[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section1\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[title text=\"Fanpage Facebook\" color=\"rgb(86, 195, 255)\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"309\" image_size=\"original\" width=\"27\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 90%;\">Langmaster Learning system??- H??? th???ng hoc ti???ng Anh giao ti???p to??n di???n cho ng?????i m???i b???t ?????u.</span></p>\n[title text=\"Social Network\" color=\"rgb(86, 195, 255)\"]\n\n[follow style=\"fill\" facebook=\"#\" twitter=\"#\" email=\"#\" phone=\"#\" googleplus=\"#\"]\n\n<p><span style=\"font-size: 90%; color: #c0c0c0;\">Th???i gian m??? c???a: T??? 8:00 s??ng ?????n 5:00 chi???u</span><br /><span style=\"font-size: 90%; color: #c0c0c0;\">M??? c???a c??c ng??y trong tu???n t??? th??? Hai ?????n Ch??? Nh???t. L??u ??: M??? c???a c??? ng??y l???.</span></p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[title text=\"????ng k?? nh???n tin\" color=\"rgb(86, 195, 255)\"]\n\n<p id=\"dang-ky\"><span style=\"font-size: 90%; color: #c0c0c0;\">????? nh???n th??ng tin v??? c??c s??? ki???n ?????c bi???t v?? t??i li???u h???c ti???ng Anh giao ti???p mi???n ph??. B???n h??y ????? l???i cho ch??ng t??i th??ng tin li??n l???c.</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section2\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">??i???n tho???i: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: webdemo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">H??? tr??? k??? thu???t: DEMO<br />\n??i???n tho???i: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demoweb@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Chuy??n m??n ti???ng Anh: Mr. Lisa<br />\n??i???n tho???i: 01234.567.890</span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #c0c0c0;\"><span style=\"font-size: 11.52px;\">M???i th???c m???c v?? ?? ki???n ????ng g??p, xin vui l??ng g???i v??? ?????a ch??? h??m th??: donggop.Webdemo.com@gmail.com</span></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Section","","publish","closed","closed","","footer-section","","","2019-03-17 21:29:20","2019-03-17 14:29:20","","0","https://tppone.com/demo/edu5/?post_type=blocks&#038;p=301","0","blocks","","0"),
("309","1","2019-03-17 16:57:36","2019-03-17 09:57:36","","logo-3","","inherit","open","closed","","logo-3","","","2019-03-17 16:57:36","2019-03-17 09:57:36","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/logo-3.png","0","attachment","image/png","0"),
("337","1","2019-03-17 17:15:25","2019-03-17 10:15:25","","LOGO","","inherit","open","closed","","logo","","","2019-03-17 17:15:25","2019-03-17 10:15:25","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/LOGO.jpg","0","attachment","image/jpeg","0"),
("339","1","2019-03-17 17:15:55","2019-03-17 10:15:55"," ","","","publish","closed","closed","","339","","","2019-03-17 17:15:55","2019-03-17 10:15:55","","0","https://tppone.com/demo/edu5/?p=339","2","nav_menu_item","","0"),
("342","1","2019-03-17 17:24:22","2019-03-17 10:24:22","","bg","","inherit","open","closed","","bg","","","2019-03-17 17:24:22","2019-03-17 10:24:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg.png","0","attachment","image/png","0"),
("424","1","2019-03-17 18:40:57","2019-03-17 11:40:57","","bg_cover","","inherit","open","closed","","bg_cover","","","2019-03-17 18:40:57","2019-03-17 11:40:57","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg_cover.jpg","0","attachment","image/jpeg","0"),
("444","1","2019-03-17 18:59:31","2019-03-17 11:59:31","","phuong-phap-hoc-tieng-anh","","inherit","open","closed","","phuong-phap-hoc-tieng-anh","","","2019-03-17 18:59:31","2019-03-17 11:59:31","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/phuong-phap-hoc-tieng-anh.jpg","0","attachment","image/jpeg","0"),
("450","1","2019-03-17 19:00:59","2019-03-17 12:00:59","","ketqua-1","","inherit","open","closed","","ketqua-1","","","2019-03-17 19:00:59","2019-03-17 12:00:59","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/ketqua-1.jpg","0","attachment","image/jpeg","0"),
("461","1","2019-03-17 19:04:59","2019-03-17 12:04:59","","phuong-phap-2","","inherit","open","closed","","phuong-phap-2","","","2019-03-17 19:04:59","2019-03-17 12:04:59","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/phuong-phap-2.jpg","0","attachment","image/jpeg","0"),
("463","1","2019-03-17 19:06:06","2019-03-17 12:06:06","","phuong-phap-02","","inherit","open","closed","","phuong-phap-02","","","2019-03-17 19:06:06","2019-03-17 12:06:06","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/phuong-phap-02.jpg","0","attachment","image/jpeg","0"),
("470","1","2019-03-17 19:07:22","2019-03-17 12:07:22","","vande-1","","inherit","open","closed","","vande-1","","","2019-03-17 19:07:22","2019-03-17 12:07:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-1.png","0","attachment","image/png","0"),
("474","1","2019-03-17 19:08:09","2019-03-17 12:08:09","","vande-2","","inherit","open","closed","","vande-2","","","2019-03-17 19:08:09","2019-03-17 12:08:09","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-2.png","0","attachment","image/png","0"),
("478","1","2019-03-17 19:08:54","2019-03-17 12:08:54","","vande-3","","inherit","open","closed","","vande-3","","","2019-03-17 19:08:54","2019-03-17 12:08:54","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-3.png","0","attachment","image/png","0"),
("480","1","2019-03-17 19:09:27","2019-03-17 12:09:27","","vande-4","","inherit","open","closed","","vande-4","","","2019-03-17 19:09:27","2019-03-17 12:09:27","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/vande-4.png","0","attachment","image/png","0"),
("485","1","2019-03-17 19:11:04","2019-03-17 12:11:04","","bg54","","inherit","open","closed","","bg54","","","2019-03-17 19:11:04","2019-03-17 12:11:04","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/bg54.jpg","0","attachment","image/jpeg","0"),
("490","1","2019-03-17 19:12:15","2019-03-17 12:12:15","","lagi-1","","inherit","open","closed","","lagi-1","","","2019-03-17 19:12:15","2019-03-17 12:12:15","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lagi-1.jpg","0","attachment","image/jpeg","0"),
("498","1","2019-03-17 19:13:35","2019-03-17 12:13:35","","dia-diem-1","","inherit","open","closed","","dia-diem-1","","","2019-03-17 19:13:35","2019-03-17 12:13:35","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/dia-diem-1.png","0","attachment","image/png","0"),
("502","1","2019-03-17 19:14:32","2019-03-17 12:14:32","","dia-diem-2","","inherit","open","closed","","dia-diem-2","","","2019-03-17 19:14:32","2019-03-17 12:14:32","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/dia-diem-2.png","0","attachment","image/png","0"),
("506","1","2019-03-17 19:15:18","2019-03-17 12:15:18","","dia-diem-3","","inherit","open","closed","","dia-diem-3","","","2019-03-17 19:15:18","2019-03-17 12:15:18","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/dia-diem-3.png","0","attachment","image/png","0"),
("514","1","2019-03-17 19:17:10","2019-03-17 12:17:10","","lydo-1","","inherit","open","closed","","lydo-1","","","2019-03-17 19:17:10","2019-03-17 12:17:10","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-1.png","0","attachment","image/png","0"),
("519","1","2019-03-17 19:18:27","2019-03-17 12:18:27","","lydo-3","","inherit","open","closed","","lydo-3","","","2019-03-17 19:18:27","2019-03-17 12:18:27","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-3.png","0","attachment","image/png","0"),
("523","1","2019-03-17 19:19:22","2019-03-17 12:19:22","","lydo-5","","inherit","open","closed","","lydo-5","","","2019-03-17 19:19:22","2019-03-17 12:19:22","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-5.png","0","attachment","image/png","0"),
("527","1","2019-03-17 19:20:16","2019-03-17 12:20:16","","lydo-2","","inherit","open","closed","","lydo-2","","","2019-03-17 19:20:16","2019-03-17 12:20:16","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-2.png","0","attachment","image/png","0"),
("529","1","2019-03-17 19:21:01","2019-03-17 12:21:01","","lydo-4","","inherit","open","closed","","lydo-4","","","2019-03-17 19:21:01","2019-03-17 12:21:01","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-4.png","0","attachment","image/png","0"),
("531","1","2019-03-17 19:21:43","2019-03-17 12:21:43","","lydo-6","","inherit","open","closed","","lydo-6","","","2019-03-17 19:21:43","2019-03-17 12:21:43","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/lydo-6.png","0","attachment","image/png","0"),
("548","1","2019-03-17 19:28:11","2019-03-17 12:28:11","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/XYU4zkUP7Cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","f581454e02fadf689573da144df9ba4b","","","2019-03-17 19:28:11","2019-03-17 12:28:11","","0","https://tppone.com/demo/edu5/khong-phan-loai/f581454e02fadf689573da144df9ba4b/","0","oembed_cache","","0"),
("549","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/M9iJ2HG6br4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","24c976c5f70342643104b2a90132a542","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/24c976c5f70342643104b2a90132a542/","0","oembed_cache","","0"),
("550","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/KgoLWsb3VzI?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","2c11178e3dd97a3223c0d52dfad0f032","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/2c11178e3dd97a3223c0d52dfad0f032/","0","oembed_cache","","0"),
("551","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/yrsSw9txBC4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","2330698939e0f9f99f0379d674fd8ac6","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/2330698939e0f9f99f0379d674fd8ac6/","0","oembed_cache","","0"),
("552","1","2019-03-17 19:28:12","2019-03-17 12:28:12","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/UqnGvBrlyB4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","e033a564b4086ebbccb671b8e50aaa14","","","2019-03-17 19:28:12","2019-03-17 12:28:12","","0","https://tppone.com/demo/edu5/khong-phan-loai/e033a564b4086ebbccb671b8e50aaa14/","0","oembed_cache","","0"),
("553","1","2019-03-17 19:28:13","2019-03-17 12:28:13","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/t5gZ9DJu42c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","fc442f25a7d52e6f596a212e4b93d035","","","2019-03-17 19:28:13","2019-03-17 12:28:13","","0","https://tppone.com/demo/edu5/khong-phan-loai/fc442f25a7d52e6f596a212e4b93d035/","0","oembed_cache","","0"),
("559","1","2019-03-17 19:32:50","2019-03-17 12:32:50","","banner-tieng-anh-he","","inherit","open","closed","","banner-tieng-anh-he","","","2019-03-17 19:32:50","2019-03-17 12:32:50","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/banner-tieng-anh-he.jpg","0","attachment","image/jpeg","0"),
("563","1","2019-03-17 19:33:50","2019-03-17 12:33:50","","icon","","inherit","open","closed","","icon","","","2019-03-17 19:33:50","2019-03-17 12:33:50","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/icon.png","0","attachment","image/png","0"),
("589","1","2019-03-17 19:41:33","2019-03-17 12:41:33","","ratte","","inherit","open","closed","","ratte","","","2019-03-17 19:41:33","2019-03-17 12:41:33","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/ratte.png","0","attachment","image/png","0"),
("593","1","2019-03-17 19:42:25","2019-03-17 12:42:25","","ratte (1)","","inherit","open","closed","","ratte-1","","","2019-03-17 19:42:25","2019-03-17 12:42:25","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/ratte-1.png","0","attachment","image/png","0"),
("629","1","2019-03-17 21:23:04","2019-03-17 14:23:04","","iconfix-1","","inherit","open","closed","","iconfix-1","","","2019-03-17 21:23:04","2019-03-17 14:23:04","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/iconfix-1.png","0","attachment","image/png","0"),
("630","1","2019-03-17 21:23:32","2019-03-17 14:23:32","","iconfix-2","","inherit","open","closed","","iconfix-2","","","2019-03-17 21:23:32","2019-03-17 14:23:32","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/iconfix-2.png","0","attachment","image/png","0"),
("631","1","2019-03-17 21:23:56","2019-03-17 14:23:56","","iconfix-3","","inherit","open","closed","","iconfix-3","","","2019-03-17 21:23:56","2019-03-17 14:23:56","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/03/iconfix-3.png","0","attachment","image/png","0");
INSERT INTO gdd_posts VALUES
("633","1","2019-03-17 21:29:20","2019-03-17 14:29:20","[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section1\"]\n\n[row]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[title text=\"Fanpage Facebook\" color=\"rgb(86, 195, 255)\"]\n\n<p><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookforDevelopers&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186\" width=\"340\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"309\" image_size=\"original\" width=\"27\"]\n\n<p><span style=\"color: #c0c0c0; font-size: 90%;\">Langmaster Learning system??- H??? th???ng hoc ti???ng Anh giao ti???p to??n di???n cho ng?????i m???i b???t ?????u.</span></p>\n[title text=\"Social Network\" color=\"rgb(86, 195, 255)\"]\n\n[follow style=\"fill\" facebook=\"#\" twitter=\"#\" email=\"#\" phone=\"#\" googleplus=\"#\"]\n\n<p><span style=\"font-size: 90%; color: #c0c0c0;\">Th???i gian m??? c???a: T??? 8:00 s??ng ?????n 5:00 chi???u</span><br /><span style=\"font-size: 90%; color: #c0c0c0;\">M??? c???a c??c ng??y trong tu???n t??? th??? Hai ?????n Ch??? Nh???t. L??u ??: M??? c???a c??? ng??y l???.</span></p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[title text=\"????ng k?? nh???n tin\" color=\"rgb(86, 195, 255)\"]\n\n<p id=\"dang-ky\"><span style=\"font-size: 90%; color: #c0c0c0;\">????? nh???n th??ng tin v??? c??c s??? ki???n ?????c bi???t v?? t??i li???u h???c ti???ng Anh giao ti???p mi???n ph??. B???n h??y ????? l???i cho ch??ng t??i th??ng tin li??n l???c.</span></p>\n[contact-form-7 id=\"284\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(10, 21, 41)\" class=\"footer-section2\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">??i???n tho???i: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: webdemo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">H??? tr??? k??? thu???t: DEMO<br />\n??i???n tho???i: </span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demoweb@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Chuy??n m??n ti???ng Anh: Mr. Lisa<br />\n??i???n tho???i: 01234.567.890</span><br />\n<span style=\"font-size: 80%; color: #c0c0c0;\">Email: demo@gmail.com</span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #c0c0c0;\"><span style=\"font-size: 11.52px;\">M???i th???c m???c v?? ?? ki???n ????ng g??p, xin vui l??ng g???i v??? ?????a ch??? h??m th??: donggop.Webdemo.com@gmail.com</span></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Section","","inherit","closed","closed","","301-revision-v1","","","2019-03-17 21:29:20","2019-03-17 14:29:20","","301","https://tppone.com/demo/edu5/khong-phan-loai/301-revision-v1/","0","revision","","0"),
("636","1","2019-05-06 16:07:26","2019-05-06 09:07:26","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:07:26\"\n    }\n}","","","trash","closed","closed","","fcca33dc-e718-4d3b-af22-c6868d5dd874","","","2019-05-06 16:07:26","2019-05-06 09:07:26","","0","https://tppone.com/demo/edu5/khong-phan-loai/fcca33dc-e718-4d3b-af22-c6868d5dd874/","0","customize_changeset","","0"),
("637","1","2019-05-06 17:11:31","2019-05-06 10:11:31","","Print","","inherit","open","closed","","print","","","2019-05-06 17:11:31","2019-05-06 10:11:31","","0","https://tppone.com/demo/edu5/wp-content/uploads/2019/05/edu5.jpg","0","attachment","image/jpeg","0"),
("638","1","2019-05-06 17:11:36","2019-05-06 10:11:36","{\n    \"edu::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/edu5/wp-content/uploads/2019/05/edu5.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:11:36\"\n    }\n}","","","trash","closed","closed","","00e6f502-c30a-4cfa-91d0-9dc1b76a2ec2","","","2019-05-06 17:11:36","2019-05-06 10:11:36","","0","https://tppone.com/demo/edu5/khong-phan-loai/00e6f502-c30a-4cfa-91d0-9dc1b76a2ec2/","0","customize_changeset","","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("1","1","0"),
("46","2","0"),
("47","2","0"),
("48","2","0"),
("49","2","0"),
("50","2","0"),
("53","2","0"),
("58","3","0"),
("59","3","0"),
("60","3","0"),
("225","4","0"),
("225","5","0"),
("228","4","0"),
("231","4","0"),
("234","4","0"),
("234","6","0"),
("237","7","0"),
("240","7","0"),
("240","8","0"),
("339","3","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_taxonomy VALUES
("1","1","category","","0","1"),
("2","2","nav_menu","","0","6"),
("3","3","nav_menu","","0","4"),
("4","4","category","","0","4"),
("5","5","post_tag","","0","1"),
("6","6","post_tag","","0","1"),
("7","7","category","","0","2"),
("8","8","post_tag","","0","1");




CREATE TABLE `gdd_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_terms VALUES
("1","Ch??a ???????c ph??n lo???i","khong-phan-loai","0"),
("2","Main menu","main-menu","0"),
("3","Topbar menu","topbar-menu","0"),
("4","S??? ki???n","su-kien","0"),
("5","T??? thi???n","tu-thien","0"),
("6","to??n c???u h??a","toan-cau-hoa","0"),
("7","Tin t???c","tin-tuc","0"),
("8","Ng??y h???i ti???ng anh","ngay-hoi-tieng-anh","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_usermeta VALUES
("1","1","nickname","Webdemo.com"),
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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:8:{s:64:\"35c29b4de1224c499aa8346124fffd1118bddc433ccc20569f0f9cf58c7f61a5\";a:4:{s:10:\"expiration\";i:1557485186;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557312386;}s:64:\"47b8652910300d6244fe4254362db93c70f94c4f22ad6738e01ca344feaf40a9\";a:4:{s:10:\"expiration\";i:1557616266;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443466;}s:64:\"403d587bd564a5c721efa457f2289e93672ab5d0a213a0a2d97c4bfaa4305e39\";a:4:{s:10:\"expiration\";i:1557625584;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452784;}s:64:\"bc75972c8b9160c556a990b60ed557e121ae5094993bd2ead94b819dfbdb95cb\";a:4:{s:10:\"expiration\";i:1557628041;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455241;}s:64:\"fa6b1312fd4f5456cff219cc48acceeb745293a947bda0b076d6459f512a1e61\";a:4:{s:10:\"expiration\";i:1557628469;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455669;}s:64:\"f7fe2098e3191f6ac79d272cc649f80db53da2d49b377e9177ecbabf34260fa8\";a:4:{s:10:\"expiration\";i:1557633278;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557460478;}s:64:\"fbc35245dd26ae8df2cf130c25ae3267c0d28c9161d3106260789822c7b1b6b5\";a:4:{s:10:\"expiration\";i:1557636883;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557464083;}s:64:\"8c7bd3c724b3bbf5bed26dde142f5420f799cefab6c8aaab603af5372f5f2f04\";a:4:{s:10:\"expiration\";i:1557649371;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557476571;}}"),
("17","1","gdd_dashboard_quick_press_last_post_id","635"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","gdd_user-settings-time","1557452783"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","2"),
("25","1","ed_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:597:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 100%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;settings-updated=true&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:889:\"Ch??ng t??i nh???n th???y b???n ???? s??? d???ng Yoast SEO ???????c m???t th???i gian; ch??ng t??i mong b???n y??u th??ch n??! Ch??ng t??i s??? v?? c??ng c???m ?????ng n???u b???n c?? th??? <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=49\">cho ch??ng t??i m???t ????nh gi?? 5 sao tr??n WordPress.org</a>!\n\nN???u b???n g???p ph???i s??? c???, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=49\">vui l??ng g???i b??o c??o l???i</a> v?? ch??ng t??i s??? c??? h???t s???c ????? gi??p b???n.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/edu5/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Kh??ng hi???n th??? nh???ng th??ng b??o n??y n???a</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:239:\"?????ng b??? qua l???i m??y t??m ki???m thu th???p th??ng tin trang web c???a b???n:  <a href=\"https://bizhostvn.com/w/edu5/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> k???t n???i v???i Google Search Console ??? ????y </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:256:\"<strong>L???i SEO nghi??m tr???ng: B???n ??ang ch???n truy c???p t???i robots.</strong> B???n ph???i <a href=\"https://bizhostvn.com/w/edu5/wp-admin/options-reading.php\">t???i m???c ?????c</a> v?? b??? ????nh d???u T????ng t??c v???i c??ng c??? t??m ki???m.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO x??c ?????nh b???n ??ang s??? d???ng phi??n b???n 9.1 c???a Yoast SEO Premium, h??y c???p nh???t l??n phi??n b???n m???i nh???t.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
("27","1","duplicator_pro_created_format","1");




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
("1","admin","$P$B3UiFKXMOiaQDMg.yh8IPMEX5F0KOb/","admin","demobz@gmail.com","","2019-03-16 03:19:13","","0","admin");




CREATE TABLE `gdd_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_links VALUES
("17","https://Webdemo.com/","27","0","external"),
("18","http://Webdemo.com/","27","0","external"),
("39","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/IMG-1403.jpg","41","0","internal"),
("40","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/5-SN-Lang-2018-1024x683.jpg","41","0","internal"),
("41","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/IMG-7949.jpg","41","0","internal"),
("42","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/Bell_Cambridge_Classroom-copia-2.jpg","41","0","internal"),
("43","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/DSC-2759.jpg","41","0","internal"),
("44","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/DSC-3797-compressed.jpg","41","0","internal"),
("45","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/giangvien-13.jpg","41","0","internal"),
("46","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/giangvien-5.jpg","41","0","internal"),
("47","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/giangvien-3.jpg","41","0","internal"),
("48","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/pic1.jpg","41","0","internal"),
("118","/lien-he","29","27","internal"),
("167","#","31","0","internal"),
("168","#","31","0","internal"),
("169","#","31","0","internal"),
("170","#","31","0","internal"),
("171","#","31","0","internal"),
("172","#","31","0","internal"),
("173","#","31","0","internal"),
("174","#","31","0","internal"),
("175","#","31","0","internal"),
("176","#","31","0","internal"),
("177","#","31","0","internal"),
("178","#","31","0","internal"),
("179","https://Webdemo.com/","33","0","external"),
("180","http://Webdemo.com/","33","0","external"),
("245","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("246","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("247","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte-1.png","37","0","internal"),
("248","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("249","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte-1.png","37","0","internal"),
("250","https://bizhostvn.com/w/edu5/wp-content/uploads/2019/03/ratte.png","37","0","internal"),
("251","#","301","0","internal"),
("252","#","301","0","internal"),
("253","mailto:#","301","0","external"),
("254","tel:#","301","0","external"),
("255","#","301","0","internal");




CREATE TABLE `gdd_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_meta VALUES
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
("16","0","0"),
("17","0","0"),
("18","0","0"),
("20","0","0"),
("22","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("27","0","1"),
("28","0","0"),
("29","1","0"),
("30","0","0"),
("31","12","0"),
("32","0","0"),
("33","0","0"),
("34","0","0"),
("35","0","0"),
("36","0","0"),
("37","6","0"),
("38","0","0"),
("39","0","0"),
("40","0","0"),
("41","10","0"),
("42","0","0"),
("43","0","0"),
("54","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
("61","0","0"),
("62","0","0"),
("63","0","0"),
("64","0","0"),
("65","0","0"),
("66","0","0"),
("67","0","0"),
("68","0","0"),
("69","0","0"),
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
("113","0","0"),
("114","0","0"),
("115","0","0"),
("116","0","0"),
("117","0","0"),
("118","0","0"),
("119","0","0"),
("120","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0"),
("126","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("137","0","0"),
("138","0","0"),
("139","0","0"),
("140","0","0"),
("141","0","0"),
("142","0","0"),
("143","0","0"),
("144","0","0"),
("145","0","0"),
("146","0","0"),
("147","0","0"),
("149","0","0"),
("150","0","0"),
("151","0","0"),
("152","0","0"),
("153","0","0"),
("155","0","0"),
("157","0","0"),
("159","0","0"),
("160","0","0"),
("161","0","0"),
("162","0","0"),
("163","0","0"),
("164","0","0"),
("165","0","0"),
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
("177","0","0"),
("178","0","0"),
("179","0","0"),
("180","0","0"),
("181","0","0"),
("182","0","0"),
("183","0","0"),
("184","0","0"),
("185","0","0"),
("186","0","0"),
("187","0","0"),
("188","0","0"),
("189","0","0"),
("190","0","0"),
("191","0","0"),
("192","0","0"),
("193","0","0"),
("194","0","0"),
("195","0","0"),
("196","0","0"),
("197","0","0"),
("198","0","0"),
("199","0","0"),
("200","0","0"),
("202","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("208","0","0"),
("209","0","0"),
("210","0","0"),
("211","0","0"),
("212","0","0"),
("213","0","0"),
("214","0","0"),
("215","0","0"),
("217","0","0"),
("219","0","0"),
("220","0","0"),
("221","0","0"),
("223","0","0"),
("224","0","0"),
("225","0","0"),
("227","0","0"),
("228","0","0"),
("230","0","0"),
("231","0","0"),
("233","0","0"),
("234","0","0"),
("236","0","0"),
("237","0","0"),
("239","0","0"),
("240","0","0"),
("242","0","0"),
("243","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("258","0","0"),
("259","0","0"),
("260","0","0"),
("261","0","0"),
("262","0","0"),
("263","0","0"),
("264","0","0"),
("265","0","0"),
("266","0","0"),
("267","0","0"),
("273","0","0"),
("277","0","0"),
("278","0","0"),
("280","0","0"),
("281","0","0"),
("282","0","0"),
("283","0","0"),
("285","0","0"),
("286","0","0"),
("287","0","0"),
("288","0","0"),
("289","0","0"),
("290","0","0"),
("291","0","0"),
("292","0","0"),
("293","0","0"),
("294","0","0"),
("295","0","0"),
("296","0","0"),
("297","0","0"),
("298","0","0"),
("299","0","0"),
("300","0","0"),
("301","3","0"),
("302","0","0"),
("303","0","0"),
("304","0","0"),
("305","0","0"),
("306","0","0"),
("307","0","0"),
("308","0","0"),
("310","0","0"),
("311","0","0"),
("312","0","0"),
("313","0","0"),
("314","0","0"),
("315","0","0"),
("316","0","0"),
("317","0","0"),
("318","0","0"),
("319","0","0"),
("320","0","0"),
("321","0","0"),
("322","0","0"),
("323","0","0"),
("324","0","0"),
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
("338","0","0"),
("340","0","0"),
("343","0","0"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("348","0","0"),
("349","0","0"),
("350","0","0"),
("351","0","0"),
("352","0","0"),
("353","0","0"),
("354","0","0"),
("355","0","0"),
("356","0","0"),
("357","0","0"),
("358","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("359","0","0"),
("360","0","0"),
("361","0","0"),
("362","0","0"),
("363","0","0"),
("364","0","0"),
("365","0","0"),
("366","0","0"),
("367","0","0"),
("368","0","0"),
("369","0","0"),
("370","0","0"),
("371","0","0"),
("372","0","0"),
("373","0","0"),
("374","0","0"),
("375","0","0"),
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
("408","0","0"),
("409","0","0"),
("410","0","0"),
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
("425","0","0"),
("426","0","0"),
("427","0","0"),
("428","0","0"),
("429","0","0"),
("430","0","0"),
("431","0","0"),
("432","0","0"),
("433","0","0"),
("434","0","0"),
("435","0","0"),
("436","0","0"),
("437","0","0"),
("438","0","0"),
("439","0","0"),
("440","0","0"),
("441","0","0"),
("442","0","0"),
("443","0","0"),
("445","0","0"),
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","0","0"),
("451","0","0"),
("452","0","0"),
("453","0","0"),
("454","0","0"),
("455","0","0"),
("456","0","0"),
("457","0","0"),
("458","0","0"),
("459","0","0"),
("460","0","0"),
("462","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("464","0","0"),
("465","0","0"),
("466","0","0"),
("467","0","0"),
("468","0","0"),
("469","0","0"),
("471","0","0"),
("472","0","0"),
("473","0","0"),
("475","0","0"),
("476","0","0"),
("477","0","0"),
("479","0","0"),
("481","0","0"),
("482","0","0"),
("483","0","0"),
("484","0","0"),
("486","0","0"),
("487","0","0"),
("488","0","0"),
("489","0","0"),
("491","0","0"),
("492","0","0"),
("493","0","0"),
("494","0","0"),
("495","0","0"),
("496","0","0"),
("497","0","0"),
("499","0","0"),
("500","0","0"),
("501","0","0"),
("503","0","0"),
("504","0","0"),
("505","0","0"),
("507","0","0"),
("508","0","0"),
("509","0","0"),
("510","0","0"),
("511","0","0"),
("512","0","0"),
("513","0","0"),
("515","0","0"),
("516","0","0"),
("517","0","0"),
("518","0","0"),
("520","0","0"),
("521","0","0"),
("522","0","0"),
("524","0","0"),
("525","0","0"),
("526","0","0"),
("528","0","0"),
("530","0","0"),
("532","0","0"),
("533","0","0"),
("534","0","0"),
("535","0","0"),
("536","0","0"),
("537","0","0"),
("538","0","0"),
("539","0","0"),
("540","0","0"),
("541","0","0"),
("542","0","0"),
("543","0","0"),
("544","0","0"),
("545","0","0"),
("546","0","0"),
("547","0","0"),
("554","0","0"),
("555","0","0"),
("556","0","0"),
("557","0","0"),
("558","0","0"),
("560","0","0"),
("561","0","0"),
("562","0","0"),
("564","0","0"),
("565","0","0"),
("566","0","0"),
("567","0","0"),
("568","0","0"),
("569","0","0"),
("570","0","0"),
("571","0","0"),
("572","0","0"),
("573","0","0"),
("574","0","0"),
("575","0","0"),
("576","0","0"),
("577","0","0"),
("578","0","0"),
("579","0","0"),
("580","0","0"),
("581","0","0"),
("582","0","0"),
("583","0","0"),
("584","0","0"),
("585","0","0"),
("586","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("587","0","0"),
("588","0","0"),
("590","0","0"),
("591","0","0"),
("592","0","0"),
("594","0","0"),
("595","0","0"),
("596","0","0"),
("597","0","0"),
("598","0","0"),
("599","0","0"),
("600","0","0"),
("601","0","0"),
("602","0","0"),
("603","0","0"),
("604","0","0"),
("605","0","0"),
("606","0","0"),
("607","0","0"),
("608","0","0"),
("609","0","0"),
("610","0","0"),
("611","0","0"),
("612","0","0"),
("613","0","0"),
("614","0","0"),
("615","0","0"),
("616","0","0"),
("617","0","0"),
("618","0","0"),
("619","0","0"),
("620","0","0"),
("621","0","0"),
("622","0","0"),
("623","0","0"),
("624","0","0"),
("625","0","0"),
("626","0","0"),
("627","0","0"),
("628","0","0"),
("632","0","0"),
("634","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;