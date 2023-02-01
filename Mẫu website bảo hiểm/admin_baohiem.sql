SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w49`
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






CREATE TABLE `gdd_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/baohiem\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1554350930,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960259,\"initial_activation_timestamp\":1554350941,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025850,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/baohiem","yes"),
("2","home","https://bizhostvn.com/w/baohiem","yes"),
("3","blogname","baohiem","yes"),
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
("28","permalink_structure","/%postname%/","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:3:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:94:\"/home/tppone/domains/tppone.com/public_html/demo/baohiem/wp-content/themes/flatsome/footer.php\";i:2;s:94:\"/home/tppone/domains/tppone.com/public_html/demo/baohiem/wp-content/themes/flatsome/header.php\";i:3;s:93:\"/home/tppone/domains/tppone.com/public_html/demo/baohiem/wp-content/themes/flatsome/style.css\";i:4;s:93:\"/home/tppone/domains/tppone.com/public_html/demo/baohiem/wp-content/themes/bao-hiem/style.css\";i:5;s:97:\"/home/tppone/domains/tppone.com/public_html/demo/baohiem/wp-content/themes/bao-hiem/functions.php\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","bao-hiem","yes"),
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
("78","widget_categories","a:2:{i:3;a:4:{s:5:\"title\";s:22:\"Danh mục bài viết\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}","no"),
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
("93","initial_db_version","43764","yes"),
("94","gdd_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:12:\"categories-3\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:13:\"media_image-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:2:{i:2;a:15:{s:13:\"attachment_id\";i:962;s:3:\"url\";s:76:\"https://bizhostvn.com/w/baohiem/wp-content/uploads/2019/04/widget-banner.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:400;s:6:\"height\";i:750;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1557907890;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557910330;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557947490;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557984262;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557990782;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557992013;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("126","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1554102712;}","no"),
("145","new_admin_email","webdemo@gmail.com","yes"),
("149","db_upgraded","","yes"),
("154","can_compress_scripts","0","no"),
("157","recently_activated","a:4:{s:23:\"wp-rocket/wp-rocket.php\";i:1557027424;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557027422;s:30:\"db-prefix-change/db_prefix.php\";i:1557026634;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025852;}","yes"),
("158","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1554102959;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("159","current_theme","Bảo hiểm","yes"),
("160","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 01 Apr 2019 07:15:59 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1554102977;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("161","theme_switched","","yes"),
("162","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:24:\"Bài viết mới nhất\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("163","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("165","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("166","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("167","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("168","flatsome_wup_buyer","trannguyen886","yes"),
("169","allowedthemes","a:1:{s:8:\"bao-hiem\";b:1;}","no"),
("170","fl_has_child_theme","bao-hiem","yes"),
("172","theme_mods_bao-hiem","a:122:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:1:{i:0;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"contact\";i:1;s:6:\"search\";i:2;s:6:\"social\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:6:\"search\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:1:{i:0;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:0:\"\";s:15:\"follow_facebook\";s:29:\"https://www.facebook.com/demo\";s:16:\"follow_instagram\";s:0:\"\";s:12:\"follow_email\";s:0:\"\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:14:\"primary_mobile\";i:5;s:6:\"footer\";i:4;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 01 Apr 2019 07:16:19 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:4025:\"<style>\n.box_fixRight {\n    position: fixed;\n    top: 190px;\n    right: -167px;\n    width: auto;\n    transition: all 0.2s ease-in-out 0s;\n    z-index: 999;\n}\n.hotline-footer{display:none}\n.box_fixRight .box_content {\n    background: #83b614;\n    padding: 0;\n    border-radius: 0;\n}\n.box_fixRight .box_content .item {\n    display: block;\n    padding: 8px 9px 8px 47px;\n    color: #fff;\n    border-bottom: 1px solid #92c524;\n    font-size: 15px;\n}\n.box_fixRight .box_content .item:hover{background-color:#709e0d !important}\n.box_fixRight .box_content .item.item_1 {\n    background-image: url(/wp-content/uploads/2019/04/icon1.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_2 {\n    background-image: url(/wp-content/uploads/2019/04/icon2.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_3 {\n    background-image: url(/wp-content/uploads/2019/04/icon3.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_4 {\n    background-image: url(/wp-content/uploads/2019/04/icon4.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_5 {\n    background-image: url(/wp-content/uploads/2019/04/icon5.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight:hover {\n    right: 0;\n    transition: all 0.2s ease-in-out 0s;\n}\n@media (max-width: 549px){.hotline-footer{display:block; position:fixed; bottom:0; width:100%; height:50px; z-index:99; background:rgba(0,0,0,0.6)}\n.hotline-footer .left{    width: 65%;\n    float: left;\n    height: 100%;\n    color: white;\n    line-height: 43px;\n    text-align: center;}\n.hotline-footer .right{    width: 35%;\n    float: right;\n    height: 100%;\n    line-height: 43px;\n    text-align: center;}.absolute-footer{font-size:13px}\n.blog-single .large-9, .blog-single .large-3{    flex-basis: 100%;\n max-width: 100%;}.blog-single .large-3{padding-left:15px; font-size:15px}\n \n.blog-single .large-3 .widget-area .section4{display:none}.tin-tuc-section .cot1-2{display:none}.hotline-footer a{color:white}\n.hotline-footer a{display:block;}.hotline-footer .left a{    background: #0082d0;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}.hotline-footer .right a{background: #3fb801;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}\n.hotline-footer .left img, .hotline-footer .right img{width:30px;    padding-right: 10px;}\n.box_fixRight{display:none}\n}\n</style>\n<div class=\"box_fixRight\">\n<div class=\"box_content\">\n<a href=\"/nop-ho-so-truc-tuyen/\" class=\"item item_1\">Nộp hồ sơ trực tuyến</a>\n<a href=\"/dong-phi-bao-hiem/\" class=\"item item_2\">Đóng phí bảo hiểm</a>\n<a href=\"#dang-ky\" class=\"item item_3\">Đăng ký mua bảo hiểm</a>\n<a href=\"/mau-don-thong-dung/\" class=\"item item_4\">Mẫu đơn thông dụng</a>\n<a href=\"/lien-he/\" class=\"item item_5\">Liên hệ</a>\n</div>\n</div>\n<div class=\"float-contact\">\n<button class=\"chat-zalo\"><a href=\"http://zalo.me/0909009009\">Chat Zalo</a></button>\n<button class=\"chat-face\"><a href=\"http://m.me/demo\">Chat Facebook</a></button>\n<button class=\"hotline\"><a href=\"tel:\">Hotline: 0909000000</a></button>\n</div>\n<div class=\"hotline-footer\">\n<div class=\"left\">\n<a href=\"https://messenger.com/t/demo\" ><img src=\"/wp-content/uploads/2019/04/icon-1.png\"/>Chat với tư vấn viên</a>\n</div>\n<div class=\"right\">\n<a href=\"tel:0909009009\"><img src=\"/wp-content/uploads/2019/04/phone-icon-2.png\"/>Gọi ngay</a>\n</div>\n<div class=\"clearboth\"></div>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:15841:\"@font-face {\n    font-family: \'SVN-Poppins\';\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.eot\');\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.woff\') format(\'woff\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.ttf\') format(\'truetype\');\n    font-weight: normal;\n    font-style: normal;\n}\n\n@font-face {\n    font-family: \'/wp-content/themes/bao-hiem/font/SVN-Poppins\';\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.eot\');\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.woff\') format(\'woff\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.ttf\') format(\'truetype\');\n    font-weight: 500;\n    font-style: normal;\n}\n\n@font-face {\n    font-family: \'SVN-Poppins\';\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.eot\');\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.woff\') format(\'woff\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.ttf\') format(\'truetype\');\n    font-weight: bold;\n    font-style: normal;\n}\nh1,h2,h3,h4,h5,h6{font-family:\"SVN-Poppins\"; font-weight:bold}\n.nav li a{font-family:\"SVN-Poppins\"; font-weight:normal; font-size:15px;text-transform:none}\n\n.nav li{margin:0;}\n.nav li a{ padding-left:25px; padding-right:25px}\n.header-main .nav > li > a{color:white !important}\n.header-main .nav > li.has-icon > a:hover{color:#83b614 !important}\n.button.back-to-top{background: #73a833;\n    color: white;\n    border: 0;}\n\n\n.header-nav .icon-phone:before{font-size: 20px;\n    color: #73a833;}\nbody{font-family:\"roboto\", sans-serif; font-weight:normal; color:black}\n.header-nav .icon-facebook{background: #1f7fbf;\n    padding: 9px 10px !important;\n    border-radius: 99%;}\n\n.header-nav .icon-youtube{background: #d90000;\n    padding: 9px 10px !important;\n    border-radius: 99%;}\n.social-icons a, .header-search a{padding-left:2px !important; padding-right:2px !important}\n.icon-search{    padding: 6px 8px !important;\n    border-radius: 99%;\n    border: 1px solid white;}\n.header-main .has-dropdown .icon-angle-down{display:none}\n\n.nav li.ve-chung-toi{background: url(/wp-content/uploads/2019/04/ve-chung-toi.png);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 0px !important;}\n.nav li.san-pham{background: url(/wp-content/uploads/2019/04/sp.png);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 0px !important;}\n.nav li.ho-tro{background: url(/wp-content/uploads/2019/04/ho-tro.png);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 0px !important;}\n.nav-dropdown { border:0}\n.ve-chung-toi .nav-dropdown.nav-dropdown-default>li{ float:left; display:inline-block}\n.nav-dropdown>li.nav-dropdown-col{width: 33.33%;\n    min-width: 33.33%;}\n.nav-column li>a{padding: 6px 20px;}.nav-dropdown-default .nav-column li>a, .nav-dropdown.nav-dropdown-default>li>a{\n    border-bottom: none;}\n.nav-dropdown-default .nav-column li>a{color: #004fb6;\n    font-size: 15px;}\n.nav-dropdown-default .nav-column li>a:hover{text-decoration:underline}\n.nav-dropdown .menu-item-has-children>a{    text-transform: none;\n    font-size: 17px;\n    font-weight: 600;\n    color: #494949;}\n.notice-banner{background: #0000008c;\n    padding: 20px;\n    border-radius: 5px;\n}\n\n.notice-banner p, .dang-ky-tu-van p{margin-bottom:0; font-family: \"SVN-Poppins\";}\n.notice-banner a{padding-top: 10px;\n    display: inline-block; color: #83b614;\n    text-decoration: underline;\n    font-size: 15px;}\n.notice-banner h2{    color: #83b614;\n    font-size: 37px;}\n.transparent .header-main {\n    \n    background-image: linear-gradient(black, rgba(0, 0, 0, 0));\n}\n.dang-ky-tu-van h2{margin-bottom:8px}\n.dang-ky-tu-van p{margin-bottom:0}\n.dang-ky-tu-van .nut-dang-ky-tu-van{  font-family: \"SVN-Poppins\";\n    background: white;\n    border: 0;\n    line-height: 47px;\n    font-weight: normal;\n    font-size: 16px;\n    color: #83b614;\n    text-transform: uppercase !important;    margin: 0;\n    margin-top: 9px;}\n.dang-ky-tu-van .col, .nhu-cau .col,.row-tieu-de-2 .col{padding-bottom:0}\n.dang-ky-tu-van .nut-dang-ky-tu-van:hover{background:#1d3a5f}\n.section-title b {\n    background-color: #ffffff00;\n}.section-title-container {\n    margin-bottom: 0;\n}\n.nhu-cau .icon-box .icon-box-img{margin-bottom:10px !important}\n.nhu-cau .icon-box .icon-box-text h3{padding-bottom: 7px;\n       font-weight: normal;\n    line-height: 23px;\n    color: white;\n    font-family: \"roboto\", sans-serif;}\n.nhu-cau .cot1 .icon-box{background:#ffa000; padding:10px; border-radius:5px; padding:10px; }\n.nhu-cau .cot2 .icon-box {\n    background: #59b337;\n    padding: 10px;\n    border-radius: 5px;\n    padding: 10px;\n}\n.nhu-cau .cot3 .icon-box {\n    background: #2098d1;\n    padding: 10px;\n    border-radius: 5px;\n    padding: 10px;\n}\n.nhu-cau .cot4 .icon-box {\n    background: #c9077f;\n    padding: 10px;\n    border-radius: 5px;\n    padding: 10px;\n}\n.tin-tuc .large-12{padding-bottom:0}\n.tin-tuc .box-vertical .box-text{padding:0 ;padding-left:15px}\n.tin-tuc .post-item .col-inner{    background: white;\n    padding: 10px;\n    border-radius: 5px;}\n.box-blog-post .is-divider{display:none}\n.tin-tuc .box-vertical .box-text .post-title:hover, .tin-tuc .large-12 .post-item .post-title:hover, .footer-section a:hover{color:#83b614 !important}\n.footer-section .col{padding-bottom:0}\n.absolute-footer.dark {\n    border-top: 1px solid #3a3a3a;\n}\n.tin-tuc .box-vertical .box-text .post-title{margin-bottom: 10px;\n    color: #0f72b3;\n    text-transform: none;\n    font-family: \"roboto\", sans-serif;}\n.flickity-prev-next-button svg{    background: white;\n    border-radius: 99%;\n    box-shadow: 1px 2px 10px #c7c7c7;}\n.tin-tuc .large-12 .post-item .post-title{    height: 39px;\n    overflow: hidden;\n    margin-bottom: 9px;\n    color: #0d69a7;\n    font-size: 16px;\n    font-family: \"roboto\",sans-serif;}\n.doi-tac .icon-box{box-shadow: 0px -8px 17px #dedede;\n    height: 155px;\n    padding: 10px 0;}\n.copyright-footer, .footer-secondary {\n    padding: 0;\n    font-size: 13px;\n}\n.nop-ho-so-truc-tuyen .chung-tu .medium-3 .col-inner{min-height:377px; border: 1px solid #e1e1e1;\n    background: white;}\n.chung-tu{padding-top:40px !important}\n.nop-ho-so-truc-tuyen .chung-tu ol{    padding: 0 10px;\n    font-size: 15px;}\n.nop-ho-so-truc-tuyen .chung-tu .benh-hiem-ngheo h3{background:#1f7fbf; line-height:48px}\n.nop-ho-so-truc-tuyen .chung-tu .thuong-tat h3{background:#ed7e14; }\n.nop-ho-so-truc-tuyen .chung-tu .tu-vong h3{background:#d81673; line-height:48px}\n.nop-ho-so-truc-tuyen .chung-tu h3{     min-height: 70px; font-family:\"roboto\", sans-serif;   padding: 10px;\n    line-height: 25px;\n    text-align: center;\n    color: white;\n    font-weight: normal;\n    font-size: 19px;}\n.nop-ho-so-truc-tuyen .chung-tu .chi-phi-nam-vien h3{background: #83b614;}\n.nop-ho-so-truc-tuyen .chung-tu{    background: #f4f7fc;\n    padding: 20px;}\n.giai-quyet-quyen-loi .buoc1 .col-inner{background: #83b614;\n    padding: 20px;}\n.giai-quyet-quyen-loi .icon-box h3{margin-top:-20px; margin-bottom: 0;\n    color: white;\n    font-size: 30px;}\n.giai-quyet-quyen-loi .icon-box p{    font-size: 15px;\n    color: white;\n    margin-top: -10px;}\n.thoi-gian-phuc-dap{background:#f4f7fc; padding:20px}\n.thoi-gian-phuc-dap .col{padding-bottom:0}\n.cac-mau-don .tabbed-content .nav-tabs>li{margin-bottom:0}\n.cac-mau-don .nav-tabs>li>a {\n    border-top: 0;\n    border-left: 0;\n    border-right: 1px solid #9ecb3c;\n    background-color: #83b614;\n    padding-left: 15px;\n    padding-right: 15px;\n    color: white;\n}\n.cac-mau-don .nav-tabs+.tab-panels {\n    border: 0;\n    background-color: #fff;\n    padding: 10px 0;\n}\n.cac-mau-don h2{margin-bottom:0}\n.cac-mau-don h2 a{font-family:\"roboto\", sans-serif; font-size:15px}\n.cac-mau-don .table tr th {\n    font-size: 1rem;\n    font-weight: 600;\n    text-transform: uppercase;\n    color: #ffffff;\n    background-color: #83b614;\n    border: 1px solid #ffffff;\n    text-align: center;\n    padding: 10px 15px;\n}\n.cac-mau-don .table tr td {\n    font-size: 0.9375rem;\n    font-weight: 600;\n    line-height: 1.4;\n    color: #333333;\n    vertical-align: middle;\n    text-align: center;\n    padding: 2px 15px;\n    border: 1px solid #e6e6e6;\n}\n.nav-tabs > li.active > a {\n     background: #1d3a5f !important;\n}\n.cac-mau-don .tabbed-content .nav{    background: #83b614;}\n.giai-quyet-quyen-loi .buoc2 .col-inner {\n    background:#1f7fbf;\n    padding: 20px;\n}\n.giai-quyet-quyen-loi .buoc3 .col-inner {\n    background: #ed7e14;\n    padding: 20px;\n}\n.lien-he-section .cot1 .col-inner{background:#f9f9f9; height:436px}\n.lien-he-section .cot1 ul, .lien-he-section .cot1 h4{padding:0 10px; margin-bottom:4px}\n.lien-he-section .cot1 .contact-title h3{background: #83b614;\n    color: white;\n    padding: 15px;\n    text-align: center;\n    text-transform: uppercase;}\n.banner-row .col{padding-bottom:0}\n.row-tieu-de {background:#83b614; padding:20px}\n\n.row-tieu-de .icon-box .icon-box-text p{padding-top:10px; color:white}\n.row-tieu-de .col{padding-bottom:0; flex-basis:20%; max-width:20%}\n.row-banner-cuoi{    background: #eafffd;\n    padding: 20px;}\n.tieu-de-box h2:before{content: \'\';\n    background: url(/wp-content/uploads/2019/04/quote_icon-1.png) 0 0 no-repeat;\n    width: 75px;\n    height: 63px;\n    position: absolute;\n    top: 15px;\n    left: 30px;}\n.tieu-de-box h2{color: #f57142;}\n.tieu-de-box{    background: #ffeccc;\n    padding: 20px 120px;\n    color: #464646;}\n.row-dieu-chinh-ho-so{background: #eafbff;\n    padding: 20px;\n}\n.row-tai-mau-don .icon-box{    background: #83b614;\n    padding: 20px 10px;\n    color: white;\n    line-height: 20px;}\n.accordion-item{    FONT-SIZE: 15PX;\n    color: #1d3a5f;}\n.accordion-title.active{    border-color: #83b614;\n    background: #83b614;\n    color: white;}\n.accordion-inner {  display: none;\n    background: #83b614;\n    color: white;\n    border-top: 1px solid white;\n}\n.accordion-title{border-top: 1px dashed #ddd;}\n.accordion{border: 1px dashed #dddddd;}\n#breadcrumbs span{color:#d4d4d4}\n#breadcrumbs{margin-bottom: -40px;\n    z-index: 9;\n    position: relative;\n    background: #00000087;\n    line-height: 20px;\n    padding: 10px;\n    font-size: 15px;}\n.tieu-de-box p{    color: #da6b01; margin-bottom:0}\n.row-tieu-de-2 p a:hover{color:#83b614}\n.row-tieu-de-2 p a{    color: #4376b7; font-size:15px; }\n.row-tieu-de-2 p{ margin-bottom: 0;\n    font-size: 17px;\n    text-align: center;\n    line-height: 26px;\n    padding: 13px 0;}\n.row-tieu-de.lai-suat-cong-bo .cot3 .icon-box .icon-box-text p{color:#fff200}\n.row-tieu-de.ca-nhan .cot1 .icon-box .icon-box-text p{color:#fff200}\n.row-tieu-de.doanh-nghiep .cot2 .icon-box .icon-box-text p{color:#fff200}\n.row-tieu-de-2{background:#1d3a5f}\n.blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9{flex-basis:70%; max-width:70%; padding-right:0; border-right:0 !important;}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3{flex-basis:30%; max-width:30%; padding-left:20px; border-left:0 !important}\nspan.widget-title{    display: block;\n    width: 100%;\n    background: #83b614;\n    padding: 15px;\n    text-align: center;\n    color: white;\n    font-size:17px;}\n.blog-archive .large-9 .large-columns-3{margin-left: -10px;\n    margin-right: -10px;}\n.blog-archive .large-9 .post-item{padding: 0 10px 10px;}\n\n.recent-blog-posts-li .badge .badge-inner{border-radius:99%}\n.recent-blog-posts a{font-size:15px}\n.thumnail-header{margin-bottom:20px}\n.blog-single .entry-title{font-family: \"roboto\", sans-serif;\n    font-size: 25px;\n    color: #1b60b7;}\n.blog-single .entry-header-text {\n    padding: 0;\n}\n.blog-archive .post-item .post-title{font-family: \"roboto\", sans-serif;\n    margin-bottom: 5px;height: 44px;\n    overflow: hidden;}\n.blog-archive .post-item .from_the_blog_excerpt {    height: 45px;\n    overflow: hidden;}\n.page-right-sidebar #breadcrumbs{background:#eaeaea87}\n.page-right-sidebar #breadcrumbs span {\n    color: #000000;\n}\n.single-bao-hiem .tab-single-bao-hiem ul li a{color:white}\n.single-bao-hiem .tab-single-bao-hiem ul li{    text-align: center;margin:0; width:14%; display:inline-block; float:left; list-style:none}\n.single-bao-hiem .tab-single-bao-hiem ul{margin-bottom:0; display:inline-block; width:100%}\n.single-bao-hiem .tab-single-bao-hiem{      background: #83b614;    padding: 10px 0;  padding: 10px 0;    display: block;\n}\n.single-bao-hiem .tab-single-bao-hiem ul li a:hover{color:#4e6c0b}\n.single-bao-hiem .large-12 .img{margin-bottom:0}\n\n.blog-single .entry-content {\n    padding-top: 0;\n    padding-bottom: 0;\n}.is-divider, .blog-archive .large-9 .badge.post-date, .blog-archive .entry-category{display:none}\n.blog-archive h1.page-title{    position: absolute;\n    z-index: 99999;\n    top: 145px;\n    padding-left: 68px;\n    font-size: 27px;\n    color: #1d3a5f;}\n.blog-single .entry-category a{color:#1d3a5f !important}\n.blog-single .entry-category{position: absolute;\n    z-index: 9;\n    padding-top: 116px;\n    padding-left: 100px;\n    font-size: 25px;\n    width: 341px;}\n.ngay-cap-nhat{    margin-bottom: 10px;\n    font-size: 15px;\n    color: gray;}\n.blog-single .blog-share{text-align:left; margin-top: 20px;}\n.blog-single .blog-share a.button{border:0}\n.single-bao-hiem .nav>li>a{color:white; font-family:\"roboto\", sans-serif}\n.single-bao-hiem .nav>li.active>a{    background: #688f12;}\n.co-the-ban-quan-tam{background:#fbfbfb; padding:20px}\n.co-the-ban-quan-tam .col{padding-bottom:0}\n.form-tu-van h3{    background: #83b614;\n    text-align: center;\n    text-transform: uppercase;\n    font-size: 20px;\n    padding: 8px;\n    color: white;\n    font-weight: normal;}\n.form-tu-van h4{    font-family: \"roboto\", sans-serif;\n    color: #0a7dc9; font-size:16px; padding-left: 10px;}\n.form-tu-van .row-form{padding: 0 10px;display: inline-block;\n    width: 100%;\n    clear: both;}\n.form-tu-van .row-form .left{padding-right:8px; width:50%; float:left; display:inline-block}\n.form-tu-van .row-form .right{width:50%; float:right; text-align:left;padding-right:8px;  display:inline-block}\n.single-bao-hiem .tabbed-content .nav{background: #83b614;}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea, input[type=\'date\'], select{margin-bottom: 10px;\n    font-size: 15px;\n    border-radius: 4px;\n    background: #d8e5f4;\n    box-shadow: none;\n    border: 0;}\n.wpcf7-list-item-label{font-size:15px}\n.form-tu-van input[type=\'submit\']:not(.is-form){     margin: 10px;\n    font-weight: normal;\n    border-radius: 5px;\n    margin-top: 0;}\n.float-contact {\n    position: fixed;\n    bottom: 20px;\n    left: 20px;\n    z-index: 99999;\n}.chat-zalo {\n    background: #8eb22b;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-face {\n    background: #125c9e;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.float-contact .hotline {\n    background: #d11a59 !important;\n    border-radius: 20px;\n    padding: 0 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-zalo a, .chat-face a, .hotline a {\n    font-size: 15px;\n    color: white;\n    font-weight: normal;\n    text-transform: none;\n    line-height: 0;\n}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:2488:\".off-canvas-left.mfp-ready .mfp-content{background:#1d3a5f}\n.header-search-form-wrapper .searchform .button.icon i{border:0}\ninput[type=\'search\']{height:39%; border-radius:0}\n.off-canvas:not(.off-canvas-center) .nav-vertical li>a {\n    padding-left: 20px;\n    color: white;\n    text-transform: uppercase;\n    font-size: 16px;\n}\n.nav-sidebar.nav-vertical>li+li {\n    border-top: 2px solid #173355;\n    border-bottom: 1px solid #274770;\n}\n.icon-angle-down:before {\n \n    color: #4f7bb4;\n}\n.off-canvas .nav-vertical li {padding-left:0}\n.off-canvas .nav-vertical li li>a{text-transform: none !important;\n    background: #0f2541;\n    border-bottom: 1px solid #173356;\n    color: #5d88bf !important;\n    font-size: 15px !important;}\n.dang-ky-tu-van{text-align:center}\n.nhu-cau .large-3, .tin-tuc .large-6{flex-basis:50%; max-width:50%; padding-left:5px; padding-right:5px;padding-bottom:10px}\n.tin-tuc .box-vertical .box-text{padding:0; padding-top:10px}\n.footer-section .large-2, .row-tieu-de, .tieu-de-box h2:before, .gap-element, .thumnail-header, .blog-single .entry-category a \n{display:none !important}\n.tin-tuc .box-vertical .box-text .post-title{font-size:15px}\n.banner-row .col {\n    padding-bottom: 0;\n    padding: 0;\n}#breadcrumbs {\n	margin-bottom: 13px;}.page-wrapper {\n    padding-top: 15px;\n    padding-bottom: 15px;\n}\n.blog-archive .post-item .post-title{height:auto; font-size:16px}\n.post {\n    margin: 0;\n}\n.lien-he-section .medium-8 .col-inner{padding:0 !important}\n.footer-section .col, .blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3, .blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9 {padding-bottom:0; flex-basis:100%; max-width:100%}\n.tieu-de-box {\n   \n    padding: 10px;\n\n}\n.row .large-6{padding: 0 10px 20px;}\n.row .large-12{padding:10px}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3, .blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9{padding-left:15px !important; padding-right:15px !important}\n.blog-archive h1.page-title {\n   position:relative;\n\n    top:auto;\n   padding-left:0;\n    font-size: 25px;\n  \n}\n.form-tu-van .row-form .left, .form-tu-van .row-form .right{padding-right:0; width:100%; display:block}\n.banner-row{margin-bottom:20px}\n.row-tieu-de-2 p{  \n    font-size: 17px;\n\n    line-height: 20px;\n    padding: 8px 0;}\n.tieu-de-box{margin-bottom:15px}\n.float-contact{display:none}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1200px\";s:11:\"preset_demo\";s:19:\"header-default-dark\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:7:\"#1d3a5f\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"90\";s:21:\"header_bg_transparent\";s:19:\"rgba(10,10,10,0.55)\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"10\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:14:\"header_divider\";b:0;s:13:\"contact_phone\";s:0:\"\";s:13:\"contact_hours\";s:0:\"\";s:13:\"contact_email\";s:0:\"\";s:13:\"disable_fonts\";b:0;s:14:\"follow_youtube\";s:1:\"#\";s:9:\"site_logo\";s:70:\"https://bizhostvn.com/w/baohiem/wp-content/uploads/2019/05/baohiem.png\";s:10:\"logo_width\";s:3:\"215\";s:12:\"logo_padding\";s:1:\"1\";s:8:\"nav_push\";s:1:\"0\";s:10:\"nav_height\";s:2:\"16\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_color\";s:7:\"#333333\";s:16:\"footer_left_text\";s:173:\"Copyright [ux_current_year] © <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a> | Thiết kế website bởi <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a>\";s:17:\"footer_right_text\";s:22:\"Hotline kỹ thuật: \";s:13:\"color_primary\";s:7:\"#83b614\";s:15:\"color_secondary\";s:7:\"#1d3a5f\";s:11:\"color_texts\";s:7:\"#383838\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#83b614\";s:18:\"color_widget_links\";s:7:\"#2b2b2b\";s:24:\"color_widget_links_hover\";s:7:\"#83b614\";s:10:\"blog_style\";s:5:\"3-col\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:18:\"blog_archive_title\";b:0;s:23:\"blog_single_header_meta\";b:0;s:26:\"blog_single_featured_image\";b:0;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:18:\"wpseo_primary_term\";s:1:\"0\";s:16:\"wpseo_breadcrumb\";s:1:\"0\";s:28:\"wpseo_breadcrumb_remove_last\";s:1:\"1\";}","yes"),
("174","envato_setup_complete","1554102984","yes"),
("178","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("181","category_children","a:0:{}","yes"),
("268","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1554269052;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("269","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Lỗi 404: không xác định\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Tìm kiếm với\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:43:\"%%term_title%%%%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("270","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("277","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("278","wpseo_current_version","16","no"),
("279","wpseo_premium_version","8.4","yes"),
("284","wpseo_tracking_last_request","1556962985","yes"),
("289","wpseo_sitemap_cache_validator_global","2q28J","no"),
("295","rewrite_rules","a:101:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"tin-tuc/?$\";s:31:\"index.php?category_name=tin-tuc\";s:27:\"tin-tuc/page/([0-9]{1,})/?$\";s:49:\"index.php?category_name=tin-tuc&paged=$matches[1]\";s:45:\"tin-tuc/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?category_name=tin-tuc&feed=$matches[1]\";s:13:\"tuyen-dung/?$\";s:34:\"index.php?category_name=tuyen-dung\";s:30:\"tuyen-dung/page/([0-9]{1,})/?$\";s:52:\"index.php?category_name=tuyen-dung&paged=$matches[1]\";s:48:\"tuyen-dung/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?category_name=tuyen-dung&feed=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(tuyen-dung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(tuyen-dung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(tuyen-dung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes"),
("296","wpseo_sitemap_1_cache_validator","3ldXA","no"),
("297","wpseo_sitemap_customize_changeset_cache_validator","3Qkm5","no"),
("300","wpseo_sitemap_attachment_cache_validator","25NtP","no"),
("308","wpseo_sitemap_page_cache_validator","3Qsp7","no"),
("310","wpseo_sitemap_nav_menu_item_cache_validator","3gdPi","no"),
("311","wpseo_sitemap_63_cache_validator","2HpQQ","no"),
("339","wpseo_sitemap_blocks_cache_validator","3jhgg","no"),
("343","wpseo_license_server_version","2","yes"),
("353","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1554304310;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("354","wpseo_sitemap_wpcf7_contact_form_cache_validator","3dZ5g","no"),
("390","wpseo_sitemap_post_cache_validator","3ldY3","no"),
("391","wpseo_sitemap_category_cache_validator","3u78m","no"),
("480","duplicator_pro_package_active","{\"Created\":\"2019-04-04 04:09:25\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.1.1\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190404_mauwebbaohiemthietkewebsi\",\"Hash\":\"0eea5455c72f980f7414_20190404040925\",\"NameHash\":\"20190404_mauwebbaohiemthietkewebsi_0eea5455c72f980f7414_20190404040925\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/baohiem\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190404_mauwebbaohiemthietkewebsi_0eea5455c72f980f7414_20190404040925_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\",\"Size\":103775569,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"DOANH-NGHI\\u1eb8P-300x55.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/DOANH-NGHI\\u1eb8P-300x55.jpg\"},{\"name\":\"ph\\u00e1t-b\\u00ecnh-an.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/ph\\u00e1t-b\\u00ecnh-an.jpg\"},{\"name\":\"DOANH-NGHI\\u1eb8P-768x140.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/DOANH-NGHI\\u1eb8P-768x140.jpg\"},{\"name\":\"DOANH-NGHI\\u1eb8P-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/DOANH-NGHI\\u1eb8P-150x150.jpg\"},{\"name\":\"h\\u1ed9i-ch\\u1eef-th\\u1eadp-\\u0111\\u1ecf-vn.jpeg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/h\\u1ed9i-ch\\u1eef-th\\u1eadp-\\u0111\\u1ecf-vn.jpeg\"},{\"name\":\"b\\u1ea3o-hi\\u1ec3m-bhn-m\\u1edf-r\\u1ed9ng-2015.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/b\\u1ea3o-hi\\u1ec3m-bhn-m\\u1edf-r\\u1ed9ng-2015.png\"},{\"name\":\"DOANH-NGHI\\u1eb8P.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/DOANH-NGHI\\u1eb8P.jpg\"},{\"name\":\"bh-h\\u1ed7-tr\\u1ee3-chi-ph\\u00ed-n\\u1eb1m-vi\\u1ec7n.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/bh-h\\u1ed7-tr\\u1ee3-chi-ph\\u00ed-n\\u1eb1m-vi\\u1ec7n.png\"},{\"name\":\"h\\u1ed9i-ch\\u1eef-th\\u1eadp-\\u0111\\u1ecf-vn-150x150.jpeg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/h\\u1ed9i-ch\\u1eef-th\\u1eadp-\\u0111\\u1ecf-vn-150x150.jpeg\"},{\"name\":\"ph\\u00e1t-b\\u00ecnh-an-300x168.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/ph\\u00e1t-b\\u00ecnh-an-300x168.jpg\"},{\"name\":\"ph\\u00e1t-an-b\\u00ecnh-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/ph\\u00e1t-an-b\\u00ecnh-150x150.jpg\"},{\"name\":\"ph\\u00e1t-an-b\\u00ecnh.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/ph\\u00e1t-an-b\\u00ecnh.jpg\"},{\"name\":\"DOANH-NGHI\\u1eb8P-1024x187.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/DOANH-NGHI\\u1eb8P-1024x187.jpg\"},{\"name\":\"ph\\u00e1t-b\\u00ecnh-an-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/ph\\u00e1t-b\\u00ecnh-an-150x150.jpg\"},{\"name\":\"chien-l\\u01b0\\u01a1c_phan-khuc-thi-truong-100x100.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/chien-l\\u01b0\\u01a1c_phan-khuc-thi-truong-100x100.png\"},{\"name\":\"ph\\u00e1t-an-b\\u00ecnh-300x168.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/ph\\u00e1t-an-b\\u00ecnh-300x168.jpg\"},{\"name\":\"b\\u1ea3o-hi\\u1ec3m-bhn-tr\\u1ebb-em.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/b\\u1ea3o-hi\\u1ec3m-bhn-tr\\u1ebb-em.png\"},{\"name\":\"bh-h\\u1ed7-tr\\u1ee3-chi-ph\\u00ed-ph\\u1eabu-thu\\u1eadt.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/bh-h\\u1ed7-tr\\u1ee3-chi-ph\\u00ed-ph\\u1eabu-thu\\u1eadt.png\"},{\"name\":\"mi\\u1ec5n-\\u0111\\u00f3ng-ph\\u00ed-b\\u1ea3o-hi\\u1ec3m-do-b\\u1ec7nh-hi\\u1ec3m-ngh\\u00e8o.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/mi\\u1ec5n-\\u0111\\u00f3ng-ph\\u00ed-b\\u1ea3o-hi\\u1ec3m-do-b\\u1ec7nh-hi\\u1ec3m-ngh\\u00e8o.png\"},{\"name\":\"h\\u1ed9i-ch\\u1eef-th\\u1eadp-\\u0111\\u1ecf-vn-300x108.jpeg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/h\\u1ed9i-ch\\u1eef-th\\u1eadp-\\u0111\\u1ecf-vn-300x108.jpeg\"},{\"name\":\"bh-t\\u1eed-k\\u1ef3.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/bh-t\\u1eed-k\\u1ef3.png\"},{\"name\":\"mi\\u1ec5n-\\u0111\\u00f3ng-ph\\u00ed-b\\u1ea3o-hi\\u1ec3m.png\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-content\\/uploads\\/2019\\/04\\/mi\\u1ec5n-\\u0111\\u00f3ng-ph\\u00ed-b\\u1ea3o-hi\\u1ec3m.png\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/baohiem\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web10\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":2613,\"tablesSizeOnDisk\":10551296,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("482","_transient_timeout_wpseo_link_table_inaccessible","1588496260","no"),
("483","_transient_wpseo_link_table_inaccessible","0","no"),
("484","_transient_timeout_wpseo_meta_table_inaccessible","1588496260","no"),
("485","_transient_wpseo_meta_table_inaccessible","0","no"),
("529","dbprefix_old_dbprefix","wp_","yes"),
("530","dbprefix_new","gdd_","yes"),
("595","recovery_keys","a:0:{}","yes"),
("614","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557907643;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("615","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557907646;s:7:\"checked\";a:2:{s:8:\"bao-hiem\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("642","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557907646;s:7:\"checked\";a:3:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("674","_site_transient_timeout_theme_roots","1557909445","no"),
("675","_site_transient_theme_roots","a:2:{s:8:\"bao-hiem\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1883 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("1","2","_wp_page_template","page-transparent-header.php"),
("2","3","_wp_page_template","default"),
("30","2","_edit_lock","1554112148:1"),
("31","2","_edit_last","1"),
("32","2","_footer","normal"),
("33","20","_edit_last","1"),
("34","20","_footer","normal"),
("35","20","_wp_page_template","page-blank.php"),
("36","20","_edit_lock","1554271913:1"),
("37","22","_edit_last","1"),
("38","22","_edit_lock","1554104014:1"),
("39","22","_footer","normal"),
("40","22","_wp_page_template","default"),
("41","24","_edit_last","1"),
("42","24","_edit_lock","1554262382:1"),
("43","24","_footer","normal"),
("44","24","_wp_page_template","page-blank.php"),
("45","26","_edit_last","1"),
("46","26","_edit_lock","1554265107:1"),
("47","26","_footer","normal"),
("48","26","_wp_page_template","page-blank.php"),
("49","28","_edit_last","1"),
("50","28","_edit_lock","1554264407:1"),
("51","28","_footer","normal"),
("52","28","_wp_page_template","page-blank.php"),
("53","30","_edit_last","1"),
("54","30","_edit_lock","1554263779:1"),
("55","30","_footer","normal"),
("56","30","_wp_page_template","page-blank.php"),
("57","32","_edit_last","1"),
("58","32","_edit_lock","1554265142:1"),
("59","32","_footer","normal"),
("60","32","_wp_page_template","page-blank.php"),
("61","34","_edit_last","1"),
("62","34","_edit_lock","1554264574:1"),
("63","34","_footer","normal"),
("64","34","_wp_page_template","page-blank.php"),
("65","36","_edit_last","1"),
("66","36","_edit_lock","1554272962:1"),
("67","36","_footer","normal"),
("68","36","_wp_page_template","default"),
("69","38","_edit_last","1"),
("70","38","_edit_lock","1554265331:1"),
("71","38","_footer","normal"),
("72","38","_wp_page_template","page-blank.php"),
("73","40","_edit_last","1"),
("74","40","_footer","normal"),
("75","40","_wp_page_template","page-blank.php"),
("76","40","_edit_lock","1554278363:1"),
("77","42","_edit_last","1"),
("78","42","_edit_lock","1554266181:1"),
("79","42","_footer","normal"),
("80","42","_wp_page_template","page-blank.php"),
("81","44","_edit_last","1"),
("82","44","_edit_lock","1554266789:1"),
("83","44","_footer","normal"),
("84","44","_wp_page_template","page-blank.php"),
("85","46","_edit_last","1"),
("86","46","_edit_lock","1554267470:1"),
("87","46","_footer","normal"),
("88","46","_wp_page_template","page-blank.php"),
("89","48","_edit_last","1"),
("90","48","_edit_lock","1554266346:1"),
("91","48","_footer","normal"),
("92","48","_wp_page_template","page-blank.php"),
("93","50","_edit_last","1"),
("94","50","_edit_lock","1554267358:1"),
("95","50","_footer","normal"),
("96","50","_wp_page_template","page-blank.php"),
("97","52","_edit_last","1"),
("98","52","_edit_lock","1554104248:1"),
("99","52","_footer","normal"),
("100","52","_wp_page_template","default"),
("101","54","_edit_last","1"),
("102","54","_edit_lock","1554104257:1"),
("103","54","_footer","normal"),
("104","54","_wp_page_template","default"),
("109","58","_edit_last","1"),
("110","58","_edit_lock","1554267324:1"),
("111","58","_footer","normal"),
("112","58","_wp_page_template","page-blank.php"),
("113","60","_menu_item_type","post_type"),
("114","60","_menu_item_menu_item_parent","0"),
("115","60","_menu_item_object_id","20"),
("116","60","_menu_item_object","page"),
("117","60","_menu_item_target",""),
("118","60","_menu_item_classes","a:1:{i:0;s:12:\"ve-chung-toi\";}"),
("119","60","_menu_item_xfn",""),
("120","60","_menu_item_url",""),
("122","61","_menu_item_type","taxonomy"),
("123","61","_menu_item_menu_item_parent","60"),
("124","61","_menu_item_object_id","1"),
("125","61","_menu_item_object","category"),
("126","61","_menu_item_target",""),
("127","61","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("128","61","_menu_item_xfn",""),
("129","61","_menu_item_url",""),
("131","62","_menu_item_type","taxonomy"),
("132","62","_menu_item_menu_item_parent","60"),
("133","62","_menu_item_object_id","3");
INSERT INTO gdd_postmeta VALUES
("134","62","_menu_item_object","category"),
("135","62","_menu_item_target",""),
("136","62","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("137","62","_menu_item_xfn",""),
("138","62","_menu_item_url",""),
("149","64","_menu_item_type","post_type"),
("150","64","_menu_item_menu_item_parent","1020"),
("151","64","_menu_item_object_id","24"),
("152","64","_menu_item_object","page"),
("153","64","_menu_item_target",""),
("154","64","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("155","64","_menu_item_xfn",""),
("156","64","_menu_item_url",""),
("158","65","_menu_item_type","post_type"),
("159","65","_menu_item_menu_item_parent","64"),
("160","65","_menu_item_object_id","32"),
("161","65","_menu_item_object","page"),
("162","65","_menu_item_target",""),
("163","65","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("164","65","_menu_item_xfn",""),
("165","65","_menu_item_url",""),
("167","66","_menu_item_type","post_type"),
("168","66","_menu_item_menu_item_parent","64"),
("169","66","_menu_item_object_id","34"),
("170","66","_menu_item_object","page"),
("171","66","_menu_item_target",""),
("172","66","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("173","66","_menu_item_xfn",""),
("174","66","_menu_item_url",""),
("176","67","_menu_item_type","post_type"),
("177","67","_menu_item_menu_item_parent","64"),
("178","67","_menu_item_object_id","28"),
("179","67","_menu_item_object","page"),
("180","67","_menu_item_target",""),
("181","67","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("182","67","_menu_item_xfn",""),
("183","67","_menu_item_url",""),
("185","68","_menu_item_type","post_type"),
("186","68","_menu_item_menu_item_parent","64"),
("187","68","_menu_item_object_id","30"),
("188","68","_menu_item_object","page"),
("189","68","_menu_item_target",""),
("190","68","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("191","68","_menu_item_xfn",""),
("192","68","_menu_item_url",""),
("194","69","_menu_item_type","post_type"),
("195","69","_menu_item_menu_item_parent","1020"),
("196","69","_menu_item_object_id","26"),
("197","69","_menu_item_object","page"),
("198","69","_menu_item_target",""),
("199","69","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("200","69","_menu_item_xfn",""),
("201","69","_menu_item_url",""),
("203","70","_menu_item_type","post_type"),
("204","70","_menu_item_menu_item_parent","69"),
("205","70","_menu_item_object_id","36"),
("206","70","_menu_item_object","page"),
("207","70","_menu_item_target",""),
("208","70","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("209","70","_menu_item_xfn",""),
("210","70","_menu_item_url",""),
("212","71","_menu_item_type","post_type"),
("213","71","_menu_item_menu_item_parent","69"),
("214","71","_menu_item_object_id","38"),
("215","71","_menu_item_object","page"),
("216","71","_menu_item_target",""),
("217","71","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("218","71","_menu_item_xfn",""),
("219","71","_menu_item_url",""),
("221","72","_menu_item_type","post_type"),
("222","72","_menu_item_menu_item_parent","0"),
("223","72","_menu_item_object_id","40"),
("224","72","_menu_item_object","page"),
("225","72","_menu_item_target",""),
("226","72","_menu_item_classes","a:1:{i:0;s:6:\"ho-tro\";}"),
("227","72","_menu_item_xfn",""),
("228","72","_menu_item_url",""),
("248","75","_menu_item_type","post_type"),
("249","75","_menu_item_menu_item_parent","72"),
("250","75","_menu_item_object_id","50"),
("251","75","_menu_item_object","page"),
("252","75","_menu_item_target",""),
("253","75","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("254","75","_menu_item_xfn",""),
("255","75","_menu_item_url",""),
("257","76","_menu_item_type","post_type"),
("258","76","_menu_item_menu_item_parent","72"),
("259","76","_menu_item_object_id","58"),
("260","76","_menu_item_object","page"),
("261","76","_menu_item_target",""),
("262","76","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("263","76","_menu_item_xfn",""),
("264","76","_menu_item_url",""),
("266","77","_menu_item_type","post_type"),
("267","77","_menu_item_menu_item_parent","72"),
("268","77","_menu_item_object_id","42"),
("269","77","_menu_item_object","page"),
("270","77","_menu_item_target",""),
("271","77","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("272","77","_menu_item_xfn","");
INSERT INTO gdd_postmeta VALUES
("273","77","_menu_item_url",""),
("275","78","_menu_item_type","post_type"),
("276","78","_menu_item_menu_item_parent","72"),
("277","78","_menu_item_object_id","46"),
("278","78","_menu_item_object","page"),
("279","78","_menu_item_target",""),
("280","78","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("281","78","_menu_item_xfn",""),
("282","78","_menu_item_url",""),
("284","79","_menu_item_type","post_type"),
("285","79","_menu_item_menu_item_parent","72"),
("286","79","_menu_item_object_id","48"),
("287","79","_menu_item_object","page"),
("288","79","_menu_item_target",""),
("289","79","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("290","79","_menu_item_xfn",""),
("291","79","_menu_item_url",""),
("302","81","_menu_item_type","post_type"),
("303","81","_menu_item_menu_item_parent","72"),
("304","81","_menu_item_object_id","44"),
("305","81","_menu_item_object","page"),
("306","81","_menu_item_target",""),
("307","81","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("308","81","_menu_item_xfn",""),
("309","81","_menu_item_url",""),
("359","104","_wp_attached_file","2019/04/ve-chung-toi.png"),
("360","104","_wp_attachment_metadata","a:5:{s:5:\"width\";i:20;s:6:\"height\";i:22;s:4:\"file\";s:24:\"2019/04/ve-chung-toi.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("361","105","_wp_attached_file","2019/04/sp.png"),
("362","105","_wp_attachment_metadata","a:5:{s:5:\"width\";i:20;s:6:\"height\";i:22;s:4:\"file\";s:14:\"2019/04/sp.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("363","106","_wp_attached_file","2019/04/ho-tro.png"),
("364","106","_wp_attachment_metadata","a:5:{s:5:\"width\";i:20;s:6:\"height\";i:22;s:4:\"file\";s:18:\"2019/04/ho-tro.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("365","104","_edit_lock","1554106179:1"),
("367","105","_edit_lock","1554106179:1"),
("368","106","_edit_lock","1554106178:1"),
("387","116","_wp_attached_file","2019/04/logo-giuseart.png"),
("388","116","_wp_attachment_metadata","a:5:{s:5:\"width\";i:179;s:6:\"height\";i:49;s:4:\"file\";s:25:\"2019/04/logo-giuseart.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-giuseart-150x49.png\";s:5:\"width\";i:150;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("393","119","_wp_attached_file","2019/04/logo.jpg"),
("394","119","_wp_attachment_metadata","a:5:{s:5:\"width\";i:70;s:6:\"height\";i:73;s:4:\"file\";s:16:\"2019/04/logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("395","120","_wp_attached_file","2019/04/cropped-logo.jpg"),
("396","120","_wp_attachment_context","site-icon"),
("397","120","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2019/04/cropped-logo.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("420","132","_edit_last","1"),
("421","132","_footer","normal"),
("422","132","_wp_page_template","page-blank.php"),
("423","132","_edit_lock","1554261547:1"),
("424","134","_edit_last","1"),
("425","134","_edit_lock","1554273345:1"),
("426","134","_footer","normal"),
("427","134","_wp_page_template","default"),
("428","136","_edit_last","1"),
("429","136","_edit_lock","1554273324:1"),
("430","136","_footer","normal"),
("431","136","_wp_page_template","page-blank.php"),
("432","138","_edit_last","1"),
("433","138","_edit_lock","1554273269:1"),
("434","138","_footer","normal"),
("435","138","_wp_page_template","page-blank.php"),
("436","140","_menu_item_type","post_type"),
("437","140","_menu_item_menu_item_parent","1020"),
("438","140","_menu_item_object_id","132"),
("439","140","_menu_item_object","page"),
("440","140","_menu_item_target",""),
("441","140","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("442","140","_menu_item_xfn",""),
("443","140","_menu_item_url",""),
("445","141","_menu_item_type","post_type"),
("446","141","_menu_item_menu_item_parent","140"),
("447","141","_menu_item_object_id","138"),
("448","141","_menu_item_object","page"),
("449","141","_menu_item_target",""),
("450","141","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("451","141","_menu_item_xfn",""),
("452","141","_menu_item_url",""),
("454","142","_menu_item_type","post_type"),
("455","142","_menu_item_menu_item_parent","140"),
("456","142","_menu_item_object_id","136"),
("457","142","_menu_item_object","page"),
("458","142","_menu_item_target",""),
("459","142","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("460","142","_menu_item_xfn",""),
("461","142","_menu_item_url",""),
("463","143","_menu_item_type","post_type"),
("464","143","_menu_item_menu_item_parent","140"),
("465","143","_menu_item_object_id","134"),
("466","143","_menu_item_object","page"),
("467","143","_menu_item_target",""),
("468","143","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("469","143","_menu_item_xfn",""),
("470","143","_menu_item_url",""),
("504","158","_wp_attached_file","2019/04/banner.jpg"),
("505","158","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:420;s:4:\"file\";s:18:\"2019/04/banner.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x90.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x230.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x307.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("545","189","_wp_attached_file","2019/04/slider.jpg"),
("546","189","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:948;s:4:\"file\";s:18:\"2019/04/slider.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slider-768x379.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:379;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slider-1024x506.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("547","2","_thumbnail_id",""),
("574","229","_wp_attached_file","2019/04/tao-dung-tai-san_265x270.jpg"),
("575","229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:265;s:6:\"height\";i:270;s:4:\"file\";s:36:\"2019/04/tao-dung-tai-san_265x270.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"tao-dung-tai-san_265x270-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("592","243","_wp_attached_file","2019/04/tich-luy-tuong-lai_265x270.jpg"),
("593","243","_wp_attachment_metadata","a:5:{s:5:\"width\";i:265;s:6:\"height\";i:270;s:4:\"file\";s:38:\"2019/04/tich-luy-tuong-lai_265x270.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"tich-luy-tuong-lai_265x270-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("600","251","_wp_attached_file","2019/04/rui-ro_265x270.jpg"),
("601","251","_wp_attachment_metadata","a:5:{s:5:\"width\";i:265;s:6:\"height\";i:270;s:4:\"file\";s:26:\"2019/04/rui-ro_265x270.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"rui-ro_265x270-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO gdd_postmeta VALUES
("602","253","_wp_attached_file","2019/04/suc-khoe_265x270.jpg"),
("603","253","_wp_attachment_metadata","a:5:{s:5:\"width\";i:265;s:6:\"height\";i:270;s:4:\"file\";s:28:\"2019/04/suc-khoe_265x270.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"suc-khoe_265x270-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("604","257","_edit_last","1"),
("605","257","_edit_lock","1554225097:1"),
("606","258","_wp_attached_file","2019/04/post1.jpg"),
("607","258","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("608","257","_thumbnail_id","258"),
("610","260","_edit_last","1"),
("611","260","_edit_lock","1554117186:1"),
("612","261","_wp_attached_file","2019/04/post2.jpg"),
("613","261","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("614","260","_thumbnail_id","261"),
("616","263","_edit_last","1"),
("617","263","_edit_lock","1554117289:1"),
("620","265","_wp_attached_file","2019/04/post3.jpg"),
("621","265","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("622","263","_thumbnail_id","265"),
("624","267","_edit_last","1"),
("625","267","_edit_lock","1554117358:1"),
("626","268","_wp_attached_file","2019/04/post4.jpg"),
("627","268","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("628","267","_thumbnail_id","268"),
("630","270","_edit_last","1"),
("631","270","_edit_lock","1554117420:1"),
("632","271","_wp_attached_file","2019/04/post5.jpg"),
("633","271","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("634","270","_thumbnail_id","271"),
("636","273","_edit_last","1"),
("637","273","_edit_lock","1554117938:1"),
("638","274","_wp_attached_file","2019/04/post7.jpg"),
("639","274","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("640","273","_thumbnail_id","274"),
("642","276","_edit_last","1"),
("643","276","_edit_lock","1554117533:1"),
("644","277","_wp_attached_file","2019/04/post8.jpg"),
("645","277","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/04/post8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("646","276","_thumbnail_id","277"),
("688","317","_wp_attached_file","2019/04/rmit_university_logo.svg.png"),
("689","317","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:70;s:4:\"file\";s:36:\"2019/04/rmit_university_logo.svg.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"rmit_university_logo.svg-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("690","321","_wp_attached_file","2019/04/logo-vbi.png"),
("691","321","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:63;s:4:\"file\";s:20:\"2019/04/logo-vbi.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"logo-vbi-150x63.png\";s:5:\"width\";i:150;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("692","325","_wp_attached_file","2019/04/hội-chữ-thập-đỏ-vn.jpeg"),
("693","325","_wp_attachment_metadata","a:5:{s:5:\"width\";i:614;s:6:\"height\";i:221;s:4:\"file\";s:40:\"2019/04/hội-chữ-thập-đỏ-vn.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"hội-chữ-thập-đỏ-vn-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"hội-chữ-thập-đỏ-vn-300x108.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("694","329","_wp_attached_file","2019/04/partner_2.png"),
("695","329","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:70;s:4:\"file\";s:21:\"2019/04/partner_2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"partner_2-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("696","333","_wp_attached_file","2019/04/partner_3.png"),
("697","333","_wp_attachment_metadata","a:5:{s:5:\"width\";i:175;s:6:\"height\";i:70;s:4:\"file\";s:21:\"2019/04/partner_3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"partner_3-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("698","336","_wp_attached_file","2019/04/hello-bac-si-logo.png"),
("699","336","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2019/04/hello-bac-si-logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"hello-bac-si-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"hello-bac-si-logo-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"hello-bac-si-logo-768x307.png\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("706","348","_edit_last","1"),
("707","348","_edit_lock","1554221035:1"),
("709","356","_wp_attached_file","2019/04/logo-giuseart-1.png"),
("710","356","_wp_attachment_metadata","a:5:{s:5:\"width\";i:179;s:6:\"height\";i:49;s:4:\"file\";s:27:\"2019/04/logo-giuseart-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-giuseart-1-150x49.png\";s:5:\"width\";i:150;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("722","374","_edit_last","1"),
("723","374","_footer","normal"),
("724","374","_wp_page_template","default"),
("725","374","_edit_lock","1554220737:1"),
("726","376","_edit_last","1"),
("727","376","_footer","normal"),
("728","376","_wp_page_template","default"),
("729","376","_edit_lock","1554220743:1"),
("730","378","_edit_last","1"),
("731","378","_footer","normal"),
("732","378","_wp_page_template","default"),
("733","378","_edit_lock","1554220749:1"),
("734","380","_menu_item_type","post_type"),
("735","380","_menu_item_menu_item_parent","0"),
("736","380","_menu_item_object_id","378"),
("737","380","_menu_item_object","page"),
("738","380","_menu_item_target",""),
("739","380","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("740","380","_menu_item_xfn",""),
("741","380","_menu_item_url",""),
("743","381","_menu_item_type","post_type"),
("744","381","_menu_item_menu_item_parent","0"),
("745","381","_menu_item_object_id","376"),
("746","381","_menu_item_object","page"),
("747","381","_menu_item_target",""),
("748","381","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("749","381","_menu_item_xfn",""),
("750","381","_menu_item_url",""),
("752","382","_menu_item_type","post_type"),
("753","382","_menu_item_menu_item_parent","0"),
("754","382","_menu_item_object_id","374"),
("755","382","_menu_item_object","page"),
("756","382","_menu_item_target",""),
("757","382","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("758","382","_menu_item_xfn",""),
("759","382","_menu_item_url",""),
("777","348","_thumbnail_id",""),
("796","405","_wp_attached_file","2019/04/icon1.jpg"),
("797","405","_wp_attachment_metadata","a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:17:\"2019/04/icon1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("798","406","_wp_attached_file","2019/04/icon2.jpg"),
("799","406","_wp_attachment_metadata","a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:17:\"2019/04/icon2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("800","407","_wp_attached_file","2019/04/icon3.jpg"),
("801","407","_wp_attachment_metadata","a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:17:\"2019/04/icon3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("802","408","_wp_attached_file","2019/04/icon4.jpg"),
("803","408","_wp_attachment_metadata","a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:17:\"2019/04/icon4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("804","409","_wp_attached_file","2019/04/icon5.jpg"),
("805","409","_wp_attachment_metadata","a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:17:\"2019/04/icon5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO gdd_postmeta VALUES
("806","405","_edit_lock","1554222635:1"),
("807","406","_edit_lock","1554222635:1"),
("808","407","_edit_lock","1554222634:1"),
("809","408","_edit_lock","1554222634:1"),
("810","409","_edit_lock","1554222633:1"),
("814","411","_edit_last","1"),
("815","411","_edit_lock","1554223178:1"),
("816","411","_footer","normal"),
("817","411","_wp_page_template","page-blank.php"),
("818","411","_thumbnail_id",""),
("819","414","_wp_attached_file","2019/04/banner-page.jpg"),
("820","414","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:339;s:4:\"file\";s:23:\"2019/04/banner-page.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-page-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"banner-page-300x53.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"banner-page-768x136.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"banner-page-1024x181.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("821","419","_wp_attached_file","2019/04/banner-page-1.jpg"),
("822","419","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:339;s:4:\"file\";s:25:\"2019/04/banner-page-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banner-page-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"banner-page-1-300x53.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"banner-page-1-768x136.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"banner-page-1-1024x181.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("823","422","_wp_attached_file","2019/04/bac-sy.jpg"),
("824","422","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:18:\"2019/04/bac-sy.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bac-sy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bac-sy-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("825","426","_wp_attached_file","2019/04/ICON-1.jpg"),
("826","426","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2019/04/ICON-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("827","427","_wp_attached_file","2019/04/ICON-2.jpg"),
("828","427","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2019/04/ICON-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("829","428","_wp_attached_file","2019/04/ICON-3.jpg"),
("830","428","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2019/04/ICON-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("831","429","_wp_attached_file","2019/04/ICON-4.jpg"),
("832","429","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2019/04/ICON-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("905","499","_wp_attached_file","2019/04/icon12.png"),
("906","499","_wp_attachment_metadata","a:5:{s:5:\"width\";i:70;s:6:\"height\";i:70;s:4:\"file\";s:18:\"2019/04/icon12.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("914","508","_wp_attached_file","2019/04/icon13.png"),
("915","508","_wp_attachment_metadata","a:5:{s:5:\"width\";i:87;s:6:\"height\";i:70;s:4:\"file\";s:18:\"2019/04/icon13.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("916","511","_wp_attached_file","2019/04/icon14.png"),
("917","511","_wp_attachment_metadata","a:5:{s:5:\"width\";i:53;s:6:\"height\";i:70;s:4:\"file\";s:18:\"2019/04/icon14.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("935","526","_wp_attached_file","2019/04/hinh2.jpg"),
("936","526","_wp_attachment_metadata","a:5:{s:5:\"width\";i:617;s:6:\"height\";i:412;s:4:\"file\";s:17:\"2019/04/hinh2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hinh2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hinh2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("942","541","_edit_last","1"),
("943","541","_edit_lock","1554227243:1"),
("944","541","_footer","normal"),
("945","541","_wp_page_template","page-blank.php"),
("947","544","_wp_attached_file","2019/04/bg2.jpg"),
("948","544","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:339;s:4:\"file\";s:15:\"2019/04/bg2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg2-300x53.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg2-768x136.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg2-1024x181.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("949","548","_wp_attached_file","2019/04/bg3.jpg"),
("950","548","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:304;s:4:\"file\";s:15:\"2019/04/bg3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg3-300x76.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg3-768x195.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg3-1024x259.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("951","541","_thumbnail_id",""),
("952","554","_edit_last","1"),
("953","554","_edit_lock","1554227358:1"),
("954","554","_footer","normal"),
("955","554","_wp_page_template","page-blank.php"),
("956","554","_thumbnail_id",""),
("957","557","_wp_attached_file","2019/04/bg4.jpg"),
("958","557","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:339;s:4:\"file\";s:15:\"2019/04/bg4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg4-300x53.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:53;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg4-768x136.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg4-1024x181.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("977","577","_wp_attached_file","2019/04/fb_logo.jpg"),
("978","577","_wp_attachment_metadata","a:5:{s:5:\"width\";i:602;s:6:\"height\";i:290;s:4:\"file\";s:19:\"2019/04/fb_logo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"fb_logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"fb_logo-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("991","594","_edit_last","1"),
("992","594","_footer","normal"),
("993","594","_wp_page_template","page-blank.php"),
("994","594","_edit_lock","1554258512:1"),
("996","597","_wp_attached_file","2019/04/lienhe.jpg"),
("997","597","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:350;s:4:\"file\";s:18:\"2019/04/lienhe.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lienhe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lienhe-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"lienhe-768x140.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"lienhe-1024x187.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1001","594","_thumbnail_id",""),
("1022","623","_wp_attached_file","2019/04/maps.jpg"),
("1023","623","_wp_attachment_metadata","a:5:{s:5:\"width\";i:759;s:6:\"height\";i:435;s:4:\"file\";s:16:\"2019/04/maps.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"maps-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"maps-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1050","636","_wp_attached_file","2019/04/san-phan.jpg"),
("1051","636","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:219;s:4:\"file\";s:20:\"2019/04/san-phan.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"san-phan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"san-phan-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"san-phan-768x140.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"san-phan-1024x187.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1086","674","_wp_attached_file","2019/04/1234556.jpg"),
("1087","674","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:377;s:4:\"file\";s:19:\"2019/04/1234556.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"1234556-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"1234556-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1088","681","_wp_attached_file","2019/04/img2.jpg"),
("1089","681","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:377;s:4:\"file\";s:16:\"2019/04/img2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img2-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1090","684","_wp_attached_file","2019/04/img3.jpg"),
("1091","684","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:377;s:4:\"file\";s:16:\"2019/04/img3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img3-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1092","687","_wp_attached_file","2019/04/img4.jpg"),
("1093","687","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:377;s:4:\"file\";s:16:\"2019/04/img4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img4-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1095","694","_wp_attached_file","2019/04/DOANH-NGHIẸP.jpg"),
("1096","694","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:219;s:4:\"file\";s:26:\"2019/04/DOANH-NGHIẸP.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHIẸP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"DOANH-NGHIẸP-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHIẸP-768x140.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"DOANH-NGHIẸP-1024x187.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1097","698","_wp_attached_file","2019/04/DOANH-NGHIEP-1.jpg"),
("1098","698","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:26:\"2019/04/DOANH-NGHIEP-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHIEP-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHIEP-1-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1099","701","_wp_attached_file","2019/04/DOANH-NGHIEP-2.jpg"),
("1100","701","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:26:\"2019/04/DOANH-NGHIEP-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHIEP-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHIEP-2-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1103","723","_wp_attached_file","2019/04/lscb.png"),
("1104","723","_wp_attachment_metadata","a:5:{s:5:\"width\";i:476;s:6:\"height\";i:201;s:4:\"file\";s:16:\"2019/04/lscb.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"lscb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"lscb-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1107","132","_thumbnail_id",""),
("1144","775","_wp_attached_file","2019/04/quote_icon-1.png"),
("1145","775","_wp_attachment_metadata","a:5:{s:5:\"width\";i:75;s:6:\"height\";i:63;s:4:\"file\";s:24:\"2019/04/quote_icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1146","775","_edit_lock","1554263354:1"),
("1158","781","_wp_attached_file","2019/04/phát-an-bình.jpg"),
("1159","781","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:26:\"2019/04/phát-an-bình.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"phát-an-bình-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"phát-an-bình-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1160","785","_wp_attached_file","2019/04/phát-bình-an.jpg"),
("1161","785","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:26:\"2019/04/phát-bình-an.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"phát-bình-an-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"phát-bình-an-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1163","793","_wp_attached_file","2019/04/phat-loc-dang-khoa.jpg"),
("1164","793","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:30:\"2019/04/phat-loc-dang-khoa.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"phat-loc-dang-khoa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"phat-loc-dang-khoa-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1165","796","_wp_attached_file","2019/04/phat-loc-khoi-nguyen.jpg"),
("1166","796","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:32:\"2019/04/phat-loc-khoi-nguyen.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"phat-loc-khoi-nguyen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"phat-loc-khoi-nguyen-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1167","30","_thumbnail_id",""),
("1169","805","_wp_attached_file","2019/04/1-3.jpg"),
("1170","805","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:15:\"2019/04/1-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1171","808","_wp_attached_file","2019/04/yeu-thuong-tron-ven.jpg"),
("1172","808","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:31:\"2019/04/yeu-thuong-tron-ven.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"yeu-thuong-tron-ven-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"yeu-thuong-tron-ven-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1173","28","_thumbnail_id",""),
("1175","34","_thumbnail_id",""),
("1176","818","_wp_attached_file","2019/04/img01.jpg"),
("1177","818","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:17:\"2019/04/img01.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img01-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1178","821","_wp_attached_file","2019/04/img-2.jpg"),
("1179","821","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:17:\"2019/04/img-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-2-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO gdd_postmeta VALUES
("1180","825","_wp_attached_file","2019/04/img-3.jpg"),
("1181","825","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:17:\"2019/04/img-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-3-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1182","32","_thumbnail_id",""),
("1184","841","_wp_attached_file","2019/04/phat-nghiep-bao-nhan.jpg"),
("1185","841","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:32:\"2019/04/phat-nghiep-bao-nhan.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"phat-nghiep-bao-nhan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"phat-nghiep-bao-nhan-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1186","38","_thumbnail_id",""),
("1189","848","_wp_attached_file","2019/04/0223.jpg"),
("1190","848","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:16:\"2019/04/0223.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"0223-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"0223-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1191","851","_menu_item_type","post_type"),
("1192","851","_menu_item_menu_item_parent","72"),
("1193","851","_menu_item_object_id","554"),
("1194","851","_menu_item_object","page"),
("1195","851","_menu_item_target",""),
("1196","851","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1197","851","_menu_item_xfn",""),
("1198","851","_menu_item_url",""),
("1200","852","_menu_item_type","post_type"),
("1201","852","_menu_item_menu_item_parent","72"),
("1202","852","_menu_item_object_id","411"),
("1203","852","_menu_item_object","page"),
("1204","852","_menu_item_target",""),
("1205","852","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1206","852","_menu_item_xfn",""),
("1207","852","_menu_item_url",""),
("1223","48","_thumbnail_id",""),
("1228","931","_wp_attached_file","2019/04/CONTACT.jpg"),
("1229","931","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:304;s:4:\"file\";s:19:\"2019/04/CONTACT.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"CONTACT-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"CONTACT-300x76.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"CONTACT-768x195.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"CONTACT-1024x259.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1248","942","_wp_attached_file","2019/04/bg-header-top.jpg"),
("1249","942","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:219;s:4:\"file\";s:25:\"2019/04/bg-header-top.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"bg-header-top-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bg-header-top-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"bg-header-top-768x140.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"bg-header-top-1024x187.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1250","942","_edit_lock","1554269178:1"),
("1293","962","_wp_attached_file","2019/04/widget-banner.jpg"),
("1294","962","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:750;s:4:\"file\";s:25:\"2019/04/widget-banner.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"widget-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"widget-banner-160x300.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1327","20","_yoast_wpseo_content_score","30"),
("1328","20","_yoast_wpseo_focuskeywords",""),
("1329","20","_yoast_wpseo_keywordsynonyms",""),
("1330","20","_thumbnail_id",""),
("1331","978","_wp_attached_file","2019/04/bg05.jpg"),
("1332","978","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:388;s:4:\"file\";s:16:\"2019/04/bg05.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg05-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg05-768x248.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg05-1024x331.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:331;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1333","983","_wp_attached_file","2019/04/icon_3000-nam.png"),
("1334","983","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:25:\"2019/04/icon_3000-nam.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1335","985","_wp_attached_file","2019/04/chien-lươc_phan-khuc-thi-truong-100x100.png"),
("1336","985","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:53:\"2019/04/chien-lươc_phan-khuc-thi-truong-100x100.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1337","986","_wp_attached_file","2019/04/icon_33-trieu-kh.png"),
("1338","986","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:28:\"2019/04/icon_33-trieu-kh.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1339","987","_wp_attached_file","2019/04/icon_1-4-anh.png"),
("1340","987","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/04/icon_1-4-anh.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1341","1020","_menu_item_type","post_type"),
("1342","1020","_menu_item_menu_item_parent","0"),
("1343","1020","_menu_item_object_id","24"),
("1344","1020","_menu_item_object","page"),
("1345","1020","_menu_item_target",""),
("1346","1020","_menu_item_classes","a:1:{i:0;s:8:\"san-pham\";}"),
("1347","1020","_menu_item_xfn",""),
("1348","1020","_menu_item_url",""),
("1350","138","_yoast_wpseo_content_score","90"),
("1351","138","_yoast_wpseo_focuskeywords",""),
("1352","138","_yoast_wpseo_keywordsynonyms",""),
("1354","136","_yoast_wpseo_content_score","90"),
("1355","136","_yoast_wpseo_focuskeywords",""),
("1356","136","_yoast_wpseo_keywordsynonyms",""),
("1358","134","_yoast_wpseo_content_score","90"),
("1359","134","_yoast_wpseo_focuskeywords",""),
("1360","134","_yoast_wpseo_keywordsynonyms",""),
("1361","134","_thumbnail_id",""),
("1362","138","_thumbnail_id",""),
("1363","136","_thumbnail_id",""),
("1364","1046","_edit_last","1"),
("1365","1046","_edit_lock","1554277106:1"),
("1366","1046","_footer","normal"),
("1367","1046","_wp_page_template","page-blank.php"),
("1368","1046","_yoast_wpseo_content_score","60"),
("1369","1046","_yoast_wpseo_focuskeywords",""),
("1370","1046","_yoast_wpseo_keywordsynonyms",""),
("1434","1103","_wp_attached_file","2019/04/kh.jpg"),
("1435","1103","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:337;s:4:\"file\";s:14:\"2019/04/kh.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"kh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"kh-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1436","1111","_wp_attached_file","2019/04/minh-hoa-bao-hiem.jpg"),
("1437","1111","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:810;s:4:\"file\";s:29:\"2019/04/minh-hoa-bao-hiem.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"minh-hoa-bao-hiem-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"minh-hoa-bao-hiem-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"minh-hoa-bao-hiem-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"minh-hoa-bao-hiem-1024x691.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:691;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1438","1117","_wp_attached_file","2019/04/miễn-đóng-phí-bảo-hiểm.png"),
("1439","1117","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:43:\"2019/04/miễn-đóng-phí-bảo-hiểm.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1440","1120","_wp_attached_file","2019/04/miễn-đóng-phí-bảo-hiểm-do-bệnh-hiểm-nghèo.png"),
("1441","1120","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:67:\"2019/04/miễn-đóng-phí-bảo-hiểm-do-bệnh-hiểm-nghèo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1442","1122","_wp_attached_file","2019/04/bảo-hiểm-bhn-trẻ-em.png"),
("1443","1122","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:37:\"2019/04/bảo-hiểm-bhn-trẻ-em.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1444","1124","_wp_attached_file","2019/04/bảo-hiểm-bhn-mở-rộng-2015.png"),
("1445","1124","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:45:\"2019/04/bảo-hiểm-bhn-mở-rộng-2015.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1446","1126","_wp_attached_file","2019/04/bh-hỗ-trợ-chi-phí-nằm-viện.png"),
("1447","1126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:47:\"2019/04/bh-hỗ-trợ-chi-phí-nằm-viện.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1448","1129","_wp_attached_file","2019/04/bh-hỗ-trợ-chi-phí-phẫu-thuật.png"),
("1449","1129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:49:\"2019/04/bh-hỗ-trợ-chi-phí-phẫu-thuật.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1450","1131","_wp_attached_file","2019/04/bh-tử-kỳ.png"),
("1451","1131","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:24:\"2019/04/bh-tử-kỳ.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1458","24","_thumbnail_id",""),
("1459","1165","_edit_last","1"),
("1460","1165","_edit_lock","1554276934:1"),
("1461","1165","_footer","normal"),
("1462","1165","_wp_page_template","page-blank.php"),
("1463","1165","_yoast_wpseo_content_score","90"),
("1464","1165","_yoast_wpseo_focuskeywords",""),
("1465","1165","_yoast_wpseo_keywordsynonyms",""),
("1467","1178","_edit_last","1");
INSERT INTO gdd_postmeta VALUES
("1468","1178","_edit_lock","1554277271:1"),
("1469","1178","_footer","normal"),
("1470","1178","_wp_page_template","page-blank.php"),
("1471","1178","_yoast_wpseo_content_score","60"),
("1472","1178","_yoast_wpseo_focuskeywords",""),
("1473","1178","_yoast_wpseo_keywordsynonyms",""),
("1475","1182","_edit_last","1"),
("1476","1182","_edit_lock","1554277171:1"),
("1477","1182","_footer","normal"),
("1478","1182","_wp_page_template","page-blank.php"),
("1479","1182","_yoast_wpseo_content_score","60"),
("1480","1182","_yoast_wpseo_focuskeywords",""),
("1481","1182","_yoast_wpseo_keywordsynonyms",""),
("1482","1186","_edit_last","1"),
("1483","1186","_edit_lock","1554277512:1"),
("1484","1186","_footer","normal"),
("1485","1186","_wp_page_template","page-blank.php"),
("1486","1186","_yoast_wpseo_content_score","60"),
("1487","1186","_yoast_wpseo_focuskeywords",""),
("1488","1186","_yoast_wpseo_keywordsynonyms",""),
("1490","1190","_edit_last","1"),
("1491","1190","_edit_lock","1554277376:1"),
("1492","1190","_footer","normal"),
("1493","1190","_wp_page_template","page-blank.php"),
("1494","1190","_yoast_wpseo_content_score","60"),
("1495","1190","_yoast_wpseo_focuskeywords",""),
("1496","1190","_yoast_wpseo_keywordsynonyms",""),
("1498","1194","_edit_last","1"),
("1499","1194","_edit_lock","1554277403:1"),
("1500","1194","_footer","normal"),
("1501","1194","_wp_page_template","page-blank.php"),
("1502","1194","_yoast_wpseo_content_score","60"),
("1503","1194","_yoast_wpseo_focuskeywords",""),
("1504","1194","_yoast_wpseo_keywordsynonyms",""),
("1506","1202","_edit_last","1"),
("1507","1202","_edit_lock","1554277594:1"),
("1508","1202","_footer","normal"),
("1509","1202","_wp_page_template","page-blank.php"),
("1510","1202","_yoast_wpseo_content_score","60"),
("1511","1202","_yoast_wpseo_focuskeywords",""),
("1512","1202","_yoast_wpseo_keywordsynonyms",""),
("1514","36","_thumbnail_id",""),
("1515","1208","_edit_last","1"),
("1516","1208","_edit_lock","1554277626:1"),
("1517","1208","_footer","normal"),
("1518","1208","_wp_page_template","page-blank.php"),
("1519","1208","_yoast_wpseo_content_score","60"),
("1520","1208","_yoast_wpseo_focuskeywords",""),
("1521","1208","_yoast_wpseo_keywordsynonyms",""),
("1524","1222","_wp_attached_file","2019/04/htcm_1.png"),
("1525","1222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2019/04/htcm_1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1526","1226","_wp_attached_file","2019/04/htcm_2.png"),
("1527","1226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:118;s:6:\"height\";i:118;s:4:\"file\";s:18:\"2019/04/htcm_2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1528","1229","_wp_attached_file","2019/04/htcm_3.png"),
("1529","1229","_wp_attachment_metadata","a:5:{s:5:\"width\";i:118;s:6:\"height\";i:118;s:4:\"file\";s:18:\"2019/04/htcm_3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1530","1235","_wp_attached_file","2019/04/htcm_4.png"),
("1531","1235","_wp_attachment_metadata","a:5:{s:5:\"width\";i:118;s:6:\"height\";i:118;s:4:\"file\";s:18:\"2019/04/htcm_4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1532","1240","_wp_attached_file","2019/04/htcm_5.png"),
("1533","1240","_wp_attachment_metadata","a:5:{s:5:\"width\";i:118;s:6:\"height\";i:118;s:4:\"file\";s:18:\"2019/04/htcm_5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1534","1246","_wp_attached_file","2019/04/htcm_6.png"),
("1535","1246","_wp_attachment_metadata","a:5:{s:5:\"width\";i:118;s:6:\"height\";i:118;s:4:\"file\";s:18:\"2019/04/htcm_6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1536","40","_yoast_wpseo_content_score","90"),
("1537","40","_yoast_wpseo_focuskeywords",""),
("1538","40","_yoast_wpseo_keywordsynonyms",""),
("1539","1270","_form","<div class=\"form-tu-van\">\n<h3>Đăng ký mua bảo hiểm</h3>\n<h4>1. Thông tin của bạn</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n[text* text-183 placeholder \"Họ tên của bạn...\"]\n[text text-145 placeholder \"Khu vực\"]\n[select* menu-715 \"Giới tính\" \"Nam\" \"Nữ\"]\n</div>\n<div class=\"right\">\n[tel* tel-434 placeholder \"Số điện thoại...\"]\n[date date-255 placeholder \"Ngày sinh\"]\n</div>\n</div>\n<h4>2. Nhu cầu của bạn</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Dành cho cá nhân</label>\n[checkbox checkbox-345 \"Tạo dựng tài sản và đầu tư hiệu quả\" \"Tích lũy cho tương lai học vấn của con\" \"Bảo vệ trước những rủi ro trong cuộc sống\" \"Chăm sóc sức khỏe\"]\n</div>\n<div class=\"right\">\n<label>Dành cho doanh nghiệp</label>\n[checkbox checkbox-355 \"Bảo vệ trước những rủi ro trong cuộc sống\" \"Chăm sóc sức khỏe\"]\n</div>\n</div>\n[submit \"Gửi yêu cầu\"]\n</div>"),
("1540","1270","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:74:\"Mẫu web bảo hiểm - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:89:\"Mẫu web bảo hiểm - Thiết kế website Webdemo.com <wordpress@baohiem.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:460:\"Có một người yêu cầu tư vấn mua bảo hiểm qua website:\n- Họ và tên: [text-183]\n- Khu vực: [text-145]\n- Giới tính: [menu-715]\n- Số điện thoại: [tel-434]\n- Ngày sinh: [date-255]\n- Khách hàng cá nhân: [checkbox-345]\n- Khách hàng doanh nghiệp: [checkbox-355]\n\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bảo hiểm - Thiết kế website Webdemo.com (https://bizhostvn.com/w/baohiem)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1541","1270","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:74:\"Mẫu web bảo hiểm - Thiết kế website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:89:\"Mẫu web bảo hiểm - Thiết kế website Webdemo.com <wordpress@baohiem.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:206:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bảo hiểm - Thiết kế website Webdemo.com (https://bizhostvn.com/w/baohiem)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1542","1270","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("1543","1270","_additional_settings",""),
("1544","1270","_locale","vi"),
("1596","1299","_menu_item_type","post_type"),
("1597","1299","_menu_item_menu_item_parent","0"),
("1598","1299","_menu_item_object_id","2"),
("1599","1299","_menu_item_object","page"),
("1600","1299","_menu_item_target",""),
("1601","1299","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1602","1299","_menu_item_xfn",""),
("1603","1299","_menu_item_url",""),
("1605","1300","_menu_item_type","post_type"),
("1606","1300","_menu_item_menu_item_parent","0"),
("1607","1300","_menu_item_object_id","24"),
("1608","1300","_menu_item_object","page"),
("1609","1300","_menu_item_target",""),
("1610","1300","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1611","1300","_menu_item_xfn",""),
("1612","1300","_menu_item_url",""),
("1614","1301","_menu_item_type","post_type"),
("1615","1301","_menu_item_menu_item_parent","1300"),
("1616","1301","_menu_item_object_id","32"),
("1617","1301","_menu_item_object","page"),
("1618","1301","_menu_item_target",""),
("1619","1301","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1620","1301","_menu_item_xfn",""),
("1621","1301","_menu_item_url",""),
("1623","1302","_menu_item_type","post_type"),
("1624","1302","_menu_item_menu_item_parent","1300"),
("1625","1302","_menu_item_object_id","34"),
("1626","1302","_menu_item_object","page"),
("1627","1302","_menu_item_target",""),
("1628","1302","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO gdd_postmeta VALUES
("1629","1302","_menu_item_xfn",""),
("1630","1302","_menu_item_url",""),
("1632","1303","_menu_item_type","post_type"),
("1633","1303","_menu_item_menu_item_parent","1300"),
("1634","1303","_menu_item_object_id","28"),
("1635","1303","_menu_item_object","page"),
("1636","1303","_menu_item_target",""),
("1637","1303","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1638","1303","_menu_item_xfn",""),
("1639","1303","_menu_item_url",""),
("1641","1304","_menu_item_type","post_type"),
("1642","1304","_menu_item_menu_item_parent","1300"),
("1643","1304","_menu_item_object_id","30"),
("1644","1304","_menu_item_object","page"),
("1645","1304","_menu_item_target",""),
("1646","1304","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1647","1304","_menu_item_xfn",""),
("1648","1304","_menu_item_url",""),
("1650","1305","_menu_item_type","post_type"),
("1651","1305","_menu_item_menu_item_parent","0"),
("1652","1305","_menu_item_object_id","26"),
("1653","1305","_menu_item_object","page"),
("1654","1305","_menu_item_target",""),
("1655","1305","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1656","1305","_menu_item_xfn",""),
("1657","1305","_menu_item_url",""),
("1659","1306","_menu_item_type","post_type"),
("1660","1306","_menu_item_menu_item_parent","1305"),
("1661","1306","_menu_item_object_id","36"),
("1662","1306","_menu_item_object","page"),
("1663","1306","_menu_item_target",""),
("1664","1306","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1665","1306","_menu_item_xfn",""),
("1666","1306","_menu_item_url",""),
("1668","1307","_menu_item_type","post_type"),
("1669","1307","_menu_item_menu_item_parent","1305"),
("1670","1307","_menu_item_object_id","38"),
("1671","1307","_menu_item_object","page"),
("1672","1307","_menu_item_target",""),
("1673","1307","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1674","1307","_menu_item_xfn",""),
("1675","1307","_menu_item_url",""),
("1677","1308","_menu_item_type","post_type"),
("1678","1308","_menu_item_menu_item_parent","0"),
("1679","1308","_menu_item_object_id","132"),
("1680","1308","_menu_item_object","page"),
("1681","1308","_menu_item_target",""),
("1682","1308","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1683","1308","_menu_item_xfn",""),
("1684","1308","_menu_item_url",""),
("1686","1309","_menu_item_type","post_type"),
("1687","1309","_menu_item_menu_item_parent","1308"),
("1688","1309","_menu_item_object_id","138"),
("1689","1309","_menu_item_object","page"),
("1690","1309","_menu_item_target",""),
("1691","1309","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1692","1309","_menu_item_xfn",""),
("1693","1309","_menu_item_url",""),
("1695","1310","_menu_item_type","post_type"),
("1696","1310","_menu_item_menu_item_parent","1308"),
("1697","1310","_menu_item_object_id","136"),
("1698","1310","_menu_item_object","page"),
("1699","1310","_menu_item_target",""),
("1700","1310","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1701","1310","_menu_item_xfn",""),
("1702","1310","_menu_item_url",""),
("1704","1311","_menu_item_type","post_type"),
("1705","1311","_menu_item_menu_item_parent","1308"),
("1706","1311","_menu_item_object_id","134"),
("1707","1311","_menu_item_object","page"),
("1708","1311","_menu_item_target",""),
("1709","1311","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1710","1311","_menu_item_xfn",""),
("1711","1311","_menu_item_url",""),
("1713","1312","_menu_item_type","post_type"),
("1714","1312","_menu_item_menu_item_parent","0"),
("1715","1312","_menu_item_object_id","594"),
("1716","1312","_menu_item_object","page"),
("1717","1312","_menu_item_target",""),
("1718","1312","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1719","1312","_menu_item_xfn",""),
("1720","1312","_menu_item_url",""),
("1864","1393","_wp_attached_file","2019/04/icon-1.png"),
("1865","1393","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:18:\"2019/04/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1866","1394","_wp_attached_file","2019/04/phone-icon-2.png"),
("1867","1394","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:24:\"2019/04/phone-icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1868","1393","_edit_lock","1554283595:1"),
("1869","1394","_edit_lock","1554283595:1"),
("1874","26","_thumbnail_id",""),
("1877","1401","_wp_trash_meta_status","publish"),
("1878","1401","_wp_trash_meta_time","1557132219"),
("1879","1402","_wp_attached_file","2019/05/baohiem.png"),
("1880","1402","_wp_attachment_metadata","a:5:{s:5:\"width\";i:179;s:6:\"height\";i:49;s:4:\"file\";s:19:\"2019/05/baohiem.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"baohiem-150x49.png\";s:5:\"width\";i:150;s:6:\"height\";i:49;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1881","1403","_wp_trash_meta_status","publish"),
("1882","1403","_wp_trash_meta_time","1557137425");




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
) ENGINE=InnoDB AUTO_INCREMENT=1404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_posts VALUES
("2","1","2019-04-01 07:11:30","2019-04-01 07:11:30","[section label=\"Ảnh banner\" bg=\"158\" bg_size=\"original\" padding=\"115px\" height=\"569px\" border=\"1px 0px 0px 0px\" border_color=\"rgb(235, 235, 235)\"]\n\n[row style=\"large\" v_align=\"middle\" h_align=\"center\"]\n\n[col span=\"5\" span__sm=\"12\" padding=\"15px 15px 15px 15px\" align=\"left\" animate=\"flipInY\" parallax=\"-10\"]\n\n\n[/col]\n[col span=\"7\" span__sm=\"12\" align=\"center\" color=\"light\" animate=\"flipInY\"]\n\n[gap height=\"137px\"]\n\n<div class=\"notice-banner\">\n<h2>Bảo hiểm nhân thọ</h2>\n<p>Cách tốt nhất để tích lũy và đề phòng rủi ro cho mọi thành viên trong gia đình. Đừng chủ quan với cuộc sống của bạn và những người thân yêu.</p>\n<p><a href=\"/san-pham/ca-nhan/\">Xem thêm</a></p>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đăng ký tư vấn\" bg_color=\"rgb(131, 182, 20)\" class=\"dang-ky-tu-van\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" color=\"light\"]\n\n<h2>Bảo hiểm nhân thọ - bạn có quan tâm?</h2>\n<p>Giữa vô vàn lựa chọn, chúng tôi cám ơn bạn đã quan tâm đến sản phẩm của chúng tôi.</p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"Đăng ký tư vấn\" letter_case=\"lowercase\" style=\"outline\" radius=\"99\" icon=\"icon-phone\" icon_reveal=\"true\" class=\"nut-dang-ky-tu-van\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Nhu cầu\" padding=\"50px\" class=\"nhu-cau\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Nhu cầu của bạn là gì?\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">Aviva cung cấp cho bạn một giải pháp bảo hiểm toàn diện cho các cột mốc quan trọng trong đời</p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot1\"]\n\n[featured_box img=\"229\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">Tạo dựng tài sản và đầu tư hiệu quả</span></h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot2\"]\n\n[featured_box img=\"243\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">Tích lũy cho tương lai học vấn của con</span></h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot3\"]\n\n[featured_box img=\"251\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">Bảo vệ trước những rủi ro trong cuộc sống</span></h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot4\"]\n\n[featured_box img=\"253\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">Chăm sóc sức khỏe của bạn và người thân</span></h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" bg_color=\"rgb(244, 247, 252)\" padding=\"45px\" class=\"tin-tuc\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin tức - sự kiện\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">Thông tin và sự kiện mới nhất từ Bảo hiểm nhân thọ GIuseArt</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"29\" comments=\"false\" image_height=\"65%\" image_width=\"43\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"1\" offset=\"1\" show_date=\"false\" excerpt_length=\"29\" comments=\"false\" image_height=\"65%\" image_width=\"43\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" posts=\"7\" offset=\"2\" show_date=\"false\" excerpt_length=\"20\" comments=\"false\" image_height=\"65%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Đối tác\" padding=\"45px\" class=\"doi-tac\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Đối tác của chúng tôi\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">Các bạn hoàn toàn an tâm về chế độ bảo hiển của chúng tôi vì đã có hàng trăm đối tác<br />tin cậy đã và đang ủng hộ và đồng hành cùng chúng tôi.</p>\n[gap height=\"24px\"]\n\n[ux_slider nav_pos=\"outside\" nav_size=\"normal\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\" bullet_style=\"simple\"]\n\n[row_inner]\n\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"317\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Trường Đại học Quốc tế</br> RMIT Việt Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"321\" img_width=\"174\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Bảo hiểm Ngân hàng TMCP<br /> Công thương Việt Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"325\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Hội chữ thập đỏ</br>Việt Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"329\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Dịch vụ y tế và thẩm mỹ</br>Chất lượng cao</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n[row_inner]\n\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"333\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">French Chamber of Commercer</br>and Industria Việt nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"336\" img_width=\"174\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Cổng thông tin<br /> tra cứu sức khỏe</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"321\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Hội chữ thập đỏ</br>Việt Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"317\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Dịch vụ y tế và thẩm mỹ</br>Chất lượng cao</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2019-04-03 15:11:15","2019-04-03 08:11:15","","0","https://tppone.com/demo/baohiem/?page_id=2","0","page","","0"),
("3","1","2019-04-01 07:11:30","2019-04-01 07:11:30","<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: https://bizhostvn.com/w/baohiem.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-04-01 07:11:30","2019-04-01 07:11:30","","0","https://tppone.com/demo/baohiem/?page_id=3","0","page","","0"),
("20","1","2019-04-01 14:35:15","2019-04-01 07:35:15","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"978\" image_size=\"original\"]\n\n[gap]\n\n[title style=\"center\" text=\"Tại sao lựa chọn chúng tôi\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">Với lịch sử lừng lẫy của chúng tôi trong ngành, chúng tôi tin tưởng vào khả năng và chuyên môn của mình để mang lại sự bình an trước mọi biến động cho khách hàng thông qua các sản phẩm và dịch vụ của chúng tôi.</p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">32 năm</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Là tập đoàn bảo hiểm đến từ Vương quốc Anh với hơn 322 năm kinh nghiệm hoạt động trong lĩnh vực bảo hiểm</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">14 quốc gia</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Có mặt trên 14 thị trường trên toàn thế giới</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">33 triệu khách</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Phục vụ hơn 33 triệu khách hàng trên toàn thế giới</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"987\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">1/4 dân số Anh</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tại Anh quốc, chúng tôi là nhà cung cấp dịch vụ bảo hiểm hàng đầu, phục vụ ¼ dân số và phát triển rất mạnh tại các thị trường Châu Âu, Châu Á và Canada</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-gioi-thieu\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"41px 33px 29px 45px\" bg_color=\"rgb(37, 185, 34)\" color=\"light\" class=\"cot4\"]\n\n<ul>\n<li><a href=\"#\">Tầm nhìn</a></li>\n<li><a href=\"#\">Sứ mệnh phát triển</a></li>\n<li><a href=\"#\">Giá trị cốt lõi</a></li>\n<li><a href=\"#\">Chiến lược phát triển</a></li>\n</ul>\n\n[/col]\n[col span=\"8\" span__sm=\"12\" padding=\"41px 39px 40px 42px\" bg_color=\"rgb(31, 127, 191)\" color=\"light\" class=\"cot8\"]\n\n<h3>Lịch sử phát triển của chúng tôi</h3>\n<p>Tại Anh quốc, chúng tôi là nhà cung cấp dịch vụ bảo hiểm<br/> hàng đầu, phục vụ ¼ dân số và phát triển rất mạnh tại các thị trường<br/> Châu Âu, Châu Á và Canada</p>\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-gioi-thieu2\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"38px 42px 41px 41px\" bg_color=\"rgb(84, 38, 165)\" color=\"light\" class=\"cot1\"]\n\n<h3 class=\"title-ab\">AVIVA VIỆT NAM HƯỚNG ĐẾN VIỆC TẠO RA SỰ KHÁC BIỆT VÀ NỖ LỰC KHÔNG NGỪNG.</h3>\n<div class=\"brief\">Chúng tôi đặt ưu tiên công nghệ làm trọng tâm của chiến lược phát triển để đẩy mạnh các dịch vụ dựa trên nền tảng kỹ thuật số</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"41px 43px 7px 43px\" bg_color=\"rgb(248, 144, 0)\" color=\"light\" class=\"cot2\"]\n\n<h3 class=\"title-ab\">PHÁT TRIỂN CỘNG ĐỒNG</h3>\n<div class=\"brief\">\n<p>Song song với những mục tiêu kinh doanh, Aviva Việt Nam cũng tập trung xây dựng các dự án phát triển cộng đồng, điển hình là Chương trình Quỹ Cộng Đồng Aviva (Aviva Community Fund) và Chương trình Học bổng Aviva (Aviva Scholarship)</p>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"45px 38px 7px 27px\" bg_color=\"rgb(39, 178, 89)\" color=\"light\" class=\"cot3\"]\n\n<h3 class=\"title-ab\">TUYỂN DỤNG</h3>\n<div class=\"brief\">\n<p>Với tinh thần khởi nghiệp nhằm tạo ra một môi trường thoải mái, năng động và giàu sáng tạo, tại Aviva Việt Nam luôn mở ra những cơ hội mới để chào đón các ứng viên tiềm năng gia nhập đại gia đình Aviva.</p>\n<p> </p>\n</div>\n\n[/col]\n\n[/row]","Về chúng tôi","","publish","closed","closed","","ve-chung-toi","","","2019-04-03 13:27:09","2019-04-03 06:27:09","","0","https://tppone.com/demo/baohiem/?page_id=20","0","page","","0"),
("22","1","2019-04-01 14:35:57","2019-04-01 07:35:57","","Sản phẩm","","publish","closed","closed","","san-pham","","","2019-04-01 14:35:57","2019-04-01 07:35:57","","0","https://tppone.com/demo/baohiem/?page_id=22","0","page","","0"),
("24","1","2019-04-01 14:36:03","2019-04-01 07:36:03","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>CÁ NHÂN</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row label=\"for pc\" style=\"small\" class=\"row-tieu-de ca-nhan\" visibility=\"hide-for-small\"]\n\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n\n[/row]\n[row label=\"for Mobile\" style=\"small\" class=\"row-tieu-de ca-nhan\" visibility=\"show-for-small\"]\n\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"center\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"center\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"center\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"674\" image_size=\"original\" link=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\"]\n\n<h3 class=\"cate-name\"><a title=\"Tạo dựng tài sản và đầu tư hiệu quả\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\" target=\"_self\" rel=\"noopener noreferrer\">TẠO DỰNG TÀI SẢN VÀ ĐẦU TƯ HIỆU QUẢ</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người. Và hiểu rằng chỉ khi an tâm về sức khoẻ và tài chính, biết yêu thương bản thân thì ta mới có thể bình tâm chăm lo cho gia đình và cống hiến cho sự nghiệp, Aviva mang đến những sản phẩm bảo vệ và đầu tư giúp bạn có điểm tựa tài chính vững vàng và tận hưởng cuộc sống bình an bên những người thân yêu bằng giải pháp <strong>Bảo vệ – Tiết kiệm- Đầu tư</strong>toàn diện</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\" link=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\"]\n\n<h3 class=\"cate-name\"><a title=\"Tích lũy cho tương lai học vấn của con\" href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\" target=\"_self\" rel=\"noopener noreferrer\">TÍCH LŨY CHO TƯƠNG LAI HỌC VẤN CỦA CON</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Đối với cha mẹ, con cái luôn là món quà tuyệt vời nhất mà tạo hóa đã dành tặng. Khoảnh khắc đón nhận sinh linh nhỏ bé đến với thế giới sẽ không bao giờ có thể quên với mỗi người. Và kể từ giây phút đó, cha mẹ bắt đầu bước vào một hành trình đầy mới mẻ và thú vị - một hành trình đong đầy những yêu thương. Thấu hiểu và trân trọng những giá trị nhân văn đó, Aviva sẵn lòng chia sẻ cùng bạn một kế hoạch bảo vệ và tài chính vững vàng nhất cho đứa con thân yêu của mình trên từng chặng đường của </span></p>\n</div>\n\n[/col]\n\n[/row]\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\" link=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\"]\n\n<h3 class=\"cate-name\"><a href=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\" target=\"_self\" rel=\"noopener noreferrer\">BẢO VỆ TRƯỚC NHỮNG RỦI RO TRONG CUỘC SỐNG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Giữa những hối hả, ngược xuôi không ngừng, cuộc sống của ai đó có thể bước qua lằn ranh giới giữa hạnh phúc và bất hạnh chỉ sau một tích tắc không may nào đó.</span><br /><span style=\"font-size: 95%;\">Thấu hiểu điều đó, Aviva đưa tới một giải pháp bảo hiểm trước rủi ro tai nạn và thương tích, giúp bạn nắm trọn hạnh phúc trong từng khoảnh khắc của cuộc sống</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\" link=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\"]\n\n<h3 class=\"cate-name\"><a title=\"Chăm sóc sức khỏe\" href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\" target=\"_self\" rel=\"noopener noreferrer\">CHĂM SÓC SỨC KHỎE</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">“Chính sức khỏe mới là sự giàu có thực sự, không phải vàng và bạc.” - Mahatma Gandhi</span><br /><span style=\"font-size: 95%;\">Tại Aviva, chúng tôi quan tâm và thấu hiểu những mong ước của bạn về một cuộc sống bình an bởi sức khỏe là thứ duy nhất không để đánh đổi. Với những hỗ trợ y tế toàn diện và một khoản cam kết tích luỹ cho tương lai, Aviva Vietnam sẽ giúp bạn và gia đình gạt đi những âu lo, tận hưởng cuộc sống và vươn xa hơn tới đích đến thành công</span></p>\n</div>\n\n[/col]\n\n[/row]","Cá nhân","","publish","closed","closed","","ca-nhan","","","2019-04-03 15:58:02","2019-04-03 08:58:02","","22","https://tppone.com/demo/baohiem/?page_id=24","0","page","","0"),
("26","1","2019-04-01 14:36:09","2019-04-01 07:36:09","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHIỆP</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"698\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"Bảo vệ người lao động trước các rủi ro trong cuộc sống\" href=\"/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\" target=\"_self\" rel=\"noopener noreferrer\">BẢO VỆ NGƯỜI LAO ĐỘNG TRƯỚC CÁC RỦI RO TRONG CUỘC SỐNG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người. Và hiểu rằng chỉ khi an tâm về sức khoẻ và tài chính, biết yêu thương bản thân thì ta mới có thể bình tâm chăm lo cho gia đình và cống hiến cho sự nghiệp, Aviva mang đến những sản phẩm bảo vệ và đầu tư giúp bạn có điểm tựa tài chính vững vàng và tận hưởng cuộc sống bình an bên những người thân yêu bằng giải pháp <strong>Bảo vệ – Tiết kiệm- Đầu tư</strong>toàn diện. </span><a title=\"Phát Nghiệp Bảo Nhân\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Phát Nghiệp Bảo Nhân</a></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"701\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"Chu toàn các giải pháp tài chính và đầu tư doanh nghiệp\" href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\" target=\"_self\" rel=\"noopener noreferrer\">CHU TOÀN CÁC GIẢI PHÁP TÀI CHÍNH VÀ ĐẦU TƯ DOANH NGHIỆP</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Đối với cha mẹ, con cái luôn là món quà tuyệt vời nhất mà tạo hóa đã dành tặng. Khoảnh khắc đón nhận sinh linh nhỏ bé đến với thế giới sẽ không bao giờ có thể quên với mỗi người. Và kể từ giây phút đó, cha mẹ bắt đầu bước vào một hành trình đầy mới mẻ và thú vị - một hành trình đong đầy những yêu thương. Thấu hiểu và trân trọng những giá trị nhân văn đó, Aviva sẵn lòng chia sẻ cùng bạn một kế hoạch bảo vệ và tài chính vững vàng nhất cho đứa con thân yêu của mình trên từng chặng đường của hành trình kiến tạo nhân cách và một tương lai tươi sáng. <a title=\"Phát Nghiệp Hưng Vượng\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Phát Nghiệp Hưng Vượng</a></span></p>\n</div>\n\n[/col]\n\n[/row]","Doanh nghiệp","","publish","closed","closed","","doanh-nghiep","","","2019-04-03 17:56:09","2019-04-03 10:56:09","","22","https://tppone.com/demo/baohiem/?page_id=26","0","page","","0"),
("28","1","2019-04-01 14:36:24","2019-04-01 07:36:24","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>CÁ NHÂN</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\">Bảo vệ trước những rủi ro của cuộc sống</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Tạo dựng tài sản và đầu tư hiệu quả</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\">Tích lũy tương lai và học vấn cho con</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Chăm sóc sức khỏe</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>TẠO DỰNG TÀI SẢN VÀ ĐẦU TƯ HIỆU QUẢ</h2>\n<p>Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người. Và hiểu rằng chỉ khi an tâm về sức khoẻ và tài chính, biết yêu thương bản thân thì ta mới có thể bình tâm chăm lo cho gia đình và cống hiến cho sự nghiệp, Aviva mang đến những sản phẩm bảo vệ và đầu tư giúp bạn có điểm tựa tài chính vững vàng và tận hưởng cuộc sống bình an bên những người thân yêu bằng giải pháp Bảo vệ – Tiết kiệm- Đầu tư toàn diện</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"805\" image_size=\"original\" link=\"/phat-nghiep-an-tam/\"]\n\n<h3 class=\"cate-name\"> <a href=\"/phat-nghiep-an-tam/\" >PHÁT NGHIỆP TÂM AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Chỉ với 1 lần duy nhất đóng phí, Phát Nghiệp Tâm An sẽ bảo toàn những gì bạn đã gây dựng, giúp bạn vững bước hơn trên hành trình gặt hái thành công</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"808\" image_size=\"original\" link=\"#\"]\n\n<h3 class=\"cate-name\"><a href=\"/bao-hiem-phat-an-binh/\" >PHÁT BÌNH AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Giải pháp bảo hiểm trước rủi ro tai nạn và thương tích, giúp bạn nắm trọn hạnh phúc trong từng khoảnh khắc của cuộc sống</span></p>\n</div>\n\n[/col]\n\n[/row]","Tạo dựng tài sản và đầu tư hiệu quả","","publish","closed","closed","","tao-dung-tai-san-va-dau-tu-hieu-qua","","","2019-04-03 14:39:29","2019-04-03 07:39:29","","24","https://tppone.com/demo/baohiem/?page_id=28","0","page","","0"),
("30","1","2019-04-01 14:36:39","2019-04-01 07:36:39","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>CÁ NHÂN</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\">Bảo vệ trước những rủi ro của cuộc sống</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Tạo dựng tài sản và đầu tư hiệu quả</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Tích lũy tương lai và học vấn cho con</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Chăm sóc sức khỏe</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>TÍCH LŨY CHO TƯƠNG LAI HỌC VẤN CỦA CON</h2>\n<p>\"Một số người chưa tin là có thiên thần. Là bởi vì họ chưa gặp con tôi thôi\"<br />\nĐối với người làm cha làm mẹ, đứa con là món quà tuyệt vời nhất mà tạo hóa đã dành cho họ. Khoảnh khắc đón nhận sinh linh nhỏ bé đến với thế giới là khoảnh khắc không bao giờ có thể quên với mỗi người. Và kể từ giây phút đó, cha mẹ bắt đầu bước vào một hành trình đầy mới mẻ và thú vị - một hành trình đong đầy những yêu thương.<br />\nThấu hiểu và trân trọng những giá trị nhân văn đó, Aviva sẵn lòng chia sẻ cùng bạn một kế hoạch bảo vệ và tài chính vững vàng nhất cho đứa con thân yêu của mình trên từng chặng đường của hành trình kiến tạo nhân cách và một tương lai tươi sáng bằng hai sản phẩm Phát Lộc Đăng Khoa và Phát Lộc Khôi Nguyên.</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"793\" image_size=\"original\" link=\"#\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-loc-dang-khoa-2/\" >PHÁT LỘC ĐĂNG KHOA</a></h3>\n<div class=\"desc\">\n<p>Kế hoạch bảo vệ và tài chính vững vàng nhất cho đứa con thân yêu của mình trên từng chặng đường của hành trình kiến tạo nhân cách và một tương lai tươi sáng</p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"796\" image_size=\"original\" link=\"#\"]\n\n<h3 class=\"cate-name\"><a  href=\"/phat-loc-khoi-nguyen-2/\" >PHÁT LỘC KHÔI NGUYÊN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Bảo vệ cho chính bản thân cha mẹ đồng thời là một cách thông minh nhất để đảm bảo tương lai cho con trẻ. </span></p>\n</div>\n\n[/col]\n\n[/row]","Tích lũy cho tương lai học vấn của con","","publish","closed","closed","","tich-luy-cho-tuong-lai-hoc-van-cua-con","","","2019-04-03 14:43:19","2019-04-03 07:43:19","","24","https://tppone.com/demo/baohiem/?page_id=30","0","page","","0"),
("32","1","2019-04-01 14:36:53","2019-04-01 07:36:53","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>CÁ NHÂN</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Bảo vệ trước những rủi ro của cuộc sống</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Tạo dựng tài sản và đầu tư hiệu quả</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\">Tích lũy tương lai và học vấn cho con</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Chăm sóc sức khỏe</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>BẢO VỆ TRƯỚC NHỮNG RỦI RO TRONG CUỘC SỐNG</h2>\n<p>Giữa những hối hả, ngược xuôi không ngừng, cuộc sống của ai đó có thể bước qua lằn ranh giới giữa hạnh phúc và bất hạnh chỉ sau một tích tắc không may nào đó. Thấu hiểu điều đó, Aviva đưa tới một giải pháp bảo hiểm trước rủi ro tai nạn và thương tích, giúp bạn nắm trọn hạnh phúc trong từng khoảnh khắc của cuộc sống</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"781\" image_size=\"original\" link=\"/bao-hiem-phat-an-binh/\"]\n\n<h3 class=\"cate-name\"><a  href=\"/bao-hiem-phat-an-binh/\" >PHÁT AN BÌNH</a></h3>\n<div class=\"desc\">\n<p>Giải pháp bảo vệ tài chính an toàn cho bạn - trụ cột gia đình - trụ cột doanh nghiệp</p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"785\" image_size=\"original\" link=\"/bao-hiem-phat-an-binh/\"]\n\n<h3 class=\"cate-name\"><a href=\"/bao-hiem-phat-an-binh/\">PHÁT BÌNH AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Giải pháp bảo hiểm trước rủi ro tai nạn và thương tích, giúp bạn nắm trọn hạnh phúc trong từng khoảnh khắc của cuộc sống</span></p>\n</div>\n\n[/col]\n\n[/row]","Bảo vệ trước những rủi ro cuộc sống","","publish","closed","closed","","bao-ve-truoc-nhung-rui-ro-cuoc-song","","","2019-04-03 14:40:32","2019-04-03 07:40:32","","24","https://tppone.com/demo/baohiem/?page_id=32","0","page","","0"),
("34","1","2019-04-01 14:37:02","2019-04-01 07:37:02","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>CÁ NHÂN</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Bảo vệ trước những rủi ro của cuộc sống</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">Tạo dựng tài sản và đầu tư hiệu quả</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\">Tích lũy tương lai và học vấn cho con</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Chăm sóc sức khỏe</a></span></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>CHĂM SÓC SỨC KHỎE</h2>\n<p>“Chính sức khỏe mới là sự giàu có thực sự, không phải vàng và bạc.” - Mahatma Gandhi Tại Aviva, chúng tôi quan tâm và thấu hiểu những mong ước của bạn về một cuộc sống bình an bởi sức khỏe là thứ duy nhất không để đánh đổi. Với những hỗ trợ y tế toàn diện và một khoản cam kết tích luỹ cho tương lai, Aviva Vietnam sẽ giúp bạn và gia đình gạt đi những âu lo, tận hưởng cuộc sống và vươn xa hơn tới đích đến thành công.</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\" link=\"/phat-bao-an/\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-bao-an/\">PHÁT BẢO AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Giải pháp bảo vệ tối ưu nhất giúp bạn dễ dàng vượt qua những gian nan khi đối mặt với những căn bệnh hiểm nghèo phổ biến</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" link=\"/diem-tua-cuoc-song/\"]\n\n<h3 class=\"cate-name\"><a  href=\"/diem-tua-cuoc-song/\" >ĐIỂM TỰA CUỘC SỐNG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Với những hỗ trợ y tế toàn diện và một khoản cam kết tích luỹ cho tương laisẽ giúp bạn và gia đình gạt đi những âu lo, tận hưởng cuộc sống và vươn xa hơn tới đích đến thành công.</span></p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"825\" image_size=\"original\" link=\"/song-chu-dong/\"]\n\n<h3 class=\"cate-name\"><a  href=\"/song-chu-dong/\" >SỐNG CHỦ ĐỘNG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Giải pháp bảo vệ tối ưu nhất giúp bạn dễ dàng vượt qua những gian nan khi đối mặt với những căn bệnh hiểm nghèo phổ biến</span></p>\n</div>\n\n[/col]\n\n[/row]","Chăm sóc sức khỏe","","publish","closed","closed","","cham-soc-suc-khoe","","","2019-04-03 14:47:13","2019-04-03 07:47:13","","24","https://tppone.com/demo/baohiem/?page_id=34","0","page","","0"),
("36","1","2019-04-01 14:37:20","2019-04-01 07:37:20","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHIỆP</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"6\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\">Bảo vệ người lao động trước những rủi ro cuộc sống</a></span></p>\n\n[/col]\n[col span=\"6\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\">Giải pháp đầu tư tài chính cho doanh nghiệp</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"841\" image_size=\"original\" link=\"/phat-nghiep-bao-nhan-2/\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-nghiep-bao-nhan-2/\">PHÁT NGHIỆP BẢO NHÂN</a></h3>\n<div class=\"desc\">\n<p>Giải pháp bảo hiểm bảo vệ cho người lao động trước các rủi ro trong cuộc sống</p>\n</div>\n\n[/col]\n\n[/row]","Bảo vệ người lao động trước rủi ro lao động","","publish","closed","closed","","bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong","","","2019-04-03 14:48:46","2019-04-03 07:48:46","","26","https://tppone.com/demo/baohiem/?page_id=36","0","page","","0"),
("38","1","2019-04-01 14:37:36","2019-04-01 07:37:36","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHIỆP</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"6\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/san-pham/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\">Bảo vệ người lao động trước những rủi ro cuộc sống</a></span></p>\n\n[/col]\n[col span=\"6\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\">Giải pháp đầu tư tài chính cho doanh nghiệp</a></span></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"848\" image_size=\"original\" link=\"/phat-nghiep-hung-vuong/\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-nghiep-hung-vuong/\" >PHÁT NGHIỆP HƯNG VƯỢNG</a></h3>\n<div class=\"desc\">\n<p>Giải pháp thiết thực về tài chính và chính sách nhân sự giúp Doanh nghiệp chủ động và hiệu quả trong cạnh tranh và phát triển.</p>\n</div>\n\n[/col]\n\n[/row]","Giải pháp đầu tư tài chính cho doanh nghiệp","","publish","closed","closed","","giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep","","","2019-04-03 14:49:51","2019-04-03 07:49:51","","26","https://tppone.com/demo/baohiem/?page_id=38","0","page","","0"),
("40","1","2019-04-01 14:37:47","2019-04-01 07:37:47","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.4)\"]\n\n[text_box width=\"52\" width__sm=\"60\" position_x=\"5\" position_y=\"30\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 75%;\">hỗ trợ khách hàng</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"HỖ TRỢ KHÁCH HÀNG\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Chúng tôi sẵn sàng hỗ trợ mọi nhu cầu và câu hỏi liên quan đến bảo hiểm</p>\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1222\" img_width=\"100\" pos=\"center\" link=\"/dieu-chinh-ho-so/\"]\n<p style=\"text-align: center;\"><strong>Điều chỉnh hồ sơ</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"1235\" img_width=\"100\" pos=\"center\" link=\"/thuat-ngu-bao-hiem/\"]\n<p style=\"text-align: center;\"><strong>Thuật ngữ bảo hiểm</strong></p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1226\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/giai-quyet-quyen-loi-bao-hiem/\"]\n<p style=\"text-align: center;\"><strong>Giải quyết quyền lợi bảo hiểm</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"1246\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/cham-soc-khach-hang/\"]\n<p style=\"text-align: center;\"><strong>Chăm sóc khách hàng</strong></p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1229\" img_width=\"100\" pos=\"center\" link=\"/mau-don-thong-dung/\"]\n<p style=\"text-align: center;\"><strong>Biểu mẫu thông dụng</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"986\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/dong-phi-bao-hiem/\"]\n<p style=\"text-align: center;\"><strong>Đóng phí bảo hiểm</strong></p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1240\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/cau-hoi-thuong-gap/\"]\n<p style=\"text-align: center;\"><strong>Câu hỏi thường gặp</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"987\" img_width=\"100\" pos=\"center\" link=\"/nop-ho-so-truc-tuyen/\"]\n<p style=\"text-align: center;\"><strong>Nộp hồ sơ trực tuyến</strong></p>\n[/featured_box]\n\n[/col]\n\n[/row]","Hỗ trợ khách hàng","","publish","closed","closed","","ho-tro-khach-hang","","","2019-04-03 15:01:44","2019-04-03 08:01:44","","0","https://tppone.com/demo/baohiem/?page_id=40","0","page","","0"),
("42","1","2019-04-01 14:37:58","2019-04-01 07:37:58","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"544\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"40\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>ĐIỀU CHỈNH HỒ SƠ</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row class=\"row-dieu-chinh-ho-so\"]\n\n[col span__sm=\"12\"]\n<h3 class=\"title-page\" style=\"text-align: center;\"><span style=\"color: #ff0000;\">ĐIỀU CHỈNH THÔNG TIN HỒ SƠ/HỢP ĐỒNG BẢO HIỂM</span></h3>\n<h4><span style=\"color: #003366; font-size: 95%;\">Các thông tin Quý khách có thể yêu cầu điều chỉnh bao gồm:</span></h4>\n<div class=\"fullContent\">\n\n<span style=\"color: #50b848; font-size: 95%;\"><strong>1. Điều chỉnh thông tin hồ sơ/hợp đồng bảo hiểm</strong></span>\n<ul>\n 	<li><span style=\"font-size: 95%;\"><strong>Thông tin bên mua bảo hiểm:</strong> Tên, tuổi, giới tính, giấy tờ tuỳ thân, chữ ký, địa chỉ liên hệ</span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay đổi thông tin hoặc bổ sung Người thụ hưởng;</strong></span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay đổi định kỳ nộp phí/ Phương thức nộp phí;</strong></span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Huỷ hồ sơ/ Huỷ Hợp đồng bảo hiểm;</strong></span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay đổi điều kiện bảo hiểm:</strong> Tuỳ thuộc vào tính năng Sản phẩm bảo hiểm, có thể cho phép thay đổi/bổ sung một số điều kiện bảo hiểm như tăng/giảm Số tiền bảo hiểm, bổ sung sản phẩm bổ trợ ...</span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay đổi liên quan đến giá trị hợp đồng:</strong> Nhận tạm ứng từ Giá trị hoàn lại, Rút tiền từ Giá trị tài khoản hợp đồng...</span></li>\n</ul>\n<span style=\"font-size: 95%;\"><strong>Thủ tục:</strong></span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tùy theo loại điều chỉnh, Aviva sẽ yêu cầu Đơn và chứng từ tương ứng. Quý khách vui lòng liên hệ với Nhân viên tư vấn của Quý khách để được hướng dẫn cụ thể.</span></li>\n 	<li><span style=\"font-size: 95%;\">Một số điều chỉnh cần nộp thêm phí (điều chỉnh năm sinh khiến tăng tuổi, điều chỉnh sang định kỳ đóng phí dài hơn …)</span></li>\n 	<li><span style=\"font-size: 95%;\">Sau khi nhận được yêu cầu điều chỉnh, Aviva sẽ kiểm tra, thẩm định và xử lý theo quy định của công ty. Kết quả xử lý (chấp thuận hoặc từ chối yêu cầu điều chỉnh) sẽ được thông báo đến Quý khách bằng văn bản.</span></li>\n</ul>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Đối với những điều chỉnh có hoàn phí thừa, Aviva sẽ hoàn lại phí cho Quý khách.</span></li>\n</ul>\n<span style=\"color: #50b848; font-size: 95%;\"><strong>2. Khôi phục hiệu lực hợp đồng</strong></span>\n\n<span style=\"font-size: 95%;\">Sau khi Hợp đồng bảo hiểm bị mất hiệu lực, Quý khách có quyền yêu cầu khôi phục Hợp đồng bảo hiểm trong vòng 24 tháng tính từ ngày Hợp đồng bảo hiểm bị mất hiệu lực.</span>\n\n<span style=\"font-size: 95%;\"><strong>Thủ tục</strong></span>\n\n<span style=\"font-size: 95%;\">Quý khách cần điền đầy đủ thông tin vào Đơn yêu cầu khôi phục hợp đồng bảo hiểm và Tờ khai sức khỏe. Xin lưu ý rằng Quý khách có thể nộp phí khôi phục nếu có.</span>\n\n<span style=\"font-size: 95%;\">Sau khi nhận được yêu cầu khôi phục Hợp đồng bảo hiểm, Aviva sẽ kiểm tra, thẩm định và xử lý theo quy định của công ty. Kết quả xử lý sẽ được thông báo đến Quý khách bằng văn bản:</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Chấp nhận khôi phục;</span></li>\n 	<li><span style=\"font-size: 95%;\">Yêu cầu kiểm tra sức khỏe;</span></li>\n 	<li><span style=\"font-size: 95%;\">Yêu cầu nộp phí bảo hiểm phụ trội;</span></li>\n 	<li><span style=\"font-size: 95%;\">Tạm hoãn khôi phục;</span></li>\n 	<li><span style=\"font-size: 95%;\">Từ chối khôi phục.</span></li>\n</ul>\n<span style=\"font-size: 95%;\">Quý khách cần điền đầy đủ thông tin vào Đơn yêu cầu khôi phục hợp đồng bảo hiểm và Tờ khai sức khỏe (nếu hợp đồng đã mất hiệu lực trên 6 tháng)</span>\n\n<span style=\"font-size: 95%;\">Thời điểm cho phép thực hiện đối với từng loại điều chỉnh cụ thể.</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Các yêu cầu điều chỉnh bổ sung đối với Hồ sơ yêu cầu bảo hiểm cần được nộp trong thời gian tự do cân nhắc (21 ngày kể từ ngày xác nhận đã nhận Bộ hợp đồng bảo hiểm).</span></li>\n 	<li><span style=\"font-size: 95%;\">Yêu cầu sửa đổi chính sách phải được gửi trước 30 ngày đến hạn đóng phí bảo hiểm và không quá thời gian gia hạn.</span></li>\n</ul>\n</div>\n[/col]\n\n[/row]\n[gap]\n\n[row style=\"small\" class=\"row-tai-mau-don\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu chuyển nhượng hợp đồng</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu điều chỉnh hợp đồng</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu điều chỉnh người thụ hưởng</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu thay đổi bên mua bảo hiểm</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tờ khai sức khỏe bản chuẩn VIVA</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Phiếu báo sự kiện bảo hiểm</span></p>\n[/featured_box]\n\n[/col]\n\n[/row]","Điều chỉnh hồ sơ","","publish","closed","closed","","dieu-chinh-ho-so","","","2019-04-03 11:38:44","2019-04-03 04:38:44","","40","https://tppone.com/demo/baohiem/?page_id=42","0","page","","0"),
("44","1","2019-04-01 14:38:10","2019-04-01 07:38:10","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>THUẬT NGỮ BẢO HIỂM</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"Hồ sơ yêu cầu bảo hiểm\"]\n\n<span style=\"font-size: 95%;\">là mẫu đăng ký mua bảo hiểm do Công ty bảo hiểm phát hành. Bên mua bảo hiểm có nghĩa vụ điền đầy đủ, trung thực vào hồ sơ yêu cầu bảo hiểm. Hồ sơ yêu cầu bảo hiểm được xem là một phần không thể tách rời của bộ hợp đồng bảo hiểm nhân thọ.</span>\n\n[/accordion-item]\n[accordion-item title=\"Bên mua bảo hiểm\"]\n<ul>\n 	<li><span style=\"font-size: 95%;\">Là cá nhân hiện đang cư trú tại Việt Nam, tuổi từ đủ 18 trở lên vào thời điểm hợp đồng phát sinh hiệu lực và có năng lực hành vi dân sự đầy đủ; hoặc  </span></li>\n 	<li><span style=\"font-size: 95%;\"> Là tổ chức được thành lập và hoạt động hợp pháp tại Việt Nam. </span></li>\n</ul>\n<span style=\"font-size: 95%;\">Bên mua bảo hiểm phải có quyền lợi có thể được bảo hiểm với Người được bảo hiểm và có trách nhiệm kê khai, ký tên trên Giấy yêu cầu bảo hiểm và đóng Phí bảo hiểm. </span>\n\n[/accordion-item]\n[accordion-item title=\"Người được bảo hiểm\"]\n\n<span style=\"font-size: 95%;\">là cá nhân hiện đang cư trú tại Việt Nam được Công ty bảo hiểm chấp thuận bảo hiểm theo hợp đồng bảo hiểm.</span>\n\n[/accordion-item]\n[accordion-item title=\"Người thụ hưởng\"]\n\n<span style=\"font-size: 95%;\">là cá nhân hoặc tổ chức do Bên mua bảo hiểm chỉ định để nhận quyền lợi bảo hiểm theo quy định của hợp đồng bảo hiểm.</span>\n\n[/accordion-item]\n[accordion-item title=\"Quyền lợi có thể được bảo hiểm\"]\n\n<span style=\"font-size: 95%;\">là mối quan hệ giữa Bên mua bảo hiểm và Người được bảo hiểm, trong đó sự rủi ro của Người được bảo hiểm sẽ gây tổn thất về tài chính hoặc tinh thần cho Bên mua bảo hiểm.</span>\n\n<span style=\"font-size: 95%;\">Bên mua bảo hiểm có quyền lợi có thể bảo hiểm đối với những người sau đây:</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Bản thân bên mua bảo hiểm;</span></li>\n 	<li><span style=\"font-size: 95%;\">Vợ, chồng, con, cha, mẹ hợp pháp của bên mua bảo hiểm;</span></li>\n 	<li><span style=\"font-size: 95%;\">Anh chị em ruột, người có quan hệ nuôi dưỡng/giám hộ hợp pháp;</span></li>\n 	<li><span style=\"font-size: 95%;\">Cháu trực hệ của bên mua bảo hiểm;</span></li>\n 	<li><span style=\"font-size: 95%;\">Người khác nếu bên mua bảo hiểm phải chịu một tổn thất tài chính thật sự khi người được bảo hiểm chết.</span></li>\n</ul>\n[/accordion-item]\n[accordion-item title=\"Phí bảo hiểm\"]\n\n<span style=\"font-size: 95%;\">là khoản tiền Bên mua bảo hiểm nộp định kỳ cho Công ty bảo hiểm để được bảo hiểm theo thời hạn và phương thức do các bên thỏa thuận trong hợp đồng bảo hiểm.</span>\n\n[/accordion-item]\n[accordion-item title=\"Phí bảo hiểm tạm tính\"]\n\nlà khoản phí bảo hiểm Bên mua bảo hiểm nộp cùng với Giấy yêu cầu bảo hiểm.\n\n[/accordion-item]\n[accordion-item title=\"Số tiền bảo hiểm\"]\n\n<span style=\"font-size: 95%;\">là số tiền được dùng làm cơ sở để xác định quyền lợi bảo hiểm thanh toán theo Điều khoản hợp đồng. Số tiền bảo hiểm do Bên mua bảo hiểm lựa chọn phù hợp với quy định của Công ty bảo hiểm và được ghi tại Giấy yêu cầu bảo hiểm và Giấy chứng nhận bảo hiểm nhân thọ.</span>\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n\n[/row]","Thuật ngữ bảo hiểm","","publish","closed","closed","","thuat-ngu-bao-hiem","","","2019-04-03 11:48:53","2019-04-03 04:48:53","","40","https://tppone.com/demo/baohiem/?page_id=44","0","page","","0"),
("46","1","2019-04-01 14:38:28","2019-04-01 07:38:28","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>ĐÓNG PHÍ BẢO HIỂM</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n<h3 class=\"title-news\" style=\"text-align: center;\">ĐÓNG PHÍ BẢO HIỂM ĐỊNH KỲ</h3>\n<strong>1.Các thông báo về phí bảo hiểm định kỳ</strong>\n\n<span style=\"font-size: 95%;\">Để giúp khách hàng cập nhật kịp thời thông tin phí Bảo hiểm đến hạn, các thông báo/nhắc phí được gửi đến khách hàng theo trình tự thời gian sau:</span>\n\n[ux_image id=\"931\" image_size=\"original\"]\n\n<span style=\"font-size: 95%;\"><strong>1.1 Tin nhắn SMS</strong></span>\n\n<span style=\"font-size: 95%;\">Với các hợp đồng bảo hiểm chưa đóng phí định kỳ, khách hàng sẽ nhận được tối đa 3 lần thông báo bằng SMS:</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Thông báo phí bảo hiểm đến hạn - 15 ngày trước ngày đến hạn đóng phí</span></li>\n 	<li><span style=\"font-size: 95%;\">Thông báo đến hạn đóng phí vào ngày đến hạn đóng phí</span></li>\n 	<li><span style=\"font-size: 95%;\">Thông báo phí bảo hiểm quá hạn lần 1 - 30 ngày sau ngày đến hạn đóng đóng phí</span></li>\n 	<li><span style=\"font-size: 95%;\">Thông báo phí bảo hiểm quá hạn lần 2 - 45 ngày sau ngày đến hạn đóng đóng phí.</span><span style=\"font-size: 95%;\"><strong>1.2 Thư báo được gửi qua Bưu điện</strong></span>\n\n<span style=\"font-size: 95%;\">Thư báo sẽ được gửi vào ngày thứ 30 sau ngày đến hạn đóng phí nếu Aviva chưa nhận được phí bảo hiểm định kỳ.</span>\n\n<span style=\"font-size: 95%;\"><strong>1.3 Điện thoại trực tiếp đến khách hàng</strong></span>\n\n<span style=\"font-size: 95%;\">30 ngày kể từ ngày đến hạn đóng phí và phí định ký chưa được đóng, Nhân viên Dịch vụ khách hàng Aviva sẽ điện thoại trao đổi với Bên mua bảo hiểm để hỗ trợ và hướng dẫn các kênh đóng phí phù hợp và thuận tiện nhất cho khách hàng.</span>\n\n<span style=\"font-size: 95%;\"><strong>2. Các phương thức đóng phí bảo hiểm định kỳ</strong></span>\n\n<span style=\"font-size: 95%;\">Hiện nay tại Aviva cung cấp cho Quý khách 5 hình thức đóng phí bảo hiểm định kỳ:</span>\n\n<span style=\"font-size: 95%;\"><strong>2.1 Đóng phí tại quầy Ngân hàng Vietinbank</strong></span>\n\n<span style=\"font-size: 95%;\">Quý khách có thể đóng tiền trực tiếp vào tài khoản của Aviva tại bất kỳ Văn phòng giao dịch/Chi nhánh nào của Ngân hàng TMCP Công thương Việt Nam (Vietinbank).</span></li>\n</ul>\n[/col]\n\n[/row]","Đóng phí bảo hiểm","","publish","closed","closed","","dong-phi-bao-hiem","","","2019-04-03 12:00:11","2019-04-03 05:00:11","","40","https://tppone.com/demo/baohiem/?page_id=46","0","page","","0"),
("48","1","2019-04-01 14:39:27","2019-04-01 07:39:27","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.44)\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #ffffff;\"><strong>GIẢI QUYẾT QUYỀN LỢI BẢO HIỂM</strong></span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row class=\"row-dieu-chinh-ho-so\"]\n\n[col span__sm=\"12\"]\n\n<h3 class=\"title-page\" style=\"text-align: center;\"><span style=\"color: #ff0000; font-size: 95%;\">GIẢI QUYẾT QUYỀN LỢI BẢO HIỂM</span></h3>\n<div class=\"fullContent\">\n<p><span style=\"font-size: 95%; color: #000000;\"><strong>Sau khi nhận được hồ sơ yêu cầu Giải quyết quyền lợi bảo hiểm đầy đủ và hợp lệ, Aviva sẽ tiến hành thẩm định hồ sơ, ra quyết định giải quyết và gửi thông báo trực tiếp tới Người yêu cầu giải quyết quyền lợi bảo hiểm và Người thụ hưởng.</strong></span></p>\n<div class=\"fullContent\">\n<p><span style=\"font-size: 95%;\"><strong>Trường hợp Chấp thuận chi trả Quyền lợi bảo hiểm, Aviva sẽ tiến hành chi trả theo cách thức khách hàng đã lựa chọn trên Phiếu yêu cầu giải quyết quyền lợi bảo hiểm. Quyền lợi bảo hiểm/Các khoản được chi trả/hoàn trả từ Hợp đồng bảo hiểm được trả theo một trong những cách sau: </strong></span></p>\n<ul class=\"nav-left\">\n<li><span style=\"font-size: 95%;\">Chuyển đóng phí cho hợp đồng khác;</span></li>\n<li><span style=\"font-size: 95%;\">Nhận tiền mặt tại các Trung Tâm Dịch Vụ Khách Hàng của Aviva;</span></li>\n<li><span style=\"font-size: 95%;\">Chuyển tiền vào tài khoản tại ngân hàng;</span></li>\n<li><span style=\"font-size: 95%;\">Nhận tiền mặt tại các quầy Ngân hàng trên toàn quốc.</span></li>\n</ul>\n<p><span style=\"font-size: 95%;\"><strong>Khi đến các Trung Tâm Dịch Vụ Khách Hàng của Aviva/Phòng Giao dịch/Chi nhánh Ngân hàng trên toàn quốc để nhận các khoản tiền chi trả từ hợp đồng, người đến nhận cần xuất trình những giấy tờ sau:  </strong></span></p>\n<ul class=\"nav-left\">\n<li><span style=\"font-size: 95%;\">Thông báo giải quyết quyền lợi bảo hiểm;</span></li>\n<li><span style=\"font-size: 95%;\">Chứng minh nhân dân của Người nhận quyền lợi bảo hiểm;</span></li>\n<li><span style=\"font-size: 95%;\">Văn bản ủy quyền hợp pháp (nếu Người đến nhận Quyền lợi bảo hiểm là Người được ủy quyền) – Công ty bảo hiểm thu hồi khi chi trả.</span></li>\n</ul>\n<p><span style=\"font-size: 95%;\"><strong>giải quyết quyền lợi bảo hiểm trực tuyến:  </strong></span></p>\n<p><span style=\"font-size: 95%;\">Khách hàng có thể nộp hồ sơ giải quyết quyền lợi bảo hiểm trực tuyến tại <a href=\"#\">đây</a></span></p>\n</div>\n</div>\n\n[/col]\n\n[/row]\n[gap]\n\n[row style=\"small\" class=\"row-tai-mau-don\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu chuyển nhượng hợp đồng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu điều chỉnh hợp đồng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu điều chỉnh người thụ hưởng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Đơn yêu cầu thay đổi bên mua bảo hiểm</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tờ khai sức khỏe bản chuẩn VIVA</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Phiếu báo sự kiện bảo hiểm</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]","Giải quyết quyền lợi bảo hiểm","","publish","closed","closed","","giai-quyet-quyen-loi-bao-hiem","","","2019-04-03 11:41:03","2019-04-03 04:41:03","","40","https://tppone.com/demo/baohiem/?page_id=48","0","page","","0"),
("50","1","2019-04-01 14:39:36","2019-04-01 07:39:36","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>CÂU HỎI THƯỜNG GẶP</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"Làm thế nào để nhận hóa đơn thu phí bảo hiểm của Công ty?\"]\n\n<span style=\"font-size: 95%;\">Để nhận hóa đơn thu phí bảo hiểm, khách hàng đăng ký thông tin hòm thư điện tử và cần thực hiện các thao tác sau:</span>\n<span style=\"font-size: 95%;\">1. Truy cập vào Cổng thông tin khách hàng tại địa chỉ :</span>\n\n<span style=\"font-size: 95%;\">       <a href=\"https://einvoice.aviva.com.vn/Account/LogOn?ReturnUrl=%2f\">https://einvoice.aviva.com.vn</a></span>\n\n<span style=\"font-size: 95%;\">2. Đăng nhập bằng tài khoản và mật khẩu được gửi vào e-mail của Quý khách hàng. Quý khách đổi mật khẩu cho lần đăng nhập đầu tiên. Trường hợp Quý khách chưa đăng ký địa chỉ e-mail thì Quý khách cần bổ sung thông tin e-mail vào Mẫu đăng ký thông tin và gửi về hòm thư <strong>wecare@aviva.com.vn</strong> hoặc liên hệ với các Trung tâm Dịch vụ Khách hàng của Aviva để được hướng dẫn. </span>\n\n<span style=\"font-size: 95%;\">3. Sau khi đăng nhập, Quý khách có thể tra cứu HĐĐT cần xem. Quý khách hàng có thể tải HĐĐT về máy tính để lưu giữ.</span>\n<span style=\"font-size: 95%;\">Nếu cần giải đáp thắc mắc hoặc hỗ trợ liên quan đến HĐĐT ,Quý khách vui lòng liên hệ với chúng tôi theo Tổng đài chăm sóc khách hàng <strong>1900 633369</strong>, email: <strong>wecare@aviva.com.vn</strong> ,website: https://www.aviva.com.vn để được hướng dẫn hoặc đến trực tiếp các Trung tâm Dịch vụ Khách hàng của Aviva để được phục vụ.</span>\n\n[/accordion-item]\n[accordion-item title=\"Nếu muốn đăng ký thêm thông tin hòm thư điện tử (email) để nhận hóa đơn thì liên hệ với ai?\"]\n\n<span style=\"font-size: 95%;\">Quý khách vui lòng liên hệ với chúng tôi theo Tổng đài chăm sóc khách hàng 1<strong>900 633369</strong>, email: <strong>wecare@aviva.com.vn</strong> ,website: https://www.aviva.com.vn để được hướng dẫn hoặc đến trực tiếp các Trung tâm Dịch vụ Khách hàng của Aviva để được phục vụ.</span>\n\n[/accordion-item]\n[accordion-item title=\"Làm thế nào để tham gia bảo hiểm với Aviva?\"]\n\n<span style=\"font-size: 95%;\">Quý khách vui lòng liên hệ Đường dây nóng (024) 3724 6699 để được cung cấp thông tin về sản phẩm, hướng dẫn thủ tục yêu cầu bảo hiểm và được giới thiệu đến đội ngũ Nhân viên tư vấn của chúng tôi, hoặc đến trực tiếp Văn phòng giao dịch/Chi nhánh Vietinbank gần nhất để làm thủ tục yêu cầu bảo hiểm nhân thọ với Aviva.</span>\n\n[/accordion-item]\n[accordion-item title=\"Tôi muốn tham gia bảo hiểm với Aviva, hồ sơ yêu cầu bảo hiểm của tôi cần có những chứng từ gì?\"]\n\n<span style=\"font-size: 95%;\">Hồ sơ yêu cầu bảo hiểm với Aviva bao gồm những chứng từ sau: - Giấy yêu cầu bảo hiểm (cá nhân/tổ chức); - Bản copy Giấy tờ tuỳ thân của Bên mua bảo hiểm, Người được bảo hiểm, Người thụ hưởng (CMND/Giấy khai sinh/Hộ chiếu…); - Bảng minh họa Hợp đồng bảo hiểm; - Báo cáo của Nhân viên tư vấn; - Bản copy liên 1 của Giấy nộp tiền; - Giấy tờ khác (nếu có): + Đề nghị bổ sung ngày/tháng sinh: Nếu khách hàng không có ngày và/hoặc tháng sinh trong các loại giấy tờ tuỳ thân được chấp nhận. + Giấy ra viện, Giấy chứng nhận phẫu thuật, Hồ sơ khám định kỳ, Sổ y bạ, Phiếu xét nghiệm…: Nếu khách hàng có tiền sử phẫu thuật, nằm viện, điều trị bệnh …</span>\n\n[/accordion-item]\n[accordion-item title=\"Công ty tôi muốn tham gia bảo hiểm cho nhân viên, tôi (đại diện công ty) chỉ cần kê khai Giấy yêu cầu bảo hiểm dành cho Bên mua bảo hiểm là tổ chức đúng không?\"]\n\n<span style=\"font-size: 95%;\">Trường hợp Bên mua bảo hiểm là tổ chức, Quý khách vui lòng kê khai một bản Giấy yêu cầu bảo hiểm dành cho Bên mua bảo hiểm là tổ chức chung cho tất cả các trường hợp yêu cầu tham gia bảo hiểm ở cùng một thời điểm, không phụ thuộc vào số lượng Người được bảo hiểm. Từng cá nhân Người được bảo hiểm vẫn phải kê khai Giấy yêu cầu bảo hiểm tương ứng.</span>\n\n[/accordion-item]\n[accordion-item title=\"Giải thích cách tính tuổi tham gia bảo hiểm của Aviva?\"]\n\n<span style=\"font-size: 95%;\">Tuổi của Người được bảo hiểm là tuổi tính theo ngày sinh nhật vừa qua so với ngày Hợp đồng phát sinh hiệu lực. Ví dụ: Khách hàng có ngày sinh 01/11/1984 tham gia bảo hiểm với Aviva vào ngày 01/09/2011 thì ngày sinh nhật vừa qua của khách hàng là 01/11/2010 và như vậy, tuổi khách hàng khi tham gia sẽ là 26 tuổi. Cũng khách hàng đó nếu tham gia bảo hiểm ngày 01/12/2011 thì ngày sinh nhật vừa qua của khách hàng là 01/11/2011 và như vậy, tuổi tham gia sẽ là 27 tuổi.</span>\n\n[/accordion-item]\n[accordion-item title=\"Nếu mất bản gốc của bộ hợp đồng bảo hiểm, tôi có được cấp lại hay không?\"]\n\n<span style=\"font-size: 95%;\">Trường hợp mất bộ hợp đồng gốc, chúng tôi sẽ cấp lại Giấy chứng nhận bảo hiểm nhân thọ cho Quý khách, các văn bản khác (như Điều khoản bảo hiểm nhân thọ, bản sao Giấy yêu cầu bảo hiểm…) không được cấp lại. Quý khách có thể thông báo với Nhân viên tư vấn để được hướng dẫn thủ tục yêu cầu cấp lại Giấy chứng nhận bảo hiểm nhân thọ hoặc hoàn tất mẫu Đơn xin cấp lại giấy chứng nhận bảo hiểm nhân thọ và gửi về Aviva theo địa chỉ: Tầng 13, Tòa nhà Mipec, 229 Tây Sơn, Quận Đống Đa, TP Hà Nội.</span>\n\n[/accordion-item]\n[accordion-item title=\"Thời điểm phát sinh hiệu lực hợp đồng bảo hiểm được xác định như thế nào?\"]\n\n<span style=\"font-size: 95%;\">Trường hợp Aviva chấp thuận bảo hiểm của Quý khách, hợp đồng phát sinh hiệu lực kể từ thời điểm Aviva nhận được đầy đủ Giấy yêu cầu bảo hiểm và Phí bảo hiểm tạm tính của hợp đồng. Trách nhiệm bảo hiểm của Aviva phát sinh từ thời điểm hợp đồng phát sinh hiệu lực. Tuy nhiên, Công ty chỉ bảo hiểm cho các rủi ro theo Điều khoản hợp đồng bảo hiểm kể từ Ngày phát hành hợp đồng được ghi trong Giấy chứng nhận bảo hiểm. Thời gian từ ngày hiệu lực hợp đồng đến ngày phát hành hợp đồng, Quý khách được bảo hiểm theo điều khoản Bảo hiểm tạm thời.</span>\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n\n[/row]","Câu hỏi thường gặp","","publish","closed","closed","","cau-hoi-thuong-gap","","","2019-04-03 11:55:59","2019-04-03 04:55:59","","40","https://tppone.com/demo/baohiem/?page_id=50","0","page","","0"),
("52","1","2019-04-01 14:39:48","2019-04-01 07:39:48","","Hóa đơn điện tử","","publish","closed","closed","","hoa-don-dien-tu","","","2019-04-01 14:39:48","2019-04-01 07:39:48","","40","https://tppone.com/demo/baohiem/?page_id=52","0","page","","0"),
("54","1","2019-04-01 14:39:58","2019-04-01 07:39:58","","Biểu mẫu thông dụng","","publish","closed","closed","","bieu-mau-thong-dung","","","2019-04-01 14:39:58","2019-04-01 07:39:58","","40","https://tppone.com/demo/baohiem/?page_id=54","0","page","","0"),
("58","1","2019-04-01 14:40:17","2019-04-01 07:40:17","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\"]\n\n[text_box width=\"24\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #ffffff;\"><strong>CHĂM SÓC KHÁCH HÀNG</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n<h2 class=\"title-news\" style=\"text-align: center;\">CHƯƠNG TRÌNH CHĂM SÓC KHÁCH HÀNG 2018</h2>\n<span style=\"font-size: 95%;\">Với phương châm hoạt động trên giá trị cốt lõi hàng đầu “Quan tâm nhiều hơn đến khách hàng”, cùng với mong muốn ngày càng gia tăng dịch vụ và sự hài lòng của Khách hàng, Aviva chính thức triển khai Chương trình chăm sóc khách hàng 2018 kể từ ngày 16/05/2018, với nội dung cụ thể như sau:.</span>\n<table class=\"table\">\n<tbody>\n<tr>\n<th>Phân hạng khách hàng</th>\n<th>Tổng số phí bảo hiểm quy năm (APE) (*)</th>\n</tr>\n<tr>\n<td>Bạc</td>\n<td><strong>Dưới 50 triệu</strong></td>\n</tr>\n<tr>\n<td>Vàng</td>\n<td><strong>Từ 50 triệu đến dưới 100 triệu</strong></td>\n</tr>\n<tr>\n<td>Bạch kim</td>\n<td><strong>Từ 100 triệu đến dưới 200 triệu</strong></td>\n</tr>\n<tr>\n<td>Kim cương</td>\n<td><strong>Từ 200 triệu trở lên</strong></td>\n</tr>\n</tbody>\n</table>\n[/col]\n\n[/row]","Chăm sóc khách hàng","","publish","closed","closed","","cham-soc-khach-hang","","","2019-04-03 11:57:48","2019-04-03 04:57:48","","40","https://tppone.com/demo/baohiem/?page_id=58","0","page","","0"),
("60","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","60","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=60","1","nav_menu_item","","0"),
("61","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","61","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=61","2","nav_menu_item","","0"),
("62","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","62","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=62","3","nav_menu_item","","0"),
("64","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","64","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","22","https://tppone.com/demo/baohiem/?p=64","5","nav_menu_item","","0"),
("65","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","65","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","24","https://tppone.com/demo/baohiem/?p=65","6","nav_menu_item","","0"),
("66","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","66","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","24","https://tppone.com/demo/baohiem/?p=66","7","nav_menu_item","","0"),
("67","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","67","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","24","https://tppone.com/demo/baohiem/?p=67","8","nav_menu_item","","0"),
("68","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","68","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","24","https://tppone.com/demo/baohiem/?p=68","9","nav_menu_item","","0"),
("69","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","69","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","22","https://tppone.com/demo/baohiem/?p=69","10","nav_menu_item","","0"),
("70","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","70","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","26","https://tppone.com/demo/baohiem/?p=70","11","nav_menu_item","","0"),
("71","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","71","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","26","https://tppone.com/demo/baohiem/?p=71","12","nav_menu_item","","0"),
("72","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","72","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=72","17","nav_menu_item","","0"),
("75","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","75","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","40","https://tppone.com/demo/baohiem/?p=75","20","nav_menu_item","","0"),
("76","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","76","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","40","https://tppone.com/demo/baohiem/?p=76","21","nav_menu_item","","0"),
("77","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","77","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","40","https://tppone.com/demo/baohiem/?p=77","22","nav_menu_item","","0"),
("78","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","78","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","40","https://tppone.com/demo/baohiem/?p=78","23","nav_menu_item","","0"),
("79","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","79","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","40","https://tppone.com/demo/baohiem/?p=79","24","nav_menu_item","","0"),
("81","1","2019-04-01 14:41:39","2019-04-01 07:41:39"," ","","","publish","closed","closed","","81","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","40","https://tppone.com/demo/baohiem/?p=81","25","nav_menu_item","","0"),
("104","1","2019-04-01 15:10:34","2019-04-01 08:10:34","","ve-chung-toi","","inherit","open","closed","","ve-chung-toi-2","","","2019-04-01 15:10:34","2019-04-01 08:10:34","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ve-chung-toi.png","0","attachment","image/png","0"),
("105","1","2019-04-01 15:10:34","2019-04-01 08:10:34","","sp","","inherit","open","closed","","sp","","","2019-04-01 15:10:34","2019-04-01 08:10:34","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/sp.png","0","attachment","image/png","0"),
("106","1","2019-04-01 15:10:35","2019-04-01 08:10:35","","ho-tro","","inherit","open","closed","","ho-tro","","","2019-04-01 15:10:35","2019-04-01 08:10:35","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ho-tro.png","0","attachment","image/png","0"),
("116","1","2019-04-01 15:49:12","2019-04-01 08:49:12","","logo-giuseart","","inherit","open","closed","","logo-giuseart","","","2019-04-01 15:49:12","2019-04-01 08:49:12","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/logo-giuseart.png","0","attachment","image/png","0"),
("119","1","2019-04-01 15:50:10","2019-04-01 08:50:10","","logo","","inherit","open","closed","","logo","","","2019-04-01 15:50:10","2019-04-01 08:50:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/logo.jpg","0","attachment","image/jpeg","0"),
("120","1","2019-04-01 15:50:13","2019-04-01 08:50:13","https://bizhostvn.com/w/baohiem/wp-content/uploads/2019/04/cropped-logo.jpg","cropped-logo.jpg","","inherit","open","closed","","cropped-logo-jpg","","","2019-04-01 15:50:13","2019-04-01 08:50:13","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/cropped-logo.jpg","0","attachment","image/jpeg","0"),
("132","1","2019-04-01 16:16:26","2019-04-01 09:16:26","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"557\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>LÃI SUẤT CÔNG BỐ</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de lai-suat-cong-bo\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot3\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 class=\"title-page\">LÃI SUẤT CÔNG BỐ</h2>\n<div class=\"brief\">Với bề dày kinh nghiệm hơn 300 năm trong lĩnh vực Bảo hiểm và là Tập đoàn Bảo hiểm hàng đầu tại Anh Quốc, Aviva luôn hướng tới những giải pháp mang lại mức sinh lợi tối ưu nhất cho Quý khách hàng.</div>\n[gap height=\"20px\"]\n\n[button text=\"Xem chi tiết\" letter_case=\"lowercase\" radius=\"99\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"701\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n<p><strong>I. Các loại lãi suất áp dụng liên quan đến thực hiện hợp đồng bảo hiểm:</strong></p>\n<table class=\"table table-hover\">\n<tbody>\n<tr>\n<td style=\"background-color: #003da6;\"></td>\n<td style=\"background-color: #003da6;\"><span style=\"color: #ffffff;\"> <strong>Các loại lãi suất</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; height: 5%; width: 10%;\"><span style=\"color: #ffffff;\"><strong>2014</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2015</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2016</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2017</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2018</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"> <span style=\"color: #eeece1;\"><strong>2019</strong></span></td>\n</tr>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #ffd100; width: 4%; height: 8%;\">I</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #ffd100;\"> Lãi suất đối với các Quyền lợi tiền mặt tích lũy tại Aviva</td>\n<td style=\"text-align: left; vertical-align: middle;\"></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td style=\"background-color: #e3f3f9; text-align: center; vertical-align: middle; width: 4%; height: 8%;\">1</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #e3f3f9;\"> Phát Lộc Thành Tài</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\"> -</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">5.5%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">5%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\"> 5%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9; width: 4%; height: 8%;\">2</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #e3f3f9;\"> Phát Lộc Khôi Nguyên</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\"> -</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">6.5%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">6%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\"> 6%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #ffd100; width: 4%; height: 8%;\"> II</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #ffd100;\"> Khoản giảm thu nhập đầu tư áp dụng đối với các khoản tạm ứng từ Giá trị hoàn lại và tạm ứng từ Giá trị hoàn lại để tự đóng phí bảo hiểm</td>\n<td style=\"text-align: center; vertical-align: middle;\"> 10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\"> 10%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>II. Lãi suất tích lũy áp dụng tính GTTKHĐ của sản phẩm Bảo hiểm Liên kết chung:</strong></p>\n<table class=\"table table-hover\" style=\"text-align: center;\">\n<tbody>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #003da6; height: 30%;\" rowspan=\"2\"><span style=\"color: #ffffff;\"><strong>Thời kỳ </strong></span></td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #003da6;\" colspan=\"2\"><span style=\"color: #ffffff;\"><strong>Sản phẩm</strong></span></td>\n</tr>\n<tr>\n<td style=\"text-align: left; vertical-align: middle; background-color: #ffd100; width: 30%;\">\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Phát Lộc Hưng Gia</span></div>\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Phát Nghiệp Hưng Thịnh</span></div>\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Phát Nghiệp Hưng Vượng</span></div>\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Phát Nghiệp Tâm An</span></div>\n</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #ffd100; width: 30%;\"> Yêu Thương Trọn Vẹn</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 12/2014 - 31/01/2015</td>\n<td style=\"text-align: center;\"> 8%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/2/2015 - 30/4/2015</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 7.8%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/5/2015 - 31/07/2015</td>\n<td style=\"text-align: center;\"> 7.4%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/8/2015 - 31/12/2015</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 7.5%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/11/2015 - 31/01/2016</td>\n<td style=\"text-align: center;\"> 7.5%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/02/2016 - 30/04/2016</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 7.3%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/05/2016 - 31/07/2016</td>\n<td style=\"text-align: center;\"> 6.9%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/08/2016 - 31/10/2016</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 6.6%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/11/2016 - 31/12/2016</td>\n<td style=\"text-align: center;\"> 7.1%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/11/2016 - 31/01/2017</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 7.1%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/02/2017 - 30/04/2017</td>\n<td style=\"text-align: center;\"> 6.8%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/05/2017 - 31/07/2017</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 6.6%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/08/2017 - 31/10/2017</td>\n<td style=\"text-align: center;\"> 6.3%</td>\n<td style=\"text-align: center;\">6.3%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/11/2017 - 31/01/2018</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 6.3%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">6.3%</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/02/2018 - 30/04/2018</td>\n<td style=\"text-align: center;\"> 6.0%</td>\n<td style=\"text-align: center;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/05/2018 - 31/07/2018</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 6.0%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\"> 01/08/2018 - 31/10/2018</td>\n<td style=\"text-align: center;\"> 6.0%</td>\n<td style=\"text-align: center;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 01/11/2018 - 31/01/2019</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"> 6.0%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">01/02/2019 - 30/4/2019</td>\n<td style=\"text-align: center;\">5.8%</td>\n<td style=\"text-align: center;\"> 5.6%</td>\n</tr>\n</tbody>\n</table>\n<div><strong>III. Một số quy định của Aviva liên quan đến việc thực hiện hợp đồng bảo hiểm:</strong></div>\n<div>Mọi thắc mắc xin vui lòng liên hệ đường dây nóng: 24-3724 6699 hoặc email: wecare@aviva.com.vn để được hướng dẫn chi tiết và cập nhật thông tin (nếu có).</div>\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-banner-cuoi\"]\n\n[col span=\"7\" span__sm=\"12\"]\n\n[gap height=\"44px\"]\n\n<p>Tra cứu Báo cáo tài chính<strong>,</strong> Báo cáo thường niên<br /> và Báo cáo hoạt động Quỹ Liên kết chung.</p>\n[button text=\"Xem báo cáo\" letter_case=\"lowercase\" radius=\"99\" icon=\"icon-expand\" icon_reveal=\"true\" link=\"#\"]\n\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"723\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]","Lãi suất công bố","","publish","closed","closed","","lai-suat-cong-bo","","","2019-04-03 10:29:12","2019-04-03 03:29:12","","0","https://tppone.com/demo/baohiem/?page_id=132","0","page","","0"),
("134","1","2019-04-01 16:16:37","2019-04-01 09:16:37","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"544\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><span style=\"color: #003366;\"><strong>LÃI SUẤT CÔNG BỐ</strong></span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/\">Báo cáo hoạt động quỹ liên kết</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/lai-suat-cong-bo/bao-cao-tai-chinh/\">Báo cáo tài chính</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/lai-suat-cong-bo/bao-cao-thuong-nien/\">Báo cáo thường niên</a></span></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"báo cáo thường niên\" tag_name=\"h2\"]\n\n<table class=\"table\">\n<thead>\n<tr>\n<th>STT</th>\n<th>Nội dung</th>\n<th>Ngày đăng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2018\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2018</a></td>\n<td>26/03/2019</td>\n</tr>\n<tr>\n<td>2</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2016\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2016</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>3</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2015\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Báo cáo hoạt động quỹ liên kết chung 2015</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>4</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2014\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2014</a></td>\n<td>20/03/2018</td>\n</tr>\n</tbody>\n</table>\n\n[/col]\n\n[/row]","Báo cáo thường niên","","publish","closed","closed","","bao-cao-thuong-nien","","","2019-04-03 13:40:13","2019-04-03 06:40:13","","132","https://tppone.com/demo/baohiem/?page_id=134","0","page","","0"),
("136","1","2019-04-01 16:16:50","2019-04-01 09:16:50","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><span style=\"color: #003366;\"><strong>LÃI SUẤT CÔNG BỐ</strong></span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/\">Báo cáo hoạt động quỹ liên kết</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/lai-suat-cong-bo/bao-cao-tai-chinh/\">Báo cáo tài chính</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><a href=\"/lai-suat-cong-bo/bao-cao-thuong-nien/\">Báo cáo thường niên</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"báo cáo tài chính\" tag_name=\"h2\"]\n\n<table class=\"table\">\n<thead>\n<tr>\n<th>STT</th>\n<th>Nội dung</th>\n<th>Ngày đăng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2018\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2018</a></td>\n<td>26/03/2019</td>\n</tr>\n<tr>\n<td>2</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2016\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2016</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>3</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2015\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Báo cáo hoạt động quỹ liên kết chung 2015</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>4</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2014\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2014</a></td>\n<td>20/03/2018</td>\n</tr>\n</tbody>\n</table>\n\n[/col]\n\n[/row]","Báo cáo tài chính","","publish","closed","closed","","bao-cao-tai-chinh","","","2019-04-03 13:40:53","2019-04-03 06:40:53","","132","https://tppone.com/demo/baohiem/?page_id=136","0","page","","0"),
("138","1","2019-04-01 16:17:09","2019-04-01 09:17:09","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.34)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>LÃI SUẤT CÔNG BỐ</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/\">Báo cáo hoạt động quỹ liên kết</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><a href=\"/lai-suat-cong-bo/bao-cao-tai-chinh/\">Báo cáo tài chính</a></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><a href=\"/lai-suat-cong-bo/bao-cao-thuong-nien/\">Báo cáo thường niên</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"BÁO CÁO HOẠT ĐỘNG QUỸ LIÊN KẾT CHUNG\" tag_name=\"h2\"]\n\n<table class=\"table\">\n<thead>\n<tr>\n<th>STT</th>\n<th>Nội dung</th>\n<th>Ngày đăng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2018\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2018</a></td>\n<td>26/03/2019</td>\n</tr>\n<tr>\n<td>2</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2016\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2016</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>3</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2015\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Báo cáo hoạt động quỹ liên kết chung 2015</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>4</td>\n<td><a title=\"Báo cáo hoạt động quỹ liên kết chung 2014\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> Báo cáo hoạt động quỹ liên kết chung 2014</a></td>\n<td>20/03/2018</td>\n</tr>\n</tbody>\n</table>\n\n[/col]\n\n[/row]","Báo cáo hoạt động quỹ liên kết","","publish","closed","closed","","bao-cao-hoat-dong-quy-lien-ket","","","2019-04-03 13:41:21","2019-04-03 06:41:21","","132","https://tppone.com/demo/baohiem/?page_id=138","0","page","","0"),
("140","1","2019-04-01 16:17:32","2019-04-01 09:17:32"," ","","","publish","closed","closed","","140","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=140","13","nav_menu_item","","0"),
("141","1","2019-04-01 16:17:32","2019-04-01 09:17:32"," ","","","publish","closed","closed","","141","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","132","https://tppone.com/demo/baohiem/?p=141","14","nav_menu_item","","0"),
("142","1","2019-04-01 16:17:32","2019-04-01 09:17:32"," ","","","publish","closed","closed","","142","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","132","https://tppone.com/demo/baohiem/?p=142","15","nav_menu_item","","0"),
("143","1","2019-04-01 16:17:32","2019-04-01 09:17:32"," ","","","publish","closed","closed","","143","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","132","https://tppone.com/demo/baohiem/?p=143","16","nav_menu_item","","0"),
("158","1","2019-04-01 16:34:45","2019-04-01 09:34:45","","banner","","inherit","open","closed","","banner","","","2019-04-01 16:34:45","2019-04-01 09:34:45","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/banner.jpg","0","attachment","image/jpeg","0"),
("189","1","2019-04-01 16:54:29","2019-04-01 09:54:29","","slider","","inherit","open","closed","","slider","","","2019-04-01 16:54:29","2019-04-01 09:54:29","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/slider.jpg","0","attachment","image/jpeg","0"),
("229","1","2019-04-01 17:55:52","2019-04-01 10:55:52","","tao-dung-tai-san_265x270","","inherit","open","closed","","tao-dung-tai-san_265x270","","","2019-04-01 17:55:52","2019-04-01 10:55:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/tao-dung-tai-san_265x270.jpg","0","attachment","image/jpeg","0"),
("243","1","2019-04-01 18:02:03","2019-04-01 11:02:03","","tich-luy-tuong-lai_265x270","","inherit","open","closed","","tich-luy-tuong-lai_265x270","","","2019-04-01 18:02:03","2019-04-01 11:02:03","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/tich-luy-tuong-lai_265x270.jpg","0","attachment","image/jpeg","0"),
("251","1","2019-04-01 18:05:54","2019-04-01 11:05:54","","rui-ro_265x270","","inherit","open","closed","","rui-ro_265x270","","","2019-04-01 18:05:54","2019-04-01 11:05:54","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/rui-ro_265x270.jpg","0","attachment","image/jpeg","0"),
("253","1","2019-04-01 18:06:05","2019-04-01 11:06:05","","suc-khoe_265x270","","inherit","open","closed","","suc-khoe_265x270","","","2019-04-01 18:06:05","2019-04-01 11:06:05","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/suc-khoe_265x270.jpg","0","attachment","image/jpeg","0"),
("257","1","2019-04-01 18:14:01","2019-04-01 11:14:01","Ngân hàng TMCP Công Thương Việt Nam và Công ty TNHH Bảo hiểm Nhân thọ Aviva Việt Nam (Aviva Việt Nam) tăng cường hợp tác, nỗ lực mang đến cho khách hàng các sản phẩm, dịch vụ vượt trội.\n\nTháng 4/2017, VietinBank đã ký kết với Tập đoàn Aviva hợp đồng chuyển nhượng phần vốn góp tại Công ty TNHH Bảo hiểm Nhân thọ Aviva Việt Nam (tên cũ là Công ty TNHH Bảo Hiểm Nhân Thọ VietinBank Aviva).\n\nNgay sau đó, VietinBank và Aviva Việt Nam đã ký kết hợp đồng hợp tác độc quyền trong việc phân phối sản phẩm bảo hiểm nhân thọ. Đây là một trong những hợp đồng hợp tác có thời hạn dài nhất trong lịch sử thị trường bảo hiểm nhân thọ Việt Nam.\n<div>Sau sự kiện này, quyền lợi của các khách hàng tham gia hợp đồng bảo hiểm nhân thọ của Aviva Việt Nam với tên gọi cũ trên các Hợp đồng bảo hiểm đã ký kết là Công ty TNHH Bảo hiểm Nhân thọ VietinBank Aviva sẽ vẫn được Aviva Việt Nam đảm bảo tuyệt đối.</div>\n<div></div>\n<div>Đặc biệt, tháng 7/2017, đối tác chiến lược của VietinBank là Aviva Việt Nam đã hoàn tất tăng vốn điều lệ lên 1.650 tỷ đồng, trở thành một trong những công ty bảo hiểm nhân thọ có vốn điều lệ lớn tại thị trường Việt Nam. Đây chính là một cam kết từ Công ty mẹ của Aviva Việt Nam là Tập đoàn Aviva trong việc đầu tư dài hạn vào thị trường Việt Nam.</div>\n<div></div>\n<div>VietinBank và Aviva Việt Nam đang phối hợp để xây dựng một danh mục sản phẩm bảo hiểm đa dạng cùng việc ứng dụng công nghệ mới vào hoạt động kinh doanh cũng như dịch vụ khách hàng để mang lại những trải nghiệm thuận tiện và hoàn hảo cho khách hàng.</div>\n<div></div>\n<div>Sự kiện VietinBank hợp tác độc quyền cùng Aviva Việt Nam đã đánh dấu một giai đoạn hợp tác mới giữa 2 bên và hứa hẹn sẽ tạo nên một bước đột phá trên thị trường bảo hiểm Việt Nam.</div>","Aviva Việt Nam hợp tác độc quyền với Vietinbank","","publish","open","open","","aviva-viet-nam-hop-tac-doc-quyen-voi-vietinbank","","","2019-04-03 00:14:00","2019-04-02 17:14:00","","0","https://tppone.com/demo/baohiem/?p=257","0","post","","0"),
("258","1","2019-04-01 18:13:56","2019-04-01 11:13:56","","post1","","inherit","open","closed","","post1","","","2019-04-01 18:13:56","2019-04-01 11:13:56","","257","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post1.jpg","0","attachment","image/jpeg","0"),
("260","1","2019-04-01 18:15:22","2019-04-01 11:15:22","Chương trình Quỹ Cộng Đồng Aviva là một chương trình Toàn cầu do Aviva tổ chức nhằm kêu gọi các dự án tạo nên những thay đổi tích cực cho cộng đồng. Chương trình được bắt đầu từ 2009, đã triển khai trên 6 quốc gia: Anh, Pháp, Ý, Ba Lan, Hồng Kông và Canada. Việt Nam là quốc gia đầu tiên ở Đông Nam Á triển khai chương trình vào 2017.\n\nVới chương trình Quỹ Cộng Đồng, Aviva kì vọng mang đến cơ hội biến các dự án cho cộng đồng trở thành hiện thực và lan tỏa tinh thần chủ động thay đổi vì những điều tốt đẹp hơn đến toàn thể xã hội, đặc biệt là những người trẻ.\n\nChương trình sẽ chính thức khởi động và nhận Dự án nộp về từ ngày 01/12/2017 và kết thúc nhận đơn vào ngày 15/01/2018. Các bạn có thể đăng ký và xem thêm thông tin chi tiết tại:\n\n<strong>Giải thưởng\n</strong>\nChương trình Quỹ Cộng Đồng Aviva sẽ có 3 mức tài trợ dự án 1.000$, 3.000$, và 5.000$.  Cụ thể:\n\n3 dự án nhận được khoản tài trợ 5.000$\n10 dự án nhận được khoản tài trợ 3.000$\n20 dự án nhận được khoản tài trợ 1.000$\n\n<strong>Thể lệ cuộc thi\n</strong>\n<strong>1. Đối tượng tham gia:\n</strong>\nCó thể tham gia cá nhân, hoặc cá nhân đại diện một nhóm/tổ chức tham gia.\nCông dân có quốc tịch Việt Nam và hiện đang sinh sống tại Việt Nam\nKhông phải là thành viên ban giám khảo hoặc thành viên trong gia đình của thành viên ban giám khảo Chương trình Quỹ Cộng Đồng Aviva (vợ/ chồng, con cái, cha/ mẹ, hoặc anh/ chị em);\nTrên 18 tuổi\n\n<strong>2. Quy định:\n</strong>\nBTC có quyền hủy bỏ tư cách dự thi nếu nhận thấy hành vi không tuân thủ quy định hoặc các hoạt động trong khuôn khổ yêu cầu của BTC.\nBTC có quyền chỉnh sửa thể lệ cuộc thi trong trường hợp cần thiết.\nQuyết định của BTC là quyết định cuối cùng. Mọi tranh chấp, khiếu nại, thắc mắc về quyết định của BTC xin gửi về địa chỉ email: quycongdong@aviva.com.vn\n\n<strong>3. Cơ cấu chương trình\n</strong>\nChương trình Quỹ Cộng Đồng Aviva 2017 bắt đầu từ ngày 01/12/2017 đến ngày 15/01/2018, gồm các mốc thời gian như sau:\n<ul>\n 	<li>Giai đoạn nộp Dự án (01/12/2017 – 15/01/2017)</li>\n</ul>\nỞ giai đoạn này, bạn sẽ phải biến các ý tưởng của bạn trở thành một dự án và trình bày với Aviva thông qua trang web chính thức của chương trình Quycongdong.aviva.com.vn. Trang web sẽ hỗ trợ các bạn trình bày dưới dạng text, hình ảnh và cả video.\n\nHướng dẫn nộp bài tại đây.\n<ul>\n 	<li>Giai đoạn Bình chọn (01/02/2018 – 01/03/2018)</li>\n</ul>\nTrong giai đoạn Bỏ phiếu, bạn có thể bắt đầu chia sẻ dự án của bạn với càng nhiều bạn bè, gia đình và những người ủng hộ Dự án của bạn càng tốt, để nhận được nhiều nhất có thể số lượt bình chọn. Các dự án có số phiếu bình chọn nhiều nhất sẽ lọt vào vòng chung kết.\n\nĐặc biệt, 20 dự án yêu cầu mức tài trợ 1000 đô la Mỹ đạt được số bình chọn cao nhất sẽ giành được khoản tài trợ ngay lập tức mà không cần phải qua vòng Chung kết\n\nBất cứ cá nhân nào đăng ký tài khoản hợp lệ trên trang web của chương trình Quỹ Cộng Đồng Aviva đều có thể bỏ phiếu cho các dự án (ngay cả khi bạn không nộp bất cứ một dự án nào thì bạn vẫn có quyền bỏ phiếu cho những dự án khác).\n\nMỗi tài khoản sẽ nhận được 10 phiếu bình. Bạn có thể bỏ phiếu cho nhiều dự án khác nhau hay dùng cả 10 phiếu cho một dự án đều được.\n<ul>\n 	<li>Vòng chung kết (01/04/2018 – 15/04/2018)</li>\n</ul>\n21 dự án với mức tài trợ 3000 đô la Mỹ và 6 dự án với mức tài trợ 5000 đô la Mỹ có số Bình chọn cao nhất sẽ vào vòng chung kết. Ban giám khảo của Chương trình Quỹ Cộng Đồng Aviva sẽ đánh giá các Dự án theo tiêu chí sau:\n\n<strong>(25% tổng điểm)</strong> Sức ảnh hưởng\n<strong>(15% tổng điểm) </strong>Khả năng hiện thực hóa\n<strong> (30% tổng điểm)</strong> Tuổi thọ &amp; Tính bền vững\n<strong>  (5% tổng điểm</strong>) Tính nguyên bản, mới lạ\n<strong> (10% tổng điểm</strong>) Chất lượng bài nộp\n<strong> (15% tổng điểm)</strong> Bình chọn\n\nKết quả chính thức các Dự Án sẽ nhận giải sẽ được công bố chính thức ngay sau đó.","Chương trình quỹ cộng đồng Aviva - Small Acts, Big change","","publish","open","open","","chuong-trinh-quy-cong-dong-aviva-small-acts-big-change","","","2019-04-01 18:15:22","2019-04-01 11:15:22","","0","https://tppone.com/demo/baohiem/?p=260","0","post","","0"),
("261","1","2019-04-01 18:15:19","2019-04-01 11:15:19","","post2","","inherit","open","closed","","post2","","","2019-04-01 18:15:19","2019-04-01 11:15:19","","260","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post2.jpg","0","attachment","image/jpeg","0"),
("263","1","2019-04-01 18:17:05","2019-04-01 11:17:05","Vừa qua vào trung tuần Tháng 1/2019, Aviva Việt Nam đã tổ chức Hội nghị phát động kinh doanh năm 2019 cho cả hai kênh đại lý và kênh hợp tác bảo hiểm - ngân hàng  Aviva - VietinBank.\n\nNhiệt huyết và năng động là không khí của lễ phát động kinh doanh 2019 diễn ra vào 02 ngày 11.1.2019 (kênh hợp tác bảo hiểm - ngân hàng  Aviva - VietinBank) và ngày 15.1.2019 (kênh đại lý). Với sự tham gia của hơn 600 chuyên viên tư vấn cùng đội ngũ lãnh đạo tinh hoa, cùng với hơn 1,000 đại lý và các MDRT, COT tài năng đã mang đến không khí sôi động và đầy quyết tâm chinh phục mục tiêu năm mới. Đặc biệt với sự hiện diện của ông Randy Lianggara - Giám Đốc Vùng và 3 nước Châu Á cùng ông Paul George Nguyen - Tổng Giám Đốc Aviva Việt Nam đã tiếp thêm sức mạnh cho đội quân màu vàng tiếp tục gặt hái thêm nhiều thành công trong năm 2019.\n\nMột số hình ảnh sôi động và tràn ngập năng lượng của buổi lễ phát động kinh doanh:\n\n<strong>Buổi lễ phát động kinh doanh Kênh hợp tác bảo hiểm - ngân hàng Aviva - VietinBank</strong>","Hội nghị khởi động kinh doanh năm 2019","","publish","open","open","","hoi-nghi-khoi-dong-kinh-doanh-nam-2019","","","2019-04-01 18:17:05","2019-04-01 11:17:05","","0","https://tppone.com/demo/baohiem/?p=263","0","post","","0"),
("265","1","2019-04-01 18:17:03","2019-04-01 11:17:03","","post3","","inherit","open","closed","","post3","","","2019-04-01 18:17:03","2019-04-01 11:17:03","","263","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post3.jpg","0","attachment","image/jpeg","0"),
("267","1","2019-04-01 18:18:15","2019-04-01 11:18:15","Aviva Châu Á vừa công bố kết quả hoạt động ấn tượng năm 2018, nổi bật bởi mức tăng 24% lợi nhuận hoạt động lên tới 133 triệu bảng Anh (tương đương 236.8 triệu đô la Singapore).\n<div>\nTrong một tuyên bố của tập đoàn bảo hiểm đa quốc gia có trụ sở tại Vương quốc Anh, Aviva cho biết sự tăng trưởng lợi nhuận hoạt động nói trên là nhờ có sự đóng góp cao hơn từ các bộ phận kinh doanh chủ chốt trong khu vực. Ngoài ra, tập đoàn này cũng cho biết nhờ các kênh phân phối được tăng cường và thị phần tiếp tục tăng trưởng ở các thị trường châu Á, nên doanh thu phí bảo hiểm từ các hợp đồng khai thác mới (VNB) đã tăng trưởng 15% lên tới 191 triệu bảng Anh (tương đương 340 triệu đô la Singapore).\n\nTheo Aviva, kênh đại lý bảo hiểm/tư vấn tài chính (FA) vẫn có vai trò đóng góp lớn nhất cho sự phát triển của tập đoàn tại Singapore. Tập đoàn bảo hiểm này cho biết họ sẽ tiếp tục đầu tư vào kênh này, “do có niềm tin rằng mô hình FA cung cấp sự linh hoạt và các lựa chọn nâng cao cho cả tư vấn viên bảo hiểm và khách hàng.”\n\nTại Trung Quốc, liên doanh Aviva-COFCO của tập đoàn được xếp thứ tư trong bảng xếp hạng tất cả các công ty bảo hiểm nhân thọ của Ủy ban Giám sát Ngân hàng và Bảo hiểm Trung Quốc về khả năng thanh toán và yêu cầu quản lý rủi ro.</div>\nSau khi Aviva Việt Nam trở thành công ty con hoàn toàn thuộc sở hữu của tập đoàn, trong năm ngoái đã ghi nhận sự tăng trưởng mạnh mẽ của công ty này. Kênh bancassurance của Aviva có sự đóng góp đáng kể, là kết quả từ việc cải thiện khâu tiếp cận với khách hàng, năng suất bán hàng và nâng cao năng lực sản phẩm trên toàn bộ 1,100 chi nhánh của đối tác ngân hàng độc quyền Vietinbank. Lực lượng đại lý của Aviva Vietnam cũng tăng mạnh về quy mô tuyển dụng, và tiếp tục mở rộng sự hiện diện trên các khu vực thị trường trong nước.\n\nVào tháng 9 năm 2018, liên doanh của Aviva với Tencent và Hillhouse đã ra mắt một thương hiệu bảo hiểm kỹ thuật số mới tại Trung Quốc – Blue. Đây là công ty bảo hiểm nhân thọ kỹ thuật số đầu tiên ở Hồng Kông, cung cấp các sản phẩm bảo hiểm nhân thọ tử kỳ, bảo hiểm cho bệnh hiểm nghèo và các sản phẩm bảo hiểm tai nạn cá nhân.\n\n“Dữ liệu lớn là động lực của thành công trong tương lai và bất cứ ai có chìa khóa để khai thác sức mạnh của nó sẽ giành chiến thắng,” theo ông Chris Wei, chủ tịch điều hành của Aviva Asia &amp; Friends Provident International và chủ tịch toàn cầu của Aviva Digital cho biết. “Niềm tin đó là cơ sở cho việc đầu tư của Aviva để thúc đẩy các khả năng phân tích và kỹ thuật số của chúng tôi trong năm qua. Cùng với chiến lược phân phối đa kênh, chúng tôi đã đạt được ​​sự tăng trưởng bền vững trên khắp châu Á, đó cũng là ưu tiên chiến lược của Aviva.”\n<div>“Xu hướng chuyển đổi kỹ thuật số là không thể đảo ngược và thị trường châu Á đã chín muồi cho sự phát triển đột phát này. Khả năng tiếp cận nhanh chóng và dễ dàng là những gì khách hàng của chúng tôi muốn trong kỷ nguyên kỹ thuật số và đó là những gì chúng tôi sẽ cố gắng cung cấp. Trong tương lai, chúng tôi sẽ tập trung nỗ lực vào công cuộc cải tổ hoạt động kinh doanh bảo hiểm, tiếp tục cải thiện dịch vụ sản phẩm của mình và ngày càng hoàn thiện các trải nghiệm của khách hàng.”</div>","Lợi nhuận hoạt động của Aviva Châu Á tăng vọt 24% trong năm 2018","","publish","open","open","","loi-nhuan-hoat-dong-cua-aviva-chau-a-tang-vot-24-trong-nam-2018","","","2019-04-01 18:18:15","2019-04-01 11:18:15","","0","https://tppone.com/demo/baohiem/?p=267","0","post","","0"),
("268","1","2019-04-01 18:18:12","2019-04-01 11:18:12","","post4","","inherit","open","closed","","post4","","","2019-04-01 18:18:12","2019-04-01 11:18:12","","267","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post4.jpg","0","attachment","image/jpeg","0"),
("270","1","2019-04-01 18:19:18","2019-04-01 11:19:18","Ngày 07/03/2019 vừa qua, Aviva Việt Nam đã ký Thỏa thuận hợp tác với Trường Đại học Kinh Tế Quốc Dân (ĐH KTQD) - một trong những trường đại học trọng điểm quốc gia hàng đầu của nước ta.\n\nTrong khuôn khổ của buổi lễ ký kết, GS. TS. Trần Thọ Đạt - Hiệu trưởng trường ĐH KTQD - đã có những chia sẻ ghi nhận và đánh giá cao thoả thuận hợp tác với Aviva Việt Nam mở ra cơ hội được học hỏi, trải nghiệm những kiến thức thực tế tại doanh nghiệp cho sinh viên của trường nói chung và của khoa Toán Tin nói riêng cũng như những hoạt động thực tiễn có thể triển khai ngay sau lễ ký kết này.\n\nBên cạnh đó, Ông Paul Nguyễn - CEO Aviva Việt Nam - cũng chia sẻ về cơ hội nghề nghiệp của các bạn sinh viên đối với ngành Bảo hiểm nói chung và tại Aviva Việt Nam nói riêng.\n\nKhép lại buổi ký kết, Ông Paul Nguyễn đã đến thăm và chia sẻ về 30 năm kinh nghiệm làm việc trong ngành bảo hiểm nhân thọ và ngành định phí của mình trong sự chào đón nồng ấm của các bạn sinh viên trường ĐH KTQD.\n\nBuổi lễ ký kết đã diễn ra thành công tốt đẹp hứa hẹn những cơ hội đồng hành và phát triển của cả hai bên.","Aviva Việt nam ký thỏa thuận hợp tác với trường Đại học Kinh tế Quốc Dân","","publish","open","open","","aviva-viet-nam-ky-thoa-thuan-hop-tac-voi-truong-dai-hoc-kinh-te-quoc-dan","","","2019-04-01 18:19:18","2019-04-01 11:19:18","","0","https://tppone.com/demo/baohiem/?p=270","0","post","","0"),
("271","1","2019-04-01 18:19:16","2019-04-01 11:19:16","","post5","","inherit","open","closed","","post5","","","2019-04-01 18:19:16","2019-04-01 11:19:16","","270","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post5.jpg","0","attachment","image/jpeg","0"),
("273","1","2019-04-01 18:20:23","2019-04-01 11:20:23","Công ty TNHH Bảo hiểm Nhân thọ Aviva Việt Nam (“Aviva”) xin chân thành cảm ơn Quý khách đã tín nhiệm và chọn lựa Aviva để giao phó trọng trách bảo vệ an toàn tài chính cho bản thân và gia đình.\n\nNhằm mục đích cung cấp đến Quý khách hàng những dịch vụ nhanh nhất, tốt nhất và hiệu quả nhất, kể từ ngày 01/01/2018 Aviva đã chính thức áp dụng hình thức hóa đơn điện tử (“HĐĐT”) để ghi nhận phí bảo hiểm nhận được từ Quý khách hàng. HĐĐT là hình thức hóa đơn hợp pháp và được quy định chi tiết tại Thông tư số 32/2011/TT-BTC ngày 14/3/2011 của Bộ Tài Chính hướng dẫn về khởi tạo, phát hành và sử dụng HĐĐT bán hàng hóa, cung ứng dịch vụ.\n\nAviva hiện sử dụng nhiều hình thức thu phí đa dạng để phục vụ Quý khách hàng như:\n• Đóng phí tại quầy giao dịch Ngân hàng Vietinbank, Vietcombank, BIDV.\n• Chuyển khoản từ tài khoản ngân hàng của Quý khách đến tài khoản của Aviva tại Vietinbank, Vietcombank, BIDV.\n• Đóng phí tại các Trung tâm Dịch vụ Khách hàng của Aviva ở Hà Nội và TP Hồ Chí Minh.\n• Sử dụng thẻ tín dụng/thẻ ghi nợ qua máy MPOS hoặc đóng tiền mặt cho Nhân viên tư vấn.\n• Trích nợ tự động định kỳ qua tài khoản thẻ tín dụng Vietinbank.\n\nSau khi nhận được phí bảo hiểm thanh toán từ Quý khách hàng, Aviva sẽ lập hóa đơn thu phí bảo hiểm theo định dạng PDF có chữ ký điện tử và chuyển HĐĐT lên cổng thông tin khách hàng tại địa chỉ <strong>https://www.einvoice.aviva.com.vn</strong> đồng thời gửi thông báo qua địa chỉ e-mail để Quý khách hàng thuận tiện trong việc kiểm tra.\nĐể nhận hóa đơn thu phí bảo hiểm, khách hàng chỉ cần thực hiện các thao tác sau:\n1. Truy cập vào Cổng thông tin khách hàng tại địa chỉ <strong>https://www.einvoice.aviva.com.vn </strong>\n2. Đăng nhập bằng tài khoản và mật khẩu được gửi vào e-mail của Quý khách hàng. Quý khách đổi mật khẩu cho lần đăng nhập đầu tiên. Trường hợp Quý khách chưa đăng ký địa chỉ e-mail thì Quý khách cần bổ sung thông tin e-mail vào Mẫu đăng ký thông tin và gửi về hòm thư wecare@aviva.com.vn hoặc liên hệ với các Trung tâm Dịch vụ Khách hàng của Aviva để được hướng dẫn.\n3. Sau khi đăng nhập, Quý khách có thể tra cứu HĐĐT cần xem. Quý khách hàng có thể tải HĐĐT về máy tính để lưu giữ.\nAviva tin rằng việc áp dụng hình thức này sẽ giúp cho Quý khách hàng nhận được hóa đơn thu phí bảo hiểm một cách nhanh chóng và thuận tiện hơn trong việc lưu giữ và tra cứu hóa đơn thu phí bảo hiểm.\n\nNếu cần giải đáp thắc mắc hoặc hỗ trợ liên quan đến HĐĐT, Quý khách vui lòng liên hệ với chúng tôi theo Tổng đài chăm sóc khách hàng <strong>(024) 3724 6699</strong>, email: <strong>wecare@aviva.com.vn</strong> ,website: https://www.aviva.com.vn để được hướng dẫn hoặc đến trực tiếp các Trung tâm Dịch vụ Khách hàng của Aviva để được phục vụ.\n\nChúng tôi rất mong nhận được sự ủng hộ nhiệt tình của Quý khách hàng và qua đó chung tay cùng với Aviva góp phần bảo vệ môi trường.\n\nTrân trọng kính chào.","Thông báo phương thức cung cấp HĐ điện tử đến khách hàng","","publish","open","open","","thong-bao-phuong-thuc-cung-cap-hoa-don-dien-tu-den-khach-hang","","","2019-04-01 18:28:02","2019-04-01 11:28:02","","0","https://tppone.com/demo/baohiem/?p=273","0","post","","0"),
("274","1","2019-04-01 18:20:20","2019-04-01 11:20:20","","post7","","inherit","open","closed","","post7","","","2019-04-01 18:20:20","2019-04-01 11:20:20","","273","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post7.jpg","0","attachment","image/jpeg","0"),
("276","1","2019-04-01 18:21:16","2019-04-01 11:21:16","Theo quy định của Bộ Thông tin và Truyền thông, các nhà mạng di động đã thực hiện chuyển đổi thành công số điện thoại di động 11 số thành 10 số. Do vậy, kể từ ngày 15/11/2018 tất cả các thông báo tin nhắn (SMS) của Aviva về phí bảo hiểm và hợp đồng bảo hiểm của Quý khách sẽ được gửi đến số điện thoại di động 10 số được chuyển đổi từ số điện thoại 11 số Quý khách đã cung cấp.\n\nTrong trường hợp có thay đổi thông tin liên lạc, Quý khách vui lòng liên hệ Tổng đài Chăm sóc Khách hàng của Aviva Việt Nam 024 3724 6699 để được hỗ trợ.","Thông báo về việc thay đổi đầu số điện thoại di động","","publish","open","open","","thong-bao-ve-viec-thay-doi-dau-so-dien-thoai-di-dong","","","2019-04-01 18:21:16","2019-04-01 11:21:16","","0","https://tppone.com/demo/baohiem/?p=276","0","post","","0"),
("277","1","2019-04-01 18:21:13","2019-04-01 11:21:13","","post8","","inherit","open","closed","","post8","","","2019-04-01 18:21:13","2019-04-01 11:21:13","","276","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post8.jpg","0","attachment","image/jpeg","0"),
("317","1","2019-04-02 22:16:12","2019-04-02 15:16:12","","rmit_university_logo.svg","","inherit","open","closed","","rmit_university_logo-svg","","","2019-04-02 22:16:12","2019-04-02 15:16:12","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/rmit_university_logo.svg.png","0","attachment","image/png","0"),
("321","1","2019-04-02 22:17:50","2019-04-02 15:17:50","","logo-vbi","","inherit","open","closed","","logo-vbi","","","2019-04-02 22:17:50","2019-04-02 15:17:50","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/logo-vbi.png","0","attachment","image/png","0"),
("325","1","2019-04-02 22:19:24","2019-04-02 15:19:24","","hội-chữ-thập-đỏ-vn","","inherit","open","closed","","hoi-chu-thap-do-vn","","","2019-04-02 22:19:24","2019-04-02 15:19:24","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/hội-chữ-thập-đỏ-vn.jpeg","0","attachment","image/jpeg","0"),
("329","1","2019-04-02 22:19:52","2019-04-02 15:19:52","","partner_2","","inherit","open","closed","","partner_2","","","2019-04-02 22:19:52","2019-04-02 15:19:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/partner_2.png","0","attachment","image/png","0"),
("333","1","2019-04-02 22:21:42","2019-04-02 15:21:42","","partner_3","","inherit","open","closed","","partner_3","","","2019-04-02 22:21:42","2019-04-02 15:21:42","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/partner_3.png","0","attachment","image/png","0"),
("336","1","2019-04-02 22:22:37","2019-04-02 15:22:37","","hello-bac-si-logo","","inherit","open","closed","","hello-bac-si-logo","","","2019-04-02 22:22:37","2019-04-02 15:22:37","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/hello-bac-si-logo.png","0","attachment","image/png","0"),
("348","1","2019-04-02 22:47:45","2019-04-02 15:47:45","[section label=\"Footer section\" bg_color=\"rgb(51, 51, 51)\" padding=\"45px\" class=\"footer-section\"]\n\n[row]\n\n[col span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"356\" image_size=\"original\" width=\"13\"]\n\n[gap height=\"11px\"]\n\n\n[/col]\n[col span__sm=\"12\" visibility=\"show-for-small\"]\n\n[ux_image id=\"356\" image_size=\"original\" width=\"67\"]\n\n[gap height=\"11px\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3 class=\"title-ft\"><span style=\"font-size: 85%;\">TRỤ SỞ CHÍNH</span></h3>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\"><strong>CÔNG TY TNHH BẢO HIỂM<br />NHÂN THỌ AVIVA VIỆT NAM</strong></span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Tầng 13, Tòa nhà Mipec Tower, số 229 Tây Sơn, Quận Đống Đa, Hà Nội</span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Hotline: <a style=\"color: #c0c0c0;\" href=\"#\">24-3724-6699</a> </span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Tel: <a style=\"color: #c0c0c0;\" href=\"#\">(84) 24 3771 5577</a> </span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Fax: <a style=\"color: #c0c0c0;\" href=\"#\">(84) 24 3724 6446</a></span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Email: <a style=\"color: #c0c0c0;\" href=\"#\">wecare@aviva.com.vn</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3 class=\"title-ft\"><span style=\"font-size: 85%;\">TRỤ SỞ CHÍNH</span></h3>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\"><strong>CÔNG TY TNHH BẢO HIỂM<br />NHÂN THỌ AVIVA VIỆT NAM</strong></span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Tầng 8, Tòa nhà Mapletree Business Centre, 1060 Nguyễn Văn Linh, Phường Tân Phong, Quận 7, Thành phố Hồ Chí Minh</span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Hotline: <a style=\"color: #c0c0c0;\" href=\"#\">24-3724-6699</a> </span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Tel: <a style=\"color: #c0c0c0;\" href=\"#\">(84) 28 7307 5577</a> </span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Fax: <a style=\"color: #c0c0c0;\" href=\"#\">(84) 24 3724 6446 </a></span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Email: <a style=\"color: #c0c0c0;\" href=\"#\">wecare@aviva.com.vn</a></span></p>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 80%;\">GIỚI THIỆU</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Về Aviva Việt Nam</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Tuyển dụng</a></span></li>\n</ul>\n<h3><span style=\"font-size: 80%;\">SẢN PHẨM</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Cá nhân</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Doanh nghiệp</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Lãi suất công bố</a></span></li>\n</ul>\n</nav>\n</nav>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 80%;\">TIN TỨC - SỰ KIỆN</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"/category/tin-tuc/\" target=\"_self\" rel=\"noopener noreferrer\">Tin tức - Sự kiện</a></span></li>\n</ul>\n<h3><span style=\"font-size: 80%;\">DỊCH VỤ </span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"/ho-tro-khach-hang/\" target=\"_self\" rel=\"noopener noreferrer\">Dịch vụ khách hàng</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">FAQs</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"/lien-he/\" target=\"_self\" rel=\"noopener noreferrer\">Liên hệ</a></span></li>\n</ul>\n</nav>\n</nav>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 80%;\">CSR</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_blank\" rel=\"noopener noreferrer\">Quỹ cộng đồng Aviva</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_blank\" rel=\"noopener noreferrer\">Học bổng Aviva</a></span></li>\n</ul>\n<nav class=\"footer-link\"></nav>\n</nav>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n\n[/row]\n<p>[lightbox id=\"dang-ky\" width=\"700px\" padding=\"0px\"][contact-form-7 id=\"1270\" title=\"Đăng ký tư vấn\"][/lightbox]</p>\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-04-03 15:50:37","2019-04-03 08:50:37","","0","https://tppone.com/demo/baohiem/?post_type=blocks&#038;p=348","0","blocks","","0"),
("356","1","2019-04-02 22:49:31","2019-04-02 15:49:31","","logo-giuseart","","inherit","open","closed","","logo-giuseart-2","","","2019-04-02 22:49:31","2019-04-02 15:49:31","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/logo-giuseart-1.png","0","attachment","image/png","0"),
("374","1","2019-04-02 23:01:19","2019-04-02 16:01:19","","Điều khoản chung","","publish","closed","closed","","dieu-khoan-chung","","","2019-04-02 23:01:19","2019-04-02 16:01:19","","0","https://tppone.com/demo/baohiem/?page_id=374","0","page","","0"),
("376","1","2019-04-02 23:01:27","2019-04-02 16:01:27","","Chính sách bảo mật","","publish","closed","closed","","chinh-sach-bao-mat-2","","","2019-04-02 23:01:27","2019-04-02 16:01:27","","0","https://tppone.com/demo/baohiem/?page_id=376","0","page","","0"),
("378","1","2019-04-02 23:01:32","2019-04-02 16:01:32","","Chính sách thanh toán","","publish","closed","closed","","chinh-sach-thanh-toan","","","2019-04-02 23:01:32","2019-04-02 16:01:32","","0","https://tppone.com/demo/baohiem/?page_id=378","0","page","","0"),
("380","1","2019-04-02 23:01:48","2019-04-02 16:01:48"," ","","","publish","closed","closed","","380","","","2019-04-02 23:01:48","2019-04-02 16:01:48","","0","https://tppone.com/demo/baohiem/?p=380","1","nav_menu_item","","0"),
("381","1","2019-04-02 23:01:48","2019-04-02 16:01:48"," ","","","publish","closed","closed","","381","","","2019-04-02 23:01:48","2019-04-02 16:01:48","","0","https://tppone.com/demo/baohiem/?p=381","2","nav_menu_item","","0"),
("382","1","2019-04-02 23:01:48","2019-04-02 16:01:48"," ","","","publish","closed","closed","","382","","","2019-04-02 23:01:48","2019-04-02 16:01:48","","0","https://tppone.com/demo/baohiem/?p=382","3","nav_menu_item","","0"),
("405","1","2019-04-02 23:30:09","2019-04-02 16:30:09","","icon1","","inherit","open","closed","","icon1","","","2019-04-02 23:30:09","2019-04-02 16:30:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon1.jpg","0","attachment","image/jpeg","0"),
("406","1","2019-04-02 23:30:09","2019-04-02 16:30:09","","icon2","","inherit","open","closed","","icon2","","","2019-04-02 23:30:09","2019-04-02 16:30:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon2.jpg","0","attachment","image/jpeg","0"),
("407","1","2019-04-02 23:30:10","2019-04-02 16:30:10","","icon3","","inherit","open","closed","","icon3","","","2019-04-02 23:30:10","2019-04-02 16:30:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon3.jpg","0","attachment","image/jpeg","0"),
("408","1","2019-04-02 23:30:10","2019-04-02 16:30:10","","icon4","","inherit","open","closed","","icon4","","","2019-04-02 23:30:10","2019-04-02 16:30:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon4.jpg","0","attachment","image/jpeg","0"),
("409","1","2019-04-02 23:30:10","2019-04-02 16:30:10","","icon5","","inherit","open","closed","","icon5","","","2019-04-02 23:30:10","2019-04-02 16:30:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon5.jpg","0","attachment","image/jpeg","0"),
("411","1","2019-04-02 23:42:00","2019-04-02 16:42:00","[section label=\"Nộp hồ sơ trực tuyến\" bg_size=\"original\" padding=\"0px\" class=\"nop-ho-so-truc-tuyen\"]\n\n[row custom_width=\"1300px\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"419\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row custom_width=\"1300px\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2><span style=\"color: #000000;\">ĐỐI TƯỢNG ÁP DỤNG</span></h2>\n<p>Tất cả các khách hàng hiện hữu đang tham gia bảo hiểm với Aviva có yêu cầu giải quyết 1 trong 4 Quyền lợi bảo hiểm sau:</p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"426\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">Hỗ trợ chi phí nằm viện/ phẫu thuật</span></p>\n\n[/featured_box]\n[gap height=\"23px\"]\n\n[featured_box img=\"428\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">Thương tật toàn bộ vĩnh viễn</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"427\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">Bệnh hiểm nghèo</span></p>\n\n[/featured_box]\n[gap height=\"23px\"]\n\n[featured_box img=\"429\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">Tử vong</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"422\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"chung-tu\"]\n\n[col span=\"3\" span__sm=\"6\" class=\"chi-phi-nam-vien\"]\n\n<h3>Hỗ trợ chi phí nằm viện/ phẫu thuận</h3>\n<ol>\n<li>Đơn yêu cầu giải quyết quyền lợi bảo hiểm (theo mẫu)</li>\n<li>Giấy ra viện</li>\n<li>Giấy tờ y tế đối với Quyền lợi Hỗ trợ phẫu thuật : Giấy ra viện, Giấy chứng nhận phẫu thuật, Bảng kê chi tiết viện phí, Sổ y bạ</li>\n<li>Các chứng từ y tế khác có liên quan (nếu có)</li>\n</ol>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" class=\"benh-hiem-ngheo\"]\n\n<h3>Bệnh hiểm nghèo</h3>\n<ol>\n<li>Đơn yêu cầu giải quyết quyền lợi bảo hiểm (theo mẫu)</li>\n<li>Giấy tờ y tế: Hồ sơ khám bệnh, Kết quả giải phẫu bệnh hoặc kết quả sinh thiết</li>\n<li>Các chứng từ y tế khác có liên quan (nếu có)</li>\n</ol>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" class=\"thuong-tat\"]\n\n<h3>Thương tật toàn bộ vĩnh viên</h3>\n<ol>\n<li>Đơn yêu cầu giải quyết quyền lợi bảo hiểm (theo mẫu)</li>\n<li>Biên bản về tại nạn của cơ quan có thẩm quyền</li>\n<li>Giấy tờ y tế: Toàn bộ chứng từ y tế liên quan đến tai nạn (hồ sơ khám bệnh giấy ra viện, tóm tắt bệnh án …)</li>\n<li>Bản gốc hợp đồng bảo hiểm</li>\n</ol>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" class=\"tu-vong\"]\n\n<h3>Trường hợp tử vong</h3>\n\n<ol>\n<li>Đơn yêu cầu giải quyết quyền lợi bảo hiểm (theo mẫu)</li>\n<li>Trích lục khai tử</li>\n<li>Biên bản về tại nạn của cơ quan thẩm quyền (trường hợp tai nạn)</li>\n<li>Giấy tờ y tế : Toàn bộ chứng từ y tế liên quan đến sự kiện tử vong (hồ sơ khám bệnh, giấy ra viện, tóm tắt bệnh án...)</li>\n<li>Bản gốc hợp đồng bảo hiểm</li>\n</ol>\n\n[/col]\n\n[/row]\n[gap]\n\n[row class=\"giai-quyet-quyen-loi\"]\n\n[col span__sm=\"12\"]\n\n[gap]\n\n[title style=\"center\" text=\"Giải quyết quyền lợi bảo hiểm chỉ trong 3 bước\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"buoc1\"]\n\n[featured_box img=\"499\" pos=\"left\"]\n\n<h3><span style=\"font-size: 170%;\">01</span></h3>\n<p>Nhập thông tin yêu cầu GQQLBH, bao gồm thông tin về bên mua bảo hiểm</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"buoc2\"]\n\n[featured_box img=\"508\" pos=\"left\"]\n\n<h3><span style=\"font-size: 170%;\">02</span></h3>\n<p>Chọn QLBH yêu cầu, đính kèm các ảnh chụp các chứng từ liên quan Quý khách đã chuẩn bị</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"buoc3\"]\n\n[featured_box img=\"511\" pos=\"left\"]\n\n<h3><span style=\"font-size: 170%;\">03</span></h3>\n<p>Nhập số điện thoại của Bên mua bảo hiểm để xác nhận việc nộp yêu cầu GQQLBH đã hoàn tất</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[gap height=\"48px\"]\n\n[row class=\"thoi-gian-phuc-dap\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"526\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap height=\"21px\"]\n\n<h2>THỜI GIAN PHÚC ĐÁP CỦA CHÚNG TÔI</h2>\n<p>Ngay sau khi gửi yêu cầu GQQLBH thành công:</p>\n<ul>\n<li>Màn hình sẽ hiện thông báo Quý khách đã hoàn tất Nộp hồ sơ GQQLBH</li>\n<li>Tin nhắn (SMS) xác nhận từ Aviva sẽ được gửi đến số điện thoại Quý khách đã cung cấp.</li>\n<li>Đối với yêu cầu Quyền lợi Hỗ trợ chi phí nằm viện/phẫu thuật, Aviva sẽ gửi thư phúc đáp trong vòng 5 ngày làm việc</li>\n<li>Đối với yêu cầu Quyền lợi tử vong/Quyền lợi Bệnh hiểm nghèo/Quyền lợi thương tật toàn bộ vĩnh viễn, Aviva sẽ gửi thư phúc đáp trong vòng 7 ngày làm việc.</li>\n</ul>\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n[gap]\n\n[button text=\"Bắt đầu nộp hồ sơ\" letter_case=\"lowercase\" radius=\"99\" icon=\"icon-user\" icon_reveal=\"true\" link=\"#dang-ky\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Nộp hồ sơ trực tuyến","","publish","closed","closed","","nop-ho-so-truc-tuyen","","","2019-04-03 00:50:55","2019-04-02 17:50:55","","0","https://tppone.com/demo/baohiem/?page_id=411","0","page","","0"),
("414","1","2019-04-02 23:43:14","2019-04-02 16:43:14","","banner-page","","inherit","open","closed","","banner-page","","","2019-04-02 23:43:14","2019-04-02 16:43:14","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/banner-page.jpg","0","attachment","image/jpeg","0"),
("419","1","2019-04-02 23:45:07","2019-04-02 16:45:07","","banner-page","","inherit","open","closed","","banner-page-2","","","2019-04-02 23:45:07","2019-04-02 16:45:07","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/banner-page-1.jpg","0","attachment","image/jpeg","0"),
("422","1","2019-04-02 23:46:53","2019-04-02 16:46:53","","bac-sy","","inherit","open","closed","","bac-sy","","","2019-04-02 23:46:53","2019-04-02 16:46:53","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bac-sy.jpg","0","attachment","image/jpeg","0"),
("426","1","2019-04-02 23:49:16","2019-04-02 16:49:16","","ICON-1","","inherit","open","closed","","icon-1","","","2019-04-02 23:49:16","2019-04-02 16:49:16","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ICON-1.jpg","0","attachment","image/jpeg","0"),
("427","1","2019-04-02 23:49:17","2019-04-02 16:49:17","","ICON-2","","inherit","open","closed","","icon-2","","","2019-04-02 23:49:17","2019-04-02 16:49:17","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ICON-2.jpg","0","attachment","image/jpeg","0"),
("428","1","2019-04-02 23:49:17","2019-04-02 16:49:17","","ICON-3","","inherit","open","closed","","icon-3","","","2019-04-02 23:49:17","2019-04-02 16:49:17","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ICON-3.jpg","0","attachment","image/jpeg","0"),
("429","1","2019-04-02 23:49:17","2019-04-02 16:49:17","","ICON-4","","inherit","open","closed","","icon-4","","","2019-04-02 23:49:17","2019-04-02 16:49:17","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ICON-4.jpg","0","attachment","image/jpeg","0");
INSERT INTO gdd_posts VALUES
("499","1","2019-04-03 00:25:46","2019-04-02 17:25:46","","icon12","","inherit","open","closed","","icon12","","","2019-04-03 00:25:46","2019-04-02 17:25:46","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon12.png","0","attachment","image/png","0"),
("508","1","2019-04-03 00:29:24","2019-04-02 17:29:24","","icon13","","inherit","open","closed","","icon13","","","2019-04-03 00:29:24","2019-04-02 17:29:24","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon13.png","0","attachment","image/png","0"),
("511","1","2019-04-03 00:29:52","2019-04-02 17:29:52","","icon14","","inherit","open","closed","","icon14","","","2019-04-03 00:29:52","2019-04-02 17:29:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon14.png","0","attachment","image/png","0"),
("526","1","2019-04-03 00:34:33","2019-04-02 17:34:33","","hinh2","","inherit","open","closed","","hinh2","","","2019-04-03 00:34:33","2019-04-02 17:34:33","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/hinh2.jpg","0","attachment","image/jpeg","0"),
("541","1","2019-04-03 00:47:12","2019-04-02 17:47:12","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"544\" image_size=\"original\"]\n\n[gap]\n\n<h2 class=\"title-news\" style=\"text-align: center;\">ĐÓNG PHÍ BẢO HIỂM ĐỊNH KỲ</h2>\n<p><strong>1.Các thông báo về phí bảo hiểm định kỳ</strong></p>\n<p>Để giúp khách hàng cập nhật kịp thời thông tin phí Bảo hiểm đến hạn, các thông báo/nhắc phí được gửi đến khách hàng theo trình tự thời gian sau:</p>\n[ux_image id=\"548\" image_size=\"original\"]\n\n<p><strong>1.1 Tin nhắn SMS</strong></p>\n<p>Với các hợp đồng bảo hiểm chưa đóng phí định kỳ, khách hàng sẽ nhận được tối đa 3 lần thông báo bằng SMS:</p>\n<ul>\n<li>Thông báo phí bảo hiểm đến hạn - 15 ngày trước ngày đến hạn đóng phí</li>\n<li>Thông báo đến hạn đóng phí vào ngày đến hạn đóng phí</li>\n<li>Thông báo phí bảo hiểm quá hạn lần 1 - 30 ngày sau ngày đến hạn đóng đóng phí</li>\n<li>Thông báo phí bảo hiểm quá hạn lần 2 - 45 ngày sau ngày đến hạn đóng đóng phí</li>\n</ul>\n<p><strong>1.2 Thư báo được gửi qua Bưu điện</strong></p>\n<p>Thư báo sẽ được gửi vào ngày thứ 30 sau ngày đến hạn đóng phí nếu Aviva chưa nhận được phí bảo hiểm định kỳ.</p>\n<p><strong>1.3 Điện thoại trực tiếp đến khách hàng</strong></p>\n<p>30 ngày kể từ ngày đến hạn đóng phí và phí định ký chưa được đóng, Nhân viên Dịch vụ khách hàng Aviva sẽ điện thoại trao đổi với Bên mua bảo hiểm để hỗ trợ và hướng dẫn các kênh đóng phí phù hợp và thuận tiện nhất cho khách hàng.</p>\n<p><strong>2. Các phương thức đóng phí bảo hiểm định kỳ</strong></p>\n<p>Hiện nay tại Aviva cung cấp cho Quý khách 5 hình thức đóng phí bảo hiểm định kỳ:</p>\n<p><strong>2.1 Đóng phí tại quầy Ngân hàng Vietinbank</strong></p>\n<p>Quý khách có thể đóng tiền trực tiếp vào tài khoản của Aviva tại bất kỳ Văn phòng giao dịch/Chi nhánh nào của Ngân hàng TMCP Công thương Việt Nam (Vietinbank).</p>\n<p>Tìm chi nhánh Vietinbank gần nhất tại đây: <a href=\"https://www.vietinbank.vn/web/home/vn/contact/network/index.html\" target=\"_blank\" rel=\"noopener noreferrer\">https://www.vietinbank.vn/web/home/vn/contact/network/index.html</a></p>\n<p><strong>2.2 Chuyển khoản từ tài khoản ngân hàng của Quý khách đến tài khoản của Aviva </strong></p>\n<p>Quý khách có thể đóng phí bảo hiểm định kỳ bằng cách chuyển khoản vào tài khoản Aviva, với thông tin chuyển khoản như sau:</p>\n<ul>\n<li>Tên công ty thụ hưởng: <strong>Công ty TNHH Bảo hiểm Nhân thọ Aviva Việt Nam</strong></li>\n<li>Ngân hàng, số tài khoản và chi nhánh: Quý khách vui lòng chọn một trong các tài khoản sau:</li>\n</ul>\n<p><strong>2.3 Đóng phí tại các Trung tâm Dịch vụ Khách hàng tại Hà Nội và TP Hồ Chí Minh</strong></p>\n<p>Quý khách có thể đóng tiền trực tiếp thông qua tiền mặt hoặc thẻ qua POS tại các trung tâm Dịch vụ Khách hàng của Aviva tại Hà Nội và TP Hồ Chí Minh.</p>\n<p><strong>2.4 Đóng tiền mặt hoặc thẻ qua MPOS cho Nhân viên tư vấn</strong></p>\n<p>Quý khách có thể đóng tiền trực tiếp thông qua tiền mặt hoặc thẻ qua MPOS cho Nhân viên tư vấn ngay tại nhà.</p>\n<p><strong>2.5 Trích nợ tự động định kỳ qua tài khoản thẻ tín dụng Vietinbank</strong></p>\n<p>Quý khách có thể tự động định kỳ đóng phí bảo hiểm thông qua thẻ tín dụng của VietinBank.</p>\n<p><em>Lưu ý: Dịch vụ chỉ áp dụng cho Khách hàng của Aviva đã ký giấy ủy quyền trích nợ tự động và có tài khoản thẻ tín dụng quốc tế mở tại Vietinbank.</em></p>\n\n[/col]\n\n[/row]","Đóng phí bảo hiểm","","publish","closed","closed","","dong-phi-bao-hiem","","","2019-04-03 00:50:16","2019-04-02 17:50:16","","0","https://tppone.com/demo/baohiem/?page_id=541","0","page","","0"),
("544","1","2019-04-03 00:47:42","2019-04-02 17:47:42","","bg2","","inherit","open","closed","","bg2","","","2019-04-03 00:47:42","2019-04-02 17:47:42","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg2.jpg","0","attachment","image/jpeg","0"),
("548","1","2019-04-03 00:48:54","2019-04-02 17:48:54","","bg3","","inherit","open","closed","","bg3","","","2019-04-03 00:48:54","2019-04-02 17:48:54","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg3.jpg","0","attachment","image/jpeg","0"),
("554","1","2019-04-03 00:51:22","2019-04-02 17:51:22","[row class=\"cac-mau-don\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"557\" image_size=\"original\"]\n\n[tabgroup style=\"tabs\" nav_style=\"normal\" align=\"center\"]\n\n[tab title=\"Giải quyết quyền lợi bảo hiểm\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h2 class=\"title-page\">GIẢI QUYẾT QUYỀN LỢI BẢO HIỂM</h2>\n<ul>\n<li>Quý khách vui lòng chọn mẫu biểu phù hợp, điền đầy đủ thông tin và gửi về Aviva Việt Nam theo một trong những phương thức sau:</li>\n<li>Nộp trực tiếp Phiếu yêu cầu tại các văn phòng của Aviva Việt Nam hoặc văn phòng chi nhánh Aviva Việt Nam gần nhất</li>\n<li>Thông qua đại lý phục vụ hợp đồng bảo hiểm của Quý khách</li>\n<li>Gửi Phiếu yêu cầu qua Bưu điện Việt Nam (VNPost) về: Tầng 13, Tòa nhà Mipec tower, 229 Tây Sơn, Quận Đống Đa, Hà Nội</li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Biểu mẫu</th>\n            <th>Tải về</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">Tường trình tai nạn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phiếu yêu cầu giải quyết Quyền lợi bảo hiểm</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Bệnh hiểm nghèo</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH hỗ trợ viện phí và phẫu thuật</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Phát An Tín Dụng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH tạm thời</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Thương tật toàn bộ vĩnh viễn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Tử vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n[tab title=\"Hợp đồng mới\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h1 class=\"title-page\">HỢP ĐỒNG MỚI</h1>\n<p>Quý khách vui lòng chọn mẫu biểu phù hợp, điền đầy đủ thông tin và gửi về Aviva Việt Nam theo một trong những phương thức sau:</p>\n<ul>\n<li>Nộp trực tiếp Phiếu yêu cầu tại các văn phòng của Aviva Việt Nam hoặc văn phòng chi nhánh Aviva Việt Nam gần nhất</li>\n<li>Thông qua đại lý phục vụ hợp đồng bảo hiểm của Quý khách</li>\n<li>Gửi Phiếu yêu cầu qua Bưu điện Việt Nam (VNPost) về: Tầng 13, Tòa nhà Mipec tower, 229 Tây Sơn, Quận Đống Đa, Hà Nội</li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Biểu mẫu</th>\n            <th>Tải về</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">Tường trình tai nạn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phiếu yêu cầu giải quyết Quyền lợi bảo hiểm</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Bệnh hiểm nghèo</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH hỗ trợ viện phí và phẫu thuật</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Phát An Tín Dụng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH tạm thời</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Thương tật toàn bộ vĩnh viễn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Tử vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n[tab title=\"Điều chỉnh hợp đồng\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h1 class=\"title-page\">ĐIỀU CHỈNH HỢP ĐỒNG</h1>\n<p>Quý khách vui lòng chọn mẫu biểu phù hợp, điền đầy đủ thông tin và gửi về Aviva Việt Nam theo một trong những phương thức sau:</p>\n<ul>\n<li>Nộp trực tiếp Phiếu yêu cầu tại các văn phòng của Aviva Việt Nam hoặc văn phòng chi nhánh Aviva Việt Nam gần nhất</li>\n<li>Thông qua đại lý phục vụ hợp đồng bảo hiểm của Quý khách</li>\n<li>Gửi Phiếu yêu cầu qua Bưu điện Việt Nam (VNPost) về: Tầng 13, Tòa nhà Mipec tower, 229 Tây Sơn, Quận Đống Đa, Hà Nội</li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Biểu mẫu</th>\n            <th>Tải về</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">Tường trình tai nạn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phiếu yêu cầu giải quyết Quyền lợi bảo hiểm</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Bệnh hiểm nghèo</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH hỗ trợ viện phí và phẫu thuật</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Phát An Tín Dụng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH tạm thời</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Thương tật toàn bộ vĩnh viễn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Tử vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n[tab title=\"Ủy quyền\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h1 class=\"title-page\">ỦY QUYỀN</h1>\n<p class=\"title-page\">Quý khách vui lòng chọn mẫu biểu phù hợp, điền đầy đủ thông tin và gửi về Aviva Việt Nam theo một trong những phương thức sau:</p>\n<div class=\"brief\">\n<ul>\n<li>Nộp trực tiếp Phiếu yêu cầu tại các văn phòng của Aviva Việt Nam hoặc văn phòng chi nhánh Aviva Việt Nam gần nhất</li>\n<li>Thông qua đại lý phục vụ hợp đồng bảo hiểm của Quý khách</li>\n<li>Gửi Phiếu yêu cầu qua Bưu điện Việt Nam (VNPost) về: Tầng 13, Tòa nhà Mipec tower, 229 Tây Sơn, Quận Đống Đa, Hà Nội</li>\n</ul>\n</div>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Biểu mẫu</th>\n            <th>Tải về</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">Tường trình tai nạn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phiếu yêu cầu giải quyết Quyền lợi bảo hiểm</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Bệnh hiểm nghèo</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH hỗ trợ viện phí và phẫu thuật</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Phát An Tín Dụng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH tạm thời</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Thương tật toàn bộ vĩnh viễn</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">Hướng dẫn hồ sơ GQQLBH Tử vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n\n[/tabgroup]\n\n[/col]\n\n[/row]","Mẫu đơn thông dụng","","publish","closed","closed","","mau-don-thong-dung","","","2019-04-03 01:11:06","2019-04-02 18:11:06","","0","https://tppone.com/demo/baohiem/?page_id=554","0","page","","0"),
("557","1","2019-04-03 00:52:03","2019-04-02 17:52:03","","bg4","","inherit","open","closed","","bg4","","","2019-04-03 00:52:03","2019-04-02 17:52:03","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg4.jpg","0","attachment","image/jpeg","0"),
("577","1","2019-04-03 01:00:06","2019-04-02 18:00:06","","fb_logo","","inherit","open","closed","","fb_logo","","","2019-04-03 01:00:06","2019-04-02 18:00:06","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/fb_logo.jpg","0","attachment","image/jpeg","0"),
("594","1","2019-04-03 01:11:59","2019-04-02 18:11:59","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"597\" image_size=\"original\"]\n\n[gap]\n\n[title style=\"center\" text=\"LIÊN HỆ\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\">Chúng tôi rất mong muốn nhận được những ý kiến đóng góp của các bạn<br />Vui lòng liên hệ với chúng tôi qua các thông tin bên dưới.</p>\n\n[/col]\n\n[/row]\n[row style=\"collapse\" class=\"lien-he-section\"]\n\n[col span=\"4\" span__sm=\"12\" class=\"cot1\"]\n\n<div class=\"contact-title\">\n<h3>Thông tin liên hệ</h3>\n</div>\n<h4 class=\"lien-he1\">CHI NHÁNH (HCM)</h4>\n<ul>\n<li class=\"lien-he1\"><span style=\"font-size: 95%;\">Tầng 8, Tòa nhà Mapletree Business Centre, 1060 Nguyễn Văn Linh, Phường Tân Phong, Quận 7, Thành phố Hồ Chí Minh</span></li>\n<li class=\"lien-he1\"><span style=\"font-size: 95%;\">028 7307 5577</span></li>\n<li class=\"lien-he1\"><span style=\"font-size: 95%;\">wecare@aviva.com.vn</span></li>\n</ul>\n<h4 class=\"lien-he2\">VĂN PHÒNG KINH DOANH - HCM</h4>\n<ul>\n<li class=\"lien-he1\">\n<div><span style=\"font-size: 95%;\">72 Lê Thánh Tôn, Bến Nghé, Quận 1, Hồ Chí Minh, Việt Nam</span></div>\n</li>\n<li class=\"lien-he1\">\n<div><span style=\"font-size: 95%;\">028 7302 5577</span></div>\n</li>\n<li class=\"lien-he1\">\n<div><span style=\"font-size: 95%;\">wecare@aviva.com.vn</span></div>\n</li>\n</ul>\n\n[/col]\n[col span=\"8\" span__sm=\"12\" padding=\"0px 20px 0px 20px\"]\n\n[contact-form-7 id=\"1270\"]\n\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2019-04-03 15:24:03","2019-04-03 08:24:03","","0","https://tppone.com/demo/baohiem/?page_id=594","0","page","","0"),
("597","1","2019-04-03 09:23:28","2019-04-03 02:23:28","","lienhe","","inherit","open","closed","","lienhe","","","2019-04-03 09:23:28","2019-04-03 02:23:28","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/lienhe.jpg","0","attachment","image/jpeg","0"),
("623","1","2019-04-03 09:38:44","2019-04-03 02:38:44","","maps","","inherit","open","closed","","maps","","","2019-04-03 09:38:44","2019-04-03 02:38:44","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/maps.jpg","0","attachment","image/jpeg","0"),
("636","1","2019-04-03 09:47:59","2019-04-03 02:47:59","","san-phan","","inherit","open","closed","","san-phan","","","2019-04-03 09:47:59","2019-04-03 02:47:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/san-phan.jpg","0","attachment","image/jpeg","0"),
("674","1","2019-04-03 10:02:49","2019-04-03 03:02:49","","1234556","","inherit","open","closed","","1234556","","","2019-04-03 10:02:49","2019-04-03 03:02:49","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/1234556.jpg","0","attachment","image/jpeg","0"),
("681","1","2019-04-03 10:05:52","2019-04-03 03:05:52","","img2","","inherit","open","closed","","img2","","","2019-04-03 10:05:52","2019-04-03 03:05:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img2.jpg","0","attachment","image/jpeg","0"),
("684","1","2019-04-03 10:06:55","2019-04-03 03:06:55","","img3","","inherit","open","closed","","img3","","","2019-04-03 10:06:55","2019-04-03 03:06:55","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img3.jpg","0","attachment","image/jpeg","0"),
("687","1","2019-04-03 10:08:26","2019-04-03 03:08:26","","img4","","inherit","open","closed","","img4","","","2019-04-03 10:08:26","2019-04-03 03:08:26","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img4.jpg","0","attachment","image/jpeg","0"),
("694","1","2019-04-03 10:11:12","2019-04-03 03:11:12","","DOANH-NGHIẸP","","inherit","open","closed","","doanh-nghiep-2","","","2019-04-03 10:11:12","2019-04-03 03:11:12","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/DOANH-NGHIẸP.jpg","0","attachment","image/jpeg","0"),
("698","1","2019-04-03 10:12:11","2019-04-03 03:12:11","","DOANH-NGHIEP-1","","inherit","open","closed","","doanh-nghiep-1","","","2019-04-03 10:12:11","2019-04-03 03:12:11","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/DOANH-NGHIEP-1.jpg","0","attachment","image/jpeg","0"),
("701","1","2019-04-03 10:13:19","2019-04-03 03:13:19","","DOANH-NGHIEP-2","","inherit","open","closed","","doanh-nghiep-2-2","","","2019-04-03 10:13:19","2019-04-03 03:13:19","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/DOANH-NGHIEP-2.jpg","0","attachment","image/jpeg","0"),
("723","1","2019-04-03 10:20:39","2019-04-03 03:20:39","","lscb","","inherit","open","closed","","lscb","","","2019-04-03 10:20:39","2019-04-03 03:20:39","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/lscb.png","0","attachment","image/png","0"),
("775","1","2019-04-03 10:49:40","2019-04-03 03:49:40","","quote_icon (1)","","inherit","open","closed","","quote_icon-1","","","2019-04-03 10:49:40","2019-04-03 03:49:40","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/quote_icon-1.png","0","attachment","image/png","0"),
("781","1","2019-04-03 10:53:24","2019-04-03 03:53:24","","phát-an-bình","","inherit","open","closed","","phat-an-binh","","","2019-04-03 10:53:24","2019-04-03 03:53:24","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/phát-an-bình.jpg","0","attachment","image/jpeg","0"),
("785","1","2019-04-03 10:54:14","2019-04-03 03:54:14","","phát-bình-an","","inherit","open","closed","","phat-binh-an","","","2019-04-03 10:54:14","2019-04-03 03:54:14","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/phát-bình-an.jpg","0","attachment","image/jpeg","0"),
("793","1","2019-04-03 10:57:17","2019-04-03 03:57:17","","phat-loc-dang-khoa","","inherit","open","closed","","phat-loc-dang-khoa","","","2019-04-03 10:57:17","2019-04-03 03:57:17","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/phat-loc-dang-khoa.jpg","0","attachment","image/jpeg","0"),
("796","1","2019-04-03 10:57:56","2019-04-03 03:57:56","","phat-loc-khoi-nguyen","","inherit","open","closed","","phat-loc-khoi-nguyen","","","2019-04-03 10:57:56","2019-04-03 03:57:56","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/phat-loc-khoi-nguyen.jpg","0","attachment","image/jpeg","0"),
("805","1","2019-04-03 11:04:28","2019-04-03 04:04:28","","1-3","","inherit","open","closed","","1-3","","","2019-04-03 11:04:28","2019-04-03 04:04:28","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/1-3.jpg","0","attachment","image/jpeg","0"),
("808","1","2019-04-03 11:05:13","2019-04-03 04:05:13","","yeu-thuong-tron-ven","","inherit","open","closed","","yeu-thuong-tron-ven","","","2019-04-03 11:05:13","2019-04-03 04:05:13","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/yeu-thuong-tron-ven.jpg","0","attachment","image/jpeg","0"),
("818","1","2019-04-03 11:15:10","2019-04-03 04:15:10","","img01","","inherit","open","closed","","img01","","","2019-04-03 11:15:10","2019-04-03 04:15:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img01.jpg","0","attachment","image/jpeg","0"),
("821","1","2019-04-03 11:16:02","2019-04-03 04:16:02","","img-2","","inherit","open","closed","","img-2","","","2019-04-03 11:16:02","2019-04-03 04:16:02","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img-2.jpg","0","attachment","image/jpeg","0"),
("825","1","2019-04-03 11:16:53","2019-04-03 04:16:53","","img-3","","inherit","open","closed","","img-3","","","2019-04-03 11:16:53","2019-04-03 04:16:53","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img-3.jpg","0","attachment","image/jpeg","0"),
("841","1","2019-04-03 11:23:29","2019-04-03 04:23:29","","phat-nghiep-bao-nhan","","inherit","open","closed","","phat-nghiep-bao-nhan","","","2019-04-03 11:23:29","2019-04-03 04:23:29","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/phat-nghiep-bao-nhan.jpg","0","attachment","image/jpeg","0"),
("848","1","2019-04-03 11:25:55","2019-04-03 04:25:55","","-0223","","inherit","open","closed","","0223","","","2019-04-03 11:25:55","2019-04-03 04:25:55","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/0223.jpg","0","attachment","image/jpeg","0"),
("851","1","2019-04-03 11:27:58","2019-04-03 04:27:58"," ","","","publish","closed","closed","","851","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=851","18","nav_menu_item","","0"),
("852","1","2019-04-03 11:28:35","2019-04-03 04:28:35"," ","","","publish","closed","closed","","852","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","0","https://tppone.com/demo/baohiem/?p=852","19","nav_menu_item","","0"),
("931","1","2019-04-03 11:59:33","2019-04-03 04:59:33","","CONTACT","","inherit","open","closed","","contact","","","2019-04-03 11:59:33","2019-04-03 04:59:33","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/CONTACT.jpg","0","attachment","image/jpeg","0"),
("942","1","2019-04-03 12:28:37","2019-04-03 05:28:37","","bg-header-top","","inherit","open","closed","","bg-header-top","","","2019-04-03 12:28:37","2019-04-03 05:28:37","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg-header-top.jpg","0","attachment","image/jpeg","0"),
("962","1","2019-04-03 12:56:36","2019-04-03 05:56:36","","widget-banner","","inherit","open","closed","","widget-banner","","","2019-04-03 12:56:36","2019-04-03 05:56:36","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/widget-banner.jpg","0","attachment","image/jpeg","0"),
("978","1","2019-04-03 13:15:06","2019-04-03 06:15:06","","bg05","","inherit","open","closed","","bg05","","","2019-04-03 13:15:06","2019-04-03 06:15:06","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg05.jpg","0","attachment","image/jpeg","0"),
("983","1","2019-04-03 13:15:59","2019-04-03 06:15:59","","icon_3000-nam","","inherit","open","closed","","icon_3000-nam","","","2019-04-03 13:15:59","2019-04-03 06:15:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon_3000-nam.png","0","attachment","image/png","0"),
("985","1","2019-04-03 13:16:59","2019-04-03 06:16:59","","chien-lươc_phan-khuc-thi-truong-(100x100)","","inherit","open","closed","","chien-luoc_phan-khuc-thi-truong-100x100","","","2019-04-03 13:16:59","2019-04-03 06:16:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/chien-lươc_phan-khuc-thi-truong-100x100.png","0","attachment","image/png","0"),
("986","1","2019-04-03 13:17:10","2019-04-03 06:17:10","","icon_33-trieu-kh","","inherit","open","closed","","icon_33-trieu-kh","","","2019-04-03 13:17:10","2019-04-03 06:17:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon_33-trieu-kh.png","0","attachment","image/png","0"),
("987","1","2019-04-03 13:17:20","2019-04-03 06:17:20","","icon_1-4-anh","","inherit","open","closed","","icon_1-4-anh","","","2019-04-03 13:17:20","2019-04-03 06:17:20","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon_1-4-anh.png","0","attachment","image/png","0"),
("1020","1","2019-04-03 13:31:11","2019-04-03 06:31:11","","Sản phẩm","","publish","closed","closed","","san-pham","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","22","https://tppone.com/demo/baohiem/?p=1020","4","nav_menu_item","","0"),
("1046","1","2019-04-03 13:41:54","2019-04-03 06:41:54","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"40\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT AN BÌNH</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Bảo hiểm Phát An Bình","","publish","closed","closed","","bao-hiem-phat-an-binh","","","2019-04-03 14:38:19","2019-04-03 07:38:19","","0","https://tppone.com/demo/baohiem/?page_id=1046","0","page","","0"),
("1103","1","2019-04-03 14:14:47","2019-04-03 07:14:47","","kh","","inherit","open","closed","","kh","","","2019-04-03 14:14:47","2019-04-03 07:14:47","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/kh.jpg","0","attachment","image/jpeg","0"),
("1111","1","2019-04-03 14:18:19","2019-04-03 07:18:19","","minh-hoa-bao--hiem","","inherit","open","closed","","minh-hoa-bao-hiem","","","2019-04-03 14:18:19","2019-04-03 07:18:19","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/minh-hoa-bao-hiem.jpg","0","attachment","image/jpeg","0"),
("1117","1","2019-04-03 14:21:58","2019-04-03 07:21:58","","miễn-đóng-phí-bảo-hiểm","","inherit","open","closed","","mien-dong-phi-bao-hiem","","","2019-04-03 14:21:58","2019-04-03 07:21:58","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/miễn-đóng-phí-bảo-hiểm.png","0","attachment","image/png","0"),
("1120","1","2019-04-03 14:22:41","2019-04-03 07:22:41","","miễn-đóng-phí-bảo-hiểm-do-bệnh-hiểm-nghèo","","inherit","open","closed","","mien-dong-phi-bao-hiem-do-benh-hiem-ngheo","","","2019-04-03 14:22:41","2019-04-03 07:22:41","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/miễn-đóng-phí-bảo-hiểm-do-bệnh-hiểm-nghèo.png","0","attachment","image/png","0"),
("1122","1","2019-04-03 14:23:09","2019-04-03 07:23:09","","bảo-hiểm-bhn-trẻ-em","","inherit","open","closed","","bao-hiem-bhn-tre-em","","","2019-04-03 14:23:09","2019-04-03 07:23:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bảo-hiểm-bhn-trẻ-em.png","0","attachment","image/png","0"),
("1124","1","2019-04-03 14:23:28","2019-04-03 07:23:28","","bảo-hiểm-bhn-mở-rộng-2015","","inherit","open","closed","","bao-hiem-bhn-mo-rong-2015","","","2019-04-03 14:23:28","2019-04-03 07:23:28","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bảo-hiểm-bhn-mở-rộng-2015.png","0","attachment","image/png","0"),
("1126","1","2019-04-03 14:24:07","2019-04-03 07:24:07","","bh-hỗ-trợ-chi-phí-nằm-viện","","inherit","open","closed","","bh-ho-tro-chi-phi-nam-vien","","","2019-04-03 14:24:07","2019-04-03 07:24:07","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bh-hỗ-trợ-chi-phí-nằm-viện.png","0","attachment","image/png","0"),
("1129","1","2019-04-03 14:24:36","2019-04-03 07:24:36","","bh-hỗ-trợ-chi-phí-phẫu-thuật","","inherit","open","closed","","bh-ho-tro-chi-phi-phau-thuat","","","2019-04-03 14:24:36","2019-04-03 07:24:36","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bh-hỗ-trợ-chi-phí-phẫu-thuật.png","0","attachment","image/png","0"),
("1131","1","2019-04-03 14:24:52","2019-04-03 07:24:52","","bh-tử-kỳ","","inherit","open","closed","","bh-tu-ky","","","2019-04-03 14:24:52","2019-04-03 07:24:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bh-tử-kỳ.png","0","attachment","image/png","0"),
("1165","1","2019-04-03 14:37:28","2019-04-03 07:37:28","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"5\" position_y=\"30\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT NGHIỆP AN TÂM</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Phát nghiệp an tâm","","publish","closed","closed","","phat-nghiep-an-tam","","","2019-04-03 14:37:56","2019-04-03 07:37:56","","0","https://tppone.com/demo/baohiem/?page_id=1165","0","page","","0"),
("1178","1","2019-04-03 14:40:58","2019-04-03 07:40:58","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT LỘC ĐĂNG KHOA</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Phát lộc đăng khoa","","publish","closed","closed","","phat-loc-dang-khoa-2","","","2019-04-03 14:41:27","2019-04-03 07:41:27","","0","https://tppone.com/demo/baohiem/?page_id=1178","0","page","","0"),
("1182","1","2019-04-03 14:41:51","2019-04-03 07:41:51","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT LỘC ĐĂNG KHOA</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Phát lộc khôi nguyên","","publish","closed","closed","","phat-loc-khoi-nguyen-2","","","2019-04-03 14:41:51","2019-04-03 07:41:51","","0","https://tppone.com/demo/baohiem/?page_id=1182","0","page","","0"),
("1186","1","2019-04-03 14:43:46","2019-04-03 07:43:46","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT BẢO AN</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Phát bảo an","","publish","closed","closed","","phat-bao-an","","","2019-04-03 14:44:21","2019-04-03 07:44:21","","0","https://tppone.com/demo/baohiem/?page_id=1186","0","page","","0"),
("1190","1","2019-04-03 14:44:38","2019-04-03 07:44:38","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">ĐIỂM TỰA CUỘC SỐNG</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Điểm tựa cuộc sống","","publish","closed","closed","","diem-tua-cuoc-song","","","2019-04-03 14:45:09","2019-04-03 07:45:09","","0","https://tppone.com/demo/baohiem/?page_id=1190","0","page","","0"),
("1194","1","2019-04-03 14:45:30","2019-04-03 07:45:30","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">SỐNG CHỦ ĐỘNG</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Sống chủ động","","publish","closed","closed","","song-chu-dong","","","2019-04-03 14:45:46","2019-04-03 07:45:46","","0","https://tppone.com/demo/baohiem/?page_id=1194","0","page","","0"),
("1202","1","2019-04-03 14:47:50","2019-04-03 07:47:50","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"48\" width__sm=\"60\" position_x=\"5\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT NGHIỆP BẢO NHÂN</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Phát nghiệp bảo nhân","","publish","closed","closed","","phat-nghiep-bao-nhan-2","","","2019-04-03 14:48:18","2019-04-03 07:48:18","","0","https://tppone.com/demo/baohiem/?page_id=1202","0","page","","0"),
("1208","1","2019-04-03 14:49:08","2019-04-03 07:49:08","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"53\" width__sm=\"60\" position_x=\"5\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PHÁT NGHIỆP HƯNG VƯỢNG</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Lý do chọn gói bảo hiểm này\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Giải pháp bảo vệ, tiết kiệm và đầu tư toàn diện</h3>\n<span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người.</span>\n\n<span style=\"font-size: 95%;\">Mỗi bước chân trong chặng đường ấy sẽ luôn có người bạn đồng hành tận tâm với những giải pháp tài chính thông minh, linh hoạt giúp bạn tạo dựng một điểm tựa vững chắc cho những mốc sự kiện quan trọng</span>\n\n<span style=\"font-size: 95%;\">Phát Lộc Hưng Gia là một trong những điểm tựa tài chính quan trọng, đem lại sự bình yên trong cuộc sống bằng một kế hoạchBảo vệ – Tiết kiệm- Đầu  một cách toàn diện.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Bảo vệ toàn diện</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Mức phí hợp lý, Số tiền bảo hiểm cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Đầu tư an toàn</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quyền lợi hưởng lãi từ kết quả của Quỹ Liên kết chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Giải pháp linh hoạt</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Tùy chọn thay đổi linh hoạt về kế hoạch bảo vệ, số tiền bảo hiểm, phí bảo hiểm...phù hợp với nhu cầu</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>THÔNG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tuổi tham gia: 6-70 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Tuổi đáo hạn: 80 tuổi</span></li>\n 	<li><span style=\"font-size: 95%;\">Điểu khoản sản phẩm: Vui lòng tham khảo <a href=\"#\">tại đây</a></span></li>\n 	<li><span style=\"font-size: 95%;\">Bảng kế hoạch tài chính: Vui lòng tham khảo<a href=\"#\"> tại đây</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUYỀN LỢI BẢO HIỂM</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ</strong></span></h3>\n<span style=\"font-size: 95%;\">Quyền lợi bảo vệ dành cho bạn đến khi 80 tuổi. Cùng mức phí đóng, bạn có 2 lựa chọn Kế hoạch bảo vệ cơ bản và Kế hoạch Bảo vệ nâng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi cơ bản</strong>: Quyền lợi bảo vệ bằng giá trị lớn hơn giữa Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quyền lợi nâng cao:</strong> Quyền lợi bảo vệ bằng tổng của Số tiền bảo hiểm và Giá trị Tài khoản Hợp đồng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI BẢO VỆ GIA TĂNG TRƯỚC RỦI RO TAI NẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngoài Quyền lợi bảo hiểm tử vong, được chi trả thêm tới 100% STBH đối với rủi ro tử vong do tai nạn thông thường và 200% STBH đối với rủi ro tử vong do tai nạn giao thông công cộng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI HƯỞNG LÃI TỪ KẾT QUẢ CỦA QUỸ LIÊN KẾT CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được hưởng mức Lãi suất tích lũy cho giá trị tài khoản hợp đồng hấp dẫn, có thể lên tới 8%. Lãi suất tích lũy cam kết là 4% trong 5 năm đầu và 3% cho các năm tiếp theo cho tới khi hợp đồng đáo hạn.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI RÚT TIỀN TỪ GIÁ TRỊ TÀI KHOẢN HỢP ĐỒNG</strong></span></h3>\n<span style=\"font-size: 95%;\">Được rút tiền từ Giá trị tài khoản hợp đồng để đáp ứng nhu cầu chi tiêu bất cứ lúc nào kể từ năm thứ 3 trở đi nếu số tiền rút không vượt quá 80% Giá trị hoàn lại.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐƯỢC THAY ĐỔI SỐ TIỀN BẢO HIỂM VÀ PHÍ BẢO HIỂM ĐÓNG THÊM</strong></span></h3>\n<span style=\"font-size: 95%;\">Tùy vào kế hoạch tài chính của bản thân </span>\n<h3><span style=\"font-size: 90%;\"><strong>QUYỀN LỢI ĐÁO HẠN</strong></span></h3>\n<span style=\"font-size: 95%;\">Vào ngày đáo hạn hợp đồng, được chi trả toàn bộ Giá trị Tài khoản hợp đồng. </span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH HỌA QUYỀN LỢI\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÁC SẢN PHẨM BỔ TRỢ\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn phí đóng bảo hiểm</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Miễn đóng phí bảo hiểm do bệnh hiểm nghèo</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo dành cho trẻ em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm bệnh hiểm nghèo mở rộng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí phẫu thuật</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm hỗ trợ chi phí nằm viện</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Bảo hiểm tử kỳ</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"cÓ THỂ BẠN QUAN TÂM\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">Gói bảo hiểm 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Giải pháp bảo vệ toàn diện không những cho bản thân mà còn cho các thành viên khác trong gia đình</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Phát nghiệp hưng vượng","","publish","closed","closed","","phat-nghiep-hung-vuong","","","2019-04-03 14:49:29","2019-04-03 07:49:29","","0","https://tppone.com/demo/baohiem/?page_id=1208","0","page","","0"),
("1222","1","2019-04-03 14:52:19","2019-04-03 07:52:19","","htcm_1","","inherit","open","closed","","htcm_1","","","2019-04-03 14:52:19","2019-04-03 07:52:19","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_1.png","0","attachment","image/png","0"),
("1226","1","2019-04-03 14:52:59","2019-04-03 07:52:59","","htcm_2","","inherit","open","closed","","htcm_2","","","2019-04-03 14:52:59","2019-04-03 07:52:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_2.png","0","attachment","image/png","0"),
("1229","1","2019-04-03 14:53:46","2019-04-03 07:53:46","","htcm_3","","inherit","open","closed","","htcm_3","","","2019-04-03 14:53:46","2019-04-03 07:53:46","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_3.png","0","attachment","image/png","0"),
("1235","1","2019-04-03 14:54:35","2019-04-03 07:54:35","","htcm_4","","inherit","open","closed","","htcm_4","","","2019-04-03 14:54:35","2019-04-03 07:54:35","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_4.png","0","attachment","image/png","0"),
("1240","1","2019-04-03 14:55:11","2019-04-03 07:55:11","","htcm_5","","inherit","open","closed","","htcm_5","","","2019-04-03 14:55:11","2019-04-03 07:55:11","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_5.png","0","attachment","image/png","0"),
("1246","1","2019-04-03 14:56:36","2019-04-03 07:56:36","","htcm_6","","inherit","open","closed","","htcm_6","","","2019-04-03 14:56:36","2019-04-03 07:56:36","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_6.png","0","attachment","image/png","0"),
("1270","1","2019-04-03 15:11:50","2019-04-03 08:11:50","<div class=\"form-tu-van\">\n<h3>Đăng ký mua bảo hiểm</h3>\n<h4>1. Thông tin của bạn</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n[text* text-183 placeholder \"Họ tên của bạn...\"]\n[text text-145 placeholder \"Khu vực\"]\n[select* menu-715 \"Giới tính\" \"Nam\" \"Nữ\"]\n</div>\n<div class=\"right\">\n[tel* tel-434 placeholder \"Số điện thoại...\"]\n[date date-255 placeholder \"Ngày sinh\"]\n</div>\n</div>\n<h4>2. Nhu cầu của bạn</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Dành cho cá nhân</label>\n[checkbox checkbox-345 \"Tạo dựng tài sản và đầu tư hiệu quả\" \"Tích lũy cho tương lai học vấn của con\" \"Bảo vệ trước những rủi ro trong cuộc sống\" \"Chăm sóc sức khỏe\"]\n</div>\n<div class=\"right\">\n<label>Dành cho doanh nghiệp</label>\n[checkbox checkbox-355 \"Bảo vệ trước những rủi ro trong cuộc sống\" \"Chăm sóc sức khỏe\"]\n</div>\n</div>\n[submit \"Gửi yêu cầu\"]\n</div>\n1\nMẫu web bảo hiểm - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu web bảo hiểm - Thiết kế website Webdemo.com <wordpress@baohiem.Webdemo.com>\nwebdemo@gmail.com\nCó một người yêu cầu tư vấn mua bảo hiểm qua website:\n- Họ và tên: [text-183]\n- Khu vực: [text-145]\n- Giới tính: [menu-715]\n- Số điện thoại: [tel-434]\n- Ngày sinh: [date-255]\n- Khách hàng cá nhân: [checkbox-345]\n- Khách hàng doanh nghiệp: [checkbox-355]\n\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bảo hiểm - Thiết kế website Webdemo.com (https://bizhostvn.com/w/baohiem)\n\n\n\n\n\nMẫu web bảo hiểm - Thiết kế website Webdemo.com \"[your-subject]\"\nMẫu web bảo hiểm - Thiết kế website Webdemo.com <wordpress@baohiem.Webdemo.com>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bảo hiểm - Thiết kế website Webdemo.com (https://bizhostvn.com/w/baohiem)\nReply-To: webdemo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Đăng ký tư vấn","","publish","closed","closed","","form-lien-he-1","","","2019-04-03 15:30:38","2019-04-03 08:30:38","","0","https://tppone.com/demo/baohiem/?post_type=wpcf7_contact_form&#038;p=1270","0","wpcf7_contact_form","","0"),
("1299","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1299","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","0","https://tppone.com/demo/baohiem/?p=1299","1","nav_menu_item","","0"),
("1300","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1300","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","22","https://tppone.com/demo/baohiem/?p=1300","2","nav_menu_item","","0"),
("1301","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1301","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","24","https://tppone.com/demo/baohiem/?p=1301","3","nav_menu_item","","0"),
("1302","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1302","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","24","https://tppone.com/demo/baohiem/?p=1302","4","nav_menu_item","","0"),
("1303","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1303","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","24","https://tppone.com/demo/baohiem/?p=1303","5","nav_menu_item","","0"),
("1304","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1304","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","24","https://tppone.com/demo/baohiem/?p=1304","6","nav_menu_item","","0"),
("1305","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1305","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","22","https://tppone.com/demo/baohiem/?p=1305","7","nav_menu_item","","0"),
("1306","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1306","","","2019-04-03 15:39:03","2019-04-03 08:39:03","","26","https://tppone.com/demo/baohiem/?p=1306","8","nav_menu_item","","0"),
("1307","1","2019-04-03 15:39:03","2019-04-03 08:39:03"," ","","","publish","closed","closed","","1307","","","2019-04-03 15:39:04","2019-04-03 08:39:04","","26","https://tppone.com/demo/baohiem/?p=1307","9","nav_menu_item","","0"),
("1308","1","2019-04-03 15:39:04","2019-04-03 08:39:04"," ","","","publish","closed","closed","","1308","","","2019-04-03 15:39:04","2019-04-03 08:39:04","","0","https://tppone.com/demo/baohiem/?p=1308","10","nav_menu_item","","0"),
("1309","1","2019-04-03 15:39:04","2019-04-03 08:39:04"," ","","","publish","closed","closed","","1309","","","2019-04-03 15:39:04","2019-04-03 08:39:04","","132","https://tppone.com/demo/baohiem/?p=1309","11","nav_menu_item","","0"),
("1310","1","2019-04-03 15:39:04","2019-04-03 08:39:04"," ","","","publish","closed","closed","","1310","","","2019-04-03 15:39:04","2019-04-03 08:39:04","","132","https://tppone.com/demo/baohiem/?p=1310","12","nav_menu_item","","0"),
("1311","1","2019-04-03 15:39:04","2019-04-03 08:39:04"," ","","","publish","closed","closed","","1311","","","2019-04-03 15:39:04","2019-04-03 08:39:04","","132","https://tppone.com/demo/baohiem/?p=1311","13","nav_menu_item","","0"),
("1312","1","2019-04-03 15:39:04","2019-04-03 08:39:04"," ","","","publish","closed","closed","","1312","","","2019-04-03 15:39:04","2019-04-03 08:39:04","","0","https://tppone.com/demo/baohiem/?p=1312","14","nav_menu_item","","0"),
("1393","1","2019-04-03 16:28:22","2019-04-03 09:28:22","","icon (1)","","inherit","open","closed","","icon-1-2","","","2019-04-03 16:28:22","2019-04-03 09:28:22","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon-1.png","0","attachment","image/png","0"),
("1394","1","2019-04-03 16:28:22","2019-04-03 09:28:22","","phone-icon (2)","","inherit","open","closed","","phone-icon-2","","","2019-04-03 16:28:22","2019-04-03 09:28:22","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/phone-icon-2.png","0","attachment","image/png","0"),
("1397","1","2019-04-03 17:56:09","2019-04-03 10:56:09","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHIỆP</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Cá nhân</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghiệp</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Lãi suất công bố</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-nội dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"698\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"Bảo vệ người lao động trước các rủi ro trong cuộc sống\" href=\"/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\" target=\"_self\" rel=\"noopener noreferrer\">BẢO VỆ NGƯỜI LAO ĐỘNG TRƯỚC CÁC RỦI RO TRONG CUỘC SỐNG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Nếu ví cuộc đời là một hành trình của những sự kiện nối tiếp, thì mỗi kế hoạch được hiện thực hóa là một dấu mốc vô cùng quan trọng trong cuộc đời con người. Và hiểu rằng chỉ khi an tâm về sức khoẻ và tài chính, biết yêu thương bản thân thì ta mới có thể bình tâm chăm lo cho gia đình và cống hiến cho sự nghiệp, Aviva mang đến những sản phẩm bảo vệ và đầu tư giúp bạn có điểm tựa tài chính vững vàng và tận hưởng cuộc sống bình an bên những người thân yêu bằng giải pháp <strong>Bảo vệ – Tiết kiệm- Đầu tư</strong>toàn diện. </span><a title=\"Phát Nghiệp Bảo Nhân\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Phát Nghiệp Bảo Nhân</a></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"701\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"Chu toàn các giải pháp tài chính và đầu tư doanh nghiệp\" href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\" target=\"_self\" rel=\"noopener noreferrer\">CHU TOÀN CÁC GIẢI PHÁP TÀI CHÍNH VÀ ĐẦU TƯ DOANH NGHIỆP</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Đối với cha mẹ, con cái luôn là món quà tuyệt vời nhất mà tạo hóa đã dành tặng. Khoảnh khắc đón nhận sinh linh nhỏ bé đến với thế giới sẽ không bao giờ có thể quên với mỗi người. Và kể từ giây phút đó, cha mẹ bắt đầu bước vào một hành trình đầy mới mẻ và thú vị - một hành trình đong đầy những yêu thương. Thấu hiểu và trân trọng những giá trị nhân văn đó, Aviva sẵn lòng chia sẻ cùng bạn một kế hoạch bảo vệ và tài chính vững vàng nhất cho đứa con thân yêu của mình trên từng chặng đường của hành trình kiến tạo nhân cách và một tương lai tươi sáng. <a title=\"Phát Nghiệp Hưng Vượng\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Phát Nghiệp Hưng Vượng</a></span></p>\n</div>\n\n[/col]\n\n[/row]","Doanh nghiệp","","inherit","closed","closed","","26-revision-v1","","","2019-04-03 17:56:09","2019-04-03 10:56:09","","26","https://tppone.com/demo/baohiem/26-revision-v1/","0","revision","","0"),
("1401","1","2019-05-06 15:43:39","2019-05-06 08:43:39","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 08:43:39\"\n    }\n}","","","trash","closed","closed","","4b426606-f6a7-4c0c-a01f-34cb1e628044","","","2019-05-06 15:43:39","2019-05-06 08:43:39","","0","https://tppone.com/demo/baohiem/4b426606-f6a7-4c0c-a01f-34cb1e628044/","0","customize_changeset","","0"),
("1402","1","2019-05-06 17:08:09","2019-05-06 10:08:09","","baohiem","","inherit","open","closed","","baohiem","","","2019-05-06 17:08:09","2019-05-06 10:08:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/05/baohiem.png","0","attachment","image/png","0"),
("1403","1","2019-05-06 17:10:25","2019-05-06 10:10:25","{\n    \"bao-hiem::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/baohiem/wp-content/uploads/2019/05/baohiem.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:10:25\"\n    }\n}","","","trash","closed","closed","","36f0022d-07d9-4aed-becd-008ae06ecdec","","","2019-05-06 17:10:25","2019-05-06 10:10:25","","0","https://tppone.com/demo/baohiem/36f0022d-07d9-4aed-becd-008ae06ecdec/","0","customize_changeset","","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("60","2","0"),
("61","2","0"),
("62","2","0"),
("64","2","0"),
("65","2","0"),
("66","2","0"),
("67","2","0"),
("68","2","0"),
("69","2","0"),
("70","2","0"),
("71","2","0"),
("72","2","0"),
("75","2","0"),
("76","2","0"),
("77","2","0"),
("78","2","0"),
("79","2","0"),
("81","2","0"),
("140","2","0"),
("141","2","0"),
("142","2","0"),
("143","2","0"),
("257","1","0"),
("260","1","0"),
("263","1","0"),
("267","1","0"),
("270","1","0"),
("273","1","0"),
("276","1","0"),
("380","4","0"),
("381","4","0"),
("382","4","0"),
("851","2","0"),
("852","2","0"),
("1020","2","0"),
("1299","5","0"),
("1300","5","0"),
("1301","5","0"),
("1302","5","0"),
("1303","5","0"),
("1304","5","0"),
("1305","5","0"),
("1306","5","0"),
("1307","5","0"),
("1308","5","0"),
("1309","5","0"),
("1310","5","0"),
("1311","5","0"),
("1312","5","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_taxonomy VALUES
("1","1","category","","0","7"),
("2","2","nav_menu","","0","25"),
("3","3","category","","0","0"),
("4","4","nav_menu","","0","3"),
("5","5","nav_menu","","0","14");




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_terms VALUES
("1","Tin tức","tin-tuc","0"),
("2","Main-menu","main-menu","0"),
("3","Tuyển dụng","tuyen-dung","0"),
("4","Bottom menu","bottom-menu","0"),
("5","Menu mobile","menu-mobile","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_usermeta VALUES
("1","1","nickname","Webdemo.comt"),
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
("16","1","session_tokens","a:8:{s:64:\"9127e30b833447be752c0a22993a058f47c3cfadb1646a29f6bf4df215d95cfe\";a:4:{s:10:\"expiration\";i:1557481689;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557308889;}s:64:\"6cf1c201a0bbff7d08f115fa23fff25130337f695c694f18aa5179040761bb34\";a:4:{s:10:\"expiration\";i:1557615917;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443117;}s:64:\"6eded88951f8ae7025ea85da388d642b098e18f802a05df87eb2cd3c4e426f3f\";a:4:{s:10:\"expiration\";i:1557619612;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557446812;}s:64:\"61b0e2419115b3c06640183a6a6393b341999fc700305acdb76b2cfe5832ac10\";a:4:{s:10:\"expiration\";i:1557625482;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452682;}s:64:\"43f8fe684eeb1702331216a1aaf4451742952bc38d0a56fb9cb198bd8dd79da6\";a:4:{s:10:\"expiration\";i:1557627757;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557454957;}s:64:\"ef9d583f70331bb2d650f68fa4a13033128b235701328f0e445899dad116216c\";a:4:{s:10:\"expiration\";i:1557631197;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557458397;}s:64:\"e5d496796d388ce814aa29064ddc5dd3443a24cfbf2e94650f7a514837b69517\";a:4:{s:10:\"expiration\";i:1557635764;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557462964;}s:64:\"d20cef037d9e9c3cc0614fae7b67e5bf961db3e73176f8919c4113b804bbb340\";a:4:{s:10:\"expiration\";i:1557647814;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557475014;}}"),
("17","1","gdd_dashboard_quick_press_last_post_id","1400"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","managenav-menuscolumnshidden","a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}"),
("21","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("22","1","nav_menu_recently_edited","5"),
("23","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("24","1","gdd_user-settings-time","1557446809"),
("25","1","edit_page_per_page","200"),
("26","1","wp_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:596:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 99%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;settings-updated=true&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:892:\"Chúng tôi nhận thấy bạn đã sử dụng Yoast SEO được một thời gian; chúng tôi mong bạn yêu thích nó! Chúng tôi sẽ vô cùng cảm động nếu bạn có thể <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=32\">cho chúng tôi một đánh giá 5 sao trên WordPress.org</a>!\n\nNếu bạn gặp phải sự cố, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=32\">vui lòng gửi báo cáo lỗi</a> và chúng tôi sẽ cố hết sức để giúp bạn.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/baohiem/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Không hiển thị những thông báo này nữa</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:242:\"Đừng bỏ qua lỗi máy tìm kiếm thu thập thông tin trang web của bạn:  <a href=\"https://bizhostvn.com/w/baohiem/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> kết nối với Google Search Console ở đây </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:259:\"<strong>Lỗi SEO nghiêm trọng: Bạn đang chặn truy cập tới robots.</strong> Bạn phải <a href=\"https://bizhostvn.com/w/baohiem/wp-admin/options-reading.php\">tới mục Đọc</a> và bỏ đánh dấu Tương tác với công cụ tìm kiếm.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO xác định bạn đang sử dụng phiên bản 9.1 của Yoast SEO Premium, hãy cập nhật lên phiên bản mới nhất.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
("28","1","duplicator_pro_created_format","1");




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
("1","admin","$P$BtTyKpgw1ITG5uVazGb08oE8IhnNIE.","admin","demobz@gmail.com","","2019-04-01 07:11:30","","0","admin");




CREATE TABLE `gdd_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_links VALUES
("65","#","20","0","internal"),
("66","#","20","0","internal"),
("67","#","20","0","internal"),
("68","#","20","0","internal"),
("221","/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/","134","138","internal"),
("222","/lai-suat-cong-bo/bao-cao-tai-chinh/","134","136","internal"),
("223","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf","134","0","internal"),
("224","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf","134","0","internal"),
("225","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf","134","0","internal"),
("226","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf","134","0","internal"),
("233","/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/","136","138","internal"),
("234","/lai-suat-cong-bo/bao-cao-thuong-nien/","136","134","internal"),
("235","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf","136","0","internal"),
("236","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf","136","0","internal"),
("237","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf","136","0","internal"),
("238","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf","136","0","internal"),
("239","/lai-suat-cong-bo/bao-cao-tai-chinh/","138","136","internal"),
("240","/lai-suat-cong-bo/bao-cao-thuong-nien/","138","134","internal"),
("241","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf","138","0","internal"),
("242","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf","138","0","internal"),
("243","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf","138","0","internal"),
("244","/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf","138","0","internal"),
("442","#","1165","0","internal"),
("443","#","1165","0","internal"),
("444","#","1046","0","internal"),
("445","#","1046","0","internal"),
("473","/san-pham/doanh-nghiep/","28","26","internal"),
("474","/lai-suat-cong-bo/","28","132","internal"),
("475","/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/","28","32","internal"),
("476","/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/","28","30","internal"),
("477","/san-pham/ca-nhan/cham-soc-suc-khoe/","28","34","internal"),
("478","/phat-nghiep-an-tam/","28","1165","internal"),
("479","/phat-nghiep-an-tam/","28","1165","internal"),
("480","#","28","0","internal"),
("481","/bao-hiem-phat-an-binh/","28","1046","internal"),
("512","/san-pham/doanh-nghiep/","32","26","internal"),
("513","/lai-suat-cong-bo/","32","132","internal"),
("514","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","32","28","internal"),
("515","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","32","28","internal"),
("516","/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/","32","30","internal"),
("517","/san-pham/ca-nhan/cham-soc-suc-khoe/","32","34","internal"),
("518","/bao-hiem-phat-an-binh/","32","1046","internal"),
("519","/bao-hiem-phat-an-binh/","32","1046","internal"),
("520","/bao-hiem-phat-an-binh/","32","1046","internal"),
("521","/bao-hiem-phat-an-binh/","32","1046","internal"),
("528","#","1178","0","internal"),
("529","#","1178","0","internal"),
("530","#","1182","0","internal"),
("531","#","1182","0","internal"),
("542","/san-pham/doanh-nghiep/","30","26","internal"),
("543","/lai-suat-cong-bo/","30","132","internal"),
("544","/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/","30","32","internal"),
("545","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","30","28","internal"),
("546","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","30","28","internal"),
("547","/san-pham/ca-nhan/cham-soc-suc-khoe/","30","34","internal"),
("548","#","30","0","internal"),
("549","/phat-loc-dang-khoa-2/","30","1178","internal"),
("550","#","30","0","internal"),
("551","/phat-loc-khoi-nguyen-2/","30","1182","internal"),
("556","#","1186","0","internal"),
("557","#","1186","0","internal"),
("562","#","1190","0","internal"),
("563","#","1190","0","internal"),
("568","#","1194","0","internal"),
("569","#","1194","0","internal"),
("603","/san-pham/doanh-nghiep/","34","26","internal"),
("604","/lai-suat-cong-bo/","34","132","internal"),
("605","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","34","28","internal"),
("606","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","34","28","internal"),
("607","/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/","34","30","internal"),
("608","/phat-bao-an/","34","1186","internal"),
("609","/phat-bao-an/","34","1186","internal"),
("610","/diem-tua-cuoc-song/","34","1190","internal"),
("611","/diem-tua-cuoc-song/","34","1190","internal"),
("612","/song-chu-dong/","34","1194","internal"),
("613","/song-chu-dong/","34","1194","internal"),
("618","#","1202","0","internal"),
("619","#","1202","0","internal"),
("625","/san-pham/ca-nhan/","36","24","internal"),
("626","/lai-suat-cong-bo/","36","132","internal"),
("627","/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/","36","38","internal"),
("628","/phat-nghiep-bao-nhan-2/","36","1202","internal"),
("629","/phat-nghiep-bao-nhan-2/","36","1202","internal"),
("634","#","1208","0","internal"),
("635","#","1208","0","internal"),
("636","/san-pham/ca-nhan/","38","24","internal"),
("637","/lai-suat-cong-bo/","38","132","internal"),
("638","/san-pham/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/","38","36","internal"),
("639","/phat-nghiep-hung-vuong/","38","1208","internal"),
("640","/phat-nghiep-hung-vuong/","38","1208","internal"),
("815","/dieu-chinh-ho-so/","40","0","internal"),
("816","/thuat-ngu-bao-hiem/","40","0","internal"),
("817","/ho-tro-khach-hang/giai-quyet-quyen-loi-bao-hiem/","40","48","internal"),
("818","/ho-tro-khach-hang/cham-soc-khach-hang/","40","58","internal"),
("819","/mau-don-thong-dung/","40","554","internal"),
("820","/ho-tro-khach-hang/dong-phi-bao-hiem/","40","46","internal"),
("821","/ho-tro-khach-hang/cau-hoi-thuong-gap/","40","50","internal"),
("822","/nop-ho-so-truc-tuyen/","40","411","internal"),
("991","/san-pham/ca-nhan/","2","24","internal"),
("992","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","2","28","internal");
INSERT INTO gdd_yoast_seo_links VALUES
("993","/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/","2","30","internal"),
("994","/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/","2","32","internal"),
("995","/san-pham/ca-nhan/cham-soc-suc-khoe/","2","34","internal"),
("996","https://bizhostvn.com/w/baohiem/thong-bao-ve-viec-thay-doi-dau-so-dien-thoai-di-dong/","2","276","internal"),
("997","https://bizhostvn.com/w/baohiem/thong-bao-phuong-thuc-cung-cap-hoa-don-dien-tu-den-khach-hang/","2","273","internal"),
("998","https://bizhostvn.com/w/baohiem/aviva-viet-nam-ky-thoa-thuan-hop-tac-voi-truong-dai-hoc-kinh-te-quoc-dan/","2","270","internal"),
("999","https://bizhostvn.com/w/baohiem/loi-nhuan-hoat-dong-cua-aviva-chau-a-tang-vot-24-trong-nam-2018/","2","267","internal"),
("1000","https://bizhostvn.com/w/baohiem/hoi-nghi-khoi-dong-kinh-doanh-nam-2019/","2","263","internal"),
("1001","https://bizhostvn.com/w/baohiem/chuong-trinh-quy-cong-dong-aviva-small-acts-big-change/","2","260","internal"),
("1002","https://bizhostvn.com/w/baohiem/aviva-viet-nam-hop-tac-doc-quyen-voi-vietinbank/","2","257","internal"),
("1091","#","348","0","internal"),
("1092","#","348","0","internal"),
("1093","#","348","0","internal"),
("1094","#","348","0","internal"),
("1095","#","348","0","internal"),
("1096","#","348","0","internal"),
("1097","#","348","0","internal"),
("1098","#","348","0","internal"),
("1099","#","348","0","internal"),
("1100","#","348","0","internal"),
("1101","#","348","0","internal"),
("1102","#","348","0","internal"),
("1103","#","348","0","internal"),
("1104","/category/tin-tuc/","348","0","internal"),
("1105","/ho-tro-khach-hang/","348","40","internal"),
("1106","#","348","0","internal"),
("1107","/lien-he/","348","594","internal"),
("1108","#","348","0","internal"),
("1109","#","348","0","internal"),
("1110","#","348","0","internal"),
("1111","tel:#","348","0","external"),
("1112","#","348","0","internal"),
("1217","/san-pham/doanh-nghiep/","24","26","internal"),
("1218","/lai-suat-cong-bo/","24","132","internal"),
("1219","/san-pham/doanh-nghiep/","24","26","internal"),
("1220","/lai-suat-cong-bo/","24","132","internal"),
("1221","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","24","28","internal"),
("1222","/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/","24","28","internal"),
("1223","/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/","24","30","internal"),
("1224","/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/","24","30","internal"),
("1225","/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/","24","32","internal"),
("1226","/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/","24","32","internal"),
("1227","/san-pham/ca-nhan/cham-soc-suc-khoe/","24","34","internal"),
("1228","/san-pham/ca-nhan/cham-soc-suc-khoe/","24","34","internal"),
("1229","/san-pham/ca-nhan/","26","24","internal"),
("1230","/lai-suat-cong-bo/","26","132","internal"),
("1231","/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/","26","0","internal"),
("1232","#","26","0","internal"),
("1233","/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/","26","38","internal"),
("1234","#","26","0","internal");




CREATE TABLE `gdd_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_meta VALUES
("1","0","0"),
("2","12","0"),
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
("19","0","0"),
("20","4","0"),
("21","0","0"),
("23","0","0"),
("24","12","4"),
("25","0","0"),
("26","6","6"),
("27","0","0"),
("28","9","9"),
("29","0","0"),
("30","10","6"),
("31","0","0"),
("32","10","5"),
("33","0","0"),
("34","11","6"),
("35","0","0"),
("36","5","1"),
("37","0","0"),
("38","5","2"),
("39","0","0"),
("40","8","1"),
("41","0","0"),
("43","0","0"),
("44","0","0"),
("45","0","0"),
("46","0","1"),
("47","0","0"),
("48","0","1"),
("49","0","0"),
("50","0","1"),
("51","0","0"),
("53","0","0"),
("55","0","0"),
("56","0","0"),
("57","0","0"),
("58","0","1"),
("59","0","0"),
("63","0","0"),
("82","0","0"),
("83","0","0"),
("84","0","0"),
("85","0","0"),
("86","0","0"),
("87","0","0"),
("88","0","0"),
("89","0","0"),
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
("107","0","0"),
("108","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("112","0","0"),
("113","0","0"),
("114","0","0"),
("117","0","0"),
("118","0","0"),
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
("132","0","9"),
("133","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("134","6","2"),
("135","0","0"),
("136","6","2"),
("137","0","0"),
("138","6","2"),
("139","0","0"),
("144","0","0"),
("145","0","0"),
("146","0","0"),
("147","0","0"),
("148","0","0"),
("149","0","0"),
("150","0","0"),
("151","0","0"),
("152","0","0"),
("153","0","0"),
("154","0","0"),
("155","0","0"),
("156","0","0"),
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
("201","0","0"),
("202","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("206","0","0"),
("207","0","0"),
("208","0","0"),
("209","0","0"),
("210","0","0"),
("211","0","0"),
("212","0","0"),
("213","0","0"),
("214","0","0"),
("215","0","0"),
("216","0","0"),
("217","0","0"),
("218","0","0"),
("219","0","0"),
("220","0","0"),
("221","0","0"),
("222","0","0"),
("223","0","0"),
("224","0","0"),
("225","0","0"),
("226","0","0"),
("227","0","0"),
("228","0","0"),
("230","0","0"),
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
("241","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("242","0","0"),
("244","0","0"),
("245","0","0"),
("246","0","0"),
("247","0","0"),
("248","0","0"),
("249","0","0"),
("250","0","0"),
("252","0","0"),
("254","0","0"),
("255","0","0"),
("256","0","0"),
("257","0","1"),
("259","0","0"),
("260","0","1"),
("262","0","0"),
("263","0","1"),
("266","0","0"),
("267","0","1"),
("269","0","0"),
("270","0","1"),
("272","0","0"),
("273","0","1"),
("275","0","0"),
("276","0","1"),
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
("318","0","0"),
("319","0","0"),
("320","0","0"),
("322","0","0"),
("323","0","0"),
("324","0","0"),
("326","0","0"),
("327","0","0"),
("328","0","0"),
("330","0","0"),
("331","0","0"),
("332","0","0"),
("334","0","0"),
("335","0","0"),
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
("348","21","0"),
("349","0","0"),
("350","0","0"),
("351","0","0"),
("352","0","0"),
("353","0","0"),
("354","0","0"),
("355","0","0"),
("357","0","0"),
("358","0","0"),
("359","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("375","0","0"),
("377","0","0"),
("379","0","0"),
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
("410","0","0"),
("411","0","1"),
("412","0","0"),
("413","0","0"),
("415","0","0"),
("416","0","0"),
("417","0","0"),
("418","0","0"),
("420","0","0"),
("421","0","0"),
("423","0","0"),
("424","0","0"),
("425","0","0"),
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
("444","0","0"),
("445","0","0"),
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","0","0"),
("450","0","0"),
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
("461","0","0"),
("462","0","0"),
("463","0","0"),
("464","0","0"),
("465","0","0"),
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
("477","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("492","0","0"),
("493","0","0"),
("494","0","0"),
("495","0","0"),
("496","0","0"),
("497","0","0"),
("498","0","0"),
("500","0","0"),
("501","0","0"),
("502","0","0"),
("503","0","0"),
("504","0","0"),
("505","0","0"),
("506","0","0"),
("507","0","0"),
("509","0","0"),
("510","0","0"),
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
("527","0","0"),
("528","0","0"),
("529","0","0"),
("530","0","0"),
("531","0","0"),
("532","0","0"),
("533","0","0"),
("534","0","0"),
("535","0","0"),
("536","0","0"),
("537","0","0"),
("538","0","0"),
("539","0","0"),
("540","0","0"),
("542","0","0"),
("543","0","0"),
("545","0","0"),
("546","0","0"),
("547","0","0"),
("549","0","0"),
("550","0","0"),
("551","0","0"),
("552","0","0"),
("553","0","0"),
("554","0","1"),
("555","0","0"),
("556","0","0"),
("558","0","0"),
("559","0","0"),
("560","0","0"),
("561","0","0"),
("562","0","0"),
("563","0","0"),
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
("589","0","0"),
("590","0","0"),
("591","0","0"),
("592","0","0"),
("593","0","0"),
("594","0","1"),
("595","0","0"),
("596","0","0"),
("598","0","0"),
("599","0","0"),
("600","0","0"),
("601","0","0"),
("602","0","0"),
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
("624","0","0"),
("625","0","0"),
("626","0","0"),
("627","0","0"),
("628","0","0"),
("629","0","0"),
("630","0","0"),
("631","0","0"),
("632","0","0"),
("633","0","0"),
("634","0","0"),
("637","0","0"),
("638","0","0"),
("639","0","0"),
("640","0","0"),
("641","0","0"),
("642","0","0"),
("643","0","0"),
("644","0","0"),
("645","0","0"),
("646","0","0"),
("647","0","0"),
("648","0","0"),
("649","0","0"),
("650","0","0"),
("651","0","0"),
("652","0","0"),
("653","0","0"),
("654","0","0"),
("655","0","0"),
("656","0","0"),
("657","0","0"),
("658","0","0"),
("659","0","0"),
("660","0","0"),
("661","0","0"),
("662","0","0"),
("663","0","0"),
("664","0","0"),
("665","0","0"),
("666","0","0"),
("667","0","0"),
("668","0","0"),
("669","0","0"),
("670","0","0"),
("671","0","0"),
("675","0","0"),
("676","0","0"),
("677","0","0"),
("678","0","0"),
("679","0","0"),
("680","0","0"),
("682","0","0"),
("683","0","0"),
("685","0","0"),
("686","0","0"),
("688","0","0"),
("689","0","0"),
("690","0","0"),
("691","0","0"),
("692","0","0"),
("693","0","0"),
("695","0","0"),
("696","0","0"),
("697","0","0"),
("699","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("700","0","0"),
("702","0","0"),
("703","0","0"),
("704","0","0"),
("705","0","0"),
("706","0","0"),
("707","0","0"),
("708","0","0"),
("709","0","0"),
("710","0","0"),
("711","0","0"),
("712","0","0"),
("713","0","0"),
("714","0","0"),
("715","0","0"),
("716","0","0"),
("717","0","0"),
("718","0","0"),
("719","0","0"),
("720","0","0"),
("721","0","0"),
("722","0","0"),
("724","0","0"),
("725","0","0"),
("726","0","0"),
("727","0","0"),
("728","0","0"),
("729","0","0"),
("730","0","0"),
("731","0","0"),
("732","0","0"),
("733","0","0"),
("734","0","0"),
("735","0","0"),
("736","0","0"),
("737","0","0"),
("738","0","0"),
("739","0","0"),
("740","0","0"),
("741","0","0"),
("742","0","0"),
("743","0","0"),
("744","0","0"),
("745","0","0"),
("746","0","0"),
("747","0","0"),
("748","0","0"),
("749","0","0"),
("750","0","0"),
("751","0","0"),
("752","0","0"),
("753","0","0"),
("754","0","0"),
("755","0","0"),
("756","0","0"),
("757","0","0"),
("758","0","0"),
("759","0","0"),
("760","0","0"),
("761","0","0"),
("762","0","0"),
("763","0","0"),
("764","0","0"),
("765","0","0"),
("766","0","0"),
("767","0","0"),
("768","0","0"),
("769","0","0"),
("770","0","0"),
("771","0","0"),
("772","0","0"),
("773","0","0"),
("774","0","0"),
("776","0","0"),
("777","0","0"),
("778","0","0"),
("779","0","0"),
("780","0","0"),
("782","0","0"),
("783","0","0"),
("784","0","0"),
("786","0","0"),
("787","0","0"),
("788","0","0"),
("789","0","0"),
("790","0","0"),
("791","0","0"),
("792","0","0"),
("794","0","0"),
("795","0","0"),
("797","0","0"),
("798","0","0"),
("799","0","0"),
("800","0","0"),
("801","0","0"),
("802","0","0"),
("803","0","0"),
("804","0","0"),
("806","0","0"),
("807","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("809","0","0"),
("810","0","0"),
("811","0","0"),
("812","0","0"),
("813","0","0"),
("814","0","0"),
("815","0","0"),
("816","0","0"),
("817","0","0"),
("819","0","0"),
("820","0","0"),
("822","0","0"),
("823","0","0"),
("824","0","0"),
("826","0","0"),
("827","0","0"),
("828","0","0"),
("829","0","0"),
("830","0","0"),
("831","0","0"),
("832","0","0"),
("833","0","0"),
("834","0","0"),
("835","0","0"),
("836","0","0"),
("837","0","0"),
("838","0","0"),
("839","0","0"),
("840","0","0"),
("842","0","0"),
("843","0","0"),
("844","0","0"),
("845","0","0"),
("846","0","0"),
("849","0","0"),
("850","0","0"),
("853","0","0"),
("854","0","0"),
("855","0","0"),
("856","0","0"),
("857","0","0"),
("858","0","0"),
("859","0","0"),
("860","0","0"),
("861","0","0"),
("862","0","0"),
("863","0","0"),
("864","0","0"),
("865","0","0"),
("866","0","0"),
("867","0","0"),
("868","0","0"),
("869","0","0"),
("870","0","0"),
("871","0","0"),
("872","0","0"),
("873","0","0"),
("874","0","0"),
("875","0","0"),
("876","0","0"),
("877","0","0"),
("878","0","0"),
("879","0","0"),
("880","0","0"),
("881","0","0"),
("882","0","0"),
("883","0","0"),
("884","0","0"),
("885","0","0"),
("886","0","0"),
("887","0","0"),
("888","0","0"),
("889","0","0"),
("890","0","0"),
("891","0","0"),
("892","0","0"),
("893","0","0"),
("894","0","0"),
("895","0","0"),
("896","0","0"),
("897","0","0"),
("898","0","0"),
("899","0","0"),
("900","0","0"),
("901","0","0"),
("902","0","0"),
("903","0","0"),
("904","0","0"),
("905","0","0"),
("906","0","0"),
("907","0","0"),
("908","0","0"),
("909","0","0"),
("910","0","0"),
("911","0","0"),
("912","0","0"),
("913","0","0"),
("914","0","0"),
("915","0","0"),
("916","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("917","0","0"),
("918","0","0"),
("919","0","0"),
("920","0","0"),
("921","0","0"),
("922","0","0"),
("923","0","0"),
("924","0","0"),
("925","0","0"),
("926","0","0"),
("927","0","0"),
("928","0","0"),
("929","0","0"),
("930","0","0"),
("932","0","0"),
("933","0","0"),
("934","0","0"),
("935","0","0"),
("936","0","0"),
("937","0","0"),
("938","0","0"),
("939","0","0"),
("941","0","0"),
("943","0","0"),
("944","0","0"),
("945","0","0"),
("946","0","0"),
("947","0","0"),
("948","0","0"),
("949","0","0"),
("950","0","0"),
("951","0","0"),
("952","0","0"),
("953","0","0"),
("954","0","0"),
("955","0","0"),
("956","0","0"),
("957","0","0"),
("958","0","0"),
("959","0","0"),
("960","0","0"),
("961","0","0"),
("963","0","0"),
("964","0","0"),
("965","0","0"),
("966","0","0"),
("967","0","0"),
("968","0","0"),
("969","0","0"),
("970","0","0"),
("971","0","0"),
("972","0","0"),
("973","0","0"),
("974","0","0"),
("975","0","0"),
("976","0","0"),
("977","0","0"),
("979","0","0"),
("980","0","0"),
("981","0","0"),
("982","0","0"),
("984","0","0"),
("988","0","0"),
("989","0","0"),
("990","0","0"),
("991","0","0"),
("992","0","0"),
("993","0","0"),
("994","0","0"),
("995","0","0"),
("996","0","0"),
("997","0","0"),
("998","0","0"),
("999","0","0"),
("1000","0","0"),
("1001","0","0"),
("1002","0","0"),
("1003","0","0"),
("1004","0","0"),
("1005","0","0"),
("1006","0","0"),
("1007","0","0"),
("1008","0","0"),
("1009","0","0"),
("1010","0","0"),
("1011","0","0"),
("1012","0","0"),
("1013","0","0"),
("1014","0","0"),
("1015","0","0"),
("1016","0","0"),
("1017","0","0"),
("1018","0","0"),
("1019","0","0"),
("1021","0","0"),
("1022","0","0"),
("1023","0","0"),
("1024","0","0"),
("1025","0","0"),
("1026","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("1027","0","0"),
("1028","0","0"),
("1029","0","0"),
("1030","0","0"),
("1031","0","0"),
("1032","0","0"),
("1033","0","0"),
("1034","0","0"),
("1035","0","0"),
("1036","0","0"),
("1037","0","0"),
("1038","0","0"),
("1039","0","0"),
("1040","0","0"),
("1041","0","0"),
("1042","0","0"),
("1043","0","0"),
("1044","0","0"),
("1045","0","0"),
("1046","2","5"),
("1047","0","0"),
("1048","0","0"),
("1049","0","0"),
("1050","0","0"),
("1051","0","0"),
("1052","0","0"),
("1053","0","0"),
("1054","0","0"),
("1055","0","0"),
("1056","0","0"),
("1057","0","0"),
("1058","0","0"),
("1059","0","0"),
("1060","0","0"),
("1061","0","0"),
("1062","0","0"),
("1063","0","0"),
("1064","0","0"),
("1065","0","0"),
("1066","0","0"),
("1067","0","0"),
("1068","0","0"),
("1069","0","0"),
("1070","0","0"),
("1071","0","0"),
("1072","0","0"),
("1073","0","0"),
("1074","0","0"),
("1075","0","0"),
("1076","0","0"),
("1077","0","0"),
("1078","0","0"),
("1079","0","0"),
("1080","0","0"),
("1081","0","0"),
("1082","0","0"),
("1083","0","0"),
("1084","0","0"),
("1085","0","0"),
("1086","0","0"),
("1087","0","0"),
("1088","0","0"),
("1089","0","0"),
("1090","0","0"),
("1091","0","0"),
("1092","0","0"),
("1093","0","0"),
("1094","0","0"),
("1095","0","0"),
("1096","0","0"),
("1097","0","0"),
("1098","0","0"),
("1099","0","0"),
("1100","0","0"),
("1101","0","0"),
("1102","0","0"),
("1104","0","0"),
("1105","0","0"),
("1106","0","0"),
("1107","0","0"),
("1108","0","0"),
("1109","0","0"),
("1110","0","0"),
("1112","0","0"),
("1113","0","0"),
("1114","0","0"),
("1115","0","0"),
("1116","0","0"),
("1118","0","0"),
("1119","0","0"),
("1121","0","0"),
("1123","0","0"),
("1125","0","0"),
("1127","0","0"),
("1128","0","0"),
("1130","0","0"),
("1132","0","0"),
("1133","0","0"),
("1134","0","0"),
("1135","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("1136","0","0"),
("1137","0","0"),
("1138","0","0"),
("1139","0","0"),
("1140","0","0"),
("1141","0","0"),
("1142","0","0"),
("1143","0","0"),
("1144","0","0"),
("1145","0","0"),
("1146","0","0"),
("1147","0","0"),
("1148","0","0"),
("1149","0","0"),
("1150","0","0"),
("1151","0","0"),
("1152","0","0"),
("1153","0","0"),
("1154","0","0"),
("1155","0","0"),
("1156","0","0"),
("1157","0","0"),
("1158","0","0"),
("1159","0","0"),
("1160","0","0"),
("1161","0","0"),
("1162","0","0"),
("1163","0","0"),
("1164","0","0"),
("1165","2","2"),
("1166","0","0"),
("1167","0","0"),
("1168","0","0"),
("1169","0","0"),
("1170","0","0"),
("1171","0","0"),
("1172","0","0"),
("1173","0","0"),
("1174","0","0"),
("1175","0","0"),
("1176","0","0"),
("1177","0","0"),
("1178","2","1"),
("1179","0","0"),
("1180","0","0"),
("1181","0","0"),
("1182","2","1"),
("1183","0","0"),
("1184","0","0"),
("1185","0","0"),
("1186","2","2"),
("1187","0","0"),
("1188","0","0"),
("1189","0","0"),
("1190","2","2"),
("1191","0","0"),
("1192","0","0"),
("1193","0","0"),
("1194","2","2"),
("1195","0","0"),
("1196","0","0"),
("1197","0","0"),
("1198","0","0"),
("1199","0","0"),
("1200","0","0"),
("1201","0","0"),
("1202","2","2"),
("1203","0","0"),
("1204","0","0"),
("1205","0","0"),
("1206","0","0"),
("1207","0","0"),
("1208","2","2"),
("1209","0","0"),
("1210","0","0"),
("1211","0","0"),
("1212","0","0"),
("1213","0","0"),
("1214","0","0"),
("1215","0","0"),
("1216","0","0"),
("1217","0","0"),
("1218","0","0"),
("1219","0","0"),
("1220","0","0"),
("1221","0","0"),
("1223","0","0"),
("1224","0","0"),
("1225","0","0"),
("1227","0","0"),
("1228","0","0"),
("1230","0","0"),
("1231","0","0"),
("1232","0","0"),
("1233","0","0"),
("1234","0","0"),
("1236","0","0"),
("1237","0","0"),
("1238","0","0"),
("1239","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("1241","0","0"),
("1242","0","0"),
("1243","0","0"),
("1244","0","0"),
("1245","0","0"),
("1247","0","0"),
("1248","0","0"),
("1249","0","0"),
("1250","0","0"),
("1251","0","0"),
("1252","0","0"),
("1253","0","0"),
("1254","0","0"),
("1255","0","0"),
("1256","0","0"),
("1257","0","0"),
("1258","0","0"),
("1259","0","0"),
("1260","0","0"),
("1261","0","0"),
("1262","0","0"),
("1263","0","0"),
("1264","0","0"),
("1265","0","0"),
("1266","0","0"),
("1267","0","0"),
("1268","0","0"),
("1269","0","0"),
("1271","0","0"),
("1272","0","0"),
("1273","0","0"),
("1274","0","0"),
("1275","0","0"),
("1276","0","0"),
("1277","0","0"),
("1278","0","0"),
("1279","0","0"),
("1280","0","0"),
("1281","0","0"),
("1282","0","0"),
("1283","0","0"),
("1284","0","0"),
("1285","0","0"),
("1286","0","0"),
("1287","0","0"),
("1288","0","0"),
("1289","0","0"),
("1290","0","0"),
("1291","0","0"),
("1292","0","0"),
("1293","0","0"),
("1294","0","0"),
("1295","0","0"),
("1296","0","0"),
("1297","0","0"),
("1298","0","0"),
("1313","0","0"),
("1314","0","0"),
("1315","0","0"),
("1316","0","0"),
("1317","0","0"),
("1318","0","0"),
("1319","0","0"),
("1320","0","0"),
("1321","0","0"),
("1322","0","0"),
("1323","0","0"),
("1324","0","0"),
("1325","0","0"),
("1326","0","0"),
("1327","0","0"),
("1328","0","0"),
("1329","0","0"),
("1330","0","0"),
("1331","0","0"),
("1332","0","0"),
("1333","0","0"),
("1334","0","0"),
("1335","0","0"),
("1336","0","0"),
("1337","0","0"),
("1338","0","0"),
("1339","0","0"),
("1340","0","0"),
("1341","0","0"),
("1342","0","0"),
("1343","0","0"),
("1344","0","0"),
("1345","0","0"),
("1346","0","0"),
("1347","0","0"),
("1348","0","0"),
("1349","0","0"),
("1350","0","0"),
("1351","0","0"),
("1352","0","0"),
("1353","0","0"),
("1354","0","0"),
("1355","0","0"),
("1356","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("1357","0","0"),
("1358","0","0"),
("1359","0","0"),
("1360","0","0"),
("1361","0","0"),
("1362","0","0"),
("1363","0","0"),
("1364","0","0"),
("1365","0","0"),
("1366","0","0"),
("1367","0","0"),
("1368","0","0"),
("1369","0","0"),
("1370","0","0"),
("1371","0","0"),
("1372","0","0"),
("1373","0","0"),
("1374","0","0"),
("1375","0","0"),
("1376","0","0"),
("1377","0","0"),
("1378","0","0"),
("1379","0","0"),
("1380","0","0"),
("1381","0","0"),
("1382","0","0"),
("1383","0","0"),
("1384","0","0"),
("1385","0","0"),
("1386","0","0"),
("1387","0","0"),
("1388","0","0"),
("1389","0","0"),
("1390","0","0"),
("1391","0","0"),
("1392","0","0"),
("1395","0","0"),
("1396","0","0"),
("1398","0","0"),
("1399","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;