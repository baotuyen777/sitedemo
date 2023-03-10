SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w47`
--




CREATE TABLE `gdd__commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__commentmeta VALUES
("1","2","rating","5"),
("2","2","verified","0"),
("3","3","rating","4"),
("4","3","verified","0"),
("5","4","rating","5"),
("6","4","verified","0"),
("7","5","rating","5"),
("8","5","verified","0"),
("9","6","rating","5"),
("10","6","verified","0"),
("11","7","rating","5"),
("12","7","verified","0"),
("13","8","rating","5"),
("14","8","verified","0"),
("15","9","rating","4"),
("16","9","verified","0"),
("17","10","rating","5"),
("18","10","verified","0"),
("19","11","rating","5"),
("20","11","verified","0"),
("21","12","rating","5"),
("22","12","verified","0"),
("23","13","rating","5"),
("24","13","verified","0"),
("25","14","rating","5"),
("26","14","verified","0"),
("27","15","rating","5"),
("28","15","verified","0"),
("29","16","rating","5"),
("30","16","verified","0"),
("31","17","rating","5"),
("32","17","verified","0"),
("33","18","rating","4"),
("34","18","verified","0"),
("35","19","rating","5"),
("36","19","verified","0");




CREATE TABLE `gdd__comments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__comments VALUES
("1","1","M???t ng?????i b??nh lu???n WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-03-09 05:27:45","2019-03-09 05:27:45","Xin ch??o, ????y l?? m???t b??nh lu???n\n????? b???t ?????u v???i qu???n tr??? b??nh lu???n, ch???nh s???a ho???c x??a b??nh lu???n, vui l??ng truy c???p v??o khu v???c B??nh lu???n trong trang qu???n tr???.\nAvatar c???a ng?????i b??nh lu???n s??? d???ng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","173","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:08:44","2019-03-09 17:08:44","S???n ph???m t???t!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("3","170","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:10:13","2019-03-09 17:10:13","S???n ph???m t???t trong t???m gi??!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("4","168","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:10:53","2019-03-09 17:10:53","S???n ph???m hay qu??!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("5","166","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:11:17","2019-03-09 17:11:17","S???n ph???m tuy???t v???i~","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("6","204","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:26","2019-03-09 17:13:26","S???n ph???m t???t!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("7","202","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:39","2019-03-09 17:13:39","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("8","200","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:48","2019-03-09 17:13:48","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("9","198","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:13:59","2019-03-09 17:13:59","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("10","196","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:10","2019-03-09 17:14:10","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("11","194","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:20","2019-03-09 17:14:20","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("12","192","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:30","2019-03-09 17:14:30","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("13","190","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:14:41","2019-03-09 17:14:41","Good","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("14","206","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:18:30","2019-03-09 17:18:30","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("15","218","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:18:42","2019-03-09 17:18:42","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("16","216","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:02","2019-03-09 17:19:02","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("17","214","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:25","2019-03-09 17:19:25","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("18","210","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:35","2019-03-09 17:19:35","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("19","208","Webdemo.com","webdemo@gmail.com","","58.187.29.76","2019-03-10 00:19:54","2019-03-09 17:19:54","htps://Webdemo.com","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1"),
("20","538","WooCommerce","woocommerce@camera.Webdemo.com","","","2019-03-10 23:10:23","2019-03-10 16:10:23","Ch??? thanh to??n chuy???n kho???n Tr???ng th??i ????n h??ng ???? ???????c chuy???n t??? Ch??? thanh to??n sang T???m gi???.","0","1","WooCommerce","order_note","0","0");




CREATE TABLE `gdd__duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/camera\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1552640500,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960274,\"initial_activation_timestamp\":1552640510,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025864,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
("4","DUP_PRO_Package_Template_Entity","{\"name\":\"Default\",\"notes\":\"The default template.\",\"filter_sites\":[],\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":[],\"installer_opts_secure_on\":null,\"installer_opts_secure_pass\":null,\"installer_opts_skip_scan\":null,\"installer_opts_db_host\":null,\"installer_opts_db_name\":null,\"installer_opts_db_user\":null,\"installer_opts_cpnl_enable\":false,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":null,\"installer_opts_cache_path\":null,\"is_default\":true,\"is_manual\":false,\"type\":\"DUP_PRO_Package_Template_Entity\"}"),
("5","DUP_PRO_Package_Template_Entity","{\"name\":\"[Manual Mode]\",\"notes\":\"\",\"filter_sites\":\"\",\"archive_export_onlydb\":0,\"archive_filter_on\":0,\"archive_filter_dirs\":\"\",\"archive_filter_exts\":\"\",\"archive_filter_files\":\"\",\"database_filter_on\":0,\"database_filter_tables\":\"\",\"database_compatibility_modes\":\"\",\"installer_opts_secure_on\":0,\"installer_opts_secure_pass\":\"\",\"installer_opts_skip_scan\":0,\"installer_opts_db_host\":\"\",\"installer_opts_db_name\":\"\",\"installer_opts_db_user\":\"\",\"installer_opts_cpnl_enable\":0,\"installer_opts_cpnl_host\":\"\",\"installer_opts_cpnl_user\":\"\",\"installer_opts_cpnl_pass\":\"\",\"installer_opts_cpnl_db_action\":\"create\",\"installer_opts_cpnl_db_host\":\"\",\"installer_opts_cpnl_db_name\":\"\",\"installer_opts_cpnl_db_user\":\"\",\"installer_opts_brand\":-2,\"installer_opts_cache_wp\":0,\"installer_opts_cache_path\":0,\"is_default\":false,\"is_manual\":true,\"type\":\"DUP_PRO_Package_Template_Entity\"}");




CREATE TABLE `gdd__duplicator_pro_packages` (
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






CREATE TABLE `gdd__links` (
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






CREATE TABLE `gdd__options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1844 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__options VALUES
("1","siteurl","https://bizhostvn.com/w/camera","yes"),
("2","home","https://bizhostvn.com/w/camera","yes"),
("3","blogname","camera","yes"),
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
("29","rewrite_rules","a:150:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:6:\"mua/?$\";s:27:\"index.php?post_type=product\";s:36:\"mua/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:31:\"mua/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:23:\"mua/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:49:\"chuyen-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:44:\"chuyen-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:37:\"chuyen-muc/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:34:\"chuyen-muc/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:19:\"chuyen-muc/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:4;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","/chuyen-muc","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:94:\"/home/tppone/domains/tppone.com/public_html/demo/camera/wp-content/themes/camera/functions.php\";i:2;s:90:\"/home/tppone/domains/tppone.com/public_html/demo/camera/wp-content/themes/camera/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","camera","yes"),
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
("78","widget_categories","a:2:{i:4;a:4:{s:5:\"title\";s:22:\"Danh m???c b??i vi???t\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:28:\"Cam k???t c???a ch??ng t??i:\";s:4:\"text\";s:192:\"Ch??ng t??i ch??? b??n h??ng ch??nh h??ng v?? ????ng gi??, vui l??ng tham kh???o k??? tr?????c khi ?????t mua.\nM???i nhu c???u c???n gi???i ????p, vui l??ng li??n h??? tr???c ti???p hotline: \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:27:\"Cam k???t c???a ch??ng t??i\";s:4:\"text\";s:192:\"Ch??ng t??i ch??? b??n h??ng ch??nh h??ng v?? ????ng gi??, vui l??ng tham kh???o k??? tr?????c khi ?????t mua.\nM???i nhu c???u c???n gi???i ????p, vui l??ng li??n h??? tr???c ti???p hotline: \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("94","gdd__user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd__options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:2:{i:0;s:12:\"categories-4\";i:1;s:23:\"flatsome_recent_posts-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:2:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:6:\"text-3\";}s:15:\"product-sidebar\";a:2:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:6:\"text-2\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:13:{i:1557983400;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557984086;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557984466;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557984533;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557986881;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557996717;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558018229;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558048886;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558048896;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558059686;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("113","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552142224;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("130","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1552473179;}","no"),
("149","new_admin_email","webdemo@gmail.com","yes"),
("156","recently_activated","a:3:{s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025865;s:30:\"db-prefix-change/db_prefix.php\";i:1557012181;s:23:\"wp-rocket/wp-rocket.php\";i:1557012125;}","yes"),
("162","current_theme","Camera","yes"),
("163","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 09 Mar 2019 14:37:05 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552142258;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("164","theme_switched","","yes"),
("165","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:24:\"B??i vi???t m???i nh???t\";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("166","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("168","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("169","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("170","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("171","flatsome_wup_buyer","trannguyen886","yes"),
("172","allowedthemes","a:1:{s:6:\"camera\";b:1;}","no"),
("173","fl_has_child_theme","camera","yes"),
("175","theme_mods_camera","a:173:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:0:{}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:1:{i:0;s:7:\"block-1\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:9:\"divider_5\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:1:{i:0;s:11:\"search-form\";}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";s:12:\"left-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:2;s:7:\"primary\";i:3;s:14:\"primary_mobile\";i:3;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sat, 09 Mar 2019 14:37:40 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:3:\"600\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:600;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:6:\"Barlow\";s:7:\"variant\";s:3:\"600\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:600;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.1\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:11012:\".header-bottom-nav li{margin:0}\n.header-bottom-nav li a{padding-left:15px; padding-right:15px; line-height:30px; font-size:17px; }\n.nav-dropdown-default {\n    padding: 10px;\n}\n.success-color {\n    color: white;\n    background: #9ec55a;\n    padding: 10px;\n    border-radius: 4px;\n    font-size: 15px;\n\n}.cart_totals  span.amountt{color:red}\n.address-field{width:100% !important}\ninput[type=\'email\'], input[type=\'search\'], input[type=\'number\'], input[type=\'url\'], input[type=\'tel\'], input[type=\'text\'], textarea{    margin-bottom: 0; font-size:15px; box-shadow:none; border-radius:4px}\n.blog-single .entry-meta .danh-muc{display: block;\n    margin-bottom: 6px;}\n.blog-single .the-tim-kiem a{background: #e4e4e4;\n    padding: 5px;\n    color: #6e6e6e;\n    margin-bottom: 5px;\n}\n.blog-single .the-tim-kiem a:hover{background: #1e73be; color:white}\n.blog-single .col{padding-bottom:0}\n.blog-single{padding-bottom:0}\n.blog-single .article-inner .entry-meta{font-size:15px}\n.blog-single .entry-content{padding:0}\n.blog-single .post-sidebar{padding-left:0}\n.blog-archive h1.page-title{font-size:22px; color:#1e73be}\n.blog-archive .post-item .box-text .post-title:hover{color:#1e73be !important}\n.blog-archive .post-item{padding-bottom:0 !important}\n.blog-archive .large-9 .badge {display:none}\n.recent-blog-posts-li .badge-inner{border-radius:99%}\n.recent-blog-posts-li a{font-size:15px}\n.blog-archive .post-sidebar{padding-right:0}\n.row-lien-he .cot1 input[type=\'tel\']{margin-bottom:0; border-radius:4px}\n.wpcf7-submit{font-size:15px !important; font-weight:normal !important; border-radius:3px !important; text-transform:none !important}\n.row-lien-he input[type=\'tel\'], .row-lien-he input[type=\'text\'], .row-lien-he textarea {margin-bottom:10px}\n.woocommerce .is-well{padding:20px; font-size:15px}\n.woocommerce-order-details h2, .woocommerce-customer-details h2{font-size:18px}\n#order_review button{border-radius:4px; font-weight:normal; text-transform:none}\n.has-border {\n    border: 2px solid #446084;\n    padding: 15px 20px 11px;\n}\n.woocommerce-billing-fields__field-wrapper  .form-row label{font-family: \"barlow\", sans-serif;\n    color: #1e73be;}\n.cart_totals .button{    font-weight: normal;\n    text-transform: none; border-radius:4px}\n.continue-shopping a, .continue-shopping button{    font-weight: normal;\n    text-transform: none;}\n.shop_table thead th, .shop_table .order-total td, .shop_table .order-total th{    text-transform: none;\n    font-family: \"barlow\", sans-serif;\n    font-size: 18px;\n    letter-spacing: 0;\n    color: #1e73be;}\nul.product_list_widget li a:not(.remove){font-size: 13px;\n    color: #1e73be;}\n.widget_shopping_cart .button{text-transform:none; font-weight:normal; font-size:15px}\n.header-block{padding-top:3px !important}\n.header-bottom-nav li a:hover, .header-bottom-nav >li.active>a, .header-bottom-nav .current-menu-item a{background:#004e92; color:white}\n.header-button a{line-height:20px}\nli.html input{height:40px; box-shadow: none;\n    border-top-left-radius: 4px;\n    border-bottom-left-radius: 3px;}.searchform .button.icon {height:40px !important;\n    border-top-right-radius: 4px;\n    border-bottom-right-radius: 4px;\n    background: #004e92;\n    height: 35px;\n    width: 57px;\n}\n.header-cart-icon img{max-width:40px}\n.account-link .image-icon img {    max-width: 40px;\n    border: 2px solid #1e73be;\n}\n.row-tieu-chi{margin-top:17px !important\n}\n.row-tieu-chi .icon-box .icon-box-text p{padding-top:3px; color:#1e72ba}\n.section-title b{    background-color: #1e73be;}\n.footer-secondary{padding:0}\n.footer-section {border-top:1px solid #ececec}\n.danh-muc-sp-section .product-category .box-image .image-cover{border-radius:10px}\n.danh-muc-sp-section .col, .tin-tuc .col{padding-bottom:0}\n.danh-muc-sp-section .product-category .box-text{    padding: 10px;\n    border-bottom-left-radius: 10px;\n    border-bottom-right-radius: 10px;\n    background-image: linear-gradient(#0087ff00, #000000);\n    padding-top: 50px;}\n.danh-muc-sp-section .product-category .image-cover{\n    border: 3px solid white;}\n.danh-muc-sp-section .product-category .col-innerr:hover {border-bottom:2px solid gray}\n.row-tieu-chi .icon-box{line-height:20px}\n.nav>li.header-divider{margin:0}\n.header-cart-title, .header-account-title{font-size: 15px;\n    text-transform: none;\n    font-weight: normal;\n    letter-spacing: 0;\n    color: black;}\n.category-section .badge-container .badge-inner{background:#1e73be; border-radius:99%; font-weight:normal}\n.category-section .badge-container{margin:10px}\n.section-title-container {\n    margin-bottom: 10px;\n}\n.tin-tuc{padding-top:10px; padding-bottom:0 !important}\n.category-section .col{padding-bottom:0 !important}\n.section-title a:hover{color:red}\n.star-rating span:before, .star-rating:before, .woocommerce-page .star-rating:before {\n	color: #ffac00;}\n.category-section .product-small .box-text .price ins span, .single-product .product-info .price ins span{font-size:22px; font-weight:bold; color:red; font-family: \"barlow\", sans-serif;}\n.single-product .product-info .cart{margin-bottom:0}\n.single-product .product-info .price del span{color:gray; font-size:14px}\n\n.category-section .product-small .box-text .product-title {margin-bottom:10px}\n.flickity-prev-next-button svg, .flickity-prev-next-button .arrow{border-color: currentColor;\n    fill: #1e73be;\n    transition: all 0.3s;\n    background: white;\n    border-radius: 99%;}\n.archive .product-small.box .product-title a:hover{color:#1e73be !important}\n.archive .product-small.box .product-title a {color:black !important;}\n.category-section .product-small .box-text .product-title a, .tin-tuc .post-item .post-title{color:black}\n.tin-tuc .post-item .post-title{font-size:19px}\n.related .product-small.box .box-text, .archive .product-small.box .box-text{padding: 10px 0}\n.related .product-small.box .price ins span, .archive .product-small.box .price ins span{color:red; font-family:\"barlow\", sans-serif; font-size:19px}\n.related .product-small.box, .archive .product-small.box{    border: 1px solid #eaeaea;\n    padding: 10px;\n    border-radius: 4px;}.tin-tuc .post-item .post-title:hover{color:#1e73be}\n.tin-tuc .post-item .box-image .image-cover{border-radius:10px}\n.banner-section img{border-radius:10px}\n.category-section .product-small .box-text{padding:0; padding-bottom:10px}\n.category-section .product-small.box { margin-bottom: 18px;   border: 1px solid #ececec;\n    padding: 10px;\n    border-radius: 4px;}\n.section-title a{font-size:15px; font-weight:normal}\n.header-block .icon-box .icon-box-text{    padding-left: 5px;\n    font-size: 15px;\n    line-height: 19px;\n    padding-top: 4px;}\n.product-main {\n    padding: 20px 0;\n}\n.thong-tin-ban-hang .clearboth{clear:both}\n.thong-tin-ban-hang .right{width:50%; float:left; padding-left:10px; display:inline-block}\n.thong-tin-ban-hang ul li{margin-bottom: 3px;\n    background: url(https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/check@2x.png);\n    background-repeat: no-repeat;\n    list-style: none;\n    padding-left: 24px;\n    background: url(/wp-content/uploads/2019/03/check@2x.png);\n    background-repeat: no-repeat;\n    background-size: 13px;\n    background-position-y: 7px;\n    margin-left: 0;}\n.thong-tin-ban-hang ul li .label{    font-weight: bold;\n    color: #004e92;}\n.thong-tin-ban-hang h3{color:red}\n.thong-tin-ban-hang ul{margin-bottom:0; margin-left:0px}\n.thong-tin-ban-hang .left{width:50%; float:left; padding-right:10px; display:inline-block}\n.thong-tin-ban-hang{    font-family: \"barlow\", sans-serif;\n    width: 100%; font-size:17px;\n    display: inline-block;\n    background: #fcfcfc;\n    padding: 20px;\n    margin-bottom: 40px;\n    border: 1px dashed #dedede;}\n\n.single-product .product-short-description p{margin-bottom:5px}\n.dark .breadcrumbs {\n    color: #40e8ffe6;\n    font-weight: normal;\n}\n.woocommerce-ordering select{font-size:15px}\n.single-product .product-short-description{height:80px; overflow:hidden; font-size: 14px;\n    background: #f8f8f8;\n    padding: 10px; margin-bottom:20px;\n    color: #414141;}\n.single-product .zoom-button{border: 1px solid currentColor !important;}\n.section-title-normal span{border-bottom: 2px solid rgb(30, 115, 190);}\n.single-product #product-sidebar{padding-bottom:0; border-right:0; padding-right:10px}\n.widget .current-cat>a{color:#1e73be; font-weight:normal}\n.widget_product_categories li a{color:black}\n.widget_product_categories li{font-size:16px}\n.widget_product_categories{border: 1px solid #eaeaea;\n    padding: 10px;}\n.single-product .product-info .product-title{font-size: 22px;\n    color: #0d3d73;}\n.single-product .product-info{padding-top:0; padding-bottom:0}\n.single-product #review_form_wrapper{margin-bottom:20px}\n.single-proudct .comment-form .submit{    font-weight: normal;\n    text-transform: none}\n.single-product .comment-form{margin-bottom:0 !important}\n.single-product .review-form-inner{    padding: 15px 30px 0px;}\n.single-product #reviews .large-12{padding-bottom:0px}\n.single-product #reviews h3{color:#1e73be}\n.single-product .share-icons a{border: 1px solid silver;}\n.single-product .product-section-title{    margin: 0;\n    letter-spacing: 0;\n    text-transform: none;\n    font-size: 22px;\n    color: #1e73be;}\n.product_meta>span {\n    display: block;\n font-size: 15px;\n}\n.widget .is-divider{display:none}\nspan.widget-title {display: block;\n    padding-bottom: 10px;\n    border-bottom: 1px solid #eaeaea;\n    font-size: 20px;\n    text-transform: none;\n    letter-spacing: 0;\n    font-weight: bold;\n    font-family: \"barlow\", sans-serif;\n    color: #1e73be;\n}\n.textwidget{font-size:15px; margin-top:10px}\n.widget{border: 1px solid #eaeaea;\n    padding: 10px;}\n.single-product .product-tabs li.active>a{font-size:22px; color: rgb(30, 115, 190);}\n.product-footer .woocommerce-tabs {border-bottom: 1px solid #eaeaea;\n    padding: 0;\n    border-top: none;\n}\n.nav-line-bottom>li>a:before, .nav-line-grow>li>a:before, .nav-line>li>a:before{height:0}\n.single-product .product-tabs{font-size:22px; border-bottom:1px solid #eaeaea}\nspan.devvn_title{font-family:\"barlow\", sans-serif}\n.devvn-popup-title, .popup-customer-info-group .devvn-order-btn{background:#1e73be !important; font-family:\"barlow\", sans-serif}\na.devvn_buy_now_style span {\n    display: block;\n	font-size: 12px;}\na.devvn_buy_now_style strong{font-size:22px; font-weight:normal; font-family:\"barlow\", sans-serif}\na.devvn_buy_now_style{    max-width: 300px; margin-bottom:5px}\n.single-product .badge{width:40px; height:40px}\n.single-product .badge-container .badge-inner, .archive .badge-container .badge-inner{border-radius:99%; font-weight:normal; font-size: 14px; background:red}\n.devvn_readmore_taxonomy_flatsome a{text-align:left}\n.devvn_readmore_flatsome a {\n\n    text-align: left;\n    margin-bottom: 10px;\n}\n.single-product .badge-container, .archive .badge-container{margin:10px;}\n.product-gallery-slider img{    border: 1px solid #eaeaea;}\n.single_add_to_cart_button{    background-color: #004a8b;\n    text-transform: none;\n    font-weight: normal;\n    border-radius: 4px;}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:801:\".off-canvas-left.dark .mfp-content{background: #1e73be}\n.icon-box-left .icon-box-img+.icon-box-text {\n    padding-left: 5px;\n    font-size: 13px;\n    line-height: 15px;\n}\n.danh-muc-sp-section .gap-element{display:none !important}\n.danh-muc-sp-section .product-category {flex-basis:50%; max-width:50%;    padding: 0 2.8px 0px; margin-bottom:3px}\n.section{    padding-top: 10px !important;\n    padding-bottom: 10px !important;}\na.devvn_buy_now_style{max-width:100% !important}\n.thong-tin-ban-hang .left, .thong-tin-ban-hang .right{width:100%; padding-right:0; padding-left:0}\n.featured-title .page-title-inner {\n    padding-bottom: 0px; padding-top:15px;\n}\n.blog-archive .post-item .post-title{font-size:16px}\n.blog-single .post-sidebar{padding-left:15px}\n.blog-archive .post-sidebar{padding-right:15px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:39:\"T??m ki???m s???n ph???m, danh m???c...\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:9:\"site_logo\";s:68:\"https://bizhostvn.com/w/camera/wp-content/uploads/2019/05/camera.jpg\";s:10:\"logo_width\";s:3:\"244\";s:12:\"logo_padding\";s:1:\"1\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:0;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:5:\"light\";s:9:\"topbar_bg\";s:7:\"#f2f2f2\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"95\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:13:\"nav_uppercase\";b:1;s:14:\"type_nav_color\";s:0:\"\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"50\";s:15:\"nav_position_bg\";s:7:\"#1e73be\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:6:\"medium\";s:20:\"nav_uppercase_bottom\";b:0;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:14:\"header_divider\";b:0;s:24:\"header_search_categories\";b:0;s:19:\"header_search_width\";s:2:\"84\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:14:\"header-block-1\";s:6:\"header\";s:11:\"topbar_left\";s:55:\"Ch??o m???ng b???n ?????n v???i m???u web c???a Webdemo\";s:9:\"type_size\";s:3:\"100\";s:15:\"header_button_1\";s:20:\"Li??n h??? b??o gi??\";s:20:\"header_button_1_link\";s:19:\"https://Webdemo.com\";s:27:\"header_button_1_link_target\";s:6:\"_blank\";s:22:\"header_button_1_radius\";s:3:\"4px\";s:21:\"header_button_1_color\";s:7:\"primary\";s:15:\"cart_icon_style\";s:5:\"plain\";s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";b:0;s:16:\"custom_cart_icon\";s:74:\"https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/cart-icon-01.jpg\";s:18:\"account_icon_style\";s:5:\"image\";s:23:\"header_account_username\";b:0;s:23:\"header_account_register\";b:1;s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"11\";s:13:\"header_sticky\";b:0;s:27:\"category_force_image_height\";b:1;s:16:\"products_pr_page\";s:2:\"40\";s:18:\"category_row_count\";s:1:\"4\";s:20:\"category_title_style\";s:8:\"featured\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:19:\"category_show_title\";b:1;s:23:\"header_shop_bg_featured\";b:0;s:20:\"header_shop_bg_image\";s:69:\"https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/slider2.jpg\";s:20:\"header_shop_bg_color\";s:7:\"#0d3d73\";s:20:\"category_filter_text\";s:25:\"Ph??n lo???i s???n ph???m\";s:15:\"breadcrumb_size\";s:5:\"small\";s:9:\"cat_style\";s:5:\"shade\";s:13:\"product_hover\";s:4:\"zoom\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:7:\"disable\";s:20:\"product_box_category\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:16:\"footer_left_text\";s:154:\"Copyright [ux_current_year] ?? <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a> | Thi???t k??? b???i <a href=\"https://Webdemo.com\">Webdemo</a>\";s:13:\"payment_icons\";a:0:{}s:19:\"footer_bottom_color\";s:7:\"#1e73be\";s:17:\"footer_right_text\";s:25:\"H??? tr??? k??? thu???t: \";s:14:\"product_header\";s:8:\"featured\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"4\";s:21:\"product_title_divider\";b:0;s:25:\"product_info_review_count\";b:1;s:18:\"product_tabs_align\";s:4:\"left\";s:9:\"tab_title\";s:0:\"\";s:11:\"tab_content\";s:0:\"\";s:23:\"related_products_pr_row\";s:1:\"5\";s:21:\"category_image_height\";s:3:\"100\";s:13:\"color_primary\";s:7:\"#1e73be\";s:15:\"color_secondary\";s:7:\"#004a8b\";s:11:\"color_texts\";s:7:\"#2d2d2d\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#1e73be\";s:17:\"color_links_hover\";s:7:\"#004a8b\";s:18:\"color_widget_links\";s:7:\"#1e73be\";s:24:\"color_widget_links_hover\";s:7:\"#004a8b\";s:15:\"product_display\";s:4:\"tabs\";s:17:\"product_info_meta\";b:1;s:18:\"product_info_share\";b:0;s:11:\"blog_layout\";s:12:\"left-sidebar\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:5:\"3-col\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:5:\"3-col\";s:16:\"blog_post_layout\";s:13:\"right-sidebar\";s:26:\"blog_single_featured_image\";b:0;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#1e73be\";}","yes"),
("177","envato_setup_complete","1552142267","yes"),
("182","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("191","woocommerce_store_address","S??? 29 ng?? 18 L????ng Ng???c Quy???n, V??n Qu??n","yes"),
("192","woocommerce_store_address_2","H?? ????ng","yes"),
("193","woocommerce_store_city","H?? N???i","yes"),
("194","woocommerce_default_country","VN","yes"),
("195","woocommerce_store_postcode","150000","yes"),
("196","woocommerce_allowed_countries","specific","yes"),
("197","woocommerce_all_except_countries","a:0:{}","yes"),
("198","woocommerce_specific_allowed_countries","a:1:{i:0;s:2:\"VN\";}","yes"),
("199","woocommerce_ship_to_countries","","yes"),
("200","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("201","woocommerce_default_customer_address","","yes"),
("202","woocommerce_calc_taxes","no","yes"),
("203","woocommerce_enable_coupons","yes","yes"),
("204","woocommerce_calc_discounts_sequentially","no","no"),
("205","woocommerce_currency","VND","yes"),
("206","woocommerce_currency_pos","right","yes"),
("207","woocommerce_price_thousand_sep",".","yes"),
("208","woocommerce_price_decimal_sep",".","yes"),
("209","woocommerce_price_num_decimals","0","yes"),
("210","woocommerce_shop_page_id","513","yes"),
("211","woocommerce_cart_redirect_after_add","no","yes"),
("212","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("213","woocommerce_placeholder_image","620","yes"),
("214","woocommerce_weight_unit","kg","yes"),
("215","woocommerce_dimension_unit","cm","yes"),
("216","woocommerce_enable_reviews","yes","yes"),
("217","woocommerce_review_rating_verification_label","yes","no"),
("218","woocommerce_review_rating_verification_required","no","no"),
("219","woocommerce_enable_review_rating","yes","yes"),
("220","woocommerce_review_rating_required","yes","no"),
("221","woocommerce_manage_stock","yes","yes"),
("222","woocommerce_hold_stock_minutes","60","no"),
("223","woocommerce_notify_low_stock","yes","no"),
("224","woocommerce_notify_no_stock","yes","no"),
("225","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("226","woocommerce_notify_low_stock_amount","2","no"),
("227","woocommerce_notify_no_stock_amount","0","yes"),
("228","woocommerce_hide_out_of_stock_items","no","yes"),
("229","woocommerce_stock_format","","yes"),
("230","woocommerce_file_download_method","force","no"),
("231","woocommerce_downloads_require_login","no","no"),
("232","woocommerce_downloads_grant_access_after_payment","yes","no"),
("233","woocommerce_prices_include_tax","no","yes"),
("234","woocommerce_tax_based_on","shipping","yes"),
("235","woocommerce_shipping_tax_class","inherit","yes"),
("236","woocommerce_tax_round_at_subtotal","no","yes"),
("237","woocommerce_tax_classes","Gi???m t??? l???\nT??? l??? r???ng","yes"),
("238","woocommerce_tax_display_shop","excl","yes"),
("239","woocommerce_tax_display_cart","excl","yes"),
("240","woocommerce_price_display_suffix","","yes"),
("241","woocommerce_tax_total_display","itemized","no"),
("242","woocommerce_enable_shipping_calc","yes","no"),
("243","woocommerce_shipping_cost_requires_address","no","yes"),
("244","woocommerce_ship_to_destination","billing","no"),
("245","woocommerce_shipping_debug_mode","no","yes"),
("246","woocommerce_enable_guest_checkout","yes","no"),
("247","woocommerce_enable_checkout_login_reminder","no","no"),
("248","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("249","woocommerce_enable_myaccount_registration","no","no"),
("250","woocommerce_registration_generate_username","yes","no"),
("251","woocommerce_registration_generate_password","yes","no"),
("252","woocommerce_erasure_request_removes_order_data","no","no"),
("253","woocommerce_erasure_request_removes_download_data","no","no"),
("254","woocommerce_registration_privacy_policy_text","Th??ng tin c?? nh??n c???a b???n s??? ???????c s??? d???ng ????? t??ng tr???i nghi???m s??? d???ng website, qu???n l?? truy c???p v??o t??i kho???n c???a b???n, v?? cho c??c m???c ????ch c??? th??? kh??c ???????c m?? t??? trong [privacy_policy].","yes"),
("255","woocommerce_checkout_privacy_policy_text","Th??ng tin c?? nh??n c???a b???n s??? ???????c s??? d???ng ????? x??? l?? ????n h??ng, t??ng tr???i nghi???m s??? d???ng website, v?? cho c??c m???c ????ch c??? th??? kh??c ???? ???????c m?? t??? trong [privacy_policy].","yes"),
("256","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("257","woocommerce_trash_pending_orders","","no"),
("258","woocommerce_trash_failed_orders","","no"),
("259","woocommerce_trash_cancelled_orders","","no"),
("260","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no");
INSERT INTO gdd__options VALUES
("261","woocommerce_email_from_name","M???u website b??n Camera &#8211; Thi???t k??? website Webdemo.com","no"),
("262","woocommerce_email_from_address","webdemo@gmail.com","no"),
("263","woocommerce_email_header_image","","no"),
("264","woocommerce_email_footer_text","{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("265","woocommerce_email_base_color","#96588a","no"),
("266","woocommerce_email_background_color","#f7f7f7","no"),
("267","woocommerce_email_body_background_color","#ffffff","no"),
("268","woocommerce_email_text_color","#3c3c3c","no"),
("269","woocommerce_cart_page_id","514","yes"),
("270","woocommerce_checkout_page_id","515","yes"),
("271","woocommerce_myaccount_page_id","516","yes"),
("272","woocommerce_terms_page_id","","no"),
("273","woocommerce_force_ssl_checkout","no","yes"),
("274","woocommerce_unforce_ssl_checkout","no","yes"),
("275","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("276","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("277","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("278","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("279","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("280","woocommerce_myaccount_orders_endpoint","orders","yes"),
("281","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("282","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("283","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("284","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("285","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("286","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("287","woocommerce_logout_endpoint","customer-logout","yes"),
("288","woocommerce_api_enabled","no","yes"),
("289","woocommerce_single_image_width","600","yes"),
("290","woocommerce_thumbnail_image_width","300","yes"),
("291","woocommerce_checkout_highlight_required_fields","yes","yes"),
("292","woocommerce_demo_store","yes","yes"),
("293","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("294","current_theme_supports_woocommerce","yes","yes"),
("295","woocommerce_queue_flush_rewrite_rules","no","yes"),
("298","default_product_cat","17","yes"),
("302","woocommerce_db_version","3.5.6","yes"),
("303","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("307","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("310","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("311","widget_woocommerce_product_categories","a:3:{i:2;a:8:{s:5:\"title\";s:23:\"Danh m???c s???n ph???m\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}i:3;a:8:{s:5:\"title\";s:23:\"Danh m???c s???n ph???m\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("312","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("313","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("314","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("315","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("316","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("317","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("318","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("319","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("331","woocommerce_meta_box_errors","a:0:{}","yes"),
("333","woocommerce_maybe_regenerate_images_hash","991b1ca641921cf0f5baf7a2fe85861b","yes"),
("598","woocommerce_demo_store_notice","????y l?? m???u web c???a Webdemo, kh??ng ph???i website b??n h??ng ch??nh th???c!","yes"),
("767","category_children","a:0:{}","yes"),
("866","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:8:\"Mua ngay\";s:12:\"button_text2\";s:51:\"G???i ??i???n x??c nh???n v?? giao h??ng t???n n??i\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"?????t mua %s\";s:10:\"popup_mess\";s:143:\"B???n vui l??ng nh???p ????ng s??? ??i???n tho???i ????? ch??ng t??i s??? g???i x??c nh???n ????n h??ng tr?????c khi giao h??ng. Xin c???m ??n!\";s:12:\"popup_sucess\";s:632:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">?????t h??ng th??nh c??ng!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">M?? ????n h??ng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">GIUSEART s??? li??n h??? v???i b???n trong 12h t???i. C??m ??n b???n ???? cho ch??ng t??i c?? h???i ???????c ph???c v???.\n<strong>Hotline:</strong> </p>\n<p class=\"clearfix\"><strong>Ghi ch??: </strong>????n h??ng ch??? c?? hi???u l???c trong v??ng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"?????t h??ng th???t b???i. Vui l??ng ?????t h??ng l???i. Xin c???m ??n!\";s:17:\"out_of_stock_mess\";s:12:\"H???t h??ng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("941","acf_version","5.7.7","yes"),
("1083","product_cat_children","a:0:{}","yes"),
("1112","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1552258112;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("1123","woocommerce_cheque_settings","a:4:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:22:\"Ki???m tra thanh to??n\";s:11:\"description\";s:187:\"Vui l??ng g???i chi phi???u c???a b???n ?????n T??n c???a h??ng, ???????ng c???a c???a h??ng, Th??? tr???n c???a c???a h??ng, Bang / H???t c???a c???a h??ng, M?? b??u ??i???n c???a h??ng.\";s:12:\"instructions\";s:0:\"\";}","yes"),
("1124","woocommerce_bacs_settings","a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuy???n kho???n ng??n h??ng\";s:11:\"description\";s:226:\"Th???c hi???n thanh to??n v??o ngay t??i kho???n ng??n h??ng c???a ch??ng t??i. Vui l??ng s??? d???ng M?? ????n h??ng c???a b???n trong ph???n N???i dung thanh to??n. ????n h??ng s??? ??????c giao sau khi ti???n ???? chuy???n.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}","yes"),
("1125","woocommerce_cod_settings","a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:35:\"Tr??? ti???n m???t khi nh???n h??ng\";s:11:\"description\";s:33:\"Tr??? ti???n m???t khi giao h??ng\";s:12:\"instructions\";s:33:\"Tr??? ti???n m???t khi giao h??ng\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}","yes"),
("1127","woocommerce_gateway_order","a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}","yes"),
("1426","duplicator_pro_package_active","{\"Created\":\"2019-03-15 09:03:30\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.10\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.2.13\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190315_mauwebsitebancamerathietke\",\"Hash\":\"511d48040dfd9c2a7168_20190315090330\",\"NameHash\":\"20190315_mauwebsitebancamerathietke_511d48040dfd9c2a7168_20190315090330\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/camera\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190315_mauwebsitebancamerathietke_511d48040dfd9c2a7168_20190315090330_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\",\"Size\":102529818,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"camera-quan-s\\u00e1t.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-quan-s\\u00e1t.jpg\"},{\"name\":\"camera-quan-s\\u00e1t-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-quan-s\\u00e1t-150x150.jpg\"},{\"name\":\"ph\\u1ee5-ki\\u1ec7n-camera-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/ph\\u1ee5-ki\\u1ec7n-camera-150x150.jpg\"},{\"name\":\"Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-100x100.jpg\"},{\"name\":\"ph\\u1ee5-ki\\u1ec7n-camera-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/ph\\u1ee5-ki\\u1ec7n-camera-100x100.jpg\"},{\"name\":\"camera-h\\u00e0nh-tr\\u00ecnh-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-h\\u00e0nh-tr\\u00ecnh-100x100.jpg\"},{\"name\":\"ph\\u1ee5-ki\\u1ec7n-camera.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/ph\\u1ee5-ki\\u1ec7n-camera.jpg\"},{\"name\":\"camera-h\\u00e0nh-tr\\u00ecnh.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-h\\u00e0nh-tr\\u00ecnh.jpg\"},{\"name\":\"camera-h\\u00e0nh-tr\\u00ecnh-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-h\\u00e0nh-tr\\u00ecnh-150x150.jpg\"},{\"name\":\"Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng-150x150.jpg\"},{\"name\":\"camera-quan-s\\u00e1t-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/camera-quan-s\\u00e1t-100x100.jpg\"},{\"name\":\"Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-content\\/uploads\\/2019\\/03\\/Thi\\u1ebft-b\\u1ecb-d\\u1eabn-\\u0111\\u01b0\\u1eddng.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/camera\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u957679471_web01\",\"tablesBaseCount\":30,\"tablesFinalCount\":30,\"tablesRowCount\":2094,\"tablesSizeOnDisk\":3588096,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1428","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1456","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:19;s:3:\"all\";i:19;s:8:\"approved\";s:2:\"19\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1457","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:2:\"19\";s:14:\"total_comments\";i:19;s:3:\"all\";i:19;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1487","db_upgraded","","yes"),
("1502","_transient_timeout_wc_low_stock_count","1559604032","no"),
("1503","_transient_wc_low_stock_count","0","no"),
("1504","_transient_timeout_wc_outofstock_count","1559604032","no"),
("1505","_transient_wc_outofstock_count","0","no"),
("1507","can_compress_scripts","0","no"),
("1527","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1530","woocommerce_allow_bulk_remove_personal_data","no","no"),
("1531","woocommerce_allow_tracking","no","no"),
("1532","woocommerce_show_marketplace_suggestions","yes","no"),
("1533","woocommerce_version","3.6.2","yes"),
("1534","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("1547","dbprefix_old_dbprefix","cmr_","yes"),
("1548","dbprefix_new","gdd__","yes"),
("1607","_transient_timeout_wc_term_counts","1560441351","no"),
("1608","_transient_wc_term_counts","a:6:{i:18;s:1:\"4\";i:19;s:1:\"8\";i:20;s:1:\"6\";i:17;s:1:\"4\";i:21;s:2:\"10\";i:22;s:1:\"3\";}","no"),
("1649","_transient_shipping-transient-version","1557133416","yes"),
("1650","_transient_timeout_wc_shipping_method_count_legacy","1559725416","no"),
("1651","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557133416\";s:5:\"value\";i:0;}","no"),
("1662","recovery_keys","a:0:{}","yes"),
("1813","_transient_timeout_wc_related_204","1557935751","no"),
("1814","_transient_wc_related_204","a:1:{s:51:\"limit=8&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=204\";a:13:{i:0;s:3:\"190\";i:1;s:3:\"192\";i:2;s:3:\"194\";i:3;s:3:\"196\";i:4;s:3:\"198\";i:5;s:3:\"200\";i:6;s:3:\"202\";i:7;s:3:\"166\";i:8;s:3:\"168\";i:9;s:3:\"170\";i:10;s:3:\"173\";i:11;s:3:\"208\";i:12;s:3:\"210\";}}","no"),
("1832","_transient_timeout_acf_plugin_updates","1558069685","no"),
("1833","_transient_acf_plugin_updates","a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}","no"),
("1834","_site_transient_timeout_theme_roots","1557985086","no"),
("1835","_site_transient_theme_roots","a:2:{s:6:\"camera\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no"),
("1837","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557983294;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1838","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557983295;s:7:\"checked\";a:2:{s:6:\"camera\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.8.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1839","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557983296;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `gdd__postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("3","2","_edit_lock","1552146047:1"),
("4","2","_edit_last","1"),
("15","11","_wp_attached_file","2019/03/cropped-logo-ninh-binh-web.jpg"),
("16","11","_wp_attachment_context","site-icon"),
("17","11","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:38:\"2019/03/cropped-logo-ninh-binh-web.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:36:\"cropped-logo-ninh-binh-web-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("54","30","_edit_last","1"),
("55","30","_footer","normal"),
("56","30","_wp_page_template","page-blank.php"),
("57","30","_edit_lock","1552235528:1"),
("58","32","_edit_last","1"),
("59","32","_footer","normal"),
("60","32","_wp_page_template","page-blank.php"),
("61","32","_edit_lock","1552234547:1"),
("62","34","_menu_item_type","post_type"),
("63","34","_menu_item_menu_item_parent","0"),
("64","34","_menu_item_object_id","32"),
("65","34","_menu_item_object","page"),
("66","34","_menu_item_target",""),
("67","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("68","34","_menu_item_xfn",""),
("69","34","_menu_item_url",""),
("71","35","_menu_item_type","post_type"),
("72","35","_menu_item_menu_item_parent","0"),
("73","35","_menu_item_object_id","30"),
("74","35","_menu_item_object","page"),
("75","35","_menu_item_target",""),
("76","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("77","35","_menu_item_xfn",""),
("78","35","_menu_item_url",""),
("161","52","_edit_last","1"),
("162","52","_edit_lock","1552143961:1"),
("170","52","_thumbnail_id",""),
("277","122","_wp_attached_file","2019/03/logo-ninh-binh-web-1.jpg"),
("278","122","_wp_attachment_metadata","a:5:{s:5:\"width\";i:282;s:6:\"height\";i:76;s:4:\"file\";s:32:\"2019/03/logo-ninh-binh-web-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-ninh-binh-web-1-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-ninh-binh-web-1-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-ninh-binh-web-1-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("279","123","_wp_attached_file","2019/03/cropped-logo-ninh-binh-web-1.jpg"),
("280","123","_wp_attachment_context","site-icon"),
("281","123","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:40:\"2019/03/cropped-logo-ninh-binh-web-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:40:\"cropped-logo-ninh-binh-web-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:38:\"cropped-logo-ninh-binh-web-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("288","127","_wp_attached_file","2019/03/cart-icon-01.jpg"),
("289","127","_wp_attachment_metadata","a:5:{s:5:\"width\";i:42;s:6:\"height\";i:40;s:4:\"file\";s:24:\"2019/03/cart-icon-01.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("292","129","_wp_attached_file","2019/03/icon-people.jpg"),
("293","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:42;s:6:\"height\";i:40;s:4:\"file\";s:23:\"2019/03/icon-people.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("294","2","_footer","normal"),
("296","133","_wp_attached_file","2019/03/slider01.jpg"),
("297","133","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/03/slider01.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider01-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider01-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider01-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slider01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slider01-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slider01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slider01-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slider01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("298","2","_thumbnail_id",""),
("299","136","_wp_attached_file","2019/03/slider2.jpg"),
("300","136","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2019/03/slider2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider2-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("301","138","_wp_attached_file","2019/03/slider3.jpg"),
("302","138","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2019/03/slider3.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider3-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"slider3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"slider3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"slider3-600x188.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("303","143","_wp_attached_file","2019/03/icon-02.jpg"),
("304","143","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:19:\"2019/03/icon-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("305","144","_wp_attached_file","2019/03/icon-03.jpg"),
("306","144","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:19:\"2019/03/icon-03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("307","145","_wp_attached_file","2019/03/icon-04.jpg"),
("308","145","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:19:\"2019/03/icon-04.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("309","146","_wp_attached_file","2019/03/icon-5.jpg"),
("310","146","_wp_attachment_metadata","a:5:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:18:\"2019/03/icon-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("329","162","_wp_attached_file","2019/03/Thi???t-b???-d???n-???????ng.jpg"),
("330","162","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:40:\"2019/03/Thi???t-b???-d???n-???????ng.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Thi???t-b???-d???n-???????ng-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Thi???t-b???-d???n-???????ng-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Thi???t-b???-d???n-???????ng-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("331","163","_wp_attached_file","2019/03/camera-h??nh-tr??nh.jpg"),
("332","163","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:31:\"2019/03/camera-h??nh-tr??nh.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"camera-h??nh-tr??nh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"camera-h??nh-tr??nh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"camera-h??nh-tr??nh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("333","164","_wp_attached_file","2019/03/camera-quan-s??t.jpg"),
("334","164","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:28:\"2019/03/camera-quan-s??t.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"camera-quan-s??t-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"camera-quan-s??t-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"camera-quan-s??t-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("335","165","_wp_attached_file","2019/03/ph???-ki???n-camera.jpg"),
("336","165","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:31:\"2019/03/ph???-ki???n-camera.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"ph???-ki???n-camera-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"ph???-ki???n-camera-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"ph???-ki???n-camera-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("337","166","_wc_review_count","1"),
("338","166","_wc_rating_count","a:1:{i:5;i:1;}"),
("339","166","_wc_average_rating","5.00"),
("340","166","_edit_last","1"),
("341","166","_edit_lock","1552231446:1"),
("342","167","_wp_attached_file","2019/03/camera-hanh-trinh-2-1.jpg"),
("343","167","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2019/03/camera-hanh-trinh-2-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("344","166","_thumbnail_id","167"),
("345","166","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("346","166","_sku",""),
("347","166","_regular_price","5490000"),
("348","166","_sale_price","4500000"),
("349","166","_sale_price_dates_from",""),
("350","166","_sale_price_dates_to",""),
("351","166","total_sales","0"),
("352","166","_tax_status","taxable"),
("353","166","_tax_class",""),
("354","166","_manage_stock","no"),
("355","166","_backorders","no"),
("356","166","_low_stock_amount",""),
("357","166","_sold_individually","no"),
("358","166","_weight",""),
("359","166","_length",""),
("360","166","_width",""),
("361","166","_height",""),
("362","166","_upsell_ids","a:0:{}"),
("363","166","_crosssell_ids","a:0:{}"),
("364","166","_purchase_note",""),
("365","166","_default_attributes","a:0:{}"),
("366","166","_virtual","no"),
("367","166","_downloadable","no"),
("368","166","_product_image_gallery","201,199,197,195"),
("369","166","_download_limit","-1");
INSERT INTO gdd__postmeta VALUES
("370","166","_download_expiry","-1"),
("371","166","_stock",""),
("372","166","_stock_status","instock"),
("373","166","_product_version","3.5.6"),
("374","166","_price","4500000"),
("375","168","_wc_review_count","1"),
("376","168","_wc_rating_count","a:1:{i:5;i:1;}"),
("377","168","_wc_average_rating","5.00"),
("378","168","_edit_last","1"),
("379","168","_edit_lock","1552231395:1"),
("380","169","_wp_attached_file","2019/03/camera-hanh-trinh-2-1-1.jpg"),
("381","169","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:35:\"2019/03/camera-hanh-trinh-2-1-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"camera-hanh-trinh-2-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("382","168","_thumbnail_id","169"),
("383","168","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("384","168","_sku",""),
("385","168","_regular_price","632000"),
("386","168","_sale_price","620000"),
("387","168","_sale_price_dates_from",""),
("388","168","_sale_price_dates_to",""),
("389","168","total_sales","0"),
("390","168","_tax_status","taxable"),
("391","168","_tax_class",""),
("392","168","_manage_stock","no"),
("393","168","_backorders","no"),
("394","168","_low_stock_amount",""),
("395","168","_sold_individually","no"),
("396","168","_weight",""),
("397","168","_length",""),
("398","168","_width",""),
("399","168","_height",""),
("400","168","_upsell_ids","a:0:{}"),
("401","168","_crosssell_ids","a:0:{}"),
("402","168","_purchase_note",""),
("403","168","_default_attributes","a:0:{}"),
("404","168","_virtual","no"),
("405","168","_downloadable","no"),
("406","168","_product_image_gallery","224,222,221,215"),
("407","168","_download_limit","-1"),
("408","168","_download_expiry","-1"),
("409","168","_stock",""),
("410","168","_stock_status","instock"),
("411","168","_product_version","3.5.6"),
("412","168","_price","620000"),
("413","170","_wc_review_count","1"),
("414","170","_wc_rating_count","a:1:{i:4;i:1;}"),
("415","170","_wc_average_rating","4.00"),
("416","170","_edit_last","1"),
("417","170","_edit_lock","1552231810:1"),
("420","172","_wp_attached_file","2019/03/product1.jpg"),
("421","172","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:20:\"2019/03/product1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("422","170","_thumbnail_id","172"),
("423","170","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("424","170","_sku",""),
("425","170","_regular_price","3600000"),
("426","170","_sale_price","3200000"),
("427","170","_sale_price_dates_from",""),
("428","170","_sale_price_dates_to",""),
("429","170","total_sales","0"),
("430","170","_tax_status","taxable"),
("431","170","_tax_class",""),
("432","170","_manage_stock","no"),
("433","170","_backorders","no"),
("434","170","_low_stock_amount",""),
("435","170","_sold_individually","no"),
("436","170","_weight",""),
("437","170","_length",""),
("438","170","_width",""),
("439","170","_height",""),
("440","170","_upsell_ids","a:0:{}"),
("441","170","_crosssell_ids","a:0:{}"),
("442","170","_purchase_note",""),
("443","170","_default_attributes","a:0:{}"),
("444","170","_virtual","no"),
("445","170","_downloadable","no"),
("446","170","_product_image_gallery","224,222,221"),
("447","170","_download_limit","-1"),
("448","170","_download_expiry","-1"),
("449","170","_stock",""),
("450","170","_stock_status","instock"),
("451","170","_product_version","3.5.6"),
("452","170","_price","3200000"),
("453","173","_wc_review_count","1"),
("454","173","_wc_rating_count","a:1:{i:5;i:1;}"),
("455","173","_wc_average_rating","5.00"),
("456","174","_wp_attached_file","2019/03/camera-hanh-trinh-gia-re.jpg"),
("457","174","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:36:\"2019/03/camera-hanh-trinh-gia-re.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"camera-hanh-trinh-gia-re-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("458","173","_edit_last","1"),
("459","173","_thumbnail_id","174"),
("460","173","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("461","173","_sku",""),
("462","173","_regular_price","8600000"),
("463","173","_sale_price","4500000"),
("464","173","_sale_price_dates_from",""),
("465","173","_sale_price_dates_to",""),
("466","173","total_sales","6"),
("467","173","_tax_status","taxable"),
("468","173","_tax_class",""),
("469","173","_manage_stock","no"),
("470","173","_backorders","no"),
("471","173","_low_stock_amount","");
INSERT INTO gdd__postmeta VALUES
("472","173","_sold_individually","no"),
("473","173","_weight",""),
("474","173","_length",""),
("475","173","_width",""),
("476","173","_height",""),
("477","173","_upsell_ids","a:0:{}"),
("478","173","_crosssell_ids","a:0:{}"),
("479","173","_purchase_note",""),
("480","173","_default_attributes","a:0:{}"),
("481","173","_virtual","no"),
("482","173","_downloadable","no"),
("483","173","_product_image_gallery","222,221,224,226"),
("484","173","_download_limit","-1"),
("485","173","_download_expiry","-1"),
("486","173","_stock",""),
("487","173","_stock_status","instock"),
("488","173","_product_version","3.5.6"),
("489","173","_price","4500000"),
("490","173","_edit_lock","1552231293:1"),
("507","190","_wc_review_count","1"),
("508","190","_wc_rating_count","a:1:{i:5;i:1;}"),
("509","190","_wc_average_rating","5.00"),
("510","191","_wp_attached_file","2019/03/Webvision-S633Y-i9.jpg"),
("511","191","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/03/Webvision-S633Y-i9.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-S633Y-i9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("512","190","_edit_last","1"),
("513","190","_thumbnail_id","191"),
("514","190","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("515","190","_sku",""),
("516","190","_regular_price","560000"),
("517","190","_sale_price","450000"),
("518","190","_sale_price_dates_from",""),
("519","190","_sale_price_dates_to",""),
("520","190","total_sales","0"),
("521","190","_tax_status","taxable"),
("522","190","_tax_class",""),
("523","190","_manage_stock","no"),
("524","190","_backorders","no"),
("525","190","_low_stock_amount",""),
("526","190","_sold_individually","no"),
("527","190","_weight",""),
("528","190","_length",""),
("529","190","_width",""),
("530","190","_height",""),
("531","190","_upsell_ids","a:0:{}"),
("532","190","_crosssell_ids","a:0:{}"),
("533","190","_purchase_note",""),
("534","190","_default_attributes","a:0:{}"),
("535","190","_virtual","no"),
("536","190","_downloadable","no"),
("537","190","_product_image_gallery","197,201,199"),
("538","190","_download_limit","-1"),
("539","190","_download_expiry","-1"),
("540","190","_stock",""),
("541","190","_stock_status","instock"),
("542","190","_product_version","3.5.6"),
("543","190","_price","450000"),
("544","190","_edit_lock","1552231683:1"),
("545","192","_wc_review_count","1"),
("546","192","_wc_rating_count","a:1:{i:5;i:1;}"),
("547","192","_wc_average_rating","5.00"),
("548","192","_edit_last","1"),
("549","192","_edit_lock","1552231658:1"),
("550","193","_wp_attached_file","2019/03/Webvision-T7202W.jpg"),
("551","193","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:28:\"2019/03/Webvision-T7202W.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Webvision-T7202W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Webvision-T7202W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("552","192","_thumbnail_id","193"),
("553","192","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("554","192","_sku",""),
("555","192","_regular_price","650000"),
("556","192","_sale_price","450000"),
("557","192","_sale_price_dates_from",""),
("558","192","_sale_price_dates_to",""),
("559","192","total_sales","0"),
("560","192","_tax_status","taxable"),
("561","192","_tax_class",""),
("562","192","_manage_stock","no"),
("563","192","_backorders","no"),
("564","192","_low_stock_amount",""),
("565","192","_sold_individually","no"),
("566","192","_weight",""),
("567","192","_length",""),
("568","192","_width",""),
("569","192","_height",""),
("570","192","_upsell_ids","a:0:{}"),
("571","192","_crosssell_ids","a:0:{}"),
("572","192","_purchase_note",""),
("573","192","_default_attributes","a:0:{}"),
("574","192","_virtual","no"),
("575","192","_downloadable","no"),
("576","192","_product_image_gallery","191,195,193,197"),
("577","192","_download_limit","-1"),
("578","192","_download_expiry","-1"),
("579","192","_stock",""),
("580","192","_stock_status","instock"),
("581","192","_product_version","3.5.6"),
("582","192","_price","450000"),
("583","194","_wc_review_count","1"),
("584","194","_wc_rating_count","a:1:{i:5;i:1;}"),
("585","194","_wc_average_rating","5.00"),
("586","194","_edit_last","1"),
("587","194","_edit_lock","1552231623:1");
INSERT INTO gdd__postmeta VALUES
("588","195","_wp_attached_file","2019/03/6206w.jpg"),
("589","195","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/03/6206w.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"6206w-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"6206w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"6206w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"6206w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"6206w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"6206w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("590","194","_thumbnail_id","195"),
("591","194","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("592","194","_sku",""),
("593","194","_regular_price","780000"),
("594","194","_sale_price","590000"),
("595","194","_sale_price_dates_from",""),
("596","194","_sale_price_dates_to",""),
("597","194","total_sales","0"),
("598","194","_tax_status","taxable"),
("599","194","_tax_class",""),
("600","194","_manage_stock","no"),
("601","194","_backorders","no"),
("602","194","_low_stock_amount",""),
("603","194","_sold_individually","no"),
("604","194","_weight",""),
("605","194","_length",""),
("606","194","_width",""),
("607","194","_height",""),
("608","194","_upsell_ids","a:0:{}"),
("609","194","_crosssell_ids","a:0:{}"),
("610","194","_purchase_note",""),
("611","194","_default_attributes","a:0:{}"),
("612","194","_virtual","no"),
("613","194","_downloadable","no"),
("614","194","_product_image_gallery","162,165,164,163"),
("615","194","_download_limit","-1"),
("616","194","_download_expiry","-1"),
("617","194","_stock",""),
("618","194","_stock_status","instock"),
("619","194","_product_version","3.5.6"),
("620","194","_price","590000"),
("621","196","_wc_review_count","1"),
("622","196","_wc_rating_count","a:1:{i:5;i:1;}"),
("623","196","_wc_average_rating","5.00"),
("624","196","_edit_last","1"),
("625","196","_edit_lock","1552231596:1"),
("626","197","_wp_attached_file","2019/03/Webvision-T6100WIP.jpg"),
("627","197","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/03/Webvision-T6100WIP.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Webvision-T6100WIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Webvision-T6100WIP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("628","196","_thumbnail_id","197"),
("629","196","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("630","196","_sku",""),
("631","196","_regular_price","690000"),
("632","196","_sale_price","650000"),
("633","196","_sale_price_dates_from",""),
("634","196","_sale_price_dates_to",""),
("635","196","total_sales","0"),
("636","196","_tax_status","taxable"),
("637","196","_tax_class",""),
("638","196","_manage_stock","no"),
("639","196","_backorders","no"),
("640","196","_low_stock_amount",""),
("641","196","_sold_individually","no"),
("642","196","_weight",""),
("643","196","_length",""),
("644","196","_width",""),
("645","196","_height",""),
("646","196","_upsell_ids","a:0:{}"),
("647","196","_crosssell_ids","a:0:{}"),
("648","196","_purchase_note",""),
("649","196","_default_attributes","a:0:{}"),
("650","196","_virtual","no"),
("651","196","_downloadable","no"),
("652","196","_product_image_gallery","167,165,164,163"),
("653","196","_download_limit","-1"),
("654","196","_download_expiry","-1"),
("655","196","_stock",""),
("656","196","_stock_status","instock"),
("657","196","_product_version","3.5.6"),
("658","196","_price","650000"),
("659","198","_wc_review_count","1"),
("660","198","_wc_rating_count","a:1:{i:4;i:1;}"),
("661","198","_wc_average_rating","4.00"),
("662","198","_edit_last","1"),
("663","198","_edit_lock","1552231566:1"),
("664","199","_wp_attached_file","2019/03/6204w.jpg"),
("665","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/03/6204w.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"6204w-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"6204w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"6204w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"6204w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"6204w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"6204w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("666","198","_thumbnail_id","199"),
("667","198","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("668","198","_sku",""),
("669","198","_regular_price","450000"),
("670","198","_sale_price","430000"),
("671","198","_sale_price_dates_from",""),
("672","198","_sale_price_dates_to",""),
("673","198","total_sales","0"),
("674","198","_tax_status","taxable"),
("675","198","_tax_class",""),
("676","198","_manage_stock","no"),
("677","198","_backorders","no"),
("678","198","_low_stock_amount",""),
("679","198","_sold_individually","no"),
("680","198","_weight",""),
("681","198","_length",""),
("682","198","_width",""),
("683","198","_height",""),
("684","198","_upsell_ids","a:0:{}"),
("685","198","_crosssell_ids","a:0:{}"),
("686","198","_purchase_note",""),
("687","198","_default_attributes","a:0:{}");
INSERT INTO gdd__postmeta VALUES
("688","198","_virtual","no"),
("689","198","_downloadable","no"),
("690","198","_product_image_gallery","195,193,191,174"),
("691","198","_download_limit","-1"),
("692","198","_download_expiry","-1"),
("693","198","_stock",""),
("694","198","_stock_status","instock"),
("695","198","_product_version","3.5.6"),
("696","198","_price","430000"),
("697","200","_wc_review_count","1"),
("698","200","_wc_rating_count","a:1:{i:5;i:1;}"),
("699","200","_wc_average_rating","5.00"),
("700","201","_wp_attached_file","2019/03/T6836W.jpg"),
("701","201","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2019/03/T6836W.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"T6836W-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"T6836W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"T6836W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"T6836W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"T6836W-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"T6836W-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("702","200","_edit_last","1"),
("703","200","_thumbnail_id","201"),
("704","200","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("705","200","_sku",""),
("706","200","_regular_price","650000"),
("707","200","_sale_price","320000"),
("708","200","_sale_price_dates_from",""),
("709","200","_sale_price_dates_to",""),
("710","200","total_sales","0"),
("711","200","_tax_status","taxable"),
("712","200","_tax_class",""),
("713","200","_manage_stock","no"),
("714","200","_backorders","no"),
("715","200","_low_stock_amount",""),
("716","200","_sold_individually","no"),
("717","200","_weight",""),
("718","200","_length",""),
("719","200","_width",""),
("720","200","_height",""),
("721","200","_upsell_ids","a:0:{}"),
("722","200","_crosssell_ids","a:0:{}"),
("723","200","_purchase_note",""),
("724","200","_default_attributes","a:0:{}"),
("725","200","_virtual","no"),
("726","200","_downloadable","no"),
("727","200","_product_image_gallery","167,172,169"),
("728","200","_download_limit","-1"),
("729","200","_download_expiry","-1"),
("730","200","_stock",""),
("731","200","_stock_status","instock"),
("732","200","_product_version","3.5.6"),
("733","200","_price","320000"),
("734","200","_edit_lock","1552231541:1"),
("735","202","_wc_review_count","1"),
("736","202","_wc_rating_count","a:1:{i:5;i:1;}"),
("737","202","_wc_average_rating","5.00"),
("738","202","_edit_last","1"),
("739","202","_edit_lock","1552231515:1"),
("740","203","_wp_attached_file","2019/03/WebvisionS6263Y-HD.jpg"),
("741","203","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/03/WebvisionS6263Y-HD.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"WebvisionS6263Y-HD-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("742","202","_thumbnail_id","203"),
("743","202","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("744","202","_sku",""),
("745","202","_regular_price","850000"),
("746","202","_sale_price","150000"),
("747","202","_sale_price_dates_from",""),
("748","202","_sale_price_dates_to",""),
("749","202","total_sales","0"),
("750","202","_tax_status","taxable"),
("751","202","_tax_class",""),
("752","202","_manage_stock","no"),
("753","202","_backorders","no"),
("754","202","_low_stock_amount",""),
("755","202","_sold_individually","no"),
("756","202","_weight",""),
("757","202","_length",""),
("758","202","_width",""),
("759","202","_height",""),
("760","202","_upsell_ids","a:0:{}"),
("761","202","_crosssell_ids","a:0:{}"),
("762","202","_purchase_note",""),
("763","202","_default_attributes","a:0:{}"),
("764","202","_virtual","no"),
("765","202","_downloadable","no"),
("766","202","_product_image_gallery","203,201,199,197"),
("767","202","_download_limit","-1"),
("768","202","_download_expiry","-1"),
("769","202","_stock",""),
("770","202","_stock_status","instock"),
("771","202","_product_version","3.5.6"),
("772","202","_price","150000"),
("773","204","_wc_review_count","1"),
("774","204","_wc_rating_count","a:1:{i:5;i:1;}"),
("775","204","_wc_average_rating","5.00"),
("776","204","_edit_last","1"),
("777","204","_edit_lock","1552231489:1"),
("778","205","_wp_attached_file","2019/03/6203w.jpg"),
("779","205","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/03/6203w.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"6203w-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"6203w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"6203w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"6203w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"6203w-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"6203w-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("780","204","_thumbnail_id","205"),
("781","204","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("782","204","_sku",""),
("783","204","_regular_price","5600000"),
("784","204","_sale_price","4500000"),
("785","204","_sale_price_dates_from",""),
("786","204","_sale_price_dates_to",""),
("787","204","total_sales","0");
INSERT INTO gdd__postmeta VALUES
("788","204","_tax_status","taxable"),
("789","204","_tax_class",""),
("790","204","_manage_stock","no"),
("791","204","_backorders","no"),
("792","204","_low_stock_amount",""),
("793","204","_sold_individually","no"),
("794","204","_weight",""),
("795","204","_length",""),
("796","204","_width",""),
("797","204","_height",""),
("798","204","_upsell_ids","a:0:{}"),
("799","204","_crosssell_ids","a:0:{}"),
("800","204","_purchase_note",""),
("801","204","_default_attributes","a:0:{}"),
("802","204","_virtual","no"),
("803","204","_downloadable","no"),
("804","204","_product_image_gallery","195,193,191,174"),
("805","204","_download_limit","-1"),
("806","204","_download_expiry","-1"),
("807","204","_stock",""),
("808","204","_stock_status","instock"),
("809","204","_product_version","3.5.6"),
("810","204","_price","4500000"),
("811","206","_wc_review_count","1"),
("812","206","_wc_rating_count","a:1:{i:5;i:1;}"),
("813","206","_wc_average_rating","5.00"),
("814","206","_edit_last","1"),
("815","206","_edit_lock","1552151874:1"),
("816","207","_wp_attached_file","2019/03/bom-dien-12v-michelin-12260.jpg"),
("817","207","_wp_attachment_metadata","a:5:{s:5:\"width\";i:340;s:6:\"height\";i:340;s:4:\"file\";s:39:\"2019/03/bom-dien-12v-michelin-12260.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"bom-dien-12v-michelin-12260-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("818","206","_thumbnail_id","207"),
("819","206","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("820","206","_sku",""),
("821","206","_regular_price","450000"),
("822","206","_sale_price","400000"),
("823","206","_sale_price_dates_from",""),
("824","206","_sale_price_dates_to",""),
("825","206","total_sales","0"),
("826","206","_tax_status","taxable"),
("827","206","_tax_class",""),
("828","206","_manage_stock","no"),
("829","206","_backorders","no"),
("830","206","_low_stock_amount",""),
("831","206","_sold_individually","no"),
("832","206","_weight",""),
("833","206","_length",""),
("834","206","_width",""),
("835","206","_height",""),
("836","206","_upsell_ids","a:0:{}"),
("837","206","_crosssell_ids","a:0:{}"),
("838","206","_purchase_note",""),
("839","206","_default_attributes","a:0:{}"),
("840","206","_virtual","no"),
("841","206","_downloadable","no"),
("842","206","_product_image_gallery",""),
("843","206","_download_limit","-1"),
("844","206","_download_expiry","-1"),
("845","206","_stock",""),
("846","206","_stock_status","instock"),
("847","206","_product_version","3.5.6"),
("848","206","_price","400000"),
("849","208","_wc_review_count","1"),
("850","208","_wc_rating_count","a:1:{i:5;i:1;}"),
("851","208","_wc_average_rating","5.00"),
("852","208","_edit_last","1"),
("853","208","_edit_lock","1552151845:1"),
("854","209","_wp_attached_file","2019/03/samsung-64gb-class10.jpg"),
("855","209","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:32:\"2019/03/samsung-64gb-class10.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"samsung-64gb-class10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"samsung-64gb-class10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("856","208","_thumbnail_id","209"),
("857","208","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("858","208","_sku",""),
("859","208","_regular_price","360000"),
("860","208","_sale_price","150000"),
("861","208","_sale_price_dates_from",""),
("862","208","_sale_price_dates_to",""),
("863","208","total_sales","0"),
("864","208","_tax_status","taxable"),
("865","208","_tax_class",""),
("866","208","_manage_stock","no"),
("867","208","_backorders","no"),
("868","208","_low_stock_amount",""),
("869","208","_sold_individually","no"),
("870","208","_weight",""),
("871","208","_length",""),
("872","208","_width",""),
("873","208","_height",""),
("874","208","_upsell_ids","a:0:{}"),
("875","208","_crosssell_ids","a:0:{}"),
("876","208","_purchase_note",""),
("877","208","_default_attributes","a:0:{}"),
("878","208","_virtual","no"),
("879","208","_downloadable","no"),
("880","208","_product_image_gallery",""),
("881","208","_download_limit","-1"),
("882","208","_download_expiry","-1"),
("883","208","_stock",""),
("884","208","_stock_status","instock"),
("885","208","_product_version","3.5.6"),
("886","208","_price","150000"),
("887","210","_wc_review_count","1");
INSERT INTO gdd__postmeta VALUES
("888","210","_wc_rating_count","a:1:{i:4;i:1;}"),
("889","210","_wc_average_rating","4.00"),
("890","210","_edit_last","1"),
("891","210","_edit_lock","1552231791:1"),
("892","211","_wp_attached_file","2019/03/Nguon-s8.jpg"),
("893","211","_wp_attachment_metadata","a:5:{s:5:\"width\";i:550;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2019/03/Nguon-s8.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Nguon-s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Nguon-s8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("894","210","_thumbnail_id","211"),
("895","210","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("896","210","_sku",""),
("897","210","_regular_price","960000"),
("898","210","_sale_price","580000"),
("899","210","_sale_price_dates_from",""),
("900","210","_sale_price_dates_to",""),
("901","210","total_sales","0"),
("902","210","_tax_status","taxable"),
("903","210","_tax_class",""),
("904","210","_manage_stock","no"),
("905","210","_backorders","no"),
("906","210","_low_stock_amount",""),
("907","210","_sold_individually","no"),
("908","210","_weight",""),
("909","210","_length",""),
("910","210","_width",""),
("911","210","_height",""),
("912","210","_upsell_ids","a:0:{}"),
("913","210","_crosssell_ids","a:0:{}"),
("914","210","_purchase_note",""),
("915","210","_default_attributes","a:0:{}"),
("916","210","_virtual","no"),
("917","210","_downloadable","no"),
("918","210","_product_image_gallery","191,195,193"),
("919","210","_download_limit","-1"),
("920","210","_download_expiry","-1"),
("921","210","_stock",""),
("922","210","_stock_status","instock"),
("923","210","_product_version","3.5.6"),
("924","210","_price","580000"),
("925","212","_wc_review_count","0"),
("926","212","_wc_rating_count","a:0:{}"),
("927","212","_wc_average_rating","0"),
("928","212","_edit_last","1"),
("929","212","_edit_lock","1552149245:1"),
("930","213","_wp_attached_file","2019/03/Bom-tu-va.jpg"),
("931","213","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2019/03/Bom-tu-va.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Bom-tu-va-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Bom-tu-va-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("932","212","_thumbnail_id","213"),
("933","212","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("934","212","_sku",""),
("935","212","_regular_price","780000"),
("936","212","_sale_price","250000"),
("937","212","_sale_price_dates_from",""),
("938","212","_sale_price_dates_to",""),
("939","212","total_sales","0"),
("940","212","_tax_status","taxable"),
("941","212","_tax_class",""),
("942","212","_manage_stock","no"),
("943","212","_backorders","no"),
("944","212","_low_stock_amount",""),
("945","212","_sold_individually","no"),
("946","212","_weight",""),
("947","212","_length",""),
("948","212","_width",""),
("949","212","_height",""),
("950","212","_upsell_ids","a:0:{}"),
("951","212","_crosssell_ids","a:0:{}"),
("952","212","_purchase_note",""),
("953","212","_default_attributes","a:0:{}"),
("954","212","_virtual","no"),
("955","212","_downloadable","no"),
("956","212","_product_image_gallery",""),
("957","212","_download_limit","-1"),
("958","212","_download_expiry","-1"),
("959","212","_stock",""),
("960","212","_stock_status","instock"),
("961","212","_product_version","3.5.6"),
("962","212","_price","250000"),
("963","214","_wc_review_count","1"),
("964","214","_wc_rating_count","a:1:{i:5;i:1;}"),
("965","214","_wc_average_rating","5.00"),
("966","214","_edit_last","1"),
("967","214","_edit_lock","1552231765:1"),
("968","215","_wp_attached_file","2019/03/bom-dien-michelin-12266-3.jpg"),
("969","215","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2019/03/bom-dien-michelin-12266-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12266-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12266-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12266-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("970","214","_thumbnail_id","215"),
("971","214","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("972","214","_sku",""),
("973","214","_regular_price","620000"),
("974","214","_sale_price","460000"),
("975","214","_sale_price_dates_from",""),
("976","214","_sale_price_dates_to",""),
("977","214","total_sales","0"),
("978","214","_tax_status","taxable"),
("979","214","_tax_class",""),
("980","214","_manage_stock","no"),
("981","214","_backorders","no"),
("982","214","_low_stock_amount",""),
("983","214","_sold_individually","no"),
("984","214","_weight",""),
("985","214","_length",""),
("986","214","_width",""),
("987","214","_height","");
INSERT INTO gdd__postmeta VALUES
("988","214","_upsell_ids","a:0:{}"),
("989","214","_crosssell_ids","a:0:{}"),
("990","214","_purchase_note",""),
("991","214","_default_attributes","a:0:{}"),
("992","214","_virtual","no"),
("993","214","_downloadable","no"),
("994","214","_product_image_gallery","193,197,195"),
("995","214","_download_limit","-1"),
("996","214","_download_expiry","-1"),
("997","214","_stock",""),
("998","214","_stock_status","instock"),
("999","214","_product_version","3.5.6"),
("1000","214","_price","460000"),
("1001","216","_wc_review_count","1"),
("1002","216","_wc_rating_count","a:1:{i:5;i:1;}"),
("1003","216","_wc_average_rating","5.00"),
("1004","216","_edit_last","1"),
("1005","216","_edit_lock","1552231740:1"),
("1006","217","_wp_attached_file","2019/03/bom-dien-michelin-12264-2.jpg"),
("1007","217","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2019/03/bom-dien-michelin-12264-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12264-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12264-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"bom-dien-michelin-12264-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1008","216","_thumbnail_id","217"),
("1009","216","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1010","216","_sku",""),
("1011","216","_regular_price","560000"),
("1012","216","_sale_price","550000"),
("1013","216","_sale_price_dates_from",""),
("1014","216","_sale_price_dates_to",""),
("1015","216","total_sales","0"),
("1016","216","_tax_status","taxable"),
("1017","216","_tax_class",""),
("1018","216","_manage_stock","no"),
("1019","216","_backorders","no"),
("1020","216","_low_stock_amount",""),
("1021","216","_sold_individually","no"),
("1022","216","_weight",""),
("1023","216","_length",""),
("1024","216","_width",""),
("1025","216","_height",""),
("1026","216","_upsell_ids","a:0:{}"),
("1027","216","_crosssell_ids","a:0:{}"),
("1028","216","_purchase_note",""),
("1029","216","_default_attributes","a:0:{}"),
("1030","216","_virtual","no"),
("1031","216","_downloadable","no"),
("1032","216","_product_image_gallery","199,203,201"),
("1033","216","_download_limit","-1"),
("1034","216","_download_expiry","-1"),
("1035","216","_stock",""),
("1036","216","_stock_status","instock"),
("1037","216","_product_version","3.5.6"),
("1038","216","_price","550000"),
("1039","218","_wc_review_count","1"),
("1040","218","_wc_rating_count","a:1:{i:5;i:1;}"),
("1041","218","_wc_average_rating","5.00"),
("1042","218","_edit_last","1"),
("1043","218","_edit_lock","1552231713:1"),
("1044","219","_wp_attached_file","2019/03/c1-3-in-1car-charger-white.jpg"),
("1045","219","_wp_attachment_metadata","a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:38:\"2019/03/c1-3-in-1car-charger-white.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"c1-3-in-1car-charger-white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1046","218","_thumbnail_id","219"),
("1047","218","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1048","218","_sku",""),
("1049","218","_regular_price","560000"),
("1050","218","_sale_price","150000"),
("1051","218","_sale_price_dates_from",""),
("1052","218","_sale_price_dates_to",""),
("1053","218","total_sales","0"),
("1054","218","_tax_status","taxable"),
("1055","218","_tax_class",""),
("1056","218","_manage_stock","no"),
("1057","218","_backorders","no"),
("1058","218","_low_stock_amount",""),
("1059","218","_sold_individually","no"),
("1060","218","_weight",""),
("1061","218","_length",""),
("1062","218","_width",""),
("1063","218","_height",""),
("1064","218","_upsell_ids","a:0:{}"),
("1065","218","_crosssell_ids","a:0:{}"),
("1066","218","_purchase_note",""),
("1067","218","_default_attributes","a:0:{}"),
("1068","218","_virtual","no"),
("1069","218","_downloadable","no"),
("1070","218","_product_image_gallery","191,195,193"),
("1071","218","_download_limit","-1"),
("1072","218","_download_expiry","-1"),
("1073","218","_stock",""),
("1074","218","_stock_status","instock"),
("1075","218","_product_version","3.5.6"),
("1076","218","_price","150000"),
("1077","220","_wc_review_count","0"),
("1078","220","_wc_rating_count","a:0:{}"),
("1079","220","_wc_average_rating","0"),
("1080","220","_edit_last","1"),
("1081","220","_edit_lock","1552149501:1"),
("1082","221","_wp_attached_file","2019/03/N93X-1-600x600.png"),
("1083","221","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:26:\"2019/03/N93X-1-600x600.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"N93X-1-600x600-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"N93X-1-600x600-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1084","222","_wp_attached_file","2019/03/thiet-bi-dan-duong.jpg"),
("1085","222","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:30:\"2019/03/thiet-bi-dan-duong.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"thiet-bi-dan-duong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"thiet-bi-dan-duong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"thiet-bi-dan-duong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1086","220","_thumbnail_id","222"),
("1087","220","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}");
INSERT INTO gdd__postmeta VALUES
("1088","220","_sku",""),
("1089","220","_regular_price","5600000"),
("1090","220","_sale_price","4500000"),
("1091","220","_sale_price_dates_from",""),
("1092","220","_sale_price_dates_to",""),
("1093","220","total_sales","0"),
("1094","220","_tax_status","taxable"),
("1095","220","_tax_class",""),
("1096","220","_manage_stock","no"),
("1097","220","_backorders","no"),
("1098","220","_low_stock_amount",""),
("1099","220","_sold_individually","no"),
("1100","220","_weight",""),
("1101","220","_length",""),
("1102","220","_width",""),
("1103","220","_height",""),
("1104","220","_upsell_ids","a:0:{}"),
("1105","220","_crosssell_ids","a:0:{}"),
("1106","220","_purchase_note",""),
("1107","220","_default_attributes","a:0:{}"),
("1108","220","_virtual","no"),
("1109","220","_downloadable","no"),
("1110","220","_product_image_gallery",""),
("1111","220","_download_limit","-1"),
("1112","220","_download_expiry","-1"),
("1113","220","_stock",""),
("1114","220","_stock_status","instock"),
("1115","220","_product_version","3.5.6"),
("1116","220","_price","4500000"),
("1117","223","_wc_review_count","0"),
("1118","223","_wc_rating_count","a:0:{}"),
("1119","223","_wc_average_rating","0"),
("1120","224","_wp_attached_file","2019/03/thiet-bi-dan-duong-2.jpg"),
("1121","224","_wp_attachment_metadata","a:5:{s:5:\"width\";i:283;s:6:\"height\";i:283;s:4:\"file\";s:32:\"2019/03/thiet-bi-dan-duong-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"thiet-bi-dan-duong-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"thiet-bi-dan-duong-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"thiet-bi-dan-duong-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1122","223","_edit_last","1"),
("1123","223","_thumbnail_id","224"),
("1124","223","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1125","223","_sku",""),
("1126","223","_regular_price","6300000"),
("1127","223","_sale_price","6200000"),
("1128","223","_sale_price_dates_from",""),
("1129","223","_sale_price_dates_to",""),
("1130","223","total_sales","0"),
("1131","223","_tax_status","taxable"),
("1132","223","_tax_class",""),
("1133","223","_manage_stock","no"),
("1134","223","_backorders","no"),
("1135","223","_low_stock_amount",""),
("1136","223","_sold_individually","no"),
("1137","223","_weight",""),
("1138","223","_length",""),
("1139","223","_width",""),
("1140","223","_height",""),
("1141","223","_upsell_ids","a:0:{}"),
("1142","223","_crosssell_ids","a:0:{}"),
("1143","223","_purchase_note",""),
("1144","223","_default_attributes","a:0:{}"),
("1145","223","_virtual","no"),
("1146","223","_downloadable","no"),
("1147","223","_product_image_gallery",""),
("1148","223","_download_limit","-1"),
("1149","223","_download_expiry","-1"),
("1150","223","_stock",""),
("1151","223","_stock_status","instock"),
("1152","223","_product_version","3.5.6"),
("1153","223","_price","6200000"),
("1154","223","_edit_lock","1552149555:1"),
("1155","225","_wc_review_count","0"),
("1156","225","_wc_rating_count","a:0:{}"),
("1157","225","_wc_average_rating","0"),
("1158","225","_edit_last","1"),
("1159","225","_edit_lock","1552149613:1"),
("1160","226","_wp_attached_file","2019/03/camera-hanh-trinh-n93.jpg"),
("1161","226","_wp_attachment_metadata","a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2019/03/camera-hanh-trinh-n93.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"camera-hanh-trinh-n93-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1162","225","_thumbnail_id","226"),
("1163","225","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1164","225","_sku",""),
("1165","225","_regular_price","5200000"),
("1166","225","_sale_price","5000000"),
("1167","225","_sale_price_dates_from",""),
("1168","225","_sale_price_dates_to",""),
("1169","225","total_sales","0"),
("1170","225","_tax_status","taxable"),
("1171","225","_tax_class",""),
("1172","225","_manage_stock","no"),
("1173","225","_backorders","no"),
("1174","225","_low_stock_amount",""),
("1175","225","_sold_individually","no"),
("1176","225","_weight",""),
("1177","225","_length",""),
("1178","225","_width",""),
("1179","225","_height",""),
("1180","225","_upsell_ids","a:0:{}"),
("1181","225","_crosssell_ids","a:0:{}"),
("1182","225","_purchase_note",""),
("1183","225","_default_attributes","a:0:{}"),
("1184","225","_virtual","no"),
("1185","225","_downloadable","no"),
("1186","225","_product_image_gallery",""),
("1187","225","_download_limit","-1");
INSERT INTO gdd__postmeta VALUES
("1188","225","_download_expiry","-1"),
("1189","225","_stock",""),
("1190","225","_stock_status","instock"),
("1191","225","_product_version","3.5.6"),
("1192","225","_price","5000000"),
("1270","282","_wp_attached_file","2019/03/banner-01.jpg"),
("1271","282","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:151;s:4:\"file\";s:21:\"2019/03/banner-01.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-01-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-01-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-01-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1272","283","_wp_attached_file","2019/03/banner-02.jpg"),
("1273","283","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:151;s:4:\"file\";s:21:\"2019/03/banner-02.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-02-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-02-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-02-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1274","284","_wp_attached_file","2019/03/banner-03.jpg"),
("1275","284","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:151;s:4:\"file\";s:21:\"2019/03/banner-03.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-03-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-03-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banner-03-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1282","291","_wp_attached_file","2019/03/bg2.jpg"),
("1283","291","_wp_attachment_metadata","a:5:{s:5:\"width\";i:917;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2019/03/bg2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg2-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg2-768x188.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"bg2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"bg2-600x147.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"bg2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"bg2-600x147.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1284","294","_edit_last","1"),
("1285","294","_edit_lock","1552152948:1"),
("1286","295","_wp_attached_file","2019/03/1-534x400.jpg"),
("1287","295","_wp_attachment_metadata","a:5:{s:5:\"width\";i:534;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2019/03/1-534x400.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"1-534x400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"1-534x400-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"1-534x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"1-534x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"1-534x400-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"1-534x400-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1288","296","_wp_attached_file","2019/03/post1.jpg"),
("1289","296","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1290","294","_thumbnail_id","296"),
("1292","299","_wp_attached_file","2019/03/post2.jpg"),
("1293","299","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1294","298","_edit_last","1"),
("1295","298","_thumbnail_id","299"),
("1297","298","_edit_lock","1552153006:1"),
("1299","301","_edit_last","1"),
("1300","301","_edit_lock","1552153293:1"),
("1301","302","_wp_attached_file","2019/03/post3.jpg"),
("1302","302","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1303","301","_thumbnail_id","302"),
("1305","304","_edit_last","1"),
("1306","304","_edit_lock","1552153107:1"),
("1307","305","_wp_attached_file","2019/03/post4.jpg"),
("1308","305","_wp_attachment_metadata","a:5:{s:5:\"width\";i:425;s:6:\"height\";i:318;s:4:\"file\";s:17:\"2019/03/post4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post4-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"post4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"post4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"post4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1309","304","_thumbnail_id","305"),
("1325","318","_edit_last","1"),
("1326","318","_edit_lock","1552153933:1"),
("1335","318","_thumbnail_id",""),
("1551","443","_edit_last","1"),
("1552","443","_edit_lock","1552232304:1"),
("1553","173","chinh_sach","D??ng th??? 7 ng??y mi???n ph?? v?? ?????i tr???"),
("1554","173","_chinh_sach","field_5c8523b2d9b2d"),
("1555","173","bao_hanh","36"),
("1556","173","_bao_hanh","field_5c8523cbd9b2e"),
("1557","173","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1558","173","_thanh_toan","field_5c8523f4d9b2f"),
("1559","173","van_chuyen","Mi???n ph?? to??n qu???c"),
("1560","173","_van_chuyen","field_5c852411d9b30"),
("1561","173","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1562","173","_lap_dat","field_5c852478d9b31"),
("1563","173","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1564","173","_qua_tang_1","field_5c8524a0d9b32"),
("1565","173","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1566","173","_qua_tang_2","field_5c8524bcd9b33"),
("1567","173","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1568","173","_qua_tang_3","field_5c8524d5d9b34"),
("1569","173","qua_tang_4",""),
("1570","173","_qua_tang_4","field_5c8524eed9b35"),
("1599","470","_wp_attached_file","2019/03/check@2x.png"),
("1600","470","_wp_attachment_metadata","a:5:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:20:\"2019/03/check@2x.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1601","470","_edit_lock","1552231134:1"),
("1620","173","qua_tang_5",""),
("1621","173","_qua_tang_5","field_5c85280fcdbc5"),
("1622","170","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1623","170","_chinh_sach","field_5c8523b2d9b2d"),
("1624","170","bao_hanh","36"),
("1625","170","_bao_hanh","field_5c8523cbd9b2e"),
("1626","170","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1627","170","_thanh_toan","field_5c8523f4d9b2f"),
("1628","170","van_chuyen","Mi???n ph?? to??n qu???c"),
("1629","170","_van_chuyen","field_5c852411d9b30"),
("1630","170","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1631","170","_lap_dat","field_5c852478d9b31"),
("1632","170","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1633","170","_qua_tang_1","field_5c8524a0d9b32"),
("1634","170","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1635","170","_qua_tang_2","field_5c8524bcd9b33"),
("1636","170","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1637","170","_qua_tang_3","field_5c8524d5d9b34"),
("1638","170","qua_tang_4","01 voucher mua h??ng tr??? gi?? 100K"),
("1639","170","_qua_tang_4","field_5c8524eed9b35"),
("1640","170","qua_tang_5",""),
("1641","170","_qua_tang_5","field_5c85280fcdbc5"),
("1642","168","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1643","168","_chinh_sach","field_5c8523b2d9b2d"),
("1644","168","bao_hanh","24"),
("1645","168","_bao_hanh","field_5c8523cbd9b2e"),
("1646","168","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1647","168","_thanh_toan","field_5c8523f4d9b2f"),
("1648","168","van_chuyen","Mi???n ph?? to??n qu???c"),
("1649","168","_van_chuyen","field_5c852411d9b30"),
("1650","168","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1651","168","_lap_dat","field_5c852478d9b31"),
("1652","168","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1653","168","_qua_tang_1","field_5c8524a0d9b32"),
("1654","168","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1655","168","_qua_tang_2","field_5c8524bcd9b33"),
("1656","168","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1657","168","_qua_tang_3","field_5c8524d5d9b34"),
("1658","168","qua_tang_4","");
INSERT INTO gdd__postmeta VALUES
("1659","168","_qua_tang_4","field_5c8524eed9b35"),
("1660","168","qua_tang_5",""),
("1661","168","_qua_tang_5","field_5c85280fcdbc5"),
("1662","166","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1663","166","_chinh_sach","field_5c8523b2d9b2d"),
("1664","166","bao_hanh","23"),
("1665","166","_bao_hanh","field_5c8523cbd9b2e"),
("1666","166","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1667","166","_thanh_toan","field_5c8523f4d9b2f"),
("1668","166","van_chuyen","Mi???n ph?? to??n qu???c"),
("1669","166","_van_chuyen","field_5c852411d9b30"),
("1670","166","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1671","166","_lap_dat","field_5c852478d9b31"),
("1672","166","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1673","166","_qua_tang_1","field_5c8524a0d9b32"),
("1674","166","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1675","166","_qua_tang_2","field_5c8524bcd9b33"),
("1676","166","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1677","166","_qua_tang_3","field_5c8524d5d9b34"),
("1678","166","qua_tang_4","T???ng 01 voucher t???i Thu C??c Hospital"),
("1679","166","_qua_tang_4","field_5c8524eed9b35"),
("1680","166","qua_tang_5",""),
("1681","166","_qua_tang_5","field_5c85280fcdbc5"),
("1682","204","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1683","204","_chinh_sach","field_5c8523b2d9b2d"),
("1684","204","bao_hanh","24"),
("1685","204","_bao_hanh","field_5c8523cbd9b2e"),
("1686","204","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1687","204","_thanh_toan","field_5c8523f4d9b2f"),
("1688","204","van_chuyen","Mi???n ph?? to??n qu???c"),
("1689","204","_van_chuyen","field_5c852411d9b30"),
("1690","204","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1691","204","_lap_dat","field_5c852478d9b31"),
("1692","204","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1693","204","_qua_tang_1","field_5c8524a0d9b32"),
("1694","204","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1695","204","_qua_tang_2","field_5c8524bcd9b33"),
("1696","204","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1697","204","_qua_tang_3","field_5c8524d5d9b34"),
("1698","204","qua_tang_4","T???ng 01 voucher mua h??ng tr??? gi?? 100k"),
("1699","204","_qua_tang_4","field_5c8524eed9b35"),
("1700","204","qua_tang_5",""),
("1701","204","_qua_tang_5","field_5c85280fcdbc5"),
("1702","202","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1703","202","_chinh_sach","field_5c8523b2d9b2d"),
("1704","202","bao_hanh","24"),
("1705","202","_bao_hanh","field_5c8523cbd9b2e"),
("1706","202","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1707","202","_thanh_toan","field_5c8523f4d9b2f"),
("1708","202","van_chuyen","Mi???n ph?? to??n qu???c"),
("1709","202","_van_chuyen","field_5c852411d9b30"),
("1710","202","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1711","202","_lap_dat","field_5c852478d9b31"),
("1712","202","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1713","202","_qua_tang_1","field_5c8524a0d9b32"),
("1714","202","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1715","202","_qua_tang_2","field_5c8524bcd9b33"),
("1716","202","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1717","202","_qua_tang_3","field_5c8524d5d9b34"),
("1718","202","qua_tang_4",""),
("1719","202","_qua_tang_4","field_5c8524eed9b35"),
("1720","202","qua_tang_5",""),
("1721","202","_qua_tang_5","field_5c85280fcdbc5"),
("1722","200","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1723","200","_chinh_sach","field_5c8523b2d9b2d"),
("1724","200","bao_hanh","20"),
("1725","200","_bao_hanh","field_5c8523cbd9b2e"),
("1726","200","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1727","200","_thanh_toan","field_5c8523f4d9b2f"),
("1728","200","van_chuyen","Mi???n ph?? to??n qu???c"),
("1729","200","_van_chuyen","field_5c852411d9b30"),
("1730","200","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1731","200","_lap_dat","field_5c852478d9b31"),
("1732","200","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1733","200","_qua_tang_1","field_5c8524a0d9b32"),
("1734","200","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1735","200","_qua_tang_2","field_5c8524bcd9b33"),
("1736","200","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1737","200","_qua_tang_3","field_5c8524d5d9b34"),
("1738","200","qua_tang_4",""),
("1739","200","_qua_tang_4","field_5c8524eed9b35"),
("1740","200","qua_tang_5",""),
("1741","200","_qua_tang_5","field_5c85280fcdbc5"),
("1742","198","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1743","198","_chinh_sach","field_5c8523b2d9b2d"),
("1744","198","bao_hanh","30"),
("1745","198","_bao_hanh","field_5c8523cbd9b2e"),
("1746","198","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1747","198","_thanh_toan","field_5c8523f4d9b2f"),
("1748","198","van_chuyen","Mi???n ph?? to??n qu???c"),
("1749","198","_van_chuyen","field_5c852411d9b30"),
("1750","198","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1751","198","_lap_dat","field_5c852478d9b31"),
("1752","198","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1753","198","_qua_tang_1","field_5c8524a0d9b32"),
("1754","198","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1755","198","_qua_tang_2","field_5c8524bcd9b33"),
("1756","198","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1757","198","_qua_tang_3","field_5c8524d5d9b34"),
("1758","198","qua_tang_4","");
INSERT INTO gdd__postmeta VALUES
("1759","198","_qua_tang_4","field_5c8524eed9b35"),
("1760","198","qua_tang_5",""),
("1761","198","_qua_tang_5","field_5c85280fcdbc5"),
("1762","196","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1763","196","_chinh_sach","field_5c8523b2d9b2d"),
("1764","196","bao_hanh","20"),
("1765","196","_bao_hanh","field_5c8523cbd9b2e"),
("1766","196","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1767","196","_thanh_toan","field_5c8523f4d9b2f"),
("1768","196","van_chuyen","Mi???n ph?? to??n qu???c"),
("1769","196","_van_chuyen","field_5c852411d9b30"),
("1770","196","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1771","196","_lap_dat","field_5c852478d9b31"),
("1772","196","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1773","196","_qua_tang_1","field_5c8524a0d9b32"),
("1774","196","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1775","196","_qua_tang_2","field_5c8524bcd9b33"),
("1776","196","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1777","196","_qua_tang_3","field_5c8524d5d9b34"),
("1778","196","qua_tang_4",""),
("1779","196","_qua_tang_4","field_5c8524eed9b35"),
("1780","196","qua_tang_5",""),
("1781","196","_qua_tang_5","field_5c85280fcdbc5"),
("1782","194","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1783","194","_chinh_sach","field_5c8523b2d9b2d"),
("1784","194","bao_hanh","12"),
("1785","194","_bao_hanh","field_5c8523cbd9b2e"),
("1786","194","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1787","194","_thanh_toan","field_5c8523f4d9b2f"),
("1788","194","van_chuyen","Mi???n ph?? to??n qu???c"),
("1789","194","_van_chuyen","field_5c852411d9b30"),
("1790","194","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1791","194","_lap_dat","field_5c852478d9b31"),
("1792","194","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1793","194","_qua_tang_1","field_5c8524a0d9b32"),
("1794","194","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1795","194","_qua_tang_2","field_5c8524bcd9b33"),
("1796","194","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1797","194","_qua_tang_3","field_5c8524d5d9b34"),
("1798","194","qua_tang_4",""),
("1799","194","_qua_tang_4","field_5c8524eed9b35"),
("1800","194","qua_tang_5",""),
("1801","194","_qua_tang_5","field_5c85280fcdbc5"),
("1802","192","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1803","192","_chinh_sach","field_5c8523b2d9b2d"),
("1804","192","bao_hanh","20"),
("1805","192","_bao_hanh","field_5c8523cbd9b2e"),
("1806","192","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1807","192","_thanh_toan","field_5c8523f4d9b2f"),
("1808","192","van_chuyen","Mi???n ph?? to??n qu???c"),
("1809","192","_van_chuyen","field_5c852411d9b30"),
("1810","192","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1811","192","_lap_dat","field_5c852478d9b31"),
("1812","192","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1813","192","_qua_tang_1","field_5c8524a0d9b32"),
("1814","192","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1815","192","_qua_tang_2","field_5c8524bcd9b33"),
("1816","192","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1817","192","_qua_tang_3","field_5c8524d5d9b34"),
("1818","192","qua_tang_4","T???ng qu?? kh???ng tr??? gi?? 200.000??"),
("1819","192","_qua_tang_4","field_5c8524eed9b35"),
("1820","192","qua_tang_5",""),
("1821","192","_qua_tang_5","field_5c85280fcdbc5"),
("1822","190","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1823","190","_chinh_sach","field_5c8523b2d9b2d"),
("1824","190","bao_hanh","30"),
("1825","190","_bao_hanh","field_5c8523cbd9b2e"),
("1826","190","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1827","190","_thanh_toan","field_5c8523f4d9b2f"),
("1828","190","van_chuyen","Mi???n ph?? to??n qu???c"),
("1829","190","_van_chuyen","field_5c852411d9b30"),
("1830","190","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1831","190","_lap_dat","field_5c852478d9b31"),
("1832","190","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1833","190","_qua_tang_1","field_5c8524a0d9b32"),
("1834","190","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1835","190","_qua_tang_2","field_5c8524bcd9b33"),
("1836","190","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1837","190","_qua_tang_3","field_5c8524d5d9b34"),
("1838","190","qua_tang_4",""),
("1839","190","_qua_tang_4","field_5c8524eed9b35"),
("1840","190","qua_tang_5",""),
("1841","190","_qua_tang_5","field_5c85280fcdbc5"),
("1842","218","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1843","218","_chinh_sach","field_5c8523b2d9b2d"),
("1844","218","bao_hanh","3"),
("1845","218","_bao_hanh","field_5c8523cbd9b2e"),
("1846","218","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1847","218","_thanh_toan","field_5c8523f4d9b2f"),
("1848","218","van_chuyen","Mi???n ph?? to??n qu???c"),
("1849","218","_van_chuyen","field_5c852411d9b30"),
("1850","218","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1851","218","_lap_dat","field_5c852478d9b31"),
("1852","218","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1853","218","_qua_tang_1","field_5c8524a0d9b32"),
("1854","218","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1855","218","_qua_tang_2","field_5c8524bcd9b33"),
("1856","218","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1857","218","_qua_tang_3","field_5c8524d5d9b34"),
("1858","218","qua_tang_4","");
INSERT INTO gdd__postmeta VALUES
("1859","218","_qua_tang_4","field_5c8524eed9b35"),
("1860","218","qua_tang_5",""),
("1861","218","_qua_tang_5","field_5c85280fcdbc5"),
("1862","216","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1863","216","_chinh_sach","field_5c8523b2d9b2d"),
("1864","216","bao_hanh","6"),
("1865","216","_bao_hanh","field_5c8523cbd9b2e"),
("1866","216","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1867","216","_thanh_toan","field_5c8523f4d9b2f"),
("1868","216","van_chuyen","Mi???n ph?? to??n qu???c"),
("1869","216","_van_chuyen","field_5c852411d9b30"),
("1870","216","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1871","216","_lap_dat","field_5c852478d9b31"),
("1872","216","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1873","216","_qua_tang_1","field_5c8524a0d9b32"),
("1874","216","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1875","216","_qua_tang_2","field_5c8524bcd9b33"),
("1876","216","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1877","216","_qua_tang_3","field_5c8524d5d9b34"),
("1878","216","qua_tang_4",""),
("1879","216","_qua_tang_4","field_5c8524eed9b35"),
("1880","216","qua_tang_5",""),
("1881","216","_qua_tang_5","field_5c85280fcdbc5"),
("1882","214","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1883","214","_chinh_sach","field_5c8523b2d9b2d"),
("1884","214","bao_hanh","12"),
("1885","214","_bao_hanh","field_5c8523cbd9b2e"),
("1886","214","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1887","214","_thanh_toan","field_5c8523f4d9b2f"),
("1888","214","van_chuyen","Mi???n ph?? to??n qu???c"),
("1889","214","_van_chuyen","field_5c852411d9b30"),
("1890","214","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1891","214","_lap_dat","field_5c852478d9b31"),
("1892","214","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1893","214","_qua_tang_1","field_5c8524a0d9b32"),
("1894","214","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1895","214","_qua_tang_2","field_5c8524bcd9b33"),
("1896","214","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1897","214","_qua_tang_3","field_5c8524d5d9b34"),
("1898","214","qua_tang_4",""),
("1899","214","_qua_tang_4","field_5c8524eed9b35"),
("1900","214","qua_tang_5",""),
("1901","214","_qua_tang_5","field_5c85280fcdbc5"),
("1902","210","chinh_sach","D??ng th??? 7 ng??y mi???n ph??"),
("1903","210","_chinh_sach","field_5c8523b2d9b2d"),
("1904","210","bao_hanh","12"),
("1905","210","_bao_hanh","field_5c8523cbd9b2e"),
("1906","210","thanh_toan","Thanh to??n khi nh???n h??ng"),
("1907","210","_thanh_toan","field_5c8523f4d9b2f"),
("1908","210","van_chuyen","Mi???n ph?? to??n qu???c"),
("1909","210","_van_chuyen","field_5c852411d9b30"),
("1910","210","lap_dat","Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c"),
("1911","210","_lap_dat","field_5c852478d9b31"),
("1912","210","qua_tang_1","1 Th??? nh??? 16 GB Class 10"),
("1913","210","_qua_tang_1","field_5c8524a0d9b32"),
("1914","210","qua_tang_2","1 ?????u ?????c th??? nh???"),
("1915","210","_qua_tang_2","field_5c8524bcd9b33"),
("1916","210","qua_tang_3","1 M??c t??m ch??a kh??a Key Finder "),
("1917","210","_qua_tang_3","field_5c8524d5d9b34"),
("1918","210","qua_tang_4",""),
("1919","210","_qua_tang_4","field_5c8524eed9b35"),
("1920","210","qua_tang_5",""),
("1921","210","_qua_tang_5","field_5c85280fcdbc5"),
("1958","497","_menu_item_type","post_type"),
("1959","497","_menu_item_menu_item_parent","0"),
("1960","497","_menu_item_object_id","32"),
("1961","497","_menu_item_object","page"),
("1962","497","_menu_item_target",""),
("1963","497","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1964","497","_menu_item_xfn",""),
("1965","497","_menu_item_url",""),
("1967","498","_menu_item_type","post_type"),
("1968","498","_menu_item_menu_item_parent","0"),
("1969","498","_menu_item_object_id","30"),
("1970","498","_menu_item_object","page"),
("1971","498","_menu_item_target",""),
("1972","498","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1973","498","_menu_item_xfn",""),
("1974","498","_menu_item_url",""),
("1976","499","_menu_item_type","post_type"),
("1977","499","_menu_item_menu_item_parent","0"),
("1978","499","_menu_item_object_id","2"),
("1979","499","_menu_item_object","page"),
("1980","499","_menu_item_target",""),
("1981","499","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1982","499","_menu_item_xfn",""),
("1983","499","_menu_item_url",""),
("1994","501","_menu_item_type","taxonomy"),
("1995","501","_menu_item_menu_item_parent","0"),
("1996","501","_menu_item_object_id","18"),
("1997","501","_menu_item_object","product_cat"),
("1998","501","_menu_item_target",""),
("1999","501","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2000","501","_menu_item_xfn",""),
("2001","501","_menu_item_url",""),
("2003","502","_menu_item_type","taxonomy"),
("2004","502","_menu_item_menu_item_parent","0"),
("2005","502","_menu_item_object_id","19"),
("2006","502","_menu_item_object","product_cat"),
("2007","502","_menu_item_target","");
INSERT INTO gdd__postmeta VALUES
("2008","502","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2009","502","_menu_item_xfn",""),
("2010","502","_menu_item_url",""),
("2012","503","_menu_item_type","taxonomy"),
("2013","503","_menu_item_menu_item_parent","0"),
("2014","503","_menu_item_object_id","20"),
("2015","503","_menu_item_object","product_cat"),
("2016","503","_menu_item_target",""),
("2017","503","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2018","503","_menu_item_xfn",""),
("2019","503","_menu_item_url",""),
("2021","504","_menu_item_type","taxonomy"),
("2022","504","_menu_item_menu_item_parent","0"),
("2023","504","_menu_item_object_id","1"),
("2024","504","_menu_item_object","category"),
("2025","504","_menu_item_target",""),
("2026","504","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("2027","504","_menu_item_xfn",""),
("2028","504","_menu_item_url",""),
("2036","508","_form","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[tel* tel-343 placeholder \"S??? ??i???n tho???i...\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"????ng k?? t?? v???n\"]\n    </div>\n    </div>"),
("2037","508","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:77:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:249:\"C?? m???t s??? ??i???n tho???i v???a ????ng k??:\n- S??? ??i???n tho???i: [tel-343]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2038","508","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:77:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:208:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2039","508","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("2040","508","_additional_settings",""),
("2041","508","_locale","vi"),
("2101","538","_order_key","wc_order_gkjKMjbkfyP0o"),
("2102","538","_customer_user","1"),
("2103","538","_payment_method","bacs"),
("2104","538","_payment_method_title","Chuy???n kho???n ng??n h??ng"),
("2105","538","_transaction_id",""),
("2106","538","_customer_ip_address","58.187.29.76"),
("2107","538","_customer_user_agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36"),
("2108","538","_created_via","checkout"),
("2109","538","_date_completed",""),
("2110","538","_completed_date",""),
("2111","538","_date_paid",""),
("2112","538","_paid_date",""),
("2113","538","_cart_hash","78a4cc2f0b3fb3d2d87b3da43d979af6"),
("2114","538","_billing_first_name",""),
("2115","538","_billing_last_name","admin"),
("2116","538","_billing_company",""),
("2117","538","_billing_address_1","Luong Ngoc Quyen"),
("2118","538","_billing_address_2",""),
("2119","538","_billing_city",""),
("2120","538","_billing_state",""),
("2121","538","_billing_postcode",""),
("2122","538","_billing_country",""),
("2123","538","_billing_email","webdemo@gmail.com"),
("2124","538","_billing_phone","972939830"),
("2125","538","_shipping_first_name",""),
("2126","538","_shipping_last_name",""),
("2127","538","_shipping_company",""),
("2128","538","_shipping_address_1",""),
("2129","538","_shipping_address_2",""),
("2130","538","_shipping_city",""),
("2131","538","_shipping_state",""),
("2132","538","_shipping_postcode",""),
("2133","538","_shipping_country",""),
("2134","538","_order_currency","VND"),
("2135","538","_cart_discount","0"),
("2136","538","_cart_discount_tax","0"),
("2137","538","_order_shipping","0"),
("2138","538","_order_shipping_tax","0"),
("2139","538","_order_tax","0"),
("2140","538","_order_total","27000000"),
("2141","538","_order_version","3.5.6"),
("2142","538","_prices_include_tax","no"),
("2143","538","_billing_address_index"," admin  Luong Ngoc Quyen      webdemo@gmail.com 972939830"),
("2144","538","_shipping_address_index","        "),
("2145","538","_recorded_sales","yes"),
("2146","538","_recorded_coupon_usage_counts","yes"),
("2147","538","_order_stock_reduced","yes"),
("2156","542","_form","[text* text-653 placeholder \"T??n c???a b???n...\"]\n[tel* tel-711 placeholder \"S??? ??i???n tho???i...\"]\n[textarea textarea-261 placeholder \"N???i dung li??n h???\"]\n[submit \"G???i li??n h???\"]"),
("2157","542","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:77:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:302:\"C?? ng?????i m???i li??n h??? tr??n website:\n- H??? v?? t??n: [text-653]\n- S??? ??i???n tho???i: [tel-711]\n- N???i dung: [textarea-261]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2158","542","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:77:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\";s:6:\"sender\";s:91:\"M???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:208:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("2159","542","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("2160","542","_additional_settings",""),
("2161","542","_locale","vi"),
("2165","32","_thumbnail_id",""),
("2188","1","_edit_lock","1552234779:1"),
("2189","1","_edit_last","1"),
("2190","1","_thumbnail_id","162"),
("2285","620","_wp_attached_file","woocommerce-placeholder.png"),
("2286","620","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2287","621","_wp_trash_meta_status","publish"),
("2288","621","_wp_trash_meta_time","1557133468"),
("2289","622","_wp_attached_file","2019/05/camera.jpg"),
("2290","622","_wp_attachment_metadata","a:5:{s:5:\"width\";i:282;s:6:\"height\";i:76;s:4:\"file\";s:18:\"2019/05/camera.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"camera-150x76.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"camera-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"camera-100x76.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("2291","623","_wp_trash_meta_status","publish"),
("2292","623","_wp_trash_meta_time","1557137444");




CREATE TABLE `gdd__posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__posts VALUES
("1","1","2019-03-09 05:27:45","2019-03-09 05:27:45","Ch??c m???ng ?????n v???i WordPress. ????y l?? b??i vi???t ?????u ti??n c???a b???n. H??y ch???nh s???a hay x??a b??i vi???t n??y, v?? b???t ?????u vi???t blog!","Ch??o t???t c??? m???i ng?????i!","","publish","open","open","","chao-moi-nguoi","","","2019-03-10 23:22:01","2019-03-10 16:22:01","","0","https://tppone.com/demo/camera/?p=1","0","post","","1"),
("2","1","2019-03-09 05:27:45","2019-03-09 05:27:45","[section label=\"Slider PC\" padding=\"0px\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullets=\"false\" bullet_style=\"simple\"]\n\n[ux_image id=\"133\" image_size=\"original\" height=\"28%\"]\n\n[ux_image id=\"136\" image_size=\"original\" height=\"28%\"]\n\n[ux_image id=\"138\" image_size=\"original\" height=\"28%\"]\n\n\n[/ux_slider]\n\n[/section]\n[row label=\"Ti??u ch??\" style=\"small\" class=\"row-tieu-chi\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"143\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">S???n ph???m ch???t l?????ng</span><br /><span style=\"font-size: 95%; color: #000000;\">th????ng hi???u uy t??n</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"144\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">T?? v???n ch??nh x??c</span><br /><span style=\"font-size: 95%; color: #000000;\">t??c phong chuy??n nghi???p</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"145\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">Gi?? th??nh t???t nh???t</span><br /><span style=\"font-size: 95%; color: #000000;\">B???o h??nh uy t??n</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[featured_box img=\"146\" img_width=\"40\" pos=\"left\"]\n\n<p><span style=\"font-size: 95%; color: #000000;\">Thanh to??n t???i nh??</span><br /><span style=\"font-size: 95%; color: #000000;\">an to??n 100%</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[section label=\"Danh m???c SP - PC\" bg_color=\"rgb(250, 250, 250)\" padding=\"40px\" class=\"danh-muc-sp-section\" visibility=\"hide-for-small\"]\n\n[row class=\"row-danh-muc\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Danh m???c s???n ph???m\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\"]\n\n[gap height=\"10px\"]\n\n[ux_product_categories style=\"overlay\" columns=\"3\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" ids=\"18,17,19,20\" image_height=\"65%\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Danh m???c SP - Mobile\" bg_color=\"rgb(250, 250, 250)\" padding=\"10px\" class=\"danh-muc-sp-section\" visibility=\"show-for-small\"]\n\n[row class=\"row-danh-muc\"]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Danh m???c s???n ph???m\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\"]\n\n[gap height=\"10px\"]\n\n[ux_product_categories style=\"overlay\" type=\"row\" columns=\"2\" ids=\"18,17,19,20\" image_height=\"65%\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Camera h??nh tr??nh\" class=\"category-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Camera h??nh tr??nh\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/camera-hanh-trinh/\"]\n\n[ux_products style=\"normal\" type=\"row\" cat=\"18\" products=\"4\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.31)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"IP Camera\" class=\"category-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"IP Camera\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/camera-quan-sat/\"]\n\n[ux_products style=\"normal\" type=\"row\" cat=\"19\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.31)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Banner\" padding=\"0px\" class=\"banner-section\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"282\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.23)\" image_hover=\"overlay-add\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"283\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.25)\" image_hover=\"overlay-add\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"284\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.25)\" image_hover=\"overlay-add\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Ph??? ki???n\" class=\"category-section\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Ph??? ki???n HOT\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/phu-kien-camera/\"]\n\n[ux_products style=\"normal\" columns=\"5\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"20\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.31)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" bg_color=\"rgb(250, 250, 250)\" padding=\"40px\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Tin t???c\" tag_name=\"h2\" color=\"rgb(30, 115, 190)\" link_text=\"+ Xem t???t c???\" link=\"/chuyen-muc/tin-tuc/\"]\n\n[gap height=\"10px\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns=\"3\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"1\" posts=\"4\" show_date=\"false\" excerpt_length=\"34\" comments=\"false\" image_height=\"65%\" image_size=\"original\" image_overlay=\"rgba(255, 253, 253, 0.26)\" image_hover=\"overlay-add\" image_hover_alt=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","publish","closed","open","","trang-chu","","","2019-03-10 23:37:54","2019-03-10 16:37:54","","0","https://tppone.com/demo/camera/?page_id=2","0","page","","0"),
("3","1","2019-03-09 05:27:45","2019-03-09 05:27:45","<h2>Ch??ng t??i l?? ai</h2><p>?????a ch??? website l??: https://bizhostvn.com/w/camera.</p><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><h3>B??nh lu???n</h3><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><h3>Th?? vi???n</h3><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><h3>Th??ng tin li??n h???</h3><h3>Cookies</h3><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><h3>N???i dung nh??ng t??? website kh??c</h3><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><h3>Ph??n t??ch</h3><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><h2>Th??ng tin li??n h??? c???a b???n</h2><h2>Th??ng tin b??? sung</h2><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3>","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-03-09 05:27:45","2019-03-09 05:27:45","","0","https://tppone.com/demo/camera/?page_id=3","0","page","","0"),
("11","1","2019-03-09 21:45:01","2019-03-09 14:45:01","https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web.jpg","cropped-logo-ninh-binh-web.jpg","","inherit","open","closed","","cropped-logo-ninh-binh-web-jpg","","","2019-03-09 21:45:01","2019-03-09 14:45:01","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web.jpg","0","attachment","image/jpeg","0"),
("30","1","2019-03-09 21:50:35","2019-03-09 14:50:35","[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"138\" image_size=\"original\"]\n\n[title style=\"center\" text=\"V??? ch??ng t??i\"]\n\n<p><span style=\"font-size: 95%; color: #282828;\">Xin ch??o b???n ??? ?????c gi??? c???a??<a style=\"color: #282828;\" href=\"https://Webdemo.com/\">Webdemo.com</a>,</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">L???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\"><a style=\"color: #282828;\" href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Sau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">T??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Xin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Tr??n tr???ng./.</span></p>\n<p><span style=\"font-size: 95%; color: #282828;\">Admin</span></p>\n\n[/col]\n\n[/row]","Gi???i thi???u","","publish","closed","closed","","gioi-thieu","","","2019-03-10 23:34:30","2019-03-10 16:34:30","","0","https://tppone.com/demo/camera/?page_id=30","0","page","","0"),
("32","1","2019-03-09 21:50:39","2019-03-09 14:50:39","[row class=\"row-lien-he\"]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"133\" image_size=\"original\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"cot1\"]\n\n<h3><span style=\"font-size: 95%;\">?????NG C???P CAMERA H?? N???I</span></h3>\n<p><span style=\"font-size: 95%;\">?????a ch???: S??? 33, ng?? 121 Th??i H??, Q. ?????ng ??a, TP. H?? N???i.??</span><br /><span style=\"font-size: 95%;\">??i???n tho???i: ??????????<a href=\"tel:02422667788\"><strong>(024) 22 66 77 88</strong></a><strong>??-??<a href=\"tel:02462555553\">(024) 62 555 553</a></strong></span></p>\n[contact-form-7 id=\"508\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n<h3>LI??N H???</h3>\n<p><span style=\"font-size: 95%; color: #282828;\">B???n vui l??ng ??i???n ?????y ????? th??ng tin v?? n???i dung ????? xu???t c???a b???n v??o bi???u m???u d?????i ????y, sau ???? g???i cho ch??ng t??i, ch??ng t??i s??? li??n h??? v???i b???n ngay sau khi nh???n ???????c th??ng tin c???a b???n.</span></p>\n[contact-form-7 id=\"542\"]\n\n\n[/col]\n\n[/row]","Li??n h???","","publish","closed","closed","","lien-he","","","2019-03-10 23:21:05","2019-03-10 16:21:05","","0","https://tppone.com/demo/camera/?page_id=32","0","page","","0"),
("34","1","2019-03-09 21:51:37","2019-03-09 14:51:37"," ","","","publish","closed","closed","","34","","","2019-03-09 21:51:37","2019-03-09 14:51:37","","0","https://tppone.com/demo/camera/?p=34","2","nav_menu_item","","0"),
("35","1","2019-03-09 21:51:37","2019-03-09 14:51:37"," ","","","publish","closed","closed","","35","","","2019-03-09 21:51:37","2019-03-09 14:51:37","","0","https://tppone.com/demo/camera/?p=35","1","nav_menu_item","","0"),
("52","1","2019-03-09 21:57:37","2019-03-09 14:57:37","[row class=\"header-block\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n<p class=\"shop-phone\" style=\"text-align: left;\"><i class=\"fa fa-phone fa-6\" aria-hidden=\"true\"></i><span style=\"font-size: 120%; color: #1e73be;\"><strong>HOTLINE: 1900 0388 - 0834 666 666</strong></span></p>\n<p class=\"shop-phone\" style=\"text-align: left;\"><span style=\"color: #000000; font-size: 90%;\">HN: S??? 33, ng?? 121 Th??i H??, Q. ?????ng ??a, TP. H?? N???i</span><br /><span style=\"color: #000000; font-size: 90%;\">Th??i Nguy??n: S??? 11, ???????ng Phan ????nh Ph??ng, TP. Th??i Nguy??n</span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[gap height=\"21px\"]\n\n[featured_box img=\"129\" img_width=\"40\" pos=\"left\" link=\"https://Webdemo.com\" target=\"_blank\"]\n\n<p><span style=\"font-size: 90%; color: #000000;\">H??? tr??? kh??ch h??ng<br />t???ng ????i mi???n ph??</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]","Header","","publish","closed","closed","","header","","","2019-03-09 22:40:48","2019-03-09 15:40:48","","0","https://tppone.com/demo/camera/?post_type=blocks&#038;p=52","0","blocks","","0"),
("122","1","2019-03-09 22:37:58","2019-03-09 15:37:58","","logo-ninh-binh-web","","inherit","open","closed","","logo-ninh-binh-web-2","","","2019-03-09 22:37:58","2019-03-09 15:37:58","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/logo-ninh-binh-web-1.jpg","0","attachment","image/jpeg","0"),
("123","1","2019-03-09 22:38:16","2019-03-09 15:38:16","https://bizhostvn.com/w/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web-1.jpg","cropped-logo-ninh-binh-web-1.jpg","","inherit","open","closed","","cropped-logo-ninh-binh-web-1-jpg","","","2019-03-09 22:38:16","2019-03-09 15:38:16","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/cropped-logo-ninh-binh-web-1.jpg","0","attachment","image/jpeg","0"),
("127","1","2019-03-09 22:40:07","2019-03-09 15:40:07","","cart icon 01","","inherit","open","closed","","cart-icon-01","","","2019-03-09 22:40:07","2019-03-09 15:40:07","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/cart-icon-01.jpg","0","attachment","image/jpeg","0"),
("129","1","2019-03-09 22:40:21","2019-03-09 15:40:21","","icon-people","","inherit","open","closed","","icon-people","","","2019-03-09 22:40:21","2019-03-09 15:40:21","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-people.jpg","0","attachment","image/jpeg","0"),
("133","1","2019-03-09 22:42:50","2019-03-09 15:42:50","","slider01","","inherit","open","closed","","slider01","","","2019-03-09 22:42:50","2019-03-09 15:42:50","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/slider01.jpg","0","attachment","image/jpeg","0"),
("136","1","2019-03-09 22:44:30","2019-03-09 15:44:30","","slider2","","inherit","open","closed","","slider2","","","2019-03-09 22:44:30","2019-03-09 15:44:30","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/slider2.jpg","0","attachment","image/jpeg","0"),
("138","1","2019-03-09 22:48:37","2019-03-09 15:48:37","","slider3","","inherit","open","closed","","slider3","","","2019-03-09 22:48:37","2019-03-09 15:48:37","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/slider3.jpg","0","attachment","image/jpeg","0"),
("143","1","2019-03-09 22:54:31","2019-03-09 15:54:31","","icon-02","","inherit","open","closed","","icon-02","","","2019-03-09 22:54:31","2019-03-09 15:54:31","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-02.jpg","0","attachment","image/jpeg","0"),
("144","1","2019-03-09 22:54:31","2019-03-09 15:54:31","","icon-03","","inherit","open","closed","","icon-03","","","2019-03-09 22:54:31","2019-03-09 15:54:31","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-03.jpg","0","attachment","image/jpeg","0"),
("145","1","2019-03-09 22:54:32","2019-03-09 15:54:32","","icon-04","","inherit","open","closed","","icon-04","","","2019-03-09 22:54:32","2019-03-09 15:54:32","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-04.jpg","0","attachment","image/jpeg","0"),
("146","1","2019-03-09 22:54:32","2019-03-09 15:54:32","","icon-5","","inherit","open","closed","","icon-5","","","2019-03-09 22:54:32","2019-03-09 15:54:32","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/icon-5.jpg","0","attachment","image/jpeg","0"),
("162","1","2019-03-09 23:08:30","2019-03-09 16:08:30","","Thi???t-b???-d???n-???????ng","","inherit","open","closed","","thiet-bi-dan-duong","","","2019-03-09 23:08:30","2019-03-09 16:08:30","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Thi???t-b???-d???n-???????ng.jpg","0","attachment","image/jpeg","0"),
("163","1","2019-03-09 23:09:47","2019-03-09 16:09:47","","camera-h??nh-tr??nh","","inherit","open","closed","","camera-hanh-trinh","","","2019-03-09 23:09:47","2019-03-09 16:09:47","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-h??nh-tr??nh.jpg","0","attachment","image/jpeg","0"),
("164","1","2019-03-09 23:11:35","2019-03-09 16:11:35","","camera-quan-s??t","","inherit","open","closed","","camera-quan-sat","","","2019-03-09 23:11:35","2019-03-09 16:11:35","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-quan-s??t.jpg","0","attachment","image/jpeg","0"),
("165","1","2019-03-09 23:14:16","2019-03-09 16:14:16","","ph???-ki???n-camera","","inherit","open","closed","","phu-kien-camera","","","2019-03-09 23:14:16","2019-03-09 16:14:16","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/ph???-ki???n-camera.jpg","0","attachment","image/jpeg","0"),
("166","1","2019-03-09 23:17:36","2019-03-09 16:17:36","<h3><b>WEBVISION M39 4G: CAMERA K??P ??? THI???T B??? D???N ???????NG ??? ?????NH V??? ??? QUAN S??T XE T??? XA ??? PH??T WIFI ??? G????NG CHI???U H???U</b></h3>\n<strong>Camera h??nh tr??nh</strong>??Webvision M39 ???????c ????nh gi?? l?? m???t trong nh???ng si??u ph???m camera hi???n nay t??ch h???p 16 t??nh n??ng h???u ??ch nh??: c??ng ngh??? 4G, kh??? n??ng ??i???u khi???n t??? xa, d???n ???????ng, quay video ch???t l?????ng Full HD, h??? tr??? l??i xe an to??n nh??? h??? th???ng c???nh b??o th??ng minh???.\n\n<em>C???n c???nh ?????p h???p Webvision M39</em>\n\n????y l?? s???n ph???m ?????c quy???n t??? Webvision Vi???t Nam v?? hi???n ??ang ???????c ph??n ph???i ch??nh h??ng b???i ????n v??? ?????ng c???p Camera ??? ????n v??? chuy??n cung c???p camera h??nh tr??nh,??camera gi??m s??t, camera h??nh ?????ng h??ng ?????u Vi???t Nam.\n<h2><b>Nh???ng t??nh n??ng v?????t tr???i c???a si??u camera h??nh tr??nh hot nh???t hi???n nay:</b></h2>\nWebvision M39 l?? chi???c camera h??nh tr??nh th??ng minh nh???t hi???n nay v???i c???c nhi???u t??nh n??ng m?? kh?? c?? m???t s???n ph???m camera h??nh tr??nh n??o c?? ???????c, h??? tr??? t???i ??a an to??n cho l??i xe trong m???i cu???c h??nh tr??nh. Kh??ng ch??? v???y, n?? c??n s??? d???ng giao di???n v?? h??? tr??? ho??n to??n b???ng ti???ng Vi???t gi??p nh???ng l??i xe d??? d??ng l??m quen v?? s??? d???ng.\n\n<b>Camera k??p quay phim Full HD ????? n??t cao h??? tr??? h???ng ngo???i, ch??? ????? ghi h??nh v??ng l???p</b>\n<figure id=\"attachment_6765\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-6765 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-t.png\" alt=\"\" width=\"710\" height=\"370\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-t.png\" /><figcaption class=\"wp-caption-text\"><em>H??nh ???nh ghi l???i ???????c t??? Camera h??nh tr??nh Webvision M39 v??o ban ng??y</em></figcaption></figure>\nV???i g??c quay r???ng l??n ?????n 140 ????? c??ng ch??? ????? quay Full HD 1080P, Webvision M39 c?? kh??? n??ng ghi h??nh to??n c???nh m???t c??ch??<strong>r?? n??t</strong>??ngay c??? khi??khi b???n di chuy???n v??o ban ????m b??? l??a b???i ????n xe hay th???m ch?? l?? khi di chuy???n trong ??i???u ki???n g???p th???i ti???t x???u.\n\n<i>Video h??nh ???nh ???????c Webvision M39 quay l???i v??o ban ng??y</i>\n\nKhi b??? nh??? b??? ?????y, chi???c camera n??y c??ng t??? ?????ng??<strong>ghi ????</strong>??l??n c??c ph???n??video ???? quay tr?????c ???? tr??nh b??? l??? nh???ng h??nh ???nh quan tr???ng.\n\n<b>T??ch h???p Camera l??i</b>\n\nVi???c d???ng, ????? ng??y c??ng tr??? n??n kh?? kh??n khi m?? s??? l?????ng ?? t?? ng??y m???t t??ng trong khi di???n t??ch d??nh cho c??c b??i ?????u xe ??? Vi???t Nam v???n c??n r???t h???n ch???. ???? c?? r???t nhi???u v??? va ch???m x???y ra xu???t ph??t t??? nguy??n nh??n l??i xe kh??ng quan s??t ???????c nh???ng v???t th??? ph??a sau do h???n ch??? t???m nh??n.\n\n<img class=\"aligncenter wp-image-6801 size-full lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg\" sizes=\"(max-width: 768px) 100vw, 768px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui-463x400.jpg 463w\" alt=\"\" width=\"768\" height=\"663\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-camera-lui-463x400.jpg 463w\" />\n\nCh??nh v?? l??? ???? m??, Webvision M39 ???????c trang b??? camera l??i gi??p t??i x??? d??? d??ng quan s??t ???????c m???i ho???t ?????ng, v???t c???n ph??a sau gi??p vi???c d???ng, ????? tr??? n??n d??? d??ng, thu???n ti???n.\n\nKhi b???n v??? s??? R, m??n h??nh camera s??? t??? ?????ng hi???n th??? h??nh ???nh ???????c ghi l???i t??? camera sau.\n\n<b>C??ng ngh??? 4G LTE hi???n ?????i</b>\n\nS??? d???ng m???t chi???c Sim 4G cho chi???c camera n??y, b???n c?? th??? ngay l???p t???c gi???i tr?? tr???c tuy???n nh??? t??nh n??ng t??ch h???p??c??ng ngh??? 4G LTE hi???n ?????i.\n\nTha h??? tr???i nghi???m c??c ???ng d???ng online, l?????t web, nghe nh???c, xem phim,??? v???i m???ng 4G c???c nhanh.\n\n<em>Nghe nh???c tr???c tuy???n tr??n thi???t b??? v???i m???ng 4G LTE</em>\n\nChi???c camera n??y c??n c?? th??? t??? ?????ng ph??t Wifi, h??? tr??? gi??m s??t xe m???i l??c m???i n??i. B???n c??ng c?? th??? ?????ng b??? h??a v?? chia s??? d??? li???u c???a chi???c camera n??y v???i chi???c smartphone c???a b???n, th?????ng th???c ??m nh???c, ch??i game, gi???i tr?? tr???c tuy???n?????tr??n ch??nh thi???t b??? n??y.\n\n<b>Ph??t Wifi</b>\n\nKhi l???p th??? sim 4G v??o camera, Webvision M39 ngay l???p t???c tr??? th??nh m???t ??i???m ph??t di ?????ng s??? d???ng ch??nh m???ng 4G c???a ????? ph??t ra Wifi cho c??c thi???t b??? kh??c c??ng s??? d???ng.\n\n<img class=\"aligncenter wp-image-6775 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg 587w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-768x523.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy.jpg 900w\" alt=\"\" width=\"700\" height=\"477\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-587x400.jpg 587w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy-768x523.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-ket-noi-wifi-copy.jpg 900w\" />\n\nT???t c??? m???i ng?????i trong xe ?????u c?? th??? tr???i nghi???m c??c ???ng d???ng online m?? kh??ng g???p b???t k?? tr??? ng???i n??o.\n\n<strong>?????nh v???, gi??m s??t t??? xa th??ng minh v???i ???ng d???ng Car Assist tr??n ??i???n tho???i</strong>\n\nN???u nh?? c??c thi???t b??? ?????nh v??? hi???n nay ch??? c?? th??? hi???n th??? ???????c v??? tr?? chi???c ?? t?? c???a b???n tr??n b???n ????? th?? h??? th???ng ?????nh v??? c???a Camera h??nh tr??nh Webvision M39 l???i c?? nh???ng t??nh n??ng n???i b???t h??n h???n.\n\nD?? b???n ??ang ??? nh?? hay b???t c??? n??i ????u ch??? c???n m??? ???ng d???ng Car Assist ???????c c??i ?????t tr??n ??i???n tho???i l?? b???n ???? c?? th??? bi???t ???????c chi???c xe c???a b???n ??ang ??? tr??n cung ???????ng n??o, ??ang di chuy???n ra sao v?? th???m ch?? l?? c?? th??? xem ???????c ho???t ?????ng ph??a tr?????c c???a xe ???????c ghi l???i qua camera h??nh tr??nh.\n\n<img class=\"aligncenter wp-image-7323 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg 445w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-768x690.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-891x800.jpg 891w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1.jpg 1000w\" alt=\"\" width=\"700\" height=\"629\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-445x400.jpg 445w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-768x690.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1-891x800.jpg 891w, https://webvision.vn/wp-content/uploads/2017/12/Car-assist-1.jpg 1000w\" />\n\nM???t ??i???m ?????c bi???t n???a c???a thi???t b??? n??y l?? b???n c??n c?? th??? n??i chuy???n tr???c ti???p v???i l??i xe th??ng qua ???ng d???ng n??y.\n\nKhi chi???c xe x???y ra t??nh tr???ng tr???m c???p ph?? ho???i, chi???c camera n??y s??? t??? ?????ng ch???p l???i h??nh ???nh r???i g???i ?????n ??i???n tho???i c???a b???n ????? c???nh b??o.\n\n<b>GPS ?????nh v???, d???n ???????ng v???i b???n ????? Navitel th??ng minh, ch??nh x??c??</b>\n\nCamera h??nh tr??nh Webvision M39 ???????c trang b??? c??ng ngh??? ADAS h??? tr??? l??i xe r???t nhi???u trong qu?? tr??nh di chuy???n. Thi???t b??? th??ng minh n??y c?? th??? nh???n di???n t???c ????? theo cung ???????ng nh??? ch???c n??ng b???t t???a ????? GPS. Ch??nh v?? v???y m?? khi l??i xe ??i qu?? t???c ????? cho ph??p , thi???t b??? n??y s??? nhanh ch??ng l??n ti???ng c???nh b??o v?? cung c???p cho t??i x??? nh???ng??th??ng tin ch??nh x??c v??? t???a ?????, t???c ????? l??i xe cho ph??p h??? tr??? t???t nh???t cho nh???ng t??i x??? ???????ng xa ho???c kh??ng th??ng th???o ???????ng.\n<figure id=\"attachment_6776\" class=\"wp-caption aligncenter\"><img class=\"wp-image-6776 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11.jpg 1000w\" alt=\"\" width=\"700\" height=\"467\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-11.jpg 1000w\" /><figcaption class=\"wp-caption-text\"><em>D???n ch??? ???????ng th??ng minh v???i b???n ????? Navitel</em></figcaption></figure>\nWebvision M39 s??? d???ng ???ng d???ng d???n ch??? ???????ng b??? Navitel ??? d??? li???u ???????ng b??? ch??nh x??c nh???t hi???n nay v???i b???n ????? 63 t???nh th??nh tr??n c??? n?????c\n\n<b>C??ng ngh??? Bluetooth 4.0: H??? tr??? ????m tho???i r???nh tay, an to??n khi l??i xe</b>\n\nV???i c??ng ngh??? Bluetoooth 4.0, b???n c?? th??? k???t n???i thi???t b??? v???i chi???c smartphone c???a m??nh ????? gi??p vi???c nghe g???i khi ??ang l??i xe tr??? n??n d??? d??ng h??n.\n<figure id=\"attachment_6774\" class=\"wp-caption aligncenter\"><img class=\"wp-image-6774 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19.jpg 1000w\" alt=\"\" width=\"700\" height=\"467\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19-768x512.jpg 768w, https://webvision.vn/wp-content/uploads/2017/12/webvision-m39-19.jpg 1000w\" /><figcaption class=\"wp-caption-text\"><em>????m tho???i r???nh tay th??ng qua camera h??nh tr??nh Webvision M39</em></figcaption></figure>\nL??i xe c?? th??? nghe, g???i, t??? ch???i, ????m tho???i r???nh tay tr??n ch??nh chi???c camera h??nh tr??nh n??y. ??i???u n??y g??p ph???n ?????m b???o an to??n khi di chuy???n, ??em l???i s??? ti???n l???i ????ng k??? cho c??c l??i xe.\n\n????y l?? m???t trong nh???ng c??ng ngh??? hi???n ?????i nh???t hi???n nay v?? kh??ng ph???i chi???c camera h??nh tr??nh n??o c??ng c?? th??? s??? h???u\n\n<b>C??ng ngh??? FM</b>\n\nC??ng ngh??? FM gi??p truy???n ??m thanh kh??ng d??y t??? chi???c camera h??nh tr??nh c???a b???n xu???ng d??n ??m thanh c???a xe h??i ??em l???i tr???i nghi???m m??? ???n t?????ng tr??n ch??nh chi???c xe c???a b???n.\n\n<em>Video v??? c??ng ngh??? FM</em>\n\n<b>C???nh b??o t???c ????? v?? c???nh b??o l???n l??n</b>\n\nCamera h??nh tr??nh Webvision M39 c?? ch???c n??ng n???i tr???i trong vi???c c???nh b??o gi???i h???n t???c ????? b???ng gi???ng n??i b???ng ti???ng Vi???t gi??p l??i xe tr??nh ???????c vi???c ch???y qu?? t???c ????? cho ph??p. ????y l?? m???t trong nh???ng t??nh n??ng ???????c nhi???u ng?????i y??u th??ch nh??? s??? th??ng minh v?? h???u ??ch c???a n?? gi??p l??i xe ti???t ki???m m???t kho???n chi ph?? kh?? l???n.\n\n<em>Video v??? c???nh b??o l???n l??n, c???nh b??o t???c ?????</em>\n\nChi???c camera n??y ???????c x??y d???ng tr??n h??? th???ng ADAS bao g???m h??? th???ng c???nh b??o ph??a tr?????c, c???nh b??o kh???i h??nh, c???nh b??o khi di chuy???n trong m??i tr?????ng thi???u s??ng.\n\n<img class=\"aligncenter wp-image-6779 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-7.jpg\" alt=\"\" width=\"700\" height=\"355\" data-src=\"https://webvision.vn/wp-content/uploads/2017/12/trai-nghiem-camera-hanh-trinh-webvision-m39-hot-nhat-hien-nay-7.jpg\" />\n\nChi???c camera n??y c??ng l??n ti???ng nh???c nh??? khi b???n di chuy???n sai l??n ???????ng v?? ch??? d???ng c???nh b??o khi b???n tr??? v??? l??n ???????ng quy ?????nh.","WEBVISION M39 ??? Camera h??nh tr??nh g????ng gi??m s??t t??? xa","Camera h??nh tr??nh Webvision M39 c?? ch???c n??ng n???i tr???i trong vi???c c???nh b??o gi???i h???n t???c ????? b???ng gi???ng n??i b???ng ti???ng Vi???t gi??p l??i xe tr??nh ???????c vi???c ch???y qu?? t???c ????? cho ph??p. ????y l?? m???t trong nh???ng t??nh n??ng ???????c nhi???u ng?????i y??u th??ch nh??? s??? th??ng minh v?? h???u ??ch c???a n?? gi??p l??i xe ti???t ki???m m???t kho???n chi ph?? kh?? l???n.","publish","open","closed","","webvision-m39-camera-hanh-trinh-guong-giam-sat-tu-xa","","","2019-03-10 22:26:28","2019-03-10 15:26:28","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=166","0","product","","1"),
("167","1","2019-03-09 23:16:53","2019-03-09 16:16:53","","camera-hanh-trinh-2 (1)","","inherit","open","closed","","camera-hanh-trinh-2-1","","","2019-03-09 23:16:53","2019-03-09 16:16:53","","166","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-2-1.jpg","0","attachment","image/jpeg","0"),
("168","1","2019-03-09 23:18:37","2019-03-09 16:18:37","Webvision l?? h??ng??<strong>Camera h??nh tr??nh</strong>??h??ng ?????u Vi???t Nam ???????c s???n xu???t li??n doanh gi???a Nga, H???ng K??ng v?? Vi???t Nam v???i ch???t l?????ng t???t nh???t, ???????c t??ch h???p c??ng ngh??? ti??n ti???n nh???t nh???m gi??p t??i x??? l??i xe an to??n tr??n m???i h??nh tr??nh.\n<h2><b>Camera H??nh Tr??nh Webvision N93 ??? Tr??? L?? ?????c l???c C???a L??i Xe Vi???t</b></h2>\n<strong>Webvision N93</strong>??l?? m???u camera h??nh tr??nh ?? t?? ??ang ???????c thu h??t s??? ch?? ?? c???a l??i xe v???i vi???c t??ch h???p nhi???u t??nh n??ng th??ng minh h??? tr??? ng?????i l??i b???ng ng??n ng??? ti???ng Vi???t.??Ngo??i ghi h??nh v???i ch???t l?????ng Full HD, chi???c camera Webvision N93 c??n ???????c trang b??? GPS v???i d??? li???u b???n ????? 63 t???nh th??nh, c?? th??? ????a ra nh???ng c???nh b??o d???a tr??n t??nh h??nh v???n h??nh th???c t??? c???a chi???c xe v?? ????p ???ng ???????c m???i y??u c???u c???a m???t l??i xe c???n.\n\nM???i c??c b???n xem video??<strong>?????p h???p Camera h??nh tr??nh Webvision N93 ??? Tr??? L?? ?????c l???c C???a L??i Xe Vi???t Nam</strong>\n\nXem th??m:????Chuy??n gia Webvision Vi???t Nam ????nh gi????v??? Camera h??nh tr??nh Webvision N93\n<h2><strong>Th??ng tin chi ti???t ph??? ki???n s???n ph???m</strong></h2>\nWebvision N93 g???m ph???n th??n v?? 6 ph??? ki???n ??i k??m v???i nh???ng ch???c n??ng kh??c nhau, c??? th??? l??:\n\n??? B??? s???c: D??ng ????? d???n ??i???n t??? ?? t?? v??o Camera.\n??? C??p n???i Camera ph??a sau: D??ng ????? n???i th??n m??y v???i Camera sau.\n??? Camera sau: Th???c hi???n ch???c n??ng ghi ph??a sau xe.\n??? Thi???t b??? ?????nh v??? GPS: Th???c hi???n ch???c n??ng d???n ???????ng cho ?? t??.\n??? S??ch h?????ng d???n: H?????ng d???n s??? d???ng Camera h??nh tr??nh Webvision N93.\n??? Mi???ng d??n 3M: D??ng ????? c??? ?????nh Camera v???i t??p l?? xe.","WEBVISION N93 ??? Thi???t b??? d???n ???????ng, camera h??nh tr??nh k??p","<strong>Webvision N93</strong>??l?? m???u camera h??nh tr??nh ?? t?? ??ang ???????c thu h??t s??? ch?? ?? c???a l??i xe v???i vi???c t??ch h???p nhi???u t??nh n??ng th??ng minh h??? tr??? ng?????i l??i b???ng ng??n ng??? ti???ng Vi???t.??Ngo??i ghi h??nh v???i ch???t l?????ng Full HD, chi???c camera Webvision N93 c??n ???????c trang b??? GPS v???i d??? li???u b???n ????? 63 t???nh th??nh, c?? th??? ????a ra nh???ng c???nh b??o d???a tr??n t??nh h??nh v???n h??nh th???c t??? c???a chi???c xe v?? ????p ???ng ???????c m???i y??u c???u c???a m???t l??i xe c???n.","publish","open","closed","","webvision-n93-thiet-bi-dan-duong-camera-hanh-trinh-kep","","","2019-03-10 22:25:37","2019-03-10 15:25:37","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=168","0","product","","1"),
("169","1","2019-03-09 23:18:25","2019-03-09 16:18:25","","camera-hanh-trinh-2 (1)","","inherit","open","closed","","camera-hanh-trinh-2-1-2","","","2019-03-09 23:18:25","2019-03-09 16:18:25","","168","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-2-1-1.jpg","0","attachment","image/jpeg","0"),
("170","1","2019-03-09 23:19:58","2019-03-09 16:19:58","<h2 class=\"p1\"><b>Camera h??nh tr??nh Webvision S5 ??? S??? l???a ch???n ho??n h???o c???a b???n</b></h2>\nCamera h??nh tr??nh Webvision S5 ???????c ????ng ?????o ng?????i d??ng ????nh gi?? cao v???i nh???ng t??nh n??ng ti???n ??ch cao, ph?? h???p v???i nhu c???u c???a ng?????i d??ng.\n\n<strong>Thi???t k??? hi???n ?????i, th??n thi???n ng?????i d??ng</strong>\n\nChi???c camera h??nh tr??nh Webvision S5 thi???t k??? ph?? h???p v???i ch???c n??ng v???n h??nh??v???i m??n h??nh 4 inch, chip cao c???p m???nh m??? NOVATEK 96655 gi??p ng?????i d??ng thu ???????c h??nh ???nh r?? n??t v?? ?????p nh???t.\n\nG??c quay ?????n 170 ????? cho t???m quan s??t c???c r???ng c?? th??? ghi l???i t???t c??? nh???ng t??nh hu???ng di???n ra xung quang xe, b???o ?????m ????? an to??n, tr??nh tr???m c???p.\n\nCamera ghi h??nh ph??a tr?????c ????? ph??n gi???i Full HD 1080P t???o h??nh ???nh r?? n??t, ghi l???i nh???ng t??nh hu???ng l??i xe tr??n ???????ng ch??n th???c nh???t.??Camera ghi h??nh ph??a sau xe h??? tr??? vi???c l??i xe ch??nh x??c, tr??nh va ch???m ph??a sau xe.\n\n<strong>T??ch h???p camera l??i</strong>\n\nWebvision S5 c?? ch???c n??ng n???i b???t l?? t??ch h???p camera l??i t??? ?????ng n??n khi c??i s??? R cam l??i s??? t??? k??ch ho???t cho h??nh ???nh ph??a sau xe tr??n m??n h??nh s???c n??t IPS 4.0 inch.???????c bi???t Webvision S5 c?? ch??? ????? t??? ?????ng th??ng minh khi t???t m??y camera s??? t??? t???t, khi m??? m??y th?? ng?????c l???i camera s??? t??? b???t.\n\n<strong>Ghi h??nh th??ng minh</strong>\n\n<strong>Camera h??nh tr??nh gi?? r???</strong>??Webvision S5 c?? ch???c n??ng t??? ?????ng ghi h??nh khi c?? v???t chuy???n ?????ng ????y l?? m???t t??nh n??ng r???t ??u vi???t c???a d??ng s???n ph???m camera h??nh tr??nh n??y gi??p ph??t hi???n tr???m c???p hay nh???ng h??nh ?????ng x???u c???a k??? gian v???i xe, b???o v??? t???i ??a cho chi???c xe c???a qu?? kh??ch.\n<figure id=\"attachment_1381\" class=\"wp-caption aligncenter\">a<figcaption class=\"wp-caption-text\"><em>Ch???c n??ng ghi h??nh th??ng m??nh, h??nh ???nh r?? n??t</em></figcaption></figure>\nWebvision S5 t??ch h???p th??? nh??? l??n t???i 32 GB gi??p b???n tho???i m??i ghi l???i to??n b??? cu???c h??nh tr??nh. File ghi h??nh s??? ghi ???? v??ng l???p, b???o v??? file khi c?? va ch???m x???y ra, ng?????i d??ng c?? th??? d??ng l??m b???ng ch???ng x??c th???c nh???t cho xe.??Ghi ??m t??y ch???n c?? th??? t???t/b???t ti???n d???ng, thu???n l???i.\n<figure id=\"attachment_1354\" class=\"wp-caption aligncenter\"><img class=\"wp-image-1354 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg 1200w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-768x512.jpg 768w\" alt=\"\" width=\"600\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-1200x800.jpg 1200w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2017/11/BIN_6183-1-768x512.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>Webvision S5 ??? C??ng b???n tr??n m???i h??nh tr??nh</em></figcaption></figure>\nCamera h??nh tr??nh Webvision S5 v???i thi???t k??? ?????p, nh??? g???n, m??n h??nh hi???n th??? s???c n??t, ng??n ng??? Vi???t h??a, th??n thi???n d??? s??? d???ng, t??nh n??ng v?? c??ng h???u ??ch ch???c ch???n s??? l?? thi???t b??? m?? t??i x??? kh?? c?? th??? b??? qua.\n\n<strong>Video tr???i nghi???m th???c t??? c???a??Webvision S5</strong>","WEBVISION S5 ??? Camera h??nh tr??nh ghi h??nh tr?????c sau","Webvision S5 c?? ch???c n??ng n???i b???t l?? t??ch h???p camera l??i t??? ?????ng n??n khi c??i s??? R cam l??i s??? t??? k??ch ho???t cho h??nh ???nh ph??a sau xe tr??n m??n h??nh s???c n??t IPS 4.0 inch.???????c bi???t Webvision S5 c?? ch??? ????? t??? ?????ng th??ng minh khi t???t m??y camera s??? t??? t???t, khi m??? m??y th?? ng?????c l???i camera s??? t??? b???t.","publish","open","closed","","webvision-s5-camera-hanh-trinh-ghi-hinh-truoc-sau","","","2019-03-10 22:24:48","2019-03-10 15:24:48","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=170","0","product","","1"),
("172","1","2019-03-09 23:19:48","2019-03-09 16:19:48","","product1","","inherit","open","closed","","product1","","","2019-03-09 23:19:48","2019-03-09 16:19:48","","170","https://tppone.com/demo/camera/wp-content/uploads/2019/03/product1.jpg","0","attachment","image/jpeg","0"),
("173","1","2019-03-09 23:20:52","2019-03-09 16:20:52","Webvision l?? h??ng??<strong>Camera h??nh tr??nh ?? t??</strong>??h??ng ?????u Vi???t Nam ???????c s???n xu???t li??n doanh gi???a Nga, H???ng K??ng v?? Vi???t Nam v???i ch???t l?????ng t???t nh???t, ???????c t??ch h???p c??ng ngh??? ti??n ti???n nh???t nh???m gi??p t??i x??? l??i xe an to??n tr??n m???i h??nh tr??nh.\n<h2><strong>T??nh n??ng n???i b???t ch??? c?? ???</strong>??<strong>Camera h??nh tr??nh WEBVISION S8</strong></h2>\nCamera h??nh tr??nh Webvision S8??l?? m???t trong nh???ng s???n ph???m c??ng ngh??? th??ng minh ???????c ra m???t th??? tr?????ng g???n ????y. ????y ???????c ????nh gi?? l?? m???t trong nh???ng camera h??nh tr??nh th??ng minh nh???t v???i t??nh n??ng n???i tr???i v?????t b???c m?? t???t c??? c??c camera h??nh tr??nh tr?????c ???? kh??ng c?? ???????c.???????c bi???t l?? t???t c??? c??c l??i xe Vi???t Nam ?????u c?? th??? d??? d??ng s??? d???ng b???i t???t c??? c??c t??nh n??ng n??y ?????u ???????c chuy???n h??a sang ti???ng Vi???t, gi??p ng?????i d??ng h???n ch??? nh???ng b???t l???i v??? ng??n ng???.\n\n<em>Tr???i nghi???m t??nh n??ng v?????t tr???i c???a Camera h??nh tr??nh Webvision S8</em>\n<h2><strong>S??? d???ng d??? li???u ch??? d???n ???????ng b??? Navitel??</strong></h2>\nCamera h??nh tr??nh Webvision S8 h??? tr??? l??i xe t??n ti???n b???ng ADAS th??ng b??o cho ng?????i d??ng bi???t vi???c vi ph???m t???c ????? theo cung ???????ng. S??? d?? thi???t b??? n??y nh???n di???n t???c ????? theo cung ???????ng nh??? ch???c n??ng b???t t???a ????? GPS ????? b??o t???c ????? ph?? h???p cho tuy???n ???????ng ???? l?? bao nhi??u??gi??p c???nh b???o ch??nh x??c ?????n t??i x??? v??? th??ng tin cung ???????ng, t???a ?????, t???c ????? cho ph??p l??i xe, r???t ti???n l???i cho nh???ng t??i x??? ??i ???????ng xa, kh??ng th??ng th???o ???????ng.??Ch???c n??ng n??y ???????c ??p d???ng cho to??n qu???c g???m 63 t???nh th??nh v???i b???n quy???n c??ng ngh??? t??? NAVITEL ???????c c???p nh???t 3 th??ng 1 l???n. T??nh t???i th???i ??i???m hi???n t???i th?? ????y l?? d??? li???u ???????ng b??? hi???n ?????i nh???t hi???n nay.\n<h2><strong>S??? d???ng chip kh???ng??Ambarella A7LA50D quay v?? ghi h??nh 2K r?? n??t ng??y v?? ????m</strong></h2>\nV???i c???u h??nh chip kh???ng Ambarella A7LA50D, camera h??nh tr??nh Webvision S8 ghi h??nh v?? quay video 2K r?? n??t ng??y v?? ????m, d?? th???i ti???t x???u nh?? th??? n??o. Chip??Ambarella A7LA50D l?? lo???i chip cao c???p nh???t m?? kh??ng m???t camera h??nh tr??nh n??o c?? ???????c. Camera th??ng th?????ng ch??? s??? d???ng chip Novatek.\n\n<img class=\"alignnone size-medium wp-image-10148 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png 800w, https://webvision.vn/wp-content/uploads/2017/08/5-768x384.png 768w, https://webvision.vn/wp-content/uploads/2017/08/5.png 1051w\" alt=\"\" width=\"800\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/5-800x400.png 800w, https://webvision.vn/wp-content/uploads/2017/08/5-768x384.png 768w, https://webvision.vn/wp-content/uploads/2017/08/5.png 1051w\" />\n\n<i>Webvision ghi h??nh r?? n??t ng??y v?? ????m</i>\n<h2><strong>Th???u k??nh c???m bi???n ma tr???n OV4689</strong></h2>\nCamera h??nh tr??nh Webvision S8 v???i th???u k??nh ma tr???n OV4689 quay h??nh r?? n??t trong m???i ho??n c???nh, c?? th??? l???y n??t t???t c??? c??c h??nh ???nh ph??a tr?????c, ngay c??? bi???n s??? xe c???a xe ?? t?? ??i tr?????c.\n<h2><strong>C???nh b??o xe ch???y qu?? t???c ???????</strong></h2>\n????y l?? t??nh n??ng ho??n to??n m???i ?????i v???i m???t chi???c camera h??nh tr??nh ?? t??. Khi d??ng Camera h??nh tr??nh Webvision S8, l??i xe s??? ???????c c???nh b??o khi v?????t qu?? t???c ????? cho ph??p v?? ?????c bi???t ch???c n??ng n??y ???????c th??? hi???n b???ng gi???ng n??i ti???ng Vi???t. Khi ph??t hi???n v?????t qu?? t???c ????? cho ph??p, l???p t???c chi???c Camera gi??m s??t h??nh tr??nh Webvision S8 s??? ph??t ra t??n hi???u v?? th??ng b??o t???c ????? cho ph??p.\n\n<em>Ch???c n??ng c???nh b??o ch???y qu?? t???c ????? b???ng ti???ng Vi???t r???t ti???n d??ng cho ng?????i d??ng</em>\n<h2><strong>C???nh b??o l???n l??n b???ng gi???ng n??i Ti???ng Vi???t</strong></h2>\nCamera h??nh tr??nh Webvision S8 c?? ch???c n??ng c???nh b??o l???n l??n, ch???ch l??n khi xe ??ang l??u th??ng tr??n ???????ng v?? c??ng th??ng minh. V???i t??nh n??ng n??y, khi l??i xe ??ang l??u th??ng tr??n ???????ng m?? l???n sang l??n kh??c,??Webvision S8 s??? c???nh b??o ????? l??i xe ??i???u ch???nh l???i.?? V???i t??nh n??ng n??y th?? Camera h??nh tr??nh<a href=\"https://webvision.vn/\" target=\"_blank\" rel=\"noopener\">??Webvision S8</a>?????? tr??? gi??p t??i x??? l??i xe an to??n c??ng nh?? tr??nh t??nh hu???ng vi ph???m giao th??ng.\n<h2><strong>Nh???c b???t ????n pha khi tr???i t???i</strong></h2>\nKhi tr???i t???i kh??ng ?????t y??u c???u ????? t??i x??? c?? th?????l??i xe an to??n, camera h??nh tr??nh WebvisionS8 s??? t??? ?????ng nh???c nh??? t??i x??? b???t ????n pha ????? ?????m b???o ????? s??ng an to??n. T??nh n??ng n??y v?? c??ng th??ng minh gi??p r???t nhi???u cho c??c t??i x??? c?? t??nh hay qu??n.\n<h2><strong>C???nh b??o giao nhau v???i ???????ng cho ng?????i ??i b???</strong></h2>\n????y l?? m???t trong nh???ng ch???c n??ng v?? c??ng h???a ??ch ?????i v???i l??i xe. B???i khu ???????ng giao nhau v???i ng?????i ??i b??? l?? m???t trong nh???ng ??o???n ???????ng d??? x???y ra tai n???n nh???t. Ch??nh v?? v???y, ch???c n??ng c???nh b??o giao nhau v???i ng?????i ??i b??? c???a camera h??nh tr??nh Webvision S8 ???? gi??p l??i xe tr??nh ???????c r???t nhi???u v??? tai n???n ????ng ti???c.\n<h2><strong>C???nh b??o s???p qua h???m</strong></h2>\nCamera h??nh tr??nh Webvision S8 c?? t??nh n??ng nh???c nh??? xe s???p qua h???m v?? c??ng th??ng minh. Khi t??i x??? l??i xe s???p ?????n ???????ng h???m, Webvision S8 s??? c???nh b??o cho l??i xe bi???t ????? ??i???u ch???nh t???c ????? c??ng nh?? ch?? ?? l??i xe ????? ?????m b???o an to??n.\n<h2><strong>C???nh b??o nh???c nh??? m???t m???i</strong></h2>\nCamera h??nh tr??nh Webvision S8 c??n c?? th??? c??i ???????c ch??? ????? th??ng minh ch???ng bu???n ng??? cho l??i xe khi l??u th??ng tr??n ???????ng d??i, Webvision S8 nh???c nh??? khi l??i xe m???t m???i b???ng gi???ng n??i ti???ng Vi???t v?? h??nh ???nh. Th???i gian nh???c nh??? t??y thu???c v??o b???n c??i ?????t. T??nh n??ng n??y gi??p t??i x??? ngh??? ng??i ????? c?? th??? t???p trung l??i xe m???t c??ch cao ????? nh???t, ?????m b???o an to??n cho cu???c h??nh tr??nh.\n\nNgo??i ra,??camera h??nh tr??nh Webvision S8??c??n c?? ch???c n??ng t??? ?????ng ghi h??nh khi c?? v???t chuy???n ?????ng, ????y l?? m???t t??nh n??ng r???t n???i tr???i c???a d??ng s???n ph???m camera h??nh tr??nh gi??p ph??t hi???n tr???m c???p hay nh???ng h??nh ?????ng x???u c???a k??? gian v???i xe. B???o v??? t???i ??a cho chi???c xe c???a b???n v????khi t???t m??y camera s??? t??? ?????ng t???t, khi m??? m??y th?? ng?????c l???i camera s??? t??? ?????ng b???t.\n\nWebvision S8 c??ng c?? th??? ghi ??m thanh ho???c t???t ghi ??m nhanh b???ng c??c ph??m t???t tr??n thi???t b??? v?? l??u gi??? c??c file ghi h??nh quan tr???ng b???ng ph??m b???m ????? ??o???n video ???? kh??ng b??? ghi ????.","WEBVISION S8 ??? Camera h??nh tr??nh 2K ADAS c???nh b??o t???c ?????","Webvision l?? h??ng??<strong>Camera h??nh tr??nh ?? t??</strong>??h??ng ?????u Vi???t Nam ???????c s???n xu???t li??n doanh gi???a Nga, H???ng K??ng v?? Vi???t Nam v???i ch???t l?????ng t???t nh???t, ???????c t??ch h???p c??ng ngh??? ti??n ti???n nh???t nh???m gi??p t??i x??? l??i xe an to??n tr??n m???i h??nh tr??nh.","publish","open","closed","","webvision-s8-camera-hanh-trinh-2k-adas-canh-bao-toc-do","","","2019-03-10 22:23:56","2019-03-10 15:23:56","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=173","0","product","","1"),
("174","1","2019-03-09 23:20:37","2019-03-09 16:20:37","","camera-hanh-trinh-gia-re","","inherit","open","closed","","camera-hanh-trinh-gia-re","","","2019-03-09 23:20:37","2019-03-09 16:20:37","","173","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-gia-re.jpg","0","attachment","image/jpeg","0"),
("190","1","2019-03-09 23:29:29","2019-03-09 16:29:29","Camera 360 ????? IP Wifi Webvision S633Y-i9 Panoramic HD 960P v???i thi???t k??? g??c m??? to??n c???nh Panoramic 360 ????? l?? xu h?????ng gi??m s??t m???i nh???t hi???n nay ???????c nh?? s???n xu???t h??ng ?????u WEBVISION ???? ????a ra v?? n??ng cao ch???t l?????ng trong n??m nay.\n\nV???i thi???t k??? d???ng v??m g??c quay 360 ????? , camera IP Webvision S633Y-i9 Panoramic HD 960P th???c s??? l?? c??ng c??? gi??m s??t hi???u qu??? cho nh???ng kh??ng gian r???ng.\n\nCamera gi??m s??t to??n c???nh l?? m???t ch???ng lo???i m???i trong ng??nh camera an ninh v?? ??ang tr??? th??nh l???a ch???n ph??? bi???n c???a ng?????i ti??u d??ng hi???n nay. So v???i camera gi??m s??t th??ng th?????ng, camera to??n c???nh c?? l??? l?? s??? l???a ch???n t???t nh???t khi c???n theo d??i gi??m s??t trong kh??ng gian 360 ?????. Thay v?? ph???i c??i ?????t nhi???u camera gi??m s??t, b???n ch??? c???n s??? d???ng m???t camera to??n c???nh duy nh???t ????? c?? th??? theo d??i to??n b??? khu v???c xung quanh, ?????ng th???i gi??p gi???m b???t g??nh n???ng ng??n s??ch ?????u t?? thi???t b???, l???p ?????t v?? b???o tr??.","WEBVISION S633Y-i9","Camera 360 ????? IP Wifi Webvision S633Y-i9 Panoramic HD 960P v???i thi???t k??? g??c m??? to??n c???nh Panoramic 360 ????? l?? xu h?????ng gi??m s??t m???i nh???t hi???n nay ???????c nh?? s???n xu???t h??ng ?????u WEBVISION ???? ????a ra v?? n??ng cao ch???t l?????ng trong n??m nay.","publish","open","closed","","webvision-s633y-i9","","","2019-03-10 22:30:25","2019-03-10 15:30:25","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=190","0","product","","1"),
("191","1","2019-03-09 23:29:26","2019-03-09 16:29:26","","Webvision-S633Y-i9","","inherit","open","closed","","webvision-s633y-i9","","","2019-03-09 23:29:26","2019-03-09 16:29:26","","190","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Webvision-S633Y-i9.jpg","0","attachment","image/jpeg","0"),
("192","1","2019-03-09 23:30:06","2019-03-09 16:30:06","D??ng camera camera ip wifi Webvision ph??t tri???n tr??n n???n t???ng c??ng ngh??? ??i???n to??n ????m m??y ti??n ti???n kh??ng c??n xa l??? v???i nhi???u kh??ch h??ng. Tuy nhi??n, h???u h???t c??c d??ng s???n ph???m th?????ng th??ch h???p v???i vi???c s??? d???ng trong nh??. ????? l???a ch???n s???n ph???m v???a c?? ????? s???c n??t cao, v???a ????p ???ng ???????c s??? kh???c nghi???t c???a th???i ti???t ngo??i tr???i, T7202W l?? s??? l???a ch???n t???i ??u nh???t.\n\nD??ng camera camera ip wifi Webvision ph??t tri???n tr??n n???n t???ng c??ng ngh??? ??i???n to??n ????m m??y ti??n ti???n kh??ng c??n xa l??? v???i nhi???u kh??ch h??ng. Tuy nhi??n, h???u h???t c??c d??ng s???n ph???m th?????ng th??ch h???p v???i vi???c s??? d???ng trong nh??. ????? l???a ch???n s???n ph???m v???a c?? ????? s???c n??t cao, v???a ????p ???ng ???????c s??? kh???c nghi???t c???a th???i ti???t ngo??i tr???i, T7202W l?? s??? l???a ch???n t???i ??u nh???t.","WEBVISION T7202W","D??ng camera camera ip wifi Webvision ph??t tri???n tr??n n???n t???ng c??ng ngh??? ??i???n to??n ????m m??y ti??n ti???n kh??ng c??n xa l??? v???i nhi???u kh??ch h??ng. Tuy nhi??n, h???u h???t c??c d??ng s???n ph???m th?????ng th??ch h???p v???i vi???c s??? d???ng trong nh??. ????? l???a ch???n s???n ph???m v???a c?? ????? s???c n??t cao, v???a ????p ???ng ???????c s??? kh???c nghi???t c???a th???i ti???t ngo??i tr???i, T7202W l?? s??? l???a ch???n t???i ??u nh???t.","publish","open","closed","","webvision-t7202w","","","2019-03-10 22:30:00","2019-03-10 15:30:00","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=192","0","product","","1"),
("193","1","2019-03-09 23:29:57","2019-03-09 16:29:57","","Webvision-T7202W","","inherit","open","closed","","webvision-t7202w","","","2019-03-09 23:29:57","2019-03-09 16:29:57","","192","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Webvision-T7202W.jpg","0","attachment","image/jpeg","0"),
("194","1","2019-03-09 23:30:34","2019-03-09 16:30:34","Ti??u ch?? ????? b???n t??m ki???m m???t chi???c Camera gi??m s??t l?? g???\n\nD??? l???p ?????t, kh??ng c?? d??y d???a lo???ng ngo???ng?\n\nD??? s??? d???ng cho c??? nh???ng ng?????i kh??ng am hi???u v??? c??ng ngh????\n\nCh???t l?????ng h??nh ???nh r?? n??t?\n\nC?? th??? s??? d???ng tr??n t???t c??? c??c thi???t b??? m??y t??nh, ??i???n tho???i di ?????ng?","WEBVISION 6206HDW","Ti??u ch?? ????? b???n t??m ki???m m???t chi???c Camera gi??m s??t l?? g???\n\nD??? l???p ?????t, kh??ng c?? d??y d???a lo???ng ngo???ng?","publish","open","closed","","webvision-6206hdw","","","2019-03-10 22:29:24","2019-03-10 15:29:24","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=194","0","product","","1"),
("195","1","2019-03-09 23:30:31","2019-03-09 16:30:31","","6206w","","inherit","open","closed","","6206w","","","2019-03-09 23:30:31","2019-03-09 16:30:31","","194","https://tppone.com/demo/camera/wp-content/uploads/2019/03/6206w.jpg","0","attachment","image/jpeg","0"),
("196","1","2019-03-09 23:31:11","2019-03-09 16:31:11","C?? 2 v???n ????? then ch???t ch??ng t??i lu??n khuy??n kh??ch h??ng khi ?????t mua camera ???? l??:\n\nX??c ?????nh ????ng nhu c???u c???a b???n ( t???c quan s??t c??i g???)\nX??c ?????nh khu v???c mu???n quan s??t, theo d??i v?? kho???ng c??ch t???i ?????i t?????ng\n\nS???n ph???m T6100WIP th??ch h???p v???i nh???ng kh??ch h??ng sau:\n\nNg?????i ??i c??ng t??c ??? n?????c ngo??i mu???n theo d??i c??ng vi???c ??ang di???n ra t???i c??ng ty.\nNg?????i ??? v??n ph??ng mu???n gi??m s??t c??ng vi???c ??ang di???n ra ??? x?????ng s???n xu???t\nNg?????i ??? v??n ph??ng ?????i di???n mu???n gi???i thi???u v???i c??c ?????i t??c v??? x?????ng s???n xu???t c???a m??nh ??? c??c t???nh\nNg?????i ??i l??m xa v?? mu???n theo d??i con c??i ??ang l??m g?? ??? nh??.\nNg?????i ??? nh?? v?? mu???n quan s??t nh??n vi??n ??ang b??n h??ng t???i c??c c???a h??ng???\nNg?????i ??? v??n ph??ng mu???n tr??ng ch???ng ng?????i gi?? , tr??? con , osin ???.??? nh??","WEBVISION T6100IP","Ng?????i ??i c??ng t??c ??? n?????c ngo??i mu???n theo d??i c??ng vi???c ??ang di???n ra t???i c??ng ty.\nNg?????i ??? v??n ph??ng mu???n gi??m s??t c??ng vi???c ??ang di???n ra ??? x?????ng s???n xu???t\nNg?????i ??? v??n ph??ng ?????i di???n mu???n gi???i thi???u v???i c??c ?????i t??c v??? x?????ng s???n xu???t c???a m??nh ??? c??c t???nh","publish","open","closed","","webvision-t6100ip","","","2019-03-10 22:28:58","2019-03-10 15:28:58","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=196","0","product","","1"),
("197","1","2019-03-09 23:30:58","2019-03-09 16:30:58","","Webvision-T6100WIP","","inherit","open","closed","","webvision-t6100wip","","","2019-03-09 23:30:58","2019-03-09 16:30:58","","196","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Webvision-T6100WIP.jpg","0","attachment","image/jpeg","0"),
("198","1","2019-03-09 23:31:43","2019-03-09 16:31:43","S??? s???c n??t l?? khao kh??t l???n nh???t c???a ng?????i t??m mua camera. B??n c???nh ????, ?????i ??a s??? kh??ch h??ng c??ng mong mu???n nhi???u t??nh n??ng ti???n ??ch nh??: quan s??t ???????c ban ????m, c?? kh??? n??ng xoay, qu??t g??c l???n hay ????n gi???n l?? s??? g???n g??ng, th???m m???, kh??ng c??i ?????t, kh??ng c???n chuy??n m??n.","WEBVISION 6204W","S??? s???c n??t l?? khao kh??t l???n nh???t c???a ng?????i t??m mua camera. B??n c???nh ????, ?????i ??a s??? kh??ch h??ng c??ng mong mu???n nhi???u t??nh n??ng ti???n ??ch nh??: quan s??t ???????c ban ????m, c?? kh??? n??ng xoay, qu??t g??c l???n hay ????n gi???n l?? s??? g???n g??ng, th???m m???, kh??ng c??i ?????t, kh??ng c???n chuy??n m??n.","publish","open","closed","","webvision-6204w","","","2019-03-10 22:28:29","2019-03-10 15:28:29","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=198","0","product","","1"),
("199","1","2019-03-09 23:31:39","2019-03-09 16:31:39","","6204w","","inherit","open","closed","","6204w","","","2019-03-09 23:31:39","2019-03-09 16:31:39","","198","https://tppone.com/demo/camera/wp-content/uploads/2019/03/6204w.jpg","0","attachment","image/jpeg","0"),
("200","1","2019-03-09 23:32:16","2019-03-09 16:32:16","Camera wifi ??? camera kh??ng d??y, xu h?????ng m???i c???a camera IP th???i hi???n ?????i, gi???i ph??p an ninh cho c??n nh?? c???a b???n. Mua camera IP Webvision T6836W ??? cho h??nh ???nh H264, camera quan s??t tr???c ti???p v?? t??? xa b???ng ??i???n tho???i di ?????ng.\n\nCamera wifi ??? camera kh??ng d??y, xu h?????ng m???i c???a camera IP th???i hi???n ?????i, gi???i ph??p an ninh cho c??n nh?? c???a b???n. Mua camera IP Webvision T6836W ??? cho h??nh ???nh H264, camera quan s??t tr???c ti???p v?? t??? xa b???ng ??i???n tho???i di ?????ng.\n\nCamera wifi ??? camera kh??ng d??y, xu h?????ng m???i c???a camera IP th???i hi???n ?????i, gi???i ph??p an ninh cho c??n nh?? c???a b???n. Mua camera IP Webvision T6836W ??? cho h??nh ???nh H264, camera quan s??t tr???c ti???p v?? t??? xa b???ng ??i???n tho???i di ?????ng.","WEBVISION T6836W","Camera wifi ??? camera kh??ng d??y, xu h?????ng m???i c???a camera IP th???i hi???n ?????i, gi???i ph??p an ninh cho c??n nh?? c???a b???n. Mua camera IP Webvision T6836W ??? cho h??nh ???nh H264, camera quan s??t tr???c ti???p v?? t??? xa b???ng ??i???n tho???i di ?????ng.","publish","open","closed","","webvision-t6836w","","","2019-03-10 22:28:04","2019-03-10 15:28:04","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=200","0","product","","1"),
("201","1","2019-03-09 23:32:13","2019-03-09 16:32:13","","T6836W","","inherit","open","closed","","t6836w","","","2019-03-09 23:32:13","2019-03-09 16:32:13","","200","https://tppone.com/demo/camera/wp-content/uploads/2019/03/T6836W.jpg","0","attachment","image/jpeg","0"),
("202","1","2019-03-09 23:32:45","2019-03-09 16:32:45","??? ???????c thi???t k??? v???i v??? b???o v??? ti??u chu???n ch???ng n?????c, v???i ????? b???n cao camera ip webvision S6263Y th??ch th???c m???i ??i???u ki???n c???a kh???c nghi???t c???a th???i ti???t.\n??? T??ch h???p ghi h??nh c??? ng??y l???n ????m r?? n??t. Bao g???m 30 ????n led cung c???p kh??? n??ng quan s??t khi ??nh s??ng = 0, ????? xa t???i ??a 25 m??t.\n\n??? D??? d??ng l???p ?????t v?? s??? d???ng","WEBVISION S6263YHD","???????c thi???t k??? v???i v??? b???o v??? ti??u chu???n ch???ng n?????c, v???i ????? b???n cao camera ip webvision S6263Y th??ch th???c m???i ??i???u ki???n c???a kh???c nghi???t c???a th???i ti???t.\n??? T??ch h???p ghi h??nh c??? ng??y l???n ????m r?? n??t. Bao g???m 30 ????n led cung c???p kh??? n??ng quan s??t khi ??nh s??ng = 0, ????? xa t???i ??a 25 m??t.","publish","open","closed","","webvision-s6263yhd","","","2019-03-10 22:27:38","2019-03-10 15:27:38","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=202","0","product","","1"),
("203","1","2019-03-09 23:32:41","2019-03-09 16:32:41","","WebvisionS6263Y-HD","","inherit","open","closed","","webvisions6263y-hd","","","2019-03-09 23:32:41","2019-03-09 16:32:41","","202","https://tppone.com/demo/camera/wp-content/uploads/2019/03/WebvisionS6263Y-HD.jpg","0","attachment","image/jpeg","0"),
("204","1","2019-03-09 23:33:23","2019-03-09 16:33:23","<div><em><strong>Khi c?? nhu c???u mua m???t chi???c camera quan s??t, ng?????i ti??u d??ng th?????ng quan t??m t???i c??c ??u ??i???m v?????t tr???i, nhi???u t??nh n??ng hi???n ?????i c???a s???n ph???m.??<a href=\"https://webvision.vn/san-pham/webvision-6203w/\" target=\"_blank\" rel=\"noopener\">Camera IP Webvision 6203W l</a>?? m???t trong nh???ng s???n ph???m ????p ???ng ti??u chu???n ???? c???a kh??ch h??nh hi???n nay.</strong></em></div>\n<div>V???i gi?? th??nh r???t h???p l?? ch??? v???i 2 tri???u ?????ng, k??m theo nh???ng t??nh n??ng hi???n ?????i ????????c nh???t v?? nh??????, c??ng ngh??? cao c???p kh??ng thua k??m g?? nh???ng si??u ph???m ra ?????i tr?????c ????.??Camera IP Webvision 6203W<em>??</em>l?? camera quan s??t ???????c ng?????i d??ng l???a ch???n s??? 1 hi???n nay.</div>\n<div><img class=\"aligncenter wp-image-1702 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-300x300.jpg 300w\" alt=\"\" width=\"600\" height=\"600\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/6203w-1.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/6203w-1-300x300.jpg 300w\" /></div>\n<h2><strong>C??i ?????t d??? d??ng</strong></h2>\n<div>?????u ti??n ph???i n??i v??? s??? ti???n ??ch trong vi???c c??i ?????t c???a d??ng??Camera WebVision??6203W n??y. C?? th??? n??i, ch??a bao gi??? ng?????i d??ng c?? th??? d??? d??ng s??? d???ng ?????n v???y. Ngay c??? m???t ng?????i kh??ng c?? ki???n th???c v??? k?? thu???t, th???m ch?? ngay c??? ch??? em ph??? n??? c??ng c?? th??? nhanh ch??ng l???p ?????t ???????c chi???c camera n??y.</div>\n<div>\n\nKh??ng c???n c??c thao t??c c??i ?????t ph???c t???p, kh??ng c???n c???u h??nh, kh??ng c???n mua t??n mi???n, kh??ng c???n mua hosting???B???n ch??? c???n c???m l?? chi???c camera s??? t??? ?????ng ch???y v?? ngay l???p t???c, b???n c?? th??? xem ngay tr??n chi???c ??i???n tho???i c???a m??nh ??? b???t k?? n??i ????u tr??n th??? gi???i.\n<h2><strong>Ki???m so??t t??? xa qua smartphone</strong></h2>\nV???i kh??? n??ng chia s??? h??nh ???nh c???a camera qua m??n h??nh smartphone, nh???ng chi???c Camera IP ??ang tr??? th??nh l???a ch???n c???a nhi???u ng?????i ti??u d??ng. Nh??? n??, b???n ho??n to??n c?? th??? ki???m so??t ???????c to??n b??? ng??i nh?? c???a m??nh d?? b???n ??ang ??? b???t k??? ????u. ????y c??ng ch??nh l?? m???t trong nh???ng ti???n ??ch c???a ng??i nh?? th??ng minh m?? m???t chi???c camera c?? th??? mang l???i.\n<h2><strong>M???t th???n xoay 360 k??m g???t g?? si??u gi??m s??t</strong></h2>\nCamera WebVision 6203W c?? kh??? n??ng xoay 360 ?????, g???t g?? l??n xu???ng 120 ????? khi???n cho kh??? n??ng ??eo b??m v?? theo d??i tr??n c??? h??i l??ng. Kh??ng c??n kh??i ni???m g??c ch???t n???a. C??c b???n c?? tin ???????c kh??ng, ch???c n??ng n??y c?? th??? thao t??c 100% tr??n ??i???n tho???i hay m??y t??nh b???ng ch??? kh??ng ch??? tr??n m??y t??nh nh?? m???t s??? d??ng camera kh??c. D??? h??n ??n b??nh l?? c???m nh???n c???a to??n b??? c??c kh??ch h??ng ???? s??? d???ng, t???t c??? ch??? l?? vu???t ng??n tay tr??n m??n h??nh.\n<h2><strong>T??? ?????ng ph??t hi???n tr???m th??ng b??o ngay l???p t???c qua email</strong></h2>\nCamera IP Wifi WebVision 6203W d???a v??o c??ng ngh??? ph??t hi???n chuy???n ?????ng b???t th?????ng, ghi h??nh khi c?? chuy???n ?????ng. ??i???u n??y c?? ngh??a b???n c?? th??? thi???t l???p ch??? ????? ch??? ghi h??nh khi c?? chuy???n ?????ng. H??y h??nh dung b???n ??i l??m v???, ch??? c???n li???c qua xem l???i camera xem c?? ??i???u g?? b???t th?????ng kh??ng. Kh??ng nh?? c??c lo???i camera kh??c, b???n kh??ng bi???t l??c n??o c???n xem l???i v?? g???n nh?? to??n b??? ?????u kh??ng bi???t ?????n hay b??? s??t nh???ng kho???nh kh???c ????ng ng???\n\nHi???n nay tr??n th??? tr?????ng c?? r???t nhi???u s???n ph???m Camera kh??ng d??y c???a nhi???u h??ng kh??c nhau, gi?? c??? c?? khi ch??nh nhau c??? tri???u ?????ng. Tuy nhi??n r???i ro ti???m ???n kh??ng h??? nh???, ch??a n??i ?????n nh???ng t???n th???t kh??ng th??? ??o ?????m b???ng v???t ch???t nh?? m???c ????ch theo d??i con nh??? ??? nh?? v???i oshin.\n\n</div>","WEBVISION 6203W","Hi???n nay tr??n th??? tr?????ng c?? r???t nhi???u s???n ph???m Camera kh??ng d??y c???a nhi???u h??ng kh??c nhau, gi?? c??? c?? khi ch??nh nhau c??? tri???u ?????ng. Tuy nhi??n r???i ro ti???m ???n kh??ng h??? nh???, ch??a n??i ?????n nh???ng t???n th???t kh??ng th??? ??o ?????m b???ng v???t ch???t nh?? m???c ????ch theo d??i con nh??? ??? nh?? v???i oshin.","publish","open","closed","","webvision-6203w","","","2019-03-10 22:27:11","2019-03-10 15:27:11","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=204","0","product","","1"),
("205","1","2019-03-09 23:33:20","2019-03-09 16:33:20","","6203w","","inherit","open","closed","","6203w","","","2019-03-09 23:33:20","2019-03-09 16:33:20","","204","https://tppone.com/demo/camera/wp-content/uploads/2019/03/6203w.jpg","0","attachment","image/jpeg","0"),
("206","1","2019-03-09 23:34:06","2019-03-09 16:34:06","Michelin l?? m???t th????ng hi???u h??ng ?????u tr??n th??? g???i v??? l???p xe v?? ph??? ki???n cho xe h??i. T???t c??? c??c s???n ph???m t??? th????ng hi???u n??y lu??n c?? ch???t l?????ng t???t, m???u m?? ??a d???ng v?? gi?? th??nh h???p l??. B??m ??i???n ?? t?? 12V Michelin model 12260 l?? m???t trong nh???ng s???n ph???m ???????c s???n xu???t tr??n d??y truy???n c??ng ngh??? ti??n ti???n t??? Michelin, n?? ???????c coi nh?? ng?????i b???n ?????ng h??nh c???a m???i l??i xe khi di chuy???n tr??n ???????ng, v???i chi???c b??m ??i???n n??y lu??n gi??p nh???ng chi???c l???p xe c??ng h??i, ho???t ?????ng ???n ?????nh tr?????c nh???ng s??? c??? tr??n ???????ng.\n\n<img class=\"aligncenter wp-image-5401 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg 340w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-300x300.jpg 300w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260.jpg 340w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-300x300.jpg 300w\" />\n\nB??m ??i???n ?? t?? Michelin 12260 c?? thi???t k??? nh??? g???n, b???n c?? th??? ????? trong c???p xe, mang theo ????? s??? d???ng m?? kh??ng g???p b???t c??? s??? b???t ti???n n??o. S??? h???u b??m ??i???n 12260 gi??p b???n c?? th??? y??n t??m lu??n lu??n ki???m tra v?? ??i???u ch???nh ??p su???t b??nh xe ngay t???i ch???, tr??n m???i h??nh tr??nh ngay c??? tr?????ng h???p kh??ng may c??n p???i ??inh hay nh???ng v???t nh???n.\n\nB??m ??i???n ?? t?? Michelin 12260 ???????c trang b??? ?????ng h??? ??o ??p su???t l???p ??i???n s??? gi??p b???n b??m h??i cho l???p xe khi non h??i, hay khi b???n c??n ph???i ??inh tr??n ???????ng b???n s??? b??m t???m ????? xe c?? th??? di chuy???n v?? ch???y v??? gara ????? s???a.\n\n<img class=\"aligncenter wp-image-5402 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg 640w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1-533x400.jpg 533w\" alt=\"\" width=\"500\" height=\"375\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1.jpg 640w, https://webvision.vn/wp-content/uploads/2017/08/bom-dien-12v-michelin-12260-1-533x400.jpg 533w\" />\n\n??u ??i???m v?????t tr???i c???a Michelin 12260:\n\n??? B??m c?? thi???t k??? h??nh tr??? r???t g???n nh???, thao t??c s??? d???ng ????n gi???n ch??? b???ng 1 n??t b???m, t???t c??? m???i ng?????i ai c??ng s??? d???ng ???????c, k??? c??? ph??? n???.\n\n??? Th??n m??y b??m ???????c b???ng nh??m cao c???p v?? gi???i nhi???t c???c nhanh nh??? ph??n b??? ?????ng ?????u theo h??nh tr??n.\n\n??? T??ch h???p th??m ?????ng h??? ??o ??p su???t c?? th??? th??o r???i ????? ki???m tra t???ng b??nh xe m?? kh??ng c???n mang c??? b??m, v???a ti???t ki???m c??ng s???c v?? v?? c??ng ti???n l???i.\n\n??? M??n h??nh hi???n th??? ????n LED tr??n ?????ng h??? ??o, th??n m??y 2 ????n LED chi???u s??ng d??? d??ng s??? d???ng trong t???i.\n\n??? D??y ??i???n ngu???n 3m , D??y b??m 60cm v?? k??m c??c valve b??m ph??? theo m??y (b??m b??ng, n???m h??i, b??m xe m??y???) C???u ch?? d??? b??? 15A.\n\n??? B??m ho???t ?????ng b???ng ngu???n 12V l???y tr???c ti???p t??? ??? t???u thu???c, r???t ti???n l???i khi s??? d???ng.\n\n??? Motor b??m s???n xu???t theo c??ng ngh??? m???i nh???t cho ph??p gi???m ti???ng ???n t???i ??a, ???? ???????c ch???ng nh???n ????? ???n d?????i 86 dB.\n\n??? ??p su???t t???i ??a: 7 bar t????ng ??????ng 99,9 psi\n\n??? C??ng su???t b??m t??? 0 ?????n 30 psi trong kho???ng 3 ph??t, b??m c??ng b??nh xe trong v??ng 4 ph??t.\n\n<strong>B??? s???n ph???m bao g???m:</strong>\n??? 1 x B??m ??i???n ?? t?? 12 V Michelin\n\n??? 1x ?????ng h??? ??o ??p su???t\n\n??? ??? c???m t???i t???u thu???c l?? tr??n ?? t?? DC 12v (soket lighter)\n\n??? B??? chuy???n ?????i konektor pompa\n\nS??? d???ng b??m ??i???n Michelin l?? s??? l???a ch???n th??ng minh ho??n h???o v?? ti???t ki???m ti???n b???c nh???t gi??p b???n c?? th??? y??n t??m di chuy???n an to??n khi tham gia giao th??ng b???ng xe h??i.\n\nHi???n t???i, B??m ??i???n ?? t?? 12V Michelin Model 12260 ???????c ?????NG C???P CAMERA ??? ?????I L?? MICHELIN T???I VI???T NAM ph??n ph???i. ????? bi???t th??m th??ng tin chi ti???t v?? ?????t mua s???n ph???m h??y li??n h??? v???i ch??ng t??i qua s??? ??i???n tho???i sau:\n\nHotline ?????t h??ng:\n\n01234.000.000 0934.000.000 01234.666.666\n\nHotline h??? tr???:\n\n0969.9999.19 0969.9999.29 0969.9999.69\n\nSHOWROOM TR??NG B??Y S???N PH???M T???I ?????NG C???P CAMERA\n\nMI???N B???C:\n\nS??? 33/121 Th??i h??, Ph?????ng Trung Li???t, Qu???n ?????ng ??a, Th??nh ph??? H?? N???i. ??i???n tho???i: (04).22.66.77.88 ??? (04).62.555.553\nS??? 11 Phan ????nh Ph??ng, Ph?????ng ?????ng Quang, Th??nh ph??? Th??i Nguy??n. ??i???n tho???i: 0969.9999.69\nMI???N NAM: S??? 232/17 Cao Th???ng, Ph?????ng 12, Qu???n 10, Th??nh ph??? H??? Ch?? Minh. ??i???n tho???i: (08).22.44.66.88 ??? (08).22.444.666 ??? (08).22.444.888","B??m ??i???n 12V Michelin 12260","","publish","open","closed","","bom-dien-12v-michelin-12260","","","2019-03-10 00:20:16","2019-03-09 17:20:16","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=206","0","product","","1"),
("207","1","2019-03-09 23:34:02","2019-03-09 16:34:02","","bom-dien-12v-michelin-12260","","inherit","open","closed","","bom-dien-12v-michelin-12260","","","2019-03-09 23:34:02","2019-03-09 16:34:02","","206","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bom-dien-12v-michelin-12260.jpg","0","attachment","image/jpeg","0"),
("208","1","2019-03-09 23:35:01","2019-03-09 16:35:01","Th??? nh??? Samsung Evo 64Gb Class 10","Th??? nh??? Samsung Evo 64Gb BH 12 th??ng","","publish","open","closed","","the-nho-samsung-evo-64gb","","","2019-03-10 00:19:47","2019-03-09 17:19:47","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=208","0","product","","1"),
("209","1","2019-03-09 23:34:56","2019-03-09 16:34:56","","samsung-64gb-class10","","inherit","open","closed","","samsung-64gb-class10","","","2019-03-09 23:34:56","2019-03-09 16:34:56","","208","https://tppone.com/demo/camera/wp-content/uploads/2019/03/samsung-64gb-class10.jpg","0","attachment","image/jpeg","0"),
("210","1","2019-03-09 23:35:35","2019-03-09 16:35:35","D??y c???p ngu???n cho Camera S8,","Ngu???n c??c m???u camera h??nh tr??nh Webvision","D??y c???p ngu???n cho Camera S8,","publish","open","closed","","nguon-cac-mau-camera-hanh-trinh-webvision","","","2019-03-10 22:32:13","2019-03-10 15:32:13","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=210","0","product","","1"),
("211","1","2019-03-09 23:35:32","2019-03-09 16:35:32","","Nguon-s8","","inherit","open","closed","","nguon-s8","","","2019-03-09 23:35:32","2019-03-09 16:35:32","","210","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Nguon-s8.jpg","0","attachment","image/jpeg","0"),
("212","1","2019-03-09 23:36:23","2019-03-09 16:36:23","B???n ??ang di chuy???n tr??n ???????ng nh??ng v?? m???t s??? c??? n??o ???? m?? chi???c l???p xe b??? x?? h??i ho???c n??? l???p, gi???a ???????ng qu???c l??? v???ng v???, kh??ng ng?????i qua l???i, b???n kh??ng mang theo l???p d??? ph??ng, g???i c???u tr??? th?? m??i kh??ng th???y, l??c n??y b???n s??? l??m g??? B???n kh??ng c???n ph???i lo l???ng, t???t c??? v???n ????? tr??n ch??? c???n 1 thi???t b??? duy nh???t c?? th??? gi???i quy???t d??? d??ng ???? ch??nh l?? B??m ?? t?? t??? v?? th??ng minh PFERD 4T-5S.\n\n<img class=\"aligncenter wp-image-5404 size-full lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-300x300.jpg 300w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s.jpg 500w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-300x300.jpg 300w\" />\n\nB??m ?? t?? t??? v?? th??ng minh PFERD 4T-5S c?? ch???c n??ng t??? v??, t??? b??m, t??? ??o ??p l???c v?? t??? chi???u s??ng v???i kh??? n??ng c???c nhanh, c???c kh???e, c???c nh???, c???c b???n v?? c???c ti???t ki???m cho ng?????i s??? d???ng. B??m c?? th??? t??? ?????ng kh??i ph???c ho??n to??n l???p xe trong 5 ph??t, r??t ng???n th???i gian nguy hi???m b??n ???????ng, kh??ng c???n thi???t ph???i ?????i xe c???u h??? ho???c d??ng k??ch ????? n??ng xe thay l???p??? Chi???c b??m t??? v?? th??ng minh PFERD 4T-5S n??y gi???ng nh?? m???t v??? c???u tinh khi b???n g???p kh?? kh??n v?? s??? tr??? th??nh m???t ng?????i th??? s???a xe chuy??n nghi???p s???n s??ng ?????ng h??nh c??ng x??? h???p tr??n m???i cung ???????ng.\n\nPFERD 4T-5S c?? thi???t k??? si??u nh??? g???n, ???????c ????ng trong t??i h???p nh??? ti???n d???ng, b???n c?? th??? mang theo trong c???p xe s??? d???ng b???t c??? khi n??o c???n.\n\n<img class=\"aligncenter wp-image-5406 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg 800w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-768x576.jpg 768w\" alt=\"\" width=\"500\" height=\"375\" data-src=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2.jpg 800w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2017/08/bom-tu-va-pferd-4t-5s-2-768x576.jpg 768w\" />\n<h2><strong>??u ??i???m c???a PFERD 4T-5S??</strong></h2>\nB??m ?? t?? t??? v?? th??ng minh ra ?????i xu???t ph??t t??? nhu c???u s???a ch???a l???p xe b??? h???ng tr???c ti???p t???i v??? tr?? x???y ra s??? c???. Ch??nh v?? v???y, n?? ???????c th??ch h???p nhi???u t??nh n??ng v?? c??ng ti??n l???i.\n\n+ Thi???t k??? b??m ?? t?? ch??? m???t th???i gian t??? 3 ??? 5 ph??t, s??? d???ng ngu???n ??i???n 12V tr??n xe ti???t ki???m th???i gian.\n\n+ V???i c??ng ngh??? s???n xu???t keo t??? v?? hi???n ?????i t??? Anh, th??nh ph???n cao su t??? nhi??n, an to??n, d??? s??? d???ng v?? kh??? n??ng t??? v?? th??ng minh ??em l???i hi???u qu??? nhanh ch??ng m?? kh??ng g??y ?? nhi???m m??i tr?????ng.\n\n+ B??m ?? t?? c?? t??ch h???p ????n chi???u s??ng ban ????m, l???p v??? ch???ng va ?????p b???n b???, k??ch th?????c nh??? g???n, c?? t??i x??ch mang theo ti???n l???i, ????n gi???n.\n\n+ B??m ?? t?? t??? v?? th??ng minh ph?? h???p v???i c??c lo???i xe t???i nh???, taxi, xe 9 ch??? h???ng B2.\n\n+ Keo t??? v?? kh??ng g??y oxy h??a v???i cao su, nh???a, kim lo???i, ??? tr???ng th??i dung d???ch d??? d??ng tan trong n?????c, kh??ng ???nh h?????ng t???i da, kh??ng c?? t??c d???ng ?????c ph???, an to??n kh??ng ch??y.\n\n+ D??? d??ng r???a s???ch b???ng n?????c.\n\n+ Keo t??? v?? Pferd c?? th??? nhanh ch??ng v?? v???t ??inh ????m th???ng ho???c ????m xi??n, c?? th??? k???p th???i v?? v???t th???ng l??n t???i ???????ng k??nh 6.35mm, tr??nh vi???c xu???ng h??i d???n ?????n m???t an to??n cho xe.\n\n+ Keo t??? v?? Pferd sau khi b??m v??o l???p s??? gi??? tr???ng th??i l???ng k??? c??? d?????i -40C~ + 80C c?? th??? ?????m b???o hi???u qu??? v?? k??n khi b??? ????m th???ng nhi???u l???n.","B??m t??? v?? PFERD 4T-5S","","publish","open","closed","","bom-tu-va-pferd-4t-5s","","","2019-03-09 23:36:23","2019-03-09 16:36:23","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=212","0","product","","0"),
("213","1","2019-03-09 23:36:08","2019-03-09 16:36:08","","Bom-tu-va","","inherit","open","closed","","bom-tu-va","","","2019-03-09 23:36:08","2019-03-09 16:36:08","","212","https://tppone.com/demo/camera/wp-content/uploads/2019/03/Bom-tu-va.jpg","0","attachment","image/jpeg","0"),
("214","1","2019-03-09 23:37:21","2019-03-09 16:37:21","V???i b???t c??? ph????ng ti???n n??o th?? l???p xe l?? m???t ph??? ki???n r???t quan tr???ng, ch???u to??n b??? tr???ng t???i c???a xe, ch??nh v?? v???y n?? c???n ???????c quan t??m ?????c bi???t v?? ph???i lu??n ?????m b???o ?????y h??i khi di chuy???n.??<strong><em>B??m ??i???n 12V Michelin</em></strong><strong><em>??12266</em></strong>??l?? m???t ph??? ki???n th??ng minh gi??p b???n ?????m b???o an to??n khi di chuy???n, gi???i quy???t t??nh tr???ng l???p non h??i, d??nh ph???i ??inh.\n\nB??m ??i???n Michelin lu??n ?????m b???o an to??n v???i nhi???u t??nh n??ng th??ng d???ng cho ph??p b???n c??i ?????t ??p su???t l???p t??ch h???p ph?? h???p v?? th??ng s??? h??i t??? ?????ng ng???t. Ngo??i ra m??y b??m Michelin c??n t??ch h???p ????n LED chi???u s??ng v?? ????n LED m??u ????? nh???p nh??y ????? c???nh b??o an to??n khi b???n b??m trong ????m t???i, m??i tr?????ng thi???u ??nh s??ng.\n\n<img class=\"aligncenter wp-image-5371 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg\" sizes=\"(max-width: 650px) 100vw, 650px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg 800w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-711x400.jpg 711w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-768x432.jpg 768w\" alt=\"\" width=\"650\" height=\"366\" data-src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1.jpg 800w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-711x400.jpg 711w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-1-768x432.jpg 768w\" />\nM??y b??m ??i???n 12V Michelin c?? thi???t k??? nh??? g???n, ti???n d???ng thu???n ti???n cho b???n khi di chuy???n v?? khi c???t, b???n c?? th??? ????? trong c???p xe ????? s??? d???ng b???t c??? khi n??o c???n thi???t. Ngo??i ra, m??y c??n c?? k??m theo nhi???u lo???i van b??m kh??c nhau: van b??m b??ng, b??m xe m??y, xe ?????p, xu???ng, phao, ?????m??? v?? m??y c??n trang b??? th??m 1 ??? chia m???i thu???c 12V,1 ??? chia USB r???t thu???n ti???n cho vi???c d??ng nhi???u thi???t b??? c??ng m???t l??c.\n\n&nbsp;\n\n<img class=\"aligncenter wp-image-5374 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg 300w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-180x180.jpg 180w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3.jpg 300w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12266-3-180x180.jpg 180w\" />\n\nS???n ph???m ???????c trang b??? ?????ng c?? m???nh m??? cho ??p su???t t???i ??a 150psi ~ 10kg/cm2, c?? th??? th???i ph???ng m???t l???p xe t??? c??n h??? ?????n 30 psi trong kho???ng 3 ph??t trong khi t???o cho b???n th???i gian r???nh ????? c?? th??? l??m vi???c kh??c. M??n h??nh LCD hi???n th??? k??? thu???t s??? m??u tr???ng r???t d??? ?????c v?? c?? th??? chuy???n gi???a PSI.\n\nHi???n t???i, B??m ??i???n ?? t?? 12V Michelin 12266 ???????c ?????NG C???P CAMERA ??? ?????I L?? MICHELIN T???I VI???T NAM ph??n ph???i. ????? bi???t th??m th??ng tin chi ti???t v?? ?????t mua s???n ph???m h??y li??n h??? v???i ch??ng t??i qua s??? ??i???n tho???i sau:\n\nHotline ?????t h??ng:\n\n01234.000.000 0934.000.000 01234.666.666\n\nHotline h??? tr???:\n\n0969.9999.19 0969.9999.29 0969.9999.69\n\nSHOWROOM TR??NG B??Y S???N PH???M T???I ?????NG C???P CAMERA\n\nMI???N B???C:\n\nS??? 33/121 Th??i h??, Ph?????ng Trung Li???t, Qu???n ?????ng ??a, Th??nh ph??? H?? N???i. ??i???n tho???i: (04).22.66.77.88 ??? (04).62.555.553\nS??? 11 Phan ????nh Ph??ng, Ph?????ng ?????ng Quang, Th??nh ph??? Th??i Nguy??n. ??i???n tho???i: 0969.9999.69\nMI???N NAM: S??? 232/17 Cao Th???ng, Ph?????ng 12, Qu???n 10, Th??nh ph??? H??? Ch?? Minh. ??i???n tho???i: (08).22.44.66.88 ??? (08).22.444.666 ??? (08).22.444.888","B??m ??i???n MICHELIN 12266 BH 24 th??ng","S???n ph???m ???????c trang b??? ?????ng c?? m???nh m??? cho ??p su???t t???i ??a 150psi ~ 10kg/cm2, c?? th??? th???i ph???ng m???t l???p xe t??? c??n h??? ?????n 30 psi trong kho???ng 3 ph??t trong khi t???o cho b???n th???i gian r???nh ????? c?? th??? l??m vi???c kh??c. M??n h??nh LCD hi???n th??? k??? thu???t s??? m??u tr???ng r???t d??? ?????c v?? c?? th??? chuy???n gi???a PSI.","publish","open","closed","","bom-dien-michelin-12266","","","2019-03-10 22:31:48","2019-03-10 15:31:48","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=214","0","product","","1"),
("215","1","2019-03-09 23:37:13","2019-03-09 16:37:13","","bom-dien-michelin-12266-3","","inherit","open","closed","","bom-dien-michelin-12266-3","","","2019-03-09 23:37:13","2019-03-09 16:37:13","","214","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bom-dien-michelin-12266-3.jpg","0","attachment","image/jpeg","0"),
("216","1","2019-03-09 23:38:15","2019-03-09 16:38:15","B???n????ang c?? nhu c???u mu???n mua m???t chi???c m??y b??m l???p???? t?? mini??????? d??ng cho chi???c xe th??n y??u c???a b???n? B???n????ang ph??n v??n kh??ng bi???t n??n mua lo???i n??o cho t???t, h??ng n??o cho t???t, c??? th??? l?? n??n mua c??i n??o? R???i th?? mua???????????u??????? c?? gi?? t???t, b???o h??nh chu??????o?\n\nMichelin 12264 l?? b??m ??i???n ?? t?? s??? d???ng c??ng ngh??? ?????ng c?? m??y n??n m???i nh???t hi???n c?? tr??n th??? tr?????ng hi???n nay. N?? c?? th??? ???????c s??? d???ng ????? b??m l???p xe nh?? xe h??i, xe m??y, xe ?????p. N?? c??ng ph???c v??? nh?? l?? m???t ngu???n ??i???n k??? thu???t s??? (DPS).\n\n<img class=\"aligncenter wp-image-5410 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg 430w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-300x300.jpg 300w\" alt=\"\" width=\"500\" height=\"500\" data-src=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264.jpg 430w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-280x280.jpg 280w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-400x400.jpg 400w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-180x180.jpg 180w, https://webvision.vn/wp-content/uploads/2017/10/bom-dien-michelin-12264-300x300.jpg 300w\" />\n\nB??m Michelin 12264 ???????c thi???t k??? ????? b??m t???t c??c c??c lo???i l???p xe kh??ng ????? ??p su???t h??i m???i l??c m???i n??i. Chi???c b??m??Michelin 12264 n??y v?? c??ng??nh??? g???n n??y ???????c trang b??? ?????ng h??? ??o ??p su???t ????? x??c ?????nh ch??nh x??c ??p su???t theo ????ng y??u c???u. Ngo??i ra, n?? c??ng ???????c trang b??? m???t n??t x??? trong tr?????ng h???p l???p xe b??? qu?? ??p su???t y??u c???u ho???c trong tr?????ng h???p l???p v?? t??nh b??? b??m qu?? ??p su???t y??u c???u.\n<h2><strong>??u ??i???m t?????Michelin 12264</strong></h2>\n??? Th????ng hi???u uy t??n\n??? Thi???t k??? v?? c??ng nh??? g???n, tin m??nh ??i b???n s??? ph???i b???t ng??? v??? ????? nh??? c???a n?? ?????y!\n??? D??y d???n ??i???n d??i (h??n 3 m t??)\n??? B??o ??p su???t l???p b???ng m??n h??nh LCD\n??? M??y trang b??? n??t x???, ????? gi??p b???n x??? b???t h??i trong tr?????ng h???p b??m qu?? c??ng so v???i quy ?????nh\n??? H??? tr??? nhi???u van b??m, gi??p b???n b??m ???????c nhi???u lo???i h??n nh??: B??ng, phao b??i, n???m h??i, xe m??y, xe ?????p???\n??? M??y ho???t ?????ng r???t ??m ??i, ???n ?????nh, t???c ????? b??m kh?? nhanh\n??? M??y c??ng h??? tr??? th??m m???t c???ng s???c USB ????? b???n c?? th??? chia ngu???n\n??? B???o h??nh ch??nh h??ng 12 th??ng","B??m ??i???n MICHELIN 12264 nh???p H??n","B??m Michelin 12264 ???????c thi???t k??? ????? b??m t???t c??c c??c lo???i l???p xe kh??ng ????? ??p su???t h??i m???i l??c m???i n??i. Chi???c b??m??Michelin 12264 n??y v?? c??ng??nh??? g???n n??y ???????c trang b??? ?????ng h??? ??o ??p su???t ????? x??c ?????nh ch??nh x??c ??p su???t theo ????ng y??u c???u. Ngo??i ra, n?? c??ng ???????c trang b??? m???t n??t x??? trong tr?????ng h???p l???p xe b??? qu?? ??p su???t y??u c???u ho???c trong tr?????ng h???p l???p v?? t??nh b??? b??m qu?? ??p su???t y??u c???u.","publish","open","closed","","bom-dien-michelin-12264","","","2019-03-10 22:31:23","2019-03-10 15:31:23","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=216","0","product","","1"),
("217","1","2019-03-09 23:38:05","2019-03-09 16:38:05","","bom-dien-michelin-12264-2","","inherit","open","closed","","bom-dien-michelin-12264-2","","","2019-03-09 23:38:05","2019-03-09 16:38:05","","216","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bom-dien-michelin-12264-2.jpg","0","attachment","image/jpeg","0"),
("218","1","2019-03-09 23:39:12","2019-03-09 16:39:12","<b>?????T H??NG NGAY</b>\n<div>\n\nC??c b???n??<strong>?????t h??ng??</strong>theo 1 trong c??c c??ch sau:\n\n??? C??ch 1:??<strong>Comment S??? ??i???n tho???i + H??? T??n + ?????a Ch???</strong>\n\n??? C??ch 2:??<strong>?????t h??ng nhanh/ ?????t h??ng</strong>\n\n??? C??ch 3:??<strong>?????t h??ng qua s??? hotline</strong>??(h??? tr??? 24/7)\n\n??? C??ch 4:??<strong>Chat tr???c ti???p qua Facebook</strong>\n\n??? C??ch 5:??<strong>?????n tr???c ti???p c??c c???a h??ng c???a Webvision</strong>\n<div>\n<p class=\"p1\"><strong><span class=\"s1\"><img class=\"emoji lazy-load-active\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/11/svg/260e.svg\" alt=\"??????\" data-src=\"https://s.w.org/images/core/emoji/11/svg/260e.svg\" />????T???ng ????i??<a href=\"tel:19000388\">1900 0388</a>???????081 667 667???????0971 133 133???????<a href=\"tel:0934000000\">0934 000 000</a>???????<a href=\"tel:0969999929\">0969 9999 29</a>?????<a href=\"tel:01234666666\">0834 666 666 ??? 0379 555222</a></span></strong></p>\n\n</div>\n<div>Chat facebook:??<strong>Webvision.vn</strong></div>\n<div></div>\n</div>\n<strong>H??? TH???NG SHOWROOM V?? ?????I L?? TR??N TO??N QU???C</strong>\n\n<b>??? H?? N???i</b>\n\n?????a ch???: S??? 33, Ng?? 121 Th??i H??, Trung Li???t, ?????ng ??a, H?? N???i.\n\n<b>??? Th??i Nguy??n</b>\n\n?????a ch???: S??? 579 Phan ????nh Ph??ng (?????i di???n ????ng ?? Plaza Hotel), Th??nh ph??? Th??i Nguy??n\n\n<b>??? Th??nh ph??? H??? Ch?? Minh</b>\n\n?????a ch???: S??? 232/17 Cao Th???ng, Ph?????ng 12, Qu???n 10, Th??nh ph??? H??? Ch?? Minh.\n\n<strong><b>?????</b>H??? th???ng ?????i l?? tr??n to??n qu???c:??</strong>https://webvision.vn/danh-sach-dai-ly/","B??? t???u chia 3 ?? t?? Hoco C1 ch??nh h??ng","?????a ch???: S??? 579 Phan ????nh Ph??ng (?????i di???n ????ng ?? Plaza Hotel), Th??nh ph??? Th??i Nguy??n","publish","open","closed","","bo-tau-chia-3-o-to-hoco-c1-chinh-hang","","","2019-03-10 22:30:56","2019-03-10 15:30:56","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=218","0","product","","1"),
("219","1","2019-03-09 23:38:55","2019-03-09 16:38:55","","c1-3-in-1car-charger-white","","inherit","open","closed","","c1-3-in-1car-charger-white","","","2019-03-09 23:38:55","2019-03-09 16:38:55","","218","https://tppone.com/demo/camera/wp-content/uploads/2019/03/c1-3-in-1car-charger-white.jpg","0","attachment","image/jpeg","0"),
("220","1","2019-03-09 23:40:38","2019-03-09 16:40:38","Nh???c t???i ????n v??? h??ng ?????u cung c???p nh???ng d??ng camera h??nh tr??nh ???ch???t nh?? n?????c c???t??? ng?????i ta kh??ng th??? kh??ng k??? ?????n th????ng hi???u??<strong>WEBVISION</strong>. V???i s??? ra ?????i c???a h??ng lo???t camera h??nh tr??nh g??y ???????c ti???ng vang l???n trong th??? tr?????ng Camera h??nh tr??nh trong n?????c, b???i kh??ng ch??? thi???t k??? sang tr???ng, tinh t???, ??n ?? trong m???i n???i th???t cu??? ??a d???ng c??c d??ng xe kh??c nhau, Webvision c??n chi???m ???????c c???m t??nh c???a kh??ch h??ng khi li??n t???c ?????i m???i, li??n t???c c???p nh???t nh???ng t??nh n??ng th??ng minh, h??t kh??ch, d???n ?????u xu th???.\n\nM???i ????y, s??? ra m???t c???a camera h??nh tr??nh N93 Plus v???i nh???ng ??i???m kh??c bi???t n???i tr???i t??? giao di???n cho ?????n t??nh n??ng, ???? l??m ??i??n ?????o th??? tr?????ng camera h??nh tr??nh, nh???n ???????c ph???n h???i t??ch c???c c???a m???i kh??ch h??ng. Ch??nh s??? th??nh c??ng n??y nh?? ti???p th??m ?????ng l???c, t???i ????y Webvision s???p tung ra th??? tr?????ng s???n ph???m m???i ??? phi??n b???n n??ng c???p c???a Camera h??nh tr??nh Webvision N93 Plus ??? Webvision N93X. Li???u r???ng s??? ra ?????i c???a si??u ph???m n??y c?? 1 l???n n???a ??em l???i nh???ng b???t ng??? th?? v???, chinh ph???c ???????c nh???ng kh??ch h??ng ???c???ng??? trong l??ng xe Vi???t hay kh??ng? H??y d??nh 1 v??i ph??t ?????c h???t b??i vi???t n??y ????? c??ng t??m hi???u nh???ng ??i???u k??? di???u m?? Webvision N93X mang l???i nh??!\n\n<img class=\"alignnone size-medium wp-image-9346 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg\" sizes=\"(max-width: 764px) 100vw, 764px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/1-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/1-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/1.jpg 1500w\" alt=\"\" width=\"764\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/1-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/1-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/1-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/1.jpg 1500w\" />\n\n<strong>DI???N M???O M???I ??? PHONG TH??I M???I\n</strong>\n\n?????i ng?? thi???t k??? c???a Webvision ???? c???c k??? tinh t??? trong c??ch c???i ti???n s???n ph???m c???a m??nh ngay t??? v??? b??? ngo??i. Xu???t hi???n trong ???b??? c??nh??? kh??c nh???ng phi??n b???n tr?????c, Webvision N93X mang s???c ??en sang tr???ng, l???ch l??m. M??u ??en ??em l???i n??ng l?????ng c???a s??? b???n v???ng v?? s??? ???n ?????nh. ??en l?? s???c m??u phong thu??? c???a s??? b?? ???n, v?? tinh t???. S??? h???u v??? b??? ngo??i h???p d???n, c???c ph???m n??y ch???c ch???n s??? thu h??t m???i t??n ????? x??? h???p ngay t??? c??i nh??n ?????u ti??n. Ng??n ng??? thi???t k??? c???a N93X ???????c ?????nh h?????ng theo phong c??ch t???i gi???n, chuy??n nghi???p v?? tho??ng m???t.\n\n<img class=\"alignnone size-medium wp-image-9347 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg\" sizes=\"(max-width: 761px) 100vw, 761px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg 761w, https://webvision.vn/wp-content/uploads/2018/09/2-768x403.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/2-1400x735.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/2.jpg 1500w\" alt=\"\" width=\"761\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/2-761x400.jpg 761w, https://webvision.vn/wp-content/uploads/2018/09/2-768x403.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/2-1400x735.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/2.jpg 1500w\" />\n\nPh??t huy ??i???m m???nh c???a phi??n b???n h??t kh??ch tr?????c ????, Webvision N93X mang ?????n giao di???n hot nh???t hi???n nay, v?? m??n h??nh c???m ???ng chuy???n ?????ng m?????t m??, h??n h???n c??c camera h??nh tr??nh kh??c tr??n th??? tr?????ng. Giao di???n m??n h??nh c???a camera h??nh tr??nh tr??ng kh?? gi???ng v???i giao di???n tr??n c??c m??y ??i???n tho???i ch???y h??? ??i???u h??nh Windows Phone hay Windows 10. Ch???t l?????ng m??n h??nh s??ng v?? trong h??n, g??c nh??n c??ng ???????c c???i thi???n r?? r???t.\n\n<strong>??I???M KH??C BI???T C???A WEBVISION N93X</strong>\n\nS???p t???i ????y, Webvision s??? mang ?????n cho ng?????i d??ng m???t d??ng s???n ph???m m???i nh???t, hi???n ?????i nh???t, ch??a t???ng xu???t hi???n tr??n th??? tr?????ng camera h??nh tr??nh, v???i nh???ng ??i???m kh??c bi???t r?? r???t:\n<ul>\n 	<li>N???u nh?? ?????i tr?????c Webvision N93 Plus b??? ngo??i k???t h???p 2 m??u ??en v?? x??m, th?? t???i phi??n b???n m???i ????y, thi???t b??? N93X s??? ???????c thi???t k??? b???i 1 t??ng m??u duy nh???t: M??u ??en c???a s??? sang tr???ng, huy???n b??.</li>\n 	<li>V??? giao di???n, N93X v???n s??? d???ng giao di???n m??n h??nh ch??nh v???i c??c m???c quen thu???c: Ng??y th??ng, ?????nh v??? GPS, Video l??i xe, Bluetooth, ????i FM, Nghe nh???c v?? ???ng d???ng. Kh??c bi???t duy nh???t ???? ch??nh l??, N93X ???? thay th??? m???c C???a h??ng ???ng d???ng b???ng m???c CarAssit v???i bi???u t?????ng r?? r??ng, m???c ????ch gi??p ng?????i s??? d???ng c?? th??? d??? d??ng thao t??c v???i ???ng d???ng n??y h??n.</li>\n 	<li>M??n h??nh c???a N93X l?? ??i???u l??m n??n s??? n???i b???t h??n c???. Webvision thay th??? m??n h??nh c???m ???ng ??a ??i???m TFT LCD c???a N93 Plus b???ng m??n h??nh ???????c xem l?? m??n h??nh chu???n nh???t hi???n nay. V???i vi???c s??? d???ng m??n h??nh IPS, N93X lo???i b??? ho??n to??n hi???n t?????ng ph???n s??ng, nho?? h??nh, m??u s???c ???????c t??ng c?????ng v??? ????? s??ng v?? ????? ch??n th???c, g??c nh??n c??ng ???????c m??? r???ng h??n</li>\n</ul>\n<img class=\"wp-image-9348 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg\" sizes=\"(max-width: 660px) 100vw, 660px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/3-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/3-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/3.jpg 1500w\" alt=\"\" width=\"660\" height=\"346\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/3-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/3-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/3-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/3.jpg 1500w\" />\n<ul>\n 	<li>??i???m kh??c bi???t n???a ???? ch??nh l?? ch???t l?????ng ghi h??nh, v???n gi??? phong ????? ??? ch??? ????? quay camera tr?????c Full HD 1080P. Tuy nhi??n, ??i???u t???o n??n ?????ng c???p m???i cho thi???t b??? n??y ???? ch??nh l??: n??ng c???p ????? ph??n gi???i c???a camera sau N93X l??n ?????n HD 720P cho ch???t l?????ng ghi h??nh c???c r?? n??t. T???t c??? h??nh ???nh nh??? ???? ?????u ???????c th??? hi???n ch??n th???c, s???ng ?????ng b???t k??? ban ng??y, ban ????m, th???i ti???t m??a n???ng,..</li>\n 	<li>B??? nh??? RAM c???a Webvision N93X c??ng ???????c n??ng c???p l??n 2GB ??? g???p ????i dung l?????ng l??u tr??? so v???i s???n ph???m ?????i tr?????c, gi??p cho h??? th???ng v???n h??nh m?????t m??, tr??n tru h??n, ng?????i d??ng c?? th??? s??? d???ng tab ???ng d???ng kh??c nhau c??ng 1 l??c m?? kh??ng lo b??? ????, b??? gi???t.</li>\n</ul>\n<strong>NH???NG T??NH N??NG N???I TR???I L??M N??N SI??U PH???M C?? 1 ??? 0 ??? 2</strong>\n\nKh??ng ch??? s??? h???u thi???t k??? m???i l???, ?????c ????o, Webvision N93X mang ?????n cho ng?????i d??ng c???m gi??c m???i l??? khi s??? d???ng nh???ng t??nh n??ng c???a s???n ph???m n??y.\n\n<strong><em>Ghi h??nh hai chi???u c??ng l??c v???i ????? ph??n gi???i cao</em></strong>\n\nCamera h??nh tr??nh ???????c thi???t k??? th???u k??nh d???ng m???t c?? n??n t???m nh??n c???c r???ng. G??c quay l40 ?????, h??? tr??? ch??? ????? quay camera tr?????c Full HD 1080P. Phi??n b???n m???i n??ng c???p cho ph??p camera sau ghi h??nh ??? ch??? ????? HD 720P. T???t c??? c??c h??nh ???nh ???????c ghi l???i m???t c??ch ch??n th???c, r?? n??t gi??p ng?????i d??ng c?? th??m th??ng tin khi x???y ra va ch???m k??? c??? trong ban ????m, hay trong b???t k??? ??i???u ki???n kh???c nghi???t n??o c???a th???i ti???t.\n\n<img class=\"alignnone size-medium wp-image-9349 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/4-768x360.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/4-1400x656.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/4.jpg 1500w\" alt=\"\" width=\"800\" height=\"375\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/4-800x375.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/4-768x360.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/4-1400x656.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/4.jpg 1500w\" />\n\n<strong><em>T??ch h???p Camera l??i</em></strong>\n\n????y l?? t??nh n??ng m?? h???u h???t ng?????i d??ng ?????u c???m th???y ti???n d???ng, ?????c bi???t ?????i v???i n??? gi???i ho???c nh???ng ngu???i m???i t???p l??i, tay l??i y???u. S??? d???ng t??nh n??ng n??y khi chuy???n v??? ch??? ????? l??i, ng?????i l??i c?? th??? d??? d??ng di chuy???n l??i, ????? xe theo ????ng ?? m??nh m?? kh??ng x???y ra nh???ng tai n???n kh??ng ????ng c??.\n\n<strong><em>T??ch h???p c??ng ngh??? 4G hi???n ?????i</em></strong>\n\nC??ng ngh??? n??y l?? m???t trong nh???ng c??ng ngh??? m???i nh???t hi???n nay, v?? kh??ng ph???i camera h??nh tr??nh n??o c??ng c?? ???????c. Ch??? v???i 1 th??? sim 4G, b???n c?? th??? tha h??? l?????t web, xem phim, nghe nh???c v?? tr???i nghi???m nh???ug ???ng d???ng h???u ??ch tr??n Google Play mi???n ph??, v???i t???c ????? si??u nhanh. ??p d???ng c??ng ngh??? n??y, Webvision N93X kh??ng kh??c g?? thi???t b??? gi???i tr??, v???i m??n h??nh l???n 6.86 inch nh?? m???t chi???c m??y t??nh b???ng, b???n s??? ???????c t???n h?????ng kh??ng gian th?? gi??n, y??u th??ch c???a m??nh ngay tr??n ?? t?? h???t s???c ti???n l???i.\n\n<img class=\"alignnone size-medium wp-image-9350 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg\" sizes=\"(max-width: 714px) 100vw, 714px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg 714w, https://webvision.vn/wp-content/uploads/2018/09/5-768x430.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/5-1400x784.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/5.jpg 1500w\" alt=\"\" width=\"714\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/5-714x400.jpg 714w, https://webvision.vn/wp-content/uploads/2018/09/5-768x430.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/5-1400x784.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/5.jpg 1500w\" /><strong><em>Ph??t wifi v?? k???t n???i Bluetooth 4.0</em></strong>\n\nL?? 1 trong nh???ng d??ng s???n ph???m camera h??nh tr??nh hi???m hoi s??? d???ng h??? ??i???u h??nh Android 5.1, Webvision N93X cho ph??p b???n c?? th??? tu??? ch???nh nhi???u thi???t l???p trong m??c C??i ?????t ??? ngo??i m??n h??nh ch??nh, nh??: c??i ?????t ??m l?????ng, ????? s??ng m??n h??nh, c??c c??i ?????t li??n quan ?????n h??nh ???nh v?? ??m thanh tr??n thi???t b???. ???n t?????ng nh???t, thi???t b??? c??n h??? tr??? thu, ph??t wifi. Khi c???m th??? sim 4G v??o camera, b???n c?? th??? b???t/t???t 4G, v?? ph??t wifi cho c??c thi???t b??? kh??c c??ng s??? d???ng.\n\n<strong><em>Gi??m s??t, ?????nh v??? xe ?? t?? th??ng qua ???ng d???ng Car Assit ???????c c??i ?????t tr??n ??i???n tho???i</em></strong>\n\nKh??ng ch??? ????n thu???n ?????nh v??? ???????c v??? tr?? tr??n b???n ?????, Webvision N93X c??n cho ng?????i d??ng bi???t ???????c chi???c xe ??ang ??? cung ???????ng n??o, di chuy???n ra sao v?? th???m ch?? l?? c?? th??? xem ???????c ho???t ?????ng ph??a tr?????c c???a xe ???????c ghi l???i qua camera h??nh tr??nh. Nh??? ???ng d???ng th??ng minh n??y, b???n s??? kh??ng c??n lo l???ng khi cho ng?????i kh??c m?????n xe, hay ????? xe t???i n??i kh??ng quen thu???c n???a. Khi xe c???a b???n c?? d???u hi???u l???, b??? ph?? ho???i, hay tr???m c???p, camera n??y s??? t??? ?????ng ch???p l???i m??n h??nh r???i g???i ?????n ??i???n tho???i c???a b???n. S??? h???u Webvision N93X, b???n nh?? c?? 1 v??? s?? b??n c???nh, s??? b???o v??? b???n trong m???i t??nh hu???ng!\n\n<img class=\"alignnone size-medium wp-image-9351 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/6-768x327.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/6-1400x596.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/6.jpg 1500w\" alt=\"\" width=\"800\" height=\"341\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/6-800x341.jpg 800w, https://webvision.vn/wp-content/uploads/2018/09/6-768x327.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/6-1400x596.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/6.jpg 1500w\" />\n\n<strong><em>GPS ?????nh v???, d???n ???????ng th??ng minh v???i b???n ????? Navitel</em></strong>\n\nB???n ????? Navitel ???????c c??i ?????t tr??n camera h??nh tr??nh l?? 1 d??? li???u b???n ????? ti??n ti???n nh???t v?? ch??nh x??c hi???n nay, t??ch h???p b???n ????? 63 t???nh th??nh tr??n c??? n?????c, ???????c c???p nh???t li??n t???c 3 th??ng/ 1 l???n. S??? d???ng Navitel, n???i lo l???c ???????ng s??? kh??ng c??n l?? v???n ????? ??m ???nh b???n n???a. Khi ph???i ??i xa, qua c??c t???nh th??nh kh??ng quen th???c, thi???t b??? s??? ?????nh v??? v??? tr?? c???a b???n v?? nhanh ch??ng ch??? d???n b???n ??i ?????n ch??nh x??c ?????a ??i???m b???n mu???n t???i.\n\n?????nh v??? GPS c???a Webvision N93X c??n h??? tr??? c???nh b??o l??n ???????ng, ???????ng giao nhau v?? s??? d???ng c??c m??i t??n m??u s??ng cho bi???t l??n ???????ng ph?? h???p ????? gi??p b???n ??i???u h?????ng ch??nh x??c nh???t.\n\nNgo??i ra, ?????????c trang b??? h??? th???ng c???nh b??o ADAS, thi???t b??? c??n c?? kh??? n??ng ??o kho???ng c??ch v???i xe ph??a tr?????c, ????? c???nh b??o an to??n, c???nh b??o gi???i h???n t???c ?????, c???nh b??o va ch???m, b???ng gi???ng n??i 100% Vi???t d??? nghe.\n\n<img class=\"alignnone size-medium wp-image-9352 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg\" sizes=\"(max-width: 764px) 100vw, 764px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/7-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/7-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/7.jpg 1500w\" alt=\"\" width=\"764\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/09/7-764x400.jpg 764w, https://webvision.vn/wp-content/uploads/2018/09/7-768x402.jpg 768w, https://webvision.vn/wp-content/uploads/2018/09/7-1400x733.jpg 1400w, https://webvision.vn/wp-content/uploads/2018/09/7.jpg 1500w\" />\n\n<strong><em>C??ng ngh??? Bluetooth 4.0: H??? tr??? ????m tho???i r???nh tay, an to??n khi l??i xe</em></strong>\n\nV???i c??ng ngh??? hi???n ?????i n??y, b???n c?? th??? d??? d??ng nghe g???i khi ??ang l??i xe ch??? qua thao t??c k???t n???i v???i smart-phone c???a m??nh c???c ????n gi???n.\n\nT??i x??? c??ng c?? th??? nghe, g???i, t??? ch???i, ????m tho???i r???nh tay tr??n ch??nh thi???t b??? th??ng minh n??y. ??i???u n??y g??p ph???n ?????m b???o an to??n tuy???t ?????i khi l??i xe.\n\n<strong><em>C???u h??nh kh???ng</em></strong>\n\nWebvision N93X ???????c trang b??? c???u h??nh v???i chip x??? l?? MediaTek 6735 l??i t??? t???c ????? 1,5Ghz, c?? hi???u n??ng x??? l?? c???c t???t. Nh??? ????, m?? ho??n to??n kh??ng c?? hi???n t?????ng gi???t hay m???t ??o???n trong qu?? tr??nh quay h??nh. Trong ??i???u ki???n quay c??? b??n ng??y hay ban ????m, camera h??nh tr??nh c??ng x??? l?? r???t t???t khi b??? ??nh ????n ???????ng, kh??ng b??? lo?? k??? c??? ????n khi chi???u th???ng v??? ph??a xe.\n\n????ng ch?? ?? nh???t l??, t???i phi??n b???n n??y, b??? nh??? RAM g???p ????i kh??? n??ng l??u tr??? c???a c??c thi???t b??? th??? h??? tr?????c. Thi???t b??? ?????????c c??i s???n h??? ??i???u h??nh Android 5.1 v?? b??? nh??? RAM 2GB + b??? nh??? trong 16GB n??n n?? kh??ng c??n l?? chi???c camera h??nh tr??nh th??ng th?????ng, m?? b???n c?? th??? s??? d???ng nh?? m???t chi???c m??y t??nh b???ng gi?? r??? l?????t web, xem phim ho???c ch??i game trong nh???ng l??c kh??ng c???n ghi h??nh.\n\n???? l?? nh???ng t??nh n??ng tuy???t v???i m?? kh??ng ph???i ????n v??? n??o c??ng trang b??? ???????c cho camera h??nh tr??nh. ????? tung ra s???n ph???m ???????c c??ng nh???n l?? s???n ph???m d???n d???u xu th???, Webvision ch??ng t??i lu??n n??? l???c nghi??n c???u, n???m b???t th???i c?? v?? th??? hi???u kh??ch h??ng, m???c ????ch cu???i c??ng l?? ph???c v??? ???????c t???i ??a nh???ng nhu c???u kh???t khe c???a kh??ch h??ng.\n\nC??ng ch??? ?????i s??? ra ?????i v?? t???n h?????ng nh???ng tr???i nghi???m b???t ng??? m?? ?????a con ????? c???a Webvision- ??camera h??nh tr??nh Webvision N93X n??y mang l???i c??c b???n nh??! Tuy???t ?????i s??? kh??ng l??m c??c b???n th???t v???ng ????u!","WEBVISION N93X ??? M??n h??nh Android ??a n??ng th??ng minh","","publish","open","closed","","webvision-n93x-man-hinh-android-da-nang-thong-minh","","","2019-03-09 23:40:38","2019-03-09 16:40:38","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=220","0","product","","0"),
("221","1","2019-03-09 23:40:04","2019-03-09 16:40:04","","N93X-1-600x600","","inherit","open","closed","","n93x-1-600x600","","","2019-03-09 23:40:04","2019-03-09 16:40:04","","220","https://tppone.com/demo/camera/wp-content/uploads/2019/03/N93X-1-600x600.png","0","attachment","image/png","0"),
("222","1","2019-03-09 23:40:32","2019-03-09 16:40:32","","thiet-bi-dan-duong","","inherit","open","closed","","thiet-bi-dan-duong-2","","","2019-03-09 23:40:32","2019-03-09 16:40:32","","220","https://tppone.com/demo/camera/wp-content/uploads/2019/03/thiet-bi-dan-duong.jpg","0","attachment","image/jpeg","0"),
("223","1","2019-03-09 23:41:31","2019-03-09 16:41:31","Camera h??nh tr??nh v???n ???? kh??ng c??n xa l??? v???i t??i x??? Vi???t tuy nhi??n v???i thi???t k??? m???i m??? c???a nh???ng d??ng xe ??ang xu???t hi???n tr??n th??? tr?????ng ????i h???i m???t lo???i camera kh??ng nh???ng ?????m b???o v??? m???t t??nh n??ng m?? c??n ????p ???ng ???????c y??u c???u v??? v??? tr?? l???p ?????t. V?? v???y Webvision ???? cho ra ?????i d??ng s???n ph???m camera h??nh tr??nh Webvision A69 v???i v??? tr?? l???p ?????t linh ho???t nh??ng v???n ?????m b???o ??em l???i cho kh??ch h??ng nh???ng t??nh n??ng v?????t tr???i.\n<figure id=\"attachment_9642\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9642 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/1-2-768x300.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/1-2-1400x547.jpg 1400w\" alt=\"\" width=\"800\" height=\"312\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/1-2-800x312.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/1-2-768x300.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/1-2-1400x547.jpg 1400w\" /><figcaption class=\"wp-caption-text\"><em>Cu???n h??t ngay t??? ??nh nh??n ?????u ti??n v???i thi???t k??? sang tr???ng, tr??? trung th??ch h???p v???i m???i nhu c???u c???a ng?????i d??ng c??ng nh?? thi???t k??? c???a t???ng lo???i xe ??? nhi???u ph??n kh??c kh??c nhau.</em></figcaption></figure>\n<figure id=\"attachment_9685\" class=\"wp-caption alignnone\"><img class=\"wp-image-9685 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1-768x384.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1.jpg 1400w\" alt=\"\" width=\"800\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/07/2-1-1-800x400.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1-768x384.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/2-1-1.jpg 1400w\" /><figcaption class=\"wp-caption-text\"><em>Th??ng th?????ng camera cho ?? t?? th?????ng ???????c l???p ?????t hit l??n m???t k??nh ch???n gi?? ho???c ?????t tr??n m???t taplo c???a xe. ?????i v???i nh???ng d??ng xe c???a Mazda hay Mercedes m???t taplo kh??ng ???????c b???ng ph???ng r???t kh?? ????? ?????t camera l??n tr??n trong th???i gian d??i. V?? v???y Webvision ???? cho ra ?????i d??ng camera h??nh tr??nh v???i v??? tr?? l???p ?????t linh ho???t gi??p t??i x??? d??? d??ng thay ?????i v??? tr?? thi???t b??? theo nhu c???u ho???c s??? th??ch.</em></figcaption></figure>\n<strong>T??nh n??ng n???i b???t</strong>\n\n<hr />\n\n<strong>Ghi h??nh tr?????c sau c??ng l??c</strong>\n\nWebvision A69 thi???t k??? hai m???t ghi h??nh tr?????c v?? sau xe gi??p t??i x??? c?? t???m nh??n bao qu??t nh???t xung quanh chi???c xe c???a m??nh. Ghi h??nh ??? ch??? ????? Full HD 1080P v???i g??c quay 140 ????? r???ng h??n so v???i phi??n b???n tr?????c, t???t c??? c??c h??nh ???nh ?????u ???????c camera thu l???i m???t c??ch r?? n??t, ch??n th???c ngay c??? trong ??i???u ki???n kh???c nghi???t nh?? th???i ti???t x???u, thi???u ho???c l???p s??ng.\n\n<img class=\"alignnone size-medium wp-image-9686 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/e4-768x318.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/e4.jpg 1369w\" alt=\"\" width=\"800\" height=\"331\" data-src=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/07/e4-800x331.jpg 800w, https://webvision.vn/wp-content/uploads/2018/07/e4-768x318.jpg 768w, https://webvision.vn/wp-content/uploads/2018/07/e4.jpg 1369w\" />\n\n<strong>H??nh ???nh ch??n th???c</strong>\n\nN??ng c???p m???t sau v???i ch??? ????? ghi h??nh Full HD 720p, chip x??? l?? MT6735 cao c???p nh???t th??? tr?????ng camera h??nh tr??nh ?? t??. X??? l?? h??nh ???nh c???c n??t c??? tr?????c v?? sau, c??? ng??y l???n ????m.","WEBVISION A69 ??? M??n h??nh Android ??a n??ng th??ng minh","","publish","open","closed","","webvision-a69-man-hinh-android-da-nang-thong-minh","","","2019-03-09 23:41:31","2019-03-09 16:41:31","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=223","0","product","","0"),
("224","1","2019-03-09 23:41:26","2019-03-09 16:41:26","","thiet-bi-dan-duong-2","","inherit","open","closed","","thiet-bi-dan-duong-2-2","","","2019-03-09 23:41:26","2019-03-09 16:41:26","","223","https://tppone.com/demo/camera/wp-content/uploads/2019/03/thiet-bi-dan-duong-2.jpg","0","attachment","image/jpeg","0"),
("225","1","2019-03-09 23:42:06","2019-03-09 16:42:06","Ti???p n???i xu th??? camera h??nh tr??nh<b>??</b>th??ng minh, ??a ch???c n??ng,??<a href=\"https://webvision.vn/\">Webvision.vn</a>?????? nghi??n c???u v?? cho ra ?????i s???n ph???m camera h??nh tr??nh th??ng minh h??n, ti???n ??ch h??n ????p ???ng nhu c???u ng??y c??ng cao c???a ng?????i s??? d???ng, Webvision ???? cho ra m???t model Webvision N93 Plus<b>.</b>\n\n<img class=\"wp-image-9528 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png\" sizes=\"(max-width: 576px) 100vw, 576px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png 660w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-768x465.png 768w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-1320x800.png 1320w\" alt=\"\" width=\"576\" height=\"349\" data-src=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-660x400.png 660w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-768x465.png 768w, https://webvision.vn/wp-content/uploads/2018/03/Untitled-1-1320x800.png 1320w\" />\n\nV???i vi???c t??ch h???p 12 t??nh n??ng th??ng minh ch??? trong m???t thi???t b??? camera g???n nh???, Webvision N93 Plus ???? thay th??? ???????c r???t nhi???u ph??? ki???n kh??c tr??n xe nh??: camera quay h??nh tr??nh tr?????c sau, camera l??i, b??? ph??t wifi, thi???t b??? d???n ch??? ???????ng b???,???\n<h1><img class=\"wp-image-9529 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/03/Huye%CC%82%CC%80n-1-699x400.jpg\" sizes=\"(max-width: 718px) 100vw, 718px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-699x400.jpg 699w, https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-768x439.jpg 768w, https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-1400x800.jpg 1400w\" alt=\"\" width=\"718\" height=\"411\" data-src=\"https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-699x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-699x400.jpg 699w, https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-768x439.jpg 768w, https://webvision.vn/wp-content/uploads/2018/03/Huye????n-1-1400x800.jpg 1400w\" /></h1>\n??????????????????????????????????????????????????????????????????????????????\n\n<b>L???i ??ch chi ph?? c???a Webvision N93 Plus</b>\n\nHi???n ta??? b???n ph???i b??? ra m???t kho???n ti???n kh??ng h??? nh??? ??????? trang b??? cho x??? y??u c???a m??nh m???t s??? ph??? ki???n nh??: Camera l??i, m??n h??nh DVD, thi???t b??? ?????nh v???, b???n ????? ch??? ???????ng??? Ch??ng ta c??ng l??m m???t b??i to??n chi ph?? cho nh???ng ph??? ki???n c???n thi???t tr??n xe nh?? sau:\n\n<img class=\"size-full wp-image-9563 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/03/%E1%BA%A2nh-gi%C3%A1.jpg\" alt=\"\" width=\"661\" height=\"368\" data-src=\"https://webvision.vn/wp-content/uploads/2018/03/???nh-gi??.jpg\" />\n\nT???ng chi ph?? b???n ph???i chi tr??? cho t???t c??? nh???ng thi???t b??? tr??n v???i gi?? th???p nh???t tr??n th??? tr?????ng hi???n nay l?? kho???ng 10.950.000 ?? . ????y l?? m???t chi ph?? kh??ng h??? nh???, ch??a k??? ?????n vi???c ?????t nhi???u thi???t b??? tr??n c??ng 1 chi???c xe s??? khi???n kh??ng gian l??i xe kh??ng nh???ng kh??ng tho???i m??i m?? c??n m???t t??nh th???m m???.\n\nV???y b???n ngh?? sao n???u camera h??nh tr??nh Webvision N93 Plus ch??? v???i m???t n???a chi ph?? tr??n nh??ng c?? th??? thay th??? ???????c t???t c??? nh???ng ph??? ki???n ????. ???????c t??ch h???p l??n t???i 12 t??nh n??ng th??ng minh, c??ng xem Webvision N93 Plus mang ?????n cho b???n l???i ??ch th??? n??o???C??ng t??m hi???u m???t c??ch tr???c quan nh???t nh???ng t??nh n??ng v?????t tr???i c???a camera h??nh tr??nh Webvision N93 Plus qua clip d?????i ????y:\n\n<i>H?????ng d???n s??? d???ng v?? c??c t??nh n??ng Webvision N93 Plus:??</i><b><i>https://webvision.vn/webvision-n93-plus/</i></b>\n\nB???n c?? bi???t nh???ng t??nh n??ng ???????c y??u th??ch nh???t tr??n Webvision N93 Plus? H??m nay, Webvision s??? review cho c??c b??c v??? nh???ng t??nh n??ng ???N???I B???T NH???T??? c???a model Webvision N93 Plus nh??.\n\n<b>1. C???nh b??o t???c ?????</b>\n\nV???i l???i ch???y qu?? t???c ????? c???a ?? t??, b???n c?? th??? b??? x??? ph???t t??? 2.000.000 ?????n 6.000.000 ?? (Theo??Ngh??? ?????nh 46/2016/N??-CP??quy ?????nh v??? x??? ph???t h??nh ch??nh trong l??nh v???c giao th??ng ???????ng b??? v?? ???????ng s???t.)\n\nTuy nhi??n, b???n s??? kh??ng c??n lo l???ng khi Webvision N93 Plus ???????c t??ch h???p h??? th???ng c???nh b??o t???c ????? ti??n ti???n nh???t. Tr??n m???i tuy???n ???????ng, thi???t b??? s??? th??ng b??o cho b???n v??? t???c ????? gi???i h???n cho ph??p tr??n tuy???n ???????ng ????. Th??ng b??o s??? ???????c chuy???n h??a th??nh gi???ng n??i ti???ng Vi???t gi??p t??i x??? d??? d??ng ti???p nh???n th??ng tin. Ch???c n??ng n??y v???n ch??? c?? ??? m???t s??? chi???c xe cao c???p c???a Huyndai v?? nh???ng chi???c xe h???ng sang th?? nay ???? ???????c t??ch h???p ngay trong thi???t b??? camera. ??????? hi???u s??u h??n v??? nguy??n l?? v?? c??ch v???n h??nh t??nh n??ng c???nh b??o t???c ????? m???i c??c b??c tham kh???o video d?????i ????y:\n\n<b>2. T??nh n??ng thay th??? ?????u DVD</b>\n\nM??n h??nh DVD th??ng th?????ng ch??? c?? ch???c n??ng hi???n th??? h??nh ???nh??nh??ng kh??ng ghi l???i ???????c Video. V???i Webvision N93 Plus, kh??ng ch??? hi???n th??? ???????c h??nh ???nh t??? hai m???t camera qua m??n h??nh c???m ???ng r???ng 6,68 inch m?? c??n thu, ph??t wifi qua sim 4G cho b???n tr???i nghi???m l?????t web, xem phim, nghe nh???c tr???c tuy???n thay th??? ho??n to??n 1 chi???c ?????u DVD ?????t ti???n, ti???t ki???m 1 kho???n kh?? l???n cho c??c t??i x??? Vi???t.\n\n<b>3. C???nh b??o l???n l??n, va ch???m s???m</b>\n\nVi ph???m c??c l???i v??? l??n ???????ng s??? b?????ph???t ti???n t??? 800.000 ?????ng ?????n 1.200.000 ?????ng. Tuy nhi??n, n???i lo v??? vi???c vi ph???m l??n ???????ng s??? ???????c gi???i quy???t nh??? Webvision N93 Plus.\n\nWebvision N93 Plus s??? l??n ti???ng nh???c nh??? khi b???n di chuy???n sai l??n ???????ng cho ph??p, ch??? khi b???n di chuy???n v??? ????ng l??n ???????ng quy ?????nh c???nh b??o m???i ???????c d???ng l???i. Ngo??i ra, khi chi???c xe c???a b???n ??i v??o v??ng kho???ng c??ch kh??ng an to??n v???i xe ph??a tr?????c, thi???t b??? c??ng nh???c nh??? v??? kh??? n??ng va ch???m v???i xe ph??a tr?????c ????? ?????m b???o an to??n cho b???n v?? ng?????i th??n.\n\n<b>4. ?????nh v??? v?? theo d??i xe t??? xa b???ng video tr???c ti???p tr??n ??i???n tho???i</b>\n\nD?? b???n ??ang ??? nh?? hay b???t c??? n??i ????u ch??? c???n m??? ???ng d???ng Car Assist ???????c c??i ?????t tr??n ??i???n tho???i l?? b???n c?? th??? bi???t ???????c chi???c xe c???a b???n ??ang ??? ????u, tr??n cung ???????ng n??o, ??ang di chuy???n ra sao. Th???m ch?? b???n c?? th??? xem ???????c ho???t ?????ng ph??a tr?????c v?? sau c???a xe ???????c ghi l???i qua camera h??nh tr??nh v?? g???i h??nh ???nh v??? di ?????ng c???a b???n.\n\n<strong>5.??</strong><b>Ph??t Wifi thay th??? ho??n to??n b??? ph??t</b>\n\nWebvision N93 Plus c?? ch???c n??ng ph??t wifi gi??p b???n tho???i m??i tr???i nghi???m nh???ng ???ng d???ng online ?????y h???p d???n. Nh???ng ng?????i th??n, b???n b?? v?? kh??ch h??ng tr??n xe c???a b???n c?? th??? tho???i m??i s??? d???ng wifi t???c ????? cao.","WEBVISION N93 PLUS ??? Camera h??nh tr??nh th??ng minh truy???n h??nh tr???c ti???p","","publish","open","closed","","webvision-n93-plus-camera-hanh-trinh-thong-minh-truyen-hinh-truc-tiep","","","2019-03-09 23:42:35","2019-03-09 16:42:35","","0","https://tppone.com/demo/camera/?post_type=product&#038;p=225","0","product","","0"),
("226","1","2019-03-09 23:42:02","2019-03-09 16:42:02","","camera-hanh-trinh-n93","","inherit","open","closed","","camera-hanh-trinh-n93","","","2019-03-09 23:42:02","2019-03-09 16:42:02","","225","https://tppone.com/demo/camera/wp-content/uploads/2019/03/camera-hanh-trinh-n93.jpg","0","attachment","image/jpeg","0"),
("282","1","2019-03-10 00:29:47","2019-03-09 17:29:47","","banner-01","","inherit","open","closed","","banner-01","","","2019-03-10 00:29:47","2019-03-09 17:29:47","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/banner-01.jpg","0","attachment","image/jpeg","0"),
("283","1","2019-03-10 00:29:49","2019-03-09 17:29:49","","banner-02","","inherit","open","closed","","banner-02","","","2019-03-10 00:29:49","2019-03-09 17:29:49","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/banner-02.jpg","0","attachment","image/jpeg","0"),
("284","1","2019-03-10 00:29:49","2019-03-09 17:29:49","","banner-03","","inherit","open","closed","","banner-03","","","2019-03-10 00:29:49","2019-03-09 17:29:49","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/banner-03.jpg","0","attachment","image/jpeg","0"),
("291","1","2019-03-10 00:35:36","2019-03-09 17:35:36","","bg2","","inherit","open","closed","","bg2","","","2019-03-10 00:35:36","2019-03-09 17:35:36","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/bg2.jpg","0","attachment","image/jpeg","0"),
("294","1","2019-03-10 00:38:03","2019-03-09 17:38:03","<b>Theo B??? Sinh h???c Ph??p, c?? 42.000 ng?????i ch???t s???m h??ng n??m v?? h??t ph???i h???t m???n v?? nh???ng ng?????i c?? ngh??? l??i xe nh?? taxi, ng?????i v???n chuy???n, t??i x??? xe bu??t, b??? ??e d???a m???c b???nh v?? ch???t s???m cao h??n g???p 100 l???n.</b>\n\nT???t c??? ch??ng ta ?????u ngh?? r???ng ng???i trong xe ?? t?? l?? n??i tr?? ng??? l?? t?????ng ????? c??ch ly v???i kh??i b???i, ?? nhi???m kh??ng kh?? t??? b??n ngo??i. ??a ph???n ch??ng ta ?????u c???m th???y an to??n v?? ???????c b???o v??? sau c???nh c???a b??? ????ng k??n nh??ng b???n ???? ho??n to??n sai l???m???\n\nB???n c?? bi???t, m???c ????? ?? nhi???m kh??ng kh?? trong ?? t?? l???n t???i m???c n??o kh??ng? Gi??o s?? Stephen Holgate, chuy??n gia v??? b???nh suy???n t???i ?????i h???c Southampton c???nh b??o ?? nhi???m kh??ng kh?? trong ??t?? cao g???p 9-12 l???n so v???i b??n ngo??i.??K???t qu??? m???t nghi??n c???u t???i Ph??p do ASEF (H???i S???c kh???e M??i tr?????ng Ph??p) ???????c th???c hi???n trong ba th??nh ph??? l???n (Paris, Marseille v?? Grenoble), cho th???y r???ng kh??ng gian trong xe l?? m???t ??? ?????y ?????c t??? nguy hi???m ??e d???a s???c kh???e. ??ng Patrice Halimi, t???ng th?? k?? ASEF, b??c s??? ph???u thu???t khoa nhi, v?? l?? ch??? nhi???m c???a cu???c nghi??n c???u n??y cho bi???t: ???Khi n??o ??i xe ?? t??, khi ???? b???n h??t m???t li???u thu???c ?????c h???i???. ???? ch??nh l?? nguy??n do khi??n nguy c?? m???c ung th?? ph???i c???a c??c c??nh t??i x??? ng??y m???t t??ng cao.\n\n<b>C??C NGU???N G??Y ?? NHI???M TRONG XE</b>\n\n<b><i>Th??? nh???t l?? t??? ngu???n kh??ng kh?? ?? nhi???m b??n ngo??i:</i></b>\n\nCh??ng ta ?????u bi???t ?? nhi???m m??i tr?????ng ??? Vi???t Nam hi???n nay ??ang ??? m???c b??o ?????ng v?? nh???t l?? gi??? cao ??i???m, c??c ph????ng ti??n l??u th??ng d??y ?????c tr??n ???????ng th?? m???c ????? ?? nhi???m ngo??i kh??ng kh?? c???c k?? nghi??m tr???ng. Nh???ng kh??ng kh?? ?? nhi???m n??y ???????c h??t v??o trong ??t?? theo h??? th???ng ??i???u h??a, theo l???i th??ng gi?? v?? c???a v??o.\n<figure id=\"attachment_9994\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9994 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/0-72a63-710x400.jpg\" alt=\"\" width=\"553\" height=\"312\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/0-72a63-710x400.jpg\" /><figcaption class=\"wp-caption-text\"><strong><em>T???c ???????ng l?? th???i ??i???m kh??ng kh?? ?? nhi???m c???c k?? nghi??m tr???ng</em></strong></figcaption></figure>\n&nbsp;\n\n<b><i>Th??? hai l?? t??? n???i th???t c???a xe:</i></b>\n\nTheo Ph??ng th?? nghi???m V??? sinh c???a th??nh ph??? Paris, ?? nhi???m ?????n t??? c??c ????? nh???a, tay v???n, v??c-ni, da gi???, s??n, keo c???a xe ??-t??. ?????c bi???t khi m???i ???????c s???n xu???t, xe ??-t?? ph??t ra h??a ch???t nhi???u h??n. Ph??ng th?? nhi???m ???? ??o r???ng trong 41% xe h??i, n???ng ????? VOC (ch???t h???u c?? bay h??i) ???? v?????t qua ng?????ng an to??n v?? trong ???? 23% xe c?? t??? l??? pho-man-????-hit ???? qua m???c ????? cho ph??p.\n<figure id=\"attachment_9995\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9995 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg\" sizes=\"(max-width: 534px) 100vw, 534px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg 534w, https://webvision.vn/wp-content/uploads/2018/11/1-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/11/1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/11/1.jpg 1130w\" alt=\"\" width=\"534\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/1-534x400.jpg 534w, https://webvision.vn/wp-content/uploads/2018/11/1-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/11/1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/11/1.jpg 1130w\" /><figcaption class=\"wp-caption-text\"><em><strong>N???i th???t t??? xe ?? t?? l?? m???t ngu???n ?? nhi???m ch??nh</strong></em></figcaption></figure>\n&nbsp;\n\n<b><i>Th??? ba l?? t??? ch??nh ng?????i trong xe:</i></b>\n\nKhi h??t thu???c l??, kh??i thu???c l?? kh??ng ch??? ???nh h?????ng tr???c ti???p ngay ?????n ng?????i trong xe m?? c??n b??m v??o ????? nh???a, da, v???i v?? n?? ti???p t???c g??y ?? nhi???m nhi???u tu???n th???m ch?? nhi???u th??ng sau ????. C??c lo???i h??a ch???t ch??ng ta ????a v??o xe nh?? n?????c hoa, c??c ch???t v??? sinh n???i th???t ?? t??, ?????ng v???t v??o xe ????? l???i l??ng v????ng v??i tr??n xe, c??c th???c ??n r??i tr??n xe t???o ra c??c vi khu???n, n???m m???c c??ng l?? m???t trong nh???ng nguy??n nh??n g??y ra ?? nhi???m trong xe.\n<figure id=\"attachment_9996\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9996 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22.jpg 650w\" alt=\"\" width=\"600\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/hutthuoclatrenxeoto-4d22.jpg 650w\" /><figcaption class=\"wp-caption-text\"><strong><em>H??t thu???c tr??n xe ?? t?? l?? t??c nh??n nghi??m tr???ng d???n ?????n ?? nhi???m</em></strong></figcaption></figure>\n&nbsp;\n\n<b><i>Th??? 4 l?? t??? c??c thi???t b??? ??i???n t??? ph??t s??ng:</i></b>\n\n?? nhi???m c??ng c?? th??? ?????n t??? c??c thi???t b??? ??i???n t??? ph??t s??ng: GPS, wifi, ??i???n th???ai di ?????ng. Hi???n t?????ng h???p Faraday c???n s??ng ra kh???i kh??ng gian c???a xe ???nh h?????ng r???t m???nh ?????n ng?????i trong xe. Th??m n???a l?? ??i???n t??? tr?????ng. Khi xe ch???y ??? t???c ????? cao, b??nh xe ph??t t??? tr?????ng r???t cao. Ch??ng ta th?????ng bi???t ?????n s??ng ??i???n t??? c?? th??? g??y ra m???t s??? ch???ng b???nh nh?? ??au ?????u, ???nh h?????ng ?????n n??o b???, ?????n nh???p tim, ?????n kh??? n??ng sinh s???n. Tuy nhi??n c??n m???t ??i???u m?? ??t ng?????i bi???t ?????n,??vi???c ti???p x??c v???i b???c x??? ??i???n t??? l??m t??ng nguy c?? ph??t tri???n ung th??, l??m suy y???u c??c c?? quan trong ???? c?? ph???i. C???ng th??m vi???c h???ng ng??y ph???i h??t r???t nhi???u ch???t ?? nhi???m kh??c th?? d???n ?????n vi???c m???c ung th?? ph???i l?? m???t ??i???u kh??ng th??? tr??nh kh???i.\n<figure id=\"attachment_9997\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9997 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi.jpg 636w\" alt=\"\" width=\"600\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi-600x400.jpg 600w, https://webvision.vn/wp-content/uploads/2018/11/wifi-cho-xe-hoi.jpg 636w\" /><figcaption class=\"wp-caption-text\"><strong><em>Thi???t b??? ph??t WIFI tr??n xe g??y ra ?? nhi???m</em></strong></figcaption></figure>\n&nbsp;\n\n<b>Kh??ng gian ?? t?? k??n nhi???u n???i th???t v?? ng??c ng??ch ch??nh l?? m??i tr?????ng l?? t?????ng ????? c??c t??c nh??n g??y b???nh t??ch t??? v???i n???ng ????? ng??y c??ng d??y ?????c. V?? m???t trong s??? b???nh hay g???p nh???t ??? t??i x??? ???? ch??nh l?? b???nh v??? h?? h???p nh?? ho, ??au h???ng v?? n???ng h??n l?? vi??m ph???i, ung th?? ph???i. ?????i v???i tr??? em, th?? ???nh h?????ng c??n nghi??m tr???ng h??n, th???m ch?? g??y t???n th????ng ph???i v??nh vi???n. ??</b>\n\n<b>V?? ????U L?? GI???I PH??P?</b>\n\n????? b???o v??? s???c kh???e c???a b???n th??n v?? gia ????nh tr?????c nh???ng t??c h???i nghi??m tr???ng do kh?? ?????c t??ch t??? trong xe g??y n??n, ch??ng ta c???n m???t thi???t b??? c?? th??? l???c s???ch kh??ng kh??, kh??? m??i, ph??n h???y c??c ch???t h??a h???c, vi khu???n , n???m m???c g??y h???i.\n\nTr??n th??? tr?????ng hi???n nay ??ang c?? 3 c??ng ngh??? ti??n ti???n ???? nghi??n c???u v?? ???ng d???ng nhi???u nh???t c?? th??? ????p ???ng ???????c nh???ng y??u c???u tr??n:\n\n<b><i>C??ng ngh??? l???c kh??ng kh?? b???ng Ion ??m</i></b>: ????y l?? m???t trong nh???ng c??ng ngh??? hi???n ?????i nh???t hi???n nay. C??c ion ??m s??? ???????c ph??t ra ngo??i kh??ng kh?? v?? c?? t??c d???ng l??m trung h??a c??c ion d????ng t???n t???i d?????i d???ng c??c h???t b???i si??u nh??? c?? h???i trong kh??ng kh?? t??? ???? lo???i b??? v?? l??m s???ch kh??ng kh??, c???i thi???n ch???c n??ng h?? h???p, tu???n ho??n, trao ?????i ch???t v?? t??ng s???c ????? kh??ng cho nh???ng th??nh vi??n trong xe.\n\n<b><i>C??ng ngh??? l???c HEPA</i></b>????? c??ng ngh??? c?? kh??? n??ng l???c hi???u qu??? ?????n 99,97% c??c h???t ph??n t??? si??u vi l??n t???i PM2.5 bao g???m c??c h???t b???i trong ph???n hoa, kh??i thu???c, vi khu???n trong kh??ng kh??.\n\n<b><i>C??ng ngh??? l??m s???ch b???ng cacbon z??-??-l??t</i></b>. Kh??? n??ng h???p th??? c???a c??c cacbon z??-??-l??t g???p 100 l???n so v???i c??c lo???i cacbon th??ng th?????ng. N?? c?? th??? h???p th??? v?? l??m ph??n h???y ?????n 99,7% c??c d???ng pho-man-????-h??t, ben-zen, a-m??-ni-ac c?? c??c kh?? c?? h???i kh??c v?? c?? th??? nhanh ch??ng lo???i b??? m??i thu???c l??, m??i r?????u, c??c lo???i m??i t??? s???n ph???m n???i th???t trong xe, c??c ch???t h??a h???c g??y h???i ?????n s???c kh???e con ng?????i.\n\n????? ????p ???ng ???????c nhu c???u l??m s???ch kh??ng kh??, ??p d???ng c??c c??ng ngh??? hi???n ?????i ????? c?? th??? l???c m???t c??ch hi???u qu??? nh???t, m??y l???c kh??ng kh?? th??ng minh th??? h??? m???i WEBVISION A8 ???? ra ?????i.\n<figure id=\"attachment_9998\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9998 size-medium lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png 800w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-768x384.png 768w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-1400x700.png 1400w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n.png 1500w\" alt=\"\" width=\"800\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-800x400.png 800w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-768x384.png 768w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n-1400x700.png 1400w, https://webvision.vn/wp-content/uploads/2018/11/45383199_1918199824963954_4528569356048662528_n.png 1500w\" /><figcaption class=\"wp-caption-text\"><strong><em>Webvision A8 k???t h???p c??? 3 c??ng ngh??? l???c kh??ng kh?? hi???n ?????i</em></strong></figcaption></figure>\n&nbsp;\n\nWebvision A8 l?? s??? k???t h???p ho??n h???o c???a c??? ba c??ng ngh??? l???c kh??ng kh?? trong m???t thi???t b??? nh??? g???n, hi???n ?????i m?? c??n v?? c??ng sang tr???ng.","Qu?? sai l???m khi coi ?? t?? l?? n??i tr??nh nh???ng ?? nhi???m b??n ngo??i","","publish","open","open","","qua-sai-lam-khi-coi-o-to-la-noi-tranh-nhung-o-nhiem-ben-ngoai","","","2019-03-10 00:38:03","2019-03-09 17:38:03","","0","https://tppone.com/demo/camera/?p=294","0","post","","0"),
("295","1","2019-03-10 00:37:35","2019-03-09 17:37:35","","1-534x400","","inherit","open","closed","","1-534x400","","","2019-03-10 00:37:35","2019-03-09 17:37:35","","294","https://tppone.com/demo/camera/wp-content/uploads/2019/03/1-534x400.jpg","0","attachment","image/jpeg","0"),
("296","1","2019-03-10 00:37:58","2019-03-09 17:37:58","","post1","","inherit","open","closed","","post1","","","2019-03-10 00:37:58","2019-03-09 17:37:58","","294","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post1.jpg","0","attachment","image/jpeg","0"),
("298","1","2019-03-10 00:38:53","2019-03-09 17:38:53","??? Vi???t Nam th??? tr?????ng ?? t?? gi?? r??? v???n l?? ph??n kh??c h???p d???n v???i ng?????i d??ng. Tuy nhi??n, nh???ng m???u xe t???m trung v???i gi?? d?????i 500 tri???u ?????ng nh?? Honda City th?????ng b??? c???t b???t m???t s??? ph??? ki???n ho???c trang b??? ch???t li???u kh??ng mang l???i hi???u qu??? khi d??ng nh???m gi???m gi?? th??nh. Do ????, sau khi mua m???t chi???c ??t?? m???i, nhi???u b??c c?? xu h?????ng t??m ?????n c??c d???ch v??? cung c???p ???????? ch??i??? ????? s???m th??m m???t v??i ph??? ki???n c???n thi???t cho ???x??? c??ng??? c???a m??nh. ?????c bi???t, m???t chi???c camera h??nh tr??nh ?? t?? ch??nh h??ng s??? l?? m???t l???a ch???n tuy???t v???i cho b???n.\n\nKh??ng ph???i m??n ????? n??o c??ng h???u ??ch th???c s??? v???i chi???c xe c???a b???n. C?? nh???ng ph??? ki???n ch??? ????? trang tr??, trong khi c?? nh???ng th??? m?? t??i x??? n??n s???m cho chi???c xe c???a m??nh ????? ??em ?????n s??? ti???n d???ng v?? ?????m b???o an to??n khi tham gia giao th??ng. D?????i ????y l?? m???t s??? m??n ????? c?? b???n, r???t h???u ??ch cho ???x??? c??ng??? c???a b???n.\n\n1. Camera h??nh tr??nh ??a t??nh n??ng\n<table border=\"0\">\n<tbody>\n<tr>\n<td><img class=\"alignnone size-medium wp-image-9827 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-768x576.jpeg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-1067x800.jpeg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-533x400.jpeg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-768x576.jpeg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_2158-1067x800.jpeg 1067w\" /></td>\n<td><img class=\"alignnone size-medium wp-image-9828 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50462209-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50462209-1067x800.jpg 1067w\" /></td>\n<td><img class=\"alignnone size-medium wp-image-9829 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/image_50382337-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/image_50382337-1067x800.jpg 1067w\" /></td>\n</tr>\n</tbody>\n</table>\nCamera h??nh tr??nh c?? t??ch h???p c???m bi???n l??i gi??p cho vi???c quan s??t t???t h??n v?? ti???t ki???m th???i gian, kh??ng b??? va ch???m v??o xe kh??c m???t c??ch d??? d??ng. Ngo??i t??nh n??ng ??u Vi???t c??n gi??p b???n l??u l???i nh???ng kho???nh kh???c ?????p khi ??i tr??n ???????ng v?? nh???ng tr???i nghi???m th?? v???.\n\n<img class=\"size-medium wp-image-9826 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/1-711x400-711x400.jpg\" alt=\"\" width=\"711\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/1-711x400-711x400.jpg\" />\n\nCamera h??nh tr??nh c??ng ngh??? 4.0 ???? l?? m???t thi???t b??? h???u ??ch cho t??i x??? trong m???i chuy???n ??i. Ch??? v???i m???t thi???t b??? nh??? g???n n??y nh??ng trong qu?? tr??nh s??? d???ng b???n s??? khai ph?? ra c??? m???t th??? gi???i t??nh n??ng b??n trong. Kh??ng ch??? ghi h??nh ????n thu???n, camera c??n ???????c t??ch h???p l??n t???i 12 t??nh n??ng. N???i b???t v?? c???n thi???t nh???t cho t??i x??? c?? l??? l?? ???ng d???ng b???n ????? Navitel b???n quy???n gi??p t???i ??u qu???ng ???????ng ??i nhanh nh???t, ti???n d???ng v?? ch??nh x??c nh???t.\n\n????? hi???u th??m v??? nh???ng t??nh n??ng c???a camera h??nh tr??nh ?? t?? th??? h??? m???i c??c b??c c?? th??? xem t???i video d?????i nh??:\n\n<iframe src=\"https://www.youtube.com/embed/dcNAS-wwQns\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe>\n\n2. B???c tr???i s??n v?? l??t s??n\nNgo??i thi???t k??? nguy??n b???n c???a nh?? s???n xu???t ch??ng ta n??n b???c th??m m??t l???p tr???i s??n ????? tr??nh b???i b???n, n?????c, th???c ??n khi b??? r??i xu???ng s??n xe. ?????c bi???t l?? tr??nh b??? n?????c ti???p x??c tr???c ti???p xu???ng s??n d??? g??y ra ???m m???c, m??i h??i kh?? ch???u v?? h???n ch??? ???????c t??nh tr???ng m???c n??t s??n xe.\n\nT???m tr???i s??n gi??p ch??ng ta c??ch ly ???????c v???t b???n t??? gi??y, d??p khi ti???p x??c v???i s??n xe v?? ?????c bi???t gi??p ch??? nh??n v??? sinh m???t c??ch d??? gi??ng, nhanh ch??ng, trong b???t k??? th???i ti???t c??ng nh?? ho??n c???nh n??o. Tuy nhi??n, ch??ng ta n??n ch???n tr???i s??n c?? ch???t li???u b???ng cao su, nh???a, nh???ng ch???t li???u kh??ng th???m n?????c, kh??ng b??m b???n th?? s??? d??? gi??ng v??? sinh v?? kh??ng ????? l???i m??i h??i, ???m m???c trong xe.\n\n3. D??n phim c??ch nhi???t l??n k??nh\n\nD??n phim c??ch nhi???t s??? ng??n ???????c ??nh n???ng chi???u v??o trong khoang xe, gi???m ???????c t??c h???i c???a tia c???c t??m g??y ra. M???t ??i???u ?????c bi???t l?? h???n ch??? vi???c t?? m?? c??ng nh?? m???i ??nh nh??n t??? b??n ngo??i v??o trong xe, b???o v??? quy???n ri??ng t?? c???a b???n.\n\n4. C???m bi???n ??p su???t l???p\n\n????y l?? m???t chi ti???t r???t ??t ng?????i l??i xe quan t??m ?????n, nh??ng n?? ??em ?????n nhi???u l???i ??ch thi???t th???c, nh???t l?? trong nh???ng h??nh tr??nh di chuy???n d??i v?? th???i ti???t m??a h?? c?? nhi???t r???t cao . T??i x??? d??? d??ng ph??t hi???n ra chi???c l???p n??o gi???m ??p su???t b???t th?????ng (c?? th??? do d??nh ??inh ho???c l??u ng??y l???p xu???ng h??i..). Trong tr?????ng h???p n??y n???u kh??ng ph??t hi???n k???p th???i, r???t c?? th??? x???y ra tai n???n ????ng ti???c, ?????c bi???t khi xe ??ang di chuy???n v???i t???c ????? cao.\n\n5. B???c gh??? da\nV???i th???i ti???t kh???c nhi???t nh?? ??? Vi???t Nam, b??? gh??? n??? c?? th??? khi???n nh???ng ng?????i ng???i trong xe to??t m??? h??i khi di chuy???n v??o m??a h??. Ch??? y???u l?? c??c m???u ??t?? gi?? r??? th?????ng ???????c nh?? s???n xu???t trang b??? b??? gh??? n??? ????? ti???t ki???m chi ph??.\n\nGh??? da s??? ph??t huy t??c d???ng r???t t???t nh???t trong nh???ng ng??y tr???i n??ng v?? khi kh??ng may b??? ????? ch???t l???ng ra gh???, ho??n to??n c?? th??? d??? d??ng l??m s???ch r???t t???t. V???i b??? gh??? n??? h???n l?? m???t ??c m???ng b???i c?? th??? s??? kh??ng l??m s???ch ???????c v?? ????? l???i m??i h??i, m???c. N?? s??? tr?????ng t???n theo th???i gian v?? r???t kh?? v??? sinh.\n\nHi v???ng b??i vi???t n??y h???u ??ch v???i c??c b??c ??ang c?? ?? ?????nh s???m m???t chi???c xe h??i ho???c b??c n??o v???a s??? h???u m???t chi???c x??? c??ng. C??c b??c mu???n tham kh???o nh???ng d??ng camera th??ng minh c?? th??? tham kh???o link d?????i nh??.","5 Ph??? ki???n c???n thi???t cho Honda City ??? camera h??nh tr??nh Webvision","","publish","open","open","","5-phu-kien-can-thiet-cho-honda-city-camera-hanh-trinh-webvision","","","2019-03-10 00:39:03","2019-03-09 17:39:03","","0","https://tppone.com/demo/camera/?p=298","0","post","","0"),
("299","1","2019-03-10 00:38:49","2019-03-09 17:38:49","","post2","","inherit","open","closed","","post2","","","2019-03-10 00:38:49","2019-03-09 17:38:49","","298","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post2.jpg","0","attachment","image/jpeg","0"),
("301","1","2019-03-10 00:40:00","2019-03-09 17:40:00","L?? m???t trong nh???ng m???u xe th??nh c??ng nh???t c???a Kia tr??n th??? tr?????ng to??n c???u, Cerato li??n ti???p n???m trong Top 10 xe b??n ch???y nh???t hi???n nay v???i doanh s??? trung b??nh 800 xe/th??ng. C?? th??? n??i, Cerato ch??nh l?? l???a ch???n h??ng ?????u trong ph??n kh??c sedan h???ng C nh??? thi???t k??? tr??? trung, ???n t?????ng v?? gi?? th??nh v?? c??ng h???p l??, ch??? tr??n d?????i 500 tri???u ?????ng.\n\nX??t v??? t???ng th???, Kia Cerato SMT v???n gi??? nguy??n ???????c phong c??ch thi???t k??? hi???n ?????i tr??? trung v???n c?? nh??ng do l?? phi??n b???n th???p nh???t n??n r???t nhi???u ch???c n??ng ???? b??? t???i gi???n ??i nh?? kh??ng c?? ?????u DVD, c???m bi???n l??i hay camera l??i. Tuy nhi??n, n???u c??c b??c ??ang c?? ?? ?????nh s??? h???u ho???c ??ang s??? h???u si??u ph???m n??y th?? c??ng kh??ng c???n ph???i lo l???ng qu?? nhi???u b???i Webvision M39 s??? l?? m???nh gh??p ho??n h???o gi???i quy???t t???t c??? c??c v???n ????? ????.\n<figure id=\"attachment_9823\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9823 size-large lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg\" sizes=\"(max-width: 1020px) 100vw, 1020px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-768x576.jpg 768w\" alt=\"\" width=\"1020\" height=\"765\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1-768x576.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>???????c t??ch h???p 16 t??nh n??ng h???u ??ch, Webvision M39 l?? m???nh gh??p ho??n h???o, b?? ?????p m???i thi???u khuy???t c???a si??u ph???m Kia Cerato SMT</em></figcaption></figure>\n<a href=\"https://webvision.vn/san-pham/hot-trai-nghiem-ngay-sieu-pham-camera-hanh-trinh-webvision-m39/\"><strong>Webvision M39</strong></a>?????????c ????nh gi?? l?? m???t trong nh???ng camera h??nh tr??nh th??ng minh nh???t hi???n nay v???i c???c nhi???u t??nh n??ng h???u, h??? tr??? t???i ??a s??? an to??n cho l??i xe tr??n m???i n???o ???????ng. ?????c bi???t, trong t??nh h??nh giao th??ng ph???c t???p nh?? hi???n nay, vi???c trang b??? m???t chi???c camera l??i l?? v?? c??ng c???n thi???t ????? tr??nh c??c cu???c va ch???m kh??ng ????ng c?? v?? h??? tr??? vi???c d???ng, ????? xe thu???n ti???n h??n. Trong khi Kia Cerato SMT b??? thi???u khuy???t ch???c n??ng n??y th?? Webvision M39 ch??nh l?? s??? b?? ?????p ho??n h???o. Khi v??? s??? R, m??n h??nh camera s??? t??? ?????ng hi???n th??? h??nh ???nh ???????c ghi l???i t??? camera sau.\n<figure id=\"attachment_9824\" class=\"wp-caption alignnone\"><img class=\"size-large wp-image-9824 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg\" sizes=\"(max-width: 1020px) 100vw, 1020px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-768x576.jpg 768w\" alt=\"\" width=\"1020\" height=\"765\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-2-768x576.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>Trang b??? camera l??i gi??p vi???c d???ng ??? ????? xe d??? d??ng h??n v?? tr??nh va ch???m ????ng ti???c c?? th??? x???y ra</em></figcaption></figure>\nNgo??i kh??ng ???????c trang b??? camera l??i, vi???c kh??ng c?? ?????u DVD c??ng l?? l?? do khi???n nhi???u ng?????i b??n kho??n khi quy???t ?????nh mua m???u xe n??y. Webvision M39 v???i m??n h??nh c???m bi???n ??a ??i???m r???ng 6,86 inch, cung c???p t??nh n??ng gi???i tr?? v?? c??ng phong ph??. Gi???ng nh?? m???t chi???c smartphone nh??? g???n, thi???t b??? c?? kho ???ng d???ng CH Play gi??p c??c b??c c?? th??? tho???i m??i nghe nh???c, ?????c b??o, l?????t web v?? download ???ng d???ng gi???i tr?? tr??n thi???t b???.\n<figure id=\"attachment_9825\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9825 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg\" sizes=\"(max-width: 1020px) 100vw, 1020px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-768x576.jpg 768w\" alt=\"\" width=\"1020\" height=\"765\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-1067x800.jpg 1067w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/kia-cerato-768x576.jpg 768w\" /><figcaption class=\"wp-caption-text\"><em>M??n h??nh c???m bi???n ??a ??i???m v???i nhi???u ti???n ??ch gi???i tr?? c???c h???p d???n</em></figcaption></figure>\nCh??? m???i ??i???m qua m???t v??i l?? do tr??n ????y, c??c b??c c??n ch???n ch??? g?? n???a m?? kh??ng trang b??? ngay si??u ph???m camera h??nh tr??nh M39 ????? n??ng t???m ?????ng c???p cho con x??? y??u c???a m??nh ngay h??m nay.\n\nM???i ?? ki???n th???c m???c c??ng nh?? c???n t??m hi???u th??m th??ng tin v?????<strong>Camera h??nh tr??nh Webvision M39</strong>, c??c b??c c?? th??? g???i ??i???n ?????n t???ng ????i??<a href=\"tel:1900%200388\" target=\"_blank\" rel=\"noopener\"><strong>1900 0388</strong></a>??ho???c Chat tr???c ti???p t???i Website??<a href=\"https://webvision.vn/\" target=\"_blank\" rel=\"noopener\">Webvision</a>.vn ????? ???????c t?? v???n c??? th??? nh???t nh??.","Webvision M39 ??? ???m???nh gh??p ho??n h???o??? cho xe Sedan gi?? r??? Kia Cerato","","publish","open","open","","webvision-m39-manh-ghep-hoan-hao-cho-dong-xe-sedan-gia-re-kia-cerato-smt","","","2019-03-10 00:43:55","2019-03-09 17:43:55","","0","https://tppone.com/demo/camera/?p=301","0","post","","0"),
("302","1","2019-03-10 00:39:45","2019-03-09 17:39:45","","post3","","inherit","open","closed","","post3","","","2019-03-10 00:39:45","2019-03-09 17:39:45","","301","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post3.jpg","0","attachment","image/jpeg","0"),
("304","1","2019-03-10 00:40:48","2019-03-09 17:40:48","V???i ???????ng n???i ????, m???u sedan c??? nh??? v???n h??nh ??m ??i, nh??? nh??ng nh??ng khi ra ???????ng tr?????ng hay leo n??i, Honda City l???i tr??? n??n m???nh m???, ????ng n???. Honda city l?? m???u xe r???t ph?? h???p cho nh???ng tay l??i hay di chuy???n xa tr??n nh???ng cung ???????ng nh???a. V???a c?? th??? lu???n l??ch ????p ???ng nhu c???u c?? nh??n trong khu ???? th???, v???a c?? th??? ??i ???????ng tr?????ng n??n Honda city ???????c nh???ng tay l??i tr??? kh?? y??u th??ch.\n\nV???i m???t d??ng xe ti???n ??ch nh?? v???y b???n n??n ch???n ph??? ki???n camera th??? n??o cho ph?? h???p. N???u b???n c?? nh???ng chuy???n ??i c??ng t??c xa th?????ng xuy??n. Nh???ng chuy???n du l???ch c??ng gia ????nh nh??? c???a m??nh ch???c h???n n??n ch???n lo???i camera h??nh tr??nh c?? ch??? ????? ghi h??nh c???c n??t v?? c?? t??nh n??ng ?????m b???o an to??n cho b???n v?? ng?????i th??n.\n\n<img class=\"size-medium wp-image-9758 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093108-1067x800.jpg 1067w\" />\n\n<strong>3 l?? do v?? sao camera h??nh tr??nh Webvision S8 l?? ???ng c??? vi??n s??ng gi?? cho Honda City?</strong>\n\n<strong>Th??? nh???t ???</strong>??nh?? ???? ????? c???p ??? tr??n Honda City l?? d??ng xe linh ho???t cho nhu c???u di chuy???n trong n???i ???? v?? ??i ???????ng tr?????ng v???i ?????a h??nh ????n gi???n. Trong nh???ng chuy???n ??i xa c??c b??c c???n m???t lo???i camera h??nh tr??nh ph??t huy t??nh n??ng c???a m???t thi???t b??? ghi h??nh. N???u b???n th?????ng xuy??n ph???i di chuy???n xa th?? kh??ng c???n thi???t ph???i ch?? tr???ng qu?? nhi???u v??o v???n ????? t??nh n??ng ph??? c???a thi???t b???. S8 l?? ?????a con ????? c???a Webvision v???i nhi???m v??? ch??nh l?? ph???c v??? cho nhu c???u ghi h??nh c???a c??c b??c.\n\n<img class=\"alignnone size-medium wp-image-9761 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-768x341.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249.jpg 1300w\" alt=\"\" width=\"800\" height=\"355\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-800x355.jpg 800w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249-768x341.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/Camera-Webvision-S8-25082016-1249.jpg 1300w\" />\n\nCh??? ????? ghi h??nh s???c n??t 2K gi??p Webvision S8-GPS v?????t m???t m???i ?????i th???. Th???m ch?? so s??nh v???i anh em c??ng m??? ????? Webvision th?? S8 v???n lu??n n???i tr???i v??? ch??? ????? ghi h??nh. N???m trong ph??n kh??c camera h??nh tr??nh d??nh cho d??ng xe ???????ng tr?????ng, Webvision S8 th??? hi???n ???????c l???i th??? v???i kh??? n??ng ghi h??nh cam tr?????c s???c n??t. H??n c??? Full HD, ch??? ????? ghi h??nh 2K d???n ?????u trong l??ng camera h??nh tr??nh d??nh cho ?? t??. B???i v???y m?? Honda City ???? l???a ch???n Webvision S8 l?? b???n ?????ng h??nh.\n<table border=\"0\">\n<tbody>\n<tr>\n<td><img class=\"alignnone size-medium wp-image-9762 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg\" sizes=\"(max-width: 611px) 100vw, 611px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg 611w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-768x503.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001.jpg 800w\" alt=\"\" width=\"611\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-611x400.jpg 611w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001-768x503.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/camera-hanh-trinh-webvision-s8-gps-2k-001.jpg 800w\" /></td>\n<td><img class=\"alignnone size-medium wp-image-9759 lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093100-1067x800.jpg 1067w\" /></td>\n</tr>\n</tbody>\n</table>\n&nbsp;\n\n<strong>Th??? hai ?????</strong>tham gia giao th??ng tr??n cao t???c trong nh???ng chuy???n ??i xa th?? v???n ????? c??c b??c c???n l??u ?? nhi???u nh???t l?? h??ng lo???t nh???ng bi???n b??o giao th??ng. V???i t???c ????? vun v??t tr??n cao t???c l??m sao c?? th??? ????? ?? h???t ???????c bi???n b??o tr??n ???????ng. Gi???i ph??p n???m ??? Webvision S8 ??? GPS. H??? th???ng c???nh b??o bi???n b??o giao th??ng b???ng gi???ng n??i ti???ng Vi???t gi??p t??i x??? d??? d??ng ti???p nh???n th??ng tin t??? bi???n b??o tr??n m???i tuy???n ???????ng.\n\n<img class=\"size-medium wp-image-9760 aligncenter lazy-load-active\" src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg\" sizes=\"(max-width: 533px) 100vw, 533px\" srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-1067x800.jpg 1067w\" alt=\"\" width=\"533\" height=\"400\" data-src=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg\" data-srcset=\"https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-533x400.jpg 533w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-768x576.jpg 768w, https://webvision.vn/wp-content/uploads/2018/10/IMG_20181025_093051-1067x800.jpg 1067w\" />\n\n<strong>Th??? ba</strong>????? v???i thi???t k??? nh?????<strong>nh???n</strong>??linh ho???t lu???n l??ch trong n???i ???? ????i h???i ph??? ki???n k??m theo c??ng ph???i ph?? h???p v??? ki???u d??ng v?? k??ch th?????c nh??? g???n. N???i th???t tr??n Honda City ???????c b??? tr?? r???t v???a v???n ????? kh??ng t???n qu?? nhi???u di???n t??ch trong xe. Ch??nh v?? l?? do ???y Webvision S8 c?? thi???t k??? v?? c??ng nh??? g???n, l???p ?????t d??? d??ng do v???y kh??ng chi???m qu?? nhi???u di???n t??ch trong xe. V??? tr?? l???p ?????t hit l??n k??nh ch???n gi?? gi??p t??i x??? d??? d??ng quan s??t m?? v???n ?????m b???o kh??ng ch???n t???m nh??n ng?????i l??i.\n\nB??c n??o ??ang c?? nhu c???u l???p ?????t m???t chi???c camera h??nh tr??nh th?? n??n xem x??t nhu c???u c???a m??nh tr?????c nh??. N???u c??c b??c c?? c??ng nhu c???u v???i anh Th??nh ??? ch??? nh??n chi???c Honda City th?? n??n l???a ch???n lo???i camera c?? t??nh n??ng ghi h??nh c???c t???t nh?? Webvision S8 nh??! Ch??c c??c b??c s???c kh???e v?? l??i xe an to??n!","S??? h???u ???Honda City??? n??n ch???n lo???i camera h??nh tr??nh th??? n??o?","","publish","open","open","","so-huu-honda-city-nen-chon-loai-camera-hanh-trinh-the-nao","","","2019-03-10 00:40:48","2019-03-09 17:40:48","","0","https://tppone.com/demo/camera/?p=304","0","post","","0"),
("305","1","2019-03-10 00:40:45","2019-03-09 17:40:45","","post4","","inherit","open","closed","","post4","","","2019-03-10 00:40:45","2019-03-09 17:40:45","","304","https://tppone.com/demo/camera/wp-content/uploads/2019/03/post4.jpg","0","attachment","image/jpeg","0"),
("318","1","2019-03-10 00:47:03","2019-03-09 17:47:03","[section label=\"Footer section\" class=\"footer-section\"]\n\n[row style=\"small\"]\n\n[col span=\"5\" span__sm=\"12\"]\n\n<h4><span style=\"font-size: 95%;\"><strong><span style=\"color: #000000;\">V??? ch??ng t??i</span></strong></span></h4>\n<p><span style=\"font-size: 85%; color: #333333;\"><strong>Webdemo</strong>?????????c t???o ra ????? gi??p c??c b???n Coder/ Marketer??kh??ng c??n lo l???ng??nhi???u??v??? c??c d??? ??n thi???t k??? web c???a h???, b???ng c??ch s??? d???ng??nh???ng m???u website ???????c d???ng s???n.</span></p>\n<p><span style=\"font-size: 85%; color: #333333;\">C??c m???u website ???????c d???ng ho??n to??n b???i Webdemo v?? ???????c c???p nh???t h???ng ng??y. N???u b???n th??ch n???i dung n??y, xin ???ng h??? d???ch v??? c???a ch??ng t??i. Xin c??m ??n! Qu???n l?? b???i??<a style=\"color: #333333;\" href=\"https://www.facebook.com/demo\">L?? Thi???n</a>??v????<a style=\"color: #333333;\" href=\"https://Webdemo.com/\">Webdemo.</a></span></p>\n\n[/col]\n[col span=\"7\" span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h4><span style=\"color: #000000; font-size: 95%;\">Th??ng tin li??n h???:</span></h4>\n<p><span style=\"font-size: 85%; color: #333333;\">- ?????a ch???: S??? 29 ng?? 18 L????ng Ng???c Quy???n, V??n Qu??n, H?? ????ng</span></p>\n<p><span style=\"font-size: 85%; color: #333333;\">- ??i???n tho???i:??<a style=\"color: #333333;\" href=\"tel:0972939830\"></a>??ho???c email v??? h??m th??:??<a style=\"color: #333333;\" href=\"mailto:webdemo@gmail.com\">webdemo@gmail.com</a></span></p>\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n<h4><span style=\"color: #000000; font-size: 95%;\">Mua h??ng Online:</span></h4>\n<p><span style=\"font-size: 85%; color: #333333;\">+ Ms. Ph????ng Anh: ????<b><a style=\"color: #333333;\" href=\"https://webvision.vn/%E2%80%9Ctel:0981667667%E2%80%9D\">0981 667 667??</a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. ??nh: ????<b><a style=\"color: #333333;\" href=\"https://webvision.vn/%E2%80%9Ctel:0934000000%E2%80%9D\">0934 000 000??</a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Ph????ng: ????<b><a style=\"color: #333333;\" href=\"tel:0969999929\">0969 999 929</a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Ho??i: ????<b><a style=\"color: #333333;\" href=\"tel:0379555222\">0379 555 222</a></b></span><br /><span style=\"font-size: 85%; color: #333333;\">+ Ms. Xu??n: ????<b><a style=\"color: #333333;\" href=\"tel:0971133133\">0971 133 133</a></b></span></p>\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-03-10 00:55:38","2019-03-09 17:55:38","","0","https://tppone.com/demo/camera/?post_type=blocks&#038;p=318","0","blocks","","0"),
("443","1","2019-03-10 21:48:10","2019-03-10 14:48:10","a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}","Ch??nh s??ch cho s???n ph???m","chinh-sach-cho-san-pham","publish","closed","closed","","group_5c85239eb4999","","","2019-03-10 22:07:03","2019-03-10 15:07:03","","0","https://tppone.com/demo/camera/?post_type=acf-field-group&#038;p=443","0","acf-field-group","","0"),
("444","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:70:\"Nh???p ch??nh s??ch b??n h??ng. V?? d???: D??ng th??? trong 8 ng??y...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:31:\"D??ng th??? 7 ng??y mi???n ph??\";s:11:\"placeholder\";s:22:\"Nh???p ch??nh s??ch...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Ch??nh s??ch","chinh_sach","publish","closed","closed","","field_5c8523b2d9b2d","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=444","1","acf-field","","0"),
("445","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:56:\"Nh???p s??? th??ng b???o h??nh s???n ph???m. V?? d???: 3\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:52:\"B???o h??nh 24 th??ng ??? 1 ?????i 1 trong 12 th??ng\";s:11:\"placeholder\";s:33:\"Nh???p th???i gian b???o h??nh...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:100;s:4:\"step\";s:0:\"\";}","B???o h??nh","bao_hanh","publish","closed","closed","","field_5c8523cbd9b2e","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=445","2","acf-field","","0"),
("446","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:74:\"Nh???p h??nh th???c thanh to??n. V?? d???: thanh to??n khi nh???n h??ng...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:28:\"Thanh to??n khi nh???n h??ng\";s:11:\"placeholder\";s:34:\"Nh???p h??nh th???c thanh to??n...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Thanh to??n","thanh_toan","publish","closed","closed","","field_5c8523f4d9b2f","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=446","3","acf-field","","0"),
("447","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:73:\"Nh???p h??nh th???c v???n chuy???n. V?? d???: mi???n ph?? to??n qu???c...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:24:\"Mi???n ph?? to??n qu???c\";s:11:\"placeholder\";s:37:\"Nh???p h??nh th???c v???n chuy???n...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","V???n chuy???n","van_chuyen","publish","closed","closed","","field_5c852411d9b30","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=447","4","acf-field","","0"),
("448","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:67:\"Nh???p h??nh th???c l???p ?????t. V?? d???: mi???n ph?? t???i nh??!\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:78:\"Mi???n ph?? l???p ?????t t???i c??c ?????i l?? u??? quy???n tr??n to??n qu???c\";s:11:\"placeholder\";s:35:\"Nh???p h??nh th???c l???p ?????t...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","L???p ?????t","lap_dat","publish","closed","closed","","field_5c852478d9b31","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=448","5","acf-field","","0"),
("449","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nh???p qu?? t???ng 01\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nh???p qu?? t???ng 01\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Qu?? t???ng 1","qua_tang_1","publish","closed","closed","","field_5c8524a0d9b32","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=449","7","acf-field","","0"),
("450","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nh???p qu?? t???ng 02\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nh???p qu?? t???ng 02\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Qu?? t???ng 2","qua_tang_2","publish","closed","closed","","field_5c8524bcd9b33","","","2019-03-10 21:54:32","2019-03-10 14:54:32","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=450","8","acf-field","","0"),
("451","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nh???p qu?? t???ng 03\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nh???p qu?? t???ng 03\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Qu?? t???ng 3","qua_tang_3","publish","closed","closed","","field_5c8524d5d9b34","","","2019-03-10 21:54:32","2019-03-10 14:54:32","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=451","9","acf-field","","0"),
("452","1","2019-03-10 21:53:44","2019-03-10 14:53:44","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nh???p qu?? t???ng 04\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nh???p qu?? t???ng 04\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Qu?? t???ng 4","qua_tang_4","publish","closed","closed","","field_5c8524eed9b35","","","2019-03-10 21:54:32","2019-03-10 14:54:32","","443","https://tppone.com/demo/camera/?post_type=acf-field&#038;p=452","10","acf-field","","0"),
("453","1","2019-03-10 21:54:31","2019-03-10 14:54:31","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Th??ng tin b??n h??ng","thong_tin_ban_hang","publish","closed","closed","","field_5c852507b5344","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&p=453","0","acf-field","","0"),
("454","1","2019-03-10 21:54:31","2019-03-10 14:54:31","a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}","Khuy???n m???i","khuy???n_m???i","publish","closed","closed","","field_5c85251bb5345","","","2019-03-10 21:54:31","2019-03-10 14:54:31","","443","https://tppone.com/demo/camera/?post_type=acf-field&p=454","6","acf-field","","0"),
("455","1","2019-03-10 22:07:03","2019-03-10 15:07:03","a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Nh???p qu?? t???ng 05\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Nh???p qu?? t???ng 05\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}","Qu?? t???ng 5","qua_tang_5","publish","closed","closed","","field_5c85280fcdbc5","","","2019-03-10 22:07:03","2019-03-10 15:07:03","","443","https://tppone.com/demo/camera/?post_type=acf-field&p=455","11","acf-field","","0"),
("470","1","2019-03-10 22:19:40","2019-03-10 15:19:40","","check@2x","","inherit","open","closed","","check2x","","","2019-03-10 22:19:40","2019-03-10 15:19:40","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/03/check@2x.png","0","attachment","image/png","0"),
("497","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","497","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=497","7","nav_menu_item","","0"),
("498","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","498","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=498","2","nav_menu_item","","0"),
("499","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","499","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=499","1","nav_menu_item","","0");
INSERT INTO gdd__posts VALUES
("501","1","2019-03-10 22:45:22","2019-03-10 15:45:22","L???i ??ch khi s??? d???ng camera h??nh tr??nh cho ?? t?? Camera h??nh tr??nh ?? t?? gi??p ghi l???i nh???ng kho???nh kh???c ?????p tr??n nh???ng ch???ng ???????ng c???a b???n L??m b???ng ch???ng cho b???n trong tr?????ng h???p b??? CSGT b???t l??o L??m b???ng ch???ng trong c??c v??? tai n???n ho???c khi c?? tranh ch???p x???y ra M???t s??? d??ng cao c???p camera h??nh tr??nh t???t nh???t c?? th??m t??nh n??ng c???nh b??o, d???n ch??? ???????ng V?? nhi???u l???i ??ch kh??c n???a.. C??c lo???i camera h??nh tr??nh gi?? r??? ph??n ph???i ?????c quy???n t???i Webvision Camera h??nh tr??nh ?? t?? Webvision M39 M39 ???????c ????nh gi?? l?? m???t trong nh???ng si??u ph???m camera h??nh tr??nh t???t nh???t hi???n nay t??ch h??p 14 t??nh n??ng h???u ??ch nh??: t??ch h???p c??ng ngh??? 4G, kh??? n??ng ??i???u khi???n t??? xa, d???n ???????ng, quay video ch???t l?????ng HD, h??? tr??? l??i xe an to??n nh??? h??? th???ng c???nh b??o th??ng minh??? Camera h??nh tr??nh ?? t?? Webvision S8 S8 ngo??i ch???c n??ng ghi h??nh th?? c??n ???????c t??ch h???p t??nh n??ng c???nh b??o c??c lo???i bi???n b??o giao th??ng, c???nh b??o l???n l??n hay ch???y qu?? t???c ????? cho t??i x?????? ????y ???????c ????nh???","","","publish","closed","closed","","501","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=501","3","nav_menu_item","","0"),
("502","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","502","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=502","4","nav_menu_item","","0"),
("503","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","503","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=503","5","nav_menu_item","","0"),
("504","1","2019-03-10 22:45:22","2019-03-10 15:45:22"," ","","","publish","closed","closed","","504","","","2019-03-10 22:46:04","2019-03-10 15:46:04","","0","https://tppone.com/demo/camera/?p=504","6","nav_menu_item","","0"),
("508","1","2019-03-10 22:48:32","2019-03-10 15:48:32","<div class=\"flex-row form-flat medium-flex-wrap\">\n    <div class=\"flex-col flex-grow\">\n    	[tel* tel-343 placeholder \"S??? ??i???n tho???i...\"]\n    </div>\n    <div class=\"flex-col ml-half\">\n    	[submit class:button primary \"????ng k?? t?? v???n\"]\n    </div>\n    </div>\n1\nM???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\nwebdemo@gmail.com\nC?? m???t s??? ??i???n tho???i v???a ????ng k??:\n- S??? ??i???n tho???i: [tel-343]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\n\n\n\n\n\nM???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","????? l???i s??? ??i???n tho???i t?? v???n","","publish","closed","closed","","form-lien-he-1","","","2019-03-10 23:13:47","2019-03-10 16:13:47","","0","https://tppone.com/demo/camera/?post_type=wpcf7_contact_form&#038;p=508","0","wpcf7_contact_form","","0"),
("513","1","2019-03-10 22:53:36","2019-03-10 15:53:36","","C???a h??ng","","publish","closed","closed","","mua","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/mua/","0","page","","0"),
("514","1","2019-03-10 22:53:36","2019-03-10 15:53:36","[woocommerce_cart]","Gi??? h??ng","","publish","closed","closed","","gio-hang","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/gio-hang/","0","page","","0"),
("515","1","2019-03-10 22:53:36","2019-03-10 15:53:36","[woocommerce_checkout]","Thanh to??n","","publish","closed","closed","","thanh-toan","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/thanh-toan/","0","page","","0"),
("516","1","2019-03-10 22:53:36","2019-03-10 15:53:36","[woocommerce_my_account]","T??i kho???n","","publish","closed","closed","","tai-khoan","","","2019-03-10 22:53:36","2019-03-10 15:53:36","","0","https://tppone.com/demo/camera/tai-khoan/","0","page","","0"),
("538","1","2019-03-10 23:10:22","2019-03-10 16:10:22","","Order &ndash; Th??ng Ba 10, 2019 @ 11:10 Chi???u","abc","wc-on-hold","open","closed","wc_order_PtrWdHlyI8OX7","don-hang-mar-10-2019-0410-pm","","","2019-03-10 23:10:22","2019-03-10 16:10:22","","0","https://tppone.com/demo/camera/?post_type=shop_order&#038;p=538","0","shop_order","","1"),
("542","1","2019-03-10 23:15:22","2019-03-10 16:15:22","[text* text-653 placeholder \"T??n c???a b???n...\"]\n[tel* tel-711 placeholder \"S??? ??i???n tho???i...\"]\n[textarea textarea-261 placeholder \"N???i dung li??n h???\"]\n[submit \"G???i li??n h???\"]\n1\nM???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\nwebdemo@gmail.com\nC?? ng?????i m???i li??n h??? tr??n website:\n- H??? v?? t??n: [text-653]\n- S??? ??i???n tho???i: [tel-711]\n- N???i dung: [textarea-261]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\n\n\n\n\n\nM???u website b??n Camera - Thi???t k??? website Webdemo.com \"[your-subject]\"\nM???u website b??n Camera - Thi???t k??? website Webdemo.com <wordpress@camera.Webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n Camera - Thi???t k??? website Webdemo.com (https://bizhostvn.com/w/camera)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","Form li??n h???","","publish","closed","closed","","form-lien-he","","","2019-03-10 23:15:25","2019-03-10 16:15:25","","0","https://tppone.com/demo/camera/?post_type=wpcf7_contact_form&#038;p=542","0","wpcf7_contact_form","","0"),
("620","1","2019-05-05 06:21:26","2019-05-04 23:21:26","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-05 06:21:26","2019-05-04 23:21:26","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0"),
("621","1","2019-05-06 16:04:27","2019-05-06 09:04:27","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:04:27\"\n    }\n}","","","trash","closed","closed","","9651642b-b42c-413b-b014-53b0d6c9d5f6","","","2019-05-06 16:04:27","2019-05-06 09:04:27","","0","https://tppone.com/demo/camera/9651642b-b42c-413b-b014-53b0d6c9d5f6/","0","customize_changeset","","0"),
("622","1","2019-05-06 17:09:21","2019-05-06 10:09:21","","camera","","inherit","open","closed","","camera","","","2019-05-06 17:09:21","2019-05-06 10:09:21","","0","https://tppone.com/demo/camera/wp-content/uploads/2019/05/camera.jpg","0","attachment","image/jpeg","0"),
("623","1","2019-05-06 17:10:44","2019-05-06 10:10:44","{\n    \"camera::site_logo\": {\n        \"value\": \"https://bizhostvn.com/w/camera/wp-content/uploads/2019/05/camera.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 10:10:44\"\n    }\n}","","","trash","closed","closed","","151a95ea-8e91-4d61-b021-82021fdcb678","","","2019-05-06 17:10:44","2019-05-06 10:10:44","","0","https://tppone.com/demo/camera/151a95ea-8e91-4d61-b021-82021fdcb678/","0","customize_changeset","","0");




CREATE TABLE `gdd__term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__term_relationships VALUES
("1","1","0"),
("34","2","0"),
("35","2","0"),
("166","4","0"),
("166","16","0"),
("166","18","0"),
("166","21","0"),
("168","4","0"),
("168","16","0"),
("168","18","0"),
("168","21","0"),
("170","4","0"),
("170","15","0"),
("170","18","0"),
("170","21","0"),
("173","4","0"),
("173","16","0"),
("173","18","0"),
("173","21","0"),
("190","4","0"),
("190","16","0"),
("190","19","0"),
("190","22","0"),
("192","4","0"),
("192","16","0"),
("192","19","0"),
("192","22","0"),
("194","4","0"),
("194","16","0"),
("194","19","0"),
("196","4","0"),
("196","16","0"),
("196","19","0"),
("196","21","0"),
("196","22","0"),
("198","4","0"),
("198","15","0"),
("198","19","0"),
("198","21","0"),
("200","4","0"),
("200","16","0"),
("200","19","0"),
("200","21","0"),
("202","4","0"),
("202","16","0"),
("202","19","0"),
("204","4","0"),
("204","16","0"),
("204","19","0"),
("204","21","0"),
("206","4","0"),
("206","16","0"),
("206","20","0"),
("208","4","0"),
("208","16","0"),
("208","20","0"),
("208","21","0"),
("210","4","0"),
("210","15","0"),
("210","20","0"),
("210","21","0"),
("212","4","0"),
("212","17","0"),
("212","23","0"),
("214","4","0"),
("214","16","0"),
("214","20","0"),
("214","24","0"),
("216","4","0"),
("216","16","0"),
("216","20","0"),
("216","25","0"),
("218","4","0"),
("218","16","0"),
("218","20","0"),
("218","26","0"),
("220","4","0"),
("220","17","0"),
("223","4","0"),
("223","17","0"),
("223","27","0"),
("225","4","0"),
("225","17","0"),
("294","1","0"),
("298","1","0"),
("298","28","0"),
("301","1","0"),
("301","29","0"),
("304","1","0"),
("304","29","0"),
("497","3","0"),
("498","3","0"),
("499","3","0"),
("501","3","0"),
("502","3","0"),
("503","3","0"),
("504","3","0");




CREATE TABLE `gdd__term_taxonomy` (
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


INSERT INTO gdd__term_taxonomy VALUES
("1","1","category","","0","5"),
("2","2","nav_menu","","0","2"),
("3","3","nav_menu","","0","7"),
("4","4","product_type","","0","22"),
("5","5","product_type","","0","0"),
("6","6","product_type","","0","0"),
("7","7","product_type","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_visibility","","0","3"),
("16","16","product_visibility","","0","15"),
("17","17","product_cat","","0","4"),
("18","18","product_cat","L???i ??ch khi s??? d???ng camera h??nh tr??nh cho ?? t??\nCamera h??nh tr??nh ?? t?? gi??p ghi l???i nh???ng kho???nh kh???c ?????p tr??n nh???ng ch???ng ???????ng c???a b???n\nL??m b???ng ch???ng cho b???n trong tr?????ng h???p b??? CSGT b???t l??o\nL??m b???ng ch???ng trong c??c v??? tai n???n ho???c khi c?? tranh ch???p x???y ra\nM???t s??? d??ng cao c???p camera h??nh tr??nh t???t nh???t c?? th??m t??nh n??ng c???nh b??o, d???n ch??? ???????ng\nV?? nhi???u l???i ??ch kh??c n???a..\nC??c lo???i camera h??nh tr??nh gi?? r??? ph??n ph???i ?????c quy???n t???i Webvision\nCamera h??nh tr??nh ?? t?? Webvision M39\nM39 ???????c ????nh gi?? l?? m???t trong nh???ng si??u ph???m camera h??nh tr??nh t???t nh???t hi???n nay t??ch h??p 14 t??nh n??ng h???u ??ch nh??: t??ch h???p c??ng ngh??? 4G, kh??? n??ng ??i???u khi???n t??? xa, d???n ???????ng, quay video ch???t l?????ng HD, h??? tr??? l??i xe an to??n nh??? h??? th???ng c???nh b??o th??ng minh...\n\nCamera h??nh tr??nh ?? t?? Webvision S8\nS8 ngo??i ch???c n??ng ghi h??nh th?? c??n ???????c t??ch h???p t??nh n??ng c???nh b??o c??c lo???i bi???n b??o giao th??ng, c???nh b??o l???n l??n hay ch???y qu?? t???c ????? cho t??i x?????? ????y ???????c ????nh gi?? l?? m???t trong nh???ng s???n ph???m camera h??nh tr??nh ?? t?? gi?? t???t th??ng minh nh???t hi???n nay.\n\nCamera h??nh tr??nh Webvision S8 Plus Wifi GPS\nS8 Plus t??ch h???p camera l??i c??ng kh??? n??ng k???t n???i Wifi tr??n h??? ??i???u h??nh IOS v?? Android. S??? h???u ?????n 14 t??nh n??ng th??ng minh nh?? quay phim Full HD c??ng l??c tr?????c sau, c???nh b??o l???n l??n, c???nh b??o t???c ?????,... Webvision S8 Plus ???????c ????nh gi?? l?? s???n ph???m camera h??nh tr??nh gi?? r??? thu???c ph??n kh??c t???m trung ????ng mong ?????i nh???t n??m 2018.\n\nCamera h??nh tr??nh ?? t?? Webvision N93\nN93 l?? m???t trong nh???ng d??ng s???n ph???m cao c???p t???t nh???t c???a h??ng t??nh ?????n th???i ??i???m hi???n t???i. Ngo??i nh???ng t??nh n??ng c???a d??ng S8 ??? tr??n th?? camera h??nh tr??nh Webvision N93 c??n ???????c t??ch h???p th??m t??nh n??ng d???n ch??? ???????ng b???ng ti???ng Vi???t v?? t??ch h???p c??? v???i camera l??i, h??? tr??? t???i ??a cho qu?? tr??nh l??i xe c???a b???n.\n\nCamera h??nh tr??nh Webvision N93 Plus\nWebvision N93 Plus t??ch h???p m???ng 4G LTE tr??n h??? ??i???u h??nh Android 5.1 th??ng minh. Chi???c camera n??y c??n s??? h???u ?????n 16 t??nh n??ng ??u vi???t ??em l???i nh???ng tr???i nghi???m c???c k?? ???n t?????ng tr??n ch??nh xe c???a b???n ?????ng th???i gi??p vi???c l??i xe c???a b???n tr??? n??n d??? d??ng v?? an to??n h??n.\n\nWebvision S5\nCamera h??nh tr??nh gi?? r??? S5 ???????c ????nh gi?? l?? d??ng ??? ph??n kh??c b??nh d??n ch???t l?????ng nh???t hi???n nay v???i kh??? n??ng ghi h??nh ?????ng th???i tr?????c sau, t??? ?????ng b???t t???t khi m???, t???t m??y xe, c???m bi???n va ch???m gi??p camera h??nh tr??nh t??? ?????ng l??u l???i khi xe c?? va ch???m x???y ra ????? l??m t?? li???u qu?? gi?? khi x???y ra tranh c??i.\n\nMua camera h??nh tr??nh ??? ????u t???t?\n????? trang b??? cho m??nh nh???ng s???n ph???m ch??nh hang, ch???t l?????ng nh???t b???n h??y t??m mua camera h??nh tr??nh t???i c??c ?????a ch??? ph??n ph???i uy t??n, ch??? ????? b???o h??nh sau b??n h??ng t???t nh???t, tr??nh t??nh tr???ng mua ph???i h??ng nh??i, h??ng k??m ch???t l?????ng.\n\nWebvision ??? ?????ng c???p Camera l?? m???t trong nh???ng nh?? ?????c quy???n ph??n ph???i, b??n camera h??nh tr??nh ch??nh h??ng, gi?? c??? c???nh tranh tr??n to??n qu???c, mi???n ph?? l???p ?????t???.\n\nV???i nh???ng ??i???u tuy???t v???i tr??n, th?? t???i sao b???n kh??ng s???m ngay 1 chi???c camera h??nh tr??nh ?? t?? v???i gi?? t???t nh???t, ch??nh h??ng c???a ?????ng c???p camera v??? cho ???v??? 2??? c???a m??nh nh???. Li??n h??? ngay v???i ch??ng t??i. ????? ???v??? 2??? c???a b???n ???????c ch??m s??c 1 c??ch t???t nh???t. ????? c?? nh???ng tr???i nghi???m th???t th?? v??? tr??n nh???ng h??nh tr??nh c???a m??nh.","0","4"),
("19","19","product_cat","","0","8"),
("20","20","product_cat","","0","6"),
("21","21","product_tag","","0","10"),
("22","22","product_tag","","0","3"),
("23","23","product_tag","","0","1"),
("24","24","product_tag","","0","1"),
("25","25","product_tag","","0","1"),
("26","26","product_tag","","0","1"),
("27","27","product_tag","","0","1"),
("28","28","post_tag","","0","1"),
("29","29","post_tag","","0","2");




CREATE TABLE `gdd__termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__termmeta VALUES
("1","17","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","17","display_type",""),
("3","17","thumbnail_id","162"),
("4","18","order","0"),
("5","18","display_type",""),
("6","18","thumbnail_id","163"),
("7","18","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("8","19","order","0"),
("9","19","display_type",""),
("10","19","thumbnail_id","164"),
("11","19","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("12","20","order","0"),
("13","20","display_type",""),
("14","20","thumbnail_id","165"),
("15","18","product_count_product_cat","4"),
("16","21","product_count_product_tag","10"),
("17","19","product_count_product_cat","8"),
("18","22","product_count_product_tag","3"),
("19","20","product_count_product_cat","6"),
("20","17","product_count_product_cat","4"),
("21","23","product_count_product_tag","1"),
("22","24","product_count_product_tag","1"),
("23","25","product_count_product_tag","1"),
("24","26","product_count_product_tag","1"),
("25","27","product_count_product_tag","1");




CREATE TABLE `gdd__terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__terms VALUES
("1","Tin t???c","tin-tuc","0"),
("2","Topbar menu","topbar-menu","0"),
("3","Main menu","main-menu","0"),
("4","simple","simple","0"),
("5","grouped","grouped","0"),
("6","variable","variable","0"),
("7","external","external","0"),
("8","exclude-from-search","exclude-from-search","0"),
("9","exclude-from-catalog","exclude-from-catalog","0"),
("10","featured","featured","0"),
("11","outofstock","outofstock","0"),
("12","rated-1","rated-1","0"),
("13","rated-2","rated-2","0"),
("14","rated-3","rated-3","0"),
("15","rated-4","rated-4","0"),
("16","rated-5","rated-5","0"),
("17","Thi???t b??? d???n ???????ng","thiet-bi-dan-duong","0"),
("18","Camera h??nh tr??nh","camera-hanh-trinh","0"),
("19","Camera quan s??t","camera-quan-sat","0"),
("20","Ph??? ki???n Camera","phu-kien-camera","0"),
("21","Camera h??nh tr??nh gi?? cao","camera-hanh-trinh-gia-cao","0"),
("22","Ip camera","ip-camera","0"),
("23","B??m t??? v?? cao c???p","bom-tu-va-cao-cap","0"),
("24","b??m ??i???n","bom-dien","0"),
("25","B??m ??i???n t??? v??","bom-dien-tu-va","0"),
("26","B??? chia t???u cho ?? t??","bo-chia-tau-cho-o-to","0"),
("27","Thi???t b??? d???n ???????ng","thiet-bi-dan-duong","0"),
("28","Trang b??? xe h??i","trang-bi-xe-hoi","0"),
("29","Camera h??nh tr??nh","camera-hanh-trinh","0");




CREATE TABLE `gdd__usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__usermeta VALUES
("1","1","nickname","Webdemo.com"),
("2","1","first_name",""),
("3","1","last_name","admin"),
("4","1","description",""),
("5","1","rich_editing","true"),
("6","1","syntax_highlighting","true"),
("7","1","comment_shortcuts","false"),
("8","1","admin_color","fresh"),
("9","1","use_ssl","0"),
("10","1","show_admin_bar_front","true"),
("11","1","locale",""),
("12","1","gdd__capabilities","a:1:{s:13:\"administrator\";b:1;}"),
("13","1","gdd__user_level","10"),
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:8:{s:64:\"18c871ec6aeb854977114ac5d95e45778ecbdd6a422179d1403a38d7bba41515\";a:4:{s:10:\"expiration\";i:1557482220;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557309420;}s:64:\"1e003771d96c7eac63ddb8a7fbe91a1066b14ae60fad2c20a58abb485cfb5620\";a:4:{s:10:\"expiration\";i:1557616017;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443217;}s:64:\"fe9cf07378eba6b7bdab4bb82f68a32943ddcc720a9c5fd62eeb76a12d85a54a\";a:4:{s:10:\"expiration\";i:1557619615;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557446815;}s:64:\"fb7d8f578cb3f9db0f71c447138a0202c0d96578cc1a9d32a7ed94b8410c3ff8\";a:4:{s:10:\"expiration\";i:1557625518;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452718;}s:64:\"d2c85713ee98b359fe865e7ab26ed83521008e8379e485cf2b64d75e25191996\";a:4:{s:10:\"expiration\";i:1557627809;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455009;}s:64:\"4c87d3de899352b72925c29c1927e99c120438bf8ea4eb8ae3ded5eccf957d56\";a:4:{s:10:\"expiration\";i:1557632349;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557459549;}s:64:\"a0af749b59486140dfa5f18eb97c5402974eca192c140b46d6997f7dfd677deb\";a:4:{s:10:\"expiration\";i:1557635989;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557463189;}s:64:\"405e5ff3916d54c4e248331baba6b02691be6731ee336bf619253a0c10e12ba5\";a:4:{s:10:\"expiration\";i:1557648114;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557475314;}}"),
("17","1","gdd__dashboard_quick_press_last_post_id","619"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","show_try_gutenberg_panel","0"),
("20","1","tgmpa_dismissed_notice_tgmpa","1"),
("21","1","gdd__user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("22","1","gdd__user-settings-time","1557446815"),
("23","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("24","1","metaboxhidden_nav-menus","a:4:{i:0;s:20:\"add-post-type-blocks\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-block_categories\";}"),
("26","1","wc_last_active","1557446400"),
("27","1","dismissed_install_notice","1"),
("28","1","dismissed_no_secure_connection_notice","1"),
("30","1","nav_menu_recently_edited","3"),
("31","1","last_update","1552234222"),
("32","1","billing_last_name","admin"),
("33","1","billing_address_1","Luong Ngoc Quyen"),
("34","1","billing_email","webdemo@gmail.com"),
("35","1","billing_phone","972939830"),
("36","1","shipping_method",""),
("40","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("41","1","duplicator_pro_created_format","1"),
("44","1","_woocommerce_tracks_anon_id","woo:BLAsK5xZJFIvMhJIqFZLvos4"),
("57","1","_woocommerce_load_saved_cart_after_login","1");




CREATE TABLE `gdd__users` (
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


INSERT INTO gdd__users VALUES
("1","admin","$P$BAdwKhAskSbbwsg8QE1WG11aBrkHvE/","admin","demogdd_@gmail.com","","2019-03-09 05:27:45","","0","admin");




CREATE TABLE `gdd__wc_product_meta_lookup` (
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






CREATE TABLE `gdd__wc_webhooks` (
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






CREATE TABLE `gdd__woocommerce_api_keys` (
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






CREATE TABLE `gdd__woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_downloadable_product_permissions` (
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






CREATE TABLE `gdd__woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__woocommerce_order_itemmeta VALUES
("1","1","_product_id","173"),
("2","1","_variation_id","0"),
("3","1","_qty","6"),
("4","1","_tax_class",""),
("5","1","_line_subtotal","27000000"),
("6","1","_line_subtotal_tax","0"),
("7","1","_line_total","27000000"),
("8","1","_line_tax","0"),
("9","1","_line_tax_data","a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}");




CREATE TABLE `gdd__woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd__woocommerce_order_items VALUES
("1","WEBVISION S8 ??? Camera h??nh tr??nh 2K ADAS c???nh b??o t???c ?????","line_item","538");




CREATE TABLE `gdd__woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gdd__woocommerce_tax_rates` (
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






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;