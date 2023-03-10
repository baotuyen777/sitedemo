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
("78","widget_categories","a:2:{i:3;a:4:{s:5:\"title\";s:22:\"Danh m???c b??i vi???t\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("159","current_theme","B???o hi???m","yes"),
("160","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 01 Apr 2019 07:15:59 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1554102977;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("161","theme_switched","","yes"),
("162","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:24:\"B??i vi???t m???i nh???t\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("163","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("165","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("166","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("167","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("168","flatsome_wup_buyer","trannguyen886","yes"),
("169","allowedthemes","a:1:{s:8:\"bao-hiem\";b:1;}","no"),
("170","fl_has_child_theme","bao-hiem","yes"),
("172","theme_mods_bao-hiem","a:122:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:1:{i:0;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"contact\";i:1;s:6:\"search\";i:2;s:6:\"social\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:6:\"search\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:1:{i:0;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:0:\"\";s:15:\"follow_facebook\";s:29:\"https://www.facebook.com/demo\";s:16:\"follow_instagram\";s:0:\"\";s:12:\"follow_email\";s:0:\"\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:14:\"primary_mobile\";i:5;s:6:\"footer\";i:4;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 01 Apr 2019 07:16:19 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:4025:\"<style>\n.box_fixRight {\n    position: fixed;\n    top: 190px;\n    right: -167px;\n    width: auto;\n    transition: all 0.2s ease-in-out 0s;\n    z-index: 999;\n}\n.hotline-footer{display:none}\n.box_fixRight .box_content {\n    background: #83b614;\n    padding: 0;\n    border-radius: 0;\n}\n.box_fixRight .box_content .item {\n    display: block;\n    padding: 8px 9px 8px 47px;\n    color: #fff;\n    border-bottom: 1px solid #92c524;\n    font-size: 15px;\n}\n.box_fixRight .box_content .item:hover{background-color:#709e0d !important}\n.box_fixRight .box_content .item.item_1 {\n    background-image: url(/wp-content/uploads/2019/04/icon1.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_2 {\n    background-image: url(/wp-content/uploads/2019/04/icon2.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_3 {\n    background-image: url(/wp-content/uploads/2019/04/icon3.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_4 {\n    background-image: url(/wp-content/uploads/2019/04/icon4.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight .box_content .item.item_5 {\n    background-image: url(/wp-content/uploads/2019/04/icon5.jpg); background-repeat: no-repeat;\n    background-size: 22px;\n    background-position-y: center;\n    background-position-x: 10px;\n}\n.box_fixRight:hover {\n    right: 0;\n    transition: all 0.2s ease-in-out 0s;\n}\n@media (max-width: 549px){.hotline-footer{display:block; position:fixed; bottom:0; width:100%; height:50px; z-index:99; background:rgba(0,0,0,0.6)}\n.hotline-footer .left{    width: 65%;\n    float: left;\n    height: 100%;\n    color: white;\n    line-height: 43px;\n    text-align: center;}\n.hotline-footer .right{    width: 35%;\n    float: right;\n    height: 100%;\n    line-height: 43px;\n    text-align: center;}.absolute-footer{font-size:13px}\n.blog-single .large-9, .blog-single .large-3{    flex-basis: 100%;\n max-width: 100%;}.blog-single .large-3{padding-left:15px; font-size:15px}\n \n.blog-single .large-3 .widget-area .section4{display:none}.tin-tuc-section .cot1-2{display:none}.hotline-footer a{color:white}\n.hotline-footer a{display:block;}.hotline-footer .left a{    background: #0082d0;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}.hotline-footer .right a{background: #3fb801;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}\n.hotline-footer .left img, .hotline-footer .right img{width:30px;    padding-right: 10px;}\n.box_fixRight{display:none}\n}\n</style>\n<div class=\"box_fixRight\">\n<div class=\"box_content\">\n<a href=\"/nop-ho-so-truc-tuyen/\" class=\"item item_1\">N???p h??? s?? tr???c tuy???n</a>\n<a href=\"/dong-phi-bao-hiem/\" class=\"item item_2\">????ng ph?? b???o hi???m</a>\n<a href=\"#dang-ky\" class=\"item item_3\">????ng k?? mua b???o hi???m</a>\n<a href=\"/mau-don-thong-dung/\" class=\"item item_4\">M???u ????n th??ng d???ng</a>\n<a href=\"/lien-he/\" class=\"item item_5\">Li??n h???</a>\n</div>\n</div>\n<div class=\"float-contact\">\n<button class=\"chat-zalo\"><a href=\"http://zalo.me/0909009009\">Chat Zalo</a></button>\n<button class=\"chat-face\"><a href=\"http://m.me/demo\">Chat Facebook</a></button>\n<button class=\"hotline\"><a href=\"tel:\">Hotline: 0909000000</a></button>\n</div>\n<div class=\"hotline-footer\">\n<div class=\"left\">\n<a href=\"https://messenger.com/t/demo\" ><img src=\"/wp-content/uploads/2019/04/icon-1.png\"/>Chat v???i t?? v???n vi??n</a>\n</div>\n<div class=\"right\">\n<a href=\"tel:0909009009\"><img src=\"/wp-content/uploads/2019/04/phone-icon-2.png\"/>G???i ngay</a>\n</div>\n<div class=\"clearboth\"></div>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:15841:\"@font-face {\n    font-family: \'SVN-Poppins\';\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.eot\');\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.woff\') format(\'woff\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-Poppins.ttf\') format(\'truetype\');\n    font-weight: normal;\n    font-style: normal;\n}\n\n@font-face {\n    font-family: \'/wp-content/themes/bao-hiem/font/SVN-Poppins\';\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.eot\');\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.woff\') format(\'woff\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsSemiBold.ttf\') format(\'truetype\');\n    font-weight: 500;\n    font-style: normal;\n}\n\n@font-face {\n    font-family: \'SVN-Poppins\';\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.eot\');\n    src: url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.woff\') format(\'woff\'),\n        url(\'/wp-content/themes/bao-hiem/font/SVN-PoppinsBold.ttf\') format(\'truetype\');\n    font-weight: bold;\n    font-style: normal;\n}\nh1,h2,h3,h4,h5,h6{font-family:\"SVN-Poppins\"; font-weight:bold}\n.nav li a{font-family:\"SVN-Poppins\"; font-weight:normal; font-size:15px;text-transform:none}\n\n.nav li{margin:0;}\n.nav li a{ padding-left:25px; padding-right:25px}\n.header-main .nav > li > a{color:white !important}\n.header-main .nav > li.has-icon > a:hover{color:#83b614 !important}\n.button.back-to-top{background: #73a833;\n    color: white;\n    border: 0;}\n\n\n.header-nav .icon-phone:before{font-size: 20px;\n    color: #73a833;}\nbody{font-family:\"roboto\", sans-serif; font-weight:normal; color:black}\n.header-nav .icon-facebook{background: #1f7fbf;\n    padding: 9px 10px !important;\n    border-radius: 99%;}\n\n.header-nav .icon-youtube{background: #d90000;\n    padding: 9px 10px !important;\n    border-radius: 99%;}\n.social-icons a, .header-search a{padding-left:2px !important; padding-right:2px !important}\n.icon-search{    padding: 6px 8px !important;\n    border-radius: 99%;\n    border: 1px solid white;}\n.header-main .has-dropdown .icon-angle-down{display:none}\n\n.nav li.ve-chung-toi{background: url(/wp-content/uploads/2019/04/ve-chung-toi.png);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 0px !important;}\n.nav li.san-pham{background: url(/wp-content/uploads/2019/04/sp.png);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 0px !important;}\n.nav li.ho-tro{background: url(/wp-content/uploads/2019/04/ho-tro.png);\n    background-repeat: no-repeat;\n    background-position-y: center;\n    padding-left: 0px !important;}\n.nav-dropdown { border:0}\n.ve-chung-toi .nav-dropdown.nav-dropdown-default>li{ float:left; display:inline-block}\n.nav-dropdown>li.nav-dropdown-col{width: 33.33%;\n    min-width: 33.33%;}\n.nav-column li>a{padding: 6px 20px;}.nav-dropdown-default .nav-column li>a, .nav-dropdown.nav-dropdown-default>li>a{\n    border-bottom: none;}\n.nav-dropdown-default .nav-column li>a{color: #004fb6;\n    font-size: 15px;}\n.nav-dropdown-default .nav-column li>a:hover{text-decoration:underline}\n.nav-dropdown .menu-item-has-children>a{    text-transform: none;\n    font-size: 17px;\n    font-weight: 600;\n    color: #494949;}\n.notice-banner{background: #0000008c;\n    padding: 20px;\n    border-radius: 5px;\n}\n\n.notice-banner p, .dang-ky-tu-van p{margin-bottom:0; font-family: \"SVN-Poppins\";}\n.notice-banner a{padding-top: 10px;\n    display: inline-block; color: #83b614;\n    text-decoration: underline;\n    font-size: 15px;}\n.notice-banner h2{    color: #83b614;\n    font-size: 37px;}\n.transparent .header-main {\n    \n    background-image: linear-gradient(black, rgba(0, 0, 0, 0));\n}\n.dang-ky-tu-van h2{margin-bottom:8px}\n.dang-ky-tu-van p{margin-bottom:0}\n.dang-ky-tu-van .nut-dang-ky-tu-van{  font-family: \"SVN-Poppins\";\n    background: white;\n    border: 0;\n    line-height: 47px;\n    font-weight: normal;\n    font-size: 16px;\n    color: #83b614;\n    text-transform: uppercase !important;    margin: 0;\n    margin-top: 9px;}\n.dang-ky-tu-van .col, .nhu-cau .col,.row-tieu-de-2 .col{padding-bottom:0}\n.dang-ky-tu-van .nut-dang-ky-tu-van:hover{background:#1d3a5f}\n.section-title b {\n    background-color: #ffffff00;\n}.section-title-container {\n    margin-bottom: 0;\n}\n.nhu-cau .icon-box .icon-box-img{margin-bottom:10px !important}\n.nhu-cau .icon-box .icon-box-text h3{padding-bottom: 7px;\n       font-weight: normal;\n    line-height: 23px;\n    color: white;\n    font-family: \"roboto\", sans-serif;}\n.nhu-cau .cot1 .icon-box{background:#ffa000; padding:10px; border-radius:5px; padding:10px; }\n.nhu-cau .cot2 .icon-box {\n    background: #59b337;\n    padding: 10px;\n    border-radius: 5px;\n    padding: 10px;\n}\n.nhu-cau .cot3 .icon-box {\n    background: #2098d1;\n    padding: 10px;\n    border-radius: 5px;\n    padding: 10px;\n}\n.nhu-cau .cot4 .icon-box {\n    background: #c9077f;\n    padding: 10px;\n    border-radius: 5px;\n    padding: 10px;\n}\n.tin-tuc .large-12{padding-bottom:0}\n.tin-tuc .box-vertical .box-text{padding:0 ;padding-left:15px}\n.tin-tuc .post-item .col-inner{    background: white;\n    padding: 10px;\n    border-radius: 5px;}\n.box-blog-post .is-divider{display:none}\n.tin-tuc .box-vertical .box-text .post-title:hover, .tin-tuc .large-12 .post-item .post-title:hover, .footer-section a:hover{color:#83b614 !important}\n.footer-section .col{padding-bottom:0}\n.absolute-footer.dark {\n    border-top: 1px solid #3a3a3a;\n}\n.tin-tuc .box-vertical .box-text .post-title{margin-bottom: 10px;\n    color: #0f72b3;\n    text-transform: none;\n    font-family: \"roboto\", sans-serif;}\n.flickity-prev-next-button svg{    background: white;\n    border-radius: 99%;\n    box-shadow: 1px 2px 10px #c7c7c7;}\n.tin-tuc .large-12 .post-item .post-title{    height: 39px;\n    overflow: hidden;\n    margin-bottom: 9px;\n    color: #0d69a7;\n    font-size: 16px;\n    font-family: \"roboto\",sans-serif;}\n.doi-tac .icon-box{box-shadow: 0px -8px 17px #dedede;\n    height: 155px;\n    padding: 10px 0;}\n.copyright-footer, .footer-secondary {\n    padding: 0;\n    font-size: 13px;\n}\n.nop-ho-so-truc-tuyen .chung-tu .medium-3 .col-inner{min-height:377px; border: 1px solid #e1e1e1;\n    background: white;}\n.chung-tu{padding-top:40px !important}\n.nop-ho-so-truc-tuyen .chung-tu ol{    padding: 0 10px;\n    font-size: 15px;}\n.nop-ho-so-truc-tuyen .chung-tu .benh-hiem-ngheo h3{background:#1f7fbf; line-height:48px}\n.nop-ho-so-truc-tuyen .chung-tu .thuong-tat h3{background:#ed7e14; }\n.nop-ho-so-truc-tuyen .chung-tu .tu-vong h3{background:#d81673; line-height:48px}\n.nop-ho-so-truc-tuyen .chung-tu h3{     min-height: 70px; font-family:\"roboto\", sans-serif;   padding: 10px;\n    line-height: 25px;\n    text-align: center;\n    color: white;\n    font-weight: normal;\n    font-size: 19px;}\n.nop-ho-so-truc-tuyen .chung-tu .chi-phi-nam-vien h3{background: #83b614;}\n.nop-ho-so-truc-tuyen .chung-tu{    background: #f4f7fc;\n    padding: 20px;}\n.giai-quyet-quyen-loi .buoc1 .col-inner{background: #83b614;\n    padding: 20px;}\n.giai-quyet-quyen-loi .icon-box h3{margin-top:-20px; margin-bottom: 0;\n    color: white;\n    font-size: 30px;}\n.giai-quyet-quyen-loi .icon-box p{    font-size: 15px;\n    color: white;\n    margin-top: -10px;}\n.thoi-gian-phuc-dap{background:#f4f7fc; padding:20px}\n.thoi-gian-phuc-dap .col{padding-bottom:0}\n.cac-mau-don .tabbed-content .nav-tabs>li{margin-bottom:0}\n.cac-mau-don .nav-tabs>li>a {\n    border-top: 0;\n    border-left: 0;\n    border-right: 1px solid #9ecb3c;\n    background-color: #83b614;\n    padding-left: 15px;\n    padding-right: 15px;\n    color: white;\n}\n.cac-mau-don .nav-tabs+.tab-panels {\n    border: 0;\n    background-color: #fff;\n    padding: 10px 0;\n}\n.cac-mau-don h2{margin-bottom:0}\n.cac-mau-don h2 a{font-family:\"roboto\", sans-serif; font-size:15px}\n.cac-mau-don .table tr th {\n    font-size: 1rem;\n    font-weight: 600;\n    text-transform: uppercase;\n    color: #ffffff;\n    background-color: #83b614;\n    border: 1px solid #ffffff;\n    text-align: center;\n    padding: 10px 15px;\n}\n.cac-mau-don .table tr td {\n    font-size: 0.9375rem;\n    font-weight: 600;\n    line-height: 1.4;\n    color: #333333;\n    vertical-align: middle;\n    text-align: center;\n    padding: 2px 15px;\n    border: 1px solid #e6e6e6;\n}\n.nav-tabs > li.active > a {\n     background: #1d3a5f !important;\n}\n.cac-mau-don .tabbed-content .nav{    background: #83b614;}\n.giai-quyet-quyen-loi .buoc2 .col-inner {\n    background:#1f7fbf;\n    padding: 20px;\n}\n.giai-quyet-quyen-loi .buoc3 .col-inner {\n    background: #ed7e14;\n    padding: 20px;\n}\n.lien-he-section .cot1 .col-inner{background:#f9f9f9; height:436px}\n.lien-he-section .cot1 ul, .lien-he-section .cot1 h4{padding:0 10px; margin-bottom:4px}\n.lien-he-section .cot1 .contact-title h3{background: #83b614;\n    color: white;\n    padding: 15px;\n    text-align: center;\n    text-transform: uppercase;}\n.banner-row .col{padding-bottom:0}\n.row-tieu-de {background:#83b614; padding:20px}\n\n.row-tieu-de .icon-box .icon-box-text p{padding-top:10px; color:white}\n.row-tieu-de .col{padding-bottom:0; flex-basis:20%; max-width:20%}\n.row-banner-cuoi{    background: #eafffd;\n    padding: 20px;}\n.tieu-de-box h2:before{content: \'\';\n    background: url(/wp-content/uploads/2019/04/quote_icon-1.png) 0 0 no-repeat;\n    width: 75px;\n    height: 63px;\n    position: absolute;\n    top: 15px;\n    left: 30px;}\n.tieu-de-box h2{color: #f57142;}\n.tieu-de-box{    background: #ffeccc;\n    padding: 20px 120px;\n    color: #464646;}\n.row-dieu-chinh-ho-so{background: #eafbff;\n    padding: 20px;\n}\n.row-tai-mau-don .icon-box{    background: #83b614;\n    padding: 20px 10px;\n    color: white;\n    line-height: 20px;}\n.accordion-item{    FONT-SIZE: 15PX;\n    color: #1d3a5f;}\n.accordion-title.active{    border-color: #83b614;\n    background: #83b614;\n    color: white;}\n.accordion-inner {  display: none;\n    background: #83b614;\n    color: white;\n    border-top: 1px solid white;\n}\n.accordion-title{border-top: 1px dashed #ddd;}\n.accordion{border: 1px dashed #dddddd;}\n#breadcrumbs span{color:#d4d4d4}\n#breadcrumbs{margin-bottom: -40px;\n    z-index: 9;\n    position: relative;\n    background: #00000087;\n    line-height: 20px;\n    padding: 10px;\n    font-size: 15px;}\n.tieu-de-box p{    color: #da6b01; margin-bottom:0}\n.row-tieu-de-2 p a:hover{color:#83b614}\n.row-tieu-de-2 p a{    color: #4376b7; font-size:15px; }\n.row-tieu-de-2 p{ margin-bottom: 0;\n    font-size: 17px;\n    text-align: center;\n    line-height: 26px;\n    padding: 13px 0;}\n.row-tieu-de.lai-suat-cong-bo .cot3 .icon-box .icon-box-text p{color:#fff200}\n.row-tieu-de.ca-nhan .cot1 .icon-box .icon-box-text p{color:#fff200}\n.row-tieu-de.doanh-nghiep .cot2 .icon-box .icon-box-text p{color:#fff200}\n.row-tieu-de-2{background:#1d3a5f}\n.blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9{flex-basis:70%; max-width:70%; padding-right:0; border-right:0 !important;}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3{flex-basis:30%; max-width:30%; padding-left:20px; border-left:0 !important}\nspan.widget-title{    display: block;\n    width: 100%;\n    background: #83b614;\n    padding: 15px;\n    text-align: center;\n    color: white;\n    font-size:17px;}\n.blog-archive .large-9 .large-columns-3{margin-left: -10px;\n    margin-right: -10px;}\n.blog-archive .large-9 .post-item{padding: 0 10px 10px;}\n\n.recent-blog-posts-li .badge .badge-inner{border-radius:99%}\n.recent-blog-posts a{font-size:15px}\n.thumnail-header{margin-bottom:20px}\n.blog-single .entry-title{font-family: \"roboto\", sans-serif;\n    font-size: 25px;\n    color: #1b60b7;}\n.blog-single .entry-header-text {\n    padding: 0;\n}\n.blog-archive .post-item .post-title{font-family: \"roboto\", sans-serif;\n    margin-bottom: 5px;height: 44px;\n    overflow: hidden;}\n.blog-archive .post-item .from_the_blog_excerpt {    height: 45px;\n    overflow: hidden;}\n.page-right-sidebar #breadcrumbs{background:#eaeaea87}\n.page-right-sidebar #breadcrumbs span {\n    color: #000000;\n}\n.single-bao-hiem .tab-single-bao-hiem ul li a{color:white}\n.single-bao-hiem .tab-single-bao-hiem ul li{    text-align: center;margin:0; width:14%; display:inline-block; float:left; list-style:none}\n.single-bao-hiem .tab-single-bao-hiem ul{margin-bottom:0; display:inline-block; width:100%}\n.single-bao-hiem .tab-single-bao-hiem{      background: #83b614;    padding: 10px 0;  padding: 10px 0;    display: block;\n}\n.single-bao-hiem .tab-single-bao-hiem ul li a:hover{color:#4e6c0b}\n.single-bao-hiem .large-12 .img{margin-bottom:0}\n\n.blog-single .entry-content {\n    padding-top: 0;\n    padding-bottom: 0;\n}.is-divider, .blog-archive .large-9 .badge.post-date, .blog-archive .entry-category{display:none}\n.blog-archive h1.page-title{    position: absolute;\n    z-index: 99999;\n    top: 145px;\n    padding-left: 68px;\n    font-size: 27px;\n    color: #1d3a5f;}\n.blog-single .entry-category a{color:#1d3a5f !important}\n.blog-single .entry-category{position: absolute;\n    z-index: 9;\n    padding-top: 116px;\n    padding-left: 100px;\n    font-size: 25px;\n    width: 341px;}\n.ngay-cap-nhat{    margin-bottom: 10px;\n    font-size: 15px;\n    color: gray;}\n.blog-single .blog-share{text-align:left; margin-top: 20px;}\n.blog-single .blog-share a.button{border:0}\n.single-bao-hiem .nav>li>a{color:white; font-family:\"roboto\", sans-serif}\n.single-bao-hiem .nav>li.active>a{    background: #688f12;}\n.co-the-ban-quan-tam{background:#fbfbfb; padding:20px}\n.co-the-ban-quan-tam .col{padding-bottom:0}\n.form-tu-van h3{    background: #83b614;\n    text-align: center;\n    text-transform: uppercase;\n    font-size: 20px;\n    padding: 8px;\n    color: white;\n    font-weight: normal;}\n.form-tu-van h4{    font-family: \"roboto\", sans-serif;\n    color: #0a7dc9; font-size:16px; padding-left: 10px;}\n.form-tu-van .row-form{padding: 0 10px;display: inline-block;\n    width: 100%;\n    clear: both;}\n.form-tu-van .row-form .left{padding-right:8px; width:50%; float:left; display:inline-block}\n.form-tu-van .row-form .right{width:50%; float:right; text-align:left;padding-right:8px;  display:inline-block}\n.single-bao-hiem .tabbed-content .nav{background: #83b614;}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea, input[type=\'date\'], select{margin-bottom: 10px;\n    font-size: 15px;\n    border-radius: 4px;\n    background: #d8e5f4;\n    box-shadow: none;\n    border: 0;}\n.wpcf7-list-item-label{font-size:15px}\n.form-tu-van input[type=\'submit\']:not(.is-form){     margin: 10px;\n    font-weight: normal;\n    border-radius: 5px;\n    margin-top: 0;}\n.float-contact {\n    position: fixed;\n    bottom: 20px;\n    left: 20px;\n    z-index: 99999;\n}.chat-zalo {\n    background: #8eb22b;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-face {\n    background: #125c9e;\n    border-radius: 20px;\n    padding: 0px 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.float-contact .hotline {\n    background: #d11a59 !important;\n    border-radius: 20px;\n    padding: 0 18px;\n    color: white;\n    display: block;\n    margin-bottom: 6px;\n}.chat-zalo a, .chat-face a, .hotline a {\n    font-size: 15px;\n    color: white;\n    font-weight: normal;\n    text-transform: none;\n    line-height: 0;\n}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:2488:\".off-canvas-left.mfp-ready .mfp-content{background:#1d3a5f}\n.header-search-form-wrapper .searchform .button.icon i{border:0}\ninput[type=\'search\']{height:39%; border-radius:0}\n.off-canvas:not(.off-canvas-center) .nav-vertical li>a {\n    padding-left: 20px;\n    color: white;\n    text-transform: uppercase;\n    font-size: 16px;\n}\n.nav-sidebar.nav-vertical>li+li {\n    border-top: 2px solid #173355;\n    border-bottom: 1px solid #274770;\n}\n.icon-angle-down:before {\n \n    color: #4f7bb4;\n}\n.off-canvas .nav-vertical li {padding-left:0}\n.off-canvas .nav-vertical li li>a{text-transform: none !important;\n    background: #0f2541;\n    border-bottom: 1px solid #173356;\n    color: #5d88bf !important;\n    font-size: 15px !important;}\n.dang-ky-tu-van{text-align:center}\n.nhu-cau .large-3, .tin-tuc .large-6{flex-basis:50%; max-width:50%; padding-left:5px; padding-right:5px;padding-bottom:10px}\n.tin-tuc .box-vertical .box-text{padding:0; padding-top:10px}\n.footer-section .large-2, .row-tieu-de, .tieu-de-box h2:before, .gap-element, .thumnail-header, .blog-single .entry-category a \n{display:none !important}\n.tin-tuc .box-vertical .box-text .post-title{font-size:15px}\n.banner-row .col {\n    padding-bottom: 0;\n    padding: 0;\n}#breadcrumbs {\n	margin-bottom: 13px;}.page-wrapper {\n    padding-top: 15px;\n    padding-bottom: 15px;\n}\n.blog-archive .post-item .post-title{height:auto; font-size:16px}\n.post {\n    margin: 0;\n}\n.lien-he-section .medium-8 .col-inner{padding:0 !important}\n.footer-section .col, .blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3, .blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9 {padding-bottom:0; flex-basis:100%; max-width:100%}\n.tieu-de-box {\n   \n    padding: 10px;\n\n}\n.row .large-6{padding: 0 10px 20px;}\n.row .large-12{padding:10px}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3, .blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9{padding-left:15px !important; padding-right:15px !important}\n.blog-archive h1.page-title {\n   position:relative;\n\n    top:auto;\n   padding-left:0;\n    font-size: 25px;\n  \n}\n.form-tu-van .row-form .left, .form-tu-van .row-form .right{padding-right:0; width:100%; display:block}\n.banner-row{margin-bottom:20px}\n.row-tieu-de-2 p{  \n    font-size: 17px;\n\n    line-height: 20px;\n    padding: 8px 0;}\n.tieu-de-box{margin-bottom:15px}\n.float-contact{display:none}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1200px\";s:11:\"preset_demo\";s:19:\"header-default-dark\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:4:\"dark\";s:9:\"header_bg\";s:7:\"#1d3a5f\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"90\";s:21:\"header_bg_transparent\";s:19:\"rgba(10,10,10,0.55)\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"10\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:14:\"header_divider\";b:0;s:13:\"contact_phone\";s:0:\"\";s:13:\"contact_hours\";s:0:\"\";s:13:\"contact_email\";s:0:\"\";s:13:\"disable_fonts\";b:0;s:14:\"follow_youtube\";s:1:\"#\";s:9:\"site_logo\";s:70:\"https://bizhostvn.com/w/baohiem/wp-content/uploads/2019/05/baohiem.png\";s:10:\"logo_width\";s:3:\"215\";s:12:\"logo_padding\";s:1:\"1\";s:8:\"nav_push\";s:1:\"0\";s:10:\"nav_height\";s:2:\"16\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:19:\"footer_bottom_color\";s:7:\"#333333\";s:16:\"footer_left_text\";s:173:\"Copyright [ux_current_year] ?? <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a> | Thi???t k??? website b???i <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a>\";s:17:\"footer_right_text\";s:22:\"Hotline k??? thu???t: \";s:13:\"color_primary\";s:7:\"#83b614\";s:15:\"color_secondary\";s:7:\"#1d3a5f\";s:11:\"color_texts\";s:7:\"#383838\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#83b614\";s:18:\"color_widget_links\";s:7:\"#2b2b2b\";s:24:\"color_widget_links_hover\";s:7:\"#83b614\";s:10:\"blog_style\";s:5:\"3-col\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:18:\"blog_archive_title\";b:0;s:23:\"blog_single_header_meta\";b:0;s:26:\"blog_single_featured_image\";b:0;s:23:\"blog_single_footer_meta\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:18:\"wpseo_primary_term\";s:1:\"0\";s:16:\"wpseo_breadcrumb\";s:1:\"0\";s:28:\"wpseo_breadcrumb_remove_last\";s:1:\"1\";}","yes"),
("174","envato_setup_complete","1554102984","yes"),
("178","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("181","category_children","a:0:{}","yes"),
("268","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1554269052;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("269","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"L???i 404: kh??ng x??c ?????nh\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"L??u tr??? cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang ch???\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"T??m ki???m v???i\";s:15:\"breadcrumbs-sep\";s:2:\"??\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:43:\"%%term_title%%%%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
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
("692","325","_wp_attached_file","2019/04/h???i-ch???-th???p-?????-vn.jpeg"),
("693","325","_wp_attachment_metadata","a:5:{s:5:\"width\";i:614;s:6:\"height\";i:221;s:4:\"file\";s:40:\"2019/04/h???i-ch???-th???p-?????-vn.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"h???i-ch???-th???p-?????-vn-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"h???i-ch???-th???p-?????-vn-300x108.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
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
("1095","694","_wp_attached_file","2019/04/DOANH-NGHI???P.jpg"),
("1096","694","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:219;s:4:\"file\";s:26:\"2019/04/DOANH-NGHI???P.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHI???P-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"DOANH-NGHI???P-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"DOANH-NGHI???P-768x140.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"DOANH-NGHI???P-1024x187.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
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
("1158","781","_wp_attached_file","2019/04/ph??t-an-b??nh.jpg"),
("1159","781","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:26:\"2019/04/ph??t-an-b??nh.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ph??t-an-b??nh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"ph??t-an-b??nh-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1160","785","_wp_attached_file","2019/04/ph??t-b??nh-an.jpg"),
("1161","785","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:336;s:4:\"file\";s:26:\"2019/04/ph??t-b??nh-an.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ph??t-b??nh-an-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"ph??t-b??nh-an-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
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
("1335","985","_wp_attached_file","2019/04/chien-l????c_phan-khuc-thi-truong-100x100.png"),
("1336","985","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:53:\"2019/04/chien-l????c_phan-khuc-thi-truong-100x100.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
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
("1438","1117","_wp_attached_file","2019/04/mi???n-????ng-ph??-b???o-hi???m.png"),
("1439","1117","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:43:\"2019/04/mi???n-????ng-ph??-b???o-hi???m.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1440","1120","_wp_attached_file","2019/04/mi???n-????ng-ph??-b???o-hi???m-do-b???nh-hi???m-ngh??o.png"),
("1441","1120","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:67:\"2019/04/mi???n-????ng-ph??-b???o-hi???m-do-b???nh-hi???m-ngh??o.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1442","1122","_wp_attached_file","2019/04/b???o-hi???m-bhn-tr???-em.png"),
("1443","1122","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:37:\"2019/04/b???o-hi???m-bhn-tr???-em.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1444","1124","_wp_attached_file","2019/04/b???o-hi???m-bhn-m???-r???ng-2015.png"),
("1445","1124","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:45:\"2019/04/b???o-hi???m-bhn-m???-r???ng-2015.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1446","1126","_wp_attached_file","2019/04/bh-h???-tr???-chi-ph??-n???m-vi???n.png"),
("1447","1126","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:47:\"2019/04/bh-h???-tr???-chi-ph??-n???m-vi???n.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1448","1129","_wp_attached_file","2019/04/bh-h???-tr???-chi-ph??-ph???u-thu???t.png"),
("1449","1129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:49:\"2019/04/bh-h???-tr???-chi-ph??-ph???u-thu???t.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1450","1131","_wp_attached_file","2019/04/bh-t???-k???.png"),
("1451","1131","_wp_attachment_metadata","a:5:{s:5:\"width\";i:123;s:6:\"height\";i:123;s:4:\"file\";s:24:\"2019/04/bh-t???-k???.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
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
("1539","1270","_form","<div class=\"form-tu-van\">\n<h3>????ng k?? mua b???o hi???m</h3>\n<h4>1. Th??ng tin c???a b???n</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n[text* text-183 placeholder \"H??? t??n c???a b???n...\"]\n[text text-145 placeholder \"Khu v???c\"]\n[select* menu-715 \"Gi???i t??nh\" \"Nam\" \"N???\"]\n</div>\n<div class=\"right\">\n[tel* tel-434 placeholder \"S??? ??i???n tho???i...\"]\n[date date-255 placeholder \"Ng??y sinh\"]\n</div>\n</div>\n<h4>2. Nhu c???u c???a b???n</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>D??nh cho c?? nh??n</label>\n[checkbox checkbox-345 \"T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???\" \"T??ch l??y cho t????ng lai h???c v???n c???a con\" \"B???o v??? tr?????c nh???ng r???i ro trong cu???c s???ng\" \"Ch??m s??c s???c kh???e\"]\n</div>\n<div class=\"right\">\n<label>D??nh cho doanh nghi???p</label>\n[checkbox checkbox-355 \"B???o v??? tr?????c nh???ng r???i ro trong cu???c s???ng\" \"Ch??m s??c s???c kh???e\"]\n</div>\n</div>\n[submit \"G???i y??u c???u\"]\n</div>"),
("1540","1270","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:74:\"M???u web b???o hi???m - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:89:\"M???u web b???o hi???m - Thi???t k??? website Webdemo.com <wordpress@baohiem.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:460:\"C?? m???t ng?????i y??u c???u t?? v???n mua b???o hi???m qua website:\n- H??? v?? t??n: [text-183]\n- Khu v???c: [text-145]\n- Gi???i t??nh: [menu-715]\n- S??? ??i???n tho???i: [tel-434]\n- Ng??y sinh: [date-255]\n- Kh??ch h??ng c?? nh??n: [checkbox-345]\n- Kh??ch h??ng doanh nghi???p: [checkbox-355]\n\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web b???o hi???m - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/baohiem)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1541","1270","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:74:\"M???u web b???o hi???m - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:89:\"M???u web b???o hi???m - Thi???t k??? website Webdemo.com <wordpress@baohiem.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:206:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web b???o hi???m - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/baohiem)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1542","1270","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
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
("2","1","2019-04-01 07:11:30","2019-04-01 07:11:30","[section label=\"???nh banner\" bg=\"158\" bg_size=\"original\" padding=\"115px\" height=\"569px\" border=\"1px 0px 0px 0px\" border_color=\"rgb(235, 235, 235)\"]\n\n[row style=\"large\" v_align=\"middle\" h_align=\"center\"]\n\n[col span=\"5\" span__sm=\"12\" padding=\"15px 15px 15px 15px\" align=\"left\" animate=\"flipInY\" parallax=\"-10\"]\n\n\n[/col]\n[col span=\"7\" span__sm=\"12\" align=\"center\" color=\"light\" animate=\"flipInY\"]\n\n[gap height=\"137px\"]\n\n<div class=\"notice-banner\">\n<h2>B???o hi???m nh??n th???</h2>\n<p>C??ch t???t nh???t ????? t??ch l??y v?? ????? ph??ng r???i ro cho m???i th??nh vi??n trong gia ????nh. ?????ng ch??? quan v???i cu???c s???ng c???a b???n v?? nh???ng ng?????i th??n y??u.</p>\n<p><a href=\"/san-pham/ca-nhan/\">Xem th??m</a></p>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????ng k?? t?? v???n\" bg_color=\"rgb(131, 182, 20)\" class=\"dang-ky-tu-van\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\" color=\"light\"]\n\n<h2>B???o hi???m nh??n th??? - b???n c?? quan t??m?</h2>\n<p>Gi???a v?? v??n l???a ch???n, ch??ng t??i c??m ??n b???n ???? quan t??m ?????n s???n ph???m c???a ch??ng t??i.</p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[button text=\"????ng k?? t?? v???n\" letter_case=\"lowercase\" style=\"outline\" radius=\"99\" icon=\"icon-phone\" icon_reveal=\"true\" class=\"nut-dang-ky-tu-van\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Nhu c???u\" padding=\"50px\" class=\"nhu-cau\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Nhu c???u c???a b???n l?? g???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">Aviva cung c???p cho b???n m???t gi???i ph??p b???o hi???m to??n di???n cho c??c c???t m???c quan tr???ng trong ?????i</p>\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot1\"]\n\n[featured_box img=\"229\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???</span></h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot2\"]\n\n[featured_box img=\"243\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">T??ch l??y cho t????ng lai h???c v???n c???a con</span></h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot3\"]\n\n[featured_box img=\"251\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">B???o v??? tr?????c nh???ng r???i ro trong cu???c s???ng</span></h3>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\" animate=\"flipInX\" class=\"cot4\"]\n\n[featured_box img=\"253\" img_width=\"600\" pos=\"center\" link=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\"]\n\n<h3 style=\"text-align: center;\"><span style=\"font-size: 85%;\">Ch??m s??c s???c kh???e c???a b???n v?? ng?????i th??n</span></h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" bg_color=\"rgb(244, 247, 252)\" padding=\"45px\" class=\"tin-tuc\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin t???c - s??? ki???n\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">Th??ng tin v?? s??? ki???n m???i nh???t t??? B???o hi???m nh??n th??? GIuseArt</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"29\" comments=\"false\" image_height=\"65%\" image_width=\"43\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"1\" offset=\"1\" show_date=\"false\" excerpt_length=\"29\" comments=\"false\" image_height=\"65%\" image_width=\"43\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span__sm=\"12\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" posts=\"7\" offset=\"2\" show_date=\"false\" excerpt_length=\"20\" comments=\"false\" image_height=\"65%\" image_size=\"original\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"?????i t??c\" padding=\"45px\" class=\"doi-tac\"]\n\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"?????i t??c c???a ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">C??c b???n ho??n to??n an t??m v??? ch??? ????? b???o hi???n c???a ch??ng t??i v?? ???? c?? h??ng tr??m ?????i t??c<br />tin c???y ???? v?? ??ang ???ng h??? v?? ?????ng h??nh c??ng ch??ng t??i.</p>\n[gap height=\"24px\"]\n\n[ux_slider nav_pos=\"outside\" nav_size=\"normal\" nav_style=\"simple\" nav_color=\"dark\" bullets=\"false\" bullet_style=\"simple\"]\n\n[row_inner]\n\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"317\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">Tr?????ng ?????i h???c Qu???c t???</br> RMIT Vi???t Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"321\" img_width=\"174\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">B???o hi???m Ng??n h??ng TMCP<br /> C??ng th????ng Vi???t Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"325\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">H???i ch??? th???p ?????</br>Vi???t Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"329\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">D???ch v??? y t??? v?? th???m m???</br>Ch???t l?????ng cao</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n[row_inner]\n\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"333\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">French Chamber of Commercer</br>and Industria Vi???t nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"336\" img_width=\"174\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">C???ng th??ng tin<br /> tra c???u s???c kh???e</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"321\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">H???i ch??? th???p ?????</br>Vi???t Nam</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"317\" img_width=\"166\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #282828; font-size: 90%;\">D???ch v??? y t??? v?? th???m m???</br>Ch???t l?????ng cao</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","publish","closed","open","","trang-chu","","","2019-04-03 15:11:15","2019-04-03 08:11:15","","0","https://tppone.com/demo/baohiem/?page_id=2","0","page","","0"),
("3","1","2019-04-01 07:11:30","2019-04-01 07:11:30","<!-- wp:heading --><h2>Ch??ng t??i l?? ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>?????a ch??? website l??: https://bizhostvn.com/w/baohiem.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>B??nh lu???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th?? vi???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th??ng tin li??n h???</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>N???i dung nh??ng t??? website kh??c</h3><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Ph??n t??ch</h3><!-- /wp:heading --><!-- wp:heading --><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin li??n h??? c???a b???n</h2><!-- /wp:heading --><!-- wp:heading --><h2>Th??ng tin b??? sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3><!-- /wp:heading -->","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-04-01 07:11:30","2019-04-01 07:11:30","","0","https://tppone.com/demo/baohiem/?page_id=3","0","page","","0"),
("20","1","2019-04-01 14:35:15","2019-04-01 07:35:15","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"978\" image_size=\"original\"]\n\n[gap]\n\n[title style=\"center\" text=\"T???i sao l???a ch???n ch??ng t??i\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n<p style=\"text-align: center;\">V???i l???ch s??? l???ng l???y c???a ch??ng t??i trong ng??nh, ch??ng t??i tin t?????ng v??o kh??? n??ng v?? chuy??n m??n c???a m??nh ????? mang l???i s??? b??nh an tr?????c m???i bi???n ?????ng cho kh??ch h??ng th??ng qua c??c s???n ph???m v?? d???ch v??? c???a ch??ng t??i.</p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">32 n??m</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">L?? t???p ??o??n b???o hi???m ?????n t??? V????ng qu???c Anh v???i h??n 322 n??m kinh nghi???m ho???t ?????ng trong l??nh v???c b???o hi???m</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">14 qu???c gia</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">C?? m???t tr??n 14 th??? tr?????ng tr??n to??n th??? gi???i</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">33 tri???u kh??ch</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Ph???c v??? h??n 33 tri???u kh??ch h??ng tr??n to??n th??? gi???i</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"987\" img_width=\"80\" pos=\"center\"]\n\n<h3 style=\"text-align: center;\">1/4 d??n s??? Anh</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">T???i Anh qu???c, ch??ng t??i l?? nh?? cung c???p d???ch v??? b???o hi???m h??ng ?????u, ph???c v??? ?? d??n s??? v?? ph??t tri???n r???t m???nh t???i c??c th??? tr?????ng Ch??u ??u, Ch??u ?? v?? Canada</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-gioi-thieu\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"41px 33px 29px 45px\" bg_color=\"rgb(37, 185, 34)\" color=\"light\" class=\"cot4\"]\n\n<ul>\n<li><a href=\"#\">T???m nh??n</a></li>\n<li><a href=\"#\">S??? m???nh ph??t tri???n</a></li>\n<li><a href=\"#\">Gi?? tr??? c???t l??i</a></li>\n<li><a href=\"#\">Chi???n l?????c ph??t tri???n</a></li>\n</ul>\n\n[/col]\n[col span=\"8\" span__sm=\"12\" padding=\"41px 39px 40px 42px\" bg_color=\"rgb(31, 127, 191)\" color=\"light\" class=\"cot8\"]\n\n<h3>L???ch s??? ph??t tri???n c???a ch??ng t??i</h3>\n<p>T???i Anh qu???c, ch??ng t??i l?? nh?? cung c???p d???ch v??? b???o hi???m<br/> h??ng ?????u, ph???c v??? ?? d??n s??? v?? ph??t tri???n r???t m???nh t???i c??c th??? tr?????ng<br/> Ch??u ??u, Ch??u ?? v?? Canada</p>\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-gioi-thieu2\"]\n\n[col span=\"4\" span__sm=\"12\" padding=\"38px 42px 41px 41px\" bg_color=\"rgb(84, 38, 165)\" color=\"light\" class=\"cot1\"]\n\n<h3 class=\"title-ab\">AVIVA VI???T NAM H?????NG ?????N VI???C T???O RA S??? KH??C BI???T V?? N??? L???C KH??NG NG???NG.</h3>\n<div class=\"brief\">Ch??ng t??i ?????t ??u ti??n c??ng ngh??? l??m tr???ng t??m c???a chi???n l?????c ph??t tri???n ????? ?????y m???nh c??c d???ch v??? d???a tr??n n???n t???ng k??? thu???t s???</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"41px 43px 7px 43px\" bg_color=\"rgb(248, 144, 0)\" color=\"light\" class=\"cot2\"]\n\n<h3 class=\"title-ab\">PH??T TRI???N C???NG ?????NG</h3>\n<div class=\"brief\">\n<p>Song song v???i nh???ng m???c ti??u kinh doanh, Aviva Vi???t Nam c??ng t???p trung x??y d???ng c??c d??? ??n ph??t tri???n c???ng ?????ng, ??i???n h??nh l?? Ch????ng tr??nh Qu??? C???ng ?????ng Aviva (Aviva Community Fund) v?? Ch????ng tr??nh H???c b???ng Aviva (Aviva Scholarship)</p>\n</div>\n\n[/col]\n[col span=\"4\" span__sm=\"12\" padding=\"45px 38px 7px 27px\" bg_color=\"rgb(39, 178, 89)\" color=\"light\" class=\"cot3\"]\n\n<h3 class=\"title-ab\">TUY???N D???NG</h3>\n<div class=\"brief\">\n<p>V???i tinh th???n kh???i nghi???p nh???m t???o ra m???t m??i tr?????ng tho???i m??i, n??ng ?????ng v?? gi??u s??ng t???o, t???i Aviva Vi???t Nam lu??n m??? ra nh???ng c?? h???i m???i ????? ch??o ????n c??c ???ng vi??n ti???m n??ng gia nh???p ?????i gia ????nh Aviva.</p>\n<p>??</p>\n</div>\n\n[/col]\n\n[/row]","V??? ch??ng t??i","","publish","closed","closed","","ve-chung-toi","","","2019-04-03 13:27:09","2019-04-03 06:27:09","","0","https://tppone.com/demo/baohiem/?page_id=20","0","page","","0"),
("22","1","2019-04-01 14:35:57","2019-04-01 07:35:57","","S???n ph???m","","publish","closed","closed","","san-pham","","","2019-04-01 14:35:57","2019-04-01 07:35:57","","0","https://tppone.com/demo/baohiem/?page_id=22","0","page","","0"),
("24","1","2019-04-01 14:36:03","2019-04-01 07:36:03","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>C?? NH??N</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row label=\"for pc\" style=\"small\" class=\"row-tieu-de ca-nhan\" visibility=\"hide-for-small\"]\n\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n\n[/row]\n[row label=\"for Mobile\" style=\"small\" class=\"row-tieu-de ca-nhan\" visibility=\"show-for-small\"]\n\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"center\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"center\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"center\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot-an\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"674\" image_size=\"original\" link=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\"]\n\n<h3 class=\"cate-name\"><a title=\"T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\" target=\"_self\" rel=\"noopener noreferrer\">T???O D???NG T??I S???N V?? ?????U T?? HI???U QU???</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i. V?? hi???u r???ng ch??? khi an t??m v??? s???c kho??? v?? t??i ch??nh, bi???t y??u th????ng b???n th??n th?? ta m???i c?? th??? b??nh t??m ch??m lo cho gia ????nh v?? c???ng hi???n cho s??? nghi???p, Aviva mang ?????n nh???ng s???n ph???m b???o v??? v?? ?????u t?? gi??p b???n c?? ??i???m t???a t??i ch??nh v???ng v??ng v?? t???n h?????ng cu???c s???ng b??nh an b??n nh???ng ng?????i th??n y??u b???ng gi???i ph??p??<strong>B???o v??? ??? Ti???t ki???m- ?????u t??</strong>to??n di???n</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\" link=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\"]\n\n<h3 class=\"cate-name\"><a title=\"T??ch l??y cho t????ng lai h???c v???n c???a con\" href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\" target=\"_self\" rel=\"noopener noreferrer\">T??CH L??Y CHO T????NG LAI H???C V???N C???A CON</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">?????i v???i cha m???, con c??i lu??n l?? m??n qu?? tuy???t v???i nh???t m?? t???o h??a ???? d??nh t???ng. Kho???nh kh???c ????n nh???n sinh linh nh??? b?? ?????n v???i th??? gi???i s??? kh??ng bao gi??? c?? th??? qu??n v???i m???i ng?????i. V?? k??? t??? gi??y ph??t ????, cha m??? b???t ?????u b?????c v??o m???t h??nh tr??nh ?????y m???i m??? v?? th?? v??? - m???t h??nh tr??nh ??ong ?????y nh???ng y??u th????ng. Th???u hi???u v?? tr??n tr???ng nh???ng gi?? tr??? nh??n v??n ????, Aviva s???n l??ng chia s??? c??ng b???n m???t k??? ho???ch b???o v??? v?? t??i ch??nh v???ng v??ng nh???t cho ?????a con th??n y??u c???a m??nh tr??n t???ng ch???ng ???????ng c???a </span></p>\n</div>\n\n[/col]\n\n[/row]\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\" link=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\"]\n\n<h3 class=\"cate-name\"><a href=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\" target=\"_self\" rel=\"noopener noreferrer\">B???O V??? TR?????C NH???NG R???I RO TRONG CU???C S???NG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Gi???a nh???ng h???i h???, ng?????c xu??i kh??ng ng???ng, cu???c s???ng c???a ai ???? c?? th??? b?????c qua l???n ranh gi???i gi???a h???nh ph??c v?? b???t h???nh ch??? sau m???t t??ch t???c kh??ng may n??o ????.</span><br /><span style=\"font-size: 95%;\">Th???u hi???u ??i???u ????, Aviva ????a t???i m???t gi???i ph??p b???o hi???m tr?????c r???i ro tai n???n v?? th????ng t??ch, gi??p b???n n???m tr???n h???nh ph??c trong t???ng kho???nh kh???c c???a cu???c s???ng</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\" link=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\"]\n\n<h3 class=\"cate-name\"><a title=\"Ch??m s??c s???c kh???e\" href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\" target=\"_self\" rel=\"noopener noreferrer\">CH??M S??C S???C KH???E</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">???Ch??nh s???c kh???e m???i l?? s??? gi??u c?? th???c s???, kh??ng ph???i v??ng v?? b???c.??? - Mahatma Gandhi</span><br /><span style=\"font-size: 95%;\">T???i Aviva, ch??ng t??i quan t??m v?? th???u hi???u nh???ng mong ?????c c???a b???n v??? m???t cu???c s???ng b??nh an b???i s???c kh???e l?? th??? duy nh???t kh??ng ????? ????nh ?????i. V???i nh???ng h??? tr??? y t??? to??n di???n v?? m???t kho???n cam k???t t??ch lu??? cho t????ng lai, Aviva Vietnam s??? gi??p b???n v?? gia ????nh g???t ??i nh???ng ??u lo, t???n h?????ng cu???c s???ng v?? v????n xa h??n t???i ????ch ?????n th??nh c??ng</span></p>\n</div>\n\n[/col]\n\n[/row]","C?? nh??n","","publish","closed","closed","","ca-nhan","","","2019-04-03 15:58:02","2019-04-03 08:58:02","","22","https://tppone.com/demo/baohiem/?page_id=24","0","page","","0"),
("26","1","2019-04-01 14:36:09","2019-04-01 07:36:09","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHI???P</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"698\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"B???o v??? ng?????i lao ?????ng tr?????c c??c r???i ro trong cu???c s???ng\" href=\"/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\" target=\"_self\" rel=\"noopener noreferrer\">B???O V??? NG?????I LAO ?????NG TR?????C C??C R???I RO TRONG CU???C S???NG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i. V?? hi???u r???ng ch??? khi an t??m v??? s???c kho??? v?? t??i ch??nh, bi???t y??u th????ng b???n th??n th?? ta m???i c?? th??? b??nh t??m ch??m lo cho gia ????nh v?? c???ng hi???n cho s??? nghi???p, Aviva mang ?????n nh???ng s???n ph???m b???o v??? v?? ?????u t?? gi??p b???n c?? ??i???m t???a t??i ch??nh v???ng v??ng v?? t???n h?????ng cu???c s???ng b??nh an b??n nh???ng ng?????i th??n y??u b???ng gi???i ph??p??<strong>B???o v??? ??? Ti???t ki???m- ?????u t??</strong>to??n di???n. </span><a title=\"Ph??t Nghi???p B???o Nh??n\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Ph??t Nghi???p B???o Nh??n</a></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"701\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"Chu to??n c??c gi???i ph??p t??i ch??nh v?? ?????u t?? doanh nghi???p\" href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\" target=\"_self\" rel=\"noopener noreferrer\">CHU TO??N C??C GI???I PH??P T??I CH??NH V?? ?????U T?? DOANH NGHI???P</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">?????i v???i cha m???, con c??i lu??n l?? m??n qu?? tuy???t v???i nh???t m?? t???o h??a ???? d??nh t???ng. Kho???nh kh???c ????n nh???n sinh linh nh??? b?? ?????n v???i th??? gi???i s??? kh??ng bao gi??? c?? th??? qu??n v???i m???i ng?????i. V?? k??? t??? gi??y ph??t ????, cha m??? b???t ?????u b?????c v??o m???t h??nh tr??nh ?????y m???i m??? v?? th?? v??? - m???t h??nh tr??nh ??ong ?????y nh???ng y??u th????ng. Th???u hi???u v?? tr??n tr???ng nh???ng gi?? tr??? nh??n v??n ????, Aviva s???n l??ng chia s??? c??ng b???n m???t k??? ho???ch b???o v??? v?? t??i ch??nh v???ng v??ng nh???t cho ?????a con th??n y??u c???a m??nh tr??n t???ng ch???ng ???????ng c???a h??nh tr??nh ki???n t???o nh??n c??ch v?? m???t t????ng lai t????i s??ng. <a title=\"Ph??t Nghi???p H??ng V?????ng\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Ph??t Nghi???p H??ng V?????ng</a></span></p>\n</div>\n\n[/col]\n\n[/row]","Doanh nghi???p","","publish","closed","closed","","doanh-nghiep","","","2019-04-03 17:56:09","2019-04-03 10:56:09","","22","https://tppone.com/demo/baohiem/?page_id=26","0","page","","0"),
("28","1","2019-04-01 14:36:24","2019-04-01 07:36:24","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>C?? NH??N</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\">B???o v??? tr?????c nh???ng r???i ro c???a cu???c s???ng</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\">T??ch l??y t????ng lai v?? h???c v???n cho con</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Ch??m s??c s???c kh???e</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>T???O D???NG T??I S???N V?? ?????U T?? HI???U QU???</h2>\n<p>N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i. V?? hi???u r???ng ch??? khi an t??m v??? s???c kho??? v?? t??i ch??nh, bi???t y??u th????ng b???n th??n th?? ta m???i c?? th??? b??nh t??m ch??m lo cho gia ????nh v?? c???ng hi???n cho s??? nghi???p, Aviva mang ?????n nh???ng s???n ph???m b???o v??? v?? ?????u t?? gi??p b???n c?? ??i???m t???a t??i ch??nh v???ng v??ng v?? t???n h?????ng cu???c s???ng b??nh an b??n nh???ng ng?????i th??n y??u b???ng gi???i ph??p B???o v??? ??? Ti???t ki???m- ?????u t?? to??n di???n</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"805\" image_size=\"original\" link=\"/phat-nghiep-an-tam/\"]\n\n<h3 class=\"cate-name\"> <a href=\"/phat-nghiep-an-tam/\" >PH??T NGHI???P T??M AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Ch??? v???i 1 l???n duy nh???t ????ng ph??, Ph??t Nghi???p T??m An s??? b???o to??n nh???ng g?? b???n ???? g??y d???ng, gi??p b???n v???ng b?????c h??n tr??n h??nh tr??nh g???t h??i th??nh c??ng</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"808\" image_size=\"original\" link=\"#\"]\n\n<h3 class=\"cate-name\"><a href=\"/bao-hiem-phat-an-binh/\" >PH??T B??NH AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Gi???i ph??p b???o hi???m tr?????c r???i ro tai n???n v?? th????ng t??ch, gi??p b???n n???m tr???n h???nh ph??c trong t???ng kho???nh kh???c c???a cu???c s???ng</span></p>\n</div>\n\n[/col]\n\n[/row]","T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???","","publish","closed","closed","","tao-dung-tai-san-va-dau-tu-hieu-qua","","","2019-04-03 14:39:29","2019-04-03 07:39:29","","24","https://tppone.com/demo/baohiem/?page_id=28","0","page","","0"),
("30","1","2019-04-01 14:36:39","2019-04-01 07:36:39","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>C?? NH??N</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/san-pham/ca-nhan/bao-ve-truoc-nhung-rui-ro-cuoc-song/\">B???o v??? tr?????c nh???ng r???i ro c???a cu???c s???ng</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">T??ch l??y t????ng lai v?? h???c v???n cho con</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Ch??m s??c s???c kh???e</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>T??CH L??Y CHO T????NG LAI H???C V???N C???A CON</h2>\n<p>\"M???t s??? ng?????i ch??a tin l?? c?? thi??n th???n. L?? b???i v?? h??? ch??a g???p con t??i th??i\"<br />\n?????i v???i ng?????i l??m cha l??m m???, ?????a con l?? m??n qu?? tuy???t v???i nh???t m?? t???o h??a ???? d??nh cho h???. Kho???nh kh???c ????n nh???n sinh linh nh??? b?? ?????n v???i th??? gi???i l?? kho???nh kh???c kh??ng bao gi??? c?? th??? qu??n v???i m???i ng?????i. V?? k??? t??? gi??y ph??t ????, cha m??? b???t ?????u b?????c v??o m???t h??nh tr??nh ?????y m???i m??? v?? th?? v??? - m???t h??nh tr??nh ??ong ?????y nh???ng y??u th????ng.<br />\nTh???u hi???u v?? tr??n tr???ng nh???ng gi?? tr??? nh??n v??n ????, Aviva s???n l??ng chia s??? c??ng b???n m???t k??? ho???ch b???o v??? v?? t??i ch??nh v???ng v??ng nh???t cho ?????a con th??n y??u c???a m??nh tr??n t???ng ch???ng ???????ng c???a h??nh tr??nh ki???n t???o nh??n c??ch v?? m???t t????ng lai t????i s??ng b???ng hai s???n ph???m Ph??t L???c ????ng Khoa v?? Ph??t L???c Kh??i Nguy??n.</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"793\" image_size=\"original\" link=\"#\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-loc-dang-khoa-2/\" >PH??T L???C ????NG KHOA</a></h3>\n<div class=\"desc\">\n<p>K??? ho???ch b???o v??? v?? t??i ch??nh v???ng v??ng nh???t cho ?????a con th??n y??u c???a m??nh tr??n t???ng ch???ng ???????ng c???a h??nh tr??nh ki???n t???o nh??n c??ch v?? m???t t????ng lai t????i s??ng</p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"796\" image_size=\"original\" link=\"#\"]\n\n<h3 class=\"cate-name\"><a  href=\"/phat-loc-khoi-nguyen-2/\" >PH??T L???C KH??I NGUY??N</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">B???o v??? cho ch??nh b???n th??n cha m??? ?????ng th???i l?? m???t c??ch th??ng minh nh???t ????? ?????m b???o t????ng lai cho con tr???. </span></p>\n</div>\n\n[/col]\n\n[/row]","T??ch l??y cho t????ng lai h???c v???n c???a con","","publish","closed","closed","","tich-luy-cho-tuong-lai-hoc-van-cua-con","","","2019-04-03 14:43:19","2019-04-03 07:43:19","","24","https://tppone.com/demo/baohiem/?page_id=30","0","page","","0"),
("32","1","2019-04-01 14:36:53","2019-04-01 07:36:53","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>C?? NH??N</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">B???o v??? tr?????c nh???ng r???i ro c???a cu???c s???ng</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\">T??ch l??y t????ng lai v?? h???c v???n cho con</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Ch??m s??c s???c kh???e</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>B???O V??? TR?????C NH???NG R???I RO TRONG CU???C S???NG</h2>\n<p>Gi???a nh???ng h???i h???, ng?????c xu??i kh??ng ng???ng, cu???c s???ng c???a ai ???? c?? th??? b?????c qua l???n ranh gi???i gi???a h???nh ph??c v?? b???t h???nh ch??? sau m???t t??ch t???c kh??ng may n??o ????. Th???u hi???u ??i???u ????, Aviva ????a t???i m???t gi???i ph??p b???o hi???m tr?????c r???i ro tai n???n v?? th????ng t??ch, gi??p b???n n???m tr???n h???nh ph??c trong t???ng kho???nh kh???c c???a cu???c s???ng</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"781\" image_size=\"original\" link=\"/bao-hiem-phat-an-binh/\"]\n\n<h3 class=\"cate-name\"><a  href=\"/bao-hiem-phat-an-binh/\" >PH??T AN B??NH</a></h3>\n<div class=\"desc\">\n<p>Gi???i ph??p b???o v??? t??i ch??nh an to??n cho b???n - tr??? c???t gia ????nh - tr??? c???t doanh nghi???p</p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"785\" image_size=\"original\" link=\"/bao-hiem-phat-an-binh/\"]\n\n<h3 class=\"cate-name\"><a href=\"/bao-hiem-phat-an-binh/\">PH??T B??NH AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Gi???i ph??p b???o hi???m tr?????c r???i ro tai n???n v?? th????ng t??ch, gi??p b???n n???m tr???n h???nh ph??c trong t???ng kho???nh kh???c c???a cu???c s???ng</span></p>\n</div>\n\n[/col]\n\n[/row]","B???o v??? tr?????c nh???ng r???i ro cu???c s???ng","","publish","closed","closed","","bao-ve-truoc-nhung-rui-ro-cuoc-song","","","2019-04-03 14:40:32","2019-04-03 07:40:32","","24","https://tppone.com/demo/baohiem/?page_id=32","0","page","","0"),
("34","1","2019-04-01 14:37:02","2019-04-01 07:37:02","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>C?? NH??N</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de ca-nhan\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot1\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">B???o v??? tr?????c nh???ng r???i ro c???a cu???c s???ng</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tao-dung-tai-san-va-dau-tu-hieu-qua/\">T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/ca-nhan/tich-luy-cho-tuong-lai-hoc-van-cua-con/\">T??ch l??y t????ng lai v?? h???c v???n cho con</a></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/ca-nhan/cham-soc-suc-khoe/\">Ch??m s??c s???c kh???e</a></span></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row]\n\n[col span__sm=\"12\"]\n\n<div class=\"tieu-de-box\">\n<h2>CH??M S??C S???C KH???E</h2>\n<p>???Ch??nh s???c kh???e m???i l?? s??? gi??u c?? th???c s???, kh??ng ph???i v??ng v?? b???c.??? - Mahatma Gandhi T???i Aviva, ch??ng t??i quan t??m v?? th???u hi???u nh???ng mong ?????c c???a b???n v??? m???t cu???c s???ng b??nh an b???i s???c kh???e l?? th??? duy nh???t kh??ng ????? ????nh ?????i. V???i nh???ng h??? tr??? y t??? to??n di???n v?? m???t kho???n cam k???t t??ch lu??? cho t????ng lai, Aviva Vietnam s??? gi??p b???n v?? gia ????nh g???t ??i nh???ng ??u lo, t???n h?????ng cu???c s???ng v?? v????n xa h??n t???i ????ch ?????n th??nh c??ng.</p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\" link=\"/phat-bao-an/\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-bao-an/\">PH??T B???O AN</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? t???i ??u nh???t gi??p b???n d??? d??ng v?????t qua nh???ng gian nan khi ?????i m???t v???i nh???ng c??n b???nh hi???m ngh??o ph??? bi???n</span></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" link=\"/diem-tua-cuoc-song/\"]\n\n<h3 class=\"cate-name\"><a  href=\"/diem-tua-cuoc-song/\" >??I???M T???A CU???C S???NG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">V???i nh???ng h??? tr??? y t??? to??n di???n v?? m???t kho???n cam k???t t??ch lu??? cho t????ng lais??? gi??p b???n v?? gia ????nh g???t ??i nh???ng ??u lo, t???n h?????ng cu???c s???ng v?? v????n xa h??n t???i ????ch ?????n th??nh c??ng.</span></p>\n</div>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"825\" image_size=\"original\" link=\"/song-chu-dong/\"]\n\n<h3 class=\"cate-name\"><a  href=\"/song-chu-dong/\" >S???NG CH??? ?????NG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? t???i ??u nh???t gi??p b???n d??? d??ng v?????t qua nh???ng gian nan khi ?????i m???t v???i nh???ng c??n b???nh hi???m ngh??o ph??? bi???n</span></p>\n</div>\n\n[/col]\n\n[/row]","Ch??m s??c s???c kh???e","","publish","closed","closed","","cham-soc-suc-khoe","","","2019-04-03 14:47:13","2019-04-03 07:47:13","","24","https://tppone.com/demo/baohiem/?page_id=34","0","page","","0"),
("36","1","2019-04-01 14:37:20","2019-04-01 07:37:20","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHI???P</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"6\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\">B???o v??? ng?????i lao ?????ng tr?????c nh???ng r???i ro cu???c s???ng</a></span></p>\n\n[/col]\n[col span=\"6\" span__sm=\"6\"]\n\n<p><a href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\">Gi???i ph??p ?????u t?? t??i ch??nh cho doanh nghi???p</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"841\" image_size=\"original\" link=\"/phat-nghiep-bao-nhan-2/\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-nghiep-bao-nhan-2/\">PH??T NGHI???P B???O NH??N</a></h3>\n<div class=\"desc\">\n<p>Gi???i ph??p b???o hi???m b???o v??? cho ng?????i lao ?????ng tr?????c c??c r???i ro trong cu???c s???ng</p>\n</div>\n\n[/col]\n\n[/row]","B???o v??? ng?????i lao ?????ng tr?????c r???i ro lao ?????ng","","publish","closed","closed","","bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong","","","2019-04-03 14:48:46","2019-04-03 07:48:46","","26","https://tppone.com/demo/baohiem/?page_id=36","0","page","","0"),
("38","1","2019-04-01 14:37:36","2019-04-01 07:37:36","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHI???P</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"6\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/san-pham/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\">B???o v??? ng?????i lao ?????ng tr?????c nh???ng r???i ro cu???c s???ng</a></span></p>\n\n[/col]\n[col span=\"6\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\">Gi???i ph??p ?????u t?? t??i ch??nh cho doanh nghi???p</a></span></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"848\" image_size=\"original\" link=\"/phat-nghiep-hung-vuong/\"]\n\n<h3 class=\"cate-name\"><a href=\"/phat-nghiep-hung-vuong/\" >PH??T NGHI???P H??NG V?????NG</a></h3>\n<div class=\"desc\">\n<p>Gi???i ph??p thi???t th???c v??? t??i ch??nh v?? ch??nh s??ch nh??n s??? gi??p Doanh nghi???p ch??? ?????ng v?? hi???u qu??? trong c???nh tranh v?? ph??t tri???n.</p>\n</div>\n\n[/col]\n\n[/row]","Gi???i ph??p ?????u t?? t??i ch??nh cho doanh nghi???p","","publish","closed","closed","","giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep","","","2019-04-03 14:49:51","2019-04-03 07:49:51","","26","https://tppone.com/demo/baohiem/?page_id=38","0","page","","0"),
("40","1","2019-04-01 14:37:47","2019-04-01 07:37:47","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.4)\"]\n\n[text_box width=\"52\" width__sm=\"60\" position_x=\"5\" position_y=\"30\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 75%;\">h??? tr??? kh??ch h??ng</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"H??? TR??? KH??CH H??NG\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Ch??ng t??i s???n s??ng h??? tr??? m???i nhu c???u v?? c??u h???i li??n quan ?????n b???o hi???m</p>\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1222\" img_width=\"100\" pos=\"center\" link=\"/dieu-chinh-ho-so/\"]\n<p style=\"text-align: center;\"><strong>??i???u ch???nh h??? s??</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"1235\" img_width=\"100\" pos=\"center\" link=\"/thuat-ngu-bao-hiem/\"]\n<p style=\"text-align: center;\"><strong>Thu???t ng??? b???o hi???m</strong></p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1226\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/giai-quyet-quyen-loi-bao-hiem/\"]\n<p style=\"text-align: center;\"><strong>Gi???i quy???t quy???n l???i b???o hi???m</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"1246\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/cham-soc-khach-hang/\"]\n<p style=\"text-align: center;\"><strong>Ch??m s??c kh??ch h??ng</strong></p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1229\" img_width=\"100\" pos=\"center\" link=\"/mau-don-thong-dung/\"]\n<p style=\"text-align: center;\"><strong>Bi???u m???u th??ng d???ng</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"986\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/dong-phi-bao-hiem/\"]\n<p style=\"text-align: center;\"><strong>????ng ph?? b???o hi???m</strong></p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n[featured_box img=\"1240\" img_width=\"100\" pos=\"center\" link=\"/ho-tro-khach-hang/cau-hoi-thuong-gap/\"]\n<p style=\"text-align: center;\"><strong>C??u h???i th?????ng g???p</strong></p>\n[/featured_box]\n[gap]\n\n[featured_box img=\"987\" img_width=\"100\" pos=\"center\" link=\"/nop-ho-so-truc-tuyen/\"]\n<p style=\"text-align: center;\"><strong>N???p h??? s?? tr???c tuy???n</strong></p>\n[/featured_box]\n\n[/col]\n\n[/row]","H??? tr??? kh??ch h??ng","","publish","closed","closed","","ho-tro-khach-hang","","","2019-04-03 15:01:44","2019-04-03 08:01:44","","0","https://tppone.com/demo/baohiem/?page_id=40","0","page","","0"),
("42","1","2019-04-01 14:37:58","2019-04-01 07:37:58","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"544\" bg_size=\"original\"]\n\n[text_box text_color=\"dark\" width=\"40\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>??I???U CH???NH H??? S??</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row class=\"row-dieu-chinh-ho-so\"]\n\n[col span__sm=\"12\"]\n<h3 class=\"title-page\" style=\"text-align: center;\"><span style=\"color: #ff0000;\">??I???U CH???NH TH??NG TIN H??? S??/H???P ?????NG B???O HI???M</span></h3>\n<h4><span style=\"color: #003366; font-size: 95%;\">C??c th??ng tin Qu?? kh??ch c?? th??? y??u c???u ??i???u ch???nh bao g???m:</span></h4>\n<div class=\"fullContent\">\n\n<span style=\"color: #50b848; font-size: 95%;\"><strong>1. ??i???u ch???nh th??ng tin h??? s??/h???p ?????ng b???o hi???m</strong></span>\n<ul>\n 	<li><span style=\"font-size: 95%;\"><strong>Th??ng tin b??n mua b???o hi???m:</strong>??T??n, tu???i, gi???i t??nh, gi???y t??? tu??? th??n, ch??? k??, ?????a ch??? li??n h???</span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay ?????i th??ng tin ho???c b??? sung Ng?????i th??? h?????ng;</strong></span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay ?????i ?????nh k??? n???p ph??/ Ph????ng th???c n???p ph??;</strong></span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Hu??? h??? s??/ Hu??? H???p ?????ng b???o hi???m;</strong></span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay ?????i ??i???u ki???n b???o hi???m:</strong>??Tu??? thu???c v??o t??nh n??ng S???n ph???m b???o hi???m, c?? th??? cho ph??p thay ?????i/b??? sung m???t s??? ??i???u ki???n b???o hi???m nh?? t??ng/gi???m S??? ti???n b???o hi???m, b??? sung s???n ph???m b??? tr??? ...</span></li>\n 	<li><span style=\"font-size: 95%;\"><strong>Thay ?????i li??n quan ?????n gi?? tr??? h???p ?????ng:</strong>??Nh???n t???m ???ng t??? Gi?? tr??? ho??n l???i, R??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng...</span></li>\n</ul>\n<span style=\"font-size: 95%;\"><strong>Th??? t???c:</strong></span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">T??y theo lo???i ??i???u ch???nh, Aviva s??? y??u c???u ????n v?? ch???ng t??? t????ng ???ng. Qu?? kh??ch vui l??ng li??n h??? v???i Nh??n vi??n t?? v???n c???a Qu?? kh??ch ????? ???????c h?????ng d???n c??? th???.</span></li>\n 	<li><span style=\"font-size: 95%;\">M???t s??? ??i???u ch???nh c???n n???p th??m ph?? (??i???u ch???nh n??m sinh khi???n t??ng tu???i, ??i???u ch???nh sang ?????nh k??? ????ng ph?? d??i h??n ???)</span></li>\n 	<li><span style=\"font-size: 95%;\">Sau khi nh???n ???????c y??u c???u ??i???u ch???nh, Aviva s??? ki???m tra, th???m ?????nh v?? x??? l?? theo quy ?????nh c???a c??ng ty. K???t qu??? x??? l?? (ch???p thu???n ho???c t??? ch???i y??u c???u ??i???u ch???nh) s??? ???????c th??ng b??o ?????n Qu?? kh??ch b???ng v??n b???n.</span></li>\n</ul>\n<ul>\n 	<li><span style=\"font-size: 95%;\">?????i v???i nh???ng ??i???u ch???nh c?? ho??n ph?? th???a, Aviva s??? ho??n l???i ph?? cho Qu?? kh??ch.</span></li>\n</ul>\n<span style=\"color: #50b848; font-size: 95%;\"><strong>2. Kh??i ph???c hi???u l???c h???p ?????ng</strong></span>\n\n<span style=\"font-size: 95%;\">Sau khi H???p ?????ng b???o hi???m b??? m???t hi???u l???c, Qu?? kh??ch c?? quy???n y??u c???u kh??i ph???c H???p ?????ng b???o hi???m trong v??ng 24 th??ng t??nh t??? ng??y H???p ?????ng b???o hi???m b??? m???t hi???u l???c.</span>\n\n<span style=\"font-size: 95%;\"><strong>Th??? t???c</strong></span>\n\n<span style=\"font-size: 95%;\">Qu?? kh??ch c???n ??i???n ?????y ????? th??ng tin v??o ????n y??u c???u kh??i ph???c h???p ?????ng b???o hi???m v?? T??? khai s???c kh???e. Xin l??u ?? r???ng Qu?? kh??ch c?? th??? n???p ph?? kh??i ph???c n???u c??.</span>\n\n<span style=\"font-size: 95%;\">Sau khi nh???n ???????c y??u c???u kh??i ph???c H???p ?????ng b???o hi???m, Aviva s??? ki???m tra, th???m ?????nh v?? x??? l?? theo quy ?????nh c???a c??ng ty. K???t qu??? x??? l?? s??? ???????c th??ng b??o ?????n Qu?? kh??ch b???ng v??n b???n:</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Ch???p nh???n kh??i ph???c;</span></li>\n 	<li><span style=\"font-size: 95%;\">Y??u c???u ki???m tra s???c kh???e;</span></li>\n 	<li><span style=\"font-size: 95%;\">Y??u c???u n???p ph?? b???o hi???m ph??? tr???i;</span></li>\n 	<li><span style=\"font-size: 95%;\">T???m ho??n kh??i ph???c;</span></li>\n 	<li><span style=\"font-size: 95%;\">T??? ch???i kh??i ph???c.</span></li>\n</ul>\n<span style=\"font-size: 95%;\">Qu?? kh??ch c???n ??i???n ?????y ????? th??ng tin v??o ????n y??u c???u kh??i ph???c h???p ?????ng b???o hi???m v?? T??? khai s???c kh???e (n???u h???p ?????ng ???? m???t hi???u l???c tr??n 6 th??ng)</span>\n\n<span style=\"font-size: 95%;\">Th???i ??i???m cho ph??p th???c hi???n ?????i v???i t???ng lo???i ??i???u ch???nh c??? th???.</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">C??c y??u c???u ??i???u ch???nh b??? sung ?????i v???i H??? s?? y??u c???u b???o hi???m c???n ???????c n???p trong th???i gian t??? do c??n nh???c (21 ng??y k??? t??? ng??y x??c nh???n ???? nh???n B??? h???p ?????ng b???o hi???m).</span></li>\n 	<li><span style=\"font-size: 95%;\">Y??u c???u s???a ?????i ch??nh s??ch ph???i ???????c g???i tr?????c 30 ng??y ?????n h???n ????ng ph?? b???o hi???m v?? kh??ng qu?? th???i gian gia h???n.</span></li>\n</ul>\n</div>\n[/col]\n\n[/row]\n[gap]\n\n[row style=\"small\" class=\"row-tai-mau-don\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u chuy???n nh?????ng h???p ?????ng</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u ??i???u ch???nh h???p ?????ng</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u ??i???u ch???nh ng?????i th??? h?????ng</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u thay ?????i b??n mua b???o hi???m</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??? khai s???c kh???e b???n chu???n VIVA</span></p>\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Phi???u b??o s??? ki???n b???o hi???m</span></p>\n[/featured_box]\n\n[/col]\n\n[/row]","??i???u ch???nh h??? s??","","publish","closed","closed","","dieu-chinh-ho-so","","","2019-04-03 11:38:44","2019-04-03 04:38:44","","40","https://tppone.com/demo/baohiem/?page_id=42","0","page","","0"),
("44","1","2019-04-01 14:38:10","2019-04-01 07:38:10","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>THU???T NG??? B???O HI???M</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"H??? s?? y??u c???u b???o hi???m\"]\n\n<span style=\"font-size: 95%;\">l?? m???u ????ng k?? mua b???o hi???m do C??ng ty b???o hi???m ph??t h??nh. B??n mua b???o hi???m c?? ngh??a v??? ??i???n ?????y ?????, trung th???c v??o h??? s?? y??u c???u b???o hi???m. H??? s?? y??u c???u b???o hi???m ???????c xem l?? m???t ph???n kh??ng th??? t??ch r???i c???a b??? h???p ?????ng b???o hi???m nh??n th???.</span>\n\n[/accordion-item]\n[accordion-item title=\"B??n mua b???o hi???m\"]\n<ul>\n 	<li><span style=\"font-size: 95%;\">L?? c?? nh??n hi???n ??ang c?? tr?? t???i Vi???t Nam, tu???i t??? ????? 18 tr??? l??n v??o th???i ??i???m h???p ?????ng ph??t sinh hi???u l???c v?? c?? n??ng l???c h??nh vi d??n s??? ?????y ?????; ho???c????</span></li>\n 	<li><span style=\"font-size: 95%;\">??L?? t??? ch???c ???????c th??nh l???p v?? ho???t ?????ng h???p ph??p t???i Vi???t Nam.??</span></li>\n</ul>\n<span style=\"font-size: 95%;\">B??n mua b???o hi???m ph???i c?? quy???n l???i c?? th??? ???????c b???o hi???m v???i Ng?????i ???????c b???o hi???m v?? c?? tr??ch nhi???m k?? khai, k?? t??n tr??n Gi???y y??u c???u b???o hi???m v?? ????ng Ph?? b???o hi???m.??</span>\n\n[/accordion-item]\n[accordion-item title=\"Ng?????i ???????c b???o hi???m\"]\n\n<span style=\"font-size: 95%;\">l?? c?? nh??n hi???n ??ang c?? tr?? t???i Vi???t Nam ???????c C??ng ty b???o hi???m ch???p thu???n b???o hi???m theo h???p ?????ng b???o hi???m.</span>\n\n[/accordion-item]\n[accordion-item title=\"Ng?????i th??? h?????ng\"]\n\n<span style=\"font-size: 95%;\">l?? c?? nh??n ho???c t??? ch???c do B??n mua b???o hi???m ch??? ?????nh ????? nh???n quy???n l???i b???o hi???m theo quy ?????nh c???a h???p ?????ng b???o hi???m.</span>\n\n[/accordion-item]\n[accordion-item title=\"Quy???n l???i c?? th??? ???????c b???o hi???m\"]\n\n<span style=\"font-size: 95%;\">l?? m???i quan h??? gi???a B??n mua b???o hi???m v?? Ng?????i ???????c b???o hi???m, trong ???? s??? r???i ro c???a Ng?????i ???????c b???o hi???m s??? g??y t???n th???t v??? t??i ch??nh ho???c tinh th???n cho B??n mua b???o hi???m.</span>\n\n<span style=\"font-size: 95%;\">B??n mua b???o hi???m c?? quy???n l???i c?? th??? b???o hi???m ?????i v???i nh???ng ng?????i sau ????y:</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">B???n th??n b??n mua b???o hi???m;</span></li>\n 	<li><span style=\"font-size: 95%;\">V???, ch???ng, con, cha, m??? h???p ph??p c???a b??n mua b???o hi???m;</span></li>\n 	<li><span style=\"font-size: 95%;\">Anh ch??? em ru???t, ng?????i c?? quan h??? nu??i d?????ng/gi??m h??? h???p ph??p;</span></li>\n 	<li><span style=\"font-size: 95%;\">Ch??u tr???c h??? c???a b??n mua b???o hi???m;</span></li>\n 	<li><span style=\"font-size: 95%;\">Ng?????i kh??c n???u b??n mua b???o hi???m ph???i ch???u m???t t???n th???t t??i ch??nh th???t s??? khi ng?????i ???????c b???o hi???m ch???t.</span></li>\n</ul>\n[/accordion-item]\n[accordion-item title=\"Ph?? b???o hi???m\"]\n\n<span style=\"font-size: 95%;\">l?? kho???n ti???n B??n mua b???o hi???m n???p ?????nh k??? cho C??ng ty b???o hi???m ????? ???????c b???o hi???m theo th???i h???n v?? ph????ng th???c do c??c b??n th???a thu???n trong h???p ?????ng b???o hi???m.</span>\n\n[/accordion-item]\n[accordion-item title=\"Ph?? b???o hi???m t???m t??nh\"]\n\nl?? kho???n ph?? b???o hi???m B??n mua b???o hi???m n???p c??ng v???i Gi???y y??u c???u b???o hi???m.\n\n[/accordion-item]\n[accordion-item title=\"S??? ti???n b???o hi???m\"]\n\n<span style=\"font-size: 95%;\">l?? s??? ti???n ???????c d??ng l??m c?? s??? ????? x??c ?????nh quy???n l???i b???o hi???m thanh to??n theo ??i???u kho???n h???p ?????ng. S??? ti???n b???o hi???m do B??n mua b???o hi???m l???a ch???n ph?? h???p v???i quy ?????nh c???a C??ng ty b???o hi???m v?? ???????c ghi t???i Gi???y y??u c???u b???o hi???m v?? Gi???y ch???ng nh???n b???o hi???m nh??n th???.</span>\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n\n[/row]","Thu???t ng??? b???o hi???m","","publish","closed","closed","","thuat-ngu-bao-hiem","","","2019-04-03 11:48:53","2019-04-03 04:48:53","","40","https://tppone.com/demo/baohiem/?page_id=44","0","page","","0"),
("46","1","2019-04-01 14:38:28","2019-04-01 07:38:28","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>????NG PH?? B???O HI???M</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n<h3 class=\"title-news\" style=\"text-align: center;\">????NG PH?? B???O HI???M ?????NH K???</h3>\n<strong>1.C??c th??ng b??o v??? ph?? b???o hi???m ?????nh k???</strong>\n\n<span style=\"font-size: 95%;\">????? gi??p kh??ch h??ng c???p nh???t k???p th???i th??ng tin ph?? B???o hi???m ?????n h???n, c??c th??ng b??o/nh???c ph?? ???????c g???i ?????n kh??ch h??ng theo tr??nh t??? th???i gian sau:</span>\n\n[ux_image id=\"931\" image_size=\"original\"]\n\n<span style=\"font-size: 95%;\"><strong>1.1 Tin nh???n SMS</strong></span>\n\n<span style=\"font-size: 95%;\">V???i c??c h???p ?????ng b???o hi???m ch??a ????ng ph?? ?????nh k???, kh??ch h??ng s??? nh???n ???????c t???i ??a 3 l???n th??ng b??o b???ng SMS:</span>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Th??ng b??o ph?? b???o hi???m ?????n h???n - 15 ng??y tr?????c ng??y ?????n h???n ????ng ph??</span></li>\n 	<li><span style=\"font-size: 95%;\">Th??ng b??o ?????n h???n ????ng ph?? v??o ng??y ?????n h???n ????ng ph??</span></li>\n 	<li><span style=\"font-size: 95%;\">Th??ng b??o ph?? b???o hi???m qu?? h???n l???n 1 - 30 ng??y sau ng??y ?????n h???n ????ng ????ng ph??</span></li>\n 	<li><span style=\"font-size: 95%;\">Th??ng b??o ph?? b???o hi???m qu?? h???n l???n 2 - 45 ng??y sau ng??y ?????n h???n ????ng ????ng ph??.</span><span style=\"font-size: 95%;\"><strong>1.2 Th?? b??o ???????c g???i qua B??u ??i???n</strong></span>\n\n<span style=\"font-size: 95%;\">Th?? b??o s??? ???????c g???i v??o ng??y th??? 30 sau ng??y ?????n h???n ????ng ph?? n???u Aviva ch??a nh???n ???????c ph?? b???o hi???m ?????nh k???.</span>\n\n<span style=\"font-size: 95%;\"><strong>1.3 ??i???n tho???i tr???c ti???p ?????n kh??ch h??ng</strong></span>\n\n<span style=\"font-size: 95%;\">30 ng??y k??? t??? ng??y ?????n h???n ????ng ph?? v?? ph?? ?????nh k?? ch??a ???????c ????ng, Nh??n vi??n D???ch v??? kh??ch h??ng Aviva s??? ??i???n tho???i trao ?????i v???i B??n mua b???o hi???m ????? h??? tr??? v?? h?????ng d???n c??c k??nh ????ng ph?? ph?? h???p v?? thu???n ti???n nh???t cho kh??ch h??ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>2. C??c ph????ng th???c ????ng ph?? b???o hi???m ?????nh k???</strong></span>\n\n<span style=\"font-size: 95%;\">Hi???n nay t???i Aviva cung c???p cho Qu?? kh??ch 5 h??nh th???c ????ng ph?? b???o hi???m ?????nh k???:</span>\n\n<span style=\"font-size: 95%;\"><strong>2.1 ????ng ph?? t???i qu???y Ng??n h??ng Vietinbank</strong></span>\n\n<span style=\"font-size: 95%;\">Qu?? kh??ch c?? th??? ????ng ti???n tr???c ti???p v??o t??i kho???n c???a Aviva t???i b???t k??? V??n ph??ng giao d???ch/Chi nh??nh n??o c???a Ng??n h??ng TMCP C??ng th????ng Vi???t Nam (Vietinbank).</span></li>\n</ul>\n[/col]\n\n[/row]","????ng ph?? b???o hi???m","","publish","closed","closed","","dong-phi-bao-hiem","","","2019-04-03 12:00:11","2019-04-03 05:00:11","","40","https://tppone.com/demo/baohiem/?page_id=46","0","page","","0"),
("48","1","2019-04-01 14:39:27","2019-04-01 07:39:27","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.44)\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #ffffff;\"><strong>GI???I QUY???T QUY???N L???I B???O HI???M</strong></span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row class=\"row-dieu-chinh-ho-so\"]\n\n[col span__sm=\"12\"]\n\n<h3 class=\"title-page\" style=\"text-align: center;\"><span style=\"color: #ff0000; font-size: 95%;\">GI???I QUY???T QUY???N L???I B???O HI???M</span></h3>\n<div class=\"fullContent\">\n<p><span style=\"font-size: 95%; color: #000000;\"><strong>Sau khi nh???n ???????c h??? s?? y??u c???u Gi???i quy???t quy???n l???i b???o hi???m ?????y ????? v?? h???p l???, Aviva s??? ti???n h??nh th???m ?????nh h??? s??, ra quy???t ?????nh gi???i quy???t v?? g???i th??ng b??o tr???c ti???p t???i Ng?????i y??u c???u gi???i quy???t quy???n l???i b???o hi???m v?? Ng?????i th??? h?????ng.</strong></span></p>\n<div class=\"fullContent\">\n<p><span style=\"font-size: 95%;\"><strong>Tr?????ng h???p Ch???p thu???n chi tr??? Quy???n l???i b???o hi???m, Aviva s??? ti???n h??nh chi tr??? theo c??ch th???c kh??ch h??ng ???? l???a ch???n tr??n Phi???u y??u c???u gi???i quy???t quy???n l???i b???o hi???m. Quy???n l???i b???o hi???m/C??c kho???n ???????c chi tr???/ho??n tr??? t??? H???p ?????ng b???o hi???m ???????c tr??? theo m???t trong nh???ng c??ch sau:??</strong></span></p>\n<ul class=\"nav-left\">\n<li><span style=\"font-size: 95%;\">Chuy???n ????ng ph?? cho h???p ?????ng kh??c;</span></li>\n<li><span style=\"font-size: 95%;\">Nh???n ti???n m???t t???i c??c Trung T??m D???ch V??? Kh??ch H??ng c???a Aviva;</span></li>\n<li><span style=\"font-size: 95%;\">Chuy???n ti???n v??o t??i kho???n t???i ng??n h??ng;</span></li>\n<li><span style=\"font-size: 95%;\">Nh???n ti???n m???t t???i c??c qu???y Ng??n h??ng tr??n to??n qu???c.</span></li>\n</ul>\n<p><span style=\"font-size: 95%;\"><strong>Khi ?????n c??c Trung T??m D???ch V??? Kh??ch H??ng c???a Aviva/Ph??ng Giao d???ch/Chi nh??nh Ng??n h??ng tr??n to??n qu???c ????? nh???n c??c kho???n ti???n chi tr??? t??? h???p ?????ng, ng?????i ?????n nh???n c???n xu???t tr??nh nh???ng gi???y t??? sau:????</strong></span></p>\n<ul class=\"nav-left\">\n<li><span style=\"font-size: 95%;\">Th??ng b??o gi???i quy???t quy???n l???i b???o hi???m;</span></li>\n<li><span style=\"font-size: 95%;\">Ch???ng minh nh??n d??n c???a Ng?????i nh???n quy???n l???i b???o hi???m;</span></li>\n<li><span style=\"font-size: 95%;\">V??n b???n ???y quy???n h???p ph??p (n???u Ng?????i ?????n nh???n Quy???n l???i b???o hi???m l?? Ng?????i ???????c ???y quy???n) ??? C??ng ty b???o hi???m thu h???i khi chi tr???.</span></li>\n</ul>\n<p><span style=\"font-size: 95%;\"><strong>gi???i quy???t quy???n l???i b???o hi???m tr???c tuy???n:????</strong></span></p>\n<p><span style=\"font-size: 95%;\">Kh??ch h??ng c?? th??? n???p h??? s?? gi???i quy???t quy???n l???i b???o hi???m tr???c tuy???n t???i??<a href=\"#\">????y</a></span></p>\n</div>\n</div>\n\n[/col]\n\n[/row]\n[gap]\n\n[row style=\"small\" class=\"row-tai-mau-don\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u chuy???n nh?????ng h???p ?????ng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u ??i???u ch???nh h???p ?????ng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u ??i???u ch???nh ng?????i th??? h?????ng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">????n y??u c???u thay ?????i b??n mua b???o hi???m</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??? khai s???c kh???e b???n chu???n VIVA</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" pos=\"center\" link=\"#\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Phi???u b??o s??? ki???n b???o hi???m</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]","Gi???i quy???t quy???n l???i b???o hi???m","","publish","closed","closed","","giai-quyet-quyen-loi-bao-hiem","","","2019-04-03 11:41:03","2019-04-03 04:41:03","","40","https://tppone.com/demo/baohiem/?page_id=48","0","page","","0"),
("50","1","2019-04-01 14:39:36","2019-04-01 07:39:36","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"32\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #003366;\"><strong>C??U H???I TH?????NG G???P</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[accordion auto_open=\"true\"]\n\n[accordion-item title=\"L??m th??? n??o ????? nh???n h??a ????n thu ph?? b???o hi???m c???a C??ng ty?\"]\n\n<span style=\"font-size: 95%;\">????? nh????n h??a ????n thu ph?? b???o hi???m, kh??ch h??ng ????ng ky?? th??ng tin ho??m th?? ??i????n t???? va?? c????n th???c hi???n c??c thao t??c sau:</span>\n<span style=\"font-size: 95%;\">1. Truy c????p v??o C????ng th??ng tin kh??ch h??ng t???i ?????a chi?? :</span>\n\n<span style=\"font-size: 95%;\">?? ?? ?? ??<a href=\"https://einvoice.aviva.com.vn/Account/LogOn?ReturnUrl=%2f\">https://einvoice.aviva.com.vn</a></span>\n\n<span style=\"font-size: 95%;\">2. ????ng nh????p b???ng t??i kho???n v?? m???t kh???u ???????c g???i v??o e-mail c???a Qu?? kh??ch h??ng. Qu?? kh??ch ?????i m???t kh???u cho l???n ????ng nh???p ?????u ti??n. Tr??????ng h???p Qu?? kh??ch ch??a ????ng k?? ?????a ch??? e-mail th?? Qu?? kh??ch c???n b??? sung th??ng tin e-mail v??o M???u ????ng k?? th??ng tin v?? g???i v??? h??m th????<strong>wecare@aviva.com.vn</strong>??ho???c li??n h??? v???i c??c Trung t??m D???ch v??? Kh??ch h??ng c???a Aviva ????? ???????c h?????ng d???n.??</span>\n\n<span style=\"font-size: 95%;\">3. Sau khi ????ng nh????p, Qu?? kh??ch c?? th??? tra c???u H????T c???n xem. Qu?? kh??ch h??ng c?? th??? t???i H????T v??? m??y t??nh ????? l??u gi???.</span>\n<span style=\"font-size: 95%;\">N???u c???n gi???i ????p th???c m???c ho???c h??? tr??? li??n quan ?????n H????T ,Qu?? kh??ch vui l??ng li??n h??? v???i ch??ng t??i theo T???ng ????i ch??m s??c kh??ch h??ng??<strong>1900 633369</strong>, email:??<strong>wecare@aviva.com.vn</strong>??,website: https://www.aviva.com.vn ????? ???????c h?????ng d???n ho???c ?????n tr???c ti???p c??c Trung t??m D???ch v??? Kh??ch h??ng c???a Aviva ????? ???????c ph???c v???.</span>\n\n[/accordion-item]\n[accordion-item title=\"N????u mu????n ????ng ky?? th??m th??ng tin ho??m th?? ??i????n t???? (email) ?????? nh????n ho??a ????n thi?? li??n h???? v????i ai?\"]\n\n<span style=\"font-size: 95%;\">Qu?? kh??ch vui l??ng li??n h??? v???i ch??ng t??i theo T???ng ????i ch??m s??c kh??ch h??ng 1<strong>900 633369</strong>, email:??<strong>wecare@aviva.com.vn</strong>??,website: https://www.aviva.com.vn ????? ???????c h?????ng d???n ho???c ?????n tr???c ti???p c??c Trung t??m D???ch v??? Kh??ch h??ng c???a Aviva ????? ???????c ph???c v???.</span>\n\n[/accordion-item]\n[accordion-item title=\"L??m th??? n??o ????? tham gia b???o hi???m v???i Aviva?\"]\n\n<span style=\"font-size: 95%;\">Qu?? kh??ch vui l??ng li??n h??? ???????ng d??y n??ng (024) 3724 6699 ????? ???????c cung c???p th??ng tin v??? s???n ph???m, h?????ng d???n th??? t???c y??u c???u b???o hi???m v?? ???????c gi???i thi???u ?????n ?????i ng?? Nh??n vi??n t?? v???n c???a ch??ng t??i, ho???c ?????n tr???c ti???p V??n ph??ng giao d???ch/Chi nh??nh Vietinbank g???n nh???t ????? l??m th??? t???c y??u c???u b???o hi???m nh??n th??? v???i Aviva.</span>\n\n[/accordion-item]\n[accordion-item title=\"T??i mu???n tham gia b???o hi???m v???i Aviva, h??? s?? y??u c???u b???o hi???m c???a t??i c???n c?? nh???ng ch???ng t??? g???\"]\n\n<span style=\"font-size: 95%;\">H??? s?? y??u c???u b???o hi???m v???i Aviva bao g???m nh???ng ch???ng t??? sau: - Gi???y y??u c???u b???o hi???m (c?? nh??n/t??? ch???c); - B???n copy Gi???y t??? tu??? th??n c???a B??n mua b???o hi???m, Ng?????i ???????c b???o hi???m, Ng?????i th??? h?????ng (CMND/Gi???y khai sinh/H??? chi???u???); - B???ng minh h???a H???p ?????ng b???o hi???m; - B??o c??o c???a Nh??n vi??n t?? v???n; - B???n copy li??n 1 c???a Gi???y n???p ti???n; - Gi???y t??? kh??c (n???u c??): + ????? ngh??? b??? sung ng??y/th??ng sinh: N???u kh??ch h??ng kh??ng c?? ng??y v??/ho???c th??ng sinh trong c??c lo???i gi???y t??? tu??? th??n ???????c ch???p nh???n. + Gi???y ra vi???n, Gi???y ch???ng nh???n ph???u thu???t, H??? s?? kh??m ?????nh k???, S??? y b???, Phi???u x??t nghi???m???: N???u kh??ch h??ng c?? ti???n s??? ph???u thu???t, n???m vi???n, ??i???u tr??? b???nh ???</span>\n\n[/accordion-item]\n[accordion-item title=\"C??ng ty t??i mu???n tham gia b???o hi???m cho nh??n vi??n, t??i (?????i di???n c??ng ty) ch??? c???n k?? khai Gi???y y??u c???u b???o hi???m d??nh cho B??n mua b???o hi???m l?? t??? ch???c ????ng kh??ng?\"]\n\n<span style=\"font-size: 95%;\">Tr?????ng h???p B??n mua b???o hi???m l?? t??? ch???c, Qu?? kh??ch vui l??ng k?? khai m???t b???n Gi???y y??u c???u b???o hi???m d??nh cho B??n mua b???o hi???m l?? t??? ch???c chung cho t???t c??? c??c tr?????ng h???p y??u c???u tham gia b???o hi???m ??? c??ng m???t th???i ??i???m, kh??ng ph??? thu???c v??o s??? l?????ng Ng?????i ???????c b???o hi???m. T???ng c?? nh??n Ng?????i ???????c b???o hi???m v???n ph???i k?? khai Gi???y y??u c???u b???o hi???m t????ng ???ng.</span>\n\n[/accordion-item]\n[accordion-item title=\"Gi???i th??ch c??ch t??nh tu???i tham gia b???o hi???m c???a Aviva?\"]\n\n<span style=\"font-size: 95%;\">Tu???i c???a Ng?????i ???????c b???o hi???m l?? tu???i t??nh theo ng??y sinh nh???t v???a qua so v???i ng??y H???p ?????ng ph??t sinh hi???u l???c. V?? d???: Kh??ch h??ng c?? ng??y sinh 01/11/1984 tham gia b???o hi???m v???i Aviva v??o ng??y 01/09/2011 th?? ng??y sinh nh???t v???a qua c???a kh??ch h??ng l?? 01/11/2010 v?? nh?? v???y, tu???i kh??ch h??ng khi tham gia s??? l?? 26 tu???i. C??ng kh??ch h??ng ???? n???u tham gia b???o hi???m ng??y 01/12/2011 th?? ng??y sinh nh???t v???a qua c???a kh??ch h??ng l?? 01/11/2011 v?? nh?? v???y, tu???i tham gia s??? l?? 27 tu???i.</span>\n\n[/accordion-item]\n[accordion-item title=\"N???u m???t b???n g???c c???a b??? h???p ?????ng b???o hi???m, t??i c?? ???????c c???p l???i hay kh??ng?\"]\n\n<span style=\"font-size: 95%;\">Tr?????ng h???p m???t b??? h???p ?????ng g???c, ch??ng t??i s??? c???p l???i Gi???y ch???ng nh???n b???o hi???m nh??n th??? cho Qu?? kh??ch, c??c v??n b???n kh??c (nh?? ??i???u kho???n b???o hi???m nh??n th???, b???n sao Gi???y y??u c???u b???o hi???m???) kh??ng ???????c c???p l???i. Qu?? kh??ch c?? th??? th??ng b??o v???i Nh??n vi??n t?? v???n ????? ???????c h?????ng d???n th??? t???c y??u c???u c???p l???i Gi???y ch???ng nh???n b???o hi???m nh??n th??? ho???c ho??n t???t m???u ????n xin c???p l???i gi???y ch???ng nh???n b???o hi???m nh??n th??? v?? g???i v??? Aviva theo ?????a ch???: T???ng 13, T??a nh?? Mipec, 229 T??y S??n, Qu???n ?????ng ??a, TP H?? N???i.</span>\n\n[/accordion-item]\n[accordion-item title=\"Th???i ??i???m ph??t sinh hi???u l???c h???p ?????ng b???o hi???m ???????c x??c ?????nh nh?? th??? n??o?\"]\n\n<span style=\"font-size: 95%;\">Tr?????ng h???p Aviva ch???p thu???n b???o hi???m c???a Qu?? kh??ch, h???p ?????ng ph??t sinh hi???u l???c k??? t??? th???i ??i???m Aviva nh???n ???????c ?????y ????? Gi???y y??u c???u b???o hi???m v?? Ph?? b???o hi???m t???m t??nh c???a h???p ?????ng. Tr??ch nhi???m b???o hi???m c???a Aviva ph??t sinh t??? th???i ??i???m h???p ?????ng ph??t sinh hi???u l???c. Tuy nhi??n, C??ng ty ch??? b???o hi???m cho c??c r???i ro theo ??i???u kho???n h???p ?????ng b???o hi???m k??? t??? Ng??y ph??t h??nh h???p ?????ng ???????c ghi trong Gi???y ch???ng nh???n b???o hi???m. Th???i gian t??? ng??y hi???u l???c h???p ?????ng ?????n ng??y ph??t h??nh h???p ?????ng, Qu?? kh??ch ???????c b???o hi???m theo ??i???u kho???n B???o hi???m t???m th???i.</span>\n\n[/accordion-item]\n\n[/accordion]\n\n[/col]\n\n[/row]","C??u h???i th?????ng g???p","","publish","closed","closed","","cau-hoi-thuong-gap","","","2019-04-03 11:55:59","2019-04-03 04:55:59","","40","https://tppone.com/demo/baohiem/?page_id=50","0","page","","0"),
("52","1","2019-04-01 14:39:48","2019-04-01 07:39:48","","H??a ????n ??i???n t???","","publish","closed","closed","","hoa-don-dien-tu","","","2019-04-01 14:39:48","2019-04-01 07:39:48","","40","https://tppone.com/demo/baohiem/?page_id=52","0","page","","0"),
("54","1","2019-04-01 14:39:58","2019-04-01 07:39:58","","Bi???u m???u th??ng d???ng","","publish","closed","closed","","bieu-mau-thong-dung","","","2019-04-01 14:39:58","2019-04-01 07:39:58","","40","https://tppone.com/demo/baohiem/?page_id=54","0","page","","0"),
("58","1","2019-04-01 14:40:17","2019-04-01 07:40:17","[row]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\"]\n\n[text_box width=\"24\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h3 class=\"uppercase\"><span style=\"font-size: 90%; color: #ffffff;\"><strong>CH??M S??C KH??CH H??NG</strong></span></h3>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n<h2 class=\"title-news\" style=\"text-align: center;\">CH????NG TR??NH CH??M S??C KH??CH H??NG 2018</h2>\n<span style=\"font-size: 95%;\">V???i ph????ng ch??m ho???t ?????ng tr??n gi?? tr??? c???t l??i h??ng ?????u ???Quan t??m nhi???u h??n ?????n kh??ch h??ng???, c??ng v???i mong mu???n ng??y c??ng gia t??ng d???ch v??? v?? s??? h??i l??ng c???a Kh??ch h??ng, Aviva ch??nh th???c tri???n khai Ch????ng tr??nh ch??m s??c kh??ch h??ng 2018 k??? t??? ng??y 16/05/2018, v???i n???i dung c??? th??? nh?? sau:.</span>\n<table class=\"table\">\n<tbody>\n<tr>\n<th>Ph??n h???ng kh??ch h??ng</th>\n<th>T???ng s??? ph?? b???o hi???m quy n??m (APE) (*)</th>\n</tr>\n<tr>\n<td>B???c</td>\n<td><strong>D?????i 50 tri???u</strong></td>\n</tr>\n<tr>\n<td>V??ng</td>\n<td><strong>T??? 50 tri???u ?????n d?????i 100 tri???u</strong></td>\n</tr>\n<tr>\n<td>B???ch kim</td>\n<td><strong>T??? 100 tri???u ?????n d?????i 200 tri???u</strong></td>\n</tr>\n<tr>\n<td>Kim c????ng</td>\n<td><strong>T??? 200 tri???u tr??? l??n</strong></td>\n</tr>\n</tbody>\n</table>\n[/col]\n\n[/row]","Ch??m s??c kh??ch h??ng","","publish","closed","closed","","cham-soc-khach-hang","","","2019-04-03 11:57:48","2019-04-03 04:57:48","","40","https://tppone.com/demo/baohiem/?page_id=58","0","page","","0"),
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
("132","1","2019-04-01 16:16:26","2019-04-01 09:16:26","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"557\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>L??I SU???T C??NG B???</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de lai-suat-cong-bo\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" link=\"/san-pham/doanh-nghiep/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot3\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2 class=\"title-page\">L??I SU???T C??NG B???</h2>\n<div class=\"brief\">V???i b??? d??y kinh nghi???m h??n 300 n??m trong l??nh v???c B???o hi???m v?? l?? T???p ??o??n B???o hi???m h??ng ?????u t???i Anh Qu???c, Aviva lu??n h?????ng t???i nh???ng gi???i ph??p mang l???i m???c sinh l???i t???i ??u nh???t cho Qu?? kh??ch h??ng.</div>\n[gap height=\"20px\"]\n\n[button text=\"Xem chi ti???t\" letter_case=\"lowercase\" radius=\"99\" link=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"701\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n<p><strong>I. C??c lo???i l??i su???t ??p d???ng li??n quan ?????n th???c hi???n h???p ?????ng b???o hi???m:</strong></p>\n<table class=\"table table-hover\">\n<tbody>\n<tr>\n<td style=\"background-color: #003da6;\"></td>\n<td style=\"background-color: #003da6;\"><span style=\"color: #ffffff;\">??<strong>C??c lo???i l??i su???t</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; height: 5%; width: 10%;\"><span style=\"color: #ffffff;\"><strong>2014</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2015</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2016</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2017</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\"><span style=\"color: #ffffff;\"><strong>2018</strong></span></td>\n<td style=\"text-align: center; background-color: #003da6; width: 10%; height: 5%;\">??<span style=\"color: #eeece1;\"><strong>2019</strong></span></td>\n</tr>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #ffd100; width: 4%; height: 8%;\">I</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #ffd100;\">??L??i su???t ?????i v???i c??c Quy???n l???i ti???n m???t t??ch l??y t???i Aviva</td>\n<td style=\"text-align: left; vertical-align: middle;\"></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td style=\"background-color: #e3f3f9; text-align: center; vertical-align: middle; width: 4%; height: 8%;\">1</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #e3f3f9;\">??Ph??t L???c Th??nh T??i</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">??-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">5.5%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">5%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">??5%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9; width: 4%; height: 8%;\">2</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #e3f3f9;\">??Ph??t L???c Kh??i Nguy??n</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">??-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">-</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">6.5%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">6%</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #e3f3f9;\">??6%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #ffd100; width: 4%; height: 8%;\">??II</td>\n<td style=\"text-align: left; vertical-align: middle; background-color: #ffd100;\">??Kho???n gi???m thu nh???p ?????u t?? ??p d???ng ?????i v???i c??c kho???n t???m ???ng t??? Gi?? tr??? ho??n l???i v?? t???m ???ng t??? Gi?? tr??? ho??n l???i ????? t??? ????ng ph?? b???o hi???m</td>\n<td style=\"text-align: center; vertical-align: middle;\">??10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">10%</td>\n<td style=\"text-align: center; vertical-align: middle;\">??10%</td>\n</tr>\n</tbody>\n</table>\n<p><strong>II. L??i su???t t??ch l??y ??p d???ng t??nh GTTKH?? c???a s???n ph???m B???o hi???m Li??n k???t chung:</strong></p>\n<table class=\"table table-hover\" style=\"text-align: center;\">\n<tbody>\n<tr>\n<td style=\"text-align: center; vertical-align: middle; background-color: #003da6; height: 30%;\" rowspan=\"2\"><span style=\"color: #ffffff;\"><strong>Th???i k?????</strong></span></td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #003da6;\" colspan=\"2\"><span style=\"color: #ffffff;\"><strong>S???n ph???m</strong></span></td>\n</tr>\n<tr>\n<td style=\"text-align: left; vertical-align: middle; background-color: #ffd100; width: 30%;\">\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Ph??t L???c H??ng Gia</span></div>\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Ph??t Nghi???p H??ng Th???nh</span></div>\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Ph??t Nghi???p H??ng V?????ng</span></div>\n<div style=\"text-align: center;\"><span style=\"color: #000000;\">Ph??t Nghi???p T??m An</span></div>\n</td>\n<td style=\"text-align: center; vertical-align: middle; background-color: #ffd100; width: 30%;\">??Y??u Th????ng Tr???n V???n</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??12/2014 - 31/01/2015</td>\n<td style=\"text-align: center;\">??8%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/2/2015 - 30/4/2015</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??7.8%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/5/2015 - 31/07/2015</td>\n<td style=\"text-align: center;\">??7.4%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/8/2015 - 31/12/2015</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??7.5%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/11/2015 - 31/01/2016</td>\n<td style=\"text-align: center;\">??7.5%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/02/2016 - 30/04/2016</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??7.3%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/05/2016 - 31/07/2016</td>\n<td style=\"text-align: center;\">??6.9%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/08/2016 - 31/10/2016</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??6.6%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/11/2016 - 31/12/2016</td>\n<td style=\"text-align: center;\">??7.1%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/11/2016 - 31/01/2017</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??7.1%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/02/2017 - 30/04/2017</td>\n<td style=\"text-align: center;\">??6.8%</td>\n<td style=\"text-align: center;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/05/2017 - 31/07/2017</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??6.6%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\"></td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/08/2017 - 31/10/2017</td>\n<td style=\"text-align: center;\">??6.3%</td>\n<td style=\"text-align: center;\">6.3%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/11/2017 - 31/01/2018</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??6.3%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">6.3%</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/02/2018 - 30/04/2018</td>\n<td style=\"text-align: center;\">??6.0%</td>\n<td style=\"text-align: center;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/05/2018 - 31/07/2018</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??6.0%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">??01/08/2018 - 31/10/2018</td>\n<td style=\"text-align: center;\">??6.0%</td>\n<td style=\"text-align: center;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??01/11/2018 - 31/01/2019</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">??6.0%</td>\n<td style=\"text-align: center; background-color: #e3f3f9;\">5.8%</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">01/02/2019 - 30/4/2019</td>\n<td style=\"text-align: center;\">5.8%</td>\n<td style=\"text-align: center;\">??5.6%</td>\n</tr>\n</tbody>\n</table>\n<div><strong>III. M???t s??? quy ?????nh c???a Aviva li??n quan ?????n vi???c th???c hi???n h???p ?????ng b???o hi???m:</strong></div>\n<div>M???i th???c m???c xin vui l??ng li??n h??? ???????ng d??y n??ng: 24-3724 6699 ho???c email: wecare@aviva.com.vn ????? ???????c h?????ng d???n chi ti???t v?? c???p nh???t th??ng tin (n???u c??).</div>\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-banner-cuoi\"]\n\n[col span=\"7\" span__sm=\"12\"]\n\n[gap height=\"44px\"]\n\n<p>Tra c???u??B??o c??o t??i ch??nh<strong>,</strong>??B??o c??o th?????ng ni??n<br />??v????B??o c??o ho???t ?????ng Qu??? Li??n k???t chung.</p>\n[button text=\"Xem b??o c??o\" letter_case=\"lowercase\" radius=\"99\" icon=\"icon-expand\" icon_reveal=\"true\" link=\"#\"]\n\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"723\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]","L??i su???t c??ng b???","","publish","closed","closed","","lai-suat-cong-bo","","","2019-04-03 10:29:12","2019-04-03 03:29:12","","0","https://tppone.com/demo/baohiem/?page_id=132","0","page","","0"),
("134","1","2019-04-01 16:16:37","2019-04-01 09:16:37","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"544\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><span style=\"color: #003366;\"><strong>L??I SU???T C??NG B???</strong></span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/\">B??o c??o ho???t ?????ng qu??? li??n k???t</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/lai-suat-cong-bo/bao-cao-tai-chinh/\">B??o c??o t??i ch??nh</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/lai-suat-cong-bo/bao-cao-thuong-nien/\">B??o c??o th?????ng ni??n</a></span></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"b??o c??o th?????ng ni??n\" tag_name=\"h2\"]\n\n<table class=\"table\">\n<thead>\n<tr>\n<th>STT</th>\n<th>N???i dung</th>\n<th>Ng??y ????ng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2018\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2018</a></td>\n<td>26/03/2019</td>\n</tr>\n<tr>\n<td>2</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2016\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2016</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>3</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2015\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">B??o c??o ho???t ?????ng qu??? li??n k???t chung 2015</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>4</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2014\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2014</a></td>\n<td>20/03/2018</td>\n</tr>\n</tbody>\n</table>\n\n[/col]\n\n[/row]","B??o c??o th?????ng ni??n","","publish","closed","closed","","bao-cao-thuong-nien","","","2019-04-03 13:40:13","2019-04-03 06:40:13","","132","https://tppone.com/demo/baohiem/?page_id=134","0","page","","0"),
("136","1","2019-04-01 16:16:50","2019-04-01 09:16:50","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><span style=\"color: #003366;\"><strong>L??I SU???T C??NG B???</strong></span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #4376b7;\"><a style=\"color: #4376b7;\" href=\"/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/\">B??o c??o ho???t ?????ng qu??? li??n k???t</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/lai-suat-cong-bo/bao-cao-tai-chinh/\">B??o c??o t??i ch??nh</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><a href=\"/lai-suat-cong-bo/bao-cao-thuong-nien/\">B??o c??o th?????ng ni??n</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"b??o c??o t??i ch??nh\" tag_name=\"h2\"]\n\n<table class=\"table\">\n<thead>\n<tr>\n<th>STT</th>\n<th>N???i dung</th>\n<th>Ng??y ????ng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2018\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2018</a></td>\n<td>26/03/2019</td>\n</tr>\n<tr>\n<td>2</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2016\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2016</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>3</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2015\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">B??o c??o ho???t ?????ng qu??? li??n k???t chung 2015</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>4</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2014\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2014</a></td>\n<td>20/03/2018</td>\n</tr>\n</tbody>\n</table>\n\n[/col]\n\n[/row]","B??o c??o t??i ch??nh","","publish","closed","closed","","bao-cao-tai-chinh","","","2019-04-03 13:40:53","2019-04-03 06:40:53","","132","https://tppone.com/demo/baohiem/?page_id=136","0","page","","0"),
("138","1","2019-04-01 16:17:09","2019-04-01 09:17:09","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.34)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>L??I SU???T C??NG B???</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de-2\"]\n\n[col span=\"4\" span__sm=\"6\"]\n\n<p><span style=\"color: #83b614;\"><a style=\"color: #83b614;\" href=\"/lai-suat-cong-bo/bao-cao-hoat-dong-quy-lien-ket/\">B??o c??o ho???t ?????ng qu??? li??n k???t</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><a href=\"/lai-suat-cong-bo/bao-cao-tai-chinh/\">B??o c??o t??i ch??nh</a></p>\n\n[/col]\n[col span=\"4\" span__sm=\"6\"]\n\n<p><a href=\"/lai-suat-cong-bo/bao-cao-thuong-nien/\">B??o c??o th?????ng ni??n</a></p>\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"B??O C??O HO???T ?????NG QU??? LI??N K???T CHUNG\" tag_name=\"h2\"]\n\n<table class=\"table\">\n<thead>\n<tr>\n<th>STT</th>\n<th>N???i dung</th>\n<th>Ng??y ????ng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2018\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2018.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2018</a></td>\n<td>26/03/2019</td>\n</tr>\n<tr>\n<td>2</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2016\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2016.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2016</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>3</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2015\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2015.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">B??o c??o ho???t ?????ng qu??? li??n k???t chung 2015</a></td>\n<td>20/03/2018</td>\n</tr>\n<tr>\n<td>4</td>\n<td><a title=\"B??o c??o ho???t ?????ng qu??? li??n k???t chung 2014\" href=\"/Data/Sites/1/media/b%C3%A1o-c%C3%A1o-ho%E1%BA%A1t-%C4%91%E1%BB%99ng-qu%E1%BB%B9-li%C3%AAn-k%E1%BA%BFt-chung-2014.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> B??o c??o ho???t ?????ng qu??? li??n k???t chung 2014</a></td>\n<td>20/03/2018</td>\n</tr>\n</tbody>\n</table>\n\n[/col]\n\n[/row]","B??o c??o ho???t ?????ng qu??? li??n k???t","","publish","closed","closed","","bao-cao-hoat-dong-quy-lien-ket","","","2019-04-03 13:41:21","2019-04-03 06:41:21","","132","https://tppone.com/demo/baohiem/?page_id=138","0","page","","0"),
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
("257","1","2019-04-01 18:14:01","2019-04-01 11:14:01","Ng??n h??ng TMCP C??ng Th????ng Vi???t Nam v?? C??ng ty TNHH B???o hi???m Nh??n th??? Aviva Vi???t Nam (Aviva Vi???t Nam) t??ng c?????ng h???p t??c, n??? l???c mang ?????n cho kh??ch h??ng c??c s???n ph???m, d???ch v??? v?????t tr???i.\n\nTh??ng 4/2017, VietinBank ???? k?? k???t v???i T???p ??o??n Aviva h???p ?????ng chuy???n nh?????ng ph???n v???n g??p t???i C??ng ty TNHH B???o hi???m Nh??n th??? Aviva Vi???t Nam (t??n c?? l?? C??ng ty TNHH B???o Hi???m Nh??n Th??? VietinBank Aviva).\n\nNgay sau ????, VietinBank v?? Aviva Vi???t Nam ???? k?? k???t h???p ?????ng h???p t??c ?????c quy???n trong vi???c ph??n ph???i s???n ph???m b???o hi???m nh??n th???. ????y l?? m???t trong nh???ng h???p ?????ng h???p t??c c?? th???i h???n d??i nh???t trong l???ch s??? th??? tr?????ng b???o hi???m nh??n th??? Vi???t Nam.\n<div>Sau s??? ki???n n??y, quy???n l???i c???a c??c kh??ch h??ng tham gia h???p ?????ng b???o hi???m nh??n th??? c???a Aviva Vi???t Nam v???i t??n g???i c?? tr??n c??c H???p ?????ng b???o hi???m ???? k?? k???t l?? C??ng ty TNHH B???o hi???m Nh??n th??? VietinBank Aviva s??? v???n ???????c Aviva Vi???t Nam ?????m b???o tuy???t ?????i.</div>\n<div></div>\n<div>?????c bi???t, th??ng 7/2017, ?????i t??c chi???n l?????c c???a VietinBank l?? Aviva Vi???t Nam ???? ho??n t???t t??ng v???n ??i???u l??? l??n 1.650 t??? ?????ng, tr??? th??nh m???t trong nh???ng c??ng ty b???o hi???m nh??n th??? c?? v???n ??i???u l??? l???n t???i th??? tr?????ng Vi???t Nam. ????y ch??nh l?? m???t cam k???t t??? C??ng ty m??? c???a Aviva Vi???t Nam l?? T???p ??o??n Aviva trong vi???c ?????u t?? d??i h???n v??o th??? tr?????ng Vi???t Nam.</div>\n<div></div>\n<div>VietinBank v?? Aviva Vi???t Nam ??ang ph???i h???p ????? x??y d???ng m???t danh m???c s???n ph???m b???o hi???m ??a d???ng c??ng vi???c ???ng d???ng c??ng ngh??? m???i v??o ho???t ?????ng kinh doanh c??ng nh?? d???ch v??? kh??ch h??ng ????? mang l???i nh???ng tr???i nghi???m thu???n ti???n v?? ho??n h???o cho kh??ch h??ng.</div>\n<div></div>\n<div>S??? ki???n VietinBank h???p t??c ?????c quy???n c??ng Aviva Vi???t Nam ???? ????nh d???u m???t giai ??o???n h???p t??c m???i gi???a 2 b??n v?? h???a h???n s??? t???o n??n m???t b?????c ?????t ph?? tr??n th??? tr?????ng b???o hi???m Vi???t Nam.</div>","Aviva Vi???t Nam h???p t??c ?????c quy???n v???i Vietinbank","","publish","open","open","","aviva-viet-nam-hop-tac-doc-quyen-voi-vietinbank","","","2019-04-03 00:14:00","2019-04-02 17:14:00","","0","https://tppone.com/demo/baohiem/?p=257","0","post","","0"),
("258","1","2019-04-01 18:13:56","2019-04-01 11:13:56","","post1","","inherit","open","closed","","post1","","","2019-04-01 18:13:56","2019-04-01 11:13:56","","257","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post1.jpg","0","attachment","image/jpeg","0"),
("260","1","2019-04-01 18:15:22","2019-04-01 11:15:22","Ch????ng tr??nh Qu??? C???ng ?????ng Aviva l?? m???t ch????ng tr??nh To??n c???u do Aviva t??? ch???c nh???m k??u g???i c??c d??? ??n t???o n??n nh???ng thay ?????i t??ch c???c cho c???ng ?????ng. Ch????ng tr??nh ???????c b???t ?????u t??? 2009, ???? tri???n khai tr??n 6 qu???c gia: Anh, Ph??p, ??, Ba Lan, H???ng K??ng v?? Canada. Vi???t Nam l?? qu???c gia ?????u ti??n ??? ????ng Nam ?? tri???n khai ch????ng tr??nh v??o 2017.\n\nV???i ch????ng tr??nh Qu??? C???ng ?????ng, Aviva k?? v???ng mang ?????n c?? h???i bi???n c??c d??? ??n cho c???ng ?????ng tr??? th??nh hi???n th???c v?? lan t???a tinh th???n ch??? ?????ng thay ?????i v?? nh???ng ??i???u t???t ?????p h??n ?????n to??n th??? x?? h???i, ?????c bi???t l?? nh???ng ng?????i tr???.\n\nCh????ng tr??nh s??? ch??nh th???c kh???i ?????ng v?? nh???n D??? ??n n???p v??? t??? ng??y 01/12/2017 v?? k???t th??c nh???n ????n v??o ng??y 15/01/2018. C??c b???n c?? th??? ????ng k?? v?? xem th??m th??ng tin chi ti???t t???i:\n\n<strong>Gi???i th?????ng\n</strong>\nCh????ng tr??nh Qu??? C???ng ?????ng Aviva s??? c?? 3 m???c t??i tr??? d??? ??n 1.000$, 3.000$, v?? 5.000$.?? C??? th???:\n\n3 d??? ??n nh???n ???????c kho???n t??i tr??? 5.000$\n10 d??? ??n nh???n ???????c kho???n t??i tr??? 3.000$\n20 d??? ??n nh???n ???????c kho???n t??i tr??? 1.000$\n\n<strong>Th??? l??? cu???c thi\n</strong>\n<strong>1. ?????i t?????ng tham gia:\n</strong>\nC?? th??? tham gia c?? nh??n, ho???c c?? nh??n ?????i di???n m???t nh??m/t??? ch???c tham gia.\nC??ng d??n c?? qu???c t???ch Vi???t Nam v?? hi???n ??ang sinh s???ng t???i Vi???t Nam\nKh??ng ph???i l?? th??nh vi??n ban gi??m kh???o ho???c th??nh vi??n trong gia ????nh c???a th??nh vi??n ban gi??m kh???o Ch????ng tr??nh Qu??? C???ng ?????ng Aviva (v???/ ch???ng, con c??i, cha/ m???, ho???c anh/ ch??? em);\nTr??n 18 tu???i\n\n<strong>2. Quy ?????nh:\n</strong>\nBTC c?? quy???n h???y b??? t?? c??ch d??? thi n???u nh???n th???y h??nh vi kh??ng tu??n th??? quy ?????nh ho???c c??c ho???t ?????ng trong khu??n kh??? y??u c???u c???a BTC.\nBTC c?? quy???n ch???nh s???a th??? l??? cu???c thi trong tr?????ng h???p c???n thi???t.\nQuy???t ?????nh c???a BTC l?? quy???t ?????nh cu???i c??ng. M???i tranh ch???p, khi???u n???i, th???c m???c v??? quy???t ?????nh c???a BTC xin g???i v??? ?????a ch??? email: quycongdong@aviva.com.vn\n\n<strong>3. C?? c???u ch????ng tr??nh\n</strong>\nCh????ng tr??nh Qu??? C???ng ?????ng Aviva 2017 b???t ?????u t??? ng??y 01/12/2017 ?????n ng??y 15/01/2018, g???m c??c m???c th???i gian nh?? sau:\n<ul>\n 	<li>Giai ??o???n n???p D??? ??n (01/12/2017 ??? 15/01/2017)</li>\n</ul>\n??? giai ??o???n n??y, b???n s??? ph???i bi???n c??c ?? t?????ng c???a b???n tr??? th??nh m???t d??? ??n v?? tr??nh b??y v???i Aviva th??ng qua trang web ch??nh th???c c???a ch????ng tr??nh Quycongdong.aviva.com.vn. Trang web s??? h??? tr??? c??c b???n tr??nh b??y d?????i d???ng text, h??nh ???nh v?? c??? video.\n\nH?????ng d???n n???p b??i t???i??????y.\n<ul>\n 	<li>Giai ??o???n B??nh ch???n (01/02/2018 ??? 01/03/2018)</li>\n</ul>\nTrong giai ??o???n B??? phi???u, b???n c?? th??? b???t ?????u chia s??? d??? ??n c???a b???n v???i c??ng nhi???u b???n b??, gia ????nh v?? nh???ng ng?????i ???ng h??? D??? ??n c???a b???n c??ng t???t, ????? nh???n ???????c nhi???u nh???t c?? th??? s??? l?????t b??nh ch???n. C??c d??? ??n c?? s??? phi???u b??nh ch???n nhi???u nh???t s??? l???t v??o v??ng chung k???t.\n\n?????c bi???t, 20 d??? ??n y??u c???u m???c t??i tr??? 1000 ???? la M??? ?????t ???????c s??? b??nh ch???n cao nh???t s??? gi??nh ???????c kho???n t??i tr??? ngay l???p t???c m?? kh??ng c???n ph???i qua v??ng Chung k???t\n\nB???t c??? c?? nh??n n??o ????ng k?? t??i kho???n h???p l??? tr??n trang web c???a ch????ng tr??nh Qu??? C???ng ?????ng Aviva ?????u c?? th??? b??? phi???u cho c??c d??? ??n (ngay c??? khi b???n kh??ng n???p b???t c??? m???t d??? ??n n??o th?? b???n v???n c?? quy???n b??? phi???u cho nh???ng d??? ??n kh??c).\n\nM???i t??i kho???n s??? nh???n ???????c 10 phi???u b??nh. B???n c?? th??? b??? phi???u cho nhi???u d??? ??n kh??c nhau hay d??ng c??? 10 phi???u cho m???t d??? ??n ?????u ???????c.\n<ul>\n 	<li>V??ng chung k???t (01/04/2018 ??? 15/04/2018)</li>\n</ul>\n21 d??? ??n v???i m???c t??i tr??? 3000 ???? la M??? v?? 6 d??? ??n v???i m???c t??i tr??? 5000 ???? la M??? c?? s??? B??nh ch???n cao nh???t s??? v??o v??ng chung k???t. Ban gi??m kh???o c???a Ch????ng tr??nh Qu??? C???ng ?????ng Aviva s??? ????nh gi?? c??c D??? ??n theo ti??u ch?? sau:\n\n<strong>(25% t???ng ??i???m)</strong>??S???c ???nh h?????ng\n<strong>(15% t???ng ??i???m)??</strong>Kh??? n??ng hi???n th???c h??a\n<strong>??(30% t???ng ??i???m)</strong>??Tu???i th??? &amp; T??nh b???n v???ng\n<strong>?? (5% t???ng ??i???m</strong>) T??nh nguy??n b???n, m???i l???\n<strong>??(10% t???ng ??i???m</strong>) Ch???t l?????ng b??i n???p\n<strong>??(15% t???ng ??i???m)</strong>??B??nh ch???n\n\nK???t qu??? ch??nh th???c c??c D??? ??n s??? nh???n gi???i s??? ???????c c??ng b??? ch??nh th???c ngay sau ??o??.","Ch????ng tr??nh qu??? c???ng ?????ng Aviva - Small Acts, Big change","","publish","open","open","","chuong-trinh-quy-cong-dong-aviva-small-acts-big-change","","","2019-04-01 18:15:22","2019-04-01 11:15:22","","0","https://tppone.com/demo/baohiem/?p=260","0","post","","0"),
("261","1","2019-04-01 18:15:19","2019-04-01 11:15:19","","post2","","inherit","open","closed","","post2","","","2019-04-01 18:15:19","2019-04-01 11:15:19","","260","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post2.jpg","0","attachment","image/jpeg","0"),
("263","1","2019-04-01 18:17:05","2019-04-01 11:17:05","V???a qua v??o trung tu???n Th??ng 1/2019, Aviva Vi???t Nam ???? t??? ch???c H???i ngh??? ph??t ?????ng kinh doanh n??m 2019 cho c??? hai k??nh ?????i l?? v?? k??nh h???p t??c b???o hi???m - ng??n h??ng?? Aviva - VietinBank.\n\nNhi???t huy???t v?? n??ng ?????ng l?? kh??ng kh?? c???a l??? ph??t ?????ng kinh doanh 2019 di???n ra v??o 02 ng??y 11.1.2019 (k??nh h???p t??c b???o hi???m - ng??n h??ng?? Aviva - VietinBank)??v?? ng??y 15.1.2019 (k??nh ?????i l??). V???i s??? tham gia c???a h??n 600 chuy??n vi??n t?? v???n c??ng ?????i ng?? l??nh ?????o tinh hoa, c??ng v???i h??n 1,000 ?????i l?? v?? c??c MDRT, COT t??i n??ng ???? mang ?????n kh??ng kh?? s??i ?????ng v?? ?????y quy???t t??m chinh ph???c m???c ti??u n??m m???i. ?????c bi???t v???i s??? hi???n di???n c???a ??ng Randy Lianggara - Gi??m ?????c V??ng v?? 3 n?????c Ch??u ?? c??ng ??ng Paul George Nguyen - T???ng Gi??m ?????c Aviva Vi???t Nam ???? ti???p th??m s???c m???nh cho ?????i qu??n m??u v??ng ti???p t???c g???t h??i th??m nhi???u th??nh c??ng trong n??m 2019.\n\nM???t s??? h??nh ???nh s??i ?????ng v?? tr??n ng???p n??ng l?????ng c???a bu???i l??? ph??t ?????ng kinh doanh:\n\n<strong>Bu???i l??? ph??t ?????ng kinh doanh K??nh h???p t??c b???o hi???m - ng??n h??ng Aviva - VietinBank</strong>","H???i ngh??? kh???i ?????ng kinh doanh n??m 2019","","publish","open","open","","hoi-nghi-khoi-dong-kinh-doanh-nam-2019","","","2019-04-01 18:17:05","2019-04-01 11:17:05","","0","https://tppone.com/demo/baohiem/?p=263","0","post","","0"),
("265","1","2019-04-01 18:17:03","2019-04-01 11:17:03","","post3","","inherit","open","closed","","post3","","","2019-04-01 18:17:03","2019-04-01 11:17:03","","263","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post3.jpg","0","attachment","image/jpeg","0"),
("267","1","2019-04-01 18:18:15","2019-04-01 11:18:15","Aviva Ch??u ?? v???a c??ng b??? k???t qu??? ho???t ?????ng ???n t?????ng n??m 2018, n???i b???t b???i m???c t??ng 24% l???i nhu???n ho???t ?????ng l??n t???i 133 tri???u b???ng Anh (t????ng ??????ng 236.8 tri???u ???? la Singapore).\n<div>\nTrong m???t tuy??n b??? c???a t???p ??o??n b???o hi???m ??a qu???c gia c?? tr??? s??? t???i V????ng qu???c Anh, Aviva cho bi???t s??? t??ng tr?????ng l???i nhu???n ho???t ?????ng n??i tr??n l?? nh??? c?? s??? ????ng g??p cao h??n t??? c??c b??? ph???n kinh doanh ch??? ch???t trong khu v???c. Ngo??i ra, t???p ??o??n n??y c??ng cho bi???t nh??? c??c k??nh ph??n ph???i ???????c t??ng c?????ng v?? th??? ph???n ti???p t???c t??ng tr?????ng ??? c??c th??? tr?????ng ch??u ??, n??n doanh thu ph?? b???o hi???m t??? c??c h???p ?????ng khai th??c m???i (VNB) ???? t??ng tr?????ng 15% l??n t???i 191 tri???u b???ng Anh (t????ng ??????ng 340 tri???u ???? la Singapore).\n\nTheo Aviva, k??nh ?????i l?? b???o hi???m/t?? v???n t??i ch??nh (FA) v???n c?? vai tr?? ????ng g??p l???n nh???t cho s??? ph??t tri???n c???a t???p ??o??n t???i Singapore. T???p ??o??n b???o hi???m n??y cho bi???t h??? s??? ti???p t???c ?????u t?? v??o k??nh n??y, ???do c?? ni???m tin r???ng m?? h??nh FA cung c???p s??? linh ho???t v?? c??c l???a ch???n n??ng cao cho c??? t?? v???n vi??n b???o hi???m v?? kh??ch h??ng.???\n\nT???i Trung Qu???c, li??n doanh Aviva-COFCO c???a t???p ??o??n ???????c x???p th??? t?? trong b???ng x???p h???ng t???t c??? c??c c??ng ty b???o hi???m nh??n th??? c???a ???y ban Gi??m s??t Ng??n h??ng v?? B???o hi???m Trung Qu???c v??? kh??? n??ng thanh to??n v?? y??u c???u qu???n l?? r???i ro.</div>\nSau khi Aviva Vi???t Nam tr??? th??nh c??ng ty con ho??n to??n thu???c s??? h???u c???a t???p ??o??n, trong n??m ngo??i ???? ghi nh???n s??? t??ng tr?????ng m???nh m??? c???a c??ng ty n??y. K??nh bancassurance c???a Aviva c?? s??? ????ng g??p ????ng k???, l?? k???t qu??? t??? vi???c c???i thi???n kh??u ti???p c???n v???i kh??ch h??ng, n??ng su???t b??n h??ng v?? n??ng cao n??ng l???c s???n ph???m tr??n to??n b??? 1,100 chi nh??nh c???a ?????i t??c ng??n h??ng ?????c quy???n Vietinbank. L???c l?????ng ?????i l?? c???a Aviva Vietnam c??ng t??ng m???nh v??? quy m?? tuy???n d???ng, v?? ti???p t???c m??? r???ng s??? hi???n di???n tr??n c??c khu v???c th??? tr?????ng trong n?????c.\n\nV??o th??ng 9 n??m 2018, li??n doanh c???a Aviva v???i Tencent v?? Hillhouse ???? ra m???t m???t th????ng hi???u b???o hi???m k??? thu???t s??? m???i t???i Trung Qu???c ??? Blue. ????y l?? c??ng ty b???o hi???m nh??n th??? k??? thu???t s??? ?????u ti??n ??? H???ng K??ng, cung c???p c??c s???n ph???m b???o hi???m nh??n th??? t??? k???, b???o hi???m cho b???nh hi???m ngh??o v?? c??c s???n ph???m b???o hi???m tai n???n c?? nh??n.\n\n???D??? li???u l???n l?? ?????ng l???c c???a th??nh c??ng trong t????ng lai v?? b???t c??? ai c?? ch??a kh??a ????? khai th??c s???c m???nh c???a n?? s??? gi??nh chi???n th???ng,??? theo ??ng Chris Wei, ch??? t???ch ??i???u h??nh c???a Aviva Asia &amp; Friends Provident International v?? ch??? t???ch to??n c???u c???a Aviva Digital cho bi???t. ???Ni???m tin ???? l?? c?? s??? cho vi???c ?????u t?? c???a Aviva ????? th??c ?????y c??c kh??? n??ng ph??n t??ch v?? k??? thu???t s??? c???a ch??ng t??i trong n??m qua. C??ng v???i chi???n l?????c ph??n ph???i ??a k??nh, ch??ng t??i ???? ?????t ???????c ??????s??? t??ng tr?????ng b???n v???ng tr??n kh???p ch??u ??, ???? c??ng l?? ??u ti??n chi???n l?????c c???a Aviva.???\n<div>???Xu h?????ng chuy???n ?????i k??? thu???t s??? l?? kh??ng th??? ?????o ng?????c v?? th??? tr?????ng ch??u ?? ???? ch??n mu???i cho s??? ph??t tri???n ?????t ph??t n??y. Kh??? n??ng ti???p c???n nhanh ch??ng v?? d??? d??ng l?? nh???ng g?? kh??ch h??ng c???a ch??ng t??i mu???n trong k??? nguy??n k??? thu???t s??? v?? ???? l?? nh???ng g?? ch??ng t??i s??? c??? g???ng cung c???p. Trong t????ng lai, ch??ng t??i s??? t???p trung n??? l???c v??o c??ng cu???c c???i t??? ho???t ?????ng kinh doanh b???o hi???m, ti???p t???c c???i thi???n d???ch v??? s???n ph???m c???a m??nh v?? ng??y c??ng ho??n thi???n c??c tr???i nghi???m c???a kh??ch h??ng.???</div>","L???i nhu???n ho???t ?????ng c???a Aviva Ch??u ?? t??ng v???t 24% trong n??m 2018","","publish","open","open","","loi-nhuan-hoat-dong-cua-aviva-chau-a-tang-vot-24-trong-nam-2018","","","2019-04-01 18:18:15","2019-04-01 11:18:15","","0","https://tppone.com/demo/baohiem/?p=267","0","post","","0"),
("268","1","2019-04-01 18:18:12","2019-04-01 11:18:12","","post4","","inherit","open","closed","","post4","","","2019-04-01 18:18:12","2019-04-01 11:18:12","","267","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post4.jpg","0","attachment","image/jpeg","0"),
("270","1","2019-04-01 18:19:18","2019-04-01 11:19:18","Ng??y 07/03/2019 v???a qua, Aviva Vi???t Nam ???? k?? Th???a thu???n h???p t??c v???i Tr?????ng ?????i h???c Kinh T??? Qu???c D??n (??H KTQD) - m???t trong nh???ng tr?????ng ?????i h???c tr???ng ??i???m qu???c gia h??ng ?????u c???a n?????c ta.\n\nTrong khu??n kh??? c???a bu???i l??? k?? k???t, GS. TS. Tr???n Th??? ?????t - Hi???u tr?????ng tr?????ng ??H KTQD - ???? c?? nh???ng chia s??? ghi nh???n v?? ????nh gi?? cao tho??? thu???n h???p t??c v???i Aviva Vi???t Nam m??? ra c?? h???i ???????c h???c h???i, tr???i nghi???m nh???ng ki???n th???c th???c t??? t???i doanh nghi???p cho sinh vi??n c???a tr?????ng n??i chung v?? c???a khoa To??n Tin n??i ri??ng c??ng nh?? nh???ng ho???t ?????ng th???c ti???n c?? th??? tri???n khai ngay sau l??? k?? k???t n??y.\n\nB??n c???nh ????, ??ng Paul Nguy???n - CEO Aviva Vi???t Nam - c??ng chia s??? v??? c?? h???i ngh??? nghi???p c???a c??c b???n sinh vi??n ?????i v???i ng??nh B???o hi???m n??i chung v?? t???i Aviva Vi???t Nam n??i ri??ng.\n\nKh??p l???i bu???i k?? k???t, ??ng Paul Nguy???n ???? ?????n th??m v?? chia s??? v??? 30 n??m kinh nghi???m l??m vi???c trong ng??nh b???o hi???m nh??n th??? v?? ng??nh ?????nh ph?? c???a m??nh trong s??? ch??o ????n n???ng ???m c???a c??c b???n sinh vi??n tr?????ng ??H KTQD.\n\nBu???i l??? k?? k???t ???? di???n ra th??nh c??ng t???t ?????p h???a h???n nh???ng c?? h???i ?????ng h??nh v?? ph??t tri???n c???a c??? hai b??n.","Aviva Vi???t nam k?? th???a thu???n h???p t??c v???i tr?????ng ?????i h???c Kinh t??? Qu???c D??n","","publish","open","open","","aviva-viet-nam-ky-thoa-thuan-hop-tac-voi-truong-dai-hoc-kinh-te-quoc-dan","","","2019-04-01 18:19:18","2019-04-01 11:19:18","","0","https://tppone.com/demo/baohiem/?p=270","0","post","","0"),
("271","1","2019-04-01 18:19:16","2019-04-01 11:19:16","","post5","","inherit","open","closed","","post5","","","2019-04-01 18:19:16","2019-04-01 11:19:16","","270","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post5.jpg","0","attachment","image/jpeg","0"),
("273","1","2019-04-01 18:20:23","2019-04-01 11:20:23","C??ng ty TNHH B???o hi???m Nh??n th??? Aviva Vi???t Nam (???Aviva???) xin ch??n th??nh c???m ??n Qu?? kh??ch ???? t??n nhi???m v?? ch???n l???a Aviva ????? giao ph?? tr???ng tr??ch b???o v??? an to??n t??i ch??nh cho b???n th??n v?? gia ????nh.\n\nNh???m m???c ????ch cung c????p ?????n Qu?? kh??ch h??ng nh???ng d???ch v??? nhanh nh????t, t???t nh????t v?? hi???u qu??? nh????t, k??? t???? ng??y 01/01/2018 Aviva ???? ch??nh th???c ??p d???ng hi??nh th???c h??a ????n ??i???n t??? (???H????T???) ????? ghi nh????n ph?? b???o hi???m nh????n ???????c t???? Qu?? kh??ch h??ng. H????T l?? hi??nh th???c h??a ????n h???p ph??p v?? ???????c quy ?????nh chi ti???t t???i Th??ng t?? s??? 32/2011/TT-BTC ng??y 14/3/2011 c???a B??? T??i Ch??nh h?????ng d???n v??? kh???i t???o, ph??t h??nh v?? s??? d???ng H????T b??n h??ng h??a, cung ???ng d???ch v???.\n\nAviva hi???n s??? d???ng nhi???u hi??nh th???c thu ph?? ??a d???ng ????? ph???c v??? Qu?? kh??ch h??ng nh??:\n??? ????ng ph?? t???i qu???y giao d???ch Ng??n h??ng Vietinbank, Vietcombank, BIDV.\n??? Chuy???n kho???n t??? t??i kho???n ng??n h??ng c???a Qu?? kh??ch ?????n t??i kho???n c???a Aviva t???i Vietinbank, Vietcombank, BIDV.\n??? ????ng ph?? t???i c??c Trung t??m D???ch v??? Kh??ch h??ng c???a Aviva ??? H?? N???i v?? TP H??? Ch?? Minh.\n??? S??? d???ng th??? t??n d???ng/th??? ghi n??? qua m??y MPOS ho???c ????ng ti???n m???t cho Nh??n vi??n t?? v???n.\n??? Tr??ch n??? t??? ?????ng ?????nh k??? qua t??i kho???n th??? t??n d???ng Vietinbank.\n\nSau khi nh????n ???????c ph?? b???o hi???m thanh to??n t???? Qu?? kh??ch h??ng, Aviva se?? l????p h??a ????n thu ph?? b???o hi???m theo ?????nh d???ng PDF c?? ch??? k?? ??i???n t??? v?? chuy???n H????T l??n c????ng th??ng tin kh??ch h??ng t???i ?????a chi????<strong>https://www.einvoice.aviva.com.vn</strong>???????ng th????i g???i th??ng b??o qua ?????a chi?? e-mail ????? Qu?? kh??ch h??ng thu????n ti???n trong vi???c ki???m tra.\n????? nh????n h??a ????n thu ph?? b???o hi???m, kh??ch h??ng chi?? c????n th???c hi???n c??c thao t??c sau:\n1. Truy c????p v??o C????ng th??ng tin kh??ch h??ng t???i ?????a chi????<strong>https://www.einvoice.aviva.com.vn??</strong>\n2. ????ng nh????p b???ng t??i kho???n v?? m???t kh???u ???????c g???i v??o e-mail c???a Qu?? kh??ch h??ng. Qu?? kh??ch ?????i m???t kh???u cho l???n ????ng nh???p ?????u ti??n. Tr??????ng h???p Qu?? kh??ch ch??a ????ng k?? ?????a ch??? e-mail th?? Qu?? kh??ch c???n b??? sung th??ng tin e-mail v??o M???u ????ng k?? th??ng tin v?? g???i v??? h??m th?? wecare@aviva.com.vn ho???c li??n h??? v???i c??c Trung t??m D???ch v??? Kh??ch h??ng c???a Aviva ????? ???????c h?????ng d???n.\n3. Sau khi ????ng nh????p, Qu?? kh??ch c?? th??? tra c???u H????T c???n xem. Qu?? kh??ch h??ng c?? th??? t???i H????T v??? m??y t??nh ????? l??u gi???.\nAviva tin r???ng vi???c ??p d???ng hi??nh th???c n??y se?? gi??p cho Qu?? kh??ch h??ng nh????n ???????c h??a ????n thu ph?? b???o hi???m m???t c??ch nhanh ch??ng v?? thu????n ti???n h??n trong vi???c l??u gi??? v?? tra c???u h??a ????n thu ph?? b???o hi???m.\n\nN???u c???n gi???i ????p th???c m???c ho???c h??? tr??? li??n quan ?????n H????T, Qu?? kh??ch vui l??ng li??n h??? v???i ch??ng t??i theo T???ng ????i ch??m s??c kh??ch h??ng??<strong>(024) 3724 6699</strong>, email:??<strong>wecare@aviva.com.vn</strong>??,website: https://www.aviva.com.vn ????? ???????c h?????ng d???n ho???c ?????n tr???c ti???p c??c Trung t??m D???ch v??? Kh??ch h??ng c???a Aviva ????? ???????c ph???c v???.\n\nCh??ng t??i r????t mong nh????n ???????c s??? ???ng h??? nhi???t ti??nh c???a Qu?? kh??ch h??ng v?? qua ???? chung tay c??ng v???i Aviva g??p ph????n b???o v??? m??i tr??????ng.\n\nTr??n tr???ng k??nh ch??o.","Th??ng b??o ph????ng th???c cung c???p H?? ??i???n t??? ?????n kh??ch h??ng","","publish","open","open","","thong-bao-phuong-thuc-cung-cap-hoa-don-dien-tu-den-khach-hang","","","2019-04-01 18:28:02","2019-04-01 11:28:02","","0","https://tppone.com/demo/baohiem/?p=273","0","post","","0"),
("274","1","2019-04-01 18:20:20","2019-04-01 11:20:20","","post7","","inherit","open","closed","","post7","","","2019-04-01 18:20:20","2019-04-01 11:20:20","","273","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post7.jpg","0","attachment","image/jpeg","0"),
("276","1","2019-04-01 18:21:16","2019-04-01 11:21:16","Theo quy ?????nh c???a B??? Th??ng tin v?? Truy???n th??ng, c??c nh?? m???ng di ?????ng ???? th???c hi???n chuy???n ?????i th??nh c??ng s??? ??i???n tho???i di ?????ng 11 s??? th??nh 10 s???. Do v???y, k??? t??? ng??y 15/11/2018 t???t c??? c??c th??ng b??o tin nh???n (SMS) c???a Aviva v??? ph?? b???o hi???m v?? h???p ?????ng b???o hi???m c???a Qu?? kh??ch s??? ???????c g???i ?????n s??? ??i???n tho???i di ?????ng 10 s??? ???????c chuy???n ?????i t??? s??? ??i???n tho???i 11 s??? Qu?? kh??ch ???? cung c???p.\n\nTrong tr?????ng h???p c?? thay ?????i th??ng tin li??n l???c, Qu?? kh??ch vui l??ng li??n h??? T???ng ????i Ch??m s??c Kh??ch h??ng c???a Aviva Vi???t Nam 024 3724 6699 ????? ???????c h??? tr???.","Th??ng b??o v??? vi???c thay ?????i ?????u s??? ??i???n tho???i di ?????ng","","publish","open","open","","thong-bao-ve-viec-thay-doi-dau-so-dien-thoai-di-dong","","","2019-04-01 18:21:16","2019-04-01 11:21:16","","0","https://tppone.com/demo/baohiem/?p=276","0","post","","0"),
("277","1","2019-04-01 18:21:13","2019-04-01 11:21:13","","post8","","inherit","open","closed","","post8","","","2019-04-01 18:21:13","2019-04-01 11:21:13","","276","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/post8.jpg","0","attachment","image/jpeg","0"),
("317","1","2019-04-02 22:16:12","2019-04-02 15:16:12","","rmit_university_logo.svg","","inherit","open","closed","","rmit_university_logo-svg","","","2019-04-02 22:16:12","2019-04-02 15:16:12","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/rmit_university_logo.svg.png","0","attachment","image/png","0"),
("321","1","2019-04-02 22:17:50","2019-04-02 15:17:50","","logo-vbi","","inherit","open","closed","","logo-vbi","","","2019-04-02 22:17:50","2019-04-02 15:17:50","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/logo-vbi.png","0","attachment","image/png","0"),
("325","1","2019-04-02 22:19:24","2019-04-02 15:19:24","","h???i-ch???-th???p-?????-vn","","inherit","open","closed","","hoi-chu-thap-do-vn","","","2019-04-02 22:19:24","2019-04-02 15:19:24","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/h???i-ch???-th???p-?????-vn.jpeg","0","attachment","image/jpeg","0"),
("329","1","2019-04-02 22:19:52","2019-04-02 15:19:52","","partner_2","","inherit","open","closed","","partner_2","","","2019-04-02 22:19:52","2019-04-02 15:19:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/partner_2.png","0","attachment","image/png","0"),
("333","1","2019-04-02 22:21:42","2019-04-02 15:21:42","","partner_3","","inherit","open","closed","","partner_3","","","2019-04-02 22:21:42","2019-04-02 15:21:42","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/partner_3.png","0","attachment","image/png","0"),
("336","1","2019-04-02 22:22:37","2019-04-02 15:22:37","","hello-bac-si-logo","","inherit","open","closed","","hello-bac-si-logo","","","2019-04-02 22:22:37","2019-04-02 15:22:37","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/hello-bac-si-logo.png","0","attachment","image/png","0"),
("348","1","2019-04-02 22:47:45","2019-04-02 15:47:45","[section label=\"Footer section\" bg_color=\"rgb(51, 51, 51)\" padding=\"45px\" class=\"footer-section\"]\n\n[row]\n\n[col span__sm=\"12\" visibility=\"hide-for-small\"]\n\n[ux_image id=\"356\" image_size=\"original\" width=\"13\"]\n\n[gap height=\"11px\"]\n\n\n[/col]\n[col span__sm=\"12\" visibility=\"show-for-small\"]\n\n[ux_image id=\"356\" image_size=\"original\" width=\"67\"]\n\n[gap height=\"11px\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3 class=\"title-ft\"><span style=\"font-size: 85%;\">TR??? S??? CH??NH</span></h3>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\"><strong>C??NG TY TNHH B???O HI???M<br />NH??N TH??? AVIVA VI???T NAM</strong></span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">T???ng 13, To??a nha?? Mipec Tower, s???? 229 T??y S??n, Qu????n ??????ng ??a, Ha?? N????i</span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Hotline:??<a style=\"color: #c0c0c0;\" href=\"#\">24-3724-6699</a>??</span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Tel:??<a style=\"color: #c0c0c0;\" href=\"#\">(84) 24 3771 5577</a>??</span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Fax:??<a style=\"color: #c0c0c0;\" href=\"#\">(84) 24 3724 6446</a></span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Email:??<a style=\"color: #c0c0c0;\" href=\"#\">wecare@aviva.com.vn</a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3 class=\"title-ft\"><span style=\"font-size: 85%;\">TR??? S??? CH??NH</span></h3>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\"><strong>C??NG TY TNHH B???O HI???M<br />NH??N TH??? AVIVA VI???T NAM</strong></span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">T???ng 8, To??a nha?? Mapletree Business Centre, 1060 Nguy???n V??n Linh, Ph?????ng T??n Phong, Qu???n 7, Th??nh ph??? H??? Ch?? Minh</span></p>\n<p><span style=\"font-size: 80%; color: #c0c0c0;\">Hotline:??<a style=\"color: #c0c0c0;\" href=\"#\">24-3724-6699</a>??</span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Tel:??<a style=\"color: #c0c0c0;\" href=\"#\">(84) 28 7307 5577</a>??</span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Fax:??<a style=\"color: #c0c0c0;\" href=\"#\">(84) 24 3724 6446??</a></span><br /><span style=\"font-size: 80%; color: #c0c0c0;\">Email:??<a style=\"color: #c0c0c0;\" href=\"#\">wecare@aviva.com.vn</a></span></p>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 80%;\">GI???I THI???U</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">V??? Aviva Vi???t Nam</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Tuy???n d???ng</a></span></li>\n</ul>\n<h3><span style=\"font-size: 80%;\">S???N PH???M</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">C?? nh??n</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Doanh nghi???p</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">L??i su???t c??ng b???</a></span></li>\n</ul>\n</nav>\n</nav>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 80%;\">TIN T???C - S??? KI???N</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"/category/tin-tuc/\" target=\"_self\" rel=\"noopener noreferrer\">Tin t???c - S??? ki???n</a></span></li>\n</ul>\n<h3><span style=\"font-size: 80%;\">D???CH V?????</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"/ho-tro-khach-hang/\" target=\"_self\" rel=\"noopener noreferrer\">D???ch v??? kh??ch h??ng</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">FAQs</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"/lien-he/\" target=\"_self\" rel=\"noopener noreferrer\">Li??n h???</a></span></li>\n</ul>\n</nav>\n</nav>\n\n[/col]\n[col span=\"2\" span__sm=\"6\" color=\"light\"]\n\n<h3><span style=\"font-size: 80%;\">CSR</span></h3>\n<nav class=\"footer-link\">\n<ul>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_blank\" rel=\"noopener noreferrer\">Qu??? c???ng ?????ng Aviva</a></span></li>\n<li><span style=\"font-size: 80%; color: #c0c0c0;\"><a style=\"color: #c0c0c0;\" href=\"#\" target=\"_blank\" rel=\"noopener noreferrer\">H???c b???ng Aviva</a></span></li>\n</ul>\n<nav class=\"footer-link\"></nav>\n</nav>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n\n[/row]\n<p>[lightbox id=\"dang-ky\" width=\"700px\" padding=\"0px\"][contact-form-7 id=\"1270\" title=\"????ng k?? t?? v???n\"][/lightbox]</p>\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-04-03 15:50:37","2019-04-03 08:50:37","","0","https://tppone.com/demo/baohiem/?post_type=blocks&#038;p=348","0","blocks","","0"),
("356","1","2019-04-02 22:49:31","2019-04-02 15:49:31","","logo-giuseart","","inherit","open","closed","","logo-giuseart-2","","","2019-04-02 22:49:31","2019-04-02 15:49:31","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/logo-giuseart-1.png","0","attachment","image/png","0"),
("374","1","2019-04-02 23:01:19","2019-04-02 16:01:19","","??i???u kho???n chung","","publish","closed","closed","","dieu-khoan-chung","","","2019-04-02 23:01:19","2019-04-02 16:01:19","","0","https://tppone.com/demo/baohiem/?page_id=374","0","page","","0"),
("376","1","2019-04-02 23:01:27","2019-04-02 16:01:27","","Ch??nh s??ch b???o m???t","","publish","closed","closed","","chinh-sach-bao-mat-2","","","2019-04-02 23:01:27","2019-04-02 16:01:27","","0","https://tppone.com/demo/baohiem/?page_id=376","0","page","","0"),
("378","1","2019-04-02 23:01:32","2019-04-02 16:01:32","","Ch??nh s??ch thanh to??n","","publish","closed","closed","","chinh-sach-thanh-toan","","","2019-04-02 23:01:32","2019-04-02 16:01:32","","0","https://tppone.com/demo/baohiem/?page_id=378","0","page","","0"),
("380","1","2019-04-02 23:01:48","2019-04-02 16:01:48"," ","","","publish","closed","closed","","380","","","2019-04-02 23:01:48","2019-04-02 16:01:48","","0","https://tppone.com/demo/baohiem/?p=380","1","nav_menu_item","","0"),
("381","1","2019-04-02 23:01:48","2019-04-02 16:01:48"," ","","","publish","closed","closed","","381","","","2019-04-02 23:01:48","2019-04-02 16:01:48","","0","https://tppone.com/demo/baohiem/?p=381","2","nav_menu_item","","0"),
("382","1","2019-04-02 23:01:48","2019-04-02 16:01:48"," ","","","publish","closed","closed","","382","","","2019-04-02 23:01:48","2019-04-02 16:01:48","","0","https://tppone.com/demo/baohiem/?p=382","3","nav_menu_item","","0"),
("405","1","2019-04-02 23:30:09","2019-04-02 16:30:09","","icon1","","inherit","open","closed","","icon1","","","2019-04-02 23:30:09","2019-04-02 16:30:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon1.jpg","0","attachment","image/jpeg","0"),
("406","1","2019-04-02 23:30:09","2019-04-02 16:30:09","","icon2","","inherit","open","closed","","icon2","","","2019-04-02 23:30:09","2019-04-02 16:30:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon2.jpg","0","attachment","image/jpeg","0"),
("407","1","2019-04-02 23:30:10","2019-04-02 16:30:10","","icon3","","inherit","open","closed","","icon3","","","2019-04-02 23:30:10","2019-04-02 16:30:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon3.jpg","0","attachment","image/jpeg","0"),
("408","1","2019-04-02 23:30:10","2019-04-02 16:30:10","","icon4","","inherit","open","closed","","icon4","","","2019-04-02 23:30:10","2019-04-02 16:30:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon4.jpg","0","attachment","image/jpeg","0"),
("409","1","2019-04-02 23:30:10","2019-04-02 16:30:10","","icon5","","inherit","open","closed","","icon5","","","2019-04-02 23:30:10","2019-04-02 16:30:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon5.jpg","0","attachment","image/jpeg","0"),
("411","1","2019-04-02 23:42:00","2019-04-02 16:42:00","[section label=\"N???p h??? s?? tr???c tuy???n\" bg_size=\"original\" padding=\"0px\" class=\"nop-ho-so-truc-tuyen\"]\n\n[row custom_width=\"1300px\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"419\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row custom_width=\"1300px\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h2><span style=\"color: #000000;\">?????I T?????NG ??P D???NG</span></h2>\n<p>T???t c??? c??c kh??ch h??ng hi???n h???u ??ang tham gia b???o hi???m v???i Aviva c?? y??u c???u gi???i quy???t 1 trong 4 Quy???n l???i b???o hi???m sau:</p>\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"426\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">H??? tr??? chi ph?? n???m vi???n/ ph???u thu???t</span></p>\n\n[/featured_box]\n[gap height=\"23px\"]\n\n[featured_box img=\"428\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">Th????ng t???t to??n b??? v??nh vi???n</span></p>\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[featured_box img=\"427\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">B???nh hi???m ngh??o</span></p>\n\n[/featured_box]\n[gap height=\"23px\"]\n\n[featured_box img=\"429\" img_width=\"45\" pos=\"center\"]\n\n<p style=\"text-align: center;\"><span style=\"color: #008000; font-size: 90%;\">T??? vong</span></p>\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"422\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"chung-tu\"]\n\n[col span=\"3\" span__sm=\"6\" class=\"chi-phi-nam-vien\"]\n\n<h3>H??? tr??? chi ph?? n???m vi???n/ ph???u thu???n</h3>\n<ol>\n<li>????n y??u c???u gi???i quy???t quy???n l???i b???o hi???m (theo m???u)</li>\n<li>Gi???y ra vi???n</li>\n<li>Gi???y t??? y t??? ?????i v???i Quy???n l???i H??? tr??? ph???u thu???t : Gi???y ra vi???n, Gi???y ch???ng nh???n ph???u thu???t, B???ng k?? chi ti???t vi???n ph??, S??? y b???</li>\n<li>C??c ch???ng t??? y t??? kh??c c?? li??n quan (n???u c??)</li>\n</ol>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" class=\"benh-hiem-ngheo\"]\n\n<h3>B???nh hi???m ngh??o</h3>\n<ol>\n<li>????n y??u c???u gi???i quy???t quy???n l???i b???o hi???m (theo m???u)</li>\n<li>Gi???y t??? y t???: H??? s?? kh??m b???nh, K???t qu??? gi???i ph???u b???nh ho???c k???t qu??? sinh thi???t</li>\n<li>C??c ch???ng t??? y t??? kh??c c?? li??n quan (n???u c??)</li>\n</ol>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" class=\"thuong-tat\"]\n\n<h3>Th????ng t???t to??n b??? v??nh vi??n</h3>\n<ol>\n<li>????n y??u c???u gi???i quy???t quy???n l???i b???o hi???m (theo m???u)</li>\n<li>Bi??n b???n v??? t???i n???n c???a c?? quan c?? th???m quy???n</li>\n<li>Gi???y t??? y t???: To??n b??? ch???ng t??? y t??? li??n quan ?????n tai n???n (h??? s?? kh??m b???nh gi???y ra vi???n, t??m t???t b???nh ??n ???)</li>\n<li>B???n g???c h???p ?????ng b???o hi???m</li>\n</ol>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" class=\"tu-vong\"]\n\n<h3>Tr?????ng h???p t??? vong</h3>\n\n<ol>\n<li>????n y??u c???u gi???i quy???t quy???n l???i b???o hi???m (theo m???u)</li>\n<li>Tr??ch l???c khai t???</li>\n<li>Bi??n b???n v??? t???i n???n c???a c?? quan th???m quy???n (tr?????ng h???p tai n???n)</li>\n<li>Gi???y t??? y t??? : To??n b??? ch???ng t??? y t??? li??n quan ?????n s??? ki???n t??? vong (h??? s?? kh??m b???nh, gi???y ra vi???n, t??m t???t b???nh ??n...)</li>\n<li>B???n g???c h???p ?????ng b???o hi???m</li>\n</ol>\n\n[/col]\n\n[/row]\n[gap]\n\n[row class=\"giai-quyet-quyen-loi\"]\n\n[col span__sm=\"12\"]\n\n[gap]\n\n[title style=\"center\" text=\"Gi???i quy???t quy???n l???i b???o hi???m ch??? trong 3 b?????c\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"buoc1\"]\n\n[featured_box img=\"499\" pos=\"left\"]\n\n<h3><span style=\"font-size: 170%;\">01</span></h3>\n<p>Nh???p th??ng tin y??u c???u GQQLBH, bao g???m th??ng tin v??? b??n mua b???o hi???m</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"buoc2\"]\n\n[featured_box img=\"508\" pos=\"left\"]\n\n<h3><span style=\"font-size: 170%;\">02</span></h3>\n<p>Ch???n QLBH y??u c???u, ????nh k??m c??c ???nh ch???p c??c ch???ng t??? li??n quan Qu?? kh??ch ???? chu???n b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"buoc3\"]\n\n[featured_box img=\"511\" pos=\"left\"]\n\n<h3><span style=\"font-size: 170%;\">03</span></h3>\n<p>Nh???p s??? ??i???n tho???i c???a B??n mua b???o hi???m ????? x??c nh???n vi???c n???p y??u c???u GQQLBH ???? ho??n t???t</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[gap height=\"48px\"]\n\n[row class=\"thoi-gian-phuc-dap\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"526\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[gap height=\"21px\"]\n\n<h2>TH???I GIAN PH??C ????P C???A CH??NG T??I</h2>\n<p>Ngay sau khi g???i y??u c???u GQQLBH th??nh c??ng:</p>\n<ul>\n<li>M??n h??nh s??? hi???n th??ng b??o Qu?? kh??ch ???? ho??n t???t N???p h??? s?? GQQLBH</li>\n<li>Tin nh???n (SMS) x??c nh???n t??? Aviva s??? ???????c g???i ?????n s??? ??i???n tho???i Qu?? kh??ch ???? cung c???p.</li>\n<li>?????i v???i y??u c???u Quy???n l???i H??? tr??? chi ph?? n???m vi???n/ph???u thu???t, Aviva s??? g???i th?? ph??c ????p trong v??ng 5 ng??y l??m vi???c</li>\n<li>?????i v???i y??u c???u Quy???n l???i t??? vong/Quy???n l???i B???nh hi???m ngh??o/Quy???n l???i th????ng t???t to??n b??? v??nh vi???n, Aviva s??? g???i th?? ph??c ????p trong v??ng 7 ng??y l??m vi???c.</li>\n</ul>\n\n[/col]\n[col span__sm=\"12\" align=\"center\"]\n\n[gap]\n\n[button text=\"B???t ?????u n???p h??? s??\" letter_case=\"lowercase\" radius=\"99\" icon=\"icon-user\" icon_reveal=\"true\" link=\"#dang-ky\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","N???p h??? s?? tr???c tuy???n","","publish","closed","closed","","nop-ho-so-truc-tuyen","","","2019-04-03 00:50:55","2019-04-02 17:50:55","","0","https://tppone.com/demo/baohiem/?page_id=411","0","page","","0"),
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
("541","1","2019-04-03 00:47:12","2019-04-02 17:47:12","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"544\" image_size=\"original\"]\n\n[gap]\n\n<h2 class=\"title-news\" style=\"text-align: center;\">????NG PH?? B???O HI???M ?????NH K???</h2>\n<p><strong>1.C??c th??ng b??o v??? ph?? b???o hi???m ?????nh k???</strong></p>\n<p>????? gi??p kh??ch h??ng c???p nh???t k???p th???i th??ng tin ph?? B???o hi???m ?????n h???n, c??c th??ng b??o/nh???c ph?? ???????c g???i ?????n kh??ch h??ng theo tr??nh t??? th???i gian sau:</p>\n[ux_image id=\"548\" image_size=\"original\"]\n\n<p><strong>1.1 Tin nh???n SMS</strong></p>\n<p>V???i c??c h???p ?????ng b???o hi???m ch??a ????ng ph?? ?????nh k???, kh??ch h??ng s??? nh???n ???????c t???i ??a 3 l???n th??ng b??o b???ng SMS:</p>\n<ul>\n<li>Th??ng b??o ph?? b???o hi???m ?????n h???n - 15 ng??y tr?????c ng??y ?????n h???n ????ng ph??</li>\n<li>Th??ng b??o ?????n h???n ????ng ph?? v??o ng??y ?????n h???n ????ng ph??</li>\n<li>Th??ng b??o ph?? b???o hi???m qu?? h???n l???n 1 - 30 ng??y sau ng??y ?????n h???n ????ng ????ng ph??</li>\n<li>Th??ng b??o ph?? b???o hi???m qu?? h???n l???n 2 - 45 ng??y sau ng??y ?????n h???n ????ng ????ng ph??</li>\n</ul>\n<p><strong>1.2 Th?? b??o ???????c g???i qua B??u ??i???n</strong></p>\n<p>Th?? b??o s??? ???????c g???i v??o ng??y th??? 30 sau ng??y ?????n h???n ????ng ph?? n???u Aviva ch??a nh???n ???????c ph?? b???o hi???m ?????nh k???.</p>\n<p><strong>1.3 ??i???n tho???i tr???c ti???p ?????n kh??ch h??ng</strong></p>\n<p>30 ng??y k??? t??? ng??y ?????n h???n ????ng ph?? v?? ph?? ?????nh k?? ch??a ???????c ????ng, Nh??n vi??n D???ch v??? kh??ch h??ng Aviva s??? ??i???n tho???i trao ?????i v???i B??n mua b???o hi???m ????? h??? tr??? v?? h?????ng d???n c??c k??nh ????ng ph?? ph?? h???p v?? thu???n ti???n nh???t cho kh??ch h??ng.</p>\n<p><strong>2. C??c ph????ng th???c ????ng ph?? b???o hi???m ?????nh k???</strong></p>\n<p>Hi???n nay t???i Aviva cung c???p cho Qu?? kh??ch 5 h??nh th???c ????ng ph?? b???o hi???m ?????nh k???:</p>\n<p><strong>2.1 ????ng ph?? t???i qu???y Ng??n h??ng Vietinbank</strong></p>\n<p>Qu?? kh??ch c?? th??? ????ng ti???n tr???c ti???p v??o t??i kho???n c???a Aviva t???i b???t k??? V??n ph??ng giao d???ch/Chi nh??nh n??o c???a Ng??n h??ng TMCP C??ng th????ng Vi???t Nam (Vietinbank).</p>\n<p>T??m chi nh??nh Vietinbank g???n nh???t t???i ????y:??<a href=\"https://www.vietinbank.vn/web/home/vn/contact/network/index.html\" target=\"_blank\" rel=\"noopener noreferrer\">https://www.vietinbank.vn/web/home/vn/contact/network/index.html</a></p>\n<p><strong>2.2 Chuy???n kho???n t??? t??i kho???n ng??n h??ng c???a Qu?? kh??ch ?????n t??i kho???n c???a Aviva??</strong></p>\n<p>Qu?? kh??ch c?? th??? ????ng ph?? b???o hi???m ?????nh k??? b???ng c??ch chuy???n kho???n v??o t??i kho???n Aviva, v???i th??ng tin chuy???n kho???n nh?? sau:</p>\n<ul>\n<li>T??n c??ng ty th??? h?????ng:??<strong>C??ng ty TNHH B???o hi???m Nh??n th??? Aviva Vi???t Nam</strong></li>\n<li>Ng??n h??ng, s??? t??i kho???n v?? chi nh??nh: Qu?? kh??ch vui l??ng ch???n m???t trong c??c t??i kho???n sau:</li>\n</ul>\n<p><strong>2.3 ????ng ph?? t???i c??c Trung t??m D???ch v??? Kh??ch h??ng t???i H?? N???i v?? TP H??? Ch?? Minh</strong></p>\n<p>Qu?? kh??ch c?? th??? ????ng ti???n tr???c ti???p th??ng qua ti???n m???t ho???c th??? qua POS t???i c??c trung t??m D???ch v??? Kh??ch h??ng c???a Aviva t???i H?? N???i v?? TP H??? Ch?? Minh.</p>\n<p><strong>2.4 ????ng ti???n m???t ho???c th??? qua MPOS cho Nh??n vi??n t?? v???n</strong></p>\n<p>Qu?? kh??ch c?? th??? ????ng ti???n tr???c ti???p th??ng qua ti???n m???t ho???c th??? qua MPOS cho Nh??n vi??n t?? v???n ngay t???i nh??.</p>\n<p><strong>2.5 Tr??ch n??? t??? ?????ng ?????nh k??? qua t??i kho???n th??? t??n d???ng Vietinbank</strong></p>\n<p>Qu?? kh??ch c?? th??? t??? ?????ng ?????nh k??? ????ng ph?? b???o hi???m th??ng qua th??? t??n d???ng c???a VietinBank.</p>\n<p><em>L??u ??: D???ch v??? ch??? ??p d???ng cho Kh??ch h??ng c???a Aviva ???? k?? gi???y ???y quy???n tr??ch n??? t??? ?????ng v?? c?? t??i kho???n th??? t??n d???ng qu???c t??? m??? t???i Vietinbank.</em></p>\n\n[/col]\n\n[/row]","????ng ph?? b???o hi???m","","publish","closed","closed","","dong-phi-bao-hiem","","","2019-04-03 00:50:16","2019-04-02 17:50:16","","0","https://tppone.com/demo/baohiem/?page_id=541","0","page","","0"),
("544","1","2019-04-03 00:47:42","2019-04-02 17:47:42","","bg2","","inherit","open","closed","","bg2","","","2019-04-03 00:47:42","2019-04-02 17:47:42","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg2.jpg","0","attachment","image/jpeg","0"),
("548","1","2019-04-03 00:48:54","2019-04-02 17:48:54","","bg3","","inherit","open","closed","","bg3","","","2019-04-03 00:48:54","2019-04-02 17:48:54","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg3.jpg","0","attachment","image/jpeg","0"),
("554","1","2019-04-03 00:51:22","2019-04-02 17:51:22","[row class=\"cac-mau-don\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"557\" image_size=\"original\"]\n\n[tabgroup style=\"tabs\" nav_style=\"normal\" align=\"center\"]\n\n[tab title=\"Gi???i quy???t quy???n l???i b???o hi???m\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h2 class=\"title-page\">GI???I QUY???T QUY???N L???I B???O HI???M</h2>\n<ul>\n<li>Qu?? kh??ch vui l??ng ch???n m???u bi???u ph?? h???p, ??i???n ?????y ????? th??ng tin v?? g???i v??? Aviva Vi???t Nam theo m???t trong nh???ng ph????ng th???c sau:</li>\n<li>N???p tr???c ti???p Phi???u y??u c???u t???i c??c v??n ph??ng c???a Aviva Vi???t Nam ho???c v??n ph??ng chi nh??nh Aviva Vi???t Nam g???n nh???t</li>\n<li>Th??ng qua ?????i l?? ph???c v??? h???p ?????ng b???o hi???m c???a Qu?? kh??ch</li>\n<li>G???i Phi???u y??u c???u qua B??u ??i???n Vi???t Nam (VNPost) v???: T???ng 13, T??a nh?? Mipec tower, 229 T??y S??n, Qu???n ?????ng ??a, H?? N???i</li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Bi???u m???u</th>\n            <th>T???i v???</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">T?????ng tr??nh tai n???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phi???u y??u c???u gi???i quy???t Quy???n l???i b???o hi???m</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH B???nh hi???m ngh??o</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH h??? tr??? vi???n ph?? v?? ph???u thu???t</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Ph??t An T??n D???ng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH t???m th???i</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Th????ng t???t to??n b??? v??nh vi???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH T??? vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n[tab title=\"H???p ?????ng m???i\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h1 class=\"title-page\">H???P ?????NG M???I</h1>\n<p>Qu?? kh??ch vui l??ng ch???n m???u bi???u ph?? h???p, ??i???n ?????y ????? th??ng tin v?? g???i v??? Aviva Vi???t Nam theo m???t trong nh???ng ph????ng th???c sau:</p>\n<ul>\n<li>N???p tr???c ti???p Phi???u y??u c???u t???i c??c v??n ph??ng c???a Aviva Vi???t Nam ho???c v??n ph??ng chi nh??nh Aviva Vi???t Nam g???n nh???t</li>\n<li>Th??ng qua ?????i l?? ph???c v??? h???p ?????ng b???o hi???m c???a Qu?? kh??ch</li>\n<li>G???i Phi???u y??u c???u qua B??u ??i???n Vi???t Nam (VNPost) v???: T???ng 13, T??a nh?? Mipec tower, 229 T??y S??n, Qu???n ?????ng ??a, H?? N???i</li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Bi???u m???u</th>\n            <th>T???i v???</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">T?????ng tr??nh tai n???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phi???u y??u c???u gi???i quy???t Quy???n l???i b???o hi???m</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH B???nh hi???m ngh??o</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH h??? tr??? vi???n ph?? v?? ph???u thu???t</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Ph??t An T??n D???ng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH t???m th???i</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Th????ng t???t to??n b??? v??nh vi???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH T??? vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n[tab title=\"??i???u ch???nh h???p ?????ng\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h1 class=\"title-page\">??I???U CH???NH H???P ?????NG</h1>\n<p>Qu?? kh??ch vui l??ng ch???n m???u bi???u ph?? h???p, ??i???n ?????y ????? th??ng tin v?? g???i v??? Aviva Vi???t Nam theo m???t trong nh???ng ph????ng th???c sau:</p>\n<ul>\n<li>N???p tr???c ti???p Phi???u y??u c???u t???i c??c v??n ph??ng c???a Aviva Vi???t Nam ho???c v??n ph??ng chi nh??nh Aviva Vi???t Nam g???n nh???t</li>\n<li>Th??ng qua ?????i l?? ph???c v??? h???p ?????ng b???o hi???m c???a Qu?? kh??ch</li>\n<li>G???i Phi???u y??u c???u qua B??u ??i???n Vi???t Nam (VNPost) v???: T???ng 13, T??a nh?? Mipec tower, 229 T??y S??n, Qu???n ?????ng ??a, H?? N???i</li>\n</ul>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Bi???u m???u</th>\n            <th>T???i v???</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">T?????ng tr??nh tai n???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phi???u y??u c???u gi???i quy???t Quy???n l???i b???o hi???m</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH B???nh hi???m ngh??o</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH h??? tr??? vi???n ph?? v?? ph???u thu???t</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Ph??t An T??n D???ng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH t???m th???i</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Th????ng t???t to??n b??? v??nh vi???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH T??? vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n[tab title=\"???y quy???n\"]\n\n[gap]\n\n[row_inner]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h1 class=\"title-page\">???Y QUY???N</h1>\n<p class=\"title-page\">Qu?? kh??ch vui l??ng ch???n m???u bi???u ph?? h???p, ??i???n ?????y ????? th??ng tin v?? g???i v??? Aviva Vi???t Nam theo m???t trong nh???ng ph????ng th???c sau:</p>\n<div class=\"brief\">\n<ul>\n<li>N???p tr???c ti???p Phi???u y??u c???u t???i c??c v??n ph??ng c???a Aviva Vi???t Nam ho???c v??n ph??ng chi nh??nh Aviva Vi???t Nam g???n nh???t</li>\n<li>Th??ng qua ?????i l?? ph???c v??? h???p ?????ng b???o hi???m c???a Qu?? kh??ch</li>\n<li>G???i Phi???u y??u c???u qua B??u ??i???n Vi???t Nam (VNPost) v???: T???ng 13, T??a nh?? Mipec tower, 229 T??y S??n, Qu???n ?????ng ??a, H?? N???i</li>\n</ul>\n</div>\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"577\" image_size=\"original\"]\n\n\n[/col_inner]\n\n[/row_inner]\n<div class=\"table-responsive\">\n      <table class=\"table\">\n        <thead>\n          <tr>\n            <th>STT</th>\n            <th>Bi???u m???u</th>\n            <th>T???i v???</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>1</td>\n            <td>\n              <h2>\n                <a href=\"#\">T?????ng tr??nh tai n???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>2</td>\n            <td>\n              <h2>\n                <a href=\"#\">Phi???u y??u c???u gi???i quy???t Quy???n l???i b???o hi???m</a></h2>\n            </td>\n            <td>\n              <a class=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>3</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH B???nh hi???m ngh??o</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>4</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH h??? tr??? vi???n ph?? v?? ph???u thu???t</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>5</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Ph??t An T??n D???ng</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>6</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH t???m th???i</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>7</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH Th????ng t???t to??n b??? v??nh vi???n</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n          <tr>\n            <td>8</td>\n            <td>\n              <h2>\n                <a href=\"#\">H?????ng d???n h??? s?? GQQLBH T??? vong</a></h2>\n            </td>\n            <td>\n              <a class=\"download\" href=\"#\">\n                <i class=\"material-icons\">Download</i>\n              </a>\n            </td>\n          </tr>\n        </tbody>\n      </table>\n    </div>\n\n[/tab]\n\n[/tabgroup]\n\n[/col]\n\n[/row]","M???u ????n th??ng d???ng","","publish","closed","closed","","mau-don-thong-dung","","","2019-04-03 01:11:06","2019-04-02 18:11:06","","0","https://tppone.com/demo/baohiem/?page_id=554","0","page","","0"),
("557","1","2019-04-03 00:52:03","2019-04-02 17:52:03","","bg4","","inherit","open","closed","","bg4","","","2019-04-03 00:52:03","2019-04-02 17:52:03","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bg4.jpg","0","attachment","image/jpeg","0"),
("577","1","2019-04-03 01:00:06","2019-04-02 18:00:06","","fb_logo","","inherit","open","closed","","fb_logo","","","2019-04-03 01:00:06","2019-04-02 18:00:06","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/fb_logo.jpg","0","attachment","image/jpeg","0"),
("594","1","2019-04-03 01:11:59","2019-04-02 18:11:59","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"597\" image_size=\"original\"]\n\n[gap]\n\n[title style=\"center\" text=\"LI??N H???\" tag_name=\"h2\"]\n\n<p style=\"text-align: center;\">Ch??ng t??i r???t mong mu???n nh???n ???????c nh???ng ?? ki???n ????ng g??p c???a c??c b???n<br />Vui l??ng li??n h??? v???i ch??ng t??i qua c??c th??ng tin b??n d?????i.</p>\n\n[/col]\n\n[/row]\n[row style=\"collapse\" class=\"lien-he-section\"]\n\n[col span=\"4\" span__sm=\"12\" class=\"cot1\"]\n\n<div class=\"contact-title\">\n<h3>Th??ng tin li??n h???</h3>\n</div>\n<h4 class=\"lien-he1\">CHI NH??NH (HCM)</h4>\n<ul>\n<li class=\"lien-he1\"><span style=\"font-size: 95%;\">T???ng 8, To??a nha?? Mapletree Business Centre, 1060 Nguy???n V??n Linh, Ph?????ng T??n Phong, Qu???n 7, Th??nh ph??? H??? Ch?? Minh</span></li>\n<li class=\"lien-he1\"><span style=\"font-size: 95%;\">028 7307 5577</span></li>\n<li class=\"lien-he1\"><span style=\"font-size: 95%;\">wecare@aviva.com.vn</span></li>\n</ul>\n<h4 class=\"lien-he2\">V??N PH??NG KINH DOANH - HCM</h4>\n<ul>\n<li class=\"lien-he1\">\n<div><span style=\"font-size: 95%;\">72 L?? Th??nh T??n, B???n Ngh??, Qu???n 1, H??? Ch?? Minh, Vi???t Nam</span></div>\n</li>\n<li class=\"lien-he1\">\n<div><span style=\"font-size: 95%;\">028 7302 5577</span></div>\n</li>\n<li class=\"lien-he1\">\n<div><span style=\"font-size: 95%;\">wecare@aviva.com.vn</span></div>\n</li>\n</ul>\n\n[/col]\n[col span=\"8\" span__sm=\"12\" padding=\"0px 20px 0px 20px\"]\n\n[contact-form-7 id=\"1270\"]\n\n\n[/col]\n\n[/row]","Li??n h???","","publish","closed","closed","","lien-he","","","2019-04-03 15:24:03","2019-04-03 08:24:03","","0","https://tppone.com/demo/baohiem/?page_id=594","0","page","","0"),
("597","1","2019-04-03 09:23:28","2019-04-03 02:23:28","","lienhe","","inherit","open","closed","","lienhe","","","2019-04-03 09:23:28","2019-04-03 02:23:28","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/lienhe.jpg","0","attachment","image/jpeg","0"),
("623","1","2019-04-03 09:38:44","2019-04-03 02:38:44","","maps","","inherit","open","closed","","maps","","","2019-04-03 09:38:44","2019-04-03 02:38:44","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/maps.jpg","0","attachment","image/jpeg","0"),
("636","1","2019-04-03 09:47:59","2019-04-03 02:47:59","","san-phan","","inherit","open","closed","","san-phan","","","2019-04-03 09:47:59","2019-04-03 02:47:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/san-phan.jpg","0","attachment","image/jpeg","0"),
("674","1","2019-04-03 10:02:49","2019-04-03 03:02:49","","1234556","","inherit","open","closed","","1234556","","","2019-04-03 10:02:49","2019-04-03 03:02:49","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/1234556.jpg","0","attachment","image/jpeg","0"),
("681","1","2019-04-03 10:05:52","2019-04-03 03:05:52","","img2","","inherit","open","closed","","img2","","","2019-04-03 10:05:52","2019-04-03 03:05:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img2.jpg","0","attachment","image/jpeg","0"),
("684","1","2019-04-03 10:06:55","2019-04-03 03:06:55","","img3","","inherit","open","closed","","img3","","","2019-04-03 10:06:55","2019-04-03 03:06:55","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img3.jpg","0","attachment","image/jpeg","0"),
("687","1","2019-04-03 10:08:26","2019-04-03 03:08:26","","img4","","inherit","open","closed","","img4","","","2019-04-03 10:08:26","2019-04-03 03:08:26","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/img4.jpg","0","attachment","image/jpeg","0"),
("694","1","2019-04-03 10:11:12","2019-04-03 03:11:12","","DOANH-NGHI???P","","inherit","open","closed","","doanh-nghiep-2","","","2019-04-03 10:11:12","2019-04-03 03:11:12","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/DOANH-NGHI???P.jpg","0","attachment","image/jpeg","0"),
("698","1","2019-04-03 10:12:11","2019-04-03 03:12:11","","DOANH-NGHIEP-1","","inherit","open","closed","","doanh-nghiep-1","","","2019-04-03 10:12:11","2019-04-03 03:12:11","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/DOANH-NGHIEP-1.jpg","0","attachment","image/jpeg","0"),
("701","1","2019-04-03 10:13:19","2019-04-03 03:13:19","","DOANH-NGHIEP-2","","inherit","open","closed","","doanh-nghiep-2-2","","","2019-04-03 10:13:19","2019-04-03 03:13:19","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/DOANH-NGHIEP-2.jpg","0","attachment","image/jpeg","0"),
("723","1","2019-04-03 10:20:39","2019-04-03 03:20:39","","lscb","","inherit","open","closed","","lscb","","","2019-04-03 10:20:39","2019-04-03 03:20:39","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/lscb.png","0","attachment","image/png","0"),
("775","1","2019-04-03 10:49:40","2019-04-03 03:49:40","","quote_icon (1)","","inherit","open","closed","","quote_icon-1","","","2019-04-03 10:49:40","2019-04-03 03:49:40","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/quote_icon-1.png","0","attachment","image/png","0"),
("781","1","2019-04-03 10:53:24","2019-04-03 03:53:24","","ph??t-an-b??nh","","inherit","open","closed","","phat-an-binh","","","2019-04-03 10:53:24","2019-04-03 03:53:24","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ph??t-an-b??nh.jpg","0","attachment","image/jpeg","0"),
("785","1","2019-04-03 10:54:14","2019-04-03 03:54:14","","ph??t-b??nh-an","","inherit","open","closed","","phat-binh-an","","","2019-04-03 10:54:14","2019-04-03 03:54:14","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/ph??t-b??nh-an.jpg","0","attachment","image/jpeg","0"),
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
("985","1","2019-04-03 13:16:59","2019-04-03 06:16:59","","chien-l????c_phan-khuc-thi-truong-(100x100)","","inherit","open","closed","","chien-luoc_phan-khuc-thi-truong-100x100","","","2019-04-03 13:16:59","2019-04-03 06:16:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/chien-l????c_phan-khuc-thi-truong-100x100.png","0","attachment","image/png","0"),
("986","1","2019-04-03 13:17:10","2019-04-03 06:17:10","","icon_33-trieu-kh","","inherit","open","closed","","icon_33-trieu-kh","","","2019-04-03 13:17:10","2019-04-03 06:17:10","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon_33-trieu-kh.png","0","attachment","image/png","0"),
("987","1","2019-04-03 13:17:20","2019-04-03 06:17:20","","icon_1-4-anh","","inherit","open","closed","","icon_1-4-anh","","","2019-04-03 13:17:20","2019-04-03 06:17:20","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/icon_1-4-anh.png","0","attachment","image/png","0"),
("1020","1","2019-04-03 13:31:11","2019-04-03 06:31:11","","S???n ph???m","","publish","closed","closed","","san-pham","","","2019-04-03 13:31:11","2019-04-03 06:31:11","","22","https://tppone.com/demo/baohiem/?p=1020","4","nav_menu_item","","0"),
("1046","1","2019-04-03 13:41:54","2019-04-03 06:41:54","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"40\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T AN B??NH</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","B???o hi???m Ph??t An B??nh","","publish","closed","closed","","bao-hiem-phat-an-binh","","","2019-04-03 14:38:19","2019-04-03 07:38:19","","0","https://tppone.com/demo/baohiem/?page_id=1046","0","page","","0"),
("1103","1","2019-04-03 14:14:47","2019-04-03 07:14:47","","kh","","inherit","open","closed","","kh","","","2019-04-03 14:14:47","2019-04-03 07:14:47","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/kh.jpg","0","attachment","image/jpeg","0"),
("1111","1","2019-04-03 14:18:19","2019-04-03 07:18:19","","minh-hoa-bao--hiem","","inherit","open","closed","","minh-hoa-bao-hiem","","","2019-04-03 14:18:19","2019-04-03 07:18:19","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/minh-hoa-bao-hiem.jpg","0","attachment","image/jpeg","0"),
("1117","1","2019-04-03 14:21:58","2019-04-03 07:21:58","","mi???n-????ng-ph??-b???o-hi???m","","inherit","open","closed","","mien-dong-phi-bao-hiem","","","2019-04-03 14:21:58","2019-04-03 07:21:58","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/mi???n-????ng-ph??-b???o-hi???m.png","0","attachment","image/png","0"),
("1120","1","2019-04-03 14:22:41","2019-04-03 07:22:41","","mi???n-????ng-ph??-b???o-hi???m-do-b???nh-hi???m-ngh??o","","inherit","open","closed","","mien-dong-phi-bao-hiem-do-benh-hiem-ngheo","","","2019-04-03 14:22:41","2019-04-03 07:22:41","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/mi???n-????ng-ph??-b???o-hi???m-do-b???nh-hi???m-ngh??o.png","0","attachment","image/png","0"),
("1122","1","2019-04-03 14:23:09","2019-04-03 07:23:09","","b???o-hi???m-bhn-tr???-em","","inherit","open","closed","","bao-hiem-bhn-tre-em","","","2019-04-03 14:23:09","2019-04-03 07:23:09","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/b???o-hi???m-bhn-tr???-em.png","0","attachment","image/png","0"),
("1124","1","2019-04-03 14:23:28","2019-04-03 07:23:28","","b???o-hi???m-bhn-m???-r???ng-2015","","inherit","open","closed","","bao-hiem-bhn-mo-rong-2015","","","2019-04-03 14:23:28","2019-04-03 07:23:28","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/b???o-hi???m-bhn-m???-r???ng-2015.png","0","attachment","image/png","0"),
("1126","1","2019-04-03 14:24:07","2019-04-03 07:24:07","","bh-h???-tr???-chi-ph??-n???m-vi???n","","inherit","open","closed","","bh-ho-tro-chi-phi-nam-vien","","","2019-04-03 14:24:07","2019-04-03 07:24:07","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bh-h???-tr???-chi-ph??-n???m-vi???n.png","0","attachment","image/png","0"),
("1129","1","2019-04-03 14:24:36","2019-04-03 07:24:36","","bh-h???-tr???-chi-ph??-ph???u-thu???t","","inherit","open","closed","","bh-ho-tro-chi-phi-phau-thuat","","","2019-04-03 14:24:36","2019-04-03 07:24:36","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bh-h???-tr???-chi-ph??-ph???u-thu???t.png","0","attachment","image/png","0"),
("1131","1","2019-04-03 14:24:52","2019-04-03 07:24:52","","bh-t???-k???","","inherit","open","closed","","bh-tu-ky","","","2019-04-03 14:24:52","2019-04-03 07:24:52","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/bh-t???-k???.png","0","attachment","image/png","0"),
("1165","1","2019-04-03 14:37:28","2019-04-03 07:37:28","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"597\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"5\" position_y=\"30\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T NGHI???P AN T??M</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Ph??t nghi???p an t??m","","publish","closed","closed","","phat-nghiep-an-tam","","","2019-04-03 14:37:56","2019-04-03 07:37:56","","0","https://tppone.com/demo/baohiem/?page_id=1165","0","page","","0"),
("1178","1","2019-04-03 14:40:58","2019-04-03 07:40:58","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T L???C ????NG KHOA</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Ph??t l???c ????ng khoa","","publish","closed","closed","","phat-loc-dang-khoa-2","","","2019-04-03 14:41:27","2019-04-03 07:41:27","","0","https://tppone.com/demo/baohiem/?page_id=1178","0","page","","0"),
("1182","1","2019-04-03 14:41:51","2019-04-03 07:41:51","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T L???C ????NG KHOA</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Ph??t l???c kh??i nguy??n","","publish","closed","closed","","phat-loc-khoi-nguyen-2","","","2019-04-03 14:41:51","2019-04-03 07:41:51","","0","https://tppone.com/demo/baohiem/?page_id=1182","0","page","","0"),
("1186","1","2019-04-03 14:43:46","2019-04-03 07:43:46","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"636\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T B???O AN</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Ph??t b???o an","","publish","closed","closed","","phat-bao-an","","","2019-04-03 14:44:21","2019-04-03 07:44:21","","0","https://tppone.com/demo/baohiem/?page_id=1186","0","page","","0"),
("1190","1","2019-04-03 14:44:38","2019-04-03 07:44:38","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">??I???M T???A CU???C S???NG</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","??i???m t???a cu???c s???ng","","publish","closed","closed","","diem-tua-cuoc-song","","","2019-04-03 14:45:09","2019-04-03 07:45:09","","0","https://tppone.com/demo/baohiem/?page_id=1190","0","page","","0"),
("1194","1","2019-04-03 14:45:30","2019-04-03 07:45:30","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"44\" width__sm=\"60\" position_x=\"10\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">S???NG CH??? ?????NG</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","S???ng ch??? ?????ng","","publish","closed","closed","","song-chu-dong","","","2019-04-03 14:45:46","2019-04-03 07:45:46","","0","https://tppone.com/demo/baohiem/?page_id=1194","0","page","","0"),
("1202","1","2019-04-03 14:47:50","2019-04-03 07:47:50","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"48\" width__sm=\"60\" position_x=\"5\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T NGHI???P B???O NH??N</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Ph??t nghi???p b???o nh??n","","publish","closed","closed","","phat-nghiep-bao-nhan-2","","","2019-04-03 14:48:18","2019-04-03 07:48:18","","0","https://tppone.com/demo/baohiem/?page_id=1202","0","page","","0"),
("1208","1","2019-04-03 14:49:08","2019-04-03 07:49:08","[row class=\"single-bao-hiem\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"942\" bg_size=\"original\"]\n\n[text_box width=\"53\" width__sm=\"60\" position_x=\"5\" position_y=\"50\"]\n<h2 class=\"uppercase\"><span style=\"font-size: 85%; color: #003366;\">PH??T NGHI???P H??NG V?????NG</span></h2>\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"L?? do ch???n g??i b???o hi???m n??y\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n<h3>Gi???i ph??p b???o v???, ti???t ki???m v?? ?????u t?? to??n di???n</h3>\n<span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i.</span>\n\n<span style=\"font-size: 95%;\">M???i b?????c ch??n trong ch???ng ???????ng ???y s??? lu??n c?? ng?????i b???n ?????ng h??nh t???n t??m v???i nh???ng gi???i ph??p t??i ch??nh th??ng minh, linh ho???t gi??p b???n t???o d???ng m???t ??i???m t???a v???ng ch???c cho nh???ng m???c s??? ki???n quan tr???ng</span>\n\n<span style=\"font-size: 95%;\">Ph??t L???c H??ng Gia l?? m???t trong nh???ng ??i???m t???a t??i ch??nh quan tr???ng, ??em l???i s??? b??nh y??n trong cu???c s???ng b???ng m???t k??? ho???chB???o v??? ??? Ti???t ki???m- ?????u ??m???t c??ch to??n di???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"818\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"983\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">B???o v??? to??n di???n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">M???c ph?? h???p l??,??S??? ti???n b???o hi???m cao</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"985\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">?????u t?? an to??n</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">Quy???n l???i h?????ng l??i t??? k???t qu??? c???a Qu??? Li??n k???t chung</span></div>\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"986\" img_width=\"80\" pos=\"center\"]\n<h4 style=\"text-align: center;\">Gi???i ph??p linh ho???t</h4>\n<div style=\"text-align: center;\"><span style=\"font-size: 95%;\">T??y ch???n thay ?????i linh ho???t v??? k??? ho???ch b???o v???, s??? ti???n b???o hi???m, ph?? b???o hi???m...ph?? h???p v???i nhu c???u</span></div>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row col_bg=\"rgb(225, 250, 255)\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"1103\" image_size=\"original\"]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" padding=\"55px 43px 60px 34px\"]\n<h2>TH??NG TIN CHUNG</h2>\n<ul>\n 	<li><span style=\"font-size: 95%;\">Tu???i tham gia: 6-70 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">Tu???i ????o h???n: 80 tu???i</span></li>\n 	<li><span style=\"font-size: 95%;\">??i???u kho???n s???n ph???m: Vui l??ng tham kh???o <a href=\"#\">t???i ????y</a></span></li>\n 	<li><span style=\"font-size: 95%;\">B???ng k??? ho???ch t??i ch??nh: Vui l??ng tham kh???o<a href=\"#\"> t???i ????y</a></span></li>\n</ul>\n[/col]\n\n[/row]\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n<h2>QUY???N L???I B???O HI???M</h2>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V???</strong></span></h3>\n<span style=\"font-size: 95%;\">Quy???n l???i b???o v??? d??nh cho b???n ?????n khi 80 tu???i. C??ng m???c ph?? ????ng, b???n c?? 2 l???a ch???n K??? ho???ch b???o v??? c?? b???n v?? K??? ho???ch B???o v??? n??ng cao.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i c?? b???n</strong>: Quy???n l???i b???o v??? b???ng gi?? tr??? l???n h??n gi???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng.</span>\n\n<span style=\"font-size: 95%;\"><strong>Quy???n l???i n??ng cao:</strong>??Quy???n l???i b???o v??? b???ng t???ng c???a S??? ti???n b???o hi???m v?? Gi?? tr??? T??i kho???n H???p ?????ng</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I B???O V??? GIA T??NG TR?????C R???I RO TAI N???N</strong></span></h3>\n<span style=\"font-size: 95%;\">Ngo??i Quy???n l???i b???o hi???m t??? vong, ???????c chi tr??? th??m t???i 100% STBH ?????i v???i r???i ro t??? vong do tai n???n th??ng th?????ng v?? 200% STBH ?????i v???i r???i ro t??? vong do tai n???n giao th??ng c??ng c???ng.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I H?????NG L??I T??? K???T QU??? C???A QU??? LI??N K???T CHUNG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c h?????ng m???c L??i su???t t??ch l??y cho gi?? tr??? t??i kho???n h???p ?????ng h???p d???n, c?? th??? l??n t???i 8%. L??i su???t t??ch l??y cam k???t l?? 4% trong 5 n??m ?????u v?? 3% cho c??c n??m ti???p theo cho t???i khi h???p ?????ng ????o h???n.</span>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"821\" image_size=\"original\" height=\"43%\"]\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I R??T TI???N T??? GI?? TR??? T??I KHO???N H???P ?????NG</strong></span></h3>\n<span style=\"font-size: 95%;\">???????c r??t ti???n t??? Gi?? tr??? t??i kho???n h???p ?????ng ????? ????p ???ng nhu c???u chi ti??u b???t c??? l??c n??o k??? t??? n??m th??? 3 tr??? ??i n???u s??? ti???n r??t kh??ng v?????t qu?? 80% Gi?? tr??? ho??n l???i.</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ???????C THAY ?????I S??? TI???N B???O HI???M V?? PH?? B???O HI???M ????NG TH??M</strong></span></h3>\n<span style=\"font-size: 95%;\">T??y v??o k??? ho???ch t??i ch??nh c???a b???n th??n??</span>\n<h3><span style=\"font-size: 90%;\"><strong>QUY???N L???I ????O H???N</strong></span></h3>\n<span style=\"font-size: 95%;\">V??o ng??y ????o h???n h???p ?????ng, ???????c chi tr??? to??n b??? Gi?? tr??? T??i kho???n h???p ?????ng.??</span>\n\n[/col]\n\n[/row]\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"MINH H???A QUY???N L???I\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[ux_image id=\"1111\" image_size=\"original\"]\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c??C S???N PH???M B??? TR???\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1117\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ph?? ????ng b???o hi???m</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1120\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">Mi???n ????ng ph?? b???o hi???m do b???nh hi???m ngh??o</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1122\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o d??nh cho tr??? em</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1124\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m b???nh hi???m ngh??o m??? r???ng 2015</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1126\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? ph???u thu???t</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1129\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m h??? tr??? chi ph?? n???m vi???n</p>\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"1131\" img_width=\"114\" pos=\"center\"]\n<p style=\"text-align: center;\">B???o hi???m t??? k???</p>\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"co-the-ban-quan-tam\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"c?? TH??? B???N QUAN T??M\" tag_name=\"h2\"]\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n[row_inner]\n\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"684\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 01</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"687\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 02</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"681\" image_size=\"original\"]\n<h3 style=\"text-align: center;\">G??i b???o hi???m 03</h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Gi???i ph??p b???o v??? to??n di???n kh??ng nh???ng cho b???n th??n m?? c??n cho c??c th??nh vi??n kh??c trong gia ????nh</span></p>\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]","Ph??t nghi???p h??ng v?????ng","","publish","closed","closed","","phat-nghiep-hung-vuong","","","2019-04-03 14:49:29","2019-04-03 07:49:29","","0","https://tppone.com/demo/baohiem/?page_id=1208","0","page","","0"),
("1222","1","2019-04-03 14:52:19","2019-04-03 07:52:19","","htcm_1","","inherit","open","closed","","htcm_1","","","2019-04-03 14:52:19","2019-04-03 07:52:19","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_1.png","0","attachment","image/png","0"),
("1226","1","2019-04-03 14:52:59","2019-04-03 07:52:59","","htcm_2","","inherit","open","closed","","htcm_2","","","2019-04-03 14:52:59","2019-04-03 07:52:59","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_2.png","0","attachment","image/png","0"),
("1229","1","2019-04-03 14:53:46","2019-04-03 07:53:46","","htcm_3","","inherit","open","closed","","htcm_3","","","2019-04-03 14:53:46","2019-04-03 07:53:46","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_3.png","0","attachment","image/png","0"),
("1235","1","2019-04-03 14:54:35","2019-04-03 07:54:35","","htcm_4","","inherit","open","closed","","htcm_4","","","2019-04-03 14:54:35","2019-04-03 07:54:35","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_4.png","0","attachment","image/png","0"),
("1240","1","2019-04-03 14:55:11","2019-04-03 07:55:11","","htcm_5","","inherit","open","closed","","htcm_5","","","2019-04-03 14:55:11","2019-04-03 07:55:11","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_5.png","0","attachment","image/png","0"),
("1246","1","2019-04-03 14:56:36","2019-04-03 07:56:36","","htcm_6","","inherit","open","closed","","htcm_6","","","2019-04-03 14:56:36","2019-04-03 07:56:36","","0","https://tppone.com/demo/baohiem/wp-content/uploads/2019/04/htcm_6.png","0","attachment","image/png","0"),
("1270","1","2019-04-03 15:11:50","2019-04-03 08:11:50","<div class=\"form-tu-van\">\n<h3>????ng k?? mua b???o hi???m</h3>\n<h4>1. Th??ng tin c???a b???n</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n[text* text-183 placeholder \"H??? t??n c???a b???n...\"]\n[text text-145 placeholder \"Khu v???c\"]\n[select* menu-715 \"Gi???i t??nh\" \"Nam\" \"N???\"]\n</div>\n<div class=\"right\">\n[tel* tel-434 placeholder \"S??? ??i???n tho???i...\"]\n[date date-255 placeholder \"Ng??y sinh\"]\n</div>\n</div>\n<h4>2. Nhu c???u c???a b???n</h4>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>D??nh cho c?? nh??n</label>\n[checkbox checkbox-345 \"T???o d???ng t??i s???n v?? ?????u t?? hi???u qu???\" \"T??ch l??y cho t????ng lai h???c v???n c???a con\" \"B???o v??? tr?????c nh???ng r???i ro trong cu???c s???ng\" \"Ch??m s??c s???c kh???e\"]\n</div>\n<div class=\"right\">\n<label>D??nh cho doanh nghi???p</label>\n[checkbox checkbox-355 \"B???o v??? tr?????c nh???ng r???i ro trong cu???c s???ng\" \"Ch??m s??c s???c kh???e\"]\n</div>\n</div>\n[submit \"G???i y??u c???u\"]\n</div>\n1\nM???u web b???o hi???m - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u web b???o hi???m - Thi???t k??? website Webdemo.com <wordpress@baohiem.Webdemo.com>\nwebdemo@gmail.com\nC?? m???t ng?????i y??u c???u t?? v???n mua b???o hi???m qua website:\n- H??? v?? t??n: [text-183]\n- Khu v???c: [text-145]\n- Gi???i t??nh: [menu-715]\n- S??? ??i???n tho???i: [tel-434]\n- Ng??y sinh: [date-255]\n- Kh??ch h??ng c?? nh??n: [checkbox-345]\n- Kh??ch h??ng doanh nghi???p: [checkbox-355]\n\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web b???o hi???m - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/baohiem)\n\n\n\n\n\nM???u web b???o hi???m - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u web b???o hi???m - Thi???t k??? website Webdemo.com <wordpress@baohiem.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u web b???o hi???m - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/baohiem)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","????ng k?? t?? v???n","","publish","closed","closed","","form-lien-he-1","","","2019-04-03 15:30:38","2019-04-03 08:30:38","","0","https://tppone.com/demo/baohiem/?post_type=wpcf7_contact_form&#038;p=1270","0","wpcf7_contact_form","","0"),
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
("1397","1","2019-04-03 17:56:09","2019-04-03 10:56:09","[row class=\"banner-row\"]\n\n[col span__sm=\"12\"]\n\n[ux_banner bg=\"694\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.17)\"]\n\n[text_box width=\"36\" position_x=\"15\" position_y=\"50\"]\n\n<h3 class=\"uppercase\"><strong>DOANH NGHI???P</strong></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n[row style=\"small\" class=\"row-tieu-de doanh-nghiep\"]\n\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"499\" img_width=\"30\" pos=\"left\" link=\"/san-pham/ca-nhan/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">C?? nh??n</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\" class=\"cot2\"]\n\n[featured_box img=\"508\" img_width=\"30\" pos=\"left\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">Doanh nghi???p</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n[featured_box img=\"511\" img_width=\"30\" pos=\"left\" link=\"/lai-suat-cong-bo/\" class=\"ca-nhan\"]\n\n<p style=\"text-align: left;\">L??i su???t c??ng b???</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"2\" span__sm=\"6\"]\n\n\n[/col]\n\n[/row]\n[gap]\n\n[row label=\"ROW-n???i dung\" class=\"row-noi-dung\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"698\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"B???o v??? ng?????i lao ?????ng tr?????c c??c r???i ro trong cu???c s???ng\" href=\"/doanh-nghiep/bao-ve-nguoi-lao-dong-truoc-rui-ro-lao-dong/\" target=\"_self\" rel=\"noopener noreferrer\">B???O V??? NG?????I LAO ?????NG TR?????C C??C R???I RO TRONG CU???C S???NG</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">N???u v?? cu???c ?????i l?? m???t h??nh tr??nh c???a nh???ng s??? ki???n n???i ti???p, th?? m???i k??? ho???ch ???????c hi???n th???c h??a l?? m???t d???u m???c v?? c??ng quan tr???ng trong cu???c ?????i con ng?????i. V?? hi???u r???ng ch??? khi an t??m v??? s???c kho??? v?? t??i ch??nh, bi???t y??u th????ng b???n th??n th?? ta m???i c?? th??? b??nh t??m ch??m lo cho gia ????nh v?? c???ng hi???n cho s??? nghi???p, Aviva mang ?????n nh???ng s???n ph???m b???o v??? v?? ?????u t?? gi??p b???n c?? ??i???m t???a t??i ch??nh v???ng v??ng v?? t???n h?????ng cu???c s???ng b??nh an b??n nh???ng ng?????i th??n y??u b???ng gi???i ph??p??<strong>B???o v??? ??? Ti???t ki???m- ?????u t??</strong>to??n di???n. </span><a title=\"Ph??t Nghi???p B???o Nh??n\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Ph??t Nghi???p B???o Nh??n</a></p>\n</div>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"701\" image_size=\"original\"]\n\n<h3 class=\"cate-name\"><a title=\"Chu to??n c??c gi???i ph??p t??i ch??nh v?? ?????u t?? doanh nghi???p\" href=\"/san-pham/doanh-nghiep/giai-phap-dau-tu-tai-chinh-cho-doanh-nghiep/\" target=\"_self\" rel=\"noopener noreferrer\">CHU TO??N C??C GI???I PH??P T??I CH??NH V?? ?????U T?? DOANH NGHI???P</a></h3>\n<div class=\"desc\">\n<p><span style=\"font-size: 95%;\">?????i v???i cha m???, con c??i lu??n l?? m??n qu?? tuy???t v???i nh???t m?? t???o h??a ???? d??nh t???ng. Kho???nh kh???c ????n nh???n sinh linh nh??? b?? ?????n v???i th??? gi???i s??? kh??ng bao gi??? c?? th??? qu??n v???i m???i ng?????i. V?? k??? t??? gi??y ph??t ????, cha m??? b???t ?????u b?????c v??o m???t h??nh tr??nh ?????y m???i m??? v?? th?? v??? - m???t h??nh tr??nh ??ong ?????y nh???ng y??u th????ng. Th???u hi???u v?? tr??n tr???ng nh???ng gi?? tr??? nh??n v??n ????, Aviva s???n l??ng chia s??? c??ng b???n m???t k??? ho???ch b???o v??? v?? t??i ch??nh v???ng v??ng nh???t cho ?????a con th??n y??u c???a m??nh tr??n t???ng ch???ng ???????ng c???a h??nh tr??nh ki???n t???o nh??n c??ch v?? m???t t????ng lai t????i s??ng. <a title=\"Ph??t Nghi???p H??ng V?????ng\" href=\"#\" target=\"_self\" rel=\"noopener noreferrer\">Ph??t Nghi???p H??ng V?????ng</a></span></p>\n</div>\n\n[/col]\n\n[/row]","Doanh nghi???p","","inherit","closed","closed","","26-revision-v1","","","2019-04-03 17:56:09","2019-04-03 10:56:09","","26","https://tppone.com/demo/baohiem/26-revision-v1/","0","revision","","0"),
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
("1","Tin t???c","tin-tuc","0"),
("2","Main-menu","main-menu","0"),
("3","Tuy???n d???ng","tuyen-dung","0"),
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
("26","1","wp_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:596:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 99%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;settings-updated=true&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:892:\"Ch??ng t??i nh???n th???y b???n ???? s??? d???ng Yoast SEO ???????c m???t th???i gian; ch??ng t??i mong b???n y??u th??ch n??! Ch??ng t??i s??? v?? c??ng c???m ?????ng n???u b???n c?? th??? <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=32\">cho ch??ng t??i m???t ????nh gi?? 5 sao tr??n WordPress.org</a>!\n\nN???u b???n g???p ph???i s??? c???, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=32\">vui l??ng g???i b??o c??o l???i</a> v?? ch??ng t??i s??? c??? h???t s???c ????? gi??p b???n.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/baohiem/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Kh??ng hi???n th??? nh???ng th??ng b??o n??y n???a</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:242:\"?????ng b??? qua l???i m??y t??m ki???m thu th???p th??ng tin trang web c???a b???n:  <a href=\"https://bizhostvn.com/w/baohiem/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> k???t n???i v???i Google Search Console ??? ????y </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:259:\"<strong>L???i SEO nghi??m tr???ng: B???n ??ang ch???n truy c???p t???i robots.</strong> B???n ph???i <a href=\"https://bizhostvn.com/w/baohiem/wp-admin/options-reading.php\">t???i m???c ?????c</a> v?? b??? ????nh d???u T????ng t??c v???i c??ng c??? t??m ki???m.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO x??c ?????nh b???n ??ang s??? d???ng phi??n b???n 9.1 c???a Yoast SEO Premium, h??y c???p nh???t l??n phi??n b???n m???i nh???t.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
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