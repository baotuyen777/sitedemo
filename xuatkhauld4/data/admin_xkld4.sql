SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w1`
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
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/xkld4\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1553763772,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960719,\"initial_activation_timestamp\":1553763783,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1556976774,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=1102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/xkld4","yes"),
("2","home","https://bizhostvn.com/w/xkld4","yes"),
("3","blogname","xkld4","yes"),
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
("33","active_plugins","a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:25:\"menu-icons/menu-icons.php\";i:5;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:109:\"/home/tppone/domains/tppone.com/public_html/demo/xkld4/wp-content/plugins/ty-gia-gia-vang/ty-gia-gia-vang.php\";i:1;s:100:\"/home/tppone/domains/tppone.com/public_html/demo/xkld4/wp-content/plugins/ty-gia-gia-vang/readme.txt\";i:2;s:99:\"/home/tppone/domains/tppone.com/public_html/demo/xkld4/wp-content/plugins/ty-gia-gia-vang/index.php\";i:4;s:108:\"/home/tppone/domains/tppone.com/public_html/demo/xkld4/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:5;s:87:\"/home/tppone/domains/tppone.com/public_html/demo/xkld4/wp-content/themes/xkld/style.css\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","xkld","yes"),
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
("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:13:\"Chuy??n m???c\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:6:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:25:\"H??? tr??? tr???c tuy???n\";s:4:\"text\";s:48:\"<div class=\"ho-tro-truc-tuyen\">094 687 321</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:24:\"????ng k?? ???ng tuy???n\";s:4:\"text\";s:58:\"[contact-form-7 id=\"348\" title=\"????ng k?? ???ng tuy???n\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:5:\"VIDEO\";s:4:\"text\";s:320:\"<a href=\"https://www.youtube.com/watch?v=LZvw9-i12bE\" target=\"blank\"><img class=\"alignnone wp-image-824 size-full\" src=\"https://bizhostvn.com/w/xkld4/wp-content/uploads/2019/03/avatar-youtube.jpg\" alt=\"\" width=\"248\" height=\"151\" /></a>\n<h4>??i???u ki???n s???c kh???e ????? ??i xu???t kh???u lao ?????ng ????i Loan</h4>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:18:\"T??? gi?? h??m nay\";s:4:\"text\";s:504:\"<table>\n<tbody>\n<tr>\n<th class=\"ma-ngoai-te tieu-de\">M??</th>\n<th class=\"mua-vao tieu-de\">Mua v??o</th>\n<th class=\"ban-ra tieu-de\">B??n ra</th>\n</tr>\n<tr>\n<td>AUF</td>\n<td>16,411.67</td>\n<td>16,691.05</td>\n</tr>\n<tr>\n<td>EUR</td>\n<td>26,324.32</td>\n<td>27,063.07</td>\n</tr>\n<tr>\n<td>GBP</td>\n<td>30,313.58</td>\n<td>30,799.01</td>\n</tr>\n<tr>\n<td>JPY</td>\n<td>205.43</td>\n<td>214.05</td>\n</tr>\n<tr>\n<td>USD</td>\n<td>23,115.00</td>\n<td>23,225.00</td>\n</tr>\n</tbody>\n</table>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","29","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","0","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","1","yes"),
("93","initial_db_version","44719","yes"),
("94","gdd_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:7:{i:0;s:23:\"flatsome_recent_posts-2\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";i:3;s:6:\"text-6\";i:4;s:13:\"media_image-2\";i:5;s:6:\"text-5\";i:6;s:12:\"categories-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:2:{i:2;a:15:{s:13:\"attachment_id\";i:335;s:3:\"url\";s:77:\"https://bizhostvn.com/w/xkld4/wp-content/uploads/2019/03/banner-quang-cao.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:253;s:6:\"height\";i:329;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:6:{i:1558059635;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558059651;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558059653;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558082647;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558086239;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("128","can_compress_scripts","0","no"),
("148","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553566881;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("149","current_theme","xkld","yes"),
("150","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 26 Mar 2019 02:21:22 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553567447;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("151","theme_switched","","yes"),
("152","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:13:\"Ti??u ??i???m\";s:6:\"number\";i:7;s:5:\"image\";N;s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("153","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("155","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("156","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("157","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("158","flatsome_wup_buyer","trannguyen886","yes"),
("159","allowedthemes","a:1:{s:4:\"xkld\";b:1;}","no"),
("160","fl_has_child_theme","xkld","yes"),
("162","theme_mods_xkld","a:138:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:6:\"html-2\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"header_elements_right\";a:1:{i:0;s:6:\"social\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:1:{i:0;s:11:\"search-form\";}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:4:\"html\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:9:\"menu-icon\";}s:26:\"header_mobile_elements_top\";a:0:{}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:1:\"#\";s:15:\"follow_facebook\";s:1:\"#\";s:16:\"follow_instagram\";s:0:\"\";s:12:\"follow_email\";s:0:\"\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:5;s:14:\"primary_mobile\";i:29;s:11:\"top_bar_nav\";i:6;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 26 Mar 2019 02:30:50 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Oswald\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Oswald\";s:7:\"variant\";s:3:\"500\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:500;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:21943:\".nav>li.html h1{text-transform:uppercase;color:#000;font-weight:500;margin-bottom:0}.header-bottom .nav li.trang-chu a{padding-left:15px;padding-right:15px;height:49px}.header-bottom .nav li{margin:0}.header-bottom .nav li a{padding-left:22px;padding-right:22px;line-height:30px}.header-bottom .nav li a:hover,.header-bottom .nav li.active a,.header-bottom .nav li.current-menu-item a{background-color:#8c3c0b;color:#fff!important}.searchform input[type=search]{margin-left:20px;height:37px;background-color:#fff!important;color:gray!important;border-radius:22px;box-shadow:none;border:0}.searchform .button{margin-left:-15px!important;background:#fff;border-radius:30px!important;border:0;border-top-left-radius:30px!important;border-bottom-left-radius:30px!important}.searchform .button:hover{box-shadow:none}.searchform .button.icon i{color:#000;font-size:17px}.top-bar-nav li a{font-family:roboto,sans-serif}.social-icons a{font-size:17px}.nav-dropdown{padding:0;border:0}.nav-dropdown>li>a{background-color:#4d2812 !important; border-bottom:1px solid #391b00;color:#a4a4a4;text-transform:uppercase;padding:5px 10px;background-image:url(/wp-content/uploads/2019/03/dot1.jpg);background-repeat:no-repeat;background-position-y:center;padding-left:20px;background-position-x:10px;font-size:14px}.nav-dropdown>li>a:hover{background:#2f1c10!important;color:#fff!important;background-image:url(/wp-content/uploads/2019/03/dot2.jpg)!important;background-repeat:no-repeat!important;background-position-y:center!important;padding-left:20px!important;background-position-x:10px!important;padding-left:22px!important}.get-time{margin-top:10px;margin-bottom:10px;font-size:14px;text-align:right;background:url(/wp-content/uploads/2019/03/1024px-Feed-icon.svg.png);background-repeat:no-repeat;background-size:20px;background-position-x:right;padding-right:26px!important}.page-bao-loi{margin-top:30px}.page-bao-loi a.button{border-radius:99px;font-weight:400;font-size:19px;color:#000;background:#fc0;font-family:oswald,sans-serif}.archive .no-results input[type=search]{margin-top:10px;height:46px;margin-left:0;background-color:#ececec!important}.archive .no-results p{font-size:15px;margin-bottom:10px}.archive .no-results h1{font-weight:500;font-size:26px}.archive .no-results .searchform .button.icon{top:5px; margin:0;margin-left:-41px!important}.blog-archive .large-3,.blog-single .large-3,.page-right-sidebar .large-3{padding-left:0;flex-basis:25%;max-width:25%}.page-wrapper{padding-top:5px;padding-bottom:5px}.container .section,.row .section{padding-left:0;padding-right:0}.box-blog-post .is-divider,.recent-blog-posts-li .mr-half,.widget .is-divider{display:none}.section1 .cot8 .post-item .post-title{font-size:22px;color:#000;font-weight:500;margin-bottom:10px}.section1 .cot8 .post-item .from_the_blog_excerpt{color:#000}.section1 .cot4 .vertical-post .post-item .box-text{padding:0;padding-left:10px}.section1 .cot4 .vertical-post .post-item{padding-bottom:0}.section1 .cot4 .post-1 .post-item .post-title,.section1 .cot4 .vertical-post .post-item .post-title,.section1 .cot8 .tin-3 .post-item .box-text .post-title{font-size:16px;color:#000;font-weight:500}.section1 .cot4 .vertical-post .post-item .box-vertical{padding-bottom:12px;border-top:1px solid #e0e0e0;padding-top:12px}.section1 .cot4 .post-1 .post-item .post-title:hover,.section1 .cot4 .vertical-post .post-item .post-title:hover,.section1 .cot8 .tin-3 .post-item .box-text .post-title:hover{color:#8c3c0b}.section1 .cot4 .post-1 .post-item .box-text{padding:10px}.section1 .cot4 .post-1 .post-item{padding:0;border-top:3px solid #fc0}.section-title-container{margin-bottom:0}.section-title span{text-transform:uppercase;color:#000;font-weight:500}.section1 .cot8 .tin-1 .box-text{border-bottom:2px solid #f3f3f3;padding-bottom:10px}.section1 .cot8 .post-item .post-title:hover{color:#8c3c0b}.blog-archive .large-9,.blog-single .large-9,.page-right-sidebar .large-9{border-right:0;flex-basis:75%;max-width:75%;padding-right:30px}.section1 .cot4 .col-inner{background:#f2f2f2;padding:10px}.section1 .cot4 .col-inner .col-inner{padding:0;background:0 0}.category-title{border-bottom:3px solid #fc0;width:100%;display:inline-block;clear:both}.category-title .right ul li a:hover{color:#000}.category-title .right ul li a{font-family:oswald,sans-serif;font-size:16px;color:#8c3c0b;font-weight:500}.category-title .right ul li{border-left:1px solid #fc0;padding-left:10px;margin-bottom:0;list-style:none;float:left;margin-left:15px;margin-top:8px}.category-title .right ul{margin-bottom:0;display:inline-block}.category-title .left{width:25%;float:left;display:inline-block}.category-title .left h3 a:hover{color:#8c3c0b}.category-title .left h3 a{color:#000;font-weight:500}.category-title .left h3{padding-bottom:5px;margin-bottom:0;text-transform:uppercase;color:#000;padding-left:10px;padding-top:5px}.category-section .section-content{border:1px solid #e0e0e0}.category-title .right{padding-right:10px;text-align:right;display:inline-block;width:75%;float:right}.section1 .cot8 .tin-3{margin-top:10px}.section1,.section1 .col{padding-bottom:0!important}.category-section .cot8 .list-post .post-item .col-inner{padding-left:15px}.category-section .cot8 .list-post .post-item .col-inner .box-normal{border-top:1px solid #f2f2f2}.category-section .cot8 .list-post .post-item .box-text{padding-bottom:8px;padding-top:8px}.category-section .cot8 .list-post .post-item .box-text .post-title{color:#000;font-size:16px;font-weight:500;background-image:url(/wp-content/uploads/2019/03/dot-post.jpg);background-repeat:no-repeat;background-position-y:center;padding-left:15px}.category-section .cot8 .big-post .post-item{padding-bottom:20px;padding-left:25px;padding-top:10px}.category-section .cot8 .list-post .post-item{padding-bottom:0}.category-section .cot8 .big-post .post-item .box-text{padding-bottom:0;padding-top:0;padding-right:0}.category-section .cot8 .big-post .post-item .from_the_blog_excerpt{font-size:14px;color:#000}.category-section .cot4 .post-item .box-text .post-title:hover,.category-section .cot8 .big-post .post-item .post-title:hover,.category-section .cot8 .list-post .post-item .box-text .post-title:hover{color:#8c3c0b}.category-section .cot8 .big-post .post-item .post-title{font-size:16px;margin:0;margin-bottom:10px;color:#000;font-weight:500}.category-section .cot4 .post-item{padding-bottom:0;padding-right:25px}.category-section .cot4 .post-item .box-text{padding-right:0;padding-left:10px;padding-bottom:0;padding-top:0}.category-section .cot4 .post-item .box-text .post-title{font-size:16px;color:#000;font-weight:500}.category-section .cot4 .post-item .box-vertical{padding-bottom:11px;padding-top:11px;border-top:1px solid #f2f2f2}.category-section .col{padding-bottom:0}.category-title .left h3:before{content:\"\";content:\"\";border:9px solid #8c3c0b;position:absolute;DISPLAY:INLINE-BLOCK;MARGIN-LEFT:-26PX;border-left-color:transparent;border-bottom-color:transparent;margin-top:6px;left:auto;transform:rotate(45deg)}.widget_categories ul li a{padding-left:10px;font-family:oswald,sans-serif;font-size:16px;color:#000}.widget .active>ul.children{display:block!important;margin:0;border:0;background:#f6f6f6}.widget_categories ul li{padding-right:0;font-size:15px;color:#fc0}.widget_categories ul{border:1px solid #e0e0e0}.section1 .cot4 .section-title span{font-size:20px}span.widget-title{border-bottom:2px solid #fc0;background:#8c3c0b;display:block;width:100%;padding:12px 15px;color:#fff;font-family:oswald,sans-serif;font-weight:400;font-size:18px}.flatsome_recent_posts ul{border:1px solid #e0e0e0}.recent-blog-posts-li{background-image:url(/wp-content/uploads/2019/03/dot-post.jpg);background-repeat:no-repeat;padding-left:24px;background-position-x:5px;padding-right:5px;padding-left:24px;background-position-x:5px;padding-right:5px;background-position-y:17px}.recent-blog-posts a:hover{color:#8c3c0b}.ho-tro-truc-tuyen{font-family:oswald,sans-serif;color:red;font-size:25px;font-weight:500;background-image:url(/wp-content/uploads/2019/03/phone-icon.png);background-repeat:no-repeat;background-position-y:center;padding-left:47px}.textwidget p{margin-bottom:0}.textwidget{border:1px solid #e0e0e0;padding:10px}span.widget-title span:before{content:\"\";border:9px solid #fc0;position:absolute;DISPLAY:INLINE-BLOCK;MARGIN-LEFT:-30PX;border-left-color:transparent;border-bottom-color:transparent;margin-top:-1px;left:auto;transform:rotate(45deg)}.recent-blog-posts a{line-height:1.3;margin-bottom:3px;font-family:oswald,sans-serif;font-size:16px;color:#000;letter-spacing:0;font-weight:500}.textwidget h4{font-size:16px;color:#000}.table>tbody>tr>td{line-height:2.5!important}.form-dang-ky .row-form{width:100%;display:inline-block;clear:both}.form-dang-ky .row-form .left{width:46%;display:inline-block;float:left}.form-dang-ky .row-form .right{width:54%;float:left;display:inline-block}.select-resize-ghost,.select2-container .select2-choice,.select2-container .select2-selection,input[type=date],input[type=email],input[type=number],input[type=password],input[type=search],input[type=tel],input[type=text],input[type=url],select,textarea{margin-bottom:4px;background:#f2f2f2;border-radius:5px;border:0;font-size:14px}.wpcf7 label{font-weight:400}.form-dang-ky input[type=submit]{display:block;width:100%;background:#fc0;border-radius:5px;font-weight:400;font-family:oswald,sans-serif;font-size:17px;color:#000;margin:0}.nav-small.nav>li.html{font-size:14px}.footer-section .logo-row{padding-bottom:0;margin-bottom:15px}.footer-section .section-title span{text-transform:none;font-size:18px;letter-spacing:0;border-bottom:2px solid #fc0}.footer-section .icon-box-text{padding-left:5px!important}.footer-section .row-thong-tin .icon-box-img img{width:15px!important}.footer-section .logo-row .col-inner{border-bottom:1px solid #dbdbdb;PADDING-BOTTOM:15px}.footer-section h4{font-weight:400;font-size:17px;color:#8c3c0b}.footer-section{border-top:5px solid #8c3c0b}.footer-section .row-thong-tin .col{padding-bottom:0}.footer-section .row-3 .col-inner{border-top:1px solid #dbdbdb;padding-top:20px}.footer-section .section-title-normal{border-bottom:2px solid #f2f2f2}.footer-section .row-3 .col{padding-bottom:0}.blog-archive .large-3{border-left:0!important}#breadcrumbs .breadcrumb_last{font-weight:500;color:#8c3c0b}.blog-archive .post-item:nth-child(2),.blog-archive .post-item:nth-child(3),.blog-archive .post-item:nth-child(4),.blog-archive .post-item:nth-child(5),.blog-archive .post-item:nth-child(6),.blog-archive .post-item:nth-child(7){max-width:33.33333%;flex-basis:33.33333%;display:inline-block}#breadcrumbs{padding-left:0;text-transform:none;font-size:15px;margin-bottom:10px;margin-top:5px}.archive-big-post{display:inline-block;width:100%}.archive-big-post .right{max-width:33.33333%;float:left;display:inline-block}#bigpost li{list-style:none}#bigpost .new-img{width:100%;display:block}#bigpost .item-list{margin-top:10px;display:block;width:100%}.archive-big-post .left{max-width:66.66667%;float:left;display:inline-block}.blog-archive .post-item:nth-child(2) .box-vertical,.blog-archive .post-item:nth-child(3) .box-vertical,.blog-archive .post-item:nth-child(4) .box-vertical,.blog-archive .post-item:nth-child(5) .box-vertical,.blog-archive .post-item:nth-child(6) .box-vertical,.blog-archive .post-item:nth-child(7) .box-vertical{display:block}.blog-archive .post-item:nth-child(2) .box-image,.blog-archive .post-item:nth-child(3) .box-image,.blog-archive .post-item:nth-child(4) .box-image,.blog-archive .post-item:nth-child(5) .box-image,.blog-archive .post-item:nth-child(6) .box-image,.blog-archive .post-item:nth-child(7) .box-image{width:100%!important;display:block}.blog-archive .post-item:nth-child(2) .box-text,.blog-archive .post-item:nth-child(3) .box-text,.blog-archive .post-item:nth-child(4) .box-text,.blog-archive .post-item:nth-child(5) .box-text,.blog-archive .post-item:nth-child(6) .box-text,.blog-archive .post-item:nth-child(7) .box-text{padding:10px 0}.blog-archive .large-9 .badge,.blog-single .entry-category,.is-divider{display:none}.blog-single .entry-title{font-weight:500}.blog-single .entry-meta{text-transform:none;letter-spacing:0;font-size:15px;color:gray}.entry-content{padding-top:0;padding-bottom:0}.danh-muc,.the-tim-kiem{margin-bottom:10px;color:#000}.the-tim-kiem a:hover{background:#8c3c0b;color:#fff}.the-tim-kiem a{background:#fc0;padding:5px 15px;border-radius:4px;margin-bottom:5px}.entry-content{background:#fff;padding:20px;border:1px solid #e0e0e0}.entry-content p{margin-bottom:10px;font-size:15px}.gioi-thieu-don-hang p{margin-bottom:5px}.tieu-de-don-hang h2{text-align:center;text-transform:uppercase;font-size:25px;font-weight:500;color:#8c3c0b}.tieu-de-don-hang{display:block;margin-bottom:20px;text-align:center;font-size:15px}.che-do-phuc-loi,.dieu-kien-tuyen-dung,.ho-so,.mot-so-hinh-anh,.noi-dung-tuyen-dung,.thi-tuyen{border:1px solid #e0e0e0;margin-bottom:20px}.gioi-thieu-don-hang{background:#f6f6f6;padding:15px;font-size:15px;padding-bottom:5px;margin-bottom:20px}.blog-archive .post-item{padding-bottom:0}.blog-archive .post-item:nth-child(1) .box-image{width:50%!important}.blog-archive .post-item:nth-child(1){padding-bottom:30px}.blog-archive .post-item:nth-child(1) .box-text .post-title{font-size:22px;margin-bottom:10px}.blog-archive .post-item:nth-child(1) .box-text{padding-top:0;padding-right:0;padding-bottom:0}.blog-archive button.xem-them{background:#fc0;border-radius:30px;color:#000;font-weight:400;text-transform:none;padding:0 25px;margin-top:10px}.blog-archive .post-item:nth-child(2) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(2) button.xem-them,.blog-archive .post-item:nth-child(3) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(3) button.xem-them,.blog-archive .post-item:nth-child(4) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(4) button.xem-them,.blog-archive .post-item:nth-child(5) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(5) button.xem-them,.blog-archive .post-item:nth-child(6) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(6) button.xem-them,.blog-archive .post-item:nth-child(7) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(7) button.xem-them,.home button.xem-them{display:none}.blog-archive .post-item .post-title{font-size:19px;font-weight:500;margin-bottom:10px}.blog-archive .post-item .post-title:hover{color:#8c3c0b}.blog-archive .post-item .box-text{padding:0;padding-left:15px}.blog-archive .post-item .from_the_blog_excerpt{height:65px;overflow:hidden}.blog-archive .post-item .col-inner{padding-bottom:15px;border-bottom:1px solid #f2f2f2;padding-top:15px}.blog-archive .post-item:nth-child(3) .post-title,.blog-archive .post-item:nth-child(4) .post-title,.blog-archive .post-item:nth-child(5) .post-title,.blog-archive .post-item:nth-child(6) .post-title,.blog-archive .post-item:nth-child(7) .post-title,.post-item:nth-child(2) .post-title{font-size:16px!important}.widget_categories ul li li a{font-size:15px}.khoi-noi-dung h3{border-bottom:3px solid #fc0;padding:10px 15px;text-transform:uppercase;font-weight:500}.khoi-noi-dung h3:before{content:\"\";border:9px solid #8c3c0b;position:absolute;DISPLAY:INLINE-BLOCK;MARGIN-LEFT:-30PX;border-left-color:transparent;border-bottom-color:transparent;margin-top:7px;left:auto;transform:rotate(45deg)}.khoi-noi-dung ul{margin-left:32px;margin-bottom:0}.khoi-noi-dung ul li{margin-bottom:10px;font-size:15.5px;list-style:square;color:#fc0}.khoi-noi-dung ul li .label{color:#000;font-weight:500}.khoi-noi-dung ul li .do-tuoi,.khoi-noi-dung ul li .so-luong-tiep-nhan,.khoi-noi-dung ul li .thoi-han-hop-dong{color:red!important}.ho-so ul li{color:#000}.ho-so h4{font-weight:500;padding-left:15px}.thi-tuyen p{padding-left:15px;padding-right:15px;margin-bottom:5px}.thong-tin-form-cuoi-trang{margin-top:20px;display:inline-block;width:100%;clear:both}.thong-tin-form-cuoi-trang .left{padding-right:15px;width:50%;float:left;display:inline-block}.thong-tin-form-cuoi-trang .right{padding-left:15px;width:50%;float:left;display:inline-block}.khoi-noi-dung ul li .value{color:#8c3c0b}.post{margin:0}.mot-so-hinh-anh ul{display:inline-block;width:100%;clear:both;margin-left:0}.khoi-noi-dung ul li .luong-thang{color:red;font-size:20px}.mot-so-hinh-anh ul li{margin-bottom:0;padding:5px 15px;list-style:none;width:50%;float:left}.mot-so-hinh-anh ul li img{width:100%;object-position:50% 50%;object-fit:cover;font-family:\'object-fit: cover;\';height:200px}.img-caption{height:50px;overflow:hidden;margin-bottom:10px;font-size:14px;color:gray;padding-top:8px;text-align:center;font-style:italic}.thong-tin-form-cuoi-trang .col-inner{padding:15px;background:#f2f2f2}.thong-tin-form-cuoi-trang h3{margin-bottom:15px;margin-top:5px;text-align:center;font-weight:500;text-transform:uppercase;line-height:30px;color:#8c3c0b}.thong-tin-form-cuoi-trang .des{margin-bottom:15px;font-size:15px}.thong-tin-form-cuoi-trang .right p{margin-bottom:5px;font-size:15px}.thong-tin-form-cuoi-trang input[type=tel],.thong-tin-form-cuoi-trang input[type=text]{background:#fff;margin-bottom:10px}.thong-tin-form-cuoi-trang .thong-tin a{color:#167ac6}.thong-tin-form-cuoi-trang .thong-tin{margin-bottom:15px}.thong-tin-form-cuoi-trang .social-row{margin-bottom:6px;font-size:15px}.thong-tin-form-cuoi-trang input[type=submit]{margin:0;text-transform:none;font-weight:400;background:#fc0;border-radius:5px;color:#000}.thong-tin-form-cuoi-trang form{margin-bottom:0}.thong-tin-form-cuoi-trang .right{text-align:center}#comments textarea{background:#fff}#comments input[type=submit]{background:#fc0;font-weight:400;border-radius:5px;text-transform:none;font-size:15px;color:#000}.logged-in-as{font-size:15px}.blog-archive .post-item:nth-child(2) .col-inner,.blog-archive .post-item:nth-child(3) .col-inner,.blog-archive .post-item:nth-child(4) .col-inner,.blog-archive .post-item:nth-child(5) .col-inner,.blog-archive .post-item:nth-child(6) .col-inner,.blog-archive .post-item:nth-child(7) .col-inner{border-bottom:0;padding-top:0;padding-bottom:10px}h1.entry-title.mb:before{content:\"\";border:9px solid #8c3c0b;position:absolute;DISPLAY:INLINE-BLOCK;MARGIN-LEFT:-30PX;border-left-color:transparent;border-bottom-color:transparent;margin-top:3px;left:auto;transform:rotate(45deg)}.page-right-sidebar .breadcrumbs{margin-bottom:13px}.form-page-lien-he,.page-right-sidebar p{padding:0 20px}.form-page-lien-he .row-form{display:inline-block;width:100%;clear:both}.form-page-lien-he .row-form .right{left:77%;float:right;display:inline-block}.form-page-lien-he .row-form .left{left:23%;float:left;display:inline-block}h1.entry-title.mb{margin-bottom:20px;padding-bottom:10px;border-bottom:3px solid #fc0;font-size:22px;font-weight:500;padding-left:15px;padding-top:10px}.page-right-sidebar .page-inner{border:1px solid #e0e0e0}.section1{padding-top:30px!important}.home .page-inner{border:0}.home #breadcrumbs,.home h1.entry-title.mb{display:none}.form-page-lien-he input[type=submit]{background:#fc0;border-radius:4px;text-transform:none;font-weight:400;color:#000;font-size:15px}.page-right-sidebar .page-inner p{font-size:15px}.home p{padding:0}.login-form input[type=submit]{margin:0;background:#fc0;font-weight:400;text-transform:none;border-radius:5px;color:#000}.login-form label{font-size:15px;font-weight:400}.form-horizontal{display:inline-block;width:60%}.regted{padding:0 20px 20px;font-size:15px}.form-horizontal .btn-primary{margin:0;background:#fc0;border-radius:4px;color:#000;font-weight:400;text-transform:none}.dangkytaikhoan .form-group{display:inline-block;width:100%;clear:both}.dangkytaikhoan .form-group label{margin-bottom:0;padding-top:10px;width:30%;display:inline-block;float:left}.dangkytaikhoan .form-group .col-sm-9{width:70%;display:inline-block;float:right}.dangkytaikhoan label{font-size:15px;font-weight:400}.dangkytaikhoan{padding:0 20px;font-size:15px;font-weight:400}\n.lazy-load{padding-top:0}\n.widget img.size-full.alignnone {\n    margin-bottom: 5px;\n}\n.widget table{    margin-bottom: 0;\n    background: #efefef;\n    padding: 0px;}\n.widget table td{      border-bottom: 1px solid #d5d5d5;  text-align: center;\n    padding: 10px 5px;}\n.widget table .tieu-de{    text-align: center;\n    background: gray;\n    padding: 10px 5px;\n    color: white;\n    font-weight: normal;\n    text-transform: none;}\n.thong-tin-don-hang{display: inline-block;\n    width: 100%;\n    padding-top: 10px;\n    padding-bottom: 10px;\n    border-top: 1px solid #f2f2f2;}\n.don-hang-moi-nhat .thong-tin-don-hang{display:inline-block !important}\n.don-hang-moi-nhat .box-vertical,\n.thong-tin-don-hang {display:none}\n.thong-tin-don-hang .nganh-nghe{width:23% !important}\n.thong-tin-don-hang .gioi-tinh{width:10% !important}\n.thong-tin-don-hang .cot{line-height:17px; font-size:15px; text-align:center; width:16.666667%; float:left; display:inline-block}\n.thong-tin-don-hang .ngay-thi, .thong-tin-don-hang .nganh-nghe, .thong-tin-don-hang .luong-thang{color:red} \n.thong-tin-don-hang a.xem-them{background:#ffcc00; border-radius:4px; color:black;    padding: 4px 15px;}\n.don-hang-moi-nhat .post-item{padding-bottom:0 !important}\n.don-hang-moi-nhat .cot8 .big-post .post-item .col-inner{display:flex\n}\n.don-hang-moi-nhat .cot8 .big-post .post-item{padding-left:10px; padding-top:0}\n.thong-tin-don-hang-title{background: #ededed;\n    height: 40px;\n    line-height: 40px;\n    color: white; display:block; width:100%; clear:both}\n.thong-tin-don-hang-title .cot{width:16.666667%; float:left; display:inline-block; text-align:center; color:black}\n\n.thong-tin-don-hang-title .nganh-nghe{width:23% !important}\n.thong-tin-don-hang-title .gioi-tinh{width:10% !important}\n.don-hang-moi-nhat .category-title{    display: inline-flex;}\n.header-bottom .nav li.active a>.nav-dropdown, .header-bottom .nav li.current-menu-item a>.nav-dropdown{    background-color: #4d2812;}\n.nav .nav-dropdown{left:0 !important;     min-width: 203px;}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:4362:\".off-canvas-left.mfp-ready .mfp-content{background:#fc0}.searchform input[type=search]{margin-left:0}.searchform .button{height:37px}.off-canvas:not(.off-canvas-center) .nav-vertical li>a{padding-left:20px;color:#000;font-size:18px;padding:10px}.nav>li.html h1{font-size:15px}.header-main li.html.custom{display:block!important}.header-main{height:73px;border-bottom:2px solid #8c3c0b}.icon-menu:before{content:\"\\e800\";color:#000;background:#fc0;padding:4px}.blog-archive .large-3,.blog-archive .large-9,.blog-single .large-3,.blog-single .large-9,.category-title .left,.category-title .right,.page-right-sidebar .large-3,.page-right-sidebar .large-9{flex-basis:100%;max-width:100%;width:100%}.category-title .right{padding-right:0}.category-title .right ul li{margin:0;border-left:0}.category-title .right ul li a{background:#ededed;padding:3px 10px;margin-bottom:10px;display:inline-block;font-size:15px}.don-hang-moi-nhat .cot8 .big-post .post-item{padding-bottom:10px;padding-left:20px;padding-top:5px;padding-right:20px}.category-section .cot8 .big-post .post-item .post-title{margin-top:10px}.category-section .cot8 .list-post .post-item .col-inner{padding-right:10px}.logo-left .logo{margin-right:0}.section1 .cot8 .tin-3 .post-item .box-normal{display:inline-block;clear:both}.section1 .cot8 .tin-3 .post-item .box-normal .box-image{width:30%;float:left;display:inline-block}.section1 .cot8 .tin-3 .post-item .box-normal .box-text{width:70%;float:right;display:inline-block;padding-left:10px}#logo img{margin-right:10px!important}#logo{width:65px}.section1{padding-top:10px!important}.blog-archive .post-item:nth-child(2),.blog-archive .post-item:nth-child(3),.blog-archive .post-item:nth-child(4),.blog-archive .post-item:nth-child(5),.blog-archive .post-item:nth-child(6),.blog-archive .post-item:nth-child(7),.section1 .cot4 .vertical-post .post-item{flex-basis:50%;max-width:50%}.section1 .cot4 .vertical-post .post-item .box-text{padding-left:0}.category-section .cot4 .post-item{padding-bottom:0;padding-right:20px;padding-left:20px;flex-basis:50%!important;max-width:50%}.category-section .cot4 .post-item:nth-child(2n+1){padding-right:5px}.category-section .cot4 .post-item:nth-child(2n+2){padding-left:5px}.blog-archive .large-9,.blog-single .large-9,.page-right-sidebar .large-9{padding-right:15px}.blog-archive .large-3,.blog-single .large-3,.page-right-sidebar .large-3{padding-left:15px}.blog-archive .post-item .box-text{padding-left:0}.blog-archive .post-item .col-inner{padding-top:0;padding-bottom:0}.blog-archive .post-item:nth-child(1) .box-image{width:100%!important}.blog-archive .post-item:nth-child(2),.blog-archive .post-item:nth-child(4),.blog-archive .post-item:nth-child(6){padding-right:7px}.blog-archive .post-item:nth-child(3),.blog-archive .post-item:nth-child(5),.blog-archive .post-item:nth-child(7){padding-left:7px}.thong-tin-form-cuoi-trang .left,.thong-tin-form-cuoi-trang .right{width:100%;padding-right:0;padding-left:0;margin-bottom:10px}.entry-content{background:#fff;padding:0;border:0}.archive .no-results .searchform .button.icon{margin-top:10px}.khoi-noi-dung ul li{padding-right:5px}.khoi-noi-dung ul{margin-left:25px}.mot-so-hinh-anh ul{margin-left:0}.mot-so-hinh-anh ul li{padding:10px}.img-caption{height:60px;font-size:13px;line-height:17px;margin-bottom:0}.ho-so ul li{margin-left:10px}.mot-so-hinh-anh ul li img{height:100px}.active>ul.children{background:#cf980a;padding-bottom:0!important}.off-canvas:not(.off-canvas-center) .active>ul.children li a{font-size:16px;padding:6px 10px}\n.thong-tin-don-hang-title .gioi-tinh, .thong-tin-don-hang-title .tang-ca, .thong-tin-don-hang .tang-ca, .thong-tin-don-hang .gioi-tinh{display:none !important}\n.thong-tin-don-hang-title .cot, .thong-tin-don-hang .cot{    word-break: break-word;width:25% !important; font-size:13px}\n.thong-tin-don-hang a.xem-them{    font-size: 12px;\n    padding: 4px 10px;}\n.don-hang-moi-nhat .cot8 .big-post .post-item{    padding-left: 10px;\n    padding-top: 5px;\n    padding-right: 10px;}\n.thong-tin-don-hang .ngay-thi, .thong-tin-don-hang .nganh-nghe, .thong-tin-don-hang .luong-thang{color:black}\n.category-section .cot8 .big-post .post-item{padding-right:20px;     padding-left: 20px;}\n.category-title .right{text-align:left}\n.category-section .cot4 .post-item .box-text{padding-left:0}\n.thong-tin-don-hang .cot{font-size:12px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:27:\"T??m ki???m ????n h??ng....\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:5:\"404-2\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:808;s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:2:\"88\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#ececec\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"100\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"50\";s:15:\"nav_position_bg\";s:7:\"#ffcc00\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:5:\"large\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:7:\"#0a0a0a\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:10:\"site_width\";s:6:\"1160px\";s:14:\"header_divider\";b:0;s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:17:\"nav_height_bottom\";s:2:\"16\";s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:9:\"site_logo\";s:70:\"https://bizhostvn.com/w/xkld4/wp-content/uploads/2019/03/logo-xkld.jpg\";s:12:\"follow_style\";s:4:\"fill\";s:14:\"follow_youtube\";s:1:\"#\";s:11:\"topbar_left\";s:96:\"<h1><a href=\"/\">Xu???t kh???u lao ?????ng ????i Loan 2019</br>\nXKL?? ????i Loan UY T??N</a></h1>\";s:12:\"logo_padding\";s:1:\"6\";s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:0:\"\";s:19:\"header_search_width\";s:2:\"99\";s:17:\"dropdown_nav_size\";s:3:\"100\";s:14:\"dropdown_style\";s:6:\"simple\";s:15:\"dropdown_border\";s:7:\"#4d2812\";s:11:\"dropdown_bg\";s:7:\"#4d2812\";s:14:\"dropdown_arrow\";b:0;s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"11\";s:13:\"header_sticky\";b:0;s:12:\"topbar_right\";s:76:\"Ch??o m???ng b???n ?????n v???i website Xu???t kh???u lao ?????ng ????i Loan\";s:12:\"footer_block\";s:6:\"footer\";s:11:\"color_texts\";s:7:\"#282828\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#8c3c0b\";s:18:\"color_widget_links\";s:7:\"#0a0a0a\";s:24:\"color_widget_links_hover\";s:7:\"#8c3c0b\";s:16:\"footer_left_text\";s:130:\"Copyright [ux_current_year] ?? vieclamdailoan.vn | Thi???t k??? b???i <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>\";s:19:\"footer_bottom_align\";s:6:\"center\";s:18:\"footer_bottom_text\";s:5:\"light\";s:19:\"footer_bottom_color\";s:7:\"#ffffff\";s:20:\"logo_position_mobile\";s:4:\"left\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_archive_title\";b:0;s:18:\"blog_style_archive\";s:4:\"list\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:14:\"pages_template\";s:13:\"right-sidebar\";s:13:\"default_title\";b:1;s:18:\"wpseo_primary_term\";s:1:\"0\";s:16:\"wpseo_breadcrumb\";s:1:\"0\";s:28:\"wpseo_breadcrumb_remove_last\";s:1:\"1\";}","yes"),
("164","envato_setup_complete","1553567457","yes"),
("179","recently_activated","a:2:{s:30:\"db-prefix-change/db_prefix.php\";i:1557026919;s:33:\"duplicator-pro/duplicator-pro.php\";i:1556976774;}","yes"),
("187","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("190","menu_icons_install","1553615645","yes"),
("193","menu-icons","a:2:{s:6:\"global\";a:1:{s:10:\"icon_types\";a:1:{i:0;s:2:\"fa\";}}s:6:\"menu_5\";a:6:{s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}}","yes"),
("274","category_children","a:3:{i:1;a:8:{i:0;i:7;i:1;i:8;i:2;i:9;i:3;i:10;i:4;i:11;i:5;i:12;i:6;i:13;i:7;i:14;}i:3;a:3:{i:0;i:24;i:1;i:25;i:2;i:26;}i:4;a:2:{i:0;i:27;i:1;i:28;}}","yes"),
("282","widget_ty_gia_gia_vang_widget","a:2:{i:2;a:140:{s:5:\"title\";s:24:\"T??? gi?? ng??y h??m nay\";s:4:\"bank\";s:0:\"\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:3:\"100\";s:4:\"rate\";i:1;s:4:\"gold\";i:0;s:5:\"chart\";i:0;s:5:\"width\";s:4:\"100%\";s:6:\"height\";s:3:\"280\";s:6:\"expand\";i:0;s:4:\"auto\";i:0;s:6:\"change\";i:0;s:5:\"flagr\";i:0;s:7:\"column2\";i:1;s:10:\"titleColor\";s:0:\"\";s:7:\"upColor\";s:0:\"\";s:9:\"downColor\";s:0:\"\";s:9:\"textColor\";s:0:\"\";s:7:\"bgColor\";s:0:\"\";s:3:\"css\";s:28:\"#rate_tb td{line-height:2.5}\";s:8:\"language\";s:2:\"vn\";s:3:\"USD\";i:1;s:3:\"JPY\";i:1;s:3:\"EUR\";i:1;s:3:\"GBP\";i:1;s:3:\"AUD\";i:1;s:3:\"CAD\";i:0;s:3:\"CHF\";i:0;s:3:\"DKK\";i:0;s:3:\"HKD\";i:0;s:3:\"INR\";i:0;s:3:\"KRW\";i:0;s:3:\"KWD\";i:0;s:3:\"MYR\";i:0;s:3:\"NOK\";i:0;s:3:\"RUB\";i:0;s:3:\"SAR\";i:0;s:3:\"SEK\";i:0;s:3:\"SGD\";i:0;s:3:\"THB\";i:0;s:3:\"---\";i:0;s:3:\"BTC\";i:0;s:3:\"ETH\";i:0;s:3:\"XRP\";i:0;s:3:\"BCH\";i:0;s:3:\"LTC\";i:0;s:4:\"DASH\";i:0;s:3:\"XEM\";i:0;s:3:\"BCC\";i:0;s:3:\"NEO\";i:0;s:3:\"XMR\";i:0;s:5:\"MIOTA\";i:0;s:3:\"ETC\";i:0;s:4:\"QTUM\";i:0;s:3:\"ADA\";i:0;s:3:\"LSK\";i:0;s:3:\"ZEC\";i:0;s:3:\"XLM\";i:0;s:5:\"WAVES\";i:0;s:3:\"HSR\";i:0;s:5:\"STRAT\";i:0;s:3:\"ARK\";i:0;s:5:\"STEEM\";i:0;s:4:\"PIVX\";i:0;s:4:\"FRST\";i:0;s:3:\"KMD\";i:0;s:3:\"VTC\";i:0;s:4:\"MONA\";i:0;s:3:\"DCR\";i:0;s:3:\"FCT\";i:0;s:3:\"BTS\";i:0;s:4:\"GAME\";i:0;s:5:\"GBYTE\";i:0;s:3:\"REC\";i:0;s:3:\"ETP\";i:0;s:5:\"BLOCK\";i:0;s:4:\"BTCD\";i:0;s:3:\"LKK\";i:0;s:3:\"SYS\";i:0;s:3:\"GXS\";i:0;s:3:\"VEN\";i:0;s:3:\"NXS\";i:0;s:4:\"PURA\";i:0;s:3:\"BDL\";i:0;s:3:\"NXT\";i:0;s:3:\"ZEN\";i:0;s:4:\"PART\";i:0;s:5:\"SMART\";i:0;s:3:\"UBQ\";i:0;s:4:\"NEBL\";i:0;s:3:\"NAV\";i:0;s:4:\"NLC2\";i:0;s:3:\"ATB\";i:0;s:3:\"IOC\";i:0;s:3:\"XAS\";i:0;s:3:\"XZC\";i:0;s:4:\"FAIR\";i:0;s:3:\"NLG\";i:0;s:3:\"PPC\";i:0;s:5:\"CLOAK\";i:0;s:4:\"RISE\";i:0;s:3:\"CMP\";i:0;s:3:\"LEO\";i:0;s:4:\"AEON\";i:0;s:3:\"CRW\";i:0;s:3:\"RBY\";i:0;s:3:\"VIA\";i:0;s:3:\"BAY\";i:0;s:3:\"DCT\";i:0;s:3:\"XEL\";i:0;s:3:\"SKY\";i:0;s:3:\"XCP\";i:0;s:3:\"EMC\";i:0;s:3:\"ION\";i:0;s:3:\"DMD\";i:0;s:3:\"SIB\";i:0;s:3:\"NMC\";i:0;s:3:\"TCC\";i:0;s:4:\"ENRG\";i:0;s:3:\"UNO\";i:0;s:3:\"PPY\";i:0;s:4:\"EMC2\";i:0;s:3:\"MUE\";i:0;s:3:\"POT\";i:0;s:3:\"LBC\";i:0;s:3:\"XRB\";i:0;s:3:\"SLS\";i:0;s:2:\"OK\";i:0;s:5:\"GOLOS\";i:0;s:3:\"CSC\";i:0;s:3:\"GRC\";i:0;s:3:\"EXP\";i:0;s:3:\"BLK\";i:0;s:2:\"TX\";i:0;s:4:\"OMNI\";i:0;s:3:\"VRC\";i:0;s:3:\"FLO\";i:0;s:4:\"RADS\";i:0;s:3:\"ECN\";i:0;s:3:\"LMC\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("290","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1553700691;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("296","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1553679838;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("297","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"L???i 404: kh??ng x??c ?????nh\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"L??u tr??? cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang ch???\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"T??m ki???m v???i\";s:15:\"breadcrumbs-sep\";s:2:\"??\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("298","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("300","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:0:\"\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("306","wpseo_current_version","16","no"),
("307","wpseo_premium_version","8.4","yes"),
("310","wpseo_tracking_last_request","1553679850","yes"),
("317","wpseo_sitemap_cache_validator_global","3xNWg","no"),
("320","rewrite_rules","a:162:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:48:\"(dai-loan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(dai-loan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"(dai-loan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:76:\"(xuat-khau-lao-dong/don-hang-cao-hung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:59:\"(xuat-khau-lao-dong/don-hang-cao-hung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:41:\"(xuat-khau-lao-dong/don-hang-cao-hung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:75:\"(xuat-khau-lao-dong/don-hang-dai-bac)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:58:\"(xuat-khau-lao-dong/don-hang-dai-bac)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:40:\"(xuat-khau-lao-dong/don-hang-dai-bac)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:75:\"(xuat-khau-lao-dong/don-hang-dai-nam)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:58:\"(xuat-khau-lao-dong/don-hang-dai-nam)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:40:\"(xuat-khau-lao-dong/don-hang-dai-nam)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:77:\"(xuat-khau-lao-dong/don-hang-dai-trung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:60:\"(xuat-khau-lao-dong/don-hang-dai-trung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"(xuat-khau-lao-dong/don-hang-dai-trung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(xuat-khau-lao-dong/ho-ly)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(xuat-khau-lao-dong/ho-ly)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(xuat-khau-lao-dong/ho-ly)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(huong-dan/hoi-dap)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(huong-dan/hoi-dap)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(huong-dan/hoi-dap)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(huong-dan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"(huong-dan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:14:\"(huong-dan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:61:\"(huong-dan/kinh-nghiem)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:44:\"(huong-dan/kinh-nghiem)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"(huong-dan/kinh-nghiem)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:64:\"(tin-tuc/kinh-nghiem-song)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(tin-tuc/kinh-nghiem-song)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:29:\"(tin-tuc/kinh-nghiem-song)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:77:\"(xuat-khau-lao-dong/lao-dong-pho-thong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:60:\"(xuat-khau-lao-dong/lao-dong-pho-thong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"(xuat-khau-lao-dong/lao-dong-pho-thong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:76:\"(xuat-khau-lao-dong/lao-dong-tay-nghe)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:59:\"(xuat-khau-lao-dong/lao-dong-tay-nghe)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:41:\"(xuat-khau-lao-dong/lao-dong-tay-nghe)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:69:\"(xuat-khau-lao-dong/phien-dich)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"(xuat-khau-lao-dong/phien-dich)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:34:\"(xuat-khau-lao-dong/phien-dich)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(tin-tuyen-dung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(tin-tuyen-dung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(tin-tuyen-dung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:70:\"(tin-tuc/tin-xuat-khau-lao-dong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:53:\"(tin-tuc/tin-xuat-khau-lao-dong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:35:\"(tin-tuc/tin-xuat-khau-lao-dong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(huong-dan/van-ban-phap-luat)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(huong-dan/van-ban-phap-luat)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"(huong-dan/van-ban-phap-luat)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(xuat-khau-lao-dong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(xuat-khau-lao-dong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(xuat-khau-lao-dong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:36:\"yst_prominent_words/([^/]+)/embed/?$\";s:52:\"index.php?yst_prominent_words=$matches[1]&embed=true\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("321","wpseo_sitemap_1_cache_validator","3ngXS","no"),
("322","wpseo_sitemap_oembed_cache_cache_validator","2Q2BA","no"),
("323","wpseo_sitemap_customize_changeset_cache_validator","3l4Pg","no"),
("335","wpseo_sitemap_category_cache_validator","eAJ4","no"),
("336","wpseo_sitemap_post_cache_validator","3ngXX","no"),
("337","wpseo_sitemap_post_tag_cache_validator","eAJ7","no"),
("363","wpseo_license_server_version","2","yes"),
("367","wpseo_sitemap_attachment_cache_validator","3mhVU","no"),
("369","acf_version","5.7.7","yes"),
("372","wpseo_sitemap_acf-field-group_cache_validator","2UHF6","no"),
("373","wpseo_sitemap_acf-field_cache_validator","cFuo","no"),
("405","wpseo_sitemap_wpcf7_contact_form_cache_validator","Ytft","no"),
("424","wpseo_sitemap_page_cache_validator","34D6J","no"),
("427","wpseo_sitemap_blocks_cache_validator","2oHwv","no"),
("458","wpseo_sitemap_nav_menu_item_cache_validator","2mqAk","no"),
("474","wp_rocket_settings","a:65:{s:12:\"consumer_key\";s:0:\"\";s:14:\"consumer_email\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";s:7:\"license\";s:0:\"\";s:16:\"secret_cache_key\";s:22:\"5c9c5971d1fae719731757\";s:14:\"minify_css_key\";s:22:\"5c9c6eacd365d518585164\";s:13:\"minify_js_key\";s:22:\"5c9c6eacd3661250791780\";s:7:\"version\";s:6:\"2.11.3\";s:23:\"cloudflare_old_settings\";s:0:\"\";s:18:\"cloudflare_zone_id\";s:0:\"\";s:12:\"cache_mobile\";s:1:\"1\";s:5:\"emoji\";s:1:\"1\";s:6:\"embeds\";s:1:\"1\";s:19:\"purge_cron_interval\";i:10;s:15:\"purge_cron_unit\";s:15:\"HOUR_IN_SECONDS\";s:11:\"minify_html\";s:1:\"1\";s:10:\"minify_css\";i:1;s:9:\"minify_js\";i:1;s:19:\"minify_google_fonts\";s:1:\"1\";s:22:\"minify_concatenate_css\";s:1:\"1\";s:21:\"minify_concatenate_js\";s:1:\"1\";s:11:\"exclude_css\";a:0:{}s:10:\"exclude_js\";a:0:{}s:20:\"remove_query_strings\";i:1;s:12:\"defer_all_js\";s:1:\"1\";s:17:\"defer_all_js_safe\";s:1:\"1\";s:9:\"async_css\";i:1;s:12:\"critical_css\";s:0:\"\";s:10:\"cdn_cnames\";a:0:{}s:8:\"cdn_zone\";a:0:{}s:16:\"cdn_reject_files\";a:0:{}s:16:\"cache_reject_uri\";a:0:{}s:20:\"cache_reject_cookies\";a:0:{}s:15:\"cache_reject_ua\";a:0:{}s:17:\"cache_purge_pages\";a:0:{}s:19:\"cache_query_strings\";a:0:{}s:18:\"database_revisions\";i:1;s:20:\"database_auto_drafts\";i:1;s:22:\"database_trashed_posts\";i:1;s:25:\"database_trashed_comments\";i:1;s:23:\"database_all_transients\";i:1;s:25:\"sitemap_preload_url_crawl\";s:6:\"500000\";s:8:\"sitemaps\";a:0:{}s:12:\"dns_prefetch\";a:0:{}s:16:\"cloudflare_email\";s:0:\"\";s:18:\"cloudflare_api_key\";s:0:\"\";s:17:\"cloudflare_domain\";s:11:\"Webdemo.com\";s:18:\"cloudflare_devmode\";i:0;s:24:\"cloudflare_auto_settings\";i:0;s:27:\"cloudflare_protocol_rewrite\";s:1:\"0\";s:14:\"wl_plugin_name\";s:9:\"WP Rocket\";s:13:\"wl_plugin_URI\";s:20:\"https://wp-rocket.me\";s:14:\"wl_description\";a:1:{i:0;s:38:\"The best WordPress performance plugin.\";}s:9:\"wl_author\";s:8:\"WP Media\";s:13:\"wl_author_URI\";s:19:\"https://wp-media.me\";s:16:\"lazyload_youtube\";i:0;s:16:\"exclude_defer_js\";a:0:{}s:22:\"database_spam_comments\";i:0;s:27:\"database_expired_transients\";i:0;s:24:\"database_optimize_tables\";i:0;s:26:\"schedule_automatic_cleanup\";i:0;s:14:\"manual_preload\";i:0;s:17:\"automatic_preload\";i:0;s:15:\"sitemap_preload\";i:0;s:14:\"wl_plugin_slug\";s:8:\"wprocket\";}","yes"),
("476","rocket_analytics_notice_displayed","1","yes"),
("540","wpseo_sitemap_custom_css_cache_validator","2AhoR","no"),
("579","shinsenter_deferjs_hide_warnings","1","yes"),
("580","shinsenter_deferjs_default_defer_time","50","yes"),
("581","shinsenter_deferjs_enable_preloading","1","yes"),
("582","shinsenter_deferjs_enable_dns_prefetch","1","yes"),
("583","shinsenter_deferjs_fix_render_blocking","1","yes"),
("584","shinsenter_deferjs_minify_output_html","1","yes"),
("585","shinsenter_deferjs_add_missing_meta_tags","1","yes"),
("586","shinsenter_deferjs_enable_defer_css","1","yes"),
("587","shinsenter_deferjs_enable_defer_images","1","yes"),
("588","shinsenter_deferjs_enable_defer_iframes","1","yes"),
("589","shinsenter_deferjs_enable_defer_background","1","yes"),
("590","shinsenter_deferjs_defer_web_fonts","1","yes"),
("591","shinsenter_deferjs_web_fonts_patterns","a:4:{i:0;s:23:\"_debugbar.*stylesheets\";i:1;s:26:\"fonts\\.google(apis)?\\.com\";i:2;s:32:\"(gadget|popup|modal)[^\\/]*\\.css\";i:3;s:67:\"(font-awesome|typicons|devicons|iconset)([-_][\\d\\.]+)?(\\.min)?\\.css\";}","yes"),
("592","shinsenter_deferjs_loader_scripts","a:1:{i:0;s:0:\"\";}","yes"),
("593","shinsenter_deferjs_do_not_optimize","a:3:{i:0;s:21:\"document\\.write\\s*\\(\";i:1;s:36:\"modernizr([-_][\\d\\.]+)?(\\.min)?\\.js\";i:2;s:46:\"(jquery([-_][\\d\\.]+)?(\\.min)?\\.js|jquery-core)\";}","yes"),
("594","shinsenter_deferjs_use_color_placeholder","1","yes"),
("595","shinsenter_deferjs_empty_gif","","yes"),
("596","shinsenter_deferjs_empty_src","about:blank","yes"),
("600","shinsenter_deferjs_append_defer_js","1","yes"),
("601","shinsenter_deferjs_enable_defer_scripts","","yes"),
("731","duplicator_pro_package_active","{\"Created\":\"2019-03-28 09:03:50\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.1.1\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190328_mauwebsitexuatkhaulaodong\",\"Hash\":\"f99d372e810bcf8a7610_20190328090350\",\"NameHash\":\"20190328_mauwebsitexuatkhaulaodong_f99d372e810bcf8a7610_20190328090350\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/xkld4\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190328_mauwebsitexuatkhaulaodong_f99d372e810bcf8a7610_20190328090350_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\",\"Size\":108649493,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"M\\u1eabu-web-b\\u00e1n-\\u0111\\u00e0n-guitar---Thi\\u1ebft-k\\u1ebf-website-t\\u1ea1i-Ninh-B\\u00ecnh.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/2019\\/03\\/M\\u1eabu-web-b\\u00e1n-\\u0111\\u00e0n-guitar---Thi\\u1ebft-k\\u1ebf-website-t\\u1ea1i-Ninh-B\\u00ecnh.jpg\"},{\"name\":\"M\\u1eabu-web-b\\u00e1n-\\u0111i\\u1ec7n-tho\\u1ea1i---Thi\\u1ebft-k\\u1ebf-website-t\\u1ea1i-Ninh-B\\u00ecnh.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-content\\/uploads\\/2019\\/03\\/M\\u1eabu-web-b\\u00e1n-\\u0111i\\u1ec7n-tho\\u1ea1i---Thi\\u1ebft-k\\u1ebf-website-t\\u1ea1i-Ninh-B\\u00ecnh.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/xkld4\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web08\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":3051,\"tablesSizeOnDisk\":5406720,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("733","_transient_timeout_wpseo_link_table_inaccessible","1588496720","no"),
("734","_transient_wpseo_link_table_inaccessible","0","no"),
("735","_transient_timeout_wpseo_meta_table_inaccessible","1588496720","no"),
("736","_transient_wpseo_meta_table_inaccessible","0","no"),
("764","themeisle_sdk_active_notification","a:2:{s:3:\"key\";s:30:\"menu_iconsThemeIsle_SDK_Logger\";s:4:\"time\";i:1556976253;}","yes"),
("792","new_admin_email","demo@gmail.com","yes"),
("819","dbprefix_old_dbprefix","xkld_","yes"),
("820","dbprefix_new","gdd_","yes"),
("876","recovery_keys","a:0:{}","yes"),
("1077","_transient_timeout_acf_plugin_updates","1558062001","no"),
("1078","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}","no"),
("1082","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558017336;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1083","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558017340;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.8.3\";s:4:\"xkld\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1093","_site_transient_timeout_theme_roots","1558019139","no"),
("1094","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:4:\"xkld\";s:7:\"/themes\";}","no"),
("1095","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558017341;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:25:\"menu-icons/menu-icons.php\";s:6:\"0.11.4\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"menu-icons/menu-icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/menu-icons\";s:4:\"slug\";s:10:\"menu-icons\";s:6:\"plugin\";s:25:\"menu-icons/menu-icons.php\";s:11:\"new_version\";s:6:\"0.11.4\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-icons/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/menu-icons.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/menu-icons/assets/icon-128x128.png?rev=1797515\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/menu-icons/assets/banner-772x250.png?rev=1797515\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("2","3","_wp_page_template","default"),
("20","13","_wp_attached_file","2019/03/logo-xkld.jpg"),
("21","13","_wp_attachment_metadata","a:5:{s:5:\"width\";i:89;s:6:\"height\";i:89;s:4:\"file\";s:21:\"2019/03/logo-xkld.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("22","14","_wp_attached_file","2019/03/cropped-logo-xkld.jpg"),
("23","14","_wp_attachment_context","site-icon"),
("24","14","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/03/cropped-logo-xkld.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-logo-xkld-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-logo-xkld-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-logo-xkld-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-logo-xkld-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-logo-xkld-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-logo-xkld-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("49","27","_edit_last","1"),
("50","27","_footer","normal"),
("51","27","_wp_page_template","page-right-sidebar.php"),
("52","27","_edit_lock","1553745211:1"),
("53","29","_edit_last","1"),
("54","29","_edit_lock","1553681618:1"),
("55","29","_footer","normal"),
("56","29","_wp_page_template","page-right-sidebar.php"),
("57","31","_edit_last","1"),
("58","31","_footer","normal"),
("59","31","_wp_page_template","page-right-sidebar.php"),
("60","31","_edit_lock","1553744101:1"),
("64","34","_menu_item_type","post_type"),
("65","34","_menu_item_menu_item_parent","0"),
("66","34","_menu_item_object_id","31"),
("67","34","_menu_item_object","page"),
("68","34","_menu_item_target",""),
("69","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("70","34","_menu_item_xfn",""),
("71","34","_menu_item_url",""),
("82","36","_menu_item_type","post_type"),
("83","36","_menu_item_menu_item_parent","0"),
("84","36","_menu_item_object_id","27"),
("85","36","_menu_item_object","page"),
("86","36","_menu_item_target",""),
("87","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("88","36","_menu_item_xfn",""),
("89","36","_menu_item_url",""),
("91","37","_menu_item_type","taxonomy"),
("92","37","_menu_item_menu_item_parent","0"),
("93","37","_menu_item_object_id","2"),
("94","37","_menu_item_object","category"),
("95","37","_menu_item_target",""),
("96","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("97","37","_menu_item_xfn",""),
("98","37","_menu_item_url",""),
("100","38","_menu_item_type","taxonomy"),
("101","38","_menu_item_menu_item_parent","0"),
("102","38","_menu_item_object_id","3"),
("103","38","_menu_item_object","category"),
("104","38","_menu_item_target",""),
("105","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("106","38","_menu_item_xfn",""),
("107","38","_menu_item_url",""),
("109","39","_menu_item_type","taxonomy"),
("110","39","_menu_item_menu_item_parent","0"),
("111","39","_menu_item_object_id","4"),
("112","39","_menu_item_object","category"),
("113","39","_menu_item_target",""),
("114","39","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("115","39","_menu_item_xfn",""),
("116","39","_menu_item_url",""),
("118","40","_menu_item_type","taxonomy"),
("119","40","_menu_item_menu_item_parent","0"),
("120","40","_menu_item_object_id","1"),
("121","40","_menu_item_object","category"),
("122","40","_menu_item_target",""),
("123","40","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("124","40","_menu_item_xfn",""),
("125","40","_menu_item_url",""),
("127","41","_menu_item_type","post_type"),
("128","41","_menu_item_menu_item_parent","0"),
("129","41","_menu_item_object_id","29"),
("130","41","_menu_item_object","page"),
("131","41","_menu_item_target",""),
("132","41","_menu_item_classes","a:1:{i:0;s:9:\"trang-chu\";}"),
("133","41","_menu_item_xfn",""),
("134","41","_menu_item_url",""),
("136","41","menu-icons","a:8:{s:4:\"type\";s:2:\"fa\";s:4:\"icon\";s:7:\"fa-home\";s:10:\"hide_label\";s:1:\"1\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.7\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}"),
("199","71","_menu_item_type","custom"),
("200","71","_menu_item_menu_item_parent","0"),
("201","71","_menu_item_object_id","71"),
("202","71","_menu_item_object","custom"),
("203","71","_menu_item_target",""),
("204","71","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("205","71","_menu_item_xfn",""),
("206","71","_menu_item_url","/dang-ky/"),
("208","72","_menu_item_type","custom"),
("209","72","_menu_item_menu_item_parent","0"),
("210","72","_menu_item_object_id","72"),
("211","72","_menu_item_object","custom"),
("212","72","_menu_item_target",""),
("213","72","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("214","72","_menu_item_xfn",""),
("215","72","_menu_item_url","/dang-nhap/"),
("217","73","_menu_item_type","custom"),
("218","73","_menu_item_menu_item_parent","0"),
("219","73","_menu_item_object_id","73"),
("220","73","_menu_item_object","custom"),
("221","73","_menu_item_target",""),
("222","73","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("223","73","_menu_item_xfn",""),
("224","73","_menu_item_url","#"),
("234","77","_menu_item_type","taxonomy");
INSERT INTO gdd_postmeta VALUES
("235","77","_menu_item_menu_item_parent","40"),
("236","77","_menu_item_object_id","13"),
("237","77","_menu_item_object","category"),
("238","77","_menu_item_target",""),
("239","77","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("240","77","_menu_item_xfn",""),
("241","77","_menu_item_url",""),
("243","78","_menu_item_type","taxonomy"),
("244","78","_menu_item_menu_item_parent","40"),
("245","78","_menu_item_object_id","10"),
("246","78","_menu_item_object","category"),
("247","78","_menu_item_target",""),
("248","78","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("249","78","_menu_item_xfn",""),
("250","78","_menu_item_url",""),
("252","79","_menu_item_type","taxonomy"),
("253","79","_menu_item_menu_item_parent","40"),
("254","79","_menu_item_object_id","12"),
("255","79","_menu_item_object","category"),
("256","79","_menu_item_target",""),
("257","79","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("258","79","_menu_item_xfn",""),
("259","79","_menu_item_url",""),
("261","80","_menu_item_type","taxonomy"),
("262","80","_menu_item_menu_item_parent","40"),
("263","80","_menu_item_object_id","11"),
("264","80","_menu_item_object","category"),
("265","80","_menu_item_target",""),
("266","80","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("267","80","_menu_item_xfn",""),
("268","80","_menu_item_url",""),
("270","81","_menu_item_type","taxonomy"),
("271","81","_menu_item_menu_item_parent","40"),
("272","81","_menu_item_object_id","9"),
("273","81","_menu_item_object","category"),
("274","81","_menu_item_target",""),
("275","81","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("276","81","_menu_item_xfn",""),
("277","81","_menu_item_url",""),
("279","82","_menu_item_type","taxonomy"),
("280","82","_menu_item_menu_item_parent","40"),
("281","82","_menu_item_object_id","7"),
("282","82","_menu_item_object","category"),
("283","82","_menu_item_target",""),
("284","82","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("285","82","_menu_item_xfn",""),
("286","82","_menu_item_url",""),
("288","83","_menu_item_type","taxonomy"),
("289","83","_menu_item_menu_item_parent","40"),
("290","83","_menu_item_object_id","8"),
("291","83","_menu_item_object","category"),
("292","83","_menu_item_target",""),
("293","83","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("294","83","_menu_item_xfn",""),
("295","83","_menu_item_url",""),
("297","84","_menu_item_type","taxonomy"),
("298","84","_menu_item_menu_item_parent","40"),
("299","84","_menu_item_object_id","14"),
("300","84","_menu_item_object","category"),
("301","84","_menu_item_target",""),
("302","84","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("303","84","_menu_item_xfn",""),
("304","84","_menu_item_url",""),
("355","107","_wp_attached_file","2019/03/dot1.jpg"),
("356","107","_wp_attachment_metadata","a:5:{s:5:\"width\";i:7;s:6:\"height\";i:7;s:4:\"file\";s:16:\"2019/03/dot1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("357","108","_wp_attached_file","2019/03/dot2.jpg"),
("358","108","_wp_attachment_metadata","a:5:{s:5:\"width\";i:7;s:6:\"height\";i:7;s:4:\"file\";s:16:\"2019/03/dot2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("359","107","_edit_lock","1553618106:1"),
("379","118","_wp_attached_file","2019/03/1024px-Feed-icon.svg.png"),
("380","118","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:32:\"2019/03/1024px-Feed-icon.svg.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("402","135","_edit_last","1"),
("403","135","_edit_lock","1553619459:1"),
("404","136","_wp_attached_file","2019/03/post1.jpg"),
("405","136","_wp_attachment_metadata","a:5:{s:5:\"width\";i:450;s:6:\"height\";i:253;s:4:\"file\";s:17:\"2019/03/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("406","135","_thumbnail_id","136"),
("408","138","_edit_last","1"),
("409","138","_edit_lock","1553619599:1"),
("410","139","_wp_attached_file","2019/03/cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan.jpg"),
("411","139","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:214;s:4:\"file\";s:67:\"2019/03/cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:67:\"cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("412","138","_thumbnail_id","139"),
("414","141","_edit_last","1"),
("415","141","_edit_lock","1553619740:1"),
("416","142","_wp_attached_file","2019/03/pic-News-_636858186419581654.jpg"),
("417","142","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:196;s:4:\"file\";s:40:\"2019/03/pic-News-_636858186419581654.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"pic-News-_636858186419581654-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"pic-News-_636858186419581654-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("418","141","_thumbnail_id","142"),
("420","144","_edit_last","1"),
("421","144","_edit_lock","1553683259:1"),
("422","145","_wp_attached_file","2019/03/0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan.jpg"),
("423","145","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:242;s:4:\"file\";s:66:\"2019/03/0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("424","144","_thumbnail_id","145"),
("426","147","_edit_last","1"),
("427","147","_edit_lock","1553761893:1"),
("428","148","_wp_attached_file","2019/03/vien-duong-lao-dai-trung.jpg"),
("429","148","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:195;s:4:\"file\";s:36:\"2019/03/vien-duong-lao-dai-trung.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"vien-duong-lao-dai-trung-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"vien-duong-lao-dai-trung-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("430","147","_thumbnail_id","148"),
("432","150","_edit_last","1"),
("433","150","_edit_lock","1553758937:1"),
("434","151","_wp_attached_file","2019/03/xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834.jpeg"),
("435","151","_wp_attachment_metadata","a:5:{s:5:\"width\";i:350;s:6:\"height\";i:200;s:4:\"file\";s:125:\"2019/03/xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:125:\"xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:125:\"xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-300x171.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:13:\"?????????????\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("436","150","_thumbnail_id","818");
INSERT INTO gdd_postmeta VALUES
("438","153","_edit_last","1"),
("439","153","_edit_lock","1553761717:1"),
("440","154","_wp_attached_file","2019/03/images-2.jpg"),
("441","154","_wp_attachment_metadata","a:5:{s:5:\"width\";i:276;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2019/03/images-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("442","153","_thumbnail_id","154"),
("444","156","_edit_last","1"),
("445","156","_edit_lock","1553761687:1"),
("446","157","_wp_attached_file","2019/03/images-3.jpg"),
("447","157","_wp_attachment_metadata","a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2019/03/images-3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("448","156","_thumbnail_id","157"),
("468","29","_thumbnail_id",""),
("520","209","_wp_attached_file","2019/03/images-4.jpg"),
("521","209","_wp_attachment_metadata","a:5:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:20:\"2019/03/images-4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("522","208","_edit_last","1"),
("523","208","_thumbnail_id","816"),
("525","208","_edit_lock","1553757486:1"),
("554","226","_wp_attached_file","2019/03/xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-1.jpeg"),
("555","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:700;s:6:\"height\";i:400;s:4:\"file\";s:127:\"2019/03/xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-1.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:127:\"xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:127:\"xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-1-300x171.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:13:\"?????????????\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("639","278","_wp_attached_file","2019/03/dot-post.jpg"),
("640","278","_wp_attachment_metadata","a:5:{s:5:\"width\";i:9;s:6:\"height\";i:9;s:4:\"file\";s:20:\"2019/03/dot-post.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("728","325","_wp_attached_file","2019/03/phone-icon.png"),
("729","325","_wp_attachment_metadata","a:5:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:22:\"2019/03/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("751","335","_wp_attached_file","2019/03/banner-quang-cao.jpg"),
("752","335","_wp_attachment_metadata","a:5:{s:5:\"width\";i:253;s:6:\"height\";i:329;s:4:\"file\";s:28:\"2019/03/banner-quang-cao.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"banner-quang-cao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"banner-quang-cao-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("753","29","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("754","29","_oembed_time_2f82050c08cb6987fe534971661e0859","1553674936"),
("776","348","_form","<div class=\"form-dang-ky\">\n<div class=\"row-form\">\n<div class=\"left\">\n<label>H??? v?? t??n:</label>\n</div>\n<div class=\"right\">\n[text* text-870 placeholder \"Nh???p h??? t??n...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Gi???i t??nh:</label>\n</div>\n<div class=\"right\">\n[select* menu-278 \"Gi???i t??nh\" \"Nam\" \"N???\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>V??ng l??m vi???c:</label>\n</div>\n<div class=\"right\">\n[select menu-2799 \"V??ng l??m vi???c\" \"????i B???c\" \"????i Trung\" \"????i Nam\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Ng??nh ngh???:</label>\n</div>\n<div class=\"right\">\n[select menu-2734 \"Ng??nh ngh???\" \"K??? s?? c?? kh??\" \"H??? l??\" \"Nh??n c??ng may m???c\" \"Ng??nh ngh??? kh??c\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Th???i h???n H??:</label>\n</div>\n<div class=\"right\">\n[select menu-2732134 \"Th???i h???n H??\" \"2 n??m\" \"3 n??m\" \"4 n??m\" \"5 n??m\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Tr??nh ?????:</label>\n</div>\n<div class=\"right\">\n[select menu-27090 \"Tr??nh ?????\" \"Ph??? th??ng\" \"C???p 3\" \"Trung c???p\" \"Cao ?????ng\" \"?????i H???c\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Email:</label>\n</div>\n<div class=\"right\">\n[email email-174 placeholder \"Nh???p email...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>??i???n tho???i:</label>\n</div>\n<div class=\"right\">\n[tel* tel-102 placeholder \"Nh???p s??? ??i???n tho???i...\"]\n</div>\n</div>\n[submit \"G???i ????ng k??\"]\n</div>"),
("777","348","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:66:\"M???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:492:\"C?? m???t y??u c???u ????ng k?? ????n xu???t kh???u lao ?????ng t???i website:\n- H??? v?? t??n: [text-870]\n- Gi???i t??nh: [menu-278]\n- S??? ??i???n tho???i: [tel-102]\n- ?????a ch??? email: [email-174]\n- Ng??nh ngh???: [menu-2734]\n- V??ng l??m vi???c: [menu-2799]\n- Th???i h???n h???p ?????ng: [menu-2732134]\n- Tr??nh ?????: [menu-27090]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("778","348","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:66:\"M???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:196:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("779","348","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("780","348","_additional_settings",""),
("781","348","_locale","vi"),
("813","363","_edit_last","1"),
("814","363","_edit_lock","1553676840:1"),
("815","363","_thumbnail_id",""),
("816","368","_wp_attached_file","2019/03/logo2.jpg"),
("817","368","_wp_attachment_metadata","a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:17:\"2019/03/logo2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("831","383","_wp_attached_file","2019/03/mail-icon.jpg"),
("832","383","_wp_attachment_metadata","a:5:{s:5:\"width\";i:15;s:6:\"height\";i:15;s:4:\"file\";s:21:\"2019/03/mail-icon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("833","384","_wp_attached_file","2019/03/map-icon.jpg"),
("834","384","_wp_attachment_metadata","a:5:{s:5:\"width\";i:15;s:6:\"height\";i:15;s:4:\"file\";s:20:\"2019/03/map-icon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1007","156","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1008","156","_oembed_time_2f82050c08cb6987fe534971661e0859","1553683225"),
("1093","147","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1094","147","_oembed_time_2f82050c08cb6987fe534971661e0859","1553689179"),
("1095","208","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1096","208","_oembed_time_2f82050c08cb6987fe534971661e0859","1553699873"),
("1117","520","_edit_last","1"),
("1118","520","_edit_lock","1553757932:1"),
("1120","208","_yoast_wpseo_content_score","30"),
("1121","208","_yoast_wpseo_focuskeywords",""),
("1122","208","_yoast_wpseo_keywordsynonyms",""),
("1123","208","tieu_de_don_hang","S???n xu???t ???c v??t t???i ????i Loan"),
("1124","208","_tieu_de_don_hang","field_5c9b9580e157f"),
("1125","208","so_luong_tiep_nhan","25 nh??n vi??n nam"),
("1126","208","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("1127","208","noi_lam_vien","C??ng ty TNHH ABC - ????i Trung, ????i Loan"),
("1128","208","_noi_lam_vien","field_5c9b96dae1581"),
("1129","208","nganh_nghe","C??ng nh??n may"),
("1130","208","_nganh_nghe","field_5c9b96fde1582"),
("1131","208","thoi_han_hop_dong","3 n??m"),
("1132","208","_thoi_han_hop_dong","field_5c9b9713e1583"),
("1133","208","gioi_tinh","Nam"),
("1134","208","_gioi_tinh","field_5c9b9759e1586"),
("1135","208","do_tuoi","D?????i 35 tu???i"),
("1136","208","_do_tuoi","field_5c9b977de1587"),
("1137","208","trinh_do_van_hoa","Trung c???p/ Trung h???c ph??? th??ng"),
("1138","208","_trinh_do_van_hoa","field_5c9b9794e1588"),
("1139","208","yeu_cau_tay_nghe","Ch??a y??u c???u"),
("1140","208","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("1141","208","hinh_anh","a:4:{i:0;s:3:\"148\";i:1;s:3:\"145\";i:2;s:3:\"142\";i:3;s:3:\"816\";}"),
("1142","208","_hinh_anh","field_5c9b97e9e158b"),
("1143","208","luong_thang","2.000 USD/th??ng"),
("1144","208","_luong_thang","field_5c9b980fe158d"),
("1145","208","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("1146","208","_gio_lam_viec","field_5c9b982de158e"),
("1147","208","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("1148","208","_ngay_nghi","field_5c9b9845e158f"),
("1149","208","tang_ca","40-70h"),
("1150","208","_tang_ca","field_5c9b9860e1590"),
("1151","208","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("1152","208","_bao_hiem","field_5c9b987ae1591"),
("1153","208","vay_von","H??? tr??? vay v???n t???i Vi???t Nam"),
("1154","208","_vay_von","field_5c9b9894e1592"),
("1155","208","giay_to_can_thiet_1","Kh??m t???ng qu??t s???c kh???e t???i b???nh vi???n ch??? ?????nh"),
("1156","208","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("1157","208","giay_to_can_thiet_2","H??? s?? n???p tr???c ti???p t???i c??ng ty"),
("1158","208","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("1159","208","giay_to_can_thiet_3","C??c bi???u m???u, ????n t??? nguy???n, cam k???t theo c??ng ty"),
("1160","208","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("1161","208","giay_to_can_thiet_4",""),
("1162","208","_giay_to_can_thiet_4","field_5c9b98f7e1597"),
("1163","208","giay_to_can_thiet_5",""),
("1164","208","_giay_to_can_thiet_5","field_5c9b98fee1598"),
("1165","208","han_nop_ho_so","20190329"),
("1166","208","_han_nop_ho_so","field_5c9b9919e159a"),
("1167","208","du_kien_thi_tuyen","20190331"),
("1168","208","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("1169","208","nhap_canh_du_kien","Th??ng 4/2019"),
("1170","208","_nhap_canh_du_kien","field_5c9b9973e159c");
INSERT INTO gdd_postmeta VALUES
("1171","208","dao_tao_du_kien","????o t???o sau khi tr??ng tuy???n"),
("1172","208","_dao_tao_du_kien","field_5c9b9990e159d"),
("1173","208","thi_tuyen_1","V??ng 1: C??ng ty ph???ng v???n"),
("1174","208","_thi_tuyen_1","field_5c9b99b9e159f"),
("1175","208","thi_tuyen_2","V??ng 2: Nh?? tuy???n d???ng ????i Loan tr???c ti???p ph???ng v???n"),
("1176","208","_thi_tuyen_2","field_5c9b99e2e15a0"),
("1177","208","thi_tuyen_3","K???t qu??? ph???ng v???n c?? ngay trong ng??y"),
("1178","208","_thi_tuyen_3","field_5c9b99e7e15a1"),
("1179","208","thi_tuyen_4","C?? 1 th??ng ????? h???c tr?????c khi sang ????i Loan"),
("1180","208","_thi_tuyen_4","field_5c9b99eee15a2"),
("1239","208","_yoast_wpseo_primary_category",""),
("1418","208","thi_tuyen","- Nh?? tuy???n d???ng ????i Loan s??? tr???c ti???p sang ph???ng v???n lao ?????ng\n\n- K???t qu??? ph???ng v???n s??? c?? trong ng??y\n\n- Khi tr??ng tuy???n b???n c?? 1 th??ng ????? h???c tr?????c khi sang l??m vi???c t???i ????i Loan"),
("1419","208","_thi_tuyen","field_5c9b99b9e159f"),
("1480","565","_form","[text* text-390 placeholder \"H??? v?? t??n...\"]\n[tel* tel-538 placeholder \"S??? ??i???n tho???i...\"]\n[submit \"G???i li??n h???\"]"),
("1481","565","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:49:\"M???u website xu???t kh???u lao ?????ng - Webdemo\";s:6:\"sender\";s:29:\"<wordpress@xkld4.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:271:\"C?? ng?????i m???i li??n h??? t?? v???n tr??n website:\n- H??? v?? t??n: [text-390]\n- S??? ??i???n tho???i: [tel-538]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1482","565","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:66:\"M???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:196:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1483","565","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("1484","565","_additional_settings",""),
("1485","565","_locale","vi"),
("1488","208","gioi_thieu_don_hang","C??ng ty tuy???n d???ng lao ?????ng l?? m???t ????n v??? chuy??n s???n x???t v?? cung c???p v??? c??c lo???i ???c v??t ????? ph???c v??? c??c ng??nh ??i???n c??ng nghi???p, gia d???ng xe m??y, xe ?????p, c??ng nghi???p h??ng ?????u ????i Loan. C??ng ty ti???p nh???n lao ?????ng c?? b??? d??y v??? kinh nghi???m l??m c??c lo???i ???c v??t ????? cung c???p h??ng ng??y cho nhu c???u s??? d???ng. Tuy nhi??n do thi???u h???t lao ?????ng n??n trong th??ng 7 n??y c??ng ty ti???p nh???n t???i ????i Loan mu???n th??ng qua ch??ng t??i."),
("1489","208","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("1728","144","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1729","144","_oembed_time_2f82050c08cb6987fe534971661e0859","1553740885"),
("1740","153","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1741","153","_oembed_time_2f82050c08cb6987fe534971661e0859","1553741660"),
("1743","153","_yoast_wpseo_content_score","90"),
("1744","153","_yoast_wpseo_focuskeywords",""),
("1745","153","_yoast_wpseo_keywordsynonyms",""),
("1746","153","gioi_thieu_don_hang","C??ng ty TNHH Webdemo.com tuy???n sinh c??ng nh??n ng?????i Vi???t Nam sang l??m vi???c t???i ????i Loan th???i h???n 3 n??m. C??ng vi???c ch??? y???u l?? tham gia c??c d??y chuy???n may xu???t kh???u sang Ch??u ??u v?? Ch??u M???."),
("1747","153","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("1748","153","tieu_de_don_hang","C??ng nh??n may t???i ????i Trung"),
("1749","153","_tieu_de_don_hang","field_5c9b9580e157f"),
("1750","153","so_luong_tiep_nhan","25 n??? d?????i 35 tu???i"),
("1751","153","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("1752","153","noi_lam_vien","????i Trung, Taiwan"),
("1753","153","_noi_lam_vien","field_5c9b96dae1581"),
("1754","153","nganh_nghe","May c??ng nghi???p"),
("1755","153","_nganh_nghe","field_5c9b96fde1582"),
("1756","153","thoi_han_hop_dong","3 n??m"),
("1757","153","_thoi_han_hop_dong","field_5c9b9713e1583"),
("1758","153","gioi_tinh","N???"),
("1759","153","_gioi_tinh","field_5c9b9759e1586"),
("1760","153","do_tuoi","d?????i 35 tu???i"),
("1761","153","_do_tuoi","field_5c9b977de1587"),
("1762","153","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("1763","153","_trinh_do_van_hoa","field_5c9b9794e1588"),
("1764","153","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("1765","153","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("1766","153","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"148\";i:2;s:3:\"145\";i:3;s:3:\"139\";}"),
("1767","153","_hinh_anh","field_5c9b97e9e158b"),
("1768","153","luong_thang","2000 USD/th??ng"),
("1769","153","_luong_thang","field_5c9b980fe158d"),
("1770","153","gio_lam_viec","t??? 8:00 - 17:30"),
("1771","153","_gio_lam_viec","field_5c9b982de158e"),
("1772","153","ngay_nghi","Ngh??? Ch??? nh???t + ng??y l??? t???t ????i Loan"),
("1773","153","_ngay_nghi","field_5c9b9845e158f"),
("1774","153","tang_ca","30-40h/tu???n"),
("1775","153","_tang_ca","field_5c9b9860e1590"),
("1776","153","bao_hiem","????ng b???o hi???m theo quy ?????nh c??ng ty"),
("1777","153","_bao_hiem","field_5c9b987ae1591"),
("1778","153","vay_von","H??? tr??? vay v???n l??m h??? s??"),
("1779","153","_vay_von","field_5c9b9894e1592"),
("1780","153","giay_to_can_thiet_1","Gi???y ????ng k?? theo nguy???n v???ng"),
("1781","153","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("1782","153","giay_to_can_thiet_2","Gi???y kh??m s???c kh???e t???ng qu??t"),
("1783","153","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("1784","153","giay_to_can_thiet_3","C??c gi???y t??? kh??c theo quy ?????nh"),
("1785","153","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("1786","153","han_nop_ho_so","20190315"),
("1787","153","_han_nop_ho_so","field_5c9b9919e159a"),
("1788","153","du_kien_thi_tuyen","20190331"),
("1789","153","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("1790","153","nhap_canh_du_kien","Th??ng 2/2020"),
("1791","153","_nhap_canh_du_kien","field_5c9b9973e159c"),
("1792","153","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("1793","153","_dao_tao_du_kien","field_5c9b9990e159d"),
("1794","153","thi_tuyen","<ul>\n 	<li>133.??<a href=\"http://giacongcokhi.Webdemo.com/\" target=\"blank\">M???u website d???ch v??? c???a nh??m, c???a cu???n, gia c??ng c?? kh??: giacongcokhi.Webdemo.com</a></li>\n 	<li>132.??<a href=\"http://edu5.Webdemo.com/\" target=\"blank\">M???u website trung t??m Ti???ng Anh tr??? em: edu5.Webdemo.com</a></li>\n 	<li>131.??<a href=\"http://cayxanh3.Webdemo.com/\" target=\"blank\">M???u website b??n c??y phong th???y, c??y v??n ph??ng ?????p: cayxanh3.Webdemo.com</a></li>\n</ul>"),
("1795","153","_thi_tuyen","field_5c9b99b9e159f"),
("1846","153","_yoast_wpseo_primary_category",""),
("1850","147","_yoast_wpseo_content_score","60"),
("1851","147","_yoast_wpseo_focuskeywords",""),
("1852","147","_yoast_wpseo_keywordsynonyms",""),
("1853","147","gioi_thieu_don_hang","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao"),
("1854","147","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("1855","147","tieu_de_don_hang","S???n xu???t ???c v??t t???i Cao H??ng, ????i Loan"),
("1856","147","_tieu_de_don_hang","field_5c9b9580e157f"),
("1857","147","so_luong_tiep_nhan","25 nam"),
("1858","147","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("1859","147","noi_lam_vien","Cao H??ng, ????i Loan"),
("1860","147","_noi_lam_vien","field_5c9b96dae1581"),
("1861","147","nganh_nghe","S???n xu???t c?? kh??"),
("1862","147","_nganh_nghe","field_5c9b96fde1582"),
("1863","147","thoi_han_hop_dong","3 n??m"),
("1864","147","_thoi_han_hop_dong","field_5c9b9713e1583"),
("1865","147","gioi_tinh","Nam"),
("1866","147","_gioi_tinh","field_5c9b9759e1586"),
("1867","147","do_tuoi","<35 tu???i"),
("1868","147","_do_tuoi","field_5c9b977de1587"),
("1869","147","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("1870","147","_trinh_do_van_hoa","field_5c9b9794e1588");
INSERT INTO gdd_postmeta VALUES
("1871","147","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("1872","147","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("1873","147","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"145\";i:2;s:3:\"154\";i:3;s:3:\"139\";}"),
("1874","147","_hinh_anh","field_5c9b97e9e158b"),
("1875","147","luong_thang","1500USD/th??ng"),
("1876","147","_luong_thang","field_5c9b980fe158d"),
("1877","147","gio_lam_viec","8 ti???ng/ng??y t??? 8:00 ?????n 17:30"),
("1878","147","_gio_lam_viec","field_5c9b982de158e"),
("1879","147","ngay_nghi","Ngh??? Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("1880","147","_ngay_nghi","field_5c9b9845e158f"),
("1881","147","tang_ca","50-80h/tu???n"),
("1882","147","_tang_ca","field_5c9b9860e1590"),
("1883","147","bao_hiem","N???p b???o hi???m theo quy ?????nh c???a C??ng ty"),
("1884","147","_bao_hiem","field_5c9b987ae1591"),
("1885","147","vay_von","H??? tr??? vay v???n"),
("1886","147","_vay_von","field_5c9b9894e1592"),
("1887","147","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng quan"),
("1888","147","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("1889","147","giay_to_can_thiet_2","????n xin tuy???n d???ng vi???t tay"),
("1890","147","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("1891","147","giay_to_can_thiet_3","H??? s?? c???n thi???t theo h?????ng d???n"),
("1892","147","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("1893","147","han_nop_ho_so","20190316"),
("1894","147","_han_nop_ho_so","field_5c9b9919e159a"),
("1895","147","du_kien_thi_tuyen","20190329"),
("1896","147","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("1897","147","nhap_canh_du_kien","Th??ng 3/2020"),
("1898","147","_nhap_canh_du_kien","field_5c9b9973e159c"),
("1899","147","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("1900","147","_dao_tao_du_kien","field_5c9b9990e159d"),
("1901","147","thi_tuyen","<ul>\n 	<li>130.??<a href=\"http://camera2.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh cho ?? t?? - m???u 2: camera2.webdemo.com</a></li>\n 	<li>129.??<a href=\"http://camera.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh ?????p m???i nh???t: camera.webdemo.com</a></li>\n 	<li>128.??<a href=\"http://shopruou.webdemo.com/\" target=\"blank\">M???u website b??n r?????u t??y ?????p, hi???n ?????i: shopruou.webdemo.com</a></li>\n</ul>"),
("1902","147","_thi_tuyen","field_5c9b99b9e159f"),
("1953","147","_yoast_wpseo_primary_category",""),
("1962","138","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1963","138","_oembed_time_2f82050c08cb6987fe534971661e0859","1553742384"),
("1966","31","_yoast_wpseo_content_score","90"),
("1967","31","_yoast_wpseo_focuskeywords",""),
("1968","31","_yoast_wpseo_keywordsynonyms",""),
("1969","31","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("1970","31","_oembed_time_2f82050c08cb6987fe534971661e0859","1553742528"),
("1984","670","_form","<div class=\"form-page-lien-he\">\n<div class=\"row-form\">\n<div class=\"left\">\n<label>T??n c???a b???n (*)</label>\n</div>\n<div class=\"right\">\n[text* text-202 placeholder \"Nh???p h??? t??n....\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Email c???a b???n</label>\n</div>\n<div class=\"right\">\n[email email-593 placeholder \"Email c???a b???n...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>S??? ??i???n tho???i</label>\n</div>\n<div class=\"right\">\n[tel* tel-886 placeholder \"S??? ??i???n tho???i...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Ti??u ????? th??ng ??i???p</label>\n</div>\n<div class=\"right\">\n[text text-2045 placeholder \"Ti??u ????? th??ng ??i???p...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>N???i dung li??n h???</label>\n</div>\n<div class=\"right\">\n[textarea textarea-933 placeholder \"N???i dung li??n h???...\"]\n</div>\n</div>\n<div class=\"row-submit\">[submit \"G???i li??n h???\"]</div>\n</div>"),
("1985","670","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:66:\"M???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:353:\"C?? ng?????i li??n h??? qua website:\n- H??? t??n: [text-202]\n- ?????a ch??? email: [email-593]\n- S??? ??i???n tho???i: [tel-886]\n- Ti??u ????? li??n h???: [text-2045]\n- Th??ng ??i???p: [textarea-933]\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1986","670","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:66:\"M???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:196:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1987","670","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("1988","670","_additional_settings",""),
("1989","670","_locale","vi"),
("2038","694","_edit_last","1"),
("2039","694","_yoast_wpseo_content_score","30"),
("2040","694","_yoast_wpseo_focuskeywords",""),
("2041","694","_yoast_wpseo_keywordsynonyms",""),
("2042","694","_yoast_wpseo_primary_block_categories",""),
("2043","694","_edit_lock","1553744764:1"),
("2047","694","_thumbnail_id",""),
("2050","698","_wp_attached_file","2019/03/loi-404.jpg"),
("2051","698","_wp_attachment_metadata","a:5:{s:5:\"width\";i:417;s:6:\"height\";i:294;s:4:\"file\";s:19:\"2019/03/loi-404.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"loi-404-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"loi-404-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2057","27","_yoast_wpseo_content_score","60"),
("2058","27","_yoast_wpseo_focuskeywords",""),
("2059","27","_yoast_wpseo_keywordsynonyms",""),
("2060","27","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("2061","27","_oembed_time_2f82050c08cb6987fe534971661e0859","1553745355"),
("2083","715","_edit_last","1"),
("2084","715","_edit_lock","1553747634:1"),
("2085","715","_footer","normal"),
("2086","715","_wp_page_template","page-login.php"),
("2087","715","_yoast_wpseo_content_score","30"),
("2088","715","_yoast_wpseo_focuskeywords",""),
("2089","715","_yoast_wpseo_keywordsynonyms",""),
("2090","715","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("2091","715","_oembed_time_2f82050c08cb6987fe534971661e0859","1553746237"),
("2120","730","_edit_last","1"),
("2121","730","_footer","normal"),
("2122","730","_wp_page_template","dang-ky.php"),
("2123","730","_yoast_wpseo_content_score","30"),
("2124","730","_yoast_wpseo_focuskeywords",""),
("2125","730","_yoast_wpseo_keywordsynonyms",""),
("2126","730","_edit_lock","1553747672:1"),
("2132","730","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("2133","730","_oembed_time_2f82050c08cb6987fe534971661e0859","1553747817"),
("2192","141","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("2193","141","_oembed_time_2f82050c08cb6987fe534971661e0859","1553748923"),
("2237","781","_menu_item_type","post_type"),
("2238","781","_menu_item_menu_item_parent","0"),
("2239","781","_menu_item_object_id","29"),
("2240","781","_menu_item_object","page"),
("2241","781","_menu_item_target",""),
("2242","781","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2243","781","_menu_item_xfn",""),
("2244","781","_menu_item_url",""),
("2246","782","_menu_item_type","post_type"),
("2247","782","_menu_item_menu_item_parent","803"),
("2248","782","_menu_item_object_id","27"),
("2249","782","_menu_item_object","page"),
("2250","782","_menu_item_target",""),
("2251","782","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2252","782","_menu_item_xfn",""),
("2253","782","_menu_item_url",""),
("2255","783","_menu_item_type","post_type"),
("2256","783","_menu_item_menu_item_parent","803"),
("2257","783","_menu_item_object_id","730"),
("2258","783","_menu_item_object","page");
INSERT INTO gdd_postmeta VALUES
("2259","783","_menu_item_target",""),
("2260","783","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2261","783","_menu_item_xfn",""),
("2262","783","_menu_item_url",""),
("2264","784","_menu_item_type","post_type"),
("2265","784","_menu_item_menu_item_parent","803"),
("2266","784","_menu_item_object_id","715"),
("2267","784","_menu_item_object","page"),
("2268","784","_menu_item_target",""),
("2269","784","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2270","784","_menu_item_xfn",""),
("2271","784","_menu_item_url",""),
("2273","785","_menu_item_type","post_type"),
("2274","785","_menu_item_menu_item_parent","803"),
("2275","785","_menu_item_object_id","31"),
("2276","785","_menu_item_object","page"),
("2277","785","_menu_item_target",""),
("2278","785","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2279","785","_menu_item_xfn",""),
("2280","785","_menu_item_url",""),
("2282","786","_menu_item_type","taxonomy"),
("2283","786","_menu_item_menu_item_parent","0"),
("2284","786","_menu_item_object_id","3"),
("2285","786","_menu_item_object","category"),
("2286","786","_menu_item_target",""),
("2287","786","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2288","786","_menu_item_xfn",""),
("2289","786","_menu_item_url",""),
("2291","787","_menu_item_type","taxonomy"),
("2292","787","_menu_item_menu_item_parent","786"),
("2293","787","_menu_item_object_id","24"),
("2294","787","_menu_item_object","category"),
("2295","787","_menu_item_target",""),
("2296","787","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2297","787","_menu_item_xfn",""),
("2298","787","_menu_item_url",""),
("2300","788","_menu_item_type","taxonomy"),
("2301","788","_menu_item_menu_item_parent","786"),
("2302","788","_menu_item_object_id","25"),
("2303","788","_menu_item_object","category"),
("2304","788","_menu_item_target",""),
("2305","788","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2306","788","_menu_item_xfn",""),
("2307","788","_menu_item_url",""),
("2309","789","_menu_item_type","taxonomy"),
("2310","789","_menu_item_menu_item_parent","786"),
("2311","789","_menu_item_object_id","26"),
("2312","789","_menu_item_object","category"),
("2313","789","_menu_item_target",""),
("2314","789","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2315","789","_menu_item_xfn",""),
("2316","789","_menu_item_url",""),
("2318","790","_menu_item_type","taxonomy"),
("2319","790","_menu_item_menu_item_parent","0"),
("2320","790","_menu_item_object_id","4"),
("2321","790","_menu_item_object","category"),
("2322","790","_menu_item_target",""),
("2323","790","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2324","790","_menu_item_xfn",""),
("2325","790","_menu_item_url",""),
("2327","791","_menu_item_type","taxonomy"),
("2328","791","_menu_item_menu_item_parent","790"),
("2329","791","_menu_item_object_id","28"),
("2330","791","_menu_item_object","category"),
("2331","791","_menu_item_target",""),
("2332","791","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2333","791","_menu_item_xfn",""),
("2334","791","_menu_item_url",""),
("2336","792","_menu_item_type","taxonomy"),
("2337","792","_menu_item_menu_item_parent","790"),
("2338","792","_menu_item_object_id","27"),
("2339","792","_menu_item_object","category"),
("2340","792","_menu_item_target",""),
("2341","792","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2342","792","_menu_item_xfn",""),
("2343","792","_menu_item_url",""),
("2345","793","_menu_item_type","taxonomy"),
("2346","793","_menu_item_menu_item_parent","0"),
("2347","793","_menu_item_object_id","18"),
("2348","793","_menu_item_object","category"),
("2349","793","_menu_item_target",""),
("2350","793","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2351","793","_menu_item_xfn",""),
("2352","793","_menu_item_url",""),
("2354","794","_menu_item_type","taxonomy"),
("2355","794","_menu_item_menu_item_parent","0"),
("2356","794","_menu_item_object_id","1"),
("2357","794","_menu_item_object","category"),
("2358","794","_menu_item_target",""),
("2359","794","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2360","794","_menu_item_xfn",""),
("2361","794","_menu_item_url",""),
("2363","795","_menu_item_type","taxonomy"),
("2364","795","_menu_item_menu_item_parent","794"),
("2365","795","_menu_item_object_id","13"),
("2366","795","_menu_item_object","category"),
("2367","795","_menu_item_target",""),
("2368","795","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2369","795","_menu_item_xfn",""),
("2370","795","_menu_item_url","");
INSERT INTO gdd_postmeta VALUES
("2372","796","_menu_item_type","taxonomy"),
("2373","796","_menu_item_menu_item_parent","794"),
("2374","796","_menu_item_object_id","10"),
("2375","796","_menu_item_object","category"),
("2376","796","_menu_item_target",""),
("2377","796","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2378","796","_menu_item_xfn",""),
("2379","796","_menu_item_url",""),
("2381","797","_menu_item_type","taxonomy"),
("2382","797","_menu_item_menu_item_parent","794"),
("2383","797","_menu_item_object_id","12"),
("2384","797","_menu_item_object","category"),
("2385","797","_menu_item_target",""),
("2386","797","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2387","797","_menu_item_xfn",""),
("2388","797","_menu_item_url",""),
("2390","798","_menu_item_type","taxonomy"),
("2391","798","_menu_item_menu_item_parent","794"),
("2392","798","_menu_item_object_id","11"),
("2393","798","_menu_item_object","category"),
("2394","798","_menu_item_target",""),
("2395","798","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2396","798","_menu_item_xfn",""),
("2397","798","_menu_item_url",""),
("2399","799","_menu_item_type","taxonomy"),
("2400","799","_menu_item_menu_item_parent","794"),
("2401","799","_menu_item_object_id","9"),
("2402","799","_menu_item_object","category"),
("2403","799","_menu_item_target",""),
("2404","799","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2405","799","_menu_item_xfn",""),
("2406","799","_menu_item_url",""),
("2408","800","_menu_item_type","taxonomy"),
("2409","800","_menu_item_menu_item_parent","794"),
("2410","800","_menu_item_object_id","7"),
("2411","800","_menu_item_object","category"),
("2412","800","_menu_item_target",""),
("2413","800","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2414","800","_menu_item_xfn",""),
("2415","800","_menu_item_url",""),
("2417","801","_menu_item_type","taxonomy"),
("2418","801","_menu_item_menu_item_parent","794"),
("2419","801","_menu_item_object_id","8"),
("2420","801","_menu_item_object","category"),
("2421","801","_menu_item_target",""),
("2422","801","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2423","801","_menu_item_xfn",""),
("2424","801","_menu_item_url",""),
("2426","802","_menu_item_type","taxonomy"),
("2427","802","_menu_item_menu_item_parent","794"),
("2428","802","_menu_item_object_id","14"),
("2429","802","_menu_item_object","category"),
("2430","802","_menu_item_target",""),
("2431","802","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2432","802","_menu_item_xfn",""),
("2433","802","_menu_item_url",""),
("2435","803","_menu_item_type","custom"),
("2436","803","_menu_item_menu_item_parent","0"),
("2437","803","_menu_item_object_id","803"),
("2438","803","_menu_item_object","custom"),
("2439","803","_menu_item_target",""),
("2440","803","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2441","803","_menu_item_xfn",""),
("2442","803","_menu_item_url","#"),
("2453","150","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("2454","150","_oembed_time_2f82050c08cb6987fe534971661e0859","1553753579"),
("2520","135","_oembed_2f82050c08cb6987fe534971661e0859","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("2521","135","_oembed_time_2f82050c08cb6987fe534971661e0859","1553754461"),
("2525","815","tieu_de_don_hang","S???n xu???t ???c v??t t???i ????i Loan"),
("2526","815","_tieu_de_don_hang","field_5c9b9580e157f"),
("2527","815","so_luong_tiep_nhan","25 nh??n vi??n nam"),
("2528","815","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2529","815","noi_lam_vien","C??ng ty TNHH ABC - ????i Trung, ????i Loan"),
("2530","815","_noi_lam_vien","field_5c9b96dae1581"),
("2531","815","nganh_nghe","C??ng nh??n may"),
("2532","815","_nganh_nghe","field_5c9b96fde1582"),
("2533","815","thoi_han_hop_dong","3 n??m"),
("2534","815","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2535","815","gioi_tinh","Nam"),
("2536","815","_gioi_tinh","field_5c9b9759e1586"),
("2537","815","do_tuoi","D?????i 35 tu???i"),
("2538","815","_do_tuoi","field_5c9b977de1587"),
("2539","815","trinh_do_van_hoa","Trung c???p/ Trung h???c ph??? th??ng"),
("2540","815","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2541","815","yeu_cau_tay_nghe","Ch??a y??u c???u"),
("2542","815","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2543","815","hinh_anh","a:4:{i:0;s:3:\"151\";i:1;s:3:\"148\";i:2;s:3:\"145\";i:3;s:3:\"142\";}"),
("2544","815","_hinh_anh","field_5c9b97e9e158b"),
("2545","815","luong_thang","2.000 USD/th??ng"),
("2546","815","_luong_thang","field_5c9b980fe158d"),
("2547","815","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("2548","815","_gio_lam_viec","field_5c9b982de158e"),
("2549","815","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("2550","815","_ngay_nghi","field_5c9b9845e158f"),
("2551","815","tang_ca","T??ng ca theo quy ?????nh c???a c??ng ty"),
("2552","815","_tang_ca","field_5c9b9860e1590"),
("2553","815","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("2554","815","_bao_hiem","field_5c9b987ae1591"),
("2555","815","vay_von","H??? tr??? vay v???n t???i Vi???t Nam"),
("2556","815","_vay_von","field_5c9b9894e1592");
INSERT INTO gdd_postmeta VALUES
("2557","815","giay_to_can_thiet_1","Kh??m t???ng qu??t s???c kh???e t???i b???nh vi???n ch??? ?????nh"),
("2558","815","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2559","815","giay_to_can_thiet_2","H??? s?? n???p tr???c ti???p t???i c??ng ty"),
("2560","815","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2561","815","giay_to_can_thiet_3","C??c bi???u m???u, ????n t??? nguy???n, cam k???t theo c??ng ty"),
("2562","815","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2563","815","giay_to_can_thiet_4",""),
("2564","815","_giay_to_can_thiet_4","field_5c9b98f7e1597"),
("2565","815","giay_to_can_thiet_5",""),
("2566","815","_giay_to_can_thiet_5","field_5c9b98fee1598"),
("2567","815","han_nop_ho_so","20190329"),
("2568","815","_han_nop_ho_so","field_5c9b9919e159a"),
("2569","815","du_kien_thi_tuyen","20190331"),
("2570","815","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2571","815","nhap_canh_du_kien","Th??ng 4/2019"),
("2572","815","_nhap_canh_du_kien","field_5c9b9973e159c"),
("2573","815","dao_tao_du_kien","????o t???o sau khi tr??ng tuy???n"),
("2574","815","_dao_tao_du_kien","field_5c9b9990e159d"),
("2575","815","thi_tuyen_1","V??ng 1: C??ng ty ph???ng v???n"),
("2576","815","_thi_tuyen_1","field_5c9b99b9e159f"),
("2577","815","thi_tuyen_2","V??ng 2: Nh?? tuy???n d???ng ????i Loan tr???c ti???p ph???ng v???n"),
("2578","815","_thi_tuyen_2","field_5c9b99e2e15a0"),
("2579","815","thi_tuyen_3","K???t qu??? ph???ng v???n c?? ngay trong ng??y"),
("2580","815","_thi_tuyen_3","field_5c9b99e7e15a1"),
("2581","815","thi_tuyen_4","C?? 1 th??ng ????? h???c tr?????c khi sang ????i Loan"),
("2582","815","_thi_tuyen_4","field_5c9b99eee15a2"),
("2583","815","thi_tuyen","- Nh?? tuy???n d???ng ????i Loan s??? tr???c ti???p sang ph???ng v???n lao ?????ng\n\n- K???t qu??? ph???ng v???n s??? c?? trong ng??y\n\n- Khi tr??ng tuy???n b???n c?? 1 th??ng ????? h???c tr?????c khi sang l??m vi???c t???i ????i Loan"),
("2584","815","_thi_tuyen","field_5c9b99b9e159f"),
("2585","815","gioi_thieu_don_hang","C??ng ty tuy???n d???ng lao ?????ng l?? m???t ????n v??? chuy??n s???n x???t v?? cung c???p v??? c??c lo???i ???c v??t ????? ph???c v??? c??c ng??nh ??i???n c??ng nghi???p, gia d???ng xe m??y, xe ?????p, c??ng nghi???p h??ng ?????u ????i Loan. C??ng ty ti???p nh???n lao ?????ng c?? b??? d??y v??? kinh nghi???m l??m c??c lo???i ???c v??t ????? cung c???p h??ng ng??y cho nhu c???u s??? d???ng. Tuy nhi??n do thi???u h???t lao ?????ng n??n trong th??ng 7 n??y c??ng ty ti???p nh???n t???i ????i Loan mu???n th??ng qua ch??ng t??i."),
("2586","815","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2587","816","_wp_attached_file","2019/03/posst1.jpg"),
("2588","816","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:266;s:4:\"file\";s:18:\"2019/03/posst1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"posst1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"posst1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2591","817","tieu_de_don_hang","S???n xu???t ???c v??t t???i ????i Loan"),
("2592","817","_tieu_de_don_hang","field_5c9b9580e157f"),
("2593","817","so_luong_tiep_nhan","25 nh??n vi??n nam"),
("2594","817","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2595","817","noi_lam_vien","C??ng ty TNHH ABC - ????i Trung, ????i Loan"),
("2596","817","_noi_lam_vien","field_5c9b96dae1581"),
("2597","817","nganh_nghe","C??ng nh??n may"),
("2598","817","_nganh_nghe","field_5c9b96fde1582"),
("2599","817","thoi_han_hop_dong","3 n??m"),
("2600","817","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2601","817","gioi_tinh","Nam"),
("2602","817","_gioi_tinh","field_5c9b9759e1586"),
("2603","817","do_tuoi","D?????i 35 tu???i"),
("2604","817","_do_tuoi","field_5c9b977de1587"),
("2605","817","trinh_do_van_hoa","Trung c???p/ Trung h???c ph??? th??ng"),
("2606","817","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2607","817","yeu_cau_tay_nghe","Ch??a y??u c???u"),
("2608","817","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2609","817","hinh_anh","a:4:{i:0;s:3:\"148\";i:1;s:3:\"145\";i:2;s:3:\"142\";i:3;s:3:\"816\";}"),
("2610","817","_hinh_anh","field_5c9b97e9e158b"),
("2611","817","luong_thang","2.000 USD/th??ng"),
("2612","817","_luong_thang","field_5c9b980fe158d"),
("2613","817","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("2614","817","_gio_lam_viec","field_5c9b982de158e"),
("2615","817","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("2616","817","_ngay_nghi","field_5c9b9845e158f"),
("2617","817","tang_ca","T??ng ca theo quy ?????nh c???a c??ng ty"),
("2618","817","_tang_ca","field_5c9b9860e1590"),
("2619","817","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("2620","817","_bao_hiem","field_5c9b987ae1591"),
("2621","817","vay_von","H??? tr??? vay v???n t???i Vi???t Nam"),
("2622","817","_vay_von","field_5c9b9894e1592"),
("2623","817","giay_to_can_thiet_1","Kh??m t???ng qu??t s???c kh???e t???i b???nh vi???n ch??? ?????nh"),
("2624","817","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2625","817","giay_to_can_thiet_2","H??? s?? n???p tr???c ti???p t???i c??ng ty"),
("2626","817","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2627","817","giay_to_can_thiet_3","C??c bi???u m???u, ????n t??? nguy???n, cam k???t theo c??ng ty"),
("2628","817","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2629","817","giay_to_can_thiet_4",""),
("2630","817","_giay_to_can_thiet_4","field_5c9b98f7e1597"),
("2631","817","giay_to_can_thiet_5",""),
("2632","817","_giay_to_can_thiet_5","field_5c9b98fee1598"),
("2633","817","han_nop_ho_so","20190329"),
("2634","817","_han_nop_ho_so","field_5c9b9919e159a"),
("2635","817","du_kien_thi_tuyen","20190331"),
("2636","817","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2637","817","nhap_canh_du_kien","Th??ng 4/2019"),
("2638","817","_nhap_canh_du_kien","field_5c9b9973e159c"),
("2639","817","dao_tao_du_kien","????o t???o sau khi tr??ng tuy???n"),
("2640","817","_dao_tao_du_kien","field_5c9b9990e159d"),
("2641","817","thi_tuyen_1","V??ng 1: C??ng ty ph???ng v???n"),
("2642","817","_thi_tuyen_1","field_5c9b99b9e159f"),
("2643","817","thi_tuyen_2","V??ng 2: Nh?? tuy???n d???ng ????i Loan tr???c ti???p ph???ng v???n"),
("2644","817","_thi_tuyen_2","field_5c9b99e2e15a0"),
("2645","817","thi_tuyen_3","K???t qu??? ph???ng v???n c?? ngay trong ng??y"),
("2646","817","_thi_tuyen_3","field_5c9b99e7e15a1"),
("2647","817","thi_tuyen_4","C?? 1 th??ng ????? h???c tr?????c khi sang ????i Loan"),
("2648","817","_thi_tuyen_4","field_5c9b99eee15a2"),
("2649","817","thi_tuyen","- Nh?? tuy???n d???ng ????i Loan s??? tr???c ti???p sang ph???ng v???n lao ?????ng\n\n- K???t qu??? ph???ng v???n s??? c?? trong ng??y\n\n- Khi tr??ng tuy???n b???n c?? 1 th??ng ????? h???c tr?????c khi sang l??m vi???c t???i ????i Loan"),
("2650","817","_thi_tuyen","field_5c9b99b9e159f"),
("2651","817","gioi_thieu_don_hang","C??ng ty tuy???n d???ng lao ?????ng l?? m???t ????n v??? chuy??n s???n x???t v?? cung c???p v??? c??c lo???i ???c v??t ????? ph???c v??? c??c ng??nh ??i???n c??ng nghi???p, gia d???ng xe m??y, xe ?????p, c??ng nghi???p h??ng ?????u ????i Loan. C??ng ty ti???p nh???n lao ?????ng c?? b??? d??y v??? kinh nghi???m l??m c??c lo???i ???c v??t ????? cung c???p h??ng ng??y cho nhu c???u s??? d???ng. Tuy nhi??n do thi???u h???t lao ?????ng n??n trong th??ng 7 n??y c??ng ty ti???p nh???n t???i ????i Loan mu???n th??ng qua ch??ng t??i."),
("2652","817","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2653","818","_wp_attached_file","2019/03/post2.jpg"),
("2654","818","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:266;s:4:\"file\";s:17:\"2019/03/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2656","150","_yoast_wpseo_content_score","30"),
("2657","150","_yoast_wpseo_focuskeywords",""),
("2658","150","_yoast_wpseo_keywordsynonyms",""),
("2659","150","gioi_thieu_don_hang","V??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????.");
INSERT INTO gdd_postmeta VALUES
("2660","150","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2661","150","tieu_de_don_hang","S???n xu???t b??nh k???o t???i Nh???t"),
("2662","150","_tieu_de_don_hang","field_5c9b9580e157f"),
("2663","150","so_luong_tiep_nhan","20"),
("2664","150","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2665","150","noi_lam_vien","Osaka, Nh???t B???n"),
("2666","150","_noi_lam_vien","field_5c9b96dae1581"),
("2667","150","nganh_nghe","S???n xu???t b??nh k???o"),
("2668","150","_nganh_nghe","field_5c9b96fde1582"),
("2669","150","thoi_han_hop_dong","3 n??m"),
("2670","150","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2671","150","gioi_tinh","Nam"),
("2672","150","_gioi_tinh","field_5c9b9759e1586"),
("2673","150","do_tuoi","25 tu???i"),
("2674","150","_do_tuoi","field_5c9b977de1587"),
("2675","150","trinh_do_van_hoa","Trung h???c ph??? th??ng"),
("2676","150","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2677","150","yeu_cau_tay_nghe","Kh??ng y??u c???u"),
("2678","150","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2679","150","hinh_anh","a:4:{i:0;s:3:\"818\";i:1;s:3:\"816\";i:2;s:3:\"148\";i:3;s:3:\"145\";}"),
("2680","150","_hinh_anh","field_5c9b97e9e158b"),
("2681","150","luong_thang","1000USD/th??ng"),
("2682","150","_luong_thang","field_5c9b980fe158d"),
("2683","150","gio_lam_viec","t??? 8:00-17:30"),
("2684","150","_gio_lam_viec","field_5c9b982de158e"),
("2685","150","ngay_nghi","L??? t???t theo quy ?????nh"),
("2686","150","_ngay_nghi","field_5c9b9845e158f"),
("2687","150","tang_ca","40-70h/tu???n"),
("2688","150","_tang_ca","field_5c9b9860e1590"),
("2689","150","bao_hiem","????ng b???o hi???m y t??? v?? b???o hi???m x?? h???i"),
("2690","150","_bao_hiem","field_5c9b987ae1591"),
("2691","150","vay_von","H??? tr??? vay v???n"),
("2692","150","_vay_von","field_5c9b9894e1592"),
("2693","150","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng qu??t"),
("2694","150","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2695","150","giay_to_can_thiet_2","????n xin tuy???n d???ng "),
("2696","150","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2697","150","giay_to_can_thiet_3","H??? s?? theo y??u c???u"),
("2698","150","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2699","150","han_nop_ho_so","20190314"),
("2700","150","_han_nop_ho_so","field_5c9b9919e159a"),
("2701","150","du_kien_thi_tuyen","20190314"),
("2702","150","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2703","150","nhap_canh_du_kien",""),
("2704","150","_nhap_canh_du_kien","field_5c9b9973e159c"),
("2705","150","dao_tao_du_kien",""),
("2706","150","_dao_tao_du_kien","field_5c9b9990e159d"),
("2707","150","thi_tuyen",""),
("2708","150","_thi_tuyen","field_5c9b99b9e159f"),
("2709","819","gioi_thieu_don_hang",""),
("2710","819","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2711","819","tieu_de_don_hang",""),
("2712","819","_tieu_de_don_hang","field_5c9b9580e157f"),
("2713","819","so_luong_tiep_nhan",""),
("2714","819","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2715","819","noi_lam_vien","Nh???p ?????a ch???..."),
("2716","819","_noi_lam_vien","field_5c9b96dae1581"),
("2717","819","nganh_nghe",""),
("2718","819","_nganh_nghe","field_5c9b96fde1582"),
("2719","819","thoi_han_hop_dong",""),
("2720","819","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2721","819","gioi_tinh","Nam"),
("2722","819","_gioi_tinh","field_5c9b9759e1586"),
("2723","819","do_tuoi",""),
("2724","819","_do_tuoi","field_5c9b977de1587"),
("2725","819","trinh_do_van_hoa",""),
("2726","819","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2727","819","yeu_cau_tay_nghe",""),
("2728","819","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2729","819","hinh_anh",""),
("2730","819","_hinh_anh","field_5c9b97e9e158b"),
("2731","819","luong_thang",""),
("2732","819","_luong_thang","field_5c9b980fe158d"),
("2733","819","gio_lam_viec",""),
("2734","819","_gio_lam_viec","field_5c9b982de158e"),
("2735","819","ngay_nghi",""),
("2736","819","_ngay_nghi","field_5c9b9845e158f"),
("2737","819","tang_ca",""),
("2738","819","_tang_ca","field_5c9b9860e1590"),
("2739","819","bao_hiem",""),
("2740","819","_bao_hiem","field_5c9b987ae1591"),
("2741","819","vay_von",""),
("2742","819","_vay_von","field_5c9b9894e1592"),
("2743","819","giay_to_can_thiet_1",""),
("2744","819","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2745","819","giay_to_can_thiet_2",""),
("2746","819","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2747","819","giay_to_can_thiet_3",""),
("2748","819","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2749","819","han_nop_ho_so",""),
("2750","819","_han_nop_ho_so","field_5c9b9919e159a"),
("2751","819","du_kien_thi_tuyen",""),
("2752","819","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2753","819","nhap_canh_du_kien",""),
("2754","819","_nhap_canh_du_kien","field_5c9b9973e159c"),
("2755","819","dao_tao_du_kien",""),
("2756","819","_dao_tao_du_kien","field_5c9b9990e159d"),
("2757","819","thi_tuyen",""),
("2758","819","_thi_tuyen","field_5c9b99b9e159f"),
("2759","150","_yoast_wpseo_primary_category","");
INSERT INTO gdd_postmeta VALUES
("2761","820","gioi_thieu_don_hang","V??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????."),
("2762","820","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2763","820","tieu_de_don_hang","S???n xu???t b??nh k???o t???i Nh???t"),
("2764","820","_tieu_de_don_hang","field_5c9b9580e157f"),
("2765","820","so_luong_tiep_nhan","20"),
("2766","820","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2767","820","noi_lam_vien","Osaka, Nh???t B???n"),
("2768","820","_noi_lam_vien","field_5c9b96dae1581"),
("2769","820","nganh_nghe","S???n xu???t b??nh k???o"),
("2770","820","_nganh_nghe","field_5c9b96fde1582"),
("2771","820","thoi_han_hop_dong","3 n??m"),
("2772","820","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2773","820","gioi_tinh","Nam"),
("2774","820","_gioi_tinh","field_5c9b9759e1586"),
("2775","820","do_tuoi","25 tu???i"),
("2776","820","_do_tuoi","field_5c9b977de1587"),
("2777","820","trinh_do_van_hoa","Trung h???c ph??? th??ng"),
("2778","820","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2779","820","yeu_cau_tay_nghe","Kh??ng y??u c???u"),
("2780","820","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2781","820","hinh_anh","a:4:{i:0;s:3:\"818\";i:1;s:3:\"816\";i:2;s:3:\"148\";i:3;s:3:\"145\";}"),
("2782","820","_hinh_anh","field_5c9b97e9e158b"),
("2783","820","luong_thang","1000USD/th??ng"),
("2784","820","_luong_thang","field_5c9b980fe158d"),
("2785","820","gio_lam_viec","t??? 8:00-17:30"),
("2786","820","_gio_lam_viec","field_5c9b982de158e"),
("2787","820","ngay_nghi","L??? t???t theo quy ?????nh"),
("2788","820","_ngay_nghi","field_5c9b9845e158f"),
("2789","820","tang_ca","T??ng ca theo quy ?????nh c??ng ty"),
("2790","820","_tang_ca","field_5c9b9860e1590"),
("2791","820","bao_hiem","????ng b???o hi???m y t??? v?? b???o hi???m x?? h???i"),
("2792","820","_bao_hiem","field_5c9b987ae1591"),
("2793","820","vay_von","H??? tr??? vay v???n"),
("2794","820","_vay_von","field_5c9b9894e1592"),
("2795","820","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng qu??t"),
("2796","820","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2797","820","giay_to_can_thiet_2","????n xin tuy???n d???ng "),
("2798","820","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2799","820","giay_to_can_thiet_3","H??? s?? theo y??u c???u"),
("2800","820","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2801","820","han_nop_ho_so","20190314"),
("2802","820","_han_nop_ho_so","field_5c9b9919e159a"),
("2803","820","du_kien_thi_tuyen","20190314"),
("2804","820","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2805","820","nhap_canh_du_kien",""),
("2806","820","_nhap_canh_du_kien","field_5c9b9973e159c"),
("2807","820","dao_tao_du_kien",""),
("2808","820","_dao_tao_du_kien","field_5c9b9990e159d"),
("2809","820","thi_tuyen",""),
("2810","820","_thi_tuyen","field_5c9b99b9e159f"),
("2811","824","_wp_attached_file","2019/03/avatar-youtube.jpg"),
("2812","824","_wp_attachment_metadata","a:5:{s:5:\"width\";i:248;s:6:\"height\";i:151;s:4:\"file\";s:26:\"2019/03/avatar-youtube.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"avatar-youtube-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2834","834","tieu_de_don_hang","S???n xu???t ???c v??t t???i ????i Loan"),
("2835","834","_tieu_de_don_hang","field_5c9b9580e157f"),
("2836","834","so_luong_tiep_nhan","25 nh??n vi??n nam"),
("2837","834","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2838","834","noi_lam_vien","C??ng ty TNHH ABC - ????i Trung, ????i Loan"),
("2839","834","_noi_lam_vien","field_5c9b96dae1581"),
("2840","834","nganh_nghe","C??ng nh??n may"),
("2841","834","_nganh_nghe","field_5c9b96fde1582"),
("2842","834","thoi_han_hop_dong","3 n??m"),
("2843","834","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2844","834","gioi_tinh","Nam"),
("2845","834","_gioi_tinh","field_5c9b9759e1586"),
("2846","834","do_tuoi","D?????i 35 tu???i"),
("2847","834","_do_tuoi","field_5c9b977de1587"),
("2848","834","trinh_do_van_hoa","Trung c???p/ Trung h???c ph??? th??ng"),
("2849","834","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2850","834","yeu_cau_tay_nghe","Ch??a y??u c???u"),
("2851","834","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2852","834","hinh_anh","a:4:{i:0;s:3:\"148\";i:1;s:3:\"145\";i:2;s:3:\"142\";i:3;s:3:\"816\";}"),
("2853","834","_hinh_anh","field_5c9b97e9e158b"),
("2854","834","luong_thang","2.000 USD/th??ng"),
("2855","834","_luong_thang","field_5c9b980fe158d"),
("2856","834","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("2857","834","_gio_lam_viec","field_5c9b982de158e"),
("2858","834","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("2859","834","_ngay_nghi","field_5c9b9845e158f"),
("2860","834","tang_ca","40-70h"),
("2861","834","_tang_ca","field_5c9b9860e1590"),
("2862","834","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("2863","834","_bao_hiem","field_5c9b987ae1591"),
("2864","834","vay_von","H??? tr??? vay v???n t???i Vi???t Nam"),
("2865","834","_vay_von","field_5c9b9894e1592"),
("2866","834","giay_to_can_thiet_1","Kh??m t???ng qu??t s???c kh???e t???i b???nh vi???n ch??? ?????nh"),
("2867","834","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2868","834","giay_to_can_thiet_2","H??? s?? n???p tr???c ti???p t???i c??ng ty"),
("2869","834","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2870","834","giay_to_can_thiet_3","C??c bi???u m???u, ????n t??? nguy???n, cam k???t theo c??ng ty"),
("2871","834","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2872","834","giay_to_can_thiet_4",""),
("2873","834","_giay_to_can_thiet_4","field_5c9b98f7e1597"),
("2874","834","giay_to_can_thiet_5",""),
("2875","834","_giay_to_can_thiet_5","field_5c9b98fee1598"),
("2876","834","han_nop_ho_so","20190329"),
("2877","834","_han_nop_ho_so","field_5c9b9919e159a"),
("2878","834","du_kien_thi_tuyen","20190331"),
("2879","834","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2880","834","nhap_canh_du_kien","Th??ng 4/2019"),
("2881","834","_nhap_canh_du_kien","field_5c9b9973e159c");
INSERT INTO gdd_postmeta VALUES
("2882","834","dao_tao_du_kien","????o t???o sau khi tr??ng tuy???n"),
("2883","834","_dao_tao_du_kien","field_5c9b9990e159d"),
("2884","834","thi_tuyen_1","V??ng 1: C??ng ty ph???ng v???n"),
("2885","834","_thi_tuyen_1","field_5c9b99b9e159f"),
("2886","834","thi_tuyen_2","V??ng 2: Nh?? tuy???n d???ng ????i Loan tr???c ti???p ph???ng v???n"),
("2887","834","_thi_tuyen_2","field_5c9b99e2e15a0"),
("2888","834","thi_tuyen_3","K???t qu??? ph???ng v???n c?? ngay trong ng??y"),
("2889","834","_thi_tuyen_3","field_5c9b99e7e15a1"),
("2890","834","thi_tuyen_4","C?? 1 th??ng ????? h???c tr?????c khi sang ????i Loan"),
("2891","834","_thi_tuyen_4","field_5c9b99eee15a2"),
("2892","834","thi_tuyen","- Nh?? tuy???n d???ng ????i Loan s??? tr???c ti???p sang ph???ng v???n lao ?????ng\n\n- K???t qu??? ph???ng v???n s??? c?? trong ng??y\n\n- Khi tr??ng tuy???n b???n c?? 1 th??ng ????? h???c tr?????c khi sang l??m vi???c t???i ????i Loan"),
("2893","834","_thi_tuyen","field_5c9b99b9e159f"),
("2894","834","gioi_thieu_don_hang","C??ng ty tuy???n d???ng lao ?????ng l?? m???t ????n v??? chuy??n s???n x???t v?? cung c???p v??? c??c lo???i ???c v??t ????? ph???c v??? c??c ng??nh ??i???n c??ng nghi???p, gia d???ng xe m??y, xe ?????p, c??ng nghi???p h??ng ?????u ????i Loan. C??ng ty ti???p nh???n lao ?????ng c?? b??? d??y v??? kinh nghi???m l??m c??c lo???i ???c v??t ????? cung c???p h??ng ng??y cho nhu c???u s??? d???ng. Tuy nhi??n do thi???u h???t lao ?????ng n??n trong th??ng 7 n??y c??ng ty ti???p nh???n t???i ????i Loan mu???n th??ng qua ch??ng t??i."),
("2895","834","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2918","847","gioi_thieu_don_hang","C??ng ty TNHH Webdemo.com tuy???n sinh c??ng nh??n ng?????i Vi???t Nam sang l??m vi???c t???i ????i Loan th???i h???n 3 n??m. C??ng vi???c ch??? y???u l?? tham gia c??c d??y chuy???n may xu???t kh???u sang Ch??u ??u v?? Ch??u M???."),
("2919","847","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2920","847","tieu_de_don_hang","C??ng nh??n may t???i ????i Trung"),
("2921","847","_tieu_de_don_hang","field_5c9b9580e157f"),
("2922","847","so_luong_tiep_nhan","25 n??? d?????i 35 tu???i"),
("2923","847","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2924","847","noi_lam_vien","????i Trung, Taiwan"),
("2925","847","_noi_lam_vien","field_5c9b96dae1581"),
("2926","847","nganh_nghe","May c??ng nghi???p"),
("2927","847","_nganh_nghe","field_5c9b96fde1582"),
("2928","847","thoi_han_hop_dong","3 n??m"),
("2929","847","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2930","847","gioi_tinh","N???"),
("2931","847","_gioi_tinh","field_5c9b9759e1586"),
("2932","847","do_tuoi","d?????i 35 tu???i"),
("2933","847","_do_tuoi","field_5c9b977de1587"),
("2934","847","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("2935","847","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2936","847","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("2937","847","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2938","847","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"151\";i:2;s:3:\"148\";i:3;s:3:\"145\";}"),
("2939","847","_hinh_anh","field_5c9b97e9e158b"),
("2940","847","luong_thang","2000 USD/th??ng"),
("2941","847","_luong_thang","field_5c9b980fe158d"),
("2942","847","gio_lam_viec","t??? 8:00 - 17:30"),
("2943","847","_gio_lam_viec","field_5c9b982de158e"),
("2944","847","ngay_nghi","Ngh??? Ch??? nh???t + ng??y l??? t???t ????i Loan"),
("2945","847","_ngay_nghi","field_5c9b9845e158f"),
("2946","847","tang_ca","30-40h/tu???n"),
("2947","847","_tang_ca","field_5c9b9860e1590"),
("2948","847","bao_hiem","????ng b???o hi???m theo quy ?????nh c??ng ty"),
("2949","847","_bao_hiem","field_5c9b987ae1591"),
("2950","847","vay_von","H??? tr??? vay v???n l??m h??? s??"),
("2951","847","_vay_von","field_5c9b9894e1592"),
("2952","847","giay_to_can_thiet_1","Gi???y ????ng k?? theo nguy???n v???ng"),
("2953","847","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("2954","847","giay_to_can_thiet_2","Gi???y kh??m s???c kh???e t???ng qu??t"),
("2955","847","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("2956","847","giay_to_can_thiet_3","C??c gi???y t??? kh??c theo quy ?????nh"),
("2957","847","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("2958","847","han_nop_ho_so","20190315"),
("2959","847","_han_nop_ho_so","field_5c9b9919e159a"),
("2960","847","du_kien_thi_tuyen","20190331"),
("2961","847","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("2962","847","nhap_canh_du_kien","Th??ng 2/2020"),
("2963","847","_nhap_canh_du_kien","field_5c9b9973e159c"),
("2964","847","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("2965","847","_dao_tao_du_kien","field_5c9b9990e159d"),
("2966","847","thi_tuyen","<ul>\n 	<li>133.??<a href=\"http://giacongcokhi.Webdemo.com/\" target=\"blank\">M???u website d???ch v??? c???a nh??m, c???a cu???n, gia c??ng c?? kh??: giacongcokhi.Webdemo.com</a></li>\n 	<li>132.??<a href=\"http://edu5.Webdemo.com/\" target=\"blank\">M???u website trung t??m Ti???ng Anh tr??? em: edu5.Webdemo.com</a></li>\n 	<li>131.??<a href=\"http://cayxanh3.Webdemo.com/\" target=\"blank\">M???u website b??n c??y phong th???y, c??y v??n ph??ng ?????p: cayxanh3.Webdemo.com</a></li>\n</ul>"),
("2967","847","_thi_tuyen","field_5c9b99b9e159f"),
("2969","848","gioi_thieu_don_hang","V??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????."),
("2970","848","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("2971","848","tieu_de_don_hang","S???n xu???t b??nh k???o t???i Nh???t"),
("2972","848","_tieu_de_don_hang","field_5c9b9580e157f"),
("2973","848","so_luong_tiep_nhan","20"),
("2974","848","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("2975","848","noi_lam_vien","Osaka, Nh???t B???n"),
("2976","848","_noi_lam_vien","field_5c9b96dae1581"),
("2977","848","nganh_nghe","S???n xu???t b??nh k???o"),
("2978","848","_nganh_nghe","field_5c9b96fde1582"),
("2979","848","thoi_han_hop_dong","3 n??m"),
("2980","848","_thoi_han_hop_dong","field_5c9b9713e1583"),
("2981","848","gioi_tinh","Nam"),
("2982","848","_gioi_tinh","field_5c9b9759e1586"),
("2983","848","do_tuoi","25 tu???i"),
("2984","848","_do_tuoi","field_5c9b977de1587"),
("2985","848","trinh_do_van_hoa","Trung h???c ph??? th??ng"),
("2986","848","_trinh_do_van_hoa","field_5c9b9794e1588"),
("2987","848","yeu_cau_tay_nghe","Kh??ng y??u c???u"),
("2988","848","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("2989","848","hinh_anh","a:4:{i:0;s:3:\"818\";i:1;s:3:\"816\";i:2;s:3:\"148\";i:3;s:3:\"145\";}"),
("2990","848","_hinh_anh","field_5c9b97e9e158b"),
("2991","848","luong_thang","1000USD/th??ng"),
("2992","848","_luong_thang","field_5c9b980fe158d"),
("2993","848","gio_lam_viec","t??? 8:00-17:30"),
("2994","848","_gio_lam_viec","field_5c9b982de158e"),
("2995","848","ngay_nghi","L??? t???t theo quy ?????nh"),
("2996","848","_ngay_nghi","field_5c9b9845e158f"),
("2997","848","tang_ca","40-70h/tu???n"),
("2998","848","_tang_ca","field_5c9b9860e1590"),
("2999","848","bao_hiem","????ng b???o hi???m y t??? v?? b???o hi???m x?? h???i"),
("3000","848","_bao_hiem","field_5c9b987ae1591"),
("3001","848","vay_von","H??? tr??? vay v???n"),
("3002","848","_vay_von","field_5c9b9894e1592"),
("3003","848","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng qu??t"),
("3004","848","_giay_to_can_thiet_1","field_5c9b98c9e1594");
INSERT INTO gdd_postmeta VALUES
("3005","848","giay_to_can_thiet_2","????n xin tuy???n d???ng "),
("3006","848","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3007","848","giay_to_can_thiet_3","H??? s?? theo y??u c???u"),
("3008","848","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3009","848","han_nop_ho_so","20190314"),
("3010","848","_han_nop_ho_so","field_5c9b9919e159a"),
("3011","848","du_kien_thi_tuyen","20190314"),
("3012","848","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3013","848","nhap_canh_du_kien",""),
("3014","848","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3015","848","dao_tao_du_kien",""),
("3016","848","_dao_tao_du_kien","field_5c9b9990e159d"),
("3017","848","thi_tuyen",""),
("3018","848","_thi_tuyen","field_5c9b99b9e159f"),
("3020","849","gioi_thieu_don_hang","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao"),
("3021","849","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3022","849","tieu_de_don_hang","S???n xu???t ???c v??t t???i Cao H??ng, ????i Loan"),
("3023","849","_tieu_de_don_hang","field_5c9b9580e157f"),
("3024","849","so_luong_tiep_nhan","25 nam"),
("3025","849","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3026","849","noi_lam_vien","Cao H??ng, ????i Loan"),
("3027","849","_noi_lam_vien","field_5c9b96dae1581"),
("3028","849","nganh_nghe","S???n xu???t c?? kh??"),
("3029","849","_nganh_nghe","field_5c9b96fde1582"),
("3030","849","thoi_han_hop_dong","3 n??m"),
("3031","849","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3032","849","gioi_tinh","Nam"),
("3033","849","_gioi_tinh","field_5c9b9759e1586"),
("3034","849","do_tuoi","<35 tu???i"),
("3035","849","_do_tuoi","field_5c9b977de1587"),
("3036","849","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3037","849","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3038","849","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3039","849","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3040","849","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"151\";i:2;s:3:\"148\";i:3;s:3:\"145\";}"),
("3041","849","_hinh_anh","field_5c9b97e9e158b"),
("3042","849","luong_thang","1500USD/th??ng"),
("3043","849","_luong_thang","field_5c9b980fe158d"),
("3044","849","gio_lam_viec","8 ti???ng/ng??y t??? 8:00 ?????n 17:30"),
("3045","849","_gio_lam_viec","field_5c9b982de158e"),
("3046","849","ngay_nghi","Ngh??? Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3047","849","_ngay_nghi","field_5c9b9845e158f"),
("3048","849","tang_ca","50-80h/tu???n"),
("3049","849","_tang_ca","field_5c9b9860e1590"),
("3050","849","bao_hiem","N???p b???o hi???m theo quy ?????nh c???a C??ng ty"),
("3051","849","_bao_hiem","field_5c9b987ae1591"),
("3052","849","vay_von","H??? tr??? vay v???n"),
("3053","849","_vay_von","field_5c9b9894e1592"),
("3054","849","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng quan"),
("3055","849","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3056","849","giay_to_can_thiet_2","????n xin tuy???n d???ng vi???t tay"),
("3057","849","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3058","849","giay_to_can_thiet_3","H??? s?? c???n thi???t theo h?????ng d???n"),
("3059","849","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3060","849","han_nop_ho_so","20190316"),
("3061","849","_han_nop_ho_so","field_5c9b9919e159a"),
("3062","849","du_kien_thi_tuyen","20190329"),
("3063","849","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3064","849","nhap_canh_du_kien","Th??ng 3/2020"),
("3065","849","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3066","849","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("3067","849","_dao_tao_du_kien","field_5c9b9990e159d"),
("3068","849","thi_tuyen","<ul>\n 	<li>130.??<a href=\"http://camera2.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh cho ?? t?? - m???u 2: camera2.webdemo.com</a></li>\n 	<li>129.??<a href=\"http://camera.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh ?????p m???i nh???t: camera.webdemo.com</a></li>\n 	<li>128.??<a href=\"http://shopruou.webdemo.com/\" target=\"blank\">M???u website b??n r?????u t??y ?????p, hi???n ?????i: shopruou.webdemo.com</a></li>\n</ul>"),
("3069","849","_thi_tuyen","field_5c9b99b9e159f"),
("3081","156","_yoast_wpseo_content_score","30"),
("3082","156","_yoast_wpseo_focuskeywords",""),
("3083","156","_yoast_wpseo_keywordsynonyms",""),
("3084","156","gioi_thieu_don_hang","Ng?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan."),
("3085","156","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3086","156","tieu_de_don_hang","S???n xu???t g???u b??ng t???i Nh???t"),
("3087","156","_tieu_de_don_hang","field_5c9b9580e157f"),
("3088","156","so_luong_tiep_nhan","25"),
("3089","156","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3090","156","noi_lam_vien","Tokyo - Nh???t B???n"),
("3091","156","_noi_lam_vien","field_5c9b96dae1581"),
("3092","156","nganh_nghe","C??ng nh??n nh?? m??y"),
("3093","156","_nganh_nghe","field_5c9b96fde1582"),
("3094","156","thoi_han_hop_dong","3 n??m"),
("3095","156","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3096","156","gioi_tinh","N???"),
("3097","156","_gioi_tinh","field_5c9b9759e1586"),
("3098","156","do_tuoi","d?????i 35 tu???i"),
("3099","156","_do_tuoi","field_5c9b977de1587"),
("3100","156","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3101","156","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3102","156","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3103","156","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3104","156","hinh_anh","a:4:{i:0;s:3:\"818\";i:1;s:3:\"816\";i:2;s:3:\"148\";i:3;s:3:\"154\";}"),
("3105","156","_hinh_anh","field_5c9b97e9e158b"),
("3106","156","luong_thang","2.000 USD/th??ng"),
("3107","156","_luong_thang","field_5c9b980fe158d"),
("3108","156","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("3109","156","_gio_lam_viec","field_5c9b982de158e"),
("3110","156","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3111","156","_ngay_nghi","field_5c9b9845e158f"),
("3112","156","tang_ca","40-70h"),
("3113","156","_tang_ca","field_5c9b9860e1590"),
("3114","156","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("3115","156","_bao_hiem","field_5c9b987ae1591"),
("3116","156","vay_von","H??? tr??? vay v???n");
INSERT INTO gdd_postmeta VALUES
("3117","156","_vay_von","field_5c9b9894e1592"),
("3118","156","giay_to_can_thiet_1","KH??m s???c kh???e t???ng qu??t"),
("3119","156","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3120","156","giay_to_can_thiet_2","????n xin vi???c vi???t tay"),
("3121","156","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3122","156","giay_to_can_thiet_3","H??? s?? theo quy ?????nh"),
("3123","156","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3124","156","han_nop_ho_so","20190308"),
("3125","156","_han_nop_ho_so","field_5c9b9919e159a"),
("3126","156","du_kien_thi_tuyen","20190322"),
("3127","156","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3128","156","nhap_canh_du_kien","Th??ng 3/2020"),
("3129","156","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3130","156","dao_tao_du_kien","????o t???o t???i Vi???t nam 1 th??ng"),
("3131","156","_dao_tao_du_kien","field_5c9b9990e159d"),
("3132","156","thi_tuyen",""),
("3133","156","_thi_tuyen","field_5c9b99b9e159f"),
("3134","855","gioi_thieu_don_hang","Ng?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan."),
("3135","855","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3136","855","tieu_de_don_hang","S???n xu???t g???u b??ng t???i Nh???t"),
("3137","855","_tieu_de_don_hang","field_5c9b9580e157f"),
("3138","855","so_luong_tiep_nhan","25"),
("3139","855","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3140","855","noi_lam_vien","Tokyo - Nh???t B???n"),
("3141","855","_noi_lam_vien","field_5c9b96dae1581"),
("3142","855","nganh_nghe","C??ng nh??n nh?? m??y"),
("3143","855","_nganh_nghe","field_5c9b96fde1582"),
("3144","855","thoi_han_hop_dong","3 n??m"),
("3145","855","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3146","855","gioi_tinh","N???"),
("3147","855","_gioi_tinh","field_5c9b9759e1586"),
("3148","855","do_tuoi","d?????i 35 tu???i"),
("3149","855","_do_tuoi","field_5c9b977de1587"),
("3150","855","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3151","855","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3152","855","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3153","855","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3154","855","hinh_anh","a:5:{i:0;s:3:\"824\";i:1;s:3:\"818\";i:2;s:3:\"816\";i:3;s:3:\"151\";i:4;s:3:\"148\";}"),
("3155","855","_hinh_anh","field_5c9b97e9e158b"),
("3156","855","luong_thang","2.000 USD/th??ng"),
("3157","855","_luong_thang","field_5c9b980fe158d"),
("3158","855","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("3159","855","_gio_lam_viec","field_5c9b982de158e"),
("3160","855","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3161","855","_ngay_nghi","field_5c9b9845e158f"),
("3162","855","tang_ca","40-70h"),
("3163","855","_tang_ca","field_5c9b9860e1590"),
("3164","855","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("3165","855","_bao_hiem","field_5c9b987ae1591"),
("3166","855","vay_von","H??? tr??? vay v???n"),
("3167","855","_vay_von","field_5c9b9894e1592"),
("3168","855","giay_to_can_thiet_1","KH??m s???c kh???e t???ng qu??t"),
("3169","855","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3170","855","giay_to_can_thiet_2","????n xin vi???c vi???t tay"),
("3171","855","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3172","855","giay_to_can_thiet_3","H??? s?? theo quy ?????nh"),
("3173","855","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3174","855","han_nop_ho_so","20190308"),
("3175","855","_han_nop_ho_so","field_5c9b9919e159a"),
("3176","855","du_kien_thi_tuyen","20190322"),
("3177","855","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3178","855","nhap_canh_du_kien","Th??ng 3/2020"),
("3179","855","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3180","855","dao_tao_du_kien","????o t???o t???i Vi???t nam 1 th??ng"),
("3181","855","_dao_tao_du_kien","field_5c9b9990e159d"),
("3182","855","thi_tuyen",""),
("3183","855","_thi_tuyen","field_5c9b99b9e159f"),
("3184","156","_yoast_wpseo_primary_category",""),
("3261","893","gioi_thieu_don_hang","Ng?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan."),
("3262","893","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3263","893","tieu_de_don_hang","S???n xu???t g???u b??ng t???i Nh???t"),
("3264","893","_tieu_de_don_hang","field_5c9b9580e157f"),
("3265","893","so_luong_tiep_nhan","25"),
("3266","893","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3267","893","noi_lam_vien","Tokyo - Nh???t B???n"),
("3268","893","_noi_lam_vien","field_5c9b96dae1581"),
("3269","893","nganh_nghe","C??ng nh??n nh?? m??y"),
("3270","893","_nganh_nghe","field_5c9b96fde1582"),
("3271","893","thoi_han_hop_dong","3 n??m"),
("3272","893","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3273","893","gioi_tinh","N???"),
("3274","893","_gioi_tinh","field_5c9b9759e1586"),
("3275","893","do_tuoi","d?????i 35 tu???i"),
("3276","893","_do_tuoi","field_5c9b977de1587"),
("3277","893","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3278","893","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3279","893","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3280","893","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3281","893","hinh_anh","a:4:{i:0;s:3:\"818\";i:1;s:3:\"816\";i:2;s:3:\"148\";i:3;s:3:\"154\";}"),
("3282","893","_hinh_anh","field_5c9b97e9e158b"),
("3283","893","luong_thang","2.000 USD/th??ng"),
("3284","893","_luong_thang","field_5c9b980fe158d"),
("3285","893","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("3286","893","_gio_lam_viec","field_5c9b982de158e"),
("3287","893","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3288","893","_ngay_nghi","field_5c9b9845e158f"),
("3289","893","tang_ca","40-70h"),
("3290","893","_tang_ca","field_5c9b9860e1590"),
("3291","893","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("3292","893","_bao_hiem","field_5c9b987ae1591");
INSERT INTO gdd_postmeta VALUES
("3293","893","vay_von","H??? tr??? vay v???n"),
("3294","893","_vay_von","field_5c9b9894e1592"),
("3295","893","giay_to_can_thiet_1","KH??m s???c kh???e t???ng qu??t"),
("3296","893","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3297","893","giay_to_can_thiet_2","????n xin vi???c vi???t tay"),
("3298","893","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3299","893","giay_to_can_thiet_3","H??? s?? theo quy ?????nh"),
("3300","893","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3301","893","han_nop_ho_so","20190308"),
("3302","893","_han_nop_ho_so","field_5c9b9919e159a"),
("3303","893","du_kien_thi_tuyen","20190322"),
("3304","893","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3305","893","nhap_canh_du_kien","Th??ng 3/2020"),
("3306","893","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3307","893","dao_tao_du_kien","????o t???o t???i Vi???t nam 1 th??ng"),
("3308","893","_dao_tao_du_kien","field_5c9b9990e159d"),
("3309","893","thi_tuyen",""),
("3310","893","_thi_tuyen","field_5c9b99b9e159f"),
("3312","894","gioi_thieu_don_hang","Ng?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan."),
("3313","894","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3314","894","tieu_de_don_hang","S???n xu???t g???u b??ng t???i Nh???t"),
("3315","894","_tieu_de_don_hang","field_5c9b9580e157f"),
("3316","894","so_luong_tiep_nhan","25"),
("3317","894","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3318","894","noi_lam_vien","Tokyo - Nh???t B???n"),
("3319","894","_noi_lam_vien","field_5c9b96dae1581"),
("3320","894","nganh_nghe","C??ng nh??n nh?? m??y"),
("3321","894","_nganh_nghe","field_5c9b96fde1582"),
("3322","894","thoi_han_hop_dong","3 n??m"),
("3323","894","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3324","894","gioi_tinh","N???"),
("3325","894","_gioi_tinh","field_5c9b9759e1586"),
("3326","894","do_tuoi","d?????i 35 tu???i"),
("3327","894","_do_tuoi","field_5c9b977de1587"),
("3328","894","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3329","894","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3330","894","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3331","894","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3332","894","hinh_anh","a:4:{i:0;s:3:\"818\";i:1;s:3:\"816\";i:2;s:3:\"148\";i:3;s:3:\"154\";}"),
("3333","894","_hinh_anh","field_5c9b97e9e158b"),
("3334","894","luong_thang","2.000 USD/th??ng"),
("3335","894","_luong_thang","field_5c9b980fe158d"),
("3336","894","gio_lam_viec","T??? 8:00 ?????n 17:30 h???ng ng??y"),
("3337","894","_gio_lam_viec","field_5c9b982de158e"),
("3338","894","ngay_nghi","Th??? B???y, Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3339","894","_ngay_nghi","field_5c9b9845e158f"),
("3340","894","tang_ca","40-70h"),
("3341","894","_tang_ca","field_5c9b9860e1590"),
("3342","894","bao_hiem","B???o hi???m Y t??? + B???o hi???m x?? h???i"),
("3343","894","_bao_hiem","field_5c9b987ae1591"),
("3344","894","vay_von","H??? tr??? vay v???n"),
("3345","894","_vay_von","field_5c9b9894e1592"),
("3346","894","giay_to_can_thiet_1","KH??m s???c kh???e t???ng qu??t"),
("3347","894","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3348","894","giay_to_can_thiet_2","????n xin vi???c vi???t tay"),
("3349","894","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3350","894","giay_to_can_thiet_3","H??? s?? theo quy ?????nh"),
("3351","894","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3352","894","han_nop_ho_so","20190308"),
("3353","894","_han_nop_ho_so","field_5c9b9919e159a"),
("3354","894","du_kien_thi_tuyen","20190322"),
("3355","894","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3356","894","nhap_canh_du_kien","Th??ng 3/2020"),
("3357","894","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3358","894","dao_tao_du_kien","????o t???o t???i Vi???t nam 1 th??ng"),
("3359","894","_dao_tao_du_kien","field_5c9b9990e159d"),
("3360","894","thi_tuyen",""),
("3361","894","_thi_tuyen","field_5c9b99b9e159f"),
("3363","895","gioi_thieu_don_hang","C??ng ty TNHH Webdemo.com tuy???n sinh c??ng nh??n ng?????i Vi???t Nam sang l??m vi???c t???i ????i Loan th???i h???n 3 n??m. C??ng vi???c ch??? y???u l?? tham gia c??c d??y chuy???n may xu???t kh???u sang Ch??u ??u v?? Ch??u M???."),
("3364","895","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3365","895","tieu_de_don_hang","C??ng nh??n may t???i ????i Trung"),
("3366","895","_tieu_de_don_hang","field_5c9b9580e157f"),
("3367","895","so_luong_tiep_nhan","25 n??? d?????i 35 tu???i"),
("3368","895","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3369","895","noi_lam_vien","????i Trung, Taiwan"),
("3370","895","_noi_lam_vien","field_5c9b96dae1581"),
("3371","895","nganh_nghe","May c??ng nghi???p"),
("3372","895","_nganh_nghe","field_5c9b96fde1582"),
("3373","895","thoi_han_hop_dong","3 n??m"),
("3374","895","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3375","895","gioi_tinh","N???"),
("3376","895","_gioi_tinh","field_5c9b9759e1586"),
("3377","895","do_tuoi","d?????i 35 tu???i"),
("3378","895","_do_tuoi","field_5c9b977de1587"),
("3379","895","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3380","895","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3381","895","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3382","895","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3383","895","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"148\";i:2;s:3:\"145\";i:3;s:3:\"139\";}"),
("3384","895","_hinh_anh","field_5c9b97e9e158b"),
("3385","895","luong_thang","2000 USD/th??ng"),
("3386","895","_luong_thang","field_5c9b980fe158d"),
("3387","895","gio_lam_viec","t??? 8:00 - 17:30"),
("3388","895","_gio_lam_viec","field_5c9b982de158e"),
("3389","895","ngay_nghi","Ngh??? Ch??? nh???t + ng??y l??? t???t ????i Loan"),
("3390","895","_ngay_nghi","field_5c9b9845e158f"),
("3391","895","tang_ca","30-40h/tu???n"),
("3392","895","_tang_ca","field_5c9b9860e1590"),
("3393","895","bao_hiem","????ng b???o hi???m theo quy ?????nh c??ng ty"),
("3394","895","_bao_hiem","field_5c9b987ae1591");
INSERT INTO gdd_postmeta VALUES
("3395","895","vay_von","H??? tr??? vay v???n l??m h??? s??"),
("3396","895","_vay_von","field_5c9b9894e1592"),
("3397","895","giay_to_can_thiet_1","Gi???y ????ng k?? theo nguy???n v???ng"),
("3398","895","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3399","895","giay_to_can_thiet_2","Gi???y kh??m s???c kh???e t???ng qu??t"),
("3400","895","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3401","895","giay_to_can_thiet_3","C??c gi???y t??? kh??c theo quy ?????nh"),
("3402","895","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3403","895","han_nop_ho_so","20190315"),
("3404","895","_han_nop_ho_so","field_5c9b9919e159a"),
("3405","895","du_kien_thi_tuyen","20190331"),
("3406","895","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3407","895","nhap_canh_du_kien","Th??ng 2/2020"),
("3408","895","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3409","895","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("3410","895","_dao_tao_du_kien","field_5c9b9990e159d"),
("3411","895","thi_tuyen","<ul>\n 	<li>133.??<a href=\"http://giacongcokhi.Webdemo.com/\" target=\"blank\">M???u website d???ch v??? c???a nh??m, c???a cu???n, gia c??ng c?? kh??: giacongcokhi.Webdemo.com</a></li>\n 	<li>132.??<a href=\"http://edu5.Webdemo.com/\" target=\"blank\">M???u website trung t??m Ti???ng Anh tr??? em: edu5.Webdemo.com</a></li>\n 	<li>131.??<a href=\"http://cayxanh3.Webdemo.com/\" target=\"blank\">M???u website b??n c??y phong th???y, c??y v??n ph??ng ?????p: cayxanh3.Webdemo.com</a></li>\n</ul>"),
("3412","895","_thi_tuyen","field_5c9b99b9e159f"),
("3414","896","gioi_thieu_don_hang","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao"),
("3415","896","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3416","896","tieu_de_don_hang","S???n xu???t ???c v??t t???i Cao H??ng, ????i Loan"),
("3417","896","_tieu_de_don_hang","field_5c9b9580e157f"),
("3418","896","so_luong_tiep_nhan","25 nam"),
("3419","896","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3420","896","noi_lam_vien","Cao H??ng, ????i Loan"),
("3421","896","_noi_lam_vien","field_5c9b96dae1581"),
("3422","896","nganh_nghe","S???n xu???t c?? kh??"),
("3423","896","_nganh_nghe","field_5c9b96fde1582"),
("3424","896","thoi_han_hop_dong","3 n??m"),
("3425","896","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3426","896","gioi_tinh","Nam"),
("3427","896","_gioi_tinh","field_5c9b9759e1586"),
("3428","896","do_tuoi","<35 tu???i"),
("3429","896","_do_tuoi","field_5c9b977de1587"),
("3430","896","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3431","896","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3432","896","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3433","896","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3434","896","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"148\";i:2;s:3:\"145\";i:3;s:3:\"154\";}"),
("3435","896","_hinh_anh","field_5c9b97e9e158b"),
("3436","896","luong_thang","1500USD/th??ng"),
("3437","896","_luong_thang","field_5c9b980fe158d"),
("3438","896","gio_lam_viec","8 ti???ng/ng??y t??? 8:00 ?????n 17:30"),
("3439","896","_gio_lam_viec","field_5c9b982de158e"),
("3440","896","ngay_nghi","Ngh??? Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3441","896","_ngay_nghi","field_5c9b9845e158f"),
("3442","896","tang_ca","50-80h/tu???n"),
("3443","896","_tang_ca","field_5c9b9860e1590"),
("3444","896","bao_hiem","N???p b???o hi???m theo quy ?????nh c???a C??ng ty"),
("3445","896","_bao_hiem","field_5c9b987ae1591"),
("3446","896","vay_von","H??? tr??? vay v???n"),
("3447","896","_vay_von","field_5c9b9894e1592"),
("3448","896","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng quan"),
("3449","896","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3450","896","giay_to_can_thiet_2","????n xin tuy???n d???ng vi???t tay"),
("3451","896","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3452","896","giay_to_can_thiet_3","H??? s?? c???n thi???t theo h?????ng d???n"),
("3453","896","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3454","896","han_nop_ho_so","20190316"),
("3455","896","_han_nop_ho_so","field_5c9b9919e159a"),
("3456","896","du_kien_thi_tuyen","20190329"),
("3457","896","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3458","896","nhap_canh_du_kien","Th??ng 3/2020"),
("3459","896","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3460","896","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("3461","896","_dao_tao_du_kien","field_5c9b9990e159d"),
("3462","896","thi_tuyen","<ul>\n 	<li>130.??<a href=\"http://camera2.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh cho ?? t?? - m???u 2: camera2.webdemo.com</a></li>\n 	<li>129.??<a href=\"http://camera.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh ?????p m???i nh???t: camera.webdemo.com</a></li>\n 	<li>128.??<a href=\"http://shopruou.webdemo.com/\" target=\"blank\">M???u website b??n r?????u t??y ?????p, hi???n ?????i: shopruou.webdemo.com</a></li>\n</ul>"),
("3463","896","_thi_tuyen","field_5c9b99b9e159f"),
("3469","900","gioi_thieu_don_hang","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao"),
("3470","900","_gioi_thieu_don_hang","field_5c9bb413bb44d"),
("3471","900","tieu_de_don_hang","S???n xu???t ???c v??t t???i Cao H??ng, ????i Loan"),
("3472","900","_tieu_de_don_hang","field_5c9b9580e157f"),
("3473","900","so_luong_tiep_nhan","25 nam"),
("3474","900","_so_luong_tiep_nhan","field_5c9b96a1e1580"),
("3475","900","noi_lam_vien","Cao H??ng, ????i Loan"),
("3476","900","_noi_lam_vien","field_5c9b96dae1581"),
("3477","900","nganh_nghe","S???n xu???t c?? kh??"),
("3478","900","_nganh_nghe","field_5c9b96fde1582"),
("3479","900","thoi_han_hop_dong","3 n??m"),
("3480","900","_thoi_han_hop_dong","field_5c9b9713e1583"),
("3481","900","gioi_tinh","Nam"),
("3482","900","_gioi_tinh","field_5c9b9759e1586"),
("3483","900","do_tuoi","<35 tu???i"),
("3484","900","_do_tuoi","field_5c9b977de1587"),
("3485","900","trinh_do_van_hoa","Lao ?????ng ph??? th??ng"),
("3486","900","_trinh_do_van_hoa","field_5c9b9794e1588"),
("3487","900","yeu_cau_tay_nghe","Kh??ng y??u c???u tay ngh???"),
("3488","900","_yeu_cau_tay_nghe","field_5c9b97ace1589"),
("3489","900","hinh_anh","a:4:{i:0;s:3:\"142\";i:1;s:3:\"145\";i:2;s:3:\"154\";i:3;s:3:\"139\";}"),
("3490","900","_hinh_anh","field_5c9b97e9e158b"),
("3491","900","luong_thang","1500USD/th??ng"),
("3492","900","_luong_thang","field_5c9b980fe158d"),
("3493","900","gio_lam_viec","8 ti???ng/ng??y t??? 8:00 ?????n 17:30"),
("3494","900","_gio_lam_viec","field_5c9b982de158e"),
("3495","900","ngay_nghi","Ngh??? Ch??? Nh???t + ng??y l??? t???t ????i Loan"),
("3496","900","_ngay_nghi","field_5c9b9845e158f"),
("3497","900","tang_ca","50-80h/tu???n"),
("3498","900","_tang_ca","field_5c9b9860e1590"),
("3499","900","bao_hiem","N???p b???o hi???m theo quy ?????nh c???a C??ng ty"),
("3500","900","_bao_hiem","field_5c9b987ae1591");
INSERT INTO gdd_postmeta VALUES
("3501","900","vay_von","H??? tr??? vay v???n"),
("3502","900","_vay_von","field_5c9b9894e1592"),
("3503","900","giay_to_can_thiet_1","Gi???y kh??m s???c kh???e t???ng quan"),
("3504","900","_giay_to_can_thiet_1","field_5c9b98c9e1594"),
("3505","900","giay_to_can_thiet_2","????n xin tuy???n d???ng vi???t tay"),
("3506","900","_giay_to_can_thiet_2","field_5c9b98ebe1595"),
("3507","900","giay_to_can_thiet_3","H??? s?? c???n thi???t theo h?????ng d???n"),
("3508","900","_giay_to_can_thiet_3","field_5c9b98f1e1596"),
("3509","900","han_nop_ho_so","20190316"),
("3510","900","_han_nop_ho_so","field_5c9b9919e159a"),
("3511","900","du_kien_thi_tuyen","20190329"),
("3512","900","_du_kien_thi_tuyen","field_5c9b992fe159b"),
("3513","900","nhap_canh_du_kien","Th??ng 3/2020"),
("3514","900","_nhap_canh_du_kien","field_5c9b9973e159c"),
("3515","900","dao_tao_du_kien","????o t???o tr?????c 1 th??ng"),
("3516","900","_dao_tao_du_kien","field_5c9b9990e159d"),
("3517","900","thi_tuyen","<ul>\n 	<li>130.??<a href=\"http://camera2.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh cho ?? t?? - m???u 2: camera2.webdemo.com</a></li>\n 	<li>129.??<a href=\"http://camera.Webdemo.com/\" target=\"blank\">M???u website b??n camera h??nh tr??nh ?????p m???i nh???t: camera.webdemo.com</a></li>\n 	<li>128.??<a href=\"http://shopruou.webdemo.com/\" target=\"blank\">M???u website b??n r?????u t??y ?????p, hi???n ?????i: shopruou.webdemo.com</a></li>\n</ul>"),
("3518","900","_thi_tuyen","field_5c9b99b9e159f"),
("3535","909","_wp_trash_meta_status","publish"),
("3536","909","_wp_trash_meta_time","1557133925");




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
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_posts VALUES
("3","1","2019-03-26 02:20:34","2019-03-26 02:20:34","<!-- wp:heading --><h2>Ch??ng t??i l?? ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>?????a ch??? website l??: https://bizhostvn.com/w/xkld4.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>B??nh lu???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th?? vi???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th??ng tin li??n h???</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>N???i dung nh??ng t??? website kh??c</h3><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Ph??n t??ch</h3><!-- /wp:heading --><!-- wp:heading --><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin li??n h??? c???a b???n</h2><!-- /wp:heading --><!-- wp:heading --><h2>Th??ng tin b??? sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3><!-- /wp:heading -->","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-26 02:20:34","2019-03-26 02:20:34","","0","https://tppone.com/demo/xkld4/?page_id=3","0","page","","0"),
("13","1","2019-03-26 22:47:51","2019-03-26 15:47:51","","logo-xkld","","inherit","open","closed","","logo-xkld","","","2019-03-26 22:47:51","2019-03-26 15:47:51","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/logo-xkld.jpg","0","attachment","image/jpeg","0"),
("14","1","2019-03-26 22:48:03","2019-03-26 15:48:03","https://bizhostvn.com/w/xkld4/wp-content/uploads/2019/03/cropped-logo-xkld.jpg","cropped-logo-xkld.jpg","","inherit","open","closed","","cropped-logo-xkld-jpg","","","2019-03-26 22:48:03","2019-03-26 15:48:03","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/cropped-logo-xkld.jpg","0","attachment","image/jpeg","0"),
("27","1","2019-03-26 22:52:12","2019-03-26 15:52:12","Xin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Gi???i thi???u","","publish","closed","closed","","gioi-thieu","","","2019-03-28 10:55:52","2019-03-28 03:55:52","","0","https://tppone.com/demo/xkld4/?page_id=27","0","page","","0"),
("29","1","2019-03-26 22:52:19","2019-03-26 15:52:19","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section don-hang-moi-nhat\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n<div class=\"thong-tin-don-hang-title\">\n    <div class=\"cot ngay-thi\">\n       Ng??y thi\n    </div>\n    <div class=\"cot gioi-tinh\">\n       Gi???i t??nh\n    </div>\n    <div class=\"cot nganh-nghe\">\n      Ng??nh ngh???\n    </div>\n     <div class=\"cot tang-ca\">\n        L??m th??m\n    </div>\n    <div class=\"cot luong-thang\">\n        L????ng c?? b???n\n    </div>\n     <div class=\"cot xem-them\">\n       \n    </div>\n</div>\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"18\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","publish","closed","closed","","trang-chu","","","2019-03-28 14:55:14","2019-03-28 07:55:14","","0","https://tppone.com/demo/xkld4/?page_id=29","0","page","","0"),
("31","1","2019-03-26 22:52:31","2019-03-26 15:52:31","Tr??n tr???ng c???m ??n Qu?? kh??ch h??ng ???? quan t??m t???i s??? li??n h??? n??y. Xin vui l??ng g???i th??ng tin ho???c li??n h??? tr???c ti???p, c??ng ty s???n s??ng ????p ???ng k???p th???i, hi???u qu??? nh???ng nhu c???u c???a Qu?? kh??ch h??ng trong th???i gian s???m nh???t.\n\n????? li??n l???c v???i ch??ng t??i, vui l??ng ??i???n ?????y ????? th??ng tin b??n d?????i, ch??ng t??i s??? h???i ??m ngay khi nh???n ???????c th??ng tin c???a b???n. Xin c???m ??n!\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n[contact-form-7 id=\"670\"]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[/col]\n\n[/row]","Li??n h???","","publish","closed","closed","","lien-he","","","2019-03-28 10:37:18","2019-03-28 03:37:18","","0","https://tppone.com/demo/xkld4/?page_id=31","0","page","","0"),
("34","1","2019-03-26 22:53:23","2019-03-26 15:53:23"," ","","","publish","closed","closed","","34","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=34","15","nav_menu_item","","0"),
("36","1","2019-03-26 22:53:23","2019-03-26 15:53:23"," ","","","publish","closed","closed","","36","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=36","2","nav_menu_item","","0"),
("37","1","2019-03-26 22:53:23","2019-03-26 15:53:23"," ","","","publish","closed","closed","","37","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=37","12","nav_menu_item","","0"),
("38","1","2019-03-26 22:53:23","2019-03-26 15:53:23"," ","","","publish","closed","closed","","38","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=38","13","nav_menu_item","","0"),
("39","1","2019-03-26 22:53:23","2019-03-26 15:53:23"," ","","","publish","closed","closed","","39","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=39","14","nav_menu_item","","0"),
("40","1","2019-03-26 22:53:23","2019-03-26 15:53:23"," ","","","publish","closed","closed","","40","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=40","3","nav_menu_item","","0"),
("41","1","2019-03-26 22:55:02","2019-03-26 15:55:02"," ","","","publish","closed","closed","","41","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","0","https://tppone.com/demo/xkld4/?p=41","1","nav_menu_item","","0"),
("71","1","2019-03-26 23:09:42","2019-03-26 16:09:42","","????ng k??","","publish","closed","closed","","dang-ky","","","2019-03-28 11:47:02","2019-03-28 04:47:02","","0","https://tppone.com/demo/xkld4/?p=71","1","nav_menu_item","","0"),
("72","1","2019-03-26 23:09:42","2019-03-26 16:09:42","","????ng nh???p","","publish","closed","closed","","dang-nhap","","","2019-03-28 11:47:02","2019-03-28 04:47:02","","0","https://tppone.com/demo/xkld4/?p=72","2","nav_menu_item","","0"),
("73","1","2019-03-26 23:09:42","2019-03-26 16:09:42","","Sitemap","","publish","closed","closed","","sitemap","","","2019-03-28 11:47:02","2019-03-28 04:47:02","","0","https://tppone.com/demo/xkld4/?p=73","3","nav_menu_item","","0"),
("77","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","77","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=77","7","nav_menu_item","","0"),
("78","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","78","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=78","8","nav_menu_item","","0"),
("79","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","79","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=79","10","nav_menu_item","","0"),
("80","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","80","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=80","9","nav_menu_item","","0"),
("81","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","81","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=81","6","nav_menu_item","","0"),
("82","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","82","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=82","4","nav_menu_item","","0"),
("83","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","83","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=83","5","nav_menu_item","","0"),
("84","1","2019-03-26 23:14:14","2019-03-26 16:14:14"," ","","","publish","closed","closed","","84","","","2019-03-26 23:14:14","2019-03-26 16:14:14","","1","https://tppone.com/demo/xkld4/?p=84","11","nav_menu_item","","0"),
("107","1","2019-03-26 23:35:25","2019-03-26 16:35:25","","dot1","","inherit","open","closed","","dot1","","","2019-03-26 23:35:25","2019-03-26 16:35:25","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/dot1.jpg","0","attachment","image/jpeg","0"),
("108","1","2019-03-26 23:35:26","2019-03-26 16:35:26","","dot2","","inherit","open","closed","","dot2","","","2019-03-26 23:35:26","2019-03-26 16:35:26","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/dot2.jpg","0","attachment","image/jpeg","0"),
("118","1","2019-03-26 23:47:56","2019-03-26 16:47:56","","1024px-Feed-icon.svg","","inherit","open","closed","","1024px-feed-icon-svg","","","2019-03-26 23:47:56","2019-03-26 16:47:56","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/1024px-Feed-icon.svg.png","0","attachment","image/png","0"),
("135","1","2019-03-26 23:59:51","2019-03-26 16:59:51","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nNow to add Contact From 7 to our header, we will have to edit??<strong>header.php</strong>??file. As mentioned before, it???s??strongly recommended to backup your WordPress??before altering any WordPress core files and??use WordPress child theme.\n\nThe following steps show how to edit WordPress files with??Hostinger File manager, however, the same result can be achieved using??FTP client (click to see tutorial):\n<ol>\n 	<li>Access??Hostinger??control panel and click on??<strong>File Manager</strong></li>\n 	<li>Next, locate the WordPress installation folder (usually, it???s??<strong>public_html</strong>) and navigate to??<strong>wp-contents -&gt; themes??</strong>folder<strong>.</strong></li>\n 	<li>Find your currently active theme folder, and open it.</li>\n 	<li>Since we want to add contact form into the header, open??<strong>header.php</strong>.</li>\n 	<li>Scroll down the page and select the exact location and div wherein you want to add the form. Our WordPress shortcode with do_shortcode function will look like this:</li>\n</ol>","Tuy???n 25 nam thu nh???p cao l??m s???n xu???t ???c v??t t???i Cao H??ng, ????i Loan","","publish","open","open","","tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan","","","2019-03-26 23:59:51","2019-03-26 16:59:51","","0","https://tppone.com/demo/xkld4/?p=135","0","post","","0"),
("136","1","2019-03-26 23:59:48","2019-03-26 16:59:48","","post1","","inherit","open","closed","","post1","","","2019-03-26 23:59:48","2019-03-26 16:59:48","","135","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/post1.jpg","0","attachment","image/jpeg","0"),
("138","1","2019-03-27 00:02:21","2019-03-26 17:02:21","Xin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Nh???ng tr?????ng h???p kh??ng ????? ??i???u ki???n ??i xu???t kh???u lao ?????ng ????i Loan","","publish","open","open","","nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan","","","2019-03-27 00:02:21","2019-03-26 17:02:21","","0","https://tppone.com/demo/xkld4/?p=138","0","post","","0"),
("139","1","2019-03-27 00:02:18","2019-03-26 17:02:18","","cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan","Nh??n c??ng Vi???t nam ??ang l??m vi???c t???i Nh???t","inherit","open","closed","","cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan","","","2019-03-28 15:33:51","2019-03-28 08:33:51","","138","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/cac-hinh-thuc-tuyen-dung-lao-dong-lam-viec-tai-dai-loan.jpg","0","attachment","image/jpeg","0"),
("141","1","2019-03-27 00:04:36","2019-03-26 17:04:36","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nXin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Danh s??ch c??ng ty ???????c ph??p ????a lao ?????ng sang ????i Loan...","","publish","open","open","","danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan","","","2019-03-27 00:04:36","2019-03-26 17:04:36","","0","https://tppone.com/demo/xkld4/?p=141","0","post","","0"),
("142","1","2019-03-27 00:04:33","2019-03-26 17:04:33","","pic-News-_636858186419581654","T???i x?? nghi???p, c??c b???n s??? ???????c tr??? m???c l????ng l?? 15 tri???u VN?? ch??a k??? th???i gian l??m th??m, l????ng th?????ng ....","inherit","open","closed","","pic-news-_636858186419581654","","","2019-03-27 23:58:11","2019-03-27 16:58:11","","141","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/pic-News-_636858186419581654.jpg","0","attachment","image/jpeg","0"),
("144","1","2019-03-27 00:06:17","2019-03-26 17:06:17","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nXin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","????n h??ng 100 n??? gi??p vi???c gia ????nh xu???t kh???u lao ?????ng...","","publish","open","open","","don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong","","","2019-03-27 17:40:59","2019-03-27 10:40:59","","0","https://tppone.com/demo/xkld4/?p=144","0","post","","0"),
("145","1","2019-03-27 00:06:15","2019-03-26 17:06:15","","0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan","M??i tr?????ng l??m vi???c hi???n ?????i, ???????c trang b??? ?????y ????? thi???t b???, m??y m??c, c?? nhi???u vi???c l??m th??m cho lao ?????ng ????? c?? m???c thu nh???p kh?? h??n","inherit","open","closed","","0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan","","","2019-03-28 13:58:42","2019-03-28 06:58:42","","144","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/0-su-that-ve-chi-phi-di-dieu-duong-vien-ho-ly-dai-loan.jpg","0","attachment","image/jpeg","0"),
("147","1","2019-03-27 00:07:54","2019-03-26 17:07:54","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nXin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Tuy???n 25 nam thu nh???p cao s???n xu???t ???c v??t t???i Cao H??ng, ????i Loan l????ng cao","","publish","open","open","","tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2","","","2019-03-28 15:33:55","2019-03-28 08:33:55","","0","https://tppone.com/demo/xkld4/?p=147","0","post","","0"),
("148","1","2019-03-27 00:07:50","2019-03-26 17:07:50","","vien-duong-lao-dai-trung","????n h??ng Vi???n D?????ng L??o An Kh??nh, ????i B???c","inherit","open","closed","","vien-duong-lao-dai-trung","","","2019-03-28 14:50:06","2019-03-28 07:50:06","","147","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/vien-duong-lao-dai-trung.jpg","0","attachment","image/jpeg","0"),
("150","1","2019-03-27 00:09:21","2019-03-26 17:09:21","M???i qu???c gia s??? c?? m???i n???n v??n ho?? ri??ng, nh???ng gi?? tr??? l???ch s??? t???n t???i l??u ?????i, khi b???n t???i ?????t n?????c ???? b???n c???n ph???i h???c h???i nh???ng v??n ho?? c???a h??? ????? kh??ng g???p ph???i nh???ng ???n t?????ng x???u, h??y ?????c b??i vi???t n??y ????? b???n trang b??? nh???ng ki???n th???c h??nh trang tr??n con ???????ng??<strong>th???c t???p sinh Nh???t B???n</strong>\n\n<strong># T???ng qu?? cho ng?????i ???m</strong>\n\nNh?? ng?????i Vi???t m??nh th?? t???i th??m ng?????i ???m th?????ng c?? nh???ng m??n qu?? v???i hy v???ng l?? ng?????i ???m ???? s??? d???ng ????? b???i b??? s???c kho??? ho???c ?????ng vi??n v??? tinh th???n. Tuy nhi??n v???i ng?????i Nh???t B???n th?? kh??ng ????n gi???n nh?? v???y,??Khi ??i th??m ng?????i ???m t???i Nh???t, b???n kh??ng n??n t???ng hoa c?? ch???u hay t???ng c??c lo???i hoa nh?? hoa anh th???o, hoa c??c, hoa tr??, c???m t?? c???u,???B???i ng?????i Nh???t quan ni???m r???ng, nh???ng th??? n??y mang l???i ??i???u kh??ng t???t ?????p cho ng?????i b???nh. V??? vi???c t???ng ti???n m???t cho ng?????i ???m ?????i v???i b???n b??, ?????ng nghi???p th??n thi???t ho???c c???p d?????i th?? c??ng ???????c. Tuy nhi??n, ?????i v???i c???p tr??n th?? b???n kh??ng n??n t???ng ti???n m???t. Thay v??o ????, b???n c?? th??? t???ng th??? qu?? t???ng ho???c phi???u mua h??ng ????? tr??nh th???t l???.\n\n<strong># ??i gi??y d??p trong nh??</strong>\n\nN???u c?? c?? h???i t???i th??m nh?? c???a ng?????i Nh???t b???n h??y ch?? ??, ????? d???p ho???c gi??y c???a b???n ??? ngo??i, m??i h?????ng ra ph??a ngo??i, sau ???? s??? d???ng d??p ??i trong nh?? c???a ng?????i Nh???t. ??i???u n??y c??ng s??? ???????c ??p d???ng t???i nh???ng n??i nh?? ch??a chi???n ho???c nh???ng ?????a ??i???m t??m linh. Ng?????i Nh???t r???t k??? t??nh v?? quan tr???ng s??? g???n g??ng v?? th??? n???u kh??ng bi???t b??? ????nh gi?? thi???u thi???n c???m th?? b???n n??n ????? ??, c??ch t???t nh???t l?? quan s??t nh???ng ng?????i Nh???t h??? l??m sau ???? b???n l??m theo.\n\n<strong># D??ng ????a ??n c??m sai c??ch</strong>\n\nNg?????i Nh???t quan ni???m d??ng ????a g?? v?? b??t ho???c g?? ????a l?? g???i ma qu??? t???i, ??i???u n??y l?? c???m k???, ngo??i ra b???n c??ng kh??ng ???????c c???m ????a v??o b??t c??m ?????c bi???t l?? kh??ng ???????c d??ng ????a ????? chuy???n th???c ??n. Theo ng?????i Nh???t th?? ????a c???m v??o b??t c??m ch??? d??nh cho ng?????i ch???t, trong ????m tang th??i.\n\n<strong># Ch??? tay v??o ng?????i kh??c</strong>\n\nTuy???t ?????i kh??ng ???????c d??ng 1 ng??n tay ????? ch??? v??? ng?????i n??o ???? ??? Nh???t, ???? l?? h??nh vi th?? l???. N???u mu???n gi???i thi???u v??? m???t ng?????i n??o ???? b???n ph???i d??ng c??? b??n tay v?? ng???a l??ng b??n tay l??n.\n\n<strong># Kh??ng x???p h??ng</strong>.\n\nV??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????.\n\n<strong># X??? r??c b???a b??i</strong>\n\n??? Nh???t c??c lo???i r??c th???i ???????c ph??n ra c??? th???, r?? r??ng v?? b???n ph???i h???c ????? n???m ???????c nh???ng quy ?????nh n??y. Vi???c x??? r??c b???a b??i ??? Nh???t b???n s??? b??? ph???t r???t n???ng v?? c??? x?? h???i k??? th???.\n\n<strong># N??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng</strong>\n\nT???i c??c ?????a ??i???m nh?? ga t??u ??i???n, c??ng vi??n ??? ng?????i Nh???t th????ng d??nh th???i gian ?????c s??ch, trang ??i???m, nh???n tin ??? tuy nhi??n n???u nh?? b???n n??i chuy???n v???i ti???ng qu?? l???n th?? s??? s??? g??y ra nh???ng v???n ????? kh?? ch???u v???i m???i ng?????i xung quanh. V?? th??? kh??ng n??n n??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng.\n\nC???n ph???i tu??n theo nh???ng v??n ho?? b???t th??nh v??n c???a Nh???t B???n ????? b???n c??ng ho??n thi???n h??n k??? n??ng v?? n??ng l???c c???a m??nh.\n\nT?? v???n v??? ch????ng tr??nh Th???c t???p sinh Nh???t B???n vui l??ng li??n h???:\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","T???n M???n Nh???ng C???m K??? ??? Nh???t B???n B???n C???n Bi???t ????? tr??nh r???c r???i","","publish","open","open","","tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet","","","2019-03-28 14:44:39","2019-03-28 07:44:39","","0","https://tppone.com/demo/xkld4/?p=150","0","post","","0"),
("151","1","2019-03-27 00:09:19","2019-03-26 17:09:19","","xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834","C??ng ty TNHH ABC - ????n v??? ti???p nh???n c??ng nh??n Vi???t Nam","inherit","open","closed","","xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834","","","2019-03-28 10:00:07","2019-03-28 03:00:07","","150","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834.jpeg","0","attachment","image/jpeg","0"),
("153","1","2019-03-27 00:10:16","2019-03-26 17:10:16","?????a ch???: T???nh Osaka. Ng??nh ngh??? xin visa: May b???t. T??n c??ng vi???c c??? th???: May b???t, may ??o gh??? ?? t??, l???u tr???i??? Tay ngh???, chuy??n m??n: ??u ti??n c??c ???ng vi??n c?? kinh nghi???m li??n quan ?????n ng??nh may\n\n<strong>??I???U KI???N TUY???N D???NG</strong>\n\nS??? l?????ng: 9 n???\n\nTu???i: 19~28 tu???i\n\nTr??nh ?????: T???t nghi???p c???p 3 tr??? l??n\n\nTay ngh???, chuy??n m??n: ??u ti??n c??c ???ng vi??n c?? kinh nghi???m li??n quan ?????n ng??nh may\n\nY??u c???u kh??c:\n<ul>\n 	<li>C?? s???c kh???e t???t</li>\n 	<li>Kh??ng c???n th???, kh??ng m?? m??u, kh??ng c?? h??nh x??m</li>\n</ul>\nH??nh th???c tuy???n d???ng: 1. Test IQ, 2. Thi th???c h??nh, 3. Ph???ng v???n tr???c ti???p\n\n<strong>CH??? ????? ????I NG???</strong>\n\nTr??? c???p th??ng ?????u: 60.000 Y??n\n\nL????ng c?? b???n: 154.000 Y??n/th??ng\n\nTh???i gian l??m vi???c:\n<ul>\n 	<li>L??m vi???c t??? 8h00 ??? 17h00 ngh??? gi???i lao 60 ph??t</li>\n 	<li>C??ng ty c?? vi???c l??m th??m</li>\n</ul>\nBHXH, BHYT, BH th???t nghi???p: Theo quy ?????nh c???a lu???t ph??p Nh???t B???n\n\n?????a ??i???m l??m vi???c: T???nh Osaka\n\nD??? ki???n nh???p c???nh: 4/2019\n\nD??? ki???n thi tuy???n: 12/10/2018\n\nS??? l?????ng tham gia thi tuy???n: 9 N???\n\n<strong>TH??NG TIN LI??N H???</strong>\n\n<strong>Hotline: 1900636812</strong>\n\n<strong>Mobile: 0976675792 (Ms Li??m)</strong>","Tuy???n sinh th???c t???p sinh ??i Nh???t ??? 9 n??? ng??nh may l????ng cao c???n ngay","","publish","open","open","","tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may","","","2019-03-28 15:30:58","2019-03-28 08:30:58","","0","https://tppone.com/demo/xkld4/?p=153","0","post","","0"),
("154","1","2019-03-27 00:10:13","2019-03-26 17:10:13","","images (2)","H??nh ???nh c??c b???n lao ?????ng chu???n b??? sang ????i Loan","inherit","open","closed","","images-2","","","2019-03-28 15:30:26","2019-03-28 08:30:26","","153","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/images-2.jpg","0","attachment","image/jpeg","0"),
("156","1","2019-03-27 00:11:11","2019-03-26 17:11:11","Tham gia ch????ng tr??nh th???c t???p Nh???t B???n c??c h???c vi??n th?????ng lo l???ng trong kh??u ph???ng v???n, c?? nh???ng ng?????i tr??nh ????? chuy??n m??n r???t okie nh??ng khi ph???ng v???n l???i r??t th???m ch?? l?? r???t ?????n 3-4 l???n, v???y nguy??n nh??n l?? g??? B??i vi???t chia s??? kinh nghi???m, k??? n??ng ph???ng v???n th???c t???p sinh Nh???t B???n t??? l??? ?????u cao.\n\nT???p trung v??o th??i ?????, trang ph???c khi tham gia bu???i ph???ng v???n\n\nNg?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan.\n\nL??c ph???ng v???n hay n??i chuy???n v???i ng?????i ph??ng v???n b???n n??n n??i chuy???n v???a ????? nghe, d???t kho??t, ????? ?? ?????n nh???ng c??u n??i, c??? ch??? trong l??c n??i.\n\nGi???i thi???u b???n th??n l??u lo??t\n\nPh???n gi???i thi???u v??? b???n th??n b???n c???n ?????m b???o s??? t??? tin, n??n chu???n b??? tr?????c ????? c?? th??? n??i m???t c??ch tr??n tru nh???t n?? ???????c th??? hi???n b???i ??m thanh m?? b???n n??i ra, ph??t ??m ch??nh x??c nh???ng t???,c??u trong b??i gi???i thi???u b???n th??n.\n\nTrong l??c gi???i thi???u b???n th??n lu??n gi??? ???????c s??? vui t????i tr??n khu??n m???t, ?????ng ho???c ng???i th???ng, m???t nh??n th???ng ng?????i ph???ng v???n.\n\nTr??? l???i th???t th??\n\nNg?????i Nh???t t??n tr???ng v??? l??ng tin n??n khi n??i chuy???n b???n h??y th???t th??, th???ng th???n tr??? l???i c??c c??u h???i c???a ng?????i ph???ng v???n m???t c??ch trung th???c nh???t. Tr??? l???i v??? c??c ??u ??i???m, khuy???t ??i???m c???a b???n m???t c??ch r?? r??ng m???ch l???c, kh??ng qu??n ????a ra nh???ng ph????ng ??n ????? thay ?????i kh???c ph???c nh???ng khuy???t ??i???m.\n\nC??ch tr??? l???i m???t s??? c??u h???i th?????ng hay g???p trong ph???ng v???n\n\n<em><strong>T???i sao l???i ch???n lao ?????ng ??? Nh???t B???n?</strong></em>\n\n<em>B???n ?????ng l??? li???u t???i m???c n??i v?? m???c l????ng h???p d???n ngay t??? ?????u, h??y tr??? l???i nh???ng th??? li??n quan t???i m??i tr?????ng l??m vi???c, c??ng ngh??? ???ng d???ng. N???n v??n ho?? Nh???t B???n. N???u nh?? b??? xo??y v??o vi???c thu nh???p th?? b???n c??ng th??nh th???t tr??? l???i r???ng m???c l????ng, m???c thu nh???p c??ng t???t nh?? th??? c?? ??i???u ki???n gi??p ????? gia ????nh.</em>\n\n<em><strong>B???n c?? ch???u ???????c v???t v??? hay kh??ng?</strong></em>\n\n<em>C??ng vi???c n??o c??ng c???n s??? lao ?????ng nhi???t t??nh h??ng say, kh??ng c?? c??ng vi???c n??o nh??? nh??ng m?? l????ng cao. H??y nh??? r???ng nh???ng ng?????i ph???ng v???n b???n lu??n mu???n b???n ph???i trong t??nh tr???ng s???n s??ng l??m vi???c v?? c???ng hi???n, m???t trong c??u tr??? l???i th??ng minh ???????c s??? d???ng l?? ???V?? ng?????i Nh???t l??m ???????c th?? t??i c??ng s??? l??m ???????c??? V???n d?? ng?????i Vi???t ch??m ch??? l??m vi???c n??n b???n kh??ng qu?? lo l??ng v??? vi???c n??y. N???u nh?? t???t b???n c?? th??? n??i nhi???u v??? quan ??i???m l??m vi???c v???i ng?????i Nh???t khi b???n ???? ???????c h???c v?? ???????c ????o t???o.</em>\n\n<em><strong>B???n c?? c??u h???i n??o cho ch??ng t??i kh??ng?</strong></em>\n\n<em>R???t nhi???u ng?????i b??? b???i r???i b???i c??u n??y, vi???c b???i r???i s??? d???n ?????n s??? kh??ng quy???t ??o??n, ch???n ch??? g??y m???t th???i gian n??n l???i khuy??n l?? n???u b???n c?? th???c m???c n??o th???c s??? ch??a r?? b???n h??y h???i, v?? n?? l?? quy???n l???i c???a b???n kh??ng c???n ph???i e ng???i, n???u kh??ng c?? th?? c??ng tr??nh b??y ???T??i kh??ng c?? c??u h???i n??o, c???m ??n??? ????? ho??n th??nh m??n ph???ng v???n.</em>\n\n????? ????? y??u c???u xu???t c???nh s??? tr???i qua r???t nhi???u th??? b???n c???n ph???i n??? l???c ph???n ?????u, ????i h???i trong qu?? tr??nh h???c t???p b???n c???n ph???i chu???n b??? k??? l?????ng ????? ?????t c??c y??u c???u th???c t???p sinh Nh???t B???n.\n\nLi??n h??? v???i ch??ng t??i ????? ???????c t?? v???n t???t nh???t\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n\n\n<strong>H?? N???i</strong>\n\n?????a ch???: T???ng 12, Th??p CEO, HH2/1, Ph???m H??ng, H?? N???i |\n\nHotline : 1900 636 812\n\n<strong>H??? Ch?? Minh</strong>\n\nS??? 72 ???????ng c1, Ph?????ng 13, Qu???n T??n b??nh, Tp. H??? Ch?? Minh |\n\nHotline: 0283 812 5656\n\nWebsite: www.ceos.vn","T?? v???n k??? n??ng ph???ng v???n th???c t???p sinh ????i Loan kh??? n??ng ????? cao nh???t","","publish","open","open","","tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao","","","2019-03-28 15:30:28","2019-03-28 08:30:28","","0","https://tppone.com/demo/xkld4/?p=156","0","post","","0"),
("157","1","2019-03-27 00:11:08","2019-03-26 17:11:08","","images (3)","","inherit","open","closed","","images-3","","","2019-03-27 00:11:08","2019-03-26 17:11:08","","156","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/images-3.jpg","0","attachment","image/jpeg","0"),
("208","1","2019-03-27 00:35:56","2019-03-26 17:35:56","Ch????ng tr??nh th???c t???p sinh Nh???t B???n c?? r???t nhi???u nh???ng quy ?????nh ch???t ch???, m???t trong nh???ng quy ?????nh ???? l?? ????? tu???i. Nh?? v???y ????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n.\n\n18 ??? 32 ????y l?? ????? tu???i ???????c nhi???u c??c c??ng ty ??? Nh???t y??u c???u ????? tham gia ch????ng tr??nh th???c t???p sinh tuy nhi??n c??ng c??\n\nV???i nhi???u n??m kinh nghi???m t?? v???n th???c t???p sinh v?? lao ?????ng Nh???t B???n ch??ng t??i nh???n th???y ????? tu???i ?????p nh???t ????? tham gia ch????ng tr??nh th???c t???p sinh Nh???t B???n l?? t??? 20 ?????n 28 tu???i. T???i sao l???i t???t v?? n???u b???n d?????i 20 tu???i th?? kh??? n??ng nh???n th???c v?? th??ch nghi v???i c??ng vi???c c??n h??i non, ?????c bi???t l?? l??m vi???c ??? n??i xa m?? l???i l?? Nh???t B???n. N??n kh??? n??ng ch???u ??p l???c l?? ch??a ???????c t???t v?? th??? trong th???i gian t??? 18 ?????n 20 b???n n??n trau d???i h???c h???i th??m ????? ho??n th??????n b???n th??n.\n\n&nbsp;\n\n????? tu???i 32 ??? 35 ??? ????? tu???i n??y b???n v???n c?? th??? tham gia c??c ch????ng tr??nh th???c t???p sinh nh??ng s??? r???t kh?? kh??n cho vi???c l???a ch???n nh???ng ????n h??ng. V???i ????? tu???i th?????ng c??c ????n h??ng tuy???n d???ng ??? l??nh v???c h??n x??, c?? kh??, x??y d???ng\n\n??? ????? tu???i n??y vi???c ti???p c???n v???i c??ng vi???c v???i nh???ng thay ?????i s??? r???t kh??, th?????ng nh???ng ch??? b??n Nh???t c??ng ng???i nh???n nh???ng ng?????i ??? ????? tu???i n??y v?? lo s??? s??? kh?? ch??? ?????o trong c??ng vi???c.\n\nG???i ?? m???t s??? ????? tu???i cho c??c ng??nh ngh???\n\n??? X??y d???ng. Nam tu???i t??? 20-28 l?? nhi???u nh???t trong bi??n ????? th?????ng th???y t??? 19-32 (C?? ????n h??ng l???y ????? tu???i 35 v?? nh???ng lao ?????ng n??y th?????ng c?? kinh nghi???m l??m x??y d???ng??)\n\n??? N??ng nghi???p. Nam N??? tu???i t??? 19-32 (????y l?? ngh??nh th??ch ????? tu???i cao)\n\n??? May. N??? tu???i t??? 19-30, nhi???u ????n l???y t??? 18-36 (thi tuy???n tay ngh??? ??? tay ngh??? cao l?? l???i th???)\n\n??? ??i???n t??? n??? l???y tu???i kh?? tr??? t??? 19-26 (thi k??? n??ng, kh??o l??o, nhanh nh???n l?? l???i th???)\n\n??? C?? kh?? c?? bi??n ????? r???ng v?? th?????ng th?? m???i x?? nghi???p c?? m???t l???a ch???n v?? ti??u ch?? tuy???n ri??ng (tu???i t??? 19-30)\n\n??? Th???c ph???m. Ng??nh n??y th?????ng kh??ng quan tr???ng v??? tu???i (18-32), kh??o l??o, g???n g??ng l?? ti??u ch?? tuy???n (l??u ?? ?????u t??c, trang ph???c)\n\nLi??n h??? ngay ????? ???????c t?? v???n chi ti???t v??? ch????ng tr??nh th???c t???p sinh Nh???t B???n\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n","","publish","open","open","","do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban","","","2019-03-28 14:20:27","2019-03-28 07:20:27","","0","https://tppone.com/demo/xkld4/?p=208","0","post","","0"),
("209","1","2019-03-27 00:35:52","2019-03-26 17:35:52","","images (4)","","inherit","open","closed","","images-4","","","2019-03-27 00:35:52","2019-03-26 17:35:52","","208","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/images-4.jpg","0","attachment","image/jpeg","0"),
("226","1","2019-03-27 10:50:40","2019-03-27 03:50:40","","xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834 (1)","?????????????","inherit","open","closed","","xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-1","","","2019-03-27 10:50:40","2019-03-27 03:50:40","","208","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/xuat-khau-lao-dong-giu-thi-truong-truyen-thong-mo-thi-truong-moi-1516673697867-77-0-1201-2000-crop-1516673707834-1.jpeg","0","attachment","image/jpeg","0"),
("278","1","2019-03-27 11:57:35","2019-03-27 04:57:35","","dot-post","","inherit","open","closed","","dot-post","","","2019-03-27 11:57:35","2019-03-27 04:57:35","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/dot-post.jpg","0","attachment","image/jpeg","0"),
("325","1","2019-03-27 15:01:17","2019-03-27 08:01:17","","phone-icon","","inherit","open","closed","","phone-icon","","","2019-03-27 15:01:17","2019-03-27 08:01:17","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/phone-icon.png","0","attachment","image/png","0"),
("335","1","2019-03-27 15:18:31","2019-03-27 08:18:31","","banner-quang-cao","","inherit","open","closed","","banner-quang-cao","","","2019-03-27 15:18:31","2019-03-27 08:18:31","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/banner-quang-cao.jpg","0","attachment","image/jpeg","0"),
("336","1","2019-03-27 15:21:41","2019-03-27 08:21:41","<iframe width=\"378\" height=\"213\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","88e83f2835078004ce2644428b691e46","","","2019-03-27 15:21:41","2019-03-27 08:21:41","","0","https://tppone.com/demo/xkld4/88e83f2835078004ce2644428b691e46/","0","oembed_cache","","0"),
("337","1","2019-03-27 15:21:43","2019-03-27 08:21:43","<iframe width=\"361\" height=\"203\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","2d3b9559722cb77f6a6bdceff8b65106","","","2019-03-27 15:21:43","2019-03-27 08:21:43","","0","https://tppone.com/demo/xkld4/2d3b9559722cb77f6a6bdceff8b65106/","0","oembed_cache","","0"),
("348","1","2019-03-27 15:31:31","2019-03-27 08:31:31","<div class=\"form-dang-ky\">\n<div class=\"row-form\">\n<div class=\"left\">\n<label>H??? v?? t??n:</label>\n</div>\n<div class=\"right\">\n[text* text-870 placeholder \"Nh???p h??? t??n...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Gi???i t??nh:</label>\n</div>\n<div class=\"right\">\n[select* menu-278 \"Gi???i t??nh\" \"Nam\" \"N???\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>V??ng l??m vi???c:</label>\n</div>\n<div class=\"right\">\n[select menu-2799 \"V??ng l??m vi???c\" \"????i B???c\" \"????i Trung\" \"????i Nam\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Ng??nh ngh???:</label>\n</div>\n<div class=\"right\">\n[select menu-2734 \"Ng??nh ngh???\" \"K??? s?? c?? kh??\" \"H??? l??\" \"Nh??n c??ng may m???c\" \"Ng??nh ngh??? kh??c\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Th???i h???n H??:</label>\n</div>\n<div class=\"right\">\n[select menu-2732134 \"Th???i h???n H??\" \"2 n??m\" \"3 n??m\" \"4 n??m\" \"5 n??m\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Tr??nh ?????:</label>\n</div>\n<div class=\"right\">\n[select menu-27090 \"Tr??nh ?????\" \"Ph??? th??ng\" \"C???p 3\" \"Trung c???p\" \"Cao ?????ng\" \"?????i H???c\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Email:</label>\n</div>\n<div class=\"right\">\n[email email-174 placeholder \"Nh???p email...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>??i???n tho???i:</label>\n</div>\n<div class=\"right\">\n[tel* tel-102 placeholder \"Nh???p s??? ??i???n tho???i...\"]\n</div>\n</div>\n[submit \"G???i ????ng k??\"]\n</div>\n1\nM???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\nM???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\nwebdemo@gmail.com\nC?? m???t y??u c???u ????ng k?? ????n xu???t kh???u lao ?????ng t???i website:\n- H??? v?? t??n: [text-870]\n- Gi???i t??nh: [menu-278]\n- S??? ??i???n tho???i: [tel-102]\n- ?????a ch??? email: [email-174]\n- Ng??nh ngh???: [menu-2734]\n- V??ng l??m vi???c: [menu-2799]\n- Th???i h???n h???p ?????ng: [menu-2732134]\n- Tr??nh ?????: [menu-27090]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\n\n\n\n\n\nM???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\nM???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","????ng k?? ???ng tuy???n","","publish","closed","closed","","form-lien-he-1","","","2019-03-27 15:49:35","2019-03-27 08:49:35","","0","https://tppone.com/demo/xkld4/?post_type=wpcf7_contact_form&#038;p=348","0","wpcf7_contact_form","","0"),
("363","1","2019-03-27 15:56:23","2019-03-27 08:56:23","[section bg_color=\"rgb(242, 242, 242)\" padding=\"15px\" class=\"footer-section\"]\n\n[row]\n\n[col span__sm=\"12\" class=\"logo-row\"]\n\n[featured_box img=\"368\" pos=\"left\"]\n\n[gap height=\"15px\"]\n\n<h3><span style=\"color: #000000;\">PH??NG TUY???N D???NG XU???T KH???U LAO ?????NG ????I LOAN</span></h3>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[row class=\"row-thong-tin\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[title text=\"Th??ng tin l??m vi???c t???i ????i Loan\"]\n\n[featured_box img=\"384\" img_width=\"20\" pos=\"left\"]\n\n<p><span style=\"font-size: 85%; color: #000000;\">???????ng T??n Th???t Thuy???t - M??? ????nh - T??? Li??m - H?? N???i</span></p>\n\n[/featured_box]\n[featured_box img=\"383\" img_width=\"20\" pos=\"left\"]\n\n<p><span style=\"color: #00aae7; font-size: 85%;\">info@vieclamdailoan.vn</span></p>\n\n[/featured_box]\n[gap height=\"13px\"]\n\n[follow style=\"fill\" scale=\"152\" facebook=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title text=\"Th??ng tin th??? tr?????ng Xu???t kh???u Lao ?????ng ????i Loan\"]\n\n<h4><span style=\"color: #000000;\">T?? v???n h??? tr??? lao ?????ng t???i c??c t???nh ph??a b???c:</span></h4>\n<p><span style=\"font-size: 85%; color: #000000;\">H?? N???i - B???c Ninh - B???c Giang - H???i D????ng - Nam ?????nh - H???i Ph??ng - Th??i B??nh - Cao B???ng - L???ng S??n - H??a B??nh - H??ng Y??n Qu???ng Ninh - Tuy??n Quang - B???c K???n...</span></p>\n<h4><span style=\"color: #000000;\">C??c t???nh Mi???n Trung:</span></h4>\n<p><span style=\"font-size: 85%; color: #000000;\">Thanh H??a, Ngh??? An, H?? T??nh, Qu???ng B??nh, Qu???ng Tr???, Hu???... TP.H??? Ch?? Minh v?? c??c t???nh mi???n nam</span></p>\n\n[/col]\n\n[/row]\n[row class=\"row-3\"]\n\n[col span__sm=\"12\"]\n\n<p><span style=\"color: #000000; font-size: 85%;\">Xu???t kh???u lao ?????ng l?? m???t trong nh???ng con ???????ng nhanh nh???t ????? ph??t tri???n kinh t???, x??a ????i gi???m ngh??o. Vieclamdailoan.vn t??? h??o l?? m???t trong nh???ng ????n v??? ti??n phong ho???t ?????ng trong th??? tr?????ng xu???t kh???u lao ?????ng ????i Loan. V???i mong mu???n chia s??? ?????y ????? nh???ng th??ng tin c???n thi???t v??? ??i???u ki???n, th??? t???c, chi ph??...khi tham gia XKL?? ????i Loan cho ng?????i lao ?????ng. C???p nh???t danh b??? c??c c??ng ty xu???t kh???u lao ?????ng ????i Loan uy t??n tr??n c??? n?????c, li??n t???c c???p nh???t c??c ????n h??ng XKL?? m???i nh???t t???i ????i B???c, ????i Trung, ????i Nam, Cao H??ng ????i Loan. </span></p>\n<p><span style=\"color: #000000; font-size: 85%;\">Lao ?????ng Quan T??m:</span></p>\n<p><span style=\"color: #000000; font-size: 85%;\"><a href=\"#\"> Chi ph?? xu???t kh???u lao ?????ng ????i Loan</a> | <a href=\"#\">Quy tr??nh - Th??? t???c xu???t kh???u lao ?????ng ????i Loan</a> | <a href=\"#\">????n h??ng XKL?? ????i Loan</a> | <a href=\"#\">L????ng lao ?????ng t???i ????i Loan</a> | <a href=\"#\">Ti???n ????i Loan</a></span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-03-27 16:13:46","2019-03-27 09:13:46","","0","https://tppone.com/demo/xkld4/?post_type=blocks&#038;p=363","0","blocks","","0"),
("368","1","2019-03-27 15:57:32","2019-03-27 08:57:32","","logo2","","inherit","open","closed","","logo2","","","2019-03-27 15:57:32","2019-03-27 08:57:32","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/logo2.jpg","0","attachment","image/jpeg","0"),
("383","1","2019-03-27 16:02:57","2019-03-27 09:02:57","","mail-icon","","inherit","open","closed","","mail-icon","","","2019-03-27 16:02:57","2019-03-27 09:02:57","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/mail-icon.jpg","0","attachment","image/jpeg","0"),
("384","1","2019-03-27 16:02:57","2019-03-27 09:02:57","","map-icon","","inherit","open","closed","","map-icon","","","2019-03-27 16:02:57","2019-03-27 09:02:57","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/map-icon.jpg","0","attachment","image/jpeg","0"),
("455","1","2019-03-27 16:45:52","2019-03-27 09:45:52","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","2f82050c08cb6987fe534971661e0859","","","2019-03-27 16:45:52","2019-03-27 09:45:52","","0","https://tppone.com/demo/xkld4/2f82050c08cb6987fe534971661e0859/","0","oembed_cache","","0"),
("520","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"category:xuat-khau-lao-dong\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","????n h??ng xu???t kh???u lao ?????ng","don-hang-xuat-khau-lao-dong","publish","closed","closed","","group_5c9b957854596","","","2019-03-28 14:21:28","2019-03-28 07:21:28","","0","https://tppone.com/demo/xkld4/?post_type=acf-field-group&#038;p=520","0","acf-field-group","","0"),
("524","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","N???i dung tuy???n d???ng","n???i_dung_tuy???n_d???ng","publish","closed","closed","","field_5c9b973fe1584","","","2019-03-27 22:42:50","2019-03-27 15:42:50","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&p=524","0","acf-field","","0"),
("525","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:127:\"Nh???p ti??u ????? ????n h??ng. V?? d???: Th??ng tin chi ti???t ????n h??ng s???n xu???t ???c v??t t???i ????i Loan - Cao H??ng\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:30:\"Nh???p ti??u ????? ????n h??ng\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Ti??u ????? ????n h??ng","tieu_de_don_hang","publish","closed","closed","","field_5c9b9580e157f","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=525","2","acf-field","","0"),
("526","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:64:\"Nh???p s??? l?????ng ti???p nh???n. V?? d???: 25 nh??n vi??n nam\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:35:\"Nh???p s??? l?????ng ti???p nh???n.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","S??? l?????ng ti???p nh???n","so_luong_tiep_nhan","publish","closed","closed","","field_5c9b96a1e1580","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=526","3","acf-field","","0"),
("527","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:77:\"Nh???p n??i l??m vi???c. V?? d???: C??ng ty TNHH ABC, ????i B???c, ????i Loan\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:22:\"Nh???p ?????a ch???...\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","N??i l??m vi???c","noi_lam_vien","publish","closed","closed","","field_5c9b96dae1581","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=527","4","acf-field","","0"),
("528","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:40:\"Nh???p ng??nh ngh???. V?? d???: H??? l??\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:20:\"Nh???p ng??nh ngh???\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Ng??nh ngh???","nganh_nghe","publish","closed","closed","","field_5c9b96fde1582","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=528","5","acf-field","","0"),
("529","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Nh???p th???i h???n h???p ?????ng\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:36:\"Nh???p th???i h???n h???p ?????ng...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Th???i h???n h???p ?????ng","thoi_han_hop_dong","publish","closed","closed","","field_5c9b9713e1583","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=529","6","acf-field","","0"),
("530","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","??i???u ki???n tuy???n d???ng","di???u_ki???n_tuy???n_d???ng","publish","closed","closed","","field_5c9b974fe1585","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=530","7","acf-field","","0"),
("531","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:30:\"Ch???n gi???i t??nh: nam/ n???\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Nam\";s:3:\"Nam\";s:4:\"N???\";s:4:\"N???\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}","Gi???i t??nh","gioi_tinh","publish","closed","closed","","field_5c9b9759e1586","","","2019-03-28 14:21:13","2019-03-28 07:21:13","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=531","8","acf-field","","0"),
("532","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Nh???p ????? tu???i ph?? h???p. V?? d???: d?????i 35 tu???i\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:22:\"Nh???p ????? tu???i...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","????? tu???i","do_tuoi","publish","closed","closed","","field_5c9b977de1587","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=532","9","acf-field","","0"),
("533","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"Nh???p tr??nh ????? v??n h??a. V?? d???: Cao ?????ng\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:32:\"Nh???p tr??nh ????? v??n h??a...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Tr??nh ????? v??n h??a","trinh_do_van_hoa","publish","closed","closed","","field_5c9b9794e1588","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=533","10","acf-field","","0"),
("534","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"Nh???p y??u c???u tay ngh???...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:24:\"Y??u c???u tay ngh???...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Y??u c???u tay ngh???","yeu_cau_tay_nghe","publish","closed","closed","","field_5c9b97ace1589","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=534","11","acf-field","","0"),
("535","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","H??nh ???nh c??ng ty ti???p nh???n","hinh_???nh_cong_ty_ti???p_nh???n","publish","closed","closed","","field_5c9b97dde158a","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=535","12","acf-field","","0"),
("536","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}","H??nh ???nh","hinh_anh","publish","closed","closed","","field_5c9b97e9e158b","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=536","13","acf-field","","0"),
("537","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Ch??? ????? ph??c l???i","ch???_d???_phuc_l???i","publish","closed","closed","","field_5c9b9800e158c","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=537","14","acf-field","","0"),
("538","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:47:\"Nh???p ch??? ????? l????ng. V?? d???: 7000 y??n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:23:\"Nh???p m???c l????ng...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","L????ng th??ng","luong_thang","publish","closed","closed","","field_5c9b980fe158d","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=538","15","acf-field","","0"),
("539","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"Gi??? l??m vi???c. V?? d???: t??? 8:00-17:00\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:27:\"Nh???p gi??? l??m vi???c...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Gi??? l??m vi???c","gio_lam_viec","publish","closed","closed","","field_5c9b982de158e","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=539","16","acf-field","","0"),
("540","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Nh???p ng??y ngh???. V?? d???: l??? t???t\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:22:\"Nh???p ng??y ngh???...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Ng??y ngh???","ngay_nghi","publish","closed","closed","","field_5c9b9845e158f","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=540","17","acf-field","","0"),
("541","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:79:\"Nh???p ch??? ????? t??ng ca. V?? d???: t??ng ca theo quy ?????nh c???a c??ng ty\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:30:\"Nh???p ch??? ????? t??ng ca...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","T??ng ca","tang_ca","publish","closed","closed","","field_5c9b9860e1590","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=541","18","acf-field","","0"),
("542","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:60:\"Ch??? ????? b???o hi???m. V?? d???: B???o hi???m x?? h???i..\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:34:\"Nh???p ch??? ????? b???o hi???m...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","B???o hi???m","bao_hiem","publish","closed","closed","","field_5c9b987ae1591","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=542","19","acf-field","","0"),
("543","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:82:\"Nh???p ch??? ????? cho vay v???n ??i xu???t kh???u. V?? d???: h??? tr??? vay v???n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:31:\"Nh???p ch??? ????? vay v???n...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Vay v???n","vay_von","publish","closed","closed","","field_5c9b9894e1592","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=543","20","acf-field","","0"),
("544","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","L??m h??? s??","lam_h???_so","publish","closed","closed","","field_5c9b98b3e1593","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=544","21","acf-field","","0"),
("545","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"Nh???p gi???y t??? c???n thi???t 1\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:34:\"Nh???p gi???y t??? c???n thi???t 1\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Gi???y t??? c???n thi???t 1","giay_to_can_thiet_1","publish","closed","closed","","field_5c9b98c9e1594","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=545","22","acf-field","","0"),
("546","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"Nh???p gi???y t??? c???n thi???t 2\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:34:\"Nh???p gi???y t??? c???n thi???t 2\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Gi???y t??? c???n thi???t 2","giay_to_can_thiet_2","publish","closed","closed","","field_5c9b98ebe1595","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=546","23","acf-field","","0"),
("547","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"Nh???p gi???y t??? c???n thi???t 3\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:34:\"Nh???p gi???y t??? c???n thi???t 3\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Gi???y t??? c???n thi???t 3","giay_to_can_thiet_3","publish","closed","closed","","field_5c9b98f1e1596","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=547","24","acf-field","","0"),
("550","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Th???i gian d??? ki???n","th???i_gian_d???_ki???n","publish","closed","closed","","field_5c9b990ae1599","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=550","25","acf-field","","0"),
("551","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:30:\"Nh???p h???n n???p h??? s??...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}","H???n n???p h??? s??","han_nop_ho_so","publish","closed","closed","","field_5c9b9919e159a","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=551","26","acf-field","","0"),
("552","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:44:\"D??? ki???n thi tuy???n. V?? d???: 15/3/2019\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}","D??? ki???n thi tuy???n","du_kien_thi_tuyen","publish","closed","closed","","field_5c9b992fe159b","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=552","27","acf-field","","0"),
("553","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:45:\"Nh???p th???i gian nh???p c???nh d??? ki???n.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:28:\"Nh???p c???nh d??? ki???n...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Nh???p c???nh d??? ki???n","nhap_canh_du_kien","publish","closed","closed","","field_5c9b9973e159c","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=553","28","acf-field","","0"),
("554","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:49:\"Nh???p ch????ng tr??nh ????o t???o d??? ki???n...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:26:\"????o t???o d??? ki???n...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","????o t???o d??? ki???n","dao_tao_du_kien","publish","closed","closed","","field_5c9b9990e159d","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=554","29","acf-field","","0"),
("555","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Thi tuy???n","thi_tuy???n","publish","closed","closed","","field_5c9b99abe159e","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=555","30","acf-field","","0"),
("556","1","2019-03-27 22:42:50","2019-03-27 15:42:50","a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:34:\"Nh???p ch????ng tr??nh thi tuy???n\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}","Thi tuy???n 1","thi_tuyen","publish","closed","closed","","field_5c9b99b9e159f","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&#038;p=556","31","acf-field","","0"),
("565","1","2019-03-28 00:31:13","2019-03-27 17:31:13","[text* text-390 placeholder \"H??? v?? t??n...\"]\n[tel* tel-538 placeholder \"S??? ??i???n tho???i...\"]\n[submit \"G???i li??n h???\"]\n1\nM???u website xu???t kh???u lao ?????ng - Webdemo\n<wordpress@xkld4.Webdemo.com>\nwebdemo@gmail.com\nC?? ng?????i m???i li??n h??? t?? v???n tr??n website:\n- H??? v?? t??n: [text-390]\n- S??? ??i???n tho???i: [tel-538]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\n\n\n\n\n\nM???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\nM???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","Li??n h??? t?? v???n","","publish","closed","closed","","lien-he-tu-van","","","2019-03-28 00:32:26","2019-03-27 17:32:26","","0","https://tppone.com/demo/xkld4/?post_type=wpcf7_contact_form&#038;p=565","0","wpcf7_contact_form","","0"),
("566","1","2019-03-28 00:34:37","2019-03-27 17:34:37","a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}","Gi???i thi???u ????n h??ng","gioi_thieu_don_hang","publish","closed","closed","","field_5c9bb413bb44d","","","2019-03-28 00:34:37","2019-03-27 17:34:37","","520","https://tppone.com/demo/xkld4/?post_type=acf-field&p=566","1","acf-field","","0"),
("670","1","2019-03-28 10:31:26","2019-03-28 03:31:26","<div class=\"form-page-lien-he\">\n<div class=\"row-form\">\n<div class=\"left\">\n<label>T??n c???a b???n (*)</label>\n</div>\n<div class=\"right\">\n[text* text-202 placeholder \"Nh???p h??? t??n....\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Email c???a b???n</label>\n</div>\n<div class=\"right\">\n[email email-593 placeholder \"Email c???a b???n...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>S??? ??i???n tho???i</label>\n</div>\n<div class=\"right\">\n[tel* tel-886 placeholder \"S??? ??i???n tho???i...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>Ti??u ????? th??ng ??i???p</label>\n</div>\n<div class=\"right\">\n[text text-2045 placeholder \"Ti??u ????? th??ng ??i???p...\"]\n</div>\n</div>\n<div class=\"row-form\">\n<div class=\"left\">\n<label>N???i dung li??n h???</label>\n</div>\n<div class=\"right\">\n[textarea textarea-933 placeholder \"N???i dung li??n h???...\"]\n</div>\n</div>\n<div class=\"row-submit\">[submit \"G???i li??n h???\"]</div>\n</div>\n1\nM???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\nM???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\nwebdemo@gmail.com\nC?? ng?????i li??n h??? qua website:\n- H??? t??n: [text-202]\n- ?????a ch??? email: [email-593]\n- S??? ??i???n tho???i: [tel-886]\n- Ti??u ????? li??n h???: [text-2045]\n- Th??ng ??i???p: [textarea-933]\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\n\n\n\n\n\nM???u website xu???t kh???u lao ?????ng - Webdemo \"[your-subject]\"\nM???u website xu???t kh???u lao ?????ng - Webdemo <wordpress@xkld4.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website xu???t kh???u lao ?????ng - Webdemo (https://bizhostvn.com/w/xkld4)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","Trang li??n h???","","publish","closed","closed","","trang-lien-he","","","2019-03-28 10:44:56","2019-03-28 03:44:56","","0","https://tppone.com/demo/xkld4/?post_type=wpcf7_contact_form&#038;p=670","0","wpcf7_contact_form","","0"),
("694","1","2019-03-28 10:48:24","2019-03-28 03:48:24","[row class=\"page-bao-loi\"]\n\n[col span=\"3\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" align=\"center\"]\n\n[ux_image id=\"698\" image_size=\"original\" width=\"59\"]\n\n<h3><span style=\"color: #993300; font-size: 110%;\">TRANG N??Y ???? QU?? C?? HO???C KH??NG T??M TH???Y</span></h3>\n<p style=\"text-align: center;\"><span style=\"font-size: 85%;\">Ch??ng t??i th???t s??? xin l???i v?? b???t ti???n n??y!</span></p>\n[button text=\"Quay tr??? l???i Trang ch???\" letter_case=\"lowercase\" radius=\"99\" link=\"/\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]","404","","publish","closed","closed","","404-2","","","2019-03-28 10:53:12","2019-03-28 03:53:12","","0","https://tppone.com/demo/xkld4/?post_type=blocks&#038;p=694","0","blocks","","0"),
("698","1","2019-03-28 10:51:02","2019-03-28 03:51:02","","loi-404","","inherit","open","closed","","loi-404","","","2019-03-28 10:51:02","2019-03-28 03:51:02","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/loi-404.jpg","0","attachment","image/jpeg","0"),
("715","1","2019-03-28 11:07:45","2019-03-28 04:07:45","","????ng nh???p","","publish","closed","closed","","dang-nhap","","","2019-03-28 11:36:16","2019-03-28 04:36:16","","0","https://tppone.com/demo/xkld4/?page_id=715","0","page","","0"),
("730","1","2019-03-28 11:29:25","2019-03-28 04:29:25","","????ng k??","","publish","closed","closed","","dang-ky","","","2019-03-28 11:36:53","2019-03-28 04:36:53","","0","https://tppone.com/demo/xkld4/?page_id=730","0","page","","0"),
("781","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","781","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=781","1","nav_menu_item","","0"),
("782","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","782","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=782","3","nav_menu_item","","0"),
("783","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","783","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=783","5","nav_menu_item","","0"),
("784","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","784","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=784","4","nav_menu_item","","0");
INSERT INTO gdd_posts VALUES
("785","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","785","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=785","6","nav_menu_item","","0"),
("786","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","786","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=786","16","nav_menu_item","","0"),
("787","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","787","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","3","https://tppone.com/demo/xkld4/?p=787","17","nav_menu_item","","0"),
("788","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","788","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","3","https://tppone.com/demo/xkld4/?p=788","18","nav_menu_item","","0"),
("789","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","789","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","3","https://tppone.com/demo/xkld4/?p=789","19","nav_menu_item","","0"),
("790","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","790","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=790","20","nav_menu_item","","0"),
("791","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","791","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","4","https://tppone.com/demo/xkld4/?p=791","21","nav_menu_item","","0"),
("792","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","792","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","4","https://tppone.com/demo/xkld4/?p=792","22","nav_menu_item","","0"),
("793","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","793","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=793","23","nav_menu_item","","0"),
("794","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","794","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=794","7","nav_menu_item","","0"),
("795","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","795","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=795","8","nav_menu_item","","0"),
("796","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","796","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=796","9","nav_menu_item","","0"),
("797","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","797","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=797","10","nav_menu_item","","0"),
("798","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","798","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=798","11","nav_menu_item","","0"),
("799","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","799","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=799","12","nav_menu_item","","0"),
("800","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","800","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=800","13","nav_menu_item","","0"),
("801","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","801","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=801","14","nav_menu_item","","0"),
("802","1","2019-03-28 12:11:43","2019-03-28 05:11:43"," ","","","publish","closed","closed","","802","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","1","https://tppone.com/demo/xkld4/?p=802","15","nav_menu_item","","0"),
("803","1","2019-03-28 12:11:43","2019-03-28 05:11:43","","V??? ch??ng t??i","","publish","closed","closed","","ve-chung-toi","","","2019-03-28 12:11:47","2019-03-28 05:11:47","","0","https://tppone.com/demo/xkld4/?p=803","2","nav_menu_item","","0"),
("808","1","2019-03-28 13:03:53","2019-03-28 06:03:53","","xkld","","publish","closed","closed","","xkld","","","2019-03-28 13:04:11","2019-03-28 06:04:11","","0","https://tppone.com/demo/xkld4/xkld/","0","custom_css","","0"),
("815","1","2019-03-28 13:54:09","2019-03-28 06:54:09","Ch????ng tr??nh th???c t???p sinh Nh???t B???n c?? r???t nhi???u nh???ng quy ?????nh ch???t ch???, m???t trong nh???ng quy ?????nh ???? l?? ????? tu???i. Nh?? v???y ????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n.\n\n18 ??? 32 ????y l?? ????? tu???i ???????c nhi???u c??c c??ng ty ??? Nh???t y??u c???u ????? tham gia ch????ng tr??nh th???c t???p sinh tuy nhi??n c??ng c??\n\nV???i nhi???u n??m kinh nghi???m t?? v???n th???c t???p sinh v?? lao ?????ng Nh???t B???n ch??ng t??i nh???n th???y ????? tu???i ?????p nh???t ????? tham gia ch????ng tr??nh th???c t???p sinh Nh???t B???n l?? t??? 20 ?????n 28 tu???i. T???i sao l???i t???t v?? n???u b???n d?????i 20 tu???i th?? kh??? n??ng nh???n th???c v?? th??ch nghi v???i c??ng vi???c c??n h??i non, ?????c bi???t l?? l??m vi???c ??? n??i xa m?? l???i l?? Nh???t B???n. N??n kh??? n??ng ch???u ??p l???c l?? ch??a ???????c t???t v?? th??? trong th???i gian t??? 18 ?????n 20 b???n n??n trau d???i h???c h???i th??m ????? ho??n th??????n b???n th??n.\n\n&nbsp;\n\n????? tu???i 32 ??? 35 ??? ????? tu???i n??y b???n v???n c?? th??? tham gia c??c ch????ng tr??nh th???c t???p sinh nh??ng s??? r???t kh?? kh??n cho vi???c l???a ch???n nh???ng ????n h??ng. V???i ????? tu???i th?????ng c??c ????n h??ng tuy???n d???ng ??? l??nh v???c h??n x??, c?? kh??, x??y d???ng\n\n??? ????? tu???i n??y vi???c ti???p c???n v???i c??ng vi???c v???i nh???ng thay ?????i s??? r???t kh??, th?????ng nh???ng ch??? b??n Nh???t c??ng ng???i nh???n nh???ng ng?????i ??? ????? tu???i n??y v?? lo s??? s??? kh?? ch??? ?????o trong c??ng vi???c.\n\nG???i ?? m???t s??? ????? tu???i cho c??c ng??nh ngh???\n\n??? X??y d???ng. Nam tu???i t??? 20-28 l?? nhi???u nh???t trong bi??n ????? th?????ng th???y t??? 19-32 (C?? ????n h??ng l???y ????? tu???i 35 v?? nh???ng lao ?????ng n??y th?????ng c?? kinh nghi???m l??m x??y d???ng??)\n\n??? N??ng nghi???p. Nam N??? tu???i t??? 19-32 (????y l?? ngh??nh th??ch ????? tu???i cao)\n\n??? May. N??? tu???i t??? 19-30, nhi???u ????n l???y t??? 18-36 (thi tuy???n tay ngh??? ??? tay ngh??? cao l?? l???i th???)\n\n??? ??i???n t??? n??? l???y tu???i kh?? tr??? t??? 19-26 (thi k??? n??ng, kh??o l??o, nhanh nh???n l?? l???i th???)\n\n??? C?? kh?? c?? bi??n ????? r???ng v?? th?????ng th?? m???i x?? nghi???p c?? m???t l???a ch???n v?? ti??u ch?? tuy???n ri??ng (tu???i t??? 19-30)\n\n??? Th???c ph???m. Ng??nh n??y th?????ng kh??ng quan tr???ng v??? tu???i (18-32), kh??o l??o, g???n g??ng l?? ti??u ch?? tuy???n (l??u ?? ?????u t??c, trang ph???c)\n\nLi??n h??? ngay ????? ???????c t?? v???n chi ti???t v??? ch????ng tr??nh th???c t???p sinh Nh???t B???n\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n","","inherit","closed","closed","","208-revision-v1","","","2019-03-28 13:54:09","2019-03-28 06:54:09","","208","https://tppone.com/demo/xkld4/208-revision-v1/","0","revision","","0"),
("816","1","2019-03-28 13:55:16","2019-03-28 06:55:16","","posst1","Quy tr??nh tuy???n d???ng kh???t khe c???a Nh???t","inherit","open","closed","","posst1","","","2019-03-28 15:29:47","2019-03-28 08:29:47","","208","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/posst1.jpg","0","attachment","image/jpeg","0"),
("817","1","2019-03-28 13:55:53","2019-03-28 06:55:53","Ch????ng tr??nh th???c t???p sinh Nh???t B???n c?? r???t nhi???u nh???ng quy ?????nh ch???t ch???, m???t trong nh???ng quy ?????nh ???? l?? ????? tu???i. Nh?? v???y ????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n.\n\n18 ??? 32 ????y l?? ????? tu???i ???????c nhi???u c??c c??ng ty ??? Nh???t y??u c???u ????? tham gia ch????ng tr??nh th???c t???p sinh tuy nhi??n c??ng c??\n\nV???i nhi???u n??m kinh nghi???m t?? v???n th???c t???p sinh v?? lao ?????ng Nh???t B???n ch??ng t??i nh???n th???y ????? tu???i ?????p nh???t ????? tham gia ch????ng tr??nh th???c t???p sinh Nh???t B???n l?? t??? 20 ?????n 28 tu???i. T???i sao l???i t???t v?? n???u b???n d?????i 20 tu???i th?? kh??? n??ng nh???n th???c v?? th??ch nghi v???i c??ng vi???c c??n h??i non, ?????c bi???t l?? l??m vi???c ??? n??i xa m?? l???i l?? Nh???t B???n. N??n kh??? n??ng ch???u ??p l???c l?? ch??a ???????c t???t v?? th??? trong th???i gian t??? 18 ?????n 20 b???n n??n trau d???i h???c h???i th??m ????? ho??n th??????n b???n th??n.\n\n&nbsp;\n\n????? tu???i 32 ??? 35 ??? ????? tu???i n??y b???n v???n c?? th??? tham gia c??c ch????ng tr??nh th???c t???p sinh nh??ng s??? r???t kh?? kh??n cho vi???c l???a ch???n nh???ng ????n h??ng. V???i ????? tu???i th?????ng c??c ????n h??ng tuy???n d???ng ??? l??nh v???c h??n x??, c?? kh??, x??y d???ng\n\n??? ????? tu???i n??y vi???c ti???p c???n v???i c??ng vi???c v???i nh???ng thay ?????i s??? r???t kh??, th?????ng nh???ng ch??? b??n Nh???t c??ng ng???i nh???n nh???ng ng?????i ??? ????? tu???i n??y v?? lo s??? s??? kh?? ch??? ?????o trong c??ng vi???c.\n\nG???i ?? m???t s??? ????? tu???i cho c??c ng??nh ngh???\n\n??? X??y d???ng. Nam tu???i t??? 20-28 l?? nhi???u nh???t trong bi??n ????? th?????ng th???y t??? 19-32 (C?? ????n h??ng l???y ????? tu???i 35 v?? nh???ng lao ?????ng n??y th?????ng c?? kinh nghi???m l??m x??y d???ng??)\n\n??? N??ng nghi???p. Nam N??? tu???i t??? 19-32 (????y l?? ngh??nh th??ch ????? tu???i cao)\n\n??? May. N??? tu???i t??? 19-30, nhi???u ????n l???y t??? 18-36 (thi tuy???n tay ngh??? ??? tay ngh??? cao l?? l???i th???)\n\n??? ??i???n t??? n??? l???y tu???i kh?? tr??? t??? 19-26 (thi k??? n??ng, kh??o l??o, nhanh nh???n l?? l???i th???)\n\n??? C?? kh?? c?? bi??n ????? r???ng v?? th?????ng th?? m???i x?? nghi???p c?? m???t l???a ch???n v?? ti??u ch?? tuy???n ri??ng (tu???i t??? 19-30)\n\n??? Th???c ph???m. Ng??nh n??y th?????ng kh??ng quan tr???ng v??? tu???i (18-32), kh??o l??o, g???n g??ng l?? ti??u ch?? tuy???n (l??u ?? ?????u t??c, trang ph???c)\n\nLi??n h??? ngay ????? ???????c t?? v???n chi ti???t v??? ch????ng tr??nh th???c t???p sinh Nh???t B???n\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n","","inherit","closed","closed","","208-revision-v1","","","2019-03-28 13:55:53","2019-03-28 06:55:53","","208","https://tppone.com/demo/xkld4/208-revision-v1/","0","revision","","0"),
("818","1","2019-03-28 13:56:51","2019-03-28 06:56:51","","post2","C??ng ty t???i Nh???t b???n ti???p nh???n lao ?????ng VI???t nam","inherit","open","closed","","post2","","","2019-03-28 15:29:12","2019-03-28 08:29:12","","150","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/post2.jpg","0","attachment","image/jpeg","0"),
("819","1","2019-03-28 13:56:55","2019-03-28 06:56:55","M???i qu???c gia s??? c?? m???i n???n v??n ho?? ri??ng, nh???ng gi?? tr??? l???ch s??? t???n t???i l??u ?????i, khi b???n t???i ?????t n?????c ???? b???n c???n ph???i h???c h???i nh???ng v??n ho?? c???a h??? ????? kh??ng g???p ph???i nh???ng ???n t?????ng x???u, h??y ?????c b??i vi???t n??y ????? b???n trang b??? nh???ng ki???n th???c h??nh trang tr??n con ???????ng??<strong>th???c t???p sinh Nh???t B???n</strong>\n\n<strong># T???ng qu?? cho ng?????i ???m</strong>\n\nNh?? ng?????i Vi???t m??nh th?? t???i th??m ng?????i ???m th?????ng c?? nh???ng m??n qu?? v???i hy v???ng l?? ng?????i ???m ???? s??? d???ng ????? b???i b??? s???c kho??? ho???c ?????ng vi??n v??? tinh th???n. Tuy nhi??n v???i ng?????i Nh???t B???n th?? kh??ng ????n gi???n nh?? v???y,??Khi ??i th??m ng?????i ???m t???i Nh???t, b???n kh??ng n??n t???ng hoa c?? ch???u hay t???ng c??c lo???i hoa nh?? hoa anh th???o, hoa c??c, hoa tr??, c???m t?? c???u,???B???i ng?????i Nh???t quan ni???m r???ng, nh???ng th??? n??y mang l???i ??i???u kh??ng t???t ?????p cho ng?????i b???nh. V??? vi???c t???ng ti???n m???t cho ng?????i ???m ?????i v???i b???n b??, ?????ng nghi???p th??n thi???t ho???c c???p d?????i th?? c??ng ???????c. Tuy nhi??n, ?????i v???i c???p tr??n th?? b???n kh??ng n??n t???ng ti???n m???t. Thay v??o ????, b???n c?? th??? t???ng th??? qu?? t???ng ho???c phi???u mua h??ng ????? tr??nh th???t l???.\n\n<strong># ??i gi??y d??p trong nh??</strong>\n\nN???u c?? c?? h???i t???i th??m nh?? c???a ng?????i Nh???t b???n h??y ch?? ??, ????? d???p ho???c gi??y c???a b???n ??? ngo??i, m??i h?????ng ra ph??a ngo??i, sau ???? s??? d???ng d??p ??i trong nh?? c???a ng?????i Nh???t. ??i???u n??y c??ng s??? ???????c ??p d???ng t???i nh???ng n??i nh?? ch??a chi???n ho???c nh???ng ?????a ??i???m t??m linh. Ng?????i Nh???t r???t k??? t??nh v?? quan tr???ng s??? g???n g??ng v?? th??? n???u kh??ng bi???t b??? ????nh gi?? thi???u thi???n c???m th?? b???n n??n ????? ??, c??ch t???t nh???t l?? quan s??t nh???ng ng?????i Nh???t h??? l??m sau ???? b???n l??m theo.\n\n<strong># D??ng ????a ??n c??m sai c??ch</strong>\n\nNg?????i Nh???t quan ni???m d??ng ????a g?? v?? b??t ho???c g?? ????a l?? g???i ma qu??? t???i, ??i???u n??y l?? c???m k???, ngo??i ra b???n c??ng kh??ng ???????c c???m ????a v??o b??t c??m ?????c bi???t l?? kh??ng ???????c d??ng ????a ????? chuy???n th???c ??n. Theo ng?????i Nh???t th?? ????a c???m v??o b??t c??m ch??? d??nh cho ng?????i ch???t, trong ????m tang th??i.\n\n<strong># Ch??? tay v??o ng?????i kh??c</strong>\n\nTuy???t ?????i kh??ng ???????c d??ng 1 ng??n tay ????? ch??? v??? ng?????i n??o ???? ??? Nh???t, ???? l?? h??nh vi th?? l???. N???u mu???n gi???i thi???u v??? m???t ng?????i n??o ???? b???n ph???i d??ng c??? b??n tay v?? ng???a l??ng b??n tay l??n.\n\n<strong># Kh??ng x???p h??ng</strong>.\n\nV??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????.\n\n<strong># X??? r??c b???a b??i</strong>\n\n??? Nh???t c??c lo???i r??c th???i ???????c ph??n ra c??? th???, r?? r??ng v?? b???n ph???i h???c ????? n???m ???????c nh???ng quy ?????nh n??y. Vi???c x??? r??c b???a b??i ??? Nh???t b???n s??? b??? ph???t r???t n???ng v?? c??? x?? h???i k??? th???.\n\n<strong># N??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng</strong>\n\nT???i c??c ?????a ??i???m nh?? ga t??u ??i???n, c??ng vi??n ??? ng?????i Nh???t th????ng d??nh th???i gian ?????c s??ch, trang ??i???m, nh???n tin ??? tuy nhi??n n???u nh?? b???n n??i chuy???n v???i ti???ng qu?? l???n th?? s??? s??? g??y ra nh???ng v???n ????? kh?? ch???u v???i m???i ng?????i xung quanh. V?? th??? kh??ng n??n n??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng.\n\nC???n ph???i tu??n theo nh???ng v??n ho?? b???t th??nh v??n c???a Nh???t B???n ????? b???n c??ng ho??n thi???n h??n k??? n??ng v?? n??ng l???c c???a m??nh.\n\nT?? v???n v??? ch????ng tr??nh Th???c t???p sinh Nh???t B???n vui l??ng li??n h???:\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","T???n M???n Nh???ng C???m K??? ??? Nh???t B???n B???n C???n Bi???t ????? tr??nh r???c r???i","","inherit","closed","closed","","150-revision-v1","","","2019-03-28 13:56:55","2019-03-28 06:56:55","","150","https://tppone.com/demo/xkld4/150-revision-v1/","0","revision","","0"),
("820","1","2019-03-28 13:59:43","2019-03-28 06:59:43","M???i qu???c gia s??? c?? m???i n???n v??n ho?? ri??ng, nh???ng gi?? tr??? l???ch s??? t???n t???i l??u ?????i, khi b???n t???i ?????t n?????c ???? b???n c???n ph???i h???c h???i nh???ng v??n ho?? c???a h??? ????? kh??ng g???p ph???i nh???ng ???n t?????ng x???u, h??y ?????c b??i vi???t n??y ????? b???n trang b??? nh???ng ki???n th???c h??nh trang tr??n con ???????ng??<strong>th???c t???p sinh Nh???t B???n</strong>\n\n<strong># T???ng qu?? cho ng?????i ???m</strong>\n\nNh?? ng?????i Vi???t m??nh th?? t???i th??m ng?????i ???m th?????ng c?? nh???ng m??n qu?? v???i hy v???ng l?? ng?????i ???m ???? s??? d???ng ????? b???i b??? s???c kho??? ho???c ?????ng vi??n v??? tinh th???n. Tuy nhi??n v???i ng?????i Nh???t B???n th?? kh??ng ????n gi???n nh?? v???y,??Khi ??i th??m ng?????i ???m t???i Nh???t, b???n kh??ng n??n t???ng hoa c?? ch???u hay t???ng c??c lo???i hoa nh?? hoa anh th???o, hoa c??c, hoa tr??, c???m t?? c???u,???B???i ng?????i Nh???t quan ni???m r???ng, nh???ng th??? n??y mang l???i ??i???u kh??ng t???t ?????p cho ng?????i b???nh. V??? vi???c t???ng ti???n m???t cho ng?????i ???m ?????i v???i b???n b??, ?????ng nghi???p th??n thi???t ho???c c???p d?????i th?? c??ng ???????c. Tuy nhi??n, ?????i v???i c???p tr??n th?? b???n kh??ng n??n t???ng ti???n m???t. Thay v??o ????, b???n c?? th??? t???ng th??? qu?? t???ng ho???c phi???u mua h??ng ????? tr??nh th???t l???.\n\n<strong># ??i gi??y d??p trong nh??</strong>\n\nN???u c?? c?? h???i t???i th??m nh?? c???a ng?????i Nh???t b???n h??y ch?? ??, ????? d???p ho???c gi??y c???a b???n ??? ngo??i, m??i h?????ng ra ph??a ngo??i, sau ???? s??? d???ng d??p ??i trong nh?? c???a ng?????i Nh???t. ??i???u n??y c??ng s??? ???????c ??p d???ng t???i nh???ng n??i nh?? ch??a chi???n ho???c nh???ng ?????a ??i???m t??m linh. Ng?????i Nh???t r???t k??? t??nh v?? quan tr???ng s??? g???n g??ng v?? th??? n???u kh??ng bi???t b??? ????nh gi?? thi???u thi???n c???m th?? b???n n??n ????? ??, c??ch t???t nh???t l?? quan s??t nh???ng ng?????i Nh???t h??? l??m sau ???? b???n l??m theo.\n\n<strong># D??ng ????a ??n c??m sai c??ch</strong>\n\nNg?????i Nh???t quan ni???m d??ng ????a g?? v?? b??t ho???c g?? ????a l?? g???i ma qu??? t???i, ??i???u n??y l?? c???m k???, ngo??i ra b???n c??ng kh??ng ???????c c???m ????a v??o b??t c??m ?????c bi???t l?? kh??ng ???????c d??ng ????a ????? chuy???n th???c ??n. Theo ng?????i Nh???t th?? ????a c???m v??o b??t c??m ch??? d??nh cho ng?????i ch???t, trong ????m tang th??i.\n\n<strong># Ch??? tay v??o ng?????i kh??c</strong>\n\nTuy???t ?????i kh??ng ???????c d??ng 1 ng??n tay ????? ch??? v??? ng?????i n??o ???? ??? Nh???t, ???? l?? h??nh vi th?? l???. N???u mu???n gi???i thi???u v??? m???t ng?????i n??o ???? b???n ph???i d??ng c??? b??n tay v?? ng???a l??ng b??n tay l??n.\n\n<strong># Kh??ng x???p h??ng</strong>.\n\nV??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????.\n\n<strong># X??? r??c b???a b??i</strong>\n\n??? Nh???t c??c lo???i r??c th???i ???????c ph??n ra c??? th???, r?? r??ng v?? b???n ph???i h???c ????? n???m ???????c nh???ng quy ?????nh n??y. Vi???c x??? r??c b???a b??i ??? Nh???t b???n s??? b??? ph???t r???t n???ng v?? c??? x?? h???i k??? th???.\n\n<strong># N??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng</strong>\n\nT???i c??c ?????a ??i???m nh?? ga t??u ??i???n, c??ng vi??n ??? ng?????i Nh???t th????ng d??nh th???i gian ?????c s??ch, trang ??i???m, nh???n tin ??? tuy nhi??n n???u nh?? b???n n??i chuy???n v???i ti???ng qu?? l???n th?? s??? s??? g??y ra nh???ng v???n ????? kh?? ch???u v???i m???i ng?????i xung quanh. V?? th??? kh??ng n??n n??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng.\n\nC???n ph???i tu??n theo nh???ng v??n ho?? b???t th??nh v??n c???a Nh???t B???n ????? b???n c??ng ho??n thi???n h??n k??? n??ng v?? n??ng l???c c???a m??nh.\n\nT?? v???n v??? ch????ng tr??nh Th???c t???p sinh Nh???t B???n vui l??ng li??n h???:\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","T???n M???n Nh???ng C???m K??? ??? Nh???t B???n B???n C???n Bi???t ????? tr??nh r???c r???i","","inherit","closed","closed","","150-revision-v1","","","2019-03-28 13:59:43","2019-03-28 06:59:43","","150","https://tppone.com/demo/xkld4/150-revision-v1/","0","revision","","0"),
("823","1","2019-03-28 14:03:47","2019-03-28 07:03:47","<iframe width=\"382\" height=\"215\" src=\"https://www.youtube.com/embed/videoseries?list=RDaJOTlE1K90k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>","","","publish","closed","closed","","472ce668df8134b4a2d2844d3de209b8","","","2019-03-28 14:03:47","2019-03-28 07:03:47","","0","https://tppone.com/demo/xkld4/472ce668df8134b4a2d2844d3de209b8/","0","oembed_cache","","0"),
("824","1","2019-03-28 14:04:18","2019-03-28 07:04:18","","avatar-youtube","","inherit","open","closed","","avatar-youtube","","","2019-03-28 14:04:18","2019-03-28 07:04:18","","0","https://tppone.com/demo/xkld4/wp-content/uploads/2019/03/avatar-youtube.jpg","0","attachment","image/jpeg","0"),
("834","1","2019-03-28 14:20:27","2019-03-28 07:20:27","Ch????ng tr??nh th???c t???p sinh Nh???t B???n c?? r???t nhi???u nh???ng quy ?????nh ch???t ch???, m???t trong nh???ng quy ?????nh ???? l?? ????? tu???i. Nh?? v???y ????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n.\n\n18 ??? 32 ????y l?? ????? tu???i ???????c nhi???u c??c c??ng ty ??? Nh???t y??u c???u ????? tham gia ch????ng tr??nh th???c t???p sinh tuy nhi??n c??ng c??\n\nV???i nhi???u n??m kinh nghi???m t?? v???n th???c t???p sinh v?? lao ?????ng Nh???t B???n ch??ng t??i nh???n th???y ????? tu???i ?????p nh???t ????? tham gia ch????ng tr??nh th???c t???p sinh Nh???t B???n l?? t??? 20 ?????n 28 tu???i. T???i sao l???i t???t v?? n???u b???n d?????i 20 tu???i th?? kh??? n??ng nh???n th???c v?? th??ch nghi v???i c??ng vi???c c??n h??i non, ?????c bi???t l?? l??m vi???c ??? n??i xa m?? l???i l?? Nh???t B???n. N??n kh??? n??ng ch???u ??p l???c l?? ch??a ???????c t???t v?? th??? trong th???i gian t??? 18 ?????n 20 b???n n??n trau d???i h???c h???i th??m ????? ho??n th??????n b???n th??n.\n\n&nbsp;\n\n????? tu???i 32 ??? 35 ??? ????? tu???i n??y b???n v???n c?? th??? tham gia c??c ch????ng tr??nh th???c t???p sinh nh??ng s??? r???t kh?? kh??n cho vi???c l???a ch???n nh???ng ????n h??ng. V???i ????? tu???i th?????ng c??c ????n h??ng tuy???n d???ng ??? l??nh v???c h??n x??, c?? kh??, x??y d???ng\n\n??? ????? tu???i n??y vi???c ti???p c???n v???i c??ng vi???c v???i nh???ng thay ?????i s??? r???t kh??, th?????ng nh???ng ch??? b??n Nh???t c??ng ng???i nh???n nh???ng ng?????i ??? ????? tu???i n??y v?? lo s??? s??? kh?? ch??? ?????o trong c??ng vi???c.\n\nG???i ?? m???t s??? ????? tu???i cho c??c ng??nh ngh???\n\n??? X??y d???ng. Nam tu???i t??? 20-28 l?? nhi???u nh???t trong bi??n ????? th?????ng th???y t??? 19-32 (C?? ????n h??ng l???y ????? tu???i 35 v?? nh???ng lao ?????ng n??y th?????ng c?? kinh nghi???m l??m x??y d???ng??)\n\n??? N??ng nghi???p. Nam N??? tu???i t??? 19-32 (????y l?? ngh??nh th??ch ????? tu???i cao)\n\n??? May. N??? tu???i t??? 19-30, nhi???u ????n l???y t??? 18-36 (thi tuy???n tay ngh??? ??? tay ngh??? cao l?? l???i th???)\n\n??? ??i???n t??? n??? l???y tu???i kh?? tr??? t??? 19-26 (thi k??? n??ng, kh??o l??o, nhanh nh???n l?? l???i th???)\n\n??? C?? kh?? c?? bi??n ????? r???ng v?? th?????ng th?? m???i x?? nghi???p c?? m???t l???a ch???n v?? ti??u ch?? tuy???n ri??ng (tu???i t??? 19-30)\n\n??? Th???c ph???m. Ng??nh n??y th?????ng kh??ng quan tr???ng v??? tu???i (18-32), kh??o l??o, g???n g??ng l?? ti??u ch?? tuy???n (l??u ?? ?????u t??c, trang ph???c)\n\nLi??n h??? ngay ????? ???????c t?? v???n chi ti???t v??? ch????ng tr??nh th???c t???p sinh Nh???t B???n\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","????? tu???i n??o ph?? h???p nh???t ????? tham gia th???c t???p sinh Nh???t B???n","","inherit","closed","closed","","208-revision-v1","","","2019-03-28 14:20:27","2019-03-28 07:20:27","","208","https://tppone.com/demo/xkld4/208-revision-v1/","0","revision","","0"),
("842","1","2019-03-28 14:40:36","2019-03-28 07:40:36","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","29-revision-v1","","","2019-03-28 14:40:36","2019-03-28 07:40:36","","29","https://tppone.com/demo/xkld4/29-revision-v1/","0","revision","","0"),
("843","1","2019-03-28 14:40:45","2019-03-28 07:40:45","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section don-hang-moi-nhat\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","29-revision-v1","","","2019-03-28 14:40:45","2019-03-28 07:40:45","","29","https://tppone.com/demo/xkld4/29-revision-v1/","0","revision","","0"),
("846","1","2019-03-28 14:43:20","2019-03-28 07:43:20","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section don-hang-moi-nhat\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"18\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","29-revision-v1","","","2019-03-28 14:43:20","2019-03-28 07:43:20","","29","https://tppone.com/demo/xkld4/29-revision-v1/","0","revision","","0"),
("847","1","2019-03-28 14:44:19","2019-03-28 07:44:19","?????a ch???: T???nh Osaka. Ng??nh ngh??? xin visa: May b???t. T??n c??ng vi???c c??? th???: May b???t, may ??o gh??? ?? t??, l???u tr???i??? Tay ngh???, chuy??n m??n: ??u ti??n c??c ???ng vi??n c?? kinh nghi???m li??n quan ?????n ng??nh may\n\n<strong>??I???U KI???N TUY???N D???NG</strong>\n\nS??? l?????ng: 9 n???\n\nTu???i: 19~28 tu???i\n\nTr??nh ?????: T???t nghi???p c???p 3 tr??? l??n\n\nTay ngh???, chuy??n m??n: ??u ti??n c??c ???ng vi??n c?? kinh nghi???m li??n quan ?????n ng??nh may\n\nY??u c???u kh??c:\n<ul>\n 	<li>C?? s???c kh???e t???t</li>\n 	<li>Kh??ng c???n th???, kh??ng m?? m??u, kh??ng c?? h??nh x??m</li>\n</ul>\nH??nh th???c tuy???n d???ng: 1. Test IQ, 2. Thi th???c h??nh, 3. Ph???ng v???n tr???c ti???p\n\n<strong>CH??? ????? ????I NG???</strong>\n\nTr??? c???p th??ng ?????u: 60.000 Y??n\n\nL????ng c?? b???n: 154.000 Y??n/th??ng\n\nTh???i gian l??m vi???c:\n<ul>\n 	<li>L??m vi???c t??? 8h00 ??? 17h00 ngh??? gi???i lao 60 ph??t</li>\n 	<li>C??ng ty c?? vi???c l??m th??m</li>\n</ul>\nBHXH, BHYT, BH th???t nghi???p: Theo quy ?????nh c???a lu???t ph??p Nh???t B???n\n\n?????a ??i???m l??m vi???c: T???nh Osaka\n\nD??? ki???n nh???p c???nh: 4/2019\n\nD??? ki???n thi tuy???n: 12/10/2018\n\nS??? l?????ng tham gia thi tuy???n: 9 N???\n\n<strong>TH??NG TIN LI??N H???</strong>\n\n<strong>Hotline: 1900636812</strong>\n\n<strong>Mobile: 0976675792 (Ms Li??m)</strong>","Tuy???n sinh th???c t???p sinh ??i Nh???t ??? 9 n??? ng??nh may l????ng cao c???n ngay","","inherit","closed","closed","","153-revision-v1","","","2019-03-28 14:44:19","2019-03-28 07:44:19","","153","https://tppone.com/demo/xkld4/153-revision-v1/","0","revision","","0"),
("848","1","2019-03-28 14:44:39","2019-03-28 07:44:39","M???i qu???c gia s??? c?? m???i n???n v??n ho?? ri??ng, nh???ng gi?? tr??? l???ch s??? t???n t???i l??u ?????i, khi b???n t???i ?????t n?????c ???? b???n c???n ph???i h???c h???i nh???ng v??n ho?? c???a h??? ????? kh??ng g???p ph???i nh???ng ???n t?????ng x???u, h??y ?????c b??i vi???t n??y ????? b???n trang b??? nh???ng ki???n th???c h??nh trang tr??n con ???????ng??<strong>th???c t???p sinh Nh???t B???n</strong>\n\n<strong># T???ng qu?? cho ng?????i ???m</strong>\n\nNh?? ng?????i Vi???t m??nh th?? t???i th??m ng?????i ???m th?????ng c?? nh???ng m??n qu?? v???i hy v???ng l?? ng?????i ???m ???? s??? d???ng ????? b???i b??? s???c kho??? ho???c ?????ng vi??n v??? tinh th???n. Tuy nhi??n v???i ng?????i Nh???t B???n th?? kh??ng ????n gi???n nh?? v???y,??Khi ??i th??m ng?????i ???m t???i Nh???t, b???n kh??ng n??n t???ng hoa c?? ch???u hay t???ng c??c lo???i hoa nh?? hoa anh th???o, hoa c??c, hoa tr??, c???m t?? c???u,???B???i ng?????i Nh???t quan ni???m r???ng, nh???ng th??? n??y mang l???i ??i???u kh??ng t???t ?????p cho ng?????i b???nh. V??? vi???c t???ng ti???n m???t cho ng?????i ???m ?????i v???i b???n b??, ?????ng nghi???p th??n thi???t ho???c c???p d?????i th?? c??ng ???????c. Tuy nhi??n, ?????i v???i c???p tr??n th?? b???n kh??ng n??n t???ng ti???n m???t. Thay v??o ????, b???n c?? th??? t???ng th??? qu?? t???ng ho???c phi???u mua h??ng ????? tr??nh th???t l???.\n\n<strong># ??i gi??y d??p trong nh??</strong>\n\nN???u c?? c?? h???i t???i th??m nh?? c???a ng?????i Nh???t b???n h??y ch?? ??, ????? d???p ho???c gi??y c???a b???n ??? ngo??i, m??i h?????ng ra ph??a ngo??i, sau ???? s??? d???ng d??p ??i trong nh?? c???a ng?????i Nh???t. ??i???u n??y c??ng s??? ???????c ??p d???ng t???i nh???ng n??i nh?? ch??a chi???n ho???c nh???ng ?????a ??i???m t??m linh. Ng?????i Nh???t r???t k??? t??nh v?? quan tr???ng s??? g???n g??ng v?? th??? n???u kh??ng bi???t b??? ????nh gi?? thi???u thi???n c???m th?? b???n n??n ????? ??, c??ch t???t nh???t l?? quan s??t nh???ng ng?????i Nh???t h??? l??m sau ???? b???n l??m theo.\n\n<strong># D??ng ????a ??n c??m sai c??ch</strong>\n\nNg?????i Nh???t quan ni???m d??ng ????a g?? v?? b??t ho???c g?? ????a l?? g???i ma qu??? t???i, ??i???u n??y l?? c???m k???, ngo??i ra b???n c??ng kh??ng ???????c c???m ????a v??o b??t c??m ?????c bi???t l?? kh??ng ???????c d??ng ????a ????? chuy???n th???c ??n. Theo ng?????i Nh???t th?? ????a c???m v??o b??t c??m ch??? d??nh cho ng?????i ch???t, trong ????m tang th??i.\n\n<strong># Ch??? tay v??o ng?????i kh??c</strong>\n\nTuy???t ?????i kh??ng ???????c d??ng 1 ng??n tay ????? ch??? v??? ng?????i n??o ???? ??? Nh???t, ???? l?? h??nh vi th?? l???. N???u mu???n gi???i thi???u v??? m???t ng?????i n??o ???? b???n ph???i d??ng c??? b??n tay v?? ng???a l??ng b??n tay l??n.\n\n<strong># Kh??ng x???p h??ng</strong>.\n\nV??n ho?? x???p h??ng th?? ??? ????u c??ng c?? nh??ng s??? th???t l?? t???i t??? n???u nh?? b???n th??? hi???n ??i???u n??y ??? Nh???t. ?????n Nh???t b???n s??? th???y ng?????i Nh???t s???p h??ng ch??? ????? ????? mua th??? g?? ???? ho???c l??n xe t??u ??i???n ??? ???? l?? v??n ho?? c???a h???, s???ng ??? Nh???t b???n c??ng c???n ph???i x??y d???ng cho m??nh ki???n th???c ????.\n\n<strong># X??? r??c b???a b??i</strong>\n\n??? Nh???t c??c lo???i r??c th???i ???????c ph??n ra c??? th???, r?? r??ng v?? b???n ph???i h???c ????? n???m ???????c nh???ng quy ?????nh n??y. Vi???c x??? r??c b???a b??i ??? Nh???t b???n s??? b??? ph???t r???t n???ng v?? c??? x?? h???i k??? th???.\n\n<strong># N??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng</strong>\n\nT???i c??c ?????a ??i???m nh?? ga t??u ??i???n, c??ng vi??n ??? ng?????i Nh???t th????ng d??nh th???i gian ?????c s??ch, trang ??i???m, nh???n tin ??? tuy nhi??n n???u nh?? b???n n??i chuy???n v???i ti???ng qu?? l???n th?? s??? s??? g??y ra nh???ng v???n ????? kh?? ch???u v???i m???i ng?????i xung quanh. V?? th??? kh??ng n??n n??i chuy???n ???n ??o ??? c??c ?????a ??i???m c??ng c???ng.\n\nC???n ph???i tu??n theo nh???ng v??n ho?? b???t th??nh v??n c???a Nh???t B???n ????? b???n c??ng ho??n thi???n h??n k??? n??ng v?? n??ng l???c c???a m??nh.\n\nT?? v???n v??? ch????ng tr??nh Th???c t???p sinh Nh???t B???n vui l??ng li??n h???:\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n","T???n M???n Nh???ng C???m K??? ??? Nh???t B???n B???n C???n Bi???t ????? tr??nh r???c r???i","","inherit","closed","closed","","150-revision-v1","","","2019-03-28 14:44:39","2019-03-28 07:44:39","","150","https://tppone.com/demo/xkld4/150-revision-v1/","0","revision","","0"),
("849","1","2019-03-28 14:44:57","2019-03-28 07:44:57","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nXin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Tuy???n 25 nam thu nh???p cao s???n xu???t ???c v??t t???i Cao H??ng, ????i Loan l????ng cao","","inherit","closed","closed","","147-revision-v1","","","2019-03-28 14:44:57","2019-03-28 07:44:57","","147","https://tppone.com/demo/xkld4/147-revision-v1/","0","revision","","0"),
("855","1","2019-03-28 14:50:47","2019-03-28 07:50:47","Tham gia ch????ng tr??nh th???c t???p Nh???t B???n c??c h???c vi??n th?????ng lo l???ng trong kh??u ph???ng v???n, c?? nh???ng ng?????i tr??nh ????? chuy??n m??n r???t okie nh??ng khi ph???ng v???n l???i r??t th???m ch?? l?? r???t ?????n 3-4 l???n, v???y nguy??n nh??n l?? g??? B??i vi???t chia s??? kinh nghi???m, k??? n??ng ph???ng v???n th???c t???p sinh Nh???t B???n t??? l??? ?????u cao.\n\nT???p trung v??o th??i ?????, trang ph???c khi tham gia bu???i ph???ng v???n\n\nNg?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan.\n\nL??c ph???ng v???n hay n??i chuy???n v???i ng?????i ph??ng v???n b???n n??n n??i chuy???n v???a ????? nghe, d???t kho??t, ????? ?? ?????n nh???ng c??u n??i, c??? ch??? trong l??c n??i.\n\nGi???i thi???u b???n th??n l??u lo??t\n\nPh???n gi???i thi???u v??? b???n th??n b???n c???n ?????m b???o s??? t??? tin, n??n chu???n b??? tr?????c ????? c?? th??? n??i m???t c??ch tr??n tru nh???t n?? ???????c th??? hi???n b???i ??m thanh m?? b???n n??i ra, ph??t ??m ch??nh x??c nh???ng t???,c??u trong b??i gi???i thi???u b???n th??n.\n\nTrong l??c gi???i thi???u b???n th??n lu??n gi??? ???????c s??? vui t????i tr??n khu??n m???t, ?????ng ho???c ng???i th???ng, m???t nh??n th???ng ng?????i ph???ng v???n.\n\nTr??? l???i th???t th??\n\nNg?????i Nh???t t??n tr???ng v??? l??ng tin n??n khi n??i chuy???n b???n h??y th???t th??, th???ng th???n tr??? l???i c??c c??u h???i c???a ng?????i ph???ng v???n m???t c??ch trung th???c nh???t. Tr??? l???i v??? c??c ??u ??i???m, khuy???t ??i???m c???a b???n m???t c??ch r?? r??ng m???ch l???c, kh??ng qu??n ????a ra nh???ng ph????ng ??n ????? thay ?????i kh???c ph???c nh???ng khuy???t ??i???m.\n\nC??ch tr??? l???i m???t s??? c??u h???i th?????ng hay g???p trong ph???ng v???n\n\n<em><strong>T???i sao l???i ch???n lao ?????ng ??? Nh???t B???n?</strong></em>\n\n<em>B???n ?????ng l??? li???u t???i m???c n??i v?? m???c l????ng h???p d???n ngay t??? ?????u, h??y tr??? l???i nh???ng th??? li??n quan t???i m??i tr?????ng l??m vi???c, c??ng ngh??? ???ng d???ng. N???n v??n ho?? Nh???t B???n. N???u nh?? b??? xo??y v??o vi???c thu nh???p th?? b???n c??ng th??nh th???t tr??? l???i r???ng m???c l????ng, m???c thu nh???p c??ng t???t nh?? th??? c?? ??i???u ki???n gi??p ????? gia ????nh.</em>\n\n<em><strong>B???n c?? ch???u ???????c v???t v??? hay kh??ng?</strong></em>\n\n<em>C??ng vi???c n??o c??ng c???n s??? lao ?????ng nhi???t t??nh h??ng say, kh??ng c?? c??ng vi???c n??o nh??? nh??ng m?? l????ng cao. H??y nh??? r???ng nh???ng ng?????i ph???ng v???n b???n lu??n mu???n b???n ph???i trong t??nh tr???ng s???n s??ng l??m vi???c v?? c???ng hi???n, m???t trong c??u tr??? l???i th??ng minh ???????c s??? d???ng l?? ???V?? ng?????i Nh???t l??m ???????c th?? t??i c??ng s??? l??m ???????c??? V???n d?? ng?????i Vi???t ch??m ch??? l??m vi???c n??n b???n kh??ng qu?? lo l??ng v??? vi???c n??y. N???u nh?? t???t b???n c?? th??? n??i nhi???u v??? quan ??i???m l??m vi???c v???i ng?????i Nh???t khi b???n ???? ???????c h???c v?? ???????c ????o t???o.</em>\n\n<em><strong>B???n c?? c??u h???i n??o cho ch??ng t??i kh??ng?</strong></em>\n\n<em>R???t nhi???u ng?????i b??? b???i r???i b???i c??u n??y, vi???c b???i r???i s??? d???n ?????n s??? kh??ng quy???t ??o??n, ch???n ch??? g??y m???t th???i gian n??n l???i khuy??n l?? n???u b???n c?? th???c m???c n??o th???c s??? ch??a r?? b???n h??y h???i, v?? n?? l?? quy???n l???i c???a b???n kh??ng c???n ph???i e ng???i, n???u kh??ng c?? th?? c??ng tr??nh b??y ???T??i kh??ng c?? c??u h???i n??o, c???m ??n??? ????? ho??n th??nh m??n ph???ng v???n.</em>\n\n????? ????? y??u c???u xu???t c???nh s??? tr???i qua r???t nhi???u th??? b???n c???n ph???i n??? l???c ph???n ?????u, ????i h???i trong qu?? tr??nh h???c t???p b???n c???n ph???i chu???n b??? k??? l?????ng ????? ?????t c??c y??u c???u th???c t???p sinh Nh???t B???n.\n\nLi??n h??? v???i ch??ng t??i ????? ???????c t?? v???n t???t nh???t\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n\n\n<strong>H?? N???i</strong>\n\n?????a ch???: T???ng 12, Th??p CEO, HH2/1, Ph???m H??ng, H?? N???i |\n\nHotline : 1900 636 812\n\n<strong>H??? Ch?? Minh</strong>\n\nS??? 72 ???????ng c1, Ph?????ng 13, Qu???n T??n b??nh, Tp. H??? Ch?? Minh |\n\nHotline: 0283 812 5656\n\nWebsite: www.ceos.vn","T?? v???n k??? n??ng ph???ng v???n th???c t???p sinh ????i Loan kh??? n??ng ????? cao nh???t","","inherit","closed","closed","","156-revision-v1","","","2019-03-28 14:50:47","2019-03-28 07:50:47","","156","https://tppone.com/demo/xkld4/156-revision-v1/","0","revision","","0"),
("860","1","2019-03-28 14:53:39","2019-03-28 07:53:39","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section don-hang-moi-nhat\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"18\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","29-revision-v1","","","2019-03-28 14:53:39","2019-03-28 07:53:39","","29","https://tppone.com/demo/xkld4/29-revision-v1/","0","revision","","0"),
("861","1","2019-03-28 14:55:11","2019-03-28 07:55:11","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section don-hang-moi-nhat\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"18\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n<div class=\"thong-tin-don-hang-title\">\n    <div class=\"cot ngay-thi\">\n       Ng??y thi\n    </div>\n    <div class=\"cot gioi-tinh\">\n       Gi???i t??nh\n    </div>\n    <div class=\"cot nganh-nghe\">\n      Ng??nh ngh???\n    </div>\n     <div class=\"cot tang-ca\">\n        L??m th??m\n    </div>\n    <div class=\"cot luong-thang\">\n        L????ng c?? b???n\n    </div>\n     <div class=\"cot xem-them\">\n       \n    </div>\n</div>\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","29-revision-v1","","","2019-03-28 14:55:11","2019-03-28 07:55:11","","29","https://tppone.com/demo/xkld4/29-revision-v1/","0","revision","","0"),
("862","1","2019-03-28 14:55:14","2019-03-28 07:55:14","[section label=\"Kh???i tin l???n\" padding=\"45px\" class=\"section1\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"45\" comments=\"false\" image_height=\"59%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.09)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-1\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.15)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"tin-3\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[title style=\"center\" text=\"Tin tuy???n d???ng\" tag_name=\"h2\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"5\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.17)\" image_hover=\"overlay-add\" text_align=\"left\" class=\"post-1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"????n h??ng m???i nh???t\" padding=\"15px\" class=\"category-section don-hang-moi-nhat\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng m???i nh???t</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xem t???t c???</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span__sm=\"12\" class=\"cot8\"]\n\n<div class=\"thong-tin-don-hang-title\">\n    <div class=\"cot ngay-thi\">\n       Ng??y thi\n    </div>\n    <div class=\"cot gioi-tinh\">\n       Gi???i t??nh\n    </div>\n    <div class=\"cot nganh-nghe\">\n      Ng??nh ngh???\n    </div>\n     <div class=\"cot tang-ca\">\n        L??m th??m\n    </div>\n    <div class=\"cot luong-thang\">\n        L????ng c?? b???n\n    </div>\n     <div class=\"cot xem-them\">\n       \n    </div>\n</div>\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" cat=\"18\" posts=\"5\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Xu???t kh???u lao ?????ng\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Xu???t kh???u lao ?????ng</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-bac/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i B???c</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-trung/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Trung</a></li>\n<li><a href=\"/xuat-khau-lao-dong/don-hang-dai-nam/\" target=\"blank\" rel=\"noopener noreferrer\">????n h??ng ????i Nam</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"H?????ng d???n\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/huong-dan/\" target=\"blank\" rel=\"noopener noreferrer\">H?????ng d???n</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/huong-dan/hoi-dap/\" target=\"blank\" rel=\"noopener noreferrer\">H???i ????p</a></li>\n<li><a href=\"/huong-dan/kinh-nghiem/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m</a></li>\n<li><a href=\"/huong-dan/van-ban-phap-luat/\" target=\"blank\" rel=\"noopener noreferrer\">V??n b???n ph??p lu???t</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C???ng ?????ng ng?????i vi???t\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/dai-loan/\" target=\"blank\" rel=\"noopener noreferrer\">C???ng ?????ng ng?????i Vi???t</a></h3>\n</div>\n<div class=\"right\">\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" padding=\"15px\" class=\"category-section\"]\n\n<div class=\"category-title\">\n<div class=\"left\">\n<h3><a href=\"/tin-tuc/\" target=\"blank\" rel=\"noopener noreferrer\">Tin t???c</a></h3>\n</div>\n<div class=\"right\">\n<ul>\n<li><a href=\"/tin-tuc/kinh-nghiem-song/\" target=\"blank\" rel=\"noopener noreferrer\">Kinh nghi???m s???ng</a></li>\n<li><a href=\"/tin-tuc/tin-xuat-khau-lao-dong/\" target=\"blank\" rel=\"noopener noreferrer\">Tin xu???t kh???u lao ?????ng</a></li>\n</ul>\n</div>\n</div>\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"62%\" image_width=\"50\" text_pos=\"middle\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" image_size=\"original\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"4\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"100%\" image_width=\"26\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.15)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-post\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","inherit","closed","closed","","29-revision-v1","","","2019-03-28 14:55:14","2019-03-28 07:55:14","","29","https://tppone.com/demo/xkld4/29-revision-v1/","0","revision","","0"),
("893","1","2019-03-28 15:30:00","2019-03-28 08:30:00","Tham gia ch????ng tr??nh th???c t???p Nh???t B???n c??c h???c vi??n th?????ng lo l???ng trong kh??u ph???ng v???n, c?? nh???ng ng?????i tr??nh ????? chuy??n m??n r???t okie nh??ng khi ph???ng v???n l???i r??t th???m ch?? l?? r???t ?????n 3-4 l???n, v???y nguy??n nh??n l?? g??? B??i vi???t chia s??? kinh nghi???m, k??? n??ng ph???ng v???n th???c t???p sinh Nh???t B???n t??? l??? ?????u cao.\n\nT???p trung v??o th??i ?????, trang ph???c khi tham gia bu???i ph???ng v???n\n\nNg?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan.\n\nL??c ph???ng v???n hay n??i chuy???n v???i ng?????i ph??ng v???n b???n n??n n??i chuy???n v???a ????? nghe, d???t kho??t, ????? ?? ?????n nh???ng c??u n??i, c??? ch??? trong l??c n??i.\n\nGi???i thi???u b???n th??n l??u lo??t\n\nPh???n gi???i thi???u v??? b???n th??n b???n c???n ?????m b???o s??? t??? tin, n??n chu???n b??? tr?????c ????? c?? th??? n??i m???t c??ch tr??n tru nh???t n?? ???????c th??? hi???n b???i ??m thanh m?? b???n n??i ra, ph??t ??m ch??nh x??c nh???ng t???,c??u trong b??i gi???i thi???u b???n th??n.\n\nTrong l??c gi???i thi???u b???n th??n lu??n gi??? ???????c s??? vui t????i tr??n khu??n m???t, ?????ng ho???c ng???i th???ng, m???t nh??n th???ng ng?????i ph???ng v???n.\n\nTr??? l???i th???t th??\n\nNg?????i Nh???t t??n tr???ng v??? l??ng tin n??n khi n??i chuy???n b???n h??y th???t th??, th???ng th???n tr??? l???i c??c c??u h???i c???a ng?????i ph???ng v???n m???t c??ch trung th???c nh???t. Tr??? l???i v??? c??c ??u ??i???m, khuy???t ??i???m c???a b???n m???t c??ch r?? r??ng m???ch l???c, kh??ng qu??n ????a ra nh???ng ph????ng ??n ????? thay ?????i kh???c ph???c nh???ng khuy???t ??i???m.\n\nC??ch tr??? l???i m???t s??? c??u h???i th?????ng hay g???p trong ph???ng v???n\n\n<em><strong>T???i sao l???i ch???n lao ?????ng ??? Nh???t B???n?</strong></em>\n\n<em>B???n ?????ng l??? li???u t???i m???c n??i v?? m???c l????ng h???p d???n ngay t??? ?????u, h??y tr??? l???i nh???ng th??? li??n quan t???i m??i tr?????ng l??m vi???c, c??ng ngh??? ???ng d???ng. N???n v??n ho?? Nh???t B???n. N???u nh?? b??? xo??y v??o vi???c thu nh???p th?? b???n c??ng th??nh th???t tr??? l???i r???ng m???c l????ng, m???c thu nh???p c??ng t???t nh?? th??? c?? ??i???u ki???n gi??p ????? gia ????nh.</em>\n\n<em><strong>B???n c?? ch???u ???????c v???t v??? hay kh??ng?</strong></em>\n\n<em>C??ng vi???c n??o c??ng c???n s??? lao ?????ng nhi???t t??nh h??ng say, kh??ng c?? c??ng vi???c n??o nh??? nh??ng m?? l????ng cao. H??y nh??? r???ng nh???ng ng?????i ph???ng v???n b???n lu??n mu???n b???n ph???i trong t??nh tr???ng s???n s??ng l??m vi???c v?? c???ng hi???n, m???t trong c??u tr??? l???i th??ng minh ???????c s??? d???ng l?? ???V?? ng?????i Nh???t l??m ???????c th?? t??i c??ng s??? l??m ???????c??? V???n d?? ng?????i Vi???t ch??m ch??? l??m vi???c n??n b???n kh??ng qu?? lo l??ng v??? vi???c n??y. N???u nh?? t???t b???n c?? th??? n??i nhi???u v??? quan ??i???m l??m vi???c v???i ng?????i Nh???t khi b???n ???? ???????c h???c v?? ???????c ????o t???o.</em>\n\n<em><strong>B???n c?? c??u h???i n??o cho ch??ng t??i kh??ng?</strong></em>\n\n<em>R???t nhi???u ng?????i b??? b???i r???i b???i c??u n??y, vi???c b???i r???i s??? d???n ?????n s??? kh??ng quy???t ??o??n, ch???n ch??? g??y m???t th???i gian n??n l???i khuy??n l?? n???u b???n c?? th???c m???c n??o th???c s??? ch??a r?? b???n h??y h???i, v?? n?? l?? quy???n l???i c???a b???n kh??ng c???n ph???i e ng???i, n???u kh??ng c?? th?? c??ng tr??nh b??y ???T??i kh??ng c?? c??u h???i n??o, c???m ??n??? ????? ho??n th??nh m??n ph???ng v???n.</em>\n\n????? ????? y??u c???u xu???t c???nh s??? tr???i qua r???t nhi???u th??? b???n c???n ph???i n??? l???c ph???n ?????u, ????i h???i trong qu?? tr??nh h???c t???p b???n c???n ph???i chu???n b??? k??? l?????ng ????? ?????t c??c y??u c???u th???c t???p sinh Nh???t B???n.\n\nLi??n h??? v???i ch??ng t??i ????? ???????c t?? v???n t???t nh???t\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n\n\n<strong>H?? N???i</strong>\n\n?????a ch???: T???ng 12, Th??p CEO, HH2/1, Ph???m H??ng, H?? N???i |\n\nHotline : 1900 636 812\n\n<strong>H??? Ch?? Minh</strong>\n\nS??? 72 ???????ng c1, Ph?????ng 13, Qu???n T??n b??nh, Tp. H??? Ch?? Minh |\n\nHotline: 0283 812 5656\n\nWebsite: www.ceos.vn","T?? v???n k??? n??ng ph???ng v???n th???c t???p sinh ????i Loan kh??? n??ng ????? cao nh???t","","inherit","closed","closed","","156-revision-v1","","","2019-03-28 15:30:00","2019-03-28 08:30:00","","156","https://tppone.com/demo/xkld4/156-revision-v1/","0","revision","","0"),
("894","1","2019-03-28 15:30:28","2019-03-28 08:30:28","Tham gia ch????ng tr??nh th???c t???p Nh???t B???n c??c h???c vi??n th?????ng lo l???ng trong kh??u ph???ng v???n, c?? nh???ng ng?????i tr??nh ????? chuy??n m??n r???t okie nh??ng khi ph???ng v???n l???i r??t th???m ch?? l?? r???t ?????n 3-4 l???n, v???y nguy??n nh??n l?? g??? B??i vi???t chia s??? kinh nghi???m, k??? n??ng ph???ng v???n th???c t???p sinh Nh???t B???n t??? l??? ?????u cao.\n\nT???p trung v??o th??i ?????, trang ph???c khi tham gia bu???i ph???ng v???n\n\nNg?????i Nh???t r???t ????? ?? nh???ng chi ti???t n??n tham gia bu???i ph???ng v???n b???n n??n chu???n b??? trang ph???c qu???n ??o g???n g??ng, l???ch s???, kh??ng n??n xu??? xo?? qu?? v?? trang ph???c c??ch ??n m???c th??? hi???n con ng?????i b???n, v???i n??? c?? th??? trang ??i???m nh??ng ch??? l?? nh??? th??i ch??? ?????ng trang ??i???m d???m, ?????c bi???t n??n s??? d???ng gi??y thay v?? d??p nh??, t???i thi???u nh???t th?? c??ng ph???i l?? sandan.\n\nL??c ph???ng v???n hay n??i chuy???n v???i ng?????i ph??ng v???n b???n n??n n??i chuy???n v???a ????? nghe, d???t kho??t, ????? ?? ?????n nh???ng c??u n??i, c??? ch??? trong l??c n??i.\n\nGi???i thi???u b???n th??n l??u lo??t\n\nPh???n gi???i thi???u v??? b???n th??n b???n c???n ?????m b???o s??? t??? tin, n??n chu???n b??? tr?????c ????? c?? th??? n??i m???t c??ch tr??n tru nh???t n?? ???????c th??? hi???n b???i ??m thanh m?? b???n n??i ra, ph??t ??m ch??nh x??c nh???ng t???,c??u trong b??i gi???i thi???u b???n th??n.\n\nTrong l??c gi???i thi???u b???n th??n lu??n gi??? ???????c s??? vui t????i tr??n khu??n m???t, ?????ng ho???c ng???i th???ng, m???t nh??n th???ng ng?????i ph???ng v???n.\n\nTr??? l???i th???t th??\n\nNg?????i Nh???t t??n tr???ng v??? l??ng tin n??n khi n??i chuy???n b???n h??y th???t th??, th???ng th???n tr??? l???i c??c c??u h???i c???a ng?????i ph???ng v???n m???t c??ch trung th???c nh???t. Tr??? l???i v??? c??c ??u ??i???m, khuy???t ??i???m c???a b???n m???t c??ch r?? r??ng m???ch l???c, kh??ng qu??n ????a ra nh???ng ph????ng ??n ????? thay ?????i kh???c ph???c nh???ng khuy???t ??i???m.\n\nC??ch tr??? l???i m???t s??? c??u h???i th?????ng hay g???p trong ph???ng v???n\n\n<em><strong>T???i sao l???i ch???n lao ?????ng ??? Nh???t B???n?</strong></em>\n\n<em>B???n ?????ng l??? li???u t???i m???c n??i v?? m???c l????ng h???p d???n ngay t??? ?????u, h??y tr??? l???i nh???ng th??? li??n quan t???i m??i tr?????ng l??m vi???c, c??ng ngh??? ???ng d???ng. N???n v??n ho?? Nh???t B???n. N???u nh?? b??? xo??y v??o vi???c thu nh???p th?? b???n c??ng th??nh th???t tr??? l???i r???ng m???c l????ng, m???c thu nh???p c??ng t???t nh?? th??? c?? ??i???u ki???n gi??p ????? gia ????nh.</em>\n\n<em><strong>B???n c?? ch???u ???????c v???t v??? hay kh??ng?</strong></em>\n\n<em>C??ng vi???c n??o c??ng c???n s??? lao ?????ng nhi???t t??nh h??ng say, kh??ng c?? c??ng vi???c n??o nh??? nh??ng m?? l????ng cao. H??y nh??? r???ng nh???ng ng?????i ph???ng v???n b???n lu??n mu???n b???n ph???i trong t??nh tr???ng s???n s??ng l??m vi???c v?? c???ng hi???n, m???t trong c??u tr??? l???i th??ng minh ???????c s??? d???ng l?? ???V?? ng?????i Nh???t l??m ???????c th?? t??i c??ng s??? l??m ???????c??? V???n d?? ng?????i Vi???t ch??m ch??? l??m vi???c n??n b???n kh??ng qu?? lo l??ng v??? vi???c n??y. N???u nh?? t???t b???n c?? th??? n??i nhi???u v??? quan ??i???m l??m vi???c v???i ng?????i Nh???t khi b???n ???? ???????c h???c v?? ???????c ????o t???o.</em>\n\n<em><strong>B???n c?? c??u h???i n??o cho ch??ng t??i kh??ng?</strong></em>\n\n<em>R???t nhi???u ng?????i b??? b???i r???i b???i c??u n??y, vi???c b???i r???i s??? d???n ?????n s??? kh??ng quy???t ??o??n, ch???n ch??? g??y m???t th???i gian n??n l???i khuy??n l?? n???u b???n c?? th???c m???c n??o th???c s??? ch??a r?? b???n h??y h???i, v?? n?? l?? quy???n l???i c???a b???n kh??ng c???n ph???i e ng???i, n???u kh??ng c?? th?? c??ng tr??nh b??y ???T??i kh??ng c?? c??u h???i n??o, c???m ??n??? ????? ho??n th??nh m??n ph???ng v???n.</em>\n\n????? ????? y??u c???u xu???t c???nh s??? tr???i qua r???t nhi???u th??? b???n c???n ph???i n??? l???c ph???n ?????u, ????i h???i trong qu?? tr??nh h???c t???p b???n c???n ph???i chu???n b??? k??? l?????ng ????? ?????t c??c y??u c???u th???c t???p sinh Nh???t B???n.\n\nLi??n h??? v???i ch??ng t??i ????? ???????c t?? v???n t???t nh???t\n\n<strong>C??ng Ty C??? Ph???n Ph??t Tri???n D???ch v??? C.E.O</strong>????? ????n v??? uy t??n ???????c B??? Lao ?????ng c???p ph??p ph??i c??? th???c t???p sinh ??i???u d?????ng sang Nh???t B???n\n\n<strong>H?? N???i</strong>\n\n?????a ch???: T???ng 12, Th??p CEO, HH2/1, Ph???m H??ng, H?? N???i |\n\nHotline : 1900 636 812\n\n<strong>H??? Ch?? Minh</strong>\n\nS??? 72 ???????ng c1, Ph?????ng 13, Qu???n T??n b??nh, Tp. H??? Ch?? Minh |\n\nHotline: 0283 812 5656\n\nWebsite: www.ceos.vn","T?? v???n k??? n??ng ph???ng v???n th???c t???p sinh ????i Loan kh??? n??ng ????? cao nh???t","","inherit","closed","closed","","156-revision-v1","","","2019-03-28 15:30:28","2019-03-28 08:30:28","","156","https://tppone.com/demo/xkld4/156-revision-v1/","0","revision","","0"),
("895","1","2019-03-28 15:30:58","2019-03-28 08:30:58","?????a ch???: T???nh Osaka. Ng??nh ngh??? xin visa: May b???t. T??n c??ng vi???c c??? th???: May b???t, may ??o gh??? ?? t??, l???u tr???i??? Tay ngh???, chuy??n m??n: ??u ti??n c??c ???ng vi??n c?? kinh nghi???m li??n quan ?????n ng??nh may\n\n<strong>??I???U KI???N TUY???N D???NG</strong>\n\nS??? l?????ng: 9 n???\n\nTu???i: 19~28 tu???i\n\nTr??nh ?????: T???t nghi???p c???p 3 tr??? l??n\n\nTay ngh???, chuy??n m??n: ??u ti??n c??c ???ng vi??n c?? kinh nghi???m li??n quan ?????n ng??nh may\n\nY??u c???u kh??c:\n<ul>\n 	<li>C?? s???c kh???e t???t</li>\n 	<li>Kh??ng c???n th???, kh??ng m?? m??u, kh??ng c?? h??nh x??m</li>\n</ul>\nH??nh th???c tuy???n d???ng: 1. Test IQ, 2. Thi th???c h??nh, 3. Ph???ng v???n tr???c ti???p\n\n<strong>CH??? ????? ????I NG???</strong>\n\nTr??? c???p th??ng ?????u: 60.000 Y??n\n\nL????ng c?? b???n: 154.000 Y??n/th??ng\n\nTh???i gian l??m vi???c:\n<ul>\n 	<li>L??m vi???c t??? 8h00 ??? 17h00 ngh??? gi???i lao 60 ph??t</li>\n 	<li>C??ng ty c?? vi???c l??m th??m</li>\n</ul>\nBHXH, BHYT, BH th???t nghi???p: Theo quy ?????nh c???a lu???t ph??p Nh???t B???n\n\n?????a ??i???m l??m vi???c: T???nh Osaka\n\nD??? ki???n nh???p c???nh: 4/2019\n\nD??? ki???n thi tuy???n: 12/10/2018\n\nS??? l?????ng tham gia thi tuy???n: 9 N???\n\n<strong>TH??NG TIN LI??N H???</strong>\n\n<strong>Hotline: 1900636812</strong>\n\n<strong>Mobile: 0976675792 (Ms Li??m)</strong>","Tuy???n sinh th???c t???p sinh ??i Nh???t ??? 9 n??? ng??nh may l????ng cao c???n ngay","","inherit","closed","closed","","153-revision-v1","","","2019-03-28 15:30:58","2019-03-28 08:30:58","","153","https://tppone.com/demo/xkld4/153-revision-v1/","0","revision","","0"),
("896","1","2019-03-28 15:31:28","2019-03-28 08:31:28","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nXin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Tuy???n 25 nam thu nh???p cao s???n xu???t ???c v??t t???i Cao H??ng, ????i Loan l????ng cao","","inherit","closed","closed","","147-revision-v1","","","2019-03-28 15:31:28","2019-03-28 08:31:28","","147","https://tppone.com/demo/xkld4/147-revision-v1/","0","revision","","0"),
("900","1","2019-03-28 15:33:55","2019-03-28 08:33:55","Hi???n ??ang c?? r???t nhi???u ????n tuy???n ??i xu???t kh???u lao ?????ng ????i Loan l??m s???n xu???t ???c v??t. Do nhu c???u v??? ng??nh ngh??? n??y l?? r???t l???n n??n c???n r???t nhi???u nh??n l???c, thu nh???p ???n ?????nh, chi ph?? ??i xkl?? ????i Loan kh??ng qu?? cao\n\nXin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Tuy???n 25 nam thu nh???p cao s???n xu???t ???c v??t t???i Cao H??ng, ????i Loan l????ng cao","","inherit","closed","closed","","147-revision-v1","","","2019-03-28 15:33:55","2019-03-28 08:33:55","","147","https://tppone.com/demo/xkld4/147-revision-v1/","0","revision","","0"),
("909","1","2019-05-06 16:12:05","2019-05-06 09:12:05","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:12:05\"\n    }\n}","","","trash","closed","closed","","e442f539-cd82-45a7-98f0-366d4c96808a","","","2019-05-06 16:12:05","2019-05-06 09:12:05","","0","https://tppone.com/demo/xkld4/e442f539-cd82-45a7-98f0-366d4c96808a/","0","customize_changeset","","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("34","5","0"),
("36","5","0"),
("37","5","0"),
("38","5","0"),
("39","5","0"),
("40","5","0"),
("41","5","0"),
("71","6","0"),
("72","6","0"),
("73","6","0"),
("77","5","0"),
("78","5","0"),
("79","5","0"),
("80","5","0"),
("81","5","0"),
("82","5","0"),
("83","5","0"),
("84","5","0"),
("135","1","0"),
("135","15","0"),
("138","1","0"),
("138","8","0"),
("138","15","0"),
("141","1","0"),
("141","9","0"),
("141","16","0"),
("144","1","0"),
("144","11","0"),
("144","17","0"),
("147","1","0"),
("147","18","0"),
("147","19","0"),
("150","1","0"),
("150","18","0"),
("150","20","0"),
("153","1","0"),
("153","18","0"),
("153","21","0"),
("156","1","0"),
("156","3","0"),
("156","18","0"),
("156","22","0"),
("208","1","0"),
("208","3","0"),
("208","4","0"),
("208","23","0"),
("781","29","0"),
("782","29","0"),
("783","29","0"),
("784","29","0"),
("785","29","0"),
("786","29","0"),
("787","29","0"),
("788","29","0"),
("789","29","0"),
("790","29","0"),
("791","29","0"),
("792","29","0"),
("793","29","0"),
("794","29","0"),
("795","29","0"),
("796","29","0"),
("797","29","0"),
("798","29","0"),
("799","29","0"),
("800","29","0"),
("801","29","0"),
("802","29","0"),
("803","29","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_taxonomy VALUES
("1","1","category","","0","9"),
("2","2","category","","0","0"),
("3","3","category","","0","2"),
("4","4","category","","0","1"),
("5","5","nav_menu","","0","15"),
("6","6","nav_menu","","0","3"),
("7","7","category","","1","0"),
("8","8","category","","1","1"),
("9","9","category","","1","1"),
("10","10","category","","1","0"),
("11","11","category","","1","1"),
("12","12","category","","1","0"),
("13","13","category","","1","0"),
("14","14","category","","1","0"),
("15","15","post_tag","","0","2"),
("16","16","post_tag","","0","1"),
("17","17","post_tag","","0","1"),
("18","18","category","","0","4"),
("19","19","post_tag","","0","1"),
("20","20","post_tag","","0","1"),
("21","21","post_tag","","0","1"),
("22","22","post_tag","","0","1"),
("23","23","post_tag","","0","1"),
("24","24","category","","3","0"),
("25","25","category","","3","0"),
("26","26","category","","3","0"),
("27","27","category","","4","0"),
("28","28","category","","4","0"),
("29","29","nav_menu","","0","23");




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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_terms VALUES
("1","Xu???t kh???u lao ?????ng","xuat-khau-lao-dong","0"),
("2","????i Loan","dai-loan","0"),
("3","H?????ng d???n","huong-dan","0"),
("4","Tin t???c","tin-tuc","0"),
("5","Main menu","main-menu","0"),
("6","Topbar menu","topbar-menu","0"),
("7","Lao ?????ng ph??? th??ng","lao-dong-pho-thong","0"),
("8","Lao ?????ng tay ngh???","lao-dong-tay-nghe","0"),
("9","H??? l??","ho-ly","0"),
("10","????n h??ng ????i B???c","don-hang-dai-bac","0"),
("11","????n h??ng ????i Trung","don-hang-dai-trung","0"),
("12","????n h??ng ????i Nam","don-hang-dai-nam","0"),
("13","????n h??ng Cao H??ng","don-hang-cao-hung","0"),
("14","Phi??n D???ch","phien-dich","0"),
("15","????n h??ng ????i loan","don-hang-dai-loan","0"),
("16","H??? l?? ????i loan","ho-ly-dai-loan","0"),
("17","Gi??p vi???c","giup-viec","0"),
("18","Tin tuy???n d???ng","tin-tuyen-dung","0"),
("19","Tuy???n d???ng ??i ????i loan","tuyen-dung-di-dai-loan","0"),
("20","Tuy???n d???ng k??? thu???t","tuyen-dung-ky-thuat","0"),
("21","c??ng nh??n may","cong-nhan-may","0"),
("22","h?????ng d???n ph???ng v???n","huong-dan-phong-van","0"),
("23","????? tu???i lao ?????ng","do-tuoi-lao-dong","0"),
("24","H???i ????p","hoi-dap","0"),
("25","Kinh nghi???m","kinh-nghiem","0"),
("26","V??n b???n ph??p lu???t","van-ban-phap-luat","0"),
("27","Tin xu???t kh???u lao ?????ng","tin-xuat-khau-lao-dong","0"),
("28","Kinh nghi???m s???ng","kinh-nghiem-song","0"),
("29","Menu mobile","menu-mobile","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html,plugin_editor_notice,text_widget_paste_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:7:{s:64:\"f2a293562bcac45ff76726005dbed558a37a47894690e24a456a91aa492a30d8\";a:4:{s:10:\"expiration\";i:1557487239;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557314439;}s:64:\"87facf45afc81519b55343df6a0957ccbe4049af9ae0febf692252883e6abb77\";a:4:{s:10:\"expiration\";i:1557616868;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557444068;}s:64:\"f7bdc2fcac1466678e104534ba57425af83458179400f4fb02bc70c7fce9ca6c\";a:4:{s:10:\"expiration\";i:1557625852;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453052;}s:64:\"33ccb15d2bb9d2514cb0853dbafc53d9f1c5afde6ace122483a9dd6b1d15d3a6\";a:4:{s:10:\"expiration\";i:1557626476;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453676;}s:64:\"42c89abcc26a8f005dba43f20bc6a9cfebe861d0b01a44fad5b22d2fe4f7f26f\";a:4:{s:10:\"expiration\";i:1557628649;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455849;}s:64:\"3cde0de031a2bb81a235ad4d0c05c2ad2d2af54e429597091a90f1a851e5219f\";a:4:{s:10:\"expiration\";i:1557639124;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557466324;}s:64:\"f7287b22a0e58404459b4ac2f63ff5314672e6fba7e9796c88f08bd12810d001\";a:4:{s:10:\"expiration\";i:1557659739;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557486939;}}"),
("17","1","gdd_dashboard_quick_press_last_post_id","908"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","gdd_user-settings-time","1557453674"),
("22","1","managenav-menuscolumnshidden","a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","29"),
("25","1","closedpostboxes_post","a:1:{i:0;s:10:\"wpseo_meta\";}"),
("26","1","metaboxhidden_post","a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}"),
("27","1","xkld_yoast_notifications","a:3:{i:0;a:2:{s:7:\"message\";s:240:\"?????ng b??? qua l???i m??y t??m ki???m thu th???p th??ng tin trang web c???a b???n:  <a href=\"https://bizhostvn.com/w/xkld4/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> k???t n???i v???i Google Search Console ??? ????y </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:257:\"<strong>L???i SEO nghi??m tr???ng: B???n ??ang ch???n truy c???p t???i robots.</strong> B???n ph???i <a href=\"https://bizhostvn.com/w/xkld4/wp-admin/options-reading.php\">t???i m???c ?????c</a> v?? b??? ????nh d???u T????ng t??c v???i c??ng c??? t??m ki???m.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:138:\"Yoast SEO x??c ?????nh b???n ??ang s??? d???ng phi??n b???n 9.1 c???a Yoast SEO Premium, h??y c???p nh???t l??n phi??n b???n m???i nh???t.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
("28","1","meta-box-order_post","a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:61:\"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:107:\"acf-group_5c9b957854596,wpseo_meta,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}"),
("29","1","screen_layout_post","2"),
("30","1","rocket_boxes","a:1:{i:0;s:21:\"rocket_imagify_notice\";}"),
("31","1","_yoast_wpseo_profile_updated","1553754762"),
("32","1","duplicator_pro_created_format","1");




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
("1","admin","$P$BQljHaprkXw6e8D6IAFoSxFFXZL4i.1","admin","demobz@gmail.com","","2019-03-26 02:20:34","","0","admin");




CREATE TABLE `gdd_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_links VALUES
("1","https://Webdemo.com/","144","0","external"),
("2","http://Webdemo.com/","144","0","external"),
("8","/","694","0","internal"),
("9","https://Webdemo.com/","27","0","external"),
("10","http://Webdemo.com/","27","0","external"),
("577","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("578","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("579","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("580","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("581","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("582","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("583","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("584","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("585","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("586","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("587","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("588","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("589","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("590","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("591","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("592","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("593","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("594","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("595","/xuat-khau-lao-dong/","29","0","internal"),
("596","/xuat-khau-lao-dong/","29","0","internal"),
("597","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("598","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("599","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("600","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("601","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("602","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("603","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("604","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("605","/xuat-khau-lao-dong/","29","0","internal"),
("606","/xuat-khau-lao-dong/don-hang-dai-bac/","29","0","internal"),
("607","/xuat-khau-lao-dong/don-hang-dai-trung/","29","0","internal"),
("608","/xuat-khau-lao-dong/don-hang-dai-nam/","29","0","internal"),
("609","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("610","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("611","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("612","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("613","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("614","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("615","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("616","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("617","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("618","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("619","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("620","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("621","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("622","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("623","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("624","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("625","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("626","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("627","/huong-dan/","29","0","internal"),
("628","/huong-dan/hoi-dap/","29","0","internal"),
("629","/huong-dan/kinh-nghiem/","29","0","internal"),
("630","/huong-dan/van-ban-phap-luat/","29","0","internal"),
("631","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("632","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("633","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("634","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("635","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("636","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("637","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("638","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("639","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("640","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("641","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("642","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("643","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("644","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("645","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("646","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("647","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("648","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("649","/dai-loan/","29","0","internal"),
("650","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("651","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("652","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("653","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("654","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("655","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("656","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("657","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("658","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("659","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("660","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("661","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("662","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("663","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("664","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("665","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("666","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("667","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("668","/tin-tuc/","29","0","internal"),
("669","/tin-tuc/kinh-nghiem-song/","29","0","internal"),
("670","/tin-tuc/tin-xuat-khau-lao-dong/","29","0","internal"),
("671","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal");
INSERT INTO gdd_yoast_seo_links VALUES
("672","https://bizhostvn.com/w/xkld4/do-tuoi-nao-phu-hop-nhat-de-tham-gia-thuc-tap-sinh-nhat-ban/","29","208","internal"),
("673","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("674","https://bizhostvn.com/w/xkld4/tu-van-ky-nang-phong-van-thuc-tap-sinh-dai-loan-do-cao/","29","156","internal"),
("675","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("676","https://bizhostvn.com/w/xkld4/tuyen-sinh-thuc-tap-sinh-di-nhat-9-nu-nganh-may/","29","153","internal"),
("677","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("678","https://bizhostvn.com/w/xkld4/tan-man-nhung-cam-ky-o-nhat-ban-ban-can-biet/","29","150","internal"),
("679","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("680","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan-2/","29","147","internal"),
("681","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("682","https://bizhostvn.com/w/xkld4/don-hang-100-nu-giup-viec-gia-dinh-xuat-khau-lao-dong/","29","144","internal"),
("683","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("684","https://bizhostvn.com/w/xkld4/danh-sach-cong-ty-duoc-phep-dua-lao-dong-sang-dai-loan/","29","141","internal"),
("685","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("686","https://bizhostvn.com/w/xkld4/nhung-truong-hop-khong-du-dieu-kien-di-xuat-khau-lao-dong-dai-loan/","29","138","internal"),
("687","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("688","https://bizhostvn.com/w/xkld4/tuyen-25-nam-thu-nhap-cao-lam-san-xuat-oc-vit-tai-cao-hung-dai-loan/","29","135","internal"),
("691","https://Webdemo.com/","147","0","external"),
("692","http://Webdemo.com/","147","0","external");




CREATE TABLE `gdd_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_meta VALUES
("1","0","0"),
("2","0","0"),
("4","0","0"),
("5","0","0"),
("6","0","0"),
("7","0","0"),
("8","0","0"),
("9","0","0"),
("10","0","0"),
("11","0","0"),
("12","0","0"),
("15","0","0"),
("16","0","0"),
("17","0","0"),
("18","0","0"),
("19","0","0"),
("20","0","0"),
("21","0","0"),
("22","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("27","0","0"),
("28","0","0"),
("29","112","0"),
("30","0","0"),
("31","0","0"),
("32","0","0"),
("33","0","0"),
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
("60","0","0"),
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
("74","0","0"),
("75","0","0"),
("76","0","0"),
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
("104","0","0"),
("105","0","0"),
("106","0","0"),
("109","0","0"),
("110","0","0"),
("111","0","0"),
("112","0","0"),
("113","0","0"),
("114","0","0"),
("115","0","0"),
("116","0","0"),
("117","0","0"),
("119","0","0"),
("120","0","0"),
("121","0","0"),
("122","0","0"),
("123","0","0"),
("124","0","0"),
("125","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("126","0","0"),
("127","0","0"),
("128","0","0"),
("129","0","0"),
("130","0","0"),
("131","0","0"),
("132","0","0"),
("133","0","0"),
("134","0","0"),
("135","0","10"),
("137","0","0"),
("138","0","10"),
("140","0","0"),
("141","0","10"),
("143","0","0"),
("144","0","10"),
("146","0","0"),
("147","0","12"),
("149","0","0"),
("150","0","12"),
("152","0","0"),
("153","0","12"),
("155","0","0"),
("156","0","12"),
("158","0","0"),
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
("201","0","0"),
("202","0","0"),
("203","0","0"),
("204","0","0"),
("205","0","0"),
("206","0","0"),
("207","0","0"),
("208","0","10"),
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
("227","0","0"),
("228","0","0"),
("229","0","0"),
("230","0","0"),
("231","0","0"),
("232","0","0"),
("233","0","0"),
("234","0","0"),
("235","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("268","0","0"),
("269","0","0"),
("270","0","0"),
("271","0","0"),
("272","0","0"),
("273","0","0"),
("274","0","0"),
("275","0","0"),
("276","0","0"),
("277","0","0"),
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
("317","0","0"),
("318","0","0"),
("319","0","0"),
("320","0","0"),
("321","0","0"),
("322","0","0"),
("323","0","0"),
("324","0","0"),
("326","0","0"),
("327","0","0"),
("328","0","0"),
("329","0","0"),
("330","0","0"),
("331","0","0"),
("332","0","0"),
("333","0","0"),
("334","0","0"),
("338","0","0"),
("339","0","0"),
("340","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("341","0","0"),
("342","0","0"),
("343","0","0"),
("344","0","0"),
("345","0","0"),
("346","0","0"),
("347","0","0"),
("349","0","0"),
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
("364","0","0"),
("365","0","0"),
("366","0","0"),
("367","0","0"),
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
("424","0","0"),
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
("444","0","0"),
("445","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","0","0"),
("450","0","0"),
("451","0","0"),
("452","0","0"),
("453","0","0"),
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
("492","0","0"),
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
("521","0","0"),
("522","0","0"),
("523","0","0"),
("548","0","0"),
("549","0","0"),
("557","0","0"),
("558","0","0"),
("559","0","0"),
("560","0","0"),
("561","0","0"),
("562","0","0"),
("563","0","0"),
("564","0","0"),
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
("581","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("582","0","0"),
("583","0","0"),
("584","0","0"),
("585","0","0"),
("586","0","0"),
("587","0","0"),
("588","0","0"),
("589","0","0"),
("590","0","0"),
("591","0","0"),
("592","0","0"),
("593","0","0"),
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
("629","0","0"),
("630","0","0"),
("631","0","0"),
("632","0","0"),
("633","0","0"),
("634","0","0"),
("635","0","0"),
("636","0","0"),
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
("671","0","0"),
("672","0","0"),
("673","0","0"),
("674","0","0"),
("675","0","0"),
("676","0","0"),
("677","0","0"),
("678","0","0"),
("679","0","0"),
("680","0","0"),
("681","0","0"),
("682","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("683","0","0"),
("684","0","0"),
("685","0","0"),
("686","0","0"),
("687","0","0"),
("688","0","0"),
("689","0","0"),
("690","0","0"),
("691","0","0"),
("692","0","0"),
("693","0","0"),
("694","1","0"),
("695","0","0"),
("696","0","0"),
("697","0","0"),
("699","0","0"),
("700","0","0"),
("701","0","0"),
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
("723","0","0"),
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
("775","0","0"),
("776","0","0"),
("777","0","0"),
("778","0","0"),
("779","0","0"),
("780","0","0"),
("804","0","0"),
("805","0","0"),
("806","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("807","0","0"),
("809","0","0"),
("810","0","0"),
("811","0","0"),
("812","0","0"),
("813","0","0"),
("814","0","0"),
("821","0","0"),
("822","0","0"),
("825","0","0"),
("826","0","0"),
("827","0","0"),
("828","0","0"),
("829","0","0"),
("830","0","0"),
("831","0","0"),
("832","0","0"),
("833","0","0"),
("835","0","0"),
("836","0","0"),
("837","0","0"),
("838","0","0"),
("839","0","0"),
("840","0","0"),
("841","0","0"),
("844","0","0"),
("845","0","0"),
("850","0","0"),
("851","0","0"),
("852","0","0"),
("853","0","0"),
("854","0","0"),
("856","0","0"),
("857","0","0"),
("858","0","0"),
("859","0","0"),
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
("897","0","0"),
("898","0","0"),
("899","0","0"),
("901","0","0"),
("902","0","0"),
("903","0","0"),
("904","0","0"),
("905","0","0"),
("906","0","0"),
("907","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;