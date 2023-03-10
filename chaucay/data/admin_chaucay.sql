SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w44`
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
("1","1","M???t ng?????i b??nh lu???n WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-02-25 10:19:25","2019-02-25 10:19:25","Xin ch??o, ????y l?? m???t b??nh lu???n\n????? b???t ?????u v???i qu???n tr??? b??nh lu???n, ch???nh s???a ho???c x??a b??nh lu???n, vui l??ng truy c???p v??o khu v???c B??nh lu???n trong trang qu???n tr???.\nAvatar c???a ng?????i b??nh lu???n s??? d???ng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");




CREATE TABLE `gdd_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/tppone.com\\/demo\\/chaucay\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1551320165,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1556960283,\"initial_activation_timestamp\":1551320176,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557025900,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=2279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/chaucay","yes"),
("2","home","https://bizhostvn.com/w/chaucay","yes"),
("3","blogname","chaucay","yes"),
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
("29","rewrite_rules","a:179:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:6:\"mua/?$\";s:27:\"index.php?post_type=product\";s:36:\"mua/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:31:\"mua/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:23:\"mua/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:18:\"khong-phan-loai/?$\";s:39:\"index.php?category_name=khong-phan-loai\";s:35:\"khong-phan-loai/page/([0-9]{1,})/?$\";s:57:\"index.php?category_name=khong-phan-loai&paged=$matches[1]\";s:53:\"khong-phan-loai/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?category_name=khong-phan-loai&feed=$matches[1]\";s:10:\"tin-tuc/?$\";s:31:\"index.php?category_name=tin-tuc\";s:27:\"tin-tuc/page/([0-9]{1,})/?$\";s:49:\"index.php?category_name=tin-tuc&paged=$matches[1]\";s:45:\"tin-tuc/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?category_name=tin-tuc&feed=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"tu-khoa-san-pham/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:40:\"san-pham/.+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"san-pham/.+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"san-pham/.+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"san-pham/.+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"san-pham/.+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"san-pham/.+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"san-pham/(.+?)/([^/]+)/embed/?$\";s:64:\"index.php?product_cat=$matches[1]&product=$matches[2]&embed=true\";s:35:\"san-pham/(.+?)/([^/]+)/trackback/?$\";s:58:\"index.php?product_cat=$matches[1]&product=$matches[2]&tb=1\";s:55:\"san-pham/(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:70:\"index.php?product_cat=$matches[1]&product=$matches[2]&feed=$matches[3]\";s:50:\"san-pham/(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:70:\"index.php?product_cat=$matches[1]&product=$matches[2]&feed=$matches[3]\";s:43:\"san-pham/(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?product_cat=$matches[1]&product=$matches[2]&paged=$matches[3]\";s:50:\"san-pham/(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?product_cat=$matches[1]&product=$matches[2]&cpage=$matches[3]\";s:40:\"san-pham/(.+?)/([^/]+)/wc-api(/(.*))?/?$\";s:72:\"index.php?product_cat=$matches[1]&product=$matches[2]&wc-api=$matches[4]\";s:44:\"san-pham/.+?/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"san-pham/.+?/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:39:\"san-pham/(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?product_cat=$matches[1]&product=$matches[2]&page=$matches[3]\";s:29:\"san-pham/.+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"san-pham/.+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"san-pham/.+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"san-pham/.+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"san-pham/.+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"san-pham/.+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:5;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","0","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:5:{i:0;s:97:\"/home/tppone/domains/tppone.com/public_html/demo/chaucay/wp-content/themes/chau-cay/functions.php\";i:2;s:93:\"/home/tppone/domains/tppone.com/public_html/demo/chaucay/wp-content/themes/chau-cay/style.css\";i:3;s:121:\"/home/tppone/domains/tppone.com/public_html/demo/chaucay/wp-content/themes/flatsome/template-parts/posts/archive-list.php\";i:4;s:113:\"/home/tppone/domains/tppone.com/public_html/demo/chaucay/wp-content/themes/flatsome/inc/shortcodes/blog_posts.php\";i:5;s:93:\"/home/tppone/domains/tppone.com/public_html/demo/chaucay/wp-content/themes/flatsome/style.css\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","chau-cay","yes"),
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
("52","default_link_category","0","yes"),
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
("79","widget_text","a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:19:\"Th??ng tin showroom\";s:4:\"text\";s:484:\"<strong>Showroom H?? N???i</strong>\n\n- ?????a ch???: S??? 106 ng?? 72 Nguy???n Tr??i, Thanh Xu??n, HN\n\n- ??T: 0965962586 - 0948225879\n\n<strong>Showroom TP.HCM</strong>\n\n- ?????a ch???: S??? 30/10 D????ng Qu???ng H??m, P5, G?? V???p, Tp. HCM\n\n- ??T: 0941299699 - 0941628000\n\n<strong>Showroom H???i D????ng</strong>\n\n<span style=\"font-size: 90%;\">- ?????a ch???: S??? 170 B??i Th??? Xu??n, TP. H???i D????ng</span>\n\n<span style=\"font-size: 90%;\">- ??T: 0868801805</span>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}","yes"),
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
("94","gdd_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:2:{i:0;s:23:\"flatsome_recent_posts-2\";i:1;s:22:\"woocommerce_products-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:15:\"product-sidebar\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:15:{i:1557971483;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557972119;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557973165;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557975686;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557980287;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557982273;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1557993073;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1557996713;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558001965;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558001983;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558005057;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558051200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558057873;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("141","new_admin_email","webdemo@gmail.com","yes"),
("149","recently_activated","a:3:{s:23:\"wp-rocket/wp-rocket.php\";i:1557027670;s:30:\"db-prefix-change/db_prefix.php\";i:1557026689;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557025901;}","yes"),
("150","theme_mods_twentynineteen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551089997;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes"),
("151","current_theme","Ch???u c??y","yes"),
("152","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 25 Feb 2019 10:19:57 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551090032;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("153","theme_switched","","yes"),
("154","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:23:\"B??i vi???t - tin t???c\";s:6:\"number\";i:8;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("155","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("157","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("158","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("159","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("160","flatsome_wup_buyer","trannguyen886","yes"),
("161","envato_setup_complete","1551090039","yes"),
("163","allowedthemes","a:1:{s:8:\"chau-cay\";b:1;}","no"),
("164","fl_has_child_theme","chau-cay","yes"),
("166","theme_mods_chau-cay","a:185:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:1:{i:0;s:7:\"block-1\";}s:21:\"header_elements_right\";a:1:{i:0;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:11:\"top_bar_nav\";i:20;s:7:\"primary\";i:21;s:14:\"primary_mobile\";i:21;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Mon, 25 Feb 2019 10:20:34 +0000\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:10:\"type_texts\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"400\";}s:8:\"type_nav\";a:2:{s:11:\"font-family\";s:4:\"Lato\";s:7:\"variant\";s:3:\"700\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:19:\"flatsome_db_version\";s:5:\"3.8.0\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:1336:\"<style>\n.bottom-contact{display:none}\n@media  (max-width: 767px) {\n.bottom-contact{display: block;\n    position: fixed;\n    bottom: 0;\n    background: white;\n    width: 100%;\n    z-index: 99;\n    box-shadow: 2px 1px 9px #dedede;\n    border-top: 1px solid #eaeaea;}\n.bottom-contact ul li{width: 25%;\n    float: left;\n    list-style: none;\n    text-align: center; font-size:13.5px;}\n.bottom-contact ul li span{color:black}\n.bottom-contact ul li img{    width: 35px;\n    margin-top: 10px;\n    margin-bottom: 0px;}\n \n}\n</style>\n<div class=\"bottom-contact\">\n<ul>\n<li>\n<a id=\"goidien\" href=\"tel:0972939830\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-phone2.png\"/>\n<br>\n<span>G???i ??i???n</span>\n</a>\n</li>\n<li>\n<a id=\"nhantin\" href=\"sms:0972939830\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-sms2.png\"/>\n<br>\n<span>Nh???n tin</span>\n</a>\n</li>\n<li>\n<a id=\"chatzalo\" href=\"http://zaloapp.com/qr/p/3ur778onb9ak\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-zalo2.png\"/>\n<br>\n<span>Chat zalo</span>\n</a>\n</li>\n<li>\n<a id=\"chatfb\" href=\"https://www.messenger.com/t/demo\">\n<img src=\"http://tintuc4.webdemo.com/wp-content/uploads/2019/02/icon-mesenger2.png\"/>\n<br>\n<span>Chat Facebook</span>\n</a>\n</li>\n</ul>\n</div>\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:16522:\"@font-face {\n    font-family: \'Helvetica Neue\';\n    src: url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue-Medium.eot\');\n    src: url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue-Medium.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/chau-cay/fonts/HelveticaNeue-Medium.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/chau-cay/fonts/HelveticaNeue-Medium.woff\') format(\'woff\'),\n        url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue-Medium.ttf\') format(\'truetype\');\n    font-weight: 500;\n    font-style: normal;\n}\n\n@font-face {\n    font-family: \'Helvetica Neue\';\n    src: url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue-Light.eot\');\n    src: url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue-Light.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/chau-cay/fonts/HelveticaNeue-Light.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/chau-cay/fonts/HelveticaNeue-Light.woff\') format(\'woff\'),\n        url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue-Light.ttf\') format(\'truetype\');\n    font-weight: 300;\n    font-style: normal;\n}\n\n@font-face {\n    font-family: \'Helvetica Neue\';\n    src: url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue.eot\');\n    src: url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue.eot?#iefix\') format(\'embedded-opentype\'),\n        url(\'/wp-content/themes/chau-cay/fonts/HelveticaNeue.woff2\') format(\'woff2\'),\n        url(\'/wp-content/themes/chau-cay/fonts/HelveticaNeue.woff\') format(\'woff\'),\n        url(\'wp-content/themes/chau-cay/fonts/HelveticaNeue.ttf\') format(\'truetype\');\n    font-weight: normal;\n    font-style: normal;\n}\nbody{    word-wrap: break-word;}\nh1,h2,h3,h4,h5,h6{font-family: \'Helvetica Neue\';\n    font-weight: 500;}\nbody, .nav > li > a{font-family: \'Helvetica Neue\';\n    font-weight: normal;\n    font-style: normal;}\n.header-nav li{margin:0}\n.header-nav li a{padding:17px 15px}\n.header-nav li a:hover, .header-nav li.active a{background:white; color:black !important}\n.nav>li.html, .top-bar-nav li a{font-size: 15px !important}\n.searchform input[type=\'search\']{    font-size: 16px;\n    height: 45px;\n    box-shadow: 0px 0px 0px grey;}.header-bottom {\n    border-top: 1px solid #f0f4f5;\n}\n.searchform .button:hover{box-shadow:0px 0px 0px gray}\n.searchform .button{    border-top-right-radius: 4px;\n    border-bottom-right-radius: 4px;}\n.blog-single .large-3 #secondary, .blog-archive .large-3 #secondary, .page-right-sidebar .large-3 #secondary{border-radius:4px; background:white; padding: 15px;}\n\n.devvn-popup-title, .popup-customer-info-group .devvn-order-btn, a.devvn_buy_now_style{background: #009911;\n    background: -moz-linear-gradient(top,#c69a39 0%,#c19a4b 100%);\n    background: -webkit-linear-gradient(top,#009911 0%,#009911 100%);\n    background: linear-gradient(to bottom,#009911 0%,#009911 100%);}\na.devvn_buy_now_style{max-width:100%}\ninput[type=\'tel\'], input[type=\'text\'], textarea{border-radius:4px; box-shadow:0px 0px 0px gray}\n.page-right-sidebar .button span{font-weight:normal}\n.wpcf7 input[type=\'submit\']{font-weight: normal;\n    border-radius: 38px;\n    text-transform: none;}\n.blog-single .large-9 .article-inner,.page-right-sidebar .page-inner {background:white; border-radius:4px; padding:20px}.page-wrapper {\n    padding-top: 20px;\n    padding-bottom: 20px;\n}select.resize-select {\n    border-top-left-radius: 4px;\n    border-bottom-left-radius: 4px;\n}\n.blog-single .entry-meta{text-transform: none;\n    font-size: 15px;\n    color: gray;\n    letter-spacing: 0;}\n#comments .comment-respond {border-radius:4px;\n    background-color: rgb(255, 255, 255);\n    margin-top: 0;\n    padding: 20px 20px 0;\n}.post {\n    margin: 0 0 20px;\n}\n.blog-single .blog-share{text-align:left}\n.blog-single h2{font-size:20px}\n.blog-single h3{font-size:18px}\n.blog-single h4{font-size:16px}\n.blog-single h5{font-size:15px; font-weight:500}\n.blog-single .entry-content{padding-top:0; padding-bottom:0}\n\n.blog-single .large-9, .blog-archive .large-9, .page-right-sidebar .large-9{padding-bottom:0; flex-basis:73%; max-width:73%; padding-right:20px}\nspan.widget-title{letter-spacing: 0;\n    font-weight: 500;\n    text-transform: none;\n    font-size: 20px;\n    color: black;}\n.blog-archive .page-title {text-align:left;\n    position: relative;\n    \n    letter-spacing: 0;\n    text-transform: none;\n    font-size: 22px;\n}\n\n.archive .product-small.box .box-text{padding-left:0; padding-right:0; padding-bottom:8px}\n.product_meta>span {\n    font-size: 15px;\n   }\n.single-product .product-main {\n    padding: 20px 0;\n    background: #f8f8f8;\n}\n.product-info .breadcrumbs {\n    font-size: 14px;\n    text-transform: none;\n}\n.single-product .product-short-description{font-size:14px}\n.single-product .woocommerce-Price-amount{font-size:22px; font-weight:500; color:#e05757}\n.single-product .product-title{font-size:22px}\n.single-product .cart{margin-bottom:0px}\n.product-footer .woocommerce-tabs{padding-bottom:0 !important}\n.related .product-section-title{    margin-bottom: 0;\n    margin-left: 0;\n    text-transform: none;\n    letter-spacing: 0;\n    font-size: 22px;}\n.single-product .product-footer .product-tabs li{margin: 0 12px !important}\n.single-product .product-footer .product-tabs li a{    font-size: 18px;\n    color: black;\n    text-transform: none;\n    letter-spacing: 0;\n    font-weight: 500;}\n.single-product .single_add_to_cart_button{margin-bottom: 0;\n    font-weight: 500;\n    border-radius: 4px;\n    background: #8cc63f !important;}\n.single-product .product-info{padding-left:0 !important}\n.single-product .product-gallery, .single-product .product-info{background: white;\n    padding: 15px;}\n.nav-pagination>li>a{border: 0 !important;\n    background: #cfcfcf;\n    color: white !important;}\n.archive .product-small.col{padding: 0 4.8px 9.6px;}\n.archive .box.product-small{background: white;\n    padding: 10px;\n    border-radius: 4px;}\n.archive #main{background:#fafafa}\n.blog-archive .post-item .post-title{font-size:20px;}\n.dark .breadcrumbs {\n    color: #fff;\n    font-weight: 300;\n    text-transform: none;\n    font-size: 15px;\n}\n.blog-archive .post-item{padding-bottom:20px}\n.blog-archive .post-item .col-inner{background:white; border-radius:4px}\nul.product_list_widget li img{border-radius:99%}\n.product_list_widget li .woocommerce-Price-amount{font-weight:500; color:#da6476}\n.blog-single .entry-category a{letter-spacing:0}\n.blog-archive .archive-page-header .large-12{padding-bottom:20px}\n.blog-archive .taxonomy-description p{margin-bottom:8px}\n.blog-archive .taxonomy-description{text-align: left;\n    background: white;\n    padding: 15px;\n    border-radius: 4px;}\n.blog-archive .large-9 .post-item .col-inner:hover{box-shadow:2px 4px 10px #f0f0f0}\n.flatsome_recent_posts li .badge .badge-inner{border-radius:99%}\n.blog-single .article-inner a{color:#8cc63f}\n.blog-archive .large-9 .post-item .box-image img{border-top-left-radius:4px; border-bottom-left-radius:4px}\n.blog-single .is-divider, .blog-archive .large-9 .post-item .badge{display:none}\n.page-right-sidebar .large-9{border-right:0}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3{flex-basis:27%; max-width:27%; padding-left:0; padding-bottom:0}\n.blog-single, .blog-archive, .page-right-sidebar{   background: rgb(250, 250, 250);}\n.footer-section{padding-bottom:20px !important}\n.slider-section, .tin-tuc .col, .footer-section .col{padding-bottom:0 !important}\n.header-button a:hover{color:white}\n.header-button a{padding: 0px 10px !important;\n    font-weight: 500;}\n.slider-section .medium-4 .img{margin-bottom:20px}\n.row-sp .box.product-small, .related .box.product-small{border: 1px solid #f1f1f1;\n    border-radius: 10px;\n    background: white;\n    padding: 10px;}\n.row-sp .box.product-small .price-wrapper del span, .row-sp .box.product-small .price-wrapper .price span, .archive .box.product-small .price del span, .archive .box.product-small .price span, .related .box.product-small .price span{    font-size: 19px;\n    color: #da6476; font-weight:normal}\n\n.row-sp .box.product-small .price-wrapper del span{color:red; font-size:18px}\n.row-sp .box.product-small .product-title a, .archive .product-small.box .product-title a, .related .box.product-small .product-title a{font-size: 15px;font-weight: 500;\n    color: #59881b; margin-bottom:6px}\n.slider-section .col{padding-bottom:0 !important}\n.row-sp .large-12{padding-bottom:0}\n.section-title-container span{text-transform:none} .section-title-container { \n    margin-bottom: 5px;\n}.flickity-prev-next-button svg, .flickity-prev-next-button .arrow {\n    border-color: currentColor;\n    fill: #8cc63f;\n    transition: all 0.3s;\n    background: white;\n    border-radius: 99%;\n}.flickity-prev-next-button svg, .flickity-prev-next-button .arrow {\n    border-color: currentColor;\n    fill: #8cc63f;\n    transition: all 0.3s;\n    background: white;\n    border-radius: 99%;\n}.slider-nav-push:not(.slider-nav-reveal) .flickity-prev-next-button {\n    margin-top: -3%;\n}\n.row-sp .row-small>.flickity-viewport>.flickity-slider>.col, .row-sp .large-columns-5 .col {padding-left:4px; padding-right:4px}\n.tin-tuc .post-item .box-text .post-title:hover{color:#ff8c00}\n.tin-tuc .post-item .box-image img{border-radius:8px}\n.row-sp .box.product-small:hover{box-shadow:2px 2px 10px #e5e5e5}\n .widget .textwidget p strong{font-size: 16px;\n    color: #00b214;}\n .widget .textwidget p{    font-size: 14px;\n    margin-bottom: 10px;\n    line-height: 19px;}\n #product-sidebar{    padding-left: 20px;\n    background: white;\n    padding: 15px;\n    word-wrap: break-word;}\n.archive .widget {\n    margin-bottom: 1.5em;\n    background: white;\n    padding: 15px;\n}.widget .current-cat>a {\n    color: #00b214;\n    font-weight: 500;\n}\n.row-sp .box.product-small .box-text .add-to-cart-button a, .archive .product-small.box .box-text .add-to-cart-button a, .related .box.product-small .box-text .add-to-cart-button a{border-radius: 4px;\n    font-weight: normal;\n    padding: 0px 15px;\n    text-transform: none;\n    font-size: 14px;}\n.row-sp .box.product-small .box-text, .related .box.product-small .box-text{padding-bottom:5px; padding-left:0; padding-right:0; padding-top:10px}\n.footer-section{border-top:1px solid #f7f7f7}\nb,strong{font-weight:500}\n\n.section-title a {\n    font-size: 15px;\n    font-weight: normal;\n    background: #ff9401;\n    padding: 4px 10px;\n    border-radius: 4px;\n    color: #ffffff;\n}\n.slider-section .icon-box h4{margin-bottom:0;    color: #ff8c00;}\n.slider-section .icon-box{border: 1px dashed #8cc63f;\n    padding: 5px;\n    border-radius: 4px;}\n.section-title a:hover{background:#ff8c00; color:white}\n.form-dien-thoai{margin-top:12px; background: #091;\n    padding: 15px;\n    border-radius: 5px;}\n.form-dien-thoai .form-sdt{display: inline-block;\n    width: 100%;}\n.form-dien-thoai .form-sdt .left{    float: left;\n    width: 85%; display:inline-block}\n.form-dien-thoai .wpcf7 input[type=\'submit\']{border-radius:0 !important;text-align: left;\n    margin: 0;\n    padding: 0 10px;}\n.search_categories{    font-size: 15px;\n    height: 45px;}\n.hotline-tu-van strong{color:red}\n.hotline-tu-van{background: #fffdf8;\n    padding: 10px;\n    font-size: 15px;\n    color: #464646;\n    border: 1px dashed orange;}\n.form-dien-thoai form{margin-bottom:0}\n.form-dien-thoai input[type=\'tel\']{margin-bottom:0; border-radius:0; box-shadow:0px 0px 0px}\n.form-dien-thoai .form-sdt .right{width:15%; float:left; display:inline-block}\n.form-dien-thoai label{background: url(/wp-content/uploads/2019/02/icon-phone.png) left top no-repeat;\n    padding: 0 5px 0 52px;\n    margin: 0px;\n    text-align: left;\n    font-weight: 400;\n    font-size: 14px;\n    color: white;\n    margin-bottom: 11px;}\na.nut-mua-buon{     margin-bottom: 10px;   border-radius: 4px !important;\n    font-weight: normal;\n    font-size: 15px;\n    background-color: orange !important;}\n.contact-button .col{padding-bottom:0}\na.hotline-button{     margin-bottom: 10px;   border-radius: 4px !important;\n    background-color: #d70000 !important;\n    font-weight: normal;\n    font-size: 15px;}\na.chat-zalo{border-radius: 4px !important;\n    margin-bottom: 0;\n    background-color: #00abff !important;\n    font-weight: normal;\n    font-size: 15px;}\na.chat-facebook{margin-bottom: 0;\n    border-radius: 4px !important;\n    background-color: #21569a !important;\n    font-weight: normal;\n    font-size: 15px;}\na.devvn_buy_now_style:hover, a.devvn_buy_now_style:focus{    background: #00b214;\n    background: -webkit-gradient(linear,0% 0%,0% 100%,from(#00b214),to(#00b214));\n    background: -webkit-linear-gradient(top,#00b214,#00b214);}\n#mega-menu-title {\n    padding: 16px 0 10px 15px;\n       font-weight: 700;\n    color: #fff;\n   \n    background: #00b214;\n}\n#mega_menu > li:hover > a {\n    background: #7bbf28;\n    color: white !important;\n}\n#mega_menu li a{padding: 9px 15px;font-size:15px}.header-bottom-nav.nav > li > a{text-transform: none;\n    font-size: 17px;}\n#wide-nav > .flex-row > .flex-left{min-width: 285px;} #mega_menu > li > a {\n    position: relative;\n    padding-left: 10px;\n}.menu-item i._before{margin-right: 10px;}\n.devvn_readmore_taxonomy_flatsome a{    margin-bottom: 15px;}\n.tax-product_cat.woocommerce .shop-container .term-description{margin-bottom: 20px;\n    background: white;\n    padding: 15px;}\na.devvn_buy_now_style{margin: 0 0 10px;}\n.kk-star-ratings.rgt{display:none}\n.tax-product_cat.woocommerce .shop-container .term-description {\n            overflow: hidden;\n            position: relative;\n            margin-bottom: 20px;\n        }\n        .devvn_readmore_taxonomy_flatsome {\n            text-align: center;\n            cursor: pointer;\n            position: absolute;\n            z-index: 9999;\n            bottom: 0;\n            width: 100%;\n            background: #fff;\n        }\n        .devvn_readmore_taxonomy_flatsome:before {\n            height: 55px;\n            margin-top: -45px;\n            content: -webkit-gradient(linear,0% 100%,0% 0%,from(#fff),color-stop(.2,#fff),to(rgba(255,255,255,0)));\n            display: block;\n        }\n        .devvn_readmore_taxonomy_flatsome a {\n            color: #318A00;\n            display: block;\n        }\n        .devvn_readmore_taxonomy_flatsome a:after {\n            content: \'\';\n            width: 0;\n            right: 0;\n            border-top: 6px solid #318A00;\n            border-left: 6px solid transparent;\n            border-right: 6px solid transparent;\n            display: inline-block;\n            vertical-align: middle;\n            margin: -2px 0 0 5px;\n        }\n        .single-product div#tab-description {\n            overflow: hidden;\n            position: relative;\n        }\n        .single-product .tab-panels div#tab-description.panel:not(.active) {\n            height: 0 !important;\n        }\n        .devvn_readmore_flatsome {\n            text-align: center;\n            cursor: pointer;\n            position: absolute;\n            z-index: 9999;\n            bottom: 0;\n            width: 100%;\n            background: #fff;\n        }\n        .devvn_readmore_flatsome:before {\n            height: 55px;\n            margin-top: -45px;\n            content: -webkit-gradient(linear,0% 100%,0% 0%,from(#fff),color-stop(.2,#fff),to(rgba(255,255,255,0)));\n            display: block;\n        }\n        .devvn_readmore_flatsome a {\n            color: #318A00;\n            display: block;\n        }\n        .devvn_readmore_flatsome a:after {\n            content: \'\';\n            width: 0;\n            right: 0;\n            border-top: 6px solid #318A00;\n            border-left: 6px solid transparent;\n            border-right: 6px solid transparent;\n            display: inline-block;\n            vertical-align: middle;\n            margin: -2px 0 0 5px;\n        }\n.mua-hang-nhanh-mobile a.devvn_buy_now_style{display:none}\n.archive .page-title-inner{padding-bottom:20px}\n.breadcrumbs {\n    text-transform: none;\n  \n    font-weight: normal;\n\n}\n.woocommerce-input-wrapper input{margin-bottom:0}\nform.checkout h3{\n    text-transform: none;\n    font-weight: normal;\n}\n.message-container a{color: #00b214}\n.woocommerce-billing-fields__field-wrapper .form-row label, #customer_details label{font-weight:normal !important; color: #00b214 !important}\n.widget_shopping_cart .button{padding:0 15px; font-weight:normal;}\n.widget_shopping_cart .remove {padding: 0 !important;}\n.address-field{width:100% !important}\n.woocommerce-checkout-payment .button{font-weight: normal;\n    text-transform: none;\n    border-radius: 4px;}\ninput[type=\'radio\']+label{color: #00b214;\n    font-weight: 500;}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:1259:\".blog-single .large-3, .blog-archive .large-3, .blog-single .large-9, .blog-archive .large-9{flex-basis:100%; max-width:100%;}\n.blog-single .large-9, .blog-archive .large-9{padding-right:15px}\n.nav-small.nav>li.html{text-align:center}\n.header-search-form-wrapper .button.secondary:not(.is-outline){height: 45px;}\n.slider-section .cot4, .blog-archive .post-item .from_the_blog_excerpt, .box-blog-post .is-divider {display:none}\n.recent-blog-posts a, ul.product_list_widget li a{font-size:15px}\n\n.slider-section .icon-box{margin-top:10px}\n.row-sp .box.product-small .product-title a, .archive .product-small.box .product-title a, .related .box.product-small .product-title a{font-size:14px}\n.blog-single .large-3, .blog-archive .large-3, .page-right-sidebar .large-3{padding-left:15px}\n.blog-archive .post-item .post-title{font-size:15px}\n.blog-archive .post-item:nth-child(2n+2){padding-left:7px}\n.blog-archive .post-item:nth-child(2n+1){padding-right:7px}\n.blog-archive .post-item .box-text{padding:10px}\n.blog-archive .post-item{flex-basis:50%; max-width:50%}\n.single-product .product-info{padding-left:15px !important}\n.mua-hang-nhanh-mobile a.devvn_buy_now_style{display:block !important}\na.devvn_buy_now_style{display:none}\na.chat-zalo{margin-bottom:10px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:27:\"T??m ki???m s???n ph???m...\";s:15:\"flatsome_studio\";s:1:\"0\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";s:1:\"0\";s:12:\"fl_portfolio\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:4:\"1200\";s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"253\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"30\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:7:\"#86c900\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:3:\"100\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:7:\"#ffffff\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:0:\"\";s:8:\"nav_size\";s:6:\"medium\";s:13:\"nav_uppercase\";b:0;s:14:\"type_nav_color\";s:7:\"#ffffff\";s:20:\"type_nav_color_hover\";s:0:\"\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"50\";s:15:\"nav_position_bg\";s:7:\"#00b214\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:6:\"xlarge\";s:20:\"nav_uppercase_bottom\";b:0;s:18:\"nav_position_color\";s:4:\"dark\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:13:\"color_primary\";s:7:\"#00b214\";s:15:\"color_secondary\";s:7:\"#ff8c00\";s:11:\"color_texts\";s:7:\"#3f3f3f\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#0a0a0a\";s:17:\"color_links_hover\";s:7:\"#ff8c00\";s:18:\"color_widget_links\";s:7:\"#0a0a0a\";s:24:\"color_widget_links_hover\";s:7:\"#00b214\";s:9:\"site_logo\";s:77:\"https://bizhostvn.com/w/chaucay/wp-content/uploads/2019/02/logo-chau-canh.png\";s:11:\"topbar_left\";s:69:\"Ch??o m???ng b???n ?????n v???i web b??n ch???u c???nh c???a Webdemo!\";s:9:\"cart_icon\";s:3:\"bag\";s:17:\"header_cart_total\";b:0;s:15:\"cart_icon_style\";s:4:\"fill\";s:14:\"header_divider\";b:0;s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:11:\"nav_spacing\";s:6:\"xlarge\";s:17:\"nav_height_bottom\";s:2:\"16\";s:18:\"nav_spacing_bottom\";s:6:\"xlarge\";s:12:\"logo_padding\";s:1:\"0\";s:14:\"header-block-1\";s:12:\"header-block\";s:16:\"category_sidebar\";s:4:\"none\";s:27:\"category_force_image_height\";b:1;s:18:\"category_row_count\";s:1:\"5\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:20:\"category_title_style\";s:8:\"featured\";s:19:\"category_show_title\";b:1;s:27:\"category_header_transparent\";b:0;s:21:\"category_image_height\";s:3:\"100\";s:20:\"header_shop_bg_image\";s:73:\"https://bizhostvn.com/w/chaucay/wp-content/uploads/2019/02/bg-product.jpg\";s:20:\"header_shop_bg_color\";s:19:\"rgba(88,170,0,0.71)\";s:20:\"header_height_sticky\";s:2:\"50\";s:13:\"header_sticky\";b:0;s:17:\"nav_height_sticky\";s:2:\"50\";s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"4\";s:21:\"product_title_divider\";b:0;s:19:\"product_sticky_cart\";b:0;s:18:\"product_info_align\";s:4:\"left\";s:18:\"cart_dropdown_show\";b:1;s:23:\"related_products_pr_row\";s:1:\"5\";s:20:\"max_related_products\";s:2:\"15\";s:15:\"breadcrumb_size\";s:6:\"medium\";s:9:\"cat_style\";s:6:\"normal\";s:10:\"grid_style\";s:5:\"grid2\";s:13:\"product_hover\";s:4:\"zoom\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:17:\"add_to_cart_style\";s:4:\"flat\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:12:\"footer-block\";s:16:\"footer_left_text\";s:193:\"Copyright [ux_current_year] ?? <strong><a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a></strong>. Thi???t k??? web b???i <a href=\"https://Webdemo.com\" target=\"blank\">Webdemo.com</a>\";s:19:\"footer_bottom_align\";s:6:\"center\";s:19:\"footer_bottom_color\";s:7:\"#ffffff\";s:18:\"footer_bottom_text\";s:5:\"light\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:6:\"square\";s:18:\"blog_style_archive\";s:4:\"list\";s:23:\"blog_single_header_meta\";b:1;s:26:\"blog_single_featured_image\";b:0;s:23:\"blog_single_footer_meta\";b:1;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:0;s:16:\"products_pr_page\";s:2:\"50\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:18:\"product_tabs_align\";s:6:\"center\";s:9:\"tab_title\";s:22:\"Th??ng tin thanh to??n\";s:11:\"tab_content\";s:279:\"<h3>Th??ng tin thanh to??n</h3>\n<strong>Ng??n h??ng Vietcombank:</strong>\n<p>- DEMO</br> - STK: 0691000374599 </br> - Ng??n h??ng Vietcombank H?? T??y</p>\n<strong>Ng??n h??ng Agribank:</strong>\n<p>- DEMO</br> - STK: 2000206180703</br> - Ng??n h??ng Agribank ???? N???ng</p>\n\";s:15:\"product_display\";s:9:\"line-grow\";s:13:\"search_result\";s:1:\"1\";s:24:\"search_products_order_by\";s:9:\"relevance\";s:13:\"search_by_sku\";s:1:\"0\";s:21:\"search_by_product_tag\";s:1:\"0\";s:15:\"disable_reviews\";s:1:\"0\";s:27:\"product_gallery_woocommerce\";s:1:\"0\";s:14:\"html_shop_page\";s:0:\"\";s:23:\"html_before_add_to_cart\";s:1:\" \";s:22:\"html_after_add_to_cart\";s:0:\"\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";s:1:\"0\";s:19:\"catalog_mode_prices\";s:1:\"0\";s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";s:1:\"0\";s:27:\"infinite_scroll_loader_type\";s:7:\"spinner\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";}","yes"),
("169","db_upgraded","","yes"),
("176","can_compress_scripts","0","no"),
("188","woocommerce_store_address","T???ng 2, S??? 29 ng?? 18 L????ng Ng???c Quy???n, V??n Qu??n, H?? ????ng, T???p th??? ?????i h???c S?? ph???m Ngh??? thu???t Trung ????ng","yes"),
("189","woocommerce_store_address_2","","yes"),
("190","woocommerce_store_city","Ha Noi","yes"),
("191","woocommerce_default_country","VN","yes"),
("192","woocommerce_store_postcode","100000","yes"),
("193","woocommerce_allowed_countries","all","yes"),
("194","woocommerce_all_except_countries","a:0:{}","yes"),
("195","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("196","woocommerce_ship_to_countries","","yes"),
("197","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("198","woocommerce_default_customer_address","geolocation","yes"),
("199","woocommerce_calc_taxes","no","yes"),
("200","woocommerce_enable_coupons","yes","yes"),
("201","woocommerce_calc_discounts_sequentially","no","no"),
("202","woocommerce_currency","VND","yes"),
("203","woocommerce_currency_pos","right","yes"),
("204","woocommerce_price_thousand_sep",".","yes"),
("205","woocommerce_price_decimal_sep",".","yes"),
("206","woocommerce_price_num_decimals","0","yes"),
("207","woocommerce_shop_page_id","16","yes"),
("208","woocommerce_cart_redirect_after_add","no","yes"),
("209","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("210","woocommerce_placeholder_image","531","yes"),
("211","woocommerce_weight_unit","kg","yes"),
("212","woocommerce_dimension_unit","cm","yes"),
("213","woocommerce_enable_reviews","yes","yes"),
("214","woocommerce_review_rating_verification_label","yes","no"),
("215","woocommerce_review_rating_verification_required","no","no"),
("216","woocommerce_enable_review_rating","yes","yes"),
("217","woocommerce_review_rating_required","yes","no"),
("218","woocommerce_manage_stock","yes","yes"),
("219","woocommerce_hold_stock_minutes","60","no"),
("220","woocommerce_notify_low_stock","yes","no"),
("221","woocommerce_notify_no_stock","yes","no"),
("222","woocommerce_stock_email_recipient","webdemo@gmail.com","no"),
("223","woocommerce_notify_low_stock_amount","2","no"),
("224","woocommerce_notify_no_stock_amount","0","yes"),
("225","woocommerce_hide_out_of_stock_items","no","yes"),
("226","woocommerce_stock_format","","yes"),
("227","woocommerce_file_download_method","force","no"),
("228","woocommerce_downloads_require_login","no","no"),
("229","woocommerce_downloads_grant_access_after_payment","yes","no"),
("230","woocommerce_prices_include_tax","no","yes"),
("231","woocommerce_tax_based_on","shipping","yes"),
("232","woocommerce_shipping_tax_class","inherit","yes"),
("233","woocommerce_tax_round_at_subtotal","no","yes"),
("234","woocommerce_tax_classes","Gi???m t??? l???\nT??? l??? r???ng","yes"),
("235","woocommerce_tax_display_shop","excl","yes"),
("236","woocommerce_tax_display_cart","excl","yes"),
("237","woocommerce_price_display_suffix","","yes"),
("238","woocommerce_tax_total_display","itemized","no"),
("239","woocommerce_enable_shipping_calc","yes","no"),
("240","woocommerce_shipping_cost_requires_address","no","yes"),
("241","woocommerce_ship_to_destination","billing","no"),
("242","woocommerce_shipping_debug_mode","no","yes"),
("243","woocommerce_enable_guest_checkout","yes","no"),
("244","woocommerce_enable_checkout_login_reminder","no","no"),
("245","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("246","woocommerce_enable_myaccount_registration","no","no"),
("247","woocommerce_registration_generate_username","yes","no"),
("248","woocommerce_registration_generate_password","yes","no"),
("249","woocommerce_erasure_request_removes_order_data","no","no"),
("250","woocommerce_erasure_request_removes_download_data","no","no"),
("251","woocommerce_registration_privacy_policy_text","Th??ng tin c?? nh??n c???a b???n s??? ???????c s??? d???ng ????? t??ng tr???i nghi???m s??? d???ng website, qu???n l?? truy c???p v??o t??i kho???n c???a b???n, v?? cho c??c m???c ????ch c??? th??? kh??c ???????c m?? t??? trong [privacy_policy].","yes"),
("252","woocommerce_checkout_privacy_policy_text","Th??ng tin c?? nh??n c???a b???n s??? ???????c s??? d???ng ????? x??? l?? ????n h??ng, t??ng tr???i nghi???m s??? d???ng website, v?? cho c??c m???c ????ch c??? th??? kh??c ???? ???????c m?? t??? trong [privacy_policy].","yes"),
("253","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("254","woocommerce_trash_pending_orders","","no"),
("255","woocommerce_trash_failed_orders","","no"),
("256","woocommerce_trash_cancelled_orders","","no"),
("257","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no");
INSERT INTO gdd_options VALUES
("258","woocommerce_email_from_name","M???u website b??n ch???u c??y c???nh &#8211; Webdemo","no"),
("259","woocommerce_email_from_address","webdemo@gmail.com","no"),
("260","woocommerce_email_header_image","","no"),
("261","woocommerce_email_footer_text","{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("262","woocommerce_email_base_color","#96588a","no"),
("263","woocommerce_email_background_color","#f7f7f7","no"),
("264","woocommerce_email_body_background_color","#ffffff","no"),
("265","woocommerce_email_text_color","#3c3c3c","no"),
("266","woocommerce_cart_page_id","17","yes"),
("267","woocommerce_checkout_page_id","18","yes"),
("268","woocommerce_myaccount_page_id","19","yes"),
("269","woocommerce_terms_page_id","","no"),
("270","woocommerce_force_ssl_checkout","no","yes"),
("271","woocommerce_unforce_ssl_checkout","no","yes"),
("272","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("273","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("274","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("275","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("276","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("277","woocommerce_myaccount_orders_endpoint","orders","yes"),
("278","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("279","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("280","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("281","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("282","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("283","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("284","woocommerce_logout_endpoint","customer-logout","yes"),
("285","woocommerce_api_enabled","no","yes"),
("286","woocommerce_single_image_width","600","yes"),
("287","woocommerce_thumbnail_image_width","300","yes"),
("288","woocommerce_checkout_highlight_required_fields","yes","yes"),
("289","woocommerce_demo_store","no","no"),
("290","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:23:\"/san-pham/%product_cat%\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}","yes"),
("291","current_theme_supports_woocommerce","yes","yes"),
("292","woocommerce_queue_flush_rewrite_rules","no","yes"),
("295","default_product_cat","15","yes"),
("299","woocommerce_db_version","3.5.5","yes"),
("300","woocommerce_admin_notices","a:2:{i:0;s:6:\"update\";i:1;s:14:\"template_files\";}","yes"),
("302","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("303","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("304","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("305","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("306","widget_woocommerce_product_categories","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("307","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_woocommerce_products","a:2:{i:2;a:7:{s:5:\"title\";s:18:\"S???n ph???m m???i\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("310","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("311","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("312","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("313","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("314","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("321","woocommerce_meta_box_errors","a:0:{}","yes"),
("327","woocommerce_product_type","physical","yes"),
("328","woocommerce_sell_in_person","1","yes"),
("329","woocommerce_allow_tracking","no","yes"),
("330","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("331","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("332","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("360","classic-editor-replace","classic","yes"),
("361","classic-editor-allow-users","disallow","yes"),
("372","product_cat_children","a:0:{}","yes"),
("376","woocommerce_maybe_regenerate_images_hash","991b1ca641921cf0f5baf7a2fe85861b","yes"),
("392","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("903","category_children","a:0:{}","yes"),
("909","woocommerce_shop_page_display","both","yes"),
("910","woocommerce_category_archive_display","subcategories","yes"),
("977","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1551121463;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("991","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:8:\"Mua ngay\";s:12:\"button_text2\";s:51:\"G???i ??i???n x??c nh???n v?? giao h??ng t???n n??i\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"?????t mua %s\";s:10:\"popup_mess\";s:143:\"B???n vui l??ng nh???p ????ng s??? ??i???n tho???i ????? ch??ng t??i s??? g???i x??c nh???n ????n h??ng tr?????c khi giao h??ng. Xin c???m ??n!\";s:12:\"popup_sucess\";s:642:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">?????t h??ng th??nh c??ng!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">M?? ????n h??ng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">GIUSEART s??? li??n h??? v???i b???n trong 12h t???i. C??m ??n b???n ???? cho ch??ng t??i c?? h???i ???????c ph???c v???.\n<strong>Hotline:</strong> 0972939830</p>\n<p class=\"clearfix\"><strong>Ghi ch??: </strong>????n h??ng ch??? c?? hi???u l???c trong v??ng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"?????t h??ng th???t b???i. Vui l??ng ?????t h??ng l???i. Xin c???m ??n!\";s:17:\"out_of_stock_mess\";s:12:\"H???t h??ng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("1390","duplicator_pro_package_active","{\"Created\":\"2019-03-04 05:21:04\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"5.1\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.33\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190304_mauwebsitebanchaucaycanhn\",\"Hash\":\"b69a9c625c56c1f54865_20190304052104\",\"NameHash\":\"20190304_mauwebsitebanchaucaycanhn_b69a9c625c56c1f54865_20190304052104\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/tppone.com\\/demo\\/chaucay\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190304_mauwebsitebanchaucaycanhn_b69a9c625c56c1f54865_20190304052104_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/backups-dup-pro\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\",\"Size\":109047698,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/ai1wm-backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/backupwordpress\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/content\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/contents\\/cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/managewp\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/old-cache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/updraft\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/wishlist-backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/wfcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"ch\\u1eadu-g\\u1ed1m-nh\\u1eadp-kh\\u1ea9u-100x100.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/2019\\/02\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/2019\\/02\\/ch\\u1eadu-g\\u1ed1m-nh\\u1eadp-kh\\u1ea9u-100x100.jpg\"},{\"name\":\"ch\\u1eadu-g\\u1ed1m-nh\\u1eadp-kh\\u1ea9u-150x150.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/2019\\/02\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/2019\\/02\\/ch\\u1eadu-g\\u1ed1m-nh\\u1eadp-kh\\u1ea9u-150x150.jpg\"},{\"name\":\"ch\\u1eadu-g\\u1ed1m-nh\\u1eadp-kh\\u1ea9u.jpg\",\"dir\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/2019\\/02\",\"path\":\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-content\\/uploads\\/2019\\/02\\/ch\\u1eadu-g\\u1ed1m-nh\\u1eadp-kh\\u1ea9u.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/.htaccess\",\"\\/home\\/tppone\\/domains\\/tppone.com\\/public_html\\/demo\\/chaucay\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web60\",\"tablesBaseCount\":30,\"tablesFinalCount\":30,\"tablesRowCount\":1812,\"tablesSizeOnDisk\":4964352,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1407","duplicator_pro_ui_view_state","a:1:{s:28:\"dup-settings-diag-opts-panel\";s:1:\"1\";}","yes"),
("1938","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1958","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdemo@gmail.com\";s:7:\"version\";s:5:\"5.1.1\";s:9:\"timestamp\";i:1556960317;}","no"),
("1969","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1970","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("2010","dbprefix_old_dbprefix","cc_","yes"),
("2011","dbprefix_new","gdd_","yes"),
("2043","_transient_timeout_wc_low_stock_count","1559620334","no"),
("2044","_transient_wc_low_stock_count","0","no"),
("2045","_transient_timeout_wc_outofstock_count","1559620334","no"),
("2046","_transient_wc_outofstock_count","0","no"),
("2103","_transient_shipping-transient-version","1557132311","yes"),
("2108","_transient_timeout_wc_shipping_method_count_1_1557132311","1559725434","no"),
("2109","_transient_wc_shipping_method_count_1_1557132311","0","no"),
("2131","recovery_keys","a:0:{}","yes"),
("2197","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("2200","woocommerce_allow_bulk_remove_personal_data","no","no"),
("2201","woocommerce_show_marketplace_suggestions","yes","no"),
("2202","woocommerce_version","3.6.2","yes"),
("2204","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("2209","_transient_timeout_wc_shipping_method_count_legacy","1560046470","no"),
("2210","_transient_wc_shipping_method_count_legacy","a:2:{s:7:\"version\";s:10:\"1557132311\";s:5:\"value\";i:0;}","no"),
("2211","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557972092;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("2216","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557972092;s:7:\"checked\";a:5:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no"),
("2217","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557972090;s:7:\"checked\";a:2:{s:8:\"chau-cay\";s:3:\"3.0\";s:8:\"flatsome\";s:5:\"3.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("2273","_site_transient_timeout_theme_roots","1557973889","no"),
("2274","_site_transient_theme_roots","a:2:{s:8:\"chau-cay\";s:7:\"/themes\";s:8:\"flatsome\";s:7:\"/themes\";}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1846 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("29","1","_edit_lock","1551091983:1"),
("30","20","_wp_attached_file","2019/02/ch???u-g???m-nh???p-kh???u.jpg"),
("31","20","_wp_attachment_metadata","a:5:{s:5:\"width\";i:247;s:6:\"height\";i:247;s:4:\"file\";s:38:\"2019/02/ch???u-g???m-nh???p-kh???u.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"ch???u-g???m-nh???p-kh???u-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"ch???u-g???m-nh???p-kh???u-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"ch???u-g???m-nh???p-kh???u-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("32","21","_wp_attached_file","2019/02/chau-gom-su.jpg"),
("33","21","_wp_attachment_metadata","a:5:{s:5:\"width\";i:247;s:6:\"height\";i:247;s:4:\"file\";s:23:\"2019/02/chau-gom-su.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"chau-gom-su-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"chau-gom-su-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"chau-gom-su-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("34","22","_wp_attached_file","2019/02/chau-gom-dat-nung.jpg"),
("35","22","_wp_attachment_metadata","a:5:{s:5:\"width\";i:247;s:6:\"height\";i:247;s:4:\"file\";s:29:\"2019/02/chau-gom-dat-nung.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"chau-gom-dat-nung-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"chau-gom-dat-nung-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"chau-gom-dat-nung-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("36","23","_wp_attached_file","2019/02/chau-thuy-tinh.jpg"),
("37","23","_wp_attachment_metadata","a:5:{s:5:\"width\";i:247;s:6:\"height\";i:247;s:4:\"file\";s:26:\"2019/02/chau-thuy-tinh.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"chau-thuy-tinh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"chau-thuy-tinh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"chau-thuy-tinh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("38","24","_wp_attached_file","2019/02/cac-loai-chau-khac.jpg"),
("39","24","_wp_attachment_metadata","a:5:{s:5:\"width\";i:247;s:6:\"height\";i:247;s:4:\"file\";s:30:\"2019/02/cac-loai-chau-khac.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cac-loai-chau-khac-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"cac-loai-chau-khac-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"cac-loai-chau-khac-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("40","25","_wp_attached_file","2019/02/logo-chau-canh.png"),
("41","25","_wp_attachment_metadata","a:5:{s:5:\"width\";i:284;s:6:\"height\";i:96;s:4:\"file\";s:26:\"2019/02/logo-chau-canh.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-chau-canh-150x96.png\";s:5:\"width\";i:150;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-chau-canh-100x96.png\";s:5:\"width\";i:100;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-chau-canh-100x96.png\";s:5:\"width\";i:100;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("58","34","_menu_item_type","custom"),
("59","34","_menu_item_menu_item_parent","0"),
("60","34","_menu_item_object_id","34"),
("61","34","_menu_item_object","custom"),
("62","34","_menu_item_target",""),
("63","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("64","34","_menu_item_xfn",""),
("65","34","_menu_item_url","https://cayxinh.vn"),
("85","2","_edit_lock","1551092913:1"),
("86","2","_edit_last","1"),
("87","2","_footer","normal"),
("88","38","_edit_last","1"),
("89","38","_footer","normal"),
("90","38","_wp_page_template","page-right-sidebar.php"),
("91","38","_edit_lock","1551121738:1"),
("92","40","_edit_last","1"),
("93","40","_footer","normal"),
("94","40","_wp_page_template","page-right-sidebar.php"),
("95","40","_edit_lock","1551121780:1"),
("96","42","_edit_last","1"),
("97","42","_footer","normal"),
("98","42","_wp_page_template","default"),
("99","42","_edit_lock","1551092938:1"),
("100","44","_menu_item_type","custom"),
("101","44","_menu_item_menu_item_parent","0"),
("102","44","_menu_item_object_id","44"),
("103","44","_menu_item_object","custom"),
("104","44","_menu_item_target",""),
("105","44","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("106","44","_menu_item_xfn",""),
("107","44","_menu_item_url","/danh-muc/chau-gom-nhap-khau/"),
("109","45","_menu_item_type","custom"),
("110","45","_menu_item_menu_item_parent","0"),
("111","45","_menu_item_object_id","45"),
("112","45","_menu_item_object","custom"),
("113","45","_menu_item_target",""),
("114","45","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("115","45","_menu_item_xfn",""),
("116","45","_menu_item_url","/danh-muc/chau-gom-dat-nung/"),
("118","46","_menu_item_type","custom"),
("119","46","_menu_item_menu_item_parent","0"),
("120","46","_menu_item_object_id","46"),
("121","46","_menu_item_object","custom"),
("122","46","_menu_item_target",""),
("123","46","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("124","46","_menu_item_xfn",""),
("125","46","_menu_item_url","/danh-muc/chau-gom-su/"),
("127","47","_menu_item_type","custom"),
("128","47","_menu_item_menu_item_parent","0"),
("129","47","_menu_item_object_id","47"),
("130","47","_menu_item_object","custom"),
("131","47","_menu_item_target",""),
("132","47","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("133","47","_menu_item_xfn",""),
("134","47","_menu_item_url","/danh-muc/chau-thuy-tinh/"),
("136","48","_menu_item_type","custom"),
("137","48","_menu_item_menu_item_parent","0"),
("138","48","_menu_item_object_id","48"),
("139","48","_menu_item_object","custom"),
("140","48","_menu_item_target",""),
("141","48","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("142","48","_menu_item_xfn",""),
("143","48","_menu_item_url","/danh-muc/cac-loai-chau-khac/"),
("163","51","_menu_item_type","post_type"),
("164","51","_menu_item_menu_item_parent","0"),
("165","51","_menu_item_object_id","40"),
("166","51","_menu_item_object","page"),
("167","51","_menu_item_target",""),
("168","51","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("169","51","_menu_item_xfn",""),
("170","51","_menu_item_url",""),
("172","52","_menu_item_type","post_type"),
("173","52","_menu_item_menu_item_parent","0"),
("174","52","_menu_item_object_id","42"),
("175","52","_menu_item_object","page"),
("176","52","_menu_item_target",""),
("177","52","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("178","52","_menu_item_xfn",""),
("179","52","_menu_item_url",""),
("207","66","_wp_attached_file","2019/02/cropped-logo-chau-canh.png"),
("208","66","_wp_attachment_context","site-icon"),
("209","66","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2019/02/cropped-logo-chau-canh.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:34:\"cropped-logo-chau-canh-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:32:\"cropped-logo-chau-canh-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("220","72","_menu_item_type","post_type"),
("221","72","_menu_item_menu_item_parent","0"),
("222","72","_menu_item_object_id","38");
INSERT INTO gdd_postmeta VALUES
("223","72","_menu_item_object","page"),
("224","72","_menu_item_target",""),
("225","72","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("226","72","_menu_item_xfn",""),
("227","72","_menu_item_url",""),
("254","85","_edit_last","1"),
("255","85","_edit_lock","1551094241:1"),
("257","88","_wp_attached_file","2019/02/tu-van-mien-phi.png"),
("258","88","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:27:\"2019/02/tu-van-mien-phi.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("261","85","_thumbnail_id",""),
("287","124","_menu_item_type","post_type"),
("288","124","_menu_item_menu_item_parent","0"),
("289","124","_menu_item_object_id","2"),
("290","124","_menu_item_object","page"),
("291","124","_menu_item_target",""),
("292","124","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("293","124","_menu_item_xfn",""),
("294","124","_menu_item_url",""),
("296","2","_thumbnail_id",""),
("297","128","_wp_attached_file","2019/02/banner2.jpg"),
("298","128","_wp_attachment_metadata","a:5:{s:5:\"width\";i:378;s:6:\"height\";i:203;s:4:\"file\";s:19:\"2019/02/banner2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner2-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"banner2-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("299","129","_wp_attached_file","2019/02/banner1.jpg"),
("300","129","_wp_attachment_metadata","a:5:{s:5:\"width\";i:378;s:6:\"height\";i:203;s:4:\"file\";s:19:\"2019/02/banner1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner1-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"banner1-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("301","133","_wp_attached_file","2019/02/slider.jpg"),
("302","133","_wp_attachment_metadata","a:5:{s:5:\"width\";i:750;s:6:\"height\";i:421;s:4:\"file\";s:18:\"2019/02/slider.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"slider-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"slider-600x337.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"slider-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"slider-600x337.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("308","145","_wc_review_count","0"),
("309","145","_wc_rating_count","a:0:{}"),
("310","145","_wc_average_rating","0"),
("311","146","_wp_attached_file","2019/02/chau-gom-su-mat-na-s2-min-510x510.jpg"),
("312","146","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:45:\"2019/02/chau-gom-su-mat-na-s2-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-su-mat-na-s2-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"chau-gom-su-mat-na-s2-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"chau-gom-su-mat-na-s2-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-su-mat-na-s2-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"chau-gom-su-mat-na-s2-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-su-mat-na-s2-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("313","145","_edit_last","1"),
("314","145","_thumbnail_id","146"),
("315","145","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("316","145","_sku",""),
("317","145","_regular_price","50000"),
("318","145","_sale_price",""),
("319","145","_sale_price_dates_from",""),
("320","145","_sale_price_dates_to",""),
("321","145","total_sales","0"),
("322","145","_tax_status","taxable"),
("323","145","_tax_class",""),
("324","145","_manage_stock","no"),
("325","145","_backorders","no"),
("326","145","_low_stock_amount",""),
("327","145","_sold_individually","no"),
("328","145","_weight",""),
("329","145","_length",""),
("330","145","_width",""),
("331","145","_height",""),
("332","145","_upsell_ids","a:0:{}"),
("333","145","_crosssell_ids","a:0:{}"),
("334","145","_purchase_note",""),
("335","145","_default_attributes","a:0:{}"),
("336","145","_virtual","no"),
("337","145","_downloadable","no"),
("338","145","_product_image_gallery",""),
("339","145","_download_limit","-1"),
("340","145","_download_expiry","-1"),
("341","145","_stock",""),
("342","145","_stock_status","instock"),
("343","145","_product_version","3.5.5"),
("344","145","_price","50000"),
("345","145","_edit_lock","1551113213:1"),
("346","147","_wc_review_count","0"),
("347","147","_wc_rating_count","a:0:{}"),
("348","147","_wc_average_rating","0"),
("349","147","_edit_last","1"),
("350","147","_edit_lock","1551113414:1"),
("351","148","_wp_attached_file","2019/02/chau-gom-dat-nung-nau-2-510x510.jpg"),
("352","148","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:43:\"2019/02/chau-gom-dat-nung-nau-2-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"chau-gom-dat-nung-nau-2-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"chau-gom-dat-nung-nau-2-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"chau-gom-dat-nung-nau-2-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"chau-gom-dat-nung-nau-2-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"chau-gom-dat-nung-nau-2-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"chau-gom-dat-nung-nau-2-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("353","147","_thumbnail_id","148"),
("354","147","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("355","147","_sku",""),
("356","147","_regular_price","30000"),
("357","147","_sale_price",""),
("358","147","_sale_price_dates_from",""),
("359","147","_sale_price_dates_to",""),
("360","147","total_sales","0"),
("361","147","_tax_status","taxable"),
("362","147","_tax_class",""),
("363","147","_manage_stock","no"),
("364","147","_backorders","no"),
("365","147","_low_stock_amount",""),
("366","147","_sold_individually","no"),
("367","147","_weight",""),
("368","147","_length",""),
("369","147","_width",""),
("370","147","_height",""),
("371","147","_upsell_ids","a:0:{}"),
("372","147","_crosssell_ids","a:0:{}"),
("373","147","_purchase_note",""),
("374","147","_default_attributes","a:0:{}"),
("375","147","_virtual","no"),
("376","147","_downloadable","no"),
("377","147","_product_image_gallery",""),
("378","147","_download_limit","-1"),
("379","147","_download_expiry","-1"),
("380","147","_stock",""),
("381","147","_stock_status","instock"),
("382","147","_product_version","3.5.5");
INSERT INTO gdd_postmeta VALUES
("383","147","_price","30000"),
("384","149","_wc_review_count","0"),
("385","149","_wc_rating_count","a:0:{}"),
("386","149","_wc_average_rating","0"),
("387","149","_edit_last","1"),
("388","149","_edit_lock","1551187703:1"),
("389","150","_wp_attached_file","2019/02/chau-gom-dat-nung-trang-cao-min-510x510.jpg"),
("390","150","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:51:\"2019/02/chau-gom-dat-nung-trang-cao-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"chau-gom-dat-nung-trang-cao-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"chau-gom-dat-nung-trang-cao-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"chau-gom-dat-nung-trang-cao-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"chau-gom-dat-nung-trang-cao-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"chau-gom-dat-nung-trang-cao-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"chau-gom-dat-nung-trang-cao-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("391","149","_thumbnail_id","150"),
("392","149","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("393","149","_sku",""),
("394","149","_regular_price","60000"),
("395","149","_sale_price",""),
("396","149","_sale_price_dates_from",""),
("397","149","_sale_price_dates_to",""),
("398","149","total_sales","0"),
("399","149","_tax_status","taxable"),
("400","149","_tax_class",""),
("401","149","_manage_stock","no"),
("402","149","_backorders","no"),
("403","149","_low_stock_amount",""),
("404","149","_sold_individually","no"),
("405","149","_weight",""),
("406","149","_length",""),
("407","149","_width",""),
("408","149","_height",""),
("409","149","_upsell_ids","a:0:{}"),
("410","149","_crosssell_ids","a:0:{}"),
("411","149","_purchase_note",""),
("412","149","_default_attributes","a:0:{}"),
("413","149","_virtual","no"),
("414","149","_downloadable","no"),
("415","149","_product_image_gallery",""),
("416","149","_download_limit","-1"),
("417","149","_download_expiry","-1"),
("418","149","_stock",""),
("419","149","_stock_status","instock"),
("420","149","_product_version","3.5.5"),
("421","149","_price","60000"),
("422","151","_wc_review_count","0"),
("423","151","_wc_rating_count","a:0:{}"),
("424","151","_wc_average_rating","0"),
("425","151","_edit_last","1"),
("426","151","_edit_lock","1551113183:1"),
("427","152","_wp_attached_file","2019/02/chau-gom-bo-4-trang-510x510.jpg"),
("428","152","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:39:\"2019/02/chau-gom-bo-4-trang-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"chau-gom-bo-4-trang-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"chau-gom-bo-4-trang-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"chau-gom-bo-4-trang-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"chau-gom-bo-4-trang-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"chau-gom-bo-4-trang-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"chau-gom-bo-4-trang-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("429","151","_thumbnail_id","152"),
("430","151","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("431","151","_sku",""),
("432","151","_regular_price","32000"),
("433","151","_sale_price",""),
("434","151","_sale_price_dates_from",""),
("435","151","_sale_price_dates_to",""),
("436","151","total_sales","0"),
("437","151","_tax_status","taxable"),
("438","151","_tax_class",""),
("439","151","_manage_stock","no"),
("440","151","_backorders","no"),
("441","151","_low_stock_amount",""),
("442","151","_sold_individually","no"),
("443","151","_weight",""),
("444","151","_length",""),
("445","151","_width",""),
("446","151","_height",""),
("447","151","_upsell_ids","a:0:{}"),
("448","151","_crosssell_ids","a:0:{}"),
("449","151","_purchase_note",""),
("450","151","_default_attributes","a:0:{}"),
("451","151","_virtual","no"),
("452","151","_downloadable","no"),
("453","151","_product_image_gallery",""),
("454","151","_download_limit","-1"),
("455","151","_download_expiry","-1"),
("456","151","_stock",""),
("457","151","_stock_status","instock"),
("458","151","_product_version","3.5.5"),
("459","151","_price","32000"),
("460","153","_wc_review_count","0"),
("461","153","_wc_rating_count","a:0:{}"),
("462","153","_wc_average_rating","0"),
("463","154","_wp_attached_file","2019/02/chau-gom-nhat-bo-3-men-chay-01-min-510x510.jpg"),
("464","154","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:54:\"2019/02/chau-gom-nhat-bo-3-men-chay-01-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"chau-gom-nhat-bo-3-men-chay-01-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"chau-gom-nhat-bo-3-men-chay-01-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:54:\"chau-gom-nhat-bo-3-men-chay-01-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:54:\"chau-gom-nhat-bo-3-men-chay-01-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:54:\"chau-gom-nhat-bo-3-men-chay-01-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"chau-gom-nhat-bo-3-men-chay-01-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("465","153","_edit_last","1"),
("466","153","_thumbnail_id","154"),
("467","153","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("468","153","_sku",""),
("469","153","_regular_price","80000"),
("470","153","_sale_price",""),
("471","153","_sale_price_dates_from",""),
("472","153","_sale_price_dates_to",""),
("473","153","total_sales","0"),
("474","153","_tax_status","taxable"),
("475","153","_tax_class",""),
("476","153","_manage_stock","no"),
("477","153","_backorders","no"),
("478","153","_low_stock_amount",""),
("479","153","_sold_individually","no"),
("480","153","_weight",""),
("481","153","_length",""),
("482","153","_width","");
INSERT INTO gdd_postmeta VALUES
("483","153","_height",""),
("484","153","_upsell_ids","a:0:{}"),
("485","153","_crosssell_ids","a:0:{}"),
("486","153","_purchase_note",""),
("487","153","_default_attributes","a:0:{}"),
("488","153","_virtual","no"),
("489","153","_downloadable","no"),
("490","153","_product_image_gallery",""),
("491","153","_download_limit","-1"),
("492","153","_download_expiry","-1"),
("493","153","_stock",""),
("494","153","_stock_status","instock"),
("495","153","_product_version","3.5.5"),
("496","153","_price","80000"),
("497","153","_edit_lock","1551114058:1"),
("498","155","_wc_review_count","0"),
("499","155","_wc_rating_count","a:0:{}"),
("500","155","_wc_average_rating","0"),
("501","155","_edit_last","1"),
("502","155","_edit_lock","1551113388:1"),
("503","156","_wp_attached_file","2019/02/chau-gom-nhat-bon-tam-40k-min-510x510.jpg"),
("504","156","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:49:\"2019/02/chau-gom-nhat-bon-tam-40k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-bon-tam-40k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-bon-tam-40k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"chau-gom-nhat-bon-tam-40k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-bon-tam-40k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-bon-tam-40k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-bon-tam-40k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("505","155","_thumbnail_id","156"),
("506","155","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("507","155","_sku",""),
("508","155","_regular_price","40000"),
("509","155","_sale_price",""),
("510","155","_sale_price_dates_from",""),
("511","155","_sale_price_dates_to",""),
("512","155","total_sales","0"),
("513","155","_tax_status","taxable"),
("514","155","_tax_class",""),
("515","155","_manage_stock","no"),
("516","155","_backorders","no"),
("517","155","_low_stock_amount",""),
("518","155","_sold_individually","no"),
("519","155","_weight",""),
("520","155","_length",""),
("521","155","_width",""),
("522","155","_height",""),
("523","155","_upsell_ids","a:0:{}"),
("524","155","_crosssell_ids","a:0:{}"),
("525","155","_purchase_note",""),
("526","155","_default_attributes","a:0:{}"),
("527","155","_virtual","no"),
("528","155","_downloadable","no"),
("529","155","_product_image_gallery",""),
("530","155","_download_limit","-1"),
("531","155","_download_expiry","-1"),
("532","155","_stock",""),
("533","155","_stock_status","instock"),
("534","155","_product_version","3.5.5"),
("535","155","_price","40000"),
("536","158","_wc_review_count","0"),
("537","158","_wc_rating_count","a:0:{}"),
("538","158","_wc_average_rating","0"),
("539","158","_edit_last","1"),
("540","158","_edit_lock","1551113315:1"),
("541","159","_wp_attached_file","2019/02/chau-gom-nhat-bong-hoa-70k-min-510x510.jpg"),
("542","159","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:50:\"2019/02/chau-gom-nhat-bong-hoa-70k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-bong-hoa-70k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-bong-hoa-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"chau-gom-nhat-bong-hoa-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-bong-hoa-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-bong-hoa-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-bong-hoa-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("543","158","_thumbnail_id","159"),
("544","158","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("545","158","_sku",""),
("546","158","_regular_price","60000"),
("547","158","_sale_price",""),
("548","158","_sale_price_dates_from",""),
("549","158","_sale_price_dates_to",""),
("550","158","total_sales","0"),
("551","158","_tax_status","taxable"),
("552","158","_tax_class",""),
("553","158","_manage_stock","no"),
("554","158","_backorders","no"),
("555","158","_low_stock_amount",""),
("556","158","_sold_individually","no"),
("557","158","_weight",""),
("558","158","_length",""),
("559","158","_width",""),
("560","158","_height",""),
("561","158","_upsell_ids","a:0:{}"),
("562","158","_crosssell_ids","a:0:{}"),
("563","158","_purchase_note",""),
("564","158","_default_attributes","a:0:{}"),
("565","158","_virtual","no"),
("566","158","_downloadable","no"),
("567","158","_product_image_gallery",""),
("568","158","_download_limit","-1"),
("569","158","_download_expiry","-1"),
("570","158","_stock",""),
("571","158","_stock_status","instock"),
("572","158","_product_version","3.5.5"),
("573","158","_price","60000"),
("574","160","_wc_review_count","0"),
("575","160","_wc_rating_count","a:0:{}"),
("576","160","_wc_average_rating","0"),
("577","161","_wp_attached_file","2019/02/chau-gom-nhat-tron-vat-35k-min-510x510.jpg"),
("578","161","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:50:\"2019/02/chau-gom-nhat-tron-vat-35k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-tron-vat-35k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-tron-vat-35k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"chau-gom-nhat-tron-vat-35k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-tron-vat-35k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-tron-vat-35k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"chau-gom-nhat-tron-vat-35k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("579","160","_edit_last","1"),
("580","160","_thumbnail_id","161"),
("581","160","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("582","160","_sku","");
INSERT INTO gdd_postmeta VALUES
("583","160","_regular_price","60000"),
("584","160","_sale_price",""),
("585","160","_sale_price_dates_from",""),
("586","160","_sale_price_dates_to",""),
("587","160","total_sales","0"),
("588","160","_tax_status","taxable"),
("589","160","_tax_class",""),
("590","160","_manage_stock","no"),
("591","160","_backorders","no"),
("592","160","_low_stock_amount",""),
("593","160","_sold_individually","no"),
("594","160","_weight",""),
("595","160","_length",""),
("596","160","_width",""),
("597","160","_height",""),
("598","160","_upsell_ids","a:0:{}"),
("599","160","_crosssell_ids","a:0:{}"),
("600","160","_purchase_note",""),
("601","160","_default_attributes","a:0:{}"),
("602","160","_virtual","no"),
("603","160","_downloadable","no"),
("604","160","_product_image_gallery",""),
("605","160","_download_limit","-1"),
("606","160","_download_expiry","-1"),
("607","160","_stock",""),
("608","160","_stock_status","instock"),
("609","160","_product_version","3.5.5"),
("610","160","_price","60000"),
("611","160","_edit_lock","1551113241:1"),
("612","162","_wc_review_count","0"),
("613","162","_wc_rating_count","a:0:{}"),
("614","162","_wc_average_rating","0"),
("615","162","_edit_last","1"),
("616","162","_edit_lock","1551113265:1"),
("617","163","_wp_attached_file","2019/02/chau-gom-ong-dua-cao-trang-70k-min-510x510.jpg"),
("618","163","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:54:\"2019/02/chau-gom-ong-dua-cao-trang-70k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"chau-gom-ong-dua-cao-trang-70k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"chau-gom-ong-dua-cao-trang-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:54:\"chau-gom-ong-dua-cao-trang-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:54:\"chau-gom-ong-dua-cao-trang-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:54:\"chau-gom-ong-dua-cao-trang-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"chau-gom-ong-dua-cao-trang-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("619","162","_thumbnail_id","163"),
("620","162","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("621","162","_sku",""),
("622","162","_regular_price","60000"),
("623","162","_sale_price",""),
("624","162","_sale_price_dates_from",""),
("625","162","_sale_price_dates_to",""),
("626","162","total_sales","0"),
("627","162","_tax_status","taxable"),
("628","162","_tax_class",""),
("629","162","_manage_stock","no"),
("630","162","_backorders","no"),
("631","162","_low_stock_amount",""),
("632","162","_sold_individually","no"),
("633","162","_weight",""),
("634","162","_length",""),
("635","162","_width",""),
("636","162","_height",""),
("637","162","_upsell_ids","a:0:{}"),
("638","162","_crosssell_ids","a:0:{}"),
("639","162","_purchase_note",""),
("640","162","_default_attributes","a:0:{}"),
("641","162","_virtual","no"),
("642","162","_downloadable","no"),
("643","162","_product_image_gallery",""),
("644","162","_download_limit","-1"),
("645","162","_download_expiry","-1"),
("646","162","_stock",""),
("647","162","_stock_status","instock"),
("648","162","_product_version","3.5.5"),
("649","162","_price","60000"),
("650","164","_wc_review_count","0"),
("651","164","_wc_rating_count","a:0:{}"),
("652","164","_wc_average_rating","0"),
("653","164","_edit_last","1"),
("654","164","_edit_lock","1551113342:1"),
("655","165","_wp_attached_file","2019/02/chau-gom-phuc-loc-tho-70k-min-510x510.jpg"),
("656","165","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:49:\"2019/02/chau-gom-phuc-loc-tho-70k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-phuc-loc-tho-70k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"chau-gom-phuc-loc-tho-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"chau-gom-phuc-loc-tho-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-phuc-loc-tho-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"chau-gom-phuc-loc-tho-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-phuc-loc-tho-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("657","164","_thumbnail_id","165"),
("658","164","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("659","164","_sku",""),
("660","164","_regular_price","35000"),
("661","164","_sale_price",""),
("662","164","_sale_price_dates_from",""),
("663","164","_sale_price_dates_to",""),
("664","164","total_sales","0"),
("665","164","_tax_status","taxable"),
("666","164","_tax_class",""),
("667","164","_manage_stock","no"),
("668","164","_backorders","no"),
("669","164","_low_stock_amount",""),
("670","164","_sold_individually","no"),
("671","164","_weight",""),
("672","164","_length",""),
("673","164","_width",""),
("674","164","_height",""),
("675","164","_upsell_ids","a:0:{}"),
("676","164","_crosssell_ids","a:0:{}"),
("677","164","_purchase_note",""),
("678","164","_default_attributes","a:0:{}"),
("679","164","_virtual","no"),
("680","164","_downloadable","no"),
("681","164","_product_image_gallery",""),
("682","164","_download_limit","-1");
INSERT INTO gdd_postmeta VALUES
("683","164","_download_expiry","-1"),
("684","164","_stock",""),
("685","164","_stock_status","instock"),
("686","164","_product_version","3.5.5"),
("687","164","_price","35000"),
("688","166","_wc_review_count","0"),
("689","166","_wc_rating_count","a:0:{}"),
("690","166","_wc_average_rating","0"),
("691","166","_edit_last","1"),
("692","166","_edit_lock","1551114073:1"),
("693","167","_wp_attached_file","2019/02/chau-gom-su-asa-cao-01-510x510.jpg"),
("694","167","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:42:\"2019/02/chau-gom-su-asa-cao-01-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"chau-gom-su-asa-cao-01-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"chau-gom-su-asa-cao-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"chau-gom-su-asa-cao-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"chau-gom-su-asa-cao-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"chau-gom-su-asa-cao-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"chau-gom-su-asa-cao-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("695","166","_thumbnail_id","167"),
("696","166","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("697","166","_sku",""),
("698","166","_regular_price","70000"),
("699","166","_sale_price",""),
("700","166","_sale_price_dates_from",""),
("701","166","_sale_price_dates_to",""),
("702","166","total_sales","0"),
("703","166","_tax_status","taxable"),
("704","166","_tax_class",""),
("705","166","_manage_stock","no"),
("706","166","_backorders","no"),
("707","166","_low_stock_amount",""),
("708","166","_sold_individually","no"),
("709","166","_weight",""),
("710","166","_length",""),
("711","166","_width",""),
("712","166","_height",""),
("713","166","_upsell_ids","a:0:{}"),
("714","166","_crosssell_ids","a:0:{}"),
("715","166","_purchase_note",""),
("716","166","_default_attributes","a:0:{}"),
("717","166","_virtual","no"),
("718","166","_downloadable","no"),
("719","166","_product_image_gallery",""),
("720","166","_download_limit","-1"),
("721","166","_download_expiry","-1"),
("722","166","_stock",""),
("723","166","_stock_status","instock"),
("724","166","_product_version","3.5.5"),
("725","166","_price","70000"),
("726","168","_wc_review_count","0"),
("727","168","_wc_rating_count","a:0:{}"),
("728","168","_wc_average_rating","0"),
("729","168","_edit_last","1"),
("730","168","_edit_lock","1551099775:1"),
("731","169","_wp_attached_file","2019/02/chau-gom-su-mieng-loe-01-510x510.jpg"),
("732","169","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:44:\"2019/02/chau-gom-su-mieng-loe-01-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-gom-su-mieng-loe-01-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"chau-gom-su-mieng-loe-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"chau-gom-su-mieng-loe-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-gom-su-mieng-loe-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"chau-gom-su-mieng-loe-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-gom-su-mieng-loe-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("733","168","_thumbnail_id","169"),
("734","168","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("735","168","_sku",""),
("736","168","_regular_price","63000"),
("737","168","_sale_price",""),
("738","168","_sale_price_dates_from",""),
("739","168","_sale_price_dates_to",""),
("740","168","total_sales","0"),
("741","168","_tax_status","taxable"),
("742","168","_tax_class",""),
("743","168","_manage_stock","no"),
("744","168","_backorders","no"),
("745","168","_low_stock_amount",""),
("746","168","_sold_individually","no"),
("747","168","_weight",""),
("748","168","_length",""),
("749","168","_width",""),
("750","168","_height",""),
("751","168","_upsell_ids","a:0:{}"),
("752","168","_crosssell_ids","a:0:{}"),
("753","168","_purchase_note",""),
("754","168","_default_attributes","a:0:{}"),
("755","168","_virtual","no"),
("756","168","_downloadable","no"),
("757","168","_product_image_gallery",""),
("758","168","_download_limit","-1"),
("759","168","_download_expiry","-1"),
("760","168","_stock",""),
("761","168","_stock_status","instock"),
("762","168","_product_version","3.5.5"),
("763","168","_price","63000"),
("764","170","_wc_review_count","0"),
("765","170","_wc_rating_count","a:0:{}"),
("766","170","_wc_average_rating","0"),
("767","170","_edit_last","1"),
("768","170","_edit_lock","1551113455:1"),
("769","171","_wp_attached_file","2019/02/chau-gom-nhat-dia-to-vang-70k-510x510.jpg"),
("770","171","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:49:\"2019/02/chau-gom-nhat-dia-to-vang-70k-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-dia-to-vang-70k-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-dia-to-vang-70k-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"chau-gom-nhat-dia-to-vang-70k-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-dia-to-vang-70k-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-dia-to-vang-70k-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-nhat-dia-to-vang-70k-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("771","170","_thumbnail_id","171"),
("772","170","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("773","170","_sku",""),
("774","170","_regular_price","70000"),
("775","170","_sale_price",""),
("776","170","_sale_price_dates_from",""),
("777","170","_sale_price_dates_to",""),
("778","170","total_sales","0"),
("779","170","_tax_status","taxable"),
("780","170","_tax_class",""),
("781","170","_manage_stock","no"),
("782","170","_backorders","no");
INSERT INTO gdd_postmeta VALUES
("783","170","_low_stock_amount",""),
("784","170","_sold_individually","no"),
("785","170","_weight",""),
("786","170","_length",""),
("787","170","_width",""),
("788","170","_height",""),
("789","170","_upsell_ids","a:0:{}"),
("790","170","_crosssell_ids","a:0:{}"),
("791","170","_purchase_note",""),
("792","170","_default_attributes","a:0:{}"),
("793","170","_virtual","no"),
("794","170","_downloadable","no"),
("795","170","_product_image_gallery",""),
("796","170","_download_limit","-1"),
("797","170","_download_expiry","-1"),
("798","170","_stock",""),
("799","170","_stock_status","instock"),
("800","170","_product_version","3.5.5"),
("801","170","_price","70000"),
("802","172","_wc_review_count","0"),
("803","172","_wc_rating_count","a:0:{}"),
("804","172","_wc_average_rating","0"),
("805","173","_wp_attached_file","2019/02/chau-gom-nhat-binh-cao-trang-2-70k-min-510x510.jpg"),
("806","173","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:58:\"2019/02/chau-gom-nhat-binh-cao-trang-2-70k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"chau-gom-nhat-binh-cao-trang-2-70k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"chau-gom-nhat-binh-cao-trang-2-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:58:\"chau-gom-nhat-binh-cao-trang-2-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:58:\"chau-gom-nhat-binh-cao-trang-2-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:58:\"chau-gom-nhat-binh-cao-trang-2-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:58:\"chau-gom-nhat-binh-cao-trang-2-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("807","172","_edit_last","1"),
("808","172","_thumbnail_id","173"),
("809","172","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("810","172","_sku",""),
("811","172","_regular_price","56000"),
("812","172","_sale_price",""),
("813","172","_sale_price_dates_from",""),
("814","172","_sale_price_dates_to",""),
("815","172","total_sales","0"),
("816","172","_tax_status","taxable"),
("817","172","_tax_class",""),
("818","172","_manage_stock","no"),
("819","172","_backorders","no"),
("820","172","_low_stock_amount",""),
("821","172","_sold_individually","no"),
("822","172","_weight",""),
("823","172","_length",""),
("824","172","_width",""),
("825","172","_height",""),
("826","172","_upsell_ids","a:0:{}"),
("827","172","_crosssell_ids","a:0:{}"),
("828","172","_purchase_note",""),
("829","172","_default_attributes","a:0:{}"),
("830","172","_virtual","no"),
("831","172","_downloadable","no"),
("832","172","_product_image_gallery",""),
("833","172","_download_limit","-1"),
("834","172","_download_expiry","-1"),
("835","172","_stock",""),
("836","172","_stock_status","instock"),
("837","172","_product_version","3.5.5"),
("838","172","_price","56000"),
("839","172","_edit_lock","1551099860:1"),
("840","174","_wc_review_count","0"),
("841","174","_wc_rating_count","a:0:{}"),
("842","174","_wc_average_rating","0"),
("843","175","_wp_attached_file","2019/02/chau-gom-su-nhat-tron-thap-01-510x510.jpg"),
("844","175","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:49:\"2019/02/chau-gom-su-nhat-tron-thap-01-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-su-nhat-tron-thap-01-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"chau-gom-su-nhat-tron-thap-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"chau-gom-su-nhat-tron-thap-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-su-nhat-tron-thap-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"chau-gom-su-nhat-tron-thap-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"chau-gom-su-nhat-tron-thap-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("845","174","_edit_last","1"),
("846","174","_thumbnail_id","175"),
("847","174","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("848","174","_sku",""),
("849","174","_regular_price","60000"),
("850","174","_sale_price",""),
("851","174","_sale_price_dates_from",""),
("852","174","_sale_price_dates_to",""),
("853","174","total_sales","0"),
("854","174","_tax_status","taxable"),
("855","174","_tax_class",""),
("856","174","_manage_stock","no"),
("857","174","_backorders","no"),
("858","174","_low_stock_amount",""),
("859","174","_sold_individually","no"),
("860","174","_weight",""),
("861","174","_length",""),
("862","174","_width",""),
("863","174","_height",""),
("864","174","_upsell_ids","a:0:{}"),
("865","174","_crosssell_ids","a:0:{}"),
("866","174","_purchase_note",""),
("867","174","_default_attributes","a:0:{}"),
("868","174","_virtual","no"),
("869","174","_downloadable","no"),
("870","174","_product_image_gallery",""),
("871","174","_download_limit","-1"),
("872","174","_download_expiry","-1"),
("873","174","_stock",""),
("874","174","_stock_status","instock"),
("875","174","_product_version","3.5.5"),
("876","174","_price","60000"),
("877","174","_edit_lock","1551099895:1"),
("878","176","_wc_review_count","0"),
("879","176","_wc_rating_count","a:0:{}"),
("880","176","_wc_average_rating","0"),
("881","176","_edit_last","1"),
("882","176","_edit_lock","1551113428:1");
INSERT INTO gdd_postmeta VALUES
("885","176","_thumbnail_id","179"),
("886","176","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("887","176","_sku",""),
("888","176","_regular_price","36000"),
("889","176","_sale_price",""),
("890","176","_sale_price_dates_from",""),
("891","176","_sale_price_dates_to",""),
("892","176","total_sales","0"),
("893","176","_tax_status","taxable"),
("894","176","_tax_class",""),
("895","176","_manage_stock","no"),
("896","176","_backorders","no"),
("897","176","_low_stock_amount",""),
("898","176","_sold_individually","no"),
("899","176","_weight",""),
("900","176","_length",""),
("901","176","_width",""),
("902","176","_height",""),
("903","176","_upsell_ids","a:0:{}"),
("904","176","_crosssell_ids","a:0:{}"),
("905","176","_purchase_note",""),
("906","176","_default_attributes","a:0:{}"),
("907","176","_virtual","no"),
("908","176","_downloadable","no"),
("909","176","_product_image_gallery",""),
("910","176","_download_limit","-1"),
("911","176","_download_expiry","-1"),
("912","176","_stock",""),
("913","176","_stock_status","instock"),
("914","176","_product_version","3.5.5"),
("915","176","_price","36000"),
("919","179","_wp_attached_file","2019/02/chau-gom-TR-vuong-70k-min-510x510.jpg"),
("920","179","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:45:\"2019/02/chau-gom-TR-vuong-70k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-TR-vuong-70k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"chau-gom-TR-vuong-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"chau-gom-TR-vuong-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-TR-vuong-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"chau-gom-TR-vuong-70k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-TR-vuong-70k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("921","180","_wc_review_count","0"),
("922","180","_wc_rating_count","a:0:{}"),
("923","180","_wc_average_rating","0"),
("924","180","_edit_last","1"),
("925","180","_edit_lock","1551113355:1"),
("926","181","_wp_attached_file","2019/02/chau-gom-van-da-tru-tron-01-510x510.jpg"),
("927","181","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:47:\"2019/02/chau-gom-van-da-tru-tron-01-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"chau-gom-van-da-tru-tron-01-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"chau-gom-van-da-tru-tron-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"chau-gom-van-da-tru-tron-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"chau-gom-van-da-tru-tron-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"chau-gom-van-da-tru-tron-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"chau-gom-van-da-tru-tron-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("928","180","_thumbnail_id","181"),
("929","180","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("930","180","_sku",""),
("931","180","_regular_price","35000"),
("932","180","_sale_price",""),
("933","180","_sale_price_dates_from",""),
("934","180","_sale_price_dates_to",""),
("935","180","total_sales","0"),
("936","180","_tax_status","taxable"),
("937","180","_tax_class",""),
("938","180","_manage_stock","no"),
("939","180","_backorders","no"),
("940","180","_low_stock_amount",""),
("941","180","_sold_individually","no"),
("942","180","_weight",""),
("943","180","_length",""),
("944","180","_width",""),
("945","180","_height",""),
("946","180","_upsell_ids","a:0:{}"),
("947","180","_crosssell_ids","a:0:{}"),
("948","180","_purchase_note",""),
("949","180","_default_attributes","a:0:{}"),
("950","180","_virtual","no"),
("951","180","_downloadable","no"),
("952","180","_product_image_gallery",""),
("953","180","_download_limit","-1"),
("954","180","_download_expiry","-1"),
("955","180","_stock",""),
("956","180","_stock_status","instock"),
("957","180","_product_version","3.5.5"),
("958","180","_price","35000"),
("959","182","_wc_review_count","0"),
("960","182","_wc_rating_count","a:0:{}"),
("961","182","_wc_average_rating","0"),
("962","182","_edit_last","1"),
("963","182","_edit_lock","1551113843:1"),
("966","184","_wp_attached_file","2019/02/chau-gom-bat-trang-pho-thong-to-50k-min-510x510.jpg"),
("967","184","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:59:\"2019/02/chau-gom-bat-trang-pho-thong-to-50k-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"chau-gom-bat-trang-pho-thong-to-50k-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"chau-gom-bat-trang-pho-thong-to-50k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:59:\"chau-gom-bat-trang-pho-thong-to-50k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:59:\"chau-gom-bat-trang-pho-thong-to-50k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:59:\"chau-gom-bat-trang-pho-thong-to-50k-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:59:\"chau-gom-bat-trang-pho-thong-to-50k-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("968","182","_thumbnail_id","184"),
("969","182","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("970","182","_sku",""),
("971","182","_regular_price","68000"),
("972","182","_sale_price",""),
("973","182","_sale_price_dates_from",""),
("974","182","_sale_price_dates_to",""),
("975","182","total_sales","0"),
("976","182","_tax_status","taxable"),
("977","182","_tax_class",""),
("978","182","_manage_stock","no"),
("979","182","_backorders","no"),
("980","182","_low_stock_amount",""),
("981","182","_sold_individually","no"),
("982","182","_weight",""),
("983","182","_length",""),
("984","182","_width",""),
("985","182","_height",""),
("986","182","_upsell_ids","a:0:{}"),
("987","182","_crosssell_ids","a:0:{}"),
("988","182","_purchase_note",""),
("989","182","_default_attributes","a:0:{}");
INSERT INTO gdd_postmeta VALUES
("990","182","_virtual","no"),
("991","182","_downloadable","no"),
("992","182","_product_image_gallery",""),
("993","182","_download_limit","-1"),
("994","182","_download_expiry","-1"),
("995","182","_stock",""),
("996","182","_stock_status","instock"),
("997","182","_product_version","3.5.5"),
("998","182","_price","68000"),
("999","185","_wc_review_count","0"),
("1000","185","_wc_rating_count","a:0:{}"),
("1001","185","_wc_average_rating","0"),
("1002","185","_edit_last","1"),
("1003","185","_edit_lock","1551114096:1"),
("1004","186","_wp_attached_file","2019/02/chau-gom-dat-nung-nau-2-510x510-1.jpg"),
("1005","186","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:45:\"2019/02/chau-gom-dat-nung-nau-2-510x510-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-dat-nung-nau-2-510x510-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"chau-gom-dat-nung-nau-2-510x510-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"chau-gom-dat-nung-nau-2-510x510-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-dat-nung-nau-2-510x510-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"chau-gom-dat-nung-nau-2-510x510-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-gom-dat-nung-nau-2-510x510-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1006","185","_thumbnail_id","186"),
("1007","185","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1008","185","_sku",""),
("1009","185","_regular_price","52000"),
("1010","185","_sale_price",""),
("1011","185","_sale_price_dates_from",""),
("1012","185","_sale_price_dates_to",""),
("1013","185","total_sales","0"),
("1014","185","_tax_status","taxable"),
("1015","185","_tax_class",""),
("1016","185","_manage_stock","no"),
("1017","185","_backorders","no"),
("1018","185","_low_stock_amount",""),
("1019","185","_sold_individually","no"),
("1020","185","_weight",""),
("1021","185","_length",""),
("1022","185","_width",""),
("1023","185","_height",""),
("1024","185","_upsell_ids","a:0:{}"),
("1025","185","_crosssell_ids","a:0:{}"),
("1026","185","_purchase_note",""),
("1027","185","_default_attributes","a:0:{}"),
("1028","185","_virtual","no"),
("1029","185","_downloadable","no"),
("1030","185","_product_image_gallery",""),
("1031","185","_download_limit","-1"),
("1032","185","_download_expiry","-1"),
("1033","185","_stock",""),
("1034","185","_stock_status","instock"),
("1035","185","_product_version","3.5.5"),
("1036","185","_price","52000"),
("1037","187","_wc_review_count","0"),
("1038","187","_wc_rating_count","a:0:{}"),
("1039","187","_wc_average_rating","0"),
("1040","187","_edit_last","1"),
("1041","187","_edit_lock","1551114107:1"),
("1042","188","_wp_attached_file","2019/02/chau-gom-dat-nung-nau-2-510x510-1-1.jpg"),
("1043","188","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:47:\"2019/02/chau-gom-dat-nung-nau-2-510x510-1-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"chau-gom-dat-nung-nau-2-510x510-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"chau-gom-dat-nung-nau-2-510x510-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"chau-gom-dat-nung-nau-2-510x510-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"chau-gom-dat-nung-nau-2-510x510-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"chau-gom-dat-nung-nau-2-510x510-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"chau-gom-dat-nung-nau-2-510x510-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1044","189","_wp_attached_file","2019/02/chau-gom-classic-01-510x510.jpg"),
("1045","189","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:39:\"2019/02/chau-gom-classic-01-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"chau-gom-classic-01-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"chau-gom-classic-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"chau-gom-classic-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"chau-gom-classic-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"chau-gom-classic-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"chau-gom-classic-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1046","187","_thumbnail_id","189"),
("1047","187","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1048","187","_sku",""),
("1049","187","_regular_price","78000"),
("1050","187","_sale_price",""),
("1051","187","_sale_price_dates_from",""),
("1052","187","_sale_price_dates_to",""),
("1053","187","total_sales","0"),
("1054","187","_tax_status","taxable"),
("1055","187","_tax_class",""),
("1056","187","_manage_stock","no"),
("1057","187","_backorders","no"),
("1058","187","_low_stock_amount",""),
("1059","187","_sold_individually","no"),
("1060","187","_weight",""),
("1061","187","_length",""),
("1062","187","_width",""),
("1063","187","_height",""),
("1064","187","_upsell_ids","a:0:{}"),
("1065","187","_crosssell_ids","a:0:{}"),
("1066","187","_purchase_note",""),
("1067","187","_default_attributes","a:0:{}"),
("1068","187","_virtual","no"),
("1069","187","_downloadable","no"),
("1070","187","_product_image_gallery",""),
("1071","187","_download_limit","-1"),
("1072","187","_download_expiry","-1"),
("1073","187","_stock",""),
("1074","187","_stock_status","instock"),
("1075","187","_product_version","3.5.5"),
("1076","187","_price","78000"),
("1077","190","_wc_review_count","0"),
("1078","190","_wc_rating_count","a:0:{}"),
("1079","190","_wc_average_rating","0"),
("1080","190","_edit_last","1"),
("1081","190","_edit_lock","1551113443:1"),
("1085","190","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1086","190","_sku",""),
("1087","190","_regular_price","36000"),
("1088","190","_sale_price",""),
("1089","190","_sale_price_dates_from",""),
("1090","190","_sale_price_dates_to",""),
("1091","190","total_sales","0"),
("1092","190","_tax_status","taxable");
INSERT INTO gdd_postmeta VALUES
("1093","190","_tax_class",""),
("1094","190","_manage_stock","no"),
("1095","190","_backorders","no"),
("1096","190","_low_stock_amount",""),
("1097","190","_sold_individually","no"),
("1098","190","_weight",""),
("1099","190","_length",""),
("1100","190","_width",""),
("1101","190","_height",""),
("1102","190","_upsell_ids","a:0:{}"),
("1103","190","_crosssell_ids","a:0:{}"),
("1104","190","_purchase_note",""),
("1105","190","_default_attributes","a:0:{}"),
("1106","190","_virtual","no"),
("1107","190","_downloadable","no"),
("1108","190","_product_image_gallery",""),
("1109","190","_download_limit","-1"),
("1110","190","_download_expiry","-1"),
("1111","190","_stock",""),
("1112","190","_stock_status","instock"),
("1113","190","_product_version","3.5.5"),
("1114","190","_price","36000"),
("1115","192","_wc_review_count","0"),
("1116","192","_wc_rating_count","a:0:{}"),
("1117","192","_wc_average_rating","0"),
("1118","192","_edit_last","1"),
("1119","192","_edit_lock","1551113402:1"),
("1122","194","_wp_attached_file","2019/02/chau-thuy-tinh-ly-36-min-510x510.jpg"),
("1123","194","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:44:\"2019/02/chau-thuy-tinh-ly-36-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-36-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-36-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-36-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-36-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-36-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-36-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1124","192","_thumbnail_id","194"),
("1125","192","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1126","192","_sku",""),
("1127","192","_regular_price","36000"),
("1128","192","_sale_price",""),
("1129","192","_sale_price_dates_from",""),
("1130","192","_sale_price_dates_to",""),
("1131","192","total_sales","0"),
("1132","192","_tax_status","taxable"),
("1133","192","_tax_class",""),
("1134","192","_manage_stock","no"),
("1135","192","_backorders","no"),
("1136","192","_low_stock_amount",""),
("1137","192","_sold_individually","no"),
("1138","192","_weight",""),
("1139","192","_length",""),
("1140","192","_width",""),
("1141","192","_height",""),
("1142","192","_upsell_ids","a:0:{}"),
("1143","192","_crosssell_ids","a:0:{}"),
("1144","192","_purchase_note",""),
("1145","192","_default_attributes","a:0:{}"),
("1146","192","_virtual","no"),
("1147","192","_downloadable","no"),
("1148","192","_product_image_gallery",""),
("1149","192","_download_limit","-1"),
("1150","192","_download_expiry","-1"),
("1151","192","_stock",""),
("1152","192","_stock_status","instock"),
("1153","192","_product_version","3.5.5"),
("1154","192","_price","36000"),
("1155","195","_wc_review_count","0"),
("1156","195","_wc_rating_count","a:0:{}"),
("1157","195","_wc_average_rating","0"),
("1158","196","_wp_attached_file","2019/02/chau-thuy-tinh-ly-48-min-510x510.jpg"),
("1159","196","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:44:\"2019/02/chau-thuy-tinh-ly-48-min-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-48-min-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-48-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-48-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-48-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-48-min-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"chau-thuy-tinh-ly-48-min-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1160","195","_edit_last","1"),
("1161","195","_thumbnail_id","196"),
("1162","195","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1163","195","_sku",""),
("1164","195","_regular_price","89000"),
("1165","195","_sale_price",""),
("1166","195","_sale_price_dates_from",""),
("1167","195","_sale_price_dates_to",""),
("1168","195","total_sales","0"),
("1169","195","_tax_status","taxable"),
("1170","195","_tax_class",""),
("1171","195","_manage_stock","no"),
("1172","195","_backorders","no"),
("1173","195","_low_stock_amount",""),
("1174","195","_sold_individually","no"),
("1175","195","_weight",""),
("1176","195","_length",""),
("1177","195","_width",""),
("1178","195","_height",""),
("1179","195","_upsell_ids","a:0:{}"),
("1180","195","_crosssell_ids","a:0:{}"),
("1181","195","_purchase_note",""),
("1182","195","_default_attributes","a:0:{}"),
("1183","195","_virtual","no"),
("1184","195","_downloadable","no"),
("1185","195","_product_image_gallery",""),
("1186","195","_download_limit","-1"),
("1187","195","_download_expiry","-1"),
("1188","195","_stock",""),
("1189","195","_stock_status","instock"),
("1190","195","_product_version","3.5.5"),
("1191","195","_price","89000"),
("1192","195","_edit_lock","1551113157:1"),
("1193","197","_wc_review_count","0"),
("1194","197","_wc_rating_count","a:0:{}");
INSERT INTO gdd_postmeta VALUES
("1195","197","_wc_average_rating","0"),
("1196","197","_edit_last","1"),
("1197","197","_edit_lock","1551114115:1"),
("1198","198","_wp_attached_file","2019/02/chau-thuy-tinh-hu-sua-chua-510x510.jpg"),
("1199","198","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:46:\"2019/02/chau-thuy-tinh-hu-sua-chua-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"chau-thuy-tinh-hu-sua-chua-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"chau-thuy-tinh-hu-sua-chua-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"chau-thuy-tinh-hu-sua-chua-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"chau-thuy-tinh-hu-sua-chua-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"chau-thuy-tinh-hu-sua-chua-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"chau-thuy-tinh-hu-sua-chua-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1200","197","_thumbnail_id","198"),
("1201","197","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1202","197","_sku",""),
("1203","197","_regular_price","15000"),
("1204","197","_sale_price",""),
("1205","197","_sale_price_dates_from",""),
("1206","197","_sale_price_dates_to",""),
("1207","197","total_sales","0"),
("1208","197","_tax_status","taxable"),
("1209","197","_tax_class",""),
("1210","197","_manage_stock","no"),
("1211","197","_backorders","no"),
("1212","197","_low_stock_amount",""),
("1213","197","_sold_individually","no"),
("1214","197","_weight",""),
("1215","197","_length",""),
("1216","197","_width",""),
("1217","197","_height",""),
("1218","197","_upsell_ids","a:0:{}"),
("1219","197","_crosssell_ids","a:0:{}"),
("1220","197","_purchase_note",""),
("1221","197","_default_attributes","a:0:{}"),
("1222","197","_virtual","no"),
("1223","197","_downloadable","no"),
("1224","197","_product_image_gallery",""),
("1225","197","_download_limit","-1"),
("1226","197","_download_expiry","-1"),
("1227","197","_stock",""),
("1228","197","_stock_status","instock"),
("1229","197","_product_version","3.5.5"),
("1230","197","_price","15000"),
("1231","199","_wc_review_count","0"),
("1232","199","_wc_rating_count","a:0:{}"),
("1233","199","_wc_average_rating","0"),
("1234","199","_edit_last","1"),
("1235","199","_edit_lock","1551113202:1"),
("1236","200","_wp_attached_file","2019/02/chau-thuy-tinh-tung-to-02-510x510.jpg"),
("1237","200","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:45:\"2019/02/chau-thuy-tinh-tung-to-02-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-thuy-tinh-tung-to-02-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"chau-thuy-tinh-tung-to-02-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"chau-thuy-tinh-tung-to-02-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-thuy-tinh-tung-to-02-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"chau-thuy-tinh-tung-to-02-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"chau-thuy-tinh-tung-to-02-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1238","199","_thumbnail_id","200"),
("1239","199","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1240","199","_sku",""),
("1241","199","_regular_price","25000"),
("1242","199","_sale_price",""),
("1243","199","_sale_price_dates_from",""),
("1244","199","_sale_price_dates_to",""),
("1245","199","total_sales","0"),
("1246","199","_tax_status","taxable"),
("1247","199","_tax_class",""),
("1248","199","_manage_stock","no"),
("1249","199","_backorders","no"),
("1250","199","_low_stock_amount",""),
("1251","199","_sold_individually","no"),
("1252","199","_weight",""),
("1253","199","_length",""),
("1254","199","_width",""),
("1255","199","_height",""),
("1256","199","_upsell_ids","a:0:{}"),
("1257","199","_crosssell_ids","a:0:{}"),
("1258","199","_purchase_note",""),
("1259","199","_default_attributes","a:0:{}"),
("1260","199","_virtual","no"),
("1261","199","_downloadable","no"),
("1262","199","_product_image_gallery",""),
("1263","199","_download_limit","-1"),
("1264","199","_download_expiry","-1"),
("1265","199","_stock",""),
("1266","199","_stock_status","instock"),
("1267","199","_product_version","3.5.5"),
("1268","199","_price","25000"),
("1269","201","_wc_review_count","0"),
("1270","201","_wc_rating_count","a:0:{}"),
("1271","201","_wc_average_rating","0"),
("1272","201","_edit_last","1"),
("1273","201","_edit_lock","1551457235:1"),
("1274","202","_wp_attached_file","2019/02/chau-thuy-tinh-tron-vat-510x510.jpg"),
("1275","202","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:43:\"2019/02/chau-thuy-tinh-tron-vat-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"chau-thuy-tinh-tron-vat-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"chau-thuy-tinh-tron-vat-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"chau-thuy-tinh-tron-vat-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"chau-thuy-tinh-tron-vat-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"chau-thuy-tinh-tron-vat-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"chau-thuy-tinh-tron-vat-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1276","201","_thumbnail_id","202"),
("1277","201","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("1278","201","_sku",""),
("1279","201","_regular_price","56000"),
("1280","201","_sale_price",""),
("1281","201","_sale_price_dates_from",""),
("1282","201","_sale_price_dates_to",""),
("1283","201","total_sales","0"),
("1284","201","_tax_status","taxable"),
("1285","201","_tax_class",""),
("1286","201","_manage_stock","no"),
("1287","201","_backorders","no"),
("1288","201","_low_stock_amount",""),
("1289","201","_sold_individually","no"),
("1290","201","_weight",""),
("1291","201","_length",""),
("1292","201","_width",""),
("1293","201","_height",""),
("1294","201","_upsell_ids","a:0:{}");
INSERT INTO gdd_postmeta VALUES
("1295","201","_crosssell_ids","a:0:{}"),
("1296","201","_purchase_note",""),
("1297","201","_default_attributes","a:0:{}"),
("1298","201","_virtual","no"),
("1299","201","_downloadable","no"),
("1300","201","_product_image_gallery",""),
("1301","201","_download_limit","-1"),
("1302","201","_download_expiry","-1"),
("1303","201","_stock",""),
("1304","201","_stock_status","outofstock"),
("1305","201","_product_version","3.5.5"),
("1306","201","_price","56000"),
("1308","208","_wp_attached_file","2019/02/bg-product.jpg"),
("1309","208","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:142;s:4:\"file\";s:22:\"2019/02/bg-product.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bg-product-150x142.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bg-product-300x31.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bg-product-768x80.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"bg-product-1024x106.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:106;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"bg-product-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"bg-product-600x62.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"bg-product-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"bg-product-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"bg-product-600x62.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"bg-product-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1377","241","_wp_attached_file","2019/02/chau-xo-sat-01-510x510.jpg"),
("1378","241","_wp_attachment_metadata","a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:34:\"2019/02/chau-xo-sat-01-510x510.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"chau-xo-sat-01-510x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"chau-xo-sat-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"chau-xo-sat-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"chau-xo-sat-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"chau-xo-sat-01-510x510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"chau-xo-sat-01-510x510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1379","190","_thumbnail_id","241"),
("1401","277","_wp_attached_file","2019/02/icon1-01-300x300.png"),
("1402","277","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2019/02/icon1-01-300x300.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"icon1-01-300x300-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon1-01-300x300-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon1-01-300x300-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1403","278","_wp_attached_file","2019/02/icon3-01-293x300.png"),
("1404","278","_wp_attachment_metadata","a:5:{s:5:\"width\";i:293;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2019/02/icon3-01-293x300.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"icon3-01-293x300-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon3-01-293x300-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1405","279","_wp_attached_file","2019/02/icon2-01-300x288.png"),
("1406","279","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:288;s:4:\"file\";s:28:\"2019/02/icon2-01-300x288.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"icon2-01-300x288-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-300x288.png\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"icon2-01-300x288-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1416","294","_edit_last","1"),
("1417","294","_edit_lock","1551115135:1"),
("1420","296","_wp_attached_file","2019/02/truc-phu-quy-tc-1.jpg"),
("1421","296","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:29:\"2019/02/truc-phu-quy-tc-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"truc-phu-quy-tc-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"truc-phu-quy-tc-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"truc-phu-quy-tc-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"truc-phu-quy-tc-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"truc-phu-quy-tc-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"truc-phu-quy-tc-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1422","294","_thumbnail_id","296"),
("1424","298","_edit_last","1"),
("1425","298","_edit_lock","1551115195:1"),
("1426","299","_wp_attached_file","2019/02/cau-tieu-tram-tieu-canh-1.jpg"),
("1427","299","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2019/02/cau-tieu-tram-tieu-canh-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cau-tieu-tram-tieu-canh-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cau-tieu-tram-tieu-canh-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"cau-tieu-tram-tieu-canh-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"cau-tieu-tram-tieu-canh-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"cau-tieu-tram-tieu-canh-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"cau-tieu-tram-tieu-canh-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1428","298","_thumbnail_id","299"),
("1430","301","_edit_last","1"),
("1431","301","_edit_lock","1551115281:1"),
("1432","302","_wp_attached_file","2019/02/sen-da-dep.jpg"),
("1433","302","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2019/02/sen-da-dep.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sen-da-dep-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sen-da-dep-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"sen-da-dep-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"sen-da-dep-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"sen-da-dep-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"sen-da-dep-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1434","301","_thumbnail_id","302"),
("1436","304","_edit_last","1"),
("1437","304","_edit_lock","1551115345:1"),
("1438","305","_wp_attached_file","2019/02/tieu-canh-hong-mon-800x800.jpg"),
("1439","305","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:38:\"2019/02/tieu-canh-hong-mon-800x800.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"tieu-canh-hong-mon-800x800-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"tieu-canh-hong-mon-800x800-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"tieu-canh-hong-mon-800x800-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"tieu-canh-hong-mon-800x800-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"tieu-canh-hong-mon-800x800-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"tieu-canh-hong-mon-800x800-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1440","304","_thumbnail_id","305"),
("1442","307","_edit_last","1"),
("1443","307","_edit_lock","1551115397:1"),
("1444","308","_wp_attached_file","2019/02/3-1.jpg"),
("1445","308","_wp_attachment_metadata","a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:15:\"2019/02/3-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("1446","307","_thumbnail_id","308"),
("1464","326","_edit_last","1"),
("1465","326","_edit_lock","1551116772:1"),
("1545","326","_thumbnail_id",""),
("1572","393","_menu_item_type","taxonomy"),
("1573","393","_menu_item_menu_item_parent","0"),
("1574","393","_menu_item_object_id","22"),
("1575","393","_menu_item_object","category"),
("1576","393","_menu_item_target",""),
("1577","393","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("1578","393","_menu_item_xfn",""),
("1579","393","_menu_item_url",""),
("1743","471","_form","<label> T??n c???a b???n (b???t bu???c)\n    [text* your-name] </label>\n\n<label> ?????a ch??? Email (b???t bu???c)\n    [email* your-email] </label>\n\n<label> Ti??u ?????:\n    [text your-subject] </label>\n\n<label> Th??ng ??i???p\n    [textarea your-message] </label>\n\n[submit \"G???i ??i\"]"),
("1744","471","_mail","a:8:{s:7:\"subject\";s:64:\"M???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\";s:4:\"body\";s:271:\"G???i ?????n t???: [your-name] <[your-email]>\nTi??u ?????: [your-subject]\n\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("1745","471","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:64:\"M???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\";s:4:\"body\";s:196:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}"),
("1746","471","_messages","a:8:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";}"),
("1747","471","_additional_settings",""),
("1748","471","_locale","vi"),
("1754","474","_form","[text* text-748 placeholder \"T??n c???a b???n...\"]\n[tel* tel-670 placeholder \"S??? ??i???n tho???i...\"]\n[text text-7344 placeholder \"?????a ch??? c???a b???n...\"]\n[textarea textarea-872 placeholder \"N???i dung tin nh???n...\"]\n[submit \"G???i li??n h???\"]"),
("1755","474","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:64:\"M???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\";s:9:\"recipient\";s:17:\"webdemo@gmail.com\";s:4:\"body\";s:288:\"C?? ng?????i li??n h??? tr??n website:\n- H??? v?? t??n: [text-748]\n- S??? ??i???n tho???i: [tel-670]\n- ?????a ch???: [te[textarea-872]\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1756","474","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:64:\"M???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\";s:6:\"sender\";s:79:\"M???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:196:\"N???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdemo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("1757","474","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin c???m ??n, form ???? ???????c g???i th??nh c??ng.\";s:12:\"mail_sent_ng\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:16:\"validation_error\";s:86:\"C?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\";s:4:\"spam\";s:118:\"C?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\";s:12:\"accept_terms\";s:67:\"B???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\";s:16:\"invalid_required\";s:28:\"M???c n??y l?? b???t bu???c.\";s:16:\"invalid_too_long\";s:36:\"Nh???p qu?? s??? k?? t??? cho ph??p.\";s:17:\"invalid_too_short\";s:44:\"Nh???p ??t h??n s??? k?? t??? t???i thi???u.\";s:12:\"invalid_date\";s:46:\"?????nh d???ng ng??y th??ng kh??ng h???p l???.\";s:14:\"date_too_early\";s:58:\"Ng??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\";s:13:\"date_too_late\";s:54:\"Ng??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\";s:13:\"upload_failed\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:24:\"upload_file_type_invalid\";s:69:\"B???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\";s:21:\"upload_file_too_large\";s:31:\"File k??ch th?????c qu?? l???n.\";s:23:\"upload_failed_php_error\";s:36:\"T???i file l??n kh??ng th??nh c??ng.\";s:14:\"invalid_number\";s:38:\"?????nh d???ng s??? kh??ng h???p l???.\";s:16:\"number_too_small\";s:48:\"Con s??? nh??? h??n s??? nh??? nh???t cho ph??p.\";s:16:\"number_too_large\";s:48:\"Con s??? l???n h??n s??? l???n nh???t cho ph??p.\";s:23:\"quiz_answer_not_correct\";s:30:\"C??u tr??? l???i ch??a ????ng.\";s:17:\"captcha_not_match\";s:34:\"B???n ???? nh???p sai m?? CAPTCHA.\";s:13:\"invalid_email\";s:38:\"?????a ch??? e-mail kh??ng h???p l???.\";s:11:\"invalid_url\";s:22:\"URL kh??ng h???p l???.\";s:11:\"invalid_tel\";s:39:\"S??? ??i???n tho???i kh??ng h???p l???.\";}"),
("1758","474","_additional_settings",""),
("1759","474","_locale","vi"),
("1773","38","_thumbnail_id",""),
("1842","530","_wp_trash_meta_status","publish"),
("1843","530","_wp_trash_meta_time","1557133497"),
("1844","531","_wp_attached_file","woocommerce-placeholder.png"),
("1845","531","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_posts VALUES
("1","1","2019-02-25 10:19:25","2019-02-25 10:19:25","<!-- wp:paragraph -->\n<p>C???m ??n v?? ???? s??? d???ng WordPress. ????y l?? b??i vi???t ?????u ti??n c???a b???n. S???a ho???c x??a n??, v?? b???t ?????u b??i vi???t c???a b???n nh??!</p>\n<!-- /wp:paragraph -->","Ch??o t???t c??? m???i ng?????i!","","publish","open","open","","chao-moi-nguoi","","","2019-02-25 10:19:25","2019-02-25 10:19:25","","0","https://tppone.com/demo/chaucay/?p=1","0","post","","1"),
("2","1","2019-02-25 10:19:25","2019-02-25 10:19:25","[section label=\"Slider\" bg_color=\"rgb(255, 255, 255)\" padding=\"20px\" class=\"slider-section\"]\n\n[row style=\"small\"]\n\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"133\" image_size=\"original\" height=\"55%\"]\n\n\n[/ux_slider]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[ux_image id=\"129\" image_size=\"original\" link=\"#\" target=\"_blank\"]\n\n[ux_image id=\"128\" image_size=\"original\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"279\" img_width=\"70\" pos=\"left\"]\n\n<h4><span style=\"font-size: 100%;\">Ti???t ki???m chi ph??</span></h4>\n<p>Ti???t ki???m t???i ??a chi ph?? s??? d???ng so v???i c??c lo???i s???n ph???m kh??c</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"277\" img_width=\"70\" pos=\"left\"]\n\n<h4>An to??n cho ng?????i s??? d???ng</h4>\n<p>Tuy???t ?????i kh??ng h??a ch???t g??y h???i cho ng?????i s??? d???ng.</p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"278\" img_width=\"70\" pos=\"left\"]\n\n<h4>Th??n thi???n m??i tr?????ng</h4>\n<p>S???n ph???m c???a ch??ng t??i ho??n to??n th??n thi???n v???i m??i tr?????ng.</p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n[gap height=\"20px\"]\n\n\n[/section]\n[section label=\"S???n ph???m b??n ch???y\" bg_color=\"rgb(250, 250, 250)\" class=\"row-sp\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Ch???u c??y b??n ch???y\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\" size=\"95\"]\n\n[ux_products style=\"normal\" columns=\"5\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" auto_slide=\"3000\" products=\"9\" orderby=\"sales\" image_height=\"100%\" image_radius=\"3\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Ch???u g???m nh???p kh???u\" bg_color=\"rgb(255, 255, 255)\" class=\"row-sp\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Ch???u g???m nh???p kh???u\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\" size=\"95\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/chau-gom-nhap-khau/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"15\" products=\"5\" orderby=\"sales\" image_height=\"100%\" image_radius=\"3\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Ch???u g???m ?????t nung\" bg_color=\"rgb(250, 250, 250)\" class=\"row-sp\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Ch???u g???m ?????t nung\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\" size=\"95\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/chau-gom-dat-nung/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"17\" products=\"5\" orderby=\"sales\" image_height=\"100%\" image_radius=\"3\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Ch???u g???m s???\" bg_color=\"rgb(255, 255, 255)\" class=\"row-sp\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Ch???u g???m s???\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\" size=\"95\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/chau-gom-su/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"16\" products=\"5\" orderby=\"sales\" image_height=\"100%\" image_radius=\"3\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Ch???u th???y tinh\" bg_color=\"rgb(250, 250, 250)\" class=\"row-sp\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title text=\"Ch???u th???y tinh\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\" size=\"95\" link_text=\"+ Xem t???t c???\" link=\"/danh-muc-san-pham/chau-thuy-tinh/\"]\n\n[ux_products style=\"normal\" type=\"row\" columns=\"5\" cat=\"17\" products=\"5\" orderby=\"sales\" image_height=\"100%\" image_radius=\"3\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"C??c lo???i ch???u kh??c\" bg_color=\"rgb(255, 255, 255)\" class=\"row-sp\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"C??c lo???i ch???u kh??c\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\" size=\"95\"]\n\n[ux_products style=\"normal\" columns=\"5\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" auto_slide=\"3000\" cat=\"19\" products=\"9\" orderby=\"sales\" image_height=\"100%\" image_radius=\"3\" image_size=\"original\" image_hover=\"zoom\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin t???c\" bg_color=\"rgb(250, 250, 250)\" class=\"tin-tuc\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"Tin t???c - b??i vi???t h?????ng d???n\" tag_name=\"h2\" color=\"rgb(84, 140, 1)\"]\n\n[blog_posts style=\"normal\" col_spacing=\"small\" columns__md=\"1\" slider_nav_style=\"simple\" slider_nav_position=\"outside\" cat=\"22\" show_date=\"false\" excerpt_length=\"20\" comments=\"false\" image_height=\"60%\" image_size=\"original\" image_hover=\"zoom\" text_align=\"left\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Trang ch???","","publish","closed","open","","trang-chu","","","2019-02-25 19:22:04","2019-02-25 19:22:04","","0","https://tppone.com/demo/chaucay/?page_id=2","0","page","","0"),
("3","1","2019-02-25 10:19:25","2019-02-25 10:19:25","<!-- wp:heading --><h2>Ch??ng t??i l?? ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>?????a ch??? website l??: https://bizhostvn.com/w/chaucay.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin c?? nh??n n??o b??? thu th???p v?? t???i sao thu th???p</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>B??nh lu???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi kh??ch truy c???p ????? l???i b??nh lu???n tr??n trang web, ch??ng t??i thu th???p d??? li???u ???????c hi???n th??? trong bi???u m???u b??nh lu???n v?? c??ng l?? ?????a ch??? IP c???a ng?????i truy c???p v?? chu???i user agent c???a ng?????i d??ng tr??nh duy???t ????? gi??p ph??t hi???n spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>M???t chu???i ???n danh ???????c t???o t??? ?????a ch??? email c???a b???n (c??n ???????c g???i l?? hash) c?? th??? ???????c cung c???p cho d???ch v??? Gravatar ????? xem b???n c?? ??ang s??? d???ng n?? hay kh??ng. Ch??nh s??ch b???o m???t c???a d???ch v??? Gravatar c?? t???i ????y: https://automattic.com/privacy/. Sau khi ch???p nh???n b??nh lu???n c???a b???n, ???nh ti???u s??? c???a b???n ???????c hi???n th??? c??ng khai trong ng??? c???nh b??nh lu???n c???a b???n.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th?? vi???n</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n t???i h??nh ???nh l??n trang web, b???n n??n tr??nh t???i l??n h??nh ???nh c?? d??? li???u v??? tr?? ???????c nh??ng (EXIF GPS) ??i k??m. Kh??ch truy c???p v??o trang web c?? th??? t???i xu???ng v?? gi???i n??n b???t k??? d??? li???u v??? tr?? n??o t??? h??nh ???nh tr??n trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Th??ng tin li??n h???</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n vi???t b??nh lu???n trong website, b???n c?? th??? cung c???p c???n nh???p t??n, email ?????a ch??? website trong cookie. C??c th??ng tin n??y nh???m gi??p b???n kh??ng c???n nh???p th??ng tin nhi???u l???n khi vi???t b??nh lu???n kh??c. Cookie n??y s??? ???????c l??u gi??? trong m???t n??m.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n v?? ????ng nh???p v?? website, ch??ng t??i s??? thi???t l???p m???t cookie t???m th???i ????? x??c ?????nh n???u tr??nh duy???t cho ph??p s??? d???ng cookie. Cookie n??y kh??ng bao g???m th??ng tin c?? nh??n v?? s??? ???????c g??? b??? khi b???n ????ng tr??nh duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi b???n ????ng nh???p, ch??ng t??i s??? thi???t l???p m???t v??i cookie ????? l??u th??ng tin ????ng nh???p v?? l???a ch???n hi???n th???. Th??ng tin ????ng nh???p g???n nh???t l??u trong hai ng??y, v?? l???a ch???n hi???n th??? g???n nh???t l??u trong m???t n??m. N???u b???n ch???n &quot;Nh??? t??i&quot;, th??ng tin ????ng nh???p s??? ???????c l??u trong hai tu???n. N???u b???n tho??t t??i kho???n, th??ng tin cookie ????ng nh???p s??? b??? xo??.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>N???u b???n s???a ho???c c??ng b??? b??i vi???t, m???t b???n cookie b??? sung s??? ???????c l??u trong tr??nh duy???t. Cookie n??y kh??ng ch???a th??ng tin c?? nh??n v?? ch??? ????n gi???n bao g???m ID c???a b??i vi???t b???n ???? s???a. N?? t??? ?????ng h???t h???n sau 1 ng??y.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>N???i dung nh??ng t??? website kh??c</h3><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??i vi???t tr??n trang web n??y c?? th??? bao g???m n???i dung ???????c nh??ng (v?? d???: video, h??nh ???nh, b??i vi???t, v.v.). N???i dung ???????c nh??ng t??? c??c trang web kh??c ho???t ?????ng theo c??ng m???t c??ch ch??nh x??c nh?? khi kh??ch truy c???p ???? truy c???p trang web kh??c.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nh???ng website n??y c?? th??? thu th???p d??? li???u v??? b???n, s??? d???ng cookie, nh??ng c??c tr??nh theo d??i c???a b??n th??? ba v?? gi??m s??t t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng ????, bao g???m theo d??i t????ng t??c c???a b???n v???i n???i dung ???????c nh??ng n???u b???n c?? t??i kho???n v?? ???? ????ng nh???p v??o trang web ????.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Ph??n t??ch</h3><!-- /wp:heading --><!-- wp:heading --><h2>Ch??ng t??i chia s??? d??? li???u c???a b???n v???i ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>D??? li???u c???a b???n t???n t???i bao l??u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n ????? l???i b??nh lu???n, b??nh lu???n v?? si??u d??? li???u c???a n?? s??? ???????c gi??? l???i v?? th???i h???n. ??i???u n??y l?? ????? ch??ng t??i c?? th??? t??? ?????ng nh???n ra v?? ch???p nh???n b???t k??? b??nh lu???n n??o thay v?? gi??? ch??ng trong khu v???c ?????i ki???m duy???t.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>?????i v???i ng?????i d??ng ????ng k?? tr??n trang web c???a ch??ng t??i (n???u c??), ch??ng t??i c??ng l??u tr??? th??ng tin c?? nh??n m?? h??? cung c???p trong h??? s?? ng?????i d??ng c???a h???. T???t c??? ng?????i d??ng c?? th??? xem, ch???nh s???a ho???c x??a th??ng tin c?? nh??n c???a h??? b???t k??? l??c n??o (ngo???i tr??? h??? kh??ng th??? thay ?????i t??n ng?????i d??ng c???a h???). Qu???n tr??? vi??n trang web c??ng c?? th??? xem v?? ch???nh s???a th??ng tin ????.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c quy???n n??o c???a b???n v???i d??? li???u c???a m??nh</h2><!-- /wp:heading --><!-- wp:paragraph --><p>N???u b???n c?? t??i kho???n tr??n trang web n??y ho???c ???? ????? l???i nh???n x??t, b???n c?? th??? y??u c???u nh???n t???p xu???t d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n, bao g???m m???i d??? li???u b???n ???? cung c???p cho ch??ng t??i. B???n c??ng c?? th??? y??u c???u ch??ng t??i x??a m???i d??? li???u c?? nh??n m?? ch??ng t??i l??u gi??? v??? b???n. ??i???u n??y kh??ng bao g???m b???t k??? d??? li???u n??o ch??ng t??i c?? ngh??a v??? gi??? cho c??c m???c ????ch h??nh ch??nh, ph??p l?? ho???c b???o m???t.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>C??c d??? li???u c???a b???n ???????c g???i t???i ????u</h2><!-- /wp:heading --><!-- wp:paragraph --><p>C??c b??nh lu???n c???a kh??ch (kh??ng ph???i l?? th??nh vi??n) c?? th??? ???????c ki???m tra th??ng qua d???ch v??? t??? ?????ng ph??t hi???n spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Th??ng tin li??n h??? c???a b???n</h2><!-- /wp:heading --><!-- wp:heading --><h2>Th??ng tin b??? sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??ch ch??ng t??i b???o v??? d??? li???u c???a b???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c qu?? tr??nh ti???t l??? d??? li???u m?? ch??ng t??i th???c hi???n</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Nh???ng b??n th??? ba ch??ng t??i nh???n d??? li???u t??? ????</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Vi???c quy???t ?????nh v??/ho???c thu th???p th??ng tin t??? ?????ng m?? ch??ng t??i ??p d???ng v???i d??? li???u ng?????i d??ng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>C??c y??u c???u c??ng b??? th??ng tin ???????c qu???n l??</h3><!-- /wp:heading -->","Ch??nh s??ch b???o m???t","","draft","closed","open","","chinh-sach-bao-mat","","","2019-02-25 10:19:25","2019-02-25 10:19:25","","0","https://tppone.com/demo/chaucay/?page_id=3","0","page","","0"),
("16","1","2019-02-25 10:54:20","2019-02-25 10:54:20","","C???a h??ng","","publish","closed","closed","","mua","","","2019-02-25 10:54:20","2019-02-25 10:54:20","","0","https://tppone.com/demo/chaucay/mua/","0","page","","0"),
("17","1","2019-02-25 10:54:20","2019-02-25 10:54:20","[woocommerce_cart]","Gi??? h??ng","","publish","closed","closed","","gio-hang","","","2019-02-25 10:54:20","2019-02-25 10:54:20","","0","https://tppone.com/demo/chaucay/gio-hang/","0","page","","0"),
("18","1","2019-02-25 10:54:20","2019-02-25 10:54:20","[woocommerce_checkout]","Thanh to??n","","publish","closed","closed","","thanh-toan","","","2019-02-25 10:54:20","2019-02-25 10:54:20","","0","https://tppone.com/demo/chaucay/thanh-toan/","0","page","","0"),
("19","1","2019-02-25 10:54:20","2019-02-25 10:54:20","[woocommerce_my_account]","T??i kho???n","","publish","closed","closed","","tai-khoan","","","2019-02-25 10:54:20","2019-02-25 10:54:20","","0","https://tppone.com/demo/chaucay/tai-khoan/","0","page","","0"),
("20","1","2019-02-25 10:57:38","2019-02-25 10:57:38","","ch???u-g???m-nh???p-kh???u","","inherit","open","closed","","chau-gom-nhap-khau","","","2019-02-25 10:57:38","2019-02-25 10:57:38","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/ch???u-g???m-nh???p-kh???u.jpg","0","attachment","image/jpeg","0"),
("21","1","2019-02-25 10:58:23","2019-02-25 10:58:23","","chau-gom-su","","inherit","open","closed","","chau-gom-su","","","2019-02-25 10:58:23","2019-02-25 10:58:23","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-su.jpg","0","attachment","image/jpeg","0"),
("22","1","2019-02-25 10:59:01","2019-02-25 10:59:01","","chau-gom-dat-nung","","inherit","open","closed","","chau-gom-dat-nung","","","2019-02-25 10:59:01","2019-02-25 10:59:01","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-dat-nung.jpg","0","attachment","image/jpeg","0"),
("23","1","2019-02-25 10:59:31","2019-02-25 10:59:31","","chau-thuy-tinh","","inherit","open","closed","","chau-thuy-tinh","","","2019-02-25 10:59:31","2019-02-25 10:59:31","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-thuy-tinh.jpg","0","attachment","image/jpeg","0"),
("24","1","2019-02-25 11:00:03","2019-02-25 11:00:03","","cac-loai-chau-khac","","inherit","open","closed","","cac-loai-chau-khac","","","2019-02-25 11:00:03","2019-02-25 11:00:03","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/cac-loai-chau-khac.jpg","0","attachment","image/jpeg","0"),
("25","1","2019-02-25 11:07:12","2019-02-25 11:07:12","","logo-chau-canh","","inherit","open","closed","","logo-chau-canh","","","2019-02-25 11:07:12","2019-02-25 11:07:12","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/logo-chau-canh.png","0","attachment","image/png","0"),
("34","1","2019-02-25 11:10:24","2019-02-25 11:10:24","","cayxinh.vn","","publish","closed","closed","","cayxinh-vn","","","2019-02-25 11:22:07","2019-02-25 11:22:07","","0","https://tppone.com/demo/chaucay/?p=34","1","nav_menu_item","","0"),
("38","1","2019-02-25 11:11:01","2019-02-25 11:11:01","<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14900.931775031808!2d105.79967699999999!3d20.9832975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1sen!2s!4v1551121842328\" width=\"100%\" height=\"250&quot;\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h3>Li??n h??? v???i ch??ng t??i</h3>\n<p>C??y Xinh lu??n s???n l??ng ????n nh???n c??c ?? ki???n ????ng g??p c??ng nh?? h???i ????p c??c th???c m???c c???a b???n v??? c??c s???n ph???m, d???ch v???. B???n c?? th??? li??n h??? qua bi???u m???u ho???c li??n h??? theo c??c th??ng tin d?????i ????y n???u b???n c?? b???t k??? y??u c???u ho???c th???c m???c n??o</p>\n[button text=\"Xem b???n ?????\" letter_case=\"lowercase\" radius=\"99\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"474\"]\n\n\n[/col]\n\n[/row]","Li??n h???","","publish","closed","closed","","lien-he","","","2019-02-25 19:11:32","2019-02-25 19:11:32","","0","https://tppone.com/demo/chaucay/?page_id=38","0","page","","0"),
("40","1","2019-02-25 11:11:09","2019-02-25 11:11:09","Xin ch??o b???n ??? ?????c gi??? c???a??<a href=\"https://Webdemo.com/\">Webdemo.com</a>,\n\nL???i ?????u ti??n, cho ph??p Webdemo ???????c g???i t???i qu?? kh??ch, qu?? th??n nh??n v?? b???n b?? l???i ch??c s???c kh???e, th??nh ?????t v?? h???nh ph??c.\n\n<a href=\"http://Webdemo.com/\">Webdemo.com</a>?????????c th??nh l???p th??ng 11/2016 d?????i d???ng Blog c?? nh??n, v???i m???c ????ch ban ?????u l?? n??i??l??u tr??? nh???ng??<strong>b??i vi???t ki???n th???c</strong>??ho???c nh???ng<strong>??s???n ph???m s??ng t???o</strong>??trong qu?? tr??nh h???c t???p,??l??m vi???c.\n\nSau m???t th???i gian ho???t ?????ng, website ???? c?? nh???ng b?????c ti???n ????ng k??? c??? v??? ch???t l?????ng v?? h??nh th???c. S??? l?????ng kh??ch truy c???p website??tr??? th??nh kh??ch h??ng s??? d???ng d???ch v??? thi???t k??? t??ng l??n ????ng k???. T??? vi???c ch??m ch??t n???i dung cho website theo s??? th??ch, Webdemo?????? d???n chinh ph???c kh??ch h??ng v???i nh???ng d???ch v??? thi???t k??? s??ng t???o uy t??n v?? ch???t l?????ng.\n\nT??? tin v???i kh??? n??ng ????p ???ng m???i y??u c???u thi???t k??? c???a kh??ch h??ng, Webdemo ch??nh th???c ??em l???i d???ch v?????<strong>Thi???t k??? ????? h???a</strong>??v????<strong>Thi???t k??? Website chuy??n nghi???p??</strong>t??? ?????u n??m 2017.<strong>??</strong>S??? ???ng h??? v?? tin t?????ng c???a kh??ch h??ng s?????tr??? th??nh ngu???n c???m h???ng??l???n lao cho Webdemo??trong qu?? tr??nh??ph??c h???a nh???ng ?? t?????ng thi???t k??? ???????c tr??? th??nh hi???n th???c.\n\nXin c??m ??n s??? tin t?????ng v?? ???ng h??? c???a qu?? kh??ch trong th???i gian qua.\n\nTr??n tr???ng./.\n\nAdmin","Gi???i thi???u","","publish","closed","closed","","gioi-thieu","","","2019-02-25 19:12:03","2019-02-25 19:12:03","","0","https://tppone.com/demo/chaucay/?page_id=40","0","page","","0"),
("42","1","2019-02-25 11:11:20","2019-02-25 11:11:20","","????ng k?? ?????i l??","","publish","closed","closed","","dang-ky-dai-ly","","","2019-02-25 11:11:20","2019-02-25 11:11:20","","0","https://tppone.com/demo/chaucay/?page_id=42","0","page","","0"),
("44","1","2019-02-25 11:12:35","2019-02-25 11:12:35","","Ch???u g???m nh???p kh???u","","publish","closed","closed","","chau-gom-nhap-khau","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=44","2","nav_menu_item","","0"),
("45","1","2019-02-25 11:12:35","2019-02-25 11:12:35","","Ch???u g???m ?????t nung","","publish","closed","closed","","chau-gom-dat-nung","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=45","3","nav_menu_item","","0"),
("46","1","2019-02-25 11:12:35","2019-02-25 11:12:35","","Ch???u g???m s???","","publish","closed","closed","","chau-gom-su","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=46","4","nav_menu_item","","0"),
("47","1","2019-02-25 11:12:35","2019-02-25 11:12:35","","Ch???u th???y tinh","","publish","closed","closed","","chau-thuy-tinh","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=47","5","nav_menu_item","","0"),
("48","1","2019-02-25 11:12:35","2019-02-25 11:12:35","","Ch???u kh??c","","publish","closed","closed","","chau-khac","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=48","6","nav_menu_item","","0"),
("51","1","2019-02-25 11:12:55","2019-02-25 11:12:55"," ","","","publish","closed","closed","","51","","","2019-02-25 11:22:07","2019-02-25 11:22:07","","0","https://tppone.com/demo/chaucay/?p=51","2","nav_menu_item","","0"),
("52","1","2019-02-25 11:12:55","2019-02-25 11:12:55"," ","","","publish","closed","closed","","52","","","2019-02-25 11:22:07","2019-02-25 11:22:07","","0","https://tppone.com/demo/chaucay/?p=52","3","nav_menu_item","","0"),
("66","1","2019-02-25 11:16:10","2019-02-25 11:16:10","https://bizhostvn.com/w/chaucay/wp-content/uploads/2019/02/cropped-logo-chau-canh.png","cropped-logo-chau-canh.png","","inherit","open","closed","","cropped-logo-chau-canh-png","","","2019-02-25 11:16:10","2019-02-25 11:16:10","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/cropped-logo-chau-canh.png","0","attachment","image/png","0"),
("72","1","2019-02-25 11:22:15","2019-02-25 11:22:15"," ","","","publish","closed","closed","","72","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=72","8","nav_menu_item","","0"),
("85","1","2019-02-25 11:28:54","2019-02-25 11:28:54","[row]\n\n[col span=\"7\" span__sm=\"12\"]\n\n[gap height=\"28px\"]\n\n[search size=\"large\" class=\"form-tim-kiem\"]\n\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[gap height=\"13px\"]\n\n[featured_box img=\"88\" img_width=\"28\" pos=\"left\"]\n\n[gap height=\"5px\"]\n\n<p><span style=\"font-size: 110%; color: #000000;\">B??n h??ng: 094.822.5678</span></p>\n\n[/featured_box]\n[gap height=\"4px\"]\n\n[featured_box img=\"88\" img_width=\"28\" pos=\"left\"]\n\n[gap height=\"5px\"]\n\n<p><span style=\"font-size: 110%; color: #000000;\">T?? v???n: 096.596.2586</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]","Header block","","publish","closed","closed","","header-block","","","2019-02-25 11:52:00","2019-02-25 11:52:00","","0","https://tppone.com/demo/chaucay/?post_type=blocks&#038;p=85","0","blocks","","0"),
("88","1","2019-02-25 11:29:51","2019-02-25 11:29:51","","tu-van-mien-phi","","inherit","open","closed","","tu-van-mien-phi","","","2019-02-25 11:29:51","2019-02-25 11:29:51","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/tu-van-mien-phi.png","0","attachment","image/png","0"),
("124","1","2019-02-25 11:52:26","2019-02-25 11:52:26"," ","","","publish","closed","closed","","124","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=124","1","nav_menu_item","","0"),
("128","1","2019-02-25 12:52:28","2019-02-25 12:52:28","","banner2","","inherit","open","closed","","banner2","","","2019-02-25 12:52:28","2019-02-25 12:52:28","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/banner2.jpg","0","attachment","image/jpeg","0"),
("129","1","2019-02-25 12:52:29","2019-02-25 12:52:29","","banner1","","inherit","open","closed","","banner1","","","2019-02-25 12:52:29","2019-02-25 12:52:29","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/banner1.jpg","0","attachment","image/jpeg","0"),
("133","1","2019-02-25 12:53:14","2019-02-25 12:53:14","","slider","","inherit","open","closed","","slider","","","2019-02-25 12:53:14","2019-02-25 12:53:14","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/slider.jpg","0","attachment","image/jpeg","0"),
("145","1","2019-02-25 12:58:23","2019-02-25 12:58:23","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m S??? M???t Na S2</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>6.5x7cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m B??t Tr??ng To h??ng cao c???p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-bat-trang-to","","","2019-02-25 16:49:16","2019-02-25 16:49:16","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=145","0","product","","0"),
("146","1","2019-02-25 12:58:19","2019-02-25 12:58:19","","chau-gom-su-mat-na-s2-min-510x510","","inherit","open","closed","","chau-gom-su-mat-na-s2-min-510x510","","","2019-02-25 12:58:19","2019-02-25 12:58:19","","145","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-su-mat-na-s2-min-510x510.jpg","0","attachment","image/jpeg","0"),
("147","1","2019-02-25 12:59:17","2019-02-25 12:59:17","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:</strong>??Ch???u G???m ?????t Nung b??? 3 N??u</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>?? 6x6cm, 8x8cm, 10x10cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m B??? 3 N??u nh???p kh???u H??n Qu???c","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-bo-3-nau","","","2019-02-25 16:52:37","2019-02-25 16:52:37","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=147","0","product","","0"),
("148","1","2019-02-25 12:59:13","2019-02-25 12:59:13","","chau-gom-dat-nung-nau-2-510x510","","inherit","open","closed","","chau-gom-dat-nung-nau-2-510x510","","","2019-02-25 12:59:13","2019-02-25 12:59:13","","147","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-dat-nung-nau-2-510x510.jpg","0","attachment","image/jpeg","0"),
("149","1","2019-02-25 12:59:56","2019-02-25 12:59:56","<div class=\"kk-star-ratings top-right rgt\" data-id=\"2711\">\n<div class=\"kksr-legend\">\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><a style=\"font-size: 14.4px;\" href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:</strong>??Ch???u G???m ?????t Nung b??? 3 Tr???ng</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>?? 6x6cm, 8x8cm, 10x10cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m B??? 3 Tr???ng h??ng cao c???p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-bo-3-trang","","","2019-02-25 16:50:45","2019-02-25 16:50:45","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=149","0","product","","0"),
("150","1","2019-02-25 12:59:48","2019-02-25 12:59:48","","chau-gom-dat-nung-trang-cao-min-510x510","","inherit","open","closed","","chau-gom-dat-nung-trang-cao-min-510x510","","","2019-02-25 12:59:48","2019-02-25 12:59:48","","149","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-dat-nung-trang-cao-min-510x510.jpg","0","attachment","image/jpeg","0"),
("151","1","2019-02-25 13:00:36","2019-02-25 13:00:36","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m ?????t Nung B??? 4 Tr???ng</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??6,10,13,17cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m B??? 4 Tr???ng cao c???p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-bo-4-trang","","","2019-02-25 16:48:47","2019-02-25 16:48:47","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=151","0","product","","0"),
("152","1","2019-02-25 13:00:28","2019-02-25 13:00:28","","chau-gom-bo-4-trang-510x510","","inherit","open","closed","","chau-gom-bo-4-trang-510x510","","","2019-02-25 13:00:28","2019-02-25 13:00:28","","151","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-bo-4-trang-510x510.jpg","0","attachment","image/jpeg","0"),
("153","1","2019-02-25 13:01:17","2019-02-25 13:01:17","<div class=\"kk-star-ratings top-right rgt\" data-id=\"3189\">\n<div class=\"kksr-legend\">\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><strong>C??y Xinh</strong><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m Nh???t B??? 3 Men Ch???y</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>12cm, 14cm, 16cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m Nh???t Men ????? h???a ti???t ch???y","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-nhat-bo-3-men-chay","","","2019-02-25 17:03:22","2019-02-25 17:03:22","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=153","0","product","","0"),
("154","1","2019-02-25 13:01:10","2019-02-25 13:01:10","","chau-gom-nhat-bo-3-men-chay-01-min-510x510","","inherit","open","closed","","chau-gom-nhat-bo-3-men-chay-01-min-510x510","","","2019-02-25 13:01:10","2019-02-25 13:01:10","","153","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-nhat-bo-3-men-chay-01-min-510x510.jpg","0","attachment","image/jpeg","0"),
("155","1","2019-02-25 13:02:00","2019-02-25 13:02:00","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>. </em>\n\n<em><strong>??y Xinh</strong></em>??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...","Ch???u G???m Nh???t B???n T???m men s??? Trung qu???c","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>.</em>","publish","open","closed","","chau-gom-nhat-bon-tam","","","2019-02-25 16:52:11","2019-02-25 16:52:11","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=155","0","product","","0"),
("156","1","2019-02-25 13:01:53","2019-02-25 13:01:53","","chau-gom-nhat-bon-tam-40k-min-510x510","","inherit","open","closed","","chau-gom-nhat-bon-tam-40k-min-510x510","","","2019-02-25 13:01:53","2019-02-25 13:01:53","","155","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-nhat-bon-tam-40k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("158","1","2019-02-25 13:02:29","2019-02-25 13:02:29","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong></em>\n\n<em>??</em><em><strong>C??y Xinh</strong></em>??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...","Ch???u G???m Nh???t B??ng Hoa ???????ng k??nh 25cm","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong></em>","publish","open","closed","","chau-gom-nhat-bong-hoa-trang","","","2019-02-25 16:50:57","2019-02-25 16:50:57","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=158","0","product","","0"),
("159","1","2019-02-25 13:02:25","2019-02-25 13:02:25","","chau-gom-nhat-bong-hoa-70k-min-510x510","","inherit","open","closed","","chau-gom-nhat-bong-hoa-70k-min-510x510","","","2019-02-25 13:02:25","2019-02-25 13:02:25","","158","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-nhat-bong-hoa-70k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("160","1","2019-02-25 13:02:57","2019-02-25 13:02:57","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>.</em>\n\n<em><strong>C??y Xinh</strong></em>??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...","Ch???u G???m Nh???t V??t Tr???ng khuy???n m???i","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>.</em>","publish","open","closed","","chau-gom-nhat-vat-trang-nho","","","2019-02-25 16:49:44","2019-02-25 16:49:44","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=160","0","product","","0"),
("161","1","2019-02-25 13:02:54","2019-02-25 13:02:54","","chau-gom-nhat-tron-vat-35k-min-510x510","","inherit","open","closed","","chau-gom-nhat-tron-vat-35k-min-510x510","","","2019-02-25 13:02:54","2019-02-25 13:02:54","","160","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-nhat-tron-vat-35k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("162","1","2019-02-25 13:03:25","2019-02-25 13:03:25","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>.</em>\n\n<em><strong>C??y Xinh</strong></em>??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...","Ch???u G???m ???ng ????a Cao 30cm ch???t ?????p","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>.</em>","publish","open","closed","","chau-gom-ong-dua-cao","","","2019-02-25 16:50:08","2019-02-25 16:50:08","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=162","0","product","","0"),
("163","1","2019-02-25 13:03:21","2019-02-25 13:03:21","","chau-gom-ong-dua-cao-trang-70k-min-510x510","","inherit","open","closed","","chau-gom-ong-dua-cao-trang-70k-min-510x510","","","2019-02-25 13:03:21","2019-02-25 13:03:21","","162","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-ong-dua-cao-trang-70k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("164","1","2019-02-25 13:03:54","2019-02-25 13:03:54","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong></em>\n\n<em><strong>C??y Xinh</strong></em>??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...\n<div class=\"social-icons follow-icons \"></div>","Ch???u G???m Ph??c L???c Th??? m??u x??m ?????t cao c???p","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong></em>","publish","open","closed","","chau-gom-phuc-loc-tho","","","2019-02-25 16:51:25","2019-02-25 16:51:25","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=164","0","product","","0"),
("165","1","2019-02-25 13:03:51","2019-02-25 13:03:51","","chau-gom-phuc-loc-tho-70k-min-510x510","","inherit","open","closed","","chau-gom-phuc-loc-tho-70k-min-510x510","","","2019-02-25 13:03:51","2019-02-25 13:03:51","","164","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-phuc-loc-tho-70k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("166","1","2019-02-25 13:04:35","2019-02-25 13:04:35","<div class=\"kk-star-ratings top-right rgt\" data-id=\"3342\">\n<div class=\"kksr-legend\">\n<div>\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><strong>C??y Xinh</strong><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m S??? Asa Cao</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>10??11.5cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m S??? Asa Cao nh???p kh???u H??n","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-su-asa-cao","","","2019-02-25 17:03:36","2019-02-25 17:03:36","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=166","0","product","","0"),
("167","1","2019-02-25 13:04:32","2019-02-25 13:04:32","","chau-gom-su-asa-cao-01-510x510","","inherit","open","closed","","chau-gom-su-asa-cao-01-510x510","","","2019-02-25 13:04:32","2019-02-25 13:04:32","","166","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-su-asa-cao-01-510x510.jpg","0","attachment","image/jpeg","0"),
("168","1","2019-02-25 13:05:07","2019-02-25 13:05:07","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m S??? C???c Mi???ng Loe</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>10x12cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m S??? C???c Mi???ng Loe","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-su-coc-mieng-loe","","","2019-02-25 13:05:07","2019-02-25 13:05:07","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=168","0","product","","0"),
("169","1","2019-02-25 13:05:03","2019-02-25 13:05:03","","chau-gom-su-mieng-loe-01-510x510","","inherit","open","closed","","chau-gom-su-mieng-loe-01-510x510","","","2019-02-25 13:05:03","2019-02-25 13:05:03","","168","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-su-mieng-loe-01-510x510.jpg","0","attachment","image/jpeg","0"),
("170","1","2019-02-25 13:05:52","2019-02-25 13:05:52","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:</strong>??Ch???u Ang S??? Nh???t To (c?? 5 m??u)</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??6X16cm</li>\n 	<li><strong>Tr???ng l?????ng</strong></li>\n</ul>","Ch???u G???m S??? Nh???t Ang To ????? c??c m??u ?????p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-su-nhat-ang-to","","","2019-02-25 16:53:18","2019-02-25 16:53:18","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=170","0","product","","0"),
("171","1","2019-02-25 13:05:48","2019-02-25 13:05:48","","chau-gom-nhat-dia-to-vang-70k-510x510","","inherit","open","closed","","chau-gom-nhat-dia-to-vang-70k-510x510","","","2019-02-25 13:05:48","2019-02-25 13:05:48","","170","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-nhat-dia-to-vang-70k-510x510.jpg","0","attachment","image/jpeg","0"),
("172","1","2019-02-25 13:06:36","2019-02-25 13:06:36","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m S??? Nh???t Tr??n Cao</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??6x14cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m S??? Nh???t Tr??n Cao","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-su-nhat-tron-cao","","","2019-02-25 13:06:37","2019-02-25 13:06:37","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=172","0","product","","0"),
("173","1","2019-02-25 13:06:30","2019-02-25 13:06:30","","chau-gom-nhat-binh-cao-trang-2-70k-min-510x510","","inherit","open","closed","","chau-gom-nhat-binh-cao-trang-2-70k-min-510x510","","","2019-02-25 13:06:30","2019-02-25 13:06:30","","172","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-nhat-binh-cao-trang-2-70k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("174","1","2019-02-25 13:07:16","2019-02-25 13:07:16","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n\nCh???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m S??? Nh???t Tr??n Th???p</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??4x6cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m S??? Nh???t Tr??n Th???p</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??4x6cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m S??? Nh???t Tr??n Th???p","v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-su-nhat-tron-thap","","","2019-02-25 13:07:16","2019-02-25 13:07:16","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=174","0","product","","0"),
("175","1","2019-02-25 13:07:14","2019-02-25 13:07:14","","chau-gom-su-nhat-tron-thap-01-510x510","","inherit","open","closed","","chau-gom-su-nhat-tron-thap-01-510x510","","","2019-02-25 13:07:14","2019-02-25 13:07:14","","174","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-su-nhat-tron-thap-01-510x510.jpg","0","attachment","image/jpeg","0"),
("176","1","2019-02-25 13:07:43","2019-02-25 13:07:43","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:</strong>??Ch???u G???m S??? TR</li>\n 	<li><strong>K??ch th?????c ch???u:</strong></li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m S??? TR men s??? B??t Tr??ng","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-su-tr","","","2019-02-25 16:52:51","2019-02-25 16:52:51","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=176","0","product","","0"),
("179","1","2019-02-25 13:08:16","2019-02-25 13:08:16","","chau-gom-TR-vuong-70k-min-510x510","","inherit","open","closed","","chau-gom-tr-vuong-70k-min-510x510","","","2019-02-25 13:08:16","2019-02-25 13:08:16","","176","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-TR-vuong-70k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("180","1","2019-02-25 13:08:51","2019-02-25 13:08:51","<div class=\"kk-star-ratings top-right rgt\" data-id=\"3251\">\n<div class=\"kksr-legend\">\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><strong>C??y Xinh</strong><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m V??n ???? Tr??? Tr??n</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>24x35cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m V??n ???? Tr??? Tr??n m??u x??m ghi","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-van-da-tru-tron","","","2019-02-25 16:51:38","2019-02-25 16:51:38","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=180","0","product","","0"),
("181","1","2019-02-25 13:08:46","2019-02-25 13:08:46","","chau-gom-van-da-tru-tron-01-510x510","","inherit","open","closed","","chau-gom-van-da-tru-tron-01-510x510","","","2019-02-25 13:08:46","2019-02-25 13:08:46","","180","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-van-da-tru-tron-01-510x510.jpg","0","attachment","image/jpeg","0"),
("182","1","2019-02-25 13:09:42","2019-02-25 13:09:42","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>. </em>\n\n<em><strong>??y Xinh</strong></em>??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...","Ch???u G???m B??t Tr??ng To m??u n??u ?????t cao 20cm","<strong><em>C??y Xinh</em></strong>??l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??<em><strong>C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng</strong>.</em>","publish","open","closed","","chau-gom-bat-trang-to-2","","","2019-02-25 16:59:46","2019-02-25 16:59:46","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=182","0","product","","0"),
("184","1","2019-02-25 13:09:34","2019-02-25 13:09:34","","chau-gom-bat-trang-pho-thong-to-50k-min-510x510","","inherit","open","closed","","chau-gom-bat-trang-pho-thong-to-50k-min-510x510","","","2019-02-25 13:09:34","2019-02-25 13:09:34","","182","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-bat-trang-pho-thong-to-50k-min-510x510.jpg","0","attachment","image/jpeg","0"),
("185","1","2019-02-25 13:10:13","2019-02-25 13:10:13","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:</strong>??Ch???u G???m ?????t Nung b??? 3 N??u</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>?? 6x6cm, 8x8cm, 10x10cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m B??? 3 N??u ???????ng k??nh 20cm","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-bo-3-nau-2","","","2019-02-25 17:03:59","2019-02-25 17:03:59","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=185","0","product","","0"),
("186","1","2019-02-25 13:10:08","2019-02-25 13:10:08","","chau-gom-dat-nung-nau-2-510x510 (1)","","inherit","open","closed","","chau-gom-dat-nung-nau-2-510x510-1","","","2019-02-25 13:10:08","2019-02-25 13:10:08","","185","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-dat-nung-nau-2-510x510-1.jpg","0","attachment","image/jpeg","0"),
("187","1","2019-02-25 13:10:49","2019-02-25 13:10:49","<div class=\"kk-star-ratings top-right rgt\" data-id=\"2767\">\n<div class=\"kksr-legend\">\n<div>\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><strong>C??y Xinh</strong><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u G???m Classic S1</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??6-8cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u G???m Classic S1 nh???p H??n Qu???c","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-gom-classic-s1","","","2019-02-25 17:04:10","2019-02-25 17:04:10","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=187","0","product","","0"),
("188","1","2019-02-25 13:10:35","2019-02-25 13:10:35","","chau-gom-dat-nung-nau-2-510x510 (1)","","inherit","open","closed","","chau-gom-dat-nung-nau-2-510x510-1-2","","","2019-02-25 13:10:35","2019-02-25 13:10:35","","187","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-dat-nung-nau-2-510x510-1-1.jpg","0","attachment","image/jpeg","0"),
("189","1","2019-02-25 13:10:45","2019-02-25 13:10:45","","chau-gom-classic-01-510x510","","inherit","open","closed","","chau-gom-classic-01-510x510","","","2019-02-25 13:10:45","2019-02-25 13:10:45","","187","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-gom-classic-01-510x510.jpg","0","attachment","image/jpeg","0"),
("190","1","2019-02-25 13:11:24","2019-02-25 13:11:24","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<strong>C??y Xinh</strong>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u X?? S???t</li>\n 	<li><strong>K??ch th?????c ch???u:</strong>??4x6cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u X?? S???t cao 30cm, ???????ng k??nh 20cm","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-xo-sat","","","2019-02-25 16:53:06","2019-02-25 16:53:06","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=190","0","product","","0"),
("192","1","2019-02-25 13:12:07","2019-02-25 13:12:07","<div class=\"kk-star-ratings top-right rgt\" data-id=\"3387\">\n<div class=\"kksr-legend\">\n<div>\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><strong>C??y Xinh</strong><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u Th???y Tinh Ly 36</li>\n 	<li><strong>K??ch th?????c ch???u:</strong></li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u Th???y Tinh Ly 36 s???n ph???m xu???t kh???u","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-thuy-tinh-ly-36","","","2019-02-25 16:52:25","2019-02-25 16:52:25","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=192","0","product","","0"),
("194","1","2019-02-25 13:12:00","2019-02-25 13:12:00","","chau-thuy-tinh-ly-36-min-510x510","","inherit","open","closed","","chau-thuy-tinh-ly-36-min-510x510","","","2019-02-25 13:12:00","2019-02-25 13:12:00","","192","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-thuy-tinh-ly-36-min-510x510.jpg","0","attachment","image/jpeg","0"),
("195","1","2019-02-25 13:12:33","2019-02-25 13:12:33","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u Th???y Tinh Ly 48</li>\n 	<li><strong>K??ch th?????c ch???u:</strong></li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u Th???y Tinh Ly 48 h??ng nh???p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-thuy-tinh-ly-48","","","2019-02-25 16:48:18","2019-02-25 16:48:18","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=195","0","product","","0"),
("196","1","2019-02-25 13:12:29","2019-02-25 13:12:29","","chau-thuy-tinh-ly-48-min-510x510","","inherit","open","closed","","chau-thuy-tinh-ly-48-min-510x510","","","2019-02-25 13:12:29","2019-02-25 13:12:29","","195","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-thuy-tinh-ly-48-min-510x510.jpg","0","attachment","image/jpeg","0"),
("197","1","2019-02-25 13:13:05","2019-02-25 13:13:05","<div class=\"kk-star-ratings top-right rgt\" data-id=\"4847\">\n<div class=\"kksr-legend\">\n<div>\n<div><span style=\"color: #555555; font-size: 14.4px;\">Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng. M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng </span><a style=\"font-size: 14.4px;\" href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a><span style=\"color: #555555; font-size: 14.4px;\">. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???</span></div>\n</div>\n</div>\n</div>\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u Th???y Tinh S???a Chua</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>4x6cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u Th???y Tinh S???a Chua d??y ?????p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-thuy-tinh-sua-chua","","","2019-02-25 17:04:18","2019-02-25 17:04:18","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=197","0","product","","0"),
("198","1","2019-02-25 13:13:00","2019-02-25 13:13:00","","chau-thuy-tinh-hu-sua-chua-510x510","","inherit","open","closed","","chau-thuy-tinh-hu-sua-chua-510x510","","","2019-02-25 13:13:00","2019-02-25 13:13:00","","197","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-thuy-tinh-hu-sua-chua-510x510.jpg","0","attachment","image/jpeg","0"),
("199","1","2019-02-25 13:13:44","2019-02-25 13:13:44","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u Th???y Tinh Tr???ng</li>\n 	<li><strong>K??ch th?????c ch???u:</strong></li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u Th???y Tinh Tr???ng m???u ?????p nh???p","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-thuy-tinh-trung","","","2019-02-25 16:49:05","2019-02-25 16:49:05","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=199","0","product","","0"),
("200","1","2019-02-25 13:13:36","2019-02-25 13:13:36","","chau-thuy-tinh-tung-to-02-510x510","","inherit","open","closed","","chau-thuy-tinh-tung-to-02-510x510","","","2019-02-25 13:13:36","2019-02-25 13:13:36","","199","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-thuy-tinh-tung-to-02-510x510.jpg","0","attachment","image/jpeg","0"),
("201","1","2019-02-25 13:14:17","2019-02-25 13:14:17","Ch???u c??y c???nh c?? ch???c n??ng ch???a ?????t ????? ?????m b???o c??y sinh tr?????ng v?? ph??t tri???n t???t. Ngo??i ra ch???u c???nh c??n g??p ph???n mang l???i v??? ?????p cho c??c lo???i c??y c???nh n??i chung v?? c??y ki???ng bonsai ngh??? thu???t n??i ri??ng.??M???t kh??ng gian tr??n ng???p c??y xanh, tho??ng ????ng v?? v?? c??ng g???n g??i l?? nh???ng g?? c???m nh???n khi t???i c???a h??ng??<a href=\"https://cayxinh.vn/\"><strong>C??y Xinh</strong></a>. Ch??ng t??i cung c???p h??n 1000 m???u ch???u C??y C???nh ch???t l?????ng cao, b???n, ?????p v???i ????? m???i lo???i ch???t li???u: nh???a Composite cao c???p, g???m ?????t nung, g???m s???, thu??? tinh??? v?? m???t s??? d??ng ch???u nh???p kh???u???\n<p class=\"p1\">C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p</p>\n\n<ul>\n 	<li><strong>M???u ch???u:??</strong>Ch???u Th???y Tinh Tr??n V??t</li>\n 	<li><strong>K??ch th?????c ch???u:??</strong>13.5cm, 16cm</li>\n 	<li><strong>Tr???ng l?????ng:??</strong></li>\n</ul>","Ch???u Th???y Tinh Tr??n V??t d??y 3mm","C??y Xinh chuy??n cung c???p ch???u c??y c???nh gi?? r??? v???i nhi???u m???u ch???u c???nh ?????p b???ng c??c ch???t li???u G???m, S???, Xi M??ng, G???, S???t, Nh???a Composite cao c???p??? ph?? h???p v???i m???i nhu c???u c???a kh??ch h??ng. ????? nh???n ???????c t?? v???n t???t nh???t xin vui l??ng li??n h??? tr???c ti???p ho???c c??c b???n c?? th??? qua c??c c???a h??ng c???a C??y Xinh ????? l???a ch???n m???u ch???u ph?? h???p","publish","open","closed","","chau-thuy-tinh-tron-vat","","","2019-03-01 16:22:56","2019-03-01 16:22:56","","0","https://tppone.com/demo/chaucay/?post_type=product&#038;p=201","0","product","","0"),
("202","1","2019-02-25 13:14:10","2019-02-25 13:14:10","","chau-thuy-tinh-tron-vat-510x510","","inherit","open","closed","","chau-thuy-tinh-tron-vat-510x510","","","2019-02-25 13:14:10","2019-02-25 13:14:10","","201","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-thuy-tinh-tron-vat-510x510.jpg","0","attachment","image/jpeg","0"),
("208","1","2019-02-25 13:20:23","2019-02-25 13:20:23","","bg-product","","inherit","open","closed","","bg-product","","","2019-02-25 13:20:23","2019-02-25 13:20:23","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/bg-product.jpg","0","attachment","image/jpeg","0"),
("241","1","2019-02-25 13:44:08","2019-02-25 13:44:08","","chau-xo-sat-01-510x510","","inherit","open","closed","","chau-xo-sat-01-510x510","","","2019-02-25 13:44:08","2019-02-25 13:44:08","","190","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/chau-xo-sat-01-510x510.jpg","0","attachment","image/jpeg","0"),
("277","1","2019-02-25 17:08:48","2019-02-25 17:08:48","","icon1-01-300x300","","inherit","open","closed","","icon1-01-300x300","","","2019-02-25 17:08:48","2019-02-25 17:08:48","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/icon1-01-300x300.png","0","attachment","image/png","0"),
("278","1","2019-02-25 17:08:56","2019-02-25 17:08:56","","icon3-01-293x300","","inherit","open","closed","","icon3-01-293x300","","","2019-02-25 17:08:56","2019-02-25 17:08:56","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/icon3-01-293x300.png","0","attachment","image/png","0"),
("279","1","2019-02-25 17:08:57","2019-02-25 17:08:57","","icon2-01-300x288","","inherit","open","closed","","icon2-01-300x288","","","2019-02-25 17:08:57","2019-02-25 17:08:57","","0","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/icon2-01-300x288.png","0","attachment","image/png","0"),
("294","1","2019-02-25 17:21:12","2019-02-25 17:21:12","<h2><span id=\"Tieu_canh_dep_de_ban_lam_viec\"><strong>Ti???u c???nh ?????p ????? b??n l??m vi???c</strong></span></h2>\n<strong>Ti???u c???nh phong th???y</strong>??hay nh???ng lo???i??<strong>ti???u c???nh ?????p ????? b??n l??m vi???c</strong>??ch???c h???n ???? kh??ng c??n xa l??? v???i m???i ch??ng ta, khi m?? th???i gian g???n ????y d??ng s???n ph???m ti???u c???nh n???i th???t ??ang r???t ???????c ??a chu???ng v?? s??? d???ng ph??? bi???n tr??n th??? tr?????ng.\n\nCh??ng t??i ???? gi???i thi???u t???i b???n ?????c r???t nhi???u??<strong>nh???ng lo???i ti???u c???nh ?????p</strong>??kh??c nhau v?? trong b??i vi???t n??y s??? ti???p t???c l?? 4 m???u ti???u c???nh m???i ???????c C??y Xinh ch??m s??c.\n\nV???n l?? nh???ng lo??i c??y ???? nh??ng qua b??n tay c???a C??y Xinh ???? tr??? th??nh nh???ng m??n qu?? v?? c??ng ?? ngh??a v???i b???n v?? ng?????i th????ng.\n<h3><span id=\"Tieu_canh_trau_ba_xanh_de_ban\"><strong>Ti???u c???nh tr???u b?? xanh ????? b??n</strong></span></h3>\nCh??ng ta v???n bi???t ?????n tr???u b?? ????? v????ng xanh nh?? l?? m???t lo???i??c??y thanh l???c kh??ng kh????b??y bi???n v?? trang tr?? tr??n b??n l??m vi???c r???t th??ch h???p nh??ng v???i h??nh ???nh d?????i ????y C??y Xinh tin r???ng b???n s??? v?? c??ng b???t ng???.\n<figure id=\"attachment_9231\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9231 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-trau-ba.jpg 960w\" alt=\"Ti???u c???nh ?????p ????? b??n l??m vi???c\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh tr???u b?? ????? v????ng xanh</figcaption></figure>\nTr???u B?? ????? V????ng Xanh??l?? c??y th??n th???o d???ng leo, l?? ????n, g???c l?? h??nh tim, thu??n d??i ??? ?????nh, c?? lo???i xanh to??n ph???n, c?? lo???i c?? nh???ng ?????m v??ng tr??n l??, v??ng n???m r???i r??c tr??n phi???n l??, c???m hoa d???ng mo, cu???ng ng???n, b?? d??i ho???c bu??ng th??ng xu???ng tr??n c??c ch???u treo. Ph???n l?? non c???a Tr???u B?? ????? V????ng Xanh c?? m??u xanh nh??? v?? t????i h??n, khi l?? gi?? ??i th?? ng??? sang m??u xanh s???m.\n\nKhi ???????c Mix v???i nh???ng lo???i ti???u c???nh kh??c, nh???ng lo???i c??y mini trang tr??, ph??? ki???n trang tr?? ???? t???o n??n m???t s???n ph???m , m???t b???c tranh, di???n m???o ho??n to??n m???i v??? c??y tr???u b??. S??? k???t h???p n??y th???c s??? l?? ho??n h???o v?? s??? ho??n h???o h??n n???u tr??n b??n l??m vi???c c???a b???n c?? m???t ch???u??<strong>ti???u c???nh tr???u b?? ????? v????ng</strong>.\n<h3><span id=\"Tieu_canh_kim_ngan_phong_thuy\"><strong>Ti???u c???nh kim ng??n phong th???y</strong></span></h3>\nNhi???u h??n m???t lo???i c??y phong th???y mang nh???ng ?? ngh??a t???t l??nh trong cu???c s???ng ???????c d??n v??n ph??ng c??ng s??? ??a chu???ng s??? d???ng ????? trang tr?? b??y bi???n tr??n b??n l??m vi???c. Kim Ng??n c??ng l?? m???t lo???i c??y thanh l???c kh??ng kh?? v?? c?? kh??? n??ng sinh t???n ph??t tri???n ??? m??i tr?????ng thi???u ??nh n???ng t???t nh???t.\n<figure id=\"attachment_9232\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9232 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/kim-ngan-tieu-canh.jpg 960w\" alt=\"Ti???u c???nh ?????p ????? b??n l??m vi???c\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh kim ng??n ????? b??n l??m vi???c</figcaption></figure>\nC??y Kim Ng??n phong th???y c?? t??? 5- 7 nh??nh l?? t???a ra c??c ph??a, m???i l?? gi???ng nh?? m???t b??n tay g???m 5 ng??n x??e r???ng t?????ng tr??ng cho ng?? h??nh: Kim, M???c, Th???y, H???a, Th???. L?? c???a lo???i c??y n??y c?? m??u xanh m?????t, xanh quanh n??m th??? hi???n s??? h??i h??a c???a 5 y???u t??? phong th???y. Lo???i c??y n??y ra hoa v??o ????? t??? th??ng 4- th??ng 11, hoa g???m 5 c??ch to m??u n??u nh???t th?????ng n??? v??? ????m v?? c?? m??i th??m d??? ch???u.\n<figure id=\"attachment_9164\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9164\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/46818537_2026313397422996_4229830891435720704_n.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh kim ng??n ????? b??n l??m vi???c</figcaption></figure>\nC??y Xinh c??ng ???? gi???i thi???u t???i b???n ?????c r???t nhi???u nh???ng ch???u ti???u c???nh kim ng??n kh??c nhau nh??ng b???n th???y ????, m???i c??y kim ng??n mang m???t h??nh d??ng, m???t di???n m???o m???i m??? v?? th???t s??? khi k???t h???p v???i phu ki???n ti???u c???nh ??i???u n??y l???i c??ng ????ng h??n.\n\nNh???ng b???c tranh??<strong>ti???u c???nh c??y kim ng??n</strong>??ng??y c??ng xu???t hi???n nhi???u v?? mang ?????n cho b???n nhi???u h??n nh???ng s??? l???a ch???n l?? m??n qu?? ?? ngh??a t???ng b???n v?? ng?????i th????ng trong nh???ng d???p ?????c bi???t.\n<h3><span id=\"Tieu_canh_truc_phu_quy_de_ban\"><strong>Ti???u c???nh tr??c ph?? qu?? ????? b??n</strong></span></h3>\nC??ng gi???ng nh?? kim ng??n, tr??c ph?? qu?? l?? m???t trong nh???ng lo???i c??y ch??? ?????o ???????c C??y Xinh v?? ????ng ?????o b???n ?????c quan t??m b???i v??? ?????p v?? nh???ng ?????c ??i???m , s???c h??t t??? ch??ng.\n<figure id=\"attachment_9055\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9055\" src=\"https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/11/Tieu-canh-truc-phu-quy.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh tr??c ph?? qu?? ????? b??n c???c ?????p</figcaption></figure>\nTr??c Ph?? Qu?? ????? b??n??hay c??n g???i l?? c??y ph??t d???, c??y ph??t l???c, tr??c hanh v??n c?? th??n h??nh cao kho???ng 40 ??? 50 cm, th?????ng ???????c c???t g???n v?? ??an x???p th??nh nhi???u h??nh d???ng kh??c nhau, r???t ?????p m???t. Ch??ng th?????ng ph??t tri???n th???ng ?????ng v?? c?? l?? xanh quanh n??m, l?? lo???i c??y ch???u b??ng r??m t???t, ph??t tri???n ??? nh???ng n??i b??n r??m.\n\nL?? Tr??c Ph?? Qu?? m???c ????n, d???ng b??? ??p s??t v??o th??n c??y, nh???n ??? ph???n cu???i l?? nh?? h??nh gi??o m??c. Th??n c??y d???ng ?????t, m???c th???ng ?????ng th?????ng c?? m??u xanh ?????m ho???c h??i ng?? v??ng nh???t, l?? m???c ??? c??c ?????t nh???.\n<figure id=\"attachment_9233\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9233\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/truc-phu-quy-tc.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh tr??c ph?? qu?? ????? b??n</figcaption></figure>\nTi???u c???nh tr??c ph?? qu?? ???????c ??a chu???ng v?? s??? d???ng r???t nhi???u kh??ng ch??? b???i ?? ngh??a v??? ?????p m?? c??n b???i lo??i c??y n??y r???t d??? ch??m s??c. Ch??ng th???c s??? r???t th??ch h???p ????? b???n trang tr?? tr??n b??n l??m vi???c n??i ?????y ???p nh???ng c??ng th???ng v?? ??p l???c.\n\nTi???u c???nh tr??c ph?? qu?? mu??n h??nh mu??n v??? s??? l?? m???t s??? l???a ch???n b???n kh??n th??? b??? qua khi t??m ki???m m???t lo???i c??y ????? b??n l??m vi???c.\n<h3><span id=\"Tieu_canh_luoi_ho_de_ban\"><strong>Ti???u c???nh l?????i h??? ????? b??n</strong></span></h3>\nKh??ng c??n qu?? xa l??? v???i c??y l?????i h??? ????? b??n ?????c bi???t l?? nh???ng ai mang m???nh kim. Tuy nhi??n, m???t di???n m???o, m???t chi???c ??o ho??n to??n m???i l???i xu???t hi???n trong ch???u ti???u c???nh l?????i h??? ????? b??n l??m vi???c.\n\nS??? k???t h???p ho??n h???o gi???a c??y l?????i h??? v?? nh???ng ph??? ki???n ti???u c???nh kh??c th???c s??? ???? t???o ra m???t b???c tranh ?????p h??n b???t k??? m???t c??y l?????i h??? th??ng th?????ng n??o kh??c.\n<figure id=\"attachment_9234\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9234\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh l?????i h??? ????? b??n l??m vi???c</figcaption></figure>\nM???t ch???u??ti???u c???nh l?????i h??? ????? b??n l??m vi???c??ch???c ch???n s??? l?? m???t s??? l???a ch???n kh??ng th??? tuy???t v???i h??n v???i c??c b???n mang m???nh kim.\n\nH??y li??n h??? v???i ch??ng t??i n???u b???n c???n t?? v???n v?? h??? tr??? nhi???u h??n ????? l???a ch???n m???t lo???i c??y th??ch h???p v???i b???n th??n m??nh.","Ti???u c???nh ?????p cho ng??y m???i nhi???u may m???n","","publish","open","open","","tieu-canh-dep-cho-ngay-moi-nhieu-may-man","","","2019-02-25 17:21:12","2019-02-25 17:21:12","","0","https://tppone.com/demo/chaucay/?p=294","0","post","","0"),
("296","1","2019-02-25 17:21:07","2019-02-25 17:21:07","","truc-phu-quy-tc-1","","inherit","open","closed","","truc-phu-quy-tc-1","","","2019-02-25 17:21:07","2019-02-25 17:21:07","","294","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/truc-phu-quy-tc-1.jpg","0","attachment","image/jpeg","0"),
("298","1","2019-02-25 17:22:15","2019-02-25 17:22:15","<h2><span id=\"Tieu_canh_thanh_loc_khong_khi_de_ban_cuc_dep\"><strong>Ti???u c???nh thanh l???c kh??ng kh?? ????? b??n c???c ?????p</strong></span></h2>\nC??y c???nh thanh l???c kh??ng kh????ch???c h???n b???n ?????c c??ng kh??ng c??n xa l??? v???i d??ng s???n ph???m n??y tuy nhi??n??<strong>ti???u c???nh c??y thanh l???c kh??ng kh??</strong>??b???n ???? nghe t???i ch??a? Trong m???u tin n??y C??y Xinh s??? g???i t???i b???n ?????c 3 lo???i??<strong>ti???u c???nh thanh l???c kh??ng kh?? ????? b??n</strong>??HOT nh???t th??ng 12 n??m 2018. Xin m???i c??c b???n c??ng t??m hi???u.\n<h3><span id=\"Tieu_canh_cau_tieu_tram\"><strong>Ti???u c???nh cau ti???u tr??m</strong></span></h3>\nCau ti???u tr??m v???n d?? ???????c bi???t ?????n l?? m???t lo???i c??y c?? kh??? n??ng thanh l???c kh??ng kh?? v?? c??ng hi???u qu??? m?? l???i c?? s???c s???ng v?? c??ng m??nh li???t v?? r???t d??? d??ng ch??m s??c.\n\nLo??i n??y th?????ng m???c th??nh b???i, c?? th??n m??u xanh nh???n, m???c v????n th???ng. L?? ???????c m???c t??? th??n, d???ng k??p ?????i nhau h??nh l?????i m??c c?? g??n n???i ??? gi???a gi???ng nh?? nh???ng l?? cau mini. L?? c???a lo??i n??y c??ng c?? m??u xanh gi???ng th??n nh??ng ?????m h??n m???t ch??t.\n<figure id=\"attachment_9207\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9207\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/cau-tieu-tram-tieu-canh.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh cau ti???u tr??m ????? b??n l??m vi???c</figcaption></figure>\nLo??i n??y th?????ng m???c th??nh b???i, c?? th??n m??u xanh nh???n, m???c v????n th???ng. L?? ???????c m???c t??? th??n, d???ng k??p ?????i nhau h??nh l?????i m??c c?? g??n n???i ??? gi???a gi???ng nh?? nh???ng l?? cau mini. L?? c???a lo??i n??y c??ng c?? m??u xanh gi???ng th??n nh??ng ?????m h??n m???t ch??t.\n<figure id=\"attachment_9061\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9061\" src=\"https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/11/cau-tieu-tram-de-ban.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh cau ti???u tr??m ????? b??n</figcaption></figure>\nLo???i c??y c???nh thanh l???c kh??ng kh?? n??y ??a m??t, nh???, ph?? h???p l??m c??y c???nh ????? b??n l??m vi???c, cao trung b??nh kho???ng 15-20cm, ??t khi ra hoa, ??a n?????c v?? ph??t tri???n r???t m???nh. Thu???c lo???i c??y b???i l??u n??m, th???p, th??n xanh nh???n, m???c th???ng t???p, l?? c???a c??y l?? d???ng k??p, nh???n d??i, h??nh m??c gi???ng l?? cau, m???m, nh???n, g??n n???i gi???a.\n<figure id=\"attachment_8495\" class=\"wp-caption aligncenter\"><img class=\"wp-image-8495 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/10/tieu-canh-cau-tieu-tram.jpg 960w\" alt=\"ti???u c???nh thanh l???c kh??ng kh??\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh cau ti???u tr??m</figcaption></figure>\nTi???u c???nh cau ti???u tr??m, si??u ph???m ???????c ??a chu???ng nh???t th??ng 11 l?? s??? k???t h???p ho??n h???o gi???a cau v?? nh???ng ph??? ki???n trang tr?? ti???u c???nh ?????c ????o, d??? th????ng\n\nM???t ng??i nh?? nh???, 1 c???p ??ng v?? t?? hon v?? v??i c??y c???m nhung m??u s???c kh??c nhau ???? t???o n??n m???t b???c tranh v?? c??ng th???c t??? v?? sinh ?????ng v?? c??ng thu h??t.\n<figure id=\"attachment_9060\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9060\" src=\"https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-cau-tieu-tram.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Cau ti???u tr??m ????? b??n</figcaption></figure>\nVi???c s??? d???ng m???t ch???u cau ti???u tr??m tr??n b??n l??m vi???c s??? gi??p b???n c???m th???y trong l??nh v?? tho???i m??i h??n.\n<h3><span id=\"Tieu_canh_cay_hanh_phuc_de_ban_lam_viec\"><strong>Ti???u c???nh c??y h???nh ph??c ????? b??n l??m vi???c</strong></span></h3>\nH???nh Ph??c l?? c??y c???nh ????? b??n th??n g??? v???i k??ch th?????c kh?? nh??? b?? ch??? t??? 20 cm ??? 30cm. C??y H???nh Ph??c l?? c??y c?? nh???ng t??n l?? xanh t???t, m??u xanh c???a ni???m tin v?? hy v???ng.\n\nC??y H???nh Ph??c kh??ng qu?? ?????c bi???t v??? h??nh d??ng v?? m??u s???c nh??ng c??ng c?? l??? v?? c??y ???? mang l???i nhi???u ni???m vui, h???nh ph??c cho nh???ng ng?????i tr???ng n?? n??n c??y m???i c?? c??i t??n ?????p nh?? v???y.\n<figure id=\"attachment_9208\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9208\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/hanh-phuc-tieu-canh.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh h???nh ph??c ????? b??n l??m vi???c</figcaption></figure>\nTi???u c???nh h???nh ph??c c??ng ???????c kh??ch h??ng l???a ch???n r???t nhi???u b???i h??nh d??ng c???a ch??ng, ki???u d??ng bonsai phong th???y. C??y h???nh ph??c c??i t??n c??ng n??i n??n r???t nhi???u ??i???u t???t ?????p v??? cu???c s???ng, nh?? trong ch???u ti???u c???nh n??y C??y Xinh ???? kh??o l??o mix l???i m???t ch??t v???i c??c ph??? ki???n ti???u c???nh d??? th????ng v?? ngay l???p t???c t???o ra ???????c m???i m??? cho ch???u ti???u c???nh h???nh ph??c.\n<figure id=\"attachment_8738\" class=\"wp-caption alignnone\"><img class=\"size-large wp-image-8738\" src=\"https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/10/cay-hanh-phuc-2.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh c??y h???nh ph??c</figcaption></figure>\nTi???u c???nh h???nh ph??c??r???t th??ch h???p tr???ng trong v??n ph??ng, ??? nh???ng n??i c?? kh??ng gian r???ng r??i, tho??ng m??t. B???n c??ng c?? th??? ?????t ch??ng ??? h??nh lang, trong ph??ng ngay c???nh c???a s?????? ?????ng b??? qua lo???i c??y n??y n???u b???n mu???n kh??ng kh?? trong v??n ph??ng th??m trong l??nh.\n<h3><span id=\"Tieu_canh_van_loc_dep_va_doc_dao\"><strong>Ti???u c???nh v???n l???c ?????p v?? ?????c ????o</strong></span></h3>\nC??y V???n L???c??l?? lo???i c??y th??n th???o, c?? t??n h???p, l?? m??u h???ng phai, vi???n l?? c?? m??u xanh l???c. C??y c?? l?? d??y, s??ng b??ng, n???i r?? g??n, c??y ra hoa m??u tr???ng, r???t d??? ch??m s??c ph?? h???p trang tr?? n???i th???t, ph??ng l??m vi???c.\n<figure id=\"attachment_8502\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-8502\" src=\"https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/10/van-loc-tieu-canh.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh v???n l???c c???c ?????p</figcaption></figure>\n??i???m ?????c bi???t ??? ????y ch??nh l?? c??c l?? c???a c??y m???c ??an xem nhau th??nh nhi???u t???ng l???p v?? ?????i x???ng v???i nhau t???o cho ng?????i nh??n c???m gi??c c??n ?????i v?? b???t m???t. M??u h???ng phai k???t h???p v???i vi???m xanh c???a l?? t???o n??n ??i???m nh???n r???t ???n t?????ng. Khi trang tr?? c??y tr??n b??n l??m vi???c s??? t???o ra kh??ng gian m???i m???, t???o tinh th???n tho???i m??i cho ng?????i s??? h???u.\n<figure id=\"attachment_9210\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9210\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/van-loc-1.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh v???n l???c may m???n</figcaption></figure>\nV???n L???c c?? b??? l?? b???n to v?? d??y m???ng thanh l???c kh??ng kh?? c???c t???t v?? khi k???t h???p v???i nh???ng ph??? ki???n ti???u c???nh l???i t???o n??n m???t s??? m???i m???, m???t di???n m???o ho??n to??n m???i t?? ??i???m cho s???c h???ng c???a lo??i c??y n??y. V???n l???c ti???u c???nh th??ch h???p ????? b???n trang tr?? tr??n b??n l??m vi???c trong kh??n gian v??n ph??ng ?????y ???p ??p l???c.\n\nV???a c?? t??c d???ng thanh l???c kh??ng kh?? v???a ????? trang tr?? l??m ?????p cho kh??ng gian c??n ph??ng 3 lo???i c??y tr??n ????y h???a h???n s??? ti???p t???c ?????t kh??ch trong th??ng 12 , th??ng y??u th????ng v?? ???m ??p.\n\nH??y li??n h??? v???i ch??ng t??i n???u b???n c???n ???????c t?? v???n h??? tr??? v??? c??c lo???i c??y phong th???y ????? b??n v?? ?????t h??ng nhanh nh???t.","B??? 3 ti???u c???nh thanh l???c kh??ng kh?? ???????c ??a chu???ng","","publish","open","open","","bo-3-tieu-canh-thanh-loc-khong-khi-duoc-ua-chuong","","","2019-02-25 17:22:15","2019-02-25 17:22:15","","0","https://tppone.com/demo/chaucay/?p=298","0","post","","0"),
("299","1","2019-02-25 17:22:11","2019-02-25 17:22:11","","cau-tieu-tram-tieu-canh-1","","inherit","open","closed","","cau-tieu-tram-tieu-canh-1","","","2019-02-25 17:22:11","2019-02-25 17:22:11","","298","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/cau-tieu-tram-tieu-canh-1.jpg","0","attachment","image/jpeg","0"),
("301","1","2019-02-25 17:23:32","2019-02-25 17:23:32","<h2><strong>Sen ???? ?????p cho th??ng 12 y??u th????ng</strong></h2>\nSen ???? mini ????? b??n l??m vi???c?????? kh??ng ch??? ????n gi???n ???????c s??? d???ng ????? trang tr?? tr??n b??n l??m vi???c n???a m?? h??n th??? ????y c??n l?? m???t m??n qu?? v?? c??ng ?? ngh??a ???????c gi???i tr??? ??a chu???ng s??? d???ng. M???i ????y C??y Xinh ???? ????a v??? c???a h??ng??<strong>nh???ng lo???i sen ???? ?????p</strong>??v?? c??ng ?????p ????? ????p ???ng nhu ng??y c??ng t??ng c???a qu?? kh??ch h??ng.??Xin m???i c??c b???n h??y c??ng tham kh???o m???t s??? h??nh ???nh b??n d?????i ????y.\n\nTrong ?????t v??? h??ng n??y ph???n l???n C??y Xinh l???y nh???ng lo???i sen ???? m?? qu?? kh??ch h??ng ???? ?????t h??ng, h?????ng theo xu th??? c???a kh??ch h??ng.\n<figure id=\"attachment_9160\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9160\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/12.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/12.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/12-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/12-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/12-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/12-510x340.jpg 510w\" alt=\"\" width=\"750\" height=\"500\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? ?????p m???i v???</figcaption></figure>\n??i???m ?????c bi???t l?? t???t c??? l????<strong>sen ???? ????? b??n</strong>??n??y ?????u ?????ng gi?? ch??? c?? 20.000 vn?? / g???c,??<strong>gi?? sen ????</strong>??r???t h???t r??? ????? nh???ng b???n y??u qu?? sen ???? th???a m??n.\n<figure id=\"attachment_9153\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9153\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/1.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/1.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/1-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/1-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/1-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/1-510x340.jpg 510w\" alt=\"\" width=\"750\" height=\"500\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? ?????p m???i v??? C??y Xinh</figcaption></figure>\nT???t c??? sen ???? ?????u ???????c ????nh tr???c ti???p t??? v?????n v??? n??n v???n c??n nguy??n b???n ch??a ???????c b??y bi???n hay trang tr??. Nh?? tr??n h??nh ???nh ????y l?? c??c lo???i??sen ???? l?? ???????v????sen ???? gu???c??l?? ch??? y???u.\n<figure id=\"attachment_9154\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9154\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/2.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/2.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/2-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/2-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/2-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/2-510x340.jpg 510w\" alt=\"\" width=\"750\" height=\"500\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? v??? c???a h??ng ch??o th??ng 12</figcaption></figure>\nSen ???? c?? mu??n h??nh v???n d???ng m??u s???c kh??c nhau v?? d??? d??ng nh???n th???y nh???t tr??n h??nh ???nh c?? l??? ch??nh l????sen ???? tim??v?? sen ???? n??u. Nh???ng g???c sen ???? con nguy??n sinh v?? ?????y s???c s???ng.\n<figure id=\"attachment_9155\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9155\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/3.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/3.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/3-601x400.jpg 601w, https://cayxinh.vn/wp-content/uploads/2018/12/3-768x511.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/3-600x399.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/3-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/3-510x339.jpg 510w\" alt=\"\" width=\"750\" height=\"499\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? ph???n h???ng c???c ?????p</figcaption></figure>\nNh???ng ch???u??sen ???? d?? vi???n ?????,??sen ???? kim c????ng???????p lung linh v??? h??ng r???t ngi???u trong ?????t n??y n??n c??c b???n y??n t??m v?? kh??ng lo h???t h??ng n???a nh??, ?????ng gi?? ch??? 20.000 vn?? c??c b???n h??y nhanh tay ?????n c???a h??ng th??i n??o.\n<figure id=\"attachment_9156\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9156\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/4.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/4.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/4-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/4-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/4-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/4-510x340.jpg 510w\" alt=\"\" width=\"750\" height=\"500\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? ?????p c??c lo???i</figcaption></figure>\nSen ???? hoa c??c v????sen ???? kim tuy???n??c??ng v??? r???t nhi???u v?? ?????p trong ?????t n??y, c??c b???n l???y s??? l?????ng nh?? n??o c??ng c?? h???t. B???n c?? th??? xem chi ti???t th??ng tin c??c lo???i sen ???? n??y ??? ???????ng d???n b??n d?????i.\n<figure id=\"attachment_9157\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9157\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/9.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/9.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/9-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/9-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/9-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/9-510x340.jpg 510w\" alt=\"\" width=\"750\" height=\"500\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? mini ????? b??n ?????p</figcaption></figure>\nSen ???? nhung c??c lo???i v????sen ???? h???ng ph???n??c??ng r???t nhi???u v?? ?????p h??n nh???ng l???n tr?????c s??? r???t th??ch h???p ????? ????nh bay s??? nh??n ch??n tr??n b??n l??m vi???c c???a b???n ????.\n<figure id=\"attachment_9158\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9158\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/10.jpg\" sizes=\"(max-width: 750px) 100vw, 750px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/10.jpg 960w, https://cayxinh.vn/wp-content/uploads/2018/12/10-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/10-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/10-200x133.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/10-510x340.jpg 510w\" alt=\"sen ???? ?????p\" width=\"750\" height=\"500\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Sen ???? ????? b??n l??m vi???c</figcaption></figure>\nNgo??i??<strong>Sen ???? ?????p</strong>??C??y Xinh c??n ???????c qu?? kh??ch h??ng bi???t ?????n l?? ????n v??? danh ti???ng uy t??n chuy??n tr???ng v?? cung c???p cho th??? tr?????ng nh???ng s???n ph???m??c??y phong th???y ????? b??n,??c??y thanh l???c kh??ng kh??,??c??y th???y sinh ????? b??n,??c??c lo???i x????ng r???ng ?????p??c?? gi?? th??nh r??? nh???t.\n\nH??y li??n h??? v???i ch??ng t??i ho???c ?????n tr???c ti???p c???a h??ng ????? s??? h???u nh???ng m???u c??y ?????p nh???t.","Nh???ng m???u sen ???? ?????p cho th??ng 12 y??u th????ng","","publish","open","open","","nhung-mau-sen-da-dep-cho-thang-12-yeu-thuong","","","2019-02-25 17:23:32","2019-02-25 17:23:32","","0","https://tppone.com/demo/chaucay/?p=301","0","post","","0"),
("302","1","2019-02-25 17:23:26","2019-02-25 17:23:26","","sen-da-dep","","inherit","open","closed","","sen-da-dep","","","2019-02-25 17:23:26","2019-02-25 17:23:26","","301","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/sen-da-dep.jpg","0","attachment","image/jpeg","0"),
("304","1","2019-02-25 17:24:38","2019-02-25 17:24:38","<h2><span id=\"Cay_phong_thuy_hop_tuoi_giap_tuat_mang_toi_may_man_tai_loc\"><strong>C??y phong th???y h???p tu???i gi??p tu???t mang t???i may m???n t??i l???c</strong></span></h2>\nC??y phong th???y ????? b??n??v???n lu??n ???????c bi???t ?????n l?? m???t lo???i c??y ???????c ??a chu???ng v?? s??? d???ng r???ng kh???p trong cu???c s???ng th?????ng ng??y c???a ch??ng ta, tuy nhi??n ch??ng c?? r???t nhi???u lo???i v???i nh???ng ?? ngh??a kh??c nhau v?? th???t kh?? ????? c?? th??? l???a ch???n ???????c m???t lo???i c??y ??ng ??.\n\n??? b??i vi???t n??y C??y Xinh s??? g???i t???i qu?? b???n ?????c h??nh ???nh, th??ng tin v??? m???t s??? lo???i??<strong>c??y phong th???y h???p tu???i gi??p tu???t</strong>??n??m 1994. Ch??ng ta c??ng t??m hi???u nh??.\n<h3><span id=\"Tong_quan_ve_tuoi_giap_tuat_nam_1994\"><strong>T???ng quan v??? tu???i gi??p tu???t n??m 1994</strong></span></h3>\nTu???i gi??p tu???t, sanh t??? 10-2-1994 ?????n 30-1-1995\n\nT?????ng tinh: Con Ng???a ??? Con d??ng X??ch ?????, c?? qu???nh\n\nM???ng : S??n ?????u H???a (L???a tr??n n??i)\n\nSao: K??? ????: R???i r???m, n???n tai\n\nH???n: ?????a v??ng: Nhi???u lo ??u\n\nV???n ni??n : D????ng h???i Ng???n (D?? v??? su???i)\n\nThi??n can : Gi??p g???p M???u: Kh???c xu???t, th???ng l???i\n\n?????a chi: Tu???t g???p Tu???t: Tam Tai, b???t an\n\nXu???t h??nh : Ng??y M???ng M???t T???t:\n\n??? T??? 1 gi??? ?????n 3 gi??? s??ng (gi??? ?????a ph????ng)\n\n??? ??i v??? h?????ng Nam ????? ????n T??i Th???n\n\nM??u s???c : H???p: Xanh, ?????; k???: ??en, v??ng\n\nNh???ng ng?????i tu???i Gi??p Tu???t l?? ng?????i th???ng th???n, c??ng b???ng, c???n c??, hi???u h???c v?? c?? l??ng h??o hi???p, s???n s??ng can thi???p v??o chuy???n b???t c??ng ????? gi??p ng?????i b??? hi???p ????p. ?????i v???i gia ????nh, h??? l?? ng?????i con hi???u th???o, h??a thu???n v???i anh em, ra ngo??i x?? h???i l?? ng?????i ngay th???ng, ????ng tin c???y, ho??n th??nh t???t c??ng vi???c, vi???c g?? c??ng l??m ???????c.\n\nNg?????i tu???i Gi??p Tu???t (sinh n??m 1994) l?? ng?????i m???nh H???a theo phong th???y. Nh???ng ng?????i n??y h???p v???i m??u s???c ????? n??n khi ch???n c??y c???n ch?? ?? nh???ng lo???i c??y c?? s???c ?????, h???ng, cam, t??m ????? tr???ng s??? l??m gia t??ng may m???n.??<strong>C??y h???p tu???i Gi??p Tu???t</strong>??nh??: C??y ph???t d??? m???nh, c??y ??u??i c??ng t??m, c??y h???ng m??n\n<h3><span id=\"Cay_phat_du_manh_thinh_vuong_tai_loc\"><strong>C??y ph???t d??? m???nh th???nh v?????ng t??i l???c</strong></span></h3>\nC??y Ph???t D??? M???nh??lo??i c??y c?? th??n c???t m???c th???ng, ph??n nh??nh ??t, m???t c??y Ph???t D??? tr?????ng th??nh c?? chi???u cao trung b??nh t??? 30-50cm t??y v??o c??ch ch??m s??c v?? h??nh d??ng m?? ng?????i ch??i mong mu???n.\n<figure id=\"attachment_3058\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-3058\" src=\"https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh.jpg 800w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-phat-du-manh-768x768.jpg 768w\" alt=\"c??y ph???t d??? m???nh\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: C??y Ph???t D??? M???nh</figcaption></figure>\nC??y ph???t d??? m???nh ????? b??n v?? c??ng h???p d???n b???i s??? h???u nh???ng chi???c l?? c???ng ?????y m??u s???c. L?? c??y t???p trung ch??? y???u ??? ph???n ?????u c??nh d??i v?? thu??n d???p h??nh d???i, nh???n ??? ?????u. L?? non c?? nhi???u v???ch ????? sau chuy???n d???n sang cam v?? l?? tr?????ng th??nh th?????ng c?? m??u xanh nh???t, vi???n ????? xung quanh. G???c c??y c?? b??? ??m, l?? c??y ???????c x???p t???a tr??n quanh th??n tr??ng r???t ?????u nhau v?? ?????p m???t.\n<h3><span id=\"Cay_duoi_cong_tim_hop_voi_nguoi_menh_hoa\"><strong>C??y ??u??i c??ng t??m h???p v???i ng?????i m???nh h???a</strong></span></h3>\n??u??i c??ng t??m??v???n ??????c bi???t ?????n l?? m???t lo???i c??y thanh l???c kh??ng kh?? c???c t???t, kh??ng ch??? c?? v???y ????y c??ng l?? m???t lo???i c??y r???t ?????p ????? trang tr?? tr??n b??n l??m vi???c. B???n ???? bi???t nh???ng ?????c ??i???m c???a lo???i c??y n??y ch??a?\n<figure id=\"attachment_9214\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9214\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/Tieu-canh-duoi-cong-tim.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh ??u??i c??ng t??m ?????t b??n l??m vi???c</figcaption></figure>\nC??y ??u??i C??ng T??m l?? lo??i c??y th??n th???o m??u t??m ?????, cao t??? 20-35cm thu???c h??? c??? dong, s???ng th??nh t???ng b???i th??a, t??n l?? to v?? th???p, th??n r??? n???m ph??a d?????i m???t ?????t. ??i???m kh??c bi???t ??? lo??i ??u??i C??ng T??m n???m ??? chi???c l?? c???a c??y c?? h??nh d??ng nh?? ??u??i c??ng x??e ra tr??ng r???t ?????p m???t.\n<figure id=\"attachment_9044\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9044\" src=\"https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/11/duoi-cong-tim.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh c??y ??u??i c??ng t??m c???c ?????p</figcaption></figure>\nL?? c??y c?? d???ng h??nh tr??n nh??n t????ng t??? nh?? l?? c??y dong, h??i thon nh???n ??? ph???n ?????u l??, m??u s???c l?? v?? c??ng ?????c ????o v???i ???????ng hoa v??n h??nh ven g??n l?? tr??ng gi???ng nh?? chi???c ??u??i c???a con chim c??ng.\n<figure id=\"attachment_2756\" class=\"wp-caption aligncenter\"><img class=\"wp-image-2756 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim.jpg 800w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2017/11/cay-duoi-cong-tim-768x768.jpg 768w\" alt=\"C??y phong th???y h???p tu???i gi??p tu???t\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: C??y ??u??i c??ng t??m ????? b??n</figcaption></figure>\n??u??i c??ng t??m v???n ???????c cho l????<strong>c??y phong th???y h???p v???i ng?????i tu???i gi??p tu???t</strong>??b???i ????y l?? c??y ????? b??n h???p v???i m???nh h???a. Ngo??i ra ????y l?? lo???i c??y c?? kh??? n??ng thanh l???c kh??ng kh??, c??y th?????ng d??ng ????? trang tr?? v??n ph??ng, n???i th???t.\n\nB???n h??y ?????t m???t ch???u ??u??i c??ng t??m tr??n b??n l??m vi???c v?? t???n h?????ng s??? tho???i m??i m?? c??y mang l???i.\n<h3><span id=\"Cay_hong_mon_may_man_va_tai_loc\"><strong>C??y h???ng m??n may m???n v?? t??i l???c</strong></span></h3>\nC??y h???ng m??n ????? b??n??l?? lo??i c??y s???ng l??u n??m, th?????ng m???c th??nh b???i v?? c?? th??n ng???n. L?? c?? phi???n xanh h??nh tim, l?? non c?? m??u nh???t h??n, r???ng t??? 9???15 cm v?? d??i t??? 18???30 cm. Cu???ng l?? h??nh ???ng tr???, c?? th??? d??i t???i 30???40 cm.\n<figure id=\"attachment_9101\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9101 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/11/tieu-canh-hong-mon-800x800.jpg\" alt=\"C??y phong th???y h???p tu???i gi??p tu???t\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh h???ng m??n ????? b??n</figcaption></figure>\nHoa c???a lo??i c??y n??y d???ng phi???n n??? r???ng h??nh tim, c?? m??u ????? ng???c, m??u h???ng, cam. Hoa t??? th?????ng c?? m??u v??ng, ????nh tr??n m?? hoa. Tr??n m???i hoa t??? c?? ????nh nhi???u hoa nh???. Hoa c???a c??y H???ng M??n thu???c d???ng hoa l?????ng t??nh c??ng g???c.\n\nTrong phong th???y lo??i c??y n??y r???t h???p v???i nh???ng ng?????i m???nh h???a. C??y h???ng m??n phong th???y th??? hi???n cho s??? ??am m??, h???nh ph??c b??n c???nh ???? l?? s??? s??ng t???o, quy???t ??o??n, s??? khuy???n kh??ch v?? ni???m tin v??o th??nh c??ng. C??y c??n l?? bi???u t?????ng c???a s??? b???n b??? v?? s???c m???nh b??n trong cu???c s???ng.\n<figure id=\"attachment_9050\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9050 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/11/46256424_2010661392321530_5185037042609815552_n-800x800.jpg\" alt=\"C??y phong th???y h???p tu???i gi??p tu???t\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: C??y c???m nhung trong ti???u c???nh h???ng m??n</figcaption></figure>\nH???ng m??n ?????p v?? c?? tu???i th??? r???t l??u, lo??i c??y n??y s??? r???t th??ch h???p ????? b???n trang tr?? tr??n b??n l??m vi???c.\n\nH??y li??n h??? v???i ch??ng t??i theo c??c s??? ??i???n tho???i tr??n website n???u b???n c???n t?? v???n h??? tr??? t???t nh???t v??? nh???ng lo???i c??y c???nh ????? b??n nh??","Tu???i gi??p tu???t n??m 1994 h???p c??y g???","","publish","open","open","","tuoi-giap-tuat-nam-1994-hop-cay-gi","","","2019-02-25 17:24:38","2019-02-25 17:24:38","","0","https://tppone.com/demo/chaucay/?p=304","0","post","","0"),
("305","1","2019-02-25 17:24:34","2019-02-25 17:24:34","","tieu-canh-hong-mon-800x800","","inherit","open","closed","","tieu-canh-hong-mon-800x800","","","2019-02-25 17:24:34","2019-02-25 17:24:34","","304","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/tieu-canh-hong-mon-800x800.jpg","0","attachment","image/jpeg","0"),
("307","1","2019-02-25 17:25:38","2019-02-25 17:25:38","<h2><span id=\"Tieu_canh_phong_thuy_dep_nam_2019\"><strong>Ti???u c???nh phong th???y ?????p n??m 2019</strong></span></h2>\nTi???u c???nh phong th???y lo???i c??y c???nh ?????c ????o ???????c C??y Xinh t???o v?? ????a ra th??? tr?????ng v??i th??ng tr??? l???i ????y ???? nhanh ch??ng chi???m l??nh nh???n ???????c s??? y??u m???n c???a ????ng ?????o qu?? kh??ch h??ng nh???ng ng?????i y??u c??y phong th???y ????? b??n.\n\nTrong nh???ng b??i vi???t tr?????c ????y ch??ng t??i ???? gi???i thi???u t???i b???n ?????c h??nh ???nh r???t nhi???u??<strong>c??c m???u ti???u c???nh phong th???y ????? b??n</strong>??kh??c nhau v?? ??? b??i vi???t n??y C??y Xinh s??? l???i ti???p t???c g???i t???i qu?? kh??ch h??ng b??? s??u t???p 1 s??? lo???i??<strong>ti???u c???nh phong th???y ?????p</strong>??n??m 2019.\n<h3><span id=\"Tieu_canh_thuy_tung_de_ban_cuc_dep\"><strong>Ti???u c???nh th???y t??ng ????? b??n c???c ?????p</strong></span></h3>\nTh???y t??ng ???????c bi???t ?????n l?? lo???i c??y b???i nh???, d??ng c??y thanh m???nh c?? l?? m??u xanh, tr??n th??n c??y c?? r???t nhi???u c??nh nh??nh kh??c nhau. Nh???ng nh??nh c??y m???c v????n d??i ra, d???a v??o nhau ????? c?? th??? ch???ng l???i th???i ti???t kh?? h???u b???t th?????ng.??C??y Th???y T??ng ????? b??n??c?? m??u xanh ?????m, c??ng l?? h??nh tam gi??c nh??? x???p s??t nhau. Lo???i c??y n??y cho hoa nh??? m??u tr???ng, ch??ng l???c ra ??? g???n ng???n c??c c??nh c??y m???i cu???ng c?? t??? 1 ?????n 4 hoa. Sau ???? hoa t??n s??? cho qu??? v?? h???t m??u ??en t??m h??nh c???u.\n<figure id=\"attachment_9350\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9350 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/thuy-tung-de-ban.jpg 960w\" alt=\"Ti???u c???nh phong th???y ?????p n??m 2019\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: C??y th???y t??ng ????? b??n l??m vi???c</figcaption></figure>\nTrong phong th???y lo??i c??y n??y mang ?? ngh??a cho s??? thanh cao, t?????ng tr??ng cho b???c ch??nh nh??n qu??n t???. C??y mang m???t s???c s???ng m??nh li???t, th??? hi???n ?? ch?? ki??n c?????ng kh??ng bao gi??? khu???t ph???c tr?????c nh???ng kh?? kh??n c???a cu???c s???ng.??<strong>Ti???u c???nh th???y t??ng ?????p</strong>??l??? m???t, tinh t??? m?? thanh cao ch???c ch???n s??? l?? m???t lo???i c??y b???n kh??ng th??? thi???u tr??n b??n l??m vi???c c???a m??nh.\n<h3><span id=\"Tieu_canh_kim_tien_phong_thuy_dai_tai_loc_cho_nam_moi\"><strong>Ti???u c???nh kim ti???n phong th???y ?????i t??i l???c cho n??m m???i</strong></span></h3>\nCh???c h???n c??c b???n ???? qu?? quen thu???c v???i lo???i??c??y phong th???y sanh t??i l???c??n??y. Kim ti???n lo???i c??y ?????c ????o m?? ngay c??i t??n c???a n?? th??i c??ng ???? ph???n n??o l??m to??t l??n ?? ngh??a c???a ch??ng.\n\nC??y kim ti???n ?????t trong v??n ph??ng c?? l?? m??u xanh th???m v?? s??ng b??ng. L?? thon h??nh b???u d???c nh???n 2 ?????u, d??y v?? ?????p. Th??n c??y v????n th???ng v?? x??e sang 2 b??n, m???ng n?????c v?? ph??nh to d?????i g???c. C??c nh??nh th??n m???c th??nh t???ng b???i v???i chi???u d??i trung b??nh t??? 18-50cm.\n<figure id=\"attachment_9346\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9346 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/cay-kim-tien-dep.jpg 960w\" alt=\"Ti???u c???nh phong th???y ?????p n??m 2019\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: C??y kim ti???n ????? b??n ?????p</figcaption></figure>\nTrong t??? nhi??n,??c??y kim ti???n ????? b??n l??m vi???c??th?????ng m???c th??nh b???i, g???c ph??nh to ch???a nhi???u n?????c. H??nh d??ng c??y kim ti???n bao g???m m???t t???p h???p c??c nh??nh l?? t???o th??nh. Th???c s???, ????y ch??nh l?? cu???ng l?? chung, v???i chi???u d??i t??? 20-40 cm c?? m??u xanh v???i nh???ng ?????m m??u t???i h??n. Th??n c??y m???p m???p, m???ng n?????c, h??nh tr??? r???t d??y ??? ph???n g???n r??? v?? thon nh??? khi l??n ?????n ng???n v?? t??? t??? u???n cong.\n<figure id=\"attachment_9245\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9245 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/tieu-canh-kim-tien.jpg 960w\" alt=\"Ti???u c???nh phong th???y ?????p n??m 2019\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh kim ti???n phong th???y ????? b??n</figcaption></figure>\nS??? m???i m???, m???t di???n m???o ho??n to??n m???i l?? nh???ng g?? b???n c?? th??? d??? d??ng nh???n th???y th??ng qua nh???ng h??nh ???nh b??n tr??n. C??y kim ti???n ???????c k???t h???p m???t c??ch kh??o l??o v???i c??c lo???i ti???u c???nh trang tr?? t???o n??n m???t b???c tranh ho??n m?? v??? c??? ngo???i h??nh c??ng nh?? nh???ng ?? ngh??a b??n trong.\n<h3><span id=\"Tieu_canh_luoi_ho_de_ban_mon_qua_y_nghia_cho_nguoi_thuong\"><strong>Ti???u c???nh l?????i h??? ????? b??n m??n qu?? ?? ngh??a cho ng?????i th????ng</strong></span></h3>\nL?????i h??? lo???i c??y phong th???y r???t th??ch h???p v???i nh???ng ng?????i m???nh kim h???p m??u v??ng v?? tr???ng. C??y ???????c ??a chu???ng kh??ng ch??? b???i nh???ng ?? ngh??a t???t l??nh m?? c??n b???i v??? ?????p c???a ch??ng.\n<figure id=\"attachment_9340\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9340 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-dep.jpg 960w\" alt=\"Ti???u c???nh phong th???y ?????p n??m 2019\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh c??y l?????i h??? ?????p</figcaption></figure>\nC??y l?????i h??? ????? b??n??m???c th???ng, ????? d??i dao ?????ng t??? 30 ??? 80 cm. L?? c??y d??y v?? c???ng, gi???ng h??nh thanh g????m. M??u s???c l?? ??an xen gi???a m??u xanh s???m v?? m??u xanh l?? th?????ng th???y, ??? m??p l?? c?? ph???n vi???n m??u v??ng. ?????c bi???t, lo??i c??y n??y c?? kh??? n??ng c?? hoa nh??ng r???t hi???m.\n<figure id=\"attachment_9339\" class=\"wp-caption aligncenter\"><img class=\"wp-image-9339 size-large\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/luoi-ho-tieu-canh-2.jpg 960w\" alt=\"Ti???u c???nh phong th???y ?????p n??m 2019\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh l?????i h??? ????? b??n ?????p</figcaption></figure>\nKh??c bi???t v???i nh???ng lo???i c??y kh??c, l?????i h??? l?? lo???i c??y duy nh???t c?? l?? v?? th??n l?? m???t, c??nh l?????i h??? r???t d??y c?? m??u m??u xanh ??an xen r???t ?????p m???t. Ch??ng c??ng ???????c xem l?? m???t lo???i c??y t????ng ?????i d??? ch??m s??c v?? sinh tr?????ng trong nhi???u ??i???u ki???n kh???c nghi???t.\n<figure id=\"attachment_9215\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-9215\" src=\"https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-800x800.jpg\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-800x800.jpg 800w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-600x600.jpg 600w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-200x200.jpg 200w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho-100x100.jpg 100w, https://cayxinh.vn/wp-content/uploads/2018/12/tc-luoi-ho.jpg 960w\" alt=\"\" width=\"800\" height=\"800\" /><figcaption class=\"wp-caption-text\">H??nh ???nh: Ti???u c???nh l?????i h??? ????? b??n l??m vi???c</figcaption></figure>\nT???i C??y Xinh kh??ch h??ng th?????ng l???a ch???n ti???u c???nh l?????i h??? l??m m??n qu?? d??nh t???ng cho ng?????i th????ng trong nh???ng d???p l??? ?????c bi???t v?? c??ng l?? v???t trang tr?? v?? c??ng ?????p tr??n b??n l??m vi???c.\n\nHi???n t???i C??y Xinh ???? v?? ??ang c??? g???ng s??ng t???o v?? mang ?????n cho qu?? kh??ch h??ng nh???ng ch???u??<strong>ti???u c???nh ?????p ????? b??n ?????p</strong>??v?? ch???t l?????ng h??n n???a ????? ????p ???ng nhu c???u s??? d???ng ng??y c??ng cao c???a qu?? kh??ch h??ng. H??y li??n h??? v???i ch??ng t??i theo c??c s??? hotline tr??n Website ????? ???????c t?? v???n h??? tr??? t???t nh???t nh??.","Nh???ng m???u ti???u c???nh m???i nh???t ????n t??i l???c n??m 2019","","publish","open","open","","nhung-mau-tieu-canh-moi-nhat-don-tai-loc-nam-2019","","","2019-02-25 17:25:38","2019-02-25 17:25:38","","0","https://tppone.com/demo/chaucay/?p=307","0","post","","0"),
("308","1","2019-02-25 17:25:35","2019-02-25 17:25:35","","3-1","","inherit","open","closed","","3-1","","","2019-02-25 17:25:35","2019-02-25 17:25:35","","307","https://tppone.com/demo/chaucay/wp-content/uploads/2019/02/3-1.jpg","0","attachment","image/jpeg","0"),
("326","1","2019-02-25 17:32:26","2019-02-25 17:32:26","[section label=\"Footer block\" bg_color=\"rgb(255, 255, 255)\" padding=\"50px\" class=\"footer-section\"]\n\n[row style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n<h3>V??? ch??ng t??i</h3>\n<p><img class=\"alignnone wp-image-25 \" src=\"https://bizhostvn.com/w/chaucay/wp-content/uploads/2019/02/logo-chau-canh.png\" alt=\"\" width=\"180\" height=\"61\" /></p>\n<p><span style=\"font-size: 95%;\"><strong>C??y Xinh??</strong>l?? th????ng hi???u d???n ?????u trong l??nh v???c s???n xu???t &amp; cung c???p c??c lo???i??C??y C???nh ????? B??n, Sen ????, X????ng R???ng &amp; Ti???u c???nh Terrarium trang tr?? n???i th???t, v??n ph??ng.??C??y Xinh??lu??n c??? g???ng t???o ra nh???ng s???n ph???m ?????p, kh??c bi???t ho??n to??n so v???i th??? tr?????ng ????? ????p ???ng m???i nhu c???u c???a kh??ch h??ng v???i m???u m?? ??a d???ng, phong ph??. Ch??ng t??i mu???n bi???n t???t nh???ng ch???u c??y c???nh th??nh nh???ng t??c ph???m ngh??? thu???t v???i t???t c??? ni???m ??am m?? v?? t??m huy???t c???a m??nh...</span></p>\n[follow style=\"fill\" align=\"left\" facebook=\"#\" email=\"#\" phone=\"#\" youtube=\"#\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<h3>?????a ch??? showroom</h3>\n<p><strong><span style=\"font-size: 90%; color: #50b848;\">C?? s??? 1:S??? 106, Ng?? 72, Nguy???n Tr??i, Thanh Xu??n (C???nh Royal City), H?? N???i</span></strong><br />\n<span style=\"font-size: 90%;\"><strong><span style=\"color: #000000;\">??i???n tho???i:??</span><a class=\"goidt\" href=\"tel:0965962586\">096 596 2586</a></strong>??-??<strong><a class=\"goidt\" href=\"tel:0948225678\">094 822 5678</a></strong></span><br />\n<span style=\"font-size: 90%;\"><span style=\"color: #50b848;\"><strong><span style=\"color: #000000;\">Email:</span></strong>??</span>cayxinh.vn@gmail.com</span><br />\n<span style=\"font-size: 90%;\"><strong><span style=\"color: #000000;\">Fanpage:</span></strong>??<a href=\"https://www.facebook.com/caycanhmini.plus\">https://www.facebook.com/caycanhmini.plus</a></span></p>\n<p><span style=\"color: #50b848;\"><strong><span style=\"font-size: 90%;\">C?? s??? 3:??S??? 310/10 D????ng Qu???ng H??m, Ph?????ng 5, G?? V???p, Tp HCM</span></strong></span><br />\n<span style=\"font-size: 90%;\"><strong><span style=\"color: #000000;\">??i???n tho???i:??</span><a class=\"goidt\" href=\"tel:0941299699\">094 129 9699</a></strong>??-??<strong><a class=\"goidt\" href=\"tel:0941628000\">094 162 8000</a><br />\n<span style=\"color: #000000;\">Email:</span> </strong></span><span style=\"font-size: 90%;\">cayxinhsaigon@gmail.com</span><br />\n<span style=\"font-size: 90%;\"><span style=\"color: #000000;\"><b>Fanpage:</b></span>??<a href=\"https://www.facebook.com/cayxinhsaigon\">https://www.facebook.com/cayxinhsaigon</a></span></p>\n<p><span style=\"color: #50b848;\"><strong><span style=\"font-size: 90%;\">C?? s??? 2:??S??? 170, B??i Th??? Xu??n, Tp. H???i D????ng</span></strong></span><br />\n<span style=\"font-size: 90%;\"><strong><span style=\"color: #000000;\">??i???n tho???i:??</span><a class=\"goidt\" href=\"tel:0868801805\">0868 801 805</a></strong></span><br />\n<span style=\"font-size: 90%;\"><span style=\"color: #000000;\"><b>Email:</b></span>??cayxinh.vn@gmail.com</span><br />\n<span style=\"font-size: 90%;\"><span style=\"color: #000000;\"><b>Fanpage:</b>??</span><a href=\"https://www.facebook.com/cayxinhhaiduong/\">https://www.facebook.com/cayxinhhaiduong/</a></span></p>\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n<h4>Th???i gian l??m vi???c</h4>\n<p><span style=\"font-size: 90%;\">C???a h??ng l??m vi???c t??? 8-19h h??ng ng??y, n???u qu?? kh??ch mu???n mua s??? l?????ng l???n ho???c ?????t s??? vui l??ng li??n h??? tr???c ti???p qua S??T??<a href=\"tel:0868357939\">0868.357.939</a></span><br />\n<span style=\"font-size: 90%;\">Xin c???m ??n!</span></p>\n<h4>Danh m???c s???n ph???m</h4>\n<ul>\n<li><a href=\"/danh-muc-san-pham/chau-gom-nhap-khau/\"><span style=\"font-size: 90%;\">Ch???u g???m nh???p kh???u</span></a></li>\n<li><a href=\"/danh-muc-san-pham/chau-gom-dat-nung/\"><span style=\"font-size: 90%;\">Ch???u g???m ?????t nung</span></a></li>\n<li><a href=\"/danh-muc-san-pham/chau-gom-su/\"><span style=\"font-size: 90%;\">Ch???u g???m s???</span></a></li>\n<li><a href=\"/danh-muc-san-pham/chau-thuy-tinh/\"><span style=\"font-size: 90%;\">Ch???u th???y tinh</span></a></li>\n<li><a href=\"/danh-muc-san-pham/cac-loai-chau-khac/\"><span style=\"font-size: 90%;\">C??c lo???i ch???u kh??c</span></a></li>\n</ul>\n<h4>H??? tr??? kh??ch h??ng</h4>\n<p><span style=\"font-size: 90%;\">H?????ng d???n ?????t h??ng</span><br />\n<span style=\"font-size: 90%;\">H?????ng d???n thanh to??n</span></p>\n\n[/col]\n\n[/row]\n\n[/section]","Footer Block","","publish","closed","closed","","footer-block","","","2019-02-25 18:03:38","2019-02-25 18:03:38","","0","https://tppone.com/demo/chaucay/?post_type=blocks&#038;p=326","0","blocks","","0");
INSERT INTO gdd_posts VALUES
("393","1","2019-02-25 18:11:32","2019-02-25 18:11:32"," ","","","publish","closed","closed","","393","","","2019-02-25 18:19:15","2019-02-25 18:19:15","","0","https://tppone.com/demo/chaucay/?p=393","7","nav_menu_item","","0"),
("471","1","2019-02-25 19:04:23","2019-02-25 19:04:23","<label> T??n c???a b???n (b???t bu???c)\n    [text* your-name] </label>\n\n<label> ?????a ch??? Email (b???t bu???c)\n    [email* your-email] </label>\n\n<label> Ti??u ?????:\n    [text your-subject] </label>\n\n<label> Th??ng ??i???p\n    [textarea your-message] </label>\n\n[submit \"G???i ??i\"]\nM???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\nM???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\nG???i ?????n t???: [your-name] <[your-email]>\nTi??u ?????: [your-subject]\n\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\nwebdemo@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nM???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\nM???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\n[your-email]\nReply-To: webdemo@gmail.com\n\n0\n0\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.","Form li??n h??? 1","","publish","closed","closed","","form-lien-he-1","","","2019-02-25 19:04:23","2019-02-25 19:04:23","","0","https://tppone.com/demo/chaucay/?post_type=wpcf7_contact_form&p=471","0","wpcf7_contact_form","","0"),
("474","1","2019-02-25 19:06:55","2019-02-25 19:06:55","[text* text-748 placeholder \"T??n c???a b???n...\"]\n[tel* tel-670 placeholder \"S??? ??i???n tho???i...\"]\n[text text-7344 placeholder \"?????a ch??? c???a b???n...\"]\n[textarea textarea-872 placeholder \"N???i dung tin nh???n...\"]\n[submit \"G???i li??n h???\"]\n1\nM???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\nM???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\nwebdemo@gmail.com\nC?? ng?????i li??n h??? tr??n website:\n- H??? v?? t??n: [text-748]\n- S??? ??i???n tho???i: [tel-670]\n- ?????a ch???: [te[textarea-872]\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\n\n\n\n\n\nM???u website b??n ch???u c??y c???nh - Webdemo \"[your-subject]\"\nM???u website b??n ch???u c??y c???nh - Webdemo <wordpress@chaucay.webdemo.com>\n[your-email]\nN???i dung th??ng ??i???p:\n[your-message]\n\n-- \nEmail n??y ???????c g???i ?????n t??? form li??n h??? c???a website M???u website b??n ch???u c??y c???nh - Webdemo (https://bizhostvn.com/w/chaucay)\nReply-To: webdemo@gmail.com\n\n\n\nXin c???m ??n, form ???? ???????c g???i th??nh c??ng.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nC?? m???t ho???c nhi???u m???c nh???p c?? l???i. Vui l??ng ki???m tra v?? th??? l???i.\nC?? l???i x???y ra trong qu?? tr??nh g???i. Xin vui l??ng th??? l???i ho???c li??n h??? ng?????i qu???n tr??? website.\nB???n ph???i ch???p nh???n ??i???u kho???n tr?????c khi g???i form.\nM???c n??y l?? b???t bu???c.\nNh???p qu?? s??? k?? t??? cho ph??p.\nNh???p ??t h??n s??? k?? t??? t???i thi???u.\n?????nh d???ng ng??y th??ng kh??ng h???p l???.\nNg??y n??y tr?????c ng??y s???m nh???t ???????c cho ph??p.\nNg??y n??y qu?? ng??y g???n nh???t ???????c cho ph??p.\nT???i file l??n kh??ng th??nh c??ng.\nB???n kh??ng ???????c ph??p t???i l??n file theo ?????nh d???ng n??y.\nFile k??ch th?????c qu?? l???n.\nT???i file l??n kh??ng th??nh c??ng.\n?????nh d???ng s??? kh??ng h???p l???.\nCon s??? nh??? h??n s??? nh??? nh???t cho ph??p.\nCon s??? l???n h??n s??? l???n nh???t cho ph??p.\nC??u tr??? l???i ch??a ????ng.\nB???n ???? nh???p sai m?? CAPTCHA.\n?????a ch??? e-mail kh??ng h???p l???.\nURL kh??ng h???p l???.\nS??? ??i???n tho???i kh??ng h???p l???.","Li??n h???","","publish","closed","closed","","lien-he","","","2019-02-25 19:06:59","2019-02-25 19:06:59","","0","https://tppone.com/demo/chaucay/?post_type=wpcf7_contact_form&#038;p=474","0","wpcf7_contact_form","","0"),
("530","1","2019-05-06 09:04:57","2019-05-06 09:04:57","{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-06 09:04:57\"\n    }\n}","","","trash","closed","closed","","572c6cf9-a95b-4a4b-9831-26edcf0ebb25","","","2019-05-06 09:04:57","2019-05-06 09:04:57","","0","https://tppone.com/demo/chaucay/572c6cf9-a95b-4a4b-9831-26edcf0ebb25/","0","customize_changeset","","0"),
("531","1","2019-05-10 01:51:13","2019-05-10 01:51:13","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-10 01:51:13","2019-05-10 01:51:13","","0","https://bizhostvn.com/w/chaucay/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("1","1","0"),
("34","20","0"),
("44","21","0"),
("45","21","0"),
("46","21","0"),
("47","21","0"),
("48","21","0"),
("51","20","0"),
("52","20","0"),
("72","21","0"),
("124","21","0"),
("145","2","0"),
("145","16","0"),
("147","2","0"),
("147","16","0"),
("149","2","0"),
("149","16","0"),
("149","17","0"),
("151","2","0"),
("151","16","0"),
("153","2","0"),
("153","16","0"),
("153","17","0"),
("153","18","0"),
("153","19","0"),
("155","2","0"),
("155","16","0"),
("158","2","0"),
("158","16","0"),
("160","2","0"),
("160","16","0"),
("162","2","0"),
("162","16","0"),
("164","2","0"),
("164","16","0"),
("166","2","0"),
("166","16","0"),
("166","19","0"),
("168","2","0"),
("168","16","0"),
("170","2","0"),
("170","15","0"),
("172","2","0"),
("172","15","0"),
("174","2","0"),
("174","15","0"),
("176","2","0"),
("176","15","0"),
("176","16","0"),
("180","2","0"),
("180","15","0"),
("182","2","0"),
("182","15","0"),
("182","17","0"),
("185","2","0"),
("185","17","0"),
("185","19","0"),
("187","2","0"),
("187","17","0"),
("187","19","0"),
("190","2","0"),
("190","19","0"),
("192","2","0"),
("192","18","0"),
("195","2","0"),
("195","18","0"),
("197","2","0"),
("197","18","0"),
("197","19","0"),
("199","2","0"),
("199","18","0"),
("201","2","0"),
("201","9","0"),
("201","18","0"),
("294","22","0"),
("298","22","0"),
("301","22","0"),
("304","22","0"),
("307","22","0"),
("393","21","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_taxonomy VALUES
("1","1","category","","0","1"),
("2","2","product_type","","0","26"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_visibility","","0","0"),
("7","7","product_visibility","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","1"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","0"),
("15","15","product_cat","","0","6"),
("16","16","product_cat","","0","13"),
("17","17","product_cat","","0","5"),
("18","18","product_cat","","0","6"),
("19","19","product_cat","","0","6"),
("20","20","nav_menu","","0","3"),
("21","21","nav_menu","","0","8"),
("22","22","category","Ti???u c???nh phong th???y lo???i c??y c???nh ?????c ????o ???????c C??y Xinh t???o v?? ????a ra th??? tr?????ng v??i th??ng tr??? l???i ????y ???? nhanh ch??ng chi???m l??nh nh???n ???????c s??? y??u m???n c???a ????ng ?????o qu?? kh??ch h??ng nh???ng ng?????i y??u c??y phong th???y ????? b??n.\n\nTrong nh???ng b??i vi???t tr?????c ????y ch??ng t??i ???? gi???i thi???u t???i b???n ?????c h??nh ???nh r???t nhi???u c??c m???u ti???u c???nh phong th???y ????? b??n kh??c nhau v?? ??? b??i vi???t n??y C??y Xinh s??? l???i ti???p t???c g???i t???i qu?? kh??ch h??ng b??? s??u t???p 1 s??? lo???i ti???u c???nh phong th???y ?????p n??m 2019.","0","5");




CREATE TABLE `gdd_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_termmeta VALUES
("1","15","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","15","display_type",""),
("3","15","thumbnail_id","20"),
("4","16","order","0"),
("5","16","display_type",""),
("6","16","thumbnail_id","21"),
("7","17","order","0"),
("8","17","display_type",""),
("9","17","thumbnail_id","22"),
("10","18","order","0"),
("11","18","display_type",""),
("12","18","thumbnail_id","23"),
("13","19","order","0"),
("14","19","display_type",""),
("15","19","thumbnail_id","24"),
("16","16","product_count_product_cat","13"),
("17","17","product_count_product_cat","5"),
("18","15","product_count_product_cat","6"),
("19","19","product_count_product_cat","6"),
("20","18","product_count_product_cat","6");




CREATE TABLE `gdd_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_terms VALUES
("1","Ch??a ???????c ph??n lo???i","khong-phan-loai","0"),
("2","simple","simple","0"),
("3","grouped","grouped","0"),
("4","variable","variable","0"),
("5","external","external","0"),
("6","exclude-from-search","exclude-from-search","0"),
("7","exclude-from-catalog","exclude-from-catalog","0"),
("8","featured","featured","0"),
("9","outofstock","outofstock","0"),
("10","rated-1","rated-1","0"),
("11","rated-2","rated-2","0"),
("12","rated-3","rated-3","0"),
("13","rated-4","rated-4","0"),
("14","rated-5","rated-5","0"),
("15","Ch???u g???m nh???p kh???u","chau-gom-nhap-khau","0"),
("16","Ch???u g???m s???","chau-gom-su","0"),
("17","Ch???u g???m ?????t nung","chau-gom-dat-nung","0"),
("18","Ch???u th???y tinh","chau-thuy-tinh","0"),
("19","C??c lo???i ch???u kh??c","cac-loai-chau-khac","0"),
("20","Topbar menu","topbar-menu","0"),
("21","Main menu","main-menu","0"),
("22","Tin t???c","tin-tuc","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
("14","1","dismissed_wp_pointers","wp496_privacy,theme_editor_notice,text_widget_custom_html"),
("15","1","show_welcome_panel","0"),
("16","1","session_tokens","a:9:{s:64:\"7acf5fe4efc5eeca9525f2b04427d392075d5befcb24c7eb785b188d9600f0fd\";a:4:{s:10:\"expiration\";i:1557484992;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557312192;}s:64:\"c88e0929247b89aa5b51868ae4aa5d907c8af052d09fbca995e69fcfd34dd298\";a:4:{s:10:\"expiration\";i:1557616104;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443304;}s:64:\"edc4777ffa070bb7db150f8f50714a57aeff4457c8b63c91e63ffea8c23fee5c\";a:4:{s:10:\"expiration\";i:1557619618;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557446818;}s:64:\"6b0a8eb1a1b029ea0090992d3c2837a286927e7aa0e4725433193ec5b4d0a20c\";a:4:{s:10:\"expiration\";i:1557625560;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452760;}s:64:\"718a7c5e674b2a33562533b93b920ab71daf8f91cafba48008036913d67a5af7\";a:4:{s:10:\"expiration\";i:1557627871;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455071;}s:64:\"2cace6f0ed7bc42849a7c81cca9c02e01c593f56a93ed282885887d5769965bf\";a:4:{s:10:\"expiration\";i:1557628294;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455494;}s:64:\"8449f72e21ace6753ae0d7ce5e6431a00c01ddd310d46294e0b3612b5ef84e5d\";a:4:{s:10:\"expiration\";i:1557632543;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557459743;}s:64:\"5bd57c33f54bc48958111dfafb2de7ca3882b0032a105eab32ed80e93116050d\";a:4:{s:10:\"expiration\";i:1557636190;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557463390;}s:64:\"b1621051fafaf17b1c23e00b0b97ad8f5a0569ac9bacbcede09d8fe269e487e6\";a:4:{s:10:\"expiration\";i:1557648388;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557475588;}}"),
("17","1","gdd_dashboard_quick_press_last_post_id","529"),
("18","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("19","1","tgmpa_dismissed_notice_tgmpa","1"),
("20","1","wc_last_active","1557446400"),
("21","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("22","1","dismissed_no_secure_connection_notice","1"),
("23","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("24","1","gdd_user-settings-time","1557446818"),
("25","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("26","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:15:\"add-product_cat\";i:6;s:15:\"add-product_tag\";}"),
("27","1","nav_menu_recently_edited","21"),
("28","1","dismissed_no_shipping_methods_notice","1"),
("30","1","duplicator_pro_created_format","1"),
("31","1","wpcf7_hide_welcome_panel_on","a:1:{i:0;s:3:\"5.1\";}"),
("43","1","_woocommerce_tracks_anon_id","woo:Vtl7yb2y5iysIqOLpRCuOaqP"),
("45","1","_woocommerce_load_saved_cart_after_login","1");




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
("1","admin","$P$BSWZyu8dZqK8b0hOati0sJkNpMNS0Y0","admin","demobz@gmail.com","","2019-02-25 10:19:25","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;