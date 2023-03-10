SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w43`
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
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/bongda\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1553843545,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960269,\"initial_activation_timestamp\":1553843555,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557012444,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=649 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/bongda","yes"),
("2","home","https://bizhostvn.com/w/bongda","yes"),
("3","blogname","bongda","yes"),
("4","blogdescription","","yes"),
("5","users_can_register","0","yes"),
("6","admin_email","demo@gmail.com","yes"),
("7","start_of_week","1","yes"),
("8","use_balanceTags","0","yes"),
("9","use_smilies","1","yes"),
("10","require_name_email","1","yes"),
("11","comments_notify","1","yes"),
("12","posts_per_rss","30","yes"),
("13","rss_use_excerpt","0","yes"),
("14","mailserver_url","mail.example.com","yes"),
("15","mailserver_login","login@example.com","yes"),
("16","mailserver_pass","password","yes"),
("17","mailserver_port","110","yes"),
("18","default_category","1","yes"),
("19","default_comment_status","open","yes"),
("20","default_ping_status","open","yes"),
("21","default_pingback_flag","0","yes"),
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
("33","active_plugins","a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:45:\"search-and-replace/inpsyde-search-replace.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:99:\"/home/tppone/domains/tppone.com/public_html/demo/bongda/wp-content/themes/tin-bong-da/functions.php\";i:2;s:95:\"/home/tppone/domains/tppone.com/public_html/demo/bongda/wp-content/themes/tin-bong-da/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","tin-bong-da","yes"),
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
("78","widget_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:17640:\"<ul class=\"tab-title\">\n 	<li><a href=\"#\">K????t qua??</a></li>\n 	<li><a href=\"#\">Li??ch thi ??????u</a></li>\n 	<li><a href=\"#\">Sopcast</a></li>\n</ul>\n<div class=\"ltd_kq\" style=\"width: 100%;\">\n<div class=\"kq_tieude\"><a class=\"xh_tieude\" style=\"width: 30%;\" href=\"#\">K???t qu???</a></div>\n<div id=\"ltd_kq_left_box\" class=\"box-ltd-bongda\">\n<div class=\"title-ltdbd\"><a href=\"https://cauthu.com.vn/ket-qua/bong-da-anh/\"><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/Premier League.gif\" alt=\"Premier League\" />Premier League</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Everton</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/9/25/eve.jpg\" alt=\"Everton\" /></td>\n<td><a class=\"maudo\"> 2 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Chelsea_20151212115624.png\" alt=\"Chelsea\" /></td>\n<td class=\"t-left\"><a>Chelsea</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Fulham</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Fulham.png\" alt=\"Fulham\" /></td>\n<td><a class=\"maudo\"> 1 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Liverpool_20141022141635.jpg\" alt=\"Liverpool\" /></td>\n<td class=\"t-left\"><a>Liverpool</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Burnley</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Burnley_20141015093513.jpg\" alt=\"Burnley\" /></td>\n<td><a class=\"maudo\"> 1 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2017/6/26/leicester.jpg\" alt=\"Leicester\" /></td>\n<td class=\"t-left\"><a>Leicester</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/2019/3/1/logo-wake-up-v-league-2019.png\" alt=\"V-League\" />V-League</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>???? N???ng</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/3/2/logo-doi-bong-da-shb-da-nang.jpg\" alt=\"???? N???ng\" /></td>\n<td><a class=\"maudo\"> 2 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/3/2/logo-doi-bong-da-quang-nam.jpg\" alt=\"Qu???ng Nam\" /></td>\n<td class=\"t-left\"><a>Qu???ng Nam</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Viettel</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2019/3/6/Viettel.jpg\" alt=\"Viettel\" /></td>\n<td><a class=\"maudo\"> 0 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/3/5/Ha-noi-FC-bongda24h.png\" alt=\"H?? N???i\" /></td>\n<td class=\"t-left\"><a>H?? N???i</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Qu???ng Ninh</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/3/2/logo-doi-bong-da-than-quang-ninh.jpg\" alt=\"Qu???ng Ninh\" /></td>\n<td><a class=\"maudo\"> 3 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/3/2/logo-doi-bong-da-flc-thanh-hoa.jpg\" alt=\"Thanh H??a\" /></td>\n<td class=\"t-left\"><a>Thanh H??a</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a href=\"https://cauthu.com.vn/ket-qua/bong-da-tay-bang-nha/\"><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/Laliga.png\" alt=\"La Liga\" />La Liga</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Betis</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Betis_20141014143315.png\" alt=\"Betis\" /></td>\n<td><a class=\"maudo\"> 1 - 4 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Barcelona_20141016092742.jpg\" alt=\"Barcelona\" /></td>\n<td class=\"t-left\"><a>Barcelona</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Villarreal</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Villarreal_20141016092557.jpg\" alt=\"Villarreal\" /></td>\n<td><a class=\"maudo\"> 3 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Vallecano_20141014142646.jpg\" alt=\"Vallecano\" /></td>\n<td class=\"t-left\"><a>Vallecano</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Valencia</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Valencia_20141015140910.jpg\" alt=\"Valencia\" /></td>\n<td><a class=\"maudo\"> 1 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Getafe_20141015131444.jpg\" alt=\"Getafe\" /></td>\n<td class=\"t-left\"><a>Getafe</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/Ligue 1.png\" alt=\"Ligue 1\" />Ligue 1</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>PSG</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/PSG_20151212113530.png\" alt=\"PSG\" /></td>\n<td><a class=\"maudo\"> 3 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Marseille_20141014184348.png\" alt=\"Marseille\" /></td>\n<td class=\"t-left\"><a>Marseille</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Bordeaux</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Bordeaux_20141016090748.jpg\" alt=\"Bordeaux\" /></td>\n<td><a class=\"maudo\"> 1 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Rennais_20141014143836.png\" alt=\"Rennes\" /></td>\n<td class=\"t-left\"><a>Rennes</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Reims</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Reims_20141015113126.jpg\" alt=\"Reims\" /></td>\n<td><a class=\"maudo\"> 1 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Nantes_20141015104951.jpg\" alt=\"Nantes\" /></td>\n<td class=\"t-left\"><a>Nantes</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a href=\"https://cauthu.com.vn/ket-qua/bong-da-italia/\"><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/SerieA.jpg\" alt=\"Serie A\" />Serie A</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>AC Milan</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/ACMilan_20141014144139.png\" alt=\"AC Milan\" /></td>\n<td><a class=\"maudo\"> 2 - 3 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/InterMilan_20141014150052.png\" alt=\"Inter Milan\" /></td>\n<td class=\"t-left\"><a>Inter Milan</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Napoli</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Napoli_20141016092446.jpg\" alt=\"Napoli\" /></td>\n<td><a class=\"maudo\"> 4 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Udinese_20141015125525.jpg\" alt=\"Udinese\" /></td>\n<td class=\"t-left\"><a>Udinese</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Empoli</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Empoli_20141015095608.png\" alt=\"Empoli\" /></td>\n<td><a class=\"maudo\"> 2 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Frosinone_20151230161109.png\" alt=\"Frosinone\" /></td>\n<td class=\"t-left\"><a>Frosinone</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a href=\"https://cauthu.com.vn/ket-qua/bong-da-duc/\"><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/Bundesliga.png\" alt=\"Bundesliga\" />Bundesliga</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Munich</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/BayernMunich_20141014140231.png\" alt=\"Munich\" /></td>\n<td><a class=\"maudo\"> 6 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Mainz_20141014143737.png\" alt=\"Mainz\" /></td>\n<td class=\"t-left\"><a>Mainz</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Frankfurt</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/E.Frankfurt_20141014143618.png\" alt=\"Frankfurt\" /></td>\n<td><a class=\"maudo\"> 1 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2018/10/9/Nuernberg.png\" alt=\"Nuernberg\" /></td>\n<td class=\"t-left\"><a>Nuernberg</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Leverkusen</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Leverkusen_20141014150107.png\" alt=\"Leverkusen\" /></td>\n<td><a class=\"maudo\"> 1 - 3 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/W.Bremen_20141014143642.png\" alt=\"Bremen\" /></td>\n<td class=\"t-left\"><a>Bremen</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/Europa League.png\" alt=\"Europa League\" />Europa League</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Villarreal</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Villarreal_20141016092557.jpg\" alt=\"Villarreal\" /></td>\n<td><a class=\"maudo\"> 2 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Zenit_20141015124408.jpg\" alt=\"St. Petersburg\" /></td>\n<td class=\"t-left\"><a>St. Petersburg</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Slavia Prague</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/no_image.gif\" alt=\"Slavia Prague\" /></td>\n<td><a class=\"maudo\"> 4 - 3 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Sevilla_20141015141416.jpg\" alt=\"Sevilla\" /></td>\n<td class=\"t-left\"><a>Sevilla</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Inter Milan</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/InterMilan_20141014150052.png\" alt=\"Inter Milan\" /></td>\n<td><a class=\"maudo\"> 0 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/E.Frankfurt_20141014143618.png\" alt=\"E.Frankfurt\" /></td>\n<td class=\"t-left\"><a>E.Frankfurt</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a href=\"https://cauthu.com.vn/ket-qua/bong-da-chau-au/\"><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/Champions League.png\" alt=\"Champions League\" />Champions League</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>FC Bayern M??nchen</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/BayernMunich_20141014140231.png\" alt=\"FC Bayern M??nchen\" /></td>\n<td><a class=\"maudo\"> 1 - 3 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Liverpool_20141022141635.jpg\" alt=\"Liverpool\" /></td>\n<td class=\"t-left\"><a>Liverpool</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Barcelona</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Barcelona_20141016092742.jpg\" alt=\"Barcelona\" /></td>\n<td><a class=\"maudo\"> 5 - 1 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Lyon_20141014183932.png\" alt=\"Lyon\" /></td>\n<td class=\"t-left\"><a>Lyon</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Man City</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2017/6/26/manchester-city.jpg\" alt=\"Man City\" /></td>\n<td><a class=\"maudo\"> 7 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Schalke04_20141014144125.png\" alt=\"Schalke 04\" /></td>\n<td class=\"t-left\"><a>Schalke 04</a></td>\n</tr>\n</tbody>\n</table>\n<div class=\"title-ltdbd\"><a><img style=\"height: 22px; width: 22px; float: left; margin: 0 5px; border-radius: 100%;\" src=\"https://static.bongda24h.vn/Medias/icon/VLEU.png\" alt=\"Euro\" />Euro</a></div>\n<table class=\"tablefix\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Italy</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/2016/6/7/italia.jpg\" alt=\"Italy\" /></td>\n<td><a class=\"maudo\"> 6 - 0 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Liechtenstein_20141016201504.png\" alt=\"Liechtenstein\" /></td>\n<td class=\"t-left\"><a>Liechtenstein</a></td>\n</tr>\n<tr class=\"rowtr bgfff\">\n<td>FT</td>\n<td class=\"t-right\"><a>Bosnia and Herzegovina</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/no_image.gif\" alt=\"Bosnia and Herzegovina\" /></td>\n<td><a class=\"maudo\"> 2 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Greece_20141014135743.png\" alt=\"Hy L???p\" /></td>\n<td class=\"t-left\"><a>Hy L???p</a></td>\n</tr>\n<tr class=\"rowtr\">\n<td>FT</td>\n<td class=\"t-right\"><a>Armenia</a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/Armenia.png\" alt=\"Armenia\" /></td>\n<td><a class=\"maudo\"> 0 - 2 </a></td>\n<td style=\"width: 20px;\"><img style=\"height: 20px; width: 20px; float: right;\" src=\"https://static.bongda24h.vn/Medias/icon/PhanLan_20141014153338.png\" alt=\"Ph???n Lan\" /></td>\n<td class=\"t-left\"><a>Ph???n Lan</a></td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("92","show_comments_cookies_opt_in","1","yes"),
("93","initial_db_version","44719","yes"),
("94","gdd_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("102","sidebars_widgets","a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:5:{i:0;s:13:\"media_image-3\";i:1;s:13:\"media_image-2\";i:2;s:6:\"text-2\";i:3;s:23:\"flatsome_recent_posts-2\";i:4;s:14:\"block_widget-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:3:{i:2;a:15:{s:13:\"attachment_id\";i:255;s:3:\"url\";s:84:\"https://bizhostvn.com/w/bongda/wp-content/uploads/2019/03/300x2-adx5c9250dcba9f2.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:3;a:15:{s:13:\"attachment_id\";i:256;s:3:\"url\";s:77:\"https://bizhostvn.com/w/bongda/wp-content/uploads/2019/03/banner1-300x250.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:7:{i:1557918287;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557932687;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557944248;a:3:{s:41:\"wpseo-premium-prominent-words-recalculate\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wpseo-premium-orphaned-content\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557975905;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557975907;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557996723;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes"),
("128","can_compress_scripts","0","no"),
("143","new_admin_email","webdemo@gmail.com","yes"),
("148","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553569534;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("149","current_theme","Tin b??ng ????","yes"),
("150","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 26 Mar 2019 03:05:34 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553569554;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("151","theme_switched","","yes"),
("152","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:22:\"Tin m???i c???p nh???t\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("153","widget_block_widget","a:2:{i:2;a:2:{s:5:\"title\";s:22:\"N???i b???t tu???n qua\";s:5:\"block\";s:16:\"bai-viet-noi-bat\";}s:12:\"_multiwidget\";i:1;}","yes"),
("155","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("156","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("157","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("158","flatsome_wup_buyer","trannguyen886","yes"),
("159","allowedthemes","a:1:{s:11:\"tin-bong-da\";b:1;}","no"),
("160","fl_has_child_theme","tin-bong-da","yes"),
("162","theme_mods_tin-bong-da","a:130:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:0:{}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:0:{}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:6:\"search\";}s:26:\"header_mobile_elements_top\";a:0:{}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:11;s:14:\"primary_mobile\";i:11;s:6:\"footer\";i:26;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 26 Mar 2019 03:05:56 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:15217:\".header-bottom .container{padding:0}.nav>li>a{font-weight:400!important;color:#000!important;font-size:16px;padding-left:12px;padding-right:12px;border-right:1px solid #eb9f00}.nav>li{margin:0}.container,.full-width .ubermenu-nav,.row{max-width:980px}.page-wrapper{padding-top:15px;padding-bottom:15px}.blog-archive .large-9,.blog-single .large-9,.page-right-sidebar .large-9{padding-bottom:0;flex-basis:70%;max-width:70%;padding-left:0;padding-right:20px;border-right:0}.blog-archive .large-9 .badge,.blog-archive .post-item:nth-child(2) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(3) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(4) .from_the_blog_excerpt,.blog-archive .post-item:nth-child(5) .from_the_blog_excerpt,.box-blog-post .is-divider,.home .fa-clock-o,.home .ngay-cap-nhat,.is-divider,.widget .is-divider{display:none}.recent-blog-posts-li .badge{width:100%;height:65px}.recent-blog-posts a{margin-bottom:6px;font-size:15px;font-family:\"roboto condensed\";color:#333}.recent-blog-posts-li{border-top:0!important}.recent-blog-posts-li .mr-half{width:35%;margin-right:10px}.big-block .large-4{max-width:28.6%;flex-basis:28.6%;padding-bottom:0}.big-block .large-8{max-width:71.4%;flex-basis:71.4%;padding-bottom:0}.big-block .cot4 .post-lon .post-item .post-title{font-size:14px}.big-block .cot4 .list-post .post-item .box-text .post-title{font-size:14px;border-bottom:1px solid #ececec;padding-bottom:6px}.section-title-container{margin-bottom:0}.section-title-normal{border-bottom:1px solid #000}.section-title-normal span{border-bottom:0 solid rgba(0,0,0,.1);padding-bottom:2.5px}.section-title i{opacity:1;margin-right:4px}.category-section1 .col{padding-bottom:0}.category-section1 .cot8 .vertical-list-post .post-item .box-text{padding-top:0;padding-right:0;padding-bottom:0;padding-left:10px}.category-section1 .cot8 .vertical-list-post .post-title{margin-top:0;margin-bottom:5px}.video-post .large-12{padding-bottom:0}.category-section1 .cot8{border-left:0!important}.section-title a{color:#acacac;font-size:14px;font-weight:400}.category-section1 .cot8 .vertical-list-post .post-item{padding-bottom:20px}.big-block .cot4 .list-post .post-item .box-text{padding:0}.big-block .cot4 .post-lon .post-item .box-text{padding-top:5px;padding-bottom:5px;margin-bottom:5px}.big-block .post-row-ba .post-item .box-text{padding-bottom:0}.blog-archive .large-3,.blog-single .large-3,.page-right-sidebar .large-3{flex-basis:30%;max-width:30%;padding-right:0;padding-left:0}.post-item .post-title{color:#333}.category-section1 .cot4 .list-post-no-img .post-item .box-text .post-title{font-weight:400;margin:0;padding-bottom:5px;border-bottom:1px solid #ececec;padding-top:4px;font-family:roboto,sans-serif;font-size:13px}.category-section1 .cot4 .list-post-no-img .post-item .box-text{padding-top:0;padding-bottom:5px}.big-block .post-lon .post-item .box-text{padding-bottom:5px;border-bottom:1px solid #ececec;margin-bottom:13px}.big-block .post-lon .post-item{padding-bottom:0}.big-block .post-lon .post-item .post-title{font-size:18px}.post-item .post-title:hover{text-decoration:underline}.breadcrumb-sub{margin-left:-10px;margin-bottom:0;display:inline-block;width:100%;clear:both}.breadcrumb-sub li a:hover{text-decoration:underline}.category-section2 .cot6 .post1 .post-item .box-text{padding-bottom:0}.category-section2 .cot6 .list-post .post-item .box-text{padding-left:10px!important;padding:0}.category-section2 .cot6 .list-post .post-item .box-text .post-title{height:38px;overflow:hidden;margin-bottom:7px}.category-section2 .cot6 .list-post .post-item{padding-bottom:9px;border-bottom:1px solid #ececec;padding-top:8px}span.widget-title{margin-bottom:10px;display:block;width:100%;font-family:\"roboto condensed\",sans-serif;letter-spacing:0;color:#000;font-size:16px;border-bottom:1px solid #000;padding-bottom:5px}.breadcrumb-sub li{line-height:11px;margin-bottom:0;float:left;list-style:none;padding-right:10px;border-right:1px solid #d3d3d3;font-family:\"roboto condensed\",sans-serif;margin-left:0!important}.breadcrumb-sub li a{font-size:16px;color:gray;padding-left:5px}.blog-archive .breadcrumb-sub{margin-left:0!important}.title-block .fa{margin-right:4px}.title-block a.tieu-de{display:block;text-transform:uppercase;font-weight:700;font-family:\"roboto condensed\",sans-serif;color:#000;font-size:20px}.title-block{border-bottom:1px solid #000;margin-bottom:15px}.recent-blog-posts{padding:5px 0 6px}ul.tab-title li{display:inline-block}ul.tab-title{padding-left:0;list-style:none;margin-bottom:0}ul.tab-title li a{padding:4px 8px;color:#000;background:#fff;display:inline-block;border:1px solid #dcdcdc;border-top:3px solid #ddd;margin-right:5px;border-bottom:0;font-weight:700;font-family:\"Roboto condensed\",sans-serif;text-transform:uppercase}.ltd_kq{border:1px solid #ddd;float:left;margin-bottom:20px;width:100%}.kq_tieude{border-bottom:1px solid #ddd;border-top:2px solid #ddd;float:left;display:none;width:100%}.box-ltd-bongda{float:left;width:100%}.title-ltdbd{background:#f2f2f2;padding:10px 0;float:left;width:100%}.title-ltdbd a{color:#333;font-size:14px;font-weight:700}.tablefix{vertical-align:top}.rowtr{padding:10px 0}.rowtr.bgfff{background:#f2f2f2}.tablefix tr td{padding:10px 5px;font-size:13px;color:#333}.t-right{text-align:right;width:29%}.t-right a{color:#333}.maudo{color:red}.t-left{text-align:left;width:29%}.t-left a{color:#333}.bai-viet-noi-bat .post-item .post-title{font-weight:400;font-size:15px;color:#333}.bai-viet-noi-bat .post-item{padding-top:5px;padding-bottom:6px}.recent-blog-posts a:hover{text-decoration:underline}.overlay-icon{width:2em;height:2em;line-height:1.8em}.tablefix{margin-bottom:0}.bai-viet-noi-bat .post-item .box-text{padding:0;padding-left:10px}.footer-section .large-12{padding:0}.footer-section .large-12 .col-inner{padding:15px}.footer-section #sub-menu li a{color:#3d3d3d!important;padding:7px;border-right:0;font-size:15px;font-weight:700!important}.footer-section #sub-menu li{margin-left:0}.footer-section #sub-menu li a:hover{background:#fafafa}.footer-section .medium-6 p{margin-bottom:0}.footer-section .medium-6{background:#e9e9e9}.absolute-footer ul{border-bottom:none!important}.absolute-footer ul li a{font-size:14px;text-transform:none;letter-spacing:0;color:#000;border-bottom:1px dashed #fff}.absolute-footer{padding:10px 0 10px;font-size:13px;border-top:1px solid #dedede}.breadcrumbs{border-bottom:1px solid #eaeaea}.breadcrumbs p span{font-size:14px;font-weight:400;text-transform:none;color:gray}.breadcrumbs p{padding-bottom:5px;margin-bottom:0;font-size:14px}.blog-single{padding-top:30px}.blog-single .entry-title{border-bottom:1px solid #eaeaea;padding-bottom:10px;margin-top:10px;margin-bottom:10px;font-size:22px;font-weight:400;font-family:roboto,sans-serif;font-size:23px;color:#000;line-height:1.3}.tag-meta-post{font-size:14px;color:gray;display:block;border-bottom:1px solid #eaeaea;padding-bottom:8px;margin-bottom:0}.entry-content{padding-top:15px;padding-bottom:0}.blog-single h2{font-size:19px;font-family:roboto,sans-serif;font-weight:400}.summary-block{position:relative;margin:10px 0;text-indent:20px;font-weight:700;text-align:justify;line-height:1.6;color:#000;font-size:15px}.entry-header-text{padding:0}.tag-meta-post .luot-xem{padding-left:3px;padding-right:10px}.tag-meta-post .meta-date-capnhat{padding-left:4px;padding-right:6px}.danh-muc ul{margin-bottom:0;display:inline-block;margin-left:10px}.danh-muc ul li{padding-right:5px;margin-bottom:0;display:inline-block}.tag-meta-post a{font-size:14px;color:gray}.tag-meta-post a:hover{color:#f18d1a}.blog-single .entry-content p{margin-bottom:10px;font-size:14px;color:#4a4a4a}.summary-block:before{content:\'\\201C\';position:absolute;top:-7px;left:-20px;font-family:Georgia,serif;font-size:30px;color:#c2c2c2}.bv-lien-quan-dau-trang .relatedcat li a:hover{color:#f98b0c}.bv-lien-quan-dau-trang .relatedcat li a{font-size:14px;color:#4c4c4c}.bv-lien-quan-dau-trang .relatedcat li{padding-left:15px;margin-bottom:3px;list-style:circle}.bv-lien-quan-dau-trang .relatedcat{margin-bottom:10px}.blog-single .blog-share{text-align:left}.blog-single .blog-share a{border:0!important}footer.entry-meta{font-size:14px}footer.entry-meta .danh-muc{display:block;margin-bottom:5px;color:#000;font-family:\"roboto condensed\",sans-serif;font-size:16px;font-weight:700}footer.entry-meta .danh-muc a{font-weight:400;margin-right:3px;border-right:1px solid #f2f2f2;padding-right:6px}footer.entry-meta .danh-muc a:hover{color:#fd9735}footer.entry-meta .the-tim-kiem{font-family:\"roboto condensed\",sans-serif;font-size:16px;font-weight:700;color:#000}footer.entry-meta .the-tim-kiem a{margin-left:10px;background-color:#f1af00;border-radius:0 2px 2px 0;padding:4px 7px 3px;color:#fff;font-size:11px;line-height:13px;text-transform:uppercase;position:relative}footer.entry-meta .the-tim-kiem a:before{border-top:10px solid transparent;border-right:8px solid #f1af00;border-bottom:10px solid transparent;content:\"\";height:0;position:absolute;top:0;left:-8px;width:0;-webkit-transition:all .2s linear;-moz-transition:all .2s linear;-ms-transition:all .2s linear;-o-transition:all .2s linear;transition:all .2s linear}footer.entry-meta .the-tim-kiem a:after{background-color:#fff;border-radius:50%;content:\"\";height:4px;position:absolute;top:8px;left:-2px;width:4px}.post{margin:0!important}#comments .comment-respond{margin-top:0;font-size:15px;background:#f8f8f8;border:1px solid #ececec;padding:15px}.comment-respond .form-submit input[type=submit]{background:#fdbc35;font-weight:400;font-family:\"roboto condensed\",sans-serif;font-size:15px;margin:0;color:#000}.comment-form{margin-bottom:0}.video-noi-bat .video-to .post-item .box-text{padding:10px;background:#000}.video-noi-bat .video-to .post-item{padding-bottom:20px}.video-noi-bat .video-to .post-item .post-title{color:#fff!important;font-weight:400!important;font-size:26px!important}.video-noi-bat .post-item .post-title:after{padding-left:10px;content:\"Xem ti???p\";color:#80808000;background:url(/wp-content/uploads/2019/03/video.png);background-repeat:no-repeat;background-position-x:6px;background-position-y:center;font-size:7px}.video-noi-bat{margin-top:20px}.video-noi-bat .list-ngang .post-item .box-text{padding-top:5px;padding-bottom:0}.video-noi-bat .list-ngang .post-item .post-title{font-size:15px}.video-noi-bat .list-ngang .post-item .post-title:hover{color:#007696}.tin-moi-hon .large-12,.video-noi-bat .large-12{padding-bottom:0}.tin-moi-hon .vertical-list .post-item .box-text{padding:0;padding-left:10px}.tin-moi-hon .vertical-list .post-item .post-title{height:44px;overflow:hidden}.tin-moi-hon .vertical-list .post-item .from_the_blog_excerpt{font-size:13px;height:40px;overflow:hidden}.tin-moi-hon .vertical-list .post-item{padding-bottom:10px;padding-top:10px;border-bottom:1px solid #ececec}.blog-archive h1.page-title span{background:#000;padding:4px 11px;color:#fff}.blog-archive{padding-top:30px}.tin-moi-hon .post-item .post-title:hover{color:red}.blog-archive .post-item:first-child .box-image{width:50%!important}.blog-archive .post-item:first-child .post-title{font-size:20px;margin-top:0;margin-bottom:5px}.blog-archive a.plain{display:contents!important}.blog-archive .post-item:first-child .box-text{padding-top:0;padding-right:0;padding-bottom:0;padding-left:10px}.blog-archive .post-item:first-child .from_the_blog_excerpt{font-size:14px}.blog-archive .post-item{padding-bottom:10px}.blog-archive .meta-date-capnhat a{font-size:14px;font-family:\"roboto condensed\",sans-serif;color:gray;font-weight:700}.blog-archive .post-item:nth-child(2),.blog-archive .post-item:nth-child(3),.blog-archive .post-item:nth-child(4),.blog-archive .post-item:nth-child(5){float:left;flex-basis:25%;max-width:25%;display:inline-block}.blog-archive .post-item:nth-child(2) .box-image,.blog-archive .post-item:nth-child(3) .box-image,.blog-archive .post-item:nth-child(4) .box-image,.blog-archive .post-item:nth-child(5) .box-image{width:100%!important;display:table-row}.blog-archive .post-item{padding:0 8px 20px}.blog-archive .large-columns-1{margin-left:-7px!important;margin-right:-7px!important}.blog-archive .post-item:nth-child(2) .box-text,.blog-archive .post-item:nth-child(3) .box-text,.blog-archive .post-item:nth-child(4) .box-text,.blog-archive .post-item:nth-child(5) .box-text{padding:0;padding-top:6px;border-top:1px solid #f2f2f2;padding-bottom:5px}.blog-archive .post-item:nth-child(2) .post-title,.blog-archive .post-item:nth-child(3) .post-title,.blog-archive .post-item:nth-child(4) .post-title,.blog-archive .post-item:nth-child(5) .post-title{font-size:14px}.blog-archive .post-item:nth-child(n+6){padding-right:0;flex-basis:60%;max-width:60%}.blog-archive .doc-nhieu-nhat .large-12{padding:0}.blog-archive .doc-nhieu-nhat .big-post .post-item{padding:0;padding-bottom:15px}.blog-archive .post-sidebar .block_widget{display:none}.blog-archive .doc-nhieu-nhat-block{padding-left:10px!important;width:255px!important;float:left;display:inline-block;position:absolute;top:15%;right:35px}.blog-archive .page-numbers{text-align:left}.page-numbers>li{display:inline}.nav-pagination>li>.current{border-color:#fdbc35;background-color:#fdbc35}.page-numbers>li a,.page-numbers>li span{position:relative;float:left;padding:6px 12px;line-height:1.428571429;text-decoration:none;color:#337ab7;background-color:#fff;border:1px solid #ddd;margin-left:-1px;border-radius:0}.doc-nhieu-nhat-block h3{background:#000;font-size:16px;padding:2px 20px;text-align:center;color:#fff;text-transform:uppercase}.doc-nhieu-nhat-block .large-12{padding:0}.doc-nhieu-nhat-block .post-item{padding:0;padding-bottom:0;margin-left:7px;margin-right:7px}.doc-nhieu-nhat-block .post-item:first-child .box-image{width:100%!important}.doc-nhieu-nhat-block .post-item:first-child .box-text{padding-left:0;padding-top:5px}.doc-nhieu-nhat-block .post-item:nth-child(2),.doc-nhieu-nhat-block .post-item:nth-child(3),.doc-nhieu-nhat-block .post-item:nth-child(4),.doc-nhieu-nhat-block .post-item:nth-child(5),.doc-nhieu-nhat-block .post-item:nth-child(n+6){flex-basis:100%;max-width:100%}.doc-nhieu-nhat-block .post-item .post-title{font-size:13px!important;font-weight:400;font-family:roboto,sans-serif}.doc-nhieu-nhat-block .post-item .post-title:hover{color:red}.doc-nhieu-nhat-block .post-item .box-text{border-top:1px solid #f2f2f2;padding-top:5px;padding-bottom:5px}.blog-archive .post-item:nth-child(n+6) .box-text{padding:0;padding-left:10px}.blog-archive .post-item:nth-child(n+6) .from_the_blog_excerpt{height:40px;overflow:hidden;font-size:12px}.blog-archive .post-item:nth-child(n+6) .post-title{font-size:15px}.doc-nhieu-nhat-block .post-item:nth-child(n+6) .box-text{padding-left:0;padding-top:6px;padding-bottom:5px}.blog-archive .post-item:nth-child(n+6) .post-title:hover{color:green}.tag .breadcrumb-sub li a{margin-bottom:12px;display:inline-block}.tag .breadcrumb-sub li{border-right:0}.tag h1{text-transform:none;letter-spacing:0;margin-bottom:19px}.back-to-top{border:0!important;background:#fdbc35!important;color:#fff!important}.off-canvas-left.dark .mfp-content{background-color:#2f2f2f}.nav-dropdown-default{padding:5px;border:0}.stuck .header-main{display:none}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:3451:\".big-block .large-4,.big-block .large-8,.blog-archive .large-3,.blog-archive .large-9,.blog-archive .post-item:nth-child(n+6),.blog-single .large-3,.blog-single .large-9,.category-section1 .cot8 .vertical-list-post .post-item:first-child,.page-right-sidebar .large-3,.page-right-sidebar .large-9{flex-basis:100%;max-width:100%}.blog-archive .large-9,.blog-single .large-9,.page-right-sidebar .large-9{padding-left:15px;padding-right:15px}.off-canvas:not(.off-canvas-center) .nav-vertical li>a{padding-left:20px;color:#fff!important;padding:11px 20px;border-right:0}.dark .nav-sidebar.nav-vertical>li+li{border-color:rgba(16,16,16,.2)}.off-canvas .sidebar-menu{padding:0}.header-button a{background-color:#fdbc35!important}.big-block .post-row-ba .post-item .box-image,.category-section2 .cot6 .list-post .post-item .box-image{width:35%!important;float:left;display:inline-block}.big-block .post-row-ba .post-item .box-text .post-title{font-size:17px}.big-block .post-row-ba .post-item .box-text,.category-section2 .cot6 .list-post .post-item .box-text{width:65%;padding-left:10px;float:left;display:inline-block}.big-block .cot4 .post-lon{margin-top:10px}.big-block .cot4 .post-item .post-title,.blog-archive .post-item:nth-child(2) .post-title,.blog-archive .post-item:nth-child(3) .post-title,.blog-archive .post-item:nth-child(4) .post-title,.blog-archive .post-item:nth-child(5) .post-title,.blog-archive .post-item:nth-child(n+6) .post-title,.category-section1 .cot8 .vertical-list-post .post-title,.video-post .post-item .post-title{font-size:16px!important}.bai-viet-noi-bat .post-item,.blog-archive .post-item:nth-child(2),.blog-archive .post-item:nth-child(3),.blog-archive .post-item:nth-child(4),.blog-archive .post-item:nth-child(5),.category-section1 .cot8 .vertical-list-post .post-item,.tin-moi-hon .vertical-list .post-item,.video-noi-bat .list-ngang .post-item,.video-post .post-item{flex-basis:50%;max-width:50%}.video-post .post-item .box-text{padding-bottom:5px}.category-section1 .cot8 .vertical-list-post .post-title{margin-top:10px}.category-section1 .cot8 .vertical-list-post .post-item .box-text{padding-left:0}.category-section1 .cot4 .list-post-no-img .post-item .box-text .post-title{font-family:\"roboto condensed\",sans-serif;color:#000;font-size:16px;font-weight:700}.breadcrumb-sub li a{padding-left:5px;margin-bottom:15px;display:inline-block}.title-block a.tieu-de{margin-bottom:10px}.breadcrumb-sub{margin-left:0}.blog-archive .large-3,.blog-single .large-3,.page-right-sidebar .large-3{padding-left:15px;padding-right:15px}.bv-lien-quan-dau-trang{background:#f1f1f1;padding:10px;margin-bottom:15px}.tin-moi-hon .vertical-list .post-item .box-text{padding-left:0}.tin-moi-hon .vertical-list .post-item .post-title{height:auto;margin-top:10px;overflow:auto}.video-noi-bat .list-ngang .post-item:nth-child(2n+1){padding-right:2px}.video-noi-bat .list-ngang .post-item:nth-child(2n+2){padding-left:2px}.doc-nhieu-nhat-block{display:none!important}.blog-archive h1.page-title{margin-bottom:20px}.blog-archive .post-item:first-child .box-text{padding-left:0;padding-top:7px}.blog-archive .post-item:nth-child(2) .box-image,.blog-archive .post-item:nth-child(3) .box-image,.blog-archive .post-item:nth-child(4) .box-image,.blog-archive .post-item:nth-child(5) .box-image{display:block}.blog-archive .post-item:nth-child(n+6){padding-right:8px}.blog-archive .post-item:nth-child(n+6) .box-text{padding-left:0;padding-top:8px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:3:\"980\";s:11:\"body_layout\";s:5:\"boxed\";s:7:\"body_bg\";s:7:\"#ffffff\";s:16:\"site_width_boxed\";s:3:\"980\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"167\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"80\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:19:\"rgba(255,255,255,0)\";s:20:\"header_bg_img_repeat\";s:9:\"no-repeat\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"40\";s:15:\"nav_position_bg\";s:7:\"#fdbc35\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:7:\"#ffffff\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:13:\"header_bg_img\";s:75:\"https://bizhostvn.com/w/bongda/wp-content/uploads/2019/03/banner-header.jpg\";s:14:\"header_divider\";b:0;s:20:\"header_height_sticky\";s:2:\"49\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:1:\"9\";s:13:\"header_sticky\";b:1;s:17:\"nav_height_bottom\";s:2:\"16\";s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:9:\"site_logo\";s:66:\"https://bizhostvn.com/w/bongda/wp-content/uploads/2019/03/logo.png\";s:12:\"logo_padding\";s:1:\"0\";s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:18:\"footer_bottom_text\";s:5:\"light\";s:19:\"footer_bottom_color\";s:7:\"#e9e9e9\";s:19:\"footer_bottom_align\";s:6:\"center\";s:16:\"footer_left_text\";s:169:\"Copyright [ux_current_year] ?? <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | Thi???t k??? b???i <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo</a>\";s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:19:\"blog_layout_divider\";b:0;s:18:\"blog_style_archive\";s:4:\"list\";s:18:\"blog_archive_title\";b:0;s:26:\"blog_single_featured_image\";b:0;s:10:\"blog_share\";b:1;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:23:\"blog_single_header_meta\";b:0;s:17:\"search_icon_style\";s:4:\"fill\";s:15:\"menu_icon_style\";s:4:\"fill\";s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#383838\";s:13:\"color_primary\";s:7:\"#0a0a0a\";s:15:\"color_secondary\";s:7:\"#fdbc35\";s:11:\"color_texts\";s:7:\"#333333\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#fdbc35\";s:18:\"color_widget_links\";s:7:\"#0a0a0a\";s:24:\"color_widget_links_hover\";s:7:\"#fdbc35\";}","yes"),
("164","envato_setup_complete","1553569561","yes"),
("189","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("200","recently_activated","a:4:{s:23:\"wp-rocket/wp-rocket.php\";i:1557012463;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:1557012463;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557012446;s:30:\"db-prefix-change/db_prefix.php\";i:1557012437;}","yes"),
("237","wpseo","a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.4\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1553797047;s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;}","yes"),
("238","wpseo_titles","a:76:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"L???i 404: kh??ng x??c ?????nh\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"L??u tr??? cho\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang ch???\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"T??m ki???m v???i\";s:15:\"breadcrumbs-sep\";s:2:\"??\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:1;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:23:\"post_types-page-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:25:\"page-analyse-extra-blocks\";s:0:\"\";}","yes"),
("239","wpseo_social","a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}","yes"),
("241","yoast-seo-premium_license","a:3:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:11:\"deactivated\";s:11:\"expiry_date\";s:0:\"\";}","yes"),
("247","wpseo_current_version","16","no"),
("248","wpseo_premium_version","8.4","yes"),
("253","wpseo_tracking_last_request","1556962987","yes"),
("258","wpseo_sitemap_cache_validator_global","5Ln7B","no"),
("261","rewrite_rules","a:206:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:43:\"(anh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:26:\"(anh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:8:\"(anh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:63:\"(viet-nam/asian-cup-2019)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(viet-nam/asian-cup-2019)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:28:\"(viet-nam/asian-cup-2019)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(video/ban-thang)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(video/ban-thang)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(video/ban-thang)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:59:\"(viet-nam/bong-da-nu)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"(viet-nam/bong-da-nu)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:24:\"(viet-nam/bong-da-nu)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(video/cam-dong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(video/cam-dong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(video/cam-dong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:63:\"(chau-au/champion-league)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(chau-au/champion-league)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:28:\"(chau-au/champion-league)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(chau-au)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(chau-au)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(chau-au)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(anh/cup-fa)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(anh/cup-fa)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(anh/cup-fa)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(anh/cup-lien-doan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(anh/cup-lien-doan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(anh/cup-lien-doan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:63:\"(tay-ban-nha/cup-nha-vua)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(tay-ban-nha/cup-nha-vua)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:28:\"(tay-ban-nha/cup-nha-vua)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(duc/cup-qg-duc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(duc/cup-qg-duc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(duc/cup-qg-duc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(anh/doi-tuyen-anh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(anh/doi-tuyen-anh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(anh/doi-tuyen-anh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(duc/doi-tuyen-duc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(duc/doi-tuyen-duc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(duc/doi-tuyen-duc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(viet-nam/doi-tuyen-quoc-gia)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(viet-nam/doi-tuyen-quoc-gia)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"(viet-nam/doi-tuyen-quoc-gia)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:73:\"(tay-ban-nha/doi-tuyen-tay-ban-nha)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:56:\"(tay-ban-nha/doi-tuyen-tay-ban-nha)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:38:\"(tay-ban-nha/doi-tuyen-tay-ban-nha)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:43:\"(duc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:26:\"(duc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:8:\"(duc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(e-sport)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(e-sport)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(e-sport)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(chau-au/euro-2016)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(chau-au/euro-2016)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(chau-au/euro-2016)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:61:\"(chau-au/europa-league)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:44:\"(chau-au/europa-league)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"(chau-au/europa-league)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"(video/hai-huoc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"(video/hai-huoc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:19:\"(video/hai-huoc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(viet-nam/hang-nhat)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(viet-nam/hang-nhat)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(viet-nam/hang-nhat)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(hau-truong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(hau-truong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(hau-truong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(hau-truong/hot-fan)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(hau-truong/hot-fan)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(hau-truong/hot-fan)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(ket-qua)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(ket-qua)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(ket-qua)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:59:\"(tay-ban-nha/la-liga)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"(tay-ban-nha/la-liga)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:24:\"(tay-ban-nha/la-liga)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:62:\"(chau-au/nations-league)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:45:\"(chau-au/nations-league)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"(chau-au/nations-league)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(anh/premier-league)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(anh/premier-league)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(anh/premier-league)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:58:\"(hau-truong/quoc-te)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:41:\"(hau-truong/quoc-te)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:23:\"(hau-truong/quoc-te)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(sopcast)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(sopcast)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(sopcast)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"(viet-nam/spl)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"(viet-nam/spl)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"(viet-nam/spl)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:51:\"(tay-ban-nha)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:34:\"(tay-ban-nha)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:16:\"(tay-ban-nha)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:56:\"(video/tinh-huong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:39:\"(video/tinh-huong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:21:\"(video/tinh-huong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(video/truc-tiep)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(video/truc-tiep)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(video/truc-tiep)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:63:\"(viet-nam/tuyen-omlimpic)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(viet-nam/tuyen-omlimpic)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:28:\"(viet-nam/tuyen-omlimpic)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:57:\"(viet-nam/v-league)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:40:\"(viet-nam/v-league)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(viet-nam/v-league)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:45:\"(video)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(video)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"(video)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:48:\"(viet-nam)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(viet-nam)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:13:\"(viet-nam)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:70:\"(hau-truong/viet-nam-hau-truong)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:53:\"(hau-truong/viet-nam-hau-truong)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:35:\"(hau-truong/viet-nam-hau-truong)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:55:\"(hau-truong/wags)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(hau-truong/wags)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:20:\"(hau-truong/wags)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:60:\"yst_prominent_words/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:55:\"yst_prominent_words/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?yst_prominent_words=$matches[1]&feed=$matches[2]\";s:48:\"yst_prominent_words/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?yst_prominent_words=$matches[1]&paged=$matches[2]\";s:30:\"yst_prominent_words/([^/]+)/?$\";s:41:\"index.php?yst_prominent_words=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes"),
("262","wpseo_sitemap_1_cache_validator","76Khu","no"),
("263","wpseo_sitemap_customize_changeset_cache_validator","2Rhng","no"),
("284","wpseo_sitemap_blocks_cache_validator","7IvM","no"),
("294","wpseo_sitemap_attachment_cache_validator","crnQ","no"),
("306","wpseo_sitemap_category_cache_validator","2j2iD","no"),
("361","category_children","a:7:{i:1;a:7:{i:0;i:27;i:1;i:28;i:2;i:29;i:3;i:30;i:4;i:31;i:5;i:32;i:6;i:33;}i:2;a:4:{i:0;i:34;i:1;i:35;i:2;i:36;i:3;i:37;}i:3;a:3:{i:0;i:38;i:1;i:39;i:2;i:40;}i:4;a:2:{i:0;i:41;i:1;i:42;}i:5;a:4:{i:0;i:43;i:1;i:44;i:2;i:45;i:3;i:46;}i:6;a:4:{i:0;i:47;i:1;i:48;i:2;i:49;i:3;i:50;}i:7;a:5:{i:0;i:51;i:1;i:52;i:2;i:53;i:3;i:54;i:4;i:55;}}","yes"),
("373","wpseo_sitemap_post_cache_validator","76KhD","no"),
("374","wpseo_sitemap_post_tag_cache_validator","2i9Cv","no"),
("391","wpseo_license_server_version","2","yes"),
("470","duplicator_pro_package_active","{\"Created\":\"2019-03-29 07:13:16\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.1.1\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190329_mauwebtintucthethaoninhb\",\"Hash\":\"c85dff5e787929383632_20190329071316\",\"NameHash\":\"20190329_mauwebtintucthethaoninhb_c85dff5e787929383632_20190329071316\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/bongda\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190329_mauwebtintucthethaoninhb_c85dff5e787929383632_20190329071316_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\",\"Size\":98628318,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/bongda\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web09\",\"tablesBaseCount\":16,\"tablesFinalCount\":16,\"tablesRowCount\":1560,\"tablesSizeOnDisk\":4112384,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("472","_transient_timeout_wpseo_link_table_inaccessible","1588496270","no"),
("473","_transient_wpseo_link_table_inaccessible","0","no"),
("474","_transient_timeout_wpseo_meta_table_inaccessible","1588496270","no"),
("475","_transient_wpseo_meta_table_inaccessible","0","no"),
("522","dbprefix_old_dbprefix","bd_","yes"),
("523","dbprefix_new","gdd_","yes"),
("568","recovery_keys","a:0:{}","yes"),
("588","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557907160;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("589","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557907164;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.6.1\";s:11:\"tin-bong-da\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("614","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557907164;s:7:\"checked\";a:2:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("646","_site_transient_timeout_theme_roots","1557908962","no"),
("647","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:11:\"tin-bong-da\";s:7:\"/themes\";}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("1","2","_wp_page_template","page-right-sidebar.php"),
("2","3","_wp_page_template","default"),
("37","22","_wp_attached_file","2019/03/hdhd.jpg"),
("38","22","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:58;s:4:\"file\";s:16:\"2019/03/hdhd.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"hdhd-150x58.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:58;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"hdhd-300x17.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:17;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"hdhd-768x45.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("65","35","_menu_item_type","taxonomy"),
("66","35","_menu_item_menu_item_parent","0"),
("67","35","_menu_item_object_id","2"),
("68","35","_menu_item_object","category"),
("69","35","_menu_item_target",""),
("70","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("71","35","_menu_item_xfn",""),
("72","35","_menu_item_url",""),
("74","36","_menu_item_type","taxonomy"),
("75","36","_menu_item_menu_item_parent","0"),
("76","36","_menu_item_object_id","5"),
("77","36","_menu_item_object","category"),
("78","36","_menu_item_target",""),
("79","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("80","36","_menu_item_xfn",""),
("81","36","_menu_item_url",""),
("83","37","_menu_item_type","taxonomy"),
("84","37","_menu_item_menu_item_parent","0"),
("85","37","_menu_item_object_id","4"),
("86","37","_menu_item_object","category"),
("87","37","_menu_item_target",""),
("88","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("89","37","_menu_item_xfn",""),
("90","37","_menu_item_url",""),
("92","38","_menu_item_type","taxonomy"),
("93","38","_menu_item_menu_item_parent","0"),
("94","38","_menu_item_object_id","9"),
("95","38","_menu_item_object","category"),
("96","38","_menu_item_target",""),
("97","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("98","38","_menu_item_xfn",""),
("99","38","_menu_item_url",""),
("101","39","_menu_item_type","taxonomy"),
("102","39","_menu_item_menu_item_parent","0"),
("103","39","_menu_item_object_id","6"),
("104","39","_menu_item_object","category"),
("105","39","_menu_item_target",""),
("106","39","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("107","39","_menu_item_xfn",""),
("108","39","_menu_item_url",""),
("110","40","_menu_item_type","taxonomy"),
("111","40","_menu_item_menu_item_parent","0"),
("112","40","_menu_item_object_id","8"),
("113","40","_menu_item_object","category"),
("114","40","_menu_item_target",""),
("115","40","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("116","40","_menu_item_xfn",""),
("117","40","_menu_item_url",""),
("119","41","_menu_item_type","taxonomy"),
("120","41","_menu_item_menu_item_parent","0"),
("121","41","_menu_item_object_id","10"),
("122","41","_menu_item_object","category"),
("123","41","_menu_item_target",""),
("124","41","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("125","41","_menu_item_xfn",""),
("126","41","_menu_item_url",""),
("128","42","_menu_item_type","taxonomy"),
("129","42","_menu_item_menu_item_parent","0"),
("130","42","_menu_item_object_id","3"),
("131","42","_menu_item_object","category"),
("132","42","_menu_item_target",""),
("133","42","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("134","42","_menu_item_xfn",""),
("135","42","_menu_item_url",""),
("137","43","_menu_item_type","taxonomy"),
("138","43","_menu_item_menu_item_parent","0"),
("139","43","_menu_item_object_id","7"),
("140","43","_menu_item_object","category"),
("141","43","_menu_item_target",""),
("142","43","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("143","43","_menu_item_xfn",""),
("144","43","_menu_item_url",""),
("146","44","_menu_item_type","taxonomy"),
("147","44","_menu_item_menu_item_parent","0"),
("148","44","_menu_item_object_id","1"),
("149","44","_menu_item_object","category"),
("150","44","_menu_item_target",""),
("151","44","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("152","44","_menu_item_xfn",""),
("153","44","_menu_item_url",""),
("163","49","_wp_attached_file","2019/03/banner-header.jpg"),
("164","49","_wp_attachment_metadata","a:5:{s:5:\"width\";i:983;s:6:\"height\";i:78;s:4:\"file\";s:25:\"2019/03/banner-header.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"banner-header-150x78.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"banner-header-300x24.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"banner-header-768x61.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("169","52","_wp_attached_file","2019/03/logo.png"),
("170","52","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:106;s:4:\"file\";s:16:\"2019/03/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x106.png\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x106.png\";s:5:\"width\";i:300;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("177","56","_wp_attached_file","2019/03/cropped-logo.png"),
("178","56","_wp_attachment_context","site-icon"),
("179","56","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2019/03/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("182","2","_edit_lock","1553787725:1"),
("183","2","_edit_last","1"),
("184","2","_footer","normal"),
("185","59","_menu_item_type","post_type"),
("186","59","_menu_item_menu_item_parent","0"),
("187","59","_menu_item_object_id","2"),
("188","59","_menu_item_object","page"),
("189","59","_menu_item_target",""),
("190","59","_menu_item_classes","a:1:{i:0;s:0:\"\";}");
INSERT INTO gdd_postmeta VALUES
("191","59","_menu_item_xfn",""),
("192","59","_menu_item_url",""),
("195","61","_edit_last","1"),
("196","61","_edit_lock","1553835308:1"),
("197","62","_wp_attached_file","2019/03/post1.jpg"),
("198","62","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("199","61","_thumbnail_id","62"),
("201","64","_edit_last","1"),
("202","64","_edit_lock","1553835300:1"),
("203","65","_wp_attached_file","2019/03/post2.jpg"),
("204","65","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("205","64","_thumbnail_id","65"),
("207","67","_edit_last","1"),
("208","67","_edit_lock","1553789880:1"),
("209","68","_wp_attached_file","2019/03/post3.jpg"),
("210","68","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("211","67","_thumbnail_id","68"),
("213","70","_edit_last","1"),
("214","70","_edit_lock","1553835264:1"),
("215","71","_wp_attached_file","2019/03/post4.jpg"),
("216","71","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("217","70","_thumbnail_id","71"),
("219","73","_edit_last","1"),
("220","73","_edit_lock","1553835336:1"),
("221","74","_wp_attached_file","2019/03/post5.jpg"),
("222","74","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("223","73","_thumbnail_id","74"),
("225","76","_edit_last","1"),
("226","76","_edit_lock","1553835259:1"),
("227","77","_wp_attached_file","2019/03/post6.jpg"),
("228","77","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("229","76","_thumbnail_id","77"),
("231","79","_edit_last","1"),
("232","79","_edit_lock","1553835332:1"),
("233","80","_wp_attached_file","2019/03/post8.jpg"),
("234","80","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("235","79","_thumbnail_id","80"),
("237","82","_edit_last","1"),
("238","82","_edit_lock","1553787160:1"),
("239","83","_wp_attached_file","2019/03/post9.jpg"),
("240","83","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:17:\"2019/03/post9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("241","82","_thumbnail_id","83"),
("243","85","_edit_last","1"),
("244","85","_edit_lock","1553835252:1"),
("245","86","_wp_attached_file","2019/03/post10.jpg"),
("246","86","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post10.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("247","85","_thumbnail_id","86"),
("249","88","_edit_last","1"),
("250","88","_edit_lock","1553835328:1"),
("251","89","_wp_attached_file","2019/03/post11.jpg"),
("252","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("253","88","_thumbnail_id","89"),
("255","91","_edit_last","1"),
("256","91","_edit_lock","1553835324:1"),
("257","92","_wp_attached_file","2019/03/post12.jpg"),
("258","92","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("259","91","_thumbnail_id","92"),
("261","94","_edit_last","1"),
("262","94","_edit_lock","1553835234:1"),
("263","95","_wp_attached_file","2019/03/post13.jpg"),
("264","95","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post13.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post13-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("265","94","_thumbnail_id","95"),
("267","97","_edit_last","1"),
("268","97","_edit_lock","1553789979:1"),
("269","97","_oembed_11045db5014135f5b56ced444e316858","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/d8XQdai7id4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("270","97","_oembed_time_11045db5014135f5b56ced444e316858","1553787534"),
("271","98","_wp_attached_file","2019/03/post14.jpg"),
("272","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post14.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post14-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("273","97","_thumbnail_id","98"),
("275","100","_edit_last","1"),
("276","100","_edit_lock","1553789974:1"),
("277","100","_oembed_8a7296051290736b7a52d72c36bc5890","{{unknown}}"),
("278","101","_wp_attached_file","2019/03/post15.jpg"),
("279","101","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post15.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post15-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("280","100","_thumbnail_id","101"),
("282","103","_edit_last","1"),
("283","103","_edit_lock","1553789969:1"),
("284","104","_wp_attached_file","2019/03/post16.jpg"),
("285","104","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post16.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("286","103","_thumbnail_id","104"),
("288","107","_wp_attached_file","2019/03/post19.jpg"),
("289","107","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:267;s:4:\"file\";s:18:\"2019/03/post19.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post19-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post19-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("290","106","_edit_last","1"),
("291","106","_thumbnail_id","107"),
("293","106","_edit_lock","1553789961:1"),
("306","2","_thumbnail_id",""),
("488","255","_wp_attached_file","2019/03/300x2-adx5c9250dcba9f2.jpg"),
("489","255","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:34:\"2019/03/300x2-adx5c9250dcba9f2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"300x2-adx5c9250dcba9f2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"300x2-adx5c9250dcba9f2-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("490","256","_wp_attached_file","2019/03/banner1.jpg"),
("491","256","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2019/03/banner1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("531","276","_edit_last","1"),
("532","276","_edit_lock","1553795197:1"),
("541","276","_thumbnail_id",""),
("551","287","_edit_last","1"),
("552","287","_edit_lock","1553796717:1"),
("570","300","_menu_item_type","post_type"),
("571","300","_menu_item_menu_item_parent","0"),
("572","300","_menu_item_object_id","2"),
("573","300","_menu_item_object","page"),
("574","300","_menu_item_target","");
INSERT INTO gdd_postmeta VALUES
("575","300","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("576","300","_menu_item_xfn",""),
("577","300","_menu_item_url",""),
("579","301","_menu_item_type","custom"),
("580","301","_menu_item_menu_item_parent","0"),
("581","301","_menu_item_object_id","301"),
("582","301","_menu_item_object","custom"),
("583","301","_menu_item_target",""),
("584","301","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("585","301","_menu_item_xfn",""),
("586","301","_menu_item_url","#"),
("588","302","_menu_item_type","custom"),
("589","302","_menu_item_menu_item_parent","0"),
("590","302","_menu_item_object_id","302"),
("591","302","_menu_item_object","custom"),
("592","302","_menu_item_target",""),
("593","302","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("594","302","_menu_item_xfn",""),
("595","302","_menu_item_url","#"),
("597","303","_menu_item_type","custom"),
("598","303","_menu_item_menu_item_parent","0"),
("599","303","_menu_item_object_id","303"),
("600","303","_menu_item_object","custom"),
("601","303","_menu_item_target",""),
("602","303","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("603","303","_menu_item_xfn",""),
("604","303","_menu_item_url","#"),
("625","313","_wp_attached_file","2019/03/logo_baophapluat.png"),
("626","313","_wp_attachment_metadata","a:5:{s:5:\"width\";i:200;s:6:\"height\";i:75;s:4:\"file\";s:28:\"2019/03/logo_baophapluat.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo_baophapluat-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("667","94","post_views_count","240"),
("722","88","post_views_count","1"),
("787","395","_edit_last","1"),
("788","395","_yoast_wpseo_content_score","30"),
("789","395","_yoast_wpseo_focuskeywords",""),
("790","395","_yoast_wpseo_keywordsynonyms",""),
("791","395","_yoast_wpseo_primary_block_categories",""),
("792","395","_edit_lock","1553827377:1"),
("806","409","_wp_attached_file","2019/03/video.png"),
("807","409","_wp_attachment_metadata","a:5:{s:5:\"width\";i:12;s:6:\"height\";i:9;s:4:\"file\";s:17:\"2019/03/video.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("808","409","_edit_lock","1553827645:1"),
("842","395","_thumbnail_id",""),
("884","449","_edit_last","1"),
("885","449","_edit_lock","1553830229:1"),
("886","449","_yoast_wpseo_content_score","30"),
("887","449","_yoast_wpseo_focuskeywords",""),
("888","449","_yoast_wpseo_keywordsynonyms",""),
("889","449","_yoast_wpseo_primary_block_categories",""),
("982","449","_thumbnail_id",""),
("1070","73","post_views_count","1"),
("1076","106","post_views_count","13"),
("1083","70","post_views_count","3"),
("1084","79","post_views_count","3"),
("1097","91","post_views_count","6"),
("1098","85","post_views_count","0"),
("1099","82","post_views_count","0"),
("1100","76","post_views_count","6"),
("1101","67","post_views_count","0"),
("1102","64","post_views_count","0"),
("1103","61","post_views_count","0"),
("1104","103","post_views_count","2"),
("1105","100","post_views_count","2"),
("1106","97","post_views_count","0"),
("1311","638","_wp_trash_meta_status","publish"),
("1312","638","_wp_trash_meta_time","1557133459");




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
("2","1","2019-03-26 03:04:45","2019-03-26 03:04:45","[row style=\"small\" col_style=\"divided\" class=\"big-block\"]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\" class=\"post-lon\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"3\" columns__md=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"70%\" image_size=\"original\" text_align=\"left\" text_size=\"small\" class=\"post-row-ba\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"1\" offset=\"4\" show_date=\"false\" excerpt=\"false\" excerpt_length=\"25\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\" class=\"post-lon\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"7\" offset=\"5\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Video\" class=\"video-post\"]\n\n[col span__sm=\"12\"]\n\n[title text=\"Video\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-youtube\" size=\"80\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns__md=\"1\" cat=\"7\" posts=\"4\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"75%\" image_size=\"original\" text_align=\"left\" text_size=\"small\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Category-section1\" style=\"small\" col_style=\"divided\" class=\"category-section1\"]\n\n[col span__sm=\"12\" class=\"cot12\"]\n\n[title text=\"Worldcup 2018\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"3\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"55%\" image_width=\"35\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"6\" offset=\"3\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"small\" class=\"list-post-no-img\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Category-section2\" style=\"small\" col_style=\"divided\" class=\"category-section1\"]\n\n[col span__sm=\"12\" class=\"cot12\"]\n\n<div class=\"title-block\">\n        				<a href=\"/viet-nam/\" class=\"tieu-de\"><i class=\"fa fa-angle-left\"></i>Vi???t Nam</a>\n        				<ul class=\"breadcrumb-sub\">\n        						<li class=\"cat-item\"><a href=\"#\">Asian Cup 2019</a>\n</li>\n	<li class=\"cat-item\"><a href=\"#\">B??ng ???? n???</a>\n</li>\n	<li class=\"cat-item\"><a href=\"#\">H???ng nh???t</a>\n</li>\n	<li class=\"cat-item\"><a href=\"#l\">SPL</a>\n</li>\n	<li class=\"cat-item\"><a href=\"#\">Tuy???n Olympic</a>\n</li>\n	<li class=\"cat-item\"><a href=\"#\">V-League</a>\n</li>\n	<li class=\"cat-item\"><a href=\"#\">?????i tuy???n qu???c gia</a>\n</li>\n</ul>\n        			</div>\n\n[/col]\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"3\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"55%\" image_width=\"35\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"6\" offset=\"3\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"small\" class=\"list-post-no-img\"]\n\n\n[/col]\n\n[/row]\n[gap height=\"15px\"]\n\n[row label=\"Category-section3\" style=\"small\" col_style=\"divided\" class=\"category-section1\"]\n\n[col span__sm=\"12\" class=\"cot12\"]\n\n[title text=\"Premier League\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"3\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"55%\" image_width=\"35\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"6\" offset=\"3\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"small\" class=\"list-post-no-img\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Category-section4\" class=\"category-section2\"]\n\n[col span=\"6\" span__sm=\"12\" class=\"cot6\"]\n\n[title text=\"T??y ban nha\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"5\" posts=\"1\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"70%\" image_size=\"original\" text_align=\"left\" text_size=\"small\" class=\"post1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"5\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt_length=\"9\" comments=\"false\" image_height=\"66%\" image_width=\"41\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot6\"]\n\n[title text=\"?????c\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"1\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"70%\" image_size=\"original\" text_align=\"left\" text_size=\"small\" class=\"post1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"1\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt_length=\"9\" comments=\"false\" image_height=\"66%\" image_width=\"41\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"list-post\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Category-section5\" class=\"category-section2\"]\n\n[col span=\"6\" span__sm=\"12\" class=\"cot6\"]\n\n[title text=\"Ph??p\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"6\" posts=\"1\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"70%\" image_size=\"original\" text_align=\"left\" text_size=\"small\" class=\"post1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"2\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt_length=\"9\" comments=\"false\" image_height=\"66%\" image_width=\"41\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"list-post\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot6\"]\n\n[title text=\"Italia\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"8\" posts=\"1\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"70%\" image_size=\"original\" text_align=\"left\" text_size=\"small\" class=\"post1\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"7\" posts=\"3\" offset=\"1\" show_date=\"false\" excerpt_length=\"9\" comments=\"false\" image_height=\"66%\" image_width=\"41\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"list-post\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Category-section6\" style=\"small\" col_style=\"divided\" class=\"category-section1\"]\n\n[col span__sm=\"12\" class=\"cot12\"]\n\n[title text=\"Champions League\" tag_name=\"h2\" color=\"rgb(0, 0, 0)\" icon=\"icon-angle-left\" size=\"80\" link_text=\"+ Xem t???t c???\" link=\"#\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"3\" show_date=\"false\" excerpt_length=\"12\" comments=\"false\" image_height=\"55%\" image_width=\"35\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"small\" class=\"vertical-list-post\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"6\" offset=\"3\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" text_size=\"small\" class=\"list-post-no-img\"]\n\n\n[/col]\n\n[/row]","Trang ch???","","publish","closed","open","","trang-mau","","","2019-03-29 00:06:21","2019-03-28 17:06:21","","0","https://tppone.com/demo/bongda/?page_id=2","0","page","","0"),
("3","1","2019-03-26 03:04:45","2019-03-26 03:04:45","<!-- wp:heading --><h2>Ch??ng t??i l?? ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>?????a ch??? website l??: https://bizhostvn.com/w/bongda.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>B??nh lu???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th?? vi???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th??ng tin li??n h???</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>N???i dung nh??ng t??? website kh??c</h3><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Ph??n t??ch</h3><!-- /wp:heading --><!-- wp:heading --><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin li??n h??? c???a b???n</h2><!-- /wp:heading --><!-- wp:heading --><h2>Th??ng tin b??? sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3><!-- /wp:heading -->","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-26 03:04:45","2019-03-26 03:04:45","","0","https://tppone.com/demo/bongda/?page_id=3","0","page","","0"),
("22","1","2019-03-28 16:50:00","2019-03-28 09:50:00","","hdhd","","inherit","open","closed","","hdhd","","","2019-03-28 16:50:00","2019-03-28 09:50:00","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/hdhd.jpg","0","attachment","image/jpeg","0"),
("35","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","35","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=35","3","nav_menu_item","","0"),
("36","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","36","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=36","4","nav_menu_item","","0"),
("37","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","37","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=37","5","nav_menu_item","","0"),
("38","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","38","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=38","11","nav_menu_item","","0"),
("39","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","39","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=39","6","nav_menu_item","","0"),
("40","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","40","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=40","9","nav_menu_item","","0"),
("41","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","41","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=41","10","nav_menu_item","","0"),
("42","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","42","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=42","7","nav_menu_item","","0"),
("43","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","43","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=43","8","nav_menu_item","","0"),
("44","1","2019-03-28 17:17:12","2019-03-28 10:17:12"," ","","","publish","closed","closed","","44","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=44","2","nav_menu_item","","0"),
("49","1","2019-03-28 17:42:35","2019-03-28 10:42:35","","banner-header","","inherit","open","closed","","banner-header","","","2019-03-28 17:42:35","2019-03-28 10:42:35","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/banner-header.jpg","0","attachment","image/jpeg","0"),
("52","1","2019-03-28 17:47:42","2019-03-28 10:47:42","","logo","","inherit","open","closed","","logo","","","2019-03-28 17:47:42","2019-03-28 10:47:42","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/logo.png","0","attachment","image/png","0"),
("56","1","2019-03-28 17:48:08","2019-03-28 10:48:08","https://bizhostvn.com/w/bongda/wp-content/uploads/2019/03/cropped-logo.png","cropped-logo.png","","inherit","open","closed","","cropped-logo-png","","","2019-03-28 17:48:08","2019-03-28 10:48:08","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/cropped-logo.png","0","attachment","image/png","0"),
("59","1","2019-03-28 22:25:42","2019-03-28 15:25:42"," ","","","publish","closed","closed","","59","","","2019-03-28 22:25:42","2019-03-28 15:25:42","","0","https://tppone.com/demo/bongda/?p=59","1","nav_menu_item","","0"),
("61","1","2019-03-28 22:28:24","2019-03-28 15:28:24","<h2>?????c Chinh t??? v?? m??nh gi???ng nh?? Lukaku c???a Man United</h2>\n<p class=\"summary-block\"><strong>M???i ????y, ti???n ?????o H?? ?????c Chinh chia s??? v??? qu?? tr??nh ?????i m???t v???i h???ng h?? nh???ng l???i ch??? tr??ch, tr?????c khi t??m l???i ???????c phong ????? v?? t???a s??ng ??? v??ng lo???i U23 Ch??u ?? 2020.</strong></p>\nTrong chi???n th???ng h???y di???t 4-0 c???a U23 Vi???t Nam tr?????c U23 Vi???t Nam th?? ?????c Chinh l?? m???t trong nh???ng ng?????i thi ?????u ???n t?????ng nh???t. Ti???n ?????o c???a ???? N???ng ch??nh l?? ng?????i m??? t??? s??? sau pha ki???n t???o c???a V??n H???u, ????y c??ng ???????c xem l?? t??nh hu???ng b?????c ngo???c c???a tr???n ?????u v???a r???i.\n<div id=\"attachment_227043\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227043 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/duc-chinh-e1553260784818.png\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">B??n th???ng n??y s??? gi???i t???a nhi???u ??p l???c cho ?????c Chinh t???i VL U23 Ch??u ??.</p>\n\n</div>\nC?? th??? n??i trong su???t h??n 1 n??m qua ?????c Chinh b??? ch??? tr??ch r???t nhi???u t??? ng?????i h??m m??? Vi???t Nam. Trong nh???ng gi???i ?????u v???a qua c???a tuy???n Vi???t Nam, m???i khi ???????c HLV Park Hang-seo s??? d???ng th?? ??i???u m?? ?????c Chinh ????? l???i l?? s??? th???t v???ng.\n\nTrong su???t n??m 2018 v???a qua ?????c Chinh ch??? ghi ???????c 1 b??n duy nh???t cho tuy???n Vi???t Nam. Tuy nhi??n ?????n VL U23 Ch??u ?? v???a di???n ra th?? ?????c Chinh ???? c?? ???????c phong ????? r???t cao, anh ???? g??p ph???n r???t l???n v??o th??nh c??ng c???a U23 Vi???t Nam.\n<div id=\"attachment_227493\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227493 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/c-Chinh-ghi-b%C3%A0n-U23-Vi%E1%BB%87t-Nam-vs-U23-Th%C3%A1i-Lan-e1553605598631.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">?????c Chinh c?? b??n m??? t?? s??? r???t tinh t??? trong tr???n g???p Th??i Lan.</p>\n\n</div>\nChia s??? v???i b??o ch?? sau khi t??m l???i ???????c phong ????? v?? t???a s??ng ??? v??ng lo???i U23 Ch??u ?? 2020, ?????c Chinh cho bi???t:\n\n<em>???Trong b??ng ???? chuy???n b??? ch??? tr??ch l?? b??nh th?????ng. Ai ch??i kh??ng t???t ?????u ph???i nh???n ???g???ch ??????? th??i. ?????n ng??i sao nh?? Romelu Lukaku c???a Manchester United c??n b??? ch??? tr??ch, hu???ng g?? t??i.???</em>\n\nS??? d?? ?????c Chinh li??n t?????ng m??nh v???i Lukaku l?? v?? ti???n ?????o c???a MU c??ng c?? 1 phong ????? t??? h???i v?? sau ???? ph???i r???t kh?? kh???n m???i tr??? v?? t???a s??ng nh?? b??y gi???. Hy v???ng ?????c Ch??nh s??? ti???p t???c ???????nh m???t ch??nh m??nh??? v?? tr??? th??nh nh??n s??? quan trong c???a Mr Park trong t????ng lai.","?????c Chinh t??? v?? m??nh gi???ng nh?? Lukaku c???a Man United","","publish","open","open","","duc-chinh-tu-vi-minh-giong-nhu-lukaku-cua-man-united","","","2019-03-29 11:55:08","2019-03-29 04:55:08","","0","https://tppone.com/demo/bongda/?p=61","0","post","","0"),
("62","1","2019-03-28 22:28:20","2019-03-28 15:28:20","","post1","","inherit","open","closed","","post1","","","2019-03-28 22:28:20","2019-03-28 15:28:20","","61","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post1.jpg","0","attachment","image/jpeg","0"),
("64","1","2019-03-28 22:29:46","2019-03-28 15:29:46","<h2>CH??NH TH???C: Supachai nh???n ??n ph???t c???c n???ng t??? AFC v?? h??nh vi ????nh ????nh Tr???ng</h2>\n<p class=\"summary-block\"><em><strong>Ti???n ?????o??Supachai Jaided c???a U23 Th??i Lan ???? ph???i ????n nh???n ??n ph???t c???c n???ng t??? Li??n ??o??n b??ng ???? ch??u ?? sau h??nh vi phi th??? thao trong tr???n ?????u v???i U23 Vi???t Nam.</strong></em></p>\n<img class=\"aligncenter wp-image-227682\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/supachai.png\" alt=\"\" width=\"700\" height=\"485\" />\n\n<em>Supachai</em>\n\n??? l?????t tr???n cu???i c??ng v??ng lo???i U23 ch??u ?? 2020, U23 Th??i Lan ???? b???t ng??? nh???n th???t b???i 0-4 tr?????c U23 Vi???t Nam. Kh??ng nh???ng v???y, ?????i b??ng x??? ch??a V??ng c??n ????? l???i ???n t?????ng x???u ?????i v???i NHM v???i h??nh vi phi th??? thao c???a ti???n ?????o ch??? l???c??Supachai Jaided.\n\nT??nh hu???ng di???n ra ??? ph??t 57, khi Supachai v?? qu?? ???c ch??? ???? kh??ng k??m ch??? ???????c c???m x??c c???a m??nh v?? vung th???ng n???m ?????m v??o?? m???t ????nh Tr???ng. H??nh vi c???a ti???n ?????o n??y kh??ng qua m???t ???????c tr???ng t??i ch??nh v?? ngay l???p t???c, c???u th??? n??y ph???i nh???n t???m th??? ????? tr???c ti???p.\n\n<img class=\"wp-image-227683 aligncenter\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/supachai1.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://cauthu.com.vn/wp-content/uploads/2019/03/supachai1.jpg 1000w, https://cauthu.com.vn/wp-content/uploads/2019/03/supachai1-768x511.jpg 768w\" alt=\"\" width=\"700\" height=\"466\" />\n\n<em>H??nh vi phi th??? thao c???a Supachai</em>\n\nD?? sau ????, Supachai ???? l??n ti???ng xin l???i NHM nh??ng ??i???u n??y c??ng kh??ng th??? gi??p anh tho??t kh???i ??n ph???t t??? AFC.\n\nTheo ????, trong m???t tuy??n b??? m???i ????y, AFC ???? ch??nh th???c ????a ra ??n ph???t d??nh cho Supachai. Theo ????, ti???n ?????o n??y s??? b??? treo gi?? 2 tr???n ??? VCK U23 ch??u ?? 2020 di???n ra v??o ?????u n??m t???i.\n\n<img class=\"aligncenter wp-image-227619 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Supachai-t%E1%BA%A1-l%E1%BB%97i-th%E1%BA%BB-%C4%91%E1%BB%8F-%C4%90%C3%ACnh-Tr%E1%BB%8Dng-e1553687329921.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n\n<em>??n ph???t n???ng d??nh cho Supachai</em>\n\n????y ???????c xem l?? t???n th???t v?? c??ng l???n d??nh cho U23 Th??i Lan trong chi???n d???ch s???p t???i. ???????c bi???t, Supachai hi???n ??ang l?? ch??n s??t ch??? l???c c???a ?????i b??ng x??? ch??a V??ng v?? ???? ghi ?????n 5 b??n th???ng ??? v??ng lo???i v???a qua","CH??NH TH???C: Supachai nh???n ??n ph???t c???c n???ng t??? AFC v?? h??nh vi ????nh ????nh Tr???ng","","publish","open","open","","chinh-thuc-supachai-nhan-an-phat-cuc-nang-tu-afc-vi-hanh-vi-danh-dinh-trong","","","2019-03-29 11:55:00","2019-03-29 04:55:00","","0","https://tppone.com/demo/bongda/?p=64","0","post","","0"),
("65","1","2019-03-28 22:29:36","2019-03-28 15:29:36","","post2","","inherit","open","closed","","post2","","","2019-03-28 22:29:36","2019-03-28 15:29:36","","64","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post2.jpg","0","attachment","image/jpeg","0"),
("67","1","2019-03-28 22:30:37","2019-03-28 15:30:37","<h2>Solskjaer CH??NH TH???C ???????c b??? nhi???m l??m HLV tr?????ng c???a Man United</h2>\n<p class=\"summary-block\"><em><strong>Th??ng tin t??? trang ch??? Man United v???a l??n ti???ng x??c nh???n, ban l??nh ?????o Manchester United m???i ????y ???? ch??nh th???c b??? nhi???m HLV Ole Gunnar Solskjaer l??m hu???n luy???n vi??n tr?????ng c???a ?????i b??ng ch??? s??n Old Trafford.</strong></em></p>\n\n<div id=\"attachment_223935\" class=\"wp-caption aligncenter\">\n\n<img class=\"wp-image-223935\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/manchester_2.jpg\" alt=\"\" width=\"700\" height=\"410\" />\n<p class=\"wp-caption-text\"><em>HLV Solskjaer</em></p>\n\n</div>\nTr?????c ????, chi???n l?????c gia ng?????i Na Uy ???? ???????c BL?? Qu??? ????? b??? nhi???m l??m HLV t???m th???i c???a Man United thay th??? cho Jose Mourinho. Tuy nhi??n, nh???ng th??nh c??ng ?????t ph?? c???a n???a ????? th??nh Manchester trong th???i gian v???a qua ???? khi???n cho BL?? Man United thay ?????i quy???t ?????nh.\n\nTheo ????, ?????i b??ng ch??? s??n Old Trafford ???? quy???t ?????nh b??? nhi???m chi???n l?????c gia ng?????i Na Uy th??nh HLV ch??nh th???c c???a Qu??? ????? theo b???n h???p ?????ng c?? th???i h???n 3 n??m k??m m???c l????ng ch??a ???????c ti???t l???.\n\n<img class=\"wp-image-222308 aligncenter\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/02/Solskjaer-mu.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://cauthu.com.vn/wp-content/uploads/2019/02/Solskjaer-mu.jpg 962w, https://cauthu.com.vn/wp-content/uploads/2019/02/Solskjaer-mu-768x493.jpg 768w\" alt=\"\" width=\"700\" height=\"449\" />\n\n<em>HLV Solskjaer ch??nh th???c tr??? th??nh HLV tr?????ng c???a Man United</em>\n\n????y ???????c xem l?? th??nh qu??? x???ng ????ng cho nh???ng n??? l???c c???a HLV Solskjaer sau khi ??ng ???????c giao tr???ng tr??ch ng???i l??n chi???c gh??? n??ng ??? Old Trafford.\n\n<img class=\"wp-image-216134 aligncenter\" src=\"https://cauthu.com.vn/wp-content/uploads/2018/12/Solskjaer.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n\n<em>Th??nh qu??? x???ng ????ng cho Solskjaer</em>\n\nB???t ?????u d???n d???t Man United t??? gi???a th??ng 12, ch??? trong v??ng 3 th??ng ng???n ng???i, HLV Solskjaer ???? l??m thay ?????i ho??n to??n Man United. T??? m???t t???p th??? r???u r??, Qu??? ????? b???ng h???i sinh m???t c??ch ngo???n m???c khi v?????t qua PSG ????? c?? m???t ??? v??ng t??? k???t Champions League ?????ng th???i c???nh tranh s??ng ph???ng v???i Arsenal v?? Chelsea cho m???t v??? tr?? trong Top 4 Premier League v??o cu???i m??a.","Solskjaer CH??NH TH???C ???????c b??? nhi???m l??m HLV tr?????ng c???a Man United","","publish","open","open","","solskjaer-chinh-thuc-duoc-bo-nhiem-lam-hlv-truong-cua-man-united","","","2019-03-28 23:20:23","2019-03-28 16:20:23","","0","https://tppone.com/demo/bongda/?p=67","0","post","","0"),
("68","1","2019-03-28 22:30:28","2019-03-28 15:30:28","","post3","","inherit","open","closed","","post3","","","2019-03-28 22:30:28","2019-03-28 15:30:28","","67","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post3.jpg","0","attachment","image/jpeg","0"),
("70","1","2019-03-28 22:31:37","2019-03-28 15:31:37","Nh?? m???i tr???n ?????u b??ng ????, v???n c?? 22 c???u th??? tr??n s??n. Nh??ng nh???ng nh??n t??? n???i b???t nh???t l???i kh??ng thu???c v??? U23 Th??i Lan m?? ???? l????Nguy???n Quang H???i, nh??n v???t n???i b???t nh???t c???a b??ng ???? Vi???t Nam.\n<div id=\"attachment_227667\" class=\"wp-caption alignnone\"><img class=\"wp-image-227667\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Quang-H%E1%BA%A3i.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Quang-H???i.jpg 1500w, https://cauthu.com.vn/wp-content/uploads/2019/03/Quang-H???i-768x526.jpg 768w\" alt=\"\" width=\"700\" height=\"480\" />\n<p class=\"wp-caption-text\">Quang H???i l?? nh??n t??? n???i b???t nh???t</p>\n\n</div>\nTh???t b???i 0-4 tr?????c U23 Vi???t Nam b??o hi???u b??ng ???? c???a ch??ng ta ??ang thi???u s??? ph??t tri???n. Kh??ng nh?? Vi???t Nam, ??ang c?? b?????c ph??t tri???n nh???y v???t.\n\n<em><strong>Tr??n b???ng x???p h???ng th??? gi???i, Th??i Lan ?????ng sau Vi???t Nam. Th???t cay ?????ng, m???i gi???i ?????u g???n ????y, ch??ng ta c??ng ?????u thua Vi???t Nam, cho d?? ???? l?? AFF Suzuki Cup hay Asian Cup.</strong></em>\n<div id=\"attachment_227668\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227668\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/B%C3%A1o-Th%C3%A1i.jpg\" alt=\"\" width=\"700\" height=\"445\" />\n<p class=\"wp-caption-text\">B??o Th??i vi???t b??i sau th???t b???i 0-4 tr?????c U23 Vi???t Nam v???i ti??u ????? ???Ch???p nh???n ??i, Vi???t Nam ??ang v?????t qua Th??i Lan???.</p>\n\n</div>\nC??c c???u th??? c???a Th??i Lan t??? ra l?????i bi???ng, kh??ng th??? hi???n ???????c ch??t tinh th???n chi???n ?????u sau khi ???? ?????t b??n tay c???a m??nh l??n Qu???c k??? tr??n ng???c ??o ??? l??? ch??o c???.\n\nNh?? ???? n??i trong m???t b??i vi???t m???i ????y, ch??ng ta thua Vi???t Nam t??? th??? l???c, s??? k???t d??nh, kh??t khao chi???n ?????u v?? kh??? n??ng ki???m so??t c???m x??c. N???u kh??ng c?? b?????c ?????t ph?? n??o ???????c t???o ra, ?????ng mong ch??ng ta ????i l???i ng??i v????ng ????ng Nam ?? t??? tay Vi???t Nam.","B??o Th??i: ???Th???t cay ?????ng, m???i gi???i ?????u g???n ????y, ch??ng ta ?????u??????","","publish","open","open","","bao-thai-that-cay-dang-moi-giai-dau-gan-day-chung-ta-deu","","","2019-03-29 11:54:23","2019-03-29 04:54:23","","0","https://tppone.com/demo/bongda/?p=70","0","post","","0"),
("71","1","2019-03-28 22:31:33","2019-03-28 15:31:33","","post4","","inherit","open","closed","","post4","","","2019-03-28 22:31:33","2019-03-28 15:31:33","","70","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post4.jpg","0","attachment","image/jpeg","0"),
("73","1","2019-03-28 22:32:37","2019-03-28 15:32:37","<p class=\"summary-block\"><em><strong>Chi???n th???ng thuy???t ph???c 4-0 tr?????c U23 Th??i Lan ???? gi??p U23 Vi???t Nam gi??nh quy???n v??o VCK ch??u ?? v???i t?? c??ch ?????u b???ng K. ??? gi???i ?????u n??m sau di???n ra tr??n ?????t Th??i, r???t c?? th??? HLV Park Hang-seo s??? ?????i ?????u v???i ng?????i b???n c?? c???a m??nh ??? HLV Guus Hiddink.??</strong></em></p>\n\n<div class=\"wp-caption aligncenter\"><img class=\"\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/OFH_ftqftma2/2018_01_19/Park_Hangseo_Guus_Hiddink.jpg\" alt=\"Image result for park hang seo guus hiddink\" width=\"700\" height=\"519\" />\n<p class=\"wp-caption-text\">HLV Park Hang-seo l?? tr??? l?? c???a HLV Guus Hiddink t???i ??T H??n Qu???c.</p>\n\n</div>\nT???i VCK U23 ch??u ?? ??? Trung Qu???c, U23 Vi???t Nam ???? t???o n??n c??n ?????a ch???n v???i th??nh t??ch ?? qu??n c???a gi???i ?????u. Th???y tr?? HLV Park Hang-seo ch??? ch???u thua U23 Uzbekistan ??? tr???n ?????u cu???i c??ng. Do ???? U23 Vi???t Nam n???m ??? nh??m h???t gi???ng s??? 1, c??ng v???i c??c ?????i U23 Th??i Lan (ch??? nh??), U23 Uzbekistan v?? U23 Qatar.\n\nC??n U23 Trung Qu???c n???m ??? nh??m h???t gi???ng th??? 3 do n??m ngo??i h??? b??? lo???i ngay t??? v??ng b???ng. ?????n v??ng lo???i U23 ch??u ?? n??m nay, HLV Guus Hiddink l?? ng?????i d???n d???t c??c c???u th??? tr??? c???a Trung Qu???c. Chi???n l?????c gia ng?????i H?? Lan ???? ????a U23 Trung Qu???c gi??nh v??? tr?? ?????u b???ng K v?? c?? 1 su???t ?????n VCK U23 ch??u ?? 2020.\n<div class=\"wp-caption aligncenter\"><img class=\"\" src=\"https://image2.tienphong.vn/665x449/Uploaded/2019/yrfjpyszlyr/2019_03_27/20190326220148_img_0076_01_rqpc.jpg\" alt=\"Image result for park hang seo\" width=\"701\" height=\"473\" />\n<p class=\"wp-caption-text\">HLV Park Hang-seo ??n m???ng sau tr???n th???ng U23 Th??i Lan.</p>\n\n</div>\nDo n???m ??? 2 nh??m h???t gi???ng kh??c nhau, n??n nhi???u kh??? n??ng U23 Vi???t Nam v?? U23 Trung Qu???c c?? th??? s??? n???m chung 1 b???ng ?????u. Khi ???y, nh???ng ng?????i b???n c?? l?? Park Hang-seo v?? Guus Hiddink s??? ph???i ?????i ?????u v???i nhau.\n\nTr?????c ????y, HLV Park Hang-seo l?? tr??? l?? c???a HLV Guus Hiddink t???i World Cup 2002 trong m??u ??o c???a ??T H??n Qu???c. ??? gi???i ?????u n??m ????, nh??? l???i th??? s??n nh??, ??T H??n Qu???c ?????ng ??? v??? tr?? th??? 4.\n<div class=\"wp-caption aligncenter\"><img class=\"\" src=\"http://icdn.dantri.com.vn/thumb_w/640/2018/2/15/hiddink-15186948390951279966828.jpg\" alt=\"Image result for hlv guus hiddink real madrid\" width=\"701\" height=\"436\" />\n<p class=\"wp-caption-text\">C?? th??? m???t n??m sau, 2 ng?????i h??? s??? ??? 2 ?????u chi???n tuy???n.</p>\n\n</div>\nTh???i ??i???m ????, th???y Park ???????c xem l?? c??nh tay ph???i ?????c l???c c???a Guus Hiddink. B???n th??n HLV ng?????i H??n Qu???c c??ng th???a nh???n ??ng ???? h???c h???i ???????c r???t nhi???u ??i???u t??? c???u HLV Real Madrid.","HLV Park Hang-seo c?? th??? ?????i ?????u b???n c?? Guus Hiddink","","publish","open","open","","hlv-park-hang-seo-co-the-doi-dau-ban-cu-guus-hiddink","","","2019-03-29 11:55:36","2019-03-29 04:55:36","","0","https://tppone.com/demo/bongda/?p=73","0","post","","0"),
("74","1","2019-03-28 22:32:30","2019-03-28 15:32:30","","post5","","inherit","open","closed","","post5","","","2019-03-28 22:32:30","2019-03-28 15:32:30","","73","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post5.jpg","0","attachment","image/jpeg","0"),
("76","1","2019-03-28 22:33:24","2019-03-28 15:33:24","Chia s??? tr??n t??? Siam Sports,??HLV Alexandre Gama th???a nh???n th???t b???i tr?????c U23 Vi???t Nam l?? l???i c???a ??ng v?? ban hu???n luy???n. B??n c???nh ????, ??ng Gama c??ng cho r???ng, chi???n thu???t c???a HLV Park Hang-seo b??nh th?????ng th??i.\n<div id=\"attachment_227507\" class=\"wp-caption alignnone\"><img class=\"wp-image-227507\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Th%C3%A0nh-Chung-U23-Vi%E1%BB%87t-Nam-4-0-U23-Th%C3%A1i-Lan.jpg\" alt=\"\" width=\"700\" height=\"466\" />\n<p class=\"wp-caption-text\">??ng Gama cho r???ng chi???n thu???t c???a HLV Park Hang-seo l?? b??nh th?????ng</p>\n\n</div>\n???Chi???n thu???t c???a U23 Vi???t Nam b??nh th?????ng th??i. T??i bi???t HLV Park Hang-seo v?? chi???n thu???t c???a Vi???t Nam kh??ng ph???i l?? m???t b???t ng???.??T??i mu???n th???a nh???n r???ng ???? l?? l???i c???a t??i. Kh??ng ph???i l???i c???a c??c c???u th???. C??c c???u th??? ch??i theo k??? ho???ch ch??ng t??i ?????t ra???, HLV Gama n??i.\n<div id=\"attachment_227663\" class=\"wp-caption alignnone\"><img class=\"wp-image-227663\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Supachai.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Supachai.jpg 1023w, https://cauthu.com.vn/wp-content/uploads/2019/03/Supachai-768x512.jpg 768w\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">T???m th??? ????? c???a Supachai ph?? h???ng k??? ho???ch c???a HLV U23 Th??i Lan.</p>\n\n</div>\nB??n c???nh ????, HLV Gama c??ng cho r???ng, k??? ho???ch c???a ??ng di???n ra t???t ?????p nh??ng vi???c ch??i thi???u ng?????i khi???n m???i th??? n???m ngo??i t???m ki???m so??t.??????y l?? m???t trong nh???ng th???t b???i n???ng n??? nh???t s??? nghi???p HLV c???a ??ng.\n\n???T??i xin l???i t???t c??? ng?????i h??m m??? b??ng ???? Th??i Lan. Sau khi chi???n th???ng 2 tr???n ?????u ti??n, t??i ???? r???t t??? tin v??o c??c c???u th??? c???a m??nh, nh??ng tr???n g???p Vi???t Nam kh??ng nh?? mong ?????i???, HLV Gama ch???t l???i.","HLV U23 Th??i Lan ch?? chi???n thu???t c???a HLV Park Hang-seo ???B??NH TH?????NG TH??I???","","publish","open","open","","hlv-u23-thai-lan-che-chien-thuat-cua-hlv-park-hang-seo-binh-thuong-thoi","","","2019-03-29 11:54:19","2019-03-29 04:54:19","","0","https://tppone.com/demo/bongda/?p=76","0","post","","0"),
("77","1","2019-03-28 22:33:20","2019-03-28 15:33:20","","post6","","inherit","open","closed","","post6","","","2019-03-28 22:33:20","2019-03-28 15:33:20","","76","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post6.jpg","0","attachment","image/jpeg","0"),
("79","1","2019-03-28 22:34:09","2019-03-28 15:34:09","Theo ????,??HLV Mai ?????c Chung g???ch 4 c??i t??n kh???i danh s??ch ??TQG l??: C?? Th??? Hu???nh Nh?? (TP H??? Ch?? Minh), B??i Thanh Th??y, H?? Th??? Nh??i (Than KSVN) v?? Tr???n Th??? Duy??n (Phong Ph?? H?? Nam).\n\nTrong s??? 4 c???u th??? n??y, h???u v?????Tr???n Th??? Duy??n??l?? c??i t??n ????ng ch?? ?? nh???t. Tr???n Th?? Duy??n kh??ng ch??? l?? m???t c???u th??? tr??? t??i n??ng m?? c??n ???????c bi???t ?????n l?? m???t ???hot girl??? c???a b??ng ???? n??? Vi???t Nam v?? nh???n ???????c nhi???u s??? quan t??m c???a ng?????i h??m m??? v???i g????ng m???t xinh x???n.\n<div id=\"attachment_227657\" class=\"wp-caption alignnone\"><img class=\"wp-image-227657\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Tr%E1%BA%A7n-Duy%C3%AAn.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">Tr???n Th??? Duy??n c?? khu??n m???t xinh x???n</p>\n\n</div>\nN??m 2018, Tr???n Th??? Duy??n t???ng b??? lo???i kh???i ??T U19 n??? Vi???t Nam tr?????c th???m gi???i U19 n??? ch??u ?? 2019 v?? l?? do hy h???u l?? h???t h???n h??? chi???u.\n\nTuy nhi??n, HLV Mai ?????c Chung cho bi???t,????ng s??? ti???p t???c g???i c??c c???u th??? tr??? l??n t???p hu???n c??ng ?????i tuy???n n??? qu???c gia trong c??c ?????t t???p trung sau ????? ????o t???o d???n, chu???n b??? l???p k??? c???n cho t????ng lai.\n<div id=\"attachment_227658\" class=\"wp-caption alignnone\"><img class=\"wp-image-227658\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/HLV-Mai-%C4%90%E1%BB%A9c-Chung.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">HLV Mai ?????c Chung</p>\n\n</div>\nT???i b???ng B v??ng lo???i 2 Olympic 2020, Vi???t Nam n???m c??ng b???ng v???i H???ng K??ng, Jordan v?? ch??? nh?? Uzbekistan. C??c tr???n ?????u s??? di???n ra t??? 1/4 ?????n 9/4.","HLV Mai ?????c Chung ch???t danh s??ch ??TQG, ???Hot girl??? Tr???n Th??? Duy??n b??? lo???i","","publish","open","open","","hlv-mai-duc-chung-chot-danh-sach-dtqg-hot-girl-tran-thi-duyen-bi-loai","","","2019-03-29 11:55:32","2019-03-29 04:55:32","","0","https://tppone.com/demo/bongda/?p=79","0","post","","0"),
("80","1","2019-03-28 22:34:06","2019-03-28 15:34:06","","post8","","inherit","open","closed","","post8","","","2019-03-28 22:34:06","2019-03-28 15:34:06","","79","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post8.jpg","0","attachment","image/jpeg","0"),
("82","1","2019-03-28 22:34:58","2019-03-28 15:34:58","?????n th???i ??i???m hi???n t???i, Manchester United v???n ch??a c?? m???t b???n h???p ?????ng d??i h???n d??nh cho HLV Ole Gunnar Solskjaer m???c d?? ??ng ??ang l??m r???t t???t. C?? l??? BL?? c???a M.U mu???n ch?? tr???ng v??o vi???c s??? ??em v??? t??n binh n??o h??n.\n\nPhil Neville chia s??? v??? nh???ng c???u th??? m?? ??ng mong mu???n: ???Ole n??i r???ng anh ???y mu???n mua m???t c???u th??? gi??u s??? khao kh??t. T??i ngh?? Jadon Sancho l?? c???u th??? ????. Nh??ng Bale l?? m???t c???u th??? l???n, c???u ???y v?? ?????ch Champions League v?? ch??i ??? ?????ng c???p cao nh???t???.\n<div class=\"wp-caption aligncenter\"><img class=\"\" src=\"https://e2.365dm.com/19/03/768x432/skysports-gareth-bale_4610664.jpg?20190316174317\" alt=\"\" width=\"700\" height=\"394\" />\n<p class=\"wp-caption-text\">M.U ???? khao kh??t Gareth Bale t??? r???t l??u.</p>\n\n</div>\n???T??i kh??ng ngh?? ti???n l????ng l?? v???n ????? t???i Manchester United. ??i???u c???n thi???t nh???t b??y gi??? l?? m???t c???u th??? ch???t l?????ng ??? tuy???n tr??n???.\n\n??ng c??ng cho r???ng h??ng ti???n v??? v?? h???u v??? c??ng c???n ???????c t??ng c?????ng. ??? tuy???n gi???a l?? Eric Dier v?? Philippe Coutinho ??? m???t ti???n v??? ph??ng ng??? v?? m???t ti???n v??? c??ng, c??? 2 ?????u ??ang th???t s???ng t???i Tottenham Hotspurs v?? Barcelona.\n<div class=\"wp-caption aligncenter\"><img src=\"http://www1.pictures.zimbio.com/gi/Phil+Neville+Joao+Cancelo+Valencia+CF+Training+22sgFpvBt4Cl.jpg\" alt=\"\" width=\"700\" height=\"503\" />\n<p class=\"wp-caption-text\">Phil Neville t???ng l??m vi???c v???i Joao Cancelo t???i Valencia v?? bi???t r?? t??i n??ng c???a h???u v??? n??y.</p>\n\n</div>\nHai c??i t??n c??n l???i l?? trung v??? Raphael Varane v?? Joao Cancelo. ????y c?? l??? l?? 2 c???u th??? m?? M.U kh?? mua nh???t b???i h??? ?????u ??ang ????ng vai tr?? quan tr???ng t???i Real Madrid v?? Juventus.\n\nTheo ?????nh gi?? c???a trang Transfermarkt, c??c c???u th??? c?? gi?? tr??? nh?? sau: Gareth Bale ??? 70 tri???u Euro, Philippe Coutinho 100 tri???u Euro, Eric Dier ??? 40 tri???u Euro, Raphael Varane ??? 80 tri???u Euro, Joao Cancelo ??? 55 tri???u Euro.","Phil Neville ch??? ra 5 c??i t??n Manchester United c???n mua trong h?? n??y","","publish","open","open","","phil-neville-chi-ra-5-cai-ten-manchester-united-can-mua-trong-he-nay","","","2019-03-28 22:34:58","2019-03-28 15:34:58","","0","https://tppone.com/demo/bongda/?p=82","0","post","","0"),
("83","1","2019-03-28 22:34:55","2019-03-28 15:34:55","","post9","","inherit","open","closed","","post9","","","2019-03-28 22:34:55","2019-03-28 15:34:55","","82","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post9.jpg","0","attachment","image/jpeg","0"),
("85","1","2019-03-28 22:35:44","2019-03-28 15:35:44","M???t b??? ph???n fan b??ng ???? Th??i Lan h???n ???? c???m th???y b??? ch???m t??? ??i t???i v??? th??? c???a h??? (v???n v???n ???????c xem l?? s??? 1 ??N?? nhi???u n??m qua). N??n t???t nhi??n ph???i l??n ti???ng.\n\nM???t s??? C??V Th??i Lan ????a ra nh???n ?????nh r???ng, Vi???t Nam ch??? m???i v?????t qua Th??i Lan ??? c???p ?????i tr??? 2 l???n, ???? l?? 2 tr???n ?????u c???a l???a U23 (2 tr???n, 2-1 v?? 4-0). Nh??ng Vi???t Nam v???n ch??a v?????t qua Th??i Lan ??? c???p ??TQG ch??nh th???c.\n<div id=\"attachment_227521\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227521 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Park-Hang-seo-h%E1%BB%8Dp-b%C3%A1o-U23-Vi%E1%BB%87t-Nam-4-0-U23-Th%C3%A1i-Lan-e1553615736833.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">Tuy??n b??? c???a th???y Park sau tr???n ?????u U23 Vi???t Nam 4-0 U23 Th??i Lan khi???n nhi???u fan Th??i ch???m t??? ??i</p>\n\n</div>\nD?????i ????y l?? m???t s??? b??nh lu???n c???a c??c fan b??ng ???? Th??i tr??n MXH:\n\n???Ch??ng t??i s??? lu??n ????n ch??o ??ng Park. King???s Cup 2019 v?? c???p ????? ??TQG ??ang ch??? ??ng???.\n\n???D?? g?? ??i n???a, t??i cho r???ng Th??i Lan v???n nh???nh h??n Vi???t Nam m???t ch??t ??? c???p ??TQG. Vi???t Nam ch??? m???i g???i l?? b???t k???p Th??i Lan m?? th??i???.\n\n???C???m ??n v?? b??i h???c m?? ??ng ???? g???i cho Th??i Lan h??m nay. ??ng r???t gi???i v?? h???n g???p ??ng ??? King???s Cup???.\n\n???????y ch??? l?? m???t h??m m??a m?? th??i, Th??i Lan s??? c???i thi???n v?? 100% l?? tai n???n h??m nay s??? kh??ng bao gi??? c??n n???a???.\n<div id=\"attachment_227503\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227503 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/U23-Vi%E1%BB%87t-Nam-3-0-U23-Th%C3%A1i-Lan-V%C3%B2ng-lo%E1%BA%A1i-U23-ch%C3%A2u-%C3%81-e1553610750660.jpg\" alt=\"\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">Vi???t Nam v?? Th??i Lan s??? c?? c?? h???i ?????i ?????u ??? c???p ????? ??TQG t???i King???s Cup</p>\n\n</div>\nTh??ng s??u t???i ????y, Vi???t Nam s??? tham d??? King???s Cup t???i Th??i Lan. King???s Cup theo l??? s??? c?? 4 ?????i tham d??? nh??ng hi???n t???i m???i l??? di???n 2 kh??ch m???i (Vi???t Nam v?? ???n ?????). Ch??? nh?? Th??i Lan theo d??? ki???n s??? m???i th??m 1 ?????i m???nh n???a t??? ch??u ??u.","Fan Th??i Lan ph???n ???ng v???i tuy??n b??? c???a HLV Park Hang-seo","","publish","open","open","","fan-thai-lan-phan-ung-voi-tuyen-bo-cua-hlv-park-hang-seo","","","2019-03-29 11:54:12","2019-03-29 04:54:12","","0","https://tppone.com/demo/bongda/?p=85","0","post","","0"),
("86","1","2019-03-28 22:35:40","2019-03-28 15:35:40","","post10","","inherit","open","closed","","post10","","","2019-03-28 22:35:40","2019-03-28 15:35:40","","85","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post10.jpg","0","attachment","image/jpeg","0"),
("88","1","2019-03-28 22:36:41","2019-03-28 15:36:41","<p class=\"summary-block\"></p>\n<strong>Cay c?? thua tr???n b??ng giao h???u, c???u th??? Trung Qu???c ???? c?? pha v??o b??ng ??c ?? ?????p g??y x????ng ch??n khi???n ti???n v??? Uzbekistan ph???i ngh??? thi ?????u n???m vi???n 3 th??ng.</strong>\n\n&nbsp;\n\nTrung Qu???c ?????ng b??t gi???i ?????u t??? h??ng do h??? t??? ch???c sau 2 tr???n thua tr?????c Th??i Lan v?? Uzbekistan. Ngo??i l???i ch??i y???u k??m, ?????i b??ng ??o ????? c??n ????? l???i h??nh ???nh x???u x?? v???i pha ch???t ch??m ??c ?? khi???n c???u th??? Uzbekistan g??y x????ng ch??n.\n<div id=\"attachment_227643\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227643\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/trung-qu%E1%BB%91c-%C4%91%E1%BA%A1p-g%C3%A3y-ch%C3%A2n-Uzbekistan-e1553744733496.jpeg\" alt=\"Wei Shihao c??? ?? ?????p sau tr??ng ch??n tr??? c???a Otabek Shukurov\" width=\"700\" height=\"405\" />\n<p class=\"wp-caption-text\">Wei Shihao c??? ?? ?????p sau tr??ng ch??n tr??? c???a Otabek Shukurov</p>\n\n</div>\nPh??t 35 tr???n ?????u Trung Qu???c v???i Uzbekistan, c???u th??? Wei Shihao b??n ph??a Trung Qu???c t??? ph??a sau lao v??o ?????p ch??n tr??? c???a Otabek Shukurov. C?? ?????p sau khi???n c???u th??? Uzbekistan ??au ?????n r???i s??n trong n?????c m???t. Ch???n ??o??n cho th???y anh b??? g??y x????ng m???t c?? ch??n v?? ph???i ngh??? thi ?????u ??t nh???t 3 th??ng.\n\nB???n th??n Wei Shihao ch??? b??? ph???t th??? v??ng v?? ti???p t???c ???? ?????n h???t tr???n. K???t qu??? Trung Qu???c v???n b???i tr???n 1 ??? 0 tr?????c ?????i th???.\n<div id=\"attachment_227645\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227645\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/trung-qu%E1%BB%91c-%C4%91%E1%BA%A1p-g%C3%A3y-ch%C3%A2n-Uzbekistan-3-e1553744724678.jpeg\" alt=\"D?????i th???i HLV Fabio Cannavaro, tuy???n Trung Qu???c tr??? n??n qu?? y???u k??m\" width=\"700\" height=\"467\" />\n<p class=\"wp-caption-text\">D?????i th???i HLV Fabio Cannavaro, tuy???n Trung Qu???c tr??? n??n qu?? y???u k??m</p>\n\n</div>\nTh???c t??? pha b??ng n??y l?? h??? qu??? c???a m???t tuy???n Trung Qu???c y???u k??m g???n nh?? kh??ng th??? l???y b??ng t??? c??c c???u th??? Uzbekistan. ?????i b??ng ??o ????? b??? ??p s??n to??n di???n. H??? ch??? ki???m so??t b??ng ???????c 38% v?? kh??ng c?? c?? s??t n??o tr??ng c???u m??n ?????i ph????ng.\n\nPh??t bi???u sau tr???n, Wei Shihao l?? gi???i m??nh b??? ???c ch??? v?? g???n nh?? kh??ng ???????c ch???m b??ng su???t 10 ph??t. Anh c??ng xin l???i n???n nh??n Otabek Shukurov.\n<div id=\"attachment_227644\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-227644\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/trung-qu%E1%BB%91c-%C4%91%E1%BA%A1p-g%C3%A3y-ch%C3%A2n-Uzbekistan-2-e1553744718622.jpeg\" alt=\"Wei Shihao ??em qu?? ?????n xin l???i Otabek Shukurov\" width=\"700\" height=\"883\" />\n<p class=\"wp-caption-text\">Wei Shihao ??em qu?? v?? chi???c xe l??n ?????n xin l???i Otabek Shukurov</p>\n\n</div>\nOtabek Shukurov hi???n ??ang ch??i cho CLB Al-Sharjah ??? UAE. Wei Shihao ??ang ch??i cho Guangzhou Evergrande (Trung Qu???c). Nhi???u kh??? n??ng Guangzhou s??? ????a ra ??n ph???t n???ng v???i h??nh vi c???a Wei Shihao","???? giao h???u, c???u th??? Trung Qu???c ?????p g??y ch??n ti???n v??? Uzbekistan","","publish","open","open","","da-giao-huu-cau-thu-trung-quoc-dap-gay-chan-tien-ve-uzbekistan","","","2019-03-29 11:55:28","2019-03-29 04:55:28","","0","https://tppone.com/demo/bongda/?p=88","0","post","","0"),
("89","1","2019-03-28 22:36:38","2019-03-28 15:36:38","","post11","","inherit","open","closed","","post11","","","2019-03-28 22:36:38","2019-03-28 15:36:38","","88","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post11.jpg","0","attachment","image/jpeg","0"),
("91","1","2019-03-28 22:37:43","2019-03-28 15:37:43","<strong>Tay ?????m Kubrat Pulev c?? h??nh ?????ng c?????ng h??n n??? ph??ng vi??n Jennifer Ravalo ngay tr??n ???ng k??nh truy???n h??nh.</strong>\n\n&nbsp;\n\nTr???n chi???n gi???a Kubrat Pulev v?? Bogdan Dinu ???????c t??? ch???c t???i Las Vegas, M??? ng??y 23/3. Tay ?????m ng?????i Bulgari ???? chi???n th???ng ?????i th??? v?? ???????c truy???n h??nh ph???ng v???n sau tr???n ?????u.\n<div id=\"attachment_227635\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-227635\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/c%C6%B0%E1%BB%A1ng-h%C3%B4n-m%E1%BB%B9-3-e1553743040284.jpeg\" alt=\"Kubrat Pulev c?? th??? g???p r???c r???i l???n v?? h??nh vi c???a m??nh\" width=\"700\" height=\"394\" />\n<p class=\"wp-caption-text\">Kubrat Pulev c?? th??? g???p r???c r???i l???n v?? h??nh vi c???a m??nh</p>\n\n</div>\nKhi ??ang n??i chuy???n v???i Jennifer Ravalo c???a t??? Vegas Sport Daily, Kubrat Pulev b???t ng??? gh?? c??? n??? ph??ng vi??n v?? th???c hi???n h??nh vi c?????ng h??n.\n\nH??nh ???nh v??? vi???c ???????c camera ghi l???i v?? truy???n cho h??ng ngh??n kh??n gi??? truy???n h??nh ??ang theo d??i. L??n s??ng ph???n ?????i v?? ch??? tr??ch t??? ng?????i h??m m??? ngay l???p t???c ????? ???p l??n ?????u Kubrat Pulev.\n<div id=\"attachment_227637\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-227637\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/c%C6%B0%E1%BB%A1ng-h%C3%B4n-m%E1%BB%B9-2-e1553743046985.jpeg\" alt=\"Jennifer Ravalo b??? Kubrat Pulev c?????ng h??n\" width=\"700\" height=\"394\" />\n<p class=\"wp-caption-text\">Jennifer Ravalo b??? Kubrat Pulev c?????ng h??n</p>\n\n</div>\nN???n nh??n b??? c?????ng h??n Jennifer Ravalo cho bi???t c?? ???r???t x???u h?????? v?? ???kh?? ch???u???, tuy nhi??n v?? c??ng vi???c n??n ph???i c?????i tr??? cho qua chuy???n.\n\nHi???n ch??a c?? h??nh ph???t n??o ???????c ????a ra. Nh??ng h??nh vi c???a Kubrat Pulev c?? th??? nh???n h???u qu??? nghi??m tr???ng n???u n?? b??? x??c ?????nh l?? qu???y r???i v?? x??m ph???m t??? t??a ??n.\n<div id=\"attachment_227636\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-227636\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/c%C6%B0%E1%BB%A1ng-h%C3%B4n-m%E1%BB%B9-e1553743035612.jpg\" alt=\"V??? vi???c t????ng t??? x???y ra ??? Vi???t Nam c??ng l??m x??n xao d?? lu???n th???i gian g???n ????y (???nh minh h???a)\" width=\"700\" height=\"513\" />\n<p class=\"wp-caption-text\">V??? vi???c t????ng t??? x???y ra ??? Vi???t Nam c??ng l??m x??n xao d?? lu???n th???i gian g???n ????y (???nh minh h???a)</p>\n\n</div>","H??nh vi ph???t 200k xu???t hi???n ngay tr??n s??ng truy???n h??nh M???","","publish","open","open","","hanh-vi-phat-200k-xuat-hien-ngay-tren-song-truyen-hinh-my","","","2019-03-29 11:55:24","2019-03-29 04:55:24","","0","https://tppone.com/demo/bongda/?p=91","0","post","","0"),
("92","1","2019-03-28 22:37:34","2019-03-28 15:37:34","","post12","","inherit","open","closed","","post12","","","2019-03-28 22:37:34","2019-03-28 15:37:34","","91","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post12.jpg","0","attachment","image/jpeg","0"),
("94","1","2019-03-28 22:38:31","2019-03-28 15:38:31","<h2>Bayern Munich CH??NH TH???C s??? h???u ???bom t???n??? l?? nh?? V?? ?????ch World Cup</h2>\n<p class=\"summary-block\"><strong>M??a h?? ch??a ?????n, nh??ng ???H??m x??m??? x??? Bavaria ???? th???c hi???n nh???ng b?????c chuy???n m??nh c???c k??? m???nh m???. Nh???m v??o hai h??nh lang c??nh c???a ?????i b??ng.</strong></p>\n????m h??m qua, v???i vi???c t???o ra k??? l???c m???i trong l???ch s??? chuy???n nh?????ng c???a CLB. Bayern Munich ???? CH??NH TH???C s??? h???u h???u v??? c??nh tr??i V?? ?????ch World Cup 2018 c??ng ??T Ph??p. Ch??nh l?? Lucas Hernandez.\n<div id=\"attachment_227630\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227630 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Lucas-Hernandez-ch%C3%ADnh-th%E1%BB%A9c-b%C3%A1n-mua-Bayern-Munich-27-3-e1553731495951.jpg\" alt=\"\" width=\"700\" height=\"700\" />\n<p class=\"wp-caption-text\">Bayern CH??NH TH???C th??ng b??o s??? h???u Lucas Hernandez</p>\n\n</div>\nTrong c??c th??ng b??o ch??nh th???c v??? th????ng v??? n??y t??? trang ch??? Bayern. BL?? H??m x??m ???? chi ra 80 tri???u euro ????? Atletico Madrid ch???p nh???n nh??? ng?????i.\n\n???S??? nghi???p c???a t??i ??ang tr???i qua m???t ng??y v?? c??ng tr???ng ?????i. Bayern Munich l?? m???t trong nh???ng CLB m???nh nh???t ch??u ??u. ???????c thi ?????u cho CLB s??? 1 n?????c ?????c v?? quy???t d??nh m???i danh hi???u c?? th??? cho ?????i b??ng n??y l?? m???t ni???m t??? h??o l???n.\n\nV?? 12 n??m tuy???t v???i ???? tr???i qua c??ng Atletico, t??i mu???n c???m ??n BL??, c??c HLV, C??V c??ng nh?? c??c ?????ng ?????i ??? ????y. Atletico ???? v?? s??? lu??n l?? m???t ph???n trong t??i. Gi??? t??i r???t tr??ng ?????i h??nh tr??nh m???i c??ng Bayern???.\n<div id=\"attachment_227631\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227631 size-full\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Lucas-Hernandez-ch%C3%ADnh-th%E1%BB%A9c-b%C3%A1n-mua-Bayern-Munich-27-3-1-e1553731555319.jpg\" alt=\"\" width=\"700\" height=\"459\" />\n<p class=\"wp-caption-text\">Bayern Munich ???? chi ra 80 tri???u euro ????? s??? h???u h???u v??? c??nh V?? ?????ch World Cup</p>\n\n</div>\n??ng Hasan Salihamidzic (G??TT ??????ng nhi???m Bayern Munich) kh??ng ng???n ng???i b??y t??? s??? h??i l??ng khi chi??u m??? th??nh c??ng nh?? v?? ?????ch World Cup 2018:\n\n???M???t trong nh???ng h???u v??? hay nh???t th??? gi???i ???? ?????n v???i ?????i b??ng, anh ???y l?? m???t c???u th??? v?? ?????ch th??? gi???i, ???? l?? Lucas Hernandez. Lucas l?? m???t tay ch??i ??a n??ng c?? th??? l??m t???t c??? v??? tr?? trung v??? l???n h???u v??? tr??i.\n\nC???u ???y c??ng s??? ti???p n???i truy???n th???ng t???t ?????p m?? Bayern c?? v???i c??c c???u th??? Ph??p, v?? s??? tr??? th??nh ng??i sao n??ng t???m CLB???.\n\nLucas Hernadez hi???n v???n ??ang g???p v???n ????? v???i d??y ch???ng ?????u g???i ph???i. Bayern v?? Atletico ???? th???ng nh???t, ngay l???p t???c t??n binh c???a H??m x??m c???n ti???n h??nh ph???u thu???t ????? ??i???u tr??? d???t ??i???m ch???n th????ng n??y.\n<div id=\"attachment_227632\" class=\"wp-caption aligncenter\"><img class=\"wp-image-227632\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/Pavard-Lucas-Hernandez-Bayern-Munich-chuy%E1%BB%83n-nh%C6%B0%E1%BB%A3ng.jpg\" alt=\"\" width=\"700\" height=\"452\" />\n<p class=\"wp-caption-text\">Benjamin Pavard v?? Lucas Hernandez s??? c??ng t??i ng??? ??? Bayern Munich m??a h?? n??y</p>\n\n</div>\nTr?????c ????, h???i th??ng gi??ng ???H??m x??m??? c??ng ???? t???u ???????c Benjamin Pavard (h???u v??? c??nh ph???i ??T Ph??p) t??? Stuttgard.","Bayern Munich CH??NH TH???C s??? h???u ???bom t???n??? l?? nh?? V?? ?????ch World Cup","","publish","open","open","","bayern-munich-chinh-thuc-so-huu-bom-tan-la-nha-vo-dich-world-cup","","","2019-03-29 11:53:54","2019-03-29 04:53:54","","0","https://tppone.com/demo/bongda/?p=94","0","post","","0"),
("95","1","2019-03-28 22:38:23","2019-03-28 15:38:23","","post13","","inherit","open","closed","","post13","","","2019-03-28 22:38:23","2019-03-28 15:38:23","","94","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post13.jpg","0","attachment","image/jpeg","0"),
("97","1","2019-03-28 20:39:36","2019-03-28 13:39:36","<strong>????m qua trong l?????t tr???n giao h???u qu???c t??? Brazil ???? ph???i r???t nh???c nh???n m???i gi??nh ???????c chi???n th???ng tr?????c CH Czech nh??? v??o c?? ????p c???a Gabriel Jesus ??? c??c ph??t 83??? v?? 90??? v?? m???t b??n th???ng c???a Firmino ??? ph??t 49???</strong>\n\nhttps://youtu.be/d8XQdai7id4","Brazil nh???c nh???n th???ng CH Czech nh??? c?? ????p c???a Gabriel Jesus","","publish","open","open","","brazil-nhoc-nhan-thang-ch-czech-nho-cu-dup-cua-gabriel-jesus","","","2019-03-28 23:19:39","2019-03-28 16:19:39","","0","https://tppone.com/demo/bongda/?p=97","0","post","","0"),
("98","1","2019-03-28 22:39:33","2019-03-28 15:39:33","","post14","","inherit","open","closed","","post14","","","2019-03-28 22:39:33","2019-03-28 15:39:33","","97","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post14.jpg","0","attachment","image/jpeg","0"),
("100","1","2019-03-28 20:40:53","2019-03-28 13:40:53","<h2>Son Heung Min to??a sa??ng gi??p H??n Qu???c ????nh b???i Colombia</h2>\n<p class=\"summary-block\"><strong>????m qua trong tr???n giao h???u gi???a H??n Qu???c v?? Colombia. Son Heung Min ???? to??a sa??ng ????? gi??p ?????i b??ng x??? kim chi c?? chi???n th???ng 2-1 tr?????c ?????i b??ng t??? Nam M??? ngay tr??n s??n nh??.</strong></p>\n&nbsp;","Son Heung Min to??a sa??ng gi??p H??n Qu???c ????nh b???i Colombia","","publish","open","open","","son-heung-min-to%cc%89a-sang-giup-han-quoc-danh-bai-colombia","","","2019-03-28 23:19:34","2019-03-28 16:19:34","","0","https://tppone.com/demo/bongda/?p=100","0","post","","0"),
("101","1","2019-03-28 22:40:50","2019-03-28 15:40:50","","post15","","inherit","open","closed","","post15","","","2019-03-28 22:40:50","2019-03-28 15:40:50","","100","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post15.jpg","0","attachment","image/jpeg","0"),
("103","1","2019-03-28 21:41:46","2019-03-28 14:41:46","<h2><strong>Nh???t ??? H??n b??n h??nh cho Nam M???, ch??u ?? v????n l??n m???nh m???</strong></h2>\n<strong>S??? ti???n b??? r?? r???t c???a b??ng ???? ch??u ?? ??ang ???????c th??? hi???n trong 2 n??m g???n ????y. C??c ?????i th??? m???nh Nam M??? li??n t???c b??? c??c ?????i top ch??u ?? b??n h??nh.</strong>\n\n&nbsp;\n\nLo???t tr???n giao h???u ????m qua, H??n Qu???c v???a c?? chi???n th???ng 2 -1 tr?????c ?????i di???n m???nh Nam M??? Colombia. Nh???t B???n c??ng kh??ng k??m c???nh khi ????nh b???i Bolivia 1-0.\n<div id=\"attachment_227584\" class=\"wp-caption aligncenter\">\n\n<img class=\"wp-image-227584\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/ch%C3%A2u-%C3%81-b%C3%B3n-h%C3%A0nh-Nam-M%E1%BB%B9-2.jpg\" alt=\"Son Heung-Min t???a s??ng b??n h??nh cho James, Falcao v?? ?????ng ?????i\" width=\"700\" height=\"444\" />\n<p class=\"wp-caption-text\">Son Heung-Min t???a s??ng b??n h??nh cho James, Falcao v?? ?????ng ?????i</p>\n\n</div>\nColombia tung v??o s??n ?????i h??nh thi???u nhi???u ng??i sao nh?? James Rodriguez, Falcao, Yerry Mina. S??? ch??? quan khi???n h??? s???m b??? H??n Qu???c ph?? l?????i ??? ph??t 17 do c??ng ti???n ?????o Son Heung-Min.\n\nGi???a hi???p 2 Colombia s???m ??i???u ch???nh tung v??o s??n c??c ng??i sao c???a m??nh v?? c?? b??n g??? 1 ??? 1 do c??ng c???a Fernando Diaz. Tuy nhi??n H??n Qu???c th??? hi???n m??nh l?? ?????i b??ng m???nh h??n khi n??ng t??? s??? l??n 2 ??? 1 ??? ph??t 58.\n\nD?? sau ???? r???t c??? g???ng, Colombia v???n ph???i ng???m ng??i thua tr???n. ????y l?? th???t b???i th??? 2 li??n ti???p c???a ?????i m???nh Nam M??? n??y tr?????c ?????i di???n ch??u ??. Tr?????c ???? v??o th??ng 11/2017, Colombia c??ng b??? H??n Qu???c h??? g???c v???i t??? s??? 2 -1.\n<div id=\"attachment_227583\" class=\"wp-caption aligncenter\">\n\n<img class=\"size-full wp-image-227583\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/03/ch%C3%A2u-%C3%81-b%C3%B3n-h%C3%A0nh-Nam-M%E1%BB%B9-e1553660111457.jpg\" alt=\"Nakajima Shoya ghi b??n th???ng duy nh???t v??o l?????i Bolivia\" width=\"700\" height=\"562\" />\n<p class=\"wp-caption-text\">Nakajima Shoya ghi b??n th???ng duy nh???t v??o l?????i Bolivia</p>\n\n</div>\nTrong tr???n Nh???t B???n g???p Bolivia, ?????i di???n ch??u ?? ch??i t???t h??n v?? li??n t???c ??p s??n. Ng??i sao ?????t gi?? nh???t ch??u ?? Nakajima Shoya ???? ghi b??n th???ng quy???t ?????nh ??? ph??t 76.\n\nTr?????c ???? v??o th??ng 6/2018, Nh???t B???n c??ng th???ng ?????m Paraguay 4 ??? 2; H??? c??ng c???m h??a Brazil 0 ??? 0 v??o th??ng 7/2017.\n\nChi???n th???ng c???a nh???ng ?????i di???n ch??u ?? tr?????c c??c ?????i m???nh Nam M??? cho th???y tr??nh ????? b??ng ???? ch??u l???c ??ang v????n l??n m???nh m??? h??n bao gi??? h???t.","Nh???t ??? H??n b??n h??nh cho Nam M???, ch??u ?? v????n l??n m???nh m???","","publish","open","open","","nhat-han-bon-hanh-cho-nam-my-chau-a-vuon-len-manh-me","","","2019-03-28 23:19:29","2019-03-28 16:19:29","","0","https://tppone.com/demo/bongda/?p=103","0","post","","0"),
("104","1","2019-03-28 22:41:43","2019-03-28 15:41:43","","post16","","inherit","open","closed","","post16","","","2019-03-28 22:41:43","2019-03-28 15:41:43","","103","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post16.jpg","0","attachment","image/jpeg","0"),
("106","1","2019-03-28 21:42:36","2019-03-28 14:42:36","<h2>?????ng ch?? Vi???t Nam, ch??nh m???t ????????i gia ch??u ????? t???ng l???y v?? theo c??ch kh??ng kh??c bi???t</h2>\n<p class=\"summary-block\"><strong>??T Vi???t Nam ph???i ch??? t???i t???n ph??t 90+8 c???a tr???n ?????u Lebanon vs Tri???u Ti??n ????m qua m???i bi???t ch???c ???????c t???m v?? v??o v??ng 1/8 c???a m??nh, v?? vi???c ch??ng ta ??i ti???p b???ng ch??? s??? fair-play l???i khi???n m???t s??? k??? kh??ng ph???c, m???t s??? ng?????i ti???c nu???i cho?? Lebanon. Nh??ng, ????u ph???i Vi???t Nam l?? ?????i ?????u ti??n l???y v?? theo ch??? s??? n??y, h??y ?????n v???i m???t ????????i gia ch??u ????? t???ng ki???n ??TQG x???p h???ng 1 th??? gi???i tr??n BXH l?? B??? ph???i ??i??u ?????ng.</strong></p>\nS???m h??? Yemen 2-0 nh??ng ??T Vi???t Nam v???n ph???i ?????i t???i h???t lo???t tr???n h??? m??n c??c b???ng E v?? F ????? x??c ?????nh c?? h???i ??i ti???p. Cu???c chi???n di???n ra r???t quy???t li???t v?? k???ch t??nh khi c??? Oman v?? Lebanon ?????u th??? hi???n tinh th???n qu???t kh???i.\n\n<img class=\"aligncenter size-full wp-image-219666\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/01/Vietnam-15.jpg\" alt=\"\" width=\"500\" height=\"348\" />\n\nK???ch b???n th?? v??? nh???t ???? x???y ra khi Lebanon v?????t qua Tri???u Ti??n v???i t??? s??? 4-1, qua ???? c??n b???ng ??i???m s???, hi???u s??? b??n th???ng/b???i v?? s??? b??n th???ng ghi ???????c v???i ??T Vi???t Nam. K???t qu???, AFC bu???c ph???i c??n c??? v??o ??i???m s??? Fair-play ????? x??c ?????nh ?????i x???p tr??n.\n\nDo ch??? nh???n 5 th??? v??ng (??t h??n 2 th??? so v???i Lebanon) n??n ??T Vi???t Nam ???? c?? v?? d??? v??ng 1/8 Asian Cup 2019. C??i k???t ngh???t th??? n??y khi???n ni???m vui c???a NHM b??ng ???? Vi???t Nam th??m v??? ??a sau th???i gian d??i n??n th??? ch??? ?????i v?? lo ??u.\n\nVi???c ph??n ?????nh th??? h???ng b???ng ch??? s??? Fair-play kh??ng h??? m???i l???. Kh??ng ch??? AFC m?? FIFA hay UEFA c??ng c??n c??? con s??? n??y ????? x??c ?????nh trong tr?????ng h???p c???n thi???t.\n\n??? VCK World Cup 2018, ??T Nh???t B???n c??ng nh??? ch??? s??? Fair-play ????? v?????t qua v??ng ?????u b???ng. H??? k???t th??c v??ng b???ng v???i 4 ??i???m v?? hi???u s??? b??n th???ng/b???i l?? 4/4 (ngang b???ng Senegal). Nh??ng trong 3 tr???n v??ng b???ng, Nh???t B???n ch??? nh???n 4 th??? v??ng, c??n Senegal nh???n 6 th???. V?? v???y, ?????i b??ng x??? s??? m???t tr???i m???c ???????c x???p tr??n v?? ??o???t v?? ??i ti???p.\n\n<img class=\"aligncenter size-full wp-image-219667\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/01/Japan.jpg\" alt=\"\" width=\"500\" height=\"342\" />\n\nC?? kh??c l?? Nh???t B???n ??o???t v?? ch??nh th???c d??? v??ng 1/8, c??n Vi???t Nam ph???i tranh v?? v???t cho c??c ?????i h???ng 3 c?? th??nh t??ch t???t nh???t.\n\nNh??n chung, vi???c c??c ?????i b??ng c?? ??i???m s??? v?? hi???u s??? b??n th???ng/b???i tr??ng kh???p l?? r???t hi???m. Ti??u ch?? Fair-play d?? ???????c FIFA v?? c??c t??? ch???c l???a ch???n nh??ng ??t khi ???????c s??? d???ng.\n\n????m qua, n???u Lebanon th???ng Tri???u Ti??n 4-1 v?? kh??ng nh???n th??m th??? v??ng n??o, h??? s??? ngang b???ng Vi???t Nam ??? m???i th???ng k??. Khi ????, AFC bu???c ph???i b???c th??m ????? x??c ?????nh ?????i ??i ti???p.\n\ntheo??<em><strong>Bongdaso</strong></em>\n\n&nbsp;\n<h2>XEM TH??M C??C TIN HOT KH??C:</h2>\n&nbsp;\n\n<strong>C???u th???, BHL M.U ???b??? phi???u??? cho Solskjaer.</strong>??Theo Daily Mail, BHL ?????c bi???t c??c c???u th??? Man United ???? ?????ng t??nh y??u c???u BL?? Qu??? ????? b??? nhi???m h???n Solskjaer l??m HLV tr?????ng sau m??a 2018/19.\n\n<img class=\"aligncenter size-full wp-image-219658\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/01/Solkjaer.jpg\" alt=\"\" width=\"644\" height=\"449\" />\n\n<strong>Valverde bi???t r?? Chumi b??? treo gi??.</strong>??HLV Valverde kh???ng ?????nh, ??ng bi???t r?? Chumi b??? treo gi?? ??? La Liga v?? gi???i h???ng 2 TBN nh??ng kh??ng ngh?? h???u v??? n??y b??? c???m ??? C??p nh?? Vua n??n ???? tung anh ra s??n ??? tr???n l?????t ??i g???p Levante. Barca ?????ng tr?????c nguy c?? b??? lo???i kh???i C??p nh?? Vua v?? s??? d???ng Chumi tr??i lu???t (treo gi??).\n\n<strong>Rakitic hy v???ng Barca kh??ng b??? lo???i.</strong>??Rakitic kh???ng ?????nh anh v?? ?????ng ?????i mu???n v?? ?????ch C??p nh?? Vua m??a n??y v?? tin r???ng ?????i b??ng x??? Catalan s??? kh??ng b??? lo???i v?? v??? Chumi.\n\n<strong>???Real Madrid lu??n trong tim t??i???</strong>. Th??? m??n Kiko Casilla ???? g???i l???i c???m ??n Real Madrid sau khi r???i Bernabeu ?????n Anh kho??c ??o Leeds United.\n\n<strong>Liverpool ?????y Lazar Markovic ??i.</strong>??T??? Daily Mail cho bi???t, The Kop ??ang t??m m???i c??ch b??n Lazar Markovic ??? k??? chuy???n nh?????ng m??a ????ng 2019. Hi???n h???u v??? Serbia ??ang kho??c ??o Anderlecht theo d???ng cho m?????n t??? Anfield.\n\n<img class=\"aligncenter size-full wp-image-219659\" src=\"https://cauthu.com.vn/wp-content/uploads/2019/01/Markovic.jpg\" alt=\"\" width=\"634\" height=\"423\" />\n\n<strong>Real Madrid chi 50 tri???u cho Eder Militao.</strong>??AS kh???ng ?????nh, Real Madrid ??ang ????m ph??n chi??u m??? h???u v??? Brazil c???a Porto. ?????i b??ng ch??? s??n Bernabeu ch???p nh???n chi 50 tri???u euro ????? gi???i ph??ng h???p ?????ng cho ??der Militao.\n\n<strong>Sport bu???c t???i b??o th??n Real Madrid.</strong>??Sport, t??? b??o th??n Barcelona ???? c??ng k??ch h??ng lo???t ph????ng ti???n truy???n th??ng th??n Real Madrid ???? r?? r??? th??ng tin v??? Barca s??? d???ng c???u th??? b??? treo gi?? Chumi v?? kh??ng mu???n CLB x??? Catalan v?? ?????ch C??p nh?? Vua.\n\n<strong>Inter tr??i Icardi gi?? 250 tri???u euro.</strong>??AS cho hay, Inter ??ang ????m ph??n gia h???n H??, t??ng l????ng cho Icardi ?????ng th???i c??i ??i???u kho???n ph?? v??? l??n ?????n 250 tri???u euro.\n\n<strong>2 l?? do Higuain s??? th???t b???i t???i Chelsea.</strong>??Chuy??n gia c???a Sky Sports, Paul Merson cho r???ng Gonzalo Higuain s??? th???t b???i n???u chuy???n ?????n Chelsea v?? 2 l?? do: ti???n ?????o n??y ???? gi?? (31 tu???i) v?? ch??a t???ng c?? kinh nghi???m thi ?????u t???i Premier League.\n\n<strong>Dyche nh???c nh??? Burnley.</strong>??HLV Sean Dyche ???? l??n ti???ng nh???c nh??? Burnley hi???u r?? v??? tr?? c???a CLB l?? ??? ????u. Theo ??ng, Burnley v???n n???m trong top c??c ?????i ph???i ??ua tr??? h???ng m???i m??a t???i Premier League cho d?? gi??nh v?? d??? Europa League m??a tr?????c.\n\nTroy Deeney b??? ph???t ti???n. ?????i tr?????ng Watford, Troy Deeney ???? b??? FA ph???t 20 ngh??n b???ng v?? nh???ng b??nh lu???n kh??ng ????ng m???c v??? tr???ng t??i David Coote sau tr???n h??a 3-3 v???i Bournemouth.\n\n<strong>Rodgers b??c tin v??? Leicester.</strong>??HLV Celtic, Brendan Rodgers kh???ng ?????nh ??ng ch??? t???p trung v??o c??ng vi???c hi???n t???i v?? kh??ng quan t??m g?? ?????n c??c tin ?????n v??? Leicester City.\n\n<strong>Gattuso b??? c???m 1 tr???n.</strong>??HLV AC Milan, Gennaro Gattuso ???? b??? L??B?? Italia c???m ch??? ?????o 1 tr???n v?? h??nh vi kh??ng ?????p trong tr???n tranh si??u c??p v???i Juventus v???a qua.\n\n<strong>Lautaro Martinez kh??ng r???i Inter.</strong>??Ng?????i ?????i di???n c???a Lautaro Martinez, Beto Yaque kh???ng ?????nh ti???n ?????o tr??? n??y s??? kh??ng r???i Inter Milan b???t ch???p c?? h???i ra s??n h???n ch???.\n\n<strong>Immobile kh??ng th??? t??? ch???i Napoli.</strong>??Ng?????i ?????i di???n c???a Ciro Immobile, Mario Sommella th???a nh???n ti???n ?????o n??y s??? kh??ng th??? t??? ch???i n???u Napoli ????a ra ????? ngh???. L?? do v?? Immobile sinh ra ??? Napoli v?? lu??n hy v???ng ???????c tr??? l???i qu?? h????ng thi ?????u.\n\n<strong>Wijnaldum t??? tin v?? ?????ch.</strong>??Ti???n v??? ng?????i H?? Lan, Wijnaldum kh???ng ?????nh c??c c???u th??? Liverpool c?? ni???m tin r???t l???n r???ng h??? s??? v?? ?????ch Premier League m??a n??y. Hi???n t???i, Liverpool ??ang nhi???u h??n Man City 4 ??i???m sau 22 v??ng ?????u.","?????ng ch?? Vi???t Nam, ch??nh m???t ????????i gia ch??u ????? t???ng l???y v?? theo c??ch kh??ng kh??c bi???t","","publish","open","open","","dung-che-viet-nam-chinh-mot-dai-gia-chau-a-tung-lay-ve-theo-cach-khong-khac-biet","","","2019-03-28 23:19:21","2019-03-28 16:19:21","","0","https://tppone.com/demo/bongda/?p=106","0","post","","0"),
("107","1","2019-03-28 22:42:33","2019-03-28 15:42:33","","post19","","inherit","open","closed","","post19","","","2019-03-28 22:42:33","2019-03-28 15:42:33","","106","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/post19.jpg","0","attachment","image/jpeg","0"),
("255","1","2019-03-29 00:33:04","2019-03-28 17:33:04","","300x2-adx5c9250dcba9f2","","inherit","open","closed","","300x2-adx5c9250dcba9f2","","","2019-03-29 00:33:04","2019-03-28 17:33:04","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/300x2-adx5c9250dcba9f2.jpg","0","attachment","image/jpeg","0"),
("256","1","2019-03-29 00:33:58","2019-03-28 17:33:58","","banner1","","inherit","open","closed","","banner1","","","2019-03-29 00:33:58","2019-03-28 17:33:58","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/banner1.jpg","0","attachment","image/jpeg","0"),
("276","1","2019-03-29 00:47:11","2019-03-28 17:47:11","[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" ids=\"85,88,91,94,70,67,100,106,103\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"60%\" image_width=\"35\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" class=\"bai-viet-noi-bat\"]","B??i vi???t n???i b???t","","publish","closed","closed","","bai-viet-noi-bat","","","2019-03-29 00:51:20","2019-03-28 17:51:20","","0","https://tppone.com/demo/bongda/?post_type=blocks&#038;p=276","0","blocks","","0"),
("287","1","2019-03-29 00:54:37","2019-03-28 17:54:37","[row col_bg=\"rgb(233, 233, 233)\" class=\"footer-section\"]\n\n[col span__sm=\"12\"]\n\n<ul id=\"sub-menu\" class=\"nav navbar-nav\">\n<li><a title=\"Cauthu.com.vn\" href=\"https://Webdemo.com\">Cauthu.com.vn</a></li>\n<li><a title=\"K???t Qu??? B??ng ????\" href=\"https://Webdemo.com\">K???t Qu??? B??ng ????</a></li>\n<li><a title=\"L???ch Thi ?????u B??ng ????\" href=\"https://Webdemo.com\">L???ch Thi ?????u B??ng ????</a></li>\n<li><a title=\"Premier League\" href=\"https://Webdemo.com\">Premier League</a></li>\n<li><a title=\"Champions League\" href=\"https://Webdemo.com\">Champions League</a></li>\n<li><a title=\"Europa League\" href=\"https://Webdemo.com\">Europa League</a></li>\n<li><a title=\"Coppa Italia\" href=\"https://Webdemo.com\">Coppa Italia</a></li>\n<li><a title=\"Ligue 1\" href=\"https://Webdemo.com\">Ligue 1</a></li>\n<li><a title=\"Serie A\" href=\"https://Webdemo.com\">Serie A</a></li>\n<li><a title=\"World Cup 2018\" href=\"https://Webdemo.com\">World Cup 2018</a></li>\n<li><a title=\"C??p nh?? Vua\" href=\"https://Webdemo.com\">C??p nh?? Vua</a></li>\n<li><a title=\"La Liga\" href=\"https://Webdemo.com\">La Liga</a></li>\n<li><a title=\"V-League\" href=\"https://Webdemo.com\">V-League</a></li>\n<li><a title=\"Bundesliga\" href=\"https://Webdemo.com\">Bundesliga</a></li>\n<li><a title=\"Video B??n Th???ng\" href=\"https://Webdemo.com\">Video B??n Th???ng</a></li>\n<li><a title=\"Cristiano Ronaldo\" href=\"https://Webdemo.com\">Cristiano Ronaldo</a></li>\n<li><a title=\"Lionel Messi\" href=\"https://Webdemo.com\">Lionel Messi</a></li>\n<li><a title=\"Manchester United\" href=\"https://Webdemo.com\">Manchester United</a></li>\n<li><a title=\"Chelsea\" href=\"https://Webdemo.com\">Chelsea</a></li>\n<li><a title=\"C??ng Ph?????ng\" href=\"https://Webdemo.com\">C??ng Ph?????ng</a></li>\n<li><a title=\"Xu??n Tr?????ng\" href=\"https://Webdemo.com\">Xu??n Tr?????ng</a></li>\n<li><a title=\"Tr???c Ti???p B??ng ????\" href=\"https://Webdemo.com\">Tr???c Ti???p B??ng ????</a></li>\n<li><a title=\"Ph???n m???m xem tr???c ti???p b??ng ????\" href=\"https://Webdemo.com\">Ph???n m???m xem tr???c ti???p b??ng ????</a></li>\n<li><a title=\"Real Madrid\" href=\"https://Webdemo.com\">Real Madrid</a></li>\n<li><a title=\"Barcelona\" href=\"https://Webdemo.com\">Barcelona</a></li>\n<li><a title=\"Arsenal\" href=\"https://Webdemo.com\">Arsenal</a></li>\n<li><a title=\"B??ng ????\" href=\"https://Webdemo.com\">B??ng ????</a></li>\n<li><a title=\"Link Sopcast\" href=\"https://Webdemo.com\">Link Sopcast</a></li>\n</ul>\n\n[/col]\n[col span=\"6\" span__sm=\"12\" align=\"center\" bg_color=\"rgb(233, 233, 233)\"]\n\n[featured_box img=\"313\" img_width=\"182\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 85%; color: #000000;\">?????i t??c truy???n th??ng</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" align=\"center\" bg_color=\"rgb(233, 233, 233)\"]\n\n[gap height=\"24px\"]\n\n<p style=\"text-align: center;\"><span style=\"font-size: 85%; color: #000000;\">?????a ch???: S??? 29 ng?? 18 L????ng Ng???c Quy???n, V??n Qu??n, H?? ????ng, H?? N???i</span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: 85%; color: #000000;\">??i???n tho???i:  - </span></p>\n<p style=\"text-align: center;\"><span style=\"font-size: 85%; color: #000000;\">Email: webdemo@gmail.com</span></p>\n\n[/col]\n\n[/row]","Footer","","publish","closed","closed","","footer","","","2019-03-29 01:14:20","2019-03-28 18:14:20","","0","https://tppone.com/demo/bongda/?post_type=blocks&#038;p=287","0","blocks","","0"),
("300","1","2019-03-29 01:04:35","2019-03-28 18:04:35"," ","","","publish","closed","closed","","300","","","2019-03-29 01:04:35","2019-03-28 18:04:35","","0","https://tppone.com/demo/bongda/?p=300","1","nav_menu_item","","0"),
("301","1","2019-03-29 01:04:35","2019-03-28 18:04:35","","Gi???i thi???u","","publish","closed","closed","","gioi-thieu","","","2019-03-29 01:04:35","2019-03-28 18:04:35","","0","https://tppone.com/demo/bongda/?p=301","2","nav_menu_item","","0"),
("302","1","2019-03-29 01:04:35","2019-03-28 18:04:35","","Li??n h???","","publish","closed","closed","","lien-he","","","2019-03-29 01:04:35","2019-03-28 18:04:35","","0","https://tppone.com/demo/bongda/?p=302","4","nav_menu_item","","0"),
("303","1","2019-03-29 01:04:35","2019-03-28 18:04:35","","??i???u kho???n s??? d???ng","","publish","closed","closed","","dieu-khoan-su-dung","","","2019-03-29 01:04:35","2019-03-28 18:04:35","","0","https://tppone.com/demo/bongda/?p=303","3","nav_menu_item","","0"),
("313","1","2019-03-29 01:09:50","2019-03-28 18:09:50","","logo_baophapluat","","inherit","open","closed","","logo_baophapluat","","","2019-03-29 01:09:50","2019-03-28 18:09:50","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/logo_baophapluat.png","0","attachment","image/png","0"),
("395","1","2019-03-29 09:39:24","2019-03-29 02:39:24","[row label=\"Video n???i b???t\" class=\"video-noi-bat\"]\n\n[col span__sm=\"12\"]\n\n[title text=\"Video n???i b???t\" color=\"rgb(0, 0, 0)\" icon=\"icon-youtube\" link_text=\"+ Xem t???t c???\" link=\"/video/\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" cat=\"7\" posts=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"56.25%\" image_width=\"74\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" text_size=\"xlarge\" class=\"video-to\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"small\" columns__md=\"1\" cat=\"7\" posts=\"4\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"66%\" image_size=\"original\" text_align=\"left\" class=\"list-ngang\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Tin m???i h??n\" class=\"tin-moi-hon\"]\n\n[col span__sm=\"12\"]\n\n[title text=\"Tin m???i h??n\" color=\"rgb(0, 0, 0)\" icon=\"icon-twitter\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot6\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" show_date=\"false\" excerpt_length=\"13\" comments=\"false\" image_height=\"90%\" image_width=\"30\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-list\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot6\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" offset=\"8\" show_date=\"false\" excerpt_length=\"13\" comments=\"false\" image_height=\"90%\" image_width=\"30\" image_size=\"original\" text_pos=\"middle\" text_align=\"left\" class=\"vertical-list\"]\n\n\n[/col]\n\n[/row]","Video n???i b???t","","publish","closed","closed","","video-noi-bat","","","2019-03-29 10:05:29","2019-03-29 03:05:29","","0","https://tppone.com/demo/bongda/?post_type=blocks&#038;p=395","0","blocks","","0"),
("409","1","2019-03-29 09:49:46","2019-03-29 02:49:46","","video","","inherit","open","closed","","video","","","2019-03-29 09:49:46","2019-03-29 02:49:46","","0","https://tppone.com/demo/bongda/wp-content/uploads/2019/03/video.png","0","attachment","image/png","0"),
("449","1","2019-03-29 10:30:03","2019-03-29 03:30:03","[row label=\"?????c nhi???u nh???t\" class=\"doc-nhieu-nhat-block\"]\n\n[col span__sm=\"12\"]\n\n<h3>?????c nhi???u nh???t</h3>\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"56.25%\" image_size=\"original\" text_align=\"left\" class=\"big-post\"]\n\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" offset=\"1\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\" class=\"list-post\"]\n\n\n[/col]\n\n[/row]","?????c nhi???u nh???t","","publish","closed","closed","","doc-nhieu-nhat","","","2019-03-29 11:13:56","2019-03-29 04:13:56","","0","https://tppone.com/demo/bongda/?post_type=blocks&#038;p=449","0","blocks","","0"),
("638","1","2019-05-06 16:04:19","2019-05-06 09:04:19","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:04:19\"\n    }\n}","","","trash","closed","closed","","a8aad88b-2f89-49ac-a95c-2f10a5a61c0a","","","2019-05-06 16:04:19","2019-05-06 09:04:19","","0","https://tppone.com/demo/bongda/a8aad88b-2f89-49ac-a95c-2f10a5a61c0a/","0","customize_changeset","","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("35","11","0"),
("36","11","0"),
("37","11","0"),
("38","11","0"),
("39","11","0"),
("40","11","0"),
("41","11","0"),
("42","11","0"),
("43","11","0"),
("44","11","0"),
("59","11","0"),
("61","1","0"),
("61","2","0"),
("61","3","0"),
("61","4","0"),
("61","12","0"),
("61","13","0"),
("64","1","0"),
("64","3","0"),
("64","8","0"),
("64","14","0"),
("67","2","0"),
("67","5","0"),
("67","7","0"),
("67","15","0"),
("67","23","0"),
("70","1","0"),
("70","2","0"),
("70","4","0"),
("70","9","0"),
("70","16","0"),
("73","1","0"),
("73","2","0"),
("73","3","0"),
("73","5","0"),
("73","6","0"),
("73","8","0"),
("73","17","0"),
("76","1","0"),
("76","2","0"),
("76","3","0"),
("76","8","0"),
("76","10","0"),
("76","18","0"),
("76","52","0"),
("79","1","0"),
("79","2","0"),
("79","4","0"),
("79","19","0"),
("82","5","0"),
("82","8","0"),
("82","17","0"),
("85","1","0"),
("85","2","0"),
("85","4","0"),
("85","8","0"),
("85","10","0"),
("85","16","0"),
("88","2","0"),
("88","3","0"),
("88","4","0"),
("88","5","0"),
("88","7","0"),
("88","8","0"),
("88","10","0"),
("88","20","0"),
("88","21","0"),
("88","41","0"),
("91","1","0"),
("91","2","0"),
("91","3","0"),
("91","4","0"),
("91","8","0"),
("91","9","0"),
("91","22","0"),
("94","1","0"),
("94","2","0"),
("94","4","0"),
("94","6","0"),
("94","9","0"),
("94","17","0"),
("97","4","0"),
("97","7","0"),
("97","23","0"),
("100","1","0"),
("100","5","0"),
("100","7","0"),
("100","23","0"),
("100","24","0"),
("103","2","0"),
("103","7","0"),
("103","23","0"),
("103","25","0"),
("106","1","0"),
("106","7","0"),
("106","23","0"),
("300","26","0"),
("301","26","0"),
("302","26","0"),
("303","26","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_taxonomy VALUES
("1","1","category","","0","11"),
("2","2","category","","0","11"),
("3","3","category","","0","6"),
("4","4","category","","0","8"),
("5","5","category","","0","5"),
("6","6","category","","0","2"),
("7","7","category","","0","6"),
("8","8","category","","0","7"),
("9","9","category","","0","3"),
("10","10","category","","0","3"),
("11","11","nav_menu","","0","11"),
("12","12","post_tag","","0","1"),
("13","13","post_tag","","0","1"),
("14","14","post_tag","","0","1"),
("15","15","post_tag","","0","1"),
("16","16","post_tag","","0","2"),
("17","17","post_tag","","0","3"),
("18","18","post_tag","","0","1"),
("19","19","post_tag","","0","1"),
("20","20","post_tag","","0","1"),
("21","21","post_tag","","0","1"),
("22","22","post_tag","","0","1"),
("23","23","post_format","","0","5"),
("24","24","post_tag","","0","1"),
("25","25","post_tag","","0","1"),
("26","26","nav_menu","","0","4"),
("27","27","category","","1","0"),
("28","28","category","","1","0"),
("29","29","category","","1","0"),
("30","30","category","","1","0"),
("31","31","category","","1","0"),
("32","32","category","","1","0"),
("33","33","category","","1","0"),
("34","34","category","","2","0"),
("35","35","category","","2","0"),
("36","36","category","","2","0"),
("37","37","category","","2","0"),
("38","38","category","","3","0"),
("39","39","category","","3","0"),
("40","40","category","","3","0"),
("41","41","category","","4","1"),
("42","42","category","","4","0"),
("43","43","category","","5","0"),
("44","44","category","","5","0"),
("45","45","category","","5","0"),
("46","46","category","","5","0"),
("47","47","category","","6","0"),
("48","48","category","","6","0"),
("49","49","category","","6","0"),
("50","50","category","","6","0"),
("51","51","category","","7","0"),
("52","52","category","","7","1"),
("53","53","category","","7","0"),
("54","54","category","","7","0"),
("55","55","category","","7","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_terms VALUES
("1","Vi???t Nam","viet-nam","0"),
("2","Anh","anh","0"),
("3","T??y Ban Nha","tay-ban-nha","0"),
("4","?????c","duc","0"),
("5","Ch??u ??u","chau-au","0"),
("6","H???u tr?????ng","hau-truong","0"),
("7","Video","video","0"),
("8","K???t qu???","ket-qua","0"),
("9","E-sport","e-sport","0"),
("10","Sopcast","sopcast","0"),
("11","Main-menu","main-menu","0"),
("12","B??ng ????","bong-da","0"),
("13","Tin b??ng ????","tin-bong-da","0"),
("14","B??ng ???? Vi???t Nam","bong-da-viet-nam","0"),
("15","B??ng ???? ngo???i h???ng anh","bong-da-ngoai-hang-anh","0"),
("16","Th??i Lan","thai-lan","0"),
("17","ch??u ??u","chau-au","0"),
("18","B??ng ???? ch??u ??u","bong-da-chau-au","0"),
("19","b??ng ???? n???","bong-da-nu","0"),
("20","trung qu???c","trung-quoc","0"),
("21","vi???t nam","viet-nam","0"),
("22","gi???i ch??u ??u m??? r???ng","giai-chau-au-mo-rong","0"),
("23","post-format-video","post-format-video","0"),
("24","h??n qu???c","han-quoc","0"),
("25","nh???t b???n","nhat-ban","0"),
("26","Bottom menu","bottom-menu","0"),
("27","Asian Cup 2019","asian-cup-2019","0"),
("28","B??ng ???? n???","bong-da-nu","0"),
("29","H???ng nh???t","hang-nhat","0"),
("30","SPL","spl","0"),
("31","Tuy???n Omlimpic","tuyen-omlimpic","0"),
("32","V-League","v-league","0"),
("33","?????i tuy???n Qu???c gia","doi-tuyen-quoc-gia","0"),
("34","C??p FA","cup-fa","0"),
("35","C??p Li??n ??o??n","cup-lien-doan","0"),
("36","Premier League","premier-league","0"),
("37","?????i tuy???n Anh","doi-tuyen-anh","0"),
("38","C??p nh?? Vua","cup-nha-vua","0"),
("39","La Liga","la-liga","0"),
("40","?????i tuy???n T??y Ban Nha","doi-tuyen-tay-ban-nha","0"),
("41","C??p QG ?????c","cup-qg-duc","0"),
("42","?????i tuy???n ?????c","doi-tuyen-duc","0"),
("43","Champion League","champion-league","0"),
("44","Euro 2016","euro-2016","0"),
("45","Europa League","europa-league","0"),
("46","Nations League","nations-league","0"),
("47","HOT Fan","hot-fan","0"),
("48","Qu???c t???","quoc-te","0"),
("49","Vi???t Nam","viet-nam-hau-truong","0"),
("50","WAGS","wags","0"),
("51","B??n th???ng","ban-thang","0"),
("52","T??nh hu???ng","tinh-huong","0"),
("53","H??i h?????c","hai-huoc","0"),
("54","C???m ?????ng","cam-dong","0"),
("55","Tr???c ti???p","truc-tiep","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,text_widget_custom_html,theme_editor_notice"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:8:{s:64:\"3e3536b5ee9410a8fb51f82760ae2d089162fa49832abb9c875f726b2aaf1b16\";a:4:{s:10:\"expiration\";i:1557482200;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557309400;}s:64:\"8f281e68c09cd48532d0fcf659639c4aae0dda7dd422afaa0dfec16772bc63e2\";a:4:{s:10:\"expiration\";i:1557615998;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443198;}s:64:\"5caab5b3136cc19729b69a7c8e94bc495ffb69f3a44cd42ad1d965d308385f70\";a:4:{s:10:\"expiration\";i:1557619615;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557446815;}s:64:\"5ca4f4454f9afca55233d80a5df6aba14d4e4b8934f94d094286243147056340\";a:4:{s:10:\"expiration\";i:1557625516;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452716;}s:64:\"ed99e610f6ac39d9c14667d48f31b2c4c514ed9c13863b6622054c0b124ef9e7\";a:4:{s:10:\"expiration\";i:1557627799;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557454999;}s:64:\"dc58fbf1c62207dda5ea268a3a1342481f05034c9d69c72d6e54c7cf94828262\";a:4:{s:10:\"expiration\";i:1557632320;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557459520;}s:64:\"e279f6a314692b9bb06971859b5a588efd87a1fcdc85a87b3f5a85341b0cf4d3\";a:4:{s:10:\"expiration\";i:1557635959;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557463159;}s:64:\"d03c3cd7200f6e220fb939738414c518fd67016bef4335b43402b47cd83f72dc\";a:4:{s:10:\"expiration\";i:1557648077;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557475277;}}"),
("17","1","gdd_dashboard_quick_press_last_post_id","637"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","gdd_user-settings-time","1557446811"),
("22","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("23","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("24","1","nav_menu_recently_edited","26"),
("25","1","closedpostboxes_page","a:0:{}"),
("26","1","metaboxhidden_page","a:0:{}"),
("27","1","bd_yoast_notifications","a:5:{i:0;a:2:{s:7:\"message\";s:597:\"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 100%, it\'s not been shipped with the plugin yet. You can help! Register at <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Register now &raquo;</a></p><a class=\"button\" href=\"/wp-admin/admin.php?page=wpseo_titles&#038;settings-updated=true&#038;remove_i18n_promo=1\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:891:\"Ch??ng t??i nh???n th???y b???n ???? s??? d???ng Yoast SEO ???????c m???t th???i gian; ch??ng t??i mong b???n y??u th??ch n??! Ch??ng t??i s??? v?? c??ng c???m ?????ng n???u b???n c?? th??? <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=37\">cho ch??ng t??i m???t ????nh gi?? 5 sao tr??n WordPress.org</a>!\n\nN???u b???n g???p ph???i s??? c???, <a href=\"https://yoa.st/bugreport?php_version=7.2.17&platform=wordpress&platform_version=5.1.1&software=premium&software_version=8.4&role=administrator&days_active=37\">vui l??ng g???i b??o c??o l???i</a> v?? ch??ng t??i s??? c??? h???t s???c ????? gi??p b???n.\n\n\n\n<a class=\"button\" href=\"https://bizhostvn.com/w/bongda/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Kh??ng hi???n th??? nh???ng th??ng b??o n??y n???a</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:241:\"?????ng b??? qua l???i m??y t??m ki???m thu th???p th??ng tin trang web c???a b???n:  <a href=\"https://bizhostvn.com/w/bongda/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> k???t n???i v???i Google Search Console ??? ????y </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:258:\"<strong>L???i SEO nghi??m tr???ng: B???n ??ang ch???n truy c???p t???i robots.</strong> B???n ph???i <a href=\"https://bizhostvn.com/w/bongda/wp-admin/options-reading.php\">t???i m???c ?????c</a> v?? b??? ????nh d???u T????ng t??c v???i c??ng c??? t??m ki???m.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:138:\"Yoast SEO x??c ?????nh b???n ??ang s??? d???ng phi??n b???n 9.1 c???a Yoast SEO Premium, h??y c???p nh???t l??n phi??n b???n m???i nh???t.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:49:\"wpseo-outdated-yoast-seo-plugin-yoast-seo-premium\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}"),
("29","1","duplicator_pro_created_format","1");




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
("1","admin","$P$BneWshTr5VWInwU1WsO0j6WhVCAezG/","admin","demobz@gmail.com","","2019-03-26 03:04:45","","0","admin");




CREATE TABLE `gdd_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_links VALUES
("186","/video/","395","0","internal"),
("187","https://bizhostvn.com/w/bongda/solskjaer-chinh-thuc-duoc-bo-nhiem-lam-hlv-truong-cua-man-united/","395","67","internal"),
("188","https://bizhostvn.com/w/bongda/dung-che-viet-nam-chinh-mot-dai-gia-chau-a-tung-lay-ve-theo-cach-khong-khac-biet/","395","106","internal"),
("189","https://bizhostvn.com/w/bongda/nhat-han-bon-hanh-cho-nam-my-chau-a-vuon-len-manh-me/","395","103","internal"),
("190","https://bizhostvn.com/w/bongda/son-heung-min-to%cc%89a-sang-giup-han-quoc-danh-bai-colombia/","395","100","internal"),
("191","https://bizhostvn.com/w/bongda/brazil-nhoc-nhan-thang-ch-czech-nho-cu-dup-cua-gabriel-jesus/","395","97","internal"),
("192","https://bizhostvn.com/w/bongda/bayern-munich-chinh-thuc-so-huu-bom-tan-la-nha-vo-dich-world-cup/","395","94","internal"),
("193","https://bizhostvn.com/w/bongda/hanh-vi-phat-200k-xuat-hien-ngay-tren-song-truyen-hinh-my/","395","91","internal"),
("194","https://bizhostvn.com/w/bongda/da-giao-huu-cau-thu-trung-quoc-dap-gay-chan-tien-ve-uzbekistan/","395","88","internal"),
("195","https://bizhostvn.com/w/bongda/fan-thai-lan-phan-ung-voi-tuyen-bo-cua-hlv-park-hang-seo/","395","85","internal"),
("196","https://bizhostvn.com/w/bongda/phil-neville-chi-ra-5-cai-ten-manchester-united-can-mua-trong-he-nay/","395","82","internal"),
("197","https://bizhostvn.com/w/bongda/hlv-mai-duc-chung-chot-danh-sach-dtqg-hot-girl-tran-thi-duyen-bi-loai/","395","79","internal"),
("198","https://bizhostvn.com/w/bongda/hlv-u23-thai-lan-che-chien-thuat-cua-hlv-park-hang-seo-binh-thuong-thoi/","395","76","internal"),
("199","https://bizhostvn.com/w/bongda/hlv-park-hang-seo-co-the-doi-dau-ban-cu-guus-hiddink/","395","73","internal"),
("200","https://bizhostvn.com/w/bongda/bao-thai-that-cay-dang-moi-giai-dau-gan-day-chung-ta-deu/","395","70","internal"),
("201","https://bizhostvn.com/w/bongda/solskjaer-chinh-thuc-duoc-bo-nhiem-lam-hlv-truong-cua-man-united/","395","67","internal"),
("202","https://bizhostvn.com/w/bongda/chinh-thuc-supachai-nhan-an-phat-cuc-nang-tu-afc-vi-hanh-vi-danh-dinh-trong/","395","64","internal"),
("203","https://bizhostvn.com/w/bongda/duc-chinh-tu-vi-minh-giong-nhu-lukaku-cua-man-united/","395","61","internal"),
("204","https://bizhostvn.com/w/bongda/dung-che-viet-nam-chinh-mot-dai-gia-chau-a-tung-lay-ve-theo-cach-khong-khac-biet/","395","106","internal"),
("205","https://bizhostvn.com/w/bongda/nhat-han-bon-hanh-cho-nam-my-chau-a-vuon-len-manh-me/","395","103","internal"),
("206","https://bizhostvn.com/w/bongda/son-heung-min-to%cc%89a-sang-giup-han-quoc-danh-bai-colombia/","395","100","internal"),
("207","https://bizhostvn.com/w/bongda/brazil-nhoc-nhan-thang-ch-czech-nho-cu-dup-cua-gabriel-jesus/","395","97","internal"),
("227","https://bizhostvn.com/w/bongda/bayern-munich-chinh-thuc-so-huu-bom-tan-la-nha-vo-dich-world-cup/","449","94","internal"),
("228","https://bizhostvn.com/w/bongda/bayern-munich-chinh-thuc-so-huu-bom-tan-la-nha-vo-dich-world-cup/","449","94","internal"),
("229","https://bizhostvn.com/w/bongda/bayern-munich-chinh-thuc-so-huu-bom-tan-la-nha-vo-dich-world-cup/","449","94","internal"),
("230","https://bizhostvn.com/w/bongda/hanh-vi-phat-200k-xuat-hien-ngay-tren-song-truyen-hinh-my/","449","91","internal"),
("231","https://bizhostvn.com/w/bongda/hanh-vi-phat-200k-xuat-hien-ngay-tren-song-truyen-hinh-my/","449","91","internal"),
("232","https://bizhostvn.com/w/bongda/hanh-vi-phat-200k-xuat-hien-ngay-tren-song-truyen-hinh-my/","449","91","internal"),
("233","https://bizhostvn.com/w/bongda/da-giao-huu-cau-thu-trung-quoc-dap-gay-chan-tien-ve-uzbekistan/","449","88","internal"),
("234","https://bizhostvn.com/w/bongda/da-giao-huu-cau-thu-trung-quoc-dap-gay-chan-tien-ve-uzbekistan/","449","88","internal"),
("235","https://bizhostvn.com/w/bongda/da-giao-huu-cau-thu-trung-quoc-dap-gay-chan-tien-ve-uzbekistan/","449","88","internal"),
("236","https://bizhostvn.com/w/bongda/fan-thai-lan-phan-ung-voi-tuyen-bo-cua-hlv-park-hang-seo/","449","85","internal"),
("237","https://bizhostvn.com/w/bongda/fan-thai-lan-phan-ung-voi-tuyen-bo-cua-hlv-park-hang-seo/","449","85","internal"),
("238","https://bizhostvn.com/w/bongda/fan-thai-lan-phan-ung-voi-tuyen-bo-cua-hlv-park-hang-seo/","449","85","internal"),
("239","https://bizhostvn.com/w/bongda/phil-neville-chi-ra-5-cai-ten-manchester-united-can-mua-trong-he-nay/","449","82","internal"),
("240","https://bizhostvn.com/w/bongda/phil-neville-chi-ra-5-cai-ten-manchester-united-can-mua-trong-he-nay/","449","82","internal"),
("241","https://bizhostvn.com/w/bongda/phil-neville-chi-ra-5-cai-ten-manchester-united-can-mua-trong-he-nay/","449","82","internal"),
("242","https://bizhostvn.com/w/bongda/hlv-mai-duc-chung-chot-danh-sach-dtqg-hot-girl-tran-thi-duyen-bi-loai/","449","79","internal"),
("243","https://bizhostvn.com/w/bongda/hlv-mai-duc-chung-chot-danh-sach-dtqg-hot-girl-tran-thi-duyen-bi-loai/","449","79","internal"),
("244","https://bizhostvn.com/w/bongda/hlv-mai-duc-chung-chot-danh-sach-dtqg-hot-girl-tran-thi-duyen-bi-loai/","449","79","internal"),
("245","https://bizhostvn.com/w/bongda/hlv-u23-thai-lan-che-chien-thuat-cua-hlv-park-hang-seo-binh-thuong-thoi/","449","76","internal"),
("246","https://bizhostvn.com/w/bongda/hlv-u23-thai-lan-che-chien-thuat-cua-hlv-park-hang-seo-binh-thuong-thoi/","449","76","internal"),
("247","https://bizhostvn.com/w/bongda/hlv-u23-thai-lan-che-chien-thuat-cua-hlv-park-hang-seo-binh-thuong-thoi/","449","76","internal"),
("248","https://bizhostvn.com/w/bongda/hlv-park-hang-seo-co-the-doi-dau-ban-cu-guus-hiddink/","449","73","internal"),
("249","https://bizhostvn.com/w/bongda/hlv-park-hang-seo-co-the-doi-dau-ban-cu-guus-hiddink/","449","73","internal"),
("250","https://bizhostvn.com/w/bongda/hlv-park-hang-seo-co-the-doi-dau-ban-cu-guus-hiddink/","449","73","internal"),
("251","https://bizhostvn.com/w/bongda/bao-thai-that-cay-dang-moi-giai-dau-gan-day-chung-ta-deu/","449","70","internal"),
("252","https://bizhostvn.com/w/bongda/bao-thai-that-cay-dang-moi-giai-dau-gan-day-chung-ta-deu/","449","70","internal"),
("253","https://bizhostvn.com/w/bongda/bao-thai-that-cay-dang-moi-giai-dau-gan-day-chung-ta-deu/","449","70","internal");




CREATE TABLE `gdd_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_yoast_seo_meta VALUES
("1","0","0"),
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
("20","0","0"),
("21","0","0"),
("23","0","0"),
("24","0","0"),
("25","0","0"),
("26","0","0"),
("27","0","0"),
("28","0","0"),
("29","0","0"),
("30","0","0"),
("31","0","0"),
("32","0","0"),
("33","0","0"),
("34","0","0"),
("45","0","0"),
("46","0","0"),
("47","0","0"),
("48","0","0"),
("50","0","0"),
("51","0","0"),
("53","0","0"),
("54","0","0"),
("55","0","0"),
("57","0","0"),
("58","0","0"),
("60","0","0"),
("61","0","1"),
("63","0","0"),
("64","0","1"),
("66","0","0"),
("67","0","2"),
("69","0","0"),
("70","0","4"),
("72","0","0"),
("73","0","4"),
("75","0","0"),
("76","0","4"),
("78","0","0"),
("79","0","4"),
("81","0","0"),
("82","0","4"),
("84","0","0"),
("85","0","4"),
("87","0","0"),
("88","0","4"),
("90","0","0"),
("91","0","4"),
("93","0","0"),
("94","0","4"),
("96","0","0"),
("97","0","2"),
("99","0","0"),
("100","0","2"),
("102","0","0"),
("103","0","2"),
("105","0","0"),
("106","0","2"),
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
("133","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("148","0","0"),
("149","0","0"),
("150","0","0"),
("151","0","0"),
("152","0","0"),
("153","0","0"),
("154","0","0"),
("155","0","0"),
("156","0","0"),
("157","0","0"),
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
("229","0","0"),
("230","0","0"),
("231","0","0"),
("232","0","0"),
("233","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("304","0","0"),
("305","0","0"),
("306","0","0"),
("307","0","0"),
("308","0","0"),
("309","0","0"),
("310","0","0"),
("311","0","0"),
("312","0","0"),
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
("343","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
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
("358","0","0"),
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
("395","22","0"),
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
("444","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("445","0","0"),
("446","0","0"),
("447","0","0"),
("448","0","0"),
("449","27","0"),
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
("544","0","0");
INSERT INTO gdd_yoast_seo_meta VALUES
("545","0","0"),
("546","0","0"),
("547","0","0"),
("548","0","0"),
("549","0","0"),
("550","0","0"),
("551","0","0"),
("552","0","0"),
("553","0","0"),
("554","0","0"),
("555","0","0"),
("556","0","0"),
("557","0","0"),
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
("577","0","0"),
("578","0","0"),
("579","0","0"),
("580","0","0"),
("581","0","0"),
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
("636","0","0");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;