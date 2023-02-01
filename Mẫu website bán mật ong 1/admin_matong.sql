SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `bizhostvn_w29`
--




CREATE TABLE `gdd_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_commentmeta VALUES
("1","2","rating","5"),
("2","2","verified","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_comments VALUES
("1","1","Một người bình luận WordPress","wapuu@wordpress.example","https://wordpress.org/","","2019-01-15 12:24:48","2019-01-15 12:24:48","Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0"),
("2","201","ninhbinhweb.net","demo@gmail.com","","183.81.19.168","2019-01-16 16:15:22","2019-01-16 09:15:22","Good!","0","1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36","review","0","1");




CREATE TABLE `gdd_duplicator_pro_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO gdd_duplicator_pro_entities VALUES
("1","DUP_PRO_Global_Entity","{\"uninstall_settings\":false,\"uninstall_files\":false,\"uninstall_tables\":true,\"wpfront_integrate\":false,\"package_ui_created\":1,\"package_mysqldump\":false,\"package_mysqldump_path\":\"\",\"package_phpdump_mode\":1,\"package_phpdump_qrylimit\":500,\"package_php_chunking\":null,\"archive_build_mode\":2,\"archive_compression\":true,\"ziparchive_validation\":false,\"ziparchive_mode\":0,\"ziparchive_chunk_size_in_mb\":6,\"archive_build_mode_schedule\":2,\"archive_compression_schedule\":true,\"server_load_reduction\":0,\"max_package_runtime_in_min\":90,\"php_max_worker_time_in_sec\":18,\"lock_mode\":0,\"json_mode\":0,\"ajax_protocol\":\"http\",\"custom_ajax_url\":\"https:\\/\\/bizhostvn.com\\/w\\/matong\\/wp-admin\\/admin-ajax.php\",\"clientside_kickoff\":false,\"basic_auth_enabled\":false,\"basic_auth_user\":\"\",\"basic_auth_password\":\"\",\"installer_base_name\":\"installer.php\",\"chunk_size\":2048,\"send_email_on_build_mode\":1,\"notification_email_address\":\"\",\"storage_htaccess_off\":false,\"max_storage_retries\":10,\"max_default_store_files\":20,\"dropbox_upload_chunksize_in_kb\":2000,\"dropbox_transfer_mode\":1,\"gdrive_upload_chunksize_in_kb\":2000,\"s3_upload_part_size_in_kb\":6000,\"manual_mode_storage_ids\":[\"-2\"],\"license_status\":0,\"license_expiration_time\":1547692808,\"license_no_activations_left\":false,\"license_key_visible\":true,\"lkp\":\"\",\"license_limit\":-1,\"last_edd_api_response\":null,\"last_edd_api_timestamp\":0,\"last_system_check_timestamp\":1557408467,\"initial_activation_timestamp\":1547692819,\"debug_on\":false,\"trace_profiler_on\":false,\"profile_idea\":false,\"profile_beta\":false,\"dupHidePackagesGiftFeatures\":true,\"type\":\"DUP_PRO_Global_Entity\",\"notices\":{\"dupArchiveSwitch\":true}}"),
("2","DUP_PRO_Secure_Global_Entity","{\"basic_auth_password\":\"\",\"lkp\":\"\",\"type\":\"DUP_PRO_Secure_Global_Entity\"}"),
("3","DUP_PRO_System_Global_Entity","{\"recommended_fixes\":[],\"schedule_failed\":false,\"package_check_ts\":1557408578,\"type\":\"DUP_PRO_System_Global_Entity\"}"),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=1597 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_options VALUES
("1","siteurl","https://bizhostvn.com/w/matong","yes"),
("2","home","https://bizhostvn.com/w/matong","yes"),
("3","blogname","matong","yes"),
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
("22","posts_per_page","10","yes"),
("23","date_format","d/m/Y","yes"),
("24","time_format","H:i","yes"),
("25","links_updated_date_format","j F, Y g:i a","yes"),
("26","comment_moderation","0","yes"),
("27","moderation_notify","1","yes"),
("28","permalink_structure","/%postname%/","yes"),
("29","rewrite_rules","a:173:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"cua-hang/?$\";s:27:\"index.php?post_type=product\";s:41:\"cua-hang/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"cua-hang/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"cua-hang/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?block_categories=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:49:\"index.php?block_categories=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?block_categories=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:38:\"index.php?block_categories=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}","yes"),
("30","hack_file","0","yes"),
("31","blog_charset","UTF-8","yes"),
("32","moderation_keys","","no"),
("33","active_plugins","a:6:{i:0;s:43:\"better-font-awesome/better-font-awesome.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:42:\"contentprotector/smartcontentprotector.php\";i:4;s:35:\"devvn-quick-buy/devvn-quick-buy.php\";i:5;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}","yes"),
("34","category_base","","yes"),
("35","ping_sites","http://rpc.pingomatic.com/","yes"),
("36","comment_max_links","2","yes"),
("37","gmt_offset","7","yes"),
("38","default_email_category","1","yes"),
("39","recently_edited","a:3:{i:0;s:98:\"/home/bizhostvn/domains/bizhostvn.com/public_html/w/matong/wp-content/themes/mat-ong/functions.php\";i:2;s:94:\"/home/bizhostvn/domains/bizhostvn.com/public_html/w/matong/wp-content/themes/mat-ong/style.css\";i:3;s:0:\"\";}","no"),
("40","template","flatsome","yes"),
("41","stylesheet","mat-ong","yes"),
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
("58","thumbnail_size_w","0","yes"),
("59","thumbnail_size_h","0","yes"),
("60","thumbnail_crop","1","yes"),
("61","medium_size_w","0","yes"),
("62","medium_size_h","0","yes"),
("63","avatar_default","mystery","yes"),
("64","large_size_w","0","yes"),
("65","large_size_h","0","yes"),
("66","image_default_link_type","","yes"),
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
("78","widget_categories","a:2:{i:3;a:4:{s:5:\"title\";s:25:\"Chuyên mục bài viết\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes"),
("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes"),
("81","uninstall_plugins","a:0:{}","no"),
("82","timezone_string","","yes"),
("83","page_for_posts","0","yes"),
("84","page_on_front","2","yes"),
("85","default_post_format","0","yes"),
("86","link_manager_enabled","0","yes"),
("87","finished_splitting_shared_terms","1","yes"),
("88","site_icon","18","yes"),
("89","medium_large_size_w","768","yes"),
("90","medium_large_size_h","0","yes"),
("91","wp_page_for_privacy_policy","3","yes"),
("92","show_comments_cookies_opt_in","0","yes"),
("93","initial_db_version","38590","yes"),
("94","gdd_user_roles","a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}","yes"),
("95","fresh_site","0","yes"),
("96","WPLANG","vi","yes"),
("97","widget_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("98","widget_recent-posts","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("99","widget_recent-comments","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("100","widget_archives","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO gdd_options VALUES
("101","widget_meta","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("102","sidebars_widgets","a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:3:{i:0;s:13:\"media_image-2\";i:1;s:23:\"flatsome_recent_posts-2\";i:2;s:12:\"categories-3\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:1:{i:0;s:32:\"woocommerce_product_categories-2\";}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}","yes"),
("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("106","widget_media_image","a:2:{i:2;a:15:{s:13:\"attachment_id\";i:234;s:3:\"url\";s:79:\"https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/banner-02-300x167.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:369;s:6:\"height\";i:206;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("109","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("110","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("111","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("112","cron","a:15:{i:1557982079;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1557984289;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1557985668;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1557991857;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558009489;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558009498;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558013457;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558013467;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558015811;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558024257;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558026000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558058792;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558059937;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559606400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}","yes"),
("130","auto_core_update_notified","a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"demo@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1557408505;}","no"),
("135","new_admin_email","demo@gmail.com","yes"),
("140","recently_activated","a:3:{s:30:\"db-prefix-change/db_prefix.php\";i:1557410054;s:33:\"duplicator-pro/duplicator-pro.php\";i:1557408584;s:23:\"wp-rocket/wp-rocket.php\";i:1557408578;}","yes"),
("141","theme_mods_twentyseventeen","a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547555130;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes"),
("142","current_theme","Mật ong","yes"),
("143","theme_mods_flatsome","a:24:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:3:{i:0;s:7:\"nav-top\";i:1;s:10:\"newsletter\";i:2;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:6:\"search\";i:1;s:3:\"nav\";}s:21:\"header_elements_right\";a:3:{i:0;s:7:\"account\";i:1;s:7:\"divider\";i:2;s:4:\"cart\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:7:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:10:\"newsletter\";i:4;s:6:\"social\";i:5;s:6:\"html-2\";i:6;s:6:\"html-3\";}s:14:\"product_layout\";N;s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:0:{}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 15 Jan 2019 12:25:30 +0000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547555144;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"sidebar-footer-1\";a:0:{}s:16:\"sidebar-footer-2\";a:0:{}}}}","yes"),
("144","theme_switched","","yes"),
("145","widget_flatsome_recent_posts","a:2:{i:2;a:4:{s:5:\"title\";s:28:\"Bài viết - kinh nghiệm \";s:6:\"number\";i:10;s:5:\"image\";s:2:\"on\";s:10:\"date-stamp\";N;}s:12:\"_multiwidget\";i:1;}","yes"),
("146","widget_block_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("148","flatsome_wup_purchase_code","8f93cd51-5246-4505-9228-9a4137e6ec00","yes"),
("149","flatsome_wup_sold_at","2015-05-22T19:31:36+10:00","yes"),
("150","flatsome_wup_supported_until","2016-03-02T03:00:00+11:00","yes"),
("151","flatsome_wup_buyer","trannguyen886","yes"),
("152","allowedthemes","a:1:{s:7:\"mat-ong\";b:1;}","no"),
("153","fl_has_child_theme","mat-ong","yes"),
("155","theme_mods_mat-ong","a:184:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:7:\"nav-top\";}s:20:\"header_elements_left\";a:1:{i:0;s:11:\"search-form\";}s:21:\"header_elements_right\";a:1:{i:0;s:3:\"nav\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:2:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";}s:14:\"product_layout\";s:10:\"no-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:21;s:14:\"primary_mobile\";i:21;s:11:\"top_bar_nav\";i:22;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 15 Jan 2019 12:25:47 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:1902:\"<div class=\"call-mobile1\"> <a data-animate=\"fadeInDown\" rel=\"noopener noreferrer\" href=\"https://messenger.com/t/demo\" target=\"_blank\" class=\"button success\" style=\"border-radius:99px; background: #167ac6; text-transform: none; font-weight: normal\" data-animated=\"true\"> <span>Chat Facebook</span></a></div>\n<div class=\"call-mobile\"> <a id=\"callnowbutton\" href=\"tel:0909009009\">0909009009</a><i class=\"fa fa-phone\"></i></div>\n\n<style>\n.hotline-footer{display:none}\n@media  (max-width: 767px) {\n.hotline-footer{display:block; position:fixed; bottom:0; width:100%; height:50px; z-index:99; background:rgba(0,0,0,0.6)}\n.hotline-footer .left{    width: 65%;\n    float: left;\n    height: 100%;\n    color: white;\n    line-height: 43px;\n    text-align: center;}\n.hotline-footer .right{    width: 35%;\n    float: right;\n    height: 100%;\n    line-height: 43px;\n    text-align: center;}.absolute-footer{font-size:13px}\n.blog-single .large-9, .blog-single .large-3{    flex-basis: 100%;\n max-width: 100%;}.blog-single .large-3{padding-left:15px; font-size:15px}\n \n.blog-single .large-3 .widget-area .section4{display:none}.tin-tuc-section .cot1-2{display:none}.hotline-footer a{color:white}\n.hotline-footer a{display:block;}.hotline-footer .left a{    background: #f851a7;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}.hotline-footer .right a{background: #fdc215;\n    line-height: 40px;\n    margin: 5px;\n border-radius: 3px;}\n.hotline-footer .left img, .hotline-footer .right img{width:30px;    padding-right: 10px;}}\n</style><div class=\"hotline-footer\">\n<div class=\"left\">\n<a href=\"https://messenger.com/t/demo\" ><img src=\"/wp-content/uploads/2019/01/icon.png\"/>Chat với tư vấn viên</a>\n</div>\n<div class=\"right\">\n<a href=\"tel:0909009009\"><img src=\"/wp-content/uploads/2019/01/phone-icon.png\"/>Gọi ngay</a>\n</div>\n<div class=\"clearboth\"></div>\n</div>\";s:15:\"html_custom_css\";s:9896:\".header-main .nav > li > a {\n    line-height: 33px;\n    padding: 0 10px;\n}\n.product-categories{border: 1px solid #fdc215;\n    padding: 10px;\n    font-size: 15px;}\n.header-main .nav > li{margin-right:5px}\n.nav-dropdown.nav-dropdown-default>li>a {\n    margin: 0;\n    padding: 10px 15px;\n    font-size: 15px;\n}\n.nav-dropdown{border: 1px solid #fdc215;}\n.nav-dropdown.nav-dropdown-default>li>a:hover{background: #fdc215;\n    color: #f851a7;}\n.nav-dropdown-default{padding:0}\n#top-bar{font-size:18px}\n.header-nav li.html input{height: 40px;\n    box-shadow: 0px 0px;\n    border-top-left-radius: 4px;\n    border-bottom-left-radius: 4px;}\n.header-nav .button.secondary:not(.is-outline){    background-color: #fdc215;\n    height: 40px;\n    width: 40px;\n    border-top-right-radius: 4px;\n    border-bottom-right-radius: 4px;}\n.san-pham .product-small:hover {\n    box-shadow: 2px 5px 19px #dadada;\n}\n.san-pham .col{padding-bottom:25px}\n.header-main {\n    box-shadow: 2px 2px 15px #00000033;\n}\n.san-pham .price span{    font-size: 20px;\n    font-weight: normal;\n    color: red;\n}\n.sp-noi-bat .product-small:hover{box-shadow: 2px 4px 24px #00000042;}\n.san-pham .large-12{padding-bottom:0}\n.banner-section .banner-inner .fill, .banner-section .banner{border-radius:15px; border:1px solid #fdc215}\n.banner-section .col{padding-bottom:0}\n.sp-noi-bat{border-top:5px solid #fdc215; border-bottom: 5px solid #fdc215}\n.san-pham .button {margin-bottom: 0;\n    line-height: 35px;\n    border: 1px solid;background:white}\n.san-pham .button span{font-weight:normal; font-size:15px}\n.section-title, .section-title-container{margin-bottom:0}\n.san-pham .product-small {background:white;   border: 1px solid #fdc215;\n    border-radius: 20px;\n    padding: 10px; padding-bottom:0}\n.san-pham .product-small .box-text{padding:10px 0}\n.san-pham .product-small .product-title a {\n    text-transform: none;\n    font-family: \"roboto condensed\", sans-serif;\n    color: #F751A7;\n    font-size: 15px; margin-bottom:5px\n}\n.san-pham .badge-container .badge-inner{border-radius:99%; background:#f851a7; font-weight:normal; font-size:15px}\n.san-pham .badge-container{margin:20px}\n.san-pham .product-small .add-to-cart-button a{border-radius: 20px;\n    padding: 0px 25px;\n    text-transform: none;\n    font-size: 14px;\n    font-weight: normal;\n    letter-spacing: 0;}\n.san-pham .product-small .price ins span{font-size: 20px;\n    font-weight: normal;\n    color: red;}\n.san-pham .product-small .price del span{color:gray; font-size:15px}\n.san-pham .product-small .add-to-cart-button a:hover{box-shadow: 1px 6px 10px #d0d0d0;}\n.form-tu-van .title{    font-size: 23px;\n    text-transform: uppercase;\n    text-align: center;\n    margin-bottom: 15px;\n    color: #5c2200;\n    font-family: \"roboto condensed\", sans-serif;\n    font-weight: bold;}\n.tin-tuc .cot8 .post-item .col-inner:hover{border: 1px solid #fdc215;\n    box-shadow: 2px 4px 15px #e4e4e4;}\n\n.tin-tuc .cot4 .video-fit{\n    border: 2px solid #fdc215;\nborder-radius: 10px;}\n.tin-tuc .cot8 .post-item .col-inner{    background: white;\n    border-radius: 4px;}\n.form-tu-van {   background:white;  border: 1px solid #fdc215;\n    padding: 20px;\n    border-radius: 20px;\n    box-shadow: 2px 2px 10px #fdc215;}\n.form-tu-van input[type=\'text\'], .form-tu-van textarea, .form-tu-van input[type=\'tel\']{font-size: 15px;\n    border-radius: 4px;\n    box-shadow: 0px 0px;\n    background: #fffdf1;\n    border: 1px solid #fdc215;}\n.tin-tuc .cot8 .post-item .post-title{FONT-SIZE: 21px;\n    color: #f851a7;\n    margin-bottom: 10px;\n    font-weight: normal;}\n.form-tu-van input[type=\'submit\']:not(.is-form){width: 100%;\n    border-radius: 20px;\n    background: #fdc215;\n    color: white;\n    font-weight: normal;\n    text-transform: none;\n    box-shadow: 0px 0px;\n    margin: 0;}\n.button.icon.circle{    background: #fdc215;\n    color: white;\n    border: 0;}\n.footer-section .post-item .post-title:hover{color:#fdc215}\n.footer-section .post-item .post-title{font-size:16px; margin-bottom:5px; font-weight:normal}\n.footer-section .post-item .box-text{padding:0}\n.footer-section .box-blog-post .is-divider{display:none}\n.copyright-footer a{color:red}\n.demo_store{font-size:13px}\n.call-mobile1 {\n    position: fixed;\n    bottom: 52px;\n    height: 40px;\n    line-height: 40px;\n    padding: 0;\n    border-radius: 40px;\n    color: #fff;\n    left: 20px;\n    z-index: 99999;\n}\n.call-mobile {\n    background: #f851a7;\n    position: fixed;\n    bottom: 10px;\n    height: 40px;\n    line-height: 40px;\n    padding: 0;\n    border-radius: 40px;\n    color: #fff;\n    left: 20px;\n    z-index: 99999;\n}\n.call-mobile a {\n    color: #fff;\n    font-size: 18px;\n    font-weight: bold;\n    text-decoration: none;\n    margin-right: 10px;\n    padding-left: 10px;\n}\n.call-mobile a {\n    color: #fff;\n    font-size: 18px;\n    font-weight: normal;\n    text-decoration: none;\n    margin-right: 10px;\n    padding-left: 10px;\n}\n.call-mobile i {\n    font-size: 20px;\n    line-height: 40px;\n    background: #e2318c;\n    border-radius: 100%;\n    width: 40px;\n    height: 40px;\n    text-align: center;\n    float: right;\n}\n.breadcrumbs{font-size:14px; text-transform:none}\n.single-product .product-title{font-weight: normal;}\n.product-gallery-slider img {\n    width: 100%;\n    border-radius: 20px;\n    border: 1px solid #fdc215;\n    padding: 10px;\n}\n.single-product .single_add_to_cart_button{background: #fdc215;\n    border-radius: 20px;\n    font-weight: normal;\n    text-transform: none;background-color: #fdc215 !important;}\n.related .product-section-title{margin: 0;\n    margin-bottom: 14px;\n    margin-top: 15px;\n    letter-spacing: 0;\n    font-size: 25px;\n    color: #561100;}\n.related .product-small .product-small{border:0; padding:0}\n.related .box.product-small{border: 1px solid #fdc215;\n    border-radius: 10px;\n    padding: 5px;}\n.product-section{border-top:0}\n.product-footer .woocommerce-tabs{border-top:0; padding:0}\na.devvn_buy_now_style, .devvn-popup-title, .popup-customer-info-group .devvn-order-btn{background: #fdc215;\n    background: -webkit-gradient(linear,0% 0%,0% 100%,from(#fdc215),to(#f59000));\n    background: -webkit-linear-gradient(top,#f59000,#fdc215);}\n.thong-bao .top{text-align: center;\n    margin-bottom: 5px;\n    color: #f851a7;}\n.thong-bao{    background: #fff7d9;\n    padding: 10px;\n    border-radius: 5px;\n    margin-bottom: 20px;\n    border: 1px dashed #fdc215;}\n.single-product .product-short-description{font-size: 15px;\n    color: #4e4e4e;\n}\n.single-product .price-wrapper del span{font-size:15px; color:gray}\n.single-product .price-wrapper ins span{font-size:25px; color:red; font-weight:normal}\n.single-product .badge-container{margin:20px}\n .star-rating:before{    color: #fdc215 !important;}\n.single-product .badge-container .badge-inner{border-radius:99%; background:#f851a7; font-size:15px; font-weight:normal}\n.nav-tabs+.tab-panels{border: 1px solid #fcb811;}.nav-tabs>li>a {\n    border-top: 2px solid #fbb811;\n    border-left: 1px solid #fcbc12;\n	border-right: 1px solid #fbb610;}\n.related .add-to-cart-button a{border-radius: 20px;\n    font-weight: normal;\n    text-transform: none;}\n.nav-tabs > li > a{font-size:20px}\n\n.archive .product-small .price del span{font-size:15px; color:gray}\n.archive .products .badge-container{margin:25px}\n.archive .products .badge-container .badge-inner{border-radius:99%; background:#f851a7}\n.archive .product-small .price ins span, .archive .product-small .price span {color:red; font-size:20px; font-weight:normal}\n.single-post .page-title-inner{min-height:200px !important}\n.single-post .nav-previous a:hover{color:#f851a7}\n.single-post .nav-previous a{color:black}\nfooter.entry-meta {\n    font-size: .8em;\n    border-top: 1px solid #ececec;\n    border-bottom: 0px solid #ececec;\n    padding: 10px 0 15px;\n}\n.single-post .the-tim-kiem a:hover{background:#fdc215;}\n.single-post .the-tim-kiem a{background: gray;\n    padding: 5px 15px;\n    color: white;\n    border-radius: 20px;}\n.archive .product-small .add-to-cart-button a{    border-radius: 20px;\n    text-transform: none;\n    font-weight: normal;\n    font-size: 12px;}\n.single-post .danh-muc {display:block; margin-bottom:10px}\nspan.widget-title{font-weight:normal; letter-spacing:0}\n.widget_categories ul li a, footer.entry-meta{font-size: 15px}\n.flatsome_recent_posts ul, .widget_categories ul{border: 1px solid #fdc215;\n    padding: 0 10px;}\n.blog-archive .taxonomy-description{font-size:15px; text-align:left}\n.blog-archive .archive-page-header .large-12{padding-bottom:15px}\n.blog-archive .post-item .post-title{    font-size: 25px;\n    font-weight: normal;\n    color: #5a882e;}\n.blog-archive .post-sidebar, .blog-single .post-sidebar{padding-left:0}\n.blog-archive .page-title{text-align: left;\n    letter-spacing: 0;\n    font-size: 25px;\n    color: #f851a7;}\n.archive .product-small .box-text .product-title{display:block; margin-bottom:7px}\n.archive .product-small .box-text .product-title a {color: #f851a7;\n    margin-bottom: 5px;\n    display: block;}\n.widget-title {display: block;\n    background: #fdc215;\n    padding: 13px 15px;\n    text-align: center;\n    font-weight: normal;\n    color: white;\n  \n}\n.single-post .post-sidebar{padding-top:0 !important}\n.single-post .entry-content{padding-top:0; padding-bottom:0}\n.single-post .article-inner{border: 1px solid #fdc215;\n    padding: 20px;}\n.single-post .entry-title{font-weight: normal;\n    color: #fdc215;\n    text-shadow: 1px 2px 5px black;}\n	.recent-blog-posts a{font-size:15px}\n.widget .is-divider{display:none}\n.single-product span.amount{font-weight:normal; color:red}\n.archive .product-small .box-text{padding:10px 0}\n.archive .box.product-small{border: 1px solid #fdc215;\n    padding: 5px;\n    border-radius: 10px;}\n.related .price-wrapper .price del span{color:gray !important}\n.related .price-wrapper .price span{font-size:18px; font-weight:normal !important; color:red }\n.related .product-small .product-title a{color:#f851a7}\";s:22:\"html_custom_css_tablet\";s:0:\"\";s:22:\"html_custom_css_mobile\";s:1265:\".call-mobile, .call-mobile1{display:none}\n.banner-section .col {\n    padding-bottom: 20px;\n}\n.san-pham .col {\n    padding-bottom: 10px;\n    padding-left: 10px;\n    padding-right: 10px;\n}\n.section-title{font-size:15px}\n.tin-tuc .cot8 .post-item, .blog-archive .post-item{flex-basis:50%; max-width:50%; padding-left: 5px;\n    padding-right: 5px;}\n.tin-tuc .cot8 .post-item .box-text{padding-left:5px; padding-right:5px}\n.tin-tuc .cot8 .post-item .is-divider{display:none}\n.tin-tuc .cot8 .post-item .from_the_blog_excerpt {display:none}\n.tin-tuc .cot8 .post-item .post-title{font-size:17px}\n.footer-section .medium-3{flex-basis:100%; max-width:100%}\n.nav-tabs+.tab-panels{padding:15px}\n.related .box.product-small .box-text{padding:0}\n.related .box.product-small .box-text .product-title{color:#f851a7}\n.off-canvas-center .nav-sidebar.nav-vertical > li > a, .dark .nav-vertical>li>ul li a{color:black}\n.single-post .post-sidebar{padding-left:15px}\n.blog-archive .post-item .post-title{font-size:16px; }\n.blog-archive .post-item .from_the_blog_excerpt {display:none}\n.blog-archive .post-item {padding-bottom:10px}\n.blog-archive .box-blog-post .is-divider{display:none}\n.blog-archive .post-sidebar, .blog-single .post-sidebar{padding-left:15px}\";s:11:\"site_loader\";s:1:\"0\";s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";s:1:\"0\";s:18:\"search_placeholder\";s:0:\"\";s:22:\"lazy_load_google_fonts\";s:1:\"1\";s:15:\"lazy_load_icons\";s:1:\"1\";s:21:\"lazy_load_backgrounds\";s:1:\"1\";s:16:\"lazy_load_images\";s:1:\"1\";s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";s:1:\"0\";s:21:\"maintenance_mode_page\";s:1:\"0\";s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:12:\"fl_portfolio\";s:1:\"0\";s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:6:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:10:\"type_texts\";a:6:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_nav\";a:6:{s:11:\"font-family\";s:16:\"Roboto Condensed\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:8:\"type_alt\";a:6:{s:11:\"font-family\";s:7:\"Pattaya\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";N;}s:19:\"flatsome_db_version\";s:5:\"3.7.2\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"flatsome_studio\";s:1:\"0\";s:29:\"maintenance_mode_admin_notice\";s:1:\"1\";s:9:\"404_block\";s:1:\"0\";s:18:\"custom_css_post_id\";i:-1;s:10:\"site_width\";s:6:\"1200px\";s:11:\"preset_demo\";s:14:\"header-default\";s:22:\"topbar_elements_center\";a:0:{}s:29:\"header_mobile_elements_bottom\";a:0:{}s:13:\"logo_position\";s:4:\"left\";s:11:\"topbar_show\";b:1;s:17:\"header_top_height\";s:2:\"35\";s:12:\"topbar_color\";s:4:\"dark\";s:9:\"topbar_bg\";s:7:\"#fdc215\";s:13:\"nav_style_top\";s:0:\"\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_height\";s:2:\"90\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";b:0;s:9:\"nav_style\";s:5:\"pills\";s:8:\"nav_size\";s:5:\"large\";s:13:\"nav_uppercase\";b:0;s:14:\"type_nav_color\";s:7:\"#0a0a0a\";s:20:\"type_nav_color_hover\";s:7:\"#fdc215\";s:25:\"header_height_transparent\";s:2:\"30\";s:21:\"header_bg_transparent\";s:0:\"\";s:27:\"header_bg_transparent_shade\";b:0;s:20:\"header_bottom_height\";s:2:\"10\";s:15:\"nav_position_bg\";s:7:\"#f1f1f1\";s:16:\"nav_style_bottom\";s:0:\"\";s:15:\"nav_size_bottom\";s:0:\"\";s:20:\"nav_uppercase_bottom\";b:1;s:18:\"nav_position_color\";s:5:\"light\";s:21:\"type_nav_bottom_color\";s:0:\"\";s:27:\"type_nav_bottom_color_hover\";s:0:\"\";s:11:\"topbar_left\";s:56:\"Chào mừng bạn đến với mẫu web của DEMO WEB\";s:9:\"site_logo\";s:67:\"https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/logo1.jpg\";s:10:\"logo_width\";s:3:\"258\";s:14:\"header_divider\";b:0;s:9:\"type_size\";s:3:\"100\";s:16:\"type_size_mobile\";s:3:\"100\";s:19:\"header_search_width\";s:2:\"91\";s:11:\"nav_spacing\";s:6:\"medium\";s:8:\"nav_push\";s:1:\"0\";s:10:\"nav_height\";s:2:\"16\";s:18:\"header_icons_color\";s:7:\"#0a0a0a\";s:24:\"header_icons_color_hover\";s:7:\"#fdc215\";s:13:\"color_primary\";s:7:\"#fdc215\";s:15:\"color_secondary\";s:7:\"#0a0a0a\";s:11:\"color_texts\";s:7:\"#2d2d2d\";s:19:\"type_headings_color\";s:7:\"#0a0a0a\";s:11:\"color_links\";s:7:\"#fdc215\";s:18:\"color_widget_links\";s:7:\"#262626\";s:16:\"category_sidebar\";s:12:\"left-sidebar\";s:27:\"category_force_image_height\";b:1;s:21:\"category_image_height\";s:3:\"100\";s:16:\"products_pr_page\";s:2:\"30\";s:18:\"category_row_count\";s:1:\"4\";s:20:\"category_title_style\";s:8:\"featured\";s:19:\"category_show_title\";b:1;s:27:\"category_header_transparent\";b:0;s:20:\"header_shop_bg_image\";s:64:\"https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/bg.jpg\";s:20:\"header_shop_bg_color\";s:16:\"rgba(0,0,0,0.36)\";s:9:\"cat_style\";s:6:\"normal\";s:10:\"grid_style\";s:5:\"grid2\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:17:\"add_to_cart_style\";s:4:\"flat\";s:20:\"product_box_category\";b:0;s:18:\"product_box_rating\";b:0;s:18:\"disable_quick_view\";b:1;s:20:\"equalize_product_box\";b:1;s:12:\"bubble_style\";s:6:\"style2\";s:22:\"sale_bubble_percentage\";b:1;s:20:\"header_height_mobile\";s:2:\"50\";s:14:\"mobile_overlay\";s:6:\"center\";s:20:\"header_height_sticky\";s:2:\"50\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:17:\"nav_height_sticky\";s:2:\"29\";s:16:\"bottombar_sticky\";b:0;s:19:\"blog_excerpt_suffix\";s:4:\" ...\";s:12:\"footer_block\";s:6:\"footer\";s:16:\"footer_left_text\";s:168:\"Copyright [ux_current_year] © <a href=\"https://giuseart.com\" target=\"blank\">Webdemo</a>. Thiết kế bởi <a href=\"http://demoweb.com\" target=\"blank\">webdemo.com</a>\";s:19:\"footer_bottom_color\";s:7:\"#fdc215\";s:13:\"payment_icons\";a:0:{}s:18:\"footer_bottom_text\";s:5:\"light\";s:13:\"search_result\";s:1:\"1\";s:24:\"search_products_order_by\";s:9:\"relevance\";s:13:\"search_by_sku\";s:1:\"0\";s:21:\"search_by_product_tag\";s:1:\"0\";s:15:\"disable_reviews\";s:1:\"0\";s:27:\"product_gallery_woocommerce\";s:1:\"0\";s:14:\"html_shop_page\";s:0:\"\";s:9:\"tab_title\";s:0:\"\";s:11:\"tab_content\";s:0:\"\";s:23:\"html_before_add_to_cart\";s:1:\" \";s:22:\"html_after_add_to_cart\";s:166:\"<div class=\"thong-bao\">\n<div class=\"top\">Gọi ngay: 0909009009 để nhận giá tốt nhất</div>\n<img src=\"/wp-content/uploads/2019/01/4-tieu-chi.png\"/>\n</div>\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";s:1:\"0\";s:19:\"catalog_mode_prices\";s:1:\"0\";s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";s:1:\"0\";s:27:\"infinite_scroll_loader_type\";s:7:\"spinner\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";s:14:\"product_header\";s:15:\"featured-center\";s:21:\"product_next_prev_nav\";b:1;s:25:\"product_info_review_count\";b:1;s:15:\"product_display\";s:11:\"tabs_normal\";s:16:\"related_products\";s:4:\"grid\";s:23:\"related_products_pr_row\";s:1:\"5\";s:20:\"max_related_products\";s:2:\"10\";s:15:\"breadcrumb_size\";s:5:\"small\";s:25:\"category_row_count_tablet\";s:1:\"3\";s:25:\"category_row_count_mobile\";s:1:\"2\";s:19:\"blog_layout_divider\";b:0;s:10:\"blog_style\";s:4:\"list\";s:16:\"blog_posts_depth\";s:1:\"0\";s:22:\"blog_posts_depth_hover\";s:1:\"0\";s:22:\"blog_posts_title_align\";s:4:\"left\";s:16:\"blog_badge_style\";s:13:\"circle-inside\";s:18:\"blog_style_archive\";s:4:\"list\";s:24:\"color_widget_links_hover\";s:7:\"#fdc215\";s:23:\"blog_single_transparent\";b:0;s:26:\"blog_single_featured_image\";b:1;s:15:\"blog_author_box\";b:0;s:25:\"blog_single_next_prev_nav\";b:1;s:15:\"blog_post_style\";s:3:\"top\";s:23:\"blog_single_header_meta\";b:1;s:20:\"mobile_overlay_color\";s:4:\"dark\";s:17:\"mobile_overlay_bg\";s:7:\"#fdc215\";}","yes"),
("157","envato_setup_complete","1547555152","yes"),
("183","woocommerce_store_address","Số 29 ngõ 18 Lương Ngọc Quyến","yes"),
("184","woocommerce_store_address_2","","yes"),
("185","woocommerce_store_city","Ha Noi","yes"),
("186","woocommerce_default_country","VN","yes"),
("187","woocommerce_store_postcode","100000","yes"),
("188","woocommerce_allowed_countries","all","yes"),
("189","woocommerce_all_except_countries","a:0:{}","yes"),
("190","woocommerce_specific_allowed_countries","a:0:{}","yes"),
("191","woocommerce_ship_to_countries","","yes"),
("192","woocommerce_specific_ship_to_countries","a:0:{}","yes"),
("193","woocommerce_default_customer_address","geolocation","yes"),
("194","woocommerce_calc_taxes","no","yes"),
("195","woocommerce_enable_coupons","yes","yes"),
("196","woocommerce_calc_discounts_sequentially","no","no"),
("197","woocommerce_currency","VND","yes"),
("198","woocommerce_currency_pos","right","yes"),
("199","woocommerce_price_thousand_sep",".","yes"),
("200","woocommerce_price_decimal_sep",".","yes"),
("201","woocommerce_price_num_decimals","0","yes"),
("202","woocommerce_shop_page_id","25","yes"),
("203","woocommerce_cart_redirect_after_add","no","yes"),
("204","woocommerce_enable_ajax_add_to_cart","yes","yes"),
("205","woocommerce_placeholder_image","546","yes"),
("206","woocommerce_weight_unit","kg","yes"),
("207","woocommerce_dimension_unit","cm","yes"),
("208","woocommerce_enable_reviews","yes","yes"),
("209","woocommerce_review_rating_verification_label","yes","no"),
("210","woocommerce_review_rating_verification_required","no","no"),
("211","woocommerce_enable_review_rating","yes","yes"),
("212","woocommerce_review_rating_required","yes","no"),
("213","woocommerce_manage_stock","yes","yes"),
("214","woocommerce_hold_stock_minutes","60","no"),
("215","woocommerce_notify_low_stock","yes","no"),
("216","woocommerce_notify_no_stock","yes","no"),
("217","woocommerce_stock_email_recipient","demo@gmail.com","no"),
("218","woocommerce_notify_low_stock_amount","2","no"),
("219","woocommerce_notify_no_stock_amount","0","yes"),
("220","woocommerce_hide_out_of_stock_items","no","yes"),
("221","woocommerce_stock_format","","yes"),
("222","woocommerce_file_download_method","force","no"),
("223","woocommerce_downloads_require_login","no","no"),
("224","woocommerce_downloads_grant_access_after_payment","yes","no"),
("225","woocommerce_prices_include_tax","no","yes"),
("226","woocommerce_tax_based_on","shipping","yes"),
("227","woocommerce_shipping_tax_class","inherit","yes"),
("228","woocommerce_tax_round_at_subtotal","no","yes"),
("229","woocommerce_tax_classes","Giảm tỉ lệ\nTỉ lệ rỗng","yes"),
("230","woocommerce_tax_display_shop","excl","yes"),
("231","woocommerce_tax_display_cart","excl","yes"),
("232","woocommerce_price_display_suffix","","yes"),
("233","woocommerce_tax_total_display","itemized","no"),
("234","woocommerce_enable_shipping_calc","yes","no"),
("235","woocommerce_shipping_cost_requires_address","no","yes"),
("236","woocommerce_ship_to_destination","billing","no"),
("237","woocommerce_shipping_debug_mode","no","yes"),
("238","woocommerce_enable_guest_checkout","yes","no"),
("239","woocommerce_enable_checkout_login_reminder","no","no"),
("240","woocommerce_enable_signup_and_login_from_checkout","no","no"),
("241","woocommerce_enable_myaccount_registration","no","no"),
("242","woocommerce_registration_generate_username","yes","no"),
("243","woocommerce_registration_generate_password","yes","no"),
("244","woocommerce_erasure_request_removes_order_data","no","no"),
("245","woocommerce_erasure_request_removes_download_data","no","no"),
("246","woocommerce_registration_privacy_policy_text","Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].","yes"),
("247","woocommerce_checkout_privacy_policy_text","Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].","yes"),
("248","woocommerce_delete_inactive_accounts","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("249","woocommerce_trash_pending_orders","","no"),
("250","woocommerce_trash_failed_orders","","no"),
("251","woocommerce_trash_cancelled_orders","","no"),
("252","woocommerce_anonymize_completed_orders","a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}","no"),
("253","woocommerce_email_from_name","Mẫu web bán mật ong &#8211; Thiết kế web Ninh Bình","no");
INSERT INTO gdd_options VALUES
("254","woocommerce_email_from_address","demo@gmail.com","no"),
("255","woocommerce_email_header_image","","no"),
("256","woocommerce_email_footer_text","{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>","no"),
("257","woocommerce_email_base_color","#96588a","no"),
("258","woocommerce_email_background_color","#f7f7f7","no"),
("259","woocommerce_email_body_background_color","#ffffff","no"),
("260","woocommerce_email_text_color","#3c3c3c","no"),
("261","woocommerce_cart_page_id","26","yes"),
("262","woocommerce_checkout_page_id","27","yes"),
("263","woocommerce_myaccount_page_id","28","yes"),
("264","woocommerce_terms_page_id","","no"),
("265","woocommerce_force_ssl_checkout","no","yes"),
("266","woocommerce_unforce_ssl_checkout","no","yes"),
("267","woocommerce_checkout_pay_endpoint","order-pay","yes"),
("268","woocommerce_checkout_order_received_endpoint","order-received","yes"),
("269","woocommerce_myaccount_add_payment_method_endpoint","add-payment-method","yes"),
("270","woocommerce_myaccount_delete_payment_method_endpoint","delete-payment-method","yes"),
("271","woocommerce_myaccount_set_default_payment_method_endpoint","set-default-payment-method","yes"),
("272","woocommerce_myaccount_orders_endpoint","orders","yes"),
("273","woocommerce_myaccount_view_order_endpoint","view-order","yes"),
("274","woocommerce_myaccount_downloads_endpoint","downloads","yes"),
("275","woocommerce_myaccount_edit_account_endpoint","edit-account","yes"),
("276","woocommerce_myaccount_edit_address_endpoint","edit-address","yes"),
("277","woocommerce_myaccount_payment_methods_endpoint","payment-methods","yes"),
("278","woocommerce_myaccount_lost_password_endpoint","lost-password","yes"),
("279","woocommerce_logout_endpoint","customer-logout","yes"),
("280","woocommerce_api_enabled","no","yes"),
("281","woocommerce_single_image_width","300","yes"),
("282","woocommerce_thumbnail_image_width","300","yes"),
("283","woocommerce_checkout_highlight_required_fields","yes","yes"),
("284","woocommerce_demo_store","yes","yes"),
("285","woocommerce_permalinks","a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}","yes"),
("286","current_theme_supports_woocommerce","yes","yes"),
("287","woocommerce_queue_flush_rewrite_rules","no","yes"),
("290","default_product_cat","15","yes"),
("294","woocommerce_db_version","3.5.3","yes"),
("295","woocommerce_admin_notices","a:1:{i:0;s:6:\"update\";}","yes"),
("297","widget_woocommerce_widget_cart","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("298","widget_woocommerce_layered_nav_filters","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("299","widget_woocommerce_layered_nav","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("300","widget_woocommerce_price_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("301","widget_woocommerce_product_categories","a:2:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes"),
("302","widget_woocommerce_product_search","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("303","widget_woocommerce_product_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("304","widget_woocommerce_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("305","widget_woocommerce_recently_viewed_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("306","widget_woocommerce_top_rated_products","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("307","widget_woocommerce_recent_reviews","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("308","widget_woocommerce_rating_filter","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("309","widget_upsell_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes"),
("316","woocommerce_meta_box_errors","a:0:{}","yes"),
("330","product_cat_children","a:0:{}","yes"),
("331","woocommerce_product_type","physical","yes"),
("332","woocommerce_sell_in_person","1","yes"),
("333","woocommerce_allow_tracking","no","yes"),
("334","woocommerce_cheque_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("335","woocommerce_bacs_settings","a:1:{s:7:\"enabled\";s:3:\"yes\";}","yes"),
("336","woocommerce_cod_settings","a:1:{s:7:\"enabled\";s:2:\"no\";}","yes"),
("353","nav_menu_options","a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}","yes"),
("360","woocommerce_maybe_regenerate_images_hash","fba4e88858352f84e19344f73fb44ff6","yes"),
("412","woocommerce_demo_store_notice","Đây là website mẫu của DEMO WEB. Không phải web bán hàng!","yes"),
("599","wpcf7","a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1547651792;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes"),
("662","better-font-awesome_options","a:4:{s:7:\"version\";s:6:\"latest\";s:8:\"minified\";i:1;s:18:\"remove_existing_fa\";s:0:\"\";s:18:\"hide_admin_notices\";s:0:\"\";}","yes"),
("699","quickbuy_options","a:10:{s:6:\"enable\";s:1:\"1\";s:12:\"button_text1\";s:8:\"Mua ngay\";s:12:\"button_text2\";s:51:\"Gọi điện xác nhận và giao hàng tận nơi\";s:18:\"popup_infor_enable\";s:1:\"1\";s:11:\"popup_title\";s:13:\"Đặt mua %s\";s:10:\"popup_mess\";s:143:\"Bạn vui lòng nhập đúng số điện thoại để chúng tôi sẽ gọi xác nhận đơn hàng trước khi giao hàng. Xin cảm ơn!\";s:12:\"popup_sucess\";s:641:\"<div class=\"popup-message success\" style=\"color: #333;\">\n<p class=\"clearfix\" style=\"font-size: 22px; color: #00c700; text-align: center;\">Đặt hàng thành công!</p>\n<p class=\"clearfix\" style=\"color: #00c700; padding: 10px 0;\">Mã đơn hàng <span style=\"color: #333; font-weight: bold;\">#%%order_id%%</span></p>\n<p class=\"clearfix\">Webdemo sẽ liên hệ với bạn trong 12h tới. Cám ơn bạn đã cho chúng tôi cơ hội được phục vụ.\n<strong>Hotline:</strong> 0909009009</p>\n<p class=\"clearfix\"><strong>Ghi chú: </strong>Đơn hàng chỉ có hiệu lực trong vòng 48h</p>\n\n<div></div>\n<div></div>\n</div>\";s:11:\"popup_error\";s:71:\"Đặt hàng thất bại. Vui lòng đặt hàng lại. Xin cảm ơn!\";s:17:\"out_of_stock_mess\";s:12:\"Hết hàng!\";s:11:\"license_key\";s:34:\"DEVVN-405-AUFHr4HITxjrFTNAkKaHZ9Hb\";}","yes"),
("711","woocommerce_thumbnail_cropping","custom","yes"),
("877","category_children","a:0:{}","yes"),
("1092","smart_content_protector_a","1","yes"),
("1093","smart_content_protector_c","2","yes"),
("1094","smart_content_protector_x","3","yes"),
("1095","smart_content_protector_v","4","yes"),
("1096","smart_content_protector_s","5","yes"),
("1097","smart_content_protector_u","6","yes"),
("1098","smart_content_protector_p","7","yes"),
("1099","smart_content_protector_i","8","yes"),
("1100","smart_content_protector_mac_a","1","yes"),
("1101","smart_content_protector_mac_c","2","yes"),
("1102","smart_content_protector_mac_x","3","yes"),
("1103","smart_content_protector_mac_v","4","yes"),
("1104","smart_content_protector_mac_s","5","yes"),
("1105","smart_content_protector_mac_u","6","yes"),
("1106","smart_content_protector_mac_p","7","yes"),
("1107","smart_content_protector_mac_cmdshift4","7","yes"),
("1108","smart_content_protector_mac_cmdshift3","7","yes"),
("1109","smart_content_protector_mac_cmdctrlshift3","7","yes"),
("1110","smart_content_protector_mac_cmdshift4spacebar","7","yes"),
("1111","smart_content_protector_mac_i","8","yes"),
("1112","smart_content_protector_member","3","yes"),
("1113","smart_content_protector_non_member","2","yes"),
("1114","smart_content_protector_homepage","2","yes"),
("1115","smart_content_protector_viewoption","53","yes"),
("1116","smart_content_print_screen_message","Print Screen is Disabled","yes"),
("1117","smart_content_protector_selecting_text_msg","Content is Copy Protected","yes"),
("1118","smart_content_protector_alert_message","Right Mouse Click is Disabled","yes"),
("1119","smart_content_protector_page_include_exclude","1","yes"),
("1120","smart_content_protector_add_empty_lines","100","yes"),
("1121","smart_content_protector_post_include_exclude","1","yes"),
("1122","smart_content_protector_textarea_message","This Post was Protected by Smart Content Protector © Copyright 2013, All Rights Reserved","yes"),
("1123","smart_content_enable_js_disable_error","","yes"),
("1124","smart_content_js_disable_error_msg","Please Enable JavaScript in your Browser to visit this site","yes"),
("1125","smart_content_protector_post_post","","yes");
INSERT INTO gdd_options VALUES
("1126","smart_content_protector_post_page","page","yes"),
("1127","smart_content_protector_post_custom_css","custom_css","yes"),
("1128","smart_content_protector_post_customize_changeset","customize_changeset","yes"),
("1129","smart_content_protector_post_oembed_cache","oembed_cache","yes"),
("1130","smart_content_protector_post_user_request","user_request","yes"),
("1131","smart_content_protector_post_blocks","blocks","yes"),
("1132","smart_content_protector_post_scheduled-action","scheduled-action","yes"),
("1133","smart_content_protector_post_product","product","yes"),
("1134","smart_content_protector_post_wpcf7_contact_form","wpcf7_contact_form","yes"),
("1135","smart_content_protector_image_watermark_position","top-left","yes"),
("1136","updated_db_version","1.6","yes"),
("1137","smart_content_protector_image_protection","1","yes"),
("1138","smart_content_protector_image_drag","7","yes"),
("1139","smart_content_protector_default_image_watermark","7","yes"),
("1140","smart_content_protector_name_size_image_watermark","9","yes"),
("1141","smart_content_protector_page_include_custom_water_exclude","2","yes"),
("1142","smart_content_protector_position_normal","1","yes"),
("1144","smart_content_protector_disable","","yes"),
("1145","smart_content_protector_alert","","yes"),
("1146","smart_content_protector_cutompa_id","","yes"),
("1147","smart_content_protector_page_include_cutom_exclude","","yes"),
("1148","smart_content_protector_category_id","","yes"),
("1149","smart_content_protector_page_id","","yes"),
("1150","smart_content_protector_post_id","","yes"),
("1151","smart_content_protector_textarea","","yes"),
("1152","smart_content_enable_right_click_link1","","yes"),
("1153","smart_content_enable_right_click_link2","","yes"),
("1154","smart_content_enable_right_click_image_link","","yes"),
("1155","plagiarism_prevent_user_highlight","","yes"),
("1156","plagiarism_prevent_user_rightclick_disable","","yes"),
("1157","smart_content_protector_administrator","","yes"),
("1158","smart_content_protector_editor","editor","yes"),
("1159","smart_content_protector_author","author","yes"),
("1160","smart_content_protector_contributor","contributor","yes"),
("1161","smart_content_protector_subscriber","subscriber","yes"),
("1162","smart_content_protector_customer","customer","yes"),
("1163","smart_content_protector_shop_manager","shop_manager","yes"),
("1164","smart_content_enable_view_source","","yes"),
("1165","smart_content_protector_selecting_text","","yes"),
("1166","smart_content_enable_js_disable_reload","","yes"),
("1167","smart_content_js_disable_error_reload","","yes"),
("1168","smart_content_protector_rssfeed","","yes"),
("1169","protect_rss_title","","yes"),
("1170","smart_content_protector_ip","","yes"),
("1171","smart_content_protector_ip_when_pd","","yes"),
("1186","woocommerce_thumbnail_cropping_custom_width","1","yes"),
("1187","woocommerce_thumbnail_cropping_custom_height","1","yes"),
("1352","duplicator_pro_package_active","{\"Created\":\"2019-01-17 02:40:27\",\"Version\":\"3.7.3.1\",\"VersionWP\":\"4.9.9\",\"VersionDB\":\"10.2.16\",\"VersionPHP\":\"7.0.33\",\"VersionOS\":\"Linux\",\"ID\":null,\"Name\":\"20190117_mauwebbanmatongthietkewe\",\"Hash\":\"1df62dfe8d722dc74080_20190117024027\",\"NameHash\":\"20190117_mauwebbanmatongthietkewe_1df62dfe8d722dc74080_20190117024027\",\"Type\":0,\"Notes\":\"\",\"StorePath\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/backups-dup-pro\\/tmp\",\"StoreURL\":\"https:\\/\\/bizhostvn.com\\/w\\/matong\\/wp-content\\/backups-dup-pro\\/\",\"ScanFile\":\"20190117_mauwebbanmatongthietkewe_1df62dfe8d722dc74080_20190117024027_scan.json\",\"timer_start\":-1,\"Runtime\":null,\"ExeSize\":null,\"ZipSize\":0,\"Brand\":\"Default\",\"Brand_ID\":-2,\"ziparchive_mode\":null,\"Archive\":{\"ExportOnlyDB\":0,\"FilterDirs\":\"\",\"FilterExts\":\"\",\"FilterFiles\":\"\",\"FilterDirsAll\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/ai1wm-backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/backups-dup-pro\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/backupwordpress\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/content\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/contents\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/managewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/old-cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/updraft\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/backup-guard\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/wfcache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/wishlist-backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-snapshots\"],\"FilterExtsAll\":[],\"FilterFilesAll\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/.htaccess\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-config.php\",\"dbcache\",\"debug_log\",\"error.log\",\"error_log\",\"objectcache\",\"pgcache\",\"ws_ftp.log\"],\"FilterOn\":0,\"File\":null,\"Format\":\"ZIP\",\"PackDir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\",\"Size\":107224590,\"Dirs\":null,\"RecursiveLinks\":[],\"Files\":null,\"file_count\":-1,\"FilterInfo\":{\"Dirs\":{\"Warning\":[],\"Unreadable\":[],\"AddonSites\":[],\"Core\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/backups-dup-pro\"],\"Global\":[\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-snapshots\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/ai1wm-backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/backupwordpress\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/content\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/contents\\/cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/infinitewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/managewp\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/old-cache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/plugins\\/all-in-one-wp-migration\\/storage\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/updraft\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/wishlist-backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/wfcache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/plugins\\/really-simple-captcha\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/plugins\\/wordfence\\/tmp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/aiowps_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/backupbuddy_temp\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/backupbuddy_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/ithemes-security\\/backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/mainwp\\/backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/pb_backupbuddy\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/snapshots\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/sucuri\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/wp-clone\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/wp_all_backup\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/wpbackitup_backups\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/backup-guard\"],\"Instance\":[]},\"Files\":{\"Warning\":[{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-300x500.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-300x500.jpg\"},{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-300x225.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-300x225.jpg\"},{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-150x150.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-150x150.jpg\"},{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-100x100.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-100x100.jpg\"},{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-300x300.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-300x300.jpg\"},{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-400x400.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2-400x400.jpg\"},{\"name\":\"FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2.jpg\",\"dir\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\",\"path\":\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-content\\/uploads\\/2019\\/01\\/FOREVER-Bee-Honey-\\u2013-M\\u1eacT-ONG-NGUY\\u00caN-CH\\u1ea4T-Anh-Thi-Shop2.jpg\"}],\"Unreadable\":[],\"Size\":[],\"Core\":[],\"Global\":[\"error_log\",\"error.log\",\"debug_log\",\"ws_ftp.log\",\"dbcache\",\"pgcache\",\"objectcache\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/.htaccess\",\"\\/home\\/bizhostvn\\/domains\\/bizhostvn.com\\/public_html\\/w\\/matong\\/wp-config.php\"],\"Instance\":[]},\"Exts\":{\"Core\":[],\"Global\":[],\"Instance\":[]},\"TreeSize\":[],\"TreeWarning\":[]}},\"Multisite\":{\"FilterSites\":\"\"},\"Installer\":{\"File\":null,\"Size\":0,\"OptsSecureOn\":0,\"OptsSecurePass\":\"\",\"OptsSkipScan\":0,\"OptsDBHost\":\"\",\"OptsDBName\":\"\",\"OptsDBUser\":\"\",\"OptsCPNLHost\":\"\",\"OptsCPNLUser\":\"\",\"OptsCPNLPass\":\"\",\"OptsCPNLEnable\":0,\"OptsCPNLConnect\":false,\"OptsCPNLDBAction\":\"create\",\"OptsCPNLDBHost\":\"\",\"OptsCPNLDBName\":\"\",\"OptsCPNLDBUser\":\"\",\"OptsCacheWP\":0,\"OptsCachePath\":0,\"numFilesAdded\":0,\"numDirsAdded\":0},\"Database\":{\"info\":{\"buildMode\":\"PHP\",\"collationList\":[\"utf8mb4_unicode_ci\",\"utf8_unicode_ci\"],\"isTablesUpperCase\":0,\"isNameUpperCase\":0,\"name\":\"u615491263_web54\",\"tablesBaseCount\":31,\"tablesFinalCount\":31,\"tablesRowCount\":1276,\"tablesSizeOnDisk\":2965504,\"varLowerCaseTables\":\"0\",\"version\":\"10.2.16\",\"versionComment\":\"MariaDB Server\"},\"Type\":\"MySQL\",\"Size\":null,\"File\":null,\"FilterTables\":\"\",\"FilterOn\":0,\"DBMode\":null,\"Compatible\":\"\",\"Comments\":\"MariaDB Server\",\"dbStorePathPublic\":null},\"Status\":5,\"schedule_id\":-1,\"build_progress\":{\"thread_start_time\":null,\"initialized\":false,\"installer_built\":false,\"archive_started\":false,\"archive_has_database\":false,\"archive_built\":false,\"database_script_built\":false,\"failed\":false,\"next_archive_file_index\":0,\"next_archive_dir_index\":0,\"retries\":0,\"current_build_mode\":-1,\"current_build_compression\":true,\"custom_data\":null,\"warnings\":[]},\"db_build_progress\":{\"tableIndex\":0,\"tableOffset\":0,\"totalRowOffset\":0,\"doneInit\":false,\"doneFiltering\":false,\"doneCreates\":false,\"completed\":false,\"tablesToProcess\":[],\"startTime\":null,\"fileOffset\":0},\"upload_infos\":[{\"storage_id\":\"-2\",\"archive_offset\":0,\"copied_installer\":false,\"copied_archive\":false,\"progress\":0,\"num_failures\":0,\"failed\":false,\"cancelled\":false,\"upload_id\":null,\"failure_count\":0,\"data\":\"\",\"data2\":\"\",\"has_started\":false,\"status_message_details\":\"\",\"started_timestamp\":null,\"stopped_timestamp\":null}],\"active_storage_id\":-1,\"template_id\":5}","yes"),
("1354","_transient_woocommerce_webhook_ids","a:0:{}","yes"),
("1357","_transient_timeout_bfa-css","1560000468","no"),
("1358","_transient_bfa-css","a:1:{s:5:\"4.7.0\";s:31000:\"/*!\n *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:\'FontAwesome\';src:url(\'../fonts/fontawesome-webfont.eot?v=4.7.0\');src:url(\'../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0\') format(\'embedded-opentype\'),url(\'../fonts/fontawesome-webfont.woff2?v=4.7.0\') format(\'woff2\'),url(\'../fonts/fontawesome-webfont.woff?v=4.7.0\') format(\'woff\'),url(\'../fonts/fontawesome-webfont.ttf?v=4.7.0\') format(\'truetype\'),url(\'../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular\') format(\'svg\');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)\";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)\";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)\";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)\";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)\";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:\"\\f000\"}.fa-music:before{content:\"\\f001\"}.fa-search:before{content:\"\\f002\"}.fa-envelope-o:before{content:\"\\f003\"}.fa-heart:before{content:\"\\f004\"}.fa-star:before{content:\"\\f005\"}.fa-star-o:before{content:\"\\f006\"}.fa-user:before{content:\"\\f007\"}.fa-film:before{content:\"\\f008\"}.fa-th-large:before{content:\"\\f009\"}.fa-th:before{content:\"\\f00a\"}.fa-th-list:before{content:\"\\f00b\"}.fa-check:before{content:\"\\f00c\"}.fa-remove:before,.fa-close:before,.fa-times:before{content:\"\\f00d\"}.fa-search-plus:before{content:\"\\f00e\"}.fa-search-minus:before{content:\"\\f010\"}.fa-power-off:before{content:\"\\f011\"}.fa-signal:before{content:\"\\f012\"}.fa-gear:before,.fa-cog:before{content:\"\\f013\"}.fa-trash-o:before{content:\"\\f014\"}.fa-home:before{content:\"\\f015\"}.fa-file-o:before{content:\"\\f016\"}.fa-clock-o:before{content:\"\\f017\"}.fa-road:before{content:\"\\f018\"}.fa-download:before{content:\"\\f019\"}.fa-arrow-circle-o-down:before{content:\"\\f01a\"}.fa-arrow-circle-o-up:before{content:\"\\f01b\"}.fa-inbox:before{content:\"\\f01c\"}.fa-play-circle-o:before{content:\"\\f01d\"}.fa-rotate-right:before,.fa-repeat:before{content:\"\\f01e\"}.fa-refresh:before{content:\"\\f021\"}.fa-list-alt:before{content:\"\\f022\"}.fa-lock:before{content:\"\\f023\"}.fa-flag:before{content:\"\\f024\"}.fa-headphones:before{content:\"\\f025\"}.fa-volume-off:before{content:\"\\f026\"}.fa-volume-down:before{content:\"\\f027\"}.fa-volume-up:before{content:\"\\f028\"}.fa-qrcode:before{content:\"\\f029\"}.fa-barcode:before{content:\"\\f02a\"}.fa-tag:before{content:\"\\f02b\"}.fa-tags:before{content:\"\\f02c\"}.fa-book:before{content:\"\\f02d\"}.fa-bookmark:before{content:\"\\f02e\"}.fa-print:before{content:\"\\f02f\"}.fa-camera:before{content:\"\\f030\"}.fa-font:before{content:\"\\f031\"}.fa-bold:before{content:\"\\f032\"}.fa-italic:before{content:\"\\f033\"}.fa-text-height:before{content:\"\\f034\"}.fa-text-width:before{content:\"\\f035\"}.fa-align-left:before{content:\"\\f036\"}.fa-align-center:before{content:\"\\f037\"}.fa-align-right:before{content:\"\\f038\"}.fa-align-justify:before{content:\"\\f039\"}.fa-list:before{content:\"\\f03a\"}.fa-dedent:before,.fa-outdent:before{content:\"\\f03b\"}.fa-indent:before{content:\"\\f03c\"}.fa-video-camera:before{content:\"\\f03d\"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:\"\\f03e\"}.fa-pencil:before{content:\"\\f040\"}.fa-map-marker:before{content:\"\\f041\"}.fa-adjust:before{content:\"\\f042\"}.fa-tint:before{content:\"\\f043\"}.fa-edit:before,.fa-pencil-square-o:before{content:\"\\f044\"}.fa-share-square-o:before{content:\"\\f045\"}.fa-check-square-o:before{content:\"\\f046\"}.fa-arrows:before{content:\"\\f047\"}.fa-step-backward:before{content:\"\\f048\"}.fa-fast-backward:before{content:\"\\f049\"}.fa-backward:before{content:\"\\f04a\"}.fa-play:before{content:\"\\f04b\"}.fa-pause:before{content:\"\\f04c\"}.fa-stop:before{content:\"\\f04d\"}.fa-forward:before{content:\"\\f04e\"}.fa-fast-forward:before{content:\"\\f050\"}.fa-step-forward:before{content:\"\\f051\"}.fa-eject:before{content:\"\\f052\"}.fa-chevron-left:before{content:\"\\f053\"}.fa-chevron-right:before{content:\"\\f054\"}.fa-plus-circle:before{content:\"\\f055\"}.fa-minus-circle:before{content:\"\\f056\"}.fa-times-circle:before{content:\"\\f057\"}.fa-check-circle:before{content:\"\\f058\"}.fa-question-circle:before{content:\"\\f059\"}.fa-info-circle:before{content:\"\\f05a\"}.fa-crosshairs:before{content:\"\\f05b\"}.fa-times-circle-o:before{content:\"\\f05c\"}.fa-check-circle-o:before{content:\"\\f05d\"}.fa-ban:before{content:\"\\f05e\"}.fa-arrow-left:before{content:\"\\f060\"}.fa-arrow-right:before{content:\"\\f061\"}.fa-arrow-up:before{content:\"\\f062\"}.fa-arrow-down:before{content:\"\\f063\"}.fa-mail-forward:before,.fa-share:before{content:\"\\f064\"}.fa-expand:before{content:\"\\f065\"}.fa-compress:before{content:\"\\f066\"}.fa-plus:before{content:\"\\f067\"}.fa-minus:before{content:\"\\f068\"}.fa-asterisk:before{content:\"\\f069\"}.fa-exclamation-circle:before{content:\"\\f06a\"}.fa-gift:before{content:\"\\f06b\"}.fa-leaf:before{content:\"\\f06c\"}.fa-fire:before{content:\"\\f06d\"}.fa-eye:before{content:\"\\f06e\"}.fa-eye-slash:before{content:\"\\f070\"}.fa-warning:before,.fa-exclamation-triangle:before{content:\"\\f071\"}.fa-plane:before{content:\"\\f072\"}.fa-calendar:before{content:\"\\f073\"}.fa-random:before{content:\"\\f074\"}.fa-comment:before{content:\"\\f075\"}.fa-magnet:before{content:\"\\f076\"}.fa-chevron-up:before{content:\"\\f077\"}.fa-chevron-down:before{content:\"\\f078\"}.fa-retweet:before{content:\"\\f079\"}.fa-shopping-cart:before{content:\"\\f07a\"}.fa-folder:before{content:\"\\f07b\"}.fa-folder-open:before{content:\"\\f07c\"}.fa-arrows-v:before{content:\"\\f07d\"}.fa-arrows-h:before{content:\"\\f07e\"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:\"\\f080\"}.fa-twitter-square:before{content:\"\\f081\"}.fa-facebook-square:before{content:\"\\f082\"}.fa-camera-retro:before{content:\"\\f083\"}.fa-key:before{content:\"\\f084\"}.fa-gears:before,.fa-cogs:before{content:\"\\f085\"}.fa-comments:before{content:\"\\f086\"}.fa-thumbs-o-up:before{content:\"\\f087\"}.fa-thumbs-o-down:before{content:\"\\f088\"}.fa-star-half:before{content:\"\\f089\"}.fa-heart-o:before{content:\"\\f08a\"}.fa-sign-out:before{content:\"\\f08b\"}.fa-linkedin-square:before{content:\"\\f08c\"}.fa-thumb-tack:before{content:\"\\f08d\"}.fa-external-link:before{content:\"\\f08e\"}.fa-sign-in:before{content:\"\\f090\"}.fa-trophy:before{content:\"\\f091\"}.fa-github-square:before{content:\"\\f092\"}.fa-upload:before{content:\"\\f093\"}.fa-lemon-o:before{content:\"\\f094\"}.fa-phone:before{content:\"\\f095\"}.fa-square-o:before{content:\"\\f096\"}.fa-bookmark-o:before{content:\"\\f097\"}.fa-phone-square:before{content:\"\\f098\"}.fa-twitter:before{content:\"\\f099\"}.fa-facebook-f:before,.fa-facebook:before{content:\"\\f09a\"}.fa-github:before{content:\"\\f09b\"}.fa-unlock:before{content:\"\\f09c\"}.fa-credit-card:before{content:\"\\f09d\"}.fa-feed:before,.fa-rss:before{content:\"\\f09e\"}.fa-hdd-o:before{content:\"\\f0a0\"}.fa-bullhorn:before{content:\"\\f0a1\"}.fa-bell:before{content:\"\\f0f3\"}.fa-certificate:before{content:\"\\f0a3\"}.fa-hand-o-right:before{content:\"\\f0a4\"}.fa-hand-o-left:before{content:\"\\f0a5\"}.fa-hand-o-up:before{content:\"\\f0a6\"}.fa-hand-o-down:before{content:\"\\f0a7\"}.fa-arrow-circle-left:before{content:\"\\f0a8\"}.fa-arrow-circle-right:before{content:\"\\f0a9\"}.fa-arrow-circle-up:before{content:\"\\f0aa\"}.fa-arrow-circle-down:before{content:\"\\f0ab\"}.fa-globe:before{content:\"\\f0ac\"}.fa-wrench:before{content:\"\\f0ad\"}.fa-tasks:before{content:\"\\f0ae\"}.fa-filter:before{content:\"\\f0b0\"}.fa-briefcase:before{content:\"\\f0b1\"}.fa-arrows-alt:before{content:\"\\f0b2\"}.fa-group:before,.fa-users:before{content:\"\\f0c0\"}.fa-chain:before,.fa-link:before{content:\"\\f0c1\"}.fa-cloud:before{content:\"\\f0c2\"}.fa-flask:before{content:\"\\f0c3\"}.fa-cut:before,.fa-scissors:before{content:\"\\f0c4\"}.fa-copy:before,.fa-files-o:before{content:\"\\f0c5\"}.fa-paperclip:before{content:\"\\f0c6\"}.fa-save:before,.fa-floppy-o:before{content:\"\\f0c7\"}.fa-square:before{content:\"\\f0c8\"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:\"\\f0c9\"}.fa-list-ul:before{content:\"\\f0ca\"}.fa-list-ol:before{content:\"\\f0cb\"}.fa-strikethrough:before{content:\"\\f0cc\"}.fa-underline:before{content:\"\\f0cd\"}.fa-table:before{content:\"\\f0ce\"}.fa-magic:before{content:\"\\f0d0\"}.fa-truck:before{content:\"\\f0d1\"}.fa-pinterest:before{content:\"\\f0d2\"}.fa-pinterest-square:before{content:\"\\f0d3\"}.fa-google-plus-square:before{content:\"\\f0d4\"}.fa-google-plus:before{content:\"\\f0d5\"}.fa-money:before{content:\"\\f0d6\"}.fa-caret-down:before{content:\"\\f0d7\"}.fa-caret-up:before{content:\"\\f0d8\"}.fa-caret-left:before{content:\"\\f0d9\"}.fa-caret-right:before{content:\"\\f0da\"}.fa-columns:before{content:\"\\f0db\"}.fa-unsorted:before,.fa-sort:before{content:\"\\f0dc\"}.fa-sort-down:before,.fa-sort-desc:before{content:\"\\f0dd\"}.fa-sort-up:before,.fa-sort-asc:before{content:\"\\f0de\"}.fa-envelope:before{content:\"\\f0e0\"}.fa-linkedin:before{content:\"\\f0e1\"}.fa-rotate-left:before,.fa-undo:before{content:\"\\f0e2\"}.fa-legal:before,.fa-gavel:before{content:\"\\f0e3\"}.fa-dashboard:before,.fa-tachometer:before{content:\"\\f0e4\"}.fa-comment-o:before{content:\"\\f0e5\"}.fa-comments-o:before{content:\"\\f0e6\"}.fa-flash:before,.fa-bolt:before{content:\"\\f0e7\"}.fa-sitemap:before{content:\"\\f0e8\"}.fa-umbrella:before{content:\"\\f0e9\"}.fa-paste:before,.fa-clipboard:before{content:\"\\f0ea\"}.fa-lightbulb-o:before{content:\"\\f0eb\"}.fa-exchange:before{content:\"\\f0ec\"}.fa-cloud-download:before{content:\"\\f0ed\"}.fa-cloud-upload:before{content:\"\\f0ee\"}.fa-user-md:before{content:\"\\f0f0\"}.fa-stethoscope:before{content:\"\\f0f1\"}.fa-suitcase:before{content:\"\\f0f2\"}.fa-bell-o:before{content:\"\\f0a2\"}.fa-coffee:before{content:\"\\f0f4\"}.fa-cutlery:before{content:\"\\f0f5\"}.fa-file-text-o:before{content:\"\\f0f6\"}.fa-building-o:before{content:\"\\f0f7\"}.fa-hospital-o:before{content:\"\\f0f8\"}.fa-ambulance:before{content:\"\\f0f9\"}.fa-medkit:before{content:\"\\f0fa\"}.fa-fighter-jet:before{content:\"\\f0fb\"}.fa-beer:before{content:\"\\f0fc\"}.fa-h-square:before{content:\"\\f0fd\"}.fa-plus-square:before{content:\"\\f0fe\"}.fa-angle-double-left:before{content:\"\\f100\"}.fa-angle-double-right:before{content:\"\\f101\"}.fa-angle-double-up:before{content:\"\\f102\"}.fa-angle-double-down:before{content:\"\\f103\"}.fa-angle-left:before{content:\"\\f104\"}.fa-angle-right:before{content:\"\\f105\"}.fa-angle-up:before{content:\"\\f106\"}.fa-angle-down:before{content:\"\\f107\"}.fa-desktop:before{content:\"\\f108\"}.fa-laptop:before{content:\"\\f109\"}.fa-tablet:before{content:\"\\f10a\"}.fa-mobile-phone:before,.fa-mobile:before{content:\"\\f10b\"}.fa-circle-o:before{content:\"\\f10c\"}.fa-quote-left:before{content:\"\\f10d\"}.fa-quote-right:before{content:\"\\f10e\"}.fa-spinner:before{content:\"\\f110\"}.fa-circle:before{content:\"\\f111\"}.fa-mail-reply:before,.fa-reply:before{content:\"\\f112\"}.fa-github-alt:before{content:\"\\f113\"}.fa-folder-o:before{content:\"\\f114\"}.fa-folder-open-o:before{content:\"\\f115\"}.fa-smile-o:before{content:\"\\f118\"}.fa-frown-o:before{content:\"\\f119\"}.fa-meh-o:before{content:\"\\f11a\"}.fa-gamepad:before{content:\"\\f11b\"}.fa-keyboard-o:before{content:\"\\f11c\"}.fa-flag-o:before{content:\"\\f11d\"}.fa-flag-checkered:before{content:\"\\f11e\"}.fa-terminal:before{content:\"\\f120\"}.fa-code:before{content:\"\\f121\"}.fa-mail-reply-all:before,.fa-reply-all:before{content:\"\\f122\"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:\"\\f123\"}.fa-location-arrow:before{content:\"\\f124\"}.fa-crop:before{content:\"\\f125\"}.fa-code-fork:before{content:\"\\f126\"}.fa-unlink:before,.fa-chain-broken:before{content:\"\\f127\"}.fa-question:before{content:\"\\f128\"}.fa-info:before{content:\"\\f129\"}.fa-exclamation:before{content:\"\\f12a\"}.fa-superscript:before{content:\"\\f12b\"}.fa-subscript:before{content:\"\\f12c\"}.fa-eraser:before{content:\"\\f12d\"}.fa-puzzle-piece:before{content:\"\\f12e\"}.fa-microphone:before{content:\"\\f130\"}.fa-microphone-slash:before{content:\"\\f131\"}.fa-shield:before{content:\"\\f132\"}.fa-calendar-o:before{content:\"\\f133\"}.fa-fire-extinguisher:before{content:\"\\f134\"}.fa-rocket:before{content:\"\\f135\"}.fa-maxcdn:before{content:\"\\f136\"}.fa-chevron-circle-left:before{content:\"\\f137\"}.fa-chevron-circle-right:before{content:\"\\f138\"}.fa-chevron-circle-up:before{content:\"\\f139\"}.fa-chevron-circle-down:before{content:\"\\f13a\"}.fa-html5:before{content:\"\\f13b\"}.fa-css3:before{content:\"\\f13c\"}.fa-anchor:before{content:\"\\f13d\"}.fa-unlock-alt:before{content:\"\\f13e\"}.fa-bullseye:before{content:\"\\f140\"}.fa-ellipsis-h:before{content:\"\\f141\"}.fa-ellipsis-v:before{content:\"\\f142\"}.fa-rss-square:before{content:\"\\f143\"}.fa-play-circle:before{content:\"\\f144\"}.fa-ticket:before{content:\"\\f145\"}.fa-minus-square:before{content:\"\\f146\"}.fa-minus-square-o:before{content:\"\\f147\"}.fa-level-up:before{content:\"\\f148\"}.fa-level-down:before{content:\"\\f149\"}.fa-check-square:before{content:\"\\f14a\"}.fa-pencil-square:before{content:\"\\f14b\"}.fa-external-link-square:before{content:\"\\f14c\"}.fa-share-square:before{content:\"\\f14d\"}.fa-compass:before{content:\"\\f14e\"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:\"\\f150\"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:\"\\f151\"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:\"\\f152\"}.fa-euro:before,.fa-eur:before{content:\"\\f153\"}.fa-gbp:before{content:\"\\f154\"}.fa-dollar:before,.fa-usd:before{content:\"\\f155\"}.fa-rupee:before,.fa-inr:before{content:\"\\f156\"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:\"\\f157\"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:\"\\f158\"}.fa-won:before,.fa-krw:before{content:\"\\f159\"}.fa-bitcoin:before,.fa-btc:before{content:\"\\f15a\"}.fa-file:before{content:\"\\f15b\"}.fa-file-text:before{content:\"\\f15c\"}.fa-sort-alpha-asc:before{content:\"\\f15d\"}.fa-sort-alpha-desc:before{content:\"\\f15e\"}.fa-sort-amount-asc:before{content:\"\\f160\"}.fa-sort-amount-desc:before{content:\"\\f161\"}.fa-sort-numeric-asc:before{content:\"\\f162\"}.fa-sort-numeric-desc:before{content:\"\\f163\"}.fa-thumbs-up:before{content:\"\\f164\"}.fa-thumbs-down:before{content:\"\\f165\"}.fa-youtube-square:before{content:\"\\f166\"}.fa-youtube:before{content:\"\\f167\"}.fa-xing:before{content:\"\\f168\"}.fa-xing-square:before{content:\"\\f169\"}.fa-youtube-play:before{content:\"\\f16a\"}.fa-dropbox:before{content:\"\\f16b\"}.fa-stack-overflow:before{content:\"\\f16c\"}.fa-instagram:before{content:\"\\f16d\"}.fa-flickr:before{content:\"\\f16e\"}.fa-adn:before{content:\"\\f170\"}.fa-bitbucket:before{content:\"\\f171\"}.fa-bitbucket-square:before{content:\"\\f172\"}.fa-tumblr:before{content:\"\\f173\"}.fa-tumblr-square:before{content:\"\\f174\"}.fa-long-arrow-down:before{content:\"\\f175\"}.fa-long-arrow-up:before{content:\"\\f176\"}.fa-long-arrow-left:before{content:\"\\f177\"}.fa-long-arrow-right:before{content:\"\\f178\"}.fa-apple:before{content:\"\\f179\"}.fa-windows:before{content:\"\\f17a\"}.fa-android:before{content:\"\\f17b\"}.fa-linux:before{content:\"\\f17c\"}.fa-dribbble:before{content:\"\\f17d\"}.fa-skype:before{content:\"\\f17e\"}.fa-foursquare:before{content:\"\\f180\"}.fa-trello:before{content:\"\\f181\"}.fa-female:before{content:\"\\f182\"}.fa-male:before{content:\"\\f183\"}.fa-gittip:before,.fa-gratipay:before{content:\"\\f184\"}.fa-sun-o:before{content:\"\\f185\"}.fa-moon-o:before{content:\"\\f186\"}.fa-archive:before{content:\"\\f187\"}.fa-bug:before{content:\"\\f188\"}.fa-vk:before{content:\"\\f189\"}.fa-weibo:before{content:\"\\f18a\"}.fa-renren:before{content:\"\\f18b\"}.fa-pagelines:before{content:\"\\f18c\"}.fa-stack-exchange:before{content:\"\\f18d\"}.fa-arrow-circle-o-right:before{content:\"\\f18e\"}.fa-arrow-circle-o-left:before{content:\"\\f190\"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:\"\\f191\"}.fa-dot-circle-o:before{content:\"\\f192\"}.fa-wheelchair:before{content:\"\\f193\"}.fa-vimeo-square:before{content:\"\\f194\"}.fa-turkish-lira:before,.fa-try:before{content:\"\\f195\"}.fa-plus-square-o:before{content:\"\\f196\"}.fa-space-shuttle:before{content:\"\\f197\"}.fa-slack:before{content:\"\\f198\"}.fa-envelope-square:before{content:\"\\f199\"}.fa-wordpress:before{content:\"\\f19a\"}.fa-openid:before{content:\"\\f19b\"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:\"\\f19c\"}.fa-mortar-board:before,.fa-graduation-cap:before{content:\"\\f19d\"}.fa-yahoo:before{content:\"\\f19e\"}.fa-google:before{content:\"\\f1a0\"}.fa-reddit:before{content:\"\\f1a1\"}.fa-reddit-square:before{content:\"\\f1a2\"}.fa-stumbleupon-circle:before{content:\"\\f1a3\"}.fa-stumbleupon:before{content:\"\\f1a4\"}.fa-delicious:before{content:\"\\f1a5\"}.fa-digg:before{content:\"\\f1a6\"}.fa-pied-piper-pp:before{content:\"\\f1a7\"}.fa-pied-piper-alt:before{content:\"\\f1a8\"}.fa-drupal:before{content:\"\\f1a9\"}.fa-joomla:before{content:\"\\f1aa\"}.fa-language:before{content:\"\\f1ab\"}.fa-fax:before{content:\"\\f1ac\"}.fa-building:before{content:\"\\f1ad\"}.fa-child:before{content:\"\\f1ae\"}.fa-paw:before{content:\"\\f1b0\"}.fa-spoon:before{content:\"\\f1b1\"}.fa-cube:before{content:\"\\f1b2\"}.fa-cubes:before{content:\"\\f1b3\"}.fa-behance:before{content:\"\\f1b4\"}.fa-behance-square:before{content:\"\\f1b5\"}.fa-steam:before{content:\"\\f1b6\"}.fa-steam-square:before{content:\"\\f1b7\"}.fa-recycle:before{content:\"\\f1b8\"}.fa-automobile:before,.fa-car:before{content:\"\\f1b9\"}.fa-cab:before,.fa-taxi:before{content:\"\\f1ba\"}.fa-tree:before{content:\"\\f1bb\"}.fa-spotify:before{content:\"\\f1bc\"}.fa-deviantart:before{content:\"\\f1bd\"}.fa-soundcloud:before{content:\"\\f1be\"}.fa-database:before{content:\"\\f1c0\"}.fa-file-pdf-o:before{content:\"\\f1c1\"}.fa-file-word-o:before{content:\"\\f1c2\"}.fa-file-excel-o:before{content:\"\\f1c3\"}.fa-file-powerpoint-o:before{content:\"\\f1c4\"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:\"\\f1c5\"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:\"\\f1c6\"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:\"\\f1c7\"}.fa-file-movie-o:before,.fa-file-video-o:before{content:\"\\f1c8\"}.fa-file-code-o:before{content:\"\\f1c9\"}.fa-vine:before{content:\"\\f1ca\"}.fa-codepen:before{content:\"\\f1cb\"}.fa-jsfiddle:before{content:\"\\f1cc\"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:\"\\f1cd\"}.fa-circle-o-notch:before{content:\"\\f1ce\"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:\"\\f1d0\"}.fa-ge:before,.fa-empire:before{content:\"\\f1d1\"}.fa-git-square:before{content:\"\\f1d2\"}.fa-git:before{content:\"\\f1d3\"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:\"\\f1d4\"}.fa-tencent-weibo:before{content:\"\\f1d5\"}.fa-qq:before{content:\"\\f1d6\"}.fa-wechat:before,.fa-weixin:before{content:\"\\f1d7\"}.fa-send:before,.fa-paper-plane:before{content:\"\\f1d8\"}.fa-send-o:before,.fa-paper-plane-o:before{content:\"\\f1d9\"}.fa-history:before{content:\"\\f1da\"}.fa-circle-thin:before{content:\"\\f1db\"}.fa-header:before{content:\"\\f1dc\"}.fa-paragraph:before{content:\"\\f1dd\"}.fa-sliders:before{content:\"\\f1de\"}.fa-share-alt:before{content:\"\\f1e0\"}.fa-share-alt-square:before{content:\"\\f1e1\"}.fa-bomb:before{content:\"\\f1e2\"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:\"\\f1e3\"}.fa-tty:before{content:\"\\f1e4\"}.fa-binoculars:before{content:\"\\f1e5\"}.fa-plug:before{content:\"\\f1e6\"}.fa-slideshare:before{content:\"\\f1e7\"}.fa-twitch:before{content:\"\\f1e8\"}.fa-yelp:before{content:\"\\f1e9\"}.fa-newspaper-o:before{content:\"\\f1ea\"}.fa-wifi:before{content:\"\\f1eb\"}.fa-calculator:before{content:\"\\f1ec\"}.fa-paypal:before{content:\"\\f1ed\"}.fa-google-wallet:before{content:\"\\f1ee\"}.fa-cc-visa:before{content:\"\\f1f0\"}.fa-cc-mastercard:before{content:\"\\f1f1\"}.fa-cc-discover:before{content:\"\\f1f2\"}.fa-cc-amex:before{content:\"\\f1f3\"}.fa-cc-paypal:before{content:\"\\f1f4\"}.fa-cc-stripe:before{content:\"\\f1f5\"}.fa-bell-slash:before{content:\"\\f1f6\"}.fa-bell-slash-o:before{content:\"\\f1f7\"}.fa-trash:before{content:\"\\f1f8\"}.fa-copyright:before{content:\"\\f1f9\"}.fa-at:before{content:\"\\f1fa\"}.fa-eyedropper:before{content:\"\\f1fb\"}.fa-paint-brush:before{content:\"\\f1fc\"}.fa-birthday-cake:before{content:\"\\f1fd\"}.fa-area-chart:before{content:\"\\f1fe\"}.fa-pie-chart:before{content:\"\\f200\"}.fa-line-chart:before{content:\"\\f201\"}.fa-lastfm:before{content:\"\\f202\"}.fa-lastfm-square:before{content:\"\\f203\"}.fa-toggle-off:before{content:\"\\f204\"}.fa-toggle-on:before{content:\"\\f205\"}.fa-bicycle:before{content:\"\\f206\"}.fa-bus:before{content:\"\\f207\"}.fa-ioxhost:before{content:\"\\f208\"}.fa-angellist:before{content:\"\\f209\"}.fa-cc:before{content:\"\\f20a\"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:\"\\f20b\"}.fa-meanpath:before{content:\"\\f20c\"}.fa-buysellads:before{content:\"\\f20d\"}.fa-connectdevelop:before{content:\"\\f20e\"}.fa-dashcube:before{content:\"\\f210\"}.fa-forumbee:before{content:\"\\f211\"}.fa-leanpub:before{content:\"\\f212\"}.fa-sellsy:before{content:\"\\f213\"}.fa-shirtsinbulk:before{content:\"\\f214\"}.fa-simplybuilt:before{content:\"\\f215\"}.fa-skyatlas:before{content:\"\\f216\"}.fa-cart-plus:before{content:\"\\f217\"}.fa-cart-arrow-down:before{content:\"\\f218\"}.fa-diamond:before{content:\"\\f219\"}.fa-ship:before{content:\"\\f21a\"}.fa-user-secret:before{content:\"\\f21b\"}.fa-motorcycle:before{content:\"\\f21c\"}.fa-street-view:before{content:\"\\f21d\"}.fa-heartbeat:before{content:\"\\f21e\"}.fa-venus:before{content:\"\\f221\"}.fa-mars:before{content:\"\\f222\"}.fa-mercury:before{content:\"\\f223\"}.fa-intersex:before,.fa-transgender:before{content:\"\\f224\"}.fa-transgender-alt:before{content:\"\\f225\"}.fa-venus-double:before{content:\"\\f226\"}.fa-mars-double:before{content:\"\\f227\"}.fa-venus-mars:before{content:\"\\f228\"}.fa-mars-stroke:before{content:\"\\f229\"}.fa-mars-stroke-v:before{content:\"\\f22a\"}.fa-mars-stroke-h:before{content:\"\\f22b\"}.fa-neuter:before{content:\"\\f22c\"}.fa-genderless:before{content:\"\\f22d\"}.fa-facebook-official:before{content:\"\\f230\"}.fa-pinterest-p:before{content:\"\\f231\"}.fa-whatsapp:before{content:\"\\f232\"}.fa-server:before{content:\"\\f233\"}.fa-user-plus:before{content:\"\\f234\"}.fa-user-times:before{content:\"\\f235\"}.fa-hotel:before,.fa-bed:before{content:\"\\f236\"}.fa-viacoin:before{content:\"\\f237\"}.fa-train:before{content:\"\\f238\"}.fa-subway:before{content:\"\\f239\"}.fa-medium:before{content:\"\\f23a\"}.fa-yc:before,.fa-y-combinator:before{content:\"\\f23b\"}.fa-optin-monster:before{content:\"\\f23c\"}.fa-opencart:before{content:\"\\f23d\"}.fa-expeditedssl:before{content:\"\\f23e\"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:\"\\f240\"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:\"\\f241\"}.fa-battery-2:before,.fa-battery-half:before{content:\"\\f242\"}.fa-battery-1:before,.fa-battery-quarter:before{content:\"\\f243\"}.fa-battery-0:before,.fa-battery-empty:before{content:\"\\f244\"}.fa-mouse-pointer:before{content:\"\\f245\"}.fa-i-cursor:before{content:\"\\f246\"}.fa-object-group:before{content:\"\\f247\"}.fa-object-ungroup:before{content:\"\\f248\"}.fa-sticky-note:before{content:\"\\f249\"}.fa-sticky-note-o:before{content:\"\\f24a\"}.fa-cc-jcb:before{content:\"\\f24b\"}.fa-cc-diners-club:before{content:\"\\f24c\"}.fa-clone:before{content:\"\\f24d\"}.fa-balance-scale:before{content:\"\\f24e\"}.fa-hourglass-o:before{content:\"\\f250\"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:\"\\f251\"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:\"\\f252\"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:\"\\f253\"}.fa-hourglass:before{content:\"\\f254\"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:\"\\f255\"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:\"\\f256\"}.fa-hand-scissors-o:before{content:\"\\f257\"}.fa-hand-lizard-o:before{content:\"\\f258\"}.fa-hand-spock-o:before{content:\"\\f259\"}.fa-hand-pointer-o:before{content:\"\\f25a\"}.fa-hand-peace-o:before{content:\"\\f25b\"}.fa-trademark:before{content:\"\\f25c\"}.fa-registered:before{content:\"\\f25d\"}.fa-creative-commons:before{content:\"\\f25e\"}.fa-gg:before{content:\"\\f260\"}.fa-gg-circle:before{content:\"\\f261\"}.fa-tripadvisor:before{content:\"\\f262\"}.fa-odnoklassniki:before{content:\"\\f263\"}.fa-odnoklassniki-square:before{content:\"\\f264\"}.fa-get-pocket:before{content:\"\\f265\"}.fa-wikipedia-w:before{content:\"\\f266\"}.fa-safari:before{content:\"\\f267\"}.fa-chrome:before{content:\"\\f268\"}.fa-firefox:before{content:\"\\f269\"}.fa-opera:before{content:\"\\f26a\"}.fa-internet-explorer:before{content:\"\\f26b\"}.fa-tv:before,.fa-television:before{content:\"\\f26c\"}.fa-contao:before{content:\"\\f26d\"}.fa-500px:before{content:\"\\f26e\"}.fa-amazon:before{content:\"\\f270\"}.fa-calendar-plus-o:before{content:\"\\f271\"}.fa-calendar-minus-o:before{content:\"\\f272\"}.fa-calendar-times-o:before{content:\"\\f273\"}.fa-calendar-check-o:before{content:\"\\f274\"}.fa-industry:before{content:\"\\f275\"}.fa-map-pin:before{content:\"\\f276\"}.fa-map-signs:before{content:\"\\f277\"}.fa-map-o:before{content:\"\\f278\"}.fa-map:before{content:\"\\f279\"}.fa-commenting:before{content:\"\\f27a\"}.fa-commenting-o:before{content:\"\\f27b\"}.fa-houzz:before{content:\"\\f27c\"}.fa-vimeo:before{content:\"\\f27d\"}.fa-black-tie:before{content:\"\\f27e\"}.fa-fonticons:before{content:\"\\f280\"}.fa-reddit-alien:before{content:\"\\f281\"}.fa-edge:before{content:\"\\f282\"}.fa-credit-card-alt:before{content:\"\\f283\"}.fa-codiepie:before{content:\"\\f284\"}.fa-modx:before{content:\"\\f285\"}.fa-fort-awesome:before{content:\"\\f286\"}.fa-usb:before{content:\"\\f287\"}.fa-product-hunt:before{content:\"\\f288\"}.fa-mixcloud:before{content:\"\\f289\"}.fa-scribd:before{content:\"\\f28a\"}.fa-pause-circle:before{content:\"\\f28b\"}.fa-pause-circle-o:before{content:\"\\f28c\"}.fa-stop-circle:before{content:\"\\f28d\"}.fa-stop-circle-o:before{content:\"\\f28e\"}.fa-shopping-bag:before{content:\"\\f290\"}.fa-shopping-basket:before{content:\"\\f291\"}.fa-hashtag:before{content:\"\\f292\"}.fa-bluetooth:before{content:\"\\f293\"}.fa-bluetooth-b:before{content:\"\\f294\"}.fa-percent:before{content:\"\\f295\"}.fa-gitlab:before{content:\"\\f296\"}.fa-wpbeginner:before{content:\"\\f297\"}.fa-wpforms:before{content:\"\\f298\"}.fa-envira:before{content:\"\\f299\"}.fa-universal-access:before{content:\"\\f29a\"}.fa-wheelchair-alt:before{content:\"\\f29b\"}.fa-question-circle-o:before{content:\"\\f29c\"}.fa-blind:before{content:\"\\f29d\"}.fa-audio-description:before{content:\"\\f29e\"}.fa-volume-control-phone:before{content:\"\\f2a0\"}.fa-braille:before{content:\"\\f2a1\"}.fa-assistive-listening-systems:before{content:\"\\f2a2\"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:\"\\f2a3\"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:\"\\f2a4\"}.fa-glide:before{content:\"\\f2a5\"}.fa-glide-g:before{content:\"\\f2a6\"}.fa-signing:before,.fa-sign-language:before{content:\"\\f2a7\"}.fa-low-vision:before{content:\"\\f2a8\"}.fa-viadeo:before{content:\"\\f2a9\"}.fa-viadeo-square:before{content:\"\\f2aa\"}.fa-snapchat:before{content:\"\\f2ab\"}.fa-snapchat-ghost:before{content:\"\\f2ac\"}.fa-snapchat-square:before{content:\"\\f2ad\"}.fa-pied-piper:before{content:\"\\f2ae\"}.fa-first-order:before{content:\"\\f2b0\"}.fa-yoast:before{content:\"\\f2b1\"}.fa-themeisle:before{content:\"\\f2b2\"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:\"\\f2b3\"}.fa-fa:before,.fa-font-awesome:before{content:\"\\f2b4\"}.fa-handshake-o:before{content:\"\\f2b5\"}.fa-envelope-open:before{content:\"\\f2b6\"}.fa-envelope-open-o:before{content:\"\\f2b7\"}.fa-linode:before{content:\"\\f2b8\"}.fa-address-book:before{content:\"\\f2b9\"}.fa-address-book-o:before{content:\"\\f2ba\"}.fa-vcard:before,.fa-address-card:before{content:\"\\f2bb\"}.fa-vcard-o:before,.fa-address-card-o:before{content:\"\\f2bc\"}.fa-user-circle:before{content:\"\\f2bd\"}.fa-user-circle-o:before{content:\"\\f2be\"}.fa-user-o:before{content:\"\\f2c0\"}.fa-id-badge:before{content:\"\\f2c1\"}.fa-drivers-license:before,.fa-id-card:before{content:\"\\f2c2\"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:\"\\f2c3\"}.fa-quora:before{content:\"\\f2c4\"}.fa-free-code-camp:before{content:\"\\f2c5\"}.fa-telegram:before{content:\"\\f2c6\"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:\"\\f2c7\"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:\"\\f2c8\"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:\"\\f2c9\"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:\"\\f2ca\"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:\"\\f2cb\"}.fa-shower:before{content:\"\\f2cc\"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:\"\\f2cd\"}.fa-podcast:before{content:\"\\f2ce\"}.fa-window-maximize:before{content:\"\\f2d0\"}.fa-window-minimize:before{content:\"\\f2d1\"}.fa-window-restore:before{content:\"\\f2d2\"}.fa-times-rectangle:before,.fa-window-close:before{content:\"\\f2d3\"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:\"\\f2d4\"}.fa-bandcamp:before{content:\"\\f2d5\"}.fa-grav:before{content:\"\\f2d6\"}.fa-etsy:before{content:\"\\f2d7\"}.fa-imdb:before{content:\"\\f2d8\"}.fa-ravelry:before{content:\"\\f2d9\"}.fa-eercast:before{content:\"\\f2da\"}.fa-microchip:before{content:\"\\f2db\"}.fa-snowflake-o:before{content:\"\\f2dc\"}.fa-superpowers:before{content:\"\\f2dd\"}.fa-wpexplorer:before{content:\"\\f2de\"}.fa-meetup:before{content:\"\\f2e0\"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}\n\";}","no"),
("1383","_transient_wc_count_comments","O:8:\"stdClass\":7:{s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:8:\"approved\";s:1:\"2\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1384","_transient_as_comment_count","O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"2\";s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}","yes"),
("1394","_transient_woocommerce_webhook_ids_status_active","a:0:{}","yes"),
("1397","woocommerce_allow_bulk_remove_personal_data","no","no"),
("1398","woocommerce_show_marketplace_suggestions","yes","no"),
("1399","woocommerce_version","3.6.2","yes"),
("1401","_transient_wc_attribute_taxonomies","a:0:{}","yes"),
("1413","dbprefix_old_dbprefix","mo_","yes"),
("1414","dbprefix_new","gdd_","yes"),
("1427","_site_transient_timeout_browser_53ad83e7ffe60968becca0ade7b723b5","1558014843","no"),
("1428","_site_transient_browser_53ad83e7ffe60968becca0ade7b723b5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1433","_transient_product_query-transient-version","1557410043","yes"),
("1449","_transient_timeout_wc_term_counts","1560005433","no"),
("1450","_transient_wc_term_counts","a:6:{i:20;s:1:\"3\";i:19;s:1:\"4\";i:17;s:1:\"4\";i:18;s:1:\"3\";i:15;s:1:\"2\";i:16;s:1:\"1\";}","no"),
("1452","_site_transient_timeout_browser_85dfbbbc681cf01cdb11737e733d7d13","1558048349","no"),
("1453","_site_transient_browser_85dfbbbc681cf01cdb11737e733d7d13","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1466","_site_transient_timeout_browser_0419a92c0e911831a57fe309253948e5","1558057958","no"),
("1467","_site_transient_browser_0419a92c0e911831a57fe309253948e5","a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no"),
("1468","_site_transient_timeout_php_check_6415703fad45c4c27e0da95f77a65191","1558057959","no"),
("1469","_site_transient_php_check_6415703fad45c4c27e0da95f77a65191","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no"),
("1476","recovery_keys","a:0:{}","yes"),
("1477","db_upgraded","","yes"),
("1481","can_compress_scripts","0","no"),
("1571","_transient_timeout_wc_related_190","1557974435","no"),
("1572","_transient_wc_related_190","a:1:{s:52:\"limit=10&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=190\";a:5:{i:0;s:2:\"86\";i:1;s:2:\"88\";i:2;s:3:\"201\";i:3;s:3:\"195\";i:4;s:3:\"198\";}}","no"),
("1586","_transient_timeout_bfa-api-versions","1558025268","no"),
("1587","_transient_bfa-api-versions","O:8:\"stdClass\":2:{s:8:\"versions\";a:20:{i:0;s:5:\"4.7.0\";i:1;s:5:\"4.6.3\";i:2;s:5:\"4.6.2\";i:3;s:5:\"4.6.1\";i:4;s:5:\"4.6.0\";i:5;s:5:\"4.5.0\";i:6;s:5:\"4.4.0\";i:7;s:5:\"4.3.0\";i:8;s:5:\"4.2.0\";i:9;s:5:\"4.1.0\";i:10;s:5:\"4.0.3\";i:11;s:5:\"4.0.1\";i:12;s:5:\"4.0.0\";i:13;s:5:\"3.2.1\";i:14;s:5:\"3.2.0\";i:15;s:5:\"3.1.1\";i:16;s:5:\"3.0.2\";i:17;s:3:\"3.0\";i:18;s:3:\"2.0\";i:19;s:5:\"1.0.0\";}s:11:\"lastversion\";s:5:\"4.7.0\";}","no"),
("1590","_site_transient_timeout_theme_roots","1557983874","no"),
("1591","_site_transient_theme_roots","a:2:{s:8:\"flatsome\";s:7:\"/themes\";s:7:\"mat-ong\";s:7:\"/themes\";}","no"),
("1592","_transient_timeout_wc_related_198","1558068478","no"),
("1593","_transient_wc_related_198","a:1:{s:52:\"limit=10&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=198\";a:5:{i:0;s:3:\"190\";i:1;s:3:\"195\";i:2;s:3:\"201\";i:3;s:2:\"84\";i:4;s:2:\"88\";}}","no"),
("1594","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1557982085;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}","no"),
("1595","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1557982087;s:7:\"checked\";a:2:{s:8:\"flatsome\";s:5:\"3.8.3\";s:7:\"mat-ong\";s:3:\"3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no"),
("1596","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1557982088;s:7:\"checked\";a:6:{s:43:\"better-font-awesome/better-font-awesome.php\";s:5:\"1.7.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:35:\"devvn-quick-buy/devvn-quick-buy.php\";s:5:\"2.0.0\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:5:\"3.2.0\";s:42:\"contentprotector/smartcontentprotector.php\";s:3:\"7.9\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:43:\"better-font-awesome/better-font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/better-font-awesome\";s:4:\"slug\";s:19:\"better-font-awesome\";s:6:\"plugin\";s:43:\"better-font-awesome/better-font-awesome.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/better-font-awesome/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/better-font-awesome.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/better-font-awesome/assets/icon-256x256.png?rev=1186438\";s:2:\"1x\";s:72:\"https://ps.w.org/better-font-awesome/assets/icon-128x128.png?rev=1207071\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/better-font-awesome/assets/banner-1544x500.jpg?rev=887838\";s:2:\"1x\";s:73:\"https://ps.w.org/better-font-awesome/assets/banner-772x250.jpg?rev=887838\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"search-and-replace/inpsyde-search-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/search-and-replace\";s:4:\"slug\";s:18:\"search-and-replace\";s:6:\"plugin\";s:45:\"search-and-replace/inpsyde-search-replace.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/search-and-replace/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/search-and-replace.3.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844\";s:2:\"1x\";s:71:\"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844\";s:2:\"1x\";s:73:\"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}","no");




CREATE TABLE `gdd_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_postmeta VALUES
("1","2","_wp_page_template","page-blank.php"),
("2","3","_wp_page_template","default"),
("30","18","_wp_attached_file","2019/01/cropped-logo.jpg"),
("31","18","_wp_attachment_context","site-icon"),
("32","18","_wp_attachment_metadata","a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2019/01/cropped-logo.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("35","2","_edit_lock","1547561266:1"),
("36","2","_edit_last","1"),
("37","2","_footer","normal"),
("38","21","_edit_last","1"),
("39","21","_footer","normal"),
("40","21","_wp_page_template","page-blank.php"),
("41","21","_edit_lock","1547634248:1"),
("42","23","_edit_last","1"),
("43","23","_footer","normal"),
("44","23","_wp_page_template","page-blank.php"),
("45","23","_edit_lock","1547635309:1"),
("46","29","_menu_item_type","post_type"),
("47","29","_menu_item_menu_item_parent","0"),
("48","29","_menu_item_object_id","27"),
("49","29","_menu_item_object","page"),
("50","29","_menu_item_target",""),
("51","29","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("52","29","_menu_item_xfn",""),
("53","29","_menu_item_url",""),
("55","30","_menu_item_type","post_type"),
("56","30","_menu_item_menu_item_parent","0"),
("57","30","_menu_item_object_id","25"),
("58","30","_menu_item_object","page"),
("59","30","_menu_item_target",""),
("60","30","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("61","30","_menu_item_xfn",""),
("62","30","_menu_item_url",""),
("64","31","_menu_item_type","post_type"),
("65","31","_menu_item_menu_item_parent","0"),
("66","31","_menu_item_object_id","23"),
("67","31","_menu_item_object","page"),
("68","31","_menu_item_target",""),
("69","31","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("70","31","_menu_item_xfn",""),
("71","31","_menu_item_url",""),
("73","32","_menu_item_type","post_type"),
("74","32","_menu_item_menu_item_parent","0"),
("75","32","_menu_item_object_id","21"),
("76","32","_menu_item_object","page"),
("77","32","_menu_item_target",""),
("78","32","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("79","32","_menu_item_xfn",""),
("80","32","_menu_item_url",""),
("82","33","_menu_item_type","post_type"),
("83","33","_menu_item_menu_item_parent","0"),
("84","33","_menu_item_object_id","2"),
("85","33","_menu_item_object","page"),
("86","33","_menu_item_target",""),
("87","33","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("88","33","_menu_item_xfn",""),
("89","33","_menu_item_url",""),
("91","34","_menu_item_type","custom"),
("92","34","_menu_item_menu_item_parent","30"),
("93","34","_menu_item_object_id","34"),
("94","34","_menu_item_object","custom"),
("95","34","_menu_item_target",""),
("96","34","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("97","34","_menu_item_xfn",""),
("98","34","_menu_item_url","/danh-muc/mat-ong-sua-chua/"),
("100","35","_menu_item_type","custom"),
("101","35","_menu_item_menu_item_parent","30"),
("102","35","_menu_item_object_id","35"),
("103","35","_menu_item_object","custom"),
("104","35","_menu_item_target",""),
("105","35","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("106","35","_menu_item_xfn",""),
("107","35","_menu_item_url","/danh-muc/mat-ong-rung/"),
("109","36","_menu_item_type","custom"),
("110","36","_menu_item_menu_item_parent","30"),
("111","36","_menu_item_object_id","36"),
("112","36","_menu_item_object","custom"),
("113","36","_menu_item_target",""),
("114","36","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("115","36","_menu_item_xfn",""),
("116","36","_menu_item_url","/danh-muc/mat-ong-gung/"),
("118","37","_menu_item_type","custom"),
("119","37","_menu_item_menu_item_parent","30"),
("120","37","_menu_item_object_id","37"),
("121","37","_menu_item_object","custom"),
("122","37","_menu_item_target",""),
("123","37","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("124","37","_menu_item_xfn",""),
("125","37","_menu_item_url","/danh-muc/mat-ong-hoa-ca-phe/"),
("127","38","_menu_item_type","custom"),
("128","38","_menu_item_menu_item_parent","30"),
("129","38","_menu_item_object_id","38"),
("130","38","_menu_item_object","custom"),
("131","38","_menu_item_target",""),
("132","38","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("133","38","_menu_item_xfn",""),
("134","38","_menu_item_url","/danh-muc/mat-ong-hoa-nhan/"),
("181","61","_menu_item_type","post_type"),
("182","61","_menu_item_menu_item_parent","0"),
("183","61","_menu_item_object_id","28"),
("184","61","_menu_item_object","page");
INSERT INTO gdd_postmeta VALUES
("185","61","_menu_item_target",""),
("186","61","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("187","61","_menu_item_xfn",""),
("188","61","_menu_item_url",""),
("190","62","_menu_item_type","post_type"),
("191","62","_menu_item_menu_item_parent","0"),
("192","62","_menu_item_object_id","27"),
("193","62","_menu_item_object","page"),
("194","62","_menu_item_target",""),
("195","62","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("196","62","_menu_item_xfn",""),
("197","62","_menu_item_url",""),
("199","63","_menu_item_type","post_type"),
("200","63","_menu_item_menu_item_parent","0"),
("201","63","_menu_item_object_id","25"),
("202","63","_menu_item_object","page"),
("203","63","_menu_item_target",""),
("204","63","_menu_item_classes","a:1:{i:0;s:0:\"\";}"),
("205","63","_menu_item_xfn",""),
("206","63","_menu_item_url",""),
("215","67","_wp_attached_file","2019/01/logo1.jpg"),
("216","67","_wp_attachment_metadata","a:5:{s:5:\"width\";i:300;s:6:\"height\";i:84;s:4:\"file\";s:17:\"2019/01/logo1.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"logo1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"logo1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-100x84.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"logo1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-100x84.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}"),
("225","2","_thumbnail_id",""),
("228","73","_wp_attached_file","2019/01/sldier1.jpg"),
("229","73","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:450;s:4:\"file\";s:19:\"2019/01/sldier1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"sldier1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"sldier1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sldier1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"sldier1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sldier1-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sldier1-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"sldier1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"sldier1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"sldier1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"sldier1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("232","76","_wp_attached_file","2019/01/sldier2.jpg"),
("233","76","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:450;s:4:\"file\";s:19:\"2019/01/sldier2.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"sldier2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"sldier2-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sldier2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"sldier2-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sldier2-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sldier2-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"sldier2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"sldier2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"sldier2-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"sldier2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("234","82","_wc_review_count","0"),
("235","82","_wc_rating_count","a:0:{}"),
("236","82","_wc_average_rating","0"),
("237","83","_wp_attached_file","2019/01/thumbnail.jpg"),
("238","83","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:270;s:4:\"file\";s:21:\"2019/01/thumbnail.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thumbnail-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thumbnail-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thumbnail-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"thumbnail-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thumbnail-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("239","82","_edit_last","1"),
("240","82","_edit_lock","1547566461:1"),
("241","82","_thumbnail_id","83"),
("242","82","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("243","82","_sku",""),
("244","82","_regular_price","200000"),
("245","82","_sale_price","180000"),
("246","82","_sale_price_dates_from",""),
("247","82","_sale_price_dates_to",""),
("248","82","total_sales","0"),
("249","82","_tax_status","taxable"),
("250","82","_tax_class",""),
("251","82","_manage_stock","no"),
("252","82","_backorders","no"),
("253","82","_low_stock_amount",""),
("254","82","_sold_individually","no"),
("255","82","_weight",""),
("256","82","_length",""),
("257","82","_width",""),
("258","82","_height",""),
("259","82","_upsell_ids","a:0:{}"),
("260","82","_crosssell_ids","a:0:{}"),
("261","82","_purchase_note",""),
("262","82","_default_attributes","a:0:{}"),
("263","82","_virtual","no"),
("264","82","_downloadable","no"),
("265","82","_product_image_gallery","83"),
("266","82","_download_limit","-1"),
("267","82","_download_expiry","-1"),
("268","82","_stock",""),
("269","82","_stock_status","instock"),
("270","82","_product_version","3.5.3"),
("271","82","_price","180000"),
("272","84","_wc_review_count","0"),
("273","84","_wc_rating_count","a:0:{}"),
("274","84","_wc_average_rating","0"),
("275","84","_edit_last","1"),
("276","84","_edit_lock","1547566445:1"),
("277","85","_wp_attached_file","2019/01/thumbnail-1.jpg"),
("278","85","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2019/01/thumbnail-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"thumbnail-1-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"thumbnail-1-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("279","84","_thumbnail_id","85"),
("280","84","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("281","84","_sku",""),
("282","84","_regular_price","650000"),
("283","84","_sale_price","600000"),
("284","84","_sale_price_dates_from",""),
("285","84","_sale_price_dates_to",""),
("286","84","total_sales","0"),
("287","84","_tax_status","taxable"),
("288","84","_tax_class",""),
("289","84","_manage_stock","no"),
("290","84","_backorders","no"),
("291","84","_low_stock_amount",""),
("292","84","_sold_individually","no"),
("293","84","_weight",""),
("294","84","_length",""),
("295","84","_width",""),
("296","84","_height",""),
("297","84","_upsell_ids","a:0:{}"),
("298","84","_crosssell_ids","a:0:{}"),
("299","84","_purchase_note",""),
("300","84","_default_attributes","a:0:{}"),
("301","84","_virtual","no"),
("302","84","_downloadable","no"),
("303","84","_product_image_gallery","85"),
("304","84","_download_limit","-1"),
("305","84","_download_expiry","-1"),
("306","84","_stock","");
INSERT INTO gdd_postmeta VALUES
("307","84","_stock_status","instock"),
("308","84","_product_version","3.5.3"),
("309","84","_price","600000"),
("310","86","_wc_review_count","0"),
("311","86","_wc_rating_count","a:0:{}"),
("312","86","_wc_average_rating","0"),
("313","86","_edit_last","1"),
("314","86","_edit_lock","1547566421:1"),
("315","87","_wp_attached_file","2019/01/thumbnail-2.jpg"),
("316","87","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2019/01/thumbnail-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"thumbnail-2-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"thumbnail-2-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("317","86","_thumbnail_id","87"),
("318","86","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("319","86","_sku",""),
("320","86","_regular_price","460000"),
("321","86","_sale_price","420000"),
("322","86","_sale_price_dates_from",""),
("323","86","_sale_price_dates_to",""),
("324","86","total_sales","0"),
("325","86","_tax_status","taxable"),
("326","86","_tax_class",""),
("327","86","_manage_stock","no"),
("328","86","_backorders","no"),
("329","86","_low_stock_amount",""),
("330","86","_sold_individually","no"),
("331","86","_weight",""),
("332","86","_length",""),
("333","86","_width",""),
("334","86","_height",""),
("335","86","_upsell_ids","a:0:{}"),
("336","86","_crosssell_ids","a:0:{}"),
("337","86","_purchase_note",""),
("338","86","_default_attributes","a:0:{}"),
("339","86","_virtual","no"),
("340","86","_downloadable","no"),
("341","86","_product_image_gallery","87,85,83"),
("342","86","_download_limit","-1"),
("343","86","_download_expiry","-1"),
("344","86","_stock",""),
("345","86","_stock_status","instock"),
("346","86","_product_version","3.5.3"),
("347","86","_price","420000"),
("348","88","_wc_review_count","0"),
("349","88","_wc_rating_count","a:0:{}"),
("350","88","_wc_average_rating","0"),
("351","88","_edit_last","1"),
("352","88","_edit_lock","1547566231:1"),
("353","89","_wp_attached_file","2019/01/thumbnail-3.jpg"),
("354","89","_wp_attachment_metadata","a:5:{s:5:\"width\";i:241;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2019/01/thumbnail-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"thumbnail-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"thumbnail-3-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"thumbnail-3-241x225.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("355","88","_thumbnail_id","89"),
("356","88","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("357","88","_sku",""),
("358","88","_regular_price","360000"),
("359","88","_sale_price","320000"),
("360","88","_sale_price_dates_from",""),
("361","88","_sale_price_dates_to",""),
("362","88","total_sales","0"),
("363","88","_tax_status","taxable"),
("364","88","_tax_class",""),
("365","88","_manage_stock","no"),
("366","88","_backorders","no"),
("367","88","_low_stock_amount",""),
("368","88","_sold_individually","no"),
("369","88","_weight",""),
("370","88","_length",""),
("371","88","_width",""),
("372","88","_height",""),
("373","88","_upsell_ids","a:0:{}"),
("374","88","_crosssell_ids","a:0:{}"),
("375","88","_purchase_note",""),
("376","88","_default_attributes","a:0:{}"),
("377","88","_virtual","no"),
("378","88","_downloadable","no"),
("379","88","_product_image_gallery","89,87,85,83"),
("380","88","_download_limit","-1"),
("381","88","_download_expiry","-1"),
("382","88","_stock",""),
("383","88","_stock_status","instock"),
("384","88","_product_version","3.5.3"),
("385","88","_price","320000"),
("394","98","_wp_attached_file","2019/01/bg.jpg"),
("395","98","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:525;s:4:\"file\";s:14:\"2019/01/bg.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"bg-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"bg-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x210.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x280.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"bg-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("460","142","_wp_attached_file","2019/01/banner-mat-ong-nhan-sam.jpg"),
("461","142","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:525;s:4:\"file\";s:35:\"2019/01/banner-mat-ong-nhan-sam.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"banner-mat-ong-nhan-sam-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"banner-mat-ong-nhan-sam-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"banner-mat-ong-nhan-sam-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"banner-mat-ong-nhan-sam-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"banner-mat-ong-nhan-sam-768x210.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"banner-mat-ong-nhan-sam-1024x280.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"banner-mat-ong-nhan-sam-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"banner-mat-ong-nhan-sam-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"banner-mat-ong-nhan-sam-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"banner-mat-ong-nhan-sam-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("462","144","_wp_attached_file","2019/01/img1.jpg"),
("463","144","_wp_attachment_metadata","a:5:{s:5:\"width\";i:449;s:6:\"height\";i:443;s:4:\"file\";s:16:\"2019/01/img1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"img1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"img1-300x296.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img1-300x296.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"img1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("464","145","_wp_attached_file","2019/01/img2.png"),
("465","145","_wp_attachment_metadata","a:5:{s:5:\"width\";i:848;s:6:\"height\";i:303;s:4:\"file\";s:16:\"2019/01/img2.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"img2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"img2-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img2-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"img2-768x274.png\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"img2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"img2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"img2-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"img2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("466","156","_wp_attached_file","2019/01/BS-SP.jpg"),
("467","156","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:580;s:4:\"file\";s:17:\"2019/01/BS-SP.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"BS-SP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"BS-SP-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"BS-SP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"BS-SP-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"BS-SP-768x232.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"BS-SP-1024x309.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:309;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"BS-SP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"BS-SP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"BS-SP-300x91.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"BS-SP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("487","175","_wp_attached_file","2019/01/honey1.jpg"),
("488","175","_wp_attachment_metadata","a:5:{s:5:\"width\";i:754;s:6:\"height\";i:464;s:4:\"file\";s:18:\"2019/01/honey1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"honey1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"honey1-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"honey1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"honey1-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"honey1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"honey1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"honey1-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"honey1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("495","187","_edit_last","1"),
("496","187","_edit_lock","1547642530:1"),
("497","188","_wp_attached_file","2019/01/thumbnail-4.jpg"),
("498","188","_wp_attachment_metadata","a:5:{s:5:\"width\";i:100;s:6:\"height\";i:92;s:4:\"file\";s:23:\"2019/01/thumbnail-4.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"thumbnail-4-100x92.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:92;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"thumbnail-4-100x92.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:92;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("499","187","_thumbnail_id","188"),
("502","190","_wc_review_count","0"),
("503","190","_wc_rating_count","a:0:{}"),
("504","190","_wc_average_rating","0"),
("505","190","_edit_last","1");
INSERT INTO gdd_postmeta VALUES
("506","190","_edit_lock","1547570708:1"),
("507","191","_wp_attached_file","2019/01/sp2.jpg"),
("508","191","_wp_attachment_metadata","a:5:{s:5:\"width\";i:457;s:6:\"height\";i:528;s:4:\"file\";s:15:\"2019/01/sp2.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"sp2-300x347.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"sp2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"sp2-260x300.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"sp2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"sp2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:15:\"sp2-300x528.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("509","190","_thumbnail_id","191"),
("510","190","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("511","190","_sku",""),
("512","190","_regular_price","632000"),
("513","190","_sale_price",""),
("514","190","_sale_price_dates_from",""),
("515","190","_sale_price_dates_to",""),
("516","190","total_sales","0"),
("517","190","_tax_status","taxable"),
("518","190","_tax_class",""),
("519","190","_manage_stock","no"),
("520","190","_backorders","no"),
("521","190","_low_stock_amount",""),
("522","190","_sold_individually","no"),
("523","190","_weight",""),
("524","190","_length",""),
("525","190","_width",""),
("526","190","_height",""),
("527","190","_upsell_ids","a:0:{}"),
("528","190","_crosssell_ids","a:0:{}"),
("529","190","_purchase_note",""),
("530","190","_default_attributes","a:0:{}"),
("531","190","_virtual","no"),
("532","190","_downloadable","no"),
("533","190","_product_image_gallery","191,175,144,98,89"),
("534","190","_download_limit","-1"),
("535","190","_download_expiry","-1"),
("536","190","_stock",""),
("537","190","_stock_status","instock"),
("538","190","_product_version","3.5.3"),
("539","190","_price","632000"),
("543","195","_wc_review_count","0"),
("544","195","_wc_rating_count","a:0:{}"),
("545","195","_wc_average_rating","0"),
("546","195","_edit_last","1"),
("547","195","_edit_lock","1547570987:1"),
("548","196","_wp_attached_file","2019/01/cong-dung-cua-sap-ong.jpg"),
("549","196","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:625;s:4:\"file\";s:33:\"2019/01/cong-dung-cua-sap-ong.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"cong-dung-cua-sap-ong-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("550","197","_wp_attached_file","2019/01/nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45.jpg"),
("551","197","_wp_attachment_metadata","a:5:{s:5:\"width\";i:549;s:6:\"height\";i:412;s:4:\"file\";s:81:\"2019/01/nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:81:\"nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45-300x412.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("552","195","_thumbnail_id","197"),
("553","195","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("554","195","_sku",""),
("555","195","_regular_price","430000"),
("556","195","_sale_price","350000"),
("557","195","_sale_price_dates_from",""),
("558","195","_sale_price_dates_to",""),
("559","195","total_sales","0"),
("560","195","_tax_status","taxable"),
("561","195","_tax_class",""),
("562","195","_manage_stock","no"),
("563","195","_backorders","no"),
("564","195","_low_stock_amount",""),
("565","195","_sold_individually","no"),
("566","195","_weight",""),
("567","195","_length",""),
("568","195","_width",""),
("569","195","_height",""),
("570","195","_upsell_ids","a:0:{}"),
("571","195","_crosssell_ids","a:0:{}"),
("572","195","_purchase_note",""),
("573","195","_default_attributes","a:0:{}"),
("574","195","_virtual","no"),
("575","195","_downloadable","no"),
("576","195","_product_image_gallery","197,196,144,85,83"),
("577","195","_download_limit","-1"),
("578","195","_download_expiry","-1"),
("579","195","_stock",""),
("580","195","_stock_status","instock"),
("581","195","_product_version","3.5.3"),
("582","195","_price","350000"),
("583","198","_wc_review_count","0"),
("584","198","_wc_rating_count","a:0:{}"),
("585","198","_wc_average_rating","0"),
("586","198","_edit_last","1"),
("587","198","_edit_lock","1547571107:1"),
("588","199","_wp_attached_file","2019/01/mat-ong-nguyen-chat-160-ml-vihoney.jpg"),
("589","199","_wp_attachment_metadata","a:5:{s:5:\"width\";i:570;s:6:\"height\";i:520;s:4:\"file\";s:46:\"2019/01/mat-ong-nguyen-chat-160-ml-vihoney.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-300x274.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-300x274.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:46:\"mat-ong-nguyen-chat-160-ml-vihoney-300x520.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("590","198","_thumbnail_id","200"),
("591","198","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("592","198","_sku",""),
("593","198","_regular_price","630000"),
("594","198","_sale_price",""),
("595","198","_sale_price_dates_from",""),
("596","198","_sale_price_dates_to",""),
("597","198","total_sales","0"),
("598","198","_tax_status","taxable"),
("599","198","_tax_class",""),
("600","198","_manage_stock","no"),
("601","198","_backorders","no"),
("602","198","_low_stock_amount",""),
("603","198","_sold_individually","no"),
("604","198","_weight",""),
("605","198","_length",""),
("606","198","_width",""),
("607","198","_height",""),
("608","198","_upsell_ids","a:0:{}");
INSERT INTO gdd_postmeta VALUES
("609","198","_crosssell_ids","a:0:{}"),
("610","198","_purchase_note",""),
("611","198","_default_attributes","a:0:{}"),
("612","198","_virtual","no"),
("613","198","_downloadable","no"),
("614","198","_product_image_gallery","199,197,87,89"),
("615","198","_download_limit","-1"),
("616","198","_download_expiry","-1"),
("617","198","_stock",""),
("618","198","_stock_status","instock"),
("619","198","_product_version","3.5.3"),
("620","198","_price","630000"),
("621","200","_wp_attached_file","2019/01/FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2.jpg"),
("622","200","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:72:\"2019/01/FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:72:\"FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2-300x500.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("623","201","_wc_review_count","1"),
("624","201","_wc_rating_count","a:1:{i:5;i:1;}"),
("625","201","_wc_average_rating","5.00"),
("626","201","_edit_last","1"),
("627","201","_edit_lock","1547571175:1"),
("628","202","_wp_attached_file","2019/01/14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826.jpg"),
("629","202","_wp_attachment_metadata","a:5:{s:5:\"width\";i:500;s:6:\"height\";i:447;s:4:\"file\";s:132:\"2019/01/14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826.jpg\";s:5:\"sizes\";a:8:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-300x268.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-300x268.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:132:\"14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826-300x447.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("630","201","_thumbnail_id","202"),
("631","201","wc_productdata_options","a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}"),
("632","201","_sku",""),
("633","201","_regular_price","650000"),
("634","201","_sale_price","620000"),
("635","201","_sale_price_dates_from",""),
("636","201","_sale_price_dates_to",""),
("637","201","total_sales","0"),
("638","201","_tax_status","taxable"),
("639","201","_tax_class",""),
("640","201","_manage_stock","no"),
("641","201","_backorders","no"),
("642","201","_low_stock_amount",""),
("643","201","_sold_individually","no"),
("644","201","_weight",""),
("645","201","_length",""),
("646","201","_width",""),
("647","201","_height",""),
("648","201","_upsell_ids","a:0:{}"),
("649","201","_crosssell_ids","a:0:{}"),
("650","201","_purchase_note",""),
("651","201","_default_attributes","a:0:{}"),
("652","201","_virtual","no"),
("653","201","_downloadable","no"),
("654","201","_product_image_gallery","89,87,85,83"),
("655","201","_download_limit","-1"),
("656","201","_download_expiry","-1"),
("657","201","_stock",""),
("658","201","_stock_status","instock"),
("659","201","_product_version","3.5.3"),
("660","201","_price","620000"),
("679","233","_wp_attached_file","2019/01/banner-01.jpg"),
("680","233","_wp_attachment_metadata","a:5:{s:5:\"width\";i:369;s:6:\"height\";i:206;s:4:\"file\";s:21:\"2019/01/banner-01.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banner-01-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-01-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-01-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"banner-01-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("681","234","_wp_attached_file","2019/01/banner-02.jpg"),
("682","234","_wp_attachment_metadata","a:5:{s:5:\"width\";i:369;s:6:\"height\";i:206;s:4:\"file\";s:21:\"2019/01/banner-02.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banner-02-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-02-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-02-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"banner-02-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("683","235","_wp_attached_file","2019/01/banner-03.jpg"),
("684","235","_wp_attachment_metadata","a:5:{s:5:\"width\";i:369;s:6:\"height\";i:206;s:4:\"file\";s:21:\"2019/01/banner-03.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banner-03-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-03-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-03-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"banner-03-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banner-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("693","244","_form","<div class=\"form-tu-van\">\n<div class=\"title\">Liên hệ tư vấn mua hàng</div>\n[text* text-858 placeholder \"Họ tên của bạn..\"]\n[tel* tel-939 placeholder \"Số điện thoại...\"]\n[textarea textarea-5 placeholder \"Nội dung cần tư vấn...\"]\n[submit \"Gửi liên hệ\"]\n</div>"),
("694","244","_mail","a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:71:\"Mẫu web bán mật ong - Thiết kế web Ninh Bình \"[your-subject]\"\";s:6:\"sender\";s:89:\"Mẫu web bán mật ong - Thiết kế web Ninh Bình <wordpress@matong.ninhbinhweb.net>\";s:9:\"recipient\";s:14:\"demo@gmail.com\";s:4:\"body\";s:299:\"Có một người liên hệ tư vấn mua hàng:\n- Họ và tên: [text-858]\n- Số điện thoại: [tel-939]\n- Nội dung: [textarea-5]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bán mật ong - Thiết kế web Ninh Bình (https://bizhostvn.com/w/matong)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("695","244","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:71:\"Mẫu web bán mật ong - Thiết kế web Ninh Bình \"[your-subject]\"\";s:6:\"sender\";s:89:\"Mẫu web bán mật ong - Thiết kế web Ninh Bình <wordpress@matong.ninhbinhweb.net>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:202:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bán mật ong - Thiết kế web Ninh Bình (https://bizhostvn.com/w/matong)\";s:18:\"additional_headers\";s:24:\"Reply-To: demo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}"),
("696","244","_messages","a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}"),
("697","244","_additional_settings",""),
("698","244","_locale","vi"),
("712","253","_edit_last","1"),
("713","253","_thumbnail_id","234"),
("716","253","_edit_lock","1547642508:1"),
("717","255","_edit_last","1"),
("718","255","_edit_lock","1547642487:1"),
("719","255","_thumbnail_id","233"),
("722","257","_edit_last","1"),
("723","257","_edit_lock","1547633795:1"),
("724","257","_thumbnail_id","202"),
("740","1","_edit_lock","1547627765:1"),
("741","1","_edit_last","1"),
("742","1","_thumbnail_id","87"),
("745","2","_oembed_97120786a5d618011442f73be26e093f","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/AoPiLg8DZ3A?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("746","2","_oembed_time_97120786a5d618011442f73be26e093f","1547628043"),
("747","2","_oembed_3c011baeaafc0dac420d4e488014757d","{{unknown}}"),
("748","2","_oembed_04d986a2c40d5bf6d0985234a2446b6d","<iframe width=\"1020\" height=\"574\" src=\"https://www.youtube.com/embed/3LYvsS42v88?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"),
("749","2","_oembed_time_04d986a2c40d5bf6d0985234a2446b6d","1547628047"),
("757","284","_edit_last","1"),
("758","284","_edit_lock","1547628486:1"),
("762","284","_thumbnail_id",""),
("857","343","_wp_attached_file","2019/01/tieu-chi.jpg"),
("858","343","_wp_attachment_metadata","a:5:{s:5:\"width\";i:565;s:6:\"height\";i:68;s:4:\"file\";s:20:\"2019/01/tieu-chi.jpg\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"tieu-chi-300x36.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tieu-chi-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tieu-chi-300x36.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"tieu-chi-300x68.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"tieu-chi-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"tieu-chi-300x68.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"tieu-chi-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("859","343","_edit_lock","1547630507:1"),
("862","344","_wp_attached_file","2019/01/4-tieu-chi.png"),
("863","344","_wp_attachment_metadata","a:5:{s:5:\"width\";i:565;s:6:\"height\";i:68;s:4:\"file\";s:22:\"2019/01/4-tieu-chi.png\";s:5:\"sizes\";a:7:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4-tieu-chi-300x36.png\";s:5:\"width\";i:300;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4-tieu-chi-150x68.png\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4-tieu-chi-300x36.png\";s:5:\"width\";i:300;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4-tieu-chi-300x68.png\";s:5:\"width\";i:300;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4-tieu-chi-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"4-tieu-chi-300x68.png\";s:5:\"width\";i:300;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4-tieu-chi-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("864","344","_edit_lock","1547630751:1"),
("1056","21","_thumbnail_id",""),
("1057","446","_wp_attached_file","2019/01/CN-matonghoanhan.jpg"),
("1058","446","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1001;s:6:\"height\";i:1443;s:4:\"file\";s:28:\"2019/01/CN-matonghoanhan.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"CN-matonghoanhan-768x1107.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"CN-matonghoanhan-710x1024.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"CN-matonghoanhan-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-300x432.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-300x432.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"CN-matonghoanhan-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1059","447","_wp_attached_file","2019/01/matongnghevienvang22.jpg"),
("1060","447","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1001;s:6:\"height\";i:1451;s:4:\"file\";s:32:\"2019/01/matongnghevienvang22.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-207x300.jpg\";s:5:\"width\";i:207;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"matongnghevienvang22-768x1113.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"matongnghevienvang22-706x1024.jpg\";s:5:\"width\";i:706;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"matongnghevienvang22-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-300x435.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-300x435.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"matongnghevienvang22-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1061","448","_wp_attached_file","2019/01/CN-nghevienvang1.jpg"),
("1062","448","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1001;s:6:\"height\";i:1502;s:4:\"file\";s:28:\"2019/01/CN-nghevienvang1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"CN-nghevienvang1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"CN-nghevienvang1-682x1024.jpg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"CN-nghevienvang1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-300x450.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-300x450.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"CN-nghevienvang1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1063","449","_wp_attached_file","2019/01/matongsuaongchua2.jpg"),
("1064","449","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1001;s:6:\"height\";i:1446;s:4:\"file\";s:29:\"2019/01/matongsuaongchua2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"matongsuaongchua2-768x1109.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"matongsuaongchua2-709x1024.jpg\";s:5:\"width\";i:709;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"matongsuaongchua2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-300x433.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-300x433.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"matongsuaongchua2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1065","474","_wp_attached_file","2019/01/q1-2-370x110.png");
INSERT INTO gdd_postmeta VALUES
("1066","474","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:110;s:4:\"file\";s:24:\"2019/01/q1-2-370x110.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"q1-2-370x110-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"q1-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"q1-2-370x110-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"q1-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"q1-2-370x110-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"q1-2-370x110-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"q1-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"q1-2-370x110-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1067","476","_wp_attached_file","2019/01/q2-2-370x110.png"),
("1068","476","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:110;s:4:\"file\";s:24:\"2019/01/q2-2-370x110.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"q2-2-370x110-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"q2-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"q2-2-370x110-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"q2-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"q2-2-370x110-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"q2-2-370x110-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"q2-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"q2-2-370x110-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1069","479","_wp_attached_file","2019/01/q3-2-370x110.png"),
("1070","479","_wp_attachment_metadata","a:5:{s:5:\"width\";i:370;s:6:\"height\";i:110;s:4:\"file\";s:24:\"2019/01/q3-2-370x110.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"q3-2-370x110-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"q3-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"q3-2-370x110-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"q3-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"q3-2-370x110-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"q3-2-370x110-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"q3-2-370x110-300x89.png\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"q3-2-370x110-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1071","23","_thumbnail_id",""),
("1157","536","_wp_attached_file","2019/01/icon.png"),
("1158","536","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2019/01/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1159","536","_edit_lock","1547640401:1"),
("1160","537","_wp_attached_file","2019/01/phone-icon.png"),
("1161","537","_wp_attachment_metadata","a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:22:\"2019/01/phone-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}"),
("1162","537","_edit_lock","1547640353:1"),
("1177","546","_wp_attached_file","woocommerce-placeholder.png"),
("1178","546","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:1:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");




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
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_posts VALUES
("1","1","2019-01-15 12:24:48","2019-01-15 12:24:48","Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!","Chào tất cả mọi người!","","publish","open","open","","chao-moi-nguoi","","","2019-01-16 15:38:28","2019-01-16 08:38:28","","0","https://bizhostvn.com/w/matong/?p=1","0","post","","1"),
("2","1","2019-01-15 12:24:48","2019-01-15 12:24:48","[ux_slider nav_size=\"normal\" nav_style=\"simple\" bullet_style=\"simple\"]\n\n[ux_image id=\"76\" image_size=\"original\" height=\"23%\"]\n\n[ux_image id=\"73\" image_size=\"original\" height=\"23%\"]\n\n\n[/ux_slider]\n[section label=\"Banner\" class=\"banner-section\" bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner bg=\"233\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.24)\" hover=\"zoom\" hover_alt=\"overlay-add\"]\n\n[text_box width=\"93\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\"><span style=\"color: #ffffff; font-size: 170%;\">Mật ong<br />nguyên chất</span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner bg=\"234\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.24)\" hover=\"zoom\" hover_alt=\"overlay-add\"]\n\n[text_box width=\"93\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\"><span style=\"color: #ffffff; font-size: 170%;\">Hoàn toàn<br />tự nhiên</span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_banner bg=\"235\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.24)\" hover=\"zoom\" hover_alt=\"overlay-add\"]\n\n[text_box width=\"93\" position_x=\"50\" position_y=\"50\"]\n\n<h3 class=\"alt-font\"><span style=\"color: #ffffff; font-size: 170%;\">Chất lượng<br />quốc tế</span></h3>\n\n[/text_box]\n\n[/ux_banner]\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Block sản phẩm 1\" class=\"san-pham\" bg_color=\"rgb(255, 253, 241)\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"SẢN PHẨM CỦA CHÚNG TÔI\" color=\"rgb(92, 34, 0)\" size=\"150\"]\n\n<p style=\"text-align: center;\">Là mật ong lấy từ rừng U Minh và Tây Nguyên hùng vĩ.</p>\n[gap height=\"10px\"]\n\n[ux_products style=\"normal\" type=\"row\" col_spacing=\"normal\" image_height=\"105%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.28)\" image_hover=\"overlay-add\"]\n\n[gap height=\"12px\"]\n\n[button text=\"Xem thêm\" letter_case=\"lowercase\" style=\"outline\" radius=\"99\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_banner height=\"20%\" bg_color=\"rgb(255, 255, 255)\"]\n\n[ux_image id=\"175\" image_size=\"original\" width=\"51\" animate=\"bounceInLeft\" position_x=\"10\" position_y=\"100\"]\n\n[ux_image id=\"145\" image_size=\"original\" width=\"45\" animate=\"bounceInRight\" position_x=\"90\" position_y=\"50\"]\n\n\n[/ux_banner]\n[section label=\"Block sản phẩm 2\" class=\"san-pham\" bg_color=\"rgb(255, 253, 241)\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"SẢN PHẨM LÀM ĐẸP CỦA CHÚNG TÔI\" color=\"rgb(92, 34, 0)\" size=\"150\"]\n\n<p style=\"text-align: center;\">Sản phẩm làm đẹp của chúng tôi là các sản phẩm 100% tự nhiên</p>\n[gap height=\"10px\"]\n\n[ux_products style=\"normal\" type=\"row\" col_spacing=\"normal\" products=\"4\" image_height=\"105%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.28)\" image_hover=\"overlay-add\"]\n\n[gap height=\"12px\"]\n\n[button text=\"Xem thêm\" letter_case=\"lowercase\" style=\"outline\" radius=\"99\" link=\"#\" target=\"_blank\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Block sản phẩm 3\" class=\"san-pham sp-noi-bat\" bg=\"156\" bg_size=\"original\" bg_overlay=\"rgba(255, 255, 255, 0.1)\" padding=\"24px\"]\n\n[row]\n\n[col span__sm=\"12\" align=\"center\"]\n\n[title style=\"center\" text=\"SẢN PHẨM THỰC PHẨM CHỨC NĂNG CỦA CHÚNG TÔI\" color=\"rgb(92, 34, 0)\" size=\"150\"]\n\n<p style=\"text-align: center;\">Sản phẩm thực phẩm chức năng của chúng tôi là các sản phẩm tốt cho sức khỏe</p>\n[gap height=\"10px\"]\n\n[ux_products style=\"normal\" slider_nav_style=\"simple\" slider_nav_color=\"light\" slider_nav_position=\"outside\" image_height=\"105%\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.28)\" image_hover=\"overlay-add\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section label=\"Tin tức\" class=\"tin-tuc\" bg_color=\"rgb(243, 243, 243)\"]\n\n[row]\n\n[col span=\"8\" span__sm=\"12\" class=\"cot8\"]\n\n[title style=\"center\" text=\"TIN TỨC - BÍ QUYẾT LÀM ĐẸP\" color=\"rgb(69, 0, 0)\" size=\"125\"]\n\n[gap height=\"18px\"]\n\n[blog_posts style=\"vertical\" type=\"row\" col_spacing=\"small\" columns=\"1\" columns__md=\"1\" posts=\"5\" show_date=\"text\" excerpt_length=\"41\" comments=\"false\" image_height=\"78%\" image_width=\"30\" image_size=\"original\" image_overlay=\"rgba(255, 255, 255, 0.28)\" image_hover=\"overlay-add\" text_pos=\"middle\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"4\" span__sm=\"12\" class=\"cot4\"]\n\n[contact-form-7 id=\"244\"]\n\n[ux_video url=\"https://youtu.be/3LYvsS42v88\" height=\"50%\"]\n\n<p><iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fgiuseartdotcom&tabs=timeline&width=340&height=300&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=948110208640186\" width=\"340\" height=\"300\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe></p>\n\n[/col]\n\n[/row]\n\n[/section]","Trang chủ","","publish","closed","open","","trang-chu","","","2019-01-16 15:43:36","2019-01-16 08:43:36","","0","https://bizhostvn.com/w/matong/?page_id=2","0","page","","0"),
("3","1","2019-01-15 12:24:48","2019-01-15 12:24:48","<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: https://bizhostvn.com/w/matong.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>","Chính sách bảo mật","","draft","closed","open","","chinh-sach-bao-mat","","","2019-01-15 12:24:48","2019-01-15 12:24:48","","0","https://bizhostvn.com/w/matong/?page_id=3","0","page","","0"),
("18","1","2019-01-15 21:08:40","2019-01-15 14:08:40","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/cropped-logo.jpg","cropped-logo.jpg","","inherit","open","closed","","cropped-logo-jpg","","","2019-01-15 21:08:40","2019-01-15 14:08:40","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/cropped-logo.jpg","0","attachment","image/jpeg","0"),
("21","1","2019-01-15 21:10:14","2019-01-15 14:10:14","[ux_banner height=\"23%\" bg=\"98\" bg_size=\"original\"]\n\n[text_box width=\"30\" width__sm=\"60\" position_x=\"5\" position_y=\"50\"]\n\n[contact-form-7 id=\"244\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[row]\n\n[col span=\"7\" span__sm=\"12\"]\n\n<h1><strong>G</strong><strong>iấy chứng nhận các sản phẩm của Trường Thọ :</strong></h1>\n<h3>Bằng sự tâm huyết, nổ lực không ngừng nhằm tạo ra những sản phẩm mật ong chất lượng cho thị trường, thương hiệu đã được thị trường tiếp nhận và đánh giá cao, các Tổ chức uy tín cũng dánh cho công ty sự ghi nhận qua các chứng nhận</h3>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n\n[/col]\n[col span=\"5\" span__sm=\"12\"]\n\n[ux_image id=\"235\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\"]\n\n[ux_image id=\"446\" image_size=\"original\" height=\"147%\" lightbox=\"true\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[ux_image id=\"448\" image_size=\"original\" height=\"147%\" lightbox=\"true\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[ux_image id=\"447\" height=\"147%\" lightbox=\"true\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\"]\n\n[ux_image id=\"446\" image_size=\"original\" height=\"147%\"]\n\n\n[/col]\n\n[/row]\n[section bg_color=\"rgb(255, 255, 255)\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[gap height=\"49px\"]\n\n<h1><strong>VỀ CHÚNG TÔI</strong></h1>\n<p>Công ty cổ phần thực phẩm dinh dưỡng Trường Thọ là Công ty chuyên khai thác, sản xuất, kinh doanh, xuất khẩu từ ong. Được thành lập từ năm 2012. Trường Thọ cam kết chất lượng mật ong thiên nhiên không qua pha chế. </p>\n<p>Mật ong Trường Thọ sẽ mang đến khách hàng một sản phẩm chất lượng, một thương hiệu đáng tin cậy. Công ty Trường Thọ mong muốn có cơ hội được phục vụ quý khách và góp phần phát triền ngành ong mật Việt Nam.</p>\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"175\" image_size=\"original\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg_color=\"rgb(253, 194, 21)\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[title style=\"center\" text=\"VÌ SAO CHỌN MẬT ONG CỦA CHÚNG TÔI\" color=\"rgb(72, 1, 1)\" size=\"130\"]\n\n[gap height=\"11px\"]\n\n<p style=\"text-align: center;\">Mật ong Trường Thọ luôn mang hương vị của thiên nhiên từ  hoa của cây rừng tràm, hoa nhãn, hoa cà phê,…. giàu chất dinh dưỡng sẽ mang lại cho quý khách hàng nhiều lợi ích về sức khỏe lẫn sắc đẹp. Vì vậy, kính mong quý khách hàng hãy lựa chọn Trường Thọ để trải nghiệm dòng mật ong thiên nhiên của chúng tôi</p>\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"474\" img_width=\"205\" pos=\"center\"]\n\n<h4 style=\"text-align: center;\">HƯƠNG VỊ NGON NHẤT</h4>\n<p style=\"text-align: center;\"><span style=\"font-size: 95%;\">Ong rừng cho ra mật có độ ngọt vừa phải, hương thơm từ hoa rừng. Có mùi vị đặc trưng của hoa tràm, cà phê, nhãn, chôm chôm,..</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"476\" img_width=\"205\" pos=\"center\"]\n\n<h4 style=\"text-align: center;\">TINH LỌC KĨ LƯỠNG</h4>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\"> Khép kín và kiểm tra nghiêm ngặt trong sản xuất cùng với vùng nguyên liệu rộng khắp các từ rừng U Minh đến rừng Tây Nguyên</span></p>\n\n[/featured_box]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[featured_box img=\"479\" img_width=\"205\" pos=\"center\"]\n\n<h4 style=\"text-align: center;\"><span style=\"font-size: 90%;\">GIÁ CẢ HỢP LÝ</span></h4>\n<p style=\"text-align: center;\"><span style=\"font-size: 90%;\">Sản phẩm chất lượng nhưng chúng tôi luôn hướng đến khách hàng với mức giá ưu đãi và hợp lý nhất</span></p>\n\n[/featured_box]\n\n[/col]\n\n[/row]\n\n[/section]\n[section]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_gallery ids=\"235,234,233,202,200,197,196,191,87,89,98,175\" style=\"none\" col_spacing=\"small\" image_height=\"100%\" image_size=\"original\" image_overlay=\"rgba(0, 0, 0, 0.29)\" image_hover=\"overlay-add\"]\n\n\n[/col]\n\n[/row]\n\n[/section]","Giới thiệu","","publish","closed","closed","","gioi-thieu","","","2019-01-16 17:43:35","2019-01-16 10:43:35","","0","https://bizhostvn.com/w/matong/?page_id=21","0","page","","0"),
("23","1","2019-01-15 21:10:20","2019-01-15 14:10:20","<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14900.931775031808!2d105.79967699999999!3d20.9832975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4fc1c256d7cdb4d!2zR2l1c2VBcnQgLSBUaGnhur90IGvhur8gxJHhu5MgaOG7jWEgdsOgIHdlYnNpdGUgY2h1ecOqbiBuZ2hp4buHcA!5e0!3m2!1svi!2s!4v1547449390298\" width=\"100%\" height=\"350\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\n[gap height=\"22px\"]\n\n[row class=\"lien-he\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n<h3><span style=\"color: #4f3716;\">LIÊN HỆ VỚI CHÚNG TÔI</span></h3>\n<p><span style=\"font-size: 100%;\"><strong>Công ty TNHH GiuseBee - Chi nhánh Hà Nội</strong></span></p>\n<ul>\n<li><span style=\"font-size: 100%;\"><strong>Trụ sở chính:</strong> 180 – 182 Lý Chính Thắng, Phường 9, Quận 3, TP Hồ Chí Minh </span></li>\n<li><span style=\"font-size: 100%;\"><strong style=\"color: #555555;\">Chi nhánh:</strong><span style=\"color: #555555;\"> Tầng 4, số 01 ngõ 120 Trường Chinh, Thanh Xuân , Hà Nội</span></span></li>\n<li class=\"gap-element\"><span style=\"font-size: 100%;\"><strong style=\"color: #555555;\">Hotline:</strong><span style=\"color: #555555;\"> 039.465.8880.</span></span></li>\n<li><span style=\"font-size: 100%;\"><strong>Email:</strong> demo@gmail.com</span></li>\n<li><span style=\"font-size: 100%;\"><strong>Website:</strong> www.demoweb.com</span></li>\n</ul>\n[follow style=\"fill\" facebook=\"#\" instagram=\"#\" linkedin=\"#\" email=\"#\" phone=\"#\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[contact-form-7 id=\"244\"]\n\n\n[/col]\n\n[/row]","Liên hệ","","publish","closed","closed","","lien-he","","","2019-01-16 17:46:28","2019-01-16 10:46:28","","0","https://bizhostvn.com/w/matong/?page_id=23","0","page","","0"),
("25","1","2019-01-15 21:17:25","2019-01-15 14:17:25","","Cửa hàng","","publish","closed","closed","","cua-hang","","","2019-01-15 21:17:25","2019-01-15 14:17:25","","0","https://bizhostvn.com/w/matong/cua-hang/","0","page","","0"),
("26","1","2019-01-15 21:17:25","2019-01-15 14:17:25","[woocommerce_cart]","Giỏ hàng","","publish","closed","closed","","gio-hang","","","2019-01-15 21:17:25","2019-01-15 14:17:25","","0","https://bizhostvn.com/w/matong/gio-hang/","0","page","","0"),
("27","1","2019-01-15 21:17:25","2019-01-15 14:17:25","[woocommerce_checkout]","Thanh toán","","publish","closed","closed","","thanh-toan","","","2019-01-15 21:17:25","2019-01-15 14:17:25","","0","https://bizhostvn.com/w/matong/thanh-toan/","0","page","","0"),
("28","1","2019-01-15 21:17:25","2019-01-15 14:17:25","[woocommerce_my_account]","Tài khoản","","publish","closed","closed","","tai-khoan","","","2019-01-15 21:17:25","2019-01-15 14:17:25","","0","https://bizhostvn.com/w/matong/tai-khoan/","0","page","","0"),
("29","1","2019-01-15 21:19:05","2019-01-15 14:19:05"," ","","","publish","closed","closed","","29","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=29","8","nav_menu_item","","0"),
("30","1","2019-01-15 21:19:05","2019-01-15 14:19:05","","Sản phẩm","","publish","closed","closed","","san-pham","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=30","2","nav_menu_item","","0"),
("31","1","2019-01-15 21:19:05","2019-01-15 14:19:05"," ","","","publish","closed","closed","","31","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=31","10","nav_menu_item","","0"),
("32","1","2019-01-15 21:19:05","2019-01-15 14:19:05"," ","","","publish","closed","closed","","32","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=32","9","nav_menu_item","","0"),
("33","1","2019-01-15 21:19:05","2019-01-15 14:19:05"," ","","","publish","closed","closed","","33","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=33","1","nav_menu_item","","0"),
("34","1","2019-01-15 21:20:42","2019-01-15 14:20:42","","Mật ong sữa chúa","","publish","closed","closed","","mat-ong-sua-chua","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=34","3","nav_menu_item","","0"),
("35","1","2019-01-15 21:20:42","2019-01-15 14:20:42","","Mật ong rừng","","publish","closed","closed","","mat-ong-rung","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=35","4","nav_menu_item","","0"),
("36","1","2019-01-15 21:20:42","2019-01-15 14:20:42","","Mật ong gừng","","publish","closed","closed","","mat-ong-gung","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=36","5","nav_menu_item","","0"),
("37","1","2019-01-15 21:20:42","2019-01-15 14:20:42","","Mật ong hoa cà phê","","publish","closed","closed","","mat-ong-hoa-ca-phe","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=37","6","nav_menu_item","","0"),
("38","1","2019-01-15 21:20:42","2019-01-15 14:20:42","","Mật ong hoa nhãn","","publish","closed","closed","","mat-ong-hoa-nhan","","","2019-01-15 21:20:42","2019-01-15 14:20:42","","0","https://bizhostvn.com/w/matong/?p=38","7","nav_menu_item","","0"),
("61","1","2019-01-15 21:28:04","2019-01-15 14:28:04"," ","","","publish","closed","closed","","61","","","2019-01-15 21:28:04","2019-01-15 14:28:04","","0","https://bizhostvn.com/w/matong/?p=61","1","nav_menu_item","","0"),
("62","1","2019-01-15 21:28:04","2019-01-15 14:28:04"," ","","","publish","closed","closed","","62","","","2019-01-15 21:28:04","2019-01-15 14:28:04","","0","https://bizhostvn.com/w/matong/?p=62","2","nav_menu_item","","0"),
("63","1","2019-01-15 21:28:04","2019-01-15 14:28:04"," ","","","publish","closed","closed","","63","","","2019-01-15 21:28:04","2019-01-15 14:28:04","","0","https://bizhostvn.com/w/matong/?p=63","3","nav_menu_item","","0"),
("67","1","2019-01-15 21:31:27","2019-01-15 14:31:27","","logo1","","inherit","open","closed","","logo1","","","2019-01-15 21:31:27","2019-01-15 14:31:27","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/logo1.jpg","0","attachment","image/jpeg","0"),
("73","1","2019-01-15 21:56:25","2019-01-15 14:56:25","","sldier1","","inherit","open","closed","","sldier1","","","2019-01-15 21:56:25","2019-01-15 14:56:25","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/sldier1.jpg","0","attachment","image/jpeg","0"),
("76","1","2019-01-15 22:10:40","2019-01-15 15:10:40","","sldier2","","inherit","open","closed","","sldier2","","","2019-01-15 22:10:40","2019-01-15 15:10:40","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/sldier2.jpg","0","attachment","image/jpeg","0"),
("82","1","2019-01-15 22:16:56","2019-01-15 15:16:56","<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé.","Mật ong rừng nguyên chất","<ul>\n 	<li>Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.</li>\n 	<li>Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.</li>\n 	<li>Giúp phòng chống ung thư.</li>\n 	<li>Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.</li>\n 	<li>Da dẻ mịn màng, chống lão hóa.</li>\n</ul>","publish","open","closed","","mat-ong-rung-nguyen-chat","","","2019-01-15 22:36:42","2019-01-15 15:36:42","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=82","0","product","","0"),
("83","1","2019-01-15 22:16:42","2019-01-15 15:16:42","","thumbnail","","inherit","open","closed","","thumbnail","","","2019-01-15 22:16:42","2019-01-15 15:16:42","","82","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/thumbnail.jpg","0","attachment","image/jpeg","0"),
("84","1","2019-01-15 22:17:47","2019-01-15 15:17:47","<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé","Mật ong rừng loại 2 chai 1 lít","<ul>\n 	<li>Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.</li>\n 	<li>Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.</li>\n 	<li>Giúp phòng chống ung thư.</li>\n 	<li>Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.</li>\n 	<li>Da dẻ mịn màng, chống lão hóa.</li>\n</ul>","publish","open","closed","","mat-ong-rung-loai-2-chai-1-lit","","","2019-01-15 22:36:27","2019-01-15 15:36:27","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=84","0","product","","0"),
("85","1","2019-01-15 22:17:38","2019-01-15 15:17:38","","thumbnail (1)","","inherit","open","closed","","thumbnail-1","","","2019-01-15 22:17:38","2019-01-15 15:17:38","","84","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/thumbnail-1.jpg","0","attachment","image/jpeg","0"),
("86","1","2019-01-15 22:18:26","2019-01-15 15:18:26","<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé.","Mật ong rừng loại đặc biệt chai 1 lít","Một số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…","publish","open","closed","","mat-ong-rung-loai-dac-biet-chai-1-lit","","","2019-01-15 22:34:54","2019-01-15 15:34:54","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=86","0","product","","0"),
("87","1","2019-01-15 22:18:18","2019-01-15 15:18:18","","thumbnail (2)","","inherit","open","closed","","thumbnail-2","","","2019-01-15 22:18:18","2019-01-15 15:18:18","","86","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/thumbnail-2.jpg","0","attachment","image/jpeg","0"),
("88","1","2019-01-15 22:20:35","2019-01-15 15:20:35","<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé.","Mật ong rừng loại 1 - loại chai 1 lit","Làm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…","publish","open","closed","","mat-ong-rung-loai-1-loai-chai-1-lit","","","2019-01-15 22:32:53","2019-01-15 15:32:53","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=88","0","product","","0"),
("89","1","2019-01-15 22:20:22","2019-01-15 15:20:22","","thumbnail (3)","","inherit","open","closed","","thumbnail-3","","","2019-01-15 22:20:22","2019-01-15 15:20:22","","88","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/thumbnail-3.jpg","0","attachment","image/jpeg","0"),
("98","1","2019-01-15 22:28:06","2019-01-15 15:28:06","","bg","","inherit","open","closed","","bg","","","2019-01-15 22:28:06","2019-01-15 15:28:06","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/bg.jpg","0","attachment","image/jpeg","0"),
("142","1","2019-01-15 23:14:31","2019-01-15 16:14:31","","banner-mat-ong-nhan-sam","","inherit","open","closed","","banner-mat-ong-nhan-sam","","","2019-01-15 23:14:31","2019-01-15 16:14:31","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/banner-mat-ong-nhan-sam.jpg","0","attachment","image/jpeg","0"),
("144","1","2019-01-15 23:16:48","2019-01-15 16:16:48","","img1","","inherit","open","closed","","img1","","","2019-01-15 23:16:48","2019-01-15 16:16:48","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/img1.jpg","0","attachment","image/jpeg","0"),
("145","1","2019-01-15 23:16:49","2019-01-15 16:16:49","","img2","","inherit","open","closed","","img2","","","2019-01-15 23:16:49","2019-01-15 16:16:49","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/img2.png","0","attachment","image/png","0"),
("156","1","2019-01-15 23:23:09","2019-01-15 16:23:09","","BS-SP","","inherit","open","closed","","bs-sp","","","2019-01-15 23:23:09","2019-01-15 16:23:09","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/BS-SP.jpg","0","attachment","image/jpeg","0"),
("175","1","2019-01-15 23:38:18","2019-01-15 16:38:18","","honey1","","inherit","open","closed","","honey1","","","2019-01-15 23:38:18","2019-01-15 16:38:18","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/honey1.jpg","0","attachment","image/jpeg","0"),
("187","1","2019-01-15 23:45:45","2019-01-15 16:45:45","<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé.","Mật ong rừng Đà Lạt giúp bạn làm đẹp thế nào?","","publish","open","open","","mat-ong-rung-da-lat-giup-ban-lam-dep-the-nao","","","2019-01-16 19:44:29","2019-01-16 12:44:29","","0","https://bizhostvn.com/w/matong/?p=187","0","post","","0"),
("188","1","2019-01-15 23:45:41","2019-01-15 16:45:41","","thumbnail (4)","","inherit","open","closed","","thumbnail-4","","","2019-01-15 23:45:41","2019-01-15 16:45:41","","187","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/thumbnail-4.jpg","0","attachment","image/jpeg","0"),
("190","1","2019-01-15 23:47:30","2019-01-15 16:47:30","Làm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng\n\n<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé","Mật ong rừng Đà lạt loại 2 lit/chai","Làm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…","publish","open","closed","","mat-ong-rung-da-lat-loai-2-lit-chai","","","2019-01-15 23:47:31","2019-01-15 16:47:31","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=190","0","product","","0"),
("191","1","2019-01-15 23:47:15","2019-01-15 16:47:15","","sp2","","inherit","open","closed","","sp2","","","2019-01-15 23:47:15","2019-01-15 16:47:15","","190","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/sp2.jpg","0","attachment","image/jpeg","0"),
("195","1","2019-01-15 23:52:10","2019-01-15 16:52:10","<h2><span style=\"font-family: Helvetica;\">1. Sáp Ong Là Gì?</span></h2>\n<span style=\"font-family: Helvetica;\">Sáp ong là chất do ong mật thu lượm từ rất nhiều loại thực vật ừ thiên nhiên mang về hòa trộn, kết hợp lại với nhau thành một dạng chất keo tạo nên sự kết dính để tiến hành xây tổ của chúng.</span>\n\n<span style=\"font-family: Helvetica;\">Bên cạnh đó, trong quá trình hòa trộn chúng sẽ tiết ra một số loại chất giúp ngăn chặn côn trùng bên ngoài xâm nhập tổ ong và đặc biệt nó còn đóng vai trò như một kháng sinh tự nhiến giúp ngăn chăn các loại nấm mốc, vi khuẩn có thể hình thành.</span>\n<h2><span style=\"font-family: Helvetica;\">2. Cách Nhận Biết Sáp Ong Nguyên Chất</span></h2>\n<span style=\"font-family: Helvetica;\">Sáp ong nguyên chất thường có màu vàng hoặc màu trắng đục tùy thuộc vào vùng hoa và thời điểm xây dựng tổ của loài ong.</span>\n<h2><span style=\"font-family: Helvetica;\">3.  Có Mấy Loại Sáp Ong Thiên Nhiên Nguyên Chất.\n</span></h2>\n<span style=\"font-family: Helvetica;\">Hiện nay, có 2 loại sáp ong thiên nhiên nguyên chất như sau:</span>\n<ul>\n 	<li><span style=\"font-family: Helvetica;\">Sáp ong thô:</span></li>\n</ul>\n<span style=\"font-family: Helvetica;\">Là loại sáp sau khi quay mật xong tiến hành lấy sáp mang đi nấu và cô đặc lại. Loại sáp này thường còn nhiều loại tạp chất khác trong quá trình quay mật chưa được làm sạch như: xác ong, nhộng ong, lá cây,...</span>\n<h2><span style=\"font-family: Helvetica;\">4. Sáp Ong Thiên Nhiên Nguyên Chất Bán Ở Đâu?</span></h2>\n<span style=\"font-family: Helvetica;\">Hiện nay, Công ty Hilobee cung cấp cả 2 loại sáp ong với số lượng lớn trên toàn quốc và xuất khẩu đi các nước. </span>\n\n<span style=\"font-family: Helvetica;\">Đặc biệt, Hilobee sẽ miễn phí giao hàng cho các Khách hàng tại khu vực TP Hồ Chí Minh, các tỉnh thành khác hỗ trợ 50% chi phí giao hàng tận nơi.</span>","Sáp ong thiên nhiên nguyên chất","<span style=\"font-family: Helvetica;\">Sáp ong là chất do ong mật thu lượm từ rất nhiều loại thực vật ừ thiên nhiên mang về hòa trộn, kết hợp lại với nhau thành một dạng chất keo tạo nên sự kết dính để tiến hành xây tổ của chúng.</span>\n\n<span style=\"font-family: Helvetica;\">Bên cạnh đó, trong quá trình hòa trộn chúng sẽ tiết ra một số loại chất giúp ngăn chặn côn trùng bên ngoài xâm nhập tổ ong và đặc biệt nó còn đóng vai trò như một kháng sinh tự nhiến giúp ngăn chăn các loại nấm mốc, vi khuẩn có thể hình thành.</span>","publish","open","closed","","sap-ong-thien-nhien-nguyen-chat","","","2019-01-15 23:52:10","2019-01-15 16:52:10","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=195","0","product","","0"),
("196","1","2019-01-15 23:51:26","2019-01-15 16:51:26","","cong-dung-cua-sap-ong","","inherit","open","closed","","cong-dung-cua-sap-ong","","","2019-01-15 23:51:26","2019-01-15 16:51:26","","195","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/cong-dung-cua-sap-ong.jpg","0","attachment","image/jpeg","0"),
("197","1","2019-01-15 23:51:56","2019-01-15 16:51:56","","nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45","","inherit","open","closed","","nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45","","","2019-01-15 23:51:56","2019-01-15 16:51:56","","195","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/nhung-cong-dung-bat-ngo-tu-sap-ong-mang-lai-cho-lan-da-cua-ban-71fd45.jpg","0","attachment","image/jpeg","0"),
("198","1","2019-01-15 23:53:41","2019-01-15 16:53:41","<span style=\"font-family: Helvetica;\">Vào những dịp lễ tết cũng là dịp để chúng ta thể hiện sự quan tâm đến những người thân, đối tác, nhân viên, đồng nghiệp...những người đã cùng nhau gắn bó và nổ lực không ngừng trong 1 năm qua.</span>\n\n<span style=\"font-family: Helvetica;\">Nhưng để chọn lựa được cho mình món quà đủ sang trọng, vừa thể hiện được sự quan tâm, vừa thể hiện được lòng yêu mến của mình đối với người tặng là một điều không phải ai cũng đủ tinh tế và có được sự lựa chọn tốt nhất.</span>\n\n<span style=\"font-family: Helvetica;\">Thấu hiệu được khó khăn đó, Hilobee xin giới thiệu các combo quà tặng đã được rất nhiều đối tác lựa chọn:</span>\n\n<span style=\"font-family: Helvetica;\">- Với sự đảm bảo về chất lượng sản phẩm giúp cho người được nhận hoàn toàn yên tâm sử dụng</span>\n\n<span style=\"font-family: Helvetica;\">- Thiết kế sang trọng và bắt mắt những người được nhận quà sẽ cảm thấy vô cùng thích thú và yêu quý.</span>\n\n<span style=\"font-family: Helvetica;\">- Và đặc biệt các gói Combo kết hợp với nhau có giá cả hợp lý và rất dễ dàng để lựa chọn.</span>\n\n<span style=\"font-family: Helvetica;\">- Tin chắc rằng những ai nhận được món quà này từ bạn họ sẽ cảm nhận được sự quan tâm thực sự đến từ người tặng.</span>\n\n<span style=\"font-family: Helvetica;\">Xin hãy kéo xuống dưới để cùng xem và lựa chọn cho mình nhé!</span>","Quà tặng mật ong Hilobee 2019","<span style=\"font-family: Helvetica;\">- Và đặc biệt các gói Combo kết hợp với nhau có giá cả hợp lý và rất dễ dàng để lựa chọn.</span>\n\n<span style=\"font-family: Helvetica;\">- Tin chắc rằng những ai nhận được món quà này từ bạn họ sẽ cảm nhận được sự quan tâm thực sự đến từ người tặng.</span>\n\n<span style=\"font-family: Helvetica;\">Xin hãy kéo xuống dưới để cùng xem và lựa chọn cho mình nhé!</span>","publish","open","closed","","qua-tang-mat-ong-hilobee-2019","","","2019-01-15 23:54:10","2019-01-15 16:54:10","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=198","0","product","","0"),
("199","1","2019-01-15 23:53:33","2019-01-15 16:53:33","","mat-ong-nguyen-chat-160-ml-vihoney","","inherit","open","closed","","mat-ong-nguyen-chat-160-ml-vihoney","","","2019-01-15 23:53:33","2019-01-15 16:53:33","","198","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/mat-ong-nguyen-chat-160-ml-vihoney.jpg","0","attachment","image/jpeg","0"),
("200","1","2019-01-15 23:54:06","2019-01-15 16:54:06","","FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2","","inherit","open","closed","","forever-bee-honey-mat-ong-nguyen-chat-anh-thi-shop2","","","2019-01-15 23:54:06","2019-01-15 16:54:06","","198","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/FOREVER-Bee-Honey-–-MẬT-ONG-NGUYÊN-CHẤT-Anh-Thi-Shop2.jpg","0","attachment","image/jpeg","0"),
("201","1","2019-01-15 23:55:02","2019-01-15 16:55:02","<div><span style=\"font-family: Helvetica;\">Vào tháng 03 hàng năm tại các khu vực miền tây và miền bắc nước ta là thời điểm những trang trại nhãn bắt đầu nở hoa đây cũng là thời điềm những nhà nuôi ong ở các nơi sẽ tiến hành di chuyển đàn ong đến thu hoạch mật ong hoa nhãn. Các chú ong khi được đưa đến đây sẽ làm việc chăm chỉ ngày đêm. Ban ngày đi hút mật đưa về tổ, ban đêm tiến hành luyện mật qua một quá trình dài. Khi mật đủ chín, chủ trại nuôi ong của Hilobee mới tiến hành quay lấy mật. Đặc thù hoa nhãn có hương vị rất đặc trưng và dễ nhận biết.</span></div>\n<div><img src=\"https://hilobee.vn/medias/uploads/0/570-mua-mat-ong-hoa-nhan-nguyen-chat-tieu-chuan-xuat-khau-chau-au-hilobee.jpg\" alt=\"Mật Ong Hoa Nhãn - Tiêu Chuẩn Châu Âu\" /><span style=\"font-family: Helvetica;\">\n</span></div>\n<h2><b><span style=\"color: #000000; font-family: Helvetica;\">2. Đặc điểm nhận biết mật ong hoa nhãn của Hilobee</span></b></h2>\n<div><span style=\"font-family: Helvetica;\">Mật ong hoa nhãn Hilobee chỉ được thu hoạch khi đã trải qua quá trình luyện đủ chín của các chú ong thợ và cho ra chất lượng mật tốt và đậm đặc nhất hoàn toàn khác biệt so với các loại mật ong khác trên thị trường hiện nay.</span></div>\n<div><span style=\"font-family: Helvetica;\">Hàm lượng nước trong mật ong &lt;=19% - đây là tiêu chuẩn quốc tế đủ điều kiện xuất khẩu sang các nước Châu Âu, Mỹ, Trung Đông, Nhật Bản, Hàn Quốc...</span></div>\n<div><span style=\"font-family: Helvetica;\">Mật ong hoa nhãn Hilobee có vị ngọt dịu và mùi hương đặc trưng của hoa nhãn. Có màu vàng sánh đặc trưng.</span></div>\n<div><img src=\"https://hilobee.vn/medias/uploads/0/571-mat-ong-hoa-nhan-nguyen-chat-tieu-chuan-xuat-khau-chau-au-hilobee.jpg\" alt=\"Mật Ong Hoa Nhãn - Tiêu Chuẩn Châu Âu\" /><span style=\"font-family: Helvetica;\">\n</span></div>\n<h2><b><span style=\"color: #000000; font-family: Helvetica;\">3. Công dụng của mật ong hoa nhãn Hilobee</span></b></h2>\n<div><span style=\"font-family: Helvetica;\">Thành phần trong mật ong hoa nhãn Hilobee có rất nhiều loại Vitamin và axit amin quan trọng như A, B1, B2, tiền tố Acid Folic... Việc sử dụng mật ong hàng ngày giúp cho chúng ta có một cơ thể khoẻ mạnh, tăng cường sức đề kháng. Giúp ăn ngon miệng, ngủ sâu giấc, có một làn da hồng hào, tươi sáng.</span></div>\n<div><span style=\"font-family: Helvetica;\">Ngoài ra, việc sử dụng mật ong hoa nhãn Hilobee giúp trị các loại bệnh liên quan đến đường ruột, tiêu hoá, đặc biệt là dạ dày khi kết hợp cùng với tinh bột nghệ.</span></div>","Mật Ong Hoa Nhãn loại 1 lit","Mật ong hoa nhãn Hilobee được thu hoạch trực tiếp tại các trang trại nhãn thuộc khu vực miền Bắc và miền Tây. Mật hoa nhãn khi thu hoạch phải đạt đủ độ chín. Hàm lượng nước &lt;=19% đủ tiêu chuẩn xuất khẩu sang các nước Châu Âu, Mỹ, Hàn Quốc, Nhật Bản, Trung Đông... 100% nguyên chất tự nhiên với hương vị đặc trưng của hoa nhãn","publish","open","closed","","mat-ong-hoa-nhan-tieu-chuan-chau-au","","","2019-01-15 23:55:18","2019-01-15 16:55:18","","0","https://bizhostvn.com/w/matong/?post_type=product&#038;p=201","0","product","","1"),
("202","1","2019-01-15 23:54:54","2019-01-15 16:54:54","","14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826","","inherit","open","closed","","14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826","","","2019-01-15 23:54:54","2019-01-15 16:54:54","","201","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/14709839351284-cach-nhan-biet-mat-ong-that-tranh-hang-gia-giup-ban-co-the-mua-mat-ong-nguyen-chat-1008-20160405-11042826.jpg","0","attachment","image/jpeg","0"),
("233","1","2019-01-16 00:19:04","2019-01-15 17:19:04","","banner-01","","inherit","open","closed","","banner-01","","","2019-01-16 00:19:04","2019-01-15 17:19:04","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/banner-01.jpg","0","attachment","image/jpeg","0"),
("234","1","2019-01-16 00:19:06","2019-01-15 17:19:06","","banner-02","","inherit","open","closed","","banner-02","","","2019-01-16 00:19:06","2019-01-15 17:19:06","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/banner-02.jpg","0","attachment","image/jpeg","0"),
("235","1","2019-01-16 00:19:07","2019-01-15 17:19:07","","banner-03","","inherit","open","closed","","banner-03","","","2019-01-16 00:19:07","2019-01-15 17:19:07","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/banner-03.jpg","0","attachment","image/jpeg","0"),
("244","1","2019-01-16 15:16:32","2019-01-16 08:16:32","<div class=\"form-tu-van\">\n<div class=\"title\">Liên hệ tư vấn mua hàng</div>\n[text* text-858 placeholder \"Họ tên của bạn..\"]\n[tel* tel-939 placeholder \"Số điện thoại...\"]\n[textarea textarea-5 placeholder \"Nội dung cần tư vấn...\"]\n[submit \"Gửi liên hệ\"]\n</div>\n1\nMẫu web bán mật ong - Thiết kế web Ninh Bình \"[your-subject]\"\nMẫu web bán mật ong - Thiết kế web Ninh Bình <wordpress@matong.ninhbinhweb.net>\ndemo@gmail.com\nCó một người liên hệ tư vấn mua hàng:\n- Họ và tên: [text-858]\n- Số điện thoại: [tel-939]\n- Nội dung: [textarea-5]\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bán mật ong - Thiết kế web Ninh Bình (https://bizhostvn.com/w/matong)\n\n\n\n\n\nMẫu web bán mật ong - Thiết kế web Ninh Bình \"[your-subject]\"\nMẫu web bán mật ong - Thiết kế web Ninh Bình <wordpress@matong.ninhbinhweb.net>\n[your-email]\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Mẫu web bán mật ong - Thiết kế web Ninh Bình (https://bizhostvn.com/w/matong)\nReply-To: demo@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.","Liên hệ tư vấn","","publish","closed","closed","","form-lien-he-1","","","2019-01-16 15:21:11","2019-01-16 08:21:11","","0","https://bizhostvn.com/w/matong/?post_type=wpcf7_contact_form&#038;p=244","0","wpcf7_contact_form","","0"),
("253","1","2019-01-16 15:27:55","2019-01-16 08:27:55","Мật оng kết tіnh, thường đượс gọі là “lắng đường”, là một hіện tượng tự nhіên khi mật оng сhuуển từ trạng thái lỏng sang trạng thái huyền phù nổi bên trên hoặc có các hạt nhỏ lắng dưới đáy chai. Ѕаu khі đượс lấy ra khỏi tổ, mật оng сó хu hướng kết tіnh nhаnh hơn nhіều ѕо vớі khі nó ở trоng сáс bánh tổ bằng ѕáp.\n\nMật оng kết tіnh thường hay dẫn đến “hіểu lầm” сủа ngườі tіêu dùng. Мột ѕố người сhо rằng mật оng kết tіnh là dо сhất lượng hoặc điều kiện bảo quản kém hау mật ong bị рhа thêm đường. Тhựс tế hoàn toàn ngượс lạі. Nếu mật оng không kết tіnh trоng một thờі gіаn dàі, ngоạі trừ một số ít lоạі mật оng trоng đó quá trình kết tіnh tự nhіên rất сhậm, thì đó chính là mật ong đã bị рhа trộn hoặc mật non, quá loãng, còn nhiều nước.\n\nКết tіnh không làm thау đổі сhất lượng сủа mật оng. Nó сhỉ ảnh hưởng đến vẻ bên ngоàі, như màu ѕắс và hình thái. Đâу là một quá trình hоàn tоàn tự nhіên và nếu mật оng trоng nhà bếр сủа bạn đã kết tіnh, đó chính là dấu hiệu nhận biết mật оng tự nhіên tіnh khіết.","Mật ong kết tinh – biết rồi khổ lắm nói mãi","","publish","open","open","","mat-ong-ket-tinh-biet-roi-kho-lam-noi-mai","","","2019-01-16 19:44:08","2019-01-16 12:44:08","","0","https://bizhostvn.com/w/matong/?p=253","0","post","","0"),
("255","1","2019-01-16 15:28:18","2019-01-16 08:28:18","Quá nghi ngại về chuyện thật – giả, người tiêu dùng quên chưa nghĩ đến rằng phẩm cấp chất lượng của các loại mật ong rất khác nhau, cũng như lựa chọn mật ong theo khẩu vị, hương vị của chúng hoàn toàn phụ thuộc vào nguồn mật hoa. Nếu cùng một nguồn mật hoa, chất lượng mật ong phụ thuộc vào độ chín của nó. Mật ong chín là loại mật hoàn thiện, có giá trị dinh dưỡng cao và ngon nhất.\nNếu bạn nhờ Google tìm kiếm “mật ong rừng”, nó sẽ trả về 413.000 kết quả. Tương tự, sẽ có khoảng 394.000 kết quả cho “mật ong nguyên chất”, 74.700 kết quả cho “mật ong thật”, nhưng chỉ có 10.000 kết quả cho “mật ong chín” mà thôi. Những con số đó nói lên điều gì?\n\nBà Nguyễn Phương Lan, Giám đốc công ty TNHH Zemlya, chủ sở hữu nhãn hiệu mật ong chín Honimore nhận định: “Kết quả tìm kiếm của Google những con số trên phản ánh mức độ hoài nghi của người tiêu dùng về chất lượng của mật ong. Cứ nghe nói đến mật ong, người Việt mình sẽ hỏi ngay: Có nguyên chất không? Có thật không? Có pha gì không? Có cho ong ăn đường không? Thật ra, ngoại trừ những loại mật ong không rõ nguồn gốc, mật ong có thương hiệu của các công ty, phân phối trong các siêu thị hay trung tâm mua sắm lớn đều là mật ong thật, có khác nhau thì chỉ là về chất lượng và hương vị mà thôi”.\n<div><img class=\"aligncenter\" src=\"http://honimore.com.vn/uploads/userfiles/image/NTD-chon-mua-mat-ong-chin-Honimore-trong-sieu-thi-2.jpg\" alt=\"\" width=\"460\" height=\"305\" />\nCác sản phẩm mật ong chín Honimore\nKết quả tìm kiếm mật ong rừng cao nhất là điều dễ hiểu vì theo logic thông thường, “rừng” bao hàm vừa thật, vừa nguyên chất và vừa không có đường. Thật ra mật ong rừng hay mật ong nuôi đều có giá trị dinh dưỡng như nhau, nếu cùng chung một nguồn mật hoa. Chất lượng các loại mật ong khác nhau phụ thuộc nhiều vào thời điểm thu hoạch mới đạt mức chất lượng cao nhất nhưng người tiêu dùng ít ai biết đến điều này.</div>\nVà chỉ bấy nhiêu là đủ cho chất lượng của mật ong. Điều này có đúng? Để trả lời câu hỏi này, hãy cùng tìm hiểu những kiến thức cơ bản về mật ong.\n\nMật ong là chất lỏng sánh, vị ngọt, hương thơm quyến rũ, là kết quả của việc ong hút mật hoa mang về tổ để luyện mà thành mật ong. Quá trình luyện mật gồm 2 bước. Bước thứ nhất là chuyển hóa sucrose, một loại đường phức tạp có trong mật hoa và cũng là thành phần chính của đường mía, thành glucose, một loại đường đơn giản có thể ngấm trực tiếp vào máu mà không cần thông qua hệ tiêu hóa như đường sucrose.\n\n<img class=\"aligncenter\" src=\"http://honimore.com.vn/uploads/userfiles/image/NTD-chon-mua-mat-ong-chin-Honimore-trong-sieu-thi.jpg\" alt=\"\" width=\"460\" height=\"628\" />","Chọn mua mật ong như thế nào cho đúng?","","publish","open","open","","chon-mua-mat-ong-nhu-the-nao-cho-dung","","","2019-01-16 19:43:48","2019-01-16 12:43:48","","0","https://bizhostvn.com/w/matong/?p=255","0","post","","0"),
("257","1","2019-01-16 15:28:40","2019-01-16 08:28:40","Màu sắc của các loại mật ong rất khác nhau, phụ thuộc vào nguồn mật hoa. Thông thường, màu sắc của mật ong tương đồng với màu phấn của những bông hoa, nơi mà ong hút mật.\n\nMật ong có màu từ vàng sáng đến nâu tối. Nếu để ý, các bạn sẽ thấy các loại mật ong xuất xứ từ các vùng có khi hậu lạnh, hanh khô sẽ có màu sáng nhất. Các vùng có khí hậu càng nóng ẩm, màu mât ong ở đó càng sẫm màu hơn.\n\n<em>Từ 3 nguồn mật hoa khác nhau, các sản phẩm Honimore có màu rất khác nhau</em>\n\nDù ban đầu có màu sáng hay màu sẫm, mật ong luôn có xu hướng chuyển màu tối hơn theo thời gian. Mọi người đều biết mật ong để lâu sẽ bị xuống màu nhưng ít người hiểu tại sao.\n\n<b><strong>Tại sao mật ong để lâu bị xuống màu?</strong></b>\n\nLý do là quá trình caramen hóa đường trong mật ong. Màu mật ong ngày càng có xu hướng tối dần, từ vàng, nâu cho đến đen giống như khi ta nấu đường trên chảo vậy. Khác với đường ăn sucrose thông thường, mật ong có chứa khoảng 300 chất khác nhau, nhiều nhất (hơn 70% khối lượng) là các loại đường fructose và đường glucose, trong đó fructose bị caramen hóa ở nhiệt độ thấp hơn so với glucose, nhưng chỉ diễn ra khi nhiệt độ lên đến 70°C. Tuy nhiên, trong mật ong có các axit amin. Đó chính là chất xúc tác khiến glucose và fructose bị caramen hóa ngay ở nhiệt độ phòng, dù quá trình này diễn ra rất chậm. Điều này giải thích tại sao mật ong xuống màu dần theo thời gian. Khi bị caramen hóa, chất lượng mật ong giảm dần. Vị vậy ban nên sử dụng mật ong trong thời hạn được khuyến cáo bởi nhà sản xuất.","Cách phân biệt mật ong sẫm màu và mật ong xuống màu","","publish","open","open","","cach-phan-biet-mat-ong-sam-mau-va-mat-ong-xuong-mau","","","2019-01-16 17:18:57","2019-01-16 10:18:57","","0","https://bizhostvn.com/w/matong/?p=257","0","post","","0"),
("284","1","2019-01-16 15:44:50","2019-01-16 08:44:50","[section label=\"Footer-section\" class=\"footer-section\" bg=\"156\" bg_size=\"original\" bg_overlay=\"rgba(0, 0, 0, 0.58)\"]\n\n[row style=\"small\"]\n\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>Về chúng tôi</h3>\n<p><span style=\"font-size: 85%;\">Webdemo.com là blog cá nhân chia sẻ những kiến thức đồ họa và kinh nghiệm làm website Wordpress cho tất cả mọi người. Mình rất yêu thích Nghệ thuật Thánh và Đồ họa Công giáo. Rất mong được kết bạn với đông đảo anh em Designer gần xa.</span></p>\n<p><span style=\"color: #ffcc00;\"><a style=\"color: #ffcc00;\" href=\"https://webdemo.com/\"><span style=\"font-size: 85%;\">+ Xem tiếp</span></a></span></p>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>Liên hệ</h3>\n<ul>\n<li><span style=\"font-size: 85%;\">Địa chỉ: Số 29 ngõ 18 Lương Ngọc Quyến, Văn Quán, Hà Đông, Hà Nội</span></li>\n<li><span style=\"font-size: 85%;\">Điện thoại: 0972123456</span></li>\n<li><span style=\"font-size: 85%;\">Email: demo@gmail.com</span></li>\n<li><span style=\"font-size: 85%;\">Website: <a href=\"https://webdemo.com/\">webdemo.com</a></span></li>\n</ul>\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>Tin tức</h3>\n[blog_posts style=\"normal\" type=\"row\" col_spacing=\"xsmall\" columns=\"1\" columns__md=\"1\" posts=\"4\" show_date=\"false\" excerpt=\"false\" comments=\"false\" image_height=\"0%\" image_width=\"0\" text_align=\"left\"]\n\n\n[/col]\n[col span=\"3\" span__sm=\"6\" color=\"light\"]\n\n<h3>Tặng tôi 01 ly cà phê nhé!</h3>\n<ul>\n<li><span style=\"font-size: 85%;\"><strong>Chủ tài khoản:</strong> DEMO</span></li>\n<li><span style=\"font-size: 85%;\"><strong>Vietcombank</strong>: 0691000374599 - CN Hà Tây</span></li>\n<li><span style=\"font-size: 85%;\"><strong>Agribank</strong>: 2000206180703 - CN Đà Nẵng</span></li>\n<li><span style=\"font-size: 85%;\"><strong>ACB</strong>: 221262879 - CN Hà Thành</span></li>\n<li><span style=\"font-size: 85%;\"><strong>Vietinbank: </strong>: 104867788579 - CN Nam Thăng Long</span></li>\n</ul>\n\n[/col]\n\n[/row]\n\n[/section]","Footer","","publish","closed","closed","","footer","","","2019-01-16 15:52:51","2019-01-16 08:52:51","","0","https://bizhostvn.com/w/matong/?post_type=blocks&#038;p=284","0","blocks","","0"),
("343","1","2019-01-16 16:23:20","2019-01-16 09:23:20","","tieu-chi","","inherit","open","closed","","tieu-chi","","","2019-01-16 16:23:20","2019-01-16 09:23:20","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/tieu-chi.jpg","0","attachment","image/jpeg","0"),
("344","1","2019-01-16 16:24:15","2019-01-16 09:24:15","","4-tieu-chi","","inherit","open","closed","","4-tieu-chi","","","2019-01-16 16:24:15","2019-01-16 09:24:15","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/4-tieu-chi.png","0","attachment","image/png","0"),
("446","1","2019-01-16 17:30:13","2019-01-16 10:30:13","","CN-matonghoanhan","","inherit","open","closed","","cn-matonghoanhan","","","2019-01-16 17:30:13","2019-01-16 10:30:13","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/CN-matonghoanhan.jpg","0","attachment","image/jpeg","0"),
("447","1","2019-01-16 17:30:17","2019-01-16 10:30:17","","matongnghevienvang22","","inherit","open","closed","","matongnghevienvang22","","","2019-01-16 17:30:17","2019-01-16 10:30:17","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/matongnghevienvang22.jpg","0","attachment","image/jpeg","0"),
("448","1","2019-01-16 17:30:20","2019-01-16 10:30:20","","CN-nghevienvang1","","inherit","open","closed","","cn-nghevienvang1","","","2019-01-16 17:30:20","2019-01-16 10:30:20","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/CN-nghevienvang1.jpg","0","attachment","image/jpeg","0"),
("449","1","2019-01-16 17:30:24","2019-01-16 10:30:24","","matongsuaongchua2","","inherit","open","closed","","matongsuaongchua2","","","2019-01-16 17:30:24","2019-01-16 10:30:24","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/matongsuaongchua2.jpg","0","attachment","image/jpeg","0"),
("474","1","2019-01-16 17:38:35","2019-01-16 10:38:35","","q1-2-370x110","","inherit","open","closed","","q1-2-370x110","","","2019-01-16 17:38:35","2019-01-16 10:38:35","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/q1-2-370x110.png","0","attachment","image/png","0"),
("476","1","2019-01-16 17:39:27","2019-01-16 10:39:27","","q2-2-370x110","","inherit","open","closed","","q2-2-370x110","","","2019-01-16 17:39:27","2019-01-16 10:39:27","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/q2-2-370x110.png","0","attachment","image/png","0"),
("479","1","2019-01-16 17:40:13","2019-01-16 10:40:13","","q3-2-370x110","","inherit","open","closed","","q3-2-370x110","","","2019-01-16 17:40:13","2019-01-16 10:40:13","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/q3-2-370x110.png","0","attachment","image/png","0"),
("536","1","2019-01-16 19:07:32","2019-01-16 12:07:32","","icon","","inherit","open","closed","","icon","","","2019-01-16 19:07:32","2019-01-16 12:07:32","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/icon.png","0","attachment","image/png","0"),
("537","1","2019-01-16 19:07:58","2019-01-16 12:07:58","","phone-icon","","inherit","open","closed","","phone-icon","","","2019-01-16 19:07:58","2019-01-16 12:07:58","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/01/phone-icon.png","0","attachment","image/png","0"),
("542","1","2019-01-16 19:43:48","2019-01-16 12:43:48","Quá nghi ngại về chuyện thật – giả, người tiêu dùng quên chưa nghĩ đến rằng phẩm cấp chất lượng của các loại mật ong rất khác nhau, cũng như lựa chọn mật ong theo khẩu vị, hương vị của chúng hoàn toàn phụ thuộc vào nguồn mật hoa. Nếu cùng một nguồn mật hoa, chất lượng mật ong phụ thuộc vào độ chín của nó. Mật ong chín là loại mật hoàn thiện, có giá trị dinh dưỡng cao và ngon nhất.\nNếu bạn nhờ Google tìm kiếm “mật ong rừng”, nó sẽ trả về 413.000 kết quả. Tương tự, sẽ có khoảng 394.000 kết quả cho “mật ong nguyên chất”, 74.700 kết quả cho “mật ong thật”, nhưng chỉ có 10.000 kết quả cho “mật ong chín” mà thôi. Những con số đó nói lên điều gì?\n\nBà Nguyễn Phương Lan, Giám đốc công ty TNHH Zemlya, chủ sở hữu nhãn hiệu mật ong chín Honimore nhận định: “Kết quả tìm kiếm của Google những con số trên phản ánh mức độ hoài nghi của người tiêu dùng về chất lượng của mật ong. Cứ nghe nói đến mật ong, người Việt mình sẽ hỏi ngay: Có nguyên chất không? Có thật không? Có pha gì không? Có cho ong ăn đường không? Thật ra, ngoại trừ những loại mật ong không rõ nguồn gốc, mật ong có thương hiệu của các công ty, phân phối trong các siêu thị hay trung tâm mua sắm lớn đều là mật ong thật, có khác nhau thì chỉ là về chất lượng và hương vị mà thôi”.\n<div><img class=\"aligncenter\" src=\"http://honimore.com.vn/uploads/userfiles/image/NTD-chon-mua-mat-ong-chin-Honimore-trong-sieu-thi-2.jpg\" alt=\"\" width=\"460\" height=\"305\" />\nCác sản phẩm mật ong chín Honimore\nKết quả tìm kiếm mật ong rừng cao nhất là điều dễ hiểu vì theo logic thông thường, “rừng” bao hàm vừa thật, vừa nguyên chất và vừa không có đường. Thật ra mật ong rừng hay mật ong nuôi đều có giá trị dinh dưỡng như nhau, nếu cùng chung một nguồn mật hoa. Chất lượng các loại mật ong khác nhau phụ thuộc nhiều vào thời điểm thu hoạch mới đạt mức chất lượng cao nhất nhưng người tiêu dùng ít ai biết đến điều này.</div>\nVà chỉ bấy nhiêu là đủ cho chất lượng của mật ong. Điều này có đúng? Để trả lời câu hỏi này, hãy cùng tìm hiểu những kiến thức cơ bản về mật ong.\n\nMật ong là chất lỏng sánh, vị ngọt, hương thơm quyến rũ, là kết quả của việc ong hút mật hoa mang về tổ để luyện mà thành mật ong. Quá trình luyện mật gồm 2 bước. Bước thứ nhất là chuyển hóa sucrose, một loại đường phức tạp có trong mật hoa và cũng là thành phần chính của đường mía, thành glucose, một loại đường đơn giản có thể ngấm trực tiếp vào máu mà không cần thông qua hệ tiêu hóa như đường sucrose.\n\n<img class=\"aligncenter\" src=\"http://honimore.com.vn/uploads/userfiles/image/NTD-chon-mua-mat-ong-chin-Honimore-trong-sieu-thi.jpg\" alt=\"\" width=\"460\" height=\"628\" />","Chọn mua mật ong như thế nào cho đúng?","","inherit","closed","closed","","255-revision-v1","","","2019-01-16 19:43:48","2019-01-16 12:43:48","","255","https://bizhostvn.com/w/matong/255-revision-v1/","0","revision","","0"),
("543","1","2019-01-16 19:44:08","2019-01-16 12:44:08","Мật оng kết tіnh, thường đượс gọі là “lắng đường”, là một hіện tượng tự nhіên khi mật оng сhuуển từ trạng thái lỏng sang trạng thái huyền phù nổi bên trên hoặc có các hạt nhỏ lắng dưới đáy chai. Ѕаu khі đượс lấy ra khỏi tổ, mật оng сó хu hướng kết tіnh nhаnh hơn nhіều ѕо vớі khі nó ở trоng сáс bánh tổ bằng ѕáp.\n\nMật оng kết tіnh thường hay dẫn đến “hіểu lầm” сủа ngườі tіêu dùng. Мột ѕố người сhо rằng mật оng kết tіnh là dо сhất lượng hoặc điều kiện bảo quản kém hау mật ong bị рhа thêm đường. Тhựс tế hoàn toàn ngượс lạі. Nếu mật оng không kết tіnh trоng một thờі gіаn dàі, ngоạі trừ một số ít lоạі mật оng trоng đó quá trình kết tіnh tự nhіên rất сhậm, thì đó chính là mật ong đã bị рhа trộn hoặc mật non, quá loãng, còn nhiều nước.\n\nКết tіnh không làm thау đổі сhất lượng сủа mật оng. Nó сhỉ ảnh hưởng đến vẻ bên ngоàі, như màu ѕắс và hình thái. Đâу là một quá trình hоàn tоàn tự nhіên và nếu mật оng trоng nhà bếр сủа bạn đã kết tіnh, đó chính là dấu hiệu nhận biết mật оng tự nhіên tіnh khіết.","Mật ong kết tinh – biết rồi khổ lắm nói mãi","","inherit","closed","closed","","253-revision-v1","","","2019-01-16 19:44:08","2019-01-16 12:44:08","","253","https://bizhostvn.com/w/matong/253-revision-v1/","0","revision","","0"),
("544","1","2019-01-16 19:44:29","2019-01-16 12:44:29","<b>Mật ong rừng có tác dụng như thế nào với sức khỏe của bạn?</b>\n\n<strong>Mật ong rừng nguyên chất</strong> là một loại thực phẩm đa tác dụng: làm đẹp, chữa bệnh, nấu nướng…\n\nKhi kết hợp với một số thực phẩm khác sẽ tạo thành chất dược phẩm tự nhiên có tác dụng bồi bổ cơ thể và giúp chống lại bệnh tật.\n\nMột số tác dụng của mật ong:\n\nLàm đẹp: trị mụng, trắng da, trị bỏng, làm mờ rạn da, nở ngực, giảm cân…\n\nChữa bệnh: chữa dạ dày, chữa ho, bồi bổ cơ thể, tụt huyết áp, phòng chống bệnh , tăng sức đề kháng…\n\nNấu nướng: làm các món thịt nướng, bánh nướng…\n\n<b>Cách uống mật ong buổi sáng có lợi cho sức khỏe nhất</b>\n\nCách thực hiện:  ¼ quả chanh tươi + 200ml nước ấm ( 40 – 50 độ) + 2 thìa cà phê <strong>mật ong rừng</strong>.\n\nThời điểm uống mật ong vào buổi sáng tốt nhất: Sau khi vừa thức dậy bạn nên  uống dung dịch trên để đạt hiệu quả cao nhất cho sức khỏe.\n\nLưu ý:\n\n–         Không nên dùng nước pha quá nóng sẽ dẫn đến biến đổi thành phần dinh dưỡng của mật ong rừng.\n\n–         Không nên lạm dụng nước cốt chanh, pha sai liều lượng sẽ có thể khiến bạn bị viêm loét dạ dày.\n\n<b>Tác dụng của uống mật ong vào buổi sáng:</b>\n\nViệc thường xuyên uống mật ong vào buổi sáng sẽ đem lại cho bạn sức khỏe dồi dào cũng như vẻ ngoài trẻ ra cả chục tuổi. Hơn thế nữa còn giúp cơ thể phòng ngừa bệnh ung thư. Dưới đây là một số tác dụng cơ bản trong hàng trăm tác dụng của việc này:\n\n–         Rửa sạch men axit trong dạ dày, giúp hệ tiêu hóa khỏe mạnh.\n\n–         Giảm cân, tiêu mỡ thừa và duy trì vóc dáng săn chắc.\n\n–         Giúp phòng chống ung thư.\n\n–         Phòng ngừa sâu răng, cho răng chắc khỏe và trắng sáng.\n\n–         Da dẻ mịn màng, chống lão hóa.\n\nGiờ còn điều gì ngăn bạn thực hiện thói quen này hàng ngày nhỉ? Hãy tập thói quen uống mật ong vào buổi sáng luôn đi nhé.","Mật ong rừng Đà Lạt giúp bạn làm đẹp thế nào?","","inherit","closed","closed","","187-revision-v1","","","2019-01-16 19:44:29","2019-01-16 12:44:29","","187","https://bizhostvn.com/w/matong/187-revision-v1/","0","revision","","0"),
("546","1","2019-05-09 20:30:57","2019-05-09 13:30:57","","woocommerce-placeholder","","inherit","open","closed","","woocommerce-placeholder","","","2019-05-09 20:30:57","2019-05-09 13:30:57","","0","https://bizhostvn.com/w/matong/wp-content/uploads/2019/05/woocommerce-placeholder.png","0","attachment","image/png","0"),
("547","1","2019-05-09 20:54:03","0000-00-00 00:00:00","","Lưu bản nháp tự động","","auto-draft","open","open","","","","","2019-05-09 20:54:03","0000-00-00 00:00:00","","0","https://bizhostvn.com/w/matong/?p=547","0","post","","0");




CREATE TABLE `gdd_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_term_relationships VALUES
("1","1","0"),
("29","21","0"),
("30","21","0"),
("31","21","0"),
("32","21","0"),
("33","21","0"),
("34","21","0"),
("35","21","0"),
("36","21","0"),
("37","21","0"),
("38","21","0"),
("61","22","0"),
("62","22","0"),
("63","22","0"),
("82","2","0"),
("82","15","0"),
("84","2","0"),
("84","15","0"),
("84","20","0"),
("86","2","0"),
("86","17","0"),
("86","18","0"),
("88","2","0"),
("88","17","0"),
("88","20","0"),
("187","23","0"),
("187","24","0"),
("187","28","0"),
("187","29","0"),
("190","2","0"),
("190","16","0"),
("190","17","0"),
("190","19","0"),
("195","2","0"),
("195","18","0"),
("195","19","0"),
("198","2","0"),
("198","19","0"),
("198","20","0"),
("201","2","0"),
("201","14","0"),
("201","17","0"),
("201","18","0"),
("201","19","0"),
("253","24","0"),
("253","26","0"),
("253","27","0"),
("255","23","0"),
("255","24","0"),
("255","25","0"),
("255","26","0"),
("255","27","0"),
("257","1","0"),
("257","23","0"),
("257","24","0"),
("257","25","0"),
("257","26","0");




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
("1","1","category","","0","2"),
("2","2","product_type","","0","8"),
("3","3","product_type","","0","0"),
("4","4","product_type","","0","0"),
("5","5","product_type","","0","0"),
("6","6","product_visibility","","0","0"),
("7","7","product_visibility","","0","0"),
("8","8","product_visibility","","0","0"),
("9","9","product_visibility","","0","0"),
("10","10","product_visibility","","0","0"),
("11","11","product_visibility","","0","0"),
("12","12","product_visibility","","0","0"),
("13","13","product_visibility","","0","0"),
("14","14","product_visibility","","0","1"),
("15","15","product_cat","","0","2"),
("16","16","product_cat","","0","1"),
("17","17","product_cat","","0","4"),
("18","18","product_cat","","0","3"),
("19","19","product_cat","","0","4"),
("20","20","product_cat","","0","3"),
("21","21","nav_menu","","0","10"),
("22","22","nav_menu","","0","3"),
("23","23","category","","0","3"),
("24","24","category","Vào tháng 03 hàng năm tại các khu vực miền tây và miền bắc nước ta là thời điểm những trang trại nhãn bắt đầu nở hoa đây cũng là thời điềm những nhà nuôi ong ở các nơi sẽ tiến hành di chuyển đàn ong đến thu hoạch mật ong hoa nhãn. Các chú ong khi được đưa đến đây sẽ làm việc chăm chỉ ngày đêm. Ban ngày đi hút mật đưa về tổ, ban đêm tiến hành luyện mật qua một quá trình dài. Khi mật đủ chín, chủ trại nuôi ong của Hilobee mới tiến hành quay lấy mật. Đặc thù hoa nhãn có hương vị rất đặc trưng và dễ nhận biết.","0","4"),
("25","25","post_tag","","0","2"),
("26","26","post_tag","","0","3"),
("27","27","post_tag","","0","2"),
("28","28","post_tag","","0","1"),
("29","29","post_tag","","0","1");




CREATE TABLE `gdd_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_termmeta VALUES
("1","15","cat_meta","a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}"),
("2","15","display_type",""),
("3","15","thumbnail_id","0"),
("4","16","order","0"),
("5","16","display_type",""),
("6","16","thumbnail_id","0"),
("7","17","order","0"),
("8","17","display_type",""),
("9","17","thumbnail_id","0"),
("10","18","order","0"),
("11","18","display_type",""),
("12","18","thumbnail_id","0"),
("13","19","order","0"),
("14","19","display_type",""),
("15","19","thumbnail_id","0"),
("16","20","order","0"),
("17","20","display_type",""),
("18","20","thumbnail_id","0"),
("19","15","product_count_product_cat","2"),
("20","20","product_count_product_cat","3"),
("21","17","product_count_product_cat","4"),
("22","18","product_count_product_cat","3"),
("23","19","product_count_product_cat","4"),
("24","16","product_count_product_cat","1");




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
("1","Chưa được phân loại","khong-phan-loai","0"),
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
("15","Mật ong rừng","mat-ong-rung","0"),
("16","Mật ong sữa chúa","mat-ong-sua-chua","0"),
("17","Mật ong hoa cà phê","mat-ong-hoa-ca-phe","0"),
("18","Mật ong hoa nhãn","mat-ong-hoa-nhan","0"),
("19","Mật ong gừng","mat-ong-gung","0"),
("20","Mật ong chúa tươi","mat-ong-chua-tuoi","0"),
("21","Main-menu","main-menu","0"),
("22","Topbar menu","topbar-menu","0"),
("23","Làm đẹp","lam-dep","0"),
("24","Tin tức","tin-tuc","0"),
("25","mật ong nguyên chất","mat-ong-nguyen-chat","0"),
("26","mật ong rừng","mat-ong-rung","0"),
("27","mật ong hoa nhãn","mat-ong-hoa-nhan","0"),
("28","Mật ong đà lạt","mat-ong-da-lat","0"),
("29","mật hoa hoa nhãn","mat-hoa-hoa-nhan","0");




CREATE TABLE `gdd_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO gdd_usermeta VALUES
("1","1","nickname","ninhbinhweb.net"),
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
("17","1","gdd_dashboard_quick_press_last_post_id","547"),
("18","1","show_try_gutenberg_panel","0"),
("19","1","community-events-location","a:1:{s:2:\"ip\";s:12:\"113.173.57.0\";}"),
("20","1","gdd_user-settings","editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=1198&edit_element_vcUIPanelLeft=38px&edit_element_vcUIPanelTop=15px&hidetb=1&align=none&advImgDetails=show"),
("21","1","gdd_user-settings-time","1557408554"),
("22","1","tgmpa_dismissed_notice_tgmpa","1"),
("23","1","_woocommerce_persistent_cart_1","a:1:{s:4:\"cart\";a:0:{}}"),
("24","1","dismissed_no_secure_connection_notice","1"),
("25","1","wc_last_active","1557446400"),
("26","1","managenav-menuscolumnshidden","a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}"),
("27","1","metaboxhidden_nav-menus","a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:15:\"add-product_cat\";i:6;s:15:\"add-product_tag\";}"),
("28","1","nav_menu_recently_edited","22"),
("29","1","dismissed_no_shipping_methods_notice","1"),
("31","1","duplicator_pro_created_format","1"),
("33","1","session_tokens","a:10:{s:64:\"431eb88421cb324a749889877634468ea0fa89e1123b9b7cca2707fd96cb533f\";a:4:{s:10:\"expiration\";i:1557582840;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557410040;}s:64:\"22c4821cf235dc0bbe5ea3e80536517c6ae0a0a1e3897cbc359dabc852bfe7f0\";a:4:{s:10:\"expiration\";i:1557616346;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557443546;}s:64:\"bfb1706661b1f941b0ea66a247695ff3c91b770c7192f11154d98c328c64c45d\";a:4:{s:10:\"expiration\";i:1557625791;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557452991;}s:64:\"bc128859b4000cd43d21fcf99f1a5074260f3c93a5c29d7dc5d95d8d842f8453\";a:4:{s:10:\"expiration\";i:1557626091;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453291;}s:64:\"382da67680bdf39052da7e1c623c835200ed5e650d96a406feee95b0d55a8060\";a:4:{s:10:\"expiration\";i:1557626799;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1557453999;}s:64:\"2576f4711b3e8880e2cbadafce84d39472566be7d10f2d5c78351f85f39fe1d9\";a:4:{s:10:\"expiration\";i:1557628116;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455316;}s:64:\"c151146b03898fafb1b16d25e2f629ee2f6c90a934fd4701ab4a734fa57190b3\";a:4:{s:10:\"expiration\";i:1557628541;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557455741;}s:64:\"a4ee7bce51bcdf0d1e8ec420a5faadf23bcb84c50a771406ff5cd3db6fd1f313\";a:4:{s:10:\"expiration\";i:1557633432;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557460632;}s:64:\"93c2ca1a0be8492a4fea87cc587d14c2215bae4b5571f98676fbbbe048d6405a\";a:4:{s:10:\"expiration\";i:1557637018;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557464218;}s:64:\"3e2a87d51527a125f6d791f6eb3f6a23ccbdc3cd72fa41421061d38936cedd51\";a:4:{s:10:\"expiration\";i:1557649593;s:2:\"ip\";s:14:\"103.74.117.155\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1557476793;}}"),
("36","1","_woocommerce_tracks_anon_id","woo:Ri2LCFmekT6oARMPDaEaWVOe"),
("38","1","_woocommerce_load_saved_cart_after_login","1");




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
("1","admin","$P$BEqxmmPIn15BRoTVidPn5GzPMjB.6i/","admin","demobz@gmail.com","","2019-01-15 12:24:48","","0","admin");




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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






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






CREATE TABLE `wp_smartiplog` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whichpage` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;